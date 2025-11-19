uint64_t sub_224CC1C94(uint64_t a1, uint64_t a2)
{
  v4 = _s17ArchiveChangeTypeOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CC1CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5F20, &unk_224DBE450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CC1D60(uint64_t a1)
{
  v2 = _s17ArchiveChangeTypeOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224CC1DDC()
{
  result = qword_27D6F5F30;
  if (!qword_27D6F5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F30);
  }

  return result;
}

unint64_t sub_224CC1E30()
{
  result = qword_27D6F5F40;
  if (!qword_27D6F5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F40);
  }

  return result;
}

unint64_t sub_224CC1EA8()
{
  result = qword_27D6F5F48;
  if (!qword_27D6F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F48);
  }

  return result;
}

unint64_t sub_224CC1F00()
{
  result = qword_27D6F5F50;
  if (!qword_27D6F5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F50);
  }

  return result;
}

unint64_t sub_224CC1F58()
{
  result = qword_27D6F5F58;
  if (!qword_27D6F5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F58);
  }

  return result;
}

unint64_t sub_224CC1FB0()
{
  result = qword_27D6F5F60;
  if (!qword_27D6F5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F60);
  }

  return result;
}

uint64_t sub_224CC206C()
{
  if (!*(v0 + 40))
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 8))(v1, v2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 16))(v1, v2);
  }
}

id sub_224CC216C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APSPushConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224CC2228(uint64_t a1, SEL *a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  sub_224DAE0C8();
  v7 = type metadata accessor for AppTokenInfo(0);
  v8 = (a1 + *(v7 + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v12 = sub_224DAEDE8();

  v13 = sub_224DAEDE8();
  v14 = [v11 initWithTopic:v12 identifier:v13];

  sub_224A3796C(a1 + *(v7 + 24), v6, &qword_27D6F32B0, &qword_224DB3EA0);
  v15 = sub_224DA9878();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = sub_224DA9778();
    (*(v16 + 8))(v6, v15);
  }

  [v14 setExpirationDate_];

  [*(v18 + OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection) *v19];
}

void sub_224CC2420()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection);
  v2 = sub_224DAEFF8();
  v3 = sub_224DAEFF8();
  v4 = sub_224DAEFF8();
  v5 = sub_224DAEFF8();
  [v1 setEnabledTopics:v2 ignoredTopics:v3 opportunisticTopics:v4 nonWakingTopics:v5];
}

id sub_224CC25A8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_224DAE178();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE0D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  if ([a1 pushType] != 256 && objc_msgSend(a1, sel_pushType) != 2048)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v42 = sub_224DAB258();
    __swift_project_value_buffer(v42, qword_27D6F71E0);
    v43 = a1;
    v44 = sub_224DAB228();
    v45 = sub_224DAF288();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134349056;
      *(v46 + 4) = [v43 pushType];

      _os_log_impl(&dword_224A2F000, v44, v45, "Incoming message has an unexpected push type: %{public}lu", v46, 0xCu);
      MEMORY[0x22AA5EED0](v46, -1, -1);
    }

    else
    {

      v44 = v43;
    }

    sub_224AC1F7C();
    swift_allocError();
    *v53 = 1;
    return swift_willThrow();
  }

  v78 = a2;
  v83 = 7565409;
  v84 = 0xE300000000000000;
  sub_224DAF8D8();
  result = [a1 userInfo];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v20 = result;
  v21 = sub_224DAECE8();

  v22 = *(v21 + 16);
  v87 = v8;
  if (v22 && (v23 = sub_224B0B624(v85), (v24 & 1) != 0))
  {
    sub_224A33E0C(*(v21 + 56) + 32 * v23, v86);
    sub_224AD52A4(v85);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
    if (swift_dynamicCast())
    {
      v25 = v83;
      goto LABEL_14;
    }
  }

  else
  {

    sub_224AD52A4(v85);
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_27D6F71E0);
  v27 = sub_224DAB228();
  v28 = sub_224DAF288();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_224A2F000, v27, v28, "Incoming message does not contain an aps dictionary", v29, 2u);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  v25 = 0;
LABEL_14:
  v79 = v11;
  result = [a1 topic];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v30 = result;
  sub_224DAEE18();

  sub_224DAE0B8();
  sub_224A3796C(v18, v16, &unk_27D6F5FF0, &unk_224DB8D30);
  v31 = v87;
  if ((*(v87 + 48))(v16, 1, v7) == 1)
  {

    sub_224CC3F04(v16);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_27D6F71E0);
    v33 = sub_224DAB228();
    v34 = sub_224DAF288();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224A2F000, v33, v34, "Incoming message contains an unparseable topic", v35, 2u);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    sub_224AC1F7C();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    return sub_224CC3F04(v18);
  }

  v37 = v79;
  v75 = *(v31 + 32);
  v75(v79, v16, v7);
  v38 = [a1 perAppToken];
  if (v38)
  {
    v39 = v38;
    v40 = sub_224DA96D8();
    v76 = v41;
    v77 = v40;
  }

  else
  {
    v76 = 0xF000000000000000;
    v77 = 0;
  }

  v47 = [a1 channelID];
  if (v47)
  {
    v48 = v47;
    v74 = sub_224DAEE18();
    v50 = v49;
  }

  else
  {
    v74 = 0;
    v50 = 0;
  }

  v51 = [a1 priority];
  if (v51 == 1)
  {
    v52 = MEMORY[0x277CF9ED0];
  }

  else if (v51 == 10)
  {
    v52 = MEMORY[0x277CF9EC8];
  }

  else
  {
    if (v51 != 5)
    {

      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v66 = sub_224DAB258();
      __swift_project_value_buffer(v66, qword_27D6F71E0);
      v67 = sub_224DAB228();
      v68 = sub_224DAF288();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v87;
      if (v69)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_224A2F000, v67, v68, "Incoming message contains an illegal priority", v71, 2u);
        MEMORY[0x22AA5EED0](v71, -1, -1);
      }

      sub_224AC1F7C();
      swift_allocError();
      *v72 = 1;
      swift_willThrow();
      sub_224AC1D9C(v77, v76);
      (*(v70 + 8))(v37, v7);
      return sub_224CC3F04(v18);
    }

    v52 = MEMORY[0x277CF9EC0];
  }

  (*(v81 + 104))(v80, *v52, v82);
  if (v25 && *(v25 + 16) && (v54 = sub_224A3A40C(0x2D746E65746E6F63, 0xEF6465676E616863), (v55 & 1) != 0) && (sub_224A33E0C(*(v25 + 56) + 32 * v54, v85), swift_dynamicCast()))
  {

    sub_224CC3F04(v18);
    v56 = v86[0];
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v57 = sub_224DAB258();
    __swift_project_value_buffer(v57, qword_27D6F71E0);
    v58 = sub_224DAB228();
    v59 = sub_224DAF288();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_224A2F000, v58, v59, "Incoming message does not contain a content-changed value.", v60, 2u);
      v61 = v60;
      v37 = v79;
      MEMORY[0x22AA5EED0](v61, -1, -1);
    }

    sub_224CC3F04(v18);
    v56 = 0;
  }

  v62 = type metadata accessor for IncomingMessage(0);
  v63 = v78;
  v75(&v78[v62[5]], v37, v7);
  result = (*(v81 + 32))(&v63[v62[7]], v80, v82);
  v64 = v76;
  *v63 = v77;
  *(v63 + 1) = v64;
  v65 = &v63[v62[6]];
  *v65 = v74;
  v65[1] = v50;
  v63[v62[8]] = v56;
  return result;
}

void sub_224CC3134(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_27D6F71E0);
    oslog = sub_224DAB228();
    v4 = sub_224DAF288();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v4, "Incoming public token is nil; abandoning", v5, 2u);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 40);
      v10 = Strong;
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v2;
      v11[4] = &off_283832818;
      v11[5] = a1;
      v11[6] = a2;
      sub_224AECAB0(a1, a2);
      sub_224AECAB0(a1, a2);
      swift_unknownObjectRetain();
      v12 = v2;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000013, 0x8000000224DCD920, v9, sub_224CC4220, v11, 0.0);
      swift_unknownObjectRelease();

      sub_224AC1D9C(a1, a2);
    }
  }
}

void sub_224CC3354(void *a1)
{
  v3 = type metadata accessor for IncomingMessage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  if (a1)
  {
    v10 = a1;
    sub_224CC25A8(v10, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + 40);
      v17 = Strong;
      sub_224CC4068(v9, v7, type metadata accessor for IncomingMessage);
      v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v1;
      v19[4] = &off_283832818;
      sub_224CC40D0(v7, v19 + v18, type metadata accessor for IncomingMessage);
      swift_unknownObjectRetain();
      v20 = v1;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000010, 0x8000000224DCD900, v16, sub_224CC4138, v19, 0.0);

      sub_224CC41C0(v9, type metadata accessor for IncomingMessage);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_224CC41C0(v9, type metadata accessor for IncomingMessage);
    }
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_27D6F71E0);
    v21[0] = sub_224DAB228();
    v12 = sub_224DAF288();
    if (os_log_type_enabled(v21[0], v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_224A2F000, v21[0], v12, "Incoming message token is nil; abandoning", v13, 2u);
      MEMORY[0x22AA5EED0](v13, -1, -1);
    }

    v14 = v21[0];
  }
}

void sub_224CC3700(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v67 - v8;
  v9 = type metadata accessor for AppTokenInfo(0);
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v77 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v67 - v15;
  v17 = sub_224DAE0D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  if (a2 >> 60 == 15)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_27D6F71E0);
    v78 = sub_224DAB228();
    v25 = sub_224DAF288();
    if (os_log_type_enabled(v78, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_224A2F000, v78, v25, "Incoming token is nil; abandoning", v26, 2u);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

LABEL_18:
    v39 = v78;

    return;
  }

  if (!a3)
  {
    sub_224A77FD0(a1, a2);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v36 = sub_224DAB258();
    __swift_project_value_buffer(v36, qword_27D6F71E0);
    v78 = sub_224DAB228();
    v37 = sub_224DAF288();
    if (os_log_type_enabled(v78, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224A2F000, v78, v37, "Incoming token info is nil; abandoning", v38, 2u);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    sub_224AC1D9C(a1, a2);
    goto LABEL_18;
  }

  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = &v67 - v23;
  v73 = a1;
  v74 = a2;
  sub_224AECAB0(a1, a2);
  v27 = a3;
  v28 = [v27 topic];
  sub_224DAEE18();

  sub_224DAE0B8();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_224CC3F04(v16);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_27D6F71E0);
    v30 = sub_224DAB228();
    v31 = sub_224DAF288();
    v32 = os_log_type_enabled(v30, v31);
    v34 = v73;
    v33 = v74;
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224A2F000, v30, v31, "Incoming topic cannot be parsed; abandoning", v35, 2u);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    sub_224AC1D9C(v34, v33);
  }

  else
  {
    v40 = *(v18 + 32);
    v41 = v72;
    v40(v72, v16, v17);
    v69 = v18;
    v42 = *(v18 + 16);
    v43 = v17;
    v42(v22, v41, v17);
    v44 = [v27 identifier];
    v68 = sub_224DAEE18();
    v46 = v45;

    v70 = v27;
    v47 = [v27 expirationDate];
    if (v47)
    {
      v48 = v76;
      v49 = v47;
      sub_224DA97F8();

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v48 = v76;
    }

    v51 = sub_224DA9878();
    (*(*(v51 - 8) + 56))(v48, v50, 1, v51);
    v52 = v77;
    v53 = v22;
    v54 = v43;
    v40(v77, v53, v43);
    v55 = (v52 + *(v9 + 20));
    *v55 = v68;
    v55[1] = v46;
    sub_224CC3F6C(v48, v52 + *(v9 + 24));
    v56 = v78;
    Strong = swift_unknownObjectWeakLoadStrong();
    v58 = v69;
    if (Strong)
    {
      v68 = *(Strong + 40);
      v76 = v54;
      v59 = v52;
      v60 = Strong;
      v61 = v71;
      sub_224CC4068(v59, v71, type metadata accessor for AppTokenInfo);
      v62 = (*(v75 + 80) + 56) & ~*(v75 + 80);
      v63 = swift_allocObject();
      v63[2] = v60;
      v63[3] = v56;
      v65 = v73;
      v64 = v74;
      v63[4] = &off_283832818;
      v63[5] = v65;
      v63[6] = v64;
      sub_224CC40D0(v61, v63 + v62, type metadata accessor for AppTokenInfo);
      sub_224AECAB0(v65, v64);
      swift_unknownObjectRetain();
      v66 = v56;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6465766965636552, 0xEE006E656B6F7420, v68, sub_224CC3FDC, v63, 0.0);

      sub_224AC1D9C(v65, v64);
      sub_224CC41C0(v59, type metadata accessor for AppTokenInfo);
      (*(v58 + 8))(v72, v76);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_224AC1D9C(v73, v74);
      sub_224CC41C0(v52, type metadata accessor for AppTokenInfo);
      (*(v58 + 8))(v72, v54);
    }
  }
}

uint64_t sub_224CC3F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CC3F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CC3FDC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for AppTokenInfo(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_224ABF550(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_224CC4068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CC40D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CC4138(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for IncomingMessage(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_224ABF504(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_224CC41C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224CC4298()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CFA390]) initIncludingRelevanceBacked_];
  [v0 setRemoteWidgetInclusions_];
  v1 = objc_allocWithZone(MEMORY[0x277CFA3C0]);
  v2 = v0;
  v3 = [v1 initWithWidgetsPredicate:v2 controlsPredicate:0 includeIntents:0];

  qword_2813652A0 = v3;
}

uint64_t sub_224CC432C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v22.receiver = v1;
  v22.super_class = type metadata accessor for WidgetRendererServer();
  v12 = objc_msgSendSuper2(&v22, sel_init);
  v20[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224CCBD80;
  *(v13 + 24) = v20;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_152;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v19 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener];
    *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener] = v17;

    sub_224CC4660();

    return v16;
  }

  return result;
}

id sub_224CC45B4(void *a1, uint64_t a2)
{
  sub_224DAA808();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA7B8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_224CC4660()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services);
  sub_224A3317C(v1 + 56, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v16 = sub_224DAD178();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v1 + 96, v12);
  v2 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v3 = *(*(v2 + 8) + 8);
  v17[0] = sub_224DACA58();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D8, &unk_224DBE890);
  sub_224A33088(&unk_281351000, &qword_27D6F51D8, &unk_224DBE890);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v1 + 136, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v17[0] = (*(*(v5 + 8) + 40))(769, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v6 = *__swift_project_boxed_opaque_existential_1((v1 + 232), *(v1 + 256));
  v12[0] = sub_224CE80BC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
  sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224B44674(v1 + 280, v12);
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = *(v7 + 16);
  v17[0] = sub_224DAD7B8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224BBF304(v1 + 176, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v17[0] = (*(v10 + 8))(v9, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

void sub_224CC4CC4()
{
  v62 = sub_224DAB7B8();
  v0 = *(v62 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_224DAB848();
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_224DAB728();
  v64 = *(v63 - 8);
  v6 = *(v64 + 64);
  v7 = MEMORY[0x28223BE20](v63);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v66 = v3;
    v11 = Strong;
    sub_224A3317C(*(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services) + 56, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v70);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v73, v74);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v47 = *&v11[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
    os_unfair_lock_lock(*(v47 + 16));
    v12 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v48 = v11;
    v13 = *&v11[v12];
    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v14 = *&v11[v12];
      }

      v15 = *&v11[v12];

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
      sub_224DAF1F8();
      v13 = v73[0];
      v16 = v73[1];
      v18 = v73[2];
      v17 = v74;
      v19 = v75;
    }

    else
    {
      v20 = -1 << *(v13 + 32);
      v16 = v13 + 56;
      v18 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v13 + 56);

      v17 = 0;
    }

    v46 = v18;
    v23 = (v18 + 64) >> 6;
    v54 = v64 + 16;
    v53 = v6 + 7;
    v52 = v64 + 32;
    v51 = &v69;
    v50 = (v0 + 8);
    v49 = (v66 + 8);
    v57 = v9;
    v56 = v13;
    v55 = v16;
    if (v13 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v24 = v17;
      v25 = v19;
      v26 = v17;
      if (!v19)
      {
        break;
      }

LABEL_15:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v28)
      {
LABEL_21:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v47 + 16));
        (*(v64 + 8))(v9, v63);

        return;
      }

      while (1)
      {
        v66 = v27;
        v30 = v64;
        v31 = v58;
        v32 = v63;
        (*(v64 + 16))(v58, v9, v63);
        v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v34 = (v53 + v33) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        (*(v30 + 32))(v35 + v33, v31, v32);
        *(v35 + v34) = v28;
        v65 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
        v36 = swift_allocObject();
        v36[2] = v28;
        v36[3] = sub_224CCBCE4;
        v36[4] = v35;
        v71 = sub_224CCBDC4;
        v72 = v36;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v69 = sub_224A39F40;
        v70 = &block_descriptor_146_0;
        v37 = v23;
        v38 = _Block_copy(aBlock);
        v39 = v28;

        v40 = v59;
        sub_224DAB7E8();
        v67 = MEMORY[0x277D84F90];
        sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v41 = v61;
        v42 = v62;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v40, v41, v38);
        v43 = v38;
        v23 = v37;
        _Block_release(v43);
        v9 = v57;

        v44 = v42;
        v13 = v56;
        (*v50)(v41, v44);
        v45 = v40;
        v16 = v55;
        (*v49)(v45, v60);

        v17 = v26;
        v19 = v66;
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v29 = sub_224DAF878();
        if (v29)
        {
          v67 = v29;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v28 = aBlock[0];
          v26 = v17;
          v27 = v19;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_21;
      }

      v25 = *(v16 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224CC54C0(unint64_t *a1)
{
  v29 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(*(result + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock) + 16);
    v3 = result;
    v26 = *(result + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);

    os_unfair_lock_lock(v2);
    v4 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v27 = v3;
    v5 = *&v3[v4];
    if ((v5 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
      result = sub_224DAF1F8();
      v5 = v31;
      v6 = v32;
      v7 = v33;
      v8 = v34;
      v9 = v35;
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v5 + 56);

      v8 = 0;
    }

    v13 = (v7 + 64) >> 6;
    v28 = v5;
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_21:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v26 + 16));
      }

      while (1)
      {
        sub_224A7E76C(v29);
        if (qword_2813589F8 != -1)
        {
          swift_once();
        }

        v19 = qword_2813652A0;
        v20 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        sub_224A87A80();
        v21 = v19;
        v22 = sub_224DAF1A8();

        v23 = [v20 initWithExtensions:v22 generatedFrom:v21];

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v25 = v23;
        sub_224A77CC8(sub_224CCBCD4, v24);

        v8 = v16;
        v9 = v17;
        v5 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_224DAF878())
        {
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v18 = v30;
          v16 = v8;
          v17 = v9;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_21;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224CC5858(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_224CC590C(v3, a1);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

void sub_224CC590C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v52 = sub_224DAB7B8();
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_224DAB848();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3317C(*(a1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services) + 136, v64);
  v9 = v65;
  v10 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v10 + 32))(aBlock, 769, v9, v10);
  if (!v63)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_10:
    v54 = 0;
    goto LABEL_11;
  }

  v11 = sub_224A86CAC();
  sub_224A699F0(aBlock);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_10;
  }

  if (*(v11 + 16) && (v12 = sub_224A683FC(v53), (v13 & 1) != 0))
  {
    v54 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {

    v54 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_11:
  v14 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
    sub_224DAF1F8();
    v15 = v64[0];
    v16 = v64[1];
    v17 = v64[2];
    v18 = v65;
    v19 = v66;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v43[0] = v17;
  v23 = (v17 + 64) >> 6;
  v46 = v62;
  v45 = (v3 + 8);
  v44 = (v6 + 8);
  v48 = v15;
  v47 = v16;
  if (v15 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_22:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_28:
      sub_224A3B7E4();

      return;
    }

    while (1)
    {
      v57 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
      sub_224DAEFA8();
      v30 = v59;
      v31 = v60;
      v32 = swift_allocObject();
      v33 = v54;
      v32[2] = v54;
      v32[3] = v30;
      v32[4] = v31;
      v56 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
      v34 = swift_allocObject();
      v34[2] = v28;
      v34[3] = sub_224CCBC68;
      v34[4] = v32;
      v62[2] = sub_224CCBDC4;
      v63 = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v62[0] = sub_224A39F40;
      v62[1] = &block_descriptor_133;
      v35 = _Block_copy(aBlock);
      v36 = v33;
      v55 = v28;

      v37 = v49;
      sub_224DAB7E8();
      v58 = MEMORY[0x277D84F90];
      sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v38 = v23;
      v39 = v51;
      v40 = v52;
      v16 = v47;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v37, v39, v35);
      _Block_release(v35);

      v41 = v39;
      v23 = v38;
      (*v45)(v41, v40);
      v42 = v37;
      v15 = v48;
      (*v44)(v42, v50);

      v18 = v26;
      v19 = v57;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      v29 = sub_224DAF878();
      if (v29)
      {
        v59 = v29;
        type metadata accessor for WidgetRendererClient();
        swift_dynamicCast();
        v28 = aBlock[0];
        v26 = v18;
        v27 = v19;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_28;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_224CC601C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
    MEMORY[0x22AA5C290](v23, v2);
    v3 = v23[0];
    v4 = *(*&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock] + 16);
    v21 = *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];

    os_unfair_lock_lock(v4);
    v5 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v6 = *&v1[v5];
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *&v1[v5];
      }

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
      sub_224DAF1F8();
      v6 = v23[0];
      v8 = v23[1];
      v9 = v23[2];
      v10 = v23[3];
      v11 = v23[4];
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v8 = v6 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);

      v10 = 0;
    }

    v15 = (v9 + 64) >> 6;
    if (v6 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        break;
      }

LABEL_15:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_21:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v21 + 16));

        return;
      }

      while (1)
      {
        sub_224A8295C(v3);

        v10 = v18;
        v11 = v19;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_224DAF878())
        {
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v20 = v22;
          v18 = v10;
          v19 = v11;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_21;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224CC62BC(uint64_t a1)
{
  v32 = a1;
  v31 = sub_224DABE18();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(*(result + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock) + 16);
    v6 = result;
    v28 = *(result + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);

    os_unfair_lock_lock(v5);
    v7 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v29 = v6;
    v8 = *&v6[v7];
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *&v6[v7];
      }

      v10 = *&v6[v7];

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
      result = sub_224DAF1F8();
      v8 = v35;
      v11 = v36;
      v12 = v37;
      v13 = v38;
      v14 = v39;
    }

    else
    {
      v15 = -1 << *(v8 + 32);
      v11 = v8 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v8 + 56);

      v13 = 0;
    }

    v27 = v12;
    v18 = (v12 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v19 = v13;
      v20 = v14;
      v21 = v13;
      if (!v14)
      {
        break;
      }

LABEL_15:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v23)
      {
LABEL_21:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v28 + 16));
      }

      while (1)
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
        v26 = v30;
        MEMORY[0x22AA5BB00](v25);
        sub_224CC9304(v26);

        result = (*(v1 + 8))(v26, v31);
        v13 = v21;
        v14 = v22;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v24 = sub_224DAF878();
        if (v24)
        {
          v33 = v24;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v23 = v34;
          v21 = v13;
          v22 = v14;
          if (v34)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_21;
      }

      v20 = *(v11 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_224CC6604()
{
  v0 = sub_224DABE18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v28 = v1;
    v29 = v0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v7);
    v27 = *&v6[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
    os_unfair_lock_lock(*(v27 + 16));
    v8 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v9 = *&v6[v8];
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *&v6[v8];
      }

      v11 = *&v6[v8];

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
      sub_224DAF1F8();
      v9 = v32;
      v12 = v33;
      v13 = v34;
      v14 = v35;
      v15 = v36;
    }

    else
    {
      v16 = -1 << *(v9 + 32);
      v12 = v9 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v9 + 56);

      v14 = 0;
    }

    v26[1] = v13;
    v19 = (v13 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v20 = v14;
      v21 = v15;
      v22 = v14;
      if (!v15)
      {
        break;
      }

LABEL_15:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v9 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v24)
      {
LABEL_21:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v27 + 16));

        (*(v28 + 8))(v4, v29);
        return;
      }

      while (1)
      {
        sub_224CC9FB8(v4);

        v14 = v22;
        v15 = v23;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v25 = sub_224DAF878();
        if (v25)
        {
          v30 = v25;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v24 = v31;
          v22 = v14;
          v23 = v15;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_21;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

id sub_224CC6920()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WidgetRendererServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224CC6A68()
{
  v1 = v0;
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EC8);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAA7B8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener);

  return [v10 activate];
}

void sub_224CC6BD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v49 = v1;
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
    sub_224DAF1F8();
    v3 = v56[11];
    v4 = v56[12];
    v5 = v56[13];
    v6 = v56[14];
    v7 = v56[15];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v55 = MEMORY[0x277D84F90];
  v52 = v11;
  v50 = v4;
  v51 = v3;
  while (v3 < 0)
  {
    if (!sub_224DAF878())
    {
      goto LABEL_64;
    }

    type metadata accessor for WidgetRendererClient();
    swift_dynamicCast();
    v16 = v56[0];
    v14 = v6;
    v15 = v7;
    if (!v56[0])
    {
      goto LABEL_64;
    }

LABEL_18:
    v17 = *&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
    v18 = *(v17 + 16);

    os_unfair_lock_lock(v18);
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
    swift_beginAccess();
    v54 = v16;
    v20 = *&v16[v19];
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (v20 < 0)
      {
        v21 = *&v16[v19];
      }

      v22 = sub_224DAF838();
      if (!v22)
      {
LABEL_27:

        v23 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(v20 + 16);
      v26 = *&v16[v19];

      if (!v22)
      {
        goto LABEL_27;
      }
    }

    if (v22 < 1)
    {
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v23 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v23);
      v25 = v24 - 32;
      if (v24 < 32)
      {
        v25 = v24 - 25;
      }

      *(v23 + 16) = v22;
      *(v23 + 24) = (2 * (v25 >> 3)) | 1;
    }

    v27 = sub_224B2EEC8(v56, (v23 + 32), v22, v20);
    sub_224A3B7E4();
    if (v27 != v22)
    {
      goto LABEL_67;
    }

LABEL_30:
    v28 = *(v17 + 16);

    os_unfair_lock_unlock(v28);

    v29 = v23 < 0 || (v23 & 0x4000000000000000) != 0;
    v30 = v55;
    if (v29)
    {
      v31 = sub_224DAF838();
    }

    else
    {
      v31 = *(v23 + 16);
    }

    v32 = v55 >> 62;
    v53 = v15;
    if (v55 >> 62)
    {
      v48 = sub_224DAF838();
      v34 = v48 + v31;
      if (__OFADD__(v48, v31))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v49 + 16));
        return;
      }
    }

    else
    {
      v33 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v33 + v31;
      if (__OFADD__(v33, v31))
      {
        goto LABEL_63;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v32)
      {
LABEL_44:
        sub_224DAF838();
      }

      else
      {
        v35 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
        v36 = *(v35 + 16);
      }

      v30 = sub_224DAF968();
      v35 = v30 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_46;
    }

    if (v32)
    {
      goto LABEL_44;
    }

    v35 = v55 & 0xFFFFFFFFFFFFFF8;
    if (v34 > *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_43;
    }

LABEL_46:
    v55 = v30;
    v37 = *(v35 + 16);
    v38 = *(v35 + 24);
    if (v29)
    {
      v39 = sub_224DAF838();
    }

    else
    {
      v39 = *(v23 + 16);
    }

    if (v39)
    {
      if (((v38 >> 1) - v37) < v31)
      {
        goto LABEL_68;
      }

      v40 = v35 + 8 * v37 + 32;
      if (v29)
      {
        if (v39 < 1)
        {
          goto LABEL_70;
        }

        sub_224A33088(&unk_27D6F6160, &qword_27D6F6158, &unk_224DBE880);
        for (i = 0; i != v39; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6158, &unk_224DBE880);
          v42 = sub_224A6996C(v56, i, v23);
          v44 = *v43;
          (v42)(v56, 0);
          *(v40 + 8 * i) = v44;
        }

        v4 = v50;
        v3 = v51;
      }

      else
      {
        sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
        swift_arrayInitWithCopy();
      }

      v6 = v14;
      v11 = v52;
      v7 = v53;
      if (v31 > 0)
      {
        v45 = *(v35 + 16);
        v46 = __OFADD__(v45, v31);
        v47 = v45 + v31;
        if (v46)
        {
          goto LABEL_69;
        }

        *(v35 + 16) = v47;
        v6 = v14;
        v7 = v53;
      }
    }

    else
    {

      v6 = v14;
      v11 = v52;
      v7 = v53;
      if (v31 > 0)
      {
        goto LABEL_66;
      }
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_64;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_64;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_224CC71CC()
{
  v42 = sub_224DAB7B8();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DAB848();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v35 + 16));
  v7 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = *(v0 + v7);
    }

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
    sub_224DAF1F8();
    v8 = v48[7];
    v10 = v48[8];
    v11 = v48[9];
    v12 = v48[10];
    v13 = v48[11];
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
  }

  v34 = v11;
  v17 = (v11 + 64) >> 6;
  v38 = v48;
  v37 = (v1 + 8);
  v36 = (v4 + 8);
  if (v8 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_20:
      sub_224A3B7E4();
      os_unfair_lock_unlock(*(v35 + 16));
      return;
    }

    while (1)
    {
      v45 = *&v22[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
      v24 = swift_allocObject();
      v24[2] = v22;
      v24[3] = sub_224CC8F14;
      v24[4] = 0;
      v48[2] = sub_224CCBDC4;
      v48[3] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v48[0] = sub_224A39F40;
      v48[1] = &block_descriptor_117_0;
      v25 = _Block_copy(aBlock);
      v44 = v22;
      v26 = v39;
      sub_224DAB7E8();
      v46 = MEMORY[0x277D84F90];
      sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198]);
      v43 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v27 = v8;
      v28 = v41;
      v29 = v17;
      v30 = v10;
      v31 = v42;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v26, v28, v25);
      _Block_release(v25);
      v32 = v28;
      v8 = v27;
      v33 = v31;
      v10 = v30;
      v17 = v29;
      (*v37)(v32, v33);
      (*v36)(v26, v40);

      v12 = v20;
      v13 = v43;
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v23 = sub_224DAF878();
      if (v23)
      {
        v46 = v23;
        type metadata accessor for WidgetRendererClient();
        swift_dynamicCast();
        v22 = aBlock[0];
        v20 = v12;
        v21 = v13;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_20;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_224CC77BC(uint64_t a1, void *a2)
{
  v4 = sub_224DA9F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v63 - v10;
  v12 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *(a1 + v12);
    }

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient);
    sub_224DAF1F8();
    result = v91[11];
    v16 = v91[12];
    v17 = v91[13];
    v18 = v91[14];
    v19 = v91[15];
  }

  else
  {
    v20 = -1 << *(v13 + 32);
    v16 = v13 + 56;
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(v13 + 56);

    v17 = v21;
    v18 = 0;
  }

  v63[1] = v17;
  v24 = (v17 + 64) >> 6;
  v25 = (v5 + 16);
  v72 = *MEMORY[0x277CF9F30];
  v71 = (v5 + 8);
  v70 = *MEMORY[0x277CF9F38];
  v76 = a2;
  v75 = v4;
  v74 = v9;
  v26 = (v5 + 104);
  v66 = result;
  v65 = v16;
  v64 = v24;
  v84 = (v5 + 104);
  v73 = v11;
  while (result < 0)
  {
    v33 = sub_224DAF878();
    if (!v33)
    {
      return sub_224A3B7E4();
    }

    v92 = v33;
    type metadata accessor for WidgetRendererClient();
    swift_dynamicCast();
    v32 = v91[0];
    v68 = v18;
    v67 = v19;
    if (!v91[0])
    {
      return sub_224A3B7E4();
    }

LABEL_20:
    v69 = v32;
    v34 = [*&v32[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle] bundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v80 = sub_224DAEE18();
      v81 = v36;
    }

    else
    {
      v81 = 0xE700000000000000;
      v80 = 0x6E776F6E6B6E75;
    }

    v37 = v69;
    v38 = *&v69[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v38 + 16));
    v39 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
    swift_beginAccess();
    v40 = *&v37[v39];
    if ((v40 & 0xC000000000000001) != 0)
    {

      v41 = sub_224DAF838();
      if (!v41)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v41 = *(v40 + 16);

      if (!v41)
      {
LABEL_30:

        v42 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }
    }

    if (v41 < 1)
    {
      v42 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v42 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v42);
      v44 = v43 - 32;
      if (v43 < 32)
      {
        v44 = v43 - 25;
      }

      *(v42 + 16) = v41;
      *(v42 + 24) = (2 * (v44 >> 3)) | 1;
    }

    v45 = sub_224B2FC64(v91, (v42 + 32), v41, v40);
    result = sub_224A3B7E4();
    if (v45 != v41)
    {
      goto LABEL_52;
    }

LABEL_34:
    os_unfair_lock_unlock(*(v38 + 16));
    if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
    {
      result = sub_224DAF838();
      if (!result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *(v42 + 16);
      if (!result)
      {
        goto LABEL_10;
      }
    }

    if (result < 1)
    {
      goto LABEL_53;
    }

    v46 = 0;
    v77 = v42 & 0xC000000000000001;
    v79 = v42;
    v78 = result;
    do
    {
      v89 = v46;
      if (v77)
      {
        v47 = MEMORY[0x22AA5DCC0](v46, v42);
      }

      else
      {
        v47 = *(v42 + 8 * v46 + 32);
      }

      v90 = v47;
      v48 = *(v47 + 24);
      v49 = [v48 identifier];
      v87 = sub_224DAEE18();
      v86 = v50;

      v88 = v48;
      v85 = [v48 widget];
      v51 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
      swift_beginAccess();
      v52 = v47 + v51;
      v53 = v73;
      v54 = v75;
      v83 = *v25;
      v83(v73, v52, v75);
      v55 = v74;
      v82 = *v26;
      v82(v74, v72, v54);
      sub_224A7940C(&unk_2813519C8, MEMORY[0x277CF9F40]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      v56 = *v71;
      (*v71)(v55, v54);
      v56(v53, v54);
      if (v91[0] != v92)
      {
        v83(v53, v90 + v51, v54);
        v82(v55, v70, v54);
        sub_224DAEFA8();
        sub_224DAEFA8();
        v56(v55, v54);
        v56(v53, v54);
      }

      v57 = sub_224DAA4A8();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();

      sub_224DAA498();

      v61 = v76;
      MEMORY[0x22AA5D350](v60);
      v42 = v79;
      if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      v46 = v89 + 1;
      sub_224DAF078();

      v26 = v84;
    }

    while (v78 != v46);
LABEL_10:

    v18 = v68;
    v19 = v67;
    result = v66;
    v16 = v65;
    v24 = v64;
  }

  v27 = v18;
  v28 = v19;
  v29 = v18;
  if (v19)
  {
LABEL_16:
    v30 = __clz(__rbit64(v28));
    v67 = (v28 - 1) & v28;
    v31 = *(result + 48);
    v68 = v29;
    v32 = *(v31 + ((v29 << 9) | (8 * v30)));
    if (!v32)
    {
      return sub_224A3B7E4();
    }

    goto LABEL_20;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      return sub_224A3B7E4();
    }

    v28 = *(v16 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_224CC80B4(void *a1)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EC8);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s interrupted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  [v3 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue];
      BSDispatchQueueAssert();
      sub_224CC8774();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02C70(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

void sub_224CC836C(void *a1)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EC8);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue];
      BSDispatchQueueAssert();
      sub_224CC8774();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02C70(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

uint64_t sub_224CC8614()
{
  sub_224CC6BD4();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_224DAF838();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA5DCC0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 widget];

      sub_224DAF9B8();
      v8 = *(v9 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v2 != v4);

    return v9;
  }

  return result;
}

void sub_224CC8774()
{
  v1 = sub_224DAB7B8();
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v1);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DAB848();
  v57 = *(v59 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions;
  v63 = v0;
  v6 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions];
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A7940C(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    sub_224DAF1F8();
    v8 = aBlock[9];
    v7 = aBlock[10];
    v10 = aBlock[11];
    v9 = aBlock[12];
    v11 = aBlock[13];
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v8 = v6;
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v11;
    v17 = v9;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4();

      v21 = v63;
      v22 = *&v63[v62];
      *&v63[v62] = MEMORY[0x277D84FA0];

      v62 = *&v21[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
      os_unfair_lock_lock(*(v62 + 16));
      v23 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
      swift_beginAccess();
      v55 = v23;
      v24 = *&v21[v23];
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 < 0)
        {
          v25 = *&v21[v23];
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v30 = -1 << *(v24 + 32);
        v27 = ~v30;
        v26 = v24 + 64;
        v31 = -v30;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v28 = v32 & *(v24 + 64);
        v29 = v24;
      }

      swift_bridgeObjectRetain_n();
      v33 = 0;
      v54 = v27;
      v34 = (v27 + 64) >> 6;
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v35 = v33;
        v36 = v28;
        v37 = v33;
        if (!v28)
        {
          break;
        }

LABEL_31:
        v38 = (v36 - 1) & v36;
        v39 = (v37 << 9) | (8 * __clz(__rbit64(v36)));
        v40 = *(*(v29 + 56) + v39);
        v41 = *(*(v29 + 48) + v39);

        if (!v41)
        {
LABEL_37:
          sub_224A3B7E4();

          v45 = v63;
          v46 = *&v63[v55];
          *&v63[v55] = MEMORY[0x277D84F98];

          os_unfair_lock_unlock(*(v62 + 16));
          v47 = *&v45[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
          v48 = swift_allocObject();
          *(v48 + 16) = v45;
          aBlock[4] = sub_224CCBC20;
          aBlock[5] = v48;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_224A39F40;
          aBlock[3] = &block_descriptor_72;
          v49 = _Block_copy(aBlock);
          v50 = v45;
          v51 = v56;
          sub_224DAB7E8();
          v64 = MEMORY[0x277D84F90];
          sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
          sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
          v52 = v58;
          v53 = v61;
          sub_224DAF788();
          MEMORY[0x22AA5D760](0, v51, v52, v49);
          _Block_release(v49);
          (*(v60 + 8))(v52, v53);
          (*(v57 + 8))(v51, v59);

          return;
        }

        while (1)
        {
          sub_224BB8028();

          v33 = v37;
          v28 = v38;
          if ((v29 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_33:
          v42 = sub_224DAFB18();
          if (v42)
          {
            v44 = v43;
            v64 = v42;
            sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
            swift_dynamicCast();
            v41 = aBlock[0];
            v64 = v44;
            type metadata accessor for WidgetRendererSession();
            swift_dynamicCast();
            v37 = v33;
            v38 = v28;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_37;
        }
      }

      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_39;
        }

        if (v37 >= v34)
        {
          goto LABEL_37;
        }

        v36 = *(v26 + 8 * v37);
        ++v35;
        if (v36)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v17;
      v11 = v18;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_224DAF878();
      if (v20)
      {
        aBlock[6] = v20;
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v9;
        v18 = v11;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v10 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_224CC8E78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion;
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion) invalidate];
  v6 = *(a1 + v5);
  *(a1 + v5) = 0;

  v7 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer) invalidate];
  v8 = *(a1 + v7);
  *(a1 + v7) = 0;
}

uint64_t sub_224CC8F20(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAE4F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  sub_224DAE4D8();
  v14 = sub_224DA9508();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_224DA94F8();
  sub_224A7940C(&qword_281350C60, MEMORY[0x277CE3AB8]);
  v17 = sub_224DA94E8();
  v19 = v18;

  v20 = sub_224DA96B8();
  [a1 systemEnvironmentDidChange_];
  sub_224A78024(v17, v19);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_224CC9304(void *a1)
{
  v2 = v1;
  v107 = sub_224DAC268();
  v4 = *(v107 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v92 - v8;
  v9 = sub_224DABE18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v92 - v18;
  v102 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services);
  sub_224B44674(v102 + 280, &v113);
  v20 = *(&v114 + 1);
  v21 = v115;
  __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
  v22 = *(v21 + 16);
  v103 = a1;
  v23 = v22(a1, v20, v21);
  if (!v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(&v113);
  }

  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v113);
  v25 = v24 >> 62;
  if (v24 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_4:
  v98 = v25;
  v93 = v4;
  v95 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v95 + 16));
  v26 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v96 = v2;
  v25 = *(v2 + v26);
  v104 = v24;
  v100 = v9;
  v99 = v10;
  v97 = v14;
  v92 = v19;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v27 = 0;
    v24 = 0;
    v2 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(v25 + 32);
    v27 = ~v29;
    v10 = v25 + 64;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v24 = v31 & *(v25 + 64);
    v2 = v25;
  }

  v9 = 0;
  v94 = v27;
  v4 = (v27 + 64) >> 6;
  while (1)
  {
    v19 = v24;
    v14 = v9;
    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    v32 = v9;
    v33 = v24;
    if (!v24)
    {
      while (1)
      {
        v9 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v9 >= v4)
        {
          goto LABEL_23;
        }

        v33 = *(v10 + 8 * v9);
        ++v32;
        if (v33)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_55:
      if (!sub_224DAF838())
      {
      }

      goto LABEL_4;
    }

LABEL_17:
    v24 = (v33 - 1) & v33;
    v34 = (v9 << 9) | (8 * __clz(__rbit64(v33)));
    v35 = *(*(v2 + 56) + v34);
    v36 = *(*(v2 + 48) + v34);

    if (!v36)
    {
      goto LABEL_23;
    }

LABEL_21:

    v40 = [v36 widget];
    v25 = sub_224DABE08();

    if (v25)
    {
      sub_224A3B7E4();
      v41 = 0;
      v42 = 1;
LABEL_30:
      v47 = v100;
      v45 = v99;
      v57 = v96;
      goto LABEL_33;
    }
  }

  v37 = sub_224DAFB18();
  if (v37)
  {
    v39 = v38;
    *&v108[0] = v37;
    sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    swift_dynamicCast();
    v36 = v113;
    *&v108[0] = v39;
    type metadata accessor for WidgetRendererSession();
    swift_dynamicCast();
    if (v36)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  sub_224A3B7E4();
  sub_224A3317C(v102 + 136, v110);
  v43 = v111;
  v44 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  (*(v44 + 32))(v108, 257, v43, v44);
  if (!*(&v109 + 1))
  {
    sub_224A3311C(v108, &qword_27D6F50E0, &qword_224DB41A0);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v42 = 0;
    v41 = 0;
    goto LABEL_30;
  }

  v113 = v108[0];
  v114 = v108[1];
  v115 = v109;
  __swift_destroy_boxed_opaque_existential_1(v110);
  v45 = v99;
  v46 = v101;
  v47 = v100;
  (*(v99 + 16))(v101, v103, v100);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v49 = v92;
  (*(*(v48 - 8) + 56))(v92, 1, 1, v48);
  v50 = type metadata accessor for HostDescriptorPredicate();
  *(v49 + v50[5]) = 3;
  *(v49 + v50[6]) = 3;
  v51 = v50[7];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  v53 = v50[8];
  v54 = *(v45 + 56);
  v54(v49 + v53, 1, 1, v47);
  (*(v93 + 56))(v49 + v50[9], 1, 1, v107);
  v55 = v49 + v50[10];
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_224A3311C(v49 + v53, &unk_27D6F6130, &unk_224DBB6A0);
  (*(v45 + 32))(v49 + v53, v46, v47);
  v54(v49 + v53, 0, 1, v47);
  (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
  v56 = sub_224A6BAF8(v49);
  v57 = v96;
  if (v56)
  {
    if (v56 >> 62)
    {
      v58 = sub_224DAF838();
    }

    else
    {
      v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_224A699F0(&v113);
    sub_224A3311C(v49, &qword_27D6F46D0, &unk_224DBD6D0);
    if (v58)
    {
      v42 = 0;
      v41 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_224A699F0(&v113);
    sub_224A3311C(v49, &qword_27D6F46D0, &unk_224DBD6D0);
  }

  v42 = 0;
  v41 = 0;
LABEL_33:
  os_unfair_lock_unlock(*(v95 + 16));
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v59 = sub_224DAB258();
  __swift_project_value_buffer(v59, qword_281364EC8);
  v60 = v97;
  (*(v45 + 16))(v97, v103, v47);
  v61 = v57;
  v62 = sub_224DAB228();
  v63 = sub_224DAF278();

  v64 = os_log_type_enabled(v62, v63);
  v103 = v61;
  if (v64)
  {
    v65 = v61;
    v66 = v47;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    LODWORD(v102) = v41;
    v69 = v45;
    v70 = v68;
    *&v113 = v68;
    *v67 = 136446978;
    *(v67 + 4) = sub_224A33F74(*&v65[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v65[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v113);
    *(v67 + 12) = 2082;
    sub_224A7940C(&qword_281350E70, MEMORY[0x277CF98E0]);
    v71 = sub_224DAFD28();
    v73 = v72;
    (*(v69 + 8))(v60, v66);
    v41 = v102;
    v74 = sub_224A33F74(v71, v73, &v113);

    *(v67 + 14) = v74;
    *(v67 + 22) = 1026;
    *(v67 + 24) = v42;
    *(v67 + 28) = 1026;
    *(v67 + 30) = v41;
    _os_log_impl(&dword_224A2F000, v62, v63, "[%{public}s] Timelines reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d, matchesConfiguration=%{BOOL,public}d", v67, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v70, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v60, v47);
  }

  if ((v42 | v41) != 1)
  {
  }

  if (!v98)
  {
    v75 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_41;
    }

LABEL_51:

    v90 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_52:
      if (!sub_224DAF838())
      {
      }

LABEL_49:
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      sub_224A77CC8(sub_224CCBBFC, v91);
    }

LABEL_48:
    if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    goto LABEL_49;
  }

  v75 = sub_224DAF838();
  if (!v75)
  {
    goto LABEL_51;
  }

LABEL_41:
  *&v113 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if ((v75 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v77 = v104;
    v78 = v104 & 0xC000000000000001;
    v79 = (v93 + 8);
    do
    {
      if (v78)
      {
        v80 = MEMORY[0x22AA5DCC0](v76);
      }

      else
      {
        v80 = *(v77 + 8 * v76 + 32);
      }

      v81 = v80;
      ++v76;
      v82 = v105;
      sub_224DABE58();
      v83 = sub_224DAC248();
      v84 = *v79;
      v85 = v82;
      v86 = v107;
      (*v79)(v85, v107);
      v87 = v106;
      sub_224DABE58();
      v88 = sub_224DAC258();
      v84(v87, v86);
      [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v83 metrics:v88];

      sub_224DAF9B8();
      v89 = *(v113 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v77 = v104;
    }

    while (v75 != v76);

    v90 = v113;
    if (v113 >> 62)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void sub_224CC9FB8(uint64_t a1)
{
  v54 = sub_224DAC268();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - v7;
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BBF304(*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 176, v57);
  v13 = v58;
  v14 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v15 = (*(v14 + 16))(a1, v13, v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
    return;
  }

  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v57);
  v17 = v16 >> 62;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    return;
  }

  v48 = sub_224DAF838();
  v17 = v16 >> 62;
  if (!v48)
  {
    goto LABEL_27;
  }

LABEL_4:
  v51 = v17;
  v18 = v9;
  v56 = 0;
  v19 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v19 + 16));
  v20 = 0;
  sub_224CCA64C(v1, a1, &v56);
  v50 = v3;
  os_unfair_lock_unlock(*(v19 + 16));
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364EC8);
  v22 = v18;
  (*(v18 + 16))(v12, a1, v8);
  v23 = v1;
  v24 = sub_224DAB228();
  v25 = sub_224DAF278();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v26 = 136446722;
    *(v26 + 4) = sub_224A33F74(*&v23[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v23[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v57);
    *(v26 + 12) = 2082;
    sub_224A7940C(&qword_281350E70, MEMORY[0x277CF98E0]);
    v27 = sub_224DAFD28();
    v20 = v28;
    (*(v22 + 8))(v12, v8);
    v29 = sub_224A33F74(v27, v20, v57);

    *(v26 + 14) = v29;
    *(v26 + 22) = 1026;
    swift_beginAccess();
    *(v26 + 24) = v56;
    _os_log_impl(&dword_224A2F000, v24, v25, "[%{public}s] Snapshots reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d", v26, 0x1Cu);
    v30 = v49;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  else
  {

    v31 = *(v22 + 8);
    v30 = v22 + 8;
    v31(v12, v8);
  }

  swift_beginAccess();
  if (v56 != 1)
  {
    goto LABEL_27;
  }

  if (!v51)
  {
    v32 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_23:

    v46 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_20;
    }

LABEL_24:
    if (sub_224DAF838())
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v32 = sub_224DAF838();
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_13:
  v49 = v23;
  v55 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v51 = v16 & 0xC000000000000001;
    v34 = (v50 + 8);
    v35 = v16;
    do
    {
      if (v51)
      {
        v36 = MEMORY[0x22AA5DCC0](v33, v16);
      }

      else
      {
        v36 = *(v16 + 8 * v33 + 32);
      }

      v37 = v36;
      ++v33;
      v38 = v52;
      sub_224DABE58();
      v39 = sub_224DAC248();
      v40 = *v34;
      v41 = v38;
      v42 = v54;
      (*v34)(v41, v54);
      v43 = v53;
      sub_224DABE58();
      v44 = sub_224DAC258();
      v40(v43, v42);
      [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v39 metrics:v44];

      sub_224DAF9B8();
      v45 = *(v55 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v16 = v35;
    }

    while (v32 != v33);

    v46 = v55;
    if (!(v55 >> 62))
    {
LABEL_20:
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        sub_224A77CC8(sub_224CCBBD8, v47);

        return;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v30 + 16));
  __break(1u);
}

void sub_224CCA64C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v22 = v9;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_224DAFB18() || (sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20), swift_dynamicCast(), v18 = v23, type metadata accessor for WidgetRendererSession(), swift_dynamicCast(), !v23))
    {
LABEL_19:
      sub_224A3B7E4();
      return;
    }

LABEL_17:

    v19 = [v18 widget];
    v20 = sub_224DABE08();

    v9 = v22;
    if (v20)
    {
      sub_224A3B7E4();
      *a3 = 1;
      return;
    }
  }

  v14 = v13;
  v15 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v15 - 1) & v15;
    v16 = (v13 << 9) | (8 * __clz(__rbit64(v15)));
    v17 = *(*(v9 + 56) + v16);
    v18 = *(*(v9 + 48) + v16);

    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v7 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v15 = *(v6 + 8 * v13);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_224CCA8C0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364EC8);
    v8 = v6;
    v9 = a3;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v12 = 136446466;
      v15 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier];
      v16 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8];

      v17 = sub_224A33F74(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v18 = v9;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Runtime timer for target=%{public}@ expired.", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    [a1 invalidate];
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer;
    v20 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer];
    if (v20)
    {
      sub_224A3B79C(0, &qword_281350978, 0x277CF0BD8);
      v21 = a1;
      v22 = v20;
      v23 = sub_224DAF6A8();

      if (v23)
      {
        v24 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
        [*&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion] invalidate];
        v25 = *&v8[v24];
        *&v8[v24] = 0;

        v26 = *&v8[v19];
        *&v8[v19] = 0;

        v8 = v26;
      }
    }
  }
}

id sub_224CCAB88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224CCACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(v6, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6110, &unk_224DBE850);
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  if (swift_dynamicCast())
  {
    v3 = sub_224DABE08();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_224CCAD70(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364EC8);
  v5 = v1;
  v6 = a1;
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_224A33F74(*&v5[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v5[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v17);
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}s] Unsubscribe from %{public}@.", v9, 0x16u);
    sub_224A3311C(v10, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v13 = *&v5[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v15 = *&v5[v14];

  v16 = sub_224A71D20(v6, v15);

  if (v16)
  {
    sub_224BB8028();
  }

  swift_beginAccess();
  sub_224B0E1C4(v6);
  swift_endAccess();

  os_unfair_lock_unlock(*(v13 + 16));
}

id sub_224CCB034(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_224B44674(*&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 280, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = [a1 widget];
  v7 = [a1 metrics];
  v8 = sub_224DAC828();

  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (v8)
  {
    return [v3 reloadWidget:a1 reason:a2];
  }

  return result;
}

void sub_224CCB1A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6740, &unk_224DC0810);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_224DAA548();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v40 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281364EC8);
  v20 = a3;
  v21 = a1;
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = a5;
    v26 = v25;
    *v24 = 138543618;
    *(v24 + 4) = v20;
    *(v24 + 12) = 2114;
    *(v24 + 14) = v21;
    *v25 = v20;
    v25[1] = v21;
    v27 = v20;
    v28 = v21;
    _os_log_impl(&dword_224A2F000, v22, v23, "Received action %{public}@ for interaction %{public}@", v24, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    v29 = v26;
    a5 = v37;
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  v30 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v30 + 16));
  [v39 integerValue];
  sub_224DAA538();
  v31 = *(v15 + 48);
  if (v31(v13, 1, v14) == 1)
  {
    (*(v15 + 104))(v40, *MEMORY[0x277CFA0A8], v14);
    if (v31(v13, 1, v14) != 1)
    {
      sub_224A3311C(v13, &unk_27D6F6740, &unk_224DC0810);
    }
  }

  else
  {
    (*(v15 + 32))(v40, v13, v14);
  }

  v32 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v33 = *(v6 + v32);

  v34 = sub_224A71D20(v21, v33);

  v35 = v40;
  if (v34)
  {
    sub_224BB5DAC(v20, v40, v38, a5);
  }

  (*(v15 + 8))(v35, v14);
  os_unfair_lock_unlock(*(v30 + 16));
}

uint64_t sub_224CCB640(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_224DAD158();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364EC8);
  v15 = a3;
  v16 = sub_224DAB228();
  v17 = sub_224DAF278();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&dword_224A2F000, v16, v17, "Received environment modifiers for %{public}@", v19, 0xCu);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v20, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  v22 = sub_224DA94D8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_224DA94C8();
  sub_224A7940C(&qword_281350CF0, MEMORY[0x277CF9C60]);
  sub_224DA94B8();

  v25 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v27 = *(v4 + v26);

  v28 = sub_224A71D20(v15, v27);

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v28)
  {
    return (*(v36 + 8))(v12, v7);
  }

  v30 = v35;
  v29 = v36;
  (*(v36 + 16))(v35, v12, v7);
  v31 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v29 + 24))(v28 + v31, v30, v7);
  swift_endAccess();
  sub_224A81084();

  v32 = *(v29 + 8);
  v32(v30, v7);
  return (v32)(v12, v7);
}

void sub_224CCBC28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224CC80B4(a1);
}

void sub_224CCBC30(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224CC836C(a1);
}

void sub_224CCBC68(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = sub_224DAEDE8();
  [a1 clientConfigurationsDidChange:v4 forHost:v6];
}

uint64_t sub_224CCBCE4(void *a1)
{
  v3 = *(sub_224DAB728() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_224CC8F20(a1, v1 + v4);
}

uint64_t sub_224CCBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v91 = a4;
  v92 = a5;
  v93 = a2;
  v96 = a1;
  v87 = sub_224DA9878();
  v85 = *(v87 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DACB08();
  v84 = *(v86 - 8);
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v88 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACC88();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB98();
  v90 = *(v16 - 8);
  v17 = *(v90 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v75 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = (&v75 - v30);
  v32 = sub_224DABDB8();
  v33 = &v32[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v34 = *(v33 + 1);

  if (v34)
  {

    v35 = MEMORY[0x277CF98A8];
LABEL_10:
    v50 = 1;
    v52 = v95;
    v51 = v96;
    v53 = v94;
LABEL_11:
    (*(v53 + 56))(v51, v50, 1, v52);
    v54 = *v35;
    v55 = sub_224DABD68();
    return (*(*(v55 - 8) + 104))(v93, v54, v55);
  }

  v76 = v26;
  v77 = v31;
  v78 = v23;
  v79 = v15;
  v80 = v29;
  v36 = v92;
  if (!sub_224CCC9F4(v92))
  {
    sub_224DAE1E8();
    sub_224DAE1B8();
    v35 = MEMORY[0x277CF98B0];
    goto LABEL_10;
  }

  if (!sub_224CCCC54(v36) || sub_224DACBB8() < 1)
  {
    sub_224DAE1E8();
    sub_224DAE1B8();
    sub_224DACC68();
    v57 = v90;
    v58 = v16;
    v59 = (*(v90 + 88))(v20, v16);
    v60 = *MEMORY[0x277CF9B80];
    if (v59 == v60)
    {
      v61 = *(v57 + 8);
      v61(v20, v58);
      v62 = v78;
      sub_224DACC68();
    }

    else
    {
      v63 = swift_allocBox();
      sub_224DACC68();
      v62 = v78;
      *v78 = v63;
      (*(v57 + 104))(v62, v60, v58);
      v61 = *(v57 + 8);
      v61(v20, v58);
    }

    v64 = v79;
    v65 = v89;
    v67 = v86;
    v66 = v87;
    v68 = v83;
    sub_224DA9868();
    sub_224DA9768();
    (*(v85 + 8))(v68, v66);
    (*(v81 + 104))(v65, *MEMORY[0x277CF9B58], v82);
    (*(v84 + 104))(v88, *MEMORY[0x277CF9B48], v67);
    (*(v57 + 16))(v80, v62, v58);
    sub_224DACC48();
    sub_224DACC38();
    v61(v62, v58);
    v53 = v94;
    v69 = v96;
    v70 = v64;
    v71 = v95;
    (*(v94 + 32))(v96, v70, v95);
    v52 = v71;
    v51 = v69;
    v50 = 0;
    v35 = MEMORY[0x277CF98B0];
    goto LABEL_11;
  }

  v37 = v80;
  sub_224DACC68();
  v38 = v90;
  v39 = *(v90 + 104);
  v40 = v76;
  v41 = v16;
  v39(v76, *MEMORY[0x277CF9BF0], v16);
  v42 = sub_224DACB88();
  v43 = *(v38 + 8);
  v43(v40, v41);
  v43(v37, v41);
  if (v42 & 1) != 0 || (v44 = v80, sub_224DACC68(), v39(v40, *MEMORY[0x277CF9B60], v41), v45 = sub_224DACB88(), v43(v40, v41), v43(v44, v41), (v45))
  {
    v46 = swift_allocObject();
    *(v46 + 16) = 0xD000000000000019;
    *(v46 + 24) = 0x8000000224DC58C0;
    v47 = v77;
    *v77 = v46;
    v39(v47, *MEMORY[0x277CF9B70], v41);
    sub_224DACBB8();
    v48 = v80;
    v49 = v90;
LABEL_18:
    sub_224DACC58();
    sub_224DACC08();
    (*(v49 + 16))(v48, v47, v41);
    sub_224DACBD8();
    sub_224DACC28();
    v72 = v79;
    sub_224DACC18();
    v43(v47, v41);
    v53 = v94;
    v73 = v95;
    v74 = v96;
    (*(v94 + 32))(v96, v72, v95);
    v52 = v73;
    v51 = v74;
    v50 = 0;
    v35 = MEMORY[0x277CF98B8];
    goto LABEL_11;
  }

  sub_224DACC68();
  result = sub_224DACBB8();
  if (!__OFSUB__(result, 1))
  {
    v48 = v80;
    v49 = v90;
    v47 = v77;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_224CCC690()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileTimelineReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileTimelineReloadConfigurationPolicy()
{
  result = qword_281352438;
  if (!qword_281352438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CCC790()
{
  result = sub_224DAB258();
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

uint64_t sub_224CCC88C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_224A77FD0(a3, a4);
          return sub_224CFE41C(v13, a2, a3, a4) & 1;
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

BOOL sub_224CCC9F4(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v16 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v16 == v11)
  {

    return 0;
  }

LABEL_10:
  if (sub_224DAEE18() == v8 && v18 == v10)
  {
  }

  else
  {
    v20 = sub_224DAFD88();

    if ((v20 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v21 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v21 != v11;
}

BOOL sub_224CCCC54(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v16 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v16 != v11;
}

uint64_t sub_224CCCE00(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_224CCCEAC(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v4 = sub_224DAF3C8();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_224DAB848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D68();

  *(v1 + 16) = (v11 & 1) == 0;
  *(v1 + 400) = MEMORY[0x277D84FA0];
  *(v1 + 408) = 0;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v2[53] = v12;
  v2[54] = 0;
  sub_224C4D410(a1, (v2 + 3));
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7D8();
  v21 = MEMORY[0x277D84F90];
  sub_224CCFB88(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v19 + 104))(v18, *MEMORY[0x277D85268], v20);
  v14 = sub_224DAF418();
  sub_224C4D4C0(v17);
  v2[52] = v14;
  return v2;
}

uint64_t sub_224CCD1B8()
{
  sub_224C4D4C0(v0 + 24);
  v1 = *(v0 + 400);

  v2 = *(v0 + 424);

  v3 = *(v0 + 432);

  return swift_deallocClassInstance();
}

uint64_t sub_224CCD218(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a4;
  v45 = a3;
  v44 = a2;
  v41 = a1;
  v6 = sub_224DAB7B8();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileReaperScenario(0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = sub_224DAB848();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  v47 = v5;
  v43 = *(v5 + 416);
  v27 = v41;
  sub_224CCF9E0(v41, v18, type metadata accessor for FileReaperScenario);
  if ((*(v10 + 48))(v18, 4, v9))
  {
    sub_224DAB7E8();
    sub_224CCFA48(v18, type metadata accessor for FileReaperScenario);
    (*(v20 + 32))(v26, v24, v19);
  }

  else
  {
    sub_224CCF838(v18, v13, type metadata accessor for FileReaperProtectionConfiguration);
    v28 = *(v20 + 32);
    v28(v24, &v13[*(v9 + 44)], v19);
    v28(v26, v24, v19);
  }

  v29 = v46;
  sub_224DAB7A8();
  v30 = v40;
  sub_224CCF9E0(v27, v40, type metadata accessor for FileReaperScenario);
  v31 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v32 = v31 + v15;
  v33 = (v31 + v15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v47;
  sub_224CCF838(v30, v34 + v31, type metadata accessor for FileReaperScenario);
  *(v34 + v32) = v44 & 1;
  v35 = v34 + v33;
  v36 = v48;
  *(v35 + 8) = v45;
  *(v35 + 16) = v36;
  aBlock[4] = sub_224CCF7A4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_46;
  v37 = _Block_copy(aBlock);

  MEMORY[0x22AA5D760](0, v26, v29, v37);
  _Block_release(v37);
  (*(v49 + 8))(v29, v50);
  (*(v20 + 8))(v26, v19);
}

uint64_t sub_224CCD6E0(uint64_t a1, uint64_t a2, int a3, void (*a4)(void))
{
  sub_224A9F678(a2, a3);
  a4();
}

uint64_t sub_224CCD760()
{
  v1 = v0;
  v28 = sub_224DAB7B8();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAB848();
  v27 = *(v29 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v24 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  aBlock[0] = sub_224AC32A4();
  v32 = *(v1 + 416);
  v15 = v32;
  v16 = sub_224DAF358();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600);
  v18 = v24;
  sub_224DAB488();

  (*(v10 + 8))(v13, v18);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  aBlock[4] = sub_224CCFB84;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_50_0;
  v19 = _Block_copy(aBlock);

  v20 = v25;
  sub_224DAB7E8();
  v32 = MEMORY[0x277D84F90];
  sub_224CCFB88(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v21 = v26;
  v22 = v28;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v20, v21, v19);
  _Block_release(v19);
  (*(v30 + 8))(v21, v22);
  (*(v27 + 8))(v20, v29);
}

uint64_t sub_224CCDCE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_224DAC198();
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v7 + 32))(v12 + v11, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = sub_224DAC1A8();
  v14 = *(v3 + 424);
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  sub_224CCE340(v3, a1);
  os_unfair_lock_unlock(*(v14 + 16));

  v17 = MEMORY[0x277CF9950];
  a2[3] = v9;
  a2[4] = v17;
  *a2 = v13;
  return result;
}

uint64_t sub_224CCDEC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 424);
    v6 = *(v5 + 16);

    os_unfair_lock_lock(v6);
    sub_224CCDF74(v4, a2);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

void sub_224CCDF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-1] - v10;
  swift_beginAccess();
  v12 = *(a1 + 432);
  if (!v12 || !*(v12 + 16))
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 432);

  v14 = sub_224A61E5C(a2);
  if ((v15 & 1) == 0)
  {

    goto LABEL_10;
  }

  v16 = *(*(v12 + 56) + 8 * v14);

  v17 = v16 > 1;
  v18 = v16 - 1;
  if (!v17)
  {
LABEL_10:
    v20 = sub_224CCCE5C();
    if (*v24)
    {
      (*(v5 + 16))(v11, a2, v4);
      sub_224B0976C(0, 1, v11);
    }

    goto LABEL_12;
  }

  v20 = sub_224CCCE5C();
  if (*v19)
  {
    v21 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v21;
    *v21 = 0x8000000000000000;
    sub_224B22EE4(v18, a2, isUniquelyReferenced_nonNull_native);
    v23 = *v21;
    *v21 = v36;
  }

LABEL_12:
  (v20)(v35, 0);
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364DD8);
  (*(v5 + 16))(v9, a2, v4);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136446210;
    sub_224CCFB88(&qword_281350E40, MEMORY[0x277CF9978]);
    v30 = sub_224DAFD28();
    v32 = v31;
    (*(v5 + 8))(v9, v4);
    v33 = sub_224A33F74(v30, v32, v35);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_224A2F000, v26, v27, "Removed lifetime assertion for [timeline]: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

void sub_224CCE340(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 432);
  if (v9)
  {
    if (!*(v9 + 16))
    {
LABEL_10:
      v14 = sub_224CCCE5C();
      if (*v20)
      {
        v21 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *v21;
        *v21 = 0x8000000000000000;
        sub_224B22EE4(1, a2, isUniquelyReferenced_nonNull_native);
        v23 = *v21;
        *v21 = v35;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
    *(a1 + 432) = MEMORY[0x277D84F98];
    if (!*(v9 + 16))
    {
      goto LABEL_10;
    }
  }

  v10 = sub_224A61E5C(a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v14 = sub_224CCCE5C();
  if (*v13)
  {
    v15 = __CFADD__(v12, 1);
    v16 = v12 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    v17 = v13;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v17;
    *v17 = 0x8000000000000000;
    sub_224B22EE4(v16, a2, v18);
    v19 = *v17;
    *v17 = v35;
  }

LABEL_12:
  (v14)(v34, 0);
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364DD8);
  (*(v5 + 16))(v8, a2, v4);
  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v27 = 136446210;
    sub_224CCFB88(&qword_281350E40, MEMORY[0x277CF9978]);
    v29 = sub_224DAFD28();
    v31 = v30;
    (*(v5 + 8))(v8, v4);
    v32 = sub_224A33F74(v29, v31, v34);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_224A2F000, v25, v26, "Adding lifetime assertion for [timeline]: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_224CCE724()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224CCE77C();
  }

  return result;
}

void sub_224CCE77C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 416);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v10 = IOPSCopyExternalPowerAdapterDetails();
  if (!v10)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364DD8);
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_224A2F000, v22, v23, "Not connected to power; will not schedule reap session", v24, 2u);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    [*(v1 + 408) invalidate];
    v19 = *(v1 + 408);
    *(v1 + 408) = 0;
    goto LABEL_13;
  }

  if (qword_281351470 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364DD8);
  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_224A2F000, v12, v13, "Connected to power; will start reap session soon", v14, 2u);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  [*(v1 + 408) invalidate];
  v15 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v16 = sub_224DAEDE8();
  v17 = [v15 initWithIdentifier_];

  v18 = *(v1 + 408);
  *(v1 + 408) = v17;
  v19 = v17;

  if (v19)
  {
    aBlock[4] = sub_224A9F57C;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = &block_descriptor_53_0;
    v20 = _Block_copy(aBlock);

    [v19 scheduleRepeatingWithFireInterval:v8 repeatInterval:v20 leewayInterval:120.0 queue:43200.0 handler:300.0];
    _Block_release(v20);
LABEL_13:
  }
}

uint64_t sub_224CCEB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = type metadata accessor for FileReaperScenario(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  sub_224CCF9E0(a1, &v50 - v17, type metadata accessor for FileReaperScenario);
  v19 = (*(v5 + 48))(v18, 4, v4);
  if (v19 <= 1)
  {
    if (v19)
    {
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v45 = sub_224DAB258();
      __swift_project_value_buffer(v45, qword_281364D00);
      v46 = sub_224DAB228();
      v47 = sub_224DAF2A8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_224A2F000, v46, v47, "Preparing migration reaper", v48, 2u);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      v49 = a2 + *(v4 + 44);
      result = sub_224DAB7E8();
      *a2 = 33554946;
      *(a2 + 4) = 2;
      *(a2 + 6) = 2;
    }

    else
    {
      sub_224CCF838(v18, v11, type metadata accessor for FileReaperProtectionConfiguration);
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v29 = sub_224DAB258();
      __swift_project_value_buffer(v29, qword_281364D00);
      sub_224CCF9E0(v11, v9, type metadata accessor for FileReaperProtectionConfiguration);
      v30 = sub_224DAB228();
      v31 = sub_224DAF2A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v51 = v33;
        *v32 = 136446210;
        v34 = sub_224AA3FE8();
        v36 = v35;
        sub_224CCFA48(v9, type metadata accessor for FileReaperProtectionConfiguration);
        v37 = sub_224A33F74(v34, v36, &v51);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_224A2F000, v30, v31, "Preparing custom reaper with configuration: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x22AA5EED0](v33, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);
      }

      else
      {

        sub_224CCFA48(v9, type metadata accessor for FileReaperProtectionConfiguration);
      }

      return sub_224CCF838(v11, a2, type metadata accessor for FileReaperProtectionConfiguration);
    }
  }

  else if ((v19 - 2) >= 2)
  {
    if (qword_2813513F8 != -1)
    {
      swift_once();
    }

    v38 = sub_224DAB258();
    __swift_project_value_buffer(v38, qword_281364D00);
    v39 = sub_224DAB228();
    v40 = sub_224DAF2A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_224A2F000, v39, v40, "Preparing reset reaper", v41, 2u);
      MEMORY[0x22AA5EED0](v41, -1, -1);
    }

    v42 = a2 + *(v4 + 44);
    result = sub_224DAB7E8();
    *(a2 + 3) = 0;
    *a2 = 0;
  }

  else
  {
    if (qword_2813513F8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364D00);
    sub_224CCF9E0(a1, v16, type metadata accessor for FileReaperScenario);
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51 = v24;
      *v23 = 136446210;
      v25 = sub_224A9FF1C();
      v27 = v26;
      sub_224CCFA48(v16, type metadata accessor for FileReaperScenario);
      v28 = sub_224A33F74(v25, v27, &v51);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_224A2F000, v21, v22, "Preparing reaper for scenario: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    else
    {

      sub_224CCFA48(v16, type metadata accessor for FileReaperScenario);
    }

    v44 = a2 + *(v4 + 44);
    result = sub_224DAB7E8();
    *a2 = 16843265;
    *(a2 + 4) = 258;
    *(a2 + 6) = 2;
  }

  return result;
}

uint64_t sub_224CCF1F8()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6200, qword_224DBEC08);
  v1 = *(*(v57 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v57);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v55 = &v46 - v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v46 - v6;
  v62 = sub_224DAC268();
  v7 = *(v62 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v62);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 424);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v0 + 432);
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_23:
    os_unfair_lock_unlock(*(v11 + 16));

    return v15;
  }

  v47 = v11;
  v63 = MEMORY[0x277D84F90];

  sub_224ADA224(0, v14, 0);
  v61 = v63;
  v16 = v13 + 64;
  v17 = -1 << *(v13 + 32);
  result = sub_224DAF798();
  v19 = result;
  v20 = 0;
  v52 = v13;
  v53 = v7 + 16;
  v48 = v13 + 72;
  v49 = v7;
  v50 = v14;
  v51 = v13 + 64;
  while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v13 + 32))
  {
    v24 = v19 >> 6;
    if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_25;
    }

    v25 = *(v13 + 36);
    v58 = v20;
    v59 = v25;
    v26 = *(v13 + 48);
    v60 = *(v7 + 72);
    v27 = v54;
    (*(v7 + 16))(v54, v26 + v60 * v19, v62);
    v28 = *(*(v13 + 56) + 8 * v19);
    v29 = *(v7 + 32);
    v30 = v7;
    v31 = v55;
    v32 = v27;
    v33 = v62;
    v29(v55, v32, v62);
    *(v31 + *(v57 + 48)) = v28;
    v34 = v56;
    sub_224CCFAA8(v31, v56);
    v29(v10, v34, v33);
    v35 = v61;
    v63 = v61;
    v37 = *(v61 + 16);
    v36 = *(v61 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_224ADA224(v36 > 1, v37 + 1, 1);
      v33 = v62;
      v35 = v63;
    }

    *(v35 + 16) = v37 + 1;
    v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v61 = v35;
    result = (v29)(v35 + v38 + v37 * v60, v10, v33);
    v13 = v52;
    v21 = 1 << *(v52 + 32);
    if (v19 >= v21)
    {
      goto LABEL_26;
    }

    v16 = v51;
    v39 = *(v51 + 8 * v24);
    if ((v39 & (1 << v19)) == 0)
    {
      goto LABEL_27;
    }

    if (v59 != *(v52 + 36))
    {
      goto LABEL_28;
    }

    v40 = v39 & (-2 << (v19 & 0x3F));
    if (v40)
    {
      v21 = __clz(__rbit64(v40)) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v50;
      v23 = v58;
    }

    else
    {
      v41 = v24 << 6;
      v42 = v24 + 1;
      v43 = (v48 + 8 * v24);
      v22 = v50;
      while (v42 < (v21 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_224A3E204(v19, v59, 0);
          v21 = __clz(__rbit64(v44)) + v41;
          goto LABEL_20;
        }
      }

      result = sub_224A3E204(v19, v59, 0);
LABEL_20:
      v23 = v58;
    }

    v20 = v23 + 1;
    v19 = v21;
    v7 = v49;
    if (v20 == v22)
    {

      v11 = v47;
      v15 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224CCF6AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224CCF6F4(uint64_t result, int a2, int a3)
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
      *(result + 376) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224CCF7A4()
{
  v1 = *(type metadata accessor for FileReaperScenario(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  return sub_224CCD6E0(v4, v0 + v2, v5, v7);
}

uint64_t sub_224CCF838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CCF970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5590, &qword_224DBEC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CCF9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CCFA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224CCFAA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6200, qword_224DBEC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CCFB18()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224CCDEC4(v2, v3);
}

uint64_t sub_224CCFB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224CCFC20()
{
  v1 = 0x6573556E69;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_224CCFC7C()
{
  result = qword_27D6F6208;
  if (!qword_27D6F6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6208);
  }

  return result;
}

void sub_224CCFDFC(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  swift_beginAccess();
  v7 = *(v1 + 32);
  if (*(v7 + 16))
  {
    v8 = *(v2 + 32);

    v9 = sub_224A3E7EC(v6);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      MEMORY[0x28223BE20](v12);
      v16[2] = a1;
      v13 = sub_224CD6238(sub_224CD6738, v16, v11);
      swift_beginAccess();
      v14 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_224B20018(v13, v6, isUniquelyReferenced_nonNull_native);

      *(v2 + 32) = v17;
      swift_endAccess();
      return;
    }
  }
}

uint64_t sub_224CCFF68(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_224DAFD88();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_224CD006C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v288 = sub_224DA9908();
  v287 = *(v288 - 8);
  v6 = *(v287 + 64);
  MEMORY[0x28223BE20](v288);
  v286 = &v279 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_224DA9878();
  v348 = *(v295 - 8);
  v8 = *(v348 + 8);
  v9 = MEMORY[0x28223BE20](v295);
  v294 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v293 = &v279 - v11;
  v12 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v312 = *(v12 - 8);
  v13 = *(v312 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v279 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v350 = &v279 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v299 = &v279 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v334 = &v279 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v353 = &v279 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v304 = &v279 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v352 = &v279 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v298 = &v279 - v30;
  MEMORY[0x28223BE20](v29);
  v351 = &v279 - v31;
  v32 = sub_224DAE8B8();
  v291 = *(v32 - 8);
  v33 = *(v291 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v307 = &v279 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v338 = &v279 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v303 = &v279 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v297 = &v279 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v337 = &v279 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v302 = &v279 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v311 = &v279 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v336 = &v279 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v301 = &v279 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v310 = &v279 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v322 = &v279 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v335 = &v279 - v57;
  MEMORY[0x28223BE20](v56);
  v300 = &v279 - v58;
  v59 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v306 = &v279 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v305 = &v279 - v63;
  v309 = type metadata accessor for ExtensionTask.Identifier(0);
  v64 = *(*(v309 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v309);
  v332 = &v279 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v321 = &v279 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v331 = &v279 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v320 = &v279 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v345 = &v279 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v314 = &v279 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v344 = &v279 - v78;
  MEMORY[0x28223BE20](v77);
  v326 = &v279 - v79;
  v80 = type metadata accessor for _TaskInfo(0);
  v356 = *(v80 - 8);
  v81 = *(v356 + 64);
  v82 = MEMORY[0x28223BE20](v80 - 8);
  v339 = (&v279 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = MEMORY[0x28223BE20](v82);
  v346 = (&v279 - v85);
  MEMORY[0x28223BE20](v84);
  v329 = (&v279 - v86);
  v87 = sub_224DA9F08();
  v88 = *(v87 - 8);
  v89 = *(v88 + 64);
  v90 = MEMORY[0x28223BE20](v87);
  v92 = &v279 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x28223BE20](v90);
  v285 = &v279 - v94;
  MEMORY[0x28223BE20](v93);
  v96 = &v279 - v95;
  v97 = a1;
  sub_224CD3308(a1, a2);
  v99 = v98;
  v100 = *(v98 + 16);
  if (!v100)
  {

    swift_beginAccess();
    if (!*(*(v3 + 24) + 16))
    {
      return 0;
    }

    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v251 = sub_224DAB258();
    __swift_project_value_buffer(v251, qword_281365108);
    v252 = v97;

    v253 = sub_224DAB228();
    v254 = sub_224DAF2A8();

    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v359 = v256;
      *v255 = 136446210;
      v257 = sub_224DAF538();
      v258 = MEMORY[0x22AA5D380](v252, v257);
      v260 = sub_224A33F74(v258, v259, &v359);

      *(v255 + 4) = v260;
      _os_log_impl(&dword_224A2F000, v253, v254, "Would pop task, but all extensions are busy, namely %{public}s", v255, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v256);
      MEMORY[0x22AA5EED0](v256, -1, -1);
      MEMORY[0x22AA5EED0](v255, -1, -1);
    }

    return 1;
  }

  v284 = v92;
  v283 = v100;
  v280 = v16;
  v101 = sub_224DA9ED8();
  v102 = *(v101 + 16);
  if (v102)
  {
    v355 = v88 + 16;
    while (1)
    {
      if (v102 > *(v101 + 16))
      {
        goto LABEL_191;
      }

      --v102;
      v103 = v101 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v102;
      v354 = *(v88 + 16);
      v354(v96, v103, v87);
      if (*(v99 + 16))
      {
        v104 = sub_224B0B75C(v96);
        if (v105)
        {
          v106 = *(*(v99 + 56) + 8 * v104);
          if (*(v106 + 16))
          {
            break;
          }
        }
      }

      (*(v88 + 8))(v96, v87);
      if (!v102)
      {
        goto LABEL_190;
      }
    }

    v325 = *(v106 + 16);
    v296 = v106;

    if (*(v296 + 16))
    {
      v282 = v3;
      v107 = v356;
      v324 = v296 + ((*(v356 + 80) + 32) & ~*(v356 + 80));
      v108 = v329;
      sub_224A41594(v324, v329, type metadata accessor for _TaskInfo);
      v109 = 0;
      v323 = *(v107 + 72);
      v319 = *MEMORY[0x277CE3D10];
      v330 = (v291 + 104);
      v333 = (v291 + 48);
      v356 = v291 + 32;
      v347 = (v291 + 40);
      v349 = (v291 + 8);
      v318 = *MEMORY[0x277CE3D30];
      v290 = (v348 + 16);
      v289 = (v348 + 8);
      v308 = v87;
      v292 = (v88 + 8);
      v110 = v108;
      v281 = v88;
      v111 = v311;
      v112 = v310;
      v113 = v314;
      v114 = v339;
      v327 = v96;
      while (1)
      {
        v342 = v109;
        v115 = v346;
        sub_224A41594(v324 + v323 * v109, v346, type metadata accessor for _TaskInfo);
        sub_224A41594(v110, v114, type metadata accessor for _TaskInfo);
        v341 = *v115;
        v116 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
        v117 = v326;
        sub_224A41594(v341 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v326, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v117, v344, type metadata accessor for ExtensionTask.Identifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
              v125 = 60;
            }

            else
            {
              sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
              v125 = 100;
            }
          }

          else
          {
            if (EnumCaseMultiPayload == 2)
            {
              goto LABEL_26;
            }

            if (EnumCaseMultiPayload == 3)
            {
              sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
              v125 = 80;
            }

            else
            {
              sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
              v125 = 30;
            }
          }
        }

        else if (EnumCaseMultiPayload > 7)
        {
          if (EnumCaseMultiPayload == 8)
          {
            sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
            v125 = 90;
          }

          else if (EnumCaseMultiPayload == 9)
          {
            sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
            v125 = 10;
          }

          else
          {
            sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
            v125 = 20;
          }
        }

        else
        {
          if (EnumCaseMultiPayload != 5)
          {
            if (EnumCaseMultiPayload != 6)
            {
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
              v120 = v344;
              v121 = *(v344 + *(v119 + 48));

              v122 = *(v120 + *(v119 + 64));

              v123 = sub_224DABE18();
              v124 = v120;
              v114 = v339;
              (*(*(v123 - 8) + 8))(v124, v123);
              v125 = 60;
              goto LABEL_34;
            }

LABEL_26:
            sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
            v125 = 70;
            goto LABEL_34;
          }

          sub_224A424D8(v344, type metadata accessor for ExtensionTask.Identifier);
          v125 = 40;
        }

LABEL_34:
        v126 = *v114;
        v127 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
        v343 = v126;
        sub_224A41594(v126 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v113, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v113, v345, type metadata accessor for ExtensionTask.Identifier);
        v128 = swift_getEnumCaseMultiPayload();
        if (v128 <= 4)
        {
          if (v128 <= 1)
          {
            if (!v128)
            {
              sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
              goto LABEL_62;
            }

            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
LABEL_59:
            if (v125 > 0x3C)
            {
              goto LABEL_156;
            }

            goto LABEL_62;
          }

          if (v128 == 2)
          {
LABEL_48:
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0x46)
            {
              goto LABEL_156;
            }

            goto LABEL_62;
          }

          if (v128 == 3)
          {
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0x50)
            {
              goto LABEL_156;
            }
          }

          else
          {
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0x1E)
            {
              goto LABEL_156;
            }
          }
        }

        else
        {
          if (v128 <= 7)
          {
            if (v128 == 5)
            {
              sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
              if (v125 > 0x28)
              {
                goto LABEL_156;
              }

              goto LABEL_62;
            }

            if (v128 == 6)
            {
              goto LABEL_48;
            }

            v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
            v130 = v345;
            v131 = *(v345 + *(v129 + 48));

            v132 = *(v130 + *(v129 + 64));

            v133 = sub_224DABE18();
            v134 = v130;
            v113 = v314;
            (*(*(v133 - 8) + 8))(v134, v133);
            goto LABEL_59;
          }

          if (v128 == 8)
          {
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0x5A)
            {
              goto LABEL_156;
            }
          }

          else if (v128 == 9)
          {
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0xA)
            {
              goto LABEL_156;
            }
          }

          else
          {
            sub_224A424D8(v345, type metadata accessor for ExtensionTask.Identifier);
            if (v125 > 0x14)
            {
              goto LABEL_156;
            }
          }
        }

LABEL_62:
        v135 = v341;
        v136 = v320;
        sub_224A41594(v341 + v116, v320, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v136, v331, type metadata accessor for ExtensionTask.Identifier);
        v137 = swift_getEnumCaseMultiPayload();
        if (v137 <= 4)
        {
          if (v137 <= 1)
          {
            if (v137)
            {
              sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
              v143 = 60;
            }

            else
            {
              sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
              v143 = 100;
            }
          }

          else
          {
            if (v137 == 2)
            {
              goto LABEL_74;
            }

            if (v137 == 3)
            {
              sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
              v143 = 80;
            }

            else
            {
              sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
              v143 = 30;
            }
          }
        }

        else if (v137 > 7)
        {
          if (v137 == 8)
          {
            sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
            v143 = 90;
          }

          else if (v137 == 9)
          {
            sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
            v143 = 10;
          }

          else
          {
            sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
            v143 = 20;
          }
        }

        else
        {
          if (v137 != 5)
          {
            if (v137 != 6)
            {
              v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
              v139 = v331;
              v140 = *(v331 + *(v138 + 48));

              v141 = *(v139 + *(v138 + 64));

              v142 = sub_224DABE18();
              (*(*(v142 - 8) + 8))(v139, v142);
              v143 = 60;
              goto LABEL_82;
            }

LABEL_74:
            sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
            v143 = 70;
            goto LABEL_82;
          }

          sub_224A424D8(v331, type metadata accessor for ExtensionTask.Identifier);
          v143 = 40;
        }

LABEL_82:
        v144 = v321;
        sub_224A41594(v343 + v127, v321, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v144, v332, type metadata accessor for ExtensionTask.Identifier);
        v145 = swift_getEnumCaseMultiPayload();
        if (v145 > 4)
        {
          v114 = v339;
          if (v145 > 7)
          {
            if (v145 == 8)
            {
              sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
              if (v143 < 0x5A)
              {
                goto LABEL_11;
              }
            }

            else if (v145 == 9)
            {
              sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
            }

            else
            {
              sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
              if (v143 < 0x14)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_110;
          }

          if (v145 == 5)
          {
            sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
            if (v143 < 0x28)
            {
              goto LABEL_11;
            }

            goto LABEL_110;
          }

          if (v145 == 6)
          {
            goto LABEL_95;
          }

          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
          v147 = v332;
          v148 = *(v332 + *(v146 + 48));

          v149 = *(v147 + *(v146 + 64));

          v150 = sub_224DABE18();
          v151 = v147;
          v114 = v339;
          (*(*(v150 - 8) + 8))(v151, v150);
          goto LABEL_107;
        }

        v114 = v339;
        if (v145 <= 1)
        {
          if (!v145)
          {
            sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
            if (v143 < 0x64)
            {
              goto LABEL_11;
            }

            goto LABEL_110;
          }

          sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
LABEL_107:
          if (v143 < 0x3C)
          {
            goto LABEL_11;
          }

          goto LABEL_110;
        }

        if (v145 == 2)
        {
LABEL_95:
          sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
          if (v143 < 0x46)
          {
            goto LABEL_11;
          }

          goto LABEL_110;
        }

        if (v145 == 3)
        {
          sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
          if (v143 < 0x50)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_224A424D8(v332, type metadata accessor for ExtensionTask.Identifier);
          if (v143 < 0x1E)
          {
            goto LABEL_11;
          }
        }

LABEL_110:
        v152 = v305;
        sub_224A41594(v135 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v305, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
        v154 = *(v153 - 8);
        v155 = *(v154 + 48);
        v156 = v154 + 48;
        v157 = v155(v152, 1, v153);
        sub_224A424D8(v152, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v158 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        v317 = v153;
        v316 = v155;
        v315 = v156;
        if (v157 == 1)
        {
          swift_beginAccess();
          v159 = *(v135 + v158);
          v328 = *v330;
          v328(v335, v319, v32);
          v160 = *(v159 + 16);
          v340 = v159;
          if (v160)
          {
            v161 = v312;
            v162 = v159 + ((*(v312 + 80) + 32) & ~*(v312 + 80));

            v163 = *(v161 + 72);
            v164 = v298;
            v165 = v351;
            v166 = v334;
            v167 = v112;
            v168 = v333;
            do
            {
              sub_224A41594(v162, v165, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v165, v164, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v168)(v164, 5, v32))
              {
                sub_224A424D8(v165, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v164, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                (*v356)(v167, v164, v32);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
                v169 = v167;
                v170 = v335;
                v171 = sub_224DAEDB8();
                sub_224A424D8(v165, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v171)
                {
                  (*v349)(v169, v32);
                }

                else
                {
                  (*v347)(v170, v169, v32);
                }

                v167 = v169;
                v168 = v333;
              }

              v162 += v163;
              --v160;
              v165 = v351;
            }

            while (v160);
          }

          else
          {

            v166 = v334;
            v168 = v333;
          }

          v183 = v300;
          v348 = *v356;
          v348(v300, v335, v32);

          v184 = v322;
          v328(v322, v318, v32);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
          v185 = sub_224DAEDB8();
          v186 = *v349;
          (*v349)(v184, v32);
          v340 = v186;
          v186(v183, v32);
          v187 = 2;
          if (v185)
          {
            v187 = 3;
          }
        }

        else
        {
          swift_beginAccess();
          v172 = *(v135 + v158);
          v328 = *v330;
          v328(v336, v319, v32);
          v173 = *(v172 + 16);
          v174 = v304;
          v340 = v172;
          if (v173)
          {
            v175 = v312;
            v176 = v172 + ((*(v312 + 80) + 32) & ~*(v312 + 80));

            v177 = *(v175 + 72);
            v178 = v352;
            v179 = v111;
            v166 = v334;
            v168 = v333;
            do
            {
              sub_224A41594(v176, v178, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v178, v174, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v168)(v174, 5, v32))
              {
                sub_224A424D8(v178, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v174, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                (*v356)(v179, v174, v32);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
                v180 = v179;
                v181 = v336;
                v182 = sub_224DAEDB8();
                sub_224A424D8(v178, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v182)
                {
                  (*v349)(v180, v32);
                }

                else
                {
                  (*v347)(v181, v180, v32);
                }

                v179 = v180;
                v166 = v334;
              }

              v176 += v177;
              --v173;
              v178 = v352;
            }

            while (v173);
          }

          else
          {

            v166 = v334;
            v168 = v333;
          }

          v188 = v301;
          v348 = *v356;
          v348(v301, v336, v32);

          v189 = v322;
          v328(v322, v318, v32);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
          v190 = sub_224DAEDB8();
          v191 = *v349;
          (*v349)(v189, v32);
          v340 = v191;
          v191(v188, v32);
          v187 = v190 & 1;
        }

        v313 = v187;
        v192 = v343;
        v193 = v306;
        sub_224A41594(v343 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v306, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v194 = v316(v193, 1, v317);
        sub_224A424D8(v193, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v195 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        v196 = v194 == 1;
        v197 = v307;
        v198 = v338;
        v199 = v337;
        if (v196)
        {
          swift_beginAccess();
          v200 = *(v192 + v195);
          v328(v199, v319, v32);
          v201 = *(v200 + 16);
          v317 = v200;
          if (v201)
          {
            v202 = v312;
            v203 = v200 + ((*(v312 + 80) + 32) & ~*(v312 + 80));

            v204 = *(v202 + 72);
            v205 = v353;
            v206 = v297;
            do
            {
              sub_224A41594(v203, v205, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v205, v166, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v168)(v166, 5, v32))
              {
                sub_224A424D8(v205, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v166, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                v348(v206, v166, v32);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
                v207 = v337;
                v208 = sub_224DAEDB8();
                sub_224A424D8(v205, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v208)
                {
                  v340(v206, v32);
                }

                else
                {
                  (*v347)(v207, v206, v32);
                }
              }

              v203 += v204;
              --v201;
              v205 = v353;
            }

            while (v201);
          }

          else
          {
          }

          v218 = v302;
          v348(v302, v337, v32);

          v219 = v322;
          v328(v322, v318, v32);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
          v220 = sub_224DAEDB8();
          v221 = v340;
          v340(v219, v32);
          v221(v218, v32);
          v87 = v308;
          v111 = v311;
          v112 = v310;
          v113 = v314;
          if ((v220 & 1) == 0 && v313 == 3)
          {
LABEL_156:
            v114 = v339;
            sub_224A424D8(v339, type metadata accessor for _TaskInfo);
LABEL_157:
            v110 = v329;
            sub_224CD66D4(v346, v329);
            v96 = v327;
            goto LABEL_13;
          }
        }

        else
        {
          swift_beginAccess();
          v209 = *(v192 + v195);
          v328(v198, v319, v32);
          v210 = *(v209 + 16);
          v317 = v209;
          if (v210)
          {
            v211 = v312;
            v212 = v209 + ((*(v312 + 80) + 32) & ~*(v312 + 80));

            v213 = *(v211 + 72);
            v214 = v299;
            do
            {
              sub_224A41594(v212, v214, type metadata accessor for ExtensionTask.SchedulingOption);
              v215 = v350;
              sub_224A41594(v214, v350, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v168)(v215, 5, v32))
              {
                sub_224A424D8(v214, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v215, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                v348(v197, v215, v32);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
                v216 = v338;
                v217 = sub_224DAEDB8();
                sub_224A424D8(v214, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v217)
                {
                  v340(v197, v32);
                }

                else
                {
                  (*v347)(v216, v197, v32);
                }
              }

              v212 += v213;
              --v210;
            }

            while (v210);
          }

          else
          {
          }

          v222 = v303;
          v348(v303, v338, v32);

          v223 = v322;
          v328(v322, v318, v32);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
          v224 = sub_224DAEDB8();
          v225 = v340;
          v340(v223, v32);
          v225(v222, v32);
          if (v224)
          {
            v87 = v308;
            v111 = v311;
            v112 = v310;
            v113 = v314;
            if (v313 > 1)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v87 = v308;
            v111 = v311;
            v112 = v310;
            v113 = v314;
            if (v313)
            {
              goto LABEL_156;
            }
          }
        }

        v226 = v341;
        v227 = sub_224CD2FA0();
        v228 = sub_224CD2FA0();
        v114 = v339;
        if (v227 < v228)
        {
LABEL_11:
          sub_224A424D8(v114, type metadata accessor for _TaskInfo);
          goto LABEL_12;
        }

        v229 = *v290;
        v230 = v293;
        v231 = v295;
        (*v290)(v293, v226 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate, v295);
        v232 = v294;
        v229(v294, v343 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate, v231);
        LODWORD(v348) = sub_224DA9798();
        v233 = *v289;
        (*v289)(v232, v231);
        v234 = v230;
        v113 = v314;
        v235 = v231;
        v114 = v339;
        v233(v234, v235);
        sub_224A424D8(v114, type metadata accessor for _TaskInfo);
        if (v348)
        {
          goto LABEL_157;
        }

LABEL_12:
        sub_224A424D8(v346, type metadata accessor for _TaskInfo);
        v96 = v327;
        v110 = v329;
LABEL_13:
        v109 = v342 + 1;
        if (v342 + 1 == v325)
        {
          v88 = v110;

          if (qword_2813516B8 == -1)
          {
            goto LABEL_167;
          }

          goto LABEL_193;
        }
      }
    }
  }

  else
  {
LABEL_190:

    __break(1u);
LABEL_191:
    __break(1u);
  }

  __break(1u);
LABEL_193:
  swift_once();
LABEL_167:
  v236 = sub_224DAB258();
  __swift_project_value_buffer(v236, qword_281365108);
  v237 = v285;
  v354(v285, v96, v87);
  v238 = sub_224DAB228();
  v239 = sub_224DAF2A8();
  if (os_log_type_enabled(v238, v239))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v358[0] = v242;
    *v240 = 138543618;
    swift_beginAccess();
    v243 = *v88;
    *(v240 + 4) = *v88;
    *v241 = v243;
    *(v240 + 12) = 2082;
    v244 = v243;
    v245 = sub_224DA9EC8();
    v247 = v246;
    v356 = *v292;
    (v356)(v237, v87);
    v248 = sub_224A33F74(v245, v247, v358);
    v249 = v329;

    *(v240 + 14) = v248;
    _os_log_impl(&dword_224A2F000, v238, v239, "Popped next task: %{public}@ from %{public}s", v240, 0x16u);
    sub_224A3311C(v241, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v241, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v242);
    MEMORY[0x22AA5EED0](v242, -1, -1);
    MEMORY[0x22AA5EED0](v240, -1, -1);

    v250 = v284;
  }

  else
  {

    v356 = *v292;
    (v356)(v237, v87);
    v250 = v284;
    v249 = v88;
  }

  swift_beginAccess();
  v262 = v287;
  v263 = v286;
  v264 = v288;
  (*(v287 + 16))(v286, *v249 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v288);
  v261 = sub_224A4B0F4(v263);
  (*(v262 + 8))(v263, v264);
  if (v261)
  {
    v358[3] = &type metadata for FeatureFlags.Widgets;
    v358[4] = sub_224A80FFC();
    LOBYTE(v358[0]) = 18;
    v265 = sub_224DA9C98();
    __swift_destroy_boxed_opaque_existential_1(v358);
    if (v265)
    {
      v266 = *(v281 + 104);
      v267 = v308;
      v266(v250, *MEMORY[0x277CF9F38], v308);
      sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40]);
      v268 = v327;
      sub_224DAEFA8();
      sub_224DAEFA8();
      (v356)(v250, v267);
      if (v358[0] == v357 || (v266(v250, *MEMORY[0x277CF9F30], v267), sub_224DAEFA8(), sub_224DAEFA8(), v269 = v356, (v356)(v250, v267), v358[0] == v357))
      {
        v270 = v291;
        v271 = v280;
        (*(v291 + 104))(v280, *MEMORY[0x277CE3D18], v32);
        (*(v270 + 56))(v271, 0, 5, v32);
        v272 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        swift_beginAccess();
        v273 = *&v261[v272];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v261[v272] = v273;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v273 = sub_224AD946C(0, v273[2] + 1, 1, v273);
          *&v261[v272] = v273;
        }

        v275 = v327;
        v277 = v273[2];
        v276 = v273[3];
        if (v277 >= v276 >> 1)
        {
          v273 = sub_224AD946C(v276 > 1, v277 + 1, 1, v273);
        }

        v273[2] = v277 + 1;
        sub_224CD666C(v271, v273 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v277, type metadata accessor for ExtensionTask.SchedulingOption);
        *&v261[v272] = v273;
        swift_endAccess();
        (v356)(v275, v308);
      }

      else
      {
        v269(v268, v267);
      }
    }

    else
    {
      (v356)(v327, v308);
    }

    sub_224A424D8(v329, type metadata accessor for _TaskInfo);
    return v261;
  }

  result = (v356)(v327, v308);
  __break(1u);
  return result;
}

uint64_t sub_224CD2FA0()
{
  v1 = sub_224DAE8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A41594(v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v12, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_224A424D8(v12, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v15 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  v16 = (v2 + 104);
  v17 = (v2 + 8);
  if (v14 == 1)
  {
    swift_beginAccess();
    v18 = *(v0 + v15);

    sub_224CF7F14(v19, v8);

    (*v16)(v6, *MEMORY[0x277CE3D30], v1);
    sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
    LOBYTE(v18) = sub_224DAEDB8();
    v20 = *v17;
    (*v17)(v6, v1);
    v20(v8, v1);
    if (v18)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    swift_beginAccess();
    v22 = *(v0 + v15);

    sub_224CF7F14(v23, v8);

    (*v16)(v6, *MEMORY[0x277CE3D30], v1);
    sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
    LOBYTE(v22) = sub_224DAEDB8();
    v24 = *v17;
    (*v17)(v6, v1);
    v24(v8, v1);
    return v22 & 1;
  }
}

void sub_224CD3308(uint64_t a1, uint64_t a2)
{
  v265 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v234 = &v204 - v6;
  v233 = sub_224DABE18();
  v7 = *(v233 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v233);
  v220 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for _SessionPriorityInfo(0);
  v244 = *(v239 - 8);
  v10 = *(v244 + 64);
  v11 = MEMORY[0x28223BE20](v239);
  v215 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v209 = &v204 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v208 = &v204 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v236 = (&v204 - v18);
  MEMORY[0x28223BE20](v17);
  v229 = &v204 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6210, &qword_224DBEE98);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v228 = &v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v219 = &v204 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v211 = &v204 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v232 = &v204 - v29;
  MEMORY[0x28223BE20](v28);
  v241 = &v204 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6218, &qword_224DBEEA0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v214 = &v204 - v33;
  v34 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v218 = *(v34 - 8);
  v35 = *(v218 + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v272 = &v204 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v273 = &v204 - v38;
  v39 = sub_224DAE8B8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v269 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v224 = &v204 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v256 = &v204 - v47;
  MEMORY[0x28223BE20](v46);
  v223 = &v204 - v48;
  v49 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v238 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_224DA9F08();
  v52 = *(v264 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v264 - 8);
  v263 = &v204 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for ExtensionTask.Identifier(0);
  v55 = *(*(v259 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v259);
  v240 = &v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v213 = &v204 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v247 = &v204 - v61;
  MEMORY[0x28223BE20](v60);
  v251 = &v204 - v62;
  v63 = swift_allocObject();
  v268 = v63;
  *(v63 + 16) = MEMORY[0x277D84F98];
  v242 = v63 + 16;
  swift_beginAccess();
  v64 = *(v2 + 24);
  v67 = *(v64 + 64);
  v66 = v64 + 64;
  v65 = v67;
  v68 = 1 << *(*(v2 + 24) + 32);
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  else
  {
    v69 = -1;
  }

  v70 = v69 & v65;
  v266 = *(v2 + 24);

  swift_beginAccess();
  v71 = 0;
  v72 = (v68 + 63) >> 6;
  if (a1 < 0)
  {
    v73 = a1;
  }

  else
  {
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v207 = v73;
  v275 = a1;
  v274 = a1 & 0xC000000000000001;
  v260 = *MEMORY[0x277CF9F28];
  v262 = (v52 + 104);
  v261 = (v52 + 8);
  v222 = *MEMORY[0x277CE3D10];
  v237 = (v40 + 104);
  v252 = (v40 + 48);
  v253 = (v40 + 32);
  v246 = (v40 + 40);
  v248 = (v40 + 8);
  v74 = a1 & 0xFFFFFFFFFFFFFF8;
  v75 = *MEMORY[0x277CE3D30];
  v210 = *MEMORY[0x277CF9F38];
  v221 = (v244 + 56);
  v231 = (v7 + 32);
  v227 = (v7 + 56);
  v226 = (v7 + 48);
  v216 = (v7 + 8);
  v225 = (v244 + 48);
  v257 = (v68 + 63) >> 6;
  v258 = v66;
  v235 = v75;
LABEL_9:
  if (!v70)
  {
    do
    {
      v76 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_110;
      }

      if (v76 >= v72)
      {

        swift_beginAccess();
        v203 = *(v268 + 16);

        return;
      }

      v70 = *(v66 + 8 * v76);
      ++v71;
    }

    while (!v70);
    v71 = v76;
  }

  v77 = (v71 << 9) | (8 * __clz(__rbit64(v70)));
  v78 = *(*(v266 + 48) + v77);
  v79 = *(*(v266 + 56) + v77);
  if (v275 >> 62)
  {
    v80 = sub_224DAF838();
  }

  else
  {
    v80 = *(v74 + 16);
  }

  v70 &= v70 - 1;
  v276 = v78;

  v81 = 0;
  while (v80 != v81)
  {
    if (v274)
    {
      v82 = MEMORY[0x22AA5DCC0](v81, v275);
    }

    else
    {
      if (v81 >= *(v74 + 16))
      {
        goto LABEL_109;
      }

      v82 = *(v275 + 8 * v81 + 32);
    }

    v83 = v82;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    sub_224AC21B4();
    v84 = sub_224DAF6A8();

    ++v81;
    if (v84)
    {

LABEL_8:
      v66 = v258;
      v72 = v257;
      goto LABEL_9;
    }
  }

  v85 = *(v249 + 32);
  if (!*(v85 + 16))
  {
    goto LABEL_30;
  }

  v86 = *(v249 + 32);

  v87 = sub_224A3E7EC(v276);
  if ((v88 & 1) == 0)
  {

LABEL_30:
    v93 = v263;
    v94 = v264;
    (*v262)(v263, v260, v264);
    sub_224CD589C(v79, v93, v265, v268);

    (*v261)(v93, v94);
    goto LABEL_8;
  }

  v245 = *(*(v85 + 56) + 8 * v87);

  if ((v79 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224CD6594(&qword_28135B9E8, type metadata accessor for ExtensionTask);
    sub_224DAF1F8();
    v79 = v280;
    v89 = v281;
    v90 = v282;
    v91 = v283;
    v92 = v284;
  }

  else
  {
    v91 = 0;
    v95 = -1 << *(v79 + 32);
    v89 = v79 + 56;
    v90 = ~v95;
    v96 = -v95;
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    else
    {
      v97 = -1;
    }

    v92 = v97 & *(v79 + 56);
  }

  v217 = v90;
  v98 = (v90 + 64) >> 6;
  v212 = v245 + 56;
  v255 = v79;
  v254 = v89;
  v250 = v98;
  v271 = v74;
  while (1)
  {
    if (v79 < 0)
    {
      v106 = sub_224DAF878();
      if (!v106 || (v278 = v106, type metadata accessor for ExtensionTask(0), swift_dynamicCast(), v105 = v277, i = v91, v104 = v92, !v277))
      {
LABEL_105:
        sub_224A3B7E4();

        goto LABEL_8;
      }
    }

    else
    {
      v101 = v91;
      v102 = v92;
      for (i = v91; !v102; ++v101)
      {
        i = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_111;
        }

        if (i >= v98)
        {
          goto LABEL_105;
        }

        v102 = *(v89 + 8 * i);
      }

      v104 = (v102 - 1) & v102;
      v105 = *(*(v79 + 48) + ((i << 9) | (8 * __clz(__rbit64(v102)))));
      if (!v105)
      {
        goto LABEL_105;
      }
    }

    v267 = v104;
    v107 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
    v108 = v251;
    sub_224A41594(&v105[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v251, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_224A424D8(v108, type metadata accessor for ExtensionTask.Identifier);
    if (EnumCaseMultiPayload == 4 || (v243 = v107, v110 = v247, sub_224A41594(&v105[v107], v247, type metadata accessor for ExtensionTask.Identifier), v111 = swift_getEnumCaseMultiPayload(), sub_224A424D8(v110, type metadata accessor for ExtensionTask.Identifier), v111 == 5))
    {
      v99 = v263;
      v100 = v264;
      (*v262)(v263, v260, v264);
      sub_224CD51CC(v105, v99, v265, v268);

      (*v261)(v99, v100);
      v91 = i;
      v92 = v267;
      v74 = v271;
      goto LABEL_37;
    }

    v112 = v238;
    sub_224A41594(&v105[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], v238, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v114 = (*(*(v113 - 8) + 48))(v112, 1, v113);
    v74 = v271;
    if (v114 == 1)
    {
      break;
    }

    v127 = sub_224DA9878();
    (*(*(v127 - 8) + 8))(v112, v127);
    v128 = v263;
    v129 = v264;
    (*v262)(v263, v260, v264);
    sub_224CD51CC(v105, v128, v265, v268);

    (*v261)(v128, v129);
LABEL_100:
    v91 = i;
    v92 = v267;
LABEL_37:
    v79 = v255;
    v89 = v254;
    v98 = v250;
  }

  sub_224A424D8(v112, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v115 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  swift_beginAccess();
  v230 = v105;
  v116 = *&v105[v115];
  v117 = v256;
  v206 = *v237;
  v206(v256, v222, v39);
  v118 = *(v116 + 16);
  v119 = v235;
  if (v118)
  {
    v120 = v218;
    v121 = v116 + ((*(v218 + 80) + 32) & ~*(v218 + 80));
    v205 = v116;

    v270 = *(v120 + 72);
    v122 = v252;
    do
    {
      v123 = v273;
      sub_224A41594(v121, v273, type metadata accessor for ExtensionTask.SchedulingOption);
      v124 = v272;
      sub_224A41594(v123, v272, type metadata accessor for ExtensionTask.SchedulingOption);
      if ((*v122)(v124, 5, v39))
      {
        sub_224A424D8(v273, type metadata accessor for ExtensionTask.SchedulingOption);
        v74 = v271;
        sub_224A424D8(v124, type metadata accessor for ExtensionTask.SchedulingOption);
      }

      else
      {
        (*v253)(v269, v124, v39);
        sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
        v125 = v256;
        v126 = sub_224DAEDB8();
        sub_224A424D8(v273, type metadata accessor for ExtensionTask.SchedulingOption);
        if (v126)
        {
          (*v248)(v269, v39);
        }

        else
        {
          (*v246)(v125, v269, v39);
        }

        v122 = v252;
      }

      v121 += v270;
      --v118;
    }

    while (v118);

    v117 = v256;
    v119 = v235;
  }

  v130 = v223;
  (*v253)(v223, v117, v39);
  v131 = v224;
  v206(v224, v119, v39);
  sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38]);
  v132 = sub_224DAEDB8();
  v133 = *v248;
  (*v248)(v131, v39);
  v133(v130, v39);
  if ((v132 & 1) == 0)
  {
    v140 = *v262;
    v141 = v263;
    v142 = v263;
    v143 = &v279;
LABEL_99:
    v192 = v264;
    v140(v142, *(v143 - 64), v264);
    v193 = v230;
    sub_224CD51CC(v230, v141, v265, v268);

    (*v261)(v141, v192);
    goto LABEL_100;
  }

  v134 = v213;
  sub_224A41594(v230 + v243, v213, type metadata accessor for ExtensionTask.Identifier);
  v135 = swift_getEnumCaseMultiPayload();
  v136 = sub_224DABCC8();
  v137 = *(v136 - 8);
  v138 = v137;
  v139 = v214;
  if (v135 == 8)
  {
    (*(v137 + 32))(v214, v134, v136);
    (*(v138 + 56))(v139, 0, 1, v136);
  }

  else
  {
    (*(v137 + 56))(v214, 1, 1, v136);
    sub_224A424D8(v134, type metadata accessor for ExtensionTask.Identifier);
  }

  v144 = v241;
  v145 = (*(v138 + 48))(v139, 1, v136);
  sub_224A3311C(v139, &qword_27D6F6218, &qword_224DBEEA0);
  if (v145 != 1)
  {
    v140 = *v262;
    v141 = v263;
    v142 = v263;
    v143 = &v242 + 4;
    goto LABEL_99;
  }

  v205 = *v221;
  v205(v144, 1, 1, v239);
  v146 = 1 << *(v245 + 32);
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  else
  {
    v147 = -1;
  }

  v148 = v147 & *(v245 + 56);

  swift_beginAccess();
  v149 = 0;
  v150 = (v146 + 63) >> 6;
  v151 = v236;
  v270 = v150;
  while (2)
  {
    v152 = v232;
    if (v148)
    {
LABEL_78:
      v154 = v229;
      sub_224A41594(*(v245 + 48) + *(v244 + 72) * (__clz(__rbit64(v148)) | (v149 << 6)), v229, type metadata accessor for _SessionPriorityInfo);
      sub_224CD666C(v154, v151, type metadata accessor for _SessionPriorityInfo);
      sub_224A41594(v230 + v243, v240, type metadata accessor for ExtensionTask.Identifier);
      v155 = swift_getEnumCaseMultiPayload();
      if (v155 == 6)
      {
        v161 = *v231;
        v156 = v234;
        v162 = v234;
        v163 = v240;
      }

      else
      {
        v156 = v234;
        if (v155 != 7)
        {
          v164 = v233;
          (*v227)(v234, 1, 1, v233);
          sub_224A424D8(v240, type metadata accessor for ExtensionTask.Identifier);
LABEL_84:
          v165 = v228;
          if ((*v226)(v156, 1, v164) == 1)
          {
            sub_224A3311C(v156, &unk_27D6F6130, &unk_224DBB6A0);
            sub_224A3796C(v241, v165, &qword_27D6F6210, &qword_224DBEE98);
            if ((*v225)(v165, 1, v239) == 1)
            {
              v166 = v241;
              sub_224A3311C(v241, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A3311C(v165, &qword_27D6F6210, &qword_224DBEE98);
              v151 = v236;
              v167 = v236;
              v168 = v219;
            }

            else
            {
              sub_224CD666C(v165, v215, type metadata accessor for _SessionPriorityInfo);
              v178 = v239;
              v151 = v236;
              v179 = v236 + *(v239 + 24);
              v206 = sub_224DA9EF8();
              v180 = *(v178 + 24);
              v181 = v215;
              v182 = sub_224DA9EF8();
              sub_224A424D8(v181, type metadata accessor for _SessionPriorityInfo);
              v183 = v182 < v206;
              v168 = v219;
              if (!v183)
              {
                goto LABEL_72;
              }

              v166 = v241;
              sub_224A3311C(v241, &qword_27D6F6210, &qword_224DBEE98);
              v167 = v151;
            }

            sub_224A41594(v167, v168, type metadata accessor for _SessionPriorityInfo);
            v205(v168, 0, 1, v239);
            v176 = v168;
            v177 = v166;
          }

          else
          {
            v169 = v220;
            (*v231)();
            v170 = v236[4];
            v206 = v236[5];
            __swift_project_boxed_opaque_existential_1(v236 + 1, v170);
            if ((sub_224CCACB0(v169, v170, v206) & 1) == 0)
            {
              (*v216)(v169, v164);
              v151 = v236;
LABEL_72:
              v148 &= v148 - 1;
              sub_224A424D8(v151, type metadata accessor for _SessionPriorityInfo);
              v150 = v270;
              continue;
            }

            v171 = v211;
            sub_224A3796C(v241, v211, &qword_27D6F6210, &qword_224DBEE98);
            v172 = v171;
            v173 = v171;
            v174 = v239;
            if ((*v225)(v173, 1, v239) == 1)
            {
              (*v216)(v220, v233);
              sub_224A3311C(v241, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A3311C(v172, &qword_27D6F6210, &qword_224DBEE98);
              v151 = v236;
              v175 = v219;
              sub_224A41594(v236, v219, type metadata accessor for _SessionPriorityInfo);
              v205(v175, 0, 1, v174);
              v176 = v175;
              v177 = v241;
            }

            else
            {
              v184 = v209;
              sub_224CD666C(v172, v209, type metadata accessor for _SessionPriorityInfo);
              v185 = v236 + *(v174 + 24);
              v206 = sub_224DA9EF8();
              v186 = v184 + *(v174 + 24);
              v187 = sub_224DA9EF8();
              v188 = v184;
              v151 = v236;
              sub_224A424D8(v188, type metadata accessor for _SessionPriorityInfo);
              (*v216)(v220, v233);
              v183 = v187 < v206;
              v189 = v219;
              if (!v183)
              {
                goto LABEL_72;
              }

              v190 = v151;
              v191 = v241;
              sub_224A3311C(v241, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A41594(v190, v189, type metadata accessor for _SessionPriorityInfo);
              v205(v189, 0, 1, v239);
              v176 = v189;
              v177 = v191;
              v151 = v190;
            }
          }

          sub_224CD65DC(v176, v177);
          goto LABEL_72;
        }

        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
        v158 = v240;
        v159 = *(v240 + *(v157 + 48));

        v156 = v234;
        v160 = *(v158 + *(v157 + 64));

        v161 = *v231;
        v162 = v156;
        v163 = v158;
      }

      v164 = v233;
      (v161)(v162, v163, v233);
      (*v227)(v156, 0, 1, v164);
      goto LABEL_84;
    }

    break;
  }

  while (1)
  {
    v153 = v149 + 1;
    if (__OFADD__(v149, 1))
    {
      break;
    }

    if (v153 >= v150)
    {

      v194 = v241;
      swift_beginAccess();
      sub_224A3796C(v194, v152, &qword_27D6F6210, &qword_224DBEE98);
      v195 = v239;
      if ((*v225)(v152, 1, v239) == 1)
      {
        sub_224A3311C(v152, &qword_27D6F6210, &qword_224DBEE98);
        v196 = v263;
        v197 = v264;
        (*v262)(v263, v260, v264);
        v198 = v230;
        sub_224CD51CC(v230, v196, v265, v268);

        (*v261)(v196, v197);
      }

      else
      {
        v199 = v152;
        v200 = v208;
        sub_224CD666C(v199, v208, type metadata accessor for _SessionPriorityInfo);
        v201 = v200 + *(v195 + 24);
        v202 = v230;
        sub_224CD51CC(v230, v201, v265, v268);

        sub_224A424D8(v200, type metadata accessor for _SessionPriorityInfo);
      }

      sub_224A3311C(v194, &qword_27D6F6210, &qword_224DBEE98);
      goto LABEL_100;
    }

    v148 = *(v212 + 8 * v153);
    ++v149;
    if (v148)
    {
      v149 = v153;
      goto LABEL_78;
    }
  }

LABEL_112:
  __break(1u);
}

uint64_t sub_224CD51CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v57 = type metadata accessor for _TaskInfo(0);
  v60 = *(v57 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v59 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = v51 - v18;
  v19 = sub_224DA9F08();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v51 - v25;
  v62 = v20;
  v56 = *(v20 + 16);
  v56(v51 - v25, a2, v19);
  v58 = a1;
  v27 = sub_224A4A248();
  if (!v27)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_7;
  }

  v28 = *MEMORY[0x277CFA130];
  v29 = v27;
  swift_beginAccess();
  sub_224A3796C(v29 + v28, v14, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_7:
    sub_224A3311C(v14, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_8;
  }

  (*(v16 + 32))(v55, v14, v15);
  v30 = *MEMORY[0x277CF9F28];
  v31 = v62;
  v52 = *(v62 + 104);
  v53 = v62 + 104;
  v52(v24, v30, v19);
  sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v32 = *(v31 + 8);
  v32(v24, v19);
  if (v64[0] == v63)
  {
    v51[0] = v32;
    v33 = v55;
    v34 = sub_224DA9FE8();
    v51[1] = v51;
    v64[0] = v34;
    v64[1] = v35;
    MEMORY[0x28223BE20](v34);
    v51[-2] = v64;
    v36 = sub_224B3E818(sub_224AC2330, &v51[-4], v54);
    (*(v16 + 8))(v33, v15);

    if (v36)
    {
      (v51[0])(v26, v19);
      v52(v26, *MEMORY[0x277CF9F20], v19);
    }
  }

  else
  {
    (*(v16 + 8))(v55, v15);
  }

LABEL_8:
  v37 = v61;
  v56(&v61[*(v57 + 20)], v26, v19);
  v38 = v58;
  *v37 = v58;
  swift_beginAccess();
  v39 = *(a4 + 16);
  v40 = *(v39 + 16);
  v41 = v38;
  v42 = v59;
  if (v40 && (v43 = sub_224B0B75C(v26), (v44 & 1) != 0))
  {
    v45 = *(*(v39 + 56) + 8 * v43);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  swift_endAccess();
  sub_224A41594(v37, v42, type metadata accessor for _TaskInfo);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_224AD9494(0, v45[2] + 1, 1, v45);
  }

  v47 = v45[2];
  v46 = v45[3];
  if (v47 >= v46 >> 1)
  {
    v45 = sub_224AD9494(v46 > 1, v47 + 1, 1, v45);
  }

  v45[2] = v47 + 1;
  sub_224CD666C(v42, v45 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47, type metadata accessor for _TaskInfo);
  swift_beginAccess();
  v48 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_224B2049C(v45, v26, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v63;
  swift_endAccess();
  sub_224A424D8(v37, type metadata accessor for _TaskInfo);
  return (*(v62 + 8))(v26, v19);
}

void sub_224CD589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224CD6594(&qword_28135B9E8, type metadata accessor for ExtensionTask);
    sub_224DAF1F8();
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4();
      return;
    }

    while (1)
    {
      sub_224CD51CC(v19, a2, a3, a4);

      v9 = v17;
      v10 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        type metadata accessor for ExtensionTask(0);
        swift_dynamicCast();
        v19 = v21;
        v17 = v9;
        v18 = v10;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224CD5AA8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

unint64_t sub_224CD5B44()
{
  result = sub_224CD5BD8();
  if (v1 <= 0x3F)
  {
    result = sub_224DA9F08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224CD5BD8()
{
  result = qword_281358A08[0];
  if (!qword_281358A08[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281358A08);
  }

  return result;
}

uint64_t sub_224CD5C84()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAFE68();
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v1);
  v6 = sub_224DA98E8();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AA5E1E0](v6);
  return sub_224DAFEA8();
}

uint64_t sub_224CD5DA0()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v1);
  v6 = sub_224DA98E8();
  (*(v2 + 8))(v5, v1);
  return MEMORY[0x22AA5E1E0](v6);
}

uint64_t sub_224CD5EAC()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAFE68();
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v1);
  v6 = sub_224DA98E8();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AA5E1E0](v6);
  return sub_224DAFEA8();
}

uint64_t sub_224CD5FD0()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*v0);
  return sub_224DAFEA8();
}

uint64_t sub_224CD6040()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*v0);
  return sub_224DAFEA8();
}

uint64_t sub_224CD6080(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[4];
  v9 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_224DAFD88();
  }

  return v12 & 1;
}

void *sub_224CD61A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224B06C3C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224CD6238(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _SessionPriorityInfo(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32 = v10;
    v41 = v4;
    v34 = &v31;
    MEMORY[0x28223BE20](v8);
    v33 = &v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v11);
    v35 = 0;
    v12 = 0;
    v10 = a3 + 56;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v4 = a3;
      v21 = *(a3 + 48);
      v22 = v37;
      v23 = *(v38 + 72);
      v36 = v20;
      sub_224A41594(v21 + v23 * v20, v37, type metadata accessor for _SessionPriorityInfo);
      v24 = v41;
      v25 = v39(v22);
      sub_224A424D8(v22, type metadata accessor for _SessionPriorityInfo);
      v41 = v24;
      if (v24)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v15 = v40;
      if (v25)
      {
        *&v33[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_224B05278(v33, v32, v35, a3);
          goto LABEL_18;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_17;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = sub_224CD61A8(v29, v10, a3, v39);

  result = MEMORY[0x22AA5EED0](v29, -1, -1);
  if (!v4)
  {
    result = v30;
  }

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CD6594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224CD65DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6210, &qword_224DBEE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CD666C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CD66D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TaskInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_224CD6758(uint64_t *a1, uint64_t *a2)
{
  sub_224AC21B4();
  v4 = *a1;
  v5 = *a2;
  if ((sub_224DAF6A8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for _TaskInfo(0) + 20);
  sub_224DA9F08();
  sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  return v9 == v8;
}

uint64_t sub_224CD6864()
{
  result = type metadata accessor for ExtensionTask(319);
  if (v1 <= 0x3F)
  {
    result = sub_224DA9F08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CD6930(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAE928();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_224CE3D8C(&qword_281350C20, MEMORY[0x277CE3DA0]), v9 = sub_224DAED88(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_224CE3D8C(&qword_281350C18, MEMORY[0x277CE3DA0]);
      v17 = sub_224DAEDD8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_224CD6B48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_224DAF888();
  }

  else if (*(a2 + 16) && (sub_224DAF538(), v5 = *(a2 + 40), v6 = sub_224DAF698(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_224DAF6A8();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_224CD6C74(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAD448();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_224CE3D8C(&unk_281350CE0, MEMORY[0x277CF9CE8]), v9 = sub_224DAED88(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_224CE3D8C(&qword_281350CD8, MEMORY[0x277CF9CE8]);
      v17 = sub_224DAEDD8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_224CD6EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  if (*(a2 + 16) && (v16 = *(a2 + 40), sub_224A33088(a5, a3, a4), v17 = sub_224DAED88(), v18 = -1 << *(a2 + 32), v19 = v17 & ~v18, v32 = a2 + 56, ((*(a2 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
  {
    v30 = a1;
    v31 = a3;
    v20 = a2;
    v29 = ~v18;
    v23 = *(v12 + 16);
    v22 = v12 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    v25 = (v22 - 8);
    do
    {
      v21(v15, *(v20 + 48) + v24 * v19, v11);
      sub_224A33088(v33, v31, a4);
      v26 = sub_224DAEDD8();
      (*v25)(v15, v11);
      if (v26)
      {
        break;
      }

      v19 = (v19 + 1) & v29;
    }

    while (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_224CD70BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_224CE3D8C(&qword_281350E50, MEMORY[0x277CF9978]), v9 = sub_224DAED88(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_224CE3D8C(&qword_281350E48, MEMORY[0x277CF9978]);
      v17 = sub_224DAEDD8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_224CD72D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_224ADA204(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v13 = *(*(*(a1 + 56) + 8 * result) + 16);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_224ADA204((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_224A3E204(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_224A3E204(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_224CD7548()
{
  v1 = *(v0 + qword_2813548C0);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224CDD950(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_224CD75C0(uint64_t a1)
{
  sub_224DAFE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAED98();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224CD7678(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAED98();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_224DAEE78();
}

uint64_t sub_224CD7724(uint64_t a1, uint64_t a2)
{
  sub_224DAFE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAED98();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224CD77D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
  v4 = sub_224DAFD28();
  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  MEMORY[0x22AA5D210](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  return v4;
}

uint64_t sub_224CD789C()
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DCE040);
  v1 = *(v0 + 16);
  sub_224DAF188();
  MEMORY[0x22AA5D210](0xD00000000000001ELL, 0x8000000224DCE060);
  v4 = *(v0 + 24);
  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_224CD7A28()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CD7B2C()
{
  v1 = qword_2813549E0;
  v2 = *(v0 + qword_2813549E0);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = qword_2813548B8;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_224A3311C(v0 + qword_2813651F0, &qword_27D6F54B0, &unk_224DBF2A0);
  v5 = *(v0 + qword_2813548C0);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_281354958));
  v6 = *(v0 + qword_2813549E8);

  v7 = *(v0 + qword_2813549F0);

  v8 = *(v0 + qword_2813548D0);

  v9 = *(v0 + qword_2813548C8);

  return v0;
}

void sub_224CD7CC4(uint64_t *a1, uint64_t a2, char *a3)
{
  v408 = a3;
  v399 = a2;
  v377 = type metadata accessor for ReloadRequestKey();
  v4 = *(*(v377 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v377);
  v370 = &v366[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v369 = &v366[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v371 = &v366[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v373 = &v366[-v12];
  MEMORY[0x28223BE20](v11);
  v380 = &v366[-v13];
  v14 = sub_224DACB98();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v393 = &v366[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v388 = sub_224DACB08();
  v387 = *(v388 - 8);
  v17 = *(v387 + 64);
  MEMORY[0x28223BE20](v388);
  v391 = &v366[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_224DACB28();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v389 = &v366[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v394 = sub_224DACC88();
  v392 = *(v394 - 8);
  v22 = *(v392 + 64);
  MEMORY[0x28223BE20](v394);
  v390 = &v366[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v382 = &v366[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v386 = &v366[-v29];
  MEMORY[0x28223BE20](v28);
  v404 = &v366[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v407 = *(v31 - 8);
  v32 = *(v407 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v384 = &v366[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v36 = &v366[-v35];
  v37 = sub_224DAC2B8();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = MEMORY[0x28223BE20](v37);
  v383 = &v366[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v378 = &v366[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v374 = &v366[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v375 = &v366[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v372 = &v366[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v379 = &v366[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v376 = &v366[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v395 = &v366[-v55];
  v56 = MEMORY[0x28223BE20](v54);
  v385 = &v366[-v57];
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v366[-v59];
  MEMORY[0x28223BE20](v58);
  v62 = &v366[-v61];
  v63 = qword_2813548B8;
  v64 = v38[2];
  v64(&v366[-v61], a1, v37);
  v409 = a1;
  v397 = v38 + 2;
  v396 = v64;
  v64(v60, a1, v37);
  v65 = v408;
  v66 = v408;
  v400 = v63;
  v67 = sub_224DAB228();
  v68 = sub_224DAF278();
  v401 = v66;

  v69 = os_log_type_enabled(v67, v68);
  v402 = v37;
  v405 = v31;
  v406 = v36;
  v403 = v38;
  if (v69)
  {
    v367 = v68;
    v381 = v67;
    v70 = 0x6E776F6E6B6E75;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v368 = swift_slowAlloc();
    v411 = v368;
    *v71 = 136446978;
    if (v65)
    {
      v73 = v401;
      v74 = [v401 description];
      v75 = sub_224DAEE18();
      v77 = v76;

      v78 = sub_224A33F74(v75, v77, &v411);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2082;
      v79 = [v73 bundleIdentifier];
      if (v79)
      {
        v80 = v79;
        v70 = sub_224DAEE18();
        v82 = v81;
      }

      else
      {
        v82 = 0xE700000000000000;
      }
    }

    else
    {
      v82 = 0xE700000000000000;
      v86 = sub_224A33F74(0x6E776F6E6B6E75, 0xE700000000000000, &v411);

      *(v71 + 4) = v86;
      *(v71 + 12) = 2082;
    }

    v87 = sub_224A33F74(v70, v82, &v411);

    *(v71 + 14) = v87;
    *(v71 + 22) = 2114;
    v88 = sub_224DAC2A8();
    v85 = &off_27853F000;
    v89 = [v88 extensionIdentity];

    v90 = v403[1];
    v91 = v402;
    v90(v62, v402);
    *(v71 + 24) = v89;
    *v72 = v89;
    *(v71 + 32) = 2082;
    v92 = sub_224DAC2A8();
    v93 = [v92 kind];

    v94 = sub_224DAEE18();
    v96 = v95;

    v398 = v90;
    v90(v60, v91);
    v97 = sub_224A33F74(v94, v96, &v411);

    *(v71 + 34) = v97;
    v98 = v381;
    _os_log_impl(&dword_224A2F000, v381, v367, "Evaluate reload request from %{public}s:%{public}s for %{public}@:%{public}s.", v71, 0x2Au);
    sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    v99 = v368;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v99, -1, -1);
    MEMORY[0x22AA5EED0](v71, -1, -1);

    v84 = v407;
    v31 = v405;
    v36 = v406;
  }

  else
  {

    v83 = v38[1];
    v83(v60, v37);
    v398 = v83;
    v83(v62, v37);
    v84 = v407;
    v85 = &off_27853F000;
  }

  v100 = v409;
  v101 = sub_224DAC2A8();
  v102 = [v101 *(v85 + 311)];

  v103 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v104 = v404;
  sub_224A3796C(v102 + v103, v404, &unk_27D6F5060, &qword_224DB5620);

  v105 = *(v84 + 48);
  v381 = (v84 + 48);
  if ((v105)(v104, 1, v31) == 1)
  {
    sub_224A3311C(v104, &unk_27D6F5060, &qword_224DB5620);
    return;
  }

  v106 = v85;
  v368 = v105;
  v404 = *(v84 + 32);
  (v404)(v36, v104, v31);
  v418 = 0;
  v419 = 1;
  v107 = v410;
  v108 = __swift_project_boxed_opaque_existential_1((v410 + qword_281354958), *(v410 + qword_281354958 + 24));
  v109 = sub_224DAC2A8();
  v110 = [v109 v106 + 1400];

  v111 = *v108;
  sub_224A42660(v110, &v418);

  if ((v419 & 1) == 0)
  {
    if ((v418 & 6) != 0)
    {
      v141 = v84;
      v142 = v385;
      v143 = v402;
      v144 = v396;
      v396(v385, v100, v402);
      v145 = v395;
      v144(v395, v100, v143);
      v146 = sub_224DAB228();
      v147 = sub_224DAF2A8();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v409 = v149;
        v410 = swift_slowAlloc();
        v411 = v410;
        *v148 = 138543618;
        v150 = sub_224DAC2A8();
        v151 = v143;
        v152 = [v150 extensionIdentity];

        v153 = v142;
        v154 = v398;
        v398(v153, v151);
        *(v148 + 4) = v152;
        *v149 = v152;
        *(v148 + 12) = 2082;
        v155 = v395;
        v156 = sub_224DAC2A8();
        v157 = [v156 kind];

        v158 = sub_224DAEE18();
        v160 = v159;

        v154(v155, v151);
        v161 = sub_224A33F74(v158, v160, &v411);

        *(v148 + 14) = v161;
        _os_log_impl(&dword_224A2F000, v146, v147, "Allowing on-going device session for %{public}@ %{public}s", v148, 0x16u);
        v162 = v409;
        sub_224A3311C(v409, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v162, -1, -1);
        v163 = v410;
        __swift_destroy_boxed_opaque_existential_1(v410);
        MEMORY[0x22AA5EED0](v163, -1, -1);
        MEMORY[0x22AA5EED0](v148, -1, -1);

        (*(v407 + 8))(v406, v405);
        return;
      }
    }

    else
    {
      if ((v418 & 0x20) != 0)
      {
        v239 = v376;
        v240 = v402;
        v241 = v396;
        v396(v376, v100, v402);
        v242 = v379;
        v241(v379, v100, v240);
        v243 = sub_224DAB228();
        v244 = sub_224DAF2A8();
        if (os_log_type_enabled(v243, v244))
        {
          v245 = swift_slowAlloc();
          v410 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          v411 = v409;
          *v245 = 138543618;
          v246 = sub_224DAC2A8();
          v247 = [v246 extensionIdentity];

          v248 = v398;
          v398(v239, v240);
          *(v245 + 4) = v247;
          *v410 = v247;
          *(v245 + 12) = 2082;
          v249 = v379;
          v250 = sub_224DAC2A8();
          v251 = [v250 kind];

          v252 = sub_224DAEE18();
          v254 = v253;

          v84 = v407;
          v248(v249, v240);
          v255 = sub_224A33F74(v252, v254, &v411);

          *(v245 + 14) = v255;
          _os_log_impl(&dword_224A2F000, v243, v244, "Allowing reload because an intent recently ran for the extension: %{public}@ %{public}s.", v245, 0x16u);
          v256 = v410;
          sub_224A3311C(v410, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v256, -1, -1);
          v257 = v409;
          __swift_destroy_boxed_opaque_existential_1(v409);
          MEMORY[0x22AA5EED0](v257, -1, -1);
          MEMORY[0x22AA5EED0](v245, -1, -1);
        }

        else
        {

          v313 = v398;
          v398(v242, v240);
          v313(v239, v240);
        }

        v314 = v392;
        v315 = v390;
        v316 = v394;
        (*(v392 + 32))(v390, v399, v394);
        sub_224DACC58();
        (*(v387 + 104))(v391, *MEMORY[0x277CF9B40], v388);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v314 + 8))(v315, v316);
        goto LABEL_63;
      }

      if ((v418 & 8) == 0)
      {
        goto LABEL_32;
      }

      v141 = v84;
      v142 = v372;
      v143 = v402;
      v164 = v396;
      v396(v372, v100, v402);
      v145 = v375;
      v164(v375, v100, v143);
      v146 = sub_224DAB228();
      v165 = sub_224DAF2A8();
      if (os_log_type_enabled(v146, v165))
      {
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v408 = v167;
        v410 = swift_slowAlloc();
        v411 = v410;
        *v166 = 138543618;
        LODWORD(v409) = v165;
        v168 = sub_224DAC2A8();
        v169 = v143;
        v170 = [v168 extensionIdentity];

        v171 = v142;
        v172 = v398;
        v398(v171, v169);
        *(v166 + 4) = v170;
        *v167 = v170;
        *(v166 + 12) = 2082;
        v173 = v375;
        v174 = sub_224DAC2A8();
        v175 = [v174 kind];

        v176 = sub_224DAEE18();
        v178 = v177;

        v172(v173, v169);
        v179 = sub_224A33F74(v176, v178, &v411);

        *(v166 + 14) = v179;
        _os_log_impl(&dword_224A2F000, v146, v409, "Allowing reload because extension has active keep-alive assertion for  %{public}@ %{public}s.", v166, 0x16u);
        v180 = v408;
        sub_224A3311C(v408, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v180, -1, -1);
        v181 = v410;
        __swift_destroy_boxed_opaque_existential_1(v410);
        MEMORY[0x22AA5EED0](v181, -1, -1);
        MEMORY[0x22AA5EED0](v166, -1, -1);

LABEL_26:
        (*(v141 + 8))(v406, v405);
        return;
      }
    }

    v182 = v398;
    v398(v145, v143);
    v182(v142, v143);
    goto LABEL_26;
  }

  if (!v408 || (v112 = [v401 bundleIdentifier]) == 0)
  {
LABEL_28:
    v183 = v107 + qword_2813651F0;
    swift_beginAccess();
    if (*(v183 + 24))
    {
      sub_224A3317C(v183, &v411);
      v184 = v412;
      v185 = v413;
      __swift_project_boxed_opaque_existential_1(&v411, v412);
      v186 = sub_224DAC2A8();
      v187 = [v186 extensionIdentity];

      v188 = sub_224DAC2A8();
      v189 = [v188 kind];

      v190 = sub_224DAEE18();
      v191 = v84;
      v193 = v192;

      v100 = v409;
      LOBYTE(v184) = (*(v185 + 16))(v187, v190, v193, v184, v185);

      v107 = v410;
      v84 = v191;

      __swift_destroy_boxed_opaque_existential_1(&v411);
      if (v184)
      {
        v194 = v378;
        v195 = v402;
        v196 = v396;
        v396(v378, v100, v402);
        v197 = v383;
        v196(v383, v100, v195);
        v198 = sub_224DAB228();
        v199 = sub_224DAF278();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          v410 = swift_slowAlloc();
          v417 = v410;
          *v200 = 136446466;
          LODWORD(v409) = v199;
          v201 = sub_224DAC2A8();
          v202 = [v201 extensionIdentity];

          v203 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v204 = sub_224DA9FE8();
          v206 = v205;
          swift_endAccess();

          v207 = v398;
          v398(v194, v195);
          v208 = sub_224A33F74(v204, v206, &v417);

          *(v200 + 4) = v208;
          *(v200 + 12) = 2082;
          v209 = v383;
          v210 = sub_224DAC2A8();
          v211 = [v210 kind];

          v212 = sub_224DAEE18();
          v214 = v213;

          v207(v209, v195);
          v215 = sub_224A33F74(v212, v214, &v417);
          v84 = v191;

          *(v200 + 14) = v215;
          _os_log_impl(&dword_224A2F000, v198, v409, "Allowing free reload for %{public}s: [%{public}s] because widget is visible.", v200, 0x16u);
          v216 = v410;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v216, -1, -1);
          MEMORY[0x22AA5EED0](v200, -1, -1);
        }

        else
        {

          v258 = v398;
          v398(v197, v195);
          v258(v194, v195);
        }

        v259 = v392;
        v260 = v390;
        v261 = v394;
        (*(v392 + 32))(v390, v399, v394);
        sub_224DACC58();
        (*(v387 + 104))(v391, *MEMORY[0x277CF9B40], v388);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v259 + 8))(v260, v261);
        goto LABEL_63;
      }
    }

LABEL_32:
    if (*(v107 + qword_2813549F0) && (sub_224CE1194(v100, v399) & 1) != 0)
    {
      sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
LABEL_63:
      (*(v84 + 8))(v406, v405);
      return;
    }

    v217 = *(v107 + qword_2813548C8);
    v218 = v405;
    if (v217 && sub_224CDFC24(v100) != 2)
    {
      (*(v84 + 8))(v406, v218);
      return;
    }

    v219 = *(v84 + 56);
    v220 = v386;
    v219(v386, 1, 1, v218);
    v221 = __swift_project_boxed_opaque_existential_1((*(v107 + qword_2813548D0) + 24), *(*(v107 + qword_2813548D0) + 48));
    v222 = *v221;
    v223 = *(*v221 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    v224 = *(v223 + 16);

    os_unfair_lock_lock(v224);
    v225 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v226 = *(v222 + v225);
    v227 = *(v223 + 16);

    os_unfair_lock_unlock(v227);

    v228 = v406;
    LODWORD(v408) = sub_224A33718(v406, v226, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

    if (v217)
    {
      v229 = __swift_project_boxed_opaque_existential_1((v217 + 16), *(v217 + 40));
      v230 = *v229;
      v231 = *(*v229 + 24);
      v232 = *(v231 + 16);

      os_unfair_lock_lock(v232);
      v233 = swift_beginAccess();
      v234 = *(v230 + 32);
      MEMORY[0x28223BE20](v233);
      *&v366[-16] = v228;

      sub_224AA3B30(sub_224C4E570, &v366[-32], v234);
      v236 = v235;

      v220 = v386;
      v237 = v218;
      os_unfair_lock_unlock(*(v231 + 16));

      v238 = v384;
      if ((v408 & 1) == 0 && !v236)
      {
LABEL_48:
        v262 = v382;
        sub_224A3796C(v220, v382, &unk_27D6F5060, &qword_224DB5620);
        if ((v368)(v262, 1, v237) == 1)
        {
          sub_224A3311C(v220, &unk_27D6F5060, &qword_224DB5620);
          (*(v84 + 8))(v406, v237);
          sub_224A3311C(v262, &unk_27D6F5060, &qword_224DB5620);
          return;
        }

        (v404)(v238, v262, v237);
        v263 = qword_2813549E8;
        v264 = v410;
        swift_beginAccess();
        v408 = v263;
        v265 = *&v263[v264];
        if (*(v265 + 16) && (v266 = sub_224A89A08(v238), (v267 & 1) != 0))
        {
          v268 = v238;
          v269 = *(*(v265 + 56) + 8 * v266);
          swift_endAccess();
        }

        else
        {
          v268 = v238;
          swift_endAccess();
          v269 = MEMORY[0x277D84F98];
        }

        v270 = v380;
        v271 = sub_224DAC2A8();
        v272 = [v271 extensionIdentity];

        v273 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        (*(*(v274 - 8) + 16))(v270, &v272[v273], v274);

        v275 = sub_224DAC2A8();
        v276 = [v275 kind];

        v277 = sub_224DAEE18();
        v279 = v278;

        v280 = &v270[*(v377 + 20)];
        *v280 = v277;
        v280[1] = v279;
        v281 = *(v269 + 2);
        v404 = v269;
        if (v281 && (v282 = sub_224B0B4A0(v270), (v283 & 1) != 0))
        {
          v284 = *(*(v269 + 7) + 8 * v282);
          v285 = *(v410 + 2);
          swift_retain_n();
          BSContinuousMachTimeNow();
          v287 = v286;
          v288 = *(v284 + 16);

          if (v285 >= vabdd_f64(v287, v288))
          {
            v333 = v370;
            sub_224CE35AC(v270, v370);
            v334 = sub_224DAB228();
            v335 = sub_224DAF2A8();
            if (os_log_type_enabled(v334, v335))
            {
              v336 = swift_slowAlloc();
              v337 = swift_slowAlloc();
              v414 = v337;
              *v336 = 136446210;
              v338 = v335;
              v339 = v371;
              sub_224CE35AC(v333, v371);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
              v415 = sub_224DAFD28();
              v416 = v340;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*&v339[*(v377 + 20)], *&v339[*(v377 + 20) + 8]);
              v341 = v415;
              v342 = v416;
              sub_224B30FEC(v333);
              sub_224B30FEC(v339);
              v343 = sub_224A33F74(v341, v342, &v414);

              *(v336 + 4) = v343;
              _os_log_impl(&dword_224A2F000, v334, v338, "%{public}s - Throttling additional refresh request while foreground.", v336, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v337);
              v344 = v337;
              v220 = v386;
              MEMORY[0x22AA5EED0](v344, -1, -1);
              v345 = v336;
              v269 = v404;
              v268 = v384;
              MEMORY[0x22AA5EED0](v345, -1, -1);
            }

            else
            {

              sub_224B30FEC(v333);
            }

            v84 = v407;
            v357 = *(v284 + 24);
            v358 = __OFADD__(v357, 1);
            v359 = v357 + 1;
            v360 = v410;
            if (v358)
            {
              __break(1u);
              return;
            }

            *(v284 + 24) = v359;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v415 = v269;
            sub_224B1F91C(v284, v270, isUniquelyReferenced_nonNull_native);
            v362 = v415;
            v363 = v408;
            swift_beginAccess();

            v364 = *&v363[v360];
            v365 = swift_isUniquelyReferenced_nonNull_native();
            v414 = *&v363[v360];
            *&v363[v360] = 0x8000000000000000;
            sub_224B1F908(v362, v268, v365);
            *&v363[v360] = v414;
            swift_endAccess();

LABEL_69:
            sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);

            sub_224B30FEC(v270);
            v331 = *(v84 + 8);
            v332 = v405;
            v331(v268, v405);
            sub_224A3311C(v220, &unk_27D6F5060, &qword_224DB5620);
            v331(v406, v332);

            return;
          }

          v289 = v270;
          v290 = v369;
          sub_224CE35AC(v289, v369);
          v291 = sub_224DAB228();
          v292 = sub_224DAF2A8();
          if (os_log_type_enabled(v291, v292))
          {
            v293 = swift_slowAlloc();
            v294 = swift_slowAlloc();
            v414 = v294;
            *v293 = 136446210;
            v295 = v371;
            sub_224CE35AC(v290, v371);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
            v415 = sub_224DAFD28();
            v416 = v296;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*&v295[*(v377 + 20)], *&v295[*(v377 + 20) + 8]);
            v297 = v415;
            v298 = v416;
            sub_224B30FEC(v290);
            sub_224B30FEC(v295);
            v299 = sub_224A33F74(v297, v298, &v414);

            *(v293 + 4) = v299;
            _os_log_impl(&dword_224A2F000, v291, v292, "%{public}s - Allowing subsequent refresh after throttle interval.", v293, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v294);
            MEMORY[0x22AA5EED0](v294, -1, -1);
            MEMORY[0x22AA5EED0](v293, -1, -1);
          }

          else
          {

            sub_224B30FEC(v290);
          }

          v84 = v407;
          v346 = v392;
          v347 = v390;
          (*(v392 + 32))(v390, v399, v394);
          sub_224DACC58();
          (*(v387 + 104))(v391, *MEMORY[0x277CF9B40], v388);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v346 + 8))(v347, v394);
          type metadata accessor for ReloadInfo();
          v348 = swift_allocObject();
          *(v348 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v348 + 16) = v349;
          *(v348 + 24) = 0;
          v350 = v404;
          v351 = swift_isUniquelyReferenced_nonNull_native();
          v415 = v350;
          v270 = v380;
          sub_224B1F91C(v348, v380, v351);
          v352 = v415;
          v353 = v410;
          v354 = v408;
          swift_beginAccess();

          v355 = *&v354[v353];
          v356 = swift_isUniquelyReferenced_nonNull_native();
          v414 = *&v354[v353];
          *&v354[v353] = 0x8000000000000000;
          v268 = v384;
          sub_224B1F908(v352, v384, v356);
          *&v354[v353] = v414;
          swift_endAccess();
        }

        else
        {
          v300 = v270;
          v301 = v373;
          sub_224CE35AC(v300, v373);
          v302 = sub_224DAB228();
          v303 = sub_224DAF2A8();
          if (os_log_type_enabled(v302, v303))
          {
            v304 = swift_slowAlloc();
            v305 = v84;
            v306 = swift_slowAlloc();
            v414 = v306;
            *v304 = 136446210;
            v307 = v371;
            sub_224CE35AC(v301, v371);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
            v415 = sub_224DAFD28();
            v416 = v308;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*&v307[*(v377 + 20)], *&v307[*(v377 + 20) + 8]);
            v309 = v415;
            v310 = v416;
            sub_224B30FEC(v301);
            sub_224B30FEC(v307);
            v311 = sub_224A33F74(v309, v310, &v414);

            *(v304 + 4) = v311;
            _os_log_impl(&dword_224A2F000, v302, v303, "%{public}s - Allowing first refresh while foreground.", v304, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v306);
            v312 = v306;
            v84 = v305;
            MEMORY[0x22AA5EED0](v312, -1, -1);
            MEMORY[0x22AA5EED0](v304, -1, -1);
          }

          else
          {

            sub_224B30FEC(v301);
          }

          v319 = v392;
          v320 = v390;
          v321 = v394;
          (*(v392 + 32))(v390, v399, v394);
          sub_224DACC58();
          (*(v387 + 104))(v391, *MEMORY[0x277CF9B40], v388);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v319 + 8))(v320, v321);
          type metadata accessor for ReloadInfo();
          v322 = swift_allocObject();
          *(v322 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v322 + 16) = v323;
          *(v322 + 24) = 0;
          v324 = v404;
          v325 = swift_isUniquelyReferenced_nonNull_native();
          v415 = v324;
          v270 = v380;
          sub_224B1F91C(v322, v380, v325);
          v326 = v415;
          v327 = v410;
          v328 = v408;
          swift_beginAccess();

          v329 = *&v328[v327];
          v330 = swift_isUniquelyReferenced_nonNull_native();
          v414 = *&v328[v327];
          *&v328[v327] = 0x8000000000000000;
          v268 = v384;
          sub_224B1F908(v326, v384, v330);
          *&v328[v327] = v414;
          swift_endAccess();
        }

        v220 = v386;
        goto LABEL_69;
      }
    }

    else
    {
      v237 = v218;
      v238 = v384;
      if ((v408 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    sub_224A3311C(v220, &unk_27D6F5060, &qword_224DB5620);
    (*(v84 + 16))(v220, v406, v237);
    v219(v220, 0, 1, v237);
    goto LABEL_48;
  }

  v113 = v112;
  v114 = sub_224DAEE18();
  v408 = v115;

  v116 = v107 + qword_2813651F0;
  swift_beginAccess();
  if (!*(v116 + 24))
  {
    goto LABEL_27;
  }

  sub_224A3317C(v116, &v411);
  v117 = v412;
  v118 = v413;
  __swift_project_boxed_opaque_existential_1(&v411, v412);
  v119 = sub_224DAC2A8();
  v120 = [v119 kind];

  v121 = sub_224DAEE18();
  v123 = v122;

  v84 = v407;
  v124 = *(v118 + 8);
  v100 = v409;
  v125 = v118;
  v107 = v410;
  LOBYTE(v121) = v124(v114, v408, v121, v123, v117, v125);
  v126 = v405;

  __swift_destroy_boxed_opaque_existential_1(&v411);
  if ((v121 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v404 = v114;
  v127 = v374;
  v128 = v402;
  v396(v374, v100, v402);

  v129 = sub_224DAB228();
  v130 = sub_224DAF278();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v411 = v132;
    *v131 = 136446466;
    v133 = sub_224DAC2A8();
    v134 = [v133 kind];

    v135 = sub_224DAEE18();
    v137 = v136;

    v126 = v405;
    v398(v127, v128);
    v138 = sub_224A33F74(v135, v137, &v411);

    *(v131 + 4) = v138;
    *(v131 + 12) = 2082;
    v139 = sub_224A33F74(v404, v408, &v411);

    *(v131 + 14) = v139;
    _os_log_impl(&dword_224A2F000, v129, v130, "Allowing security critical [%{public}s] from %{public}s.", v131, 0x16u);
    swift_arrayDestroy();
    v140 = v132;
    v84 = v407;
    MEMORY[0x22AA5EED0](v140, -1, -1);
    MEMORY[0x22AA5EED0](v131, -1, -1);
  }

  else
  {

    v398(v127, v128);
  }

  v317 = v392;
  v318 = v390;
  (*(v392 + 32))(v390, v399, v394);
  sub_224DACC58();
  (*(v387 + 104))(v391, *MEMORY[0x277CF9B40], v388);
  sub_224DACC68();
  sub_224DACBB8();
  sub_224DACBD8();
  sub_224DACC28();
  sub_224DACC18();
  (*(v317 + 8))(v318, v394);
  (*(v84 + 8))(v406, v126);
}
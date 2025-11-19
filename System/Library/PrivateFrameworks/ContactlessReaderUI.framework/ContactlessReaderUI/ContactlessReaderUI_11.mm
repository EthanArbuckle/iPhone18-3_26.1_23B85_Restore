double sub_24407FC68@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_24407FCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24407FD78(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24407FE38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5930);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5928);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24407FF70(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5930);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5928);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t (*sub_244080108(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440801C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244080300(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showTermsOfService;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244080484@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_244080540(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_244080600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244080738(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__dismissUI;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_2440808BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_244080914()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_2440809B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_244080B14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244080B88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_244080BDC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244080C58()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244080CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5940);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5938);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_244080EDC(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_244080F64(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_244081028()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_userCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24408106C(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_userCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24408111C()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_isUseDifferentAppleAccountFlow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244081160(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_isUseDifferentAppleAccountFlow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_244081210()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "RegistrationViewModel destroyed", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  swift_unknownObjectRelease();
  v11 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__accountID;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__state;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5918);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showError;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5928);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showTermsOfService;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v19 = *(*(v18 - 8) + 8);
  v19(v1 + v17, v18);
  v19(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__dismissUI, v18);
  v19(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__tosLoading, v18);
  v20 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__tosHtml;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5938);
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  sub_243F7EE58(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_dismissalHandler));
  sub_243F7EE58(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_retrieveHostController));

  return v1;
}

uint64_t sub_2440815D4()
{
  sub_244081210();

  return swift_deallocClassInstance();
}

uint64_t sub_24408162C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x2870756E61656C63, 0xE900000000000029, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  (*(*v1 + 248))(0, 0xE000000000000000);
  v11 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_partnerToken);
  *v11 = 0;
  v11[1] = 0xE000000000000000;

  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_relink) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_accountRegistered) = 0;
  v13 = (*(*v1 + 528))(v12);
  (*(*v13 + 184))(v13);
}

uint64_t sub_244081868(char a1)
{
  v3 = (*(*v1 + 576))();
  if (v3)
  {
    v4 = v3;
    v3(a1 & 1);
    sub_243F7EE58(v4);
  }

  v5 = *(*v1 + 584);

  return v5(0, 0);
}

void sub_244081924(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_243F4DFA8();
  sub_243F5F574(v7, v6, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD00000000000002CLL, 0x80000002440EA3B0, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  type metadata accessor for WeakRegUI();
  swift_unknownObjectRetain();
  [v13 setExportedObject_];

  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [v13 setExportedInterface_];

  v16 = [v14 interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  aBlock[4] = sub_244081C80;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243FA2898;
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);
  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2440D36C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5948);
  v19 = swift_dynamicCast();
  v20 = v21[1];
  if (!v19)
  {
    v20 = 0;
  }

  *(v2 + 16) = v20;
  swift_unknownObjectRelease();
  [v13 resume];
}

uint64_t sub_244081C80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  v9 = a1;
  v10 = sub_2440D11C0();
  v11 = sub_2440D3460();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_2440D3AB0();
    v16 = sub_243F4E6F8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_243F48000, v10, v11, "RegUI connection invalidated with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D58570](v13, -1, -1);
    MEMORY[0x245D58570](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_244081EAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v67 = a5;
  v64 = a1;
  v65 = a2;
  v58 = sub_2440D2C80();
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2440D2CA0();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v57 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = sub_243F4DFA8();
  sub_243F5F574(v17, v16, &qword_27EDC0A50);
  v18 = sub_2440D11E0();
  v66 = *(v18 - 8);
  v19 = *(v66 + 48);
  v20 = v18;
  if (v19(v16, 1) == 1)
  {
    sub_243F5EED4(v16, &qword_27EDC0A50);
  }

  else
  {
    aBlock = 0x206B6E696C6572;
    v70 = 0xE700000000000000;
    if (a3)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (a3)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v55 = v19;
    v56 = v17;
    v23 = v20;
    MEMORY[0x245D57000](v21, v22);

    v24 = v12;
    v25 = a4;
    v26 = aBlock;
    v27 = v70;
    v28 = sub_243F4E2F4();
    v29 = v66;
    sub_243F4E308(v28 & 1, v68, 0xD00000000000002ELL, 0x80000002440EE8E0, v26, v27);
    a4 = v25;
    v12 = v24;

    v30 = *(v29 + 8);
    v20 = v23;
    v31 = v23;
    v19 = v55;
    v17 = v56;
    v30(v16, v31);
  }

  v32 = v68;
  v33 = (v68 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_partnerToken);
  v34 = v65;
  *v33 = v64;
  v33[1] = v34;

  *(v32 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_relink) = a3 & 1;
  (*(**(v32 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_tosHTMLManager) + 144))(a4, v67);
  type metadata accessor for MockDaemon();
  if (sub_243F62C7C(6))
  {
    v35 = 0x80000002440EE8C0;
    v36 = 0xD000000000000014;
    goto LABEL_13;
  }

  sub_2440D1180();
  v36 = sub_2440D1170();
  if (v35)
  {
LABEL_13:
    (*(*v68 + 248))(v36, v35);
    sub_243F5F574(v17, v12, &qword_27EDC0A50);
    if ((v19)(v12, 1, v20) == 1)
    {
      return sub_243F5EED4(v12, &qword_27EDC0A50);
    }

    v38 = sub_2440D11C0();
    v39 = sub_2440D3490();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v12;
      v41 = a4;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      v44 = v41;
      v12 = v40;
      *(v42 + 4) = sub_243F4E6F8(v44, v67, &aBlock);
      _os_log_impl(&dword_243F48000, v38, v39, "TOS config URL = %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x245D58570](v43, -1, -1);
      MEMORY[0x245D58570](v42, -1, -1);
    }

    return (*(v66 + 8))(v12, v20);
  }

  v45 = v57;
  sub_243F5F574(v17, v57, &qword_27EDC0A50);
  if ((v19)(v45, 1, v20) == 1)
  {
    sub_243F5EED4(v45, &qword_27EDC0A50);
  }

  else
  {
    v46 = sub_2440D11C0();
    v47 = sub_2440D3490();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_243F48000, v46, v47, "Could not get account or email or username", v48, 2u);
      MEMORY[0x245D58570](v48, -1, -1);
    }

    (*(v66 + 8))(v45, v20);
  }

  sub_243F5DB84();
  v49 = sub_2440D3530();
  v73 = sub_24402CE30;
  v74 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_243F5F604;
  v72 = &block_descriptor_36;
  v50 = _Block_copy(&aBlock);

  v51 = v59;
  sub_2440D2C90();
  aBlock = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  v52 = v61;
  v53 = v58;
  sub_2440D3710();
  MEMORY[0x245D57440](0, v51, v52, v50);
  _Block_release(v50);

  (*(v63 + 8))(v52, v53);
  return (*(v60 + 8))(v51, v62);
}

uint64_t sub_244082658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = sub_2440D2C80();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2440D2CA0();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_243F4DFA8();
  sub_243F5F574(v13, v12, &qword_27EDC0A50);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v25 = v9;
    v16 = sub_243F4E2F4();
    v17 = sub_243F4E2FC();
    v9 = v25;
    sub_243F4E308(v16 & 1, v3, 0xD000000000000011, 0x80000002440EE910, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  sub_243F5DB84();
  v19 = sub_2440D3530();
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = a1;
  v20[3] = v21;
  v20[4] = v3;
  aBlock[4] = sub_24408A8CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_39;
  v22 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57440](0, v9, v7, v22);
  _Block_release(v22);

  (*(v29 + 8))(v7, v5);
  return (*(v26 + 8))(v9, v28);
}

uint64_t sub_244082A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D2C80();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CA0();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440D2CD0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  if ((v16 != 0x73736563637573 || a2 != 0xE700000000000000) && (sub_2440D3A10() & 1) == 0)
  {
    return sub_2440860E8(5001, 0x6520726576726553, 0xEC000000726F7272);
  }

  (*(*a3 + 296))(2);
  *(a3 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_accountRegistered) = 1;
  sub_243F5DB84();
  v31 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v19 = *(v12 + 8);
  v32 = v11;
  v33 = v19;
  v19(v15, v11);
  aBlock[4] = sub_24408B42C;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_128;
  v20 = _Block_copy(aBlock);

  v21 = v10;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  v22 = v34;
  v30 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  v23 = v35;
  sub_2440D3710();
  v24 = v31;
  MEMORY[0x245D57400](v18, v21, v23, v20);
  _Block_release(v20);

  (*(v22 + 8))(v23, v6);
  (*(v36 + 8))(v21, v30);
  result = v33(v18, v32);
  v26 = *(a3 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_analyticsAppleIdUsed + 8);
  if (v26)
  {
    v27 = *(a3 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_analyticsAppleIdUsed);
    v28 = *(*a3 + 872);

    v28(v27, v26, 0);
  }

  return result;
}

uint64_t sub_244082EDC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_243F4DFA8();
  sub_243F5F574(v7, v6, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD00000000000001ALL, 0x80000002440EE930, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  (*(*v2 + 392))(1);
  return (*(*v2 + 656))(a1 & 1);
}

uint64_t sub_2440830BC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_243F4DFA8();
  sub_243F5F574(v7, v6, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD000000000000012, 0x80000002440EE950, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = *(*v2 + 296);
  if (a1)
  {
    v14 = v13(1);
    if (((*(*v2 + 648))(v14) & 1) == 0)
    {
      sub_2440832F4();
    }
  }

  else
  {
    v13(0);
  }

  return (*(*v2 + 392))(0);
}

void sub_2440832F4()
{
  v1 = v0;
  v2 = sub_2440D08A0();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2440D0AC0();
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v57 = sub_243F4DFA8();
  sub_243F5F574(v57, v12, &qword_27EDC0A50);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v56 = *(v14 + 48);
  if (v56(v12, 1, v13) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v15 = v14;
    v16 = v13;
    v17 = sub_243F4E2F4();
    v18 = sub_243F4E2FC();
    v19 = v17 & 1;
    v13 = v16;
    v14 = v15;
    sub_243F4E308(v19, v1, 0x292877656E6572, 0xE700000000000000, v18, v20);

    (*(v15 + 8))(v12, v13);
  }

  sub_2440D0AB0();
  sub_2440D0AA0();
  v21 = *(v5 + 8);
  v22 = v61;
  v21(v7, v61);
  v23 = sub_2440D1070();
  v24 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_analyticsAppleIdUsed);
  *v24 = v23;
  v24[1] = v25;

  type metadata accessor for MockDaemon();
  if (sub_243F62C7C(6))
  {

    sub_2440D0800();
    sub_2440D0720();
    (*(v59 + 8))(v4, v60);
    v26 = objc_allocWithZone(sub_2440D0B00());
    v27 = sub_2440D0AF0();
    v28 = (*(*v1 + 528))();
    v29 = (*(*v28 + 152))(v28);
    v31 = v30;

    sub_244083AD4(v27, v29, v31);
  }

  else
  {
    v59 = v13;
    v60 = v1;
    v32 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
    v33 = [v32 aida_accountForPrimaryiCloudAccount];
    if (v33)
    {
      v34 = v33;
      v35 = v58;
      sub_243F5F574(v57, v58, &qword_27EDC0A50);
      if (v56(v35, 1, v59) == 1)
      {
        sub_243F5EED4(v35, &qword_27EDC0A50);
      }

      else
      {
        v36 = v34;
        v37 = sub_2440D11C0();
        v38 = sub_2440D3490();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v61 = v14;
          v40 = v39;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v40 = 141558531;
          *(v40 + 4) = 1752392040;
          *(v40 + 12) = 2117;
          *(v40 + 14) = v36;
          *v41 = v34;
          *(v40 + 22) = 2080;
          v43 = v36;
          v44 = sub_2440D10E0();
          v46 = sub_243F4E6F8(v44, v45, aBlock);

          *(v40 + 24) = v46;
          _os_log_impl(&dword_243F48000, v37, v38, "RenewCredentials: for %{sensitive,mask.hash}@, service = %s", v40, 0x20u);
          sub_243F5EED4(v41, &qword_27EDC0418);
          MEMORY[0x245D58570](v41, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x245D58570](v42, -1, -1);
          v47 = v40;
          v14 = v61;
          MEMORY[0x245D58570](v47, -1, -1);
        }

        (*(v14 + 8))(v35, v59);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2440D5CF0;
      v49 = sub_2440D10E0();
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 32) = v49;
      *(v48 + 40) = v50;
      v51 = sub_2440D3210();

      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v34;
      aBlock[4] = sub_24408B41C;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_244084E94;
      aBlock[3] = &block_descriptor_122;
      v54 = _Block_copy(aBlock);
      v55 = v34;

      [v32 aida:v55 renewCredentialsForAccount:v51 services:1 force:v54 completion:?];

      _Block_release(v54);
    }

    else
    {
      sub_2440D0AB0();
      sub_2440D0A90();
      v21(v7, v22);
      sub_2440860E8(4003, 0x2061646961206F6ELL, 0xEF746E756F636361);
    }
  }
}

uint64_t sub_244083AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = a3;
  v22 = a1;
  v5 = sub_2440D0AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - v10;
  v12 = sub_243F4DFA8();
  sub_243F5F574(v12, v11, &qword_27EDC0A50);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_243F5EED4(v11, &qword_27EDC0A50);
  }

  else
  {
    v21[1] = a2;
    v15 = sub_243F4E2F4();
    v16 = sub_243F4E2FC();
    v21[0] = v6;
    sub_243F4E308(v15 & 1, v3, 0xD000000000000028, 0x80000002440EE970, v16, v17);
    v6 = v21[0];

    (*(v14 + 8))(v11, v13);
  }

  sub_2440D0A50();
  sub_2440D0AA0();
  result = (*(v6 + 8))(v8, v5);
  v19 = *(v3 + 16);
  if (v19)
  {
    swift_unknownObjectRetain();
    v20 = sub_2440D2F80();
    [v19 regUIAccountWithAccount:v22 tosVersion:v20];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_244083D60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v120 = a4;
  v109 = a1;
  v5 = sub_2440D08A0();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v116 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2440D2C80();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2440D2CA0();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2440D0AC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v102 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v102 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v119 = Strong;
    sub_2440D0AB0();
    sub_2440D0A90();
    v30 = *(v11 + 8);
    v30(v13, v10);
    if (a2)
    {
      v31 = a2;
      v32 = sub_243F4DFA8();
      sub_243F5F574(v32, v23, &qword_27EDC0A50);
      v33 = sub_2440D11E0();
      v120 = *(v33 - 8);
      v34 = v120[6];
      if (v34(v23, 1, v33) == 1)
      {
        sub_243F5EED4(v23, &qword_27EDC0A50);
      }

      else
      {
        v44 = a2;
        v45 = sub_2440D11C0();
        v46 = sub_2440D3490();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v117 = v47;
          v118 = swift_slowAlloc();
          v121 = a2;
          aBlock[0] = v118;
          *v47 = 136315138;
          v48 = a2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
          v49 = sub_2440D3040();
          v116 = v45;
          v51 = sub_243F4E6F8(v49, v50, aBlock);
          LODWORD(v115) = v46;
          v52 = v51;

          v53 = v117;
          *(v117 + 1) = v52;
          v54 = v116;
          _os_log_impl(&dword_243F48000, v116, v115, "RenewCredentials failed with error: %s", v53, 0xCu);
          v55 = v118;
          __swift_destroy_boxed_opaque_existential_0(v118);
          MEMORY[0x245D58570](v55, -1, -1);
          MEMORY[0x245D58570](v53, -1, -1);
        }

        else
        {
        }

        (v120[1])(v23, v33);
      }

      v72 = sub_2440D0540();
      v73 = [v72 ak_isUserCancelError];

      if (v73)
      {
        sub_243F5F574(v32, v20, &qword_27EDC0A50);
        if (v34(v20, 1, v33) == 1)
        {

          return sub_243F5EED4(v20, &qword_27EDC0A50);
        }

        else
        {
          v74 = sub_2440D11C0();
          v75 = sub_2440D3490();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_243F48000, v74, v75, "ak_isUserCancelError", v76, 2u);
            MEMORY[0x245D58570](v76, -1, -1);
          }

          return (v120[1])(v20, v33);
        }
      }

      else
      {
      }
    }

    sub_2440D0A10();
    sub_2440D0AA0();
    v30(v13, v10);
    v105 = sub_243F4DFA8();
    sub_243F5F574(v105, v26, &qword_27EDC0A50);
    v39 = sub_2440D11E0();
    v106 = *(v39 - 8);
    v40 = *(v106 + 48);
    v107 = v39;
    v104 = v40;
    v41 = (v40)(v26, 1);
    v108 = v30;
    if (v41 == 1)
    {
      sub_243F5EED4(v26, &qword_27EDC0A50);
      v42 = v120;
      v43 = v107;
    }

    else
    {
      v59 = v120;
      v60 = sub_2440D11C0();
      v61 = sub_2440D3490();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v103 = v63;
        *v62 = 141558531;
        *(v62 + 4) = 1752392040;
        *(v62 + 12) = 2117;
        *(v62 + 14) = v59;
        *v63 = v59;
        *(v62 + 22) = 2048;
        *(v62 + 24) = v109;
        v64 = v59;
        _os_log_impl(&dword_243F48000, v60, v61, "RenewCredentials result: for %{sensitive,mask.hash}@, %ld", v62, 0x20u);
        v65 = v103;
        sub_243F5EED4(v103, &qword_27EDC0418);
        MEMORY[0x245D58570](v65, -1, -1);
        MEMORY[0x245D58570](v62, -1, -1);
      }

      v66 = v26;
      v43 = v107;
      (*(v106 + 8))(v66, v107);
      v42 = v120;
    }

    sub_2440D10E0();
    v67 = sub_2440D2F80();

    v68 = [v42 aida:v67 tokenWithExpiryCheckForService:?];

    if (v68)
    {
      v69 = sub_2440D2FB0();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0;
    }

    sub_243F5F574(v105, v17, &qword_27EDC0A50);
    v77 = v104(v17, 1, v43);
    v78 = v108;
    if (v77 == 1)
    {
      sub_243F5EED4(v17, &qword_27EDC0A50);
      if (v71)
      {
LABEL_31:
        v114 = v71;
        v115 = v69;
        v79 = v119;
        v113 = *(v119 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_partnerToken);
        LODWORD(v112) = *(v119 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_relink);

        result = [v120 aa_altDSID];
        if (result)
        {
          v80 = result;
          sub_2440D2FB0();

          v81 = v116;
          sub_2440D0800();
          sub_2440D0720();
          (*(v117 + 1))(v81, v118);
          v82 = objc_allocWithZone(sub_2440D0B00());
          v83 = sub_2440D0AF0();
          sub_2440D0A10();
          sub_2440D0A90();
          v84 = (v108)(v13, v10);
          v85 = (*(*v79 + 528))(v84);
          v86 = (*(*v85 + 152))(v85);
          v88 = v87;

          sub_244083AD4(v83, v86, v88);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else
    {

      v89 = sub_2440D11C0();
      v90 = sub_2440D3490();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock[0] = v109;
        *v91 = 136380675;
        LODWORD(v105) = v90;
        v92 = v69;
        if (v71)
        {
          v93 = v71;
        }

        else
        {
          v69 = 1701736302;
          v93 = 0xE400000000000000;
        }

        v94 = sub_243F4E6F8(v69, v93, aBlock);
        v78 = v108;

        *(v91 + 4) = v94;
        v69 = v92;
        _os_log_impl(&dword_243F48000, v89, v105, "RenewCredentials token: %{private}s", v91, 0xCu);
        v95 = v109;
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x245D58570](v95, -1, -1);
        v96 = v91;
        v43 = v107;
        MEMORY[0x245D58570](v96, -1, -1);
      }

      (*(v106 + 8))(v17, v43);
      if (v71)
      {
        goto LABEL_31;
      }
    }

    sub_2440D0A10();
    sub_2440D0A90();
    v78(v13, v10);
    sub_243F5DB84();
    v97 = sub_2440D3530();
    aBlock[4] = sub_24408B424;
    aBlock[5] = v119;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_125;
    v98 = _Block_copy(aBlock);

    v99 = v110;
    sub_2440D2C90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_243F91D78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F73DE0();
    v100 = v112;
    v101 = v115;
    sub_2440D3710();
    MEMORY[0x245D57440](0, v99, v100, v98);
    _Block_release(v98);

    (*(v114 + 8))(v100, v101);
    return (*(v111 + 8))(v99, v113);
  }

  v35 = sub_243F4DFA8();
  sub_243F5F574(v35, v28, &qword_27EDC0A50);
  v36 = sub_2440D11E0();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v28, 1, v36) == 1)
  {
    return sub_243F5EED4(v28, &qword_27EDC0A50);
  }

  v56 = sub_2440D11C0();
  v57 = sub_2440D3490();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_243F48000, v56, v57, "model is nil on aida_renewCredentials", v58, 2u);
    MEMORY[0x245D58570](v58, -1, -1);
  }

  return (*(v37 + 8))(v28, v36);
}

uint64_t sub_244084C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "Unable to renew due to missing params", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v12 = xmmword_2440E4EA0;
  v13 = 0x80000002440EEBF0;
  v14 = 0xD000000000000035;
  v15 = 0x80000002440EEC20;
  v16 = 0xD00000000000001FLL;
  v17 = 0x80000002440EECD0;
  (*(*a1 + 344))(&v12);
  return (*(*a1 + 296))(0);
}

void sub_244084E94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_244084F0C()
{
  v1 = v0;
  v2 = sub_2440D0AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v41 = sub_243F4DFA8();
  sub_243F5F574(v41, v10, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v42 = *(v11 - 8);
  v12 = *(v42 + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v13 = v12;
    v14 = sub_243F4E2F4();
    v15 = sub_243F4E2FC();
    v40 = v11;
    v16 = v14 & 1;
    v12 = v13;
    sub_243F4E308(v16, v1, 0x29286E696E676973, 0xE800000000000000, v15, v17);
    v18 = v42;
    v11 = v40;

    (*(v18 + 8))(v10, v11);
  }

  sub_2440D0A70();
  sub_2440D0AA0();
  (*(v3 + 8))(v5, v2);
  v19 = sub_2440D1080();
  v20 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_analyticsAppleIdUsed);
  *v20 = v19;
  v20[1] = v21;

  v23 = (*(*v1 + 600))(v22);
  if (v23 && (v24 = v23, v25 = v23(), sub_243F7EE58(v24), v25))
  {
    [v25 setModalPresentationStyle_];
    v26 = *(*v1 + 240);
    v27 = v25;
    v28 = v26();
    v30 = sub_24401EE58(v27, v28, v29);
    v32 = v31;
    v34 = v33;
    v35 = swift_allocObject();
    swift_weakInit();

    sub_24401F184(sub_24408A910, v35, v30, v32);
  }

  else
  {
    v36 = v43;
    sub_243F5F574(v41, v43, &qword_27EDC0A50);
    if (v12(v36, 1, v11) == 1)
    {
      sub_243F5EED4(v43, &qword_27EDC0A50);
    }

    else
    {
      v37 = sub_2440D11C0();
      v38 = sub_2440D3490();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_243F48000, v37, v38, "presenting controller is nil", v39, 2u);
        MEMORY[0x245D58570](v39, -1, -1);
      }

      (*(v42 + 8))(v43, v11);
    }

    sub_2440860E8(4006, 0xD00000000000001CLL, 0x80000002440EE9A0);
  }
}

uint64_t sub_2440853DC(uint64_t a1)
{
  v2 = sub_2440D08A0();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2C80();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2440D2CA0();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D0AC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v50 = v5;
    sub_2440D0A70();
    sub_2440D0A90();
    v21 = *(v10 + 8);
    v21(v12, v9);
    v22 = *a1;
    if (*(a1 + 32))
    {
      v23 = *a1;
      v24 = sub_243F4DFA8();
      sub_243F5F574(v24, v16, &qword_27EDC0A50);
      v25 = sub_2440D11E0();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v16, 1, v25) == 1)
      {
        sub_243F5EED4(v16, &qword_27EDC0A50);
      }

      else
      {
        v42 = sub_2440D11C0();
        v43 = sub_2440D3490();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_243F48000, v42, v43, "signin failed", v44, 2u);
          MEMORY[0x245D58570](v44, -1, -1);
        }

        (*(v26 + 8))(v16, v25);
      }

      sub_243F5DB84();
      v45 = sub_2440D3530();
      v46 = swift_allocObject();
      *(v46 + 16) = v23;
      *(v46 + 24) = v20;
      aBlock[4] = sub_24408B374;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_109;
      v47 = _Block_copy(aBlock);
      sub_243F5F574(a1, v57, &qword_27EDC5990);

      sub_2440D2C90();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243F91D78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
      sub_243F73DE0();
      v48 = v54;
      v49 = v50;
      sub_2440D3710();
      MEMORY[0x245D57440](0, v8, v48, v47);
      _Block_release(v47);

      (*(v56 + 8))(v48, v49);
      return (*(v53 + 8))(v8, v55);
    }

    else
    {
      v31 = *(a1 + 16);
      v50 = *(a1 + 24);
      v56 = v31;
      sub_2440D0A10();
      v55 = v22;
      sub_2440D0AA0();
      v21(v12, v9);
      v54 = *(v20 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_partnerToken);
      LODWORD(v53) = *(v20 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_relink);

      sub_2440D0800();
      sub_2440D0720();
      (*(v51 + 8))(v4, v52);
      v32 = objc_allocWithZone(sub_2440D0B00());
      v33 = sub_2440D0AF0();
      sub_2440D0A10();
      sub_2440D0A90();
      v34 = (v21)(v12, v9);
      v35 = (*(*v20 + 528))(v34);
      v36 = (*(*v35 + 152))(v35);
      v38 = v37;

      sub_244083AD4(v33, v36, v38);
    }
  }

  else
  {
    v27 = sub_243F4DFA8();
    sub_243F5F574(v27, v18, &qword_27EDC0A50);
    v28 = sub_2440D11E0();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v18, 1, v28) == 1)
    {
      return sub_243F5EED4(v18, &qword_27EDC0A50);
    }

    else
    {
      v39 = sub_2440D11C0();
      v40 = sub_2440D3490();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_243F48000, v39, v40, "model is nil on authController.authenticate", v41, 2u);
        MEMORY[0x245D58570](v41, -1, -1);
      }

      return (*(v29 + 8))(v18, v28);
    }
  }
}

uint64_t sub_244085C3C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  *&v30 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 4005;
    return sub_2440860E8(v15, 0x2074694B68747541, 0xEE0064656C696166);
  }

  v11 = v29;
  if (sub_243FA1978(v29, 0))
  {
    v12 = sub_243F4DFA8();
    sub_243F5F574(v12, v9, &qword_27EDC0A50);
    v13 = sub_2440D11E0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_243F5EED4(v9, &qword_27EDC0A50);
    }

    else
    {
      v20 = a2;
      v21 = sub_2440D11C0();
      v22 = sub_2440D3490();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_243F48000, v21, v22, "User cancelled", v23, 2u);
        MEMORY[0x245D58570](v23, -1, -1);
      }

      (*(v14 + 8))(v9, v13);
      a2 = v20;
    }

    return (*(*a2 + 296))(0);
  }

  if (!sub_243FA1978(v11, 1))
  {
    v15 = 4004;
    return sub_2440860E8(v15, 0x2074694B68747541, 0xEE0064656C696166);
  }

  v17 = sub_243F4DFA8();
  sub_243F5F574(v17, v7, &qword_27EDC0A50);
  v18 = sub_2440D11E0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v24 = a2;
    v25 = sub_2440D11C0();
    v26 = sub_2440D3490();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_243F48000, v25, v26, "Incomplete or wrong token type returned, should try again", v27, 2u);
      MEMORY[0x245D58570](v27, -1, -1);
    }

    (*(v19 + 8))(v7, v18);
    a2 = v24;
  }

  v30 = xmmword_2440E4EA0;
  v31 = 0x80000002440EEBF0;
  v32 = 0xD000000000000035;
  v33 = 0x80000002440EEC20;
  v34 = 0xD000000000000021;
  v35 = 0x80000002440EEC60;
  (*(*a2 + 344))(&v30);
  return (*(*a2 + 296))(0);
}

uint64_t sub_2440860E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2440D2C80();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2440D2CA0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_243F4DFA8();
  sub_243F5F574(v15, v14, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v26 = a2;
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v27 = v10;
    a2 = v26;
    sub_243F4E308(v18 & 1, v4, 0xD000000000000015, 0x80000002440EEC90, v19, v20);
    v10 = v27;

    (*(v17 + 8))(v14, v16);
  }

  sub_243F5DB84();
  v21 = sub_2440D3530();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v4;
  v22[5] = a1;
  aBlock[4] = sub_24408B3D0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_115;
  v23 = _Block_copy(aBlock);

  v24 = v30;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57440](0, v24, v10, v23);
  _Block_release(v23);

  (*(v28 + 8))(v10, v8);
  return (*(v31 + 8))(v24, v29);
}

uint64_t sub_244086504(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-1] - v9;
  v11 = sub_243F4DFA8();
  sub_243F5F574(v11, v10, &qword_27EDC0A50);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {

    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = a4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_243F4E6F8(a1, a2, v22);
      _os_log_impl(&dword_243F48000, v14, v15, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245D58570](v18, -1, -1);
      v19 = v17;
      a4 = v21;
      MEMORY[0x245D58570](v19, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  (*(*a3 + 296))(0);

  v22[0] = a4;
  v22[1] = 0xD000000000000028;
  v22[2] = 0x80000002440EE860;
  v22[3] = 0xD000000000000029;
  v22[4] = 0x80000002440EE890;
  v22[5] = a1;
  v22[6] = a2;
  return (*(*a3 + 344))(v22);
}

uint64_t sub_2440867D4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_243F4DFA8();
  if (a1)
  {
    v31 = v13;
    sub_243F5F574(v13, v12, &qword_27EDC0A50);
    v14 = sub_2440D11E0();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v12, 1, v14) == 1)
    {
      sub_243F5EED4(v12, &qword_27EDC0A50);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3490();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243F48000, v19, v20, "Subscribing to merchant communications.", v21, 2u);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      (*(v15 + 8))(v12, v14);
    }

    sub_243F5F574(v31, v10, &qword_27EDC0A50);
    if (v16(v10, 1, v14) == 1)
    {
      sub_243F5EED4(v10, &qword_27EDC0A50);
      v22 = v2[2];
      if (!v22)
      {
        return (*(*v2 + 440))(1);
      }

      goto LABEL_16;
    }

    v26 = sub_243F4E2F4();
    v27 = sub_243F4E2FC();
    sub_243F4E308(v26 & 1, v2, 0xD00000000000001BLL, 0x80000002440EE9C0, v27, v28);

    (*(v15 + 8))(v10, v14);
    v22 = v2[2];
    if (v22)
    {
LABEL_16:
      [v22 updateAccountSubscription];
    }
  }

  else
  {
    sub_243F5F574(v13, v7, &qword_27EDC0A50);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3490();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "Not subscribing to merchant communications.", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v18 + 8))(v7, v17);
    }
  }

  return (*(*v2 + 440))(1);
}

id sub_244086BE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_243F4DFA8();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    v12 = sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_243F4E2F4();
    v14 = sub_243F4E2FC();
    sub_243F4E308(v13 & 1, v1, 0x287373696D736964, 0xE900000000000029, v14, v15);

    v12 = (*(v10 + 8))(v7, v9);
  }

  result = (*(*v1 + 288))(v12);
  if (result != 4)
  {
    v17 = (*(*v1 + 296))(4);
    v18 = (*(*v1 + 624))(v17);
    v19 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_accountRegistered);
    sub_243F5F574(v8, v5, &qword_27EDC0A50);
    if (v11(v5, 1, v9) == 1)
    {
      sub_243F5EED4(v5, &qword_27EDC0A50);
      v20 = v1[2];
      if (!v20)
      {
        return [v1 closeUI];
      }
    }

    else
    {
      v21 = sub_243F4E2F4();
      v22 = sub_243F4E2FC();
      sub_243F4E308(v21 & 1, v1, 0xD000000000000033, 0x80000002440EE9E0, v22, v23);

      (*(v10 + 8))(v5, v9);
      v20 = v1[2];
      if (!v20)
      {
        return [v1 closeUI];
      }
    }

    [v20 regUIFinishedWithUserCancelled:v18 & 1 regStatus:v19];
    return [v1 closeUI];
  }

  return result;
}

uint64_t sub_244086F2C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_243F4DFA8();
  sub_243F5F574(v13, v12, &qword_27EDC0A50);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v23 = v3;
    v16 = sub_243F4E2F4();
    v17 = sub_243F4E2FC();
    sub_243F4E308(v16 & 1, v23, 0xD00000000000002BLL, 0x80000002440EEA20, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  v19 = sub_2440D3390();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3 & 1;

  sub_243F54830(0, 0, v9, &unk_2440E5110, v20);
}

uint64_t sub_2440871C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 272) = a6;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v6 + 184) = swift_task_alloc();
  v7 = sub_2440D0C30();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440872C4, 0, 0);
}

uint64_t sub_2440872C4()
{
  sub_2440D0C20();
  v1 = sub_2440D1090();
  v3 = v2;
  *(v0 + 216) = v2;
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_244087388;

  return MEMORY[0x2821A5168](v1, v3, 0, 0);
}

uint64_t sub_244087388(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[18] = v2;
  v3[19] = a1;
  v3[20] = a2;
  v3[29] = a2;

  return MEMORY[0x2822009F8](sub_2440874AC, 0, 0);
}

uint64_t sub_2440874AC()
{
  v30 = v0;
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    *(v0 + 240) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5978);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2440D66C0;
    *(inited + 32) = sub_2440D1060();
    *(inited + 40) = v6;
    v7 = sub_2440D10C0();
    v8 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v7;
    *(inited + 56) = v9;
    *(inited + 80) = sub_2440D1050();
    *(inited + 88) = v10;
    *(inited + 120) = v8;
    *(inited + 96) = v3;
    *(inited + 104) = v4;

    v11 = sub_24408B204(inited);
    *(v0 + 248) = v11;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5980);
    swift_arrayDestroy();
    v12 = swift_task_alloc();
    *(v0 + 256) = v12;
    *v12 = v0;
    v12[1] = sub_24408782C;
    v13 = *(v0 + 272);

    return MEMORY[0x2821A5190](v2, v1, v11, v13);
  }

  else
  {
    v14 = *(v0 + 184);
    v15 = sub_243F4DFA8();
    sub_243F5F574(v15, v14, &qword_27EDC0A50);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      v18 = *(v0 + 184);
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      sub_243F5EED4(v18, &qword_27EDC0A50);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3470();
      v21 = os_log_type_enabled(v19, v20);
      v23 = *(v0 + 200);
      v22 = *(v0 + 208);
      v24 = *(v0 + 192);
      if (v21)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_243F4E6F8(0xD00000000000002BLL, 0x80000002440EEA20, &v29);
        _os_log_impl(&dword_243F48000, v19, v20, "[%s] Could not create analytics session", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x245D58570](v26, -1, -1);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v23 + 8))(v22, v24);
      (*(v17 + 8))(*(v0 + 184), v16);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_24408782C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 264) = v4;
  *v4 = v3;
  v4[1] = sub_2440879C4;
  v5 = *(v1 + 240);

  return MEMORY[0x2821A5178](v5, v2);
}

uint64_t sub_2440879C4()
{

  return MEMORY[0x2822009F8](sub_244087ADC, 0, 0);
}

uint64_t sub_244087ADC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_244087B60()
{
  v0 = swift_allocObject();
  sub_244087B98();
  return v0;
}

uint64_t sub_244087B98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5938);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5928);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5918);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  *(v1 + 16) = 0;
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__accountID;
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_2440D1300();
  (*(v15 + 32))(v1 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__state;
  LOBYTE(v43) = 0;
  sub_2440D1300();
  (*(v11 + 32))(v1 + v19, v13, v10);
  v20 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showError;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DC0);
  sub_2440D1300();
  (*(v36 + 32))(v1 + v20, v9, v37);
  v21 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__showTermsOfService;
  LOBYTE(v43) = 0;
  sub_2440D1300();
  v22 = v39;
  v23 = *(v38 + 32);
  v23(v1 + v21, v6, v39);
  v24 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__dismissUI;
  LOBYTE(v43) = 0;
  sub_2440D1300();
  v23(v1 + v24, v6, v22);
  v25 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__tosLoading;
  LOBYTE(v43) = 0;
  sub_2440D1300();
  v23(v1 + v25, v6, v22);
  v26 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__tosHtml;
  type metadata accessor for HtmlContent();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0xE000000000000000;
  v27[4] = 0;
  v27[5] = 0xE000000000000000;
  v27[6] = 0;
  v27[7] = 0xE000000000000000;
  *&v43 = v27;
  v28 = v40;
  sub_2440D1300();
  (*(v41 + 32))(v1 + v26, v28, v42);
  v29 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_dismissalHandler);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_retrieveHostController);
  *v30 = 0;
  v30[1] = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_userCancelled) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_isUseDifferentAppleAccountFlow) = 0;
  v31 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_partnerToken);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_relink) = 0;
  v32 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_analyticsAppleIdUsed);
  *v32 = 0;
  v32[1] = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_accountRegistered) = 0;
  v33 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_tosHTMLManager;
  type metadata accessor for TOSHTMLManager();
  *(v1 + v33) = sub_2440C5160();
  return v1;
}

uint64_t sub_2440880D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RegistrationViewModel();
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

id sub_244088110()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0xD00000000000001ALL, 0x80000002440EC040, v10, v11);

    (*(v7 + 8))(v4, v6);
    result = *(v1 + 16);
    if (!result)
    {
      return result;
    }

    return [result uiDidLoad];
  }

  sub_243F5EED4(v4, &qword_27EDC0A50);
  result = *(v1 + 16);
  if (result)
  {
    return [result uiDidLoad];
  }

  return result;
}

uint64_t sub_2440882A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_2440D3390();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_243F54830(0, 0, v3, &unk_2440E5120, v5);
}

uint64_t sub_2440883AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_2440D0880();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F88);
  v4[16] = swift_task_alloc();
  v6 = sub_2440D08A0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244088588, 0, 0);
}

uint64_t sub_244088588()
{
  v1 = *(v0 + 184);
  v2 = sub_243F4DFA8();
  *(v0 + 192) = v2;
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  *(v0 + 200) = v3;
  v4 = *(v3 - 8);
  *(v0 + 208) = v4;
  v5 = *(v4 + 48);
  *(v0 + 216) = v5;
  *(v0 + 224) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 184), &qword_27EDC0A50);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3490();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "Fetching TOS", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    v9 = *(v0 + 184);

    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 272) = 1;

  v11 = sub_2440D1350();
  v12 = (*(*v10 + 528))(v11);
  (*(*v12 + 184))(v12);

  v13 = swift_task_alloc();
  *(v0 + 232) = v13;
  *v13 = v0;
  v13[1] = sub_244088820;

  return sub_244089118(0, 0);
}

uint64_t sub_244088820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[30] = a2;

  return MEMORY[0x2822009F8](sub_24408892C, 0, 0);
}

uint64_t sub_24408892C()
{
  v1 = v0[30];
  if (!v1)
  {
    v16 = v0 + 273;
LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    *v16 = 0;

    sub_2440D1350();

    v31 = v0[1];

    return v31();
  }

  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[20];
  v47 = v0[21];
  v6 = v0[18];
  v48 = v0[17];
  v7 = v0[12];
  v0[31] = sub_2440D1180();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v1;
  v8[5] = v3;
  v8[6] = v4;

  sub_2440D1160();

  sub_2440D0800();
  sub_2440D07F0();
  v9 = *(v6 + 8);
  v9(v5, v48);
  v10 = sub_2440D07E0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v47, 1, v10);
  v13 = v0[21];
  if (v12 == 1)
  {
    v14 = &qword_27EDC1F90;
    v15 = v0[21];
LABEL_11:
    sub_243F5EED4(v15, v14);
    goto LABEL_12;
  }

  v17 = sub_2440D0740();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  if (v17 == 16707 && v19 == 0xE200000000000000)
  {
  }

  else
  {
    v20 = sub_2440D3A10();

    if ((v20 & 1) == 0)
    {
LABEL_12:
      v16 = v0 + 274;
      goto LABEL_13;
    }
  }

  v21 = v0[19];
  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[13];
  sub_2440D0800();
  sub_2440D0890();
  v9(v21, v22);
  sub_2440D0840();
  (*(v24 + 8))(v25, v26);
  v27 = sub_2440D0750();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v23, 1, v27);
  v30 = v0[16];
  if (v29 == 1)
  {
    v14 = &qword_27EDC1F88;
    v15 = v0[16];
    goto LABEL_11;
  }

  v33 = sub_2440D0740();
  v35 = v34;
  (*(v28 + 8))(v30, v27);
  if (v33 == 28261 && v35 == 0xE200000000000000)
  {
  }

  else
  {
    v36 = sub_2440D3A10();

    v16 = v0 + 274;
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v37 = v0[27];
  v38 = v0[25];
  v39 = v0[22];
  sub_243F5F574(v0[24], v39, &qword_27EDC0A50);
  if (v37(v39, 1, v38) == 1)
  {
    sub_243F5EED4(v0[22], &qword_27EDC0A50);
  }

  else
  {
    v40 = sub_2440D11C0();
    v41 = sub_2440D3490();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_243F48000, v40, v41, "Fetching secondary TOS for Quebec", v42, 2u);
      MEMORY[0x245D58570](v42, -1, -1);
    }

    v43 = v0[25];
    v44 = v0[26];
    v45 = v0[22];

    (*(v44 + 8))(v45, v43);
  }

  v46 = swift_task_alloc();
  v0[32] = v46;
  *v46 = v0;
  v46[1] = sub_244088EA0;

  return sub_244089118(0x41435F7266, 0xE500000000000000);
}

uint64_t sub_244088EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[7] = v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = a4;
  v5[33] = a2;

  return MEMORY[0x2822009F8](sub_244088FAC, 0, 0);
}

uint64_t sub_244088FAC()
{
  v1 = v0[33];
  if (v1)
  {
    v2 = v0 + 274;
    v3 = v0[8];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[12];
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v3;
    v7[4] = v1;
    v7[5] = v4;
    v7[6] = v5;

    sub_2440D1160();
  }

  else
  {
    v2 = v0 + 275;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *v2 = 0;

  sub_2440D1350();

  v8 = v0[1];

  return v8();
}

uint64_t sub_244089118(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440891C4, 0, 0);
}

uint64_t sub_2440891C4()
{
  type metadata accessor for MockDaemon();
  v1 = sub_243F62C7C(6);
  v2 = **(v0[4] + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_tosHTMLManager);
  if (v1)
  {
    v9 = (*(v2 + 192) + **(v2 + 192));
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_2440897C0;
    v4 = v0[3];
    v5 = v0[2];
    v6 = v9;
  }

  else
  {
    v10 = (*(v2 + 152) + **(v2 + 152));
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_2440893F4;
    v4 = v0[3];
    v5 = v0[2];
    v6 = v10;
  }

  return v6(v5, v4);
}

uint64_t sub_2440893F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = a4;

  return MEMORY[0x2822009F8](sub_2440894F8, 0, 0);
}

uint64_t sub_2440894F8()
{
  if (v0[9])
  {
    v1 = v0[6];
    v2 = sub_243F4DFA8();
    sub_243F5F574(v2, v1, &qword_27EDC0A50);
    v3 = sub_2440D11E0();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_243F5EED4(v0[6], &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "dynamic TOS", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      v12 = v0[6];

      (*(v4 + 8))(v12, v3);
    }

    v13 = v0[10];
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];

    v17 = v0[1];

    return v17(v16, v15, v13, v14);
  }

  else
  {
    v18 = (*(**(v0[4] + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_tosHTMLManager) + 192) + **(**(v0[4] + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_tosHTMLManager) + 192));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_2440897C0;
    v7 = v0[2];
    v6 = v0[3];

    return v18(v7, v6);
  }
}

uint64_t sub_2440897C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_2440898C0, 0, 0);
}

uint64_t sub_2440898C0()
{
  if (v0[14])
  {
    v1 = v0[5];
    v2 = sub_243F4DFA8();
    sub_243F5F574(v2, v1, &qword_27EDC0A50);
    v3 = sub_2440D11E0();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_243F5EED4(v0[5], &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "local TOS", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      v12 = v0[5];

      (*(v4 + 8))(v12, v3);
    }

    v7 = sub_2440D1140();
    v8 = v13;
    v5 = v0[13];
    v6 = v0[14];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v14 = v0[1];

  return v14(v5, v6, v7, v8);
}

uint64_t sub_244089AE8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_2440D0AC0();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v34 = sub_243F4DFA8();
  sub_243F5F574(v34, v13, &qword_27EDC0A50);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_243F5EED4(v13, &qword_27EDC0A50);
  }

  else
  {
    v32 = v3;
    v17 = v15;
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v33 = v14;
    v20 = v18 & 1;
    v15 = v17;
    v3 = v32;
    sub_243F4E308(v20, v32, 0xD00000000000001ALL, 0x80000002440ED710, v19, v21);
    v14 = v33;

    (*(v17 + 8))(v13, v14);
  }

  sub_2440D0A50();
  sub_2440D0A90();
  (*(v35 + 8))(v7, v36);
  sub_243F5F574(v34, v11, &qword_27EDC0A50);
  if (v16(v11, 1, v14) == 1)
  {
    sub_243F5EED4(v11, &qword_27EDC0A50);
    v22 = v37;
  }

  else
  {
    v22 = v37;

    v23 = v11;
    v24 = sub_2440D11C0();
    v25 = sub_2440D3490();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = a1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_243F4E6F8(v26, v22, &v38);
      _os_log_impl(&dword_243F48000, v24, v25, "RegistrationViewModel | Received update request - %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245D58570](v28, -1, -1);
      v29 = v27;
      a1 = v26;
      MEMORY[0x245D58570](v29, -1, -1);
    }

    (*(v15 + 8))(v23, v14);
  }

  return (*(*v3 + 808))(a1, v22);
}

uint64_t sub_244089F50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DFA8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x28495565736F6C63, 0xE900000000000029, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  sub_2440D1180();
  swift_allocObject();
  swift_weakInit();

  sub_2440D1160();
}

uint64_t sub_24408A120()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_243F4DFA8();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3490();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "RegistrationViewModel | Received close UI", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  sub_2440D2BA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFC8);
  sub_2440D16E0();
}

uint64_t sub_24408A32C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_243F4DFA8();
  sub_243F5F574(v4, v3, &qword_27EDC0A50);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v7 = sub_243F4E2F4();
    v8 = sub_243F4E2FC();
    sub_243F4E308(v7 & 1, v0, 0xD000000000000012, 0x80000002440ED730, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  return (*(*v0 + 784))(0);
}

uint64_t sub_24408A4F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_24408A538()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = sub_243F4DFA8();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    v12 = sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_243F4E2F4();
    v14 = sub_243F4E2FC();
    sub_243F4E308(v13 & 1, v1, 0x7070617369446E6FLL, 0xED00002928726165, v14, v15);

    v12 = (*(v10 + 8))(v7, v9);
  }

  v16 = (*(*v1 + 288))(v12);
  if (v16 != 4)
  {
    (*(*v1 + 296))(4);
    v17 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel_accountRegistered);
    sub_243F5F574(v8, v5, &qword_27EDC0A50);
    if (v11(v5, 1, v9) == 1)
    {
      sub_243F5EED4(v5, &qword_27EDC0A50);
      v18 = v1[2];
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = sub_243F4E2F4();
      v20 = sub_243F4E2FC();
      sub_243F4E308(v19 & 1, v1, 0xD000000000000033, 0x80000002440EE9E0, v20, v21);

      (*(v10 + 8))(v5, v9);
      v18 = v1[2];
      if (!v18)
      {
LABEL_10:
        v16 = (*(*v1 + 784))(1);
        return (*(*v1 + 776))(v16);
      }
    }

    [v18 regUIFinishedWithUserCancelled:0 regStatus:v17];
    goto LABEL_10;
  }

  return (*(*v1 + 776))(v16);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24408A8D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24408A918()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24408A958()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243F5DE2C;

  return sub_2440871C8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_24408AA00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24408AA40()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_2440883AC(v3, v4, v5, v2);
}

unint64_t sub_24408AAE0()
{
  result = qword_27EDC5950;
  if (!qword_27EDC5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5950);
  }

  return result;
}

uint64_t type metadata accessor for RegistrationViewModel()
{
  result = qword_27EDD2490;
  if (!qword_27EDD2490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24408AB94()
{
  sub_243FA3C90(319, &qword_27EDC5958);
  if (v0 <= 0x3F)
  {
    sub_243FA3C90(319, &qword_27EDC5960);
    if (v1 <= 0x3F)
    {
      sub_24408AD84();
      if (v2 <= 0x3F)
      {
        sub_243FA3C90(319, &qword_27EDBFF90);
        if (v3 <= 0x3F)
        {
          sub_24408ADE8();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24408AD84()
{
  if (!qword_27EDC5968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3DC0);
    v0 = sub_2440D1360();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC5968);
    }
  }
}

void sub_24408ADE8()
{
  if (!qword_27EDC5970)
  {
    type metadata accessor for HtmlContent();
    v0 = sub_2440D1360();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC5970);
    }
  }
}

uint64_t sub_24408AE4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24408AE94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24408AEF0@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    (*(*result + 784))(1);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_24408AF94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = (**(v0 + 16) + 528);
  v6 = *v5;
  v7 = *(*(*v5)() + 112);

  v7(v1, v2);

  v9 = *(*(v6)(v8) + 160);

  v9(v3, v4);
}

uint64_t objectdestroy_83Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24408B0F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = (**(v0 + 16) + 528);
  v6 = *v5;
  v7 = *(*(*v5)() + 136);

  v7(v1, v2);

  v9 = *(*(v6)(v8) + 160);

  v9(v3, v4);
}

unint64_t sub_24408B204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5988);
    v3 = sub_2440D3910();
    v4 = a1 + 32;

    while (1)
    {
      sub_243F5F574(v4, &v13, &qword_27EDC5980);
      v5 = v13;
      v6 = v14;
      result = sub_243FB03FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_243F734CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24408B334()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{

  return swift_deallocObject();
}

uint64_t sub_24408B3DC()
{

  return swift_deallocObject();
}

uint64_t NameDropSuppressor.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    NameDropSuppressor.stop()();
    v1 = *(v0 + 16);
  }

  return v0;
}

Swift::Void __swiftcall NameDropSuppressor.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_243F4E038();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
    v11 = *(v1 + 16);
    if (!v11)
    {
      return;
    }

LABEL_7:
    *(v1 + 16) = 0;
    v15 = sub_2440D3390();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v11;
    sub_243F54830(0, 0, v4, &unk_2440E5378, v16);

    return;
  }

  v12 = sub_2440D11C0();
  v13 = sub_2440D3460();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_243F48000, v12, v13, "NameDrop - Stop suppression", v14, 2u);
    MEMORY[0x245D58570](v14, -1, -1);
  }

  (*(v10 + 8))(v7, v9);
  v11 = *(v1 + 16);
  if (v11)
  {
    goto LABEL_7;
  }
}

uint64_t NameDropSuppressor.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    NameDropSuppressor.stop()();
    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NameDropSuppressor.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_243F4E038();
  sub_243F5F574(v6, v5, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3460();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "NameDrop - Start suppression", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = sub_2440D3390();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_243F54830(0, 0, v2, &unk_2440E5388, v14);
}

uint64_t sub_24408BA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24408BB04, 0, 0);
}

uint64_t sub_24408BB04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() sharedHardwareManager];
    v0[5] = 0;
    v4 = [v3 requestAssertion:3 error:v0 + 5];

    v5 = v0[5];
    if (!v4)
    {
      v16 = v0[7];
      v17 = v5;

      v18 = sub_2440D0550();

      swift_willThrow();
      v19 = sub_243F4E038();
      sub_243F5F574(v19, v16, &qword_27EDC0A50);
      v20 = sub_2440D11E0();
      v21 = *(v20 - 8);
      v22 = (*(v21 + 48))(v16, 1, v20);
      v23 = v0[7];
      if (v22 == 1)
      {

        sub_243F5EED4(v23, &qword_27EDC0A50);
      }

      else
      {
        v24 = v18;
        v25 = sub_2440D11C0();
        v26 = sub_2440D3470();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = v18;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_243F48000, v25, v26, "NameDrop - Could not suppress: [ %@ ]", v27, 0xCu);
          sub_243F5EED4(v28, &qword_27EDC0418);
          MEMORY[0x245D58570](v28, -1, -1);
          MEMORY[0x245D58570](v27, -1, -1);
        }

        else
        {
        }

        (*(v21 + 8))(v0[7], v20);
      }

      goto LABEL_15;
    }

    v6 = *(v2 + 16);
    *(v2 + 16) = v4;
    v7 = v5;
  }

  v8 = v0[8];
  v9 = sub_243F4E038();
  sub_243F5F574(v9, v8, &qword_27EDC0A50);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_243F5EED4(v0[8], &qword_27EDC0A50);
  }

  else
  {
    v12 = sub_2440D11C0();
    v13 = sub_2440D3460();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_243F48000, v12, v13, "NameDrop - Assertion received", v14, 2u);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    v15 = v0[8];

    (*(v11 + 8))(v15, v10);
  }

LABEL_15:

  v31 = v0[1];

  return v31();
}

uint64_t sub_24408BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24408BFE0, 0, 0);
}

uint64_t sub_24408BFE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_opt_self() sharedHardwareManager];
  v4 = [v3 releaseAssertion_];

  v5 = sub_243F4E038();
  sub_243F5F574(v5, v2, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_243F5EED4(v0[3], &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "NameDrop - Assertion released", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    v11 = v0[3];

    (*(v7 + 8))(v11, v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24408C1C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24408C200()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_24408BF44(v3, v4, v5, v2);
}

uint64_t sub_24408C2DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24408C314()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24408C354()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_24408BA30(v3, v4, v5, v2);
}

uint64_t type metadata accessor for WebContent()
{
  result = qword_27EDD25A0;
  if (!qword_27EDD25A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24408C470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2440D06F0();
  v4 = *(type metadata accessor for WebContent() + 20);
  v5 = sub_2440D05F0();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t sub_24408C4F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440D0700();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24408C55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2440D06E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return MEMORY[0x28211D040](a1 + v6, a2 + v6);
}

uint64_t sub_24408C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D0700();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2440D05F0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24408C6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2440D0700();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2440D05F0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24408C7D8()
{
  result = sub_2440D0700();
  if (v1 <= 0x3F)
  {
    result = sub_2440D05F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24408C888@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v65);
  v2 = &v65 - v1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A08);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v65 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59D8);
  MEMORY[0x28223BE20](v66);
  v72 = &v65 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59C8);
  MEMORY[0x28223BE20](v69);
  v73 = &v65 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59B8);
  MEMORY[0x28223BE20](v71);
  v74 = &v65 - v6;

  sub_24401FBC0();
  v7 = sub_24401FBD4();
  v9 = v8;
  v11 = v10;
  sub_2440D26A0();
  v12 = sub_2440D22C0();
  v14 = v13;
  v16 = v15;

  sub_243F62C68(v7, v9, v11 & 1);

  sub_2440D2150();
  v17 = sub_2440D22E0();
  v19 = v18;
  v21 = v20;

  sub_243F62C68(v12, v14, v16 & 1);

  sub_2440D21B0();
  v22 = sub_2440D22A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_243F62C68(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v77 = v26 & 1;
  v76 = 0;
  *&v78 = v22;
  *(&v78 + 1) = v24;
  LOBYTE(v79) = v26 & 1;
  *(&v79 + 1) = v28;
  *&v80 = KeyPath;
  *(&v80 + 1) = 0x3FD999999999999ALL;
  *&v81 = v30;
  *(&v81 + 1) = 1;
  LOBYTE(v82) = 0;
  v31 = *MEMORY[0x277CDF988];
  v32 = sub_2440D1770();
  (*(*(v32 - 8) + 104))(v2, v31, v32);
  sub_24408D778(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59E0);
    sub_24408D370();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v34 = v67;
    sub_2440D2420();
    sub_243F5EED4(v2, &qword_27EDC0010);
    v85[2] = v80;
    v85[3] = v81;
    v86 = v82;
    v85[0] = v78;
    v85[1] = v79;
    sub_243F5EED4(v85, &qword_27EDC59E0);
    sub_2440D2B00();
    sub_2440D18E0();
    v35 = v72;
    (*(v68 + 32))(v72, v34, v70);
    v36 = (v35 + *(v66 + 36));
    v37 = v83;
    v36[4] = v82;
    v36[5] = v37;
    v36[6] = v84;
    v38 = v79;
    *v36 = v78;
    v36[1] = v38;
    v39 = v81;
    v36[2] = v80;
    v36[3] = v39;
    v40 = sub_2440D20A0();
    sub_2440D13D0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v73;
    sub_243F681C8(v35, v73, &qword_27EDC59D8);
    v50 = v49 + *(v69 + 36);
    *v50 = v40;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44;
    *(v50 + 24) = v46;
    *(v50 + 32) = v48;
    *(v50 + 40) = 0;
    v51 = sub_2440D2660();
    LOBYTE(v35) = sub_2440D20B0();
    v52 = v74;
    sub_243F681C8(v49, v74, &qword_27EDC59C8);
    v53 = v52 + *(v71 + 36);
    *v53 = v51;
    *(v53 + 8) = v35;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59A0);
    v55 = v75;
    v56 = (v75 + *(v54 + 36));
    v57 = *(sub_2440D18B0() + 20);
    v58 = *MEMORY[0x277CE0118];
    v59 = sub_2440D1B90();
    (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
    __asm { FMOV            V0.2D, #15.0 }

    *v56 = _Q0;
    *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0) + 36)] = 256;
    return sub_243F681C8(v52, v55, &qword_27EDC59B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24408D04C()
{
  result = qword_27EDC59A8;
  if (!qword_27EDC59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59A0);
    sub_24408D104();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59A8);
  }

  return result;
}

unint64_t sub_24408D104()
{
  result = qword_27EDC59B0;
  if (!qword_27EDC59B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59B8);
    sub_24408D1BC();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59B0);
  }

  return result;
}

unint64_t sub_24408D1BC()
{
  result = qword_27EDC59C0;
  if (!qword_27EDC59C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59C8);
    sub_24408D248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59C0);
  }

  return result;
}

unint64_t sub_24408D248()
{
  result = qword_27EDC59D0;
  if (!qword_27EDC59D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_24408D370();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59D0);
  }

  return result;
}

unint64_t sub_24408D370()
{
  result = qword_27EDC59E8;
  if (!qword_27EDC59E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC59E0);
    sub_243F7C83C();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59E8);
  }

  return result;
}

uint64_t sub_24408D444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5998);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = v0[2];
  v12[1] = v0[1];
  v12[2] = v5;
  v12[0] = *v0;
  v13 = v12[0];
  v6 = swift_allocObject();
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  v10 = v12;
  sub_243FBCC0C(&v13, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC59A0);
  sub_24408D04C();
  sub_2440D2870();
  sub_243F5DD50(&qword_27EDC59F0, &qword_27EDC5998);
  sub_2440D24E0();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_24408D648()
{
  result = qword_27EDC59F8;
  if (!qword_27EDC59F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A00);
    sub_243F5DD50(&qword_27EDC59F0, &qword_27EDC5998);
    sub_24408D778(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC59F8);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{

  return swift_deallocObject();
}

uint64_t sub_24408D778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24408D7CC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_2440D2C80();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D1D50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440D1DD0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 3);
  if (!*(&v49 + 1))
  {
    sub_2440D1EB0();
    sub_2440D1660();
    v18 = v26;
    v20 = v27;
    v22 = v28;
    v24 = v29;
    (*(v14 + 8))(v16, v13);
    if (a1[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    v51.origin.x = v18;
    v51.origin.y = v20;
    v51.size.width = v22;
    v51.size.height = v24;
    MinY = CGRectGetMinY(v51);
    goto LABEL_6;
  }

  aBlock = v49;
  sub_2440D1EA0();
  sub_2440D1660();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v10 + 8))(v12, v9);
  if ((a1[5] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v50.origin.x = v18;
  v50.origin.y = v20;
  v50.size.width = v22;
  v50.size.height = v24;
  MinY = CGRectGetMaxY(v50);
LABEL_6:
  v30 = MinY;
  sub_243F5DB84();
  v31 = sub_2440D3530();
  v48 = *a1;
  v32 = swift_allocObject();
  v33 = *(a1 + 1);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v33;
  *(v32 + 41) = *(a1 + 25);
  *(v32 + 64) = v30;
  v46 = sub_244090ADC;
  v47 = v32;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v44 = sub_243F5F604;
  v45 = &block_descriptor_33;
  v34 = _Block_copy(&aBlock);
  sub_243F91DD4(&v48, v42);

  sub_243F5F574(&v49, v42, &qword_27EDC06A0);

  sub_2440D2C90();
  *&aBlock = MEMORY[0x277D84F90];
  sub_244090B54(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v35 = v40;
  sub_2440D3710();
  MEMORY[0x245D57440](0, v8, v5, v34);
  _Block_release(v34);

  (*(v39 + 8))(v5, v35);
  (*(v37 + 8))(v8, v38);
  result = sub_2440D2690();
  *v41 = result;
  return result;
}

uint64_t sub_24408DD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 40);
  v16 = *v2;
  v17 = *(v2 + 3);
  v8 = swift_allocObject();
  *(v8 + 16) = v16;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = *(v2 + 3);
  *(v8 + 56) = v7;
  sub_243F91DD4(&v16, v15);

  sub_243F5F574(&v17, v15, &qword_27EDC06A0);
  v9 = sub_2440D2AE0();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A10);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A18);
  v14 = (a2 + *(result + 36));
  *v14 = sub_244090BB4;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v11;
  return result;
}

uint64_t sub_24408DE50@<X0>(double a1@<X1>, double a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  sub_2440D1650();
  v14 = v13;
  if ((a3 & 1) == 0 || (v21[1] = a1, v21[2] = a2, v21[3] = a5, v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1738), MEMORY[0x245D56840](v21, v15), v21[0] < v14))
  {
    v16 = sub_2440D3390();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_2440D3360();

    v17 = sub_2440D3350();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 48) = a5;
    *(v18 + 56) = a3 & 1;
    *(v18 + 64) = v14;
    sub_243F54830(0, 0, v12, &unk_2440E5A98, v18);
  }

  result = sub_2440D2690();
  *a4 = result;
  return result;
}

uint64_t sub_24408E010(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  sub_2440D3360();
  *(v7 + 80) = sub_2440D3350();
  v9 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_24408E0AC, v9, v8);
}

uint64_t sub_24408E0AC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1738);
  sub_2440D2950();
  v5 = v0[1];

  return v5();
}

uint64_t sub_24408E15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;

  v10 = sub_2440D2B00();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A20);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A28);
  v15 = (a2 + *(result + 36));
  *v15 = sub_244090B9C;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_24408E260()
{
  v0 = sub_2440D1770();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF9D8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A30);
  sub_243F5DD50(&qword_27EDC5A38, &qword_27EDC5A30);
  sub_2440D2410();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24408E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F18);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_2440D1770();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F20);
  MEMORY[0x28223BE20](v23);
  v16 = &v22 - v15;
  v17 = v9[13];
  v17(v14, *MEMORY[0x277CDF9D8], v8);
  v17(v12, *MEMORY[0x277CDFA00], v8);
  sub_244090B54(&qword_27EDC0F70, MEMORY[0x277CDFA28]);
  result = sub_2440D2F30();
  if (result)
  {
    v19 = v9[4];
    v19(v7, v14, v8);
    v19(&v7[*(v2 + 48)], v12, v8);
    sub_243F5F574(v7, v5, &qword_27EDC0F18);
    v20 = *(v2 + 48);
    v19(v16, v5, v8);
    v21 = v9[1];
    v21(&v5[v20], v8);
    sub_24408E778(v7, v5);
    v19(&v16[*(v23 + 36)], &v5[*(v2 + 48)], v8);
    v21(v5, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A40);
    sub_243F5DD50(&qword_27EDC5A48, &qword_27EDC5A40);
    sub_243F5DD50(&qword_27EDC0F80, &qword_27EDC0F20);
    sub_2440D2420();
    return sub_243F5EED4(v16, &qword_27EDC0F20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24408E778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24408E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A50);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A58);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  if (a2)
  {

    sub_24401FBC0();
    v11 = sub_24401FBD4();
    v18[0] = a3;
    v18[1] = v8;
    v13 = v12;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A60);
    sub_243F5DD50(&qword_27EDC5A70, &qword_27EDC5A60);
    sub_2440D2430();
    sub_243F62C68(v11, v13, v15 & 1);

    sub_243F5F574(v10, v7, &qword_27EDC5A58);
    swift_storeEnumTagMultiPayload();
    sub_24408EACC();
    sub_2440D1D20();
    return sub_243F5EED4(v10, &qword_27EDC5A58);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A60);
    (*(*(v17 - 8) + 16))(v7, v19, v17);
    swift_storeEnumTagMultiPayload();
    sub_24408EACC();
    sub_243F5DD50(&qword_27EDC5A70, &qword_27EDC5A60);
    return sub_2440D1D20();
  }
}

unint64_t sub_24408EACC()
{
  result = qword_27EDC5A68;
  if (!qword_27EDC5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A58);
    sub_243F5DD50(&qword_27EDC5A70, &qword_27EDC5A60);
    sub_244090B54(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5A68);
  }

  return result;
}

uint64_t sub_24408EBBC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2440D1670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  v27 = *a2;
  v28 = *(a2 + 2);
  v25 = *a2;
  v26 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25B8);
  sub_2440D2820();
  v14 = *v24;
  v13 = *&v24[1];
  sub_2440D1650();
  if (v14 != v16 || v13 != v15)
  {
    v17 = sub_2440D3390();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    (*(v7 + 16))(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_2440D3360();
    sub_243F5F574(&v27, &v25, &qword_27EDC25B8);

    v18 = sub_2440D3350();
    v19 = (*(v7 + 80) + 72) & ~*(v7 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v18;
    *(v20 + 24) = v21;
    v22 = a2[1];
    *(v20 + 32) = *a2;
    *(v20 + 48) = v22;
    *(v20 + 64) = *(a2 + 4);
    (*(v7 + 32))(v20 + v19, v9, v6);
    sub_243F54830(0, 0, v12, &unk_2440E5A78, v20);
  }

  result = sub_2440D2690();
  *a3 = result;
  return result;
}

uint64_t sub_24408EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_2440D3360();
  v5[14] = sub_2440D3350();
  v7 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_24408EF08, v7, v6);
}

uint64_t sub_24408EF08()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 3);
  v3 = *(v1 + 2);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  v4 = *v1;
  *(v0 + 56) = *(v1 + 2);
  *(v0 + 40) = v4;
  *(v0 + 80) = *(v0 + 32);
  sub_243F5F574(v0 + 80, v0 + 88, &qword_27EDC5B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25B8);
  sub_2440D2820();
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = sub_2440D1650();
  v2(v7, v5, v6, v8, v9);
  sub_2440D1650();
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 32);
  *(v0 + 64) = v10;
  *(v0 + 72) = v11;
  sub_2440D2830();
  sub_243F5EED4(v0 + 16, &qword_27EDC25B8);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24408F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  v15 = *v2;
  v16 = *(v2 + 2);
  v6 = swift_allocObject();
  v7 = v2[1];
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = v5;
  sub_243F5F574(&v15, v14, &qword_27EDC25B8);

  v8 = sub_2440D2B00();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A78);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A80);
  v13 = (a2 + *(result + 36));
  *v13 = sub_244090BB0;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  return result;
}

uint64_t sub_24408F184(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v7[0] = a1;
  v7[1] = a2;
  *&v7[2] = a6;
  v8 = a3;
  return MEMORY[0x245D564C0](v7, a4, &type metadata for HeightObserver, a5);
}

uint64_t sub_24408F1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CGSize(0);
  v12 = 0;
  v13 = 0;
  sub_2440D2810();
  v10 = a1;
  v11 = a2;

  MEMORY[0x245D564C0](&v9, a3, &type metadata for ViewSizeObserver, a4);
}

uint64_t sub_24408F2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x245D564C0](v4, a3, &type metadata for AddAccessibilityLabelIfProvided);
}

uint64_t sub_24408F2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v33 = a1;
  v4 = sub_2440D1760();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D1460();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A88);
  v12 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5A90);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF968], v4);
  sub_2440D1420();
  v19 = swift_allocObject();
  v20 = v3[1];
  v19[1] = *v3;
  v19[2] = v20;
  v21 = v3[3];
  v19[3] = v3[2];
  v19[4] = v21;
  sub_24408F9C8(v3, v34);
  sub_244090B54(&qword_27EDC5098, MEMORY[0x277CDD730]);
  sub_244090B54(&qword_27EDC5A98, MEMORY[0x277CDD708]);
  sub_2440D29E0();

  (*(v9 + 8))(v11, v8);
  v22 = swift_allocObject();
  v23 = v3[1];
  v22[1] = *v3;
  v22[2] = v23;
  v24 = v3[3];
  v22[3] = v3[2];
  v22[4] = v24;
  sub_24408F9C8(v3, v34);
  sub_243F5DD50(&qword_27EDC5AA0, &qword_27EDC5A88);
  v25 = v29;
  sub_2440D29D0();

  (*(v12 + 8))(v14, v25);
  sub_2440D1480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5AA8);
  sub_243F5DD50(&qword_27EDC5AB0, &qword_27EDC5AA8);
  sub_243F5DD50(&qword_27EDC5AB8, &qword_27EDC5A90);
  v26 = v30;
  sub_2440D2580();
  return (*(v31 + 8))(v18, v26);
}

uint64_t sub_24408F7A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_2440D1450();
  v16.x = v5;
  v16.y = v6;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  if (CGRectContainsPoint(v18, v16))
  {
    v14 = *(v0 + 16);
    v12 = *(v0 + 16);
    v15 = *(&v14 + 1);
    sub_243F5F574(&v15, &v11, &qword_27EDC1348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2820();
    if (v11 != 1)
    {
      v12 = v14;
      LOBYTE(v11) = 1;
      sub_2440D2830();
      sub_243F5EED4(&v14, &qword_27EDC01B0);
      return (*(v0 + 64))(1, 0);
    }

    sub_243F5EED4(&v14, &qword_27EDC01B0);
  }

  sub_2440D1450();
  v17.x = v7;
  v17.y = v8;
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  result = CGRectContainsPoint(v19, v17);
  if ((result & 1) == 0)
  {
    v11 = *(v0 + 16);
    v12 = v11;
    v13 = *(&v11 + 1);
    sub_243F5F574(&v13, v10, &qword_27EDC1348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2820();
    if (v10[0] == 1)
    {
      v11 = v12;
      v10[0] = 0;
      sub_2440D2830();
      sub_243F5EED4(&v12, &qword_27EDC01B0);
      return (*(v0 + 64))(0, 0);
    }

    else
    {
      return sub_243F5EED4(&v12, &qword_27EDC01B0);
    }
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_24408FA44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2830();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_2440D1450();
  v9.x = v5;
  v9.y = v6;
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  v7 = CGRectContainsPoint(v10, v9);
  return (*(v0 + 64))(0, v7);
}

unint64_t sub_24408FBA4()
{
  result = qword_27EDC5AC0;
  if (!qword_27EDC5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5AC0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24408FC64(uint64_t a1, int a2)
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

uint64_t sub_24408FCAC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24408FD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24408FD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24408FDE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24408FE30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_24408FEAC()
{
  result = qword_27EDC5AC8;
  if (!qword_27EDC5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A18);
    sub_243F5DD50(&qword_27EDC5AD0, &qword_27EDC5A10);
    sub_243F5DD50(&qword_27EDC5AD8, &qword_27EDC5AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5AC8);
  }

  return result;
}

unint64_t sub_24408FF94()
{
  result = qword_27EDC5AE8;
  if (!qword_27EDC5AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A28);
    sub_243F5DD50(&qword_27EDC5AF0, &qword_27EDC5A20);
    sub_243F5DD50(&qword_27EDC5AF8, &qword_27EDC5B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5AE8);
  }

  return result;
}

uint64_t sub_244090078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A30);
  sub_243F5DD50(&qword_27EDC5A38, &qword_27EDC5A30);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_244090110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0F20);
  sub_243F5DD50(&qword_27EDC5A48, &qword_27EDC5A40);
  sub_243F5DD50(&qword_27EDC0F80, &qword_27EDC0F20);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_244090204()
{
  result = qword_27EDC5B08;
  if (!qword_27EDC5B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5B10);
    sub_24408EACC();
    sub_243F5DD50(&qword_27EDC5A70, &qword_27EDC5A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B08);
  }

  return result;
}

unint64_t sub_2440902C0()
{
  result = qword_27EDC5B18;
  if (!qword_27EDC5B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A80);
    sub_243F5DD50(&qword_27EDC5B20, &qword_27EDC5A78);
    sub_243F5DD50(&qword_27EDC5AF8, &qword_27EDC5B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B18);
  }

  return result;
}

unint64_t sub_2440903C4()
{
  result = qword_27EDC5B28;
  if (!qword_27EDC5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B28);
  }

  return result;
}

unint64_t sub_244090438()
{
  result = qword_27EDC5B30;
  if (!qword_27EDC5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B30);
  }

  return result;
}

unint64_t sub_2440904AC()
{
  result = qword_27EDC5B38;
  if (!qword_27EDC5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B38);
  }

  return result;
}

unint64_t sub_244090520()
{
  result = qword_27EDC5B40;
  if (!qword_27EDC5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx017ContactlessReaderB019ScrollOffsetModiferVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_2440D1810();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_244090604()
{
  result = qword_27EDC5B48;
  if (!qword_27EDC5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5B48);
  }

  return result;
}

uint64_t sub_244090658()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5AA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5A90);
  sub_243F5DD50(&qword_27EDC5AB0, &qword_27EDC5AA8);
  sub_243F5DD50(&qword_27EDC5AB8, &qword_27EDC5A90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_2440907DC()
{
  v1 = sub_2440D1670();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2440908B0()
{
  v2 = *(sub_2440D1670() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_24408EE70(v4, v5, v6, v0 + 32, v0 + v3);
}

uint64_t sub_24409097C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2440909C4()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243F5DE2C;

  return sub_24408E010(v4, v5, v6, v7, v8, v2, v3);
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244090B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_244090BF0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_244090C60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244090D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244090E58(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__tapUIIsPresented;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244090FDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_244091098(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244091158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244091290(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__showPIN;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

__n128 sub_244091400@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 192) = v15;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_244091508@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 472))(v9);
  v3 = v9[11];
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v3;
  *(a2 + 192) = v10;
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  v5 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v5;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_2440915B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v2;
  v3 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v12 = *(a1 + 192);
  v5 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = *(**a2 + 480);
  sub_243F5F574(v11, v10, &qword_27EDC50C0);
  return v8(v11);
}

uint64_t sub_244091678()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24409171C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

double sub_2440917C0(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_244091800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B60);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244091938(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B68);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__transactionDetails;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B60);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244091AA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244091B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_244091B70(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 528);

  return v2(v3);
}

uint64_t sub_244091BCC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_244091C3C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244091CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B78);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244091E34(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__additionalDetailsText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B78);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

double sub_244091FA4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_244092030()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440920AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_24409216C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440922A4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__readerStateModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t (*sub_24409243C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440924FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244092634(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__particlesState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_2440927B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_244092810()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_2440928B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_2440929EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244092A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result;
  return result;
}

uint64_t sub_244092AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244092B30()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244092BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B88);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

__n128 sub_244092CF4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_244092D8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 760))(v7);
  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_244092E00(_OWORD *a1)
{
  v2 = a1[3];
  v10[2] = a1[2];
  v10[3] = v2;
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[3];
  v9[8] = a1[2];
  v9[9] = v5;
  v6 = a1[5];
  v9[10] = a1[4];
  v9[11] = v6;
  v7 = a1[1];
  v9[6] = *a1;
  v9[7] = v7;

  sub_243F5F574(v10, v9, &qword_27EDBFF68);
  return sub_2440D1350();
}

uint64_t sub_244092EC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244092F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3270);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440930C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244093184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5BA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B98);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440932BC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5BA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B98);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244093440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 856))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_2440934FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440935BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440936F4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__orientationInverted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244093878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2440938CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 912);

  return v4(v2, v3);
}

uint64_t (*sub_244093950(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244093A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244093B48(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerTextKey;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244093CCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 952))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_244093D20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 960);

  return v4(v2, v3);
}

uint64_t (*sub_244093DA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244093E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244093F9C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextLabel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244094120()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_24409418C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1000))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2440941E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1008);

  return v4(v2, v3);
}

uint64_t sub_244094264()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440942DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24409439C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440944D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24409468C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_rotationManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_244094744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5BA8);
  v1 = 0;
  return sub_24406DE98(&v1);
}

uint64_t sub_24409478C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2440947CC(a1);
  return v2;
}

uint64_t sub_2440947CC(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B98);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B88);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v60 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B78);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v57 = &v55 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B60);
  v17 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  *(v2 + 16) = 0;
  v24 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__tapUIIsPresented;
  LOBYTE(v92[0]) = 0;
  sub_2440D1300();
  v25 = *(v21 + 32);
  v25(v2 + v24, v23, v20);
  v26 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__showPIN;
  LOBYTE(v92[0]) = 0;
  sub_2440D1300();
  v25(v2 + v26, v23, v20);
  v27 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__transactionDetails;
  sub_2440917C0(v92);
  v89 = v92[10];
  v90 = v92[11];
  v91 = v93;
  v85 = v92[6];
  v86 = v92[7];
  v87 = v92[8];
  v88 = v92[9];
  v81 = v92[2];
  v82 = v92[3];
  v83 = v92[4];
  v84 = v92[5];
  v79 = v92[0];
  v80 = v92[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50C0);
  sub_2440D1300();
  (*(v17 + 32))(v2 + v27, v19, v56);
  v28 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__additionalDetailsText;
  *&v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B70);
  v29 = v57;
  sub_2440D1300();
  (*(v58 + 32))(v2 + v28, v29, v59);
  v30 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__readerStateModel;
  sub_2440BD1F4(0, 0, 0, 0, 0, 2, &v79);
  v31 = v60;
  sub_2440D1300();
  (*(v61 + 32))(v2 + v30, v31, v62);
  v32 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__particlesState;
  LOBYTE(v79) = 1;
  v33 = v63;
  sub_2440D1300();
  (*(v64 + 32))(v2 + v32, v33, v65);
  v34 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__showCancelButton;
  LOBYTE(v79) = 0;
  sub_2440D1300();
  v25(v2 + v34, v23, v20);
  v35 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__vasMerchantNames;
  v36 = MEMORY[0x277D84F90];
  *&v79 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4B00);
  v37 = v66;
  sub_2440D1300();
  (*(v67 + 32))(v2 + v35, v37, v68);
  v38 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__tapUIError;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF68);
  v39 = v69;
  sub_2440D1300();
  (*(v70 + 32))(v2 + v38, v39, v71);
  v40 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerState;
  LOBYTE(v79) = 0;
  v41 = v72;
  sub_2440D1300();
  (*(v73 + 32))(v2 + v40, v41, v74);
  v42 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__orientationInverted;
  LOBYTE(v79) = 0;
  sub_2440D1300();
  v25(v2 + v42, v23, v20);
  v43 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerTextKey;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  v44 = v75;
  sub_2440D1300();
  v45 = v77;
  v46 = *(v76 + 32);
  v46(v2 + v43, v44, v77);
  v47 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextLabel;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_2440D1300();
  v46(v2 + v47, v44, v45);
  v48 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextValue;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_2440D1300();
  v46(v2 + v48, v44, v45);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_axOngoingAnnouncement) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_closeAfterAXAnnouncement) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_showPINAfterAXAnnouncement) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_voiceOverIsRunning) = 0;
  v49 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_delayedAXLabelUpdate);
  *v49 = 0u;
  v49[1] = 0u;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_notificationObservers) = v36;
  v50 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_playSound;
  type metadata accessor for PlaySound();
  *(v2 + v50) = sub_243FE6938();
  v51 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_rotationManager;
  type metadata accessor for FineRotationManager(0);
  *(v2 + v51) = sub_243F7E4B0();
  v52 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximitySensorObserver;
  type metadata accessor for ProximitySensorObserver();
  *(v2 + v52) = sub_2440464A0();
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_sensorObscured) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximityCounter) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cardTearCounter) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_ignoreProxUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_transientCenterStateTimer) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_showGuidanceTimerStarted) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_showGuidanceTimer) = 0;
  v53 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer);
  *v53 = 0;
  v53[1] = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_stateMachine) = v78;
  return v2;
}

uint64_t sub_2440951D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  (*(*v0 + 1488))(v3);
  v6 = sub_243F4DF28();
  sub_243F5F574(v6, v5, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3460();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "TapViewModel: destroyed", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__tapUIIsPresented;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v12, v13);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__showPIN, v13);
  v15 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__transactionDetails;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B60);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__additionalDetailsText;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B78);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__readerStateModel;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__particlesState;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__showCancelButton, v13);
  v23 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__vasMerchantNames;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B88);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v25 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__tapUIError;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v27 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerState;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5B98);
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  v14(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__orientationInverted, v13);
  v29 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__centerTextKey;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908);
  v31 = *(*(v30 - 8) + 8);
  v31(v1 + v29, v30);
  v31(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextLabel, v30);
  v31(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel__axTransactionContextValue, v30);
  sub_2440957AC(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_delayedAXLabelUpdate), *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_delayedAXLabelUpdate + 8));

  sub_243F7EE58(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer));

  return v1;
}

uint64_t sub_2440957AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2440957F0()
{
  sub_2440951D8();

  return swift_deallocClassInstance();
}

uint64_t sub_244095848()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_243F4DF28();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0x2870756E61656C63, 0xE900000000000029, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  (*(*v1 + 1616))(v8);
  v12 = sub_243FA9620();
  swift_beginAccess();
  v13 = *(**v12 + 496);

  v13(v14);

  v16 = (*(*v1 + 1496))(v15);
  v17 = *(*(*v1 + 1240))(v16);
  (*(v17 + 264))();

  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_subscriptions) = MEMORY[0x277D84FA0];

  v19 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer);
  if (v19)
  {

    v19(v20);
    return sub_243F7EE58(v19);
  }

  return result;
}

uint64_t sub_244095B58()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_notificationObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v2 + 32;

    do
    {
      sub_243F4F028(v5, v9);
      v6 = [v4 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v7 = sub_2440D3A00();
      __swift_destroy_boxed_opaque_existential_0(v9);
      [v6 removeObserver_];

      swift_unknownObjectRelease();
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_axOngoingAnnouncement) = 0;
  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_244095C80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DF28();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x61486C6C61436E69, 0xEF292872656C646ELL, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  [v1 closeUI];
  return 1;
}

uint64_t sub_244095E0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_243F4DF28();
  sub_243F5F574(v4, v3, &qword_27EDC0A50);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v7 = sub_243F4E2F4();
    v8 = sub_243F4E2FC();
    sub_243F4E308(v7 & 1, v0, 0xD000000000000013, 0x80000002440EEDA0, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  sub_244095F94();
  return 1;
}

void *sub_244095F94()
{
  v1 = (*(*v0 + 1616))();
  v2 = (*(*v0 + 808))(v1);
  v3 = sub_243FA1978(v2, 1);
  if (v3)
  {
    sub_2440D1010();
    v4 = (*(*v0 + 352))();
    if (v4)
    {
      v5 = v4;
      v6 = sub_2440D2F80();

      [v5 reportGuidanceUpdateWithVisible:0 trigger:v6];

      v3 = swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  result = (*(*v0 + 352))(v3);
  if (result)
  {
    [result tapUIRequestingCancel];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_244096108()
{
  v1 = sub_2440D2C80();
  v107 = *(v1 - 8);
  v108 = v1;
  MEMORY[0x28223BE20](v1);
  v105 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2440D2CA0();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TransactionContext(0);
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x28223BE20](v4);
  v110 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v101 - v9;
  v119 = type metadata accessor for TapContext(0);
  v115 = *(v119 - 8);
  v10 = MEMORY[0x28223BE20](v119);
  v102 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v113 = &v101 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v101 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v101 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v101 - v24;
  v122 = sub_243F4DF28();
  sub_243F5F574(v122, v25, &qword_27EDC0A50);
  v26 = sub_2440D11E0();
  v27 = *(v26 - 8);
  v123 = *(v27 + 48);
  v28 = v123(v25, 1, v26);
  v124 = v0;
  v120 = v27;
  v121 = v26;
  if (v28 == 1)
  {
    sub_243F5EED4(v25, &qword_27EDC0A50);
  }

  else
  {
    v29 = sub_243F4E2F4();
    v30 = sub_243F4E2FC();
    sub_243F4E308(v29 & 1, v0, 0x72756769666E6F63, 0xEB00000000292865, v30, v31);

    (*(v27 + 8))(v25, v26);
  }

  v32 = sub_243FA9620();
  swift_beginAccess();
  v33 = *v32;
  v34 = *(**v32 + 208);

  if (v34(v35))
  {
    v36 = v124;
    v37 = *(*v124 + 360);

    v38 = v37();
    v39 = v34(v38);
    if (v39)
    {
      (*(*v39 + 224))(v36);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = sub_2440A736C;
    *(v40 + 24) = v36;
    v41 = *(*v33 + 472);

    v41(&unk_2440E5F28, v40);

    v42 = *(*v33 + 480);

    v42(sub_2440AB06C, v36);

    v44 = (*(*v33 + 304))(v43);
    v45 = v121;
    if (v44)
    {
      v46 = v44;
      (*((*MEMORY[0x277D85000] & *v44) + 0xF0))();
    }

    sub_243F5F574(v122, v23, &qword_27EDC0A50);
    if (v123(v23, 1, v45) == 1)
    {
      sub_243F5EED4(v23, &qword_27EDC0A50);
      v47 = v124;
    }

    else
    {
      v50 = sub_2440D11C0();
      v51 = sub_2440D3490();
      v52 = os_log_type_enabled(v50, v51);
      v47 = v124;
      if (v52)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_243F48000, v50, v51, "registering inCallHandler for TapUI", v53, 2u);
        MEMORY[0x245D58570](v53, -1, -1);
      }

      (*(v120 + 8))(v23, v45);
    }

    v54 = v119;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2440A747C;
    *(v55 + 24) = v47;
    v56 = *(*v33 + 488);

    v56(&unk_2440E5F30, v55);

    v58 = v114;
    (*(*v33 + 256))(v57);
    if ((*(v116 + 48))(v58, 1, v117))
    {
      sub_243F5EED4(v58, &qword_27EDBFFD0);
      v59 = v118;
      (*(v115 + 56))(v118, 1, 1, v54);
LABEL_19:
      sub_243F5EED4(v59, &qword_27EDC1A38);
      v61 = v113;
      sub_243F5F574(v122, v113, &qword_27EDC0A50);
      if (v123(v61, 1, v45) == 1)
      {
        sub_243F5EED4(v61, &qword_27EDC0A50);
      }

      else
      {
        v62 = sub_2440D11C0();
        v63 = sub_2440D3470();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_243F48000, v62, v63, "AppManager's TransactionStore is nil", v64, 2u);
          MEMORY[0x245D58570](v64, -1, -1);
        }

        (*(v120 + 8))(v61, v45);
      }

      [v47 closeUI];
    }

    v60 = v110;
    sub_2440A77C8(v58, v110, type metadata accessor for TransactionContext);
    sub_243F5EED4(v58, &qword_27EDBFFD0);
    v59 = v118;
    sub_243F5F574(v60, v118, &qword_27EDC1A38);
    sub_243FAE018(v60, type metadata accessor for TransactionContext);
    if ((*(v115 + 48))(v59, 1, v54) == 1)
    {
      goto LABEL_19;
    }

    v70 = v112;
    sub_2440A7554(v59, v112);
    v71 = v109;
    sub_243F5F574(v122, v109, &qword_27EDC0A50);
    if (v123(v71, 1, v45) == 1)
    {
      sub_243F5EED4(v71, &qword_27EDC0A50);
    }

    else
    {
      v72 = v102;
      sub_2440A77C8(v70, v102, type metadata accessor for TapContext);
      v73 = sub_2440D11C0();
      v74 = sub_2440D3460();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 67109120;
        v76 = *(v72 + *(v54 + 24));
        sub_243FAE018(v72, type metadata accessor for TapContext);
        *(v75 + 4) = v76;
        v71 = v109;
        _os_log_impl(&dword_243F48000, v73, v74, "updating playSound - %{BOOL}d", v75, 8u);
        v77 = v75;
        v70 = v112;
        MEMORY[0x245D58570](v77, -1, -1);
      }

      else
      {
        sub_243FAE018(v72, type metadata accessor for TapContext);
      }

      (*(v120 + 8))(v71, v45);
    }

    v78 = *(v70 + *(v54 + 24));
    v79 = v70;
    v80 = *(**&v47[OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_playSound] + 104);

    v80(v78);

    type metadata accessor for TransactionDetailsFactory();
    sub_243FFED28(v79, v127);
    type metadata accessor for TransactionAmountDescriptionTextFactory();
    v81 = sub_243F62E08();
    sub_243F9B2E8(0, &qword_27EDC6160);
    v124 = sub_2440D3530();
    v82 = swift_allocObject();
    v83 = v127[8];
    *(v82 + 168) = v127[9];
    v84 = v127[11];
    *(v82 + 184) = v127[10];
    *(v82 + 200) = v84;
    v85 = v127[4];
    *(v82 + 104) = v127[5];
    v86 = v127[7];
    *(v82 + 120) = v127[6];
    *(v82 + 136) = v86;
    *(v82 + 152) = v83;
    v87 = v127[0];
    *(v82 + 40) = v127[1];
    v88 = v127[3];
    *(v82 + 56) = v127[2];
    *(v82 + 72) = v88;
    *(v82 + 88) = v85;
    *(v82 + 16) = v47;
    v89 = v128;
    *(v82 + 24) = v87;
    *(v82 + 216) = v89;
    *(v82 + 224) = v81;
    v126[4] = sub_2440A7658;
    v126[5] = v82;
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 1107296256;
    v126[2] = sub_243F5F604;
    v126[3] = &block_descriptor_34;
    v90 = _Block_copy(v126);

    sub_243FB07E4(v127, v125);

    v91 = v103;
    sub_2440D2C90();
    v125[0] = MEMORY[0x277D84F90];
    sub_2440AAFA4(&qword_27EDC0510, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
    v92 = v105;
    v93 = v108;
    sub_2440D3710();
    v94 = v124;
    MEMORY[0x245D57440](0, v91, v92, v90);
    _Block_release(v90);

    (*(v107 + 8))(v92, v93);
    (*(v104 + 8))(v91, v106);
    v95 = sub_2440A2AC4();
    v96 = (*(*v47 + 1600))(v95);
    v97 = (*(*v47 + 1528))(v96);
    v98 = *(*(*v47 + 1240))(v97);
    (*(v98 + 256))();

    v100 = (*(*v47 + 352))(v99);
    if (v100)
    {
      [v100 uiDidLoad];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_243FD59CC(v127);

    return sub_243FAE018(v112, type metadata accessor for TapContext);
  }

  else
  {
    sub_243F5F574(v122, v16, &qword_27EDC0A50);
    v48 = v121;
    if (v123(v16, 1, v121) == 1)
    {
      sub_243F5EED4(v16, &qword_27EDC0A50);
      v49 = v124;
    }

    else
    {
      v66 = sub_2440D11C0();
      v67 = sub_2440D3470();
      v68 = os_log_type_enabled(v66, v67);
      v49 = v124;
      if (v68)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_243F48000, v66, v67, "Merchantd proxy unavailable", v69, 2u);
        MEMORY[0x245D58570](v69, -1, -1);
      }

      (*(v120 + 8))(v16, v48);
    }

    [v49 closeUI];
  }
}

uint64_t sub_2440972CC(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_244097338()
{
  v1 = v0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B8);
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2440E5AA0;
  (*(**(v0 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximitySensorObserver) + 160))();
  swift_allocObject();
  swift_weakInit();
  sub_243F5DD50(&qword_27EDC5BB0, &qword_27EDC46A0);
  v10 = sub_2440D1370();

  v11 = (*(v6 + 8))(v8, v5);
  *(inited + 32) = v10;
  v12 = (*(*v1 + 1240))(v11);
  (*(*v12 + 160))(v12);

  swift_allocObject();
  swift_weakInit();
  sub_243F5DD50(&qword_27EDC5BB8, &qword_27EDC09B8);
  v13 = v18;
  v14 = sub_2440D1370();

  (*(v2 + 8))(v4, v13);
  *(inited + 40) = v14;
  v15 = sub_243FDEEB0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_subscriptions) = v15;
}

uint64_t sub_2440976D4(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = *a1;
  v6 = sub_243F4DF28();
  sub_243F5F574(v6, v4, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v11 = 136315138;
      v31 = v5;
      v12 = sub_2440D3040();
      v14 = sub_243F4E6F8(v12, v13, v32);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_243F48000, v9, v10, "ProximitySensorObserver event: %s", v11, 0xCu);
      v15 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x245D58570](v15, -1, -1);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  if (v5)
  {
    if (v5 == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_25;
      }

      *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_sensorObscured) = 1;
    }

    else
    {
      swift_beginAccess();
      v25 = swift_weakLoadStrong();
      if (!v25)
      {
        goto LABEL_25;
      }

      v26 = *(v25 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_ignoreProxUpdates);

      if (v26 != 1)
      {
        goto LABEL_25;
      }

      swift_beginAccess();
      v27 = swift_weakLoadStrong();
      if (v27)
      {
        *(v27 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_ignoreProxUpdates) = 0;
      }

      swift_beginAccess();
      v28 = swift_weakLoadStrong();
      if (!v28)
      {
        goto LABEL_25;
      }

      *(v28 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cardTearCounter) = 0;
      *(v28 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximityCounter) = 0;
      *(v28 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_sensorObscured) = 0;
    }
  }

  else
  {
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      *(v17 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_ignoreProxUpdates) = 0;
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = *(result + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximityCounter);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        return result;
      }

      *(result + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_proximityCounter) = v21;
    }

    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer);
      sub_243F7EE68(v23);

      if (v23)
      {
        v23(v24);
        sub_243F7EE58(v23);
      }
    }
  }

LABEL_25:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2440A1CE0();
  }

  return result;
}

uint64_t sub_244097AD0()
{
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cardTearCounter) > 1)
  {
    return 0x435F535554415453;
  }

  v1 = 0xD000000000000015;
  v2 = (*v0 + 472);
  v3 = *v2;
  (*v2)(&v79);
  v4 = v79;
  v76 = v89;
  v77 = v90;
  *v78 = *v91;
  *&v78[15] = *&v91[15];
  v72 = v85;
  v73 = v86;
  v74 = v87;
  v75 = v88;
  v68 = v81;
  v69 = v82;
  v70 = v83;
  v71 = v84;
  v67 = v80;
  v66 = v79;
  if (sub_244067B58(&v66) == 1)
  {
    *&v118[145] = v89;
    *&v118[161] = v90;
    *&v118[177] = *v91;
    *&v118[81] = v85;
    *&v118[97] = v86;
    *&v118[113] = v87;
    *&v118[129] = v88;
    *&v118[17] = v81;
    *&v118[33] = v82;
    *&v118[49] = v83;
    *&v118[65] = v84;
    v118[0] = v4;
    *&v118[192] = *&v91[15];
    *&v118[1] = v80;
    v5 = sub_243F5EED4(v118, &qword_27EDC50C0);
    goto LABEL_5;
  }

  *&v118[145] = v89;
  *&v118[161] = v90;
  *&v118[177] = *v91;
  *&v118[81] = v85;
  *&v118[97] = v86;
  *&v118[113] = v87;
  *&v118[129] = v88;
  *&v118[17] = v81;
  *&v118[33] = v82;
  *&v118[49] = v83;
  *&v118[65] = v84;
  v118[0] = v4;
  *&v118[192] = *&v91[15];
  *&v118[1] = v80;
  sub_243F5EED4(v118, &qword_27EDC50C0);
  v8 = sub_2440D0FB0();
  v10 = v9;
  if (v8 == sub_2440D0FB0() && v10 == v11)
  {

    return 0xD000000000000019;
  }

  v16 = sub_2440D3A10();

  if (v16)
  {
    return 0xD000000000000019;
  }

LABEL_5:
  (v3)(&v92, v5);
  v6 = v92;
  v63 = v102;
  v64 = v103;
  *v65 = *v104;
  *&v65[15] = *&v104[15];
  v59 = v98;
  v60 = v99;
  v61 = v100;
  v62 = v101;
  v55 = v94;
  v56 = v95;
  v57 = v96;
  v58 = v97;
  v54 = v93;
  v53 = v92;
  if (sub_244067B58(&v53) == 1)
  {
    *&v118[145] = v102;
    *&v118[161] = v103;
    *&v118[177] = *v104;
    *&v118[81] = v98;
    *&v118[97] = v99;
    *&v118[113] = v100;
    *&v118[129] = v101;
    *&v118[17] = v94;
    *&v118[33] = v95;
    *&v118[49] = v96;
    *&v118[65] = v97;
    v118[0] = v6;
    *&v118[192] = *&v104[15];
    *&v118[1] = v93;
    v7 = sub_243F5EED4(v118, &qword_27EDC50C0);
    goto LABEL_23;
  }

  *&v118[145] = v102;
  *&v118[161] = v103;
  *&v118[177] = *v104;
  *&v118[81] = v98;
  *&v118[97] = v99;
  *&v118[113] = v100;
  *&v118[129] = v101;
  *&v118[17] = v94;
  *&v118[33] = v95;
  *&v118[49] = v96;
  *&v118[65] = v97;
  v118[0] = v6;
  *&v118[192] = *&v104[15];
  *&v118[1] = v93;
  sub_243F5EED4(v118, &qword_27EDC50C0);
  v12 = sub_2440D0FB0();
  v14 = v13;
  if (v12 == sub_2440D0FB0() && v14 == v15)
  {

    goto LABEL_16;
  }

  v17 = sub_2440D3A10();

  if (v17)
  {
LABEL_16:
    (v3)(&v105, v7);
    v18 = v105;
    v49 = v114;
    v50 = v115;
    v51 = v116;
    v52 = v117;
    v45 = v110;
    v46 = v111;
    v47 = v112;
    v48 = v113;
    v41 = v106;
    v42 = v107;
    v43 = v108;
    v44 = v109;
    v40 = v105;
    if (sub_244067B58(&v40) == 1)
    {
      v19 = 0;
    }

    else
    {
      v20 = *(&v18 + 1);
      v19 = *(&v18 + 1);
    }

    v27 = v18;
    v36 = v114;
    v37 = v115;
    v38 = v116;
    v39 = v117;
    v32 = v110;
    v33 = v111;
    v34 = v112;
    v35 = v113;
    v28 = v106;
    v29 = v107;
    v30 = v108;
    v31 = v109;
    sub_243F5EED4(&v27, &qword_27EDC50C0);
    sub_243F9B2E8(0, &qword_27EDC23C8);
    v21 = sub_2440D3590();
    v22 = v21;
    if (v19)
    {
      v23 = sub_2440D35C0();

      if (v23)
      {
        return 0xD000000000000022;
      }
    }

    else
    {
    }
  }

LABEL_23:
  (v3)(v118, v7);
  v42 = *&v118[32];
  v43 = *&v118[48];
  v52 = *&v118[192];
  v24 = *&v118[72];
  v40 = *v118;
  v41 = *&v118[16];
  v49 = *&v118[144];
  v50 = *&v118[160];
  v51 = *&v118[176];
  v45 = *&v118[80];
  v46 = *&v118[96];
  v47 = *&v118[112];
  v48 = *&v118[128];
  v44 = *&v118[64];
  if (sub_244067B58(&v40) == 1)
  {
    v29 = *&v118[32];
    v30 = *&v118[48];
    v27 = *v118;
    v28 = *&v118[16];
    *&v31 = *&v118[64];
    *(&v31 + 1) = v24;
    v36 = *&v118[144];
    v37 = *&v118[160];
    v38 = *&v118[176];
    v39 = *&v118[192];
    v32 = *&v118[80];
    v33 = *&v118[96];
    v34 = *&v118[112];
    v35 = *&v118[128];
    sub_243F5EED4(&v27, &qword_27EDC50C0);
  }

  else
  {
    v29 = *&v118[32];
    v30 = *&v118[48];
    v27 = *v118;
    v28 = *&v118[16];
    *&v31 = *&v118[64];
    *(&v31 + 1) = v24;
    v36 = *&v118[144];
    v37 = *&v118[160];
    v38 = *&v118[176];
    v39 = *&v118[192];
    v32 = *&v118[80];
    v33 = *&v118[96];
    v34 = *&v118[112];
    v35 = *&v118[128];
    sub_243F5EED4(&v27, &qword_27EDC50C0);
    v25 = sub_2440D0F30();
    if (v25 == sub_2440D0F30())
    {
      return 0xD00000000000001CLL;
    }
  }

  return v1;
}

uint64_t sub_244098218(int a1)
{
  v2 = v1;
  v49 = a1;
  v42 = sub_2440D2C80();
  v48 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2440D2CA0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CD0();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_243F4DF28();
  sub_243F5F574(v14, v13, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v17 = sub_243F5EED4(v13, &qword_27EDC0A50);
  }

  else
  {
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v20;
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v20 = 136315138;
      LOBYTE(v51) = v49;
      sub_2440AAEA0();
      v21 = sub_2440D39C0();
      v23 = v5;
      v24 = v10;
      v25 = sub_243F4E6F8(v21, v22, aBlock);

      v26 = v39;
      *(v39 + 1) = v25;
      v10 = v24;
      v5 = v23;
      v27 = v26;
      _os_log_impl(&dword_243F48000, v18, v19, "set particle error with next state: %s", v26, 0xCu);
      v28 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245D58570](v28, -1, -1);
      MEMORY[0x245D58570](v27, -1, -1);
    }

    v17 = (*(v16 + 8))(v13, v15);
  }

  v53 = (*(*v2 + 616))(v17);
  v52 = 2;
  sub_24400ECA4();
  sub_2440D31F0();
  result = sub_2440D31F0();
  if (aBlock[0] != v51)
  {
    (*(*v2 + 624))(2);
    sub_243F9B2E8(0, &qword_27EDC6160);
    v30 = sub_2440D3530();
    v31 = v41;
    sub_2440D2CC0();
    sub_2440D2D20();
    v32 = v44;
    v43 = *(v43 + 8);
    (v43)(v31, v44);
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v49;
    aBlock[4] = sub_2440AAD84;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_257;
    v35 = _Block_copy(aBlock);

    sub_2440D2C90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2440AAFA4(&qword_27EDC0510, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    v36 = v5;
    sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
    v37 = v46;
    v38 = v42;
    sub_2440D3710();
    MEMORY[0x245D57400](v10, v36, v37, v35);
    _Block_release(v35);

    (*(v48 + 8))(v37, v38);
    (*(v45 + 8))(v36, v47);
    return (v43)(v10, v32);
  }

  return result;
}

void sub_2440988E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_transientCenterStateTimer;
  [*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_transientCenterStateTimer) invalidate];
  (*(*v1 + 816))(a1);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v10[4] = sub_2440AAC6C;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_243F81670;
  v10[3] = &block_descriptor_250;
  v7 = _Block_copy(v10);

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:4.0];
  _Block_release(v7);
  v9 = *(v1 + v3);
  *(v1 + v3) = v8;
}

uint64_t sub_244098A68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2440D2C80();
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2440D2CA0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = sub_243F4DF28();
  sub_243F5F574(v13, v10, &qword_27EDC0A50);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {

    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v44 = v4;

    v16 = sub_2440D11C0();
    v17 = sub_2440D3490();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = v16;
      v19 = v18;
      v20 = swift_slowAlloc();
      v43 = v7;
      v21 = v20;
      v49[0] = v20;
      *v19 = 136446210;
      v22 = sub_243F4E6F8(v12, v11, v49);
      v23 = v2;
      v24 = v22;

      *(v19 + 4) = v24;
      v2 = v23;
      v25 = v42;
      _os_log_impl(&dword_243F48000, v42, v17, "set error: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v26 = v21;
      v7 = v43;
      MEMORY[0x245D58570](v26, -1, -1);
      MEMORY[0x245D58570](v19, -1, -1);
    }

    else
    {
    }

    v4 = v44;
    (*(v15 + 8))(v10, v14);
  }

  v27 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer);
  if (v27)
  {

    v27(v28);
    sub_243F7EE58(v27);
  }

  nullsub_1(0);
  sub_2440A3E8C(v29, v30, v31, v32);

  sub_243F9B2E8(0, &qword_27EDC6160);
  v33 = sub_2440D3530();
  v34 = swift_allocObject();
  v35 = *(a1 + 48);
  *(v34 + 56) = *(a1 + 32);
  *(v34 + 72) = v35;
  v36 = *(a1 + 80);
  *(v34 + 88) = *(a1 + 64);
  *(v34 + 104) = v36;
  v37 = *(a1 + 16);
  *(v34 + 24) = *a1;
  *(v34 + 16) = v2;
  *(v34 + 40) = v37;
  aBlock[4] = sub_2440A7C30;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_87_0;
  v38 = _Block_copy(aBlock);

  sub_243F5F574(a1, v49, &qword_27EDBFF68);

  sub_2440D2C90();
  v49[0] = MEMORY[0x277D84F90];
  sub_2440AAFA4(&qword_27EDC0510, MEMORY[0x277D85198]);
  v39 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v40 = v46;
  sub_2440D3710();
  MEMORY[0x245D57440](0, v39, v40, v38);
  _Block_release(v38);

  (*(v48 + 8))(v40, v4);
  return (*(v45 + 8))(v39, v47);
}

void sub_24409905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_244098218(1);
  v9 = *(*v4 + 912);

  v9(a1, a2);
  (*(*v4 + 1728))(a3, a4, 0);
  v10 = *(**(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_playSound) + 128);

  v10(v11);

  sub_2440988E4(3);
}

uint64_t sub_244099180()
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_2440991F0(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_2440D2C80();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_243F4DF28();
  sub_243F5F574(v12, v11, &qword_27EDC0A50);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_243F5EED4(v11, &qword_27EDC0A50);
  }

  else
  {
    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243F48000, v15, v16, "close ui after delay (animated close)", v17, 2u);
      MEMORY[0x245D58570](v17, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  (*(*v2 + 960))(0, 0xE000000000000000);
  (*(*v2 + 1008))(0, 0xE000000000000000);
  (*(*v2 + 1576))(0);
  sub_243F9B2E8(0, &qword_27EDC6160);
  v18 = sub_2440D3530();
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2440A7D20;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_91;
  v20 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440AAFA4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57400](v24, v8, v5, v20);
  _Block_release(v20);

  (*(v25 + 8))(v5, v3);
  return (*(v22 + 8))(v8, v23);
}

uint64_t sub_244099700()
{
  (*(*v0 + 1488))();
  v1 = sub_243FA9620();
  swift_beginAccess();
  v2 = *(**v1 + 536);

  v2(v3);
}

uint64_t sub_2440997BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;
  v12[5] = sub_2440A7E00;
  v12[6] = v4;
  v12[7] = sub_2440A88C0;
  v12[8] = v10;
  v12[9] = sub_2440A83D4;
  v12[10] = v7;
  v12[11] = sub_2440A83E4;
  v12[12] = v9;
  v12[13] = sub_2440A7E1C;
  v12[14] = v5;
  v12[15] = sub_2440A80F8;
  v12[16] = v6;
  v12[17] = sub_2440A83DC;
  v12[18] = v8;

  sub_243F54830(0, 0, v3, &unk_2440E5F48, v12);
}

uint64_t sub_244099A50()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 190;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2440BD1F4(0xD000000000000016, 0x80000002440EF2E0, 0, 0, 0, 2, v19);
    (*(*v5 + 576))(v19);
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_2440709E8();
    (*(*v7 + 1584))(v3);

    (*(v1 + 8))(v3, v0);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    (*(*v8 + 624))(4);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    (*(*v9 + 1616))(v9);
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    (*(*v10 + 1728))(0xD000000000000018, 0x80000002440EF300, 1);
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    (*(*v11 + 816))(0);
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_cleanupShowGuidanceTimer);
    sub_243F7EE68(v13);

    if (v13)
    {
      v13(v14);
      sub_243F7EE58(v13);
    }
  }

  v15 = sub_243FA9620();
  swift_beginAccess();
  v16 = *(**v15 + 360);

  v16(0);
}

uint64_t sub_244099E6C()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    memset(v16, 0, 96);
    sub_2440D1350();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2440BD1F4(0xD000000000000016, 0x80000002440EF2E0, 0, 0, 0, 2, v16);
    (*(*v5 + 576))(v16);
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_2440709E8();
    (*(*v7 + 1584))(v3);

    (*(v1 + 8))(v3, v0);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    (*(*v8 + 624))(4);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    (*(*v9 + 1616))(v9);
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    (*(*v10 + 1728))(0xD000000000000018, 0x80000002440EF300, 1);
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    (*(*v11 + 816))(0);
  }

  v12 = sub_243FA9620();
  swift_beginAccess();
  v13 = *(**v12 + 360);

  v13(0);
}

uint64_t sub_24409A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 192) = v15;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_24409A2EC, 0, 0);
}

uint64_t sub_24409A2EC()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_stateMachine;
  *(v0 + 200) = OBJC_IVAR____TtC19ContactlessReaderUI12TapViewModel_stateMachine;
  v3 = *(v1 + v2);
  *(v0 + 208) = v3;
  *(v0 + 2416) = 256;
  *(v0 + 16) = 0;
  v4 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440A9690, v4, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 16) = v5;
  v8 = *(v0 + 72);
  *(v0 + 232) = v8;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  v9 = *v3;
  *(v0 + 240) = *(*v3 + 256);
  *(v0 + 248) = (v9 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409A438, v3, 0);
}

uint64_t sub_24409A438()
{
  v1 = *(v0 + 224);
  (*(v0 + 240))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409A4D0, 0, 0);
}

uint64_t sub_24409A4D0()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 256) = v1;
  *(v0 + 2416) = 2;
  *(v0 + 48) = 1;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440A97C4, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 280) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 288) = *(*v1 + 256);
  *(v0 + 296) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409A618, v1, 0);
}

uint64_t sub_24409A618()
{
  v1 = *(v0 + 272);
  (*(v0 + 288))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409A6B0, 0, 0);
}

uint64_t sub_24409A6B0()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 304) = v1;
  *(v0 + 2416) = 0;
  *(v0 + 48) = 10;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CAD8(v0 + 2416, v0 + 48, &unk_28577CDC8, sub_2440A9AD4, v2, &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 312) = v4;
  *(v0 + 320) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 328) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 336) = *(*v1 + 256);
  *(v0 + 344) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409A7F8, v1, 0);
}

uint64_t sub_24409A7F8()
{
  v1 = *(v0 + 320);
  (*(v0 + 336))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409A890, 0, 0);
}

uint64_t sub_24409A890()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 352) = v3;
  *(v0 + 2416) = 4;
  *(v0 + 48) = 12;
  swift_retain_n();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 360) = v5;
  *(v0 + 368) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 376) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 384) = *(*v3 + 256);
  *(v0 + 392) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409A9B4, v3, 0);
}

uint64_t sub_24409A9B4()
{
  v1 = *(v0 + 368);
  (*(v0 + 384))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409AA4C, 0, 0);
}

uint64_t sub_24409AA4C()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 400) = v1;
  *(v0 + 2416) = 4;
  *(v0 + 48) = 14;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440A9ADC, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 408) = v4;
  *(v0 + 416) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 424) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 432) = *(*v1 + 256);
  *(v0 + 440) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409AB94, v1, 0);
}

uint64_t sub_24409AB94()
{
  v1 = *(v0 + 416);
  (*(v0 + 432))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409AC2C, 0, 0);
}

uint64_t sub_24409AC2C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 448) = v3;
  *(v0 + 2416) = 4;
  *(v0 + 48) = 15;
  swift_retain_n();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 456) = v5;
  *(v0 + 464) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 472) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 480) = *(*v3 + 256);
  *(v0 + 488) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409AD50, v3, 0);
}

uint64_t sub_24409AD50()
{
  v1 = *(v0 + 464);
  (*(v0 + 480))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409ADE8, 0, 0);
}

uint64_t sub_24409ADE8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 496) = v3;
  *(v0 + 2416) = 1;
  *(v0 + 48) = 10;
  swift_retain_n();

  sub_24405CAD8(v0 + 2416, v0 + 48, &unk_28577CDF8, v2, v1, &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 504) = v5;
  *(v0 + 512) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 520) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 528) = *(*v3 + 256);
  *(v0 + 536) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409AF14, v3, 0);
}

uint64_t sub_24409AF14()
{
  v1 = *(v0 + 512);
  (*(v0 + 528))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409AFB4, 0, 0);
}

uint64_t sub_24409AFB4()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 544) = v1;
  *(v0 + 2416) = 258;
  *(v0 + 48) = 1;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440A9C94, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 552) = v4;
  *(v0 + 560) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 568) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 576) = *(*v1 + 256);
  *(v0 + 584) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409B104, v1, 0);
}

uint64_t sub_24409B104()
{
  v1 = *(v0 + 560);
  (*(v0 + 576))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409B1A8, 0, 0);
}

uint64_t sub_24409B1A8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 592) = v3;
  *(v0 + 2416) = 260;
  *(v0 + 48) = 12;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 600) = v5;
  *(v0 + 608) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 616) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 624) = *(*v3 + 256);
  *(v0 + 632) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409B2C8, v3, 0);
}

uint64_t sub_24409B2C8()
{
  v1 = *(v0 + 608);
  (*(v0 + 624))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409B36C, 0, 0);
}

uint64_t sub_24409B36C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 640) = v3;
  *(v0 + 2416) = 260;
  *(v0 + 48) = 15;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 648) = v5;
  *(v0 + 656) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 664) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 672) = *(*v3 + 256);
  *(v0 + 680) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409B48C, v3, 0);
}

uint64_t sub_24409B48C()
{
  v1 = *(v0 + 656);
  (*(v0 + 672))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409B530, 0, 0);
}

uint64_t sub_24409B530()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 688) = v3;
  *(v0 + 2416) = 517;
  *(v0 + 48) = 11;
  swift_retain_n();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 696) = v5;
  *(v0 + 704) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 712) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 720) = *(*v3 + 256);
  *(v0 + 728) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409B65C, v3, 0);
}

uint64_t sub_24409B65C()
{
  v1 = *(v0 + 704);
  (*(v0 + 720))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409B700, 0, 0);
}

uint64_t sub_24409B700()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 736) = v1;
  *(v0 + 2416) = 515;
  *(v0 + 48) = 3;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440A9F70, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 744) = v4;
  *(v0 + 752) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 760) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 768) = *(*v1 + 256);
  *(v0 + 776) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409B850, v1, 0);
}

uint64_t sub_24409B850()
{
  v1 = *(v0 + 752);
  (*(v0 + 768))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409B8F4, 0, 0);
}

uint64_t sub_24409B8F4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 784) = v3;
  *(v0 + 2416) = 2;
  *(v0 + 48) = 10;

  sub_24405CAD8(v0 + 2416, v0 + 48, &unk_28577CE28, v2, v1, &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 792) = v5;
  *(v0 + 800) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 808) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 816) = *(*v3 + 256);
  *(v0 + 824) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409BA18, v3, 0);
}

uint64_t sub_24409BA18()
{
  v1 = *(v0 + 800);
  (*(v0 + 816))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409BABC, 0, 0);
}

uint64_t sub_24409BABC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 832) = v3;
  *(v0 + 2416) = 516;
  *(v0 + 48) = 12;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 840) = v5;
  *(v0 + 848) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 856) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 864) = *(*v3 + 256);
  *(v0 + 872) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409BBDC, v3, 0);
}

uint64_t sub_24409BBDC()
{
  v1 = *(v0 + 848);
  (*(v0 + 864))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409BC80, 0, 0);
}

uint64_t sub_24409BC80()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 880) = v3;
  *(v0 + 2416) = 516;
  *(v0 + 48) = 15;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 888) = v5;
  *(v0 + 896) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 904) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 912) = *(*v3 + 256);
  *(v0 + 920) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409BDA0, v3, 0);
}

uint64_t sub_24409BDA0()
{
  v1 = *(v0 + 896);
  (*(v0 + 912))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409BE44, 0, 0);
}

uint64_t sub_24409BE44()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 928) = v1;
  *(v0 + 2416) = 771;
  *(v0 + 48) = 8;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440A9FFC, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 936) = v4;
  *(v0 + 944) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 952) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 960) = *(*v1 + 256);
  *(v0 + 968) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409BF94, v1, 0);
}

uint64_t sub_24409BF94()
{
  v1 = *(v0 + 944);
  (*(v0 + 960))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C038, 0, 0);
}

uint64_t sub_24409C038()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 976) = v1;
  *(v0 + 2416) = 770;
  *(v0 + 48) = 1;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, 0, 0, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 984) = v3;
  *(v0 + 992) = v4;
  *(v0 + 48) = v2;
  v5 = *(v0 + 40);
  *(v0 + 1000) = v5;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = *v1;
  *(v0 + 1008) = *(*v1 + 256);
  *(v0 + 1016) = (v6 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409C14C, v1, 0);
}

uint64_t sub_24409C14C()
{
  v1 = *(v0 + 992);
  (*(v0 + 1008))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C1F0, 0, 0);
}

uint64_t sub_24409C1F0()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1024) = v1;
  *(v0 + 2416) = 774;
  *(v0 + 48) = 7;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440AA078, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 1032) = v4;
  *(v0 + 1040) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 1048) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 1056) = *(*v1 + 256);
  *(v0 + 1064) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409C340, v1, 0);
}

uint64_t sub_24409C340()
{
  v1 = *(v0 + 1040);
  (*(v0 + 1056))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C3E4, 0, 0);
}

uint64_t sub_24409C3E4()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1072) = v1;
  *(v0 + 2416) = 775;
  *(v0 + 48) = 5;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440AA174, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 1080) = v4;
  *(v0 + 1088) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 1096) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 1104) = *(*v1 + 256);
  *(v0 + 1112) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409C534, v1, 0);
}

uint64_t sub_24409C534()
{
  v1 = *(v0 + 1088);
  (*(v0 + 1104))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C5D8, 0, 0);
}

uint64_t sub_24409C5D8()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1120) = v1;
  *(v0 + 2416) = 776;
  *(v0 + 48) = 6;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, sub_2440AA478, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 1128) = v4;
  *(v0 + 1136) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 1144) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 1152) = *(*v1 + 256);
  *(v0 + 1160) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409C728, v1, 0);
}

uint64_t sub_24409C728()
{
  v1 = *(v0 + 1136);
  (*(v0 + 1152))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C7CC, 0, 0);
}

uint64_t sub_24409C7CC()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1168) = v1;
  *(v0 + 2416) = 779;
  *(v0 + 16) = 2;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, sub_2440AA480, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1176) = v4;
  *(v0 + 1184) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1192) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1200) = *(*v1 + 256);
  *(v0 + 1208) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409C91C, v1, 0);
}

uint64_t sub_24409C91C()
{
  v1 = *(v0 + 1184);
  (*(v0 + 1200))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409C9C0, 0, 0);
}

uint64_t sub_24409C9C0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1216) = v3;
  *(v0 + 2416) = 773;
  *(v0 + 16) = 11;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 1224) = v5;
  *(v0 + 1232) = v6;
  *(v0 + 16) = v4;
  v7 = *(v0 + 72);
  *(v0 + 1240) = v7;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  v8 = *v3;
  *(v0 + 1248) = *(*v3 + 256);
  *(v0 + 1256) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409CAE0, v3, 0);
}

uint64_t sub_24409CAE0()
{
  v1 = *(v0 + 1232);
  (*(v0 + 1248))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409CB84, 0, 0);
}

uint64_t sub_24409CB84()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1264) = v3;
  *(v0 + 2416) = 772;
  *(v0 + 16) = 20;
  swift_retain_n();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 1272) = v5;
  *(v0 + 1280) = v6;
  *(v0 + 16) = v4;
  v7 = *(v0 + 72);
  *(v0 + 1288) = v7;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  v8 = *v3;
  *(v0 + 1296) = *(*v3 + 256);
  *(v0 + 1304) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409CCB0, v3, 0);
}

uint64_t sub_24409CCB0()
{
  v1 = *(v0 + 1280);
  (*(v0 + 1296))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409CD54, 0, 0);
}

uint64_t sub_24409CD54()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1312) = v3;
  *(v0 + 2416) = 772;
  *(v0 + 16) = 15;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 1320) = v5;
  *(v0 + 1328) = v6;
  *(v0 + 16) = v4;
  v7 = *(v0 + 72);
  *(v0 + 1336) = v7;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  v8 = *v3;
  *(v0 + 1344) = *(*v3 + 256);
  *(v0 + 1352) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409CE74, v3, 0);
}

uint64_t sub_24409CE74()
{
  v1 = *(v0 + 1328);
  (*(v0 + 1344))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409CF18, 0, 0);
}

uint64_t sub_24409CF18()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1360) = v1;
  *(v0 + 2416) = 770;
  *(v0 + 16) = 10;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, sub_2440AA75C, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1368) = v4;
  *(v0 + 1376) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1384) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1392) = *(*v1 + 256);
  *(v0 + 1400) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D068, v1, 0);
}

uint64_t sub_24409D068()
{
  v1 = *(v0 + 1376);
  (*(v0 + 1392))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409D10C, 0, 0);
}

uint64_t sub_24409D10C()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1408) = v1;
  *(v0 + 2416) = 777;
  *(v0 + 16) = 16;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, sub_2440AA85C, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1416) = v4;
  *(v0 + 1424) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1432) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1440) = *(*v1 + 256);
  *(v0 + 1448) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D25C, v1, 0);
}

uint64_t sub_24409D25C()
{
  v1 = *(v0 + 1424);
  (*(v0 + 1440))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409D300, 0, 0);
}

uint64_t sub_24409D300()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1456) = v1;
  *(v0 + 2416) = 777;
  *(v0 + 16) = 17;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 16, sub_2440AA864, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1464) = v4;
  *(v0 + 1472) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1480) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1488) = *(*v1 + 256);
  *(v0 + 1496) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D450, v1, 0);
}

uint64_t sub_24409D450()
{
  v1 = *(v0 + 1472);
  (*(v0 + 1488))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409D4F4, 0, 0);
}

uint64_t sub_24409D4F4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1504) = v3;
  *(v0 + 2416) = 772;
  *(v0 + 48) = 12;

  sub_24405CBC0(v0 + 2417, v0 + 2416, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 1512) = v5;
  *(v0 + 1520) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 1528) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 1536) = *(*v3 + 256);
  *(v0 + 1544) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D614, v3, 0);
}

uint64_t sub_24409D614()
{
  v1 = *(v0 + 1520);
  (*(v0 + 1536))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409D6B8, 0, 0);
}

uint64_t sub_24409D6B8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1552) = v3;
  *(v0 + 2416) = 1027;
  *(v0 + 48) = 13;

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 1560) = v5;
  *(v0 + 1568) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 1576) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 1584) = *(*v3 + 256);
  *(v0 + 1592) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D7E0, v3, 0);
}

uint64_t sub_24409D7E0()
{
  v1 = *(v0 + 1568);
  (*(v0 + 1584))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409D884, 0, 0);
}

uint64_t sub_24409D884()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1600) = v3;
  *(v0 + 2416) = 2563;
  *(v0 + 48) = 19;

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 48, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 1608) = v5;
  *(v0 + 1616) = v6;
  *(v0 + 48) = v4;
  v7 = *(v0 + 40);
  *(v0 + 1624) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v3;
  *(v0 + 1632) = *(*v3 + 256);
  *(v0 + 1640) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409D9A4, v3, 0);
}

uint64_t sub_24409D9A4()
{
  v1 = *(v0 + 1616);
  (*(v0 + 1632))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409DA48, 0, 0);
}

uint64_t sub_24409DA48()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1648) = v1;
  *(v0 + 2416) = 2055;
  *(v0 + 48) = 6;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 48, sub_2440AA86C, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 1656) = v4;
  *(v0 + 1664) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 1672) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 1680) = *(*v1 + 256);
  *(v0 + 1688) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409DB98, v1, 0);
}

uint64_t sub_24409DB98()
{
  v1 = *(v0 + 1664);
  (*(v0 + 1680))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409DC3C, 0, 0);
}

uint64_t sub_24409DC3C()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1696) = v1;
  *(v0 + 2416) = 2055;
  *(v0 + 48) = 12;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 48, sub_2440AA874, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 1704) = v4;
  *(v0 + 1712) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40);
  *(v0 + 1720) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = *v1;
  *(v0 + 1728) = *(*v1 + 256);
  *(v0 + 1736) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409DD8C, v1, 0);
}

uint64_t sub_24409DD8C()
{
  v1 = *(v0 + 1712);
  (*(v0 + 1728))(v0 + 48);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409DE30, 0, 0);
}

uint64_t sub_24409DE30()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1744) = v1;
  *(v0 + 2416) = 2055;
  *(v0 + 16) = 11;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AA890, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1752) = v4;
  *(v0 + 1760) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1768) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1776) = *(*v1 + 256);
  *(v0 + 1784) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409DF80, v1, 0);
}

uint64_t sub_24409DF80()
{
  v1 = *(v0 + 1760);
  (*(v0 + 1776))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E024, 0, 0);
}

uint64_t sub_24409E024()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1792) = v1;
  *(v0 + 16) = 7;
  *(v0 + 2416) = 8;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CAD8(v0 + 16, v0 + 2416, &unk_28577CE58, sub_2440AB080, v2, &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1800) = v4;
  *(v0 + 1808) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1816) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1824) = *(*v1 + 256);
  *(v0 + 1832) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409E178, v1, 0);
}

uint64_t sub_24409E178()
{
  v1 = *(v0 + 1808);
  (*(v0 + 1824))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E21C, 0, 0);
}

uint64_t sub_24409E21C()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1840) = v1;
  *(v0 + 2416) = 2823;
  *(v0 + 16) = 2;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AA898, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1848) = v4;
  *(v0 + 1856) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1864) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1872) = *(*v1 + 256);
  *(v0 + 1880) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409E36C, v1, 0);
}

uint64_t sub_24409E36C()
{
  v1 = *(v0 + 1856);
  (*(v0 + 1872))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E410, 0, 0);
}

uint64_t sub_24409E410()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1888) = v1;
  *(v0 + 2416) = 2567;
  *(v0 + 16) = 20;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AB080, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1896) = v4;
  *(v0 + 1904) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1912) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1920) = *(*v1 + 256);
  *(v0 + 1928) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409E560, v1, 0);
}

uint64_t sub_24409E560()
{
  v1 = *(v0 + 1904);
  (*(v0 + 1920))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E604, 0, 0);
}

uint64_t sub_24409E604()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1936) = v1;
  *(v0 + 2416) = 2571;
  *(v0 + 16) = 20;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AA8EC, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1944) = v4;
  *(v0 + 1952) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 1960) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 1968) = *(*v1 + 256);
  *(v0 + 1976) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409E754, v1, 0);
}

uint64_t sub_24409E754()
{
  v1 = *(v0 + 1952);
  (*(v0 + 1968))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E7F8, 0, 0);
}

uint64_t sub_24409E7F8()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 1984) = v1;
  *(v0 + 2416) = 2571;
  *(v0 + 16) = 19;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AA948, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 1992) = v4;
  *(v0 + 2000) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 2008) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 2016) = *(*v1 + 256);
  *(v0 + 2024) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409E948, v1, 0);
}

uint64_t sub_24409E948()
{
  v1 = *(v0 + 2000);
  (*(v0 + 2016))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409E9EC, 0, 0);
}

uint64_t sub_24409E9EC()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 2032) = v1;
  *(v0 + 2416) = 262;
  *(v0 + 16) = 0;

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, 0, 0, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 2040) = v3;
  *(v0 + 2048) = v4;
  *(v0 + 16) = v2;
  v5 = *(v0 + 72);
  *(v0 + 2056) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v6 = *v1;
  *(v0 + 2064) = *(*v1 + 256);
  *(v0 + 2072) = (v6 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409EAFC, v1, 0);
}

uint64_t sub_24409EAFC()
{
  v1 = *(v0 + 2048);
  (*(v0 + 2064))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409EBA0, 0, 0);
}

uint64_t sub_24409EBA0()
{
  v1 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 2080) = v1;
  *(v0 + 2416) = 518;
  *(v0 + 16) = 1;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, sub_2440AAA04, v2, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 2088) = v4;
  *(v0 + 2096) = v5;
  *(v0 + 16) = v3;
  v6 = *(v0 + 72);
  *(v0 + 2104) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = *v1;
  *(v0 + 2112) = *(*v1 + 256);
  *(v0 + 2120) = (v7 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409ECF0, v1, 0);
}

uint64_t sub_24409ECF0()
{
  v1 = *(v0 + 2096);
  (*(v0 + 2112))(v0 + 16);

  sub_243F7EE58(v1);

  return MEMORY[0x2822009F8](sub_24409ED94, 0, 0);
}

uint64_t sub_24409ED94()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(*(v0 + 80) + *(v0 + 200));
  *(v0 + 2128) = v3;
  *(v0 + 2416) = 2566;
  *(v0 + 16) = 19;

  sub_24405CBC0(v0 + 2416, v0 + 2417, v0 + 16, v2, v1, MEMORY[0x277D438F0], &type metadata for TransactionUIState, v0 + 48);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 2136) = v5;
  *(v0 + 2144) = v6;
  *(v0 + 16) = v4;
  v7 = *(v0 + 72);
  *(v0 + 2152) = v7;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  v8 = *v3;
  *(v0 + 2160) = *(*v3 + 256);
  *(v0 + 2168) = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0x861B000000000000;

  return MEMORY[0x2822009F8](sub_24409EEB4, v3, 0);
}
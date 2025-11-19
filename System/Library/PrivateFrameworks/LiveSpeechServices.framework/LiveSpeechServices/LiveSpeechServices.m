uint64_t sub_25601590C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256015958()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_256015998()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256015A10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_256015A88(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  LiveSpeechService.inputMode.getter(&v4);
  *a2 = v4;
}

uint64_t sub_256015AC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t LiveSpeechError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25601BC90();

  MEMORY[0x259C567D0](v1, v2);
  return 0xD000000000000011;
}

unint64_t sub_256016118()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25601BC90();

  MEMORY[0x259C567D0](v1, v2);
  return 0xD000000000000011;
}

uint64_t LiveCaptionsError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t LiveCaptionsError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25601BC90();

  MEMORY[0x259C567D0](v1, v2);
  return 0xD000000000000013;
}

unint64_t sub_256016248()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25601BC90();

  MEMORY[0x259C567D0](v1, v2);
  return 0xD000000000000013;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2560162E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_256016328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

LiveSpeechServices::LiveSpeechLiveCaptionsUIServiceMessageID_optional __swiftcall LiveSpeechLiveCaptionsUIServiceMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2560163DC()
{
  v1 = *v0;
  sub_25601BD50();
  MEMORY[0x259C56970](v1 + 1);
  return sub_25601BD70();
}

uint64_t sub_256016454()
{
  v1 = *v0;
  sub_25601BD50();
  MEMORY[0x259C56970](v1 + 1);
  return sub_25601BD70();
}

id sub_2560164B0()
{
  result = [objc_allocWithZone(type metadata accessor for LiveSpeechCaptionsClient()) init];
  qword_28133F5B0 = result;
  return result;
}

id static LiveSpeechCaptionsClient.shared.getter()
{
  if (qword_28133F5A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28133F5B0;

  return v1;
}

id LiveSpeechCaptionsClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_256016644();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_256016644()
{
  v1 = *(sub_25601BB00() - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20]();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning) & 1) == 0 && (*(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning) & 1) == 0)
  {
    v6 = v3;
    v7 = v0;
    sub_25601BAE0();
    v8 = sub_25601BAF0();
    v9 = sub_25601BC50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_256014000, v8, v9, "LiveSpeechLiveCaptionsClient clean up", v10, 2u);
      MEMORY[0x259C56D60](v10, -1, -1);
    }

    (*(v1 + 8))(v5, v6);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR___LiveSpeechCaptionsClient__client;
    v13 = *(v7 + OBJC_IVAR___LiveSpeechCaptionsClient__client);
    *(v11 + 16) = v13;
    *(v7 + v12) = 0;
    if (v13)
    {
      aBlock[4] = sub_256018F98;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_256017DE4;
      aBlock[3] = &block_descriptor_38;
      v14 = _Block_copy(aBlock);
      v15 = v13;

      [v15 invalidate_];
      _Block_release(v14);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiveSpeechCaptionsClient.startLiveSpeech()()
{
  v1 = sub_25601BB00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if (*(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning) == 1)
  {
    sub_25601BAE0();
    v9 = sub_25601BAF0();
    v10 = sub_25601BC50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_256014000, v9, v10, "Already running LiveSpeech, skip", v11, 2u);
      MEMORY[0x259C56D60](v11, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    *(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning) = 1;
    sub_25601BAE0();
    v12 = sub_25601BAF0();
    v13 = sub_25601BC50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_256014000, v12, v13, "Client requesting LiveSpeech start", v14, 2u);
      MEMORY[0x259C56D60](v14, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    v15 = sub_256016BE0();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_256016D88;
    *(v16 + 24) = 0;
    aBlock[4] = sub_25601843C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256018444;
    aBlock[3] = &block_descriptor;
    v17 = _Block_copy(aBlock);

    [v15 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v17];
    _Block_release(v17);
  }
}

id sub_256016BE0()
{
  v1 = OBJC_IVAR___LiveSpeechCaptionsClient__client;
  v2 = *(v0 + OBJC_IVAR___LiveSpeechCaptionsClient__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LiveSpeechCaptionsClient__client);
LABEL_6:
    v14 = v2;
    return v3;
  }

  v4 = v0;
  sub_25601BC90();

  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_25601BCE0();
  MEMORY[0x259C567D0](v6);

  v7 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v8 = sub_25601BB80();

  v9 = sub_25601BB80();
  v10 = [v7 initWithIdentifier:v8 serviceBundleName:v9];

  v11 = *(v4 + v1);
  *(v4 + v1) = v10;

  result = *(v4 + v1);
  if (result)
  {
    result = [result setDelegate_];
    v13 = *(v4 + v1);
    if (v13)
    {
      v3 = v13;
      v2 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiveSpeechCaptionsClient.stopLiveSpeech()()
{
  v1 = v0;
  v2 = sub_25601BB00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  if (v1[OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning])
  {
    v1[OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning] = 0;
    sub_25601BAE0();
    v10 = sub_25601BAF0();
    v11 = sub_25601BC50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_256014000, v10, v11, "Client requesting LiveSpeech stop", v12, 2u);
      MEMORY[0x259C56D60](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v13 = sub_256016BE0();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_256018508;
    *(v15 + 24) = v14;
    aBlock[4] = sub_25601905C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256018444;
    aBlock[3] = &block_descriptor_10;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    [v13 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v16];
    _Block_release(v16);
  }

  else
  {
    sub_25601BAE0();
    v18 = sub_25601BAF0();
    v19 = sub_25601BC50();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_256014000, v18, v19, "Can't stop LiveSpeech, not running", v20, 2u);
      MEMORY[0x259C56D60](v20, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiveSpeechCaptionsClient.startLiveCaptions()()
{
  v1 = sub_25601BB00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if (*(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning) == 1)
  {
    sub_25601BAE0();
    v9 = sub_25601BAF0();
    v10 = sub_25601BC50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_256014000, v9, v10, "Already running LiveCaptions, skip", v11, 2u);
      MEMORY[0x259C56D60](v11, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    *(v0 + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning) = 1;
    sub_25601BAE0();
    v12 = sub_25601BAF0();
    v13 = sub_25601BC50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_256014000, v12, v13, "Client requesting LiveCaptions start", v14, 2u);
      MEMORY[0x259C56D60](v14, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    v15 = sub_256016BE0();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_25601741C;
    *(v16 + 24) = 0;
    aBlock[4] = sub_25601905C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256018444;
    aBlock[3] = &block_descriptor_17;
    v17 = _Block_copy(aBlock);

    [v15 sendAsynchronousMessage:0 withIdentifier:3 targetAccessQueue:0 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_256017430(void *a1, char a2, const char *a3, const char *a4)
{
  v8 = sub_25601BB00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (a2)
  {
    v16 = a1;
    sub_25601BAE0();
    v17 = a1;
    v18 = sub_25601BAF0();
    v19 = sub_25601BC40();
    sub_256018EB0(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_256018EBC();
      swift_allocError();
      *v22 = a1;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v24;
      *v21 = v24;
      _os_log_impl(&dword_256014000, v18, v19, a3, v20, 0xCu);
      sub_256018F10(v21);
      MEMORY[0x259C56D60](v21, -1, -1);
      MEMORY[0x259C56D60](v20, -1, -1);

      sub_256018EB0(a1, 1);
    }

    else
    {
      sub_256018EB0(a1, 1);
    }
  }

  else
  {
    sub_25601BAE0();
    v25 = sub_25601BAF0();
    v26 = sub_25601BC50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_256014000, v25, v26, a4, v27, 2u);
      MEMORY[0x259C56D60](v27, -1, -1);
    }

    v13 = v15;
  }

  return (*(v9 + 8))(v13, v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiveSpeechCaptionsClient.stopLiveCaptions()()
{
  v1 = v0;
  v2 = sub_25601BB00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  if (v1[OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning])
  {
    v1[OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning] = 0;
    sub_25601BAE0();
    v10 = sub_25601BAF0();
    v11 = sub_25601BC50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_256014000, v10, v11, "Client requesting LiveCaptions stop", v12, 2u);
      MEMORY[0x259C56D60](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v13 = sub_256016BE0();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_256018538;
    *(v15 + 24) = v14;
    aBlock[4] = sub_25601905C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256018444;
    aBlock[3] = &block_descriptor_27;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    [v13 sendAsynchronousMessage:0 withIdentifier:4 targetAccessQueue:0 completion:v16];
    _Block_release(v16);
  }

  else
  {
    sub_25601BAE0();
    v18 = sub_25601BAF0();
    v19 = sub_25601BC50();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_256014000, v18, v19, "Can't stop LiveCaptions, not running", v20, 2u);
      MEMORY[0x259C56D60](v20, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

void sub_256017A1C(void *a1, char a2, uint64_t a3, const char *a4, const char *a5)
{
  v9 = sub_25601BB00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  if (a2)
  {
    v17 = a1;
    sub_25601BAE0();
    v18 = a1;
    v19 = sub_25601BAF0();
    v20 = sub_25601BC40();
    sub_256018EB0(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_256018EBC();
      swift_allocError();
      *v23 = a1;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v25;
      *v22 = v25;
      _os_log_impl(&dword_256014000, v19, v20, a4, v21, 0xCu);
      sub_256018F10(v22);
      MEMORY[0x259C56D60](v22, -1, -1);
      MEMORY[0x259C56D60](v21, -1, -1);

      sub_256018EB0(a1, 1);
    }

    else
    {
      sub_256018EB0(a1, 1);
    }

    (*(v10 + 8))(v14, v9);
  }

  else
  {
    sub_25601BAE0();
    v26 = sub_25601BAF0();
    v27 = sub_25601BC50();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_256014000, v26, v27, a5, v28, 2u);
      MEMORY[0x259C56D60](v28, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
    sub_256016644();
  }
}

void sub_256017D70(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    [v2 setDelegate_];
  }

  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t sub_256017DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id LiveSpeechCaptionsClient.userInterfaceClient(_:accessQueueForProcessingMessageWithIdentifier:)()
{
  v0 = [objc_opt_self() mainAccessQueue];

  return v0;
}

void LiveSpeechCaptionsClient.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25601BB00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = *(v2 + OBJC_IVAR___LiveSpeechCaptionsClient__client);
  if (a1)
  {
    if (v15)
    {
      v16 = v15 == a1;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      return;
    }
  }

  else if (v15)
  {
    return;
  }

  sub_25601BAE0();
  v17 = sub_25601BAF0();
  v18 = sub_25601BC40();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_256014000, v17, v18, "Connection to LiveSpeech UI Service was interrupted", v19, 2u);
    MEMORY[0x259C56D60](v19, -1, -1);
  }

  v20 = *(v5 + 8);
  v20(v14, v4);
  if (_AXSLiveSpeechEnabled())
  {
    sub_25601BAE0();
    v21 = sub_25601BAF0();
    v22 = sub_25601BC30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_256014000, v21, v22, "LiveSpeech still enabled. Will attempt to relaunch", v23, 2u);
      MEMORY[0x259C56D60](v23, -1, -1);
    }

    v20(v12, v4);
    LiveSpeechCaptionsClient.startLiveSpeech()();
    if (v24)
    {
      sub_25601BAE0();
      v25 = v24;
      v26 = sub_25601BAF0();
      v27 = sub_25601BC40();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v28 = 136315138;
        swift_getErrorValue();
        v29 = sub_25601BD00();
        v31 = sub_2560185A8(v29, v30, &v35);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_256014000, v26, v27, "Error occurred relaunching LiveSpeech Service: %s", v28, 0xCu);
        v32 = v34;
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C56D60](v32, -1, -1);
        MEMORY[0x259C56D60](v28, -1, -1);
      }

      else
      {
      }

      v20(v9, v4);
    }
  }
}

uint64_t sub_256018294()
{
  v1 = *v0;
  MEMORY[0x259C567D0](0x6F72724520435049, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F824900, &unk_25601C8D0);
  sub_25601BCB0();
  return 0;
}

uint64_t sub_256018330(uint64_t result, void *a2, void (*a3)(void *, uint64_t))
{
  if (a3)
  {
    if (a2)
    {
      sub_256018F78(a3);
      v5 = a2;
      a3(a2, 1);

      return sub_256018F88(a3);
    }

    else
    {
      v6 = result;
      if (result)
      {

        v7 = v6;
      }

      else
      {
        sub_256018F78(a3);
        v7 = sub_25601958C(MEMORY[0x277D84F90]);
      }

      a3(v7, 0);
      sub_256018F88(a3);
    }
  }

  return result;
}

uint64_t sub_256018444(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_25601BB70();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2560185A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25601892C(v11, 0, 0, 1, a1, a2);
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
    sub_256018A38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2560186C4()
{
  result = qword_27F824870;
  if (!qword_27F824870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F824870);
  }

  return result;
}

unint64_t sub_256018718(uint64_t a1)
{
  result = sub_256018740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_256018740()
{
  result = qword_27F824878;
  if (!qword_27F824878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F824878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveSpeechLiveCaptionsUIServiceMessageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveSpeechLiveCaptionsUIServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25601892C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_256018A94(a5, a6);
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
    result = sub_25601BCA0();
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

uint64_t sub_256018A38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_256018A94(uint64_t a1, unint64_t a2)
{
  v4 = sub_256018AE0(a1, a2);
  sub_256018C10(&unk_286815530);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_256018AE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_256018CFC(v5, 0);
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

  result = sub_25601BCA0();
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
        v10 = sub_25601BBD0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_256018CFC(v10, 0);
        result = sub_25601BC80();
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

uint64_t sub_256018C10(uint64_t result)
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

  result = sub_256018D70(result, v12, 1, v3);
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

void *sub_256018CFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8248E8, "H\b");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_256018D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8248E8, "H\b");
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_256018EB0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_256018EBC()
{
  result = qword_27F8248F0;
  if (!qword_27F8248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8248F0);
  }

  return result;
}

uint64_t sub_256018F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8248F8, qword_25601C818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_256018F78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_256018F88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_256018FAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_256018FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static LiveSpeechAnalytics.didSpeak(inputMode:mixToUplink:voiceName:language:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = sub_25601BB80();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 17) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_256019380;
  *(v14 + 24) = v13;
  v16[4] = sub_256019394;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2560193BC;
  v16[3] = &block_descriptor_0;
  v15 = _Block_copy(v16);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

unint64_t sub_2560191CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F824978, &qword_25601C908);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7079547475706E69;
  *(inited + 16) = xmmword_25601C8E0;
  *(inited + 40) = 0xE900000000000065;
  v1 = sub_25601BB80();

  *(inited + 48) = v1;
  *(inited + 56) = 0x6C70556F5478696DLL;
  *(inited + 64) = 0xEB000000006B6E69;
  *(inited + 72) = sub_25601BC20();
  *(inited + 80) = 0x6D614E6563696F76;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = sub_25601BB80();
  *(inited + 104) = 0x65676175676E616CLL;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = sub_25601BB80();
  v2 = sub_2560196A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F824980, &qword_25601C910);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_256019380()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  return sub_2560191CC();
}

uint64_t sub_256019394()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_2560193BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_256019540();
    v5 = sub_25601BB60();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for LiveSpeechAnalytics(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LiveSpeechAnalytics(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_256019540()
{
  result = qword_27F824970;
  if (!qword_27F824970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F824970);
  }

  return result;
}

unint64_t sub_25601958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F824990, &qword_25601C920);
    v3 = sub_25601BCC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2560197AC(v4, v13);
      result = sub_25601B540(v13);
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
      result = sub_25601981C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2560196A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F824988, &qword_25601C918);
    v3 = sub_25601BCC0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25601B584(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_2560197AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F824998, &qword_25601C928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25601981C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_25601982C()
{
  v0 = sub_25601BB80();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27F8249A0 = v1;
}

uint64_t sub_2560198A0(uint64_t a1)
{
  if (qword_27F824850 != -1)
  {
    swift_once();
  }

  if (qword_27F8249A0)
  {
    v2 = qword_27F8249A0;
    v3 = sub_25601BB80();
    v4 = sub_25601BB80();
    v5 = sub_25601BB80();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    a1 = sub_25601BB90();
  }

  else
  {
  }

  return a1;
}

uint64_t LiveSpeechInputMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657469726F766166;
  }

  else
  {
    result = 0x6472616F6279656BLL;
  }

  *v0;
  return result;
}

uint64_t LiveSpeechInputMode.title.getter()
{
  v1 = 0xD000000000000011;
  if (*v0)
  {
    if (qword_27F824850 != -1)
    {
      swift_once();
    }

    if (qword_27F8249A0)
    {
LABEL_9:
      v2 = qword_27F8249A0;
      v3 = sub_25601BB80();
      v4 = sub_25601BB80();
      v5 = sub_25601BB80();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v1 = sub_25601BB90();
    }
  }

  else
  {
    if (qword_27F824850 != -1)
    {
      swift_once();
    }

    v1 = 0xD000000000000012;
    if (qword_27F8249A0)
    {
      goto LABEL_9;
    }
  }

  return v1;
}

uint64_t LiveSpeechInputMode.systemImageName.getter()
{
  if (*v0)
  {
    result = 0x6B72616D6B6F6F62;
  }

  else
  {
    result = 0x6472616F6279656BLL;
  }

  *v0;
  return result;
}

LiveSpeechServices::LiveSpeechInputMode_optional __swiftcall LiveSpeechInputMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25601BCD0();

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

uint64_t sub_256019C50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657469726F766166;
  }

  else
  {
    v4 = 0x6472616F6279656BLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF73657361726850;
  }

  if (*a2)
  {
    v6 = 0x657469726F766166;
  }

  else
  {
    v6 = 0x6472616F6279656BLL;
  }

  if (*a2)
  {
    v7 = 0xEF73657361726850;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25601BCF0();
  }

  return v9 & 1;
}

uint64_t sub_256019D04()
{
  v1 = *v0;
  sub_25601BD50();
  sub_25601BBB0();

  return sub_25601BD70();
}

uint64_t sub_256019D94()
{
  *v0;
  sub_25601BBB0();
}

uint64_t sub_256019E10()
{
  v1 = *v0;
  sub_25601BD50();
  sub_25601BBB0();

  return sub_25601BD70();
}

uint64_t sub_256019E9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25601BCD0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_256019EFC(uint64_t *a1@<X8>)
{
  v2 = 0x6472616F6279656BLL;
  if (*v1)
  {
    v2 = 0x657469726F766166;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF73657361726850;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_256019FF8()
{
  result = [objc_allocWithZone(type metadata accessor for LiveSpeechService()) init];
  qword_28133F5A0 = result;
  return result;
}

id static LiveSpeechService.shared.getter()
{
  if (qword_28133F598 != -1)
  {
    swift_once();
  }

  v1 = qword_28133F5A0;

  return v1;
}

id LiveSpeechService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25601A240(uint64_t (*a1)(void))
{
  if (qword_28133F5A8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

uint64_t sub_25601A2C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (qword_28133F5A8 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  a4();
  return 1;
}

void LiveSpeechService.inputMode.getter(BOOL *a1@<X8>)
{
  sub_25601A618();
  v3 = v2;
  v4 = sub_25601BB80();
  v5 = [v3 stringForKey_];

  v7 = 0;
  if (v5)
  {
    sub_25601BB90();

    v6 = sub_25601BCD0();
    swift_bridgeObjectRelease_n();
    if (v6 == 1)
    {
      v7 = 1;
    }
  }

  *a1 = v7;
}

void sub_25601A454(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25601A618();
  v5 = v4;
  v6 = sub_25601BB80();

  v7 = sub_25601BB80();
  [v5 setObject:v6 forKey:v7];
}

void LiveSpeechService.inputMode.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_25601A618();
  v3 = v2;
  v4 = sub_25601BB80();

  v5 = sub_25601BB80();
  [v3 setObject:v4 forKey:v5];
}

void sub_25601A618()
{
  v1 = OBJC_IVAR___LiveSpeechServices____lazy_storage___liveSpeechDefaults;
  v2 = *(v0 + OBJC_IVAR___LiveSpeechServices____lazy_storage___liveSpeechDefaults);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LiveSpeechServices____lazy_storage___liveSpeechDefaults);
LABEL_5:
    v8 = v2;
    return;
  }

  sub_25601BB20();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_25601BB80();

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void (*LiveSpeechService.inputMode.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  sub_25601A618();
  v4 = v3;
  v5 = sub_25601BB80();
  v6 = [v4 stringForKey_];

  if (!v6)
  {
    goto LABEL_4;
  }

  sub_25601BB90();

  v7 = sub_25601BCD0();
  swift_bridgeObjectRelease_n();
  if (v7 == 1)
  {
    v8 = 1;
    goto LABEL_6;
  }

  v8 = 0;
  if (v7)
  {
LABEL_4:
    v8 = 0;
  }

LABEL_6:
  *(a1 + 8) = v8;
  return sub_25601A7DC;
}

void sub_25601A7DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_25601A618();
  v6 = v3;
  v4 = sub_25601BB80();

  v5 = sub_25601BB80();
  [v6 setObject:v4 forKey:v5];
}

id sub_25601AA78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_25601BB80();

  return v3;
}

id sub_25601AAD4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_25601A618();
  v6 = v5;
  v7 = [v5 *a3];

  return v7;
}

uint64_t sub_25601AB48(SEL *a1)
{
  sub_25601A618();
  v3 = v2;
  v4 = [v2 *a1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
  v5 = sub_25601BC10();

  return v5;
}

Swift::Void __swiftcall LiveSpeechService.addFavoritePhrase(_:)(Swift::OpaquePointer a1)
{
  sub_25601A618();
  v4 = v3;
  v5 = [v3 favoritePhrases];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
  v6 = sub_25601BC10();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_25601B40C(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_25601B40C((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = a1._rawValue;
  v9 = *(v1 + OBJC_IVAR___LiveSpeechServices____lazy_storage___liveSpeechDefaults);
  v10 = sub_25601BC00();

  [v9 setFavoritePhrases_];

  sub_25601BB50();
  v11 = sub_25601BBA0();

  notify_post((v11 + 32));
}

Swift::Void __swiftcall LiveSpeechService.removeFavoritePhrase(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_25601A618();
  v4 = v3;
  v5 = [v3 favoritePhrases];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
  v6 = sub_25601BC10();

  v23 = v6;
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_14:

    v16 = *(v19 + OBJC_IVAR___LiveSpeechServices____lazy_storage___liveSpeechDefaults);
    v17 = sub_25601BC00();

    [v16 setFavoritePhrases_];

    sub_25601BB50();
    v18 = sub_25601BBA0();

    notify_post((v18 + 32));

    return;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    v9 = *(v6 + 8 * v8 + 32);

    v10 = _s18LiveSpeechServices0aB7ServiceC13phraseTextKeySSvg_0();
    if (!*(v9 + 16))
    {

LABEL_3:

      goto LABEL_4;
    }

    v12 = sub_25601B584(v10, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_256018A38(*(v9 + 56) + 32 * v12, v22);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v20 == countAndFlagsBits && v21 == object)
    {

LABEL_16:

      sub_25601AFF8(v8);
      goto LABEL_14;
    }

    v15 = sub_25601BCF0();

    if (v15)
    {
      goto LABEL_16;
    }

LABEL_4:
    if (v7 == ++v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_25601AFF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25601B9C4(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25601B110(uint64_t a1, uint64_t a2)
{
  sub_25601A618();
  v5 = v4;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_25601BAD0();

  return v7;
}

void sub_25601B1D4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
  v5 = sub_25601BC10();

  *a3 = v5;
}

void sub_25601B240(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
  v8 = sub_25601BC00();
  [v7 *a5];
}

uint64_t sub_25601B3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_25601B40C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249C8, &qword_25601CB28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8249A8, &unk_25601C950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25601B540(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25601BC60();

  return sub_25601B844(a1, v5);
}

unint64_t sub_25601B584(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25601BD50();
  sub_25601BBB0();
  v6 = sub_25601BD70();

  return sub_25601B90C(a1, a2, v6);
}

unint64_t sub_25601B60C()
{
  result = qword_27F8249B8;
  if (!qword_27F8249B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8249B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveSpeechInputMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveSpeechInputMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25601B7F0()
{
  result = qword_27F8249C0;
  if (!qword_27F8249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8249C0);
  }

  return result;
}

unint64_t sub_25601B844(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25601B9D8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C56880](v9, a1);
      sub_25601BA34(v9);
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

unint64_t sub_25601B90C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25601BCF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}
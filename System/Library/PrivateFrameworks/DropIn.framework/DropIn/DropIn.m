void sub_249DA8C18(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_249DA8C4C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_249DA8C54()
{
  MEMORY[0x24C203FC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA8D10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249DA8D58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA8D90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA8DC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA8E0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_249DDCCA8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_249DA8E30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA8E80()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DA8EE4()
{
  MEMORY[0x24C203FC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA8F1C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249DA8F64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA8F9C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA8FEC()
{
  MEMORY[0x24C203FC0](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DA901C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_249DC0620();
  *a2 = result;
  return result;
}

uint64_t sub_249DA904C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_249DC0738();
  *a2 = result;
  return result;
}

uint64_t sub_249DA9080()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DA90C0()
{
  v1 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DA90FC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DA9130()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DA9164()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DA91A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DA9208()
{
  v1 = sub_249DDC668();
  OUTLINED_FUNCTION_10(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_249DA92D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DA9320()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DA9380()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA93B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA9494()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_249DA94DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

__n128 sub_249DA9568(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_249DA9588(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_249DA9594(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_2(a1);
  result = sub_249DD2AE0();
  *v1 = result;
  return result;
}

uint64_t sub_249DA95C0(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_2(a1);
  result = sub_249DD2C1C();
  *v1 = result;
  return result;
}

uint64_t sub_249DA95EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_2(a1);
  result = sub_249DD2D58();
  *v1 = result;
  return result;
}

uint64_t sub_249DA9618(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_2(a1);
  result = sub_249DD2E94();
  *v1 = result;
  return result;
}

uint64_t sub_249DA9644(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_2(a1);
  result = sub_249DD2FD4();
  *v1 = result;
  return result;
}

uint64_t sub_249DA9670()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA96B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DA96F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_249DDC5F8();
    v10 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

_BYTE *sub_249DA9790(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_249DDC5F8();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DA980C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA9844()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DA98AC()
{
  MEMORY[0x24C203FC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DA98E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DA9924()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id DILogHandleDropInSession()
{
  if (DILogHandleDropInSession_once != -1)
  {
    DILogHandleDropInSession_cold_1();
  }

  v1 = DILogHandleDropInSession_logger;

  return v1;
}

void sub_249DAB454(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_249DABA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249DAC0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249DAC680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DILogHandleDropInSession_block_invoke()
{
  DILogHandleDropInSession_logger = os_log_create("com.apple.dropin", "DropInSession");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleDevice()
{
  if (DILogHandleDevice_once != -1)
  {
    DILogHandleDevice_cold_1();
  }

  v1 = DILogHandleDevice_logger;

  return v1;
}

void sub_249DAF0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DILogHandleDevice_block_invoke()
{
  DILogHandleDevice_logger = os_log_create("com.apple.dropin", "Device");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleDropInRequest()
{
  if (DILogHandleDropInRequest_once != -1)
  {
    DILogHandleDropInRequest_cold_1();
  }

  v1 = DILogHandleDropInRequest_logger;

  return v1;
}

uint64_t __DILogHandleDropInRequest_block_invoke()
{
  DILogHandleDropInRequest_logger = os_log_create("com.apple.dropin", "DropInRequest");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleDropInCenter()
{
  if (DILogHandleDropInCenter_once != -1)
  {
    DILogHandleDropInCenter_cold_1();
  }

  v1 = DILogHandleDropInCenter_logger;

  return v1;
}

uint64_t __DILogHandleDropInCenter_block_invoke()
{
  DILogHandleDropInCenter_logger = os_log_create("com.apple.dropin", "DropInCenter");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleAudioPowerController()
{
  if (DILogHandleAudioPowerController_once != -1)
  {
    DILogHandleAudioPowerController_cold_1();
  }

  v1 = DILogHandleAudioPowerController_logger;

  return v1;
}

uint64_t __DILogHandleAudioPowerController_block_invoke()
{
  DILogHandleAudioPowerController_logger = os_log_create("com.apple.dropin", "AudioPowerController");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleDIDropInSessionManager()
{
  if (DILogHandleDIDropInSessionManager_once != -1)
  {
    DILogHandleDIDropInSessionManager_cold_1();
  }

  v1 = DILogHandleDIDropInSessionManager_logger;

  return v1;
}

uint64_t __DILogHandleDIDropInSessionManager_block_invoke()
{
  DILogHandleDIDropInSessionManager_logger = os_log_create("com.apple.dropin", "DIDropInSessionManager");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleDeviceManager()
{
  if (DILogHandleDeviceManager_once != -1)
  {
    DILogHandleDeviceManager_cold_1();
  }

  v1 = DILogHandleDeviceManager_logger;

  return v1;
}

uint64_t __DILogHandleDeviceManager_block_invoke()
{
  DILogHandleDeviceManager_logger = os_log_create("com.apple.dropin", "DeviceManager");

  return MEMORY[0x2821F96F8]();
}

id DILogHandleAudioSystemController()
{
  if (DILogHandleAudioSystemController_once[0] != -1)
  {
    DILogHandleAudioSystemController_cold_1();
  }

  v1 = DILogHandleAudioSystemController_logger;

  return v1;
}

void sub_249DB5354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249DB54F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_249DB59C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249DB5B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __DILogHandleAudioSystemController_block_invoke()
{
  DILogHandleAudioSystemController_logger = os_log_create("com.apple.dropin", "AudioSystemController");

  return MEMORY[0x2821F96F8]();
}

void sub_249DB651C(void *a1, void (**a2)(void))
{
  [a1 lock];
  a2[2](a2);
  [a1 unlock];

  _Block_release(a2);
}

id NSRecursiveLock.di_synchronize(_:)(void (*a1)(id))
{
  a1([v1 lock]);

  return [v1 unlock];
}

void sub_249DB65E4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  sub_249DB651C(v5, v4);
  _Block_release(v4);
}

uint64_t sub_249DB6698()
{
  v0 = sub_249DDC878();
  v2 = v1;
  if (v0 == sub_249DDC878() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_249DDCCF8();
  }

  return v5 & 1;
}

uint64_t sub_249DB6738(uint64_t a1, id *a2)
{
  result = sub_249DDC858();
  *a2 = 0;
  return result;
}

uint64_t sub_249DB67B4(uint64_t a1, id *a2)
{
  v3 = sub_249DDC868();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249DB6834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249DB685C();
  *a1 = result;
  return result;
}

uint64_t sub_249DB685C()
{
  sub_249DDC878();
  v0 = sub_249DDC848();

  return v0;
}

uint64_t sub_249DB6894(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_249DB6698();
}

uint64_t sub_249DB68A0()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_249DB68D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_249DDC848();

  *a2 = v5;
  return result;
}

uint64_t sub_249DB691C()
{
  OUTLINED_FUNCTION_0();
  result = sub_249DBE900();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_249DB6958(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_249DB69A4(uint64_t a1)
{
  v2 = sub_249DB6AA4(&qword_27EF21000);
  v3 = sub_249DB6AA4(&qword_27EF21008);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_249DB6AA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Category(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249DB6B24()
{
  v0 = sub_249DDC878();
  v1 = MEMORY[0x24C203260](v0);

  return v1;
}

uint64_t sub_249DB6B64()
{
  sub_249DDC878();
  sub_249DDC8A8();
}

uint64_t sub_249DB6BC0()
{
  sub_249DDC878();
  sub_249DDCD88();
  sub_249DDC8A8();
  v0 = sub_249DDCDA8();

  return v0;
}

uint64_t sub_249DB6C48(uint64_t a1, uint64_t a2)
{
  if (qword_27EF20E90 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF21220;

  MEMORY[0x24C203240](46, 0xE100000000000000);
  MEMORY[0x24C203240](a1, a2);
  return v5;
}

id sub_249DB6CE4()
{
  v1 = v0;
  sub_249DB6D9C();
  v2 = sub_249DDCAE8();
  v3 = sub_249DDCBA8();

  if (v3)
  {
    v4 = [objc_opt_self() mainQueue];

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v6 setUnderlyingQueue_];
    return v6;
  }
}

unint64_t sub_249DB6D9C()
{
  result = qword_28130BCB8;
  if (!qword_28130BCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130BCB8);
  }

  return result;
}

uint64_t sub_249DB6E08(unsigned __int8 a1)
{
  sub_249DDCD88();
  MEMORY[0x24C203720](a1);
  return sub_249DDCDA8();
}

uint64_t sub_249DB6E6C()
{
  v1 = *v0;
  sub_249DDCD88();
  MEMORY[0x24C203720](v1);
  return sub_249DDCDA8();
}

char *sub_249DB6EC0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_249DDC5F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer;
  *&v3[OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer] = 0;
  (*(v6 + 16))(v9, a1, v5);
  v12 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  v13 = sub_249DB7D70(v9);
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    v14 = v10[1];
    sub_249DB7B48(*v10);

    type metadata accessor for AudioPlayer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer] = v13;
    v15 = type metadata accessor for AudioPlayer();
    v17.receiver = v3;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    [*&v3[OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer] setDelegate_];
    (*(v6 + 8))(a1, v5);
  }

  return v3;
}

uint64_t sub_249DB7088(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_249DB70AC, 0, 0);
}

uint64_t sub_249DB70AC()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[4] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_249DB71D8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_249DB71D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_249DB7314;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = sub_249DB72FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_249DB7314()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_249DB7380(uint64_t a1, double a2)
{
  v4 = sub_249DDC6A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v36 = *(v9 + 16);
    v36(v12, a1, v8);
    v37 = v7;
    v38 = v14;
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = a1;
    v17 = swift_allocObject();
    v35 = *(v9 + 32);
    v35(v17 + v15, v12, v8);
    v18 = &v38[OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler];
    v19 = *&v38[OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler];
    v20 = *&v38[OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler + 8];
    *v18 = sub_249DB7BAC;
    v18[1] = v17;
    sub_249DB7B48(v19);
    v36(v12, v16, v8);
    v21 = v38;
    v22 = swift_allocObject();
    v35(v22 + v15, v12, v8);
    v23 = v37;
    sub_249DDC698();
    v24 = objc_allocWithZone(type metadata accessor for OneshotTimer());
    v25 = OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(0, v23, 0x54746F6873656E4FLL, 0xEC00000072656D69, sub_249DB7CCC, v22, a2);
    v26 = OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer;
    v27 = *&v21[OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer];
    *&v21[OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer] = v25;

    v28 = OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer;
    if (([*&v21[OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer] play] & 1) == 0)
    {
      v29 = *v18;
      v30 = v18[1];
      *v18 = 0;
      v18[1] = 0;
      sub_249DB7B48(v29);
      v31 = *&v21[v26];
      if (v31)
      {
        v32 = v31;
        sub_249DD9634();
      }

      [*&v21[v28] stop];
      sub_249DB7AE4();
      v33 = swift_allocError();
      *v34 = 1;
      v39 = v33;
      sub_249DDC958();
    }
  }
}

uint64_t sub_249DB76B8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
    return sub_249DDC958();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
    return sub_249DDC968();
  }
}

uint64_t sub_249DB772C()
{
  sub_249DB7AE4();
  swift_allocError();
  *v0 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  return sub_249DDC958();
}

void sub_249DB779C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer);
  if (v2)
  {
    v3 = v2;
    sub_249DD9634();
  }

  v4 = v1 + OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler;
  v5 = *(v1 + OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler);
  if (v5)
  {
    v6 = *(v4 + 8);

    v5(0, 0);

    sub_249DB7B48(v5);
  }
}

void sub_249DB7894(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC6DropIn11AudioPlayer_timeoutTimer);
  if (v5)
  {
    v6 = v5;
    sub_249DD9634();
  }

  v7 = v3 + OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler;
  v8 = *(v3 + OBJC_IVAR____TtC6DropIn11AudioPlayer_playHandler);
  if (v8)
  {
    v9 = *(v7 + 8);
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      sub_249DB7AE4();
      v10 = swift_allocError();
      *v11 = 0;
    }

    sub_249DB7B38(v8);
    v12 = a2;
    v8(v10, 1);
    sub_249DB7B48(v8);
  }
}

id sub_249DB7A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_249DB7AE4()
{
  result = qword_27EF21150;
  if (!qword_27EF21150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21150);
  }

  return result;
}

uint64_t sub_249DB7B38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249DB7B48(uint64_t result)
{
  if (result)
  {
  }

  return result;
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

uint64_t sub_249DB7BAC(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8) - 8) + 80);

  return sub_249DB76B8(a1, a2 & 1);
}

uint64_t objectdestroy_20Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DB7CCC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8) - 8) + 80);

  return sub_249DB772C();
}

id sub_249DB7D70(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_249DDC5D8();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_249DDC5F8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_249DDC5C8();

    swift_willThrow();
    v11 = sub_249DDC5F8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t getEnumTagSinglePayload for AudioPlayer.PlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioPlayer.PlaybackError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_249DB8048()
{
  result = qword_27EF21160;
  if (!qword_27EF21160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21160);
  }

  return result;
}

DropIn::ActivationState_optional __swiftcall ActivationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if ((rawValue + 1) < 0xA)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_249DB80F8@<X0>(uint64_t *a1@<X8>)
{
  result = ActivationState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static AppStateActivationError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
LABEL_25:
      sub_249DB8228(*a1, v3, v4);
      v9 = 0;
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (v4 == 1)
  {
    if (v7 != 1)
    {
      goto LABEL_25;
    }

LABEL_6:
    v8 = *(a1 + 8);

    goto LABEL_7;
  }

  if (v2 | v3)
  {
    if (v2 ^ 1 | v3)
    {
      v10 = v7 == 2 && v5 == 2;
    }

    else
    {
      v10 = v7 == 2 && v5 == 1;
    }

    if (!v10 || v6 != 0)
    {
      goto LABEL_25;
    }
  }

  else if (v7 != 2 || (v6 | v5) != 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  v9 = 1;
LABEL_26:
  sub_249DB8228(v5, v6, v7);
  sub_249DB8240(v2, v3, v4);
  sub_249DB8240(v5, v6, v7);
  return v9;
}

uint64_t sub_249DB8228(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_249DB8240(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_249DB825C()
{
  result = qword_27EF21170;
  if (!qword_27EF21170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21170);
  }

  return result;
}

unint64_t sub_249DB82B4()
{
  result = qword_27EF21178;
  if (!qword_27EF21178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF21180, &qword_249DDEEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21178);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActivationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6DropIn23AppStateActivationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_249DB84F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249DB8538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_249DB857C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_249DB85A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_249DB85D4()
{
  sub_249DB85A4();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x2821FE8D8]();
}

void sub_249DB8628()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  if (*(v0 + 128))
  {
    if (v2)
    {
      v3 = *(v0 + 120);
      v9 = v1;
      v10 = 0;

      v2(&v9);
      sub_249DB7B48(v2);
    }
  }

  else if (v2)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 136);
    v6 = v5;
    if (!v5)
    {
      sub_249DBB670();
      v6 = swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
    }

    v9 = v6;
    v10 = 1;
    sub_249DB7B38(v2);
    v8 = v5;
    v2(&v9);
    sub_249DB7B48(v2);
    sub_249DBBD80(v9, v10);
  }
}

void *sub_249DB8720()
{
  v1 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v2 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer);
  v3 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);
  type metadata accessor for AppStateActivationResources();
  OUTLINED_FUNCTION_25();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  v5 = v1;

  return v4;
}

uint64_t sub_249DB8798()
{
  v1 = sub_249DDC6E8();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  swift_defaultActor_initialize();
  *(v0 + 136) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement) = 0;
  sub_249DDC6D8();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_logger, v9, v1);
  *(v0 + 128) = 1;
  return v0;
}

uint64_t sub_249DB88D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_249DB7B48(v3);
}

void sub_249DB891C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  *(v1 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session) = a1;
  v3 = a1;

  *(v1 + 128) = 2;
  sub_249DB8628();

  sub_249DB8AB8();
}

uint64_t sub_249DB896C(_BYTE *a1)
{
  *(v1 + 128) = *a1;
  sub_249DB8628();

  return sub_249DB8AB8();
}

uint64_t sub_249DB899C(void *a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  v3 = a1;

  v5 = 0;
  return sub_249DB896C(&v5);
}

void sub_249DB89E0()
{
  v1 = *(v0 + 136);
  *(v0 + 136) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session) = 0;

  *(v0 + 128) = 1;
  sub_249DB8628();
  v3 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer);
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer) = 0;

  v4 = OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer;
  if (*(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer))
  {

    sub_249DD5F70();

    v5 = *(v0 + v4);
  }

  *(v0 + v4) = 0;

  OUTLINED_FUNCTION_36(OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);
  if (qword_27EF20E88 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  sub_249DBD254();
}

void sub_249DB8AB8()
{
  switch(*(v0 + 128))
  {
    case 1:
      return;
    case 2:
    case 7:
      sub_249DB8B00();
      break;
    case 3:
      sub_249DB8B5C();
      break;
    case 4:
      sub_249DB96E0();
      break;
    case 5:
      sub_249DB9DE8();
      break;
    case 6:
      sub_249DBA3C4();
      break;
    case 8:
      sub_249DBA9E8();
      break;
    default:
      OUTLINED_FUNCTION_16(1);
      break;
  }
}

void sub_249DB8B00()
{
  v1 = *(v0 + 128);
  if (v1 == 9)
  {
    v2 = 9;
  }

  else
  {
    ActivationState.init(rawValue:)(v1);
    v2 = v3;
    if (v3 == 10)
    {
      v2 = 1;
    }
  }

  *(v0 + 128) = v2;
  sub_249DB8628();

  sub_249DB8AB8();
}

uint64_t sub_249DB8B5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  sub_249DDC9A8();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = sub_249DBB588();
  OUTLINED_FUNCTION_25();
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v10;
  v11[4] = v0;
  swift_retain_n();
  v12 = OUTLINED_FUNCTION_7();
  sub_249DC3594(v12, v13, v5, v14, v11);
}

uint64_t sub_249DB8C54()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  sub_249DBB588();
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_249DB8D28;
  v4 = *(v0 + 16);

  return MEMORY[0x282200600]();
}

uint64_t sub_249DB8D28()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_249DB8E28, v3, 0);
}

uint64_t sub_249DB8E28()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  sub_249DB8B00();
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DB8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249DB8F20, a3, 0);
}

uint64_t sub_249DB8F20()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_249DDC9A8();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_249DB9350(v2, &unk_249DDF1B8, v8);
  sub_249DBBB44(v2, &qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_25();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  sub_249DB9350(v2, &unk_249DDF1C8, v13);
  sub_249DBBB44(v2, &qword_27EF21570, &qword_249DDF130);
  v14 = sub_249DBB588();
  v15 = *(MEMORY[0x277D85698] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211E0, &qword_249DDF1D0);
  *v16 = v0;
  v16[1] = sub_249DB90E4;
  v18 = v0[2];

  return MEMORY[0x2822002C8](v1, v14, v17);
}

uint64_t sub_249DB90E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_4();

  return v6();
}

uint64_t sub_249DB91E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249DB9270;

  return sub_249DBC0A4(1);
}

uint64_t sub_249DB9270()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5();
}

uint64_t sub_249DB9350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_249DBBC70(a1, v22 - v10);
  v12 = sub_249DDC9A8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249DBBB44(v11, &qword_27EF21570, &qword_249DDF130);
  }

  else
  {
    sub_249DDC998();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_249DDC948();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_249DB9554()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_249DB9604, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_4();

    return v3();
  }
}

uint64_t sub_249DB9604()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 56) = *(*(v0 + 48) + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);

  return MEMORY[0x2822009F8](sub_249DB967C, 0, 0);
}

uint64_t sub_249DB967C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  if (v2)
  {
    v3 = *(v0 + 56);
  }

  OUTLINED_FUNCTION_4();

  return v4();
}

void sub_249DB96E0()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_33();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211B8, &qword_249DDF138);
  OUTLINED_FUNCTION_19(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  v20 = sub_249DDC5F8();
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  static ToneProvider.startToneURL.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v20) == 1)
  {
    sub_249DBBB44(v1, &qword_27EF211B8, &qword_249DDF138);
    OUTLINED_FUNCTION_38();
    v29 = OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24(v30, 22);
    sub_249DB899C(v31);
  }

  else
  {
    v32 = OUTLINED_FUNCTION_31(v23);
    v33(v32);
    v34 = OUTLINED_FUNCTION_29(*(v9 + 24));
    v35(v34);
    OUTLINED_FUNCTION_21(xmmword_249DDEDC0);
    if (qword_27EF20E88 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v36 = sub_249DBCAD4(v15);
    v37 = *(v4 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer);
    *(v4 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer) = v36;
    swift_retain_n();

    sub_249DDC9A8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    sub_249DBB588();
    OUTLINED_FUNCTION_22();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_26(v42);
    v43 = OUTLINED_FUNCTION_7();
    sub_249DC3594(v43, v44, v2, v45, v3);

    sub_249DBB328(v15);
    (*(v23 + 8))(v28, v20);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_249DB9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_249DB9A58, a5, 0);
}

uint64_t sub_249DB9A58()
{
  OUTLINED_FUNCTION_15();
  if (qword_27EF20E88 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v0[4] = qword_27EF211F0;
  sub_249DBD174();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_249DB9BB4;
  v2 = v0[2];

  return sub_249DD5C18();
}

uint64_t sub_249DB9BB4()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 40);
  *v4 = *v1;
  *(v3 + 48) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_249DB9D30;
  }

  else
  {
    v7 = sub_249DB9CD8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_249DB9CD8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  sub_249DB8B00();
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DB9D30()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer);
  *(v3 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer) = 0;

  sub_249DBD254();
  OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24(v6, 25);
  sub_249DB899C(v7);

  OUTLINED_FUNCTION_4();

  return v8();
}

void sub_249DB9DE8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_13();
  }

  if (byte_27EF22F78)
  {
    OUTLINED_FUNCTION_35();

    sub_249DB8B00();
  }

  else
  {
    type metadata accessor for DropInSiriAnnouncement();
    swift_allocObject();
    v8 = sub_249DCCF60(0);
    v9 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);
    *(v2 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement) = v8;

    v10 = sub_249DDC6C8();
    v11 = sub_249DDCA78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_28();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v14 = sub_249DCCF08();
      v16 = sub_249DD23AC(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_249DA7000, v10, v11, "Drop In Siri Announcement %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    sub_249DDC9A8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = sub_249DBB588();
    OUTLINED_FUNCTION_22();
    v22 = swift_allocObject();
    v22[2] = v2;
    v22[3] = v21;
    v22[4] = v8;
    v22[5] = v2;
    swift_retain_n();
    v23 = OUTLINED_FUNCTION_7();
    sub_249DC3594(v23, v24, v1, v25, v22);

    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_249DBA02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_249DBA0C0;

  return sub_249DCCFB4();
}

uint64_t sub_249DBA0C0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v9 + 32) = v0;

  if (v0)
  {
    v10 = sub_249DBA2AC;
  }

  else
  {
    v10 = sub_249DBA1D4;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_249DBA1D4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);
  *(v1 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement) = 0;

  v3 = sub_249DDC6C8();
  v4 = sub_249DDCA78();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_34(&dword_249DA7000, v5, v6, "Drop In Siri Announcement successful");
    OUTLINED_FUNCTION_20();
  }

  v7 = *(v0 + 16);

  sub_249DB8B00();
  OUTLINED_FUNCTION_4();

  return v8();
}

uint64_t sub_249DBA2AC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16) + OBJC_IVAR____TtC6DropIn18AppStateActivation_logger;
  v2 = sub_249DDC6C8();
  v3 = sub_249DDCA68();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_34(&dword_249DA7000, v4, v5, "Drop In Siri Announcement failed");
    OUTLINED_FUNCTION_20();
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_249DB89E0();
  sub_249DBB670();
  v8 = OUTLINED_FUNCTION_27();
  *v9 = 0xD000000000000023;
  *(v9 + 8) = 0x8000000249DE11E0;
  *(v9 + 16) = 1;
  sub_249DB899C(v8);

  OUTLINED_FUNCTION_4();

  return v10();
}

void sub_249DBA3C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_13();
  }

  if ((byte_27EF22F78 & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
    if (v7)
    {
      sub_249DDC9A8();
      OUTLINED_FUNCTION_17();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      v12 = sub_249DBB588();
      OUTLINED_FUNCTION_22();
      v13 = swift_allocObject();
      v13[2] = v0;
      v13[3] = v12;
      v13[4] = v7;
      v13[5] = v0;
      swift_retain_n();
      v14 = v7;
      v15 = OUTLINED_FUNCTION_7();
      sub_249DC3594(v15, v16, v6, v17, v13);
    }

    else
    {
      sub_249DBB670();
      v18 = OUTLINED_FUNCTION_27();
      *v19 = xmmword_249DDEDD0;
      *(v19 + 16) = 2;
      sub_249DB899C(v18);
    }
  }
}

uint64_t sub_249DBA540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_249DBA560, a5, 0);
}

uint64_t sub_249DBA560()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_249DBA670;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211D8, &qword_249DDF168);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249DCD6D0;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 startWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249DBA670()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = sub_249DBA894;
  }

  else
  {
    v6 = sub_249DBA784;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_249DBA784()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = sub_249DDC6C8();
  v4 = sub_249DDCA78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = OUTLINED_FUNCTION_28();
    v7 = OUTLINED_FUNCTION_37();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_249DA7000, v3, v4, "Drop in session start issued: %@", v6, 0xCu);
    sub_249DBBB44(v7, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_39();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_249DBA894()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_willThrow();
  v3 = v2;
  v4 = sub_249DDC6C8();
  v5 = sub_249DDCA68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = OUTLINED_FUNCTION_28();
    v8 = OUTLINED_FUNCTION_37();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_249DA7000, v4, v5, "Failed to start Drop In session. Error: %@", v7, 0xCu);
    sub_249DBBB44(v8, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);

  sub_249DB89E0();
  sub_249DB899C(v11);

  OUTLINED_FUNCTION_4();

  return v13();
}

void sub_249DBA9E8()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_33();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211B8, &qword_249DDF138);
  OUTLINED_FUNCTION_19(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  v20 = sub_249DDC5F8();
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  static ToneProvider.ongoingToneURL.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v20) == 1)
  {
    sub_249DBBB44(v1, &qword_27EF211B8, &qword_249DDF138);
    v29 = sub_249DDC6C8();
    v30 = sub_249DDCA68();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_249DA7000, v29, v30, "Invalid ongoing tone URL", v31, 2u);
      OUTLINED_FUNCTION_20();
    }

    sub_249DB8B00();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_31(v23);
    v33(v32);
    v34 = OUTLINED_FUNCTION_29(*(v9 + 24));
    v35(v34);
    OUTLINED_FUNCTION_21(xmmword_249DDEDE0);
    if (qword_27EF20E88 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v36 = sub_249DBCAD4(v15);
    v37 = *(v4 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer);
    *(v4 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer) = v36;
    swift_retain_n();

    sub_249DDC9A8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    sub_249DBB588();
    OUTLINED_FUNCTION_22();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_26(v42);
    v43 = OUTLINED_FUNCTION_7();
    sub_249DC3594(v43, v44, v2, v45, v3);

    sub_249DBB328(v15);
    (*(v23 + 8))(v28, v20);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_249DBADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_249DBAE7C;

  return sub_249DD5C18();
}

uint64_t sub_249DBAE7C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v9 + 32) = v0;

  if (v0)
  {
    v10 = sub_249DBAF90;
  }

  else
  {
    v10 = sub_249DBBD90;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_249DBAF90()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer);
  *(v2 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer) = 0;

  v4 = v1;
  v5 = sub_249DDC6C8();
  v6 = sub_249DDCA68();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_28();
    v10 = OUTLINED_FUNCTION_37();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_249DA7000, v5, v6, "Failed to schedule ongoing tone: %@", v9, 0xCu);
    sub_249DBBB44(v10, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
  }

  v13 = *(v0 + 16);
  sub_249DB8B00();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_39();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_249DBB0E8()
{
  v1 = *(v0 + 120);
  sub_249DB7B48(*(v0 + 112));

  v2 = OBJC_IVAR____TtC6DropIn18AppStateActivation_logger;
  v3 = sub_249DDC6E8();
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0 + v2);

  v5 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_startTonePlayer);

  v6 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_ongoingTonePlayer);

  v7 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateActivation_siriAnnouncement);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DBB198()
{
  sub_249DBB0E8();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AppStateActivation()
{
  result = qword_27EF211A8;
  if (!qword_27EF211A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DBB218()
{
  result = sub_249DDC6E8();
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

uint64_t sub_249DBB328(uint64_t a1)
{
  v2 = type metadata accessor for DropInPlayer.Settings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249DBB384(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249DBB47C;

  return v7(a1);
}

uint64_t sub_249DBB47C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5();
}

unint64_t sub_249DBB588()
{
  result = qword_27EF211C8;
  if (!qword_27EF211C8)
  {
    type metadata accessor for AppStateActivation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF211C8);
  }

  return result;
}

uint64_t sub_249DBB5E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_0(v1);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();

  return sub_249DBADE8(v3, v4, v5, v6, v7);
}

unint64_t sub_249DBB670()
{
  result = qword_27EF211D0;
  if (!qword_27EF211D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF211D0);
  }

  return result;
}

uint64_t sub_249DBB6C4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_0(v1);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();

  return sub_249DBA540(v3, v4, v5, v6, v7);
}

uint64_t sub_249DBB764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_249DBB814()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_0(v1);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();

  return sub_249DBA02C(v3, v4, v5, v6, v7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_249DBB8E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_0(v1);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();

  return sub_249DB9A38(v3, v4, v5, v6, v7);
}

uint64_t sub_249DBB978()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return sub_249DB8C34(v7, v8, v9, v3);
}

uint64_t sub_249DBBA10()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = sub_249DBBD8C;

  return sub_249DB8E80(v4, v2, v0);
}

uint64_t sub_249DBBAB0()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = sub_249DBBD8C;
  OUTLINED_FUNCTION_30();

  return sub_249DB91E0();
}

uint64_t sub_249DBBB44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_25();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249DBBBD8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return sub_249DB9534(v7, v8, v9, v3);
}

uint64_t sub_249DBBC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DBBCE0()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = sub_249DB9270;
  v6 = OUTLINED_FUNCTION_30();

  return v7(v6);
}

void sub_249DBBD80(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_11()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_once();
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x24C203F30);
}

void OUTLINED_FUNCTION_21(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u64[0] = 0x4014000000000000;
  *(v2->n128_u32 + *(v1 + 28)) = 1065353216;
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_26(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return type metadata accessor for DropInPlayer.Settings(0);
}

void OUTLINED_FUNCTION_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_38()
{

  return sub_249DBB670();
}

uint64_t sub_249DBC0A4(int a1)
{
  *(v1 + 192) = a1;
  v2 = sub_249DDC778();
  *(v1 + 152) = v2;
  v3 = *(v2 - 8);
  *(v1 + 160) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249DBC164, 0, 0);
}

uint64_t sub_249DBC164()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 192);
  v5 = [objc_opt_self() localOrigin];
  v6 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithOrigin_];
  *(v0 + 176) = v6;

  sub_249DB6D9C();
  (*(v2 + 104))(v1, *MEMORY[0x277D851C0], v3);
  v7 = sub_249DDCB18();
  *(v0 + 184) = v7;
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_249DBC354;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211E8, &unk_249DDF1F0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_249DBC4AC;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v8;
  [v6 sendCommand:v4 options:0 queue:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_249DBC354()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249DBC434, 0, 0);
}

uint64_t sub_249DBC434()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_249DBC4AC(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_249DCCE14(v3, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249DBC554()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_249DDC878();
  v4 = v3;

  if (v2 == 0x747365746378 && v4 == 0xE600000000000000)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_249DDCCF8();
  }

  byte_27EF22F78 = v6 & 1;
  return result;
}

uint64_t sub_249DBC628()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_249DBC66C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_249DBC6A4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 40);
    v5 = sub_249DB6CE4();
    v6 = *(v3 + 48);
    *(v3 + 48) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void *sub_249DBC6FC()
{
  type metadata accessor for DropInPlayerManager();
  swift_allocObject();
  result = sub_249DBC794();
  qword_27EF211F0 = result;
  return result;
}

uint64_t static DropInPlayerManager.shared.getter()
{
  if (qword_27EF20E88 != -1)
  {
    swift_once();
  }
}

void *sub_249DBC794()
{
  v1 = v0;
  v2 = sub_249DDCAD8();
  v16 = *(v2 - 8);
  v17 = v2;
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v15 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249DDCAA8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_249DDC7A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v0[6] = 0;
  v9 = [objc_opt_self() sharedInstance];
  v10 = *MEMORY[0x277CB8018];
  v1[2] = v9;
  v1[3] = v10;
  v11 = MEMORY[0x277D84F90];
  v1[4] = MEMORY[0x277D84F90];
  sub_249DBEE50(0, &qword_28130BCB8, 0x277D85C78);
  v12 = v10;
  v14[1] = sub_249DB6C48(0xD000000000000013, 0x8000000249DDF210);
  sub_249DDC798();
  v18 = v11;
  sub_249DBEE90(&qword_27EF21208, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21210, &qword_249DDF2D0);
  sub_249DBEED8(&qword_27EF21218, &qword_27EF21210, &qword_249DDF2D0);
  sub_249DDCBD8();
  (*(v16 + 104))(v15, *MEMORY[0x277D85260], v17);
  v1[5] = sub_249DDCB08();
  sub_249DBDFDC();
  return v1;
}

uint64_t DropInPlayerManager.deinit()
{
  sub_249DBE5B8();

  v1 = *(v0 + 32);

  return v0;
}

uint64_t DropInPlayerManager.__deallocating_deinit()
{
  DropInPlayerManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_249DBCAD4(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DropInPlayer.Settings(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_249DDC7E8();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v3 + 40);
  *(v17 - v16) = v19;
  (*(v13 + 104))(v17 - v16, *MEMORY[0x277D851F0], v10);
  v20 = v19;
  v21 = sub_249DDC808();
  result = (*(v13 + 8))(v18, v10);
  if (v21)
  {
    sub_249DBE684(a1, v9);
    v23 = type metadata accessor for DropInPlayer(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_249DD58F4(v9);
    if (v2)
    {
      return v26;
    }

    sub_249DD5A6C(*(v3 + 16), 0);
    v27 = swift_allocObject();
    *(v27 + 16) = v3;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_249DBE6E8;
    *(v28 + 24) = v27;
    v35 = sub_249DBE6F0;
    v36 = v28;
    OUTLINED_FUNCTION_0_1();
    v32 = 1107296256;
    v33 = sub_249DBD14C;
    v34 = &block_descriptor_1;
    v29 = _Block_copy(aBlock);

    dispatch_sync(v20, v29);
    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249DBCD9C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  result = sub_249DCC024(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      v5 = sub_249DCC024(v2);
LABEL_14:
      result = sub_249DCC024(v2);
      if (result < v5)
      {
        goto LABEL_59;
      }

      sub_249DBEB9C(v5, result);
      swift_endAccess();
      type metadata accessor for DropInPlayerManager.WeakDropInPlayer();
      swift_allocObject();

      sub_249DBC628();
      v9 = swift_beginAccess();
      MEMORY[0x24C203270](v9);
      sub_249DC33A8(*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_249DDC938();
      return swift_endAccess();
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      break;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_51;
    }
  }

  if (__OFADD__(v5, 1))
  {
    goto LABEL_63;
  }

  result = sub_249DCC024(v2);
  if (v5 + 1 == result)
  {
    goto LABEL_14;
  }

  v10 = v5 + 5;
  while (1)
  {
    v11 = v10 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v10 - 4, v2);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v12 = *(v2 + 8 * v10);
    }

    v13 = swift_weakLoadStrong();

    if (!v13)
    {
      goto LABEL_41;
    }

    if (v11 != v5)
    {
      break;
    }

LABEL_40:
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_55;
    }

LABEL_41:
    v8 = __OFADD__(v11, 1);
    v21 = v10 - 3;
    if (v8)
    {
      goto LABEL_54;
    }

    if (v2 >> 62)
    {
      result = sub_249DDCCA8();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v10;
    if (v21 == result)
    {
      goto LABEL_14;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x24C2035C0](v5, v2);
    v15 = MEMORY[0x24C2035C0](v10 - 4, v2);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= v16)
    {
      goto LABEL_61;
    }

    if (v11 >= v16)
    {
      goto LABEL_62;
    }

    v14 = *(v2 + 8 * v5 + 32);
    v15 = *(v2 + 8 * v10);
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(a1 + 32) = v2;
  if (!result || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    result = sub_249DBEDE4(v2);
    v2 = result;
    *(a1 + 32) = result;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v17 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

  v18 = v17 + 8 * v5;
  v19 = *(v18 + 32);
  *(v18 + 32) = v15;

  *(a1 + 32) = v2;
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_38;
  }

  result = sub_249DBEDE4(v2);
  v2 = result;
  *(a1 + 32) = result;
  v17 = result & 0xFFFFFFFFFFFFFF8;
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (v11 >= *(v17 + 16))
    {
      goto LABEL_58;
    }

    v20 = *(v17 + 8 * v10);
    *(v17 + 8 * v10) = v14;

    *(a1 + 32) = v2;
    goto LABEL_40;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
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
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_249DBD174()
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_1_0();
    swift_once();
  }

  if ((byte_27EF22F78 & 1) == 0)
  {
    sub_249DBDE1C();
    v1 = *(v0 + 16);
    v5[0] = 0;
    if ([v1 setActive:1 error:v5])
    {
      v2 = v5[0];
    }

    else
    {
      v3 = v5[0];
      sub_249DDC5C8();

      swift_willThrow();
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_249DBD254()
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_1_0();
    swift_once();
  }

  if (byte_27EF22F78)
  {
    goto LABEL_10;
  }

  v1 = *(v0 + 16);
  if (![v1 isActive])
  {
    goto LABEL_10;
  }

  v9[0] = 0;
  v2 = [v1 setActive:0 withOptions:0 error:v9];
  v3 = v9[0];
  if (!v2)
  {
    v6 = v9[0];
    v7 = sub_249DDC5C8();

    swift_willThrow();
LABEL_10:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *MEMORY[0x277D85DE8];

  v5 = v3;
}

uint64_t sub_249DBD3A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  v2 = *(v1 + 32);
  result = sub_249DCC024(v2);
  v3 = result;
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v4 = sub_249DCC024(v2);
LABEL_15:
      result = sub_249DCC024(v2);
      if (result < v4)
      {
        goto LABEL_73;
      }

      sub_249DBEB9C(v4, result);
      swift_endAccess();
      v8 = *(v1 + 32);
      v9 = sub_249DCC024(v8);

      for (i = 0; v9 != i; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x24C2035C0](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v11 = *(v8 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_62;
        }

        if (swift_weakLoadStrong())
        {
          sub_249DD5F70();
        }
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      break;
    }

    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      goto LABEL_65;
    }
  }

  if (__OFADD__(v4, 1))
  {
    goto LABEL_77;
  }

  result = sub_249DCC024(v2);
  if (v4 + 1 == result)
  {
    goto LABEL_15;
  }

  v12 = v4 + 5;
  while (1)
  {
    v13 = v12 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v12 - 4, v2);
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v14 = *(v2 + 8 * v12);
    }

    v15 = swift_weakLoadStrong();

    if (!v15)
    {
      goto LABEL_53;
    }

    if (v13 != v4)
    {
      break;
    }

LABEL_52:
    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      goto LABEL_69;
    }

LABEL_53:
    v7 = __OFADD__(v13, 1);
    v23 = v12 - 3;
    if (v7)
    {
      goto LABEL_68;
    }

    if (v2 >> 62)
    {
      result = sub_249DDCCA8();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v12;
    if (v23 == result)
    {
      goto LABEL_15;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x24C2035C0](v4, v2);
    v17 = MEMORY[0x24C2035C0](v12 - 4, v2);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v18)
    {
      goto LABEL_75;
    }

    if (v13 >= v18)
    {
      goto LABEL_76;
    }

    v16 = *(v2 + 8 * v4 + 32);
    v17 = *(v2 + 8 * v12);
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v1 + 32) = v2;
  if (!result || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    result = sub_249DBEDE4(v2);
    v2 = result;
    *(v1 + 32) = result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v19 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  v20 = v19 + 8 * v4;
  v21 = *(v20 + 32);
  *(v20 + 32) = v17;

  *(v1 + 32) = v2;
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  result = sub_249DBEDE4(v2);
  v2 = result;
  *(v1 + 32) = result;
  v19 = result & 0xFFFFFFFFFFFFFF8;
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_50:
    if (v13 >= *(v19 + 16))
    {
      goto LABEL_72;
    }

    v22 = *(v19 + 8 * v12);
    *(v19 + 8 * v12) = v16;

    *(v1 + 32) = v2;
    goto LABEL_52;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
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
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_249DBD7A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_249DDC768();
  v6 = OUTLINED_FUNCTION_10(v5);
  v26 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v25 = sub_249DDC7A8();
  v13 = OUTLINED_FUNCTION_10(v25);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v24 = *(v2 + 40);
  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  swift_weakInit();
  v31 = a1;
  v32 = v21;
  OUTLINED_FUNCTION_0_1();
  v28 = 1107296256;
  v29 = sub_249DBF358;
  v30 = a2;
  v22 = _Block_copy(aBlock);

  sub_249DDC788();
  sub_249DBEE90(&qword_28130BCE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF217B0, &unk_249DDF300);
  sub_249DBEED8(&qword_28130BCD8, &qword_27EF217B0, &unk_249DDF300);
  sub_249DDCBD8();
  MEMORY[0x24C203480](0, v20, v12, v22);
  _Block_release(v22);
  (*(v26 + 8))(v12, v5);
  (*(v15 + 8))(v20, v25);
}

uint64_t sub_249DBDA20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  v2 = *(v1 + 32);
  result = sub_249DCC024(v2);
  v3 = result;
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v4 = sub_249DCC024(v2);
LABEL_15:
      result = sub_249DCC024(v2);
      if (result < v4)
      {
        goto LABEL_73;
      }

      sub_249DBEB9C(v4, result);
      swift_endAccess();
      v8 = *(v1 + 32);
      v9 = sub_249DCC024(v8);

      for (i = 0; v9 != i; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x24C2035C0](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v11 = *(v8 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_62;
        }

        if (swift_weakLoadStrong())
        {
          sub_249DD5A6C(*(v1 + 16), 1);
        }
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      break;
    }

    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      goto LABEL_65;
    }
  }

  if (__OFADD__(v4, 1))
  {
    goto LABEL_77;
  }

  result = sub_249DCC024(v2);
  if (v4 + 1 == result)
  {
    goto LABEL_15;
  }

  v12 = v4 + 5;
  while (1)
  {
    v13 = v12 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2035C0](v12 - 4, v2);
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v14 = *(v2 + 8 * v12);
    }

    v15 = swift_weakLoadStrong();

    if (!v15)
    {
      goto LABEL_53;
    }

    if (v13 != v4)
    {
      break;
    }

LABEL_52:
    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      goto LABEL_69;
    }

LABEL_53:
    v7 = __OFADD__(v13, 1);
    v23 = v12 - 3;
    if (v7)
    {
      goto LABEL_68;
    }

    if (v2 >> 62)
    {
      result = sub_249DDCCA8();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v12;
    if (v23 == result)
    {
      goto LABEL_15;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x24C2035C0](v4, v2);
    v17 = MEMORY[0x24C2035C0](v12 - 4, v2);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v18)
    {
      goto LABEL_75;
    }

    if (v13 >= v18)
    {
      goto LABEL_76;
    }

    v16 = *(v2 + 8 * v4 + 32);
    v17 = *(v2 + 8 * v12);
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v1 + 32) = v2;
  if (!result || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    result = sub_249DBEDE4(v2);
    v2 = result;
    *(v1 + 32) = result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v19 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  v20 = v19 + 8 * v4;
  v21 = *(v20 + 32);
  *(v20 + 32) = v17;

  *(v1 + 32) = v2;
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  result = sub_249DBEDE4(v2);
  v2 = result;
  *(v1 + 32) = result;
  v19 = result & 0xFFFFFFFFFFFFFF8;
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_50:
    if (v13 >= *(v19 + 16))
    {
      goto LABEL_72;
    }

    v22 = *(v19 + 8 * v12);
    *(v19 + 8 * v12) = v16;

    *(v1 + 32) = v2;
    goto LABEL_52;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
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
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

void sub_249DBDE1C()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = [v1 category];
  v3 = *(v0 + 24);
  v4 = sub_249DDC878();
  v6 = v5;
  if (v4 != sub_249DDC878() || v6 != v7)
  {
    v9 = sub_249DDCCF8();

    if ((v9 & 1) == 0)
    {
      v18[0] = 0;
      v10 = [v1 setCategory:v3 error:v18];
      v11 = v18[0];
      if (v10)
      {
        v12 = *MEMORY[0x277D85DE8];

        v13 = v11;
        return;
      }

      v15 = v18[0];
      v16 = sub_249DDC5C8();

      swift_willThrow();
    }

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_249DBDFDC()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x277CB8068];
  v4 = *(v0 + 16);
  v5 = sub_249DBC6A4();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_weakInit();
  v20 = sub_249DBE834;
  v21 = v6;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_249DBE46C;
  v19 = &block_descriptor_24;
  v7 = _Block_copy(&v16);

  v8 = [v2 addObserverForName:v3 object:v4 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v9 = [v1 defaultCenter];
  v10 = *MEMORY[0x277CB80A0];
  v11 = *(v0 + 48);
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();
  v20 = sub_249DBE83C;
  v21 = v12;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_249DBE46C;
  v19 = &block_descriptor_28;
  v13 = _Block_copy(&v16);
  v14 = v11;

  v15 = [v9 addObserverForName:v10 object:v4 queue:v14 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_249DBE230()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_249DDC588();
    if (v11)
    {
      sub_249DBEE50(0, &qword_27EF211F8, 0x277CB83F8);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_13:

        return;
      }

      v2 = v12;
      sub_249DBEE50(0, &qword_27EF21200, 0x277D82BB8);
      v3 = *(v1 + 16);
      v4 = sub_249DDCBA8();

      if ((v4 & 1) == 0 || (v5 = sub_249DDC598()) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }

      v6 = v5;
      v7 = *MEMORY[0x277CB8080];
      v9 = sub_249DDC878();
      sub_249DDCC08();
      sub_249DBE408(v10, v6, &v12);

      sub_249DBE8AC(v10);
      if (v13)
      {
        if ((swift_dynamicCast() & 1) != 0 && v9 == 1)
        {
          sub_249DBD388();
          sub_249DBD254();

          return;
        }

        goto LABEL_12;
      }

      v8 = &v12;
    }

    else
    {

      v8 = v10;
    }

    sub_249DBE844(v8);
  }
}

double sub_249DBE408@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_249DBE904(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_249DBB764(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_249DBE46C(uint64_t a1)
{
  v2 = sub_249DDC5A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_249DDC578();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_249DBE560()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_249DBD780();
  }

  return result;
}

void sub_249DBE5B8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *(v0 + 16);
  [v2 removeObserver:v0 name:*MEMORY[0x277CB8068] object:v3];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x277CB80A0] object:v3];
}

uint64_t sub_249DBE684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInPlayer.Settings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DBE6F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DBE844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21680, "X_");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249DBE904(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_249DDCBE8();

  return sub_249DBE9C0(a1, v5);
}

unint64_t sub_249DBE948(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_249DDCD88();
  sub_249DDC8A8();
  v6 = sub_249DDCDA8();

  return sub_249DBEAE8(a1, a2, v6);
}

unint64_t sub_249DBE9C0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_249DBEA84(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x24C203580](v8, a1);
    sub_249DBE8AC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_249DBEAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_249DDCCF8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_249DBEB9C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_249DA8E0C(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_249DA8E0C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_249DBEC40(result);

  return sub_249DBECE8(v4, a2, 0);
}

uint64_t sub_249DBEC40(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((result & 1) == 0 || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_249DDCCA8();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_249DDCC48();
    *v1 = result;
  }

  return result;
}

uint64_t sub_249DBECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DropInPlayerManager.WeakDropInPlayer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_249DDCCA8();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_249DDCCA8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_249DBEDE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_249DDCCA8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_249DDCC48();
}

uint64_t sub_249DBEE50(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_249DBEE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249DBEED8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_249DBEF8C()
{
  result = sub_249DDC878();
  qword_27EF21220 = result;
  *algn_27EF21228 = v1;
  return result;
}

uint64_t sub_249DBEFDC()
{
  result = sub_249DDC878();
  qword_28130BF50 = result;
  *algn_28130BF58 = v1;
  return result;
}

uint64_t sub_249DBF02C()
{
  result = sub_249DDC878();
  qword_28130BD28 = result;
  *algn_28130BD30 = v1;
  return result;
}

uint64_t sub_249DBF07C()
{
  result = sub_249DDC878();
  qword_27EF21230 = result;
  *algn_27EF21238 = v1;
  return result;
}

uint64_t sub_249DBF0CC()
{
  result = sub_249DDC878();
  qword_27EF21240 = result;
  *algn_27EF21248 = v1;
  return result;
}

uint64_t sub_249DBF11C()
{
  result = sub_249DDC878();
  qword_28130BD10 = result;
  *algn_28130BD18 = v1;
  return result;
}

uint64_t sub_249DBF188()
{
  result = sub_249DDC878();
  qword_28130BCF8 = result;
  unk_28130BD00 = v1;
  return result;
}

uint64_t sub_249DBF1D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t getEnumTagSinglePayload for DropInSiriAnnouncement.AnnouncementError(unsigned int *a1, int a2)
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

_BYTE *sub_249DBF298(_BYTE *result, int a2, int a3)
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

uint64_t sub_249DBF358(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *DeviceStateUpdateThrottler.init(throttleTimeInterval:)(double a1)
{
  v3 = sub_249DDCAD8();
  v4 = OUTLINED_FUNCTION_10(v3);
  v28 = v5;
  v29 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v27 = v9 - v8;
  v10 = sub_249DDCAA8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v12 = sub_249DDC7A8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_5();
  *&v1[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable] = 0;
  *&v1[OBJC_IVAR___DIDeviceStateUpdateThrottler_throttleTimeInterval] = a1;
  type metadata accessor for DeviceStateUpdateThrottler.DeviceStateUpdateRequest();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  v14[5] = nullsub_1;
  v14[6] = 0;
  v31 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21260, "N_");
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v1[OBJC_IVAR___DIDeviceStateUpdateThrottler_subject] = sub_249DDC728();
  sub_249DB6D9C();
  sub_249DB6C48(0xD00000000000001ALL, 0x8000000249DE1410);
  sub_249DDC798();
  v31 = MEMORY[0x277D84F90];
  sub_249DC03FC(&qword_27EF21208, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21210, &qword_249DDF2D0);
  OUTLINED_FUNCTION_1_1();
  sub_249DC0444(v18, v19, &qword_249DDF2D0);
  sub_249DDCBD8();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *&v1[OBJC_IVAR___DIDeviceStateUpdateThrottler_queue] = sub_249DDCB08();
  v30.receiver = v1;
  v30.super_class = type metadata accessor for DeviceStateUpdateThrottler();
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = *&v20[OBJC_IVAR___DIDeviceStateUpdateThrottler_subject];
  v22 = v20;

  v24 = sub_249DBF754(v23);

  v25 = *&v22[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable];
  *&v22[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable] = v24;

  return v22;
}

uint64_t sub_249DBF754(uint64_t a1)
{
  v3 = sub_249DDCAC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21278, &qword_249DDF3A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v15[1] = a1;
  sub_249DDCAB8();
  v15[0] = *(v1 + OBJC_IVAR___DIDeviceStateUpdateThrottler_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21260, "N_");
  sub_249DB6D9C();
  sub_249DC0444(&qword_27EF21280, &qword_27EF21260, "N_");
  sub_249DC03FC(&qword_27EF21288, sub_249DB6D9C);
  sub_249DDC748();
  (*(v4 + 8))(v7, v3);
  sub_249DC0444(&qword_27EF21290, &qword_27EF21278, &qword_249DDF3A8);
  v13 = sub_249DDC738();
  (*(v9 + 8))(v12, v8);
  return v13;
}

id DeviceStateUpdateThrottler.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable])
  {

    sub_249DDC6F8();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceStateUpdateThrottler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249DBFB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_249DDC768();
  v11 = OUTLINED_FUNCTION_10(v10);
  v35 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v34 = sub_249DDC7A8();
  v18 = OUTLINED_FUNCTION_10(v34);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v33 = *(v5 + OBJC_IVAR___DIDeviceStateUpdateThrottler_queue);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a1;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a4;
  v27[7] = a5;
  aBlock[4] = sub_249DC0210;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249DBF358;
  aBlock[3] = &block_descriptor_2;
  v28 = _Block_copy(aBlock);

  sub_249DDC788();
  sub_249DC03FC(&qword_28130BCE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF217B0, &unk_249DDF300);
  OUTLINED_FUNCTION_1_1();
  sub_249DC0444(v29, v30, &unk_249DDF300);
  sub_249DDCBD8();
  MEMORY[0x24C203480](0, v25, v17, v28);
  _Block_release(v28);
  (*(v35 + 8))(v17, v10);
  (*(v20 + 8))(v25, v34);
}

uint64_t sub_249DBFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    type metadata accessor for DeviceStateUpdateThrottler.DeviceStateUpdateRequest();
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v13[6] = a6;
    v14 = OBJC_IVAR___DIDeviceStateUpdateThrottler_subject;
    v15 = *&v12[OBJC_IVAR___DIDeviceStateUpdateThrottler_subject];

    sub_249DDC718();

    v16 = sub_249DC03A0(v30, v13);

    if (v16)
    {
      v17 = *&v12[v14];

      sub_249DDC708();
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21260, "N_");
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();

      v21 = sub_249DDC728();
      v22 = *&v12[v14];
      *&v12[v14] = v21;

      v23 = OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable;
      if (*&v12[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable])
      {
        v24 = *&v12[OBJC_IVAR___DIDeviceStateUpdateThrottler_cancellable];

        sub_249DDC6F8();
      }

      v25 = *&v12[v14];
      v26 = *&v12[OBJC_IVAR___DIDeviceStateUpdateThrottler_throttleTimeInterval];

      v28 = sub_249DBF754(v27);

      v29 = *&v12[v23];
      *&v12[v23] = v28;

      sub_249DC0298(0);
    }
  }

  return result;
}

void sub_249DC00D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_249DDC848();
  (*(a5 + 16))(a5, a1, v8, a4 & 1);
}

id DeviceStateUpdateThrottler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DC0298(char a1)
{
  v2 = v1;
  v4 = v1 + 5;
  v3 = v1[5];
  if (v3)
  {
    v6 = v2[6];
    v7 = v2[2];
    v8 = v2[3];
    v9 = v2[4];

    v3(v7, v8, v9, a1 & 1);
    sub_249DB7B48(v3);
    v10 = v2[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v2[6];
  *v4 = 0;
  v4[1] = 0;

  return sub_249DB7B48(v10);
}

void *sub_249DC0340()
{
  sub_249DC0298(1);
  v1 = v0[4];

  v2 = v0[6];
  sub_249DB7B48(v0[5]);
  return v0;
}

uint64_t sub_249DC0370()
{
  v0 = sub_249DC0340();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_249DC03A0(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  else
  {
    return sub_249DDCCF8();
  }
}

uint64_t sub_249DC03FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249DC0444(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_249DC04C8(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];
  v3 = sub_249DDC878();

  return v3;
}

uint64_t DIDeviceState.description.getter(uint64_t a1)
{
  v1 = [objc_opt_self() stringForDeviceState_];
  v2 = sub_249DDC878();

  return v2;
}

void sub_249DC0688(void *a1)
{
  OUTLINED_FUNCTION_7_0();
  swift_unknownObjectWeakAssign();
}

void sub_249DC06D4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_249DC0688(v2);
}

uint64_t sub_249DC0744(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_249DC07E8()
{
  OUTLINED_FUNCTION_7_0();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_249DC0838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_249DC07E8();
}

void (*sub_249DC0864(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___DIXPCManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_249DC08E8;
}

void sub_249DC08E8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_249DC099C()
{
  v1 = v0;
  oslog = sub_249DDC6C8();
  v2 = sub_249DDCA78();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = *(&v1->isa + OBJC_IVAR___DIXPCManager_needsCheckIn);

    _os_log_impl(&dword_249DA7000, oslog, v2, "Needs Check in = %{BOOL}d", v3, 8u);
    MEMORY[0x24C203F30](v3, -1, -1);
    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

id XPCManager.init(clientContext:dispatcher:clientQueue:)(void *a1, void *a2, void *a3)
{
  v7 = sub_249DDC6E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___DIXPCManager__connection] = 0;
  *&v3[OBJC_IVAR___DIXPCManager_clientContext] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v12 = a1;
  sub_249DDC6D8();
  (*(v8 + 32))(&v3[OBJC_IVAR___DIXPCManager_logger], v11, v7);
  v3[OBJC_IVAR___DIXPCManager_needsCheckIn] = 1;
  v3[OBJC_IVAR___DIXPCManager_isConnectionValid] = 0;
  *&v3[OBJC_IVAR___DIXPCManager_notifyRegisterToken] = -1;
  *&v3[OBJC_IVAR___DIXPCManager_checkInObservers] = MEMORY[0x277D84F90];
  v13 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&v3[OBJC_IVAR___DIXPCManager_lock] = v13;
  v14 = type metadata accessor for XPCManager();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_init);

  return v15;
}

uint64_t type metadata accessor for XPCManager()
{
  result = qword_28130BEC8;
  if (!qword_28130BEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XPCManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___DIXPCManager__connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for XPCManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_249DC0EFC(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___DIXPCManager_lock];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_249DC1104;
  *(v5 + 24) = v4;
  v10[4] = sub_249DC110C;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_249DBD14C;
  v10[3] = &block_descriptor_3;
  v6 = _Block_copy(v10);
  v7 = v1;
  swift_unknownObjectRetain();

  [v3 di:v6 synchronize:?];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249DC106C(uint64_t a1)
{
  v2 = OBJC_IVAR___DIXPCManager_checkInObservers;
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();
  MEMORY[0x24C203270](v3);
  sub_249DC33AC(*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_249DDC938();
  return swift_endAccess();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_249DC11D8()
{
  v1 = v0;
  v149 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + OBJC_IVAR___DIXPCManager__connection);
  if (v2 && *(v0 + OBJC_IVAR___DIXPCManager_isConnectionValid) == 1)
  {
    v3 = *MEMORY[0x277D85DE8];

    return v2;
  }

  else
  {
    v133 = OBJC_IVAR___DIXPCManager__connection;
    sub_249DBEE50(0, &qword_27EF212D0, 0x277CCAE80);
    if (qword_28130BF48 != -1)
    {
      swift_once();
    }

    v5 = qword_28130BF50;
    v6 = *algn_28130BF58;

    v7 = sub_249DC1908(v5, v6, 4096);
    v8 = objc_opt_self();
    v9 = [v8 interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];
    sub_249DC2DE0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249DDF440;
    v11 = sub_249DBEE50(0, &qword_28130BCA0, off_278FB8980);
    *(inited + 32) = v11;
    v12 = sub_249DBEE50(0, &qword_28130BCA8, 0x277CBEA60);
    *(inited + 40) = v12;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(inited);
    swift_setDeallocating();
    sub_249DC2DE0();
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_249DDF450;
    *(v13 + 32) = sub_249DBEE50(0, &qword_28130BCC0, off_278FB89A0);
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v13);
    swift_setDeallocating();
    v14 = [v8 interfaceWithProtocol_];
    [v7 setExportedInterface_];
    Strong = swift_unknownObjectWeakLoadStrong();
    [v7 setExportedObject_];

    sub_249DC2DE0();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_249DDF450;
    *(v16 + 32) = type metadata accessor for ClientContext();
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v16);
    swift_setDeallocating();
    sub_249DC2DE0();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_249DDF440;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    OUTLINED_FUNCTION_4_1(v17);
    swift_setDeallocating();
    sub_249DC2DE0();
    v18 = swift_initStackObject();
    OUTLINED_FUNCTION_1_2(v18, v19, v20, v21, v22, v23, v24, v25, 2, 4, v125, v133, v26);
    OUTLINED_FUNCTION_4_1(v27);
    swift_setDeallocating();
    sub_249DC2DE0();
    v28 = swift_initStackObject();
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v111, v118, v126, v134, v36);
    OUTLINED_FUNCTION_4_1(v37);
    swift_setDeallocating();
    sub_249DC2DE0();
    v38 = swift_initStackObject();
    OUTLINED_FUNCTION_1_2(v38, v39, v40, v41, v42, v43, v44, v45, v112, v119, v127, v135, v46);
    OUTLINED_FUNCTION_4_1(v47);
    swift_setDeallocating();
    sub_249DC2DE0();
    v48 = swift_initStackObject();
    OUTLINED_FUNCTION_0_3(v48, v49, v50, v51, v52, v53, v54, v55, v113, v120, v128, v136, v56);
    OUTLINED_FUNCTION_4_1(v57);
    swift_setDeallocating();
    sub_249DC2DE0();
    v58 = swift_initStackObject();
    OUTLINED_FUNCTION_0_3(v58, v59, v60, v61, v62, v63, v64, v65, v114, v121, v129, v137, v66);
    OUTLINED_FUNCTION_4_1(v67);
    swift_setDeallocating();
    sub_249DC2DE0();
    v68 = swift_initStackObject();
    OUTLINED_FUNCTION_0_3(v68, v69, v70, v71, v72, v73, v74, v75, v115, v122, v130, v138, v76);
    OUTLINED_FUNCTION_4_1(v77);
    swift_setDeallocating();
    sub_249DC2DE0();
    v78 = swift_initStackObject();
    OUTLINED_FUNCTION_0_3(v78, v79, v80, v81, v82, v83, v84, v85, v116, v123, v131, v139, v86);
    OUTLINED_FUNCTION_4_1(v87);
    swift_setDeallocating();
    sub_249DC2DE0();
    v88 = swift_initStackObject();
    OUTLINED_FUNCTION_0_3(v88, v89, v90, v91, v92, v93, v94, v95, v117, v124, v132, v140, v96);
    OUTLINED_FUNCTION_4_1(v97);
    swift_setDeallocating();
    OUTLINED_FUNCTION_2_0();
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v147 = sub_249DC2E48;
    v148 = v98;
    aBlock = MEMORY[0x277D85DD0];
    v144 = 1107296256;
    v145 = sub_249DBF358;
    v146 = &block_descriptor_9;
    v99 = _Block_copy(&aBlock);

    [v7 setInterruptionHandler_];
    _Block_release(v99);
    OUTLINED_FUNCTION_2_0();
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v147 = sub_249DC2E50;
    v148 = v100;
    aBlock = MEMORY[0x277D85DD0];
    v144 = 1107296256;
    v145 = sub_249DBF358;
    v146 = &block_descriptor_13;
    v101 = _Block_copy(&aBlock);

    [v7 setInvalidationHandler_];
    _Block_release(v101);
    v102 = OBJC_IVAR___DIXPCManager_notifyRegisterToken;
    if (*(v1 + OBJC_IVAR___DIXPCManager_notifyRegisterToken) == -1)
    {
      out_token = -1;
      sub_249DBEE50(0, &qword_28130BCB8, 0x277D85C78);
      v103 = sub_249DDCAE8();
      v104 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v147 = sub_249DC2E58;
      v148 = v104;
      aBlock = MEMORY[0x277D85DD0];
      v144 = 1107296256;
      v145 = sub_249DC1C14;
      v146 = &block_descriptor_17;
      v105 = _Block_copy(&aBlock);

      v106 = sub_249DDC898();
      v107 = notify_register_dispatch((v106 + 32), &out_token, v103, v105);

      _Block_release(v105);

      if (!v107)
      {
        *(v1 + v102) = out_token;
      }
    }

    *(v1 + OBJC_IVAR___DIXPCManager_needsCheckIn) = 0;
    sub_249DC099C();
    [v7 resume];

    *(v1 + OBJC_IVAR___DIXPCManager_isConnectionValid) = 1;
    v108 = *(v1 + v141);
    *(v1 + v141) = v7;
    v109 = v7;

    v110 = *MEMORY[0x277D85DE8];
    return v109;
  }
}

id sub_249DC1908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_249DDC848();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_249DC1984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_249DDC6C8();
    v3 = sub_249DDCA78();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_249DA7000, v2, v3, "Connection to DropInCore was interrupted", v4, 2u);
      MEMORY[0x24C203F30](v4, -1, -1);
    }

    v1[OBJC_IVAR___DIXPCManager_needsCheckIn] = 1;
    sub_249DC099C();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 managerDidInterruptConnection_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_249DC1AB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_249DDC6C8();
    v3 = sub_249DDCA78();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_249DA7000, v2, v3, "Connection to DropInCore was invalidated", v4, 2u);
      MEMORY[0x24C203F30](v4, -1, -1);
    }

    v1[OBJC_IVAR___DIXPCManager_needsCheckIn] = 1;
    sub_249DC099C();
    v1[OBJC_IVAR___DIXPCManager_isConnectionValid] = 0;
  }
}

void sub_249DC1BAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR___DIXPCManager_needsCheckIn) == 1)
    {
      sub_249DC1C68();
    }
  }
}

uint64_t sub_249DC1C14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_249DC1C68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_249DDC9A8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_249DC3594(0, 0, v4, &unk_249DDF500, v6);
}

uint64_t sub_249DC1D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_249DDC768();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_249DDC7A8();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[26] = v11;
  *v11 = v4;
  v11[1] = sub_249DC1E94;

  return sub_249DC2654();
}

uint64_t sub_249DC1E94()
{
  OUTLINED_FUNCTION_6();
  v2 = *(*v1 + 208);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *(v5 + 216) = v0;

  if (v0)
  {
    v6 = sub_249DC235C;
  }

  else
  {
    v6 = sub_249DC1F9C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_249DC1F9C()
{
  v1 = v0[19] + OBJC_IVAR___DIXPCManager_logger;
  v2 = sub_249DDC6C8();
  v3 = sub_249DDCA78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249DA7000, v2, v3, "Checked in with DropInCore Daemon", v4, 2u);
    MEMORY[0x24C203F30](v4, -1, -1);
  }

  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v25 = v10;
  v26 = v0[23];

  sub_249DBEE50(0, &qword_28130BCB8, 0x277D85C78);
  v24 = sub_249DDCAE8();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_249DC33D8;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_249DBF358;
  v0[5] = &block_descriptor_62;
  v12 = _Block_copy(v0 + 2);

  sub_249DDC788();
  v0[18] = MEMORY[0x277D84F90];
  sub_249DC33E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF217B0, &unk_249DDF300);
  sub_249DC3438();
  sub_249DDCBD8();
  MEMORY[0x24C203480](0, v6, v7, v12);
  _Block_release(v12);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v6, v26);
  v13 = v0[7];

  v14 = *&v10[OBJC_IVAR___DIXPCManager_lock];
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_249DC349C;
  *(v16 + 24) = v15;
  v0[12] = sub_249DC34F0;
  v0[13] = v16;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_249DBD14C;
  v0[11] = &block_descriptor_72;
  v17 = _Block_copy(v0 + 8);
  v18 = v0[13];
  v19 = v25;

  [v14 di:v17 synchronize:?];
  _Block_release(v17);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v21 = v0[25];
    v22 = v0[22];

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_249DC235C()
{
  v21 = v0;
  v1 = v0[27];
  v2 = v0[19];
  v3 = v1;
  v4 = sub_249DDC6C8();
  v5 = sub_249DDCA68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[16];
    v12 = sub_249DDCD38();
    v14 = sub_249DD23AC(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_249DA7000, v4, v5, "Failed to check in with daemon %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C203F30](v8, -1, -1);
    MEMORY[0x24C203F30](v7, -1, -1);
  }

  else
  {
    v15 = v0[27];
  }

  v16 = v0[25];
  v17 = v0[22];

  v18 = v0[1];

  return v18();
}

void sub_249DC24FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___DIXPCManager_needsCheckIn) = 0;
    sub_249DC099C();
  }
}

uint64_t sub_249DC255C(uint64_t a1)
{
  v2 = OBJC_IVAR___DIXPCManager_checkInObservers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_249DCC024(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C2035C0](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(v3 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    [v7 xpcManagerDidPerformDaemonCheckIn_];
    result = swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_249DC2674()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_249DC275C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_249DC275C()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 32);
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v2;
  *(v2 + 40) = v0;

  if (v0)
  {
    v5 = sub_249DC286C;
  }

  else
  {
    v6 = *(v2 + 24);

    v5 = sub_249DB72FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_249DC286C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_249DC28CC(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  v7 = sub_249DC11D8();
  v18 = *(v3 + 16);
  v18(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v17 = *(v3 + 32);
  v17(v9 + v8, v6, v2);
  v25 = sub_249DC30C4;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v16[1] = &v23;
  v23 = sub_249DC2C24;
  v24 = &block_descriptor_47;
  v10 = _Block_copy(&aBlock);

  v11 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  sub_249DDCBC8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF212D8, &qword_249DDF4F0);
  swift_dynamicCast();
  v12 = v20;
  v18(v6, v19, v2);
  v13 = swift_allocObject();
  v17(v13 + v8, v6, v2);
  v25 = sub_249DC3164;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_249DC2D00;
  v24 = &block_descriptor_53;
  v14 = _Block_copy(&aBlock);

  [v12 checkInWithCompletionHandler_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_249DC2BD4(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  return sub_249DDC958();
}

void sub_249DC2C24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_249DC2C8C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
    return sub_249DDC958();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
    return sub_249DDC968();
  }
}

void sub_249DC2D00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id XPCManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_249DC2DE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF212E0, &qword_249DDF508);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_27EF212F0;
    v2 = &unk_249DDF518;
  }

  else
  {
    v1 = &unk_27EF212E8;
    v2 = &unk_249DDF510;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_249DC2E68()
{
  result = sub_249DDC6E8();
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

uint64_t objectdestroy_43Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8);
  OUTLINED_FUNCTION_6_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DC317C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21158, &qword_249DDECF8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_249DC320C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249DC32C0;

  return sub_249DC1D48(a1, v4, v5, v6);
}

uint64_t sub_249DC32C0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_249DC33AC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

unint64_t sub_249DC33E0()
{
  result = qword_28130BCE0;
  if (!qword_28130BCE0)
  {
    sub_249DDC768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130BCE0);
  }

  return result;
}

unint64_t sub_249DC3438()
{
  result = qword_28130BCD8;
  if (!qword_28130BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF217B0, &unk_249DDF300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130BCD8);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 OUTLINED_FUNCTION_0_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  a1[2].n128_u64[0] = v13;
  return result;
}

__n128 OUTLINED_FUNCTION_1_2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  a1[2].n128_u64[0] = v13;
  return result;
}

void OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(a1);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_beginAccess();
}

uint64_t sub_249DC3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20]();
  v13 = OUTLINED_FUNCTION_29_0();
  sub_249DC9704(v13, v14, &qword_27EF21570, &qword_249DDF130);
  v15 = sub_249DDC9A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_249DBBB44(v5, &qword_27EF21570, &qword_249DDF130);
  }

  else
  {
    sub_249DDC998();
    (*(*(v15 - 8) + 8))(v5, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249DBBB44(a3, &qword_27EF21570, &qword_249DDF130);
    OUTLINED_FUNCTION_22_0();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_249DDC948();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249DDC898();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;

  v21 = swift_task_create();

  sub_249DBBB44(a3, &qword_27EF21570, &qword_249DDF130);

  return v21;
}

uint64_t sub_249DC3858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_29_0();
  sub_249DC9704(v14, v15, &qword_27EF21570, &qword_249DDF130);
  v16 = sub_249DDC9A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v16);

  if (EnumTagSinglePayload == 1)
  {
    sub_249DBBB44(v5, &qword_27EF21570, &qword_249DDF130);
  }

  else
  {
    sub_249DDC998();
    (*(*(v16 - 8) + 8))(v5, v16);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249DBBB44(a3, &qword_27EF21570, &qword_249DDF130);
    OUTLINED_FUNCTION_22_0();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21388, &qword_249DDF6B0);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_249DDC948();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249DDC898();
  OUTLINED_FUNCTION_22_0();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21388, &qword_249DDF6B0);
  v21 = swift_task_create();

  sub_249DBBB44(a3, &qword_27EF21570, &qword_249DDF130);

  return v21;
}

uint64_t AppStateController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AppStateController.init()();
  return v3;
}

uint64_t AppStateController.init()()
{
  v1 = sub_249DDC6E8();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC6DropIn18AppStateController_lastDropInState);
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___activation) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21310, &qword_249DDF530);
  OUTLINED_FUNCTION_45(v9);
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___deactivation) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21328, &qword_249DDF538);
  OUTLINED_FUNCTION_45(v10);
  v11 = [objc_allocWithZone(DIDropInCenter) init];
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_center) = v11;
  v12 = [v11 audioPowerController];
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_audioPowerController) = v12;
  sub_249DDC6D8();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_logger, v8, v1);
  *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_observer) = [objc_allocWithZone(type metadata accessor for AppStateControllerSessionObserver()) init];
  return v0;
}

id sub_249DC3D6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + OBJC_IVAR____TtC6DropIn18AppStateController_observer);
  swift_weakAssign();
  v4 = *(v2 + OBJC_IVAR____TtC6DropIn18AppStateController_center);
  [v4 setDelegate_];
  v5 = [v4 sessionManager];
  [v5 setDelegate_];

  v6 = *(v2 + OBJC_IVAR____TtC6DropIn18AppStateController_audioPowerController);

  return [v6 setDelegate_];
}

uint64_t sub_249DC3E38()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = sub_249DDC6E8();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_34_0();
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DC3EDC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 48) = OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC3F3C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = *(v0[6] + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v0[7] = v2;
  v3 = v2;

  v4 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249DC3FB8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[7];
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = [*(v0[2] + OBJC_IVAR____TtC6DropIn18AppStateController_center) sessionManager];
  v1 = [v5 incomingPendingSession];
  v0[8] = v1;

  if (!v1)
  {
    goto LABEL_3;
  }

  if ([v1 state] != 2)
  {
LABEL_2:

LABEL_3:
    v2 = v0[5];

    v3 = v0[1];

    return v3(0);
  }

  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = OUTLINED_FUNCTION_9_0(v0[4]);
  v10(v9);
  v11 = v1;
  v12 = sub_249DDC6C8();
  v13 = sub_249DDCA78();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_28();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v1;
    v16 = v11;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_249DBBB44(v15, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15_0();
  }

  v23 = v0[4];
  v22 = v0[5];
  v24 = v0[3];

  (*(v23 + 8))(v22, v24);
  v25 = swift_task_alloc();
  v0[9] = v25;
  *v25 = v0;
  v25[1] = sub_249DC41EC;
  v26 = v0[2];

  return sub_249DC6A90();
}

uint64_t sub_249DC41EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 72);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DC42E4()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_249DC434C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = sub_249DDC9A8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_249DC8C98();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_32_0(v7);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_249DC440C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249DB9270;

  return sub_249DC5E18();
}

uint64_t sub_249DC4500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21358, &qword_249DDF578);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21310, &qword_249DDF530);
    (*(*(v8 - 8) + 16))(v5, a1, v8);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    v9 = OBJC_IVAR____TtC6DropIn18AppStateController_activationStatesContinuation;
    swift_beginAccess();
    sub_249DC9904(v5, v7 + v9, &qword_27EF21358, &qword_249DDF578);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_249DC4680(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v6 = a3();
    v12 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_249DC4734(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v9, *MEMORY[0x277D858A0], v2);
  sub_249DDC9E8();
}

uint64_t sub_249DC4840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21360, &qword_249DDF580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21328, &qword_249DDF538);
    (*(*(v8 - 8) + 16))(v5, a1, v8);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    v9 = OBJC_IVAR____TtC6DropIn18AppStateController_deactivationStatesContinuation;
    swift_beginAccess();
    sub_249DC9904(v5, v7 + v9, &qword_27EF21360, &qword_249DDF580);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_249DC498C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC6DropIn18AppStateController_lastDropInState);
  v6 = sub_249DDC9A8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_249DC8C98();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_32_0(v7);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_249DC4A78()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 24) = OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC4AD8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_249DB89E0();

  v3 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249DC4B3C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_249DC464C();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC4BA0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  sub_249DCDF04();

  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DC4C00()
{
  OUTLINED_FUNCTION_6();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF213A8, &qword_249DDF6D8);
  v1[15] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249DC4CB0()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_249DC449C();
  v0[18] = v3;
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  v0[19] = v4;
  swift_weakInit();
  OUTLINED_FUNCTION_22_0();
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;

  v6 = v2;

  return MEMORY[0x2822009F8](sub_249DC4D70, v3, 0);
}

uint64_t sub_249DC4D70()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[14];
  sub_249DB88D0(sub_249DC96B8, v0[20]);

  return MEMORY[0x2822009F8](sub_249DC4E14, v3, 0);
}

uint64_t sub_249DC4E14()
{
  v33 = v0;
  v1 = [v0[13] participants];
  sub_249DC96C0();
  v2 = sub_249DDC908();

  if (sub_249DCC024(v2))
  {
    sub_249DCBC78(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x24C2035C0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 value];
    v6 = sub_249DDC878();
    v30 = v7;
    v31 = v6;

    v29 = [v4 type];
    v8 = sub_249DC9288(v4, &selRef_givenName);
    v10 = v9;
    v11 = sub_249DC9288(v4, &selRef_familyName);
    v13 = v12;
    v14 = sub_249DC9288(v4, &selRef_displayName);
    v16 = v15;
    v17 = sub_249DC92E4(v4);
    v19 = v18;

    v0[2] = v8;
    v0[3] = v10;
    v0[4] = v11;
    v0[5] = v13;
    v0[6] = v14;
    v0[7] = v16;
    v0[8] = v17;
    v0[9] = v19;
    v0[10] = v31;
    v0[11] = v30;
    v0[12] = v29;
  }

  else
  {

    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 1) = 0u;
  }

  v20 = v0[14];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];
    v24 = *(v0[14] + 120);
    ObjectType = swift_getObjectType();
    sub_249DC44D0();
    memcpy(__dst, v0 + 2, sizeof(__dst));
    (*(v24 + 40))(v21, __dst, ObjectType, v24);
    swift_unknownObjectRelease();
    (*(v22 + 8))(v21, v23);
  }

  v0[21] = *(v0[14] + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___activation);

  v26 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v26, v27, 0);
}

uint64_t sub_249DC5090()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  sub_249DB891C(*(v0 + 104));

  v3 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249DC50F8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 136);
  sub_249DBBB44(v0 + 16, &qword_27EF213B0, &qword_249DDF6E0);

  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DC516C(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21310, &qword_249DDF530);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21358, &qword_249DDF578);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF213B8, &qword_249DDF6E8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v45 - v23;
  v25 = *a1;
  v26 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = OBJC_IVAR____TtC6DropIn18AppStateController_activationStatesContinuation;
    if (v26)
    {
      swift_beginAccess();
      sub_249DC9704(v28 + v29, v15, &qword_27EF21358, &qword_249DDF578);
      if (__swift_getEnumTagSinglePayload(v15, 1, v8))
      {
        sub_249DBBB44(v15, &qword_27EF21358, &qword_249DDF578);
      }

      else
      {
        v33 = v45;
        v32 = v46;
        (*(v46 + 16))(v45, v15, v8);
        sub_249DBBB44(v15, &qword_27EF21358, &qword_249DDF578);
        v48 = v25;
        v34 = v25;
        sub_249DDC9D8();
        (*(v32 + 8))(v33, v8);
      }

      v35 = sub_249DDC9A8();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v35);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v38 = v47;
      v37[4] = v36;
      v37[5] = v38;
      v39 = v38;
      sub_249DC3594(0, 0, v7, &unk_249DDF6F8, v37);
    }

    swift_beginAccess();
    sub_249DC9704(v28 + v29, v20, &qword_27EF21358, &qword_249DDF578);
    if (__swift_getEnumTagSinglePayload(v20, 1, v8))
    {
      sub_249DBBB44(v20, &qword_27EF21358, &qword_249DDF578);
      v30 = 1;
      v31 = v25;
    }

    else
    {
      v41 = v45;
      v40 = v46;
      (*(v46 + 16))(v45, v20, v8);
      sub_249DBBB44(v20, &qword_27EF21358, &qword_249DDF578);
      v31 = v25;
      LOBYTE(v48) = v25;
      sub_249DDC9C8();
      (*(v40 + 8))(v41, v8);
      v30 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF213C0, &unk_249DDF700);
    __swift_storeEnumTagSinglePayload(v24, v30, 1, v42);
    sub_249DBBB44(v24, &qword_27EF213B8, &qword_249DDF6E8);
    if (v31 != 9)
    {
    }

    sub_249DC9704(v28 + v29, v18, &qword_27EF21358, &qword_249DDF578);
    if (__swift_getEnumTagSinglePayload(v18, 1, v8))
    {

      return sub_249DBBB44(v18, &qword_27EF21358, &qword_249DDF578);
    }

    else
    {
      v43 = v45;
      v44 = v46;
      (*(v46 + 16))(v45, v18, v8);
      sub_249DBBB44(v18, &qword_27EF21358, &qword_249DDF578);
      v48 = 0;
      sub_249DDC9D8();

      return (*(v44 + 8))(v43, v8);
    }
  }

  return result;
}

uint64_t sub_249DC56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_249DDC6E8();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249DC57C8, 0, 0);
}

uint64_t sub_249DC57C8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = v0[22];
    v0[2] = v0;
    v0[3] = sub_249DC5930;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211D8, &qword_249DDF168);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_14_0();
    v0[13] = v5;
    v0[14] = v4;
    [v3 cancelWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = v0[25];
    v6 = v0[26];

    OUTLINED_FUNCTION_4();

    return v8();
  }
}

uint64_t sub_249DC5930()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 224) = v4;
  if (v4)
  {
    v5 = sub_249DC5BC4;
  }

  else
  {
    v5 = sub_249DC5A38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_249DC5A4C()
{
  OUTLINED_FUNCTION_6();
  (*(v0[24] + 16))(v0[26], v0[27] + OBJC_IVAR____TtC6DropIn18AppStateController_logger, v0[23]);

  return MEMORY[0x2822009F8](sub_249DC5ACC, 0, 0);
}

uint64_t sub_249DC5ACC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[26];
  v2 = sub_249DDC6C8();
  v3 = sub_249DDCA68();
  v4 = OUTLINED_FUNCTION_47(v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_249DA7000, v2, v3, "Session Cancelled", v6, 2u);
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    v7 = v0[27];
  }

  (*(v0[24] + 8))(v0[26], v0[23]);
  v9 = v0[25];
  v8 = v0[26];

  OUTLINED_FUNCTION_4();

  return v10();
}

uint64_t sub_249DC5BC4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  swift_willThrow();
  v3 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249DC5C28()
{
  OUTLINED_FUNCTION_6();
  (*(v0[24] + 16))(v0[25], v0[27] + OBJC_IVAR____TtC6DropIn18AppStateController_logger, v0[23]);

  return MEMORY[0x2822009F8](sub_249DC5CAC, 0, 0);
}

uint64_t sub_249DC5CAC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[28];
  v2 = v0[25];
  v3 = v1;
  v4 = sub_249DDC6C8();
  v5 = sub_249DDCA68();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[27];
  v7 = v0[28];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_28();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_249DBBB44(v10, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    v18 = v0[27];
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v20 = v0[25];
  v19 = v0[26];

  OUTLINED_FUNCTION_4();

  return v21();
}

uint64_t sub_249DC5E18()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21390, &qword_249DDF6C0);
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_34_0();
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DC5EC8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = sub_249DC464C();
  v0[6] = v2;
  OUTLINED_FUNCTION_4_0();
  v0[7] = swift_allocObject();
  swift_weakInit();

  return MEMORY[0x2822009F8](sub_249DC5F6C, v2, 0);
}

uint64_t sub_249DC5F6C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[6];
  v2 = v0[2];
  sub_249DB88D0(sub_249DC96B0, v0[7]);

  return MEMORY[0x2822009F8](sub_249DC6008, v2, 0);
}

uint64_t sub_249DC6008()
{
  v1 = v0[2];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    v5 = *(v0[2] + 120);
    ObjectType = swift_getObjectType();
    sub_249DC4704();
    (*(v5 + 48))(v2, ObjectType, v5);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v2, v4);
  }

  v0[8] = *(v0[2] + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___deactivation);

  v0[9] = OUTLINED_FUNCTION_35_0();
  v7 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249DC610C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[9];
  v0[10] = sub_249DB8720();

  v2 = v0[8];
  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249DC6178()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[8];
  v2 = v0[5];
  sub_249DCDE3C(v0[10]);

  OUTLINED_FUNCTION_4();

  return v3();
}

uint64_t sub_249DC61FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21328, &qword_249DDF538);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21360, &qword_249DDF580);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21398, &qword_249DDF6C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = OBJC_IVAR____TtC6DropIn18AppStateController_deactivationStatesContinuation;
    if (v21)
    {
      swift_beginAccess();
      sub_249DC9704(v23 + v24, v10, &qword_27EF21360, &qword_249DDF580);
      if (!__swift_getEnumTagSinglePayload(v10, 1, v2))
      {
        v27 = v32;
        (*(v32 + 16))(v5, v10, v2);
        sub_249DBBB44(v10, &qword_27EF21360, &qword_249DDF580);
        v33 = v20;
        v28 = v20;
        sub_249DDC9D8();

        return (*(v27 + 8))(v5, v2);
      }

      v25 = v10;
      return sub_249DBBB44(v25, &qword_27EF21360, &qword_249DDF580);
    }

    swift_beginAccess();
    sub_249DC9704(v23 + v24, v15, &qword_27EF21360, &qword_249DDF580);
    if (__swift_getEnumTagSinglePayload(v15, 1, v2))
    {
      sub_249DBBB44(v15, &qword_27EF21360, &qword_249DDF580);
      v26 = 1;
    }

    else
    {
      v29 = v32;
      (*(v32 + 16))(v5, v15, v2);
      sub_249DBBB44(v15, &qword_27EF21360, &qword_249DDF580);
      LOBYTE(v33) = v20;
      sub_249DDC9C8();
      (*(v29 + 8))(v5, v2);
      v26 = 0;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF213A0, &qword_249DDF6D0);
    __swift_storeEnumTagSinglePayload(v19, v26, 1, v30);
    sub_249DBBB44(v19, &qword_27EF21398, &qword_249DDF6C8);
    if (v20 == 8)
    {
      sub_249DC9704(v23 + v24, v13, &qword_27EF21360, &qword_249DDF580);
      if (__swift_getEnumTagSinglePayload(v13, 1, v2))
      {

        v25 = v13;
        return sub_249DBBB44(v25, &qword_27EF21360, &qword_249DDF580);
      }

      v31 = v32;
      (*(v32 + 16))(v5, v13, v2);
      sub_249DBBB44(v13, &qword_27EF21360, &qword_249DDF580);
      v33 = 0;
      sub_249DDC9D8();

      return (*(v31 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_249DC66AC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 24) = OUTLINED_FUNCTION_35_0();
  *(v0 + 32) = 7;
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC6714()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  sub_249DB896C((v0 + 32));

  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DC6790()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 24) = sub_249DC464C();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC67F4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);
  *(v0 + 49) = *(*(v0 + 24) + 128);

  v2 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC6858()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 49) == 3)
  {
    *(v0 + 32) = *(*(v0 + 16) + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___deactivation);
    *(v0 + 48) = 4;

    v1 = OUTLINED_FUNCTION_28_0();

    return MEMORY[0x2822009F8](v1, v2, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_249DC69B0;
    v4 = *(v0 + 16);

    return sub_249DC5E18();
  }
}

uint64_t sub_249DC694C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  sub_249DCDE90((v0 + 48));

  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_249DC69B0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5();
}

uint64_t sub_249DC6A90()
{
  OUTLINED_FUNCTION_6();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_249DDC6E8();
  v1[28] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[29] = v4;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249DC6B60()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  *(v0 + 272) = OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC6BC0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[27];
  v2 = *(v0[34] + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v0[35] = v2;
  v3 = v2;

  v4 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249DC6C3C()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 224);
    v4 = *(v0 + 216);
    v5 = OUTLINED_FUNCTION_9_0(*(v0 + 232));
    v6(v5);
    v7 = v1;
    v8 = sub_249DDC6C8();
    v9 = sub_249DDCA78();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 280);
    if (v10)
    {
      v12 = OUTLINED_FUNCTION_28();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v11 = v11;
      _os_log_impl(&dword_249DA7000, v8, v9, "Already processing a different Drop In session. Ignoring incoming session for now. Active Session: %@.", v12, 0xCu);
      sub_249DBBB44(v13, &qword_27EF211C0, &qword_249DDF140);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_16_0();
    }

    (*(*(v0 + 232) + 8))(*(v0 + 264), *(v0 + 224));
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);

    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(v0 + 216);
  if (swift_unknownObjectWeakLoadStrong() && (v21 = *(*(v0 + 216) + 120), ObjectType = swift_getObjectType(), LOBYTE(v21) = (*(v21 + 32))(ObjectType, v21), swift_unknownObjectRelease(), (v21 & 1) == 0))
  {
    v28 = *(v0 + 256);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    v32 = OBJC_IVAR____TtC6DropIn18AppStateController_logger;
    *(v0 + 288) = OBJC_IVAR____TtC6DropIn18AppStateController_logger;
    v33 = *(v30 + 16);
    *(v0 + 296) = v33;
    *(v0 + 304) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v28, v31 + v32, v29);
    v34 = sub_249DDC6C8();
    v35 = sub_249DDCA78();
    if (OUTLINED_FUNCTION_47(v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_17_0();
    }

    v41 = *(v0 + 256);
    v42 = *(v0 + 224);
    v43 = *(v0 + 232);
    v44 = *(v0 + 208);

    v45 = *(v43 + 8);
    *(v0 + 312) = v45;
    v45(v41, v42);
    v46 = MEMORY[0x277D837D0];
    v47 = sub_249DDC828();
    v48 = *MEMORY[0x277CCA450];
    v49 = sub_249DDC878();
    v51 = v50;
    *(v0 + 168) = v46;
    *(v0 + 144) = 0xD00000000000001BLL;
    *(v0 + 152) = 0x8000000249DE1860;
    sub_249DC99E0((v0 + 144), (v0 + 176));
    swift_isUniquelyReferenced_nonNull_native();
    sub_249DCC5F4((v0 + 176), v49, v51);

    v52 = v47;
    v53 = sub_249DDC878();
    v55 = v54;
    v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v57 = sub_249DCC544(v53, v55, 5, v52);
    v58 = sub_249DDC5B8();
    *(v0 + 320) = v58;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_249DC7118;
    v59 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211D8, &qword_249DDF168);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_14_0();
    *(v0 + 104) = v60;
    *(v0 + 112) = v59;
    [v44 cancelWithError:v58 completionHandler:v0 + 80];
    OUTLINED_FUNCTION_42();

    return MEMORY[0x282200938](v61);
  }

  else
  {
    [*(v0 + 208) setDelegate_];
    v23 = swift_task_alloc();
    *(v0 + 336) = v23;
    *v23 = v0;
    v23[1] = sub_249DC7390;
    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    OUTLINED_FUNCTION_42();

    return sub_249DC4C00();
  }
}

uint64_t sub_249DC7118()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  v3 = v2[6];
  v2[41] = v3;
  v4 = v2[27];
  if (v3)
  {
    v5 = sub_249DC74E8;
  }

  else
  {
    v5 = sub_249DC7230;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_249DC7230()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);

  v2(v4, v6 + v3, v5);
  v8 = v7;
  v9 = sub_249DDC6C8();
  sub_249DDCA78();

  if (OUTLINED_FUNCTION_46())
  {
    v10 = *(v0 + 208);
    OUTLINED_FUNCTION_28();
    v11 = OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_23_0(v11, 5.7779e-34);
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_249DBBB44(v11, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_17_0();
  }

  v17 = *(v0 + 312);
  v18 = *(v0 + 248);
  v19 = *(v0 + 224);
  v20 = *(v0 + 232);

  v17(v18, v19);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 240);
  v23 = *(v0 + 248);

  OUTLINED_FUNCTION_4();

  return v25();
}

uint64_t sub_249DC7390()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = v1[33];
  v6 = v1[32];
  v7 = v1[31];
  v8 = v1[30];

  OUTLINED_FUNCTION_25_0();

  return v9();
}

void sub_249DC74E8()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v28 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  swift_willThrow();

  v3(v5, v7 + v4, v6);
  v9 = v8;
  v10 = v1;
  v11 = sub_249DDC6C8();
  v12 = sub_249DDCA68();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 328);
  if (v13)
  {
    v15 = *(v0 + 208);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    v18 = v14;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v19;
    v17[1] = v15;
    v20 = v15;
    _os_log_impl(&dword_249DA7000, v11, v12, "Failed to cancel session: %@. Session: %@.", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211C0, &qword_249DDF140);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
  }

  v21 = *(v0 + 232) + 8;
  (*(v0 + 312))(*(v0 + 240), *(v0 + 224));
  v23 = *(v0 + 256);
  v22 = *(v0 + 264);
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_41();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_249DC76D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_4(a1, v1);
}

uint64_t sub_249DC76E8()
{
  OUTLINED_FUNCTION_6();
  if ([*(v0 + 16) state] == 6 || objc_msgSend(*(v0 + 16), sel_state) == 7)
  {
    OUTLINED_FUNCTION_4();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_249DC77D0;
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);

    return sub_249DC6A90();
  }
}

uint64_t sub_249DC77D0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5();
}

uint64_t sub_249DC78B0()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_249DDC6E8();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249DC7978()
{
  v35 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC6DropIn18AppStateController_lastDropInState;
  v0[11] = OBJC_IVAR____TtC6DropIn18AppStateController_lastDropInState;
  v3 = v1 + v2;
  if ((*(v3 + 8) & 1) == 0 && *v3 == v0[3])
  {
    (*(v0[7] + 16))(v0[8], v1 + OBJC_IVAR____TtC6DropIn18AppStateController_logger, v0[6]);
    v4 = sub_249DDC6C8();
    v5 = sub_249DDCA48();
    v6 = OUTLINED_FUNCTION_47(v5);
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[6];
    if (v6)
    {
      v10 = v0[3];
      v33 = v0[8];
      v11 = OUTLINED_FUNCTION_28();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v11 = 136315138;
      v13 = [objc_opt_self() stringForDropInSessionState_];
      v14 = sub_249DDC878();
      v16 = v15;

      v17 = sub_249DD23AC(v14, v16, &v34);

      *(v11 + 4) = v17;
      OUTLINED_FUNCTION_19_0();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15_0();

      (*(v7 + 8))(v33, v9);
    }

    else
    {

      (*(v7 + 8))(v8, v9);
    }

    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[8];

    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_41();

    __asm { BRAA            X1, X16 }
  }

  v0[12] = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_249DC7B94()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[5];
  v2 = *(v0[12] + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v0[13] = v2;
  v3 = v2;

  v4 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249DC7C10()
{
  v70 = v0;
  v1 = *(v0 + 104);
  if (!v1 || (v2 = [*(v0 + 104) isEqual_], v1, !v2))
  {
    v32 = *(v0 + 72);
    v33 = *(v0 + 48);
    v34 = *(v0 + 40);
    v35 = *(v0 + 16);
    v36 = OUTLINED_FUNCTION_9_0(*(v0 + 56));
    v37(v36);
    v38 = v35;
    v39 = sub_249DDC6C8();
    sub_249DDCA78();

    if (OUTLINED_FUNCTION_46())
    {
      v40 = *(v0 + 16);
      OUTLINED_FUNCTION_28();
      v41 = OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v41, 5.7779e-34);
      OUTLINED_FUNCTION_12_0();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      sub_249DBBB44(v41, &qword_27EF211C0, &qword_249DDF140);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_17_0();
    }

    v47 = *(v0 + 72);
    v48 = *(v0 + 48);
    v49 = *(v0 + 56);

    v50 = OUTLINED_FUNCTION_27_0();
    v51(v50);
    goto LABEL_8;
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = OUTLINED_FUNCTION_9_0(*(v0 + 56));
  v7(v6);
  v8 = sub_249DDC6C8();
  v9 = sub_249DDCA78();
  v10 = OUTLINED_FUNCTION_47(v9);
  v11 = *(v0 + 80);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  if (v10)
  {
    v14 = *(v0 + 24);
    v66 = *(v0 + 32);
    v68 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = objc_opt_self();
    v17 = [v16 stringForDropInSessionState_];
    v18 = sub_249DDC878();
    v67 = v11;
    v20 = v19;

    v21 = sub_249DD23AC(v18, v20, &v69);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v16 stringForDropInSessionStateReason_];
    v23 = sub_249DDC878();
    v25 = v24;

    v26 = sub_249DD23AC(v23, v25, &v69);

    *(v15 + 14) = v26;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15_0();

    (*(v12 + 8))(v67, v68);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v57 = *(v0 + 24);
  v58 = *(v0 + 40) + *(v0 + 88);
  *v58 = v57;
  *(v58 + 8) = 0;
  if ((v57 - 6) < 2)
  {
    v59 = swift_task_alloc();
    *(v0 + 120) = v59;
    *v59 = v0;
    v59[1] = sub_249DC8160;
    v60 = *(v0 + 40);
    OUTLINED_FUNCTION_43();

    return sub_249DC6778(v61);
  }

  if (v57 != 4)
  {
LABEL_8:
    v53 = *(v0 + 72);
    v52 = *(v0 + 80);
    v54 = *(v0 + 64);

    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_43();

    __asm { BRAA            X1, X16 }
  }

  v63 = swift_task_alloc();
  *(v0 + 112) = v63;
  *v63 = v0;
  v63[1] = sub_249DC8024;
  v64 = *(v0 + 40);
  OUTLINED_FUNCTION_43();

  return sub_249DC6694(v65);
}

uint64_t sub_249DC8024()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];

  OUTLINED_FUNCTION_25_0();

  return v8();
}

uint64_t sub_249DC8160()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];

  OUTLINED_FUNCTION_25_0();

  return v8();
}

uint64_t sub_249DC829C()
{
  OUTLINED_FUNCTION_6();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_249DDC6E8();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[17] = v5;
  v7 = *(v6 + 64);
  v1[18] = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249DC8344()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 120);
  *(v0 + 152) = OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC83A4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[15];
  v2 = *(v0[19] + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v0[20] = v2;
  v3 = v2;

  v4 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249DC8420()
{
  v46 = v0;
  v1 = v0[20];
  if (v1 && (v2 = [v0[20] isEqual_], v1, v2))
  {
    v3 = v0[14];
    v4 = [v3 value];
    v44 = sub_249DDC878();
    v6 = v5;

    v7 = [v3 type];
    v8 = sub_249DC9288(v3, &selRef_givenName);
    v10 = v9;
    v11 = sub_249DC9288(v3, &selRef_familyName);
    v13 = v12;
    v14 = sub_249DC9288(v3, &selRef_displayName);
    v16 = v15;
    v17 = sub_249DC92E4(v3);
    v0[2] = v8;
    v0[3] = v10;
    v0[4] = v11;
    v0[5] = v13;
    v0[6] = v14;
    v0[7] = v16;
    v0[8] = v17;
    v0[9] = v18;
    v0[10] = v44;
    v0[11] = v6;
    v0[12] = v7;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v0[15] + 120);
      ObjectType = swift_getObjectType();
      memcpy(__dst, v0 + 2, sizeof(__dst));
      (*(v19 + 16))(__dst, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    sub_249DC965C((v0 + 2));
  }

  else
  {
    v21 = v0[18];
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[13];
    v25 = OUTLINED_FUNCTION_9_0(v0[17]);
    v26(v25);
    v27 = v24;
    v28 = sub_249DDC6C8();
    sub_249DDCA78();

    if (OUTLINED_FUNCTION_46())
    {
      v29 = v0[13];
      OUTLINED_FUNCTION_28();
      v30 = OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v30, 5.7779e-34);
      OUTLINED_FUNCTION_12_0();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_249DBBB44(v30, &qword_27EF211C0, &qword_249DDF140);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_17_0();
    }

    v37 = v0[17];
    v36 = v0[18];
    v38 = v0[16];

    v39 = OUTLINED_FUNCTION_27_0();
    v40(v39);
  }

  v41 = v0[18];

  OUTLINED_FUNCTION_4();

  return v42();
}

uint64_t sub_249DC8698(float a1)
{
  v2 = v1;
  v4 = sub_249DDC6E8();
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v2 + OBJC_IVAR____TtC6DropIn18AppStateController_logger, v4);
  v12 = sub_249DDC6C8();
  v13 = sub_249DDCA58();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_28();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_249DA7000, v12, v13, "Downlink audio power: %f", v14, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  (*(v7 + 8))(v11, v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v2 + 120);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16, a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_249DC8830()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_249DDC6E8();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249DC88D8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  *(v0 + 64) = OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DC8938()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  v2 = *(v0[8] + OBJC_IVAR____TtC6DropIn18AppStateActivation_session);
  v0[9] = v2;
  v3 = v2;

  v4 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249DC89B4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);
  if (v1 && (v2 = [*(v0 + 72) isEqual_], v1, v2))
  {
    v3 = *(v0 + 32);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 24);
      v5 = *(*(v0 + 32) + 120);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(v4, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 16);
    v11 = OUTLINED_FUNCTION_9_0(*(v0 + 48));
    v12(v11);
    v13 = v10;
    v14 = sub_249DDC6C8();
    sub_249DDCA78();

    if (OUTLINED_FUNCTION_46())
    {
      v15 = *(v0 + 16);
      OUTLINED_FUNCTION_28();
      v16 = OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v16, 5.7779e-34);
      OUTLINED_FUNCTION_12_0();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_249DBBB44(v16, &qword_27EF211C0, &qword_249DDF140);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_17_0();
    }

    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);

    v25 = OUTLINED_FUNCTION_27_0();
    v26(v25);
  }

  v27 = *(v0 + 56);

  OUTLINED_FUNCTION_4();

  return v28();
}

uint64_t AppStateController.deinit()
{
  sub_249DA99E8(v0 + 112);
  v1 = OBJC_IVAR____TtC6DropIn18AppStateController_logger;
  v2 = sub_249DDC6E8();
  OUTLINED_FUNCTION_14(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___activation);

  sub_249DBBB44(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_activationStatesContinuation, &qword_27EF21358, &qword_249DDF578);
  v5 = *(v0 + OBJC_IVAR____TtC6DropIn18AppStateController____lazy_storage___deactivation);

  sub_249DBBB44(v0 + OBJC_IVAR____TtC6DropIn18AppStateController_deactivationStatesContinuation, &qword_27EF21360, &qword_249DDF580);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AppStateController.__deallocating_deinit()
{
  AppStateController.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_249DC8C98()
{
  result = qword_27EF21350;
  if (!qword_27EF21350)
  {
    type metadata accessor for AppStateController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21350);
  }

  return result;
}

uint64_t type metadata accessor for AppStateController()
{
  result = qword_27EF21368;
  if (!qword_27EF21368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DC8D3C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = sub_249DB9270;
  OUTLINED_FUNCTION_7_1();

  return sub_249DC440C();
}

void sub_249DC8E5C()
{
  v0 = sub_249DDC6E8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_249DC9234(319, &qword_27EF21378, &qword_27EF21310, &qword_249DDF530);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_249DC9234(319, &qword_27EF21380, &qword_27EF21328, &qword_249DDF538);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AppStateController.checkPendingSession()()
{
  OUTLINED_FUNCTION_9();
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_249DC9124;

  return v6();
}

uint64_t sub_249DC9124()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

void sub_249DC9234(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_249DDCBB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_249DC9288(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_249DDC878();
  }

  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_249DC92E4(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249DDC618();

  return v3;
}

uint64_t sub_249DC9348(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_249DC943C;

  return v6(v2 + 32);
}

uint64_t sub_249DC943C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_4();

  return v7();
}

uint64_t sub_249DC953C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_39_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_3(v1);

  return v4(v3);
}

uint64_t sub_249DC95CC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_39_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_3(v1);

  return v4(v3);
}

unint64_t sub_249DC96C0()
{
  result = qword_27EF21580;
  if (!qword_27EF21580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF21580);
  }

  return result;
}

uint64_t sub_249DC9704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_28_0();
  v9(v8);
  return v4;
}

uint64_t sub_249DC9750()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = sub_249DBBD8C;
  v8 = OUTLINED_FUNCTION_7_1();

  return sub_249DC56FC(v8, v9, v2, v4, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DC9854()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = sub_249DBBD8C;
  v7 = OUTLINED_FUNCTION_7_1();

  return sub_249DC4A58(v7, v8, v2, v3);
}

uint64_t sub_249DC9904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_28_0();
  v9(v8);
  return v4;
}

uint64_t sub_249DC9950()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_39_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_3(v1);

  return v4(v3);
}

_OWORD *sub_249DC99E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x24C203F30);
}

void OUTLINED_FUNCTION_16_0()
{

  JUMPOUT(0x24C203F30);
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x24C203F30);
}

id OUTLINED_FUNCTION_23_0(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return sub_249DC3594(0, 0, v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_32_0(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_37_0(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_46()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_47(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_249DC9CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_249DC9D10, 0, 0);
}

uint64_t sub_249DC9D10()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_249DC9DE4;
    OUTLINED_FUNCTION_13_0();

    return sub_249DC6A90();
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v5();
  }
}

uint64_t sub_249DC9DE4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DC9F74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v12 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v5, v13, v14, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a2;
  v16 = v4;
  v17 = a2;
  sub_249DC3858(0, 0, v5, a4, v15);
}

uint64_t sub_249DCA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_249DCA064, 0, 0);
}

uint64_t sub_249DCA064()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_249DCA138;
    v4 = OUTLINED_FUNCTION_13_0();

    return sub_249DC76D0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v6();
  }
}

uint64_t sub_249DCA138()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DCA2D0(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v12 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v4, v13, v14, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = v3;
  v17 = a1;
  v18 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v18, v19, v4, v20, v15);
}

uint64_t sub_249DCA3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_249DCA3D4, 0, 0);
}

uint64_t sub_249DCA3D4()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_249DCA4AC;
    v4 = v0[5];
    v5 = v0[6];
    OUTLINED_FUNCTION_13_0();

    return sub_249DC78B0();
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v7();
  }
}

uint64_t sub_249DCA4AC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DCA62C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  sub_249DDC988();
  v11 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v10, v12, v13, v11);
  OUTLINED_FUNCTION_17_1();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v2;
  v16 = a1;
  v17 = a2;
  v18 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v18, v19, v10, v20, v14);
}

uint64_t sub_249DCA718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_249DCA738, 0, 0);
}

uint64_t sub_249DCA738()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_249DCA80C;

    return sub_249DC6778(v3);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v5();
  }
}

uint64_t sub_249DCA80C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DCA980(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  if (a2 >> 62)
  {
    result = sub_249DDCCA8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C2035C0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(a2 + 32);
  }

  v13 = v12;
  sub_249DDC988();
  v14 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v10, v15, v16, v14);
  OUTLINED_FUNCTION_17_1();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = a1;
  v17[6] = v13;
  v18 = v2;
  v19 = a1;
  v20 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v20, v21, v10, v22, v17);
}

uint64_t sub_249DCAAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_249DCAAE8, 0, 0);
}

uint64_t sub_249DCAAE8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_16_1(v3);

    return sub_249DC829C();
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v5();
  }
}

uint64_t sub_249DCABB8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DCAD38(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21578, &qword_249DDF7A0);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = sub_249DDC668();
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v25 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  sub_249DCBB1C(a2, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    return sub_249DCBAB4(v17);
  }

  v41 = *(v21 + 32);
  v42 = a1;
  v41(v27, v17, v18);
  sub_249DDC988();
  v29 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v11, v30, v31, v29);
  (*(v21 + 16))(v25, v27, v18);
  v32 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v41;
  v35 = v42;
  *(v33 + 4) = v3;
  *(v33 + 5) = v35;
  v34(&v33[v32], v25, v18);
  v36 = v3;
  v37 = v35;
  v38 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v38, v39, v11, v40, v33);

  return (*(v21 + 8))(v27, v18);
}

uint64_t sub_249DCAFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_249DCAFDC, 0, 0);
}

uint64_t sub_249DCAFDC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_16_1(v3);

    return sub_249DC8830();
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v5();
  }
}

uint64_t sub_249DCB0AC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DCB2A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_1();
  v6 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v0, v7, v8, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v10 = v1;
  v11 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v11, v12, v0, v13, v9);
}

uint64_t sub_249DCB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_249DCB380, 0, 0);
}

uint64_t sub_249DCB380()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_249DCB424, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v3();
  }
}

uint64_t sub_249DCB424()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  sub_249DC498C();

  v2 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249DCB4E8(float a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_1();
  v8 = sub_249DDC9A8();
  OUTLINED_FUNCTION_15_1(v1, v9, v10, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  v12 = v2;
  v13 = OUTLINED_FUNCTION_7();
  sub_249DC3858(v13, v14, v1, v15, v11);
}

uint64_t sub_249DCB5B8(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_249DCB5DC, 0, 0);
}

uint64_t sub_249DCB5DC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_249DCB680, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v3();
  }
}

uint64_t sub_249DCB680()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  sub_249DC8698(*(v0 + 40));

  v2 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

id sub_249DCB760()
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_249DCB7DC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249DCB848()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_1(v4);

  return sub_249DCB5B8(v6, v2, v7, v8, v9);
}

uint64_t sub_249DCB8E8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_249DCBA18()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = sub_249DCC028;
  v5 = OUTLINED_FUNCTION_3_1();

  return sub_249DCB360(v5, v6, v7, v1);
}

uint64_t sub_249DCBAB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21578, &qword_249DDF7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249DCBB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21578, &qword_249DDF7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DCBB8C()
{
  v1 = sub_249DDC668();
  OUTLINED_FUNCTION_19(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2(v8);
  *v9 = v10;
  v9[1] = sub_249DCC028;
  v11 = OUTLINED_FUNCTION_3_1();

  return sub_249DCAFB8(v11, v12, v13, v6, v7, v14);
}

unint64_t sub_249DCBC78(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249DCBC9C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11_0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_1(v5);

  return sub_249DCAAC4(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_249DCBD40()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11_0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_1(v5);

  return sub_249DCA718(v7, v8, v9, v10);
}

uint64_t sub_249DCBDE4()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_1(v6);

  return sub_249DCA3AC(v8, v9, v10, v11, v2, v4, v3);
}

uint64_t sub_249DCBE98()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_1(v4);

  return sub_249DCA040(v6, v7, v8, v9, v1);
}

uint64_t objectdestroy_24Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_249DCBF88()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_1(v4);

  return sub_249DC9CEC(v6, v7, v8, v9, v1);
}

uint64_t OUTLINED_FUNCTION_1_4()
{
  **(v0 + 16) = 1;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}
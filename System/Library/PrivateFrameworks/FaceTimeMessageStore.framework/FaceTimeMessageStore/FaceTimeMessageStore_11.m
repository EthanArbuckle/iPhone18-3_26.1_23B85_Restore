uint64_t sub_1BC886F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E756F636361 && a2 == 0xED00007375746174;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001BC90D600 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001BC90D620 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

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

uint64_t sub_1BC887088(char a1)
{
  if (!a1)
  {
    return 0x53746E756F636361;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000013;
}

uint64_t sub_1BC887100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC886F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC887128(uint64_t a1)
{
  v2 = sub_1BC887388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC887164(uint64_t a1)
{
  v2 = sub_1BC887388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id AccountInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AccountInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6210, &qword_1BC906228);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC887388();
  sub_1BC8F8CA4();
  v17 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus);
  HIBYTE(v16) = 0;
  sub_1BC8873DC();
  OUTLINED_FUNCTION_4_2();
  sub_1BC8F89F4();
  if (!v2)
  {
    v17 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption);
    HIBYTE(v16) = 1;
    sub_1BC887430();
    OUTLINED_FUNCTION_4_2();
    sub_1BC8F89F4();
    v14 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials);
    LOBYTE(v17) = 2;
    OUTLINED_FUNCTION_4_2();
    sub_1BC8F89B4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1BC887388()
{
  result = qword_1EDC21118[0];
  if (!qword_1EDC21118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC21118);
  }

  return result;
}

unint64_t sub_1BC8873DC()
{
  result = qword_1EDC1F1E8;
  if (!qword_1EDC1F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F1E8);
  }

  return result;
}

unint64_t sub_1BC887430()
{
  result = qword_1EDC1F110;
  if (!qword_1EDC1F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F110);
  }

  return result;
}

void *AccountInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6218, &qword_1BC906230);
  v6 = OUTLINED_FUNCTION_0(v19);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC887388();
  v15 = ObjectType;
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v8;
    v21 = 0;
    sub_1BC887708();
    v17 = v19;
    OUTLINED_FUNCTION_3_22();
    *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus] = v22;
    v21 = 1;
    sub_1BC88775C();
    OUTLINED_FUNCTION_3_22();
    *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption] = v22;
    LOBYTE(v22) = 2;
    v3[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials] = sub_1BC8F88B4() & 1;
    v20.receiver = v3;
    v20.super_class = v15;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    (*(v16 + 8))(v12, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

unint64_t sub_1BC887708()
{
  result = qword_1EDC20A18;
  if (!qword_1EDC20A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20A18);
  }

  return result;
}

unint64_t sub_1BC88775C()
{
  result = qword_1EDC209B0;
  if (!qword_1EDC209B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209B0);
  }

  return result;
}

void *sub_1BC8877B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = AccountInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC887800(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

unint64_t AccountStatus.init(rawValue:)(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BC887824()
{
  result = qword_1EBCF6220;
  if (!qword_1EBCF6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6220);
  }

  return result;
}

unint64_t sub_1BC887878@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AccountStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1BC8878B0()
{
  result = qword_1EBCF6228;
  if (!qword_1EBCF6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6228);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC887B2C()
{
  result = qword_1EBCF6230;
  if (!qword_1EBCF6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6230);
  }

  return result;
}

unint64_t sub_1BC887B84()
{
  result = qword_1EDC21108;
  if (!qword_1EDC21108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC21108);
  }

  return result;
}

unint64_t sub_1BC887BDC()
{
  result = qword_1EDC21110;
  if (!qword_1EDC21110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC21110);
  }

  return result;
}

unint64_t sub_1BC887C30()
{
  result = qword_1EDC21100;
  if (!qword_1EDC21100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC21100);
  }

  return result;
}

unint64_t sub_1BC887C84()
{
  result = qword_1EDC210F8;
  if (!qword_1EDC210F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC210F8);
  }

  return result;
}

uint64_t sub_1BC887CDC()
{
  OUTLINED_FUNCTION_131();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  OUTLINED_FUNCTION_61();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v0;
  OUTLINED_FUNCTION_61();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1BC9066F8;
  v10[5] = v9;
  sub_1BC890388(0, 0, v7, &unk_1BC906708, v10);
}

uint64_t VideoMessagingError.hashValue.getter()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC887E80()
{
  result = qword_1EBCF6238;
  if (!qword_1EBCF6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6238);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoMessagingError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BC887F80()
{
  v0 = sub_1BC8F6ED4();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  __swift_allocate_value_buffer(v15, qword_1EDC1E950);
  v16 = OUTLINED_FUNCTION_81_0();
  __swift_project_value_buffer(v16, v17);
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F70], v0);
  sub_1BC7B7A9C();
  sub_1BC8F6FF4();
  (*(v3 + 8))(v8, v0);
  v18 = *(v12 + 8);
  v19 = OUTLINED_FUNCTION_40();
  return v20(v19);
}

uint64_t sub_1BC888138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_11_4(a1, a4);
}

uint64_t sub_1BC888150()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_1BC7FF6B0();
  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BC8881B0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[3];
  sub_1BC888340(v0[4]);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BC888244;
  v3 = v0[3];

  return sub_1BC8885A8();
}

uint64_t sub_1BC888244()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC8885A8()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = type metadata accessor for OutgoingVideoMessage();
  OUTLINED_FUNCTION_26(v2);
  v1[3] = v3;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC888650(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 88);
  *(v1 + 40) = v2;
  return OUTLINED_FUNCTION_11_4(a1, v2);
}

uint64_t sub_1BC88866C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_1BC7FF6B0();
  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BC8886CC()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  sub_1BC888340(*(v0 + 48));
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v2 = *(v0 + 48);
  v3 = sub_1BC8F7734();
  *(v0 + 56) = __swift_project_value_buffer(v3, qword_1EDC2B2B0);

  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_21(v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = *(v7 + 16);

    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v9, v10, "Recovered %{public}ld messages from the cache");
    v11 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v11);
  }

  else
  {
    v12 = *(v0 + 48);
  }

  result = *(v0 + 48);
  v14 = *(result + 16);
  *(v0 + 64) = v14;
  if (v14)
  {
    *(v0 + 96) = *(*(v0 + 24) + 80);
    *(v0 + 72) = 0;
    if (*(result + 16))
    {
      v15 = *(v0 + 56);
      v16 = *(v0 + 32);
      OUTLINED_FUNCTION_0_23();
      sub_1BC890B6C();
      v17 = sub_1BC8F7714();
      v18 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v18))
      {
        v19 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v19);
        OUTLINED_FUNCTION_4();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v25 = swift_task_alloc();
      *(v0 + 80) = v25;
      *v25 = v0;
      v26 = OUTLINED_FUNCTION_4_15(v25);

      return sub_1BC888CC4(v26);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v27 = *(v0 + 32);

    OUTLINED_FUNCTION_27();

    return v28();
  }

  return result;
}

uint64_t sub_1BC8888DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1BC8889D8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72) + 1;
  sub_1BC890934(*(v0 + 32));
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_64_3();

    OUTLINED_FUNCTION_27();

    v3();
  }

  else
  {
    OUTLINED_FUNCTION_38_10();
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + 96);
      v6 = *(v0 + 56);
      v7 = *(v0 + 32);
      v8 = *(*(v0 + 24) + 72);
      OUTLINED_FUNCTION_0_23();
      sub_1BC890B6C();
      v9 = sub_1BC8F7714();
      v10 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v10))
      {
        v11 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v11);
        OUTLINED_FUNCTION_4();
        _os_log_impl(v12, v13, v14, v15, v16, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v17 = swift_task_alloc();
      *(v0 + 80) = v17;
      *v17 = v0;
      v18 = OUTLINED_FUNCTION_4_15();

      sub_1BC888CC4(v18);
    }
  }
}

void sub_1BC888B20()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 56);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F81E4();
  v4 = OUTLINED_FUNCTION_28_7(v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    v11 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v11);
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 72) + 1;
  sub_1BC890934(*(v0 + 32));
  if (v13 == v12)
  {
    OUTLINED_FUNCTION_64_3();

    OUTLINED_FUNCTION_27();

    v14();
  }

  else
  {
    OUTLINED_FUNCTION_38_10();
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 96);
      v17 = *(v0 + 56);
      v18 = *(v0 + 32);
      v19 = *(*(v0 + 24) + 72);
      OUTLINED_FUNCTION_0_23();
      sub_1BC890B6C();
      v20 = sub_1BC8F7714();
      v21 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v21))
      {
        v22 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v22);
        OUTLINED_FUNCTION_4();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v28 = swift_task_alloc();
      *(v0 + 80) = v28;
      *v28 = v0;
      v29 = OUTLINED_FUNCTION_4_15();

      sub_1BC888CC4(v29);
    }
  }
}

uint64_t sub_1BC888CC4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC888CE4, 0, 0);
}

uint64_t sub_1BC888CE4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[4];
  v2 = v0[5];
  v3 = type metadata accessor for OutgoingVideoMessage();
  v0[6] = sub_1BC8418A8(v1 + *(v3 + 32));
  v4 = *(v0[5] + 88);
  v0[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC888DAC, v4, 0);
}

uint64_t sub_1BC888DAC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  sub_1BC7FE410();
  v4 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC888E0C()
{
  v25 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1BC8F7734();
  *(v0 + 64) = __swift_project_value_buffer(v2, qword_1EDC2B2B0);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1BFB29280](v5, &type metadata for MessageQuality);
    v10 = sub_1BC7A9A4C(v8, v9, &v24);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v16 = *(v0 + 48);
  v17 = *(v16 + 16);
  *(v0 + 72) = v17;
  if (v17)
  {
    *(v0 + 80) = 0;
    v18 = *(v16 + 32);
    *(v0 + 97) = v18;
    *(v0 + 96) = v18;
    v19 = swift_task_alloc();
    *(v0 + 88) = v19;
    *v19 = v0;
    v20 = OUTLINED_FUNCTION_23_9(v19);

    return sub_1BC88BD54(v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v23();
  }
}

uint64_t sub_1BC889000()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 98) = v5;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8890EC()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 98);
  v2 = *(v0 + 64);
  v3 = sub_1BC8F7714();
  if (v1)
  {
    v4 = sub_1BC8F8204();
    if (!OUTLINED_FUNCTION_21(v4))
    {
      goto LABEL_15;
    }

    v5 = 7823730;
    v6 = *(v0 + 97);
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v8 = swift_slowAlloc();
    *(v0 + 24) = v8;
    v9 = OUTLINED_FUNCTION_56_4(4.8751e-34);
    switch(v10)
    {
      case 1:
        v9 = OUTLINED_FUNCTION_60_5();
        break;
      case 2:
        v5 = 0xE400000000000000;
        v9 = 1751607656;
        break;
      case 3:
        v9 = 7823730;
        break;
      default:
        break;
    }

    v17 = sub_1BC7A9A4C(v9, v5, (v0 + 24));

    *(v7 + 4) = v17;
  }

  else
  {
    v11 = sub_1BC8F81E4();
    if (!OUTLINED_FUNCTION_21(v11))
    {
      goto LABEL_15;
    }

    v12 = 7823730;
    v13 = *(v0 + 97);
    OUTLINED_FUNCTION_9();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v8 = swift_slowAlloc();
    *(v0 + 16) = v8;
    v15 = OUTLINED_FUNCTION_56_4(4.8751e-34);
    switch(v16)
    {
      case 1:
        v15 = OUTLINED_FUNCTION_60_5();
        break;
      case 2:
        v12 = 0xE400000000000000;
        v15 = 1751607656;
        break;
      case 3:
        v15 = 7823730;
        break;
      default:
        break;
    }

    v18 = sub_1BC7A9A4C(v15, v12, (v0 + 16));

    *(v14 + 4) = v18;
  }

  OUTLINED_FUNCTION_4();
  _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v24 = OUTLINED_FUNCTION_13_2();
  MEMORY[0x1BFB2AA50](v24);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1BFB2AA50]();
LABEL_15:

  v25 = *(v0 + 80) + 1;
  if (v25 == *(v0 + 72))
  {
    v26 = *(v0 + 48);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_71_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    *(v0 + 80) = v25;
    v36 = *(*(v0 + 48) + v25 + 32);
    *(v0 + 97) = v36;
    *(v0 + 96) = v36;
    v37 = swift_task_alloc();
    *(v0 + 88) = v37;
    *v37 = v0;
    OUTLINED_FUNCTION_23_9();
    OUTLINED_FUNCTION_71_3();

    return sub_1BC88BD54(v38, v39);
  }
}

uint64_t sub_1BC889360(uint64_t a1)
{
  v143 = *MEMORY[0x1E69E9840];
  v136 = type metadata accessor for OutgoingVideoMessage();
  v2 = OUTLINED_FUNCTION_0(v136);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v131 = sub_1BC8F6ED4();
  v10 = OUTLINED_FUNCTION_0(v131);
  v133 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v130 = v15 - v14;
  v129 = sub_1BC8F7014();
  v16 = OUTLINED_FUNCTION_0(v129);
  v113 = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v128 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v111 - v24;
  v25 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v132 = v23;
  if (v25)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404();
    v26 = v140;
    v27 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v135 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_0_23();
      OUTLINED_FUNCTION_79();
      sub_1BC890B6C();
      v28 = v9 + *(v136 + 32);
      v29 = sub_1BC8F6F24();
      v31 = v30;
      sub_1BC890934(v9);
      v140 = v26;
      v32 = v26[2];
      if (v32 >= v26[3] >> 1)
      {
        sub_1BC7AD404();
        v26 = v140;
      }

      v26[2] = v32 + 1;
      v33 = &v26[2 * v32];
      v33[4] = v29;
      v33[5] = v31;
      v27 += v135;
      --v25;
    }

    while (v25);
    v34 = v132;
  }

  else
  {
    v34 = v23;
  }

  v35 = sub_1BC899DDC(v26);
  v36 = v112;
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  v140 = 0x786F6274754FLL;
  v141 = 0xE600000000000000;
  v37 = *MEMORY[0x1E6968F70];
  v38 = v133;
  v39 = *(v133 + 104);
  v41 = v130;
  v40 = v131;
  v127 = v133 + 104;
  v126 = v39;
  v39(v130, v37, v131);
  v125 = sub_1BC7B7A9C();
  sub_1BC8F7004();
  v42 = *(v38 + 8);
  v133 = v38 + 8;
  v124 = v42;
  v42(v41, v40);
  v123 = objc_opt_self();
  v43 = [v123 defaultManager];
  sub_1BC8F6FC4();
  v44 = sub_1BC8F7BE4();

  v140 = 0;
  v45 = [v43 contentsOfDirectoryAtPath:v44 error:&v140];

  v46 = v140;
  if (v45)
  {
    v47 = sub_1BC8F7E54();
    v48 = v46;

    v136 = *(v47 + 16);
    if (v136)
    {
      v50 = 0;
      v135 = v47 + 32;
      v51 = v35 + 56;
      v122 = *MEMORY[0x1E6968F68];
      v121 = (v113 + 8);
      *&v49 = 136446210;
      v117 = v49;
      *&v49 = 136446466;
      v111 = v49;
      v120 = v47;
      v119 = v35 + 56;
      do
      {
        if (v50 >= *(v47 + 16))
        {
          __break(1u);
        }

        v52 = v135 + 16 * v50;
        v54 = *v52;
        v53 = *(v52 + 8);
        if (*(v35 + 16))
        {
          v55 = *(v35 + 40);
          sub_1BC8F8C04();

          sub_1BC8F7CD4();
          v56 = sub_1BC8F8C64();
          v57 = ~(-1 << *(v35 + 32));
          while (1)
          {
            v58 = v56 & v57;
            if (((*(v51 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
            {
              break;
            }

            v59 = (*(v35 + 48) + 16 * v58);
            if (*v59 != v54 || v59[1] != v53)
            {
              v61 = sub_1BC8F8AA4();
              v56 = v58 + 1;
              if ((v61 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_32;
          }
        }

        else
        {
        }

        if (qword_1EDC1E1F8 != -1)
        {
          OUTLINED_FUNCTION_0_18();
          swift_once();
        }

        v62 = sub_1BC8F7734();
        v63 = __swift_project_value_buffer(v62, qword_1EDC2B2B0);

        v64 = sub_1BC8F7714();
        v65 = sub_1BC8F8204();

        v66 = os_log_type_enabled(v64, v65);
        v134 = v63;
        if (v66)
        {
          OUTLINED_FUNCTION_9();
          v67 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_2();
          v68 = swift_slowAlloc();
          v140 = v68;
          *(v67 + 4) = OUTLINED_FUNCTION_49_8(v142);
          _os_log_impl(&dword_1BC7A3000, v64, v65, "Removing untracked cached item %{public}s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50](v69, v70);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50](v71, v72);
        }

        v73 = [v123 defaultManager];
        v140 = v54;
        v141 = v53;
        v75 = v130;
        v74 = v131;
        v126(v130, v122, v131);
        v76 = v128;
        sub_1BC8F7004();
        v124(v75, v74);
        v77 = sub_1BC8F6F44();
        (*v121)(v76, v129);
        v140 = 0;
        LODWORD(v74) = [v73 removeItemAtURL:v77 error:&v140];

        if (v74)
        {
          v78 = v140;
        }

        else
        {
          v79 = v140;
          v80 = sub_1BC8F6EA4();

          swift_willThrow();
          v118 = 0;

          v81 = v80;
          v82 = sub_1BC8F7714();
          v83 = sub_1BC8F81E4();

          v134 = v82;
          if (os_log_type_enabled(v82, v83))
          {
            OUTLINED_FUNCTION_11_2();
            v84 = swift_slowAlloc();
            v115 = v83;
            v85 = v84;
            OUTLINED_FUNCTION_18();
            v116 = swift_slowAlloc();
            v140 = v116;
            v86 = OUTLINED_FUNCTION_49_8(v139);

            *(v85 + 4) = v86;
            *(v85 + 12) = 2082;
            swift_getErrorValue();
            v87 = v137;
            v88 = v138;
            v89 = sub_1BC8F83F4();
            v114 = &v111;
            OUTLINED_FUNCTION_0(v89);
            v91 = v90;
            v93 = *(v92 + 64);
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1EEE9AC00](v94);
            OUTLINED_FUNCTION_40_9();
            (*(*(v88 - 8) + 16))(v76, v87, v88);
            v95 = OUTLINED_FUNCTION_15_13();
            __swift_storeEnumTagSinglePayload(v95, v96, v97, v88);
            v98 = sub_1BC8073F0(v76, v88);
            v100 = v99;
            (*(v91 + 8))(v76, v89);
            v101 = sub_1BC7A9A4C(v98, v100, &v140);

            *(v85 + 14) = v101;
            v102 = v134;
            _os_log_impl(&dword_1BC7A3000, v134, v115, "Error deleting cached item %{public}s %{public}s", v85, 0x16u);
            swift_arrayDestroy();
            v103 = OUTLINED_FUNCTION_13_2();
            MEMORY[0x1BFB2AA50](v103);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          else
          {
          }
        }

        v47 = v120;
        v51 = v119;
LABEL_32:
        ++v50;
      }

      while (v50 != v136);

      v36 = v112;
      v34 = v132;
    }

    else
    {
    }

    v108 = *(v113 + 8);
    v109 = v129;
    v108(v34, v129);
    result = (v108)(v36, v109);
  }

  else
  {
    v104 = v140;

    sub_1BC8F6EA4();

    swift_willThrow();
    v105 = *(v113 + 8);
    v106 = v129;
    v105(v34, v129);
    result = (v105)(v36, v106);
  }

  v110 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC889E34()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = sub_1BC8F7014();
  v1[7] = v8;
  OUTLINED_FUNCTION_26(v8);
  v1[8] = v9;
  v11 = *(v10 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BC889F24()
{
  v1 = v0[4];
  v2 = sub_1BC8316B8();
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  v5 = v0[6];
  v4 = v0[7];
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
  OUTLINED_FUNCTION_2_23();
  sub_1BC890A8C(v6, v7);
  OUTLINED_FUNCTION_30();
  sub_1BC8F87F4();

  if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
  {
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[5];
    v22 = v0[2];
    v21 = v0[3];
    v23 = *(v19 + 32);
    (v23)(v0[9], v0[6], v18);
    v24 = OUTLINED_FUNCTION_30();
    v23(v24);
    sub_1BC88A174(v22, v21, v17);
    (*(v19 + 8))(v17, v18);
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[6];

    OUTLINED_FUNCTION_11();
  }

  else
  {
LABEL_3:
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v8 = sub_1BC8F7734();
    __swift_project_value_buffer(v8, qword_1EDC2B2B0);
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v10))
    {
      v11 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v11);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    sub_1BC8908E0();
    swift_allocError();
    swift_willThrow();
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[6];

    OUTLINED_FUNCTION_27();
  }

  return v28();
}

uint64_t sub_1BC88A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v12 = (v11 - v10);
  v13 = type metadata accessor for OutgoingVideoMessage();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v19 = v18 - v17;
  v20 = sub_1BC8F6C54();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC890A8C(&qword_1EBCF5700, type metadata accessor for OutgoingVideoMessage);
  sub_1BC8F6C34();

  if (!v3)
  {
    v24 = *(v13 + 32);
    v25 = *(v7 + 24);
    v25(v19 + v24, a3, v4);
    sub_1BC88A6D8(v19, v12);
    v25(v19 + v24, v12, v4);
    sub_1BC88B364();
    v26 = *(v7 + 8);
    v27 = OUTLINED_FUNCTION_79();
    v28(v27);
    return sub_1BC890934(v19);
  }

  return result;
}

uint64_t sub_1BC88A410(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = sub_1BC8F70D4();
  v11 = v10;

  v4[5] = v9;
  v4[6] = v11;
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_1BC88A504;

  return sub_1BC889E34();
}

uint64_t sub_1BC88A504()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[5];
  v9 = v3[3];
  v10 = v3[2];
  v11 = *v1;
  *v5 = *v1;

  sub_1BC7D4C94(v8, v7);
  v12 = v3[4];
  if (v2)
  {
    v13 = sub_1BC8F6E94();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v14 = v11[1];

  return v14();
}

uint64_t sub_1BC88A6D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v123 = a1;
  v120 = a2;
  v128 = *MEMORY[0x1E69E9840];
  v119 = type metadata accessor for OutgoingVideoMessage();
  v2 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v108[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BC8F6ED4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v108[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BC8F7014();
  v124 = *(v9 - 8);
  v10 = v124[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v108[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v116 = &v108[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v108[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v108[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v108[-v20];
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  v126 = 0x786F6274754FLL;
  v127 = 0xE600000000000000;
  v22 = v5[13];
  v22(v8, *MEMORY[0x1E6968F70], v4);
  v113 = sub_1BC7B7A9C();
  v118 = v21;
  sub_1BC8F7004();
  v23 = v5[1];
  v24 = v4;
  v115 = v5 + 1;
  v112 = v23;
  v23(v8, v4);
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v122 = v9;
  v25 = sub_1BC8F7734();
  v26 = __swift_project_value_buffer(v25, qword_1EDC2B2B0);
  v27 = sub_1BC8F7714();
  v28 = sub_1BC8F8204();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1BC7A3000, v27, v28, "Checking if outbox directory exists", v29, 2u);
    MEMORY[0x1BFB2AA50](v29, -1, -1);
  }

  v121 = objc_opt_self();
  v30 = [v121 defaultManager];
  sub_1BC8F6FC4();
  v31 = v19;
  v32 = sub_1BC8F7BE4();

  v33 = [v30 fileExistsAtPath_];

  v125 = v31;
  if (v33)
  {
    goto LABEL_10;
  }

  v34 = sub_1BC8F7714();
  v35 = sub_1BC8F8204();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1BC7A3000, v34, v35, "Creating new outbox directory", v36, 2u);
    MEMORY[0x1BFB2AA50](v36, -1, -1);
  }

  v37 = [v121 defaultManager];
  v38 = sub_1BC8F6F44();
  v126 = 0;
  v39 = [v37 createDirectoryAtURL:v38 withIntermediateDirectories:0 attributes:0 error:&v126];

  if (v39)
  {
    v40 = v126;
LABEL_10:
    v126 = sub_1BC8F7204();
    v127 = v41;
    v22(v8, *MEMORY[0x1E6968F68], v24);
    v42 = v114;
    sub_1BC8F7004();
    v112(v8, v24);

    v113 = *(v119 + 32);
    sub_1BC8F6EE4();
    v43 = v120;
    sub_1BC8F6F84();

    v44 = v124;
    v45 = v42;
    v46 = v43;
    v47 = v122;
    v114 = v124[1];
    (v114)(v45, v122);
    v48 = v117;
    sub_1BC890B6C();
    v50 = v44[2];
    v49 = v44 + 2;
    v51 = v116;
    v112 = v50;
    (v50)(v116, v46, v47);
    v115 = v26;
    v52 = sub_1BC8F7714();
    v53 = sub_1BC8F8204();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v124 = v49;
      v55 = v54;
      v110 = swift_slowAlloc();
      v126 = v110;
      *v55 = 136446466;
      v109 = v53;
      v56 = *(v119 + 32);
      sub_1BC890A8C(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v57 = v51;
      v58 = sub_1BC8F8A54();
      v60 = v59;
      sub_1BC890934(v48);
      v61 = sub_1BC7A9A4C(v58, v60, &v126);
      v47 = v122;

      *(v55 + 4) = v61;
      *(v55 + 12) = 2082;
      v62 = sub_1BC8F8A54();
      v64 = v63;
      v65 = v114;
      (v114)(v57, v47);
      v66 = sub_1BC7A9A4C(v62, v64, &v126);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_1BC7A3000, v52, v109, "Moving message from %{public}s to %{public}s", v55, 0x16u);
      v67 = v110;
      swift_arrayDestroy();
      v46 = v120;
      MEMORY[0x1BFB2AA50](v67, -1, -1);
      MEMORY[0x1BFB2AA50](v55, -1, -1);
    }

    else
    {

      v65 = v114;
      (v114)(v51, v47);
      sub_1BC890934(v48);
    }

    v68 = [v121 defaultManager];
    v69 = sub_1BC8F6F44();
    v70 = sub_1BC8F6F44();
    v126 = 0;
    v71 = [v68 copyItemAtURL:v69 toURL:v70 error:&v126];

    v72 = v126;
    if (v71)
    {
      v73 = v111;
      (v112)(v111, v46, v47);
      v74 = v72;
      v75 = sub_1BC8F7714();
      v76 = sub_1BC8F8204();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v73;
        v78 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v126 = v124;
        *v78 = 136446210;
        sub_1BC890A8C(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
        v79 = sub_1BC8F8A54();
        v80 = v65;
        v82 = v81;
        v80(v77, v47);
        v83 = sub_1BC7A9A4C(v79, v82, &v126);

        *(v78 + 4) = v83;
        _os_log_impl(&dword_1BC7A3000, v75, v76, "Moved message to %{public}s", v78, 0xCu);
        v84 = v124;
        __swift_destroy_boxed_opaque_existential_1(v124);
        MEMORY[0x1BFB2AA50](v84, -1, -1);
        MEMORY[0x1BFB2AA50](v78, -1, -1);

        v80(v125, v47);
        result = (v80)(v118, v47);
      }

      else
      {

        v65(v73, v47);
        v65(v125, v47);
        result = (v65)(v118, v47);
      }
    }

    else
    {
      v86 = v126;
      v87 = sub_1BC8F6EA4();

      swift_willThrow();
      v88 = v87;
      v89 = sub_1BC8F7714();
      v90 = sub_1BC8F81E4();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v91 = 138543362;
        v93 = v87;
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 4) = v94;
        *v92 = v94;
        _os_log_impl(&dword_1BC7A3000, v89, v90, "Moving message failed with error %{public}@", v91, 0xCu);
        sub_1BC7C1744(v92, &unk_1EBCF5DB0, &unk_1BC900410);
        MEMORY[0x1BFB2AA50](v92, -1, -1);
        MEMORY[0x1BFB2AA50](v91, -1, -1);
      }

      swift_willThrow();
      v65(v46, v47);
      v65(v125, v47);
      result = (v65)(v118, v47);
    }

    goto LABEL_23;
  }

  v95 = v126;
  v96 = sub_1BC8F6EA4();

  swift_willThrow();
  v97 = v96;
  v98 = sub_1BC8F7714();
  v99 = sub_1BC8F81E4();

  v100 = os_log_type_enabled(v98, v99);
  v101 = v122;
  if (v100)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v102 = 138543362;
    v104 = v96;
    v105 = _swift_stdlib_bridgeErrorToNSError();
    *(v102 + 4) = v105;
    *v103 = v105;
    _os_log_impl(&dword_1BC7A3000, v98, v99, "Failed to create new outbox directory %{public}@", v102, 0xCu);
    sub_1BC7C1744(v103, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v103, -1, -1);
    MEMORY[0x1BFB2AA50](v102, -1, -1);
  }

  swift_willThrow();
  v106 = v124[1];
  v106(v125, v101);
  result = (v106)(v118, v101);
LABEL_23:
  v107 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC88B364()
{
  v1 = type metadata accessor for OutgoingVideoMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_1BC890B6C();
  v9 = (v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1BC890BC4();
  *(v10 + v9) = v0;

  sub_1BC8333D4();
}

uint64_t sub_1BC88B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EA8, &qword_1BC904888) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = type metadata accessor for OutgoingVideoMessage();
  v5[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC88B5E4, 0, 0);
}

uint64_t sub_1BC88B5E4()
{
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1BC8F7734();
  v0[7] = __swift_project_value_buffer(v3, qword_1EDC2B2B0);
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_29();
  sub_1BC890B6C();
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_21(v5);
  v7 = v0[6];
  if (v6)
  {
    v9 = v0[4];
    v8 = v0[5];
    OUTLINED_FUNCTION_9();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v25 = swift_slowAlloc();
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_23();
    sub_1BC890B6C();
    OUTLINED_FUNCTION_72_2();
    sub_1BC7C1744(v9, &qword_1EBCF5EA8, &qword_1BC904888);
    sub_1BC890934(v7);
    v11 = OUTLINED_FUNCTION_42_11();
    v14 = sub_1BC7A9A4C(v11, v12, v13);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v20 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v20);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    sub_1BC890934(v7);
  }

  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = sub_1BC88B7D4;
  v22 = v0[3];
  v23 = OUTLINED_FUNCTION_28_9(v0[2]);

  return sub_1BC88BCBC(v23);
}

uint64_t sub_1BC88B7D4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[10] = v12;
    *v12 = v7;
    v12[1] = sub_1BC88B924;
    v13 = v3[3];
    v14 = OUTLINED_FUNCTION_28_9(v3[2]);

    return sub_1BC888CC4(v14);
  }
}

uint64_t sub_1BC88B924()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[6];
    v13 = v3[4];

    OUTLINED_FUNCTION_27();

    return v14();
  }
}

uint64_t sub_1BC88BA4C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_6_2();
    *v1 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v15 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC88BB84()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_6_2();
    *v1 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v15 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC88BCBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC88BCDC, 0, 0);
}

uint64_t sub_1BC88BCDC(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 88);
  *(v1 + 32) = v2;
  return OUTLINED_FUNCTION_11_4(a1, v2);
}

uint64_t sub_1BC88BCF8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1BC7FDD3C();
  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_1BC88BD54(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = sub_1BC8F7914();
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v8 = sub_1BC8F79A4();
  *(v3 + 64) = v8;
  v9 = *(v8 - 8);
  *(v3 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v11 = sub_1BC8F79B4();
  *(v3 + 88) = v11;
  v12 = *(v11 - 8);
  *(v3 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v14 = sub_1BC8F7264();
  *(v3 + 112) = v14;
  v15 = *(v14 - 8);
  *(v3 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v17 = sub_1BC8F7994();
  *(v3 + 136) = v17;
  v18 = *(v17 - 8);
  *(v3 + 144) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v20 = sub_1BC8F7014();
  *(v3 + 160) = v20;
  v21 = *(v20 - 8);
  *(v3 + 168) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EA8, &qword_1BC904888) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v24 = type metadata accessor for OutgoingVideoMessage();
  *(v3 + 192) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 276) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1BC88C078, 0, 0);
}

uint64_t sub_1BC88C078()
{
  v28 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 16);
  v3 = sub_1BC8F7734();
  *(v0 + 224) = __swift_project_value_buffer(v3, qword_1EDC2B2B0);
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_29();
  sub_1BC890B6C();
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_28_7(v5))
  {
    v6 = *(v0 + 276);
    v7 = *(v0 + 216);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    OUTLINED_FUNCTION_11_2();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    v27 = swift_slowAlloc();
    *v10 = 136315394;
    OUTLINED_FUNCTION_0_23();
    sub_1BC890B6C();
    OUTLINED_FUNCTION_72_2();
    sub_1BC7C1744(v9, &qword_1EBCF5EA8, &qword_1BC904888);
    sub_1BC890934(v7);
    v11 = OUTLINED_FUNCTION_42_11();
    v14 = sub_1BC7A9A4C(v11, v12, v13);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 275) = v6;
    v15 = sub_1BC8F7C94();
    v17 = sub_1BC7A9A4C(v15, v16, &v27);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Sending message %s) quality %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v18 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v18);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v19);
  }

  else
  {
    v20 = *(v0 + 216);

    sub_1BC890934(v20);
  }

  v21 = *(v0 + 16);
  v22 = *(*(v0 + 192) + 32);
  *(v0 + 272) = *(v0 + 276);
  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = sub_1BC88C2E8;
  v24 = *(v0 + 176);
  v25 = *(v0 + 24);

  return sub_1BC88CF64(v24, v21 + v22, (v0 + 272));
}

uint64_t sub_1BC88C2E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[30] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[31] = v12;
    *v12 = v7;
    v12[1] = sub_1BC88C43C;
    v13 = v3[3];
    v14 = OUTLINED_FUNCTION_28_9(v3[22]);

    return sub_1BC88D648(v14);
  }
}

uint64_t sub_1BC88C43C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 256) = v9;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC88C53C()
{
  v94 = v0;
  v1 = *(v0 + 276);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 16), *(v0 + 112));
  (*(v4 + 104))(v2, *MEMORY[0x1E698F408], v3);
  (*(v6 + 104))(v5, *MEMORY[0x1E698F3F8], v7);
  v9 = qword_1E7FF4B60[v1];
  v10 = *(v0 + 256);
  v11 = *(v0 + 192);
  v86 = *(v0 + 176);
  v89 = *(v0 + 264);
  v12 = *(v0 + 152);
  v80 = *(v0 + 104);
  v82 = *(v0 + 128);
  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = *(v0 + 16);
  v84 = *(v0 + 24);
  (*(v8 + 104))(v15, *v9, v17);
  (*(v16 + 32))(v14, v15, v17);
  sub_1BC8F7964();
  v19 = v89;
  sub_1BC88DCE4(v86, *(v18 + *(v11 + 20)), *(v18 + *(v11 + 20) + 8), v12, *(v18 + *(v11 + 24)));
  if (v89)
  {
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    (*(v21 + 8))(v20, v22);
    v23 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 16);
    OUTLINED_FUNCTION_0_23();
    sub_1BC890B6C();
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_28_7(v27))
    {
      v90 = *(v0 + 276);
      v29 = *(v0 + 192);
      v28 = *(v0 + 200);
      v30 = *(v0 + 184);
      OUTLINED_FUNCTION_11_2();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v93[0] = swift_slowAlloc();
      *v31 = 136315394;
      OUTLINED_FUNCTION_0_23();
      OUTLINED_FUNCTION_42_11();
      sub_1BC890B6C();
      v32 = OUTLINED_FUNCTION_15_13();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v29);
      v35 = sub_1BC863BDC();
      v37 = v36;
      sub_1BC7C1744(v30, &qword_1EBCF5EA8, &qword_1BC904888);
      sub_1BC890934(v28);
      v38 = sub_1BC7A9A4C(v35, v37, v93);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2082;
      *(v0 + 273) = v90;
      v39 = sub_1BC8F7C94();
      v41 = sub_1BC7A9A4C(v39, v40, v93);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_1BC7A3000, v26, v27, "Failed message %s quality %{public}s", v31, 0x16u);
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
      v58 = *(v0 + 200);

      sub_1BC890934(v58);
    }
  }

  else
  {
    v42 = *(v0 + 224);
    v43 = *(v0 + 208);
    v44 = *(v0 + 16);
    OUTLINED_FUNCTION_0_23();
    sub_1BC890B6C();
    v45 = sub_1BC8F7714();
    v46 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v46))
    {
      v78 = *(v0 + 276);
      v47 = *(v0 + 208);
      v49 = *(v0 + 184);
      v48 = *(v0 + 192);
      v87 = *(v0 + 160);
      v91 = *(v0 + 176);
      v83 = *(v0 + 152);
      v85 = *(v0 + 168);
      v79 = *(v0 + 144);
      v81 = *(v0 + 136);
      OUTLINED_FUNCTION_11_2();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v93[0] = swift_slowAlloc();
      *v50 = 136315394;
      OUTLINED_FUNCTION_0_23();
      sub_1BC890B6C();
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
      v51 = sub_1BC863BDC();
      v53 = v52;
      sub_1BC7C1744(v49, &qword_1EBCF5EA8, &qword_1BC904888);
      sub_1BC890934(v47);
      v54 = sub_1BC7A9A4C(v51, v53, v93);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      *(v0 + 274) = v78;
      v55 = sub_1BC8F7C94();
      v57 = sub_1BC7A9A4C(v55, v56, v93);

      *(v50 + 14) = v57;
      _os_log_impl(&dword_1BC7A3000, v45, v46, "Successfully processed and started sending message %s quality %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      (*(v79 + 8))(v83, v81);
      (*(v85 + 8))(v91, v87);
    }

    else
    {
      v59 = *(v0 + 208);
      v61 = *(v0 + 168);
      v60 = *(v0 + 176);
      v63 = *(v0 + 152);
      v62 = *(v0 + 160);
      v64 = *(v0 + 136);
      v65 = *(v0 + 144);

      sub_1BC890934(v59);
      (*(v65 + 8))(v63, v64);
      (*(v61 + 8))(v60, v62);
    }
  }

  v67 = *(v0 + 208);
  v66 = *(v0 + 216);
  v92 = v19 == 0;
  v68 = *(v0 + 200);
  v70 = *(v0 + 176);
  v69 = *(v0 + 184);
  v71 = *(v0 + 152);
  v72 = *(v0 + 128);
  v73 = *(v0 + 104);
  v74 = *(v0 + 80);
  v75 = *(v0 + 56);
  v88 = *(v0 + 48);

  v76 = *(v0 + 8);

  return v76(v92);
}

uint64_t sub_1BC88CF64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = sub_1BC8F7014();
  *(v4 + 40) = v6;
  v7 = *(v6 - 8);
  *(v4 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 122) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1BC88D040, 0, 0);
}

uint64_t sub_1BC88D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v25 = *(v22 + 64);
  v26 = *(v22 + 40);
  v27 = *(v22 + 48);
  v28 = *(v22 + 24);
  v29 = sub_1BC8F7734();
  *(v22 + 72) = __swift_project_value_buffer(v29, qword_1EDC2B2B0);
  *(v22 + 80) = *(v27 + 16);
  *(v22 + 88) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30 = OUTLINED_FUNCTION_40();
  v31(v30);
  v32 = sub_1BC8F7714();
  v33 = sub_1BC8F8204();
  if (os_log_type_enabled(v32, v33))
  {
    v60 = *(v22 + 122);
    v34 = *(v22 + 64);
    v36 = *(v22 + 40);
    v35 = *(v22 + 48);
    OUTLINED_FUNCTION_11_2();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    a11 = swift_slowAlloc();
    *v37 = 136446466;
    OUTLINED_FUNCTION_2_23();
    sub_1BC890A8C(v38, v39);
    v40 = sub_1BC8F8A54();
    v42 = v41;
    v43 = *(v35 + 8);
    v43(v34, v36);
    v44 = sub_1BC7A9A4C(v40, v42, &a11);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2082;
    *(v22 + 121) = v60;
    v45 = sub_1BC8F7C94();
    v47 = sub_1BC7A9A4C(v45, v46, &a11);

    *(v37 + 14) = v47;
    OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v48, v49, "Transcoding video message at URL %{public}s quality %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v50 = *(v22 + 64);
    v51 = *(v22 + 40);
    v52 = *(v22 + 48);

    v43 = *(v52 + 8);
    v53 = OUTLINED_FUNCTION_40();
    (v43)(v53);
  }

  *(v22 + 96) = v43;
  v54 = *(v22 + 32);
  *(v22 + 120) = *(v22 + 122);
  v55 = swift_task_alloc();
  *(v22 + 104) = v55;
  *v55 = v22;
  v55[1] = sub_1BC88D2D8;
  v56 = *(v22 + 16);
  v57 = *(v22 + 24);
  OUTLINED_FUNCTION_62_1();

  return sub_1BC841F68();
}

uint64_t sub_1BC88D2D8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    OUTLINED_FUNCTION_11();

    return v14();
  }
}

uint64_t sub_1BC88D3FC()
{
  v37 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 24), *(v0 + 40));
  v4 = v1;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    v34 = *(v0 + 96);
    v35 = *(v0 + 112);
    v7 = *(v0 + 56);
    v33 = *(v0 + 48);
    v8 = *(v0 + 40);
    OUTLINED_FUNCTION_11_2();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136446466;
    OUTLINED_FUNCTION_2_23();
    sub_1BC890A8C(v12, v13);
    v14 = sub_1BC8F8A54();
    v16 = v15;
    v34(v7, v8);
    v17 = sub_1BC7A9A4C(v14, v16, &v36);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2114;
    v18 = v35;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v19;
    *v10 = v19;
    OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v20, v21, "Failed to transcode URL %{public}s with error %{public}@");
    sub_1BC7C1744(v10, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v22 = *(v0 + 96);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);

    v26 = OUTLINED_FUNCTION_40();
    v22(v26);
  }

  v27 = *(v0 + 112);
  v28 = *(v0 + 56);
  v29 = *(v0 + 64);
  swift_willThrow();

  OUTLINED_FUNCTION_27();
  v31 = *(v0 + 112);

  return v30();
}

uint64_t sub_1BC88D648(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BC8F7014();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC88D714, 0, 0);
}

uint64_t sub_1BC88D714()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_1BC890AD4();
  v0[7] = *(v3 + 16);
  v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = OUTLINED_FUNCTION_40();
  v6(v5);
  v0[9] = sub_1BC88E2E8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6248, &qword_1BC906780);
  v0[10] = sub_1BC8F73F4();
  v7 = *(MEMORY[0x1E69E5A20] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1BC88D834;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE68140](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BC88D834()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC88D934()
{
  OUTLINED_FUNCTION_38();
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_1BC8F8354();
  v5 = v4;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = sub_1BC8F7734();
  __swift_project_value_buffer(v11, qword_1EDC2B2B0);
  v12 = OUTLINED_FUNCTION_40();
  v7(v12);
  v13 = sub_1BC8F7714();
  v14 = sub_1BC8F8204();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = *(v0 + 24);
  if (v15)
  {
    OUTLINED_FUNCTION_11_2();
    v34 = v19;
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 134349314;
    *(v20 + 4) = v5;
    *(v20 + 12) = 2082;
    OUTLINED_FUNCTION_2_23();
    sub_1BC890A8C(v22, v23);
    v24 = sub_1BC8F8A54();
    v26 = v25;
    (*(v17 + 8))(v16, v18);
    v27 = sub_1BC7A9A4C(v24, v26, &v35);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1BC7A3000, v13, v14, "Loaded duration %{public}fs for message at url %{public}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v28 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v28);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v30 = *(v0 + 40);
  v29 = *(v0 + 48);

  OUTLINED_FUNCTION_27();
  v32.n128_u64[0] = v5;

  return v31(v32);
}

uint64_t sub_1BC88DB70()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 80);

  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v3 = *(v0 + 96);
  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B2B0);
  v5 = v3;
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F81E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 96);
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_6_2();
    *v1 = 138543362;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v12, v13, "Failed to load duration for message %{public}@");
    sub_1BC7C1744(v9, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v14 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v14);
  }

  v15 = *(v0 + 96);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  swift_willThrow();

  OUTLINED_FUNCTION_27();
  v18 = *(v0 + 96);
  OUTLINED_FUNCTION_112();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1BC88DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v64 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v6 = sub_1BC8F7014();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  v17 = __swift_project_value_buffer(v16, qword_1EDC2B2B0);
  v58 = v7[2];
  v58(v15, a1, v6);
  v59 = v17;
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  v20 = os_log_type_enabled(v18, v19);
  v67 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v66 = v6;
    v22 = v21;
    v55 = swift_slowAlloc();
    v68 = v55;
    *v22 = 136446210;
    sub_1BC890A8C(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v23 = sub_1BC8F8A54();
    v56 = a1;
    v24 = v11;
    v26 = v25;
    v27 = v7[1];
    v27(v15, v66);
    v28 = sub_1BC7A9A4C(v23, v26, &v68);
    v11 = v24;
    a1 = v56;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "Starting outgoing file transfer for url %{public}s", v22, 0xCu);
    v29 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1BFB2AA50](v29, -1, -1);
    v30 = v22;
    v6 = v66;
    MEMORY[0x1BFB2AA50](v30, -1, -1);
  }

  else
  {

    v27 = v7[1];
    v27(v15, v6);
  }

  v31 = *(v61 + 16);
  v32 = v65;
  sub_1BC844B8C(a1, v60, v62, v63, v64);
  if (v32)
  {
    v58(v11, a1, v6);
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F81E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v27;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68 = v37;
      *v36 = 136446210;
      sub_1BC890A8C(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v38 = sub_1BC8F8A54();
      v39 = v11;
      v41 = v40;
      v35(v39, v6);
      v42 = sub_1BC7A9A4C(v38, v41, &v68);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1BC7A3000, v33, v34, "Failed to start outgoing file transfer for url %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB2AA50](v37, -1, -1);
      MEMORY[0x1BFB2AA50](v36, -1, -1);
    }

    else
    {

      v27(v11, v6);
    }

    swift_willThrow();
  }

  else
  {
    v43 = v57;
    v58(v57, a1, v6);
    v44 = sub_1BC8F7714();
    v45 = sub_1BC8F8204();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v27;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v68 = v48;
      *v47 = 136446210;
      sub_1BC890A8C(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v49 = sub_1BC8F8A54();
      v50 = v43;
      v52 = v51;
      v46(v50, v6);
      v53 = sub_1BC7A9A4C(v49, v52, &v68);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1BC7A3000, v44, v45, "Successfully started sending file transfer for url %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1BFB2AA50](v48, -1, -1);
      MEMORY[0x1BFB2AA50](v47, -1, -1);
    }

    else
    {

      v27(v43, v6);
    }
  }
}

id sub_1BC88E2E8(uint64_t a1)
{
  v2 = sub_1BC8F6F44();
  v3 = [swift_getObjCClassFromMetadata() assetWithURL_];

  v4 = sub_1BC8F7014();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_1BC88E380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1BC890B18(v0 + 32);
  v2 = *(v0 + 88);

  return v0;
}

uint64_t sub_1BC88E3B0()
{
  sub_1BC88E380();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BC88E408()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_33_12(v6);
  OUTLINED_FUNCTION_112();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_1BC88E4A0(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1BC8F6F44();
  v54[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v54];

  if (v13)
  {
    v14 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_24();

    v17 = v15;
  }

  else
  {
    v18 = v54[0];
    v19 = sub_1BC8F6EA4();

    swift_willThrow();
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B2B0);
    (*(v5 + 16))(v10, a1, v2);
    v21 = v19;
    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F81E4();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_11_2();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v54[0] = swift_slowAlloc();
      *v24 = 136446466;
      OUTLINED_FUNCTION_2_23();
      sub_1BC890A8C(v25, v26);
      v27 = sub_1BC8F8A54();
      v29 = v28;
      v30 = *(v5 + 8);
      v31 = OUTLINED_FUNCTION_79();
      v32(v31);
      v33 = sub_1BC7A9A4C(v27, v29, v54);

      *(v24 + 4) = v33;
      *(v24 + 12) = 2082;
      swift_getErrorValue();
      v34 = sub_1BC8F83F4();
      OUTLINED_FUNCTION_0(v34);
      v36 = v35;
      v38 = *(v37 + 64);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v39);
      OUTLINED_FUNCTION_40_9();
      (*(*(v53 - 8) + 16))(v29);
      v40 = OUTLINED_FUNCTION_15_13();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v53);
      v43 = sub_1BC8073F0(v29, v53);
      v45 = v44;
      (*(v36 + 8))(v29, v34);
      v46 = sub_1BC7A9A4C(v43, v45, v54);

      *(v24 + 14) = v46;
      _os_log_impl(&dword_1BC7A3000, v22, v23, "Failed to delete transferred message at url %{public}s with error %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v47);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v48);
    }

    else
    {

      v49 = *(v5 + 8);
      v50 = OUTLINED_FUNCTION_79();
      v51(v50);
    }

    v52 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC88E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BC8F7014();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_1BC8F7914();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_1BC8F7264();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC88EAE0, 0, 0);
}

uint64_t sub_1BC88EAE0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  *(v0 + 120) = *(*(v0 + 16) + 88);
  sub_1BC8F7954();
  sub_1BC8F7934();
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_81_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v10 = 0;
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E698F3C8])
  {
    v10 = 1;
  }

  else if (v9 == *MEMORY[0x1E698F3C0])
  {
    v10 = 2;
  }

  else
  {
    if (v9 != *MEMORY[0x1E698F3B8])
    {
      if (v9 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      }

      goto LABEL_2;
    }

    v10 = 3;
  }

LABEL_9:
  *(v0 + 128) = v10;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC88EC1C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_1BC7FEF48();
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_30();
  v8(v7);
  v9 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC88ECA4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0 + 14;
  v1 = v0[14];
  v3 = v0[13];
  v4 = v0[4];
  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1BC7C1744(*v2, &qword_1EBCF5A20, &qword_1BC901BF0);
    v2 = v0 + 13;
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v6 + 32))(v5, v0[13], v7);
    sub_1BC88E4A0(v5);
    (*(v6 + 8))(v5, v7);
  }

  v8 = *v2;
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[6];
  sub_1BC7C1744(v8, &qword_1EBCF5A20, &qword_1BC901BF0);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1BC88EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = type metadata accessor for VideoFileTransfer();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1BC88E4A0(a2 + *(v10 + 28));
  v19 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_1BC890B6C();
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v5;
  sub_1BC890BC4();

  a5(0, 0, v18, a4, v21);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC88EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for OutgoingVideoMessage();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EA8, &qword_1BC904888) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v9 = sub_1BC8F86F4();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = sub_1BC8F7914();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = sub_1BC8F7264();
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC88F1C4, 0, 0);
}

uint64_t sub_1BC88F1C4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  *(v0 + 136) = *(*(v0 + 16) + 88);
  sub_1BC8F7954();
  sub_1BC8F7934();
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_81_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v10 = 0;
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E698F3C8])
  {
    v10 = 1;
  }

  else if (v9 == *MEMORY[0x1E698F3C0])
  {
    v10 = 2;
  }

  else
  {
    if (v9 != *MEMORY[0x1E698F3B8])
    {
      if (v9 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      }

      goto LABEL_2;
    }

    v10 = 3;
  }

LABEL_9:
  *(v0 + 200) = v10;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC88F300()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  sub_1BC7FE7FC();
  *(v0 + 144) = v5;
  *(v0 + 201) = v6;
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_30();
  v9(v8);
  v10 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC88F38C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (*(v0 + 201))
  {
    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v1 = sub_1BC8F7734();
    __swift_project_value_buffer(v1, qword_1EDC2B3A8);
    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v3))
    {
      v4 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v4);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_29_8();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_112();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v19 = sub_1BC8F7734();
    *(v0 + 152) = __swift_project_value_buffer(v19, qword_1EDC2B2B0);
    v20 = sub_1BC8F7714();
    v21 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v21))
    {
      v22 = *(v0 + 144);
      OUTLINED_FUNCTION_9();
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v22;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v29 = *(v0 + 144);
    v30 = *(v0 + 80);

    sub_1BC8F8B74();
    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *v31 = v0;
    v31[1] = sub_1BC88F600;
    v32 = *(v0 + 80);
    OUTLINED_FUNCTION_112();

    return v38(v33, v34, v35, v36, v37, v38, v39, v40);
  }
}

uint64_t sub_1BC88F600()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = v5[20];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v11 = v10;
  *(v3 + 168) = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_81_0();
  v14(v13);
  if (!v0)
  {
    v15 = *(v3 + 136);
  }

  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BC88F75C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 136);
  *(v0 + 176) = sub_1BC7FF6B0();
  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BC88F7BC()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  *(swift_task_alloc() + 16) = v6;
  sub_1BC8D5FD4(sub_1BC890CE8, v1, v3);

  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v7 = v0[19];
    sub_1BC7C1744(v0[6], &qword_1EBCF5EA8, &qword_1BC904888);
    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F81E4();
    v10 = OUTLINED_FUNCTION_28_7(v9);
    v11 = v0[7];
    if (v10)
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      v17 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v17);
    }

    sub_1BC7C1744(v11, &qword_1EBCF5EA8, &qword_1BC904888);
    OUTLINED_FUNCTION_29_8();

    OUTLINED_FUNCTION_11();

    return v18();
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    OUTLINED_FUNCTION_0_23();
    sub_1BC890BC4();
    v22 = swift_task_alloc();
    v0[23] = v22;
    *v22 = v0;
    v22[1] = sub_1BC88FA68;
    v23 = v0[2];
    v24 = OUTLINED_FUNCTION_28_9(v0[5]);

    return sub_1BC888CC4(v24);
  }
}

uint64_t sub_1BC88F9E0()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_51_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_71_3();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BC88FA68()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC88FB64()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 56);
  sub_1BC890934(*(v0 + 40));
  sub_1BC7C1744(v1, &qword_1EBCF5EA8, &qword_1BC904888);
  OUTLINED_FUNCTION_29_8();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_112();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BC88FC0C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[7];
  sub_1BC890934(v0[5]);
  sub_1BC7C1744(v1, &qword_1EBCF5EA8, &qword_1BC904888);
  v2 = v0[24];
  OUTLINED_FUNCTION_51_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_71_3();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC88FCB8()
{
  v0 = sub_1BC8F7264();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8F7954();
  v5 = sub_1BC8F7234();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1BC88FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1BC830400();
  v12 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7C1744(v11, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BC8F7F54();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BC8F7CA4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BC7C1744(a3, &qword_1EBCF63D0, &qword_1BC902140);

      return v21;
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

  sub_1BC7C1744(a3, &qword_1EBCF63D0, &qword_1BC902140);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BC890034(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1BC7B0248;

  return v7();
}

uint64_t sub_1BC89011C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_33_12(v6);
  OUTLINED_FUNCTION_112();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1BC8901B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BC7B0168;

  return v8();
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BC8902D8()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_71_3();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BC890388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1BC830400();
  v13 = sub_1BC8F7FC4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BC7C1744(v12, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1BC8F7F54();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BC8F7CA4() + 32;
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

      sub_1BC7C1744(a3, &qword_1EBCF63D0, &qword_1BC902140);

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

  sub_1BC7C1744(a3, &qword_1EBCF63D0, &qword_1BC902140);
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

uint64_t sub_1BC890664(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC89075C;

  return v7(a1);
}

uint64_t sub_1BC89075C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t sub_1BC89083C()
{
  OUTLINED_FUNCTION_32();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;
  v6 = OUTLINED_FUNCTION_17();

  return v7(v6);
}

unint64_t sub_1BC8908E0()
{
  result = qword_1EBCF6240;
  if (!qword_1EBCF6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6240);
  }

  return result;
}

uint64_t sub_1BC890934(uint64_t a1)
{
  v2 = type metadata accessor for OutgoingVideoMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC890990()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = type metadata accessor for OutgoingVideoMessage();
  OUTLINED_FUNCTION_26(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_19(v7);
  *v8 = v9;
  v8[1] = sub_1BC7B0168;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_71_3();

  return sub_1BC88B518(v10, v11, v12, v13, v14);
}

uint64_t sub_1BC890A8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC890AD4()
{
  result = qword_1EBCF5BD0;
  if (!qword_1EBCF5BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCF5BD0);
  }

  return result;
}

uint64_t sub_1BC890B6C()
{
  OUTLINED_FUNCTION_131();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v0;
}

uint64_t sub_1BC890BC4()
{
  OUTLINED_FUNCTION_131();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v0;
}

uint64_t sub_1BC890C1C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v0 = type metadata accessor for VideoFileTransfer();
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_59_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0168;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_71_3();

  return sub_1BC88EFD8(v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_47Tm_0()
{
  v2 = type metadata accessor for VideoFileTransfer();
  OUTLINED_FUNCTION_58_6(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = sub_1BC8F7994();
  OUTLINED_FUNCTION_4_1(v10);
  (*(v11 + 8))(v1 + v5);
  v12 = *(v0 + 28);
  v13 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v13);
  (*(v14 + 8))(v1 + v5 + v12);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1BC890E14()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v0 = type metadata accessor for VideoFileTransfer();
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_59_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_71_3();

  return sub_1BC88E924(v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return sub_1BC863BDC();
}

uint64_t sub_1BC890F2C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1BC890F90(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_1BC890F90(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1BC891024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

id sub_1BC891064(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1BC8F7BE4();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_1BC8910E8()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  swift_beginAccess();
  v2 = *v1 == 0xD000000000000017 && 0x80000001BC90BE40 == v1[1];
  if (v2 || (v3 = sub_1BC8F8AA4(), v4 = 0, (v3 & 1) != 0))
  {
    v5 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
    swift_beginAccess();
    v7 = *v5;
    v8 = v5[1];
    sub_1BC7B7A9C();
    v4 = sub_1BC8F8424() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC8911DC()
{
  v0 = *MEMORY[0x1E69D8FA8];
  result = sub_1BC8F7C24();
  qword_1EDC1EEC0 = result;
  unk_1EDC1EEC8 = v2;
  return result;
}

uint64_t sub_1BC89120C()
{
  v0 = *MEMORY[0x1E69D8FB0];
  result = sub_1BC8F7C24();
  qword_1EBCF6250 = result;
  unk_1EBCF6258 = v2;
  return result;
}

id sub_1BC89123C()
{
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  result = sub_1BC7D4FB8();
  qword_1EDC1EF00 = result;
  return result;
}

id sub_1BC891298()
{
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  result = sub_1BC7D4FB8();
  qword_1EDC1EEE8 = result;
  return result;
}

uint64_t sub_1BC8912F4()
{
  OUTLINED_FUNCTION_5();
  v1[188] = v0;
  v1[187] = v2;
  v1[189] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[190] = OUTLINED_FUNCTION_47_3();
  v6 = sub_1BC8F7264();
  v1[191] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[192] = v7;
  v9 = *(v8 + 64);
  v1[193] = OUTLINED_FUNCTION_38_6();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v10 = sub_1BC8F71E4();
  v1[197] = v10;
  OUTLINED_FUNCTION_26(v10);
  v1[198] = v11;
  v13 = *(v12 + 64);
  v1[199] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BC891464()
{
  v1 = *(v0 + 1496);
  v2 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v0 + 1600) = v2;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from;
  *(v0 + 1608) = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from;
  v4 = (v1 + v3);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v5 = v4[1];
  v6 = HIBYTE(v5) & 0xF;
  v142 = *v4;
  v143 = v2;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v142 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
  }

  else
  {
    if (qword_1EDC1EF18 != -1)
    {
      OUTLINED_FUNCTION_1_24();
    }

    v133 = 0xE000000000000000;
    v142 = OUTLINED_FUNCTION_26_9();
    v7 = v8;
  }

  *(v0 + 1616) = v7;
  v9 = *(v0 + 1592);
  v10 = *(v0 + 1584);
  v11 = *(v0 + 1576);
  v12 = *(v0 + 1568);
  v139 = *(v0 + 1560);
  v141 = v7;
  v13 = *(v0 + 1536);
  v14 = *(v0 + 1528);
  v15 = *(v0 + 1496);
  v16 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v10 + 16))(v9, v15 + v16, v11);
  v17 = sub_1BC8F7174();
  (*(v10 + 8))(v9, v11);
  [v143 setDate_];

  v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v20 = v13 + 16;
  v19 = *(v13 + 16);
  *(v0 + 1624) = v19;
  *(v0 + 1632) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v137 = v18;
  v19(v12, v15 + v18, v14);
  sub_1BC8F7204();
  v21 = *(v13 + 8);
  v13 += 8;
  *(v0 + 1640) = v21;
  *(v0 + 1648) = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v12, v14);
  v22 = sub_1BC8F7BE4();

  [v143 setThreadIdentifier_];

  OUTLINED_FUNCTION_23_10();
  *(v0 + 1480) = v23;
  *(v0 + 1488) = v24;
  sub_1BC8F8544();
  v25 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  *(v0 + 1656) = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v138 = v15;
  v26 = v15 + v25;
  v27 = v139;
  v135 = v19;
  v136 = v20;
  v19(v139, v26, v14);
  v28 = sub_1BC8F7204();
  v30 = v29;
  v140 = v13;
  v134 = v21;
  v21(v27, v14);
  v31 = v143;
  *(v0 + 944) = MEMORY[0x1E69E6158];
  *(v0 + 920) = v28;
  *(v0 + 928) = v30;
  v32 = [v143 userInfo];
  v33 = sub_1BC8F7AA4();

  if (*(v0 + 944))
  {
    OUTLINED_FUNCTION_88_2((v0 + 920), (v0 + 376));
    sub_1BC83D6F0((v0 + 376), v0 + 136);
    sub_1BC8037DC(v0 + 136);
  }

  else
  {
    sub_1BC862F74(v0 + 920, &unk_1EBCF5E50, &qword_1BC8FE850);
    v34 = sub_1BC83C8E8();
    if (v35)
    {
      v36 = v34;
      swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v33 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_78_4();
      v38 = sub_1BC8F8734();
      OUTLINED_FUNCTION_48_8(v38, v39, v40, v41, v42, v43, v44, v45, v133, v134, v135, v20, v137, v138, v140, v141, v142, v143, v33);
      sub_1BC8037DC(v46 + v36 * v47);
      sub_1BC7F0E58((*(v33 + 56) + 32 * v36), (v0 + 632));
      sub_1BC8F8754();
    }

    else
    {
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
    }

    sub_1BC8037DC(v0 + 136);
    sub_1BC862F74(v0 + 632, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  v48 = *(v0 + 1496);
  OUTLINED_FUNCTION_30_11();
  v49 = sub_1BC8F7A94();

  [v31 setUserInfo_];

  *(v0 + 1464) = 0x446567617373654DLL;
  *(v0 + 1472) = 0xEF6E6F6974617275;
  v50 = MEMORY[0x1E69E6158];
  sub_1BC8F8544();
  v51 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v53 = sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  *(v0 + 1664) = v53;
  *(v0 + 1072) = v53;
  *(v0 + 1048) = v52;
  v54 = [v31 userInfo];
  OUTLINED_FUNCTION_30_11();
  v55 = sub_1BC8F7AA4();

  if (*(v0 + 1072))
  {
    OUTLINED_FUNCTION_88_2((v0 + 1048), (v0 + 440));
    sub_1BC83D6F0((v0 + 440), v0 + 336);
    sub_1BC8037DC(v0 + 336);
  }

  else
  {
    sub_1BC862F74(v0 + 1048, &unk_1EBCF5E50, &qword_1BC8FE850);
    v56 = sub_1BC83C8E8();
    if (v57)
    {
      v58 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      v48 = &off_1E7FF5000;
      v59 = *(v55 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_78_4();
      v60 = sub_1BC8F8734();
      OUTLINED_FUNCTION_48_8(v60, v61, v62, v63, v64, v65, v66, v67, v133, v134, v135, v136, v137, v138, v140, v141, v142, v143, v55);
      sub_1BC8037DC(v68 + v58 * v69);
      sub_1BC7F0E58((*(v55 + 56) + 32 * v58), (v0 + 472));
      sub_1BC8F8754();
    }

    else
    {
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
    }

    sub_1BC8037DC(v0 + 336);
    sub_1BC862F74(v0 + 472, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_30_11();
  v70 = sub_1BC8F7A94();

  [v31 setUserInfo_];

  *(v0 + 1448) = 0x49746361746E6F63;
  *(v0 + 1456) = 0xEB000000006F666ELL;
  sub_1BC8F8544();
  *(v0 + 592) = v50;
  *(v0 + 568) = v142;
  *(v0 + 576) = v141;

  v71 = [v31 userInfo];
  OUTLINED_FUNCTION_30_11();
  v72 = sub_1BC8F7AA4();

  if (*(v0 + 592))
  {
    OUTLINED_FUNCTION_88_2((v0 + 568), (v0 + 504));
    sub_1BC83D6F0((v0 + 504), v0 + 16);
    sub_1BC8037DC(v0 + 16);
  }

  else
  {
    sub_1BC862F74(v0 + 568, &unk_1EBCF5E50, &qword_1BC8FE850);
    v73 = sub_1BC83C8E8();
    if (v74)
    {
      v75 = v73;
      swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v72 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_78_4();
      v77 = sub_1BC8F8734();
      OUTLINED_FUNCTION_48_8(v77, v78, v79, v80, v81, v82, v83, v84, v133, v134, v135, v136, v137, v138, v140, v141, v142, v143, v72);
      sub_1BC8037DC(v85 + v75 * v86);
      sub_1BC7F0E58((*(v72 + 56) + 32 * v75), (v0 + 600));
      sub_1BC8F8754();
    }

    else
    {
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
    }

    sub_1BC8037DC(v0 + 16);
    sub_1BC862F74(v0 + 600, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  v87 = *(v0 + 1552);
  v88 = *(v0 + 1528);
  v89 = MEMORY[0x1E69E69B8];
  OUTLINED_FUNCTION_30_11();
  sub_1BC8F7A94();
  OUTLINED_FUNCTION_182();
  v90 = OUTLINED_FUNCTION_31_9();
  [v90 v91];

  strcpy((v0 + 1432), "conversationID");
  *(v0 + 1447) = -18;
  sub_1BC8F8544();
  v135(v87, v138 + v137, v88);
  v92 = sub_1BC8F7204();
  v94 = v93;
  v134(v87, v88);
  *(v0 + 720) = v50;
  *(v0 + 696) = v92;
  *(v0 + 704) = v94;
  v95 = [v31 userInfo];
  OUTLINED_FUNCTION_30_11();
  v96 = sub_1BC8F7AA4();

  if (*(v0 + 720))
  {
    sub_1BC7F0E58((v0 + 696), (v0 + 536));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BC83D6F0((v0 + 536), v0 + 296);
    sub_1BC8037DC(v0 + 296);
  }

  else
  {
    sub_1BC862F74(v0 + 696, &unk_1EBCF5E50, &qword_1BC8FE850);
    sub_1BC83C8E8();
    if (v97)
    {
      OUTLINED_FUNCTION_82_3();
      swift_isUniquelyReferenced_nonNull_native();
      v144 = v96;
      v98 = *(v96 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_78_4();
      sub_1BC8F8734();
      sub_1BC8037DC(*(v144 + 48) + 40 * v89);
      sub_1BC7F0E58((*(v144 + 56) + 32 * v89), (v0 + 728));
      OUTLINED_FUNCTION_45_2();
      sub_1BC8F8754();
    }

    else
    {
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
    }

    sub_1BC8037DC(v0 + 296);
    sub_1BC862F74(v0 + 728, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  v99 = *(v0 + 1520);
  v100 = *(v0 + 1504);
  v101 = *(v0 + 1496);
  v102 = sub_1BC8F7A94();

  v103 = OUTLINED_FUNCTION_31_9();
  [v103 v104];

  v105 = [objc_opt_self() soundWithAlertType_];
  v106 = OUTLINED_FUNCTION_31_9();
  [v106 v107];

  sub_1BC893170();
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_182();
  v108 = OUTLINED_FUNCTION_31_9();
  [v108 v109];

  sub_1BC893564(v101, v99);
  v110 = sub_1BC8F7014();
  v111 = 0;
  if (__swift_getEnumTagSinglePayload(v99, 1, v110) != 1)
  {
    v112 = *(v0 + 1520);
    v111 = sub_1BC8F6F44();
    OUTLINED_FUNCTION_10(v110);
    (*(v113 + 8))(v112, v110);
  }

  v114 = *(v0 + 1496);
  [v31 setDefaultActionURL_];

  v115 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  *(v0 + 1672) = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(v114 + v115) == 1)
  {
    v116 = *(v0 + 1504);
    v117 = sub_1BC8F7BE4();
    [v31 setTitle_];

    if ([v116[3] vmCatchUpDonationEnabled])
    {
      v118 = *(v0 + 1496);
      Message.getTranscriptString()();
      if (!v116)
      {
LABEL_41:
        sub_1BC8F7BE4();
        OUTLINED_FUNCTION_182();
        v119 = OUTLINED_FUNCTION_31_9();
        [v119 v120];

        goto LABEL_42;
      }
    }

    if (qword_1EDC1EF18 != -1)
    {
      OUTLINED_FUNCTION_1_24();
    }

    OUTLINED_FUNCTION_26_9();
    goto LABEL_41;
  }

LABEL_42:
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v121 = sub_1BC8F7734();
  *(v0 + 1680) = __swift_project_value_buffer(v121, qword_1EDC2B3D8);
  v122 = sub_1BC8F7714();
  v123 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v123))
  {
    v124 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v124);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v125, v126, v127, v128, v129, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  v130 = swift_task_alloc();
  *(v0 + 1688) = v130;
  *v130 = v0;
  v130[1] = sub_1BC892204;
  v131 = *(v0 + 1504);
  OUTLINED_FUNCTION_28_9(*(v0 + 1496));

  return sub_1BC893860();
}

uint64_t sub_1BC892204()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v4 = *(v3 + 1688);
  *v2 = *v0;
  *(v1 + 1696) = v5;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1BC8922F0()
{
  OUTLINED_FUNCTION_83_3();
  v219 = v0;
  v1 = *(v0 + 1696);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1600);
  v4 = sub_1BC7D9730(0, &unk_1EDC1DDA0, 0x1E6983268);
  OUTLINED_FUNCTION_45_1();
  v5 = sub_1BC8F7E34();

  [v3 setAttachments_];

  v6 = v3;
  v7 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_137())
  {
    v8 = *(v0 + 1600);
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_33();
    v218 = v9;
    *v6 = 136446210;
    v10 = [v8 attachments];
    v11 = sub_1BC8F7E54();

    v12 = MEMORY[0x1BFB29280](v11, v4);
    v14 = v13;

    v15 = sub_1BC7A9A4C(v12, v14, &v218);

    *(v6 + 1) = v15;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  if (!*(*(v0 + 1496) + *(v0 + 1672)))
  {
    if ([*(*(v0 + 1504) + 16) deviceType] == 2)
    {
      v22 = [*(v0 + 1600) attachments];
      v23 = sub_1BC8F7E54();

      v24 = sub_1BC7C0454(v23);

      v25 = *(v0 + 1680);
      if (v24)
      {
        v26 = sub_1BC8F7714();
        v27 = sub_1BC8F8204();
        if (OUTLINED_FUNCTION_21(v27))
        {
          v28 = OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_81(v28);
          OUTLINED_FUNCTION_4();
          _os_log_impl(v29, v30, v31, v32, v33, 2u);
          OUTLINED_FUNCTION_18_12();
        }

        v34 = *(v0 + 1608);
        v35 = *(v0 + 1496);

        v36 = *(v35 + v34 + 8);
        if ((v36 & 0x2000000000000000) != 0)
        {
          v37 = HIBYTE(v36) & 0xF;
        }

        else
        {
          v37 = *(v35 + v34) & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          if (qword_1EDC1EEB0 != -1)
          {
            swift_once();
          }

          v38 = *(v0 + 1600);
          v39 = (*(v0 + 1496) + *(v0 + 1608));
          v40 = sub_1BC8F7BE4();
          v41 = OUTLINED_FUNCTION_80_3();
          [v41 v42];

          v43 = *v39;
          v44 = v39[1];

          v45 = sub_1BC8F7BE4();

          v46 = OUTLINED_FUNCTION_80_3();
          [v46 v47];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
          OUTLINED_FUNCTION_61();
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_1BC8FC230;
          v49 = v39[1];
          *(v48 + 32) = *v39;
          *(v48 + 40) = v49;

          v50 = OUTLINED_FUNCTION_29();
          sub_1BC899920(v50, v51);
        }

        else
        {
          v64 = *(v0 + 1680);
          v65 = sub_1BC8F7714();
          v66 = sub_1BC8F8204();
          if (OUTLINED_FUNCTION_21(v66))
          {
            v67 = OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_81(v67);
            OUTLINED_FUNCTION_4();
            _os_log_impl(v68, v69, v70, v71, v72, 2u);
            OUTLINED_FUNCTION_18_12();
          }

          if (qword_1EBCF4768 != -1)
          {
            swift_once();
          }

          v73 = *(v0 + 1600);
          v74 = sub_1BC8F7BE4();
          v75 = OUTLINED_FUNCTION_80_3();
          [v75 v76];
        }

        v77 = *(v0 + 1680);
        v78 = *(v0 + 1496);
        sub_1BC7D9730(0, &qword_1EDC1DE18, 0x1E69E06A8);
        v79 = sub_1BC83267C(v78);
        v80 = sub_1BC8F7714();
        v81 = sub_1BC8F8204();

        if (os_log_type_enabled(v80, v81))
        {
          OUTLINED_FUNCTION_9();
          v82 = swift_slowAlloc();
          v83 = OUTLINED_FUNCTION_32_3();
          *v82 = 138412290;
          *(v82 + 4) = v79;
          *v83 = v79;
          v84 = v79;
          _os_log_impl(&dword_1BC7A3000, v80, v81, "Got VMVoicemailMessage: %@", v82, 0xCu);
          sub_1BC862F74(v83, &unk_1EBCF5DB0, &unk_1BC900410);
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_9_0();
        }

        v85 = *(v0 + 1496);

        if (sub_1BC8910E8())
        {
          strcpy((v0 + 1416), "voicemailData");
          *(v0 + 1430) = -4864;
          sub_1BC8F8544();
          v86 = v79;
          result = [v86 data];
          if (result)
          {
            v88 = result;
            v89 = *(v0 + 1616);
            v90 = *(v0 + 1600);

            v91 = sub_1BC7D9730(0, qword_1EDC20650, 0x1E695DEF0);
            *(v0 + 816) = v91;
            *(v0 + 792) = v88;
            v92 = [v90 userInfo];
            v93 = sub_1BC8F7AA4();

            if (v91)
            {
              OUTLINED_FUNCTION_88_2((v0 + 792), (v0 + 664));
              OUTLINED_FUNCTION_65_3();
              sub_1BC83D6F0((v0 + 664), v0 + 56);
              v94 = v0 + 56;
LABEL_35:
              sub_1BC8037DC(v94);
LABEL_45:
              v133 = *(v0 + 1600);
              OUTLINED_FUNCTION_73_5();
              v134 = sub_1BC8F7A94();

              [v133 setUserInfo_];

              v135 = *(v0 + 1664);
              v136 = *(v0 + 1600);
              OUTLINED_FUNCTION_36_11();
              *(v0 + 1384) = 0xD000000000000015;
              *(v0 + 1392) = v137;
              sub_1BC8F8544();
              v138 = [v79 identifier];
              v139 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
              *(v0 + 1008) = v135;
              *(v0 + 984) = v139;
              v140 = [v136 userInfo];
              OUTLINED_FUNCTION_73_5();
              v141 = sub_1BC8F7AA4();

              v215 = v135;
              v217 = v79;
              if (v135)
              {
                OUTLINED_FUNCTION_88_2((v0 + 984), (v0 + 952));
                OUTLINED_FUNCTION_65_3();
                sub_1BC83D6F0((v0 + 952), v0 + 216);
                sub_1BC8037DC(v0 + 216);
              }

              else
              {
                sub_1BC862F74(v0 + 984, &unk_1EBCF5E50, &qword_1BC8FE850);
                v142 = sub_1BC83C8E8();
                if (v143)
                {
                  v144 = v142;
                  swift_isUniquelyReferenced_nonNull_native();
                  v218 = v141;
                  v145 = *(v141 + 24);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
                  OUTLINED_FUNCTION_77_4();
                  v146 = sub_1BC8F8734();
                  OUTLINED_FUNCTION_27_8(v146, v147, v148, v149, v150, v151, v152, v153, v205, v206, v208, v210, v212, 0, v79, v218);
                  sub_1BC8037DC(v154 + v144 * v155);
                  sub_1BC7F0E58((*(v141 + 56) + 32 * v144), (v0 + 1016));
                  sub_1BC8F8754();
                }

                else
                {
                  *(v0 + 1016) = 0u;
                  *(v0 + 1032) = 0u;
                }

                sub_1BC8037DC(v0 + 216);
                sub_1BC862F74(v0 + 1016, &unk_1EBCF5E50, &qword_1BC8FE850);
              }

              v156 = *(v0 + 1656);
              v211 = *(v0 + 1648);
              v213 = *(v0 + 1664);
              v207 = *(v0 + 1632);
              v209 = *(v0 + 1640);
              v157 = *(v0 + 1624);
              v158 = *(v0 + 1600);
              v159 = *(v0 + 1544);
              v160 = *(v0 + 1528);
              v161 = *(v0 + 1496);
              v162 = sub_1BC8F7A94();

              [v158 setUserInfo_];

              OUTLINED_FUNCTION_23_10();
              *(v0 + 1368) = v163 + 2;
              *(v0 + 1376) = v164;
              v165 = MEMORY[0x1E69E6158];
              sub_1BC8F8544();
              v157(v159, v161 + v156, v160);
              v166 = sub_1BC8F7204();
              v168 = v167;
              v209(v159, v160);
              *(v0 + 1136) = v165;
              *(v0 + 1112) = v166;
              *(v0 + 1120) = v168;
              v169 = &off_1E7FF5000;
              v170 = [v158 userInfo];
              v171 = sub_1BC8F7AA4();

              sub_1BC7F0E58((v0 + 1112), (v0 + 1080));
              swift_isUniquelyReferenced_nonNull_native();
              v218 = v171;
              sub_1BC83D6F0((v0 + 1080), v0 + 176);
              sub_1BC8037DC(v0 + 176);
              OUTLINED_FUNCTION_73_5();
              v172 = sub_1BC8F7A94();

              [v158 setUserInfo_];

              OUTLINED_FUNCTION_23_10();
              *(v0 + 1352) = v173;
              *(v0 + 1360) = v174;
              sub_1BC8F8544();
              v175 = v217;
              [v217 duration];
              v177 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              *(v0 + 1200) = v213;
              *(v0 + 1176) = v177;
              v178 = [v158 userInfo];
              OUTLINED_FUNCTION_73_5();
              v179 = sub_1BC8F7AA4();

              if (v215)
              {
                OUTLINED_FUNCTION_88_2((v0 + 1176), (v0 + 1144));
                OUTLINED_FUNCTION_65_3();
                sub_1BC83D6F0((v0 + 1144), v0 + 96);
                sub_1BC8037DC(v0 + 96);
              }

              else
              {
                v169 = (v0 + 408);
                sub_1BC862F74(v0 + 1176, &unk_1EBCF5E50, &qword_1BC8FE850);
                v180 = sub_1BC83C8E8();
                if (v181)
                {
                  v182 = v180;
                  swift_isUniquelyReferenced_nonNull_native();
                  v218 = v179;
                  v183 = *(v179 + 24);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
                  OUTLINED_FUNCTION_77_4();
                  v184 = sub_1BC8F8734();
                  OUTLINED_FUNCTION_27_8(v184, v185, v186, v187, v188, v189, v190, v191, v205, v207, v209, v211, v213, 0, v217, v218);
                  sub_1BC8037DC(v192 + v182 * v193);
                  OUTLINED_FUNCTION_61_3();
                  OUTLINED_FUNCTION_59_7();
                }

                else
                {
                  *v169 = 0u;
                  *(v0 + 424) = 0u;
                }

                sub_1BC8037DC(v0 + 96);
                sub_1BC862F74(v0 + 408, &unk_1EBCF5E50, &qword_1BC8FE850);
              }

              v194 = *(v0 + 1600);
              sub_1BC8F7A94();
              OUTLINED_FUNCTION_182();
              v195 = OUTLINED_FUNCTION_31_9();
              [v195 v196];

              goto LABEL_58;
            }

            v103 = (v0 + 760);
            sub_1BC862F74(v0 + 792, &unk_1EBCF5E50, &qword_1BC8FE850);
            v104 = sub_1BC83C8E8();
            if (v105)
            {
              v106 = v104;
              swift_isUniquelyReferenced_nonNull_native();
              v218 = v93;
              v107 = *(v93 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
              OUTLINED_FUNCTION_77_4();
              v108 = sub_1BC8F8734();
              OUTLINED_FUNCTION_27_8(v108, v109, v110, v111, v112, v113, v114, v115, v205, v206, v208, v210, v212, v214, v216, v218);
              sub_1BC8037DC(v116 + v106 * v117);
              OUTLINED_FUNCTION_61_3();
              OUTLINED_FUNCTION_59_7();
            }

            else
            {
              *v103 = 0u;
              *(v0 + 776) = 0u;
            }

            v132 = v0 + 56;
            goto LABEL_44;
          }

          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_36_11();
          *(v0 + 1400) = 0xD00000000000001ALL;
          *(v0 + 1408) = v95;
          sub_1BC8F8544();
          v96 = v79;
          result = [v96 data];
          if (result)
          {
            v97 = result;
            v98 = *(v0 + 1616);
            v99 = *(v0 + 1600);

            v100 = sub_1BC7D9730(0, qword_1EDC20650, 0x1E695DEF0);
            *(v0 + 880) = v100;
            *(v0 + 856) = v97;
            v101 = [v99 userInfo];
            v102 = sub_1BC8F7AA4();

            if (v100)
            {
              OUTLINED_FUNCTION_88_2((v0 + 856), (v0 + 824));
              OUTLINED_FUNCTION_65_3();
              sub_1BC83D6F0((v0 + 824), v0 + 256);
              v94 = v0 + 256;
              goto LABEL_35;
            }

            v103 = (v0 + 888);
            sub_1BC862F74(v0 + 856, &unk_1EBCF5E50, &qword_1BC8FE850);
            v118 = sub_1BC83C8E8();
            if (v119)
            {
              v120 = v118;
              swift_isUniquelyReferenced_nonNull_native();
              v218 = v102;
              v121 = *(v102 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
              OUTLINED_FUNCTION_77_4();
              v122 = sub_1BC8F8734();
              OUTLINED_FUNCTION_27_8(v122, v123, v124, v125, v126, v127, v128, v129, v205, v206, v208, v210, v212, v214, v216, v218);
              sub_1BC8037DC(v130 + v120 * v131);
              OUTLINED_FUNCTION_61_3();
              OUTLINED_FUNCTION_59_7();
            }

            else
            {
              *v103 = 0u;
              *(v0 + 904) = 0u;
            }

            v132 = v0 + 256;
LABEL_44:
            sub_1BC8037DC(v132);
            sub_1BC862F74(v103, &unk_1EBCF5E50, &qword_1BC8FE850);
            goto LABEL_45;
          }
        }

        __break(1u);
        return result;
      }

      v56 = *(v0 + 1616);

      v54 = sub_1BC8F7714();
      v57 = sub_1BC8F81E4();
      if (OUTLINED_FUNCTION_21(v57))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v52 = *(v0 + 1680);
      v53 = *(v0 + 1616);

      v54 = sub_1BC8F7714();
      v55 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v55))
      {
LABEL_19:
        v58 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v58);
        OUTLINED_FUNCTION_4();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        OUTLINED_FUNCTION_18_12();
      }
    }

    goto LABEL_58;
  }

  v21 = *(v0 + 1616);

LABEL_58:
  v197 = *(v0 + 1592);
  v198 = *(v0 + 1568);
  v199 = *(v0 + 1560);
  v200 = *(v0 + 1552);
  v201 = *(v0 + 1544);
  v202 = *(v0 + 1520);

  OUTLINED_FUNCTION_96();
  v204 = *(v0 + 1600);

  return v203(v204);
}

void sub_1BC893170()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  if ([*(v0 + 24) vmCatchUpDonationEnabled])
  {
    Message.getTranscriptString()();
    if (!v4)
    {
      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v26 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v26, qword_1EDC2B208);
      v27 = sub_1BC8F7714();
      v28 = sub_1BC8F8204();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v29);
        _os_log_impl(&dword_1BC7A3000, v27, v28, "Successfully got transcript string", 0, 2u);
        OUTLINED_FUNCTION_18_12();
      }

      goto LABEL_21;
    }

    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v5 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v5, qword_1EDC2B208);
    v6 = v4;
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F81E4();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      v33 = OUTLINED_FUNCTION_33();
      v37 = v33;
      *v1 = 136446210;
      swift_getErrorValue();
      v9 = v34;
      v10 = v35;
      v11 = sub_1BC8F83F4();
      v32[1] = v32;
      v12 = OUTLINED_FUNCTION_0(v11);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      v16 = v32 - v15;
      OUTLINED_FUNCTION_10(v10);
      (*(v17 + 16))(v16, v9, v10);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
      sub_1BC8073F0(v16, v10);
      v21 = OUTLINED_FUNCTION_56_5();
      v22(v21);
      v23 = OUTLINED_FUNCTION_45_2();
      sub_1BC7A9A4C(v23, v24, v25);
      OUTLINED_FUNCTION_82_3();

      *(v1 + 4) = v9;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Error getting transcript %{public}s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }
  }

  v30 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v31 = *(v3 + v30);
  if (v31 == 2)
  {
    if (qword_1EDC1EF18 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v31 == 1)
  {
    goto LABEL_21;
  }

  if (!*(v3 + v30))
  {
    if (qword_1EDC1EF18 == -1)
    {
LABEL_20:
      OUTLINED_FUNCTION_26_9();
LABEL_21:
      OUTLINED_FUNCTION_24();
      return;
    }

LABEL_22:
    OUTLINED_FUNCTION_1_24();
    goto LABEL_20;
  }

  v36 = *(v3 + v30);
  sub_1BC8F8B04();
  __break(1u);
}

uint64_t sub_1BC893564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = sub_1BC8F7264();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    v28 = objc_opt_self();
    v29 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v30 = OUTLINED_FUNCTION_54_7();
    v31(v30);
    sub_1BC8F7214();
    v32 = OUTLINED_FUNCTION_81_4();
    v33(v32);
    v34 = [v28 phoneAppVoicemailURLForMessageUUID_];

    if (v34)
    {
      sub_1BC8F6FB4();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v43 = sub_1BC8F7014();
    __swift_storeEnumTagSinglePayload(v13, v35, 1, v43);
    v42 = v13;
    return sub_1BC805ABC(v42, a2);
  }

  if (v19 == 2)
  {
    v20 = objc_opt_self();
    v21 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v22 = OUTLINED_FUNCTION_54_7();
    v23(v22);
    sub_1BC8F7214();
    v24 = OUTLINED_FUNCTION_81_4();
    v25(v24);
    v26 = [v20 faceTimeAppVideoMessagePlaybackURLForUUID_];

    if (v26)
    {
      sub_1BC8F6FB4();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v41 = sub_1BC8F7014();
    __swift_storeEnumTagSinglePayload(v10, v27, 1, v41);
    v42 = v10;
    return sub_1BC805ABC(v42, a2);
  }

  if (v19 == 1)
  {
    sub_1BC8F7014();
    OUTLINED_FUNCTION_122();
    return __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  else
  {
    v44 = *(a1 + v18);
    result = sub_1BC8F8B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC893860()
{
  OUTLINED_FUNCTION_5();
  v23 = *MEMORY[0x1E69E9840];
  v1[24] = v2;
  v1[25] = v0;
  v1[26] = *v0;
  v3 = sub_1BC8F6ED4();
  v1[27] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[28] = v4;
  v6 = *(v5 + 64);
  v1[29] = OUTLINED_FUNCTION_47_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_47_3();
  v10 = sub_1BC8F7014();
  v1[31] = v10;
  OUTLINED_FUNCTION_26(v10);
  v1[32] = v11;
  v13 = *(v12 + 64);
  v1[33] = OUTLINED_FUNCTION_38_6();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = sub_1BC8F7264();
  v1[41] = v14;
  OUTLINED_FUNCTION_26(v14);
  v1[42] = v15;
  v17 = *(v16 + 64);
  v1[43] = OUTLINED_FUNCTION_38_6();
  v1[44] = swift_task_alloc();
  v18 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1BC893A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_87_2();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_83_3();
  a26 = v28;
  v31 = v28;
  a17 = *MEMORY[0x1E69E9840];
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v32 = v28[24];
  v33 = sub_1BC8F7734();
  v31[45] = v33;
  OUTLINED_FUNCTION_37_0(v33, qword_1EDC2B3D8);
  v34 = v32;
  v35 = sub_1BC8F7714();
  v36 = sub_1BC8F8204();

  v187 = v31;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v31[44];
    v38 = v31[42];
    v39 = v31[41];
    v40 = v187[24];
    OUTLINED_FUNCTION_9();
    v41 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_28();
    a16 = v42;
    *v41 = 136446210;
    v43 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v38 + 16))(v37, v40 + v43, v39);
    sub_1BC7C0EA4();
    v44 = sub_1BC8F8A54();
    v46 = v45;
    v47 = v39;
    v31 = v187;
    (*(v38 + 8))(v37, v47);
    v48 = sub_1BC7A9A4C(v44, v46, &a16);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1BC7A3000, v35, v36, "Getting attachments for message with uuid: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_0();
  }

  v49 = v31[24];
  v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(v49 + v50) == 2)
  {
    v51 = v31[30];
    v52 = v31[31];
    v53 = v31[24];
    v54 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    sub_1BC87C84C(v53 + v54, v51, &qword_1EBCF5A20, &qword_1BC901BF0);
    if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
    {
      sub_1BC862F74(v31[30], &qword_1EBCF5A20, &qword_1BC901BF0);
      v55 = sub_1BC8F7714();
      v56 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v56))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    (*(v31[32] + 32))(v31[40], v31[30], v31[31]);
    v75 = sub_1BC8F7714();
    v76 = sub_1BC8F8204();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_36();
      *v77 = 0;
      _os_log_impl(&dword_1BC7A3000, v75, v76, "Creating temporary thumbnail copy for notification", v77, 2u);
      OUTLINED_FUNCTION_9_0();
    }

    v78 = v31[44];
    v80 = v31[41];
    v79 = v31[42];
    v81 = v31[40];
    a10 = v81;
    v180 = v31[38];
    a9 = v31[37];
    v82 = v31[32];
    v182 = v31[31];
    v83 = v187[29];
    v84 = v187[28];
    v85 = v187[27];

    sub_1BC8F6F94();
    sub_1BC8F7254();
    v86 = sub_1BC8F7204();
    v88 = v87;
    (*(v79 + 8))(v78, v80);
    v187[20] = v86;
    v187[21] = v88;
    (*(v84 + 104))(v83, *MEMORY[0x1E6968F68], v85);
    sub_1BC7B7A9C();
    sub_1BC8F7004();
    v89 = v83;
    v31 = v187;
    (*(v84 + 8))(v89, v85);

    sub_1BC8F6EE4();
    sub_1BC8F6F84();

    v90 = *(v82 + 8);
    v90(a9, v182);
    v91 = [objc_opt_self() defaultManager];
    v92 = sub_1BC8F6F44();
    v93 = sub_1BC8F6F44();
    v187[22] = 0;
    v94 = OUTLINED_FUNCTION_31_9();
    LODWORD(v79) = [v94 v95];

    v96 = v187[22];
    if (v79)
    {
      v97 = v187[38];
      v98 = v187[36];
      v100 = v187[31];
      v99 = v187[32];
      sub_1BC7D9730(0, &unk_1EDC1DDA0, 0x1E6983268);
      v101 = *(v99 + 16);
      v102 = OUTLINED_FUNCTION_45_1();
      v103(v102);
      v104 = v96;
      v105 = sub_1BC894BF0(0x69616E626D756874, 0xE90000000000006CLL, v98, 0);
      v107 = v187[39];
      v106 = v187[40];
      v108 = v187[38];
      v109 = v187[31];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1BC904010;
      v181 = v110;
      *(v110 + 32) = v105;
      v90(v108, v109);
      v90(v107, v109);
      v90(v106, v109);
LABEL_25:
      v149 = v31[43];
      v148 = v31[44];
      v151 = v31[39];
      v150 = v31[40];
      v153 = v31[37];
      v152 = v31[38];
      v154 = v187[36];
      v155 = v187[35];
      v156 = v187[34];
      v157 = v187[33];
      v184 = v187[30];
      v186 = v187[29];

      OUTLINED_FUNCTION_96();
      v158 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_53();

      return v161(v159, v160, v161, v162, v163, v164, v165, v166, a9, a10, v181, v184, v186, v187, a15, a16, a17, a18, a19, a20);
    }

    v118 = v96;
    v119 = sub_1BC8F6EA4();

    swift_willThrow();
    v120 = v119;
    v121 = sub_1BC8F7714();
    sub_1BC8F81E4();

    if (OUTLINED_FUNCTION_37_8())
    {
      OUTLINED_FUNCTION_9();
      v122 = swift_slowAlloc();
      v183 = OUTLINED_FUNCTION_28();
      a16 = v183;
      *v122 = 136446210;
      swift_getErrorValue();
      v123 = v187[14];
      v124 = v187[15];
      v125 = sub_1BC8F83F4();
      OUTLINED_FUNCTION_0(v125);
      v185 = v90;
      v127 = v126;
      v129 = *(v128 + 64);
      v130 = OUTLINED_FUNCTION_47_3();
      OUTLINED_FUNCTION_10(v124);
      (*(v131 + 16))();
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v124);
      v135 = sub_1BC8073F0(v130, v124);
      v137 = v136;
      v138 = v125;
      v31 = v187;
      (*(v127 + 8))(v130, v138);
      v90 = v185;

      v139 = sub_1BC7A9A4C(v135, v137, &a16);

      *(v122 + 4) = v139;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v140, v141, v142, v143, v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v183);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_18_12();
    }

    v146 = v31[39];
    v145 = v31[40];
    v147 = v31[31];
    v90(v31[38], v147);
    v90(v146, v147);
    v90(v145, v147);
    goto LABEL_24;
  }

  if ([*(v31[25] + 16) deviceType] != 2)
  {
    v55 = sub_1BC8F7714();
    v111 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v111))
    {
LABEL_19:
      v112 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v112);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v113, v114, v115, v116, v117, 2u);
      OUTLINED_FUNCTION_18_12();
    }

LABEL_20:

    goto LABEL_24;
  }

  if (*(v49 + v50))
  {
LABEL_24:
    v181 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v57 = sub_1BC8F7714();
  v58 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v58))
  {
    v59 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v59);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  v66 = v31[42];
  v65 = v31[43];
  v67 = v31[41];
  v68 = v31[35];
  v69 = v31[24];

  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v70 = *(v66 + 16);
  v71 = OUTLINED_FUNCTION_31_9();
  v73 = v72(v71);
  v74 = MEMORY[0x1BFB2A220](v73);
  sub_1BC7C1A54(7499105, 0xE300000000000000, v68);
  objc_autoreleasePoolPop(v74);
  v168 = v31[34];
  v169 = v31[31];
  v170 = v31[32];
  v171 = v31[24];
  (*(v31[42] + 8))(v31[43], v31[41]);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v31[46] = *(v170 + 16);
  v31[47] = (v170 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v172 = OUTLINED_FUNCTION_80_3();
  v173(v172);
  v174 = swift_task_alloc();
  v31[48] = v174;
  *v174 = v31;
  v174[1] = sub_1BC894564;
  v175 = v31[35];
  v176 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_28_9(v31[34]);
  OUTLINED_FUNCTION_53();

  return sub_1BC7EFADC(v177, v178);
}

uint64_t sub_1BC894564()
{
  OUTLINED_FUNCTION_22_0();
  v17 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = v2[48];
  *v4 = *v1;
  v3[49] = v0;

  v6 = v2[34];
  v7 = v2[32];
  v8 = v2[31];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v3[52] = v10;
  }

  else
  {
    v3[50] = v10;
    v3[51] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v10(v6, v8);
  v12 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC89470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v68 = *MEMORY[0x1E69E9840];
  v19 = v16[49];
  v21 = v16[46];
  v20 = v16[47];
  v22 = v16[35];
  v23 = v16[33];
  v24 = v16[31];
  sub_1BC894DAC(v16[24]);
  OUTLINED_FUNCTION_66_2();
  sub_1BC7D9730(0, &unk_1EDC1DDA0, 0x1E6983268);
  v25 = OUTLINED_FUNCTION_29();
  v21(v25);
  v26 = sub_1BC894BF0(v17, v18, v23, 0);
  if (v19)
  {
    v27 = v16[50];
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    OUTLINED_FUNCTION_37_0(v16[45], qword_1EDC2B208);
    v28 = v19;
    v29 = sub_1BC8F7714();
    v30 = sub_1BC8F81E4();

    if (OUTLINED_FUNCTION_37_8())
    {
      OUTLINED_FUNCTION_9();
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_32_3();
      *v31 = 138543362;
      v33 = v19;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1BC7A3000, v29, v30, "Got an error while converting screened audio message. Error: %{public}@", v31, 0xCu);
      sub_1BC862F74(v32, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v35 = v16[35];
    v36 = v16[31];
    v37 = v16[32];

    v27(v35, v36);
    v65 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = v26;
    v40 = v16[50];
    v39 = v16[51];
    v41 = v16[35];
    v42 = v16[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1BC904010;
    v65 = v43;
    *(v43 + 32) = v38;
    v44 = OUTLINED_FUNCTION_81_0();
    v40(v44);
  }

  v46 = v16[43];
  v45 = v16[44];
  v48 = v16[39];
  v47 = v16[40];
  v50 = v16[37];
  v49 = v16[38];
  v52 = v16[35];
  v51 = v16[36];
  v53 = v16[33];
  v54 = v16[34];
  v66 = v16[30];
  v67 = v16[29];

  OUTLINED_FUNCTION_96();
  v55 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_7();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, v67, a12, v68, a14, a15, a16);
}

uint64_t sub_1BC8949D4()
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = v0[52];
  v2 = v0[49];
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_37_0(v0[45], qword_1EDC2B208);
  v3 = v2;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_32_3();
    *v5 = 138543362;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  v14 = v0[35];
  v15 = v0[31];
  v16 = v0[32];

  v17 = OUTLINED_FUNCTION_81_0();
  v1(v17);
  v19 = v0[43];
  v18 = v0[44];
  v21 = v0[39];
  v20 = v0[40];
  v23 = v0[37];
  v22 = v0[38];
  v25 = v0[35];
  v24 = v0[36];
  v27 = v0[33];
  v26 = v0[34];
  v32 = v0[30];
  v33 = v0[29];

  OUTLINED_FUNCTION_96();
  v29 = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E69E7CC0];

  return v28(v30);
}

id sub_1BC894BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BC8F7BE4();

  v7 = sub_1BC8F6F44();
  if (a4)
  {
    v8 = sub_1BC8F7A94();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_1BC8F7014();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v18[0];
    sub_1BC8F6EA4();

    swift_willThrow();
    v15 = sub_1BC8F7014();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1BC894DAC(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v8 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 == 2)
  {
    v26[3] = 0;
    v26[4] = 0xE000000000000000;
    sub_1BC8F85A4();

    strcpy(v26, "video-message-");
    HIBYTE(v26[1]) = -18;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v10 = OUTLINED_FUNCTION_51_7();
    v11(v10);
    v12 = sub_1BC8F7204();
    v14 = v13;
    v15 = *(v5 + 8);
    v16 = OUTLINED_FUNCTION_45_1();
    v17(v16);
    MEMORY[0x1BFB29120](v12, v14);

    return v26[0];
  }

  if (v9 == 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v20 = OUTLINED_FUNCTION_51_7();
    v21(v20);
    v18 = sub_1BC8F7204();
    v22 = *(v5 + 8);
    v23 = OUTLINED_FUNCTION_45_1();
    v24(v23);
    return v18;
  }

  if (!*(a1 + v8))
  {
    v19 = a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if ((*(v19 + 4) & 1) == 0)
    {
      LODWORD(v26[0]) = *v19;
      return sub_1BC8F8A54();
    }

    goto LABEL_7;
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC895034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC895374();
}

uint64_t sub_1BC8950D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1BC87C84C(a3, v26 - v11, &qword_1EBCF63D0, &qword_1BC902140);
  v13 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC862F74(v12, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BC8F7F54();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BC8F7CA4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BC895374()
{
  OUTLINED_FUNCTION_5();
  v12 = *MEMORY[0x1E69E9840];
  v1[29] = v2;
  v1[30] = v0;
  v1[31] = *v0;
  v3 = sub_1BC8F7264();
  v1[32] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[33] = v4;
  v6 = *(v5 + 64);
  v1[34] = OUTLINED_FUNCTION_47_3();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC895470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v46 = *MEMORY[0x1E69E9840];
  v13 = v12[29];
  v14 = v12[30];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 40);

  os_unfair_lock_unlock((v14 + 32));
  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  sub_1BC8965A8();
  LOBYTE(v13) = v18;

  if (v13)
  {
    v19 = v12[31];
    v20 = sub_1BC8967E4(v12[29]);
    v12[35] = v20;
    v21 = sub_1BC8968A4(v20);
    v12[36] = v21;
    v12[2] = v12;
    v12[3] = sub_1BC8956AC;
    v22 = swift_continuation_init();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
    OUTLINED_FUNCTION_20_12(v23);
    v12[11] = 1107296256;
    OUTLINED_FUNCTION_21_14();
    v12[13] = v24;
    v12[14] = v22;
    [v21 donateInteractionWithCompletion_];
    v32 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v12 + 2, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v33 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v33, qword_1EDC2B3D8);
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v35))
    {
      v36 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v36);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v42 = v12[34];

    OUTLINED_FUNCTION_27();
    v44 = *MEMORY[0x1E69E9840];

    return v43();
  }
}

uint64_t sub_1BC8956AC()
{
  OUTLINED_FUNCTION_5();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 296) = *(v4 + 48);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8957D8()
{
  OUTLINED_FUNCTION_22_0();
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v1 = v0[29];
  v2 = sub_1BC8F7734();
  v0[38] = OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3D8);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v5 = v0[29];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_32_3();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v14 = swift_task_alloc();
  v0[39] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_17_10(v14);
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_28_9(v16);

  return sub_1BC8912F4();
}

uint64_t sub_1BC895954()
{
  OUTLINED_FUNCTION_5();
  v12 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  *v3 = *v0;
  *(v2 + 320) = v6;

  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC895A70()
{
  v47 = *MEMORY[0x1E69E9840];
  *(v0 + 216) = 0;
  v1 = [*(v0 + 320) contentByUpdatingWithProvider:*(v0 + 280) error:v0 + 216];
  *(v0 + 328) = v1;
  v2 = *(v0 + 216);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 232);
    sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
    v5 = v2;
    v6 = sub_1BC894DAC(v4);
    *(v0 + 336) = sub_1BC891064(v6, v7, v3, 0);
    *(v0 + 344) = sub_1BC896904(v4);
    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_1BC895E1C;
    v9 = *MEMORY[0x1E69E9840];
    v10 = OUTLINED_FUNCTION_29();

    return sub_1BC8969EC(v10, v11, 15);
  }

  else
  {
    v13 = *(v0 + 304);
    v14 = v2;
    v15 = sub_1BC8F6EA4();

    swift_willThrow();
    v16 = v15;
    v17 = sub_1BC8F7714();
    sub_1BC8F81E4();

    v18 = OUTLINED_FUNCTION_137();
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);
    if (v18)
    {
      OUTLINED_FUNCTION_9();
      v45 = v21;
      swift_slowAlloc();
      v46 = OUTLINED_FUNCTION_33();
      *v19 = 136446210;
      swift_getErrorValue();
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);
      v24 = sub_1BC8F83F4();
      OUTLINED_FUNCTION_0(v24);
      v26 = *(v25 + 64);
      v27 = OUTLINED_FUNCTION_47_3();
      OUTLINED_FUNCTION_10(v23);
      (*(v28 + 16))();
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v23);
      sub_1BC8073F0(v27, v23);
      v32 = OUTLINED_FUNCTION_56_5();
      v33(v32);

      v34 = OUTLINED_FUNCTION_45_2();
      sub_1BC7A9A4C(v34, v35, v36);
      OUTLINED_FUNCTION_82_3();

      *(v19 + 4) = v22;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v42 = *(v0 + 272);

    OUTLINED_FUNCTION_27();
    v44 = *MEMORY[0x1E69E9840];

    return v43();
  }
}

uint64_t sub_1BC895E1C()
{
  OUTLINED_FUNCTION_5();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 360) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC895F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_83_3();
  v53 = *MEMORY[0x1E69E9840];
  v21 = v20[42];
  v47 = v20[41];
  v48 = v20[43];
  v49 = v20[40];
  v50 = v20[36];
  v51 = v20[35];
  v22 = v20[33];
  v23 = v20[34];
  v24 = v20[32];
  v25 = v20[29];
  v26 = v20[30];
  os_unfair_lock_lock((v26 + 32));
  v27 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v22 + 16))(v23, v25 + v27, v24);
  v28 = [v21 identifier];
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_66_2();

  v29 = (v25 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  v32 = *(v26 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v26 + 40);
  OUTLINED_FUNCTION_60_6();
  *(v26 + 40) = v52;
  v33 = *(v22 + 8);
  v34 = OUTLINED_FUNCTION_81_0();
  v35(v34);
  os_unfair_lock_unlock((v26 + 32));

  v36 = v20[34];

  OUTLINED_FUNCTION_27();
  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v21, v47, v48, v49, v50, v51, v52, v53, a18, a19, a20);
}

uint64_t sub_1BC896100()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = v0[37];
  swift_willThrow();
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = v0[37];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3D8);
  v4 = v2;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81F4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  if (v7)
  {
    OUTLINED_FUNCTION_9();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_32_3();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to donate interaction: %{public}@", v9, 0xCu);
    sub_1BC862F74(v10, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v13 = v0[29];
  v0[38] = OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3D8);
  v14 = v13;
  v15 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v16 = v0[29];
    OUTLINED_FUNCTION_9();
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_32_3();
    *v17 = 138543362;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_1BC862F74(v18, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v25 = swift_task_alloc();
  v0[39] = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_17_10(v25);
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_28_9(v27);

  return sub_1BC8912F4();
}

uint64_t sub_1BC896398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v57 = *MEMORY[0x1E69E9840];
  v17 = *(v16 + 360);
  v19 = *(v16 + 336);
  v18 = *(v16 + 344);
  v20 = *(v16 + 304);
  v21 = *(v16 + 232);
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v26 = OUTLINED_FUNCTION_137();
  v27 = *(v16 + 360);
  v29 = *(v16 + 336);
  v28 = *(v16 + 344);
  v31 = *(v16 + 320);
  v30 = *(v16 + 328);
  v32 = *(v16 + 280);
  v33 = *(v16 + 288);
  if (v26)
  {
    a11 = *(v16 + 320);
    v34 = *(v16 + 232);
    swift_slowAlloc();
    a12 = v32;
    a10 = v33;
    v35 = OUTLINED_FUNCTION_33();
    *v32 = 138413058;
    *(v32 + 4) = v29;
    *(v32 + 6) = 2114;
    *(v32 + 14) = v34;
    *v35 = v29;
    v35[1] = v34;
    OUTLINED_FUNCTION_76_5(v35, 2114);
    v36 = v34;
    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 34) = v40;
    v35[3] = v40;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v41, v42, v43, v44, v45, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v46 = *(v16 + 272);

  OUTLINED_FUNCTION_27();
  v47 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_7();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, v57, a14, a15, a16);
}

void sub_1BC8965A8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7264();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v20 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v21 = *(v7 + v20);
  if (v21 == 2)
  {
    v22 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v11 + 16))(v16, v7 + v22, v8);
    sub_1BC8E7258(v16, v5);
    OUTLINED_FUNCTION_55_3();
    v24 = v16;
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if ([v3 phoneLargeFormatUIEnabled])
    {
      if ([v3 LVMEverywhere])
      {
        [v1 deviceType];
      }
    }

LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  if (!*(v7 + v20))
  {
    v25 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v11 + 16))(v19, v7 + v25, v8);
    sub_1BC8E7258(v19, v5);
    OUTLINED_FUNCTION_55_3();
    v24 = v19;
LABEL_9:
    v23(v24, v8);
    if (v7)
    {
      sub_1BC8997EC(v5, v7);
    }

    goto LABEL_11;
  }

  v26 = *(v7 + v20);
  sub_1BC8F8B04();
  __break(1u);
}

id sub_1BC8967E4(uint64_t a1)
{
  sub_1BC89918C();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC904010;
  *(v4 + 32) = v3;
  v5 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(a1 + v5) == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696EA60]);
  OUTLINED_FUNCTION_15();
  return sub_1BC8995A8(v8, v9, v10, 3, v4, v6);
}

id sub_1BC8968A4(void *a1)
{
  sub_1BC7D9730(0, &qword_1EDC1DE60, 0x1E696E8B8);
  v2 = sub_1BC89935C(a1, 0);
  [v2 setDirection_];
  return v2;
}

id sub_1BC896904(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v2 = *v1 == 0xD00000000000003BLL && 0x80000001BC90BE00 == v1[1];
  if (v2 || (sub_1BC8F8AA4() & 1) != 0)
  {
    if (qword_1EDC1EED8 != -1)
    {
      OUTLINED_FUNCTION_25_12();
    }

    v3 = &qword_1EDC1EEE8;
  }

  else
  {
    if (qword_1EDC1EEF0 != -1)
    {
      OUTLINED_FUNCTION_24_12();
    }

    v3 = &qword_1EDC1EF00;
  }

  v4 = *v3;

  return v4;
}

uint64_t sub_1BC8969EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC896A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  [*(v12 + 152) setDestinations_];
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v14 = *(v12 + 144);
  v13 = *(v12 + 152);
  v15 = sub_1BC8F7734();
  *(v12 + 168) = OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B3D8);
  v16 = v13;
  v17 = v14;
  v18 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_137())
  {
    v20 = *(v12 + 144);
    v19 = *(v12 + 152);
    OUTLINED_FUNCTION_8_17();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_49_9(v21, 5.778e-34);
    v22 = v20;
    OUTLINED_FUNCTION_87_3(&dword_1BC7A3000, v23, v24, "MessageStore: Adding %@ to %{public}@");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  v26 = *(v12 + 144);
  v25 = *(v12 + 152);

  *(v12 + 16) = v12;
  *(v12 + 24) = sub_1BC896C00;
  v27 = swift_continuation_init();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  OUTLINED_FUNCTION_20_12(v28);
  *(v12 + 88) = 1107296256;
  OUTLINED_FUNCTION_21_14();
  *(v12 + 104) = v29;
  *(v12 + 112) = v27;
  [v26 addNotificationRequest:v25 withCompletionHandler:v12 + 80];

  return MEMORY[0x1EEE6DEC8](v12 + 16, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1BC896C00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC896CFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = v2;
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_137())
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    OUTLINED_FUNCTION_8_17();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_49_9(v8, 5.778e-34);
    v9 = v7;
    OUTLINED_FUNCTION_87_3(&dword_1BC7A3000, v10, v11, "MessageStore: Added %@ to %{public}@");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1BC896E0C()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 176);
  swift_willThrow();
  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_1BC896E90(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_29();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_61();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v3;
  v18[5] = a1;

  v19 = a1;
  sub_1BC8950D0(0, 0, v13, a3, v18);

  return sub_1BC862F74(v13, &qword_1EBCF63D0, &qword_1BC902140);
}

uint64_t sub_1BC896F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC897028();
}

uint64_t sub_1BC897028()
{
  OUTLINED_FUNCTION_5();
  v1[32] = v2;
  v1[33] = v0;
  v1[34] = *v0;
  v3 = sub_1BC8F7264();
  v1[35] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[36] = v4;
  v6 = *(v5 + 64);
  v1[37] = OUTLINED_FUNCTION_38_6();
  v1[38] = swift_task_alloc();
  v7 = sub_1BC8F71E4();
  v1[39] = v7;
  OUTLINED_FUNCTION_26(v7);
  v1[40] = v8;
  v10 = *(v9 + 64);
  v1[41] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC897150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_83_3();
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v21 = *(v20 + 256);
  v22 = sub_1BC8F7734();
  v23 = __swift_project_value_buffer(v22, qword_1EDC2B3D8);
  *(v20 + 336) = v23;
  v24 = v21;
  v94 = v23;
  v25 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v26 = *(v20 + 256);
    OUTLINED_FUNCTION_9();
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_32_3();
    *v27 = 138543362;
    *(v27 + 4) = v26;
    *v28 = v26;
    v29 = v26;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    sub_1BC862F74(v28, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v35 = *(v20 + 320);
  v36 = *(v20 + 328);
  v37 = *(v20 + 304);
  v38 = *(v20 + 312);
  v40 = *(v20 + 280);
  v39 = *(v20 + 288);
  v41 = *(v20 + 256);

  v99 = sub_1BC896904(v41);
  *(v20 + 344) = v99;
  v42 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v20 + 352) = v42;
  v43 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v35 + 16))(v36, v41 + v43, v38);
  v44 = sub_1BC8F7174();
  (*(v35 + 8))(v36, v38);
  [v42 setDate_];

  v45 = (v41 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];

  v48 = sub_1BC8F7BE4();

  [v42 setThreadIdentifier_];

  OUTLINED_FUNCTION_36_11();
  *(v20 + 240) = 0xD000000000000011;
  *(v20 + 248) = v49;
  v50 = MEMORY[0x1E69E6158];
  sub_1BC8F8544();
  v51 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  *(v20 + 360) = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v52 = *(v39 + 16);
  *(v20 + 368) = v52;
  *(v20 + 376) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v96 = v52;
  v97 = v51;
  v52(v37, v41 + v51, v40);
  v53 = sub_1BC8F7204();
  v55 = v54;
  v56 = *(v39 + 8);
  v39 += 8;
  *(v20 + 384) = v56;
  *(v20 + 392) = v39 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57 = OUTLINED_FUNCTION_45_2();
  v98 = v39;
  v95 = v58;
  (v58)(v57);
  *(v20 + 80) = v50;
  *(v20 + 56) = v53;
  *(v20 + 64) = v55;
  v59 = [v42 userInfo];
  OUTLINED_FUNCTION_30_11();
  v60 = sub_1BC8F7AA4();

  sub_1BC7F0E58((v20 + 56), (v20 + 88));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1BC83D6F0((v20 + 88), v20 + 16);
  sub_1BC8037DC(v20 + 16);
  OUTLINED_FUNCTION_30_11();
  v61 = sub_1BC8F7A94();

  [v42 setUserInfo_];

  v62 = [objc_opt_self() soundWithAlertType_];
  [v42 setSound_];

  v63 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v64 = *(v41 + v63);
  if (!*(v41 + v63))
  {
    if (qword_1EDC1EF18 == -1)
    {
LABEL_16:
      OUTLINED_FUNCTION_19_16();
      v80 = sub_1BC8F7BE4();

      [v42 setTitle_];

      OUTLINED_FUNCTION_19_16();
      v81 = sub_1BC8F7BE4();

      [v42 setSubtitle_];
      goto LABEL_17;
    }

LABEL_22:
    OUTLINED_FUNCTION_1_24();
    goto LABEL_16;
  }

  if (v64 == 2)
  {
    if (qword_1EDC1EF18 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v64 == 1)
  {
    v65 = sub_1BC8F7714();
    v66 = sub_1BC8F8204();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_36();
      *v67 = 0;
      _os_log_impl(&dword_1BC7A3000, v65, v66, "MessageStore: Not posting notification for voicemail", v67, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v68 = *(v20 + 328);
    v69 = *(v20 + 296);
    v70 = *(v20 + 304);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_53();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, v94, v95, v96, v97, v98, v99, v60, a18, a19, a20);
  }

  v81 = sub_1BC8F7714();
  v92 = sub_1BC8F81E4();
  if (os_log_type_enabled(v81, v92))
  {
    v93 = OUTLINED_FUNCTION_36();
    *v93 = 0;
    _os_log_impl(&dword_1BC7A3000, v81, v92, "MessageStore: Unknown message type for notification request!", v93, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_17:
  v82 = *(v20 + 296);
  v83 = *(v20 + 280);

  sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
  v96(v82, v41 + v97, v83);
  v84 = sub_1BC8F7204();
  v86 = v85;
  v95(v82, v83);
  *(v20 + 400) = sub_1BC891064(v84, v86, v42, 0);
  v87 = swift_task_alloc();
  *(v20 + 408) = v87;
  *v87 = v20;
  v87[1] = sub_1BC8978E8;
  OUTLINED_FUNCTION_53();

  return sub_1BC8969EC(v88, v89, v90);
}

uint64_t sub_1BC8978E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 416) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8979E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v17 = v16[50];
  v18 = v16[47];
  v43 = v16[48];
  v44 = v16[49];
  v20 = v16[45];
  v19 = v16[46];
  v45 = v16[44];
  v46 = v16[43];
  v21 = v16[37];
  v22 = v16[35];
  v23 = v16[32];
  v24 = v16[33];
  os_unfair_lock_lock((v24 + 32));
  v19(v21, v23 + v20, v22);
  v25 = [v17 identifier];
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_66_2();

  v26 = (v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];

  v29 = *(v24 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v24 + 40);
  OUTLINED_FUNCTION_60_6();
  *(v24 + 40) = v47;
  v30 = OUTLINED_FUNCTION_81_0();
  v43(v30);
  os_unfair_lock_unlock((v24 + 32));

  v31 = v16[41];
  v32 = v16[37];
  v33 = v16[38];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32_7();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, a14, a15, a16);
}

uint64_t sub_1BC897B34()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 256);
  v6 = v2;
  v7 = v4;
  v8 = v1;
  v9 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v10 = OUTLINED_FUNCTION_137();
  v11 = *(v0 + 416);
  v12 = *(v0 + 400);
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  if (v10)
  {
    v15 = *(v0 + 256);
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_33();
    *v5 = 138413058;
    *(v5 + 1) = v12;
    *(v5 + 6) = 2114;
    *(v5 + 14) = v15;
    *v16 = v12;
    v16[1] = v15;
    OUTLINED_FUNCTION_76_5(v16, 2114);
    v17 = v15;
    v18 = v12;
    v19 = v13;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 34) = v21;
    v16[3] = v21;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v27 = *(v0 + 328);
  v28 = *(v0 + 296);
  v29 = *(v0 + 304);

  OUTLINED_FUNCTION_27();

  return v30();
}

void sub_1BC897D10()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v77 = v6;
  v78 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = *(v3 + 16);
  if (v12)
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v13 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v13, qword_1EDC2B3D8);

    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F8204();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_9();
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_28();
      v79 = v17;
      *v16 = 136446210;
      v18 = MEMORY[0x1BFB29280](v3, v78);
      v20 = sub_1BC7A9A4C(v18, v19, &v79);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Removing posted notifications with recordUUIDs: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_6();
    }

    v21 = v3 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v75 = *(v77 + 72);
    v76 = *(v77 + 16);
    OUTLINED_FUNCTION_36_11();
    v74 = v22;
    v23 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    v73 = v1;
    do
    {
      v76(v11, v21, v78);
      os_unfair_lock_lock((v1 + 32));
      v24 = *(v1 + 40);
      if (*(v24 + 16) && (v25 = sub_1BC83C928(), (v26 & 1) != 0))
      {
        v27 = (*(v24 + 56) + 32 * v25);
        v29 = *v27;
        v28 = v27[1];
        v30 = v27[2];
        v31 = v27[3];
      }

      else
      {
        v29 = 0;
        v28 = 0;
        v30 = 0;
        v31 = 0;
      }

      os_unfair_lock_unlock((v1 + 32));
      if (v28)
      {
        v32 = v30 == 0xD00000000000003BLL && v31 == v74;
        if (v32 || (sub_1BC8F8AA4() & 1) != 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = *(v23 + 16);
            sub_1BC7F6F9C();
            v23 = v47;
          }

          v33 = v23;
          v34 = *(v23 + 16);
          v35 = v33;
          v36 = *(v33 + 24);
          if (v34 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_74_3(v36);
            sub_1BC7F6F9C();
            v35 = v48;
          }

          v37 = OUTLINED_FUNCTION_75_2();
          v38(v37);
          *(v35 + 16) = v34 + 1;
          v39 = v35 + 16 * v34;
          v23 = v35;
          v11 = v1;
          *(v39 + 32) = v29;
          *(v39 + 40) = v28;
        }

        else
        {

          v40 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = *(v72 + 16);
            sub_1BC7F6F9C();
            v72 = v50;
          }

          v42 = *(v72 + 16);
          v41 = *(v72 + 24);
          if (v42 >= v41 >> 1)
          {
            OUTLINED_FUNCTION_74_3(v41);
            sub_1BC7F6F9C();
            v72 = v51;
          }

          v43 = OUTLINED_FUNCTION_75_2();
          v44(v43);
          *(v72 + 16) = v42 + 1;
          v45 = v72 + 16 * v42;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;

          v23 = v40;
          v11 = v1;
        }

        v1 = v73;
      }

      else
      {
        (*(v77 + 8))(v11, v78);
      }

      v21 += v75;
      --v12;
    }

    while (v12);
    v52 = sub_1BC8F7714();
    v53 = sub_1BC8F8204();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_8_17();
      v79 = swift_slowAlloc();
      *v54 = 136446466;

      v56 = MEMORY[0x1E69E6158];
      v57 = MEMORY[0x1BFB29280](v55, MEMORY[0x1E69E6158]);
      v59 = v58;
      v60 = v23;

      v61 = sub_1BC7A9A4C(v57, v59, &v79);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2082;
      v62 = v72;

      v64 = MEMORY[0x1BFB29280](v63, v56);

      v65 = OUTLINED_FUNCTION_45_2();
      sub_1BC7A9A4C(v65, v66, v67);
      OUTLINED_FUNCTION_82_3();

      *(v54 + 14) = v64;
      OUTLINED_FUNCTION_38_11(&dword_1BC7A3000, v68, v69, "Removing posted notifications. FaceTime: %{public}s, MobilePhone: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {
      v60 = v23;

      v62 = v72;
    }

    v70 = qword_1EDC1EEF0;

    if (v70 != -1)
    {
      OUTLINED_FUNCTION_24_12();
    }

    sub_1BC8982C0(v62, qword_1EDC1EF00);

    v71 = qword_1EDC1EED8;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_25_12();
    }

    sub_1BC8982C0(v60, qword_1EDC1EEE8);

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC8982C0(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B3D8);

    v5 = a2;
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F8204();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_8_17();
      v9 = OUTLINED_FUNCTION_32_3();
      v10 = OUTLINED_FUNCTION_28();
      v18 = v10;
      *v8 = 136315394;
      v11 = MEMORY[0x1BFB29280](a1, MEMORY[0x1E69E6158]);
      v13 = sub_1BC7A9A4C(v11, v12, &v18);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      v14 = v5;
      OUTLINED_FUNCTION_38_11(&dword_1BC7A3000, v15, v16, "Removing notifications with identifiers %s from %@");
      sub_1BC862F74(v9, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6();
    }

    v17 = sub_1BC8F7E34();
    [v5 removeDeliveredNotificationsWithIdentifiers_];
  }
}

void sub_1BC898480()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1BC8F7BE4();
  CFNotificationCenterAddObserver(v0, 0, sub_1BC8985FC, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_1BC898514()
{
  if (qword_1EDC20740 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B3D8);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "Exiting due to language change", v3, 2u);
    MEMORY[0x1BFB2AA50](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

void sub_1BC8985FC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1BC898514();
}

uint64_t sub_1BC898698()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_1BC862F74(v0 + 40, &qword_1EBCF6288, &qword_1BC9068E8);
  return v0;
}

uint64_t sub_1BC8986D8()
{
  sub_1BC898698();
  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC898738(uint64_t a1, int a2)
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

uint64_t sub_1BC898778(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC8987C8()
{
  sub_1BC7B7A9C();
  v0 = sub_1BC8F8424();

  if (v0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1BC89883C()
{
  OUTLINED_FUNCTION_29_0();
  v84 = v1;
  v3 = v2;
  v86 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6278, &unk_1BC9068C0);
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83[1] = v83 - v9;
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v10 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v10, qword_1EDC2B3D8);
  v11 = v3;
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9();
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_28();
    v88[0] = v15;
    *v14 = 136315138;
    v16 = &v11[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_1BC7A9A4C(v17, v18, v88);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "MessageStore: Looking up contact with matching handle: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC9067D0;
  v21 = *MEMORY[0x1E695C240];
  v22 = *MEMORY[0x1E695C2F0];
  *(v20 + 32) = *MEMORY[0x1E695C240];
  *(v20 + 40) = v22;
  v23 = *MEMORY[0x1E695C230];
  v24 = *MEMORY[0x1E695C310];
  *(v20 + 48) = *MEMORY[0x1E695C230];
  *(v20 + 56) = v24;
  v25 = v11;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = sub_1BC8F7714();
  v31 = sub_1BC8F8204();

  v32 = os_log_type_enabled(v30, v31);
  v85 = v0;
  if (v32)
  {
    OUTLINED_FUNCTION_9();
    v33 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_28();
    v88[0] = v34;
    *v33 = 136315138;
    v35 = &v25[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[1];

    v38 = sub_1BC7A9A4C(v36, v37, v88);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1BC7A3000, v30, v31, "MessageStore: Searching contactStore for contacts matching handle string: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v39 = v84[3];
  v40 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  OUTLINED_FUNCTION_61();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BC8FC230;
  v42 = &v25[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v43 = v42[1];
  *(v41 + 32) = *v42;
  *(v41 + 40) = v43;
  v44 = *(v40 + 32);

  v45 = v44(v41, v20, v39, v40);

  v46 = *v42;
  v47 = v42[1];

  v48 = sub_1BC8E73C0(v46, v47, v45);

  if (v48)
  {
    if (sub_1BC7C0454(v48))
    {
      sub_1BC8E2358(0, (v48 & 0xC000000000000001) == 0, v48);
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1BFB29A00](0, v48);
      }

      else
      {
        v49 = *(v48 + 32);
      }

      v50 = v49;

      v51 = v50;
      v52 = sub_1BC8F7714();
      v53 = sub_1BC8F8204();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_8_17();
        v87[0] = swift_slowAlloc();
        *v54 = 136315394;
        v55 = [v51 givenName];
        v56 = sub_1BC8F7C24();
        v58 = v57;

        v59 = sub_1BC7A9A4C(v56, v58, v87);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2080;
        v60 = [v51 familyName];
        v61 = sub_1BC8F7C24();
        v63 = v62;

        v64 = sub_1BC7A9A4C(v61, v63, v87);

        *(v54 + 14) = v64;
        _os_log_impl(&dword_1BC7A3000, v52, v53, "MessageStore: Found contact: %s %s", v54, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_0();
      }

      v65 = [v51 givenName];
      v85 = sub_1BC8F7C24();

      v66 = [v51 middleName];
      sub_1BC8F7C24();
      OUTLINED_FUNCTION_66_2();

      v67 = [v51 familyName];
      sub_1BC8F7C24();

      v68 = [v51 nickname];
      sub_1BC8F7C24();

      v69 = sub_1BC8F6E74();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
      sub_1BC8F6E54();

      OUTLINED_FUNCTION_30_0();
      v76 = v69;
      goto LABEL_18;
    }
  }

  v77 = v25;
  v78 = sub_1BC8F7714();
  v79 = sub_1BC8F8204();

  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_9();
    v80 = swift_slowAlloc();
    v81 = OUTLINED_FUNCTION_32_3();
    *v80 = 138543362;
    *(v80 + 4) = v77;
    *v81 = v77;
    v82 = v77;
    _os_log_impl(&dword_1BC7A3000, v78, v79, "MessageStore: No contacts found for message: %{public}@", v80, 0xCu);
    sub_1BC862F74(v81, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  sub_1BC8F6E74();
  OUTLINED_FUNCTION_122();
LABEL_18:
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  OUTLINED_FUNCTION_24();
}

id sub_1BC89907C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  v3 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*v3 != 0xD00000000000003BLL || 0x80000001BC90BE00 != v3[1])
  {
    sub_1BC8F8AA4();
  }

  [v2 setAssumedIdentity_];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v5;
}

void sub_1BC89918C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6278, &unk_1BC9068C0);
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-1] - v10;
  v12 = sub_1BC89907C(v1);
  v26[3] = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  v26[4] = &off_1F3B3DF68;
  v26[0] = v12;
  v13 = v12;
  sub_1BC89883C();
  __swift_destroy_boxed_opaque_existential_1(v26);
  v14 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];

  OUTLINED_FUNCTION_45_2();
  v17 = sub_1BC8987C8();
  v19 = *v14;
  v18 = v14[1];
  objc_allocWithZone(MEMORY[0x1E696E948]);

  sub_1BC8993B8(v19, v18, v17);
  sub_1BC87C84C(v11, v8, &qword_1EBCF6278, &unk_1BC9068C0);
  v20 = objc_allocWithZone(MEMORY[0x1E696E940]);
  OUTLINED_FUNCTION_13();
  sub_1BC899424(v21, v22, v23, v24, 0, 0, 0, 0, 0);

  sub_1BC862F74(v11, &qword_1EBCF6278, &unk_1BC9068C0);
  OUTLINED_FUNCTION_24();
}

id sub_1BC89935C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

id sub_1BC8993B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BC8F7BE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_1BC899424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1BC8F6E74();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1BC8F6E64();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1BC8F7BE4();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1BC8F7BE4();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1BC8F7BE4();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_1BC8995A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a5)
  {
    sub_1BC7D9730(0, &qword_1EDC1DD50, 0x1E696E940);
    v13 = sub_1BC8F7E34();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 contacts:v13 callCapability:a6];

  return v14;
}

uint64_t sub_1BC89969C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0168;
  OUTLINED_FUNCTION_17();

  return sub_1BC896F8C();
}

uint64_t sub_1BC899748()
{
  OUTLINED_FUNCTION_32();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0168;
  v6 = OUTLINED_FUNCTION_17();

  return v7(v6);
}

uint64_t sub_1BC8997EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BC899874()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_17();

  return sub_1BC895034();
}

void sub_1BC899920(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F7E34();

  [a2 setRemoteParticipantHandles_];
}

_OWORD *OUTLINED_FUNCTION_61_3()
{
  v4 = (*(v0 + 56) + 32 * v2);

  return sub_1BC7F0E58(v4, v1);
}

void OUTLINED_FUNCTION_87_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1BC899A10(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  sub_1BC7F77D4();
  OUTLINED_FUNCTION_114();
  v3 = type metadata accessor for HistoryItem();
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_25_1();
  v14 = OUTLINED_FUNCTION_182_0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21);
  sub_1BC8B1A04(v14, v15, v16, v17);
  OUTLINED_FUNCTION_101_2();
  if (!v18)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1BC899AAC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  sub_1BC7F7870();
  OUTLINED_FUNCTION_114();
  v3 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_182_0(v6, v7, v8, v9, MEMORY[0x1E69695A8], v10, v11, v12, v15, v16);
  sub_1BC8B1EFC();
  OUTLINED_FUNCTION_101_2();
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1BC899B5C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_1BC7F77C0(*(a1 + 16), 0);
  sub_1BC8B1DA4();
  OUTLINED_FUNCTION_101_2();
  if (!v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1BC899BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BC7F77FC(*(a1 + 16), 0);
  sub_1BC8B1C2C(&v7, (v3 + 4), v2, a1);
  v5 = v4;
  sub_1BC7CAD38();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BC899C68()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_114();
  v1 = sub_1BC8F7264();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = *(v0 + 16);
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v11, v12);
  v13 = OUTLINED_FUNCTION_176_0();
  v23[1] = MEMORY[0x1BFB29520](v13, v1);
  v14 = *(v0 + 16);
  if (v14)
  {
    v17 = *(v4 + 16);
    v15 = v4 + 16;
    v16 = v17;
    v18 = *(v15 + 64);
    OUTLINED_FUNCTION_25_1();
    v23[0] = v0;
    v20 = v0 + v19;
    v21 = *(v15 + 56);
    do
    {
      v22 = OUTLINED_FUNCTION_97_1();
      v16(v22);
      sub_1BC8AE558();
      (*(v15 - 8))(v9, v1);
      v20 += v21;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC899DDC(uint64_t a1)
{
  result = MEMORY[0x1BFB29520](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BC8AE7D0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC899E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BC8B3ED0();
  result = MEMORY[0x1BFB29520](v2, &type metadata for Person, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_1BC8AEBE4(&v12, v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC899F98(uint64_t a1)
{
  v2 = sub_1BC8F73D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530]);
  v12 = MEMORY[0x1BFB29520](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_1BC8AE91C(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

void sub_1BC89A158()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_172_0();
  v2 = sub_1BC8F7264();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;
  v17 = *(v1 + 16);
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v18, v19);
  v20 = OUTLINED_FUNCTION_176_0();
  v21 = MEMORY[0x1BFB29520](v20, v2);
  v22 = 0;
  v31 = v1;
  v32 = v21;
  v24 = *(v1 + 64);
  v23 = v1 + 64;
  v25 = *(v23 - 32);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_171_0();
  v27 = v26 >> 6;
  v30[2] = v5 + 32;
  v30[3] = v5 + 16;
  v30[1] = v5 + 8;
  while (v0)
  {
    v28 = v22;
LABEL_7:
    v29 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    (*(v5 + 16))(v16, *(v31 + 48) + *(v5 + 72) * (v29 | (v28 << 6)), v2);
    (*(v5 + 32))(v10, v16, v2);
    OUTLINED_FUNCTION_27_0();
    sub_1BC8AE558();
    (*(v5 + 8))(v14, v2);
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      OUTLINED_FUNCTION_24();
      return;
    }

    v0 = *(v23 + 8 * v28);
    ++v22;
    if (v0)
    {
      v22 = v28;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1BC89A360()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_140();
  v2 = sub_1BC8F7264();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  if (*(v0 + 16))
  {
    v8 = *(v0 + 40);
    OUTLINED_FUNCTION_3_23();
    sub_1BC8B3DC4(v9, v10);
    OUTLINED_FUNCTION_176_0();
    v11 = sub_1BC8F7B54();
    v12 = v0 + 56;
    v17 = v0;
    v13 = ~(-1 << *(v0 + 32));
    do
    {
      v14 = v11 & v13;
      if (((1 << (v11 & v13)) & *(v12 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v1, *(v17 + 48) + *(v5 + 72) * v14, v2);
      OUTLINED_FUNCTION_3_23();
      sub_1BC8B3DC4(&unk_1EDC205F0, v15);
      v16 = sub_1BC8F7BC4();
      (*(v5 + 8))(v1, v2);
      v11 = v14 + 1;
    }

    while ((v16 & 1) == 0);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC89A514(uint64_t a1)
{
  v25 = sub_1BC8F7384();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BC8F73D4();
  v5 = *(*(v23 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v21 = &v19 - v9;
  v10 = *(a1 + 16);
  v20 = *MEMORY[0x1E6993528];
  v11 = (v2 + 104);
  v13 = (v12 + 8);
  for (i = (a1 + 40); v10; --v10)
  {
    v16 = *(i - 1);
    v15 = *i;
    (*v11)(v24, v20, v25);
    swift_bridgeObjectRetain_n();
    v17 = v22;
    sub_1BC8F73B4();
    v18 = v21;
    sub_1BC8AE91C(v21, v17);
    (*v13)(v18, v23);

    i += 2;
  }

  return result;
}

void sub_1BC89A734(uint64_t a1)
{
  v25 = sub_1BC8F7384();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BC8F73D4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v23);
  v22 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v18 - v9;
  v29 = sub_1BC7C0454(a1);
  v10 = 0;
  v28 = a1 & 0xC000000000000001;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  v20 = *MEMORY[0x1E6993520];
  v19 = (v2 + 104);
  v11 = (v5 + 8);
  while (v29 != v10)
  {
    if (v28)
    {
      v12 = MEMORY[0x1BFB29A00](v10, v27);
    }

    else
    {
      if (v10 >= *(v26 + 16))
      {
        goto LABEL_11;
      }

      v12 = *(v27 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    (*v19)(v24, v20, v25);
    v14 = [v13 value];
    v15 = [v14 digits];

    sub_1BC8F7C24();
    sub_1BC8B15E0([v13 value]);
    v16 = v22;
    sub_1BC8F73B4();
    v17 = v21;
    sub_1BC8AE91C(v21, v16);
    (*v11)(v17, v23);

    ++v10;
  }
}

unint64_t HistoryChangeEvent.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      v3 = v5 | 8;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_31_0();
      return 0xD000000000000015;
    default:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      v3 = v2 | 1;
LABEL_6:
      v8 = v3;
      v7 = *(v1 + 16);
      v6 = sub_1BC8F8A54();
      MEMORY[0x1BFB29120](v6);

      MEMORY[0x1BFB29120](41, 0xE100000000000000);
      return v8;
  }
}

uint64_t static HistoryChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_17;
      }

      v7 = *a2;

      v9 = sub_1BC7F59BC(v8, v3);
      goto LABEL_14;
    case 3:
      if (v4 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 4:
      if (v4 != 4 || v3 != 0)
      {
        goto LABEL_17;
      }

      v6 = 1;
      goto LABEL_15;
    default:
      if (*(a2 + 8))
      {
LABEL_17:
        v6 = 0;
      }

      else
      {
LABEL_13:
        v10 = *a2;

        sub_1BC7DAF10();
LABEL_14:
        v6 = v9;

LABEL_15:
      }

      return v6 & 1;
  }
}

uint64_t sub_1BC89AC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747265736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646574656C6564 && a2 == 0xE700000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73746361746E6F63 && a2 == 0xEF6465676E616843;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001BC90DCA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BC89ADF4(char a1)
{
  result = 0x6465747265736E69;
  switch(a1)
  {
    case 1:
      v3 = 1633972341;
      goto LABEL_5;
    case 2:
      v3 = 1701602660;
LABEL_5:
      result = v3 | 0x64657400000000;
      break;
    case 3:
      result = 0x73746361746E6F63;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC89AEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC89AC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC89AEC8(uint64_t a1)
{
  v2 = sub_1BC89B738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AF04(uint64_t a1)
{
  v2 = sub_1BC89B738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89AF40(uint64_t a1)
{
  v2 = sub_1BC89B7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AF7C(uint64_t a1)
{
  v2 = sub_1BC89B7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89AFB8(uint64_t a1)
{
  v2 = sub_1BC89B90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AFF4(uint64_t a1)
{
  v2 = sub_1BC89B90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B030(uint64_t a1)
{
  v2 = sub_1BC89B78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B06C(uint64_t a1)
{
  v2 = sub_1BC89B78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B0A8(uint64_t a1)
{
  v2 = sub_1BC89BA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B0E4(uint64_t a1)
{
  v2 = sub_1BC89BA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B120(uint64_t a1)
{
  v2 = sub_1BC89BA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B15C(uint64_t a1)
{
  v2 = sub_1BC89BA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HistoryChangeEvent.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v70 = v1;
  v3 = v0;
  v5 = v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6290, &qword_1BC906900);
  OUTLINED_FUNCTION_0(v66);
  v64 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v62 = v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6298, &qword_1BC906908);
  OUTLINED_FUNCTION_0(v65);
  v63 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v61 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62A0, &qword_1BC906910);
  v17 = OUTLINED_FUNCTION_0(v16);
  v59 = v18;
  v60 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_139();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62A8, &qword_1BC906918);
  v23 = OUTLINED_FUNCTION_0(v22);
  v57 = v24;
  v58 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62B0, &qword_1BC906920);
  OUTLINED_FUNCTION_0(v30);
  v56 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_39_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62B8, &qword_1BC906928);
  v36 = OUTLINED_FUNCTION_0(v35);
  v68 = v37;
  v69 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v55 - v41;
  v67 = *v3;
  v43 = *(v3 + 8);
  v44 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v44);
  sub_1BC89B738();
  sub_1BC8F8CA4();
  switch(v43)
  {
    case 1:
      sub_1BC89BA38();
      OUTLINED_FUNCTION_66_3();
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      v54 = v58;
      sub_1BC8F89F4();
      v52 = *(v57 + 8);
      v50 = v29;
      goto LABEL_7;
    case 2:
      sub_1BC89B90C();
      OUTLINED_FUNCTION_66_3();
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62F8, &qword_1BC906938);
      sub_1BC89B960();
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_161();
      sub_1BC8F89F4();
      v49 = *(v59 + 8);
      v50 = OUTLINED_FUNCTION_125();
      goto LABEL_8;
    case 3:
      sub_1BC89B7E0();
      v53 = v61;
      OUTLINED_FUNCTION_66_3();
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      v54 = v65;
      sub_1BC8F89F4();
      v52 = *(v63 + 8);
      v50 = v53;
LABEL_7:
      v51 = v54;
LABEL_8:
      v52(v50, v51);
      goto LABEL_9;
    case 4:
      sub_1BC89B78C();
      v45 = v62;
      sub_1BC8F8934();
      (*(v64 + 8))(v45, v66);
      v46 = *(v68 + 8);
      v47 = OUTLINED_FUNCTION_143();
      v48(v47);
      goto LABEL_10;
    default:
      sub_1BC89BA8C();
      OUTLINED_FUNCTION_66_3();
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      sub_1BC8F89F4();
      (*(v56 + 8))(v2, v30);
LABEL_9:
      (*(v68 + 8))(v42, v44);
LABEL_10:
      OUTLINED_FUNCTION_23();
      return;
  }
}

unint64_t sub_1BC89B738()
{
  result = qword_1EBCF62C0;
  if (!qword_1EBCF62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62C0);
  }

  return result;
}

unint64_t sub_1BC89B78C()
{
  result = qword_1EBCF62C8;
  if (!qword_1EBCF62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62C8);
  }

  return result;
}

unint64_t sub_1BC89B7E0()
{
  result = qword_1EBCF62D0;
  if (!qword_1EBCF62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62D0);
  }

  return result;
}

unint64_t sub_1BC89B834()
{
  result = qword_1EBCF62E0;
  if (!qword_1EBCF62E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62D8, &qword_1BC906930);
    sub_1BC89B8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62E0);
  }

  return result;
}

unint64_t sub_1BC89B8B8()
{
  result = qword_1EBCF62E8;
  if (!qword_1EBCF62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62E8);
  }

  return result;
}

unint64_t sub_1BC89B90C()
{
  result = qword_1EBCF62F0;
  if (!qword_1EBCF62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62F0);
  }

  return result;
}

unint64_t sub_1BC89B960()
{
  result = qword_1EBCF6300;
  if (!qword_1EBCF6300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62F8, &qword_1BC906938);
    sub_1BC89B9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6300);
  }

  return result;
}

unint64_t sub_1BC89B9E4()
{
  result = qword_1EBCF6308;
  if (!qword_1EBCF6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6308);
  }

  return result;
}

unint64_t sub_1BC89BA38()
{
  result = qword_1EBCF6310;
  if (!qword_1EBCF6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6310);
  }

  return result;
}

unint64_t sub_1BC89BA8C()
{
  result = qword_1EBCF6318;
  if (!qword_1EBCF6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6318);
  }

  return result;
}

void HistoryChangeEvent.hash(into:)(void *a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      v4 = 1;
      goto LABEL_9;
    case 2:
      MEMORY[0x1BFB2A020](2);

      sub_1BC7FB338(a1, v2);
      return;
    case 3:
      v4 = 3;
      goto LABEL_9;
    case 4:
      MEMORY[0x1BFB2A020](4);
      return;
    default:
      v4 = 0;
LABEL_9:
      MEMORY[0x1BFB2A020](v4);

      sub_1BC7DED54(a1, v2);
      return;
  }
}

uint64_t HistoryChangeEvent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC8F8C04();
  switch(v2)
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      MEMORY[0x1BFB2A020](2);
      sub_1BC7FB338(__src, v1);
      return sub_1BC8F8C64();
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 4:
      MEMORY[0x1BFB2A020](4);
      return sub_1BC8F8C64();
    default:
      v3 = 0;
LABEL_7:
      MEMORY[0x1BFB2A020](v3);
      sub_1BC7DED54(__src, v1);
      return sub_1BC8F8C64();
  }
}

void HistoryChangeEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v116 = v10;
  v12 = v11;
  v112 = v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6320, &qword_1BC906940);
  OUTLINED_FUNCTION_0(v114);
  v108 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v110 = v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6328, &qword_1BC906948);
  OUTLINED_FUNCTION_0(v105);
  v109 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v111 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6330, &qword_1BC906950);
  v25 = OUTLINED_FUNCTION_0(v24);
  v106 = v26;
  v107 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v113 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6338, &qword_1BC906958);
  v32 = OUTLINED_FUNCTION_0(v31);
  v103 = v33;
  v104 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v97 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6340, &qword_1BC906960);
  OUTLINED_FUNCTION_0(v39);
  v102 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_39_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6348, &unk_1BC906968);
  OUTLINED_FUNCTION_0(v44);
  v46 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v97 - v50;
  v53 = v12[3];
  v52 = v12[4];
  v115 = v12;
  v54 = OUTLINED_FUNCTION_12_5();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1BC89B738();
  v56 = v116;
  sub_1BC8F8C84();
  if (v56)
  {
    goto LABEL_9;
  }

  v99 = v39;
  v100 = v38;
  v101 = 0;
  v116 = v46;
  v57 = sub_1BC8F8914();
  sub_1BC7B85D4(v57, 0);
  v61 = v44;
  if (v59 == v60 >> 1)
  {
LABEL_8:
    v68 = sub_1BC8F8624();
    swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v70 = &type metadata for HistoryChangeEvent;
    sub_1BC8F8824();
    sub_1BC8F8614();
    v72 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10(v68);
    (*(v73 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v116 + 8))(v51, v61);
LABEL_9:
    v74 = v115;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (v59 < (v60 >> 1))
  {
    v98 = *(v58 + v59);
    sub_1BC7B85D0(v59 + 1);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      v66 = v112;
      v67 = v101;
      switch(v98)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_1BC89BA38();
          OUTLINED_FUNCTION_48_9();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_73_6();
          v94(v93);
          v95 = OUTLINED_FUNCTION_18_3();
          v96(v95, v44);
          goto LABEL_18;
        case 2:
          LOBYTE(a10) = 2;
          sub_1BC89B90C();
          OUTLINED_FUNCTION_48_9();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62F8, &qword_1BC906938);
          sub_1BC8B1728();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
          goto LABEL_17;
        case 3:
          LOBYTE(a10) = 3;
          sub_1BC89B7E0();
          v80 = v111;
          sub_1BC8F8814();
          if (v67)
          {
            v83 = OUTLINED_FUNCTION_18_3();
            v84(v83, v44);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          v82 = v105;
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
          (*(v109 + 8))(v80, v82);
          v85 = *(v81 + 8);
          v86 = OUTLINED_FUNCTION_97_1();
          v87(v86);
          v79 = a10;
          v74 = v115;
          v66 = v112;
LABEL_20:
          *v66 = v79;
          *(v66 + 8) = v98;
          break;
        case 4:
          sub_1BC89B78C();
          OUTLINED_FUNCTION_48_9();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_73_6();
          v76(v75);
          v77 = OUTLINED_FUNCTION_18_3();
          v78(v77, v44);
          v79 = 0;
          goto LABEL_19;
        default:
          LOBYTE(a10) = 0;
          sub_1BC89BA8C();
          OUTLINED_FUNCTION_48_9();
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
LABEL_17:
          v88 = OUTLINED_FUNCTION_73_6();
          v89(v88);
          v90 = *(v67 + 8);
          v91 = OUTLINED_FUNCTION_97_1();
          v92(v91);
LABEL_18:
          v79 = a10;
LABEL_19:
          v74 = v115;
          goto LABEL_20;
      }

      goto LABEL_10;
    }

    v61 = v44;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BC89C4FC()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1BC8F8C04();
  HistoryChangeEvent.hash(into:)(v3);
  return sub_1BC8F8C64();
}

unint64_t VersionedChange.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_54_8();
  sub_1BC8F85A4();

  v3 = sub_1BC8F8A54();
  MEMORY[0x1BFB29120](v3);

  MEMORY[0x1BFB29120](0x73746E657665202CLL, 0xEA0000000000203ALL);
  v4 = MEMORY[0x1BFB29280](v1, &type metadata for HistoryChangeEvent);
  MEMORY[0x1BFB29120](v4);

  return 0xD000000000000019;
}

uint64_t static VersionedChange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BC7DB990(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC89C65C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC89C720(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1BC89C75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC89C65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC89C784(uint64_t a1)
{
  v2 = sub_1BC8B1800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89C7C0(uint64_t a1)
{
  v2 = sub_1BC8B1800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionedChange.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6378, &qword_1BC906978);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_2();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC8B1800();
  sub_1BC8F8CA4();
  sub_1BC8F8A14();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B1854();
    sub_1BC8F89F4();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_23();
}

void VersionedChange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB2A060](*v0);

  sub_1BC7DF5CC();
}

uint64_t VersionedChange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A060](v1);
  sub_1BC7DF5CC();
  return sub_1BC8F8C64();
}

void VersionedChange.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63A0, &qword_1BC906988);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC8B1800();
  sub_1BC8F8C84();
  if (!v0)
  {
    v14 = sub_1BC8F8904();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B192C();
    sub_1BC8F88F4();
    (*(v7 + 8))(v12, v5);
    v15 = v16[1];
    *v4 = v14;
    v4[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC89CC04()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1BC8F8C04();
  VersionedChange.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC89CC50@<X0>(uint64_t a1@<X8>)
{
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990) - 8);
  v5 = *(*v4 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  sub_1BC7D9558(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v2, &qword_1EBCF63B8, &qword_1BC906990);
  v7 = v4[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
  OUTLINED_FUNCTION_4_1(v8);
  (*(v9 + 32))(a1, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
  OUTLINED_FUNCTION_42(v10);
  return (*(v11 + 8))(v2 + v7);
}

void *sub_1BC89CD6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);

  v4 = sub_1BC7F7F60(v2);
  sub_1BC8ABF4C(&v4);

  return v4;
}

uint64_t sub_1BC89CE14()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  sub_1BC89E278();
  OUTLINED_FUNCTION_27();

  return v2();
}

void HistoryCoalescingManager.__allocating_init(keyDescriptors:messageRequest:callRequest:pageSize:contactStore:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v39 = v3;
  v40 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33_2();
  v13 = sub_1BC8F7334();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v21 = v20 - v19;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v23 = OUTLINED_FUNCTION_25(Request);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  sub_1BC8B3E70(v8, v0, type metadata accessor for MessageStoreFetchRequest);
  v41 = v6;
  (*(v16 + 16))(v21, v6, v13);
  v26 = [objc_allocWithZone(MEMORY[0x1E6993580]) init];
  v27 = qword_1EDC20D78;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDC20D80;
  if (v2)
  {
    swift_retain_n();
    v30 = v2;
  }

  else
  {
    v31 = objc_allocWithZone(MEMORY[0x1E695CE18]);
    swift_retain_n();
    v30 = [v31 init];
  }

  v32 = v2;
  v33 = sub_1BC8B2318(v39, v0, v21, v40, v28, v29, v30);

  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_41_0();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v33;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();

  (*(v16 + 8))(v41, v13);
  OUTLINED_FUNCTION_63_5();
  sub_1BC7C0224();
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC89D13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89DC68(v1);
}

uint64_t *HistoryCoalescingManager.deinit()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver;
  v2 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v5 = v0[29];

  OUTLINED_FUNCTION_63_5();
  sub_1BC7C0224();
  v6 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callRequest;
  v7 = sub_1BC8F7334();
  OUTLINED_FUNCTION_42(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + v1);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson);

  v11 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);

  v12 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask);

  v13 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask);

  sub_1BC7F1790(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, &qword_1EBCF63B8, &qword_1BC906990);
  v14 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HistoryCoalescingManager.__deallocating_deinit()
{
  HistoryCoalescingManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC89D380()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);
  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v6 = 136446210;
    OUTLINED_FUNCTION_9_3();
    *(v6 + 4) = sub_1BC7A9A4C(0xD000000000000014, v7, v8);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    v14 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v16, v17);
  v18 = *(MEMORY[0x1E69E87D8] + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_138_1(v19);
  *v20 = v21;
  v20[1] = sub_1BC89D53C;
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1BC89D53C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC89D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC89D6D4, a3, 0);
}

uint64_t sub_1BC89D6D4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_41_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v7);
  v8 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v8, v9, v7);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  OUTLINED_FUNCTION_41_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v13);
  v14 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v14, v15, v13);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v16, v17);
  v18 = *(MEMORY[0x1E69E8578] + 4);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v2 = v20;
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6D898](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1BC89D850()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC89D94C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E848();
}

uint64_t sub_1BC89D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  sub_1BC7D9558(a1, v22 - v10, &qword_1EBCF63D0, &qword_1BC902140);
  v12 = sub_1BC8F7FC4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1BC7F1790(v11, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1BC8F7F54();
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

uint64_t sub_1BC89DBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89DC80()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);
  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v6 = 136446210;
    OUTLINED_FUNCTION_9_3();
    *(v6 + 4) = sub_1BC7A9A4C(0xD000000000000015, v7, v8);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    v14 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v16, v17);
  v18 = *(MEMORY[0x1E69E87D8] + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_138_1(v19);
  *v20 = v21;
  v20[1] = sub_1BC89DE3C;
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEE6DBF8]();
}
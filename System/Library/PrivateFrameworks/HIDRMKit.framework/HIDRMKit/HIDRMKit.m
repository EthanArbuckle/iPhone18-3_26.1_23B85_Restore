uint64_t sub_25094E52C()
{
  v1 = *v0;
  sub_2509708F4();
  MEMORY[0x2530645D0](v1 + 1);
  return sub_250970914();
}

uint64_t sub_25094E5A4()
{
  v1 = *v0;
  sub_2509708F4();
  MEMORY[0x2530645D0](v1 + 1);
  return sub_250970914();
}

void *sub_25094E5E8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25094E620(void *a1)
{
  v2 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5[3] = type metadata accessor for HIDRMManager();
  v5[4] = &off_2862D9AA0;
  v5[0] = v2;
  sub_25094EBA0(v5, v4);
  swift_beginAccess();

  sub_25094EC04(v4, v1 + 32);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_25094E6AC()
{
  sub_25094ED08(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for HIDRMPolicy.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDRMPolicy.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25094E8D8()
{
  result = qword_27F3DF8A0;
  if (!qword_27F3DF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF8A0);
  }

  return result;
}

uint64_t sub_25094E938()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_250970424();
}

uint64_t sub_25094E984()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_250970414();
}

uint64_t sub_25094E9DC()
{
  sub_2509708F4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_250970414();
  return sub_250970914();
}

uint64_t sub_25094EA44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_250970404();
}

uint64_t sub_25094EB18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25094EBA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25094EC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF8B8, &unk_2509714A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25094ED08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF8B8, &unk_2509714A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25094ED84(uint64_t a1, unint64_t *a2)
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

uint64_t sub_25094EDD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_250970474();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_250970494();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 96);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_25094F274;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_250970484();
  v20 = MEMORY[0x277D84F90];
  sub_25095173C(&qword_27F3DF990, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_25094F0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 104) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_250951258(0, v6[2] + 1, 1, v6);
    *(a1 + 104) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_250951258((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a2;
  v10[5] = a3;
  *(a1 + 104) = v6;
  swift_endAccess();
  if (*(a1 + 141))
  {
    v11 = *(a1 + 142);
    swift_unknownObjectRetain();
    if (v11 == 1)
    {
      sub_250959A40();
      ObjectType = swift_getObjectType();
      v14[0] = *(a1 + 49);
      (*(a3 + 8))(v14, ObjectType, a3);
      swift_beginAccess();
      v13 = *(a1 + 32);
      (*(a3 + 16))(&v13, ObjectType, a3);
    }
  }

  else
  {
    swift_unknownObjectRetain();
    sub_25094F5F4();
  }
}

uint64_t sub_25094F234()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25094F280(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_25094F324(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_250970474();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_250970494();
  v7 = *(v14 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v14);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 96);
  aBlock[4] = sub_25094F5F0;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_3;
  v11 = _Block_copy(aBlock);

  sub_250970484();
  v18 = MEMORY[0x277D84F90];
  sub_25095173C(&qword_27F3DF990, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v10, v6, v11);
  _Block_release(v11);
  (*(v15 + 8))(v6, v3);
  (*(v7 + 8))(v10, v14);

  return sub_250959074(v16, v17);
}

void sub_25094F5F4()
{
  v1 = v0;
  v22 = *MEMORY[0x277D85DE8];
  IONotificationPortSetDispatchQueue(*(v0 + 128), *(v0 + 96));
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v2 = sub_250970454();
  __swift_project_value_buffer(v2, qword_27F3E0430);

  v3 = sub_250970434();
  v4 = sub_250970674();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v0 + 40);

    _os_log_impl(&dword_25094D000, v3, v4, "Setting up busy state monitor for %llx", v5, 0xCu);
    MEMORY[0x253064D90](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 52);
  swift_beginAccess();
  v8 = IOServiceAddInterestNotification(v6, v7, "IOBusyInterest", sub_25094F9B4, v0, (v0 + 136));
  swift_endAccess();
  if (v8)
  {

    v9 = sub_250970434();
    v10 = sub_250970694();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v8;
      *(v11 + 8) = 2048;
      *(v11 + 10) = *(v0 + 40);

      _os_log_impl(&dword_25094D000, v9, v10, "IOServiceAddInterestNotification failed:%d for %llx ", v11, 0x12u);
      MEMORY[0x253064D90](v11, -1, -1);
    }

    else
    {
    }
  }

  v21[0] = 2;
  BusyState = IOServiceGetBusyState(v7, v21);
  if (!BusyState)
  {
    if (!v21[0])
    {
      sub_25094F9C0();
      sub_25094FC64();
      goto LABEL_19;
    }

    v14 = sub_250970434();
    v18 = sub_250970674();
    if (os_log_type_enabled(v14, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v1 + 40);

      _os_log_impl(&dword_25094D000, v14, v18, "Enumeration still in progress for: %llx", v19, 0xCu);
      v17 = v19;
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_19;
  }

  v13 = BusyState;

  v14 = sub_250970434();
  v15 = sub_250970694();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_17;
  }

  v16 = swift_slowAlloc();
  *v16 = 67109376;
  *(v16 + 4) = v13;
  *(v16 + 8) = 2048;
  *(v16 + 10) = *(v1 + 40);

  _os_log_impl(&dword_25094D000, v14, v15, "IOServiceGetBusyState failed:%d for %llx", v16, 0x12u);
  v17 = v16;
LABEL_16:
  MEMORY[0x253064D90](v17, -1, -1);

LABEL_19:
  *(v1 + 141) = 1;
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25094F9C0()
{
  v1 = v0;
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v2 = sub_250970454();
  __swift_project_value_buffer(v2, qword_27F3E0430);

  v3 = sub_250970434();
  v4 = sub_250970674();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 40);

    _os_log_impl(&dword_25094D000, v3, v4, "Enumeration completed for %llx, completing USBHIDRMDevice initialization", v5, 0xCu);
    MEMORY[0x253064D90](v5, -1, -1);
  }

  else
  {
  }

  v6 = sub_25094FEA8(*(v1 + 52));
  v8 = v7;
  swift_beginAccess();
  v9 = *(v1 + 64);
  *(v1 + 56) = v6;
  *(v1 + 64) = v8;

  if (*(v1 + 50) == 1)
  {
    v11 = *(v1 + 64);
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v12 = *(v1 + 56);
    v13 = *(v1 + 24);
    v14 = *(v1 + 64);

    LOBYTE(v13) = sub_250953FB0(v12, v11);

    *(v1 + 120) = v13 & 1;
    if (v13)
    {
      swift_beginAccess();
      *(v1 + 32) = 1;
    }
  }

  else
  {
    *(v1 + 120) = 0;
  }

  sub_250959A40();
  result = swift_beginAccess();
  v15 = *(v1 + 104);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v1 + 104);

    swift_beginAccess();
    v18 = (v15 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      ObjectType = swift_getObjectType();
      v23 = *(v1 + 49);
      v22 = *(v20 + 8);
      swift_unknownObjectRetain();
      v22(&v23, ObjectType, v20);
      v23 = *(v1 + 32);
      (*(v20 + 16))(&v23, ObjectType, v20);
      swift_unknownObjectRelease();
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  *(v1 + 142) = 1;
  return result;
}

uint64_t sub_25094FC64()
{
  v1 = v0;
  if (*(v0 + 128))
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v2 = sub_250970454();
    __swift_project_value_buffer(v2, qword_27F3E0430);

    v3 = sub_250970434();
    v4 = sub_250970674();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 40);

      _os_log_impl(&dword_25094D000, v3, v4, "Destroying busy state monitor notification port for %llx", v5, 0xCu);
      MEMORY[0x253064D90](v5, -1, -1);
    }

    else
    {
    }

    IONotificationPortSetDispatchQueue(*(v1 + 128), 0);
    IONotificationPortDestroy(*(v1 + 128));
    *(v1 + 128) = 0;
  }

  result = swift_beginAccess();
  if (*(v1 + 136))
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v7 = sub_250970454();
    __swift_project_value_buffer(v7, qword_27F3E0430);

    v8 = sub_250970434();
    v9 = sub_250970674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v1 + 40);

      _os_log_impl(&dword_25094D000, v8, v9, "Removing busy state monitor notification for %llx", v10, 0xCu);
      MEMORY[0x253064D90](v10, -1, -1);
    }

    else
    {
    }

    result = IOObjectRelease(*(v1 + 136));
    *(v1 + 136) = 0;
  }

  return result;
}

unint64_t sub_25094FEA8(uint64_t a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v2 = sub_250970504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v111 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2509704F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v102 - v12;
  v14 = sub_250970554();
  v112 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(a1, v14, v112, 0);

  v114 = 0;
  if (CFProperty)
  {
    v117[0] = CFProperty;
    if (swift_dynamicCast())
    {
      v104 = v11;
      v16 = v118;
      v120 = v118;
      v121 = v119;
      v110 = v119;
      sub_2509516E8(v118, v119);
      if (qword_27F3DF808 != -1)
      {
        swift_once();
      }

      v17 = sub_250970454();
      v18 = __swift_project_value_buffer(v17, qword_27F3E0430);
      v19 = sub_250970434();
      v20 = sub_250970674();
      v21 = os_log_type_enabled(v19, v20);
      v109 = v6;
      v108 = v7;
      v107 = v13;
      v106 = v2;
      v105 = v3;
      if (v21)
      {
        v22 = swift_slowAlloc();
        *&v103 = swift_slowAlloc();
        v118 = v103;
        *v22 = 136315138;
        swift_beginAccess();
        v24 = v120;
        v23 = v121;
        sub_2509516E8(v120, v121);
        v25 = v18;
        v26 = sub_250970384();
        v28 = v27;
        sub_250951694(v24, v23);
        v29 = v26;
        v18 = v25;
        v30 = sub_25095DE44(v29, v28, &v118);

        *(v22 + 4) = v30;
        _os_log_impl(&dword_25094D000, v19, v20, "USB signature found, hash: %s", v22, 0xCu);
        v31 = v103;
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x253064D90](v31, -1, -1);
        MEMORY[0x253064D90](v22, -1, -1);
      }

      sub_250951694(v16, v110);

      v32 = v112;
      v33 = MEMORY[0x253064720](a1, "IOService", 1, &v114);
      if (v33 || !v114)
      {
        v34 = sub_250970434();
        v35 = sub_250970694();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 67109376;
          *(v36 + 4) = v33 == 0;
          *(v36 + 8) = 1024;
          swift_beginAccess();
          *(v36 + 10) = v114 == 0;
          _os_log_impl(&dword_25094D000, v34, v35, "IORegistryEntryCreateIterator return: %{BOOL}d, Does iterator equal IO_OBJECT_NULL: %{BOOL}d", v36, 0xEu);
          MEMORY[0x253064D90](v36, -1, -1);
        }

        swift_beginAccess();
        v37 = v120;
        v38 = v121;
        sub_2509516E8(v120, v121);
        v115 = sub_250956E4C(v37, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
        sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
        v39 = sub_250970544();
        sub_250951694(v37, v38);

        goto LABEL_33;
      }

      v50 = IOIteratorNext(v114);
      if (v50)
      {
        v52 = v50;
        *&v51 = 136315138;
        v103 = v51;
        v110 = "re";
        do
        {
          if (IOObjectConformsTo(v52, "IOHIDInterface"))
          {
            v53 = sub_250970554();
            v54 = IORegistryEntryCreateCFProperty(v52, v53, v32, 0);

            if (v54)
            {
              v117[0] = v54;
              if (swift_dynamicCast())
              {
                v55 = v118;
                v56 = v119;
                sub_2509516E8(v118, v119);
                v57 = sub_250970434();
                v58 = sub_250970674();
                sub_250951694(v55, v56);
                if (os_log_type_enabled(v57, v58))
                {
                  v59 = swift_slowAlloc();
                  v60 = swift_slowAlloc();
                  v118 = v60;
                  *v59 = v103;
                  sub_2509516E8(v55, v56);
                  v61 = sub_250970384();
                  v62 = v18;
                  v64 = v63;
                  sub_250951694(v55, v56);
                  v65 = sub_25095DE44(v61, v64, &v118);
                  v18 = v62;

                  *(v59 + 4) = v65;
                  _os_log_impl(&dword_25094D000, v57, v58, "Report descriptor found, hash: %s", v59, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v60);
                  MEMORY[0x253064D90](v60, -1, -1);
                  v32 = v112;
                  MEMORY[0x253064D90](v59, -1, -1);
                }

                swift_beginAccess();
                sub_2509703A4();
                swift_endAccess();
                sub_250951694(v55, v56);
              }
            }

            sub_250950D9C(v52);
          }

          IOObjectRelease(v52);
          v52 = IOIteratorNext(v114);
        }

        while (v52);
      }

      v66 = sub_250970434();
      v67 = sub_250970684();
      v68 = os_log_type_enabled(v66, v67);
      v102[1] = v18;
      if (v68)
      {
        v69 = swift_slowAlloc();
        *&v113 = swift_slowAlloc();
        v118 = v113;
        *v69 = 136315138;
        swift_beginAccess();
        v70 = v120;
        v71 = v121;
        sub_2509516E8(v120, v121);
        v39 = 0;
        v115 = sub_250956E4C(v70, v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
        sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
        v72 = sub_250970544();
        v74 = v73;
        sub_250951694(v70, v71);

        v75 = sub_25095DE44(v72, v74, &v118);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_25094D000, v66, v67, "Hash data collection complete, before hashing: %s", v69, 0xCu);
        v76 = v113;
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x253064D90](v76, -1, -1);
        MEMORY[0x253064D90](v69, -1, -1);
      }

      else
      {

        v39 = 0;
      }

      v44 = v109;
      v77 = v108;
      v78 = v107;
      v79 = v111;
      swift_beginAccess();
      v80 = v120;
      v81 = v121;
      sub_2509516E8(v120, v121);
      sub_25095173C(&qword_27F3DF9A8, MEMORY[0x277CC5540]);
      v82 = v106;
      sub_2509704E4();
      sub_2509516E8(v80, v81);
      sub_25095138C(v80, v81);
      sub_250951694(v80, v81);
      sub_2509704D4();
      sub_250951694(v80, v81);
      (*(v105 + 8))(v79, v82);
      (*(v77 + 16))(v104, v78, v44);
      sub_25095173C(&qword_27F3DF9B0, MEMORY[0x277CC5290]);
      sub_250970624();
      v83 = v115;
      v84 = v116;
      v85 = *(v115 + 16);
      v86 = MEMORY[0x277D84F90];
      if (v116 == v85)
      {
LABEL_30:

        v115 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
        sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
        v39 = sub_250970544();
        v88 = v87;

        v89 = sub_250970434();
        v90 = sub_250970684();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v115 = v92;
          *v91 = 136315138;
          *(v91 + 4) = sub_25095DE44(v39, v88, &v115);
          _os_log_impl(&dword_25094D000, v89, v90, "After hashing: %s", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v92);
          MEMORY[0x253064D90](v92, -1, -1);
          MEMORY[0x253064D90](v91, -1, -1);
        }

        (*(v108 + 8))(v107, v109);
        IOObjectRelease(v114);
LABEL_33:
        sub_250951694(v120, v121);
        goto LABEL_34;
      }

      v113 = xmmword_250971500;
      v95 = v116;
      while ((v84 & 0x8000000000000000) == 0)
      {
        if (v95 >= *(v83 + 16))
        {
          goto LABEL_45;
        }

        v96 = *(v83 + 32 + v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFB00, &qword_250971570);
        v97 = swift_allocObject();
        *(v97 + 16) = v113;
        *(v97 + 56) = MEMORY[0x277D84B78];
        *(v97 + 64) = MEMORY[0x277D84BC0];
        *(v97 + 32) = v96;
        v98 = sub_250970574();
        v44 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_25095114C(0, *(v86 + 2) + 1, 1, v86);
        }

        v39 = *(v86 + 2);
        v100 = *(v86 + 3);
        if (v39 >= v100 >> 1)
        {
          v86 = sub_25095114C((v100 > 1), v39 + 1, 1, v86);
        }

        ++v95;
        *(v86 + 2) = v39 + 1;
        v101 = &v86[16 * v39];
        *(v101 + 4) = v98;
        *(v101 + 5) = v44;
        if (v85 == v95)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  LODWORD(v117[0]) = a1;
  v40 = sub_250958B70(v117, 4);
  v42 = v41;
  v118 = sub_250956E4C(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
  sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
  v39 = sub_250970544();
  v44 = v43;
  sub_250951694(v40, v42);

  if (qword_27F3DF808 != -1)
  {
LABEL_46:
    swift_once();
  }

  v45 = sub_250970454();
  __swift_project_value_buffer(v45, qword_27F3E0430);

  v46 = sub_250970434();
  v47 = sub_250970674();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v118 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_25095DE44(v39, v44, &v118);
    _os_log_impl(&dword_25094D000, v46, v47, "USB signature not found, service hash: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x253064D90](v49, -1, -1);
    MEMORY[0x253064D90](v48, -1, -1);
  }

LABEL_34:
  v93 = *MEMORY[0x277D85DE8];
  return v39;
}

void sub_250950D9C(io_registry_entry_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  child = 0;
  if (*(v1 + 72))
  {
    IORegistryEntryGetChildEntry(a1, "IOService", &child);
    v2 = child;
    if (child)
    {
      v3 = sub_250970554();
      v4 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(v2, v3, *MEMORY[0x277CBECE8], 0);

      if (CFProperty)
      {
        *(v1 + 72) = 0;
        if (qword_27F3DF808 != -1)
        {
          swift_once();
        }

        v6 = sub_250970454();
        __swift_project_value_buffer(v6, qword_27F3E0430);
        v7 = sub_250970434();
        v8 = sub_250970674();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_9;
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Keyboard interface found, updated uiType to .Keyboard";
LABEL_8:
        _os_log_impl(&dword_25094D000, v7, v8, v10, v9, 2u);
        MEMORY[0x253064D90](v9, -1, -1);
LABEL_9:

        goto LABEL_14;
      }

      if (*(v1 + 72) != 1)
      {
        v11 = child;
        v12 = sub_250970554();
        v13 = IORegistryEntryCreateCFProperty(v11, v12, v4, 0);

        v14 = child;
        v15 = sub_250970554();
        v16 = IORegistryEntryCreateCFProperty(v14, v15, v4, 0);

        LODWORD(v15) = child;
        v17 = sub_250970554();
        v18 = IORegistryEntryCreateCFProperty(v15, v17, v4, 0);

        if (v13 || v16 || v18)
        {
          *(v1 + 72) = 1;
          if (qword_27F3DF808 != -1)
          {
            swift_once();
          }

          v20 = sub_250970454();
          __swift_project_value_buffer(v20, qword_27F3E0430);
          v7 = sub_250970434();
          v8 = sub_250970674();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_9;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "Pointer interface found, updated uiType to .Pointer";
          goto LABEL_8;
        }
      }
    }
  }

LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t USBHIDRMDevice.__deallocating_deinit()
{
  v0 = HIDRMDevice.deinit();

  return MEMORY[0x2821FE8D8](v0, 143, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_25095114C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9B8, &qword_250971578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_250951258(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9C0, &qword_250971580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9C8, &qword_250971588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25095138C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_250970504();
      sub_25095173C(&qword_27F3DF9A8, MEMORY[0x277CC5540]);
      result = sub_2509704C4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_25095156C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25095156C(uint64_t a1, uint64_t a2)
{
  result = sub_250970334();
  if (!result || (result = sub_250970354(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_250970344();
      sub_250970504();
      sub_25095173C(&qword_27F3DF9A8, MEMORY[0x277CC5540]);
      return sub_2509704C4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25095164C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_250951694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2509516E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25095173C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_250951788(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != -536870624)
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v6 = sub_250970454();
    __swift_project_value_buffer(v6, qword_27F3E0430);
    v7 = sub_250970434();
    v8 = sub_250970694();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109376;
      *(v9 + 4) = a2;
      *(v9 + 8) = 1024;
      *(v9 + 10) = -536870624;
      _os_log_impl(&dword_25094D000, v7, v8, "Interest notification type: %u does not equal %u", v9, 0xEu);
      MEMORY[0x253064D90](v9, -1, -1);
    }
  }

  if (a1)
  {
    v10 = qword_27F3DF808;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_250970454();
    __swift_project_value_buffer(v11, qword_27F3E0430);

    v12 = sub_250970434();
    v13 = sub_250970674();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = *(a1 + 40);

      *(v14 + 12) = 2048;
      *(v14 + 14) = a3;
      _os_log_impl(&dword_25094D000, v12, v13, "New busy state notification for %llx: %lu", v14, 0x16u);
      MEMORY[0x253064D90](v14, -1, -1);

      if (!*(a1 + 40))
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!*(a1 + 40))
      {
LABEL_17:

        return;
      }
    }

    if (!a3)
    {
      sub_25094F9C0();
      sub_25094FC64();
    }

    goto LABEL_17;
  }
}

void sub_2509519F0(void *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 integerValueForField_];
  v4 = [a1 integerValueForField_];
  if ([a1 integerValueForField_])
  {
    v5 = v4 == 7;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || (v3 - 99) <= 0xFFFFFFFFFFFFFFF5 && (v3 - 40) < 0xFFFFFFFFFFFFFFDCLL)
  {
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = sub_250952DA0(v3);
  v9 = v8;
  v10 = *(v1 + 88);
  v11 = [v10 userAuthorizationRequests];
  sub_250952524();
  v12 = sub_250970644();

  v13 = v12 >> 62;
  if (v9)
  {
    if (v13)
    {
      v14 = sub_250970824();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {

      goto LABEL_24;
    }

    v15 = sub_250951DAC(v7, v9);

    if ((v15 & 0x10000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v17 = *(v1 + 96);
    v28[0] = 0;
    if ([v10 handleInputCharacter:v15 forUserAuthorizationRequest:v17 error:v28])
    {
      goto LABEL_20;
    }

    v10 = v28[0];
    v1 = sub_250970374();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  if (v13)
  {
    v18 = sub_250970824();
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = *(v1 + 96);
    v28[0] = 0;
    v20 = [v10 handleInputCharacter:0 forUserAuthorizationRequest:v19 error:v28];
    v16 = v28[0];
    if (v20)
    {
LABEL_20:
      v21 = *MEMORY[0x277D85DE8];

      goto _objc_retain_x1;
    }

LABEL_34:
    v26 = v16;
    sub_250970374();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
_objc_retain_x1:
    MEMORY[0x2821F9840]();
    return;
  }

LABEL_24:
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v22 = sub_250970454();
  __swift_project_value_buffer(v22, qword_27F3E0430);
  oslog = sub_250970434();
  v23 = sub_250970694();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_25094D000, oslog, v23, "postEvent failed: userAuthorizationRequests is empty", v24, 2u);
    MEMORY[0x253064D90](v24, -1, -1);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_250951DAC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v3 = sub_2509705F4();
    }

    else
    {
      sub_250970794();
      v3 = sub_250970924();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 16);
}

uint64_t sub_250951E28(unint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v6 = sub_250970454();
  __swift_project_value_buffer(v6, qword_27F3E0430);
  v7 = a2;
  v8 = sub_250970434();
  v9 = sub_250970674();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 134218242;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9E0, "\\4");
    v12 = sub_250970754();
    v14 = sub_25095DE44(v12, v13, v25);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_25094D000, v8, v9, "Auth request completed, response: %ld, error: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x253064D90](v11, -1, -1);
    MEMORY[0x253064D90](v10, -1, -1);
  }

  if (a1 <= 6)
  {
    if (((1 << a1) & 0x54) != 0)
    {
      swift_beginAccess();
      result = sub_250952780(a3 + 48, v25);
      v16 = v26;
      if (v26)
      {
        v17 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v17 + 8))(1, v16, v17);
        return __swift_destroy_boxed_opaque_existential_1(v25);
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (((1 << a1) & 0x28) != 0)
    {
      swift_beginAccess();
      result = sub_250952780(a3 + 48, v25);
      v18 = v26;
      if (v26)
      {
        v19 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v19 + 8))(0, v18, v19);
        return __swift_destroy_boxed_opaque_existential_1(v25);
      }

      goto LABEL_18;
    }
  }

  v20 = sub_250970434();
  v21 = sub_250970674();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25094D000, v20, v21, "Cancelling deviceUI", v22, 2u);
    MEMORY[0x253064D90](v22, -1, -1);
  }

  swift_beginAccess();
  result = sub_250952780(a3 + 48, v25);
  v23 = v26;
  if (v26)
  {
    v24 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v24 + 16))(v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_250952174()
{
  v1 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 88);
  v3 = [v2 userAuthorizationRequests];
  sub_250952524();
  v4 = sub_250970644();

  if (v4 >> 62)
  {
    v5 = sub_250970824();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v6 = sub_250970454();
    __swift_project_value_buffer(v6, qword_27F3E0430);
    v7 = sub_250970434();
    v8 = sub_250970674();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25094D000, v7, v8, "Removing user auth request", v9, 2u);
      MEMORY[0x253064D90](v9, -1, -1);
    }

    v10 = *(v1 + 96);
    v18[0] = 0;
    if ([v2 removeUserAuthorizationRequest:v10 error:v18])
    {
      v11 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v16 = v18[0];
      sub_250970374();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    MEMORY[0x2821F9840]();
  }

  else
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v12 = sub_250970454();
    __swift_project_value_buffer(v12, qword_27F3E0430);
    oslog = sub_250970434();
    v13 = sub_250970694();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25094D000, oslog, v13, "Cancel failed: userAuthorizationRequests is empty", v14, 2u);
      MEMORY[0x253064D90](v14, -1, -1);
    }

    v15 = *MEMORY[0x277D85DE8];
  }
}

void sub_250952460()
{
  v1 = *(v0 + 96);
}

uint64_t sub_250952490()
{
  v1 = *(v0 + 24);

  sub_250952718(v0 + 48);
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_250952524()
{
  result = qword_27F3DF9D0;
  if (!qword_27F3DF9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3DF9D0);
  }

  return result;
}

uint64_t sub_250952570(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_250970604();
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
    v5 = MEMORY[0x2530642A0](15, a1 >> 16);
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

uint64_t sub_2509525EC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [objc_opt_self() sharedManager];
  *(v3 + 88) = v7;
  v8 = qword_27F3DF810;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F3E0448;
  [v9 setCompletionQueue_];

  v11 = objc_allocWithZone(MEMORY[0x277D0EF70]);
  v12 = sub_250970554();
  v13 = [v11 initWithDeviceName:v12 requiresPairing:a3 != 1];

  *(v3 + 96) = v13;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 40) = v10;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v14 = v10;
  return v3;
}

uint64_t sub_250952718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9D8, "Z4");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_250952780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9D8, "Z4");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2509527F0()
{
  v1 = *v0;
  sub_2509708F4();
  MEMORY[0x2530645D0](v1);
  return sub_250970914();
}

uint64_t sub_250952864()
{
  v1 = *v0;
  sub_2509708F4();
  MEMORY[0x2530645D0](v1);
  return sub_250970914();
}

uint64_t sub_2509528A8()
{
  v1 = *(v0 + 24);

  sub_250952718(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_250952954()
{
  result = qword_27F3DF9E8[0];
  if (!qword_27F3DF9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F3DF9E8);
  }

  return result;
}

uint64_t sub_2509529A8()
{
  v0 = sub_250970614();
  v4 = sub_250952A28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_250952A28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_250970584();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_250970764();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25095E284(v9, 0);
  v12 = sub_250952B80(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_250970584();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2509707C4();
LABEL_4:

  return sub_250970584();
}

unint64_t sub_250952B80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_250952570(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2509705E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2509707C4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_250952570(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2509705C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_250952DA0(uint64_t a1)
{
  if ((a1 - 99) <= 0xFFFFFFFFFFFFFFF5 && (a1 - 40) < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  result = sub_2509708C4();
  if ((v2 & 0x2000000000000000) != 0)
  {
    if ((v2 & 0xF00000000000000) != 0)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0xFFFFFFFFFFFFLL) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    v3 = sub_2509529A8();

    return v3;
  }

  return result;
}

IONotificationPortRef sub_250952E88(uint64_t a1)
{
  *(v1 + 88) = 0;
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("AppleCredentialManager");
  *(v1 + 72) = IOServiceGetMatchingService(v3, v4);
  result = IONotificationPortCreate(v3);
  if (result)
  {
    *(v1 + 80) = result;
    *(v1 + 16) = 2;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 24) = a1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_250952F0C(void *a1)
{
  v2 = v1;
  v4 = sub_250970474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_250970494();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = type metadata accessor for HIDRMManager();
  v31 = &off_2862D9AA0;
  aBlock[0] = v14;
  sub_25094EBA0(aBlock, v33);
  swift_beginAccess();

  sub_25094EC04(v33, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v15 = *(v2 + 80);
  IONotificationPortSetDispatchQueue(v15, *(v2 + 24));
  v16 = *(v2 + 72);
  swift_beginAccess();
  v17 = IOServiceAddInterestNotification(v15, v16, "IOGeneralInterest", sub_250953310, v2, (v2 + 88));
  swift_endAccess();
  if (v17)
  {
    v28 = v10;
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v18 = sub_250970454();
    __swift_project_value_buffer(v18, qword_27F3E0430);
    v19 = sub_250970434();
    v20 = sub_250970694();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27 = v9;
      v22 = v5;
      v23 = v21;
      *v21 = 67109120;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_25094D000, v19, v20, "IOServiceAddInterestNotification:%d", v21, 8u);
      v24 = v23;
      v5 = v22;
      v9 = v27;
      MEMORY[0x253064D90](v24, -1, -1);
    }

    v10 = v28;
  }

  v31 = sub_250953A54;
  v32 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  v30 = &block_descriptor_0;
  v25 = _Block_copy(aBlock);

  sub_250970484();
  v33[0] = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_250953AC8();
  sub_250970774();
  MEMORY[0x2530643B0](0, v13, v8, v25);
  _Block_release(v25);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_250953310(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == -536870608 && result != 0)
  {

    sub_250953364();
  }

  return result;
}

void sub_250953364()
{
  v1 = v0;
  v46 = *MEMORY[0x277D85DE8];
  v42 = 2;
  v2 = ACMTRMConfigProxy_PolicyMode_Get(&v42);
  if (v2)
  {
    v3 = v2;
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v4 = sub_250970454();
    __swift_project_value_buffer(v4, qword_27F3E0430);
    v5 = sub_250970434();
    v6 = sub_250970694();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_25094D000, v5, v6, "ACMTRMConfigProxy_PolicyMode_Get:%d", v7, 8u);
      MEMORY[0x253064D90](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v9 = sub_250970454();
    __swift_project_value_buffer(v9, qword_27F3E0430);
    v10 = sub_250970434();
    v11 = sub_250970674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      swift_beginAccess();
      *(v12 + 4) = v42;
      _os_log_impl(&dword_25094D000, v10, v11, "ACMTRMConfigProxy_PolicyMode_Get value:%u", v12, 8u);
      MEMORY[0x253064D90](v12, -1, -1);
    }

    swift_beginAccess();
    if (v42 <= 5)
    {
      v8 = (0x10202010002uLL >> (8 * v42));
    }

    else
    {
      v8 = 2;
    }
  }

  v13 = *(v1 + 72);
  v14 = sub_250970554();
  CFProperty = IORegistryEntryCreateCFProperty(v13, v14, *MEMORY[0x277CBECE8], 0);

  if (CFProperty)
  {
    v44[0] = CFProperty;
    if (swift_dynamicCast())
    {
      v16 = v43;
      if (qword_27F3DF808 != -1)
      {
        swift_once();
      }

      v17 = sub_250970454();
      __swift_project_value_buffer(v17, qword_27F3E0430);
      v18 = sub_250970434();
      v19 = sub_250970674();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = v16;
        _os_log_impl(&dword_25094D000, v18, v19, "HIDRM_PolicyEnabled value:%{BOOL}d", v20, 8u);
        MEMORY[0x253064D90](v20, -1, -1);
      }

      if (v16)
      {
        v8 = v8;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  if (*(v1 + 16) == v8)
  {
    goto LABEL_47;
  }

  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v21 = sub_250970454();
  __swift_project_value_buffer(v21, qword_27F3E0430);

  v22 = sub_250970434();
  v23 = sub_250970674();
  v41 = v8 + 1;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = *(v1 + 16) + 1;

    *(v24 + 12) = 2048;
    *(v24 + 14) = v8 + 1;
    _os_log_impl(&dword_25094D000, v22, v23, "Update policy state from %ld to %ld", v24, 0x16u);
    MEMORY[0x253064D90](v24, -1, -1);
  }

  else
  {
  }

  *(v1 + 16) = v8;
  swift_beginAccess();
  sub_250953CC0(v1 + 32, v44);
  if (v45)
  {
    v25 = *__swift_project_boxed_opaque_existential_1(v44, v45);
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = v8 + 1;
    if (v26 >> 62)
    {
      v28 = sub_250970824();
      if (v28)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
LABEL_32:
        if (v28 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v28; ++i)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            MEMORY[0x253064480](i, v26);
          }

          else
          {
            v32 = *(v26 + 8 * i + 32);
          }

          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v34 = Strong;
            if (v27 != 2 && *(Strong + 50) == 1)
            {
              v35 = v8;
              v36 = sub_250970434();
              v37 = sub_250970674();
              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                *v38 = 0;
                _os_log_impl(&dword_25094D000, v36, v37, "Switching out of EnableWithCache policy state; invalidating cache", v38, 2u);
                v39 = v38;
                v27 = v41;
                MEMORY[0x253064D90](v39, -1, -1);
              }

              v30 = *(v34 + 24);
              swift_beginAccess();
              v31 = *(v30 + 16);
              *(v30 + 16) = MEMORY[0x277D84F98];

              sub_2509545E0();
              v8 = v35;
            }

            *(v34 + 50) = v8;
            sub_250959A40();
          }
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_47:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

uint64_t sub_2509539F0()
{
  sub_25094ED08(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 92, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_250953A70()
{
  result = qword_27F3DF990;
  if (!qword_27F3DF990)
  {
    sub_250970474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF990);
  }

  return result;
}

unint64_t sub_250953AC8()
{
  result = qword_27F3DF998;
  if (!qword_27F3DF998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3DFAD0, &qword_250971510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF998);
  }

  return result;
}

uint64_t sub_250953B2C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t ACMTRMConfigProxy_PolicyMode_Get(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v4 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -5;
  v11 = 14;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __ACMTRMEnv_Get_block_invoke;
  v8 = &unk_2796A2D68;
  v9 = &v12;
  v10 = &v4;
  v2 = ACMKernelControl(18);
  if (v2)
  {
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v2 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
    if (!v2)
    {
      *a1 = v4;
    }
  }

  return v2;
}

uint64_t sub_250953CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF8B8, &unk_2509714A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_250953D30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_250953D60@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_250953E28()
{
  MEMORY[0x253064DE0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_250953EA8()
{
  result = sub_250970554();
  qword_27F3E0418 = result;
  return result;
}

void *sub_250953F18()
{
  v0[2] = sub_250956980(MEMORY[0x277D84F90]);
  v0[3] = 0x416DA9C000000000;
  v0[4] = 0;
  Instance = HIDPreferencesCreateInstance();
  if (Instance)
  {
    Instance = swift_unknownObjectRetain();
  }

  v2 = v0[4];
  v0[4] = Instance;
  swift_unknownObjectRelease();
  v3 = sub_250954F6C();
  swift_beginAccess();
  v4 = v0[2];
  v0[2] = v3;

  return v0;
}

BOOL sub_250953FB0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v6 = sub_250970454();
  __swift_project_value_buffer(v6, qword_27F3E0430);

  v7 = sub_250970434();
  v8 = sub_250970684();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_25095DE44(a1, a2, &v19);
    *(v9 + 12) = 1024;
    v11 = sub_250970554();
    swift_beginAccess();
    v12 = *(v3 + 16);

    v13 = sub_2509541FC(v11, v12);

    if (v13)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(v9 + 14) = v14;

    _os_log_impl(&dword_25094D000, v7, v8, "Cache contains %s: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x253064D90](v10, -1, -1);
    MEMORY[0x253064D90](v9, -1, -1);
  }

  else
  {
  }

  v15 = sub_250970554();
  swift_beginAccess();
  v16 = *(v3 + 16);

  v17 = sub_2509541FC(v15, v16);

  if (v17)
  {
  }

  return v17 != 0;
}

void *sub_2509541FC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_250970834();

    if (v4)
    {
      type metadata accessor for CFDate(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2509556B4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_2509542B0(uint64_t a1, unint64_t a2)
{
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v4 = sub_250970454();
  __swift_project_value_buffer(v4, qword_27F3E0430);

  v5 = sub_250970434();
  v6 = sub_250970684();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_25095DE44(a1, a2, &v11);
    _os_log_impl(&dword_25094D000, v5, v6, "Cache remove %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x253064D90](v8, -1, -1);
    MEMORY[0x253064D90](v7, -1, -1);
  }

  v9 = sub_250970554();
  swift_beginAccess();
  v10 = sub_25095584C(v9);
  swift_endAccess();

  sub_2509545E0();
}

uint64_t sub_250954450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_250970554();
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_2509541FC(v6, v7);

  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = v6;
  v11 = sub_2509703B4();
  swift_beginAccess();
  v12 = *(v4 + 16);
  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v4 + 16);
    sub_2509560A8(v11, v10, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v20;

    v9 = swift_endAccess();
LABEL_9:
    v16 = *(v4 + 16);
    MEMORY[0x28223BE20](v9);
    v19[2] = a3;
    v19[3] = v4;

    v17 = sub_250954C58(sub_250956A78, v19, v16);

    v18 = *(v4 + 16);
    *(v4 + 16) = v17;
  }

  if (v12 < 0)
  {
    v13 = *(v4 + 16);
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_250970824();
  if (!__OFADD__(result, 1))
  {
    *(v4 + 16) = sub_250955998(v13, result + 1);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_2509545E0()
{
  v1 = v0;
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v2 = sub_250970454();
  __swift_project_value_buffer(v2, qword_27F3E0430);

  v3 = sub_250970434();
  v4 = sub_250970674();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v0 + 16);
    type metadata accessor for CFString(0);
    type metadata accessor for CFDate(0);
    sub_25094EB18(&qword_27F3DF8B0);

    v8 = sub_250970534();
    v10 = v9;

    v11 = sub_25095DE44(v8, v10, &v23);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25094D000, v3, v4, "Publishing cache with HIDPrefs: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x253064D90](v6, -1, -1);
    MEMORY[0x253064D90](v5, -1, -1);
  }

  if (!*(v0 + 32))
  {
    v18 = sub_250970434();
    v19 = sub_250970674();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25094D000, v18, v19, "publish: HIDPreferences instance not initialized; using non-instance API", v20, 2u);
      MEMORY[0x253064D90](v20, -1, -1);
    }

    if (qword_27F3DF7F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = *(v1 + 16);
    type metadata accessor for CFString(0);
    type metadata accessor for CFDate(0);
    sub_25094EB18(&qword_27F3DF8B0);

    v22 = sub_250970514();

    if (qword_27F3DF7F8 != -1)
    {
      swift_once();
    }

    if (qword_27F3DF800 != -1)
    {
      swift_once();
    }

    v17 = sub_250970554();
    HIDPreferencesSet();

    goto LABEL_23;
  }

  v12 = qword_27F3DF7F0;
  v13 = *(v1 + 32);
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = *(v1 + 16);
  type metadata accessor for CFString(0);
  type metadata accessor for CFDate(0);
  sub_25094EB18(&qword_27F3DF8B0);

  v15 = sub_250970514();

  if (qword_27F3DF7F8 != -1)
  {
    swift_once();
  }

  if (qword_27F3DF800 != -1)
  {
    swift_once();
  }

  v16 = sub_250970554();
  HIDPreferencesSetForInstance();
  swift_unknownObjectRelease();

  if (*(v1 + 32))
  {
    swift_unknownObjectRetain();
    v17 = sub_250970554();
    HIDPreferencesSynchronizeForInstance();
    swift_unknownObjectRelease();
LABEL_23:

    return;
  }

  __break(1u);
}

BOOL sub_250954B4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2509703F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  sub_2509703C4();
  sub_2509703E4();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  return v13 < *(a4 + 24);
}

uint64_t sub_250954C58(uint64_t (*a1)(id *, void **), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v32 = MEMORY[0x277D84F98];
    sub_250970814();
    v6 = sub_250970844();
    if (v6)
    {
      v8 = v7;
      v9 = v6;
      type metadata accessor for CFString(0);
      v10 = v9;
      v5 = MEMORY[0x277D84F98];
      do
      {
        v31 = v10;
        swift_dynamicCast();
        v30[9] = v8;
        type metadata accessor for CFDate(0);
        swift_dynamicCast();
        if (!v30[0])
        {
          break;
        }

        v12 = v31;
        v13 = v30[0];
        v14 = v12;
        v15 = a1(v30, &v31);
        if (v3)
        {
          sub_250956A98();

          return v5;
        }

        v16 = v15;

        if (v16)
        {
          v17 = *(v5 + 16);
          if (*(v5 + 24) <= v17)
          {
            sub_250955C00(v17 + 1, 1);
          }

          v5 = v32;
          v18 = *(v32 + 40);
          sub_2509708F4();
          sub_25094EB18(&qword_27F3DFA78);
          sub_250970414();
          result = sub_250970914();
          v20 = v5 + 64;
          v21 = -1 << *(v5 + 32);
          v22 = result & ~v21;
          v23 = v22 >> 6;
          if (((-1 << v22) & ~*(v5 + 64 + 8 * (v22 >> 6))) != 0)
          {
            v24 = __clz(__rbit64((-1 << v22) & ~*(v5 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = 0;
            v26 = (63 - v21) >> 6;
            do
            {
              if (++v23 == v26 && (v25 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v27 = v23 == v26;
              if (v23 == v26)
              {
                v23 = 0;
              }

              v25 |= v27;
              v28 = *(v20 + 8 * v23);
            }

            while (v28 == -1);
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          }

          *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
          *(*(v5 + 48) + 8 * v24) = v13;
          *(*(v5 + 56) + 8 * v24) = v14;
          ++*(v5 + 16);
        }

        else
        {
        }

        v10 = sub_250970844();
        v8 = v11;
      }

      while (v10);
    }

    sub_250956A98();
  }

  else
  {
    sub_250956370(a1, a2, a3);
    v5 = v29;
  }

  return v5;
}

uint64_t sub_250954F6C()
{
  v0 = sub_250956980(MEMORY[0x277D84F90]);
  if (sub_250955388())
  {
    v1 = swift_unknownObjectRetain();
    v2 = CFGetTypeID(v1);
    if (v2 == CFDictionaryGetTypeID())
    {
      type metadata accessor for CFDictionary(0);
      swift_unknownObjectRetain();
      swift_dynamicCastUnknownClassUnconditional();
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      type metadata accessor for CFString(0);
      type metadata accessor for CFDate(0);
      sub_25094EB18(&qword_27F3DF8B0);
      result = sub_250970524();
      __break(1u);
      return result;
    }

    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v8 = sub_250970454();
    __swift_project_value_buffer(v8, qword_27F3E0430);
    v9 = sub_250970434();
    v10 = sub_250970694();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25094D000, v9, v10, "Value type not dictionary; readCacheFromHIDPrefs failed", v11, 2u);
      MEMORY[0x253064D90](v11, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v4 = sub_250970454();
    __swift_project_value_buffer(v4, qword_27F3E0430);
    v5 = sub_250970434();
    v6 = sub_250970694();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25094D000, v5, v6, "HIDPreferencesCopy returned nil", v7, 2u);
      MEMORY[0x253064D90](v7, -1, -1);
    }
  }

  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v12 = sub_250970454();
  __swift_project_value_buffer(v12, qword_27F3E0430);
  v13 = sub_250970434();
  v14 = sub_250970674();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    type metadata accessor for CFString(0);
    type metadata accessor for CFDate(0);
    sub_25094EB18(&qword_27F3DF8B0);

    v17 = sub_250970534();
    v19 = v18;

    v20 = sub_25095DE44(v17, v19, &v21);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_25094D000, v13, v14, "readCacheFromPrefs: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x253064D90](v16, -1, -1);
    MEMORY[0x253064D90](v15, -1, -1);
  }

  return v0;
}

uint64_t sub_250955388()
{
  if (*(v0 + 32))
  {
    v1 = qword_27F3DF7F0;
    swift_unknownObjectRetain();
    if (v1 != -1)
    {
      swift_once();
    }

    if (qword_27F3DF7F8 != -1)
    {
      swift_once();
    }

    if (qword_27F3DF800 != -1)
    {
      swift_once();
    }

    v2 = sub_250970554();
    v3 = HIDPreferencesCopyForInstance();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v4 = sub_250970454();
    __swift_project_value_buffer(v4, qword_27F3E0430);
    v5 = sub_250970434();
    v6 = sub_250970694();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25094D000, v5, v6, "copyCacheDictFromPrefs: HIDPreferences instance not initialized; using non-instance API", v7, 2u);
      MEMORY[0x253064D90](v7, -1, -1);
    }

    if (qword_27F3DF7F0 != -1)
    {
      swift_once();
    }

    if (qword_27F3DF7F8 != -1)
    {
      swift_once();
    }

    if (qword_27F3DF800 != -1)
    {
      swift_once();
    }

    v2 = sub_250970554();
    v3 = HIDPreferencesCopy();
  }

  return v3;
}

uint64_t sub_250955650()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_2509556B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2509708F4();
  type metadata accessor for CFString(0);
  sub_25094EB18(&qword_27F3DFA78);
  sub_250970414();
  v4 = sub_250970914();

  return sub_250955754(a1, v4);
}

unint64_t sub_250955754(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_25094EB18(&qword_27F3DFA78);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_250970404();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25095584C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_2509556B4(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_250955EC4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_250956210();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_250970834();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_250970824();
  v8 = sub_250955998(v4, v7);

  v9 = sub_2509556B4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_250955EC4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_250955998(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFA70, "03");
    v2 = sub_250970894();
    v17 = v2;
    sub_250970814();
    if (sub_250970844())
    {
      type metadata accessor for CFString(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for CFDate(0);
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_250955C00(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_2509708F4();
        sub_25094EB18(&qword_27F3DFA78);
        sub_250970414();
        result = sub_250970914();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (sub_250970844());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_250955C00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFA70, "03");
  v35 = a2;
  result = sub_250970884();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_2509708F4();
      type metadata accessor for CFString(0);
      sub_25094EB18(&qword_27F3DFA78);
      sub_250970414();
      result = sub_250970914();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_250955EC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_250970784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2509708F4();
      type metadata accessor for CFString(0);
      sub_25094EB18(&qword_27F3DFA78);
      v11 = v10;
      sub_250970414();
      v12 = sub_250970914();

      v13 = v12 & v7;
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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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
}

uint64_t sub_2509560A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2509556B4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_250955C00(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2509556B4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for CFString(0);
        sub_2509708E4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_250956210();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

id sub_250956210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFA70, "03");
  v2 = *v0;
  v3 = sub_250970874();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void sub_250956370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      sub_250956680(v11, v7, a3, v5);
      MEMORY[0x253064D90](v11, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v12 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_2509564F0(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2509564F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *, void **))
{
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
    v26 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 56);
    v29 = *(*(a3 + 48) + 8 * v13);
    v15 = v13;
    v28 = *(v14 + 8 * v13);
    v16 = v28;
    v17 = v29;
    v18 = v16;
    v19 = a4(&v29, &v28);

    if (v27)
    {
      return;
    }

    v8 = v26;
    if (v19)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        sub_250956710(a1, a2, v23, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_250956680(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *, void **))
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

    sub_2509564F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_250956710(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFA70, "03");
  result = sub_2509708A4();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    sub_2509708F4();
    type metadata accessor for CFString(0);
    sub_25094EB18(&qword_27F3DFA78);
    v20 = v17;
    v21 = v18;
    sub_250970414();
    result = sub_250970914();
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
    *(*(v9 + 48) + 8 * v25) = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
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

unint64_t sub_250956980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFA70, "03");
    v3 = sub_2509708A4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2509556B4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_250956AA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2509703F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v11 = sub_250970454();
  __swift_project_value_buffer(v11, qword_27F3E0430);

  v12 = sub_250970434();
  v13 = sub_250970684();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_25095DE44(a1, a2, &v23);
    _os_log_impl(&dword_25094D000, v12, v13, "Cache add %s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x253064D90](v15, -1, -1);
    MEMORY[0x253064D90](v14, -1, -1);
  }

  sub_2509703D4();
  v16 = sub_250970554();
  v17 = sub_2509703B4();
  swift_beginAccess();
  v18 = *(v3 + 16);
  if ((v18 & 0xC000000000000001) == 0)
  {
    goto LABEL_11;
  }

  if (v18 < 0)
  {
    v19 = *(v3 + 16);
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = sub_250970824();
  if (!__OFADD__(v20, 1))
  {
    *(v3 + 16) = sub_250955998(v19, v20 + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 16);
    sub_2509560A8(v17, v16, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v22;

    swift_endAccess();
    (*(v7 + 8))(v10, v6);
    sub_2509545E0();
    return;
  }

  __break(1u);
}

uint64_t static HIDRMManager.getServiceHash(service:)(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  __src = a1;
  v1 = sub_250958AB8(&__src, &v8);
  v3 = v2;
  sub_250956E4C(v1, v2 & 0xFFFFFFFFFFFFFFLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
  sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
  v4 = sub_250970544();
  sub_250951694(v1, v3 & 0xFFFFFFFFFFFFFFLL);

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_250956E4C(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    v33 = a2 >> 62;
    sub_25095C508(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_250970334();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_250970354();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_250970334();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_250970354();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFB00, &qword_250971570);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_250971500;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_250970574();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_25095C508((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2509571C8()
{
  v0 = sub_250970454();
  __swift_allocate_value_buffer(v0, qword_27F3E0430);
  __swift_project_value_buffer(v0, qword_27F3E0430);

  return sub_250970444();
}

uint64_t sub_250957250()
{
  v9[0] = sub_2509706C4();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2509706B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_250970494();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_250958D00(0, &qword_27F3DFAE0, 0x277D85C78);
  sub_250970484();
  v9[1] = MEMORY[0x277D84F90];
  sub_250958D48(&qword_27F3DFAE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFAF0, &qword_250971818);
  sub_25095164C(&qword_27F3DFAF8, &qword_27F3DFAF0, &qword_250971818);
  sub_250970774();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v9[0]);
  result = sub_2509706F4();
  qword_27F3E0448 = result;
  return result;
}

uint64_t sub_2509574C8()
{
  v0 = type metadata accessor for Factory();
  result = swift_allocObject();
  qword_27F3E0468 = v0;
  unk_27F3E0470 = &off_2862D9ED8;
  qword_27F3E0450 = result;
  return result;
}

uint64_t sub_250957514()
{
  sub_2509588F0();
}

void *sub_25095753C()
{
  v1 = v0;
  v2 = sub_250970474();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_250970494();
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_250970704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  swift_weakInit();
  v1[4] = 0;
  sub_250958D00(0, &qword_27F3DFAA8, 0x277D85CA0);
  aBlock[0] = v13;
  sub_250958D48(&qword_27F3DFAB0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFAB8, &qword_250971810);
  sub_25095164C(&unk_27F3DFAC0, &qword_27F3DFAB8, &qword_250971810);
  sub_250970774();
  if (qword_27F3DF810 != -1)
  {
    swift_once();
  }

  v14 = qword_27F3E0448;
  v15 = sub_250970714();
  (*(v9 + 8))(v12, v8);
  v1[7] = v15;
  if (qword_27F3DF818 != -1)
  {
    swift_once();
  }

  type metadata accessor for HIDRMDeviceCache();
  swift_allocObject();
  v16 = sub_250953F18();
  v17 = v1[4];
  v1[4] = v16;

  v18 = type metadata accessor for HIDRMOSLogIn();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 72) = 0;
  v22 = OBJC_IVAR____TtC8HIDRMKit12HIDRMOSLogIn_logger;
  v23 = qword_27F3DF820;
  v24 = v14;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_250970454();
  v26 = __swift_project_value_buffer(v25, qword_27F3E0480);
  (*(*(v25 - 8) + 16))(v21 + v22, v26, v25);
  *(v21 + 16) = 0;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0;
  *(v21 + 24) = v24;
  v1[5] = v21;
  type metadata accessor for HIDRMOSPolicy();
  swift_allocObject();
  v1[6] = sub_250952E88(v24);
  v27 = v1[7];
  swift_getObjectType();
  aBlock[4] = sub_250958CE0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_1;
  v28 = _Block_copy(aBlock);

  sub_250970484();
  v29 = v33;
  sub_250957EB8();
  sub_250970724();
  _Block_release(v28);
  (*(v35 + 8))(v29, v36);
  (*(v32 + 8))(v7, v34);

  return v1;
}

uint64_t sub_250957A6C(uint64_t a1)
{
  v35 = sub_2509703F4();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
LABEL_29:
    result = sub_250970824();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v38 = v6 & 0xC000000000000001;
      v31 = v6 & 0xFFFFFFFFFFFFFF8;
      v32 = (v2 + 8);

      v8 = 0;
      *&v9 = 136315138;
      v29 = v9;
      v36 = v7;
      v30 = a1;
      v33 = v6;
      while (1)
      {
        if (v38)
        {
          v11 = MEMORY[0x253064480](v8, v6);
          v2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v8 >= *(v31 + 16))
          {
            goto LABEL_28;
          }

          v11 = *(v6 + 8 * v8 + 32);

          v2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          result = swift_beginAccess();
          v14 = *(v13 + 64);
          if (v14)
          {
            v37 = v11;
            if (!*(a1 + 32))
            {
              __break(1u);
              return result;
            }

            v15 = *(v13 + 56);
            v16 = qword_27F3DF808;
            v17 = *(a1 + 32);

            if (v16 != -1)
            {
              swift_once();
            }

            v18 = sub_250970454();
            __swift_project_value_buffer(v18, qword_27F3E0430);

            v19 = sub_250970434();
            v20 = sub_250970684();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v39 = v22;
              *v21 = v29;
              *(v21 + 4) = sub_25095DE44(v15, v14, &v39);
              _os_log_impl(&dword_25094D000, v19, v20, "Cache checkIn %s)", v21, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v22);
              v23 = v22;
              a1 = v30;
              MEMORY[0x253064D90](v23, -1, -1);
              MEMORY[0x253064D90](v21, -1, -1);
            }

            v6 = v33;
            v10 = v34;
            sub_2509703D4();
            sub_250954450(v15, v14, v10);
            (*v32)(v10, v35);
            sub_2509545E0();

            v7 = v36;
          }

          else
          {
            if (qword_27F3DF808 != -1)
            {
              swift_once();
            }

            v24 = sub_250970454();
            __swift_project_value_buffer(v24, qword_27F3E0430);
            v25 = sub_250970434();
            v26 = sub_250970674();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&dword_25094D000, v25, v26, "Attempt to check in device but hash is not yet calculated", v27, 2u);
              v28 = v27;
              v7 = v36;
              MEMORY[0x253064D90](v28, -1, -1);
            }
          }
        }

        else
        {
        }

        ++v8;
        if (v2 == v7)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_250957EB8()
{
  sub_250970474();
  sub_250958D48(&qword_27F3DF990, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  return sub_250970774();
}

uint64_t sub_250957FA4()
{
  v1 = v0;
  v2 = sub_250970464();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2509704B4();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  v12 = type metadata accessor for HIDRMManager();
  v21 = v12;
  v22 = &off_2862D9A88;
  v20[0] = v1;
  v13 = *(*v11 + 168);

  v13(v20);

  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = *(v1 + 48);
  v21 = v12;
  v22 = &off_2862D9AA0;
  v20[0] = v1;
  v15 = *(*v14 + 168);

  v15(v20);

  __swift_destroy_boxed_opaque_existential_1(v20);
  v16 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  sub_2509704A4();
  *v6 = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D85168], v2);
  MEMORY[0x253064410](v10, v6, ObjectType, 86400.0);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v19);
  return sub_250970734();
}

uint64_t sub_250958234(unsigned int a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_250970824())
  {

    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253064480](v6, v4);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

LABEL_11:
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        if (*(Strong + 52) == a1)
        {

          return Strong;
        }
      }

      ++v6;
      if (v7 == i)
      {

        goto LABEL_15;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    v8 = *(v4 + 8 * v6 + 32);

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_11;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_15:
  if (qword_27F3DF818 != -1)
  {
    swift_once();
  }

  type metadata accessor for USBHIDRMDevice();
  v10 = swift_allocObject();
  *(v10 + 128) = 0;
  *(v10 + 135) = 0;
  v11 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  *(v10 + 128) = v11;
  if (v11)
  {
    v12 = sub_250958F30(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFAA0, &qword_250971808);
    swift_allocObject();
    swift_weakInit();
    Strong = v12;
    swift_weakAssign();
    v13 = swift_beginAccess();
    MEMORY[0x253064300](v13);
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_250970654();
    }

    sub_250970664();
    swift_endAccess();
    return Strong;
  }

  else
  {
    result = sub_250970854();
    __break(1u);
  }

  return result;
}

uint64_t sub_2509584F0(uint64_t a1)
{
  if (qword_27F3DF810 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for HIDRMDevice();
  sub_2509706D4();
  return v3;
}

uint64_t sub_2509585C8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_250970824();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253064480](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_weakLoadStrong())
      {

        sub_2509707D4();
        v7 = *(v11 + 16);
        sub_2509707F4();
        sub_250970804();
        sub_2509707E4();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  v9 = *(v1 + 16);
  *(v1 + 16) = v8;
}

uint64_t static HIDRMManager.getServiceForServiceID(serviceid:)(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);
  v2 = *MEMORY[0x277CD2898];

  return IOServiceGetMatchingService(v2, v1);
}

uint64_t static HIDRMManager.getServiceParent(service:className:)(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  iterator = 0;
  v3 = MEMORY[0x253064720](a1, "IOService", 3, &iterator);
  v4 = 0;
  v5 = iterator;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = iterator == 0;
  }

  if (!v6)
  {
    while (1)
    {
      v7 = IOIteratorNext(v5);
      v4 = v7;
      if (!v7)
      {
        break;
      }

      if (IOObjectConformsTo(v7, a2))
      {
        IOObjectRetain(v4);
        IOObjectRelease(v4);
        break;
      }

      IOObjectRelease(v4);
      v5 = iterator;
    }

    IOObjectRelease(iterator);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void *HIDRMManager.deinit()
{
  v1 = v0[2];

  swift_weakDestroy();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HIDRMManager.__deallocating_deinit()
{
  v1 = v0[2];

  swift_weakDestroy();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2509588F0()
{
  result = qword_27F3E0478;
  if (!qword_27F3E0478)
  {
    type metadata accessor for HIDRMManager();
    v1 = swift_allocObject();
    sub_25095753C();
    qword_27F3E0478 = v1;

    sub_250957FA4();

    result = qword_27F3E0478;
    if (!qword_27F3E0478)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s8HIDRMKit12HIDRMManagerC21getServiceDescription7serviceSSs6UInt32V_tFZ_0(uint64_t a1)
{
  v2 = sub_250970554();
  v3 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(a1, v2, *MEMORY[0x277CBECE8], 0);

  if (CFProperty && (swift_dynamicCast() & 1) != 0)
  {
    return v9;
  }

  v5 = sub_250970554();
  v6 = IORegistryEntryCreateCFProperty(a1, v5, v3, 0);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  v8 = swift_slowAlloc();
  if (MEMORY[0x253064740](a1, v8))
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return sub_2509705A4();
  }
}

uint64_t sub_250958AB8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_250958B70(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_250958AB8(a1, &a1[a2]);
  }

  v3 = sub_250970364();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_250970324();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_250970394();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_250958C20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_250958234(v3);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_250958D00(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_250958D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_250958DF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69766F72707041;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6465696E6544;
    }

    else
    {
      v5 = 0x6576697463616E49;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465776F6C6C41;
    }

    else
    {
      v5 = 0x6E69766F72707041;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6544;
  if (a2 != 2)
  {
    v8 = 0x6576697463616E49;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x6465776F6C6C41;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2509708D4();
  }

  return v11 & 1;
}

uint64_t sub_250958F30(unsigned int a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 49) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2;
  *(v1 + 104) = MEMORY[0x277D84F90];
  *(v1 + 112) = sub_2509588F0();
  *(v1 + 120) = 0;
  *(v1 + 52) = a1;
  v3 = qword_27F3DF810;

  if (v3 != -1)
  {
    swift_once();
    v4 = *(v1 + 112);
  }

  v5 = qword_27F3E0448;
  *(v1 + 96) = qword_27F3E0448;
  v6 = v4[4];
  if (!v6)
  {
    __break(1u);
  }

  *(v1 + 24) = v6;
  *(v1 + 48) = *(v4[5] + 16);
  *(v1 + 50) = *(v4[6] + 16);
  v13[0] = 0;
  v7 = *(v1 + 52);
  v8 = v5;

  if (IORegistryEntryGetRegistryEntryID(v7, v13))
  {
    v9 = a1;
    v13[0] = a1;
  }

  else
  {
    v9 = v13[0];
  }

  *(v1 + 40) = v9;
  *(v1 + 80) = _s8HIDRMKit12HIDRMManagerC21getServiceDescription7serviceSSs6UInt32V_tFZ_0(*(v1 + 52));
  *(v1 + 88) = v10;
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_250959074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_250970474();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_250970494();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 96);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_25095C130;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_250970484();
  v20 = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t HIDRMDevice.deinit()
{
  v1 = v0;
  v2 = sub_250970474();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_250970494();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v10 = sub_250970454();
  __swift_project_value_buffer(v10, qword_27F3E0430);

  v11 = sub_250970434();
  v12 = sub_250970674();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v1 + 40);

    _os_log_impl(&dword_25094D000, v11, v12, "HIDRMDevice deinit for device: %llx", v13, 0xCu);
    MEMORY[0x253064D90](v13, -1, -1);

    v14 = *(v1 + 16);
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = *(v1 + 16);
  if (v14)
  {
LABEL_7:
    v15 = *(*v14 + 160);

    v15(v16);

    v17 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

LABEL_8:
  v18 = *(v1 + 96);
  aBlock[4] = sub_25095C294;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_3_0;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  sub_250970484();
  v31 = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v9, v5, v19);
  _Block_release(v19);

  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v9, v29);
  v21 = *(v1 + 16);

  v22 = *(v1 + 24);

  v23 = *(v1 + 64);

  v24 = *(v1 + 88);

  v25 = *(v1 + 104);

  v26 = *(v1 + 112);

  return v1;
}

uint64_t sub_250959718@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_25095975C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_2509597F0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_25095983C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void sub_2509598E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v3 + 32 + 16 * v5);
  while (1)
  {
    if (v4 == v5)
    {

      v14 = *(v1 + 104);
      *(v1 + 104) = v6;

      LOBYTE(v15) = 3;
      sub_25095AE20(&v15);
      return;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    ++v5;
    v8 = v7 + 2;
    v9 = *v7;
    v7 += 2;
    if (v9 == a1)
    {
      v10 = *(v8 - 1);
      swift_unknownObjectRetain();
      v15 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25095C528(0, *(v6 + 16) + 1, 1);
        v6 = v15;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25095C528((v11 > 1), v12 + 1, 1);
        v6 = v15;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_250959A40()
{
  v1 = v0;
  v2 = sub_2509703F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v7 = 0x65727574706143;
    v8 = sub_250970454();
    v9 = __swift_project_value_buffer(v8, qword_27F3E0430);
    swift_retain_n();
    v77 = v9;
    v10 = sub_250970434();
    v11 = sub_250970684();
    if (os_log_type_enabled(v10, v11))
    {
      v75 = v3;
      v76 = v2;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v80[0] = v13;
      *v12 = 134219010;
      *(v12 + 4) = *(v1 + 40);
      *(v12 + 12) = 2080;
      swift_beginAccess();
      v14 = 0xE900000000000067;
      v15 = 0x6E69766F72707041;
      v16 = 0xE600000000000000;
      v17 = 0x6465696E6544;
      if (*(v1 + 32) != 2)
      {
        v17 = 0x6576697463616E49;
        v16 = 0xE800000000000000;
      }

      if (*(v1 + 32))
      {
        v15 = 0x6465776F6C6C41;
        v14 = 0xE700000000000000;
      }

      if (*(v1 + 32) <= 1u)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      if (*(v1 + 32) <= 1u)
      {
        v19 = v14;
      }

      else
      {
        v19 = v16;
      }

      v20 = sub_25095DE44(v18, v19, v80);

      *(v12 + 14) = v20;
      *(v12 + 22) = 2080;
      if (*(v1 + 48))
      {
        v21 = 0x754F646567676F4CLL;
      }

      else
      {
        v21 = 0x6E49646567676F4CLL;
      }

      if (*(v1 + 48))
      {
        v22 = 0xE900000000000074;
      }

      else
      {
        v22 = 0xE800000000000000;
      }

      v23 = sub_25095DE44(v21, v22, v80);

      *(v12 + 24) = v23;
      *(v12 + 32) = 2048;
      v24 = *(v1 + 50);

      *(v12 + 34) = v24 + 1;

      *(v12 + 42) = 2080;
      v25 = 0xE700000000000000;
      v26 = 0x65727574706143;
      if (*(v1 + 49) != 1)
      {
        v26 = 0x776F6C6C41;
        v25 = 0xE500000000000000;
      }

      if (*(v1 + 49))
      {
        v27 = v26;
      }

      else
      {
        v27 = 0x7265746C6946;
      }

      if (*(v1 + 49))
      {
        v28 = v25;
      }

      else
      {
        v28 = 0xE600000000000000;
      }

      v29 = sub_25095DE44(v27, v28, v80);

      *(v12 + 44) = v29;
      _os_log_impl(&dword_25094D000, v10, v11, "(HIDRMDevice updateState) device: %llx  state: %s, login state: %s, policy state: %ld, filter state: %s", v12, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x253064D90](v13, -1, -1);
      MEMORY[0x253064D90](v12, -1, -1);

      v7 = 0x65727574706143;
      v3 = v75;
      v2 = v76;
    }

    else
    {
    }

    swift_beginAccess();
    if (*(v1 + 32) <= 1u)
    {
      if (!*(v1 + 32))
      {
        if ((*(v1 + 48) & 1) == 0)
        {
          v34 = sub_2509708D4();

          if ((v34 & 1) == 0 && *(v1 + 50) != 2)
          {
            v35 = 0xE700000000000000;

            v36 = 1;
            v37 = 0x65727574706143;
            goto LABEL_71;
          }

          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (*(v1 + 50) != 1)
      {
LABEL_56:
        v42 = 0;
        goto LABEL_59;
      }

      v43 = *(v1 + 64);
      if (v43)
      {
        v44 = *(v1 + 56);
        v45 = *(v1 + 24);
        v46 = *(v1 + 64);

        sub_250956AA0(v44, v43);
LABEL_49:
        v42 = 0;
        goto LABEL_55;
      }

      goto LABEL_95;
    }

    if (*(v1 + 32) == 2)
    {
      if (*(v1 + 50) == 1)
      {
        v38 = *(v1 + 64);
        if (v38)
        {
          v39 = *(v1 + 56);
          v40 = *(v1 + 24);
          v41 = *(v1 + 64);

          sub_2509542B0(v39, v38);
          v42 = 1;
LABEL_55:

          goto LABEL_59;
        }

        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v42 = 1;
    }

    else
    {
      if (*(v1 + 50) == 1)
      {
        v47 = *(v1 + 64);
        if (v47)
        {
          v48 = *(v1 + 24);
          v49 = *(v1 + 56);
          v50 = *(v1 + 64);

          v51 = sub_250970434();
          v52 = sub_250970684();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v76 = v2;
            v54 = v53;
            v55 = swift_slowAlloc();
            v75 = v3;
            v56 = v55;
            v79[0] = v55;
            *v54 = 136315138;
            *(v54 + 4) = sub_25095DE44(v49, v47, v79);
            _os_log_impl(&dword_25094D000, v51, v52, "Cache checkIn %s)", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v3 = v75;
            MEMORY[0x253064D90](v56, -1, -1);
            v57 = v54;
            v2 = v76;
            MEMORY[0x253064D90](v57, -1, -1);
          }

          v7 = 0x65727574706143;
          sub_2509703D4();
          sub_250954450(v49, v47, v6);
          (*(v3 + 8))(v6, v2);
          sub_2509545E0();
          v42 = 1;
          goto LABEL_55;
        }

LABEL_96:
        __break(1u);
        return;
      }

      v42 = 1;
    }

LABEL_59:
    v58 = sub_2509708D4();

    if ((v58 & 1) == 0 && *(v1 + 16))
    {
      sub_25095B1C8();
    }

    v59 = v42 == 0;
    if (v42)
    {
      v36 = 0;
    }

    else
    {
      v36 = 2;
    }

    if (v59)
    {
      v37 = 0x776F6C6C41;
    }

    else
    {
      v37 = 0x7265746C6946;
    }

    if (v59)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE600000000000000;
    }

LABEL_71:
    if (*(v1 + 49))
    {
      if (*(v1 + 49) == 1)
      {
        v60 = 0xE700000000000000;
        if (v37 != 0x65727574706143)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v60 = 0xE500000000000000;
        if (v37 != 0x776F6C6C41)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      v60 = 0xE600000000000000;
      if (v37 != 0x7265746C6946)
      {
LABEL_80:
        v61 = sub_2509708D4();

        if ((v61 & 1) == 0)
        {
          *(v1 + 49) = v36;
          swift_beginAccess();
          v62 = *(v1 + 104);
          v63 = *(v62 + 16);
          if (v63)
          {

            v64 = (v62 + 40);
            do
            {
              v65 = *(v64 - 1);
              v66 = *v64;
              ObjectType = swift_getObjectType();
              LOBYTE(v78) = v36;
              v68 = *(v66 + 8);
              swift_unknownObjectRetain();
              v68(&v78, ObjectType, v66);
              swift_unknownObjectRelease();
              v64 += 2;
              --v63;
            }

            while (v63);
          }

          v69 = sub_250970434();
          v70 = sub_250970684();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v78 = v72;
            *v71 = 136315138;
            if (v36 == 2)
            {
              v73 = 0xE500000000000000;
              v7 = 0x776F6C6C41;
            }

            else if (v36 == 1)
            {
              v73 = 0xE700000000000000;
            }

            else
            {
              v73 = 0xE600000000000000;
              v7 = 0x7265746C6946;
            }

            v74 = sub_25095DE44(v7, v73, &v78);

            *(v71 + 4) = v74;
            _os_log_impl(&dword_25094D000, v69, v70, "HIDRMDevice new filter state: %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x253064D90](v72, -1, -1);
            MEMORY[0x253064D90](v71, -1, -1);
          }
        }

        return;
      }
    }

    if (v35 == v60)
    {

      return;
    }

    goto LABEL_80;
  }

  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v30 = sub_250970454();
  __swift_project_value_buffer(v30, qword_27F3E0430);

  v31 = sub_250970434();
  v32 = sub_250970674();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v1 + 40);

    _os_log_impl(&dword_25094D000, v31, v32, "Attempt to update state for device: %llx but hash is not yet calculated", v33, 0xCu);
    MEMORY[0x253064D90](v33, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25095A454(char a1)
{
  v2 = v1;
  if (qword_27F3E0478 || (type metadata accessor for HIDRMManager(), swift_allocObject(), qword_27F3E0478 = sub_25095753C(), , , sub_250957FA4(), result = , qword_27F3E0478))
  {
    v5 = v1[10];
    v6 = v2[11];
    if (!swift_weakLoadStrong())
    {
      v7 = qword_27F3DF818;

      if (v7 != -1)
      {
        swift_once();
      }

      if (qword_27F3DF810 != -1)
      {
        swift_once();
      }

      type metadata accessor for HIDRMOSDeviceUI();
      swift_allocObject();

      v8 = sub_2509525EC(v5, v6, a1);
      swift_weakAssign();

      if (qword_27F3DF808 != -1)
      {
        swift_once();
      }

      v9 = sub_250970454();
      __swift_project_value_buffer(v9, qword_27F3E0430);

      v10 = sub_250970434();
      v11 = sub_250970674();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v2[5];

        _os_log_impl(&dword_25094D000, v10, v11, "HIDRMDevice creating UI for %llx", v12, 0xCu);
        MEMORY[0x253064D90](v12, -1, -1);
      }

      else
      {
      }

      sub_25095C788(v13, v8);

      v14 = v2[2];
      v2[2] = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25095A6B8()
{
  v1 = sub_250970474();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_250970494();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 96);
  aBlock[4] = sub_25095C424;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_6;
  v10 = _Block_copy(aBlock);

  sub_250970484();
  v14 = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_25095A93C(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32) > 1u || *(v1 + 32))
  {
    v3 = sub_2509708D4();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    return sub_25095A454(*(v1 + 72));
  }

  v6 = *(*v5 + 144);
  v7 = *(v1 + 16);

  v6(a1);
}

void sub_25095AA74(void *a1)
{
  v2 = v1;
  v4 = sub_250970474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_250970494();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v2[8])
  {
    v22[1] = v2[12];
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = a1;
    aBlock[4] = sub_25095C46C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25094F280;
    aBlock[3] = &block_descriptor_12;
    v15 = _Block_copy(aBlock);
    v22[0] = v9;
    v16 = v15;

    v17 = a1;
    sub_250970484();
    v22[2] = MEMORY[0x277D84F90];
    sub_250953A70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
    sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
    sub_250970774();
    MEMORY[0x2530643B0](0, v13, v8, v16);
    _Block_release(v16);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v22[0]);
  }

  else
  {
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v18 = sub_250970454();
    __swift_project_value_buffer(v18, qword_27F3E0430);

    v19 = sub_250970434();
    v20 = sub_250970674();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v2[5];

      _os_log_impl(&dword_25094D000, v19, v20, "Attempt to post event for device: %llx but hash is not yet calculated", v21, 0xCu);
      MEMORY[0x253064D90](v21, -1, -1);

      return;
    }
  }
}

void sub_25095AE20(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if ((sub_250958DF4(*(v1 + 32), v2) & 1) == 0)
  {
    *(v1 + 32) = v2;
    swift_beginAccess();
    v3 = *(v1 + 104);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v1 + 104);

      v6 = (v3 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        ObjectType = swift_getObjectType();
        v11 = v2;
        v10 = *(v8 + 16);
        swift_unknownObjectRetain();
        v10(&v11, ObjectType, v8);
        swift_unknownObjectRelease();
        v6 += 2;
        --v4;
      }

      while (v4);
    }
  }

  sub_250959A40();
}

uint64_t sub_25095AF20(char *a1)
{
  v3 = sub_250970474();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_250970494();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v1 + 96);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v11;
  aBlock[4] = sub_25095C4CC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_18;
  v14 = _Block_copy(aBlock);

  sub_250970484();
  v19 = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
  sub_250970774();
  MEMORY[0x2530643B0](0, v10, v6, v14);
  _Block_release(v14);
  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

void sub_25095B1C8()
{
  if (*(v0 + 16))
  {
    v1 = v0;
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v2 = sub_250970454();
    __swift_project_value_buffer(v2, qword_27F3E0430);

    v3 = sub_250970434();
    v4 = sub_250970674();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 40);

      _os_log_impl(&dword_25094D000, v3, v4, "HIDRMDevice tearing down UI for device: %llx", v5, 0xCu);
      MEMORY[0x253064D90](v5, -1, -1);
    }

    else
    {
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = *(*v6 + 160);
      v8 = *(v1 + 16);

      v7(v9);

      v10 = *(v1 + 16);
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25095B344(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

HIDRMKit::HIDRMDevice::FilterState_optional __swiftcall HIDRMDevice.FilterState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2509708B4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HIDRMDevice.FilterState.rawValue.getter()
{
  v1 = 0x65727574706143;
  if (*v0 != 1)
  {
    v1 = 0x776F6C6C41;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746C6946;
  }
}

uint64_t sub_25095B46C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65727574706143;
  if (v2 != 1)
  {
    v4 = 0x776F6C6C41;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265746C6946;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65727574706143;
  if (*a2 != 1)
  {
    v8 = 0x776F6C6C41;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265746C6946;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2509708D4();
  }

  return v11 & 1;
}

uint64_t sub_25095B564()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

uint64_t sub_25095B600()
{
  *v0;
  *v0;
  sub_250970594();
}

uint64_t sub_25095B688()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

void sub_25095B72C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65727574706143;
  if (v2 != 1)
  {
    v5 = 0x776F6C6C41;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265746C6946;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HIDRMKit::HIDRMDevice::DeviceState_optional __swiftcall HIDRMDevice.DeviceState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2509708B4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HIDRMDevice.DeviceState.rawValue.getter()
{
  v1 = 0x6E69766F72707041;
  v2 = 0x6465696E6544;
  if (*v0 != 2)
  {
    v2 = 0x6576697463616E49;
  }

  if (*v0)
  {
    v1 = 0x6465776F6C6C41;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25095B868()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

uint64_t sub_25095B92C()
{
  *v0;
  *v0;
  *v0;
  sub_250970594();
}

uint64_t sub_25095B9DC()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

void sub_25095BAA8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69766F72707041;
  v4 = 0xE600000000000000;
  v5 = 0x6465696E6544;
  if (*v1 != 2)
  {
    v5 = 0x6576697463616E49;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6465776F6C6C41;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25095BB30(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t HIDRMDevice.description.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_25095BBC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v4 = sub_250970474();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_250970494();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = *(v2 + 52);
  v12 = sub_250958B70(v38, 4);
  v14 = v13;
  aBlock[0] = sub_250956E4C(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFA90, &qword_250971568);
  sub_25095164C(&qword_27F3DF9A0, &unk_27F3DFA90, &qword_250971568);
  v15 = sub_250970544();
  v17 = v16;
  sub_250951694(v12, v14);

  swift_beginAccess();
  v18 = *(v3 + 64);
  *(v3 + 56) = v15;
  *(v3 + 64) = v17;

  if (*(v3 + 50) != 1)
  {
    *(v3 + 120) = 0;
LABEL_6:
    v24 = *(v3 + 96);
    v25 = swift_allocObject();
    v26 = v31;
    v27 = v32;
    v25[2] = v3;
    v25[3] = v27;
    v25[4] = v26;
    aBlock[4] = sub_25095C9AC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25094F280;
    aBlock[3] = &block_descriptor_25;
    v28 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_250970484();
    v36 = MEMORY[0x277D84F90];
    sub_250953A70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
    sub_25095164C(&qword_27F3DF998, &unk_27F3DFAD0, &qword_250971510);
    sub_250970774();
    MEMORY[0x2530643B0](0, v11, v7, v28);
    _Block_release(v28);
    (*(v35 + 8))(v7, v4);
    (*(v33 + 8))(v11, v34);

    v29 = *MEMORY[0x277D85DE8];
    return result;
  }

  v20 = *(v3 + 64);
  if (v20)
  {
    v21 = *(v3 + 56);
    v22 = *(v3 + 24);
    v23 = *(v3 + 64);

    LOBYTE(v22) = sub_250953FB0(v21, v20);

    *(v3 + 120) = v22 & 1;
    if (v22)
    {
      swift_beginAccess();
      *(v3 + 32) = 1;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_25095BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 104) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_250951258(0, v6[2] + 1, 1, v6);
    *(a1 + 104) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_250951258((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a2;
  v10[5] = a3;
  *(a1 + 104) = v6;
  swift_endAccess();
  swift_unknownObjectRetain();
  sub_250959A40();
  ObjectType = swift_getObjectType();
  v14[0] = *(a1 + 49);
  (*(a3 + 8))(v14, ObjectType, a3);
  swift_beginAccess();
  v13 = *(a1 + 32);
  return (*(a3 + 16))(&v13, ObjectType, a3);
}

void sub_25095C130()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2509598E0(v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25095C170(uint64_t result)
{
  if (!*(result + 16))
  {
    v1 = result;
    if (qword_27F3DF808 != -1)
    {
      swift_once();
    }

    v2 = sub_250970454();
    __swift_project_value_buffer(v2, qword_27F3E0430);

    v3 = sub_250970434();
    v4 = sub_250970674();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 40);

      _os_log_impl(&dword_25094D000, v3, v4, "HIDRMDevice initiating approval for %llx", v5, 0xCu);
      MEMORY[0x253064D90](v5, -1, -1);
    }

    else
    {
    }

    return sub_25095A454(1);
  }

  return result;
}

uint64_t sub_25095C294()
{
  sub_2509588F0();

  sub_2509585C8();
}

uint64_t HIDRMDevice.__deallocating_deinit()
{
  HIDRMDevice.deinit();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

void sub_25095C308(char a1)
{
  v2 = *v1;
  if (a1)
  {
    v5 = 2;
    v3 = &v5;
  }

  else
  {
    v4 = 1;
    v3 = &v4;
  }

  sub_25095AE20(v3);
}

uint64_t sub_25095C378(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_25095C3C4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_25095C3D4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25095C3F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25095C42C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25095C46C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_25095A93C(v1);
}

uint64_t sub_25095C494()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_25095C4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25095AE20(&v2);
}

char *sub_25095C508(char *a1, int64_t a2, char a3)
{
  result = sub_25095C548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25095C528(void *a1, int64_t a2, char a3)
{
  result = sub_25095C654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25095C548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9B8, &qword_250971578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25095C654(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9C0, &qword_250971580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9C8, &qword_250971588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25095C788(uint64_t a1, uint64_t a2)
{
  v13[3] = type metadata accessor for HIDRMDevice();
  v13[4] = &off_2862D9C70;
  v13[0] = a1;
  sub_25094EBA0(v13, v12);
  swift_beginAccess();

  sub_25095CEE8(v12, a2 + 48);
  swift_endAccess();
  if (qword_27F3DF808 != -1)
  {
    swift_once();
  }

  v4 = sub_250970454();
  __swift_project_value_buffer(v4, qword_27F3E0430);
  v5 = sub_250970434();
  v6 = sub_250970674();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25094D000, v5, v6, "HIDRMDeviceUI adding user auth request", v7, 2u);
    MEMORY[0x253064D90](v7, -1, -1);
  }

  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v12[4] = sub_25095CF58;
  v12[5] = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25095B344;
  v12[3] = &block_descriptor_68;
  v10 = _Block_copy(v12);

  [v8 addUserAuthorizationRequest:v9 completion:v10];
  _Block_release(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25095C9BC()
{
  result = qword_27F3DFB10;
  if (!qword_27F3DFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DFB10);
  }

  return result;
}

unint64_t sub_25095CA14()
{
  result = qword_27F3DFB18;
  if (!qword_27F3DFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DFB18);
  }

  return result;
}

uint64_t sub_25095CA68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25095CAB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_25095CAF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t getEnumTagSinglePayload for HIDRMDevice.DeviceState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDRMDevice.DeviceState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25095CEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF9D8, "Z4");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25095CFA0()
{
  v0 = sub_250970454();
  __swift_allocate_value_buffer(v0, qword_27F3E0480);
  __swift_project_value_buffer(v0, qword_27F3E0480);

  return sub_250970444();
}

uint64_t sub_25095D024(void *a1)
{
  v3 = sub_250970474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_250970494();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = type metadata accessor for HIDRMManager();
  v26 = &off_2862D9A88;
  aBlock = v12;
  sub_25094EBA0(&aBlock, v28);
  swift_beginAccess();

  sub_25095DD2C(v28, v1 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v13 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v13 setNeedsUserInteractivePriority_];
  v26 = sub_25095DD9C;
  v27 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_25095D694;
  v25 = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);

  [v13 setTransitionHandler_];
  _Block_release(v14);
  v15 = [objc_opt_self() monitorWithConfiguration_];
  v16 = *(v1 + 72);
  *(v1 + 72) = v15;

  if (*(v1 + 72))
  {
    v17 = *(v1 + 24);
    v26 = sub_25095E708;
    v27 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_25094F280;
    v25 = &block_descriptor_15;
    v18 = _Block_copy(&aBlock);

    sub_250970484();
    v28[0] = MEMORY[0x277D84F90];
    sub_250953A70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
    sub_250953AC8();
    sub_250970774();
    MEMORY[0x2530643B0](0, v11, v7, v18);
    _Block_release(v18);

    (*(v4 + 8))(v7, v3);
    (*(v8 + 8))(v11, v21);
  }

  else
  {
    result = sub_250970854();
    __break(1u);
  }

  return result;
}

uint64_t sub_25095D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_250970474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_250970494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 24);
  aBlock[4] = sub_25095DDBC;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25094F280;
  aBlock[3] = &block_descriptor_18_0;
  v16 = _Block_copy(aBlock);

  sub_250970484();
  v18[1] = MEMORY[0x277D84F90];
  sub_250953A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3DFAD0, &qword_250971510);
  sub_250953AC8();
  sub_250970774();
  MEMORY[0x2530643B0](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_25095D694(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_25095D734()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v2 = [v1 currentLayout];
  if (!v2)
  {
    *(v0 + 16) = 1;
    return;
  }

  v3 = 0xE900000000000074;
  v28 = v2;
  sub_25095E3EC(v2);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = 0x754F646567676F4CLL;
  }

  else
  {
    v6 = 0x6E49646567676F4CLL;
  }

  if (v4)
  {
    v7 = 0xE900000000000074;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*(v0 + 16))
  {
    v8 = 0x754F646567676F4CLL;
  }

  else
  {
    v8 = 0x6E49646567676F4CLL;
  }

  if (*(v0 + 16))
  {
    v9 = 0xE900000000000074;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v6 != v8 || v7 != v9)
  {
    v11 = v4;
    v12 = sub_2509708D4();

    if (v12)
    {

      return;
    }

    v13 = sub_250970434();
    v14 = sub_2509706A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v15 = 136315394;
      if (*(v0 + 16))
      {
        v16 = 0x754F646567676F4CLL;
      }

      else
      {
        v16 = 0x6E49646567676F4CLL;
      }

      if (!*(v0 + 16))
      {
        v3 = 0xE800000000000000;
      }

      v17 = sub_25095DE44(v16, v3, v29);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = sub_25095DE44(v6, v7, v29);

      *(v15 + 14) = v18;
      _os_log_impl(&dword_25094D000, v13, v14, "login state %s -> %s)", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253064D90](v27, -1, -1);
      MEMORY[0x253064D90](v15, -1, -1);
    }

    v19 = v11 & 1;
    *(v0 + 16) = v11 & 1;
    swift_beginAccess();
    sub_25095E580(v0 + 32, v29);
    if (!v30)
    {
LABEL_51:
      __break(1u);
      return;
    }

    v20 = *__swift_project_boxed_opaque_existential_1(v29, v30);
    swift_beginAccess();
    v21 = *(v20 + 16);
    if (v21 >> 62)
    {
      v22 = sub_250970824();
      v23 = v28;
      if (v22)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v28;
      if (v22)
      {
LABEL_37:
        if (v22 >= 1)
        {

          for (i = 0; i != v22; ++i)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              MEMORY[0x253064480](i, v21);
            }

            else
            {
              v25 = *(v21 + 8 * i + 32);
            }

            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              *(Strong + 48) = v19;
              sub_250959A40();
            }
          }

          goto LABEL_48;
        }

        __break(1u);
        goto LABEL_50;
      }
    }

LABEL_48:
    __swift_destroy_boxed_opaque_existential_1(v29);
    return;
  }
}

uint64_t sub_25095DB08()
{
  v1 = OBJC_IVAR____TtC8HIDRMKit12HIDRMOSLogIn_logger;
  v2 = sub_250970454();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_25095DB78()
{
  sub_25095E698(v0 + 32);
  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC8HIDRMKit12HIDRMOSLogIn_logger;
  v3 = sub_250970454();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for HIDRMOSLogIn()
{
  result = qword_27F3DFB30;
  if (!qword_27F3DFB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25095DC90()
{
  result = sub_250970454();
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

uint64_t sub_25095DD2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFB40, &qword_250971AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25095DDE8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25095DE44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25095DE44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25095DF10(v11, 0, 0, 1, a1, a2);
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
    sub_25095E5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25095DF10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25095E01C(a5, a6);
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
    result = sub_2509707C4();
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

uint64_t sub_25095E01C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25095E068(a1, a2);
  sub_25095E198(&unk_2862D9620);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25095E068(uint64_t a1, unint64_t a2)
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

  v6 = sub_25095E284(v5, 0);
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

  result = sub_2509707C4();
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
        v10 = sub_2509705B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25095E284(v10, 0);
        result = sub_2509707A4();
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

uint64_t sub_25095E198(uint64_t result)
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

  result = sub_25095E2F8(result, v12, 1, v3);
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

void *sub_25095E284(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFB48, &qword_250971AA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25095E2F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFB48, &qword_250971AA8);
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

void sub_25095E3EC(void *a1)
{
  v1 = [a1 elements];
  sub_25095E64C();
  v2 = sub_250970644();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v3 = sub_250970824();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x277D0ABA0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253064480](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      v9 = sub_250970564();
      v11 = v10;

      if (v9 != sub_250970564() || v11 != v12)
      {
        sub_2509708D4();
      }

      ++v4;
    }

    while (v3 != v4);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_25095E580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFB40, &qword_250971AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25095E5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25095E64C()
{
  result = qword_27F3DFB50;
  if (!qword_27F3DFB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3DFB50);
  }

  return result;
}

uint64_t sub_25095E698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DFB40, &qword_250971AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25095E714(void *a1)
{
  v2 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5[3] = type metadata accessor for HIDRMManager();
  v5[4] = &off_2862D9A88;
  v5[0] = v2;
  sub_25094EBA0(v5, v4);
  swift_beginAccess();

  sub_25095DD2C(v4, v1 + 32);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_25095E7A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x754F646567676F4CLL;
  }

  else
  {
    v4 = 0x6E49646567676F4CLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  if (*a2)
  {
    v6 = 0x754F646567676F4CLL;
  }

  else
  {
    v6 = 0x6E49646567676F4CLL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000074;
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
    v9 = sub_2509708D4();
  }

  return v9 & 1;
}

uint64_t sub_25095E84C()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

uint64_t sub_25095E8D4()
{
  *v0;
  sub_250970594();
}

uint64_t sub_25095E948()
{
  v1 = *v0;
  sub_2509708F4();
  sub_250970594();

  return sub_250970914();
}

uint64_t sub_25095E9CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2509708B4();

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

void sub_25095EA2C(uint64_t *a1@<X8>)
{
  v2 = 0x6E49646567676F4CLL;
  if (*v1)
  {
    v2 = 0x754F646567676F4CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25095EA70()
{
  sub_25095E698(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for HIDRMLogIn.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HIDRMLogIn.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25095EC60()
{
  result = qword_27F3DFB58;
  if (!qword_27F3DFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DFB58);
  }

  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_250971BC0[v2];
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 OUTLINED_FUNCTION_12(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_17@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  v10 = 0x27F3DF000uLL;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      v10 = 0x27F3DF000;
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  v10 = 0x27F3DF000;
LABEL_24:
  if (v11 >= *(v10 + 2912))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11_0();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v23 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v21);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_0();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init") && !generateRandom(v3, 16))
              {
                OUTLINED_FUNCTION_0_1();
                v16 = ccgcm_set_iv();
                if (!checkCCError(v16, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_0();
                  v17 = ccgcm_update();
                  if (!checkCCError(v17, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_1();
                    v18 = ccgcm_finalize();
                    if (!checkCCError(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v22, v23, v24);
  }

  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_0();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v27 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v25);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_2_0();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                OUTLINED_FUNCTION_13_0();
                if (!v17 && !generateRandom(v16, 16))
                {
                  OUTLINED_FUNCTION_0_1();
                  v18 = ccgcm_set_iv();
                  if (!checkCCError(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    OUTLINED_FUNCTION_13_0();
                    if (!v20)
                    {
                      OUTLINED_FUNCTION_2_0();
                      v21 = ccgcm_update();
                      if (!checkCCError(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        OUTLINED_FUNCTION_0_1();
                        v22 = ccgcm_finalize();
                        if (!checkCCError(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v23)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v26, v27, v28);
  }

  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_0();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v28 = *MEMORY[0x277D85DE8];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v26);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_0();
              v21 = ccgcm_init();
              if (!checkCCError(v21, "ccgcm_init"))
              {
                OUTLINED_FUNCTION_0_1();
                v22 = ccgcm_set_iv();
                if (!checkCCError(v22, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_0();
                  v23 = ccgcm_update();
                  if (!checkCCError(v23, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_1();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!checkCCError(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v27, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_0();
}
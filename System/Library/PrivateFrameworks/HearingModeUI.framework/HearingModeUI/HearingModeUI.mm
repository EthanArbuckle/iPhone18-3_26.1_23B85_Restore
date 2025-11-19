uint64_t *sub_2520204E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_252020504()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25202053C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25202057C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520205B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2520205D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2520205FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25202060C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_yXlIego_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252020634()
{
  MEMORY[0x253098840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25202066C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520206A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520206EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_252020754()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25202078C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520207F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020830()
{
  v1 = sub_252064254();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2520208D4()
{
  MEMORY[0x253098840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25202090C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25202094C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252020984()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520209BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252020A10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020A48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252020A80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020AD4()
{
  v1 = sub_252064354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252020B98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020BD0()
{
  MEMORY[0x253098840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252020C08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020C48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020CC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252020D0C()
{
  MEMORY[0x253098840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252020D44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252020D7C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_252022174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2520229FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2520234A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_252024CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2520257F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25202A1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25202C464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_25202CF1C()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD3F8);
  __swift_project_value_buffer(v0, qword_27F4CD3F8);
  return sub_2520641E4();
}

uint64_t sub_25202CF98()
{
  if (qword_27F4CA2D0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD3F8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25202D034@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CA2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD3F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_25202D0E4()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25202D130(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25202D1F4()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25202D23C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id HMAnalyticManager.__allocating_init(hpDevice:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *&v3[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload] = MEMORY[0x277D84F98];
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id HMAnalyticManager.init(hpDevice:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *&v1[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice] = 0;
  *&v1[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload] = MEMORY[0x277D84F98];
  swift_beginAccess();
  *&v1[v3] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HMAnalyticManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id HMAnalyticManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMAnalyticManager.init()()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *&v0[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload] = MEMORY[0x277D84F98];
  swift_beginAccess();
  *&v0[v1] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HMAnalyticManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_25202D5D0(unint64_t a1)
{
  if (a1 <= 1)
  {
    return 0xD000000000000014;
  }

  result = sub_252064AF4();
  __break(1u);
  return result;
}

unint64_t HMAnalyticManager.EventName.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_25202D64C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_25202D668(uint64_t a1)
{
  result = 0x726F737365636341;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 6:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6C6C6F726E454148;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 13:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x65756C615652534CLL;
      break;
    default:
      result = sub_252064AF4();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_25202D87C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252031190(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_25202D8B0()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  if (v1)
  {
    v2 = v1;
    if (qword_27F4CA2D0 != -1)
    {
      swift_once();
    }

    v3 = sub_2520641F4();
    __swift_project_value_buffer(v3, qword_27F4CD3F8);
    v4 = sub_2520641D4();
    v5 = sub_2520648B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_25202FA10(0xD000000000000014, 0x800000025206B8D0, aBlock);
      _os_log_impl(&dword_25201E000, v4, v5, "Analytics: Sending data for %s event", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2530987C0](v7, -1, -1);
      MEMORY[0x2530987C0](v6, -1, -1);
    }

    else
    {
    }

    v11 = sub_2520646F4();
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_2520311A0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25202DBE4;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    AnalyticsSendEventLazy();
    _Block_release(v13);
  }

  else
  {
    if (qword_27F4CA2D0 != -1)
    {
      swift_once();
    }

    v8 = sub_2520641F4();
    __swift_project_value_buffer(v8, qword_27F4CD3F8);
    oslog = sub_2520641D4();
    v9 = sub_2520648C4();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25201E000, oslog, v9, "Analytics: HeadphoneDevice is not set", v10, 2u);
      MEMORY[0x2530987C0](v10, -1, -1);
    }
  }
}

id sub_25202DBE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2520320C8();
    v5 = sub_252064654();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_25202DCB8()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  if (v1)
  {
    v2 = v1;
    if (qword_27F4CA2D0 != -1)
    {
      swift_once();
    }

    v3 = sub_2520641F4();
    __swift_project_value_buffer(v3, qword_27F4CD3F8);
    v4 = sub_2520641D4();
    v5 = sub_2520648B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_25202FA10(0xD000000000000014, 0x800000025206B8B0, aBlock);
      _os_log_impl(&dword_25201E000, v4, v5, "Analytics: Sending data for %s event", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2530987C0](v7, -1, -1);
      MEMORY[0x2530987C0](v6, -1, -1);
    }

    else
    {
    }

    v11 = sub_2520646F4();
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_2520315AC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25202DBE4;
    aBlock[3] = &block_descriptor_6;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    AnalyticsSendEventLazy();
    _Block_release(v13);
  }

  else
  {
    if (qword_27F4CA2D0 != -1)
    {
      swift_once();
    }

    v8 = sub_2520641F4();
    __swift_project_value_buffer(v8, qword_27F4CD3F8);
    oslog = sub_2520641D4();
    v9 = sub_2520648C4();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25201E000, oslog, v9, "Analytics: HeadphoneDevice is not set", v10, 2u);
      MEMORY[0x2530987C0](v10, -1, -1);
    }
  }
}

void sub_25202E034(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (objc_opt_self() == a3)
  {
    if (qword_27F4CA2D0 != -1)
    {
      swift_once();
    }

    v23 = sub_2520641F4();
    __swift_project_value_buffer(v23, qword_27F4CD3F8);
    oslog = sub_2520641D4();
    v24 = sub_2520648C4();
    if (!os_log_type_enabled(oslog, v24))
    {

      return;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45[0] = v26;
    *v25 = 136315394;
    if (a1)
    {
      if (a1 != 1)
      {
        v44[0] = a1;
        goto LABEL_31;
      }

      v27 = "com.apple.HPSettings";
    }

    else
    {
      v27 = "com.apple.HASettings";
    }

    v38 = sub_25202FA10(0xD000000000000014, (v27 - 32) | 0x8000000000000000, v45);

    *(v25 + 4) = v38;
    *(v25 + 12) = 2080;
    v39 = sub_25202D668(a2);
    v41 = sub_25202FA10(v39, v40, v45);

    *(v25 + 14) = v41;
    _os_log_impl(&dword_25201E000, oslog, v24, "Analytics: Reject addCustomEvent for %s, %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530987C0](v26, -1, -1);
    MEMORY[0x2530987C0](v25, -1, -1);

    return;
  }

  v8 = "com.apple.HPSettings";
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = " Missing, Self Dismissed";
      goto LABEL_5;
    }

    v45[0] = a1;
LABEL_31:
    sub_252064AF4();
    __break(1u);
    return;
  }

LABEL_5:
  v9 = MEMORY[0x277D85000];
  if (*((*((*MEMORY[0x277D85000] & *v3) + 0x78))() + 16))
  {
    sub_25202FFB8(0xD000000000000014, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      if (a1)
      {
        v12 = " Missing, Self Dismissed";
      }

      else
      {
        v12 = "com.apple.HPSettings";
      }

      v13 = (*((*v9 & *v3) + 0x88))(v45);
      v15 = sub_25202E52C(v44, 0xD000000000000014, v12 | 0x8000000000000000);
      if (*v14)
      {
        v16 = v14;
        v17 = sub_25202D668(a2);
        v19 = v18;
        v20 = a3;
        v21 = *v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v16;
        *v16 = 0x8000000000000000;
        sub_252030A6C(v20, v17, v19, isUniquelyReferenced_nonNull_native);

        *v16 = v43;
      }

      (v15)(v44, 0);

      v13(v45, 0);
      return;
    }
  }

  else
  {
  }

  if (a1)
  {
    v28 = " Missing, Self Dismissed";
  }

  else
  {
    v28 = "com.apple.HPSettings";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9760, &qword_252066AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252066A80;
  *(inited + 32) = sub_25202D668(a2);
  *(inited + 40) = v30;
  *(inited + 48) = a3;
  v31 = a3;
  v32 = sub_252031720(inited);
  swift_setDeallocating();
  sub_252031824(inited + 32);
  v33 = (*((*v9 & *v4) + 0x88))(v45);
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *v35;
  *v35 = 0x8000000000000000;
  sub_2520308F0(v32, 0xD000000000000014, v28 | 0x8000000000000000, v37);

  *v35 = v44[0];
  v33(v45, 0);
}

void (*sub_25202E52C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = sub_2520300E8(v6, a2, a3);
  return sub_25202E5B4;
}

void sub_25202E5B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_25202E678()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v2 = *(v1() + 16);

  if (v2)
  {
    v32 = v0;
    v4 = (v1)(v3);
    v5 = v4;
    v6 = 0;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    v33 = v4;
    while (v10)
    {
LABEL_11:
      v16 = __clz(__rbit64(v10)) | (v6 << 6);
      v17 = (*(v5 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v5 + 56) + 8 * v16);
      v21 = qword_27F4CA2D0;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = sub_2520641F4();
      __swift_project_value_buffer(v22, qword_27F4CD3F8);

      v23 = sub_2520641D4();
      v24 = sub_2520648B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v34 = v20;
        v26 = v18;
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v25 = 136315138;
        *(v25 + 4) = sub_25202FA10(v26, v19, aBlock);
        _os_log_impl(&dword_25201E000, v23, v24, "Analytics: Sending data for %s event", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v20 = v34;
        MEMORY[0x2530987C0](v27, -1, -1);
        v28 = v25;
        v5 = v33;
        MEMORY[0x2530987C0](v28, -1, -1);
      }

      v10 &= v10 - 1;
      v12 = sub_2520646F4();

      v13 = swift_allocObject();
      *(v13 + 16) = v20;
      aBlock[4] = sub_25203188C;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25202DBE4;
      aBlock[3] = &block_descriptor_12;
      v14 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v14);
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        (*((*MEMORY[0x277D85000] & *v32) + 0x80))(MEMORY[0x277D84F98]);
        return;
      }

      v10 = *(v7 + 8 * v15);
      ++v6;
      if (v10)
      {
        v6 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_27F4CA2D0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v29 = sub_2520641F4();
  __swift_project_value_buffer(v29, qword_27F4CD3F8);
  oslog = sub_2520641D4();
  v30 = sub_2520648C4();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_25201E000, oslog, v30, "Analytics: Event payload is empty", v31, 2u);
    MEMORY[0x2530987C0](v31, -1, -1);
  }
}

id sub_25202EB80()
{
  result = [objc_allocWithZone(type metadata accessor for EnrollmentAnalyticManager()) init];
  qword_27F4CA2E0 = result;
  return result;
}

uint64_t *sub_25202EBB0()
{
  if (qword_27F4CA2D8 != -1)
  {
    swift_once();
  }

  return &qword_27F4CA2E0;
}

id static EnrollmentAnalyticManager.shared.getter()
{
  if (qword_27F4CA2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CA2E0;

  return v1;
}

id sub_25202ECB8()
{
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_accessoryPID] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agType] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryLeft] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryRight] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentResult] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentType] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_entrance] = 1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for EnrollmentAnalyticManager();
  v1 = objc_msgSendSuper2(&v9, sel_init);
  v2 = qword_27F4CA2D0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_2520641F4();
  __swift_project_value_buffer(v4, qword_27F4CD3F8);
  v5 = sub_2520641D4();
  v6 = sub_2520648B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25201E000, v5, v6, "Analytics: EnrollmentAnalyticManager initialized", v7, 2u);
    MEMORY[0x2530987C0](v7, -1, -1);
  }

  return v3;
}

unint64_t EnrollmentAnalyticManager.EnrollmentType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25202EE54(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x726F737365636341;
      case 1:
        return 0x657079544741;
      case 2:
        return 0x6F67657461434741;
    }

LABEL_16:
    result = sub_252064AF4();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656D6C6C6F726E45;
    }

    if (a1 == 6)
    {
      return 0x65636E6172746E45;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x6F67657461434741;
  }

  return 0xD000000000000010;
}

unint64_t sub_25202EFB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252031894(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25202EFE4(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  result = sub_252064AF4();
  __break(1u);
  return result;
}

void *sub_25202F04C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

unint64_t sub_25202F088@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2520318A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25202F0DC()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

uint64_t sub_25202F124()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

unint64_t sub_25202F168@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2520318B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_25202F19C(uint64_t a1, unint64_t a2)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v5 = sub_2520318B4(a2);
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = v5;
        }

        v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryRight;
      }

      else
      {
        v11 = sub_2520318A4(a2);
        if (v12)
        {
          v7 = 0;
        }

        else
        {
          v7 = v11;
        }

        v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentResult;
      }

      goto LABEL_32;
    }

    if (a1 == 5)
    {
      v7 = a2 == 1;
      if (a2 == 2)
      {
        v7 = 2;
      }

      v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentType;
      goto LABEL_32;
    }

    if (a1 == 6)
    {
      if (a2 >= 3)
      {
        v7 = 1;
      }

      else
      {
        v7 = a2;
      }

      v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_entrance;
      goto LABEL_32;
    }

LABEL_55:
    sub_252064AF4();
    __break(1u);
    return;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = a2 == 1;
      if (a2 == 2)
      {
        v7 = 2;
      }

      v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agType;
      goto LABEL_32;
    }

    if (a1 == 2)
    {
      v9 = sub_2520318B4(a2);
      if (v10)
      {
        v7 = 0;
      }

      else
      {
        v7 = v9;
      }

      v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryLeft;
      goto LABEL_32;
    }

    goto LABEL_55;
  }

  v8 = &OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_accessoryPID;
  v7 = a2;
LABEL_32:
  *(v2 + *v8) = v7;
  if (qword_27F4CA2D0 != -1)
  {
    swift_once();
  }

  v13 = sub_2520641F4();
  __swift_project_value_buffer(v13, qword_27F4CD3F8);
  oslog = sub_2520641D4();
  v14 = sub_2520648B4();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315394;
    v17 = 0xEC00000044495079;
    v18 = 0x726F737365636341;
    v19 = 0xEE0065707954746ELL;
    v20 = 0x656D6C6C6F726E45;
    if (a1 != 5)
    {
      v20 = 0x65636E6172746E45;
      v19 = 0xE800000000000000;
    }

    v21 = 0xEF74686769527972;
    v22 = 0x6F67657461434741;
    if (a1 != 3)
    {
      v22 = 0xD000000000000010;
      v21 = 0x8000000252066AB0;
    }

    if (a1 <= 4)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = 0xE600000000000000;
    v24 = 0x657079544741;
    if (a1 != 1)
    {
      v24 = 0x6F67657461434741;
      v23 = 0xEE007466654C7972;
    }

    if (a1)
    {
      v18 = v24;
      v17 = v23;
    }

    if (a1 <= 2)
    {
      v25 = v18;
    }

    else
    {
      v25 = v20;
    }

    if (a1 <= 2)
    {
      v26 = v17;
    }

    else
    {
      v26 = v19;
    }

    v27 = sub_25202FA10(v25, v26, &v29);

    *(v15 + 4) = v27;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    _os_log_impl(&dword_25201E000, oslog, v14, "Analytics: Updated key %s with value - %ld", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2530987C0](v16, -1, -1);
    MEMORY[0x2530987C0](v15, -1, -1);
  }
}

uint64_t sub_25202F570()
{
  v1 = v0;
  if (qword_27F4CA2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD3F8);
  v3 = sub_2520641D4();
  v4 = sub_2520648B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25202FA10(0xD000000000000016, 0x800000025206BAC0, v12);
    _os_log_impl(&dword_25201E000, v3, v4, "Analytics: Sending data for %s event", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2530987C0](v6, -1, -1);
    MEMORY[0x2530987C0](v5, -1, -1);
  }

  else
  {
  }

  v7 = sub_2520646F4();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v12[4] = sub_2520318C4;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25202DBE4;
  v12[3] = &block_descriptor_18;
  v9 = _Block_copy(v12);
  v10 = v1;

  AnalyticsSendEventLazy();
  _Block_release(v9);

  return (*((*MEMORY[0x277D85000] & *v10) + 0x140))();
}

void sub_25202F820()
{
  v1 = v0;
  if (qword_27F4CA2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD3F8);
  v3 = sub_2520641D4();
  v4 = sub_2520648B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25202FA10(0xD000000000000016, 0x800000025206BAC0, &v7);
    _os_log_impl(&dword_25201E000, v3, v4, "Analytics: Reset after Sending data for %s event", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2530987C0](v6, -1, -1);
    MEMORY[0x2530987C0](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_accessoryPID) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agType) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryLeft) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryRight) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentResult) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentType) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_entrance) = 1;
}

id sub_25202F9D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_25202FA10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25202FADC(v11, 0, 0, 1, a1, a2);
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
    sub_252032068(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25202FADC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25202FBE8(a5, a6);
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
    result = sub_252064A54();
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

uint64_t sub_25202FBE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_25202FC34(a1, a2);
  sub_25202FD64(&unk_286442F70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25202FC34(uint64_t a1, unint64_t a2)
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

  v6 = sub_25202FE50(v5, 0);
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

  result = sub_252064A54();
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
        v10 = sub_252064784();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25202FE50(v10, 0);
        result = sub_252064A24();
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

uint64_t sub_25202FD64(uint64_t result)
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

  result = sub_25202FEC4(result, v12, 1, v3);
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

void *sub_25202FE50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9C10, &unk_252067180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25202FEC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9C10, &unk_252067180);
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

unint64_t sub_25202FFB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252064B44();
  sub_252064764();
  v6 = sub_252064B64();

  return sub_252030030(a1, a2, v6);
}

unint64_t sub_252030030(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_252064AE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_2520300E8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v8[8] = sub_25203115C(v8);
  v8[9] = sub_252030EC0(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_252030194;
}

void sub_252030194(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_2520301F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C97F8, &qword_252067178);
  v38 = a2;
  result = sub_252064AA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_252064B44();
      sub_252064764();
      result = sub_252064B64();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25203049C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C97F0, &qword_252067170);
  v39 = a2;
  result = sub_252064AA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_252064B44();
      sub_252064764();
      result = sub_252064B64();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_252030740(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2520649F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_252064B44();

      sub_252064764();
      v13 = sub_252064B64();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2520308F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25202FFB8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2520301F4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25202FFB8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_252064B24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_252030BE4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_252030A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25202FFB8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25203049C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25202FFB8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_252064B24();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_252030D54();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_252030BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C97F8, &qword_252067178);
  v2 = *v0;
  v3 = sub_252064A94();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_252030D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C97F0, &qword_252067170);
  v2 = *v0;
  v3 = sub_252064A94();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void (*sub_252030EC0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
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
  v13 = sub_25202FFB8(a2, a3);
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
      sub_252030BE4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2520301F4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_25202FFB8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_252064B24();
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
    v24 = 0;
  }

  *v11 = v24;
  return sub_252031018;
}

void sub_252031018(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_252032014(*(v13 + 48) + 16 * v12);
      sub_252030740(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_25203115C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_252031184;
}

unint64_t sub_252031190(unint64_t result)
{
  if (result > 0xE)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2520311A0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9760, &qword_252066AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252066A90;
  strcpy((inited + 32), "AccessoryPID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = sub_252064054();
  [v3 productID];

  *(inited + 48) = sub_252064B74();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000025206BA80;
  v4 = sub_252064064();
  sub_252064154();

  *(inited + 72) = sub_252064B14();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x800000025206BA60;
  v5 = sub_252064064();
  sub_252064114();

  *(inited + 96) = sub_252064814();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000025206BA40;
  v6 = sub_252064064();
  sub_252064124();

  *(inited + 120) = sub_252064814();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000025206BA20;
  v7 = sub_252064064();
  sub_252064174();

  *(inited + 144) = sub_252064B34();
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x800000025206B9E0;
  v8 = sub_252064064();
  sub_252064164();

  *(inited + 168) = sub_252064814();
  *(inited + 176) = 0xD000000000000026;
  *(inited + 184) = 0x800000025206B9B0;
  v9 = sub_252064064();
  sub_252064134();

  *(inited + 192) = sub_252064884();
  *(inited + 200) = 0xD00000000000001ELL;
  *(inited + 208) = 0x800000025206B990;
  v10 = sub_252064064();
  sub_2520640F4();

  *(inited + 216) = sub_252064884();
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x800000025206B970;
  v11 = sub_252064064();
  sub_2520641A4();

  *(inited + 240) = sub_252064884();
  *(inited + 248) = 0xD000000000000022;
  *(inited + 256) = 0x800000025206B940;
  v12 = sub_252064064();
  sub_2520640E4();

  *(inited + 264) = sub_252064814();
  *(inited + 272) = 0xD000000000000023;
  *(inited + 280) = 0x800000025206B910;
  v13 = sub_252064064();
  sub_252064144();

  *(inited + 288) = sub_252064814();
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x800000025206B8F0;
  v14 = sub_252064064();
  sub_252064194();

  *(inited + 312) = sub_252064884();
  v15 = sub_252031720(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9768, &qword_252066AC8);
  swift_arrayDestroy();
  return v15;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_2520315AC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9760, &qword_252066AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252066AA0;
  strcpy((inited + 32), "AccessoryPID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = sub_252064054();
  [v3 productID];

  *(inited + 48) = sub_252064B74();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000025206BA00;
  v4 = sub_252064064();
  sub_252064184();

  *(inited + 72) = sub_252064B34();
  v5 = sub_252031720(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9768, &qword_252066AC8);
  swift_arrayDestroy();
  return v5;
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

unint64_t sub_252031720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C97F0, &qword_252067170);
    v3 = sub_252064AB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25202FFB8(v5, v6);
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

uint64_t sub_252031824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9768, &qword_252066AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252031894(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2520318A4(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2520318B4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2520318C4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9760, &qword_252066AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252066AB0;
  strcpy((inited + 32), "AccessoryPID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_accessoryPID);
  *(inited + 48) = sub_2520648A4();
  *(inited + 56) = 0x657079544741;
  *(inited + 64) = 0xE600000000000000;
  v4 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agType);
  *(inited + 72) = sub_2520648A4();
  strcpy((inited + 80), "AGCategoryLeft");
  *(inited + 95) = -18;
  v5 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryLeft);
  *(inited + 96) = sub_2520648A4();
  *(inited + 104) = 0x6F67657461434741;
  *(inited + 112) = 0xEF74686769527972;
  v6 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_agCategoryRight);
  *(inited + 120) = sub_2520648A4();
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000252066AB0;
  v7 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentResult);
  *(inited + 144) = sub_2520648A4();
  strcpy((inited + 152), "EnrollmentType");
  *(inited + 167) = -18;
  v8 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_enrollmentType);
  *(inited + 168) = sub_2520648A4();
  *(inited + 176) = 0x65636E6172746E45;
  *(inited + 184) = 0xE800000000000000;
  v9 = *(v1 + OBJC_IVAR____TtC13HearingModeUI25EnrollmentAnalyticManager_entrance);
  *(inited + 192) = sub_2520648A4();
  v10 = sub_252031720(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9768, &qword_252066AC8);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_252031AE4()
{
  result = qword_27F4C97A8;
  if (!qword_27F4C97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97A8);
  }

  return result;
}

unint64_t sub_252031B3C()
{
  result = qword_27F4C97B0;
  if (!qword_27F4C97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97B0);
  }

  return result;
}

unint64_t sub_252031B94()
{
  result = qword_27F4C97B8;
  if (!qword_27F4C97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97B8);
  }

  return result;
}

unint64_t sub_252031BEC()
{
  result = qword_27F4C97C0;
  if (!qword_27F4C97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97C0);
  }

  return result;
}

unint64_t sub_252031C44()
{
  result = qword_27F4C97C8;
  if (!qword_27F4C97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97C8);
  }

  return result;
}

unint64_t sub_252031C9C()
{
  result = qword_27F4C97D0;
  if (!qword_27F4C97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97D0);
  }

  return result;
}

unint64_t sub_252031CF4()
{
  result = qword_27F4C97D8;
  if (!qword_27F4C97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97D8);
  }

  return result;
}

unint64_t sub_252031D4C()
{
  result = qword_27F4C97E0;
  if (!qword_27F4C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97E0);
  }

  return result;
}

unint64_t sub_252031DA4()
{
  result = qword_27F4C97E8;
  if (!qword_27F4C97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C97E8);
  }

  return result;
}

uint64_t sub_252032068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2520320C8()
{
  result = qword_27F4C9800;
  if (!qword_27F4C9800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C9800);
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

unint64_t HearingFeatureContent.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v62 = 0xD000000000000014;
  v63 = 0x800000025206BC50;
  MEMORY[0x253097B50](v4);

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  v68 = 0xD000000000000014;
  v69 = 0x800000025206BC50;
  v62 = (*(a2 + 24))(a1, a2);
  v63 = v5;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v62 = (*(a2 + 32))(a1, a2);
  v63 = v6;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v7 = *(a2 + 48);
  v7(&v62, a1, a2);
  v8 = v62;
  v9 = v63;

  v62 = 40;
  v63 = 0xE100000000000000;
  MEMORY[0x253097B50](v8, v9);

  MEMORY[0x253097B50](2128928, 0xE300000000000000);

  v11 = v62;
  v10 = v63;
  v7(&v62, a1, a2);
  v12 = v64;
  v13 = v65;

  v62 = v11;
  v63 = v10;

  MEMORY[0x253097B50](v12, v13);

  MEMORY[0x253097B50](2128928, 0xE300000000000000);

  v15 = v62;
  v14 = v63;
  v7(&v62, a1, a2);
  v16 = v66;
  v17 = v67;

  v62 = v15;
  v63 = v14;

  MEMORY[0x253097B50](v16, v17);

  MEMORY[0x253097B50](538979369, 0xE400000000000000);

  MEMORY[0x253097B50](v62, v63);

  v18 = (*(a2 + 56))(a1, a2);
  v19 = [v18 description];

  v20 = sub_252064724();
  v22 = v21;

  v62 = v20;
  v63 = v22;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v23 = (*(a2 + 64))(a1, a2);
  v24 = [v23 description];

  v25 = sub_252064724();
  v27 = v26;

  v62 = v25;
  v63 = v27;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v28 = (*(a2 + 72))(a1, a2);
  v29 = [v28 description];

  v30 = sub_252064724();
  v32 = v31;

  v62 = v30;
  v63 = v32;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v33 = (*(a2 + 80))(a1, a2);
  v34 = [v33 description];

  v35 = sub_252064724();
  v37 = v36;

  v62 = v35;
  v63 = v37;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v38 = (*(a2 + 88))(a1, a2);
  v39 = [v38 description];

  v40 = sub_252064724();
  v42 = v41;

  v62 = v40;
  v63 = v42;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v43 = (*(a2 + 96))(a1, a2);
  v44 = [v43 description];

  v45 = sub_252064724();
  v47 = v46;

  v62 = v45;
  v63 = v47;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v62 = (*(a2 + 104))(a1, a2);
  v63 = v48;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v49 = (*(a2 + 112))(a1, a2);
  v50 = [v49 description];

  v51 = sub_252064724();
  v53 = v52;

  v62 = v51;
  v63 = v53;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v62 = (*(a2 + 120))(a1, a2);
  v63 = v54;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v55 = (*(a2 + 128))(a1, a2);
  v56 = [v55 description];

  v57 = sub_252064724();
  v59 = v58;

  v62 = v57;
  v63 = v59;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  v62 = (*(a2 + 136))(a1, a2);
  v63 = v60;

  MEMORY[0x253097B50](2105388, 0xE300000000000000);

  MEMORY[0x253097B50](v62, v63);

  return v68;
}

uint64_t sub_252032CD8()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD410);
  __swift_project_value_buffer(v0, qword_27F4CD410);
  return sub_2520641E4();
}

uint64_t sub_252032D5C()
{
  if (qword_27F4CB070 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD410);
}

uint64_t sub_252032DC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB070 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252032E68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_url;
  v4 = sub_252063DA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_252032EE0()
{
  v1 = v0 + OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_desiredBounds;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

uint64_t sub_252032F2C(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_desiredBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

id sub_252032FF8()
{
  v0 = [objc_opt_self() playerLayerWithPlayer_];
  [v0 setOpacity_];
  return v0;
}

id sub_252033050()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  [v0 setMuted_];
  [v0 setAllowsExternalPlayback_];

  return v0;
}

id sub_2520330BC()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_videoPlayer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_252033110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_videoPlayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_25203325C(char *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v70[3] = *MEMORY[0x277D85DE8];
  v20 = sub_252063DA4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20]();
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLayer;
  v26 = [objc_opt_self() playerLayerWithPlayer_];
  [v26 setOpacity_];
  v66 = v25;
  *&v10[v25] = v26;
  v27 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_videoPlayer;
  v28 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  [v28 setMuted_];
  [v28 setAllowsExternalPlayback_];

  *&v10[v27] = v28;
  v29 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_url;
  v30 = v21[2];
  v67 = a1;
  v30(&v10[OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_url], a1, v20);
  v31 = &v10[OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_desiredBounds];
  *v31 = a6;
  v31[1] = a7;
  v31[2] = a8;
  v31[3] = a9;
  v32 = [objc_opt_self() sharedInstance];
  v33 = *MEMORY[0x277CB8020];
  v70[0] = 0;
  LODWORD(a1) = [v32 setCategory:v33 withOptions:1 error:v70];

  if (a1)
  {
    v34 = qword_27F4CB070;
    v35 = v70[0];
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_2520641F4();
    __swift_project_value_buffer(v36, qword_27F4CD410);
    v37 = sub_2520641D4();
    v38 = sub_2520648C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v65 = v20;
      v40 = v39;
      *v39 = 0;
      _os_log_impl(&dword_25201E000, v37, v38, "Unable to set AVAudioSession category for HMSUIMovieLoopPlayer", v39, 2u);
      v41 = v40;
      v20 = v65;
      MEMORY[0x2530987C0](v41, -1, -1);
    }
  }

  else
  {
    v42 = v70[0];
    v43 = sub_252063D64();

    swift_willThrow();
  }

  v44 = *&v10[v66];
  swift_beginAccess();
  [v44 setPlayer_];
  v45 = *&v10[v27];
  v30(v24, &v10[v29], v20);
  v46 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v47 = v20;
  v48 = v45;
  v49 = sub_252063D74();
  v50 = [v46 initWithURL_];

  v51 = v21[1];
  v51(v24, v47);
  v52 = [objc_opt_self() playerLooperWithPlayer:v48 templateItem:v50];

  *&v10[OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLooper] = v52;
  v53 = type metadata accessor for HMSUIMovieLoopPLayer(0);
  v69.receiver = v10;
  v69.super_class = v53;
  v54 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a2, a3, a4, a5);
  v55 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_videoPlayer;
  swift_beginAccess();
  v56 = *&v54[v55];
  v57 = MEMORY[0x277CC08F0];
  v58 = *MEMORY[0x277CC08F0];
  v59 = *(MEMORY[0x277CC08F0] + 16);
  v60 = v54;
  v68[0] = v58;
  v68[1] = *(v57 + 8);
  v68[2] = v59;
  [v56 seekToTime_];
  v61 = [v60 layer];
  [v61 addSublayer_];

  (*((*MEMORY[0x277D85000] & *v60) + 0xF0))();
  v51(v67, v47);
  v62 = *MEMORY[0x277D85DE8];
  return v60;
}

void sub_25203384C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v2 = v1();
  v3 = *(MEMORY[0x277CC08F0] + 16);
  v6[0] = *MEMORY[0x277CC08F0];
  v6[1] = *(MEMORY[0x277CC08F0] + 8);
  v6[2] = v3;
  [v2 seekToTime_];

  v4 = v1();
  LODWORD(v5) = 1.0;
  [v4 playImmediatelyAtRate_];
}

void sub_252033908()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v2 = v1();
  v3 = [v2 timeControlStatus];

  if (v3 == 2)
  {
    v4 = v1();
    [v4 pause];
  }
}

id sub_2520339D8()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for HMSUIMovieLoopPLayer(0);
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLayer;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLayer);
  v2();
  [v3 setBounds_];

  v4 = [v0 layer];
  [v4 setMasksToBounds_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];

  v6 = *(v0 + v1);
  v7 = [v0 layer];
  [v7 bounds];
  v9 = v8;

  v10 = [v0 layer];
  [v10 bounds];
  v12 = v11;

  CGPointMake(v9 * 0.5, v12 * 0.5);
  [v6 setPosition_];

  return [*(v0 + v1) setVideoGravity_];
}

void sub_252033BDC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_252034D68;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_252033CCC;
  v5[3] = &block_descriptor_0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.15];
  _Block_release(v3);
}

uint64_t sub_252033CCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_252033D3C(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

double sub_252033EB4()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  return 0.0;
}

void sub_252033F44(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_252063DA4();
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v58 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v58 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v31 = a1;
  v32 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a1);
  type metadata accessor for HearingFitNoiseVideoLoopPlayer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = [objc_opt_self() bundleForClass_];
  if (a2)
  {
    v30 = v22;
    v34 = AnyHearingFeatureContentProvider.videoAirPodAdjustBundle.getter();
    AnyHearingFeatureContentProvider.videoAirPodAdjust.getter();
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v35 = sub_2520646F4();
      v36 = sub_2520646F4();
      v28 = [v34 URLForResource:v35 withExtension:v36];

      if (v28)
      {
        sub_252063D84();

        v37 = *(v62 + 56);
        v38 = v19;
        v39 = 0;
      }

      else
      {
        v37 = *(v62 + 56);
        v38 = v19;
        v39 = 1;
      }

      v52 = v61;
      v37(v38, v39, 1, v61);
      sub_252034FD0(v19, v22);
      v44 = v62;
    }

    else
    {
      v48 = sub_2520646F4();
      v28 = sub_2520646F4();
      v49 = [v63 URLForResource:v48 withExtension:v28];

      if (!v49)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v50 = v59;
      sub_252063D84();

      v44 = v62;
      v51 = v50;
      v52 = v61;
      (*(v62 + 32))(v22, v51, v61);
      (*(v44 + 56))(v22, 0, 1, v52);
    }

    sub_252034EF8(v22, v16);
    v56 = (*(v44 + 48))(v16, 1, v52);
    v40 = v63;
    v25 = v16;
    if (v56 != 1)
    {
LABEL_19:
      sub_252034F68(v30);

      (*(v44 + 32))(v60, v25, v52);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v40 = AnyHearingFeatureContentProvider.videoAirPodLeftRightBundle.getter();
  AnyHearingFeatureContentProvider.videoAirPodLeftRight.getter();
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v41 = sub_2520646F4();
    v42 = sub_2520646F4();
    v43 = [v40 URLForResource:v41 withExtension:v42];

    if (v43)
    {
      sub_252063D84();

      v44 = v62;
      v45 = *(v62 + 56);
      v46 = v28;
      v47 = 0;
LABEL_17:
      v52 = v61;
      v45(v46, v47, 1, v61);
      sub_252034FD0(v28, v30);
      goto LABEL_18;
    }

LABEL_16:
    v44 = v62;
    v45 = *(v62 + 56);
    v46 = v28;
    v47 = 1;
    goto LABEL_17;
  }

  v53 = sub_2520646F4();
  v54 = sub_2520646F4();
  v55 = [v63 URLForResource:v53 withExtension:v54];

  if (v55)
  {
    sub_252063D84();

    v52 = v61;
    v44 = v62;
    (*(v62 + 32))(v30, v11, v61);
    (*(v44 + 56))(v30, 0, 1, v52);
LABEL_18:
    sub_252034EF8(v30, v25);
    v57 = (*(v44 + 48))(v25, 1, v52);
    v34 = v32;
    v32 = v63;
    if (v57 != 1)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_252034560(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252034598()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

uint64_t sub_25203460C()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

void *sub_252034650@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_25203467C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D756D0]);

  return [v0 init];
}

void sub_252034754()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoUseCase);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v6 = [objc_opt_self() currentDevice];
  [v6 userInterfaceIdiom];

  if (v1)
  {
    v7.n128_f64[0] = v3 * 1.071;
  }

  else
  {
    v7.n128_f64[0] = v5 * 1.682;
  }

  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x80))(0.0, 0.0, v7, v5);
  v14.receiver = v0;
  v14.super_class = type metadata accessor for HearingFitNoiseVideoLoopPlayer(0);
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v9 = *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint);
  if (v9)
  {
    v10 = *((*v8 & *v0) + 0x78);
    v11 = v9;
    v15.origin.x = v10();
    [v11 setConstant_];

    v12 = *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint);
    if (v12)
    {
      v13 = v12;
      v16.origin.x = v10();
      [v13 setConstant_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_252034954(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_252034998()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint) = 0;
  sub_252064A74();
  __break(1u);
}

void sub_252034AD4(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HearingFitNoiseVideoLoopPlayer(0);
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  [v3 userInterfaceStyle];

  sub_252035454();
  v4 = *&v1[OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLayer];
  v5 = sub_2520647B4();

  [v4 setFilters_];
}

void sub_252034C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint);
}

id sub_252034CC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252034DA0()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_playerLayer;
  v2 = [objc_opt_self() playerLayerWithPlayer_];
  [v2 setOpacity_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC13HearingModeUI20HMSUIMovieLoopPLayer_videoPlayer;
  v4 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  [v4 setMuted_];
  [v4 setAllowsExternalPlayback_];

  *(v0 + v3) = v4;
  sub_252064A74();
  __break(1u);
}

uint64_t sub_252034EC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252034EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252034F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252034FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_252035040(char a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = sub_252063DA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  *(v6 + v21) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v6 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint) = 0;
  a1 &= 1u;
  v51 = a2;
  sub_252033F44(a2, a1, v20);
  *(v6 + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoUseCase) = a1;
  v48 = v20;
  v49 = v14;
  v22 = *(v14 + 16);
  v50 = v13;
  v22(v18, v20, v13);
  v23 = sub_25203325C(v18, 0.0, 0.0, 0.0, 0.0, a3, a4, a5, a6);
  v24 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  v25 = *&v23[OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide];
  v26 = v23;
  [v26 addLayoutGuide_];
  v27 = [*&v23[v24] heightAnchor];
  v28 = [v27 constraintEqualToConstant_];

  v29 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint;
  v30 = *&v26[OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint];
  *&v26[OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint] = v28;

  v31 = [*&v23[v24] widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  v33 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint;
  v34 = *&v26[OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint];
  *&v26[OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_252067200;
  v36 = [v26 centerXAnchor];

  v37 = [*&v23[v24] centerXAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v35 + 32) = v38;
  v39 = [v26 centerYAnchor];

  v40 = [*&v23[v24] centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v35 + 40) = v41;
  v42 = *&v26[v29];
  if (v42)
  {
    *(v35 + 48) = v42;
    v43 = *&v26[v33];
    if (v43)
    {
      v44 = objc_opt_self();
      *(v35 + 56) = v43;
      sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
      v45 = v42;
      v46 = v43;
      v47 = sub_2520647B4();

      [v44 activateConstraints_];

      (*(v49 + 8))(v48, v50);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_252035454()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = objc_opt_self();
  v10 = 1066695393;
  v11 = *(MEMORY[0x277CD9DA0] + 4);
  v12 = *(MEMORY[0x277CD9DA0] + 20);
  v13 = 1066695393;
  v14 = *(MEMORY[0x277CD9DA0] + 28);
  v15 = *(MEMORY[0x277CD9DA0] + 44);
  v16 = 1066695393;
  *v17 = *(MEMORY[0x277CD9DA0] + 52);
  *&v17[12] = *(MEMORY[0x277CD9DA0] + 64);
  v3 = [v2 valueWithCAColorMatrix_];
  v4 = sub_2520646F4();
  [v0 setValue:v3 forKey:v4];

  v5 = sub_252064884();
  v6 = sub_2520646F4();
  [v1 setValue:v5 forKey:v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9820, &qword_252067388);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252066AA0;
  v8 = sub_252035980(0, &qword_27F4C9828, 0x277CD9EA0);
  *(v7 + 32) = v0;
  *(v7 + 88) = v8;
  *(v7 + 56) = v8;
  *(v7 + 64) = v1;
  return v7;
}

unint64_t sub_252035634()
{
  result = qword_27F4C9810;
  if (!qword_27F4C9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9810);
  }

  return result;
}

uint64_t sub_252035690()
{
  result = sub_252063DA4();
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

uint64_t getEnumTagSinglePayload for HearingFitNoiseVideoLoopPlayer.VideoUseCase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HearingFitNoiseVideoLoopPlayer.VideoUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_252035920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252035940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_252035980(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_2520359FC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_252035A64()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD450);
  __swift_project_value_buffer(v0, qword_27F4CD450);
  return sub_2520641E4();
}

uint64_t sub_252035AE8()
{
  if (qword_27F4CB240 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD450);
}

uint64_t sub_252035B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB240 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD450);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252035C00()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_252035C30(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_252035C88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_252035CB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double sub_252035D10@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_252035D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C98E0, &qword_2520673D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252035DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C98E0, &qword_2520673D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252035F58()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_2520205FC(v1);
  return v1;
}

uint64_t sub_252035F8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  result = sub_25202060C(*(v2 + 112));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_252035FE4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_2520205FC(v1);
  return v1;
}

uint64_t sub_252036018(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);
  result = sub_25202060C(*(v2 + 128));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_252036070()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_2520205FC(v1);
  return v1;
}

uint64_t sub_2520360A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);
  result = sub_25202060C(*(v2 + 144));
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

__n128 sub_2520360FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v16 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v16;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  return result;
}

uint64_t sub_252036158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_2520361C0(a1, a2, a3, a4);
  return v8;
}

void sub_2520361C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = MEMORY[0x277D84F90];
  if (a2)
  {
    v6 = sub_2520646F4();
    if (a4)
    {
LABEL_3:

      v7 = sub_2520646F4();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_opt_self() groupSpecifierWithID:v6 name:v7];

  if (v8)
  {

    *(v4 + 16) = v8;
    swift_beginAccess();
    v9 = v8;
    MEMORY[0x253097B80]();
    if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2520647E4();
    }

    sub_252064804();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_252036318(void (*a1)(void))
{
  a1(*(v1 + 16));
}

uint64_t sub_252036360()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  if (v4)
  {
    v5 = sub_2520646F4();
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 24))(v21, v3, v2);
  v6 = v22;
  if (v22)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v21, v22);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_252064AD4();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(v2 + 40))(v3, v2);
  v14 = (*(v2 + 32))(v3, v2);
  if ((*(v2 + 72))(v3, v2))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 preferenceSpecifierNamed:v5 target:v12 set:v13 get:v14 detail:ObjCClassFromMetadata cell:(*(v2 + 48))(v3 edit:{v2), 0}];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    swift_beginAccess();
    v19 = v17;
    MEMORY[0x253097B80]();
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2520647E4();
    }

    sub_252064804();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2520366C4(uint64_t a1)
{
  sub_252032068(a1, v6);
  sub_252035980(0, &qword_27F4C9840, 0x277D3FAD8);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    v2 = v5;
    MEMORY[0x253097B80]();
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2520647E4();
    }

    sub_252064804();
    swift_endAccess();
  }
}

void sub_2520367BC()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  v5 = v4;
  v6 = (*(v2 + 88))(v3, v2);
  v8 = v7;
  v9 = (*(v2 + 80))(v3, v2);
  v11 = v10;
  v27 = (*(v2 + 72))(v3, v2);
  v28 = (*(v2 + 48))(v3, v2);
  v12 = (*(v2 + 96))(v3, v2);
  v14 = v13;
  v15 = type metadata accessor for HeadphoneSpecifier();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction];
  *v17 = v9;
  v17[1] = v11;
  v18 = &v16[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction];
  *v18 = v6;
  v18[1] = v8;
  v19 = &v16[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction];
  *v19 = v12;
  v19[1] = v14;
  v26 = v6;
  if (v5)
  {
    sub_2520205FC(v9);
    sub_2520205FC(v6);
    sub_2520205FC(v12);

    v20 = sub_2520646F4();

    if (v27)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2520205FC(v9);
    sub_2520205FC(v6);
    sub_2520205FC(v12);
    v20 = 0;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  ObjCClassFromMetadata = 0;
LABEL_6:
  v31.receiver = v16;
  v31.super_class = v15;
  v22 = objc_msgSendSuper2(&v31, sel_initWithName_target_set_get_detail_cell_edit_, v20, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, v28, 0);

  if (v22)
  {

    v30.receiver = v22;
    v30.super_class = v15;
    v23 = v22;
    objc_msgSendSuper2(&v30, sel_setTarget_, v23);
    v29.receiver = v23;
    v29.super_class = v15;
    objc_msgSendSuper2(&v29, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_25202060C(v12);
    sub_25202060C(v9);
    sub_25202060C(v26);
    v24 = swift_beginAccess();
    MEMORY[0x253097B80](v24);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2520647E4();
    }

    sub_252064804();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void HeadphoneSpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t ObjCClassFromMetadata, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v19 = objc_allocWithZone(v12);
  v20 = a6;
  v21 = v19;
  v22 = &v19[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction];
  *v22 = a5;
  v22[1] = v20;
  v23 = &v19[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v19[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction];
  *v24 = a10;
  *(v24 + 1) = a11;
  if (a2)
  {
    sub_2520205FC(a5);
    sub_2520205FC(a3);
    sub_2520205FC(a10);
    v25 = sub_2520646F4();
    v26 = a9;
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_2520205FC(a5);
  sub_2520205FC(a3);
  sub_2520205FC(a10);
  v25 = 0;
  v26 = a9;
  if (ObjCClassFromMetadata)
  {
LABEL_3:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  if (v26)
  {
    v27 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v27 = 0;
  }

  v33.receiver = v21;
  v33.super_class = v12;
  v28 = objc_msgSendSuper2(&v33, sel_initWithName_target_set_get_detail_cell_edit_, v25, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v27);

  if (v28)
  {

    v32.receiver = v28;
    v32.super_class = v12;
    v29 = v28;
    objc_msgSendSuper2(&v32, sel_setTarget_, v29);
    v31.receiver = v29;
    v31.super_class = v12;
    objc_msgSendSuper2(&v31, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_25202060C(a10);
    sub_25202060C(a5);
    sub_25202060C(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_252036D00(void (*a1)(id))
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return v1;
  }

  if (v3 < 0)
  {
    v7 = *(v1 + 24);
  }

  result = sub_252064A84();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v6 = MEMORY[0x253097E20](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    a1(v6);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_252036E0C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_252036E44()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_252036E6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_252036EAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a5;
  v42 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9860, &qword_2520673D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v40 = a1;
  v44 = a1;
  v45 = a2;

  MEMORY[0x253097B50](32, 0xE100000000000000);

  MEMORY[0x253097B50](a3, a4);

  v17 = v44;
  v16 = v45;
  v18 = sub_2520646F4();
  v19 = *MEMORY[0x277D3FF88];
  v43 = v7;
  [v7 setProperty:v18 forKey:v19];

  v44 = v17;
  v45 = v16;
  v47 = a3;
  v48 = a4;
  v20 = sub_252063E04();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_2520376CC();
  v21 = sub_2520649B4();
  v23 = v22;
  LOBYTE(v7) = v24;
  sub_252037720(v15);
  if (v7)
  {
    if (qword_27F4CB240 != -1)
    {
      swift_once();
    }

    v25 = sub_2520641F4();
    __swift_project_value_buffer(v25, qword_27F4CD450);

    v26 = sub_2520641D4();
    v27 = sub_2520648C4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136315650;
      v30 = sub_25202FA10(v17, v16, &v44);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_25202FA10(v40, a2, &v44);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_25202FA10(a3, a4, &v44);
      _os_log_impl(&dword_25201E000, v26, v27, "updateSpecifierLinkedFooter: ERROR: range not found footer.range(of: linkString) %s %s %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530987C0](v29, -1, -1);
      MEMORY[0x2530987C0](v28, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_252035980(0, &qword_27F4C9868, 0x277D3FA10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v32)
    {
      sub_252064724();
      v32 = sub_2520646F4();
    }

    v33 = v43;
    [v43 setProperty:v32 forKey:*MEMORY[0x277D3FF48]];

    v34 = sub_2520646F4();
    [v33 setProperty:v34 forKey:*MEMORY[0x277D3FF70]];

    v44 = v21;
    v45 = v23;
    v47 = v17;
    v48 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9870, &qword_2520673E0);
    sub_252037D78();
    v49.location = sub_252064984();
    v35 = NSStringFromRange(v49);
    if (!v35)
    {
      sub_252064724();
      v35 = sub_2520646F4();
    }

    [v33 setProperty:v35 forKey:*MEMORY[0x277D3FF58]];

    v36 = v41;
    ObjectType = swift_getObjectType();
    v44 = v36;
    swift_unknownObjectRetain();
    v37 = sub_252064AD4();
    __swift_destroy_boxed_opaque_existential_0(&v44);
    v38 = [objc_opt_self() valueWithNonretainedObject_];
    swift_unknownObjectRelease();
    [v33 setProperty:v38 forKey:*MEMORY[0x277D3FF68]];

    sub_252063E44();
    v39 = sub_2520646F4();

    [v33 setProperty:v39 forKey:*MEMORY[0x277D3FF50]];
  }
}

uint64_t HeadphoneSpecifier.getAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction + 8);
  sub_2520205FC(v1);
  return v1;
}

uint64_t HeadphoneSpecifier.setAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction + 8);
  sub_2520205FC(v1);
  return v1;
}

uint64_t HeadphoneSpecifier.buttonTapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction + 8);
  sub_2520205FC(v1);
  return v1;
}

void HeadphoneSpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = &v11[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction];
  *v14 = a5;
  v14[1] = a6;
  v15 = &v11[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction];
  *v15 = a3;
  v15[1] = a4;
  v16 = &v11[OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction];
  *v16 = a10;
  v16[1] = a11;
  if (a2)
  {
    sub_2520205FC(a5);
    sub_2520205FC(a3);
    sub_2520205FC(a10);
    v17 = sub_2520646F4();
    v18 = a9;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2520205FC(a5);
    sub_2520205FC(a3);
    sub_2520205FC(a10);
    v17 = 0;
    v18 = a9;
    if (a7)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = a3;
      if (!v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  ObjCClassFromMetadata = 0;
  v24 = a3;
  if (v18)
  {
LABEL_4:
    v18 = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  v20 = type metadata accessor for HeadphoneSpecifier();
  v28.receiver = v11;
  v28.super_class = v20;
  v21 = objc_msgSendSuper2(&v28, sel_initWithName_target_set_get_detail_cell_edit_, v17, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v18);

  if (v21)
  {

    v27.receiver = v21;
    v27.super_class = v20;
    v22 = v21;
    objc_msgSendSuper2(&v27, sel_setTarget_, v22);
    v26.receiver = v22;
    v26.super_class = v20;
    objc_msgSendSuper2(&v26, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_25202060C(a10);
    sub_25202060C(a5);
    sub_25202060C(v24);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2520376CC()
{
  result = qword_27F4C9A60;
  if (!qword_27F4C9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9A60);
  }

  return result;
}

uint64_t sub_252037720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9860, &qword_2520673D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252037788()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction + 8);
    return v1();
  }

  return result;
}

uint64_t sub_252037840()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction + 8);
  return v1();
}

uint64_t sub_2520378EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction + 8);
    return v1();
  }

  return result;
}

id HeadphoneSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a7;
  v24 = a4;
  if (a2)
  {
    v12 = sub_2520646F4();

    v13 = a3[3];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    v13 = a3[3];
    if (v13)
    {
LABEL_3:
      v14 = __swift_project_boxed_opaque_existential_0(a3, v13);
      v15 = *(v13 - 8);
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18);
      v19 = sub_252064AD4();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_0(a3);
      if (!ObjCClassFromMetadata)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v19 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_4:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  if (a8)
  {
    a8 = swift_getObjCClassFromMetadata();
  }

  v20 = objc_allocWithZone(v8);
  v21 = [v20 initWithName:v12 target:v19 set:v24 get:v25 detail:ObjCClassFromMetadata cell:v26 edit:a8];

  swift_unknownObjectRelease();
  return v21;
}

id HeadphoneSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeadphoneSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSpecifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252037D78()
{
  result = qword_27F4C9878;
  if (!qword_27F4C9878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9870, &qword_2520673E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9878);
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

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_252037F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252037FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for PSTableCellType()
{
  if (!qword_27F4C9888)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C9888);
    }
  }
}

uint64_t sub_252038180()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CB2D8);
  __swift_project_value_buffer(v0, qword_27F4CB2D8);
  return sub_2520641E4();
}

uint64_t sub_252038200()
{
  if (qword_27F4CB2D0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CB2D8);
}

uint64_t static Logger.fitNoseEnrollment.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CB2D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252038354()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2520383B4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25203844C;
}

void sub_25203844C(uint64_t a1, char a2)
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

uint64_t sub_2520384CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_deviceAddress);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_deviceAddress + 8);

  return v1;
}

id sub_252038574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_getObjectType();
  v30 = sub_2520646E4();
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2520646C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView] = 0;
  v16 = &v5[OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_listener];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  swift_beginAccess();
  v31 = a1;
  swift_unknownObjectWeakAssign();
  v17 = &v5[OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_deviceAddress];
  *v17 = a2;
  *(v17 + 1) = a3;
  *&v5[OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_headphoneDevice] = a4;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v29 = a4;
  v18 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a4);
  v19 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v28 = v18;
  if (v19)
  {
    AnyHearingFeatureContentProvider.singleDeviceName.getter();
  }

  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v13);
  v20 = *(v10 + 8);
  v21 = v30;
  v20(v13, v30);
  v22 = sub_2520646F4();

  sub_252064684();
  sub_252050ED4(v13);
  v20(v13, v21);
  v23 = sub_2520646F4();

  v24 = type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
  v32.receiver = v5;
  v32.super_class = v24;
  v25 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_symbolName_contentLayout_, v22, v23, 0, 1);

  swift_unknownObjectRelease();
  return v25;
}

id sub_252038914()
{
  v1 = sub_2520646E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton;
  v7 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton);
  }

  else
  {
    v9 = [objc_opt_self() boldButton];
    v16[1] = v0;
    sub_252064684();
    type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
    v10 = v0;
    sub_252050ED4(v5);
    (*(v2 + 8))(v5, v1);
    v11 = sub_2520646F4();

    [v9 setTitle:v11 forState:0];

    sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_252064974();
    [v9 addAction:v12 forControlEvents:64];

    v13 = *(v10 + v6);
    *(v10 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v14 = v7;
  return v8;
}

void sub_252038B54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v5 = *(v3 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_deviceAddress);
        v4 = *(v3 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_deviceAddress + 8);
        v6 = v3;
      }

      v7 = objc_allocWithZone(HMFitNoiseCheckContentViewController);
      v8 = sub_2520646F4();

      v9 = [v7 initWithDeviceAddress_];

      [v9 setFitNoiseCheckDelegate_];
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 navigationController];

        if (v12)
        {
          [v12 pushViewController:v9 animated:1];
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_252038D00(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252038D14(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_252038914();
  return sub_252038D5C;
}

void sub_252038D5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___continueButton) = v2;
}

id sub_252038D74()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView);
  }

  else
  {
    type metadata accessor for HearingFitNoiseVideoLoopPlayer(0);
    v4 = *(v0 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_headphoneDevice);
    v5 = sub_25202EB78();
    v6 = v4;
    v7 = v0;
    sub_2520346D4(1, 0.0, 0.0, 0.0, 0.0, v5, v6);
    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = *(v0 + v1);
    *(v7 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_252038E30(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  v3 = sub_252038D74();
  (*((*MEMORY[0x277D85000] & *v3) + 0xE0))();
}

uint64_t sub_252038F58()
{
  v1 = v0;
  v2 = sub_2520646E4();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
  v71.receiver = v0;
  v71.super_class = v6;
  objc_msgSendSuper2(&v71, sel_viewDidLoad, v6);
  v7 = [v0 scrollView];
  v8 = [v7 layer];

  [v8 setMasksToBounds_];
  v9 = [v1 contentView];
  v10 = [v9 layer];

  [v10 setMasksToBounds_];
  v11 = [v1 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  [v1 fitNoiseSetupCancelButtonWithFitDelegate_];
  swift_unknownObjectRelease();
  v13 = [v1 contentView];
  v14 = sub_252038D74();
  [v13 addSubview_];

  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 bounds];
    v19 = v18;
  }

  else
  {
    v19 = 44.0;
  }

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252067200;
  v22 = OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView;
  v23 = [*(v1 + OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController____lazy_storage___movieLoopView) topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-v19];
  *(v21 + 32) = v26;
  v27 = [*(v1 + v22) leadingAnchor];
  v28 = [v1 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v21 + 40) = v30;
  v31 = [*(v1 + v22) trailingAnchor];
  v32 = [v1 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v21 + 48) = v34;
  v35 = [*(v1 + v22) bottomAnchor];
  v36 = [v1 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v21 + 56) = v38;
  sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
  v39 = sub_2520647B4();

  [v20 activateConstraints_];

  v40 = [objc_opt_self() accessoryButton];
  aBlock = v1;
  sub_252064684();
  sub_252050ED4(v5);
  (*(v63 + 8))(v5, v64);
  v41 = sub_2520646F4();

  [v40 setTitle:v41 forStates:0];

  sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
  v42 = sub_252064974();
  [v40 addAction:v42 forControlEvents:64];

  v43 = [v1 headerView];
  [v43 addAccessoryButton_];

  v44 = [v1 buttonTray];
  v45 = MEMORY[0x277D85000];
  v46 = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  [v44 addButton_];

  v47 = *(v1 + v22);
  v48 = *((*v45 & *v47) + 0xC0);
  v49 = v47;
  v50 = v48();

  v51 = sub_252064944();
  LODWORD(v45) = v52;
  v54 = v53;
  v55 = HIDWORD(v52);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v56 = sub_252064934();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = sub_252039A50;
  v70 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_252039B20;
  v68 = &block_descriptor_1;
  v58 = _Block_copy(&aBlock);

  aBlock = v51;
  v66 = __PAIR64__(v55, v45);
  v67 = v54;
  v59 = [v50 addPeriodicTimeObserverForInterval:&aBlock queue:v56 usingBlock:v58];
  _Block_release(v58);

  sub_2520649D4();
  swift_unknownObjectRelease();

  v60 = OBJC_IVAR____TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController_listener;
  swift_beginAccess();
  sub_252035DA0(&aBlock, v1 + v60);
  return swift_endAccess();
}

uint64_t sub_252039800()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_252063DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063D94();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_252039F34(v3, &qword_27F4C9950, &qword_252067210);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_252063D74();
  sub_25203A508(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25203A77C(&qword_27F4C9958);
  v12 = sub_252064654();

  [v10 openURL:v11 options:v12 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

void sub_252039A50(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v9.value = a1;
    *&v9.timescale = a2;
    v9.epoch = a3;
    if (CMTimeGetSeconds(&v9) >= 5.0)
    {
      v8 = sub_252038D74();
      (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();
    }
  }
}

uint64_t sub_252039B20(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(v2, v3, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_252039BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520646F4();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520646F4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520646F4();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id sub_252039D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520646F4();

  if (a4)
  {
    v12 = sub_2520646F4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id sub_252039E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252039F34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_252039F9C(uint64_t a1, id *a2)
{
  result = sub_252064704();
  *a2 = 0;
  return result;
}

uint64_t sub_25203A014(uint64_t a1, id *a2)
{
  v3 = sub_252064714();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25203A094@<X0>(uint64_t *a1@<X8>)
{
  sub_252064724();
  v2 = sub_2520646F4();

  *a1 = v2;
  return result;
}

uint64_t sub_25203A0D8()
{
  v1 = *v0;
  v2 = sub_252064724();
  v3 = MEMORY[0x253097B70](v2);

  return v3;
}

uint64_t sub_25203A114()
{
  v1 = *v0;
  sub_252064724();
  sub_252064764();
}

uint64_t sub_25203A168()
{
  v1 = *v0;
  sub_252064724();
  sub_252064B44();
  sub_252064764();
  v2 = sub_252064B64();

  return v2;
}

uint64_t sub_25203A1DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_252064724();
  v6 = v5;
  if (v4 == sub_252064724() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252064AE4();
  }

  return v9 & 1;
}

uint64_t sub_25203A264@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2520646F4();

  *a2 = v5;
  return result;
}

uint64_t sub_25203A2AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_252064724();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25203A2D8(uint64_t a1)
{
  v2 = sub_25203A77C(&qword_27F4C9958);
  v3 = sub_25203A77C(&unk_27F4C9990);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_25203A370(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_252064724();
  sub_252064B44();
  sub_252064764();
  v4 = sub_252064B64();

  return sub_25203A404(a1, v4);
}

unint64_t sub_25203A404(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_252064724();
      v9 = v8;
      if (v7 == sub_252064724() && v9 == v10)
      {
        break;
      }

      v12 = sub_252064AE4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_25203A508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9960, "$}");
    v3 = sub_252064AB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25203A660(v4, &v11);
      v5 = v11;
      result = sub_25203A370(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25203A6D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27F4C9970)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C9970);
    }
  }
}

uint64_t sub_25203A660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9968, &qword_252067610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25203A6D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25203A77C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25203A7C0()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD468);
  __swift_project_value_buffer(v0, qword_27F4CD468);
  return sub_2520641E4();
}

uint64_t sub_25203A838()
{
  if (qword_27F4CB5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD468);
}

uint64_t sub_25203A89C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *AnyHearingFeatureContentProvider.headphoneDevice.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AnyHearingFeatureContentProvider.headphoneDevice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_25203AAF4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AnyHearingFeatureContentProvider.featureContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203AB68(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_25203AB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A10, &qword_2520677F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id AnyHearingFeatureContentProvider.__allocating_init(device:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25203E340(a1);

  return v4;
}

id AnyHearingFeatureContentProvider.init(device:)(void *a1)
{
  v2 = sub_25203E340(a1);

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.deviceGenerationSpecificName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 40))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_252063D54();
  }

  return v4;
}

uint64_t _s13HearingModeUI03AnyA22FeatureContentProviderC07featureF0AA0aeF0_pSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  return sub_25203E9E4(v1 + v3, a1, &qword_27F4C9A10, &qword_2520677F0);
}

uint64_t sub_25203AED0()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_252063D54();

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.deviceMarketingName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_252063D54();
  }

  return v4;
}

uint64_t AnyHearingFeatureContentProvider.devicePlatformName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_252063D54();
  }

  return v4;
}

uint64_t AnyHearingFeatureContentProvider.singleDeviceName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 32))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_252063D54();
  }

  return v4;
}

uint64_t AnyHearingFeatureContentProvider.suggestionFitSymbols.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v3, v14, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v15;
  if (!v15)
  {
    result = sub_252039F34(v14, &qword_27F4C9A10, &qword_2520677F0);
LABEL_5:
    v6 = 0xD000000000000019;
    v7 = 0x800000025206C380;
    v8 = 0x800000025206C3A0;
    v10 = 0x800000025206C3D0;
    v11 = 0xD00000000000002DLL;
    v9 = 0xD00000000000002ELL;
    goto LABEL_6;
  }

  v5 = v16;
  __swift_project_boxed_opaque_existential_0(v14, v15);
  (*(v5 + 48))(v13, v4, v5);
  v6 = v13[0];
  v7 = v13[1];
  v9 = v13[2];
  v8 = v13[3];
  v11 = v13[4];
  v10 = v13[5];
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v11;
  a1[5] = v10;
  return result;
}

uint64_t AnyHearingFeatureContentProvider.faultcheckUnknownImage.getter()
{
  sub_25203E790();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 56))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.faultcheckFailedImage.getter()
{
  sub_25203E790();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 64))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.occlusionLeftImage.getter()
{
  type metadata accessor for OcclusionTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 72))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.occlusionRightImage.getter()
{
  type metadata accessor for OcclusionTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 80))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.fitNoiseLeft.getter()
{
  type metadata accessor for OcclusionTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 88))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.fitNoiseRight.getter()
{
  type metadata accessor for OcclusionTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520646F4();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);

    return v8;
  }

  result = sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t AnyHearingFeatureContentProvider.videoAirPodAdjust.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v6, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = (*(v3 + 104))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
    return 0xD00000000000001ALL;
  }

  return v4;
}

id AnyHearingFeatureContentProvider.videoAirPodAdjustBundle.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 112))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v4;
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    type metadata accessor for OcclusionTutorialController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];

    return v7;
  }
}

unint64_t AnyHearingFeatureContentProvider.videoAirPodLeftRight.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v6, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = (*(v3 + 120))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
    return 0xD000000000000015;
  }

  return v4;
}

id AnyHearingFeatureContentProvider.videoAirPodLeftRightBundle.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 128))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v4;
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    type metadata accessor for OcclusionTutorialController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];

    return v7;
  }
}

uint64_t AnyHearingFeatureContentProvider.welcomeControllerDeviceSymbol.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v6, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = (*(v3 + 136))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
    return 0x7073646F70726961;
  }

  return v4;
}

uint64_t AnyHearingFeatureContentProvider.isProductOfDifferentColors.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v5, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    LOBYTE(v2) = (*(v3 + 144))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_252039F34(v5, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v2 & 1;
}

uint64_t AnyHearingFeatureContentProvider.defaultFiltersID.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v5, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v2 = (*(v3 + 152))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_252039F34(v5, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v2;
}

unint64_t AnyHearingFeatureContentProvider.getAssetsDictionary.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v6, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = (*(v3 + 160))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
    return v4;
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
    return sub_25203E7DC(MEMORY[0x277D84F90]);
  }
}

uint64_t AnyHearingFeatureContentProvider.deviceColor.getter()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v5, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v2 = (*(v3 + 168))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_252039F34(v5, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v2;
}

UIImage __swiftcall AnyHearingFeatureContentProvider.leftImage(isDark:)(Swift::Bool isDark)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v3, v8, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v6.super.isa = (*(v5 + 176))(isDark, v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v6;
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }
}

UIImage __swiftcall AnyHearingFeatureContentProvider.rightImage(isDark:)(Swift::Bool isDark)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v3, v8, &qword_27F4C9A10, &qword_2520677F0);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v6.super.isa = (*(v5 + 184))(isDark, v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v6;
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }
}

uint64_t AnyHearingFeatureContentProvider.featureTitleSettings.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v1, v8, &qword_27F4C9A10, &qword_2520677F0);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v4 = (*(v3 + 192))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_252039F34(v8, &qword_27F4C9A10, &qword_2520677F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v4 = sub_252063D54();
  }

  return v4;
}

id sub_25203D138(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2520646F4();

  return v5;
}

uint64_t AnyHearingFeatureContentProvider.featureFooterSettings.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v0 + v2, v25, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v26;
  if (v26)
  {
    v4 = v27;
    __swift_project_boxed_opaque_existential_0(v25, v26);
    v5 = (*(v4 + 200))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_252039F34(v25, &qword_27F4C9A10, &qword_2520677F0);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_252064A34();
    MEMORY[0x253097B50](0xD000000000000015, 0x800000025206C4A0);
    sub_25203E9E4(v0 + v2, v25, &qword_27F4C9A10, &qword_2520677F0);
    v6 = v26;
    if (v26)
    {
      v7 = v27;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      v8 = (*(v7 + 16))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_252039F34(v25, &qword_27F4C9A10, &qword_2520677F0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      v8 = sub_252063D54();
      v10 = v13;
    }

    MEMORY[0x253097B50](v8, v10);

    MEMORY[0x253097B50](0xD000000000000073, 0x800000025206C4C0);
    sub_25203E9E4(v1 + v2, v25, &qword_27F4C9A10, &qword_2520677F0);
    v14 = v26;
    if (v26)
    {
      v15 = v27;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_252039F34(v25, &qword_27F4C9A10, &qword_2520677F0);
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v16 = sub_252063D54();
      v18 = v21;
    }

    MEMORY[0x253097B50](v16, v18);

    MEMORY[0x253097B50](0xD000000000000039, 0x800000025206C540);
    v22 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v5 = sub_252063D54();
  }

  return v5;
}

uint64_t AnyHearingFeatureContentProvider.fitWelcomeController(bluetoothDevice:contentProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v2 + v5, v10, &qword_27F4C9A10, &qword_2520677F0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    v8 = (*(v7 + 208))(a1, a2, v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_252039F34(v10, &qword_27F4C9A10, &qword_2520677F0);
    return 0;
  }

  return v8;
}

uint64_t AnyHearingFeatureContentProvider.featureFlag.getter()
{
  sub_2520640D4();
  v0 = sub_2520640C4();
  v1 = sub_2520640A4();

  return v1 & 1;
}

id AnyHearingFeatureContentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnyHearingFeatureContentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_25203DA34@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AnyHearingFeatureContentProvider.suggestionFitSymbols.getter(v8);
  result = *v8;
  v5 = v8[1];
  v6 = v9;
  v7 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_25203DBE0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v2, v7, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v5 = (*(v4 + 136))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_252039F34(v7, &qword_27F4C9A10, &qword_2520677F0);
    return 0x7073646F70726961;
  }

  return v5;
}

uint64_t sub_25203DCCC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v2, v6, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    LOBYTE(v3) = (*(v4 + 144))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v3 & 1;
}

uint64_t sub_25203DD98()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v2, v6, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v3 = (*(v4 + 152))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v3;
}

unint64_t sub_25203DE64()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v2, v7, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v5 = (*(v4 + 160))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    return v5;
  }

  else
  {
    sub_252039F34(v7, &qword_27F4C9A10, &qword_2520677F0);
    return sub_25203E7DC(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_25203DF3C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v1 + v2, v6, &qword_27F4C9A10, &qword_2520677F0);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v3 = (*(v4 + 168))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_252039F34(v6, &qword_27F4C9A10, &qword_2520677F0);
  }

  return v3;
}

uint64_t sub_25203E098(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_25203E9E4(v5 + v6, v11, &qword_27F4C9A10, &qword_2520677F0);
  v7 = v12;
  if (v12)
  {
    v8 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v9 = (*(v8 + 208))(a1, a2, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_252039F34(v11, &qword_27F4C9A10, &qword_2520677F0);
    return 0;
  }

  return v9;
}

uint64_t sub_25203E180()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_252063D54();

  return v2;
}

unint64_t sub_25203E234(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_252064A04();

  return sub_25203E278(a1, v5);
}

unint64_t sub_25203E278(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25203EA4C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253097DF0](v9, a1);
      sub_25203EAA8(v9);
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

id sub_25203E340(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice;
  *&v2[OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_headphoneDevice] = 0;
  v6 = &v2[OBJC_IVAR____TtC13HearingModeUI32AnyHearingFeatureContentProvider_featureContent];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  if (!a1)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_11;
  }

  v7 = a1;
  sub_252064074();
  if (!*(&v30 + 1))
  {
LABEL_11:
    sub_252039F34(&v29, &qword_27F4C9A38, &qword_252067878);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A50, &qword_252067890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A58, &qword_252067898);
  if (swift_dynamicCast())
  {
    if (*(&v33 + 1))
    {
      sub_25203EAFC(&v32, v35);
      v8 = v36;
      v9 = v37;
      __swift_project_boxed_opaque_existential_0(v35, v36);
      (*(v9 + 8))(&v32, v8, v9);
      swift_beginAccess();
      sub_25203AB68(&v32, v6);
      swift_endAccess();
      if (qword_27F4CB5F0 != -1)
      {
        swift_once();
      }

      v10 = sub_2520641F4();
      __swift_project_value_buffer(v10, qword_27F4CD468);
      v11 = v2;
      v12 = sub_2520641D4();
      v13 = sub_2520648D4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v29 = v15;
        *v14 = 136315138;
        sub_25203E9E4(v6, &v32, &qword_27F4C9A10, &qword_2520677F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A10, &qword_2520677F0);
        v16 = sub_252064994();
        v18 = v17;
        sub_252039F34(&v32, &qword_27F4C9A10, &qword_2520677F0);
        v19 = sub_25202FA10(v16, v18, &v29);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_25201E000, v12, v13, "Feature Content created for Provider: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x2530987C0](v15, -1, -1);
        MEMORY[0x2530987C0](v14, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
      goto LABEL_18;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

LABEL_13:
  sub_252039F34(&v32, &qword_27F4C9A40, &qword_252067880);
  if (qword_27F4CB5F0 != -1)
  {
    swift_once();
  }

  v20 = sub_2520641F4();
  __swift_project_value_buffer(v20, qword_27F4CD468);
  v21 = a1;
  v22 = sub_2520641D4();
  v23 = sub_2520648C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = a1;
    v26 = v21;
    _os_log_impl(&dword_25201E000, v22, v23, "Failed to initialize AnyHearingFeatureContentProvider with %@: No feature content available", v24, 0xCu);
    sub_252039F34(v25, &qword_27F4C9A48, &qword_252067888);
    MEMORY[0x2530987C0](v25, -1, -1);
    MEMORY[0x2530987C0](v24, -1, -1);
  }

LABEL_18:
  v28.receiver = v2;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

unint64_t sub_25203E790()
{
  result = qword_27F4C9A18;
  if (!qword_27F4C9A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C9A18);
  }

  return result;
}

unint64_t sub_25203E7DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A28, &qword_252067868);
    v3 = sub_252064AB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25203E9E4(v4, v13, &qword_27F4C9A30, &qword_252067870);
      result = sub_25203E234(v13);
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
      result = sub_25203A6D0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25203E918(uint64_t a1)
{
  result = sub_25203E940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25203E940()
{
  result = qword_27F4C9A20;
  if (!qword_27F4C9A20)
  {
    type metadata accessor for AnyHearingFeatureContentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9A20);
  }

  return result;
}

uint64_t sub_25203E9E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25203EAFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25203EB18()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD480);
  __swift_project_value_buffer(v0, qword_27F4CD480);
  return sub_2520641E4();
}

uint64_t sub_25203EB98()
{
  if (qword_27F4CB680 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD480);
}

uint64_t sub_25203EBFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB680 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_25203ECA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id static OcclusionAlertProvider.makeAlertForOcclusionTryLater(address:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2520646E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2520646C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2520640D4();
  v11 = sub_2520640C4();
  v35 = a1;
  v36 = a2;
  aBlock = a1;
  v38 = a2;
  v45 = 58;
  v46 = 0xE100000000000000;
  v43 = 45;
  v44 = 0xE100000000000000;
  sub_2520376CC();
  v12 = sub_2520649A4();
  v14 = v13;
  v15 = sub_2520640B4();

  if (*(v15 + 16))
  {
    v16 = sub_25202FFB8(v12, v14);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v16);
      v20 = v19;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_6:
  type metadata accessor for AnyHearingFeatureContentProvider();
  v34 = v19;
  v21 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v19);
  v22 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v33 = v21;
  if (v22)
  {
    AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();
  sub_2520646A4();
  sub_2520646D4();
  v32[1] = sub_252050ED4(v8);
  v23 = *(v5 + 8);
  v23(v8, v4);
  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v8);
  v23(v8, v4);
  v24 = sub_2520646F4();

  v25 = sub_2520646F4();

  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  sub_252064684();
  sub_252050ED4(v8);
  v23(v8, v4);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *(v27 + 24) = v36;

  v28 = sub_2520646F4();

  v41 = sub_2520431D8;
  v42 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_25203ECA8;
  v40 = &block_descriptor_2;
  v29 = _Block_copy(&aBlock);

  v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  [v26 addAction_];
  return v26;
}

id static OcclusionAlertProvider.makeAlertForOcclusionTutorial(deviceName:subsequentAttempt:address:presentTutorialUIHandler:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a7;
  v70 = a6;
  v63 = a3;
  v62 = a2;
  v61 = a1;
  v9 = sub_2520646E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2520646C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_2520640D4();
  v16 = sub_2520640C4();
  aBlock = a4;
  v74 = a5;
  v81 = 58;
  v82 = 0xE100000000000000;
  v79 = 45;
  v80 = 0xE100000000000000;
  sub_2520376CC();
  v17 = sub_2520649A4();
  v19 = v18;
  v20 = sub_2520640B4();

  if (*(v20 + 16))
  {
    v21 = sub_25202FFB8(v17, v19);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v21);
      v25 = v24;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v24 = 0;
LABEL_6:
  v72 = v9;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v66 = v24;
  v26 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v24);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  v27 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v67 = a5;
  v71 = a4;
  v65 = v26;
  if (v27)
  {
    v59 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
    v60 = v28;
  }

  else
  {
    v60 = 0xE700000000000000;
    v59 = 0x73646F50726941;
  }

  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();
  sub_2520646A4();
  sub_2520646D4();
  v29 = sub_252050ED4(v13);
  v30 = v13;
  v31 = *(v10 + 8);
  v68 = v10 + 8;
  v69 = v29;
  v32 = v72;
  v31(v30, v72);
  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v30);
  v31(v30, v32);
  v33 = sub_2520646F4();

  v34 = sub_2520646F4();

  v35 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

  sub_252064684();
  sub_252050ED4(v30);
  v69 = v31;
  v31(v30, v32);
  v36 = swift_allocObject();
  v36[2] = v61;
  v37 = v70;
  v38 = v71;
  v36[3] = v62;
  v36[4] = v38;
  v39 = v67;
  v36[5] = v67;
  v36[6] = v37;
  v40 = v64;
  v36[7] = v64;

  v41 = sub_2520646F4();

  v77 = sub_252043200;
  v78 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_25203ECA8;
  v76 = &block_descriptor_6_0;
  v42 = _Block_copy(&aBlock);

  v43 = objc_opt_self();
  v44 = [v43 actionWithTitle:v41 style:0 handler:v42];
  _Block_release(v42);

  v62 = v35;
  [v35 addAction_];

  if (v63)
  {
    sub_2520646B4();
    sub_2520646A4();
    sub_252064694();

    sub_2520646A4();
    sub_2520646D4();
    sub_252050ED4(v30);
    v69(v30, v72);
    v45 = swift_allocObject();
    v46 = v71;
    *(v45 + 16) = v70;
    *(v45 + 24) = v40;
    *(v45 + 32) = v46;
    *(v45 + 40) = v39;
    v47 = 4;
    *(v45 + 48) = 4;

    v48 = sub_2520646F4();

    v77 = sub_2520433FC;
    v78 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_25203ECA8;
    v76 = &block_descriptor_18_0;
    v49 = _Block_copy(&aBlock);

    v50 = [v43 actionWithTitle:v48 style:0 handler:v49];
    _Block_release(v49);

    v51 = v62;
    [v62 addAction_];

    v52 = v46;
  }

  else
  {

    v47 = 3;
    v51 = v62;
    v52 = v71;
  }

  sub_252064684();
  sub_252050ED4(v30);
  v69(v30, v72);
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v39;
  *(v53 + 32) = v47;

  v54 = sub_2520646F4();

  v77 = sub_2520433EC;
  v78 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_25203ECA8;
  v76 = &block_descriptor_12_0;
  v55 = _Block_copy(&aBlock);

  v56 = [v43 actionWithTitle:v54 style:1 handler:v55];
  _Block_release(v55);

  [v51 addAction_];
  return v51;
}

uint64_t sub_25203FBF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_deviceName);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_deviceName + 8);

  return v1;
}

id OcclusionTutorialController.init(airPodName:address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier] = 0;
  v8 = &v4[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_deviceName];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_2520640D4();
  v9 = sub_2520640C4();
  v29 = a3;
  v30 = a4;
  v27 = 58;
  v28 = 0xE100000000000000;
  v25 = 45;
  v26 = 0xE100000000000000;
  v23 = sub_2520376CC();
  v22 = MEMORY[0x277D837D0];
  v10 = sub_2520649A4();
  v12 = v11;

  v13 = sub_2520640B4();

  if (!*(v13 + 16))
  {

    goto LABEL_5;
  }

  v14 = sub_25202FFB8(v10, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_5:

    v17 = 0;
    goto LABEL_6;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  v18 = v17;

LABEL_6:
  type metadata accessor for AnyHearingFeatureContentProvider();
  v19 = v17;
  *&v5[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_provider] = AnyHearingFeatureContentProvider.__allocating_init(device:)(v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for OcclusionTutorialController();
  v20 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0, v22, v23, v23, v23);

  return v20;
}

id sub_25203FE48()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setDataSource_];
    [v4 setDelegate_];
    [v4 setAllowsSelection_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_25203FF20(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_25203FF34(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_25203FE48();
  return sub_25203FF7C;
}

void sub_25203FF7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table) = v2;
}

id sub_25203FF94()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell);
LABEL_5:
    v8 = v2;
    return v3;
  }

  type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v4 = v0;
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  result = sub_2520445EC(3, 0, 0xE000000000000000, v5);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_252040054(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252040068(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_25203FF94();
  return sub_2520400B0;
}

void sub_2520400B0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell) = v2;
}

id sub_2520400C8()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton);
LABEL_12:
    v27 = v2;
    return v3;
  }

  v4 = v0;
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() buttonWithType_];
  v7 = [v6 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setAdjustsFontForContentSizeCategory_];
  }

  v9 = [v6 titleLabel];
  if (!v9)
  {
LABEL_8:
    sub_252064A34();

    v13 = *(v4 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_provider);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v14 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xEB000000006F7250;
      v14 = 0x2073646F50726941;
    }

    MEMORY[0x253097B50](v14, v16);

    MEMORY[0x253097B50](10911970, 0xA300000000000000);
    sub_25203AED0();

    v17 = sub_2520646F4();

    [v6 setTitle:v17 forState:0];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setContentHorizontalAlignment_];
    sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
    v18 = sub_252064974();
    [v6 addAction:v18 forControlEvents:{64, 0, 0, 0, sub_252040484, 0}];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9CB0, &unk_252067A70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252066AA0;
    v20 = sub_252064204();
    v21 = MEMORY[0x277D74BF0];
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    v22 = sub_252064264();
    v23 = MEMORY[0x277D74DB8];
    *(v19 + 48) = v22;
    *(v19 + 56) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v6;
    *(v24 + 24) = ObjectType;
    v25 = v6;
    sub_252064914();

    swift_unknownObjectRelease();
    v26 = *(v4 + v1);
    *(v4 + v1) = v25;
    v3 = v25;

    v2 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v12 = result;
    [v10 setFont_];

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_252040484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_252063DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063D94();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = objc_opt_self();
    v11 = [v10 sharedApplication];
    v12 = sub_252063D74();
    v13 = [v11 canOpenURL_];

    if (v13)
    {
      v14 = [v10 sharedApplication];
      v15 = sub_252063D74();
      sub_25203A508(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey();
      sub_25203A77C(&qword_27F4C9958);
      v16 = sub_252064654();

      [v14 openURL:v15 options:v16 completionHandler:0];
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_252040704(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252040718(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2520400C8();
  return sub_252040760;
}

void sub_252040760(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton) = v2;
}

unint64_t sub_252040778()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier;
  v2 = *&v0[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier];
LABEL_11:
    v34 = v2;
    return v3;
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BB8, &qword_252067990);
  v5 = sub_25203614C();
  v7 = v6;
  v8 = sub_25203614C();
  v10 = sub_252036158(v5, v7, v8, v9);
  v11 = sub_25203AED0();
  v13 = v12;
  v37 = type metadata accessor for OcclusionTutorialController();
  *&v36 = v4;
  v14 = type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v15 = v4;
  v16 = sub_252035EF0();
  memset(v35 + 8, 0, 24);
  *&v35[0] = v14;
  v17 = sub_2520360FC(0, 0, v11, v13, &v36, 0, 0, 2, v38, 0, v16 & 1, v35[0], v35[1], 0, 0);
  v18 = (*(*v10 + 152))(v38, v17);

  v19 = sub_252043E34(v38);
  v20 = (*(*v18 + 184))(v19);

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v21 = sub_252064A84();
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_5:
  v22 = __OFSUB__(v21, 1);
  result = v21 - 1;
  if (v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v24 = MEMORY[0x253097E20](result, v20);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v20 + 8 * result + 32);
LABEL_10:
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BF0, &qword_2520679C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252066A80;
    v27 = sub_2520444C4();
    v29 = *v27;
    v28 = v27[1];
    *(inited + 32) = v29;
    *(inited + 40) = v28;
    v30 = *((*MEMORY[0x277D85000] & *v15) + 0xD8);

    *(inited + 48) = v30(v31);
    sub_252043714(inited, &qword_27F4C9C08, &unk_2520679D0);
    swift_setDeallocating();
    sub_252039F34(inited + 32, &qword_27F4C9BF8, &qword_2520679C8);
    sub_252035980(0, &qword_27F4C9C00, 0x277D75220);
    v32 = sub_252064654();

    [v25 setUserInfo_];

    *&v36 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BD0, &qword_2520679A8);
    [v25 setProperty:sub_252064B04() forKey:*MEMORY[0x277D3FE58]];
    swift_unknownObjectRelease();
    v33 = *&v4[v1];
    *&v4[v1] = v25;
    v3 = v25;

    v2 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_252040B68(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252040B7C(unint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_252040778();
  return sub_252040BC4;
}

void sub_252040BC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier) = v2;
}

id sub_252040BDC()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell);
LABEL_5:
    v8 = v2;
    return v3;
  }

  type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v4 = v0;
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x120))();
  result = sub_2520445EC(3, 0, 0xE000000000000000, v5);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_252040CA4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252040CB8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_252040BDC();
  return sub_252040D00;
}

void sub_252040D00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell) = v2;
}

unint64_t sub_252040D18()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier;
  v2 = *&v0[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier];
LABEL_11:
    v90 = v2;
    return v3;
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BB8, &qword_252067990);
  v5 = sub_25203614C();
  v7 = v6;
  v8 = sub_25203614C();
  v10 = sub_252036158(v5, v7, v8, v9);
  v11 = sub_25203AED0();
  v13 = v12;
  v102 = type metadata accessor for OcclusionTutorialController();
  *&v101 = v4;
  v14 = type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v15 = v4;
  v16 = sub_252035EF0();
  memset(v91 + 8, 0, 24);
  *&v91[0] = v14;
  v17 = sub_2520360FC(0, 0, v11, v13, &v101, 0, 0, 2, &v103, 0, v16 & 1, v91[0], v91[1], 0, 0);
  v18 = (*(*v10 + 152))(&v103, v17);

  v19 = sub_252043E34(&v103);
  v20 = (*(*v18 + 184))(v19);

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v21 = sub_252064A84();
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_5:
  v22 = __OFSUB__(v21, 1);
  result = v21 - 1;
  if (v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v99 = v1;
  v100 = v4;
  v98 = v14;
  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v24 = MEMORY[0x253097E20](result, v20);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v20 + 8 * result + 32);
LABEL_10:
    v97 = v24;

    v26 = *&v15[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_deviceName];
    v25 = *&v15[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_deviceName + 8];
    v27 = *&v15[OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_provider];
    v96 = type metadata accessor for OcclusionTutorialController.TopView();
    v28 = objc_allocWithZone(v96);

    v29 = v27;
    *&v28[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel] = 0;
    *&v28[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView] = 0;
    *&v28[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView] = 0;
    v30 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_leftStatusMarkImage;
    *&v28[v30] = sub_25204216C();
    v31 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_rightStatusMarkImage;
    *&v28[v31] = sub_252042328();
    v32 = &v28[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_deviceName];
    *v32 = v26;
    *(v32 + 1) = v25;
    *&v28[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_provider] = v29;
    v103.receiver = v28;
    v103.super_class = v96;
    v95 = v29;
    v33 = objc_msgSendSuper2(&v103, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v33 setTranslatesAutoresizingMaskIntoConstraints_];
    v34 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor_];

    v35 = sub_252041F9C();
    [v33 addSubview_];

    v36 = sub_252042084();
    [v33 addSubview_];

    v92 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_leftStatusMarkImage;
    [v33 addSubview_];
    v93 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_rightStatusMarkImage;
    [v33 addSubview_];
    v37 = sub_252041CB8();
    [v33 addSubview_];

    v38 = [v33 layer];
    [v38 setMasksToBounds_];

    v94 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2520678A0;
    v40 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView;
    v41 = [*&v33[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView] topAnchor];
    v42 = [v33 &selRef_getBluetoothDeviceFromAddressOrUUID_];
    v43 = [v41 constraintEqualToAnchor_];

    *(v39 + 32) = v43;
    v44 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView;
    v45 = [*&v33[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView] &selRef_getBluetoothDeviceFromAddressOrUUID_];
    v46 = [v33 &selRef_getBluetoothDeviceFromAddressOrUUID_];
    v47 = [v45 constraintEqualToAnchor_];

    *(v39 + 40) = v47;
    v48 = [*&v33[v40] centerXAnchor];
    v49 = [v33 centerXAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-60.0];

    *(v39 + 48) = v50;
    v51 = [*&v33[v44] centerXAnchor];
    v52 = [v33 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:60.0];

    *(v39 + 56) = v53;
    v54 = [*&v33[v40] heightAnchor];
    v55 = [*&v33[v44] heightAnchor];
    v56 = [v54 &selRef_userInfo + 5];

    *(v39 + 64) = v56;
    v57 = [*&v33[v92] centerXAnchor];
    v58 = [*&v33[v40] centerXAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:12.0];

    *(v39 + 72) = v59;
    v60 = [*&v33[v92] topAnchor];
    v61 = [*&v33[v40] bottomAnchor];
    v62 = [v60 &selRef_view + 6];

    *(v39 + 80) = v62;
    v63 = [*&v33[v93] centerXAnchor];
    v64 = [*&v33[v44] centerXAnchor];
    v65 = [v63 &selRef_view + 6];

    *(v39 + 88) = v65;
    v66 = [*&v33[v93] topAnchor];
    v67 = [*&v33[v44] bottomAnchor];
    v68 = [v66 &selRef_view + 6];

    *(v39 + 96) = v68;
    v69 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel;
    v70 = [*&v33[OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel] leadingAnchor];
    v71 = [v33 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor_];

    *(v39 + 104) = v72;
    v73 = [*&v33[v69] trailingAnchor];
    v74 = [v33 trailingAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    *(v39 + 112) = v75;
    v76 = [*&v33[v69] topAnchor];
    v77 = [*&v33[v93] bottomAnchor];
    v78 = [v76 &selRef_view + 6];

    *(v39 + 120) = v78;
    v79 = [*&v33[v69] bottomAnchor];
    v80 = [v33 bottomAnchor];

    v81 = [v79 constraintEqualToAnchor_];
    *(v39 + 128) = v81;
    sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
    v82 = sub_2520647B4();

    [v94 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BC0, &qword_252067998);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252066A80;
    v84 = sub_2520444C4();
    v86 = *v84;
    v85 = v84[1];
    *(inited + 32) = v86;
    *(inited + 40) = v85;
    *(inited + 48) = v33;

    v87 = v33;
    sub_252043714(inited, &qword_27F4C9BD8, &unk_2520679B0);
    swift_setDeallocating();
    sub_252039F34(inited + 32, &qword_27F4C9BC8, &qword_2520679A0);
    v88 = sub_252064654();

    [v97 setUserInfo_];

    *&v101 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9BD0, &qword_2520679A8);
    [v97 setProperty:sub_252064B04() forKey:*MEMORY[0x277D3FE58]];
    swift_unknownObjectRelease();

    v89 = *&v100[v99];
    *&v100[v99] = v97;
    v3 = v97;

    v2 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_25204185C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252041870(unint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_252040D18();
  return sub_2520418B8;
}

void sub_2520418B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier) = v2;
}

void sub_2520418D0()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for OcclusionTutorialController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_provider);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v3 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE700000000000000;
    v3 = 0x73646F50726941;
  }

  MEMORY[0x253097B50](v3, v5);

  sub_25203AED0();

  v6 = sub_2520646F4();

  [v1 setTitle_];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
    v10 = v9();
    [v8 addSubview_];

    v11 = v9();
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v11 pinToOther_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_252041CB8()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel);
  }

  else
  {
    v4 = sub_252041D1C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_252041D1C(uint64_t a1)
{
  v2 = sub_2520646E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520646C4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setTextAlignment_];
  [v9 setNumberOfLines_];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v11];
  v17[1] = a1;
  sub_2520646B4();
  sub_2520646A4();
  v12 = *(a1 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_deviceName);
  v13 = *(a1 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_deviceName + 8);
  sub_252064694();
  sub_2520646A4();
  sub_2520646D4();
  type metadata accessor for OcclusionTutorialController.TopView();
  sub_252050ED4(v6);
  (*(v3 + 8))(v6, v2);
  v14 = sub_2520646F4();

  [v9 setText_];

  LODWORD(v15) = 1144750080;
  [v9 setContentHuggingPriority:1 forAxis:v15];
  return v9;
}

id sub_252041F9C()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_provider);
    v6 = AnyHearingFeatureContentProvider.occlusionLeftImage.getter();
    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v8 = v7;
    [v8 setContentMode_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v9];
    v10 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_252042084()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_provider);
    v6 = AnyHearingFeatureContentProvider.occlusionRightImage.getter();
    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v8 = v7;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setContentMode_];

    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v9];
    v10 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_25204216C()
{
  v0 = sub_2520646F4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() redColor];
    v3 = [v1 imageWithTintColor:v2 renderingMode:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  [v7 setActive_];
  v8 = [v5 widthAnchor];

  v9 = [v8 constraintEqualToConstant_];
  [v9 setActive_];

  return v5;
}

id sub_252042328()
{
  v0 = sub_2520646F4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() redColor];
    v3 = [v1 imageWithTintColor:v2 renderingMode:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  [v7 setActive_];
  v8 = [v5 widthAnchor];

  v9 = [v8 constraintEqualToConstant_];
  [v9 setActive_];

  return v5;
}

id OcclusionTutorialController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520646F4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_25204283C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s13HearingModeUI22OcclusionAlertProviderV04makee3ForD8TryLaterSo17UIAlertControllerCyFZ_0()
{
  v0 = sub_2520646E4();
  v14 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252064684();
  sub_252050ED4(v4);
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_252064684();
  sub_252050ED4(v4);
  v5(v4, v0);
  v6 = sub_2520646F4();

  v7 = sub_2520646F4();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  sub_252064684();
  sub_252050ED4(v4);
  v5(v4, v14);
  v9 = sub_2520646F4();

  aBlock[4] = CGPointMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25203ECA8;
  aBlock[3] = &block_descriptor_69;
  v10 = _Block_copy(aBlock);

  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  [v8 addAction_];
  return v8;
}

id _s13HearingModeUI22OcclusionAlertProviderV04makee3ForD8Tutorial10deviceName17subsequentAttempt07presentI9UIHandlerSo17UIAlertControllerCSS_SbySo06UIViewQ0CctFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a1;
  v33 = a3;
  v32 = a2;
  v6 = sub_2520646E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252064684();
  sub_252050ED4(v10);
  v11 = *(v7 + 8);
  v11(v10, v6);
  sub_252064684();
  sub_252050ED4(v10);
  v11(v10, v6);
  v12 = sub_2520646F4();

  v13 = sub_2520646F4();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_252064684();
  sub_252050ED4(v10);
  v34 = v11;
  v11(v10, v6);
  v15 = v30;
  v16 = swift_allocObject();
  v16[2] = v31;
  v16[3] = v32;
  v16[4] = a4;
  v31 = a4;
  v16[5] = v15;

  v17 = sub_2520646F4();

  v39 = sub_252043FB0;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_25203ECA8;
  v38 = &block_descriptor_54;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v14 addAction_];
  if (v33)
  {
    sub_252064684();
    sub_252050ED4(v10);
    v34(v10, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = v31;
    *(v21 + 24) = v15;

    v22 = sub_2520646F4();

    v39 = sub_252044174;
    v40 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_25203ECA8;
    v38 = &block_descriptor_63;
    v23 = _Block_copy(&aBlock);

    v24 = [v19 actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v14 addAction_];
  }

  sub_252064684();
  sub_252050ED4(v10);
  v34(v10, v6);
  v25 = sub_2520646F4();

  v39 = CGPointMake;
  v40 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_25203ECA8;
  v38 = &block_descriptor_57;
  v26 = _Block_copy(&aBlock);

  v27 = [v19 actionWithTitle:v25 style:1 handler:v26];
  _Block_release(v26);

  [v14 addAction_];
  return v14;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252043200()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = objc_allocWithZone(type metadata accessor for OcclusionTutorialController());

  v8 = OcclusionTutorialController.init(airPodName:address:)(v1, v2, v3, v4);
  [v8 setModalInPresentation_];
  v9 = [v8 navigationItem];
  sub_252035980(0, &qword_27F4C9C18, 0x277D751E0);
  sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v13 = v8;
  sub_252064974();
  v11 = sub_2520648E4();
  [v9 setRightBarButtonItem_];

  v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v6(v12);
  sub_2520434A0(v3, v4, 3, 3);
}

void sub_2520433FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = static OcclusionAlertProvider.makeAlertForOcclusionTryLater(address:)(v3, v4);
  v2();

  sub_2520434A0(v3, v4, v5, 4);
}

void sub_2520434A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F4CB680 != -1)
  {
    swift_once();
  }

  v8 = sub_2520641F4();
  __swift_project_value_buffer(v8, qword_27F4CD480);

  v9 = sub_2520641D4();
  v10 = sub_2520648D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_25202FA10(a1, a2, &v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a3;
    *(v11 + 18) = 1024;
    *(v11 + 20) = a4;
    _os_log_impl(&dword_25201E000, v9, v10, "sendOcclusionUserInteractions: with input %s %d %d", v11, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2530987C0](v12, -1, -1);
    MEMORY[0x2530987C0](v11, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  v14 = sub_2520646F4();
  [v13 occlusionIndicationShownForDeviceAddress:v14 featureID:3 type:a3 action:a4];
}

void sub_252043670()
{
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___table) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonCell) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___learnButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___buttonSpecifier) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewCell) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController____lazy_storage___topViewSpecifier) = 0;
  sub_252064A74();
  __break(1u);
}

unint64_t sub_252043714(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252064AB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_25202FFB8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_252043810()
{
  v1 = sub_252063E24();
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  if (v1)
  {
    v12 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
    v4 = v12();
    v5 = (*((*v2 & *v0) + 0xF0))();
    [v4 refreshCellContentsWithSpecifier_];

    return v12();
  }

  else
  {
    v11 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
    v7 = v11();
    v8 = (*((*v2 & *v0) + 0x120))();
    [v7 refreshCellContentsWithSpecifier_];

    v9 = v11();
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    return v11();
  }
}

uint64_t sub_252043A08(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  sub_252064A34();
  MEMORY[0x253097B50](0x7720756F79207341, 0xEC00000020726165);
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI27OcclusionTutorialController_provider);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v3 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xEB000000006F7250;
    v3 = 0x2073646F50726941;
  }

  v7 = 0x73646F50726941;
  MEMORY[0x253097B50](v3, v5);

  MEMORY[0x253097B50](0xD0000000000000A4, 0x800000025206CE90);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v8 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x73646F50726941;
  }

  MEMORY[0x253097B50](v8, v10);

  MEMORY[0x253097B50](657966, 0xE300000000000000);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v7 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x253097B50](v7, v12);

  MEMORY[0x253097B50](0xD00000000000005BLL, 0x800000025206CF40);
  v13 = sub_25203AED0();

  return v13;
}

uint64_t getEnumTagSinglePayload for OcclusionAlertProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OcclusionAlertProvider(_WORD *result, int a2, int a3)
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

void sub_252043E88()
{
  v1 = [*(v0 + 16) titleLabel];
  if (v1)
  {
    v4 = v1;
    v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (v2)
    {
      v3 = v2;
      [v4 setFont_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_14Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));
  a2(*(v3 + 40));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

void sub_252043FB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = objc_allocWithZone(type metadata accessor for OcclusionTutorialController());

  v6 = OcclusionTutorialController.init(airPodName:address:)(v1, v2, 0, 0xE000000000000000);
  [v6 setModalInPresentation_];
  v7 = [v6 navigationItem];
  sub_252035980(0, &qword_27F4C9C18, 0x277D751E0);
  sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v11 = v6;
  sub_252064974();
  v9 = sub_2520648E4();
  [v7 setRightBarButtonItem_];

  v10 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v4(v10);
}

void sub_252044174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = _s13HearingModeUI22OcclusionAlertProviderV04makee3ForD8TryLaterSo17UIAlertControllerCyFZ_0();
  v1();
}

void sub_2520441C4()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_2520442A8()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD498);
  __swift_project_value_buffer(v0, qword_27F4CD498);
  return sub_2520641E4();
}

uint64_t sub_252044328()
{
  if (qword_27F4CB990 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD498);
}

uint64_t sub_25204438C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CB990 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HeadphoneAccessoryCellUIContainer.ContentViewStyleType.hashValue.getter()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

id sub_2520445EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_2520646F4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_25204467C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration] = 0;
  if (a3)
  {
    v7 = sub_2520646F4();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v8 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {

    v9 = v8;
    [v9 setAccessoryType_];
  }

  return v8;
}

id sub_2520447EC()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_252044860(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252044874(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2520447EC();
  return sub_2520448BC;
}

void sub_2520448BC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView) = v2;
}

id sub_2520448D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2520646F4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_252044950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration] = 0;
  if (a3)
  {
    v5 = sub_2520646F4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HeadphoneAccessoryCellUIContainer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  [v6 setAccessoryType_];
  return v6;
}

void sub_252044A4C()
{
  *(v0 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration) = 0;
  sub_252064A74();
  __break(1u);
}

uint64_t sub_252044B34()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_252044B7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void sub_252044C34(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_252064254();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ([a1 userInfo])
  {
    sub_2520649D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v71 = v68;
  v72 = v69;
  if (!*(&v69 + 1))
  {
    goto LABEL_16;
  }

  sub_252035980(0, &qword_27F4C9C90, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v62 = v5;
    v63 = v4;
    v11 = v66;
    *&v68 = 0xD000000000000031;
    *(&v68 + 1) = 0x800000025206D220;
    v12 = sub_252064B04();
    v64 = v11;
    v13 = [v11 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_2520649D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    v71 = v68;
    v72 = v69;
    if (*(&v69 + 1))
    {
      sub_252035980(0, &qword_27F4C9C98, 0x277D75D18);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_18;
      }

      v14 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9CA0, &qword_252067A60);
      if (swift_dynamicCast())
      {
        sub_25203EAFC(&v68, &v71);
        sub_252064214();
        *&v66 = 0xD000000000000038;
        *(&v66 + 1) = 0x800000025206D260;
        v15 = [v64 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v15)
        {
          sub_2520649D4();
          swift_unknownObjectRelease();
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        v68 = v66;
        v69 = v67;
        if (*(&v67 + 1))
        {
          v26 = swift_dynamicCast();
          if (v26 && (v65 & 1) != 0)
          {
            v27 = [v1 contentView];
            [v27 addSubview_];

            sub_252045694(&v71);
            v28 = [v1 contentView];
            [v14 pinToOther_];

            [v1 setAccessoryType_];
            [v1 setNeedsLayout];
            [v1 layoutIfNeeded];

LABEL_35:
            (*(v62 + 8))(v10, v63);
            __swift_destroy_boxed_opaque_existential_0(&v71);
            return;
          }
        }

        else
        {
          v26 = sub_252039F34(&v68, &unk_27F4C98E0, &qword_2520673D0);
        }

        v61 = v14;
        if ((*((*MEMORY[0x277D85000] & *v1) + 0x78))(v26))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9CB0, &unk_252067A70);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_252066A80;
          v30 = sub_252064264();
          v31 = MEMORY[0x277D74DB8];
          v60 = v29;
          *(v29 + 32) = v30;
          *(v29 + 40) = v31;
          v32 = v62;
          v33 = v63;
          (*(v62 + 16))(v8, v10, v63);
          sub_25204599C(&v71, &v68);
          v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
          v35 = (v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
          v36 = swift_allocObject();
          (*(v32 + 32))(v36 + v34, v8, v33);
          sub_25203EAFC(&v68, v36 + v35);
          *(v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
          v37 = sub_252064954();

          (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v37);
        }

        v38 = [v1 contentView];
        v39 = v61;
        [v38 addSubview_];

        sub_252045694(&v71);
        v60 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_252067200;
        v41 = [v39 leadingAnchor];
        v42 = [v1 layoutMarginsGuide];
        v43 = [v42 leadingAnchor];

        v44 = [v41 constraintEqualToAnchor_];
        *(v40 + 32) = v44;
        v45 = [v39 trailingAnchor];
        v46 = [v1 layoutMarginsGuide];
        v47 = [v46 trailingAnchor];

        v48 = [v45 &selRef_userInfo + 5];
        *(v40 + 40) = v48;
        v49 = [v39 topAnchor];
        v50 = [v1 contentView];
        v51 = [v50 layoutMarginsGuide];

        v52 = [v51 topAnchor];
        v53 = [v49 constraintEqualToAnchor_];

        *(v40 + 48) = v53;
        v54 = [v39 bottomAnchor];
        v55 = [v1 contentView];
        v56 = [v55 layoutMarginsGuide];

        v57 = [v56 bottomAnchor];
        v58 = [v54 constraintEqualToAnchor_];

        *(v40 + 56) = v58;
        sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
        v59 = sub_2520647B4();

        [v60 activateConstraints_];

        [v1 setAccessoryType_];
        [v1 setNeedsLayout];
        [v1 layoutIfNeeded];

        goto LABEL_35;
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      v16 = &unk_27F4C9CA8;
      v17 = &unk_252067A68;
      v18 = &v68;
      goto LABEL_17;
    }

LABEL_16:
    v16 = &unk_27F4C98E0;
    v17 = &qword_2520673D0;
    v18 = &v71;
LABEL_17:
    sub_252039F34(v18, v16, v17);
  }

LABEL_18:
  if (qword_27F4CB990 != -1)
  {
    swift_once();
  }

  v19 = sub_2520641F4();
  __swift_project_value_buffer(v19, qword_27F4CD498);
  v20 = a1;
  v21 = sub_2520641D4();
  v22 = sub_2520648C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = a1;
    v25 = v20;
    _os_log_impl(&dword_25201E000, v21, v22, "HearingTopLevelCell refreshCellContents dependencies not meet %@", v23, 0xCu);
    sub_252039F34(v24, &qword_27F4C9A48, &qword_252067888);
    MEMORY[0x2530987C0](v24, -1, -1);
    MEMORY[0x2530987C0](v23, -1, -1);
  }
}
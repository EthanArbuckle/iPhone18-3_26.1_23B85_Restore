void sub_230404304(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_230404C3C;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD8];
  v6[1] = 1107296256;
  v6[2] = sub_230404534;
  v6[3] = &block_descriptor_5;
  v5 = _Block_copy(v6);

  xpc_event_publisher_set_handler();
  _Block_release(v5);
}

uint64_t sub_2304043E0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (result == 2)
  {
    a2 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
  }

  else if (result == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v6 = a3;
    v7 = 0xD000000000000019;
    if (!a3)
    {
      result = sub_23041C3D8();
      __break(1u);
      return result;
    }

    v8 = 0x8000000230422830;
    swift_unknownObjectRetain();
    v9 = 0;
  }

  v10 = a2;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_230404E9C(a2, v6, v7, v8, v9);
  a4(&v10);
  sub_230404EE4(a2, v6, v7, v8, v9);
  return sub_230404EE4(v10, v11, v12, v13, v14);
}

uint64_t sub_230404534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_2304045B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_230404C44;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD8];
  v6[1] = 1107296256;
  v6[2] = sub_2304048A0;
  v6[3] = &block_descriptor_6_1;
  v5 = _Block_copy(v6);

  xpc_event_publisher_set_error_handler();
  _Block_release(v5);
}

void sub_230404690(uint64_t a1, void (*a2)(void))
{
  v3 = sub_23041B7F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23041BB78();
  if ((v7 & 0x100000000) != 0)
  {
    v9 = xpc_strerror();
    if (v9)
    {
      v9 = sub_23041BE98();
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD00000000000001ALL;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x80000002304239E0;
    }

    v13 = sub_2303B9D74(MEMORY[0x277D84F90]);
    static XPCError.unknown(_:from:userInfo:)(v11, v12, 0, v13, v18);

    v14 = v18[0];
    v15 = v18[1];
    sub_2303BCF70();
    v16 = swift_allocError();
    *v17 = v14;
    v17[1] = v15;
    a2();
  }

  else
  {
    LODWORD(v18[0]) = v7;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303F7D74();
    sub_23041B918();
    v8 = sub_23041B7D8();
    (*(v4 + 8))(v6, v3);
    (a2)(v8);
  }
}

uint64_t sub_2304048A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2304048F4(void *a1, uint64_t *a2, char a3)
{
  v4 = *a2;
  v5 = j__xpc_event_publisher_fire_noboost;
  if (a3)
  {
    v5 = j__xpc_event_publisher_fire;
  }

  return (v5)(*(v3 + 16), v4, *a1);
}

void sub_230404960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v9[4] = sub_230404C4C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD8];
  v9[1] = 1107296256;
  v9[2] = sub_2303B98A0;
  v9[3] = &block_descriptor_12_0;
  v8 = _Block_copy(v9);

  xpc_event_publisher_fire_with_reply();
  _Block_release(v8);
}

uint64_t sub_230404A90()
{
  v5 = v8;
  v6 = v9;
  v7 = v10;
  v0(&v5);
  v1 = v5;
  v2 = v6;
  v3 = v7;

  return sub_2303BD25C(v1, *(&v1 + 1), v2, v3);
}

uint64_t XPCEventPublisher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_230404B38(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return xpc_event_publisher_create();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB503A0);
  result = sub_23041C278();
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_230404C58()
{
  result = qword_27DB4FC08;
  if (!qword_27DB4FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FC08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Mercury17XPCEventPublisherC18SubscriptionActionO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230404DE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230404E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_230404E70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_230404E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_230404EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_230404F2C@<X0>(void *a1@<X8>)
{
  result = xpc_event_publisher_create();
  *a1 = result;
  return result;
}

uint64_t XPCTypeDescriptor.name.getter()
{
  xpc_type_get_name(*v0);

  return sub_23041BE98();
}

uint64_t sub_230404FB4()
{
  result = XPCTypeGetMachSendOnce();
  qword_27DB503B0 = result;
  return result;
}

uint64_t XPCTypeMachSendOnce.getter()
{
  if (qword_27DB4FC80 != -1)
  {
    swift_once();
  }

  return qword_27DB503B0;
}

uint64_t static XPCTypeDescriptor.machSendOnce.getter@<X0>(void *a1@<X8>)
{
  if (qword_27DB4FC80 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27DB503B0;
  return result;
}

uint64_t static XPCTypeDescriptor.registry.getter()
{
  if (qword_27DB4FC88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_230405300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230420EB0;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503C8);
  *(v0 + 64) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 32) = 0x1ED3F20C0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503D0);
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 72) = 0x1ED3F22A0;
  *(v0 + 136) = v1;
  *(v0 + 144) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 112) = 0x1ED3F2110;
  *(v0 + 176) = v1;
  *(v0 + 184) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 152) = 0x1ED3F2160;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503D8);
  *(v0 + 224) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 192) = 0x1ED3F2070;
  *(v0 + 256) = v1;
  *(v0 + 264) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 232) = 0x1ED3F2390;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503E0);
  *(v0 + 304) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 272) = 0x1ED3F2020;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503E8);
  *(v0 + 344) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 312) = 0x1ED3F1C60;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503F0);
  *(v0 + 384) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 352) = 0x1ED3F1E40;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503F8);
  *(v0 + 424) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 392) = 0x1ED3F1DF0;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50400);
  *(v0 + 464) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 432) = 0x1ED3F1D50;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50408);
  *(v0 + 504) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 472) = 0x1ED3F1F30;
  *(v0 + 536) = v1;
  *(v0 + 544) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 512) = 0x1ED3F23E0;
  *(v0 + 576) = v1;
  *(v0 + 584) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 552) = 0x1ED3F1FD0;
  *(v0 + 616) = v1;
  *(v0 + 624) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 592) = 0x1ED3F2250;
  *(v0 + 656) = v1;
  *(v0 + 664) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 632) = 0x1ED3F2200;
  *(v0 + 696) = v1;
  *(v0 + 704) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 672) = 0x1ED3F1DA0;
  *(v0 + 736) = v1;
  *(v0 + 744) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 712) = 0x1ED3F21B0;
  *(v0 + 776) = v1;
  *(v0 + 784) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 752) = 0x1ED3F22F0;
  *(v0 + 816) = v1;
  *(v0 + 824) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 792) = 0x1ED3F2340;
  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50410);
  *(v0 + 864) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 832) = 0x1ED3F1CB0;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50418);
  *(v0 + 904) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 872) = 0x1ED3F1D00;
  *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50420);
  *(v0 + 944) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 912) = 0x1ED3F1E90;
  *(v0 + 976) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50428);
  *(v0 + 984) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 952) = 0x1ED3F1EE0;
  *(v0 + 1016) = v1;
  *(v0 + 1024) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 992) = 0x1ED3F1F80;
  *(v0 + 1056) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB50430);
  *(v0 + 1064) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 1032) = 0x1ED3F1C10;
  if (qword_27DB4FC80 != -1)
  {
    swift_once();
  }

  v2 = qword_27DB503B0;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v4 >= v3 >> 1)
  {
    v0 = sub_230406614((v3 > 1), v4 + 1, 1, v0, &qword_27DB503C0, &unk_230420EC0, &qword_27DB504E0);
  }

  v7 = v1;
  v8 = &protocol witness table for XPCTypeDescriptor<A, B>;
  *&v6 = v2;
  *(v0 + 16) = v4 + 1;
  sub_2303BE65C(&v6, v0 + 40 * v4 + 32);
  return v0;
}

void *static XPCTypeDescriptor.allCases.getter()
{
  v8 = *MEMORY[0x277D85DF0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230420EB0;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503C8);
  *(v0 + 64) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 32) = 0x1ED3F20C0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503D0);
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 72) = 0x1ED3F22A0;
  *(v0 + 136) = v1;
  *(v0 + 144) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 112) = 0x1ED3F2110;
  *(v0 + 176) = v1;
  *(v0 + 184) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 152) = 0x1ED3F2160;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503D8);
  *(v0 + 224) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 192) = 0x1ED3F2070;
  *(v0 + 256) = v1;
  *(v0 + 264) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 232) = 0x1ED3F2390;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503E0);
  *(v0 + 304) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 272) = 0x1ED3F2020;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503E8);
  *(v0 + 344) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 312) = 0x1ED3F1C60;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503F0);
  *(v0 + 384) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 352) = 0x1ED3F1E40;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB503F8);
  *(v0 + 424) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 392) = 0x1ED3F1DF0;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50400);
  *(v0 + 464) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 432) = 0x1ED3F1D50;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50408);
  *(v0 + 504) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 472) = 0x1ED3F1F30;
  *(v0 + 536) = v1;
  *(v0 + 544) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 512) = 0x1ED3F23E0;
  *(v0 + 576) = v1;
  *(v0 + 584) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 552) = 0x1ED3F1FD0;
  *(v0 + 616) = v1;
  *(v0 + 624) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 592) = 0x1ED3F2250;
  *(v0 + 656) = v1;
  *(v0 + 664) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 632) = 0x1ED3F2200;
  *(v0 + 696) = v1;
  *(v0 + 704) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 672) = 0x1ED3F1DA0;
  *(v0 + 736) = v1;
  *(v0 + 744) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 712) = 0x1ED3F21B0;
  *(v0 + 776) = v1;
  *(v0 + 784) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 752) = 0x1ED3F22F0;
  *(v0 + 816) = v1;
  *(v0 + 824) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 792) = 0x1ED3F2340;
  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50410);
  *(v0 + 864) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 832) = 0x1ED3F1CB0;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50418);
  *(v0 + 904) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 872) = 0x1ED3F1D00;
  *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50420);
  *(v0 + 944) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 912) = 0x1ED3F1E90;
  *(v0 + 976) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50428);
  *(v0 + 984) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 952) = 0x1ED3F1EE0;
  *(v0 + 1016) = v1;
  *(v0 + 1024) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 992) = 0x1ED3F1F80;
  *(v0 + 1056) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB50430);
  *(v0 + 1064) = &protocol witness table for XPCTypeDescriptor<A, B>;
  *(v0 + 1032) = 0x1ED3F1C10;
  if (qword_27DB4FC80 != -1)
  {
    swift_once();
  }

  v2 = qword_27DB503B0;
  v3 = sub_230406614(1, 27, 1, v0, &qword_27DB503C0, &unk_230420EC0, &qword_27DB504E0);
  v6 = v1;
  v7 = &protocol witness table for XPCTypeDescriptor<A, B>;
  *&v5 = v2;
  v3[2] = 27;
  sub_2303BE65C(&v5, (v3 + 134));
  return v3;
}

void *sub_230405BF8()
{
  result = sub_230405C18();
  off_27DB503B8 = result;
  return result;
}

uint64_t sub_230405C18()
{
  v0 = sub_230405300();
  v1 = *(v0 + 16);
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_230406A2C(0, v1, 0);
    v2 = v15;
    v3 = v0 + 32;
    do
    {
      sub_2303D8244(v3, v13 + 8);
      v4 = v14;
      __swift_project_boxed_opaque_existential_0(v13 + 1, v14);
      *&v13[0] = (*(*(&v4 + 1) + 8))(v4, *(&v4 + 1));
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_230406A2C((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v13[0];
      v9 = v14;
      v7[3] = v13[1];
      v7[4] = v9;
      v7[2] = v8;
      v3 += 40;
      --v1;
    }

    while (v1);

    if (*(v2 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_10;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504E8);
  v10 = sub_23041C428();
LABEL_10:
  *&v13[0] = v10;

  sub_230406B94(v11, 1, v13);

  return *&v13[0];
}

uint64_t static XPCTypeDescriptor<>.descriptor(for:)@<X0>(xpc_type_t type@<X0>, uint64_t a2@<X8>)
{
  if (qword_27DB4FC88 != -1)
  {
    swift_once();
  }

  v4 = off_27DB503B8;
  if (*(off_27DB503B8 + 2) && (v5 = sub_2303D7588(type), (v6 & 1) != 0))
  {
    v7 = v4[7] + 40 * v5;

    return sub_2303D8244(v7, a2);
  }

  else
  {
    xpc_type_get_name(type);
    v9 = sub_23041BE98();
    v11 = v10;
    sub_23041C288();
    MEMORY[0x231915500](0x206E776F6E6B6E55, 0xED00002065707974);
    sub_23041C3B8();
    MEMORY[0x231915500](2238496, 0xE300000000000000);
    MEMORY[0x231915500](v9, v11);
    MEMORY[0x231915500](0xD00000000000001DLL, 0x8000000230423A90);
    result = sub_23041C3D8();
    __break(1u);
  }

  return result;
}

char *sub_230405F8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2304060B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_2304061D0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FEE8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2304063C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50508);
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

void *sub_2304064CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230406614(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_23040675C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB504C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_230406958()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_230406994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_2304069D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void *sub_230406A2C(void *a1, int64_t a2, char a3)
{
  result = sub_230406A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230406A4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_230406B94(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  sub_230406F24(a1 + 32, &v35);
  v7 = v35;
  v37 = v35;
  sub_2303BE65C(v36, v34);
  v8 = *a3;
  v9 = sub_2303D7588(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_23041919C(v14, a2 & 1);
    v9 = sub_2303D7588(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = sub_23041CAA8();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  sub_230419D54();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v34);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 8 * v9) = v7;
  sub_2303BE65C(v34, v20[7] + 40 * v9);
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v13)
  {
    v20[2] = v22;
    if (v4 != 1)
    {
      v7 = a1 + 80;
      v23 = 1;
      while (v23 < *(a1 + 16))
      {
        sub_230406F24(v7, &v35);
        v15 = v35;
        v37 = v35;
        sub_2303BE65C(v36, v34);
        v24 = *a3;
        v25 = sub_2303D7588(v15);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v13 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v13)
        {
          goto LABEL_22;
        }

        a2 = v26;
        if (v24[3] < v29)
        {
          sub_23041919C(v29, 1);
          v25 = sub_2303D7588(v15);
          if ((a2 & 1) != (v30 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v31 = *a3;
        *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(v31[6] + 8 * v25) = v15;
        sub_2303BE65C(v34, v31[7] + 40 * v25);
        v32 = v31[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v23;
        v31[2] = v33;
        v7 += 48;
        if (v4 == v23)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_23041C288();
  MEMORY[0x231915500](0xD00000000000001BLL, 0x8000000230423AF0);
  sub_23041C3B8();
  MEMORY[0x231915500](39, 0xE100000000000000);
  sub_23041C3D8();
  __break(1u);
}

uint64_t sub_230406F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MachError.init(uncheckedCode:userInfo:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((sub_23041BB68() & 0x100000000) != 0)
    {
      v2 = *MEMORY[0x277CCA4A8];
      v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v4 = v2;
      v5 = sub_23041BCB8();

      [v3 initWithDomain:v4 code:v1 userInfo:v5];

      sub_2304070CC();
      sub_23041BB18();
      return swift_dynamicCast();
    }

    else
    {
      sub_23041BB18();
      sub_230407118();
      return sub_23041B918();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2304070CC()
{
  result = qword_27DB50010;
  if (!qword_27DB50010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB50010);
  }

  return result;
}

unint64_t sub_230407118()
{
  result = qword_27DB50540;
  if (!qword_27DB50540)
  {
    sub_23041BB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50540);
  }

  return result;
}

uint64_t MachError.errorCodeComponents.getter()
{
  sub_23041BB18();
  sub_230407118();
  v0 = sub_23041B908();
  if (v0 == v0)
  {
    return v0 >> 26;
  }

  else
  {
    return 0;
  }
}

void *static SystemXPCConnection.unsafePeer(from:)(uint64_t a1)
{
  type metadata accessor for SystemXPCPeerConnection();
  v2 = swift_allocObject();
  swift_unknownObjectRetain();
  v3 = swift_slowAlloc();
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v3;
  *v3 = 0;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = a1;
  return v2;
}

uint64_t sub_230407268(void *a1, char a2, uint64_t a3)
{
  if (MEMORY[0x231917290](a3) == 0x1ED3F2070)
  {
    result = sub_2303E5FC0(a1, a2 & 1);
    if (!v3)
    {
      v11 = result;
      if (MEMORY[0x231917290]() == 0x1ED3F2070)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = a3;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_23040A79C;
        *(v16 + 24) = v15;
        v19[4] = sub_2303F143C;
        v19[5] = v16;
        v19[0] = MEMORY[0x277D85DD8];
        v19[1] = 1107296256;
        v19[2] = sub_2303C0524;
        v19[3] = &block_descriptor_100;
        v17 = _Block_copy(v19);
        swift_unknownObjectRetain();

        xpc_dictionary_apply(v11, v17);
        swift_unknownObjectRelease();
        _Block_release(v17);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }

      else
      {
        v12 = sub_23041C348();
        swift_allocError();
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
        v14[3] = swift_getObjectType();
        *v14 = a3;
        swift_unknownObjectRetain();
        sub_23041C308();
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
        swift_willThrow();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v7 = sub_23041C348();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
    v9[3] = swift_getObjectType();
    *v9 = a3;
    swift_unknownObjectRetain();
    sub_23041C308();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D841A8], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2304075BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v10 = v9;
  swift_beginAccess();
  if (*(v10 + 80) & 1) == 0 && (*&v64 = a1, v19 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0), result = swift_dynamicCast(), result) && (v56 & 1) == 0 || (*&v64 = a1, v21 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0), result = swift_dynamicCast(), (result) && (v56)
  {
    *a9 = 0;
    return result;
  }

  v46 = a2;
  v47 = a9;
  v22 = a8;
  v49 = a7;
  v23 = a6;
  if (a6)
  {
    goto LABEL_8;
  }

  v33 = *(v10 + 64);
  v66 = *(v10 + 48);
  v67 = v33;
  v68 = *(v10 + 80);
  v69 = *(v10 + 96);
  v34 = *(v10 + 32);
  v64 = *(v10 + 16);
  v65 = v34;
  if (a3)
  {
    v35 = v64;
    if (!v64)
    {
      goto LABEL_30;
    }

    v50[0] = a3;
    v50[1] = a4;
    v50[2] = a5;
    sub_2303BA588(&v64, &v56, &qword_27DB50578);
    sub_2303F8F44(a3);
    sub_2303F8F00(v35);
    v35(&v56, v50);
    sub_2303F5784(v35);
    v49 = *(&v56 + 1);
    v23 = v56;
    v22 = v57;
    sub_2303F10E0(a3);
    sub_2303BA754(&v64, &qword_27DB50578);
    if (!v23)
    {
LABEL_23:
      sub_2303F8F44(0);
      sub_2303F10E0(0);
      sub_23041C0B8();
      sub_2303E42C4(0, &qword_27DB502F0);
      v40 = sub_23041C1B8();
      sub_23041BB28();

      sub_2303BA588(v46, &v62, &unk_27DB50580);
      if (v63)
      {
        sub_2304025AC(&v62, v52);
        v41 = *(v10 + 64);
        v66 = *(v10 + 48);
        v67 = v41;
        v68 = *(v10 + 80);
        v69 = *(v10 + 96);
        v42 = *(v10 + 32);
        v64 = *(v10 + 16);
        v65 = v42;
        v50[0] = a1;
        v51 = 1;
        v43 = v41;
        if (v41)
        {
          v44 = a1;
          sub_2303BA588(&v64, &v56, &qword_27DB50578);
          v43(v52, v50);
        }

        else
        {
          v45 = a1;
          sub_2303BA588(&v64, &v56, &qword_27DB50578);
        }

        v37 = v47;
        sub_2303BA754(v50, &qword_27DB50380);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v39 = &v64;
        goto LABEL_20;
      }

      v36 = &v62;
LABEL_17:
      result = sub_2303BA754(v36, &unk_27DB50580);
      v37 = v47;
LABEL_21:
      *v37 = 1;
      return result;
    }
  }

  else
  {
    v49 = 0xD000000000000019;
    v22 = 0x8000000230422830;
    v23 = xpc_dictionary_create(0, 0, 0);
    if (!v23)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  v24 = *(v10 + 80);
  v67 = *(v10 + 64);
  v68 = v24;
  v25 = *(v10 + 48);
  v65 = *(v10 + 32);
  v66 = v25;
  v69 = *(v10 + 96);
  v64 = *(v10 + 16);
  v26 = a1;
  sub_2303F8F44(a6);
  sub_2303BA588(&v64, &v56, &qword_27DB50578);
  a4 = 0;
  sub_230407268(a1, 0, v23);
  sub_2303BA754(&v64, &qword_27DB50578);

  v27 = *(v10 + 16);
  if (v27)
  {
    v28 = *(v10 + 32);
    *&v56 = v23;
    *(&v56 + 1) = v49;
    *&v57 = v22;

    v28(&v56);
    sub_2303F10E0(v23);
    sub_2303F5784(v27);
    sub_2303BA588(v46, &v54, &unk_27DB50580);
    if (v55)
    {
      sub_2304025AC(&v54, &v62);
      v29 = *(v10 + 64);
      v58 = *(v10 + 48);
      v59 = v29;
      v60 = *(v10 + 80);
      v61 = *(v10 + 96);
      v30 = *(v10 + 32);
      v56 = *(v10 + 16);
      v57 = v30;
      *&v52[0] = a1;
      v53 = 1;
      v31 = v29;
      if (v29)
      {
        v32 = a1;
        sub_2303BA588(&v56, v50, &qword_27DB50578);
        v31(&v62, v52);
      }

      else
      {
        v38 = a1;
        sub_2303BA588(&v56, v50, &qword_27DB50578);
      }

      v37 = a9;
      sub_2303BA754(v52, &qword_27DB50380);
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      v39 = &v56;
LABEL_20:
      result = sub_2303BA754(v39, &qword_27DB50578);
      goto LABEL_21;
    }

    v36 = &v54;
    goto LABEL_17;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  sub_2303F10E0(v23);

  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_23041C288();
  MEMORY[0x231915500](0xD000000000000050, 0x8000000230423860);
  v50[0] = a4;
  sub_23041C3B8();
  result = sub_23041C3D8();
  __break(1u);
  return result;
}

void sub_230407CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v32 = a1;
  v33 = a2;
  v34 = a3;
  *(v5 + 104) = 1;
  swift_beginAccess();
  v36 = *(v5 + 96);
  v9 = *(v5 + 64);
  v35[2] = *(v5 + 48);
  v35[3] = v9;
  v35[4] = *(v5 + 80);
  v10 = *(v5 + 32);
  v35[0] = *(v5 + 16);
  v35[1] = v10;
  sub_2303BA588(v35, v29, &qword_27DB50578);
  sub_2303E6424(a1, &v31);

  sub_2303BA754(v35, &qword_27DB50578);
  v30 = *(v5 + 96);
  v11 = *(v5 + 64);
  v29[2] = *(v5 + 48);
  v29[3] = v11;
  v29[4] = *(v5 + 80);
  v12 = *(v5 + 32);
  v29[0] = *(v5 + 16);
  v29[1] = v12;
  sub_2303BA588(v29, v28, &qword_27DB50578);
  sub_2303E6424(a1, v26);
  sub_2303BA754(v29, &qword_27DB50578);
  v14 = v26[0];
  v13 = v26[1];
  swift_beginAccess();
  v15 = *(v5 + 112);
  if (*(v15 + 16) && (, v16 = sub_2303BA5F0(v14, v13), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 16 * v16);

    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    sub_2303BE674(a4);
    v19(&v32);
  }

  else
  {

    sub_230400FC8();
    v21 = swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v32;
    v24 = v33;
    v25 = v34;
    memset(v28, 0, 48);
    swift_unknownObjectRetain();

    sub_2304075BC(v21, v28, v23, v24, v25, 0, 0, 0, &v27);
    sub_2303BA754(v28, &unk_27DB50580);

    swift_unknownObjectRelease();
    if (a4)
    {
      LOBYTE(v28[0]) = v27;
      a4(v28);
    }
  }
}

void sub_230408020(xpc_object_t *a1)
{
  xpc_connection_send_message_with_reply_sync(*(v1 + 24), *a1);
  swift_unknownObjectRetain();

  sub_2303BCE1C();
}

uint64_t sub_230408078()
{
  if (v6)
  {
    sub_2303BCF70();

    swift_willThrowTypedImpl();
    swift_allocError();
    *v1 = v3;
    v1[1] = v4;
    swift_unknownObjectRelease();
    return sub_2303BD25C(v3, v4, v5, 1);
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v0 = v3;
    v0[1] = v4;
    v0[2] = v5;
  }

  return result;
}

uint64_t sub_230408124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[2] = a3;
  v18 = a1;
  v17[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageWrapper();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v12 = (v17 - v11);
  type metadata accessor for XPCObjectEncoder();
  *(swift_initStackObject() + 16) = v4;
  (*(v6 + 16))(v8, v18, a2);

  MessageWrapper.init(value:)(v8, a2, v12);
  swift_getWitnessTable();
  v13 = v19[7];
  v14 = XPCObjectEncoder.encode<A>(_:)(v12, v9);
  if (!v13)
  {
    v16 = v14;
    (*(v10 + 8))(v12, v9);

    v19[0] = v16;
    v19[1] = 0xD000000000000019;
    v19[2] = 0x8000000230422830;
    swift_unknownObjectRetain();
    sub_230408020(v19);
  }

  (*(v10 + 8))(v12, v9);
}

void sub_230408390(void **a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = *(v5 + 24);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v5;
  v13[4] = sub_230408534;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD8];
  v13[1] = 1107296256;
  v13[2] = sub_2303B98A0;
  v13[3] = &block_descriptor_6;
  v12 = _Block_copy(v13);

  xpc_connection_send_message_with_reply(v10, v9, a2, v12);
  _Block_release(v12);
}

void sub_23040849C()
{
  swift_unknownObjectRetain();

  sub_2303BCE1C();
}

uint64_t sub_2304084E0()
{
  v5 = v8;
  v6 = v9;
  v7 = v10;
  v0(&v5);
  v1 = v5;
  v2 = v6;
  v3 = v7;

  return sub_2303BD25C(v1, *(&v1 + 1), v2, v3);
}

uint64_t SystemXPCConnection.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SystemXPCConnection.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2304085F4(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v2[4] = a1;
  v2[5] = a2;

  sub_2303BCC60(v3);
  v4 = v2[3];
  v5 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_2304088C0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD8];
  v7[1] = 1107296256;
  v7[2] = sub_2303B98A0;
  v7[3] = &block_descriptor_6_2;
  v6 = _Block_copy(v7);

  xpc_connection_set_event_handler(v4, v6);
  _Block_release(v6);
}

uint64_t sub_2304086E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32))
    {
      swift_getObjectType();

      OS_xpc_object.type.getter();
    }
  }

  return result;
}

uint64_t SystemXPCListenerConnection.deinit()
{

  swift_unknownObjectRelease();
  sub_2303BCC60(*(v0 + 32));
  return v0;
}

uint64_t SystemXPCListenerConnection.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  sub_2303BCC60(*(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t SystemXPCPeerConnection.deinit()
{
  MEMORY[0x231916D20](*(v0 + 32), -1, -1);

  swift_unknownObjectRelease();
  sub_2303BCC60(*(v0 + 40));
  return v0;
}

uint64_t SystemXPCPeerConnection.__deallocating_deinit()
{
  MEMORY[0x231916D20](*(v0 + 32), -1, -1);

  swift_unknownObjectRelease();
  sub_2303BCC60(*(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_2304089EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  os_unfair_lock_lock(v6);
  v7 = v3[5];
  v3[5] = a1;
  v3[6] = a2;

  sub_2303BCC60(v7);
  os_unfair_lock_unlock(v6);
  v8 = v3[3];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v12[4] = sub_230409008;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD8];
  v12[1] = 1107296256;
  v12[2] = sub_2303B98A0;
  v12[3] = &block_descriptor_15;
  v11 = _Block_copy(v12);

  xpc_connection_set_event_handler(v8, v11);
  _Block_release(v11);
}

uint64_t sub_230408B2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRetain();
    sub_2303BCE1C();
  }

  v3 = Strong;
  if (MEMORY[0x231917290](a1) != 0x1ED3F2070 || (type metadata accessor for XPCSideChannel(0), swift_unknownObjectRetain(), , v4 = sub_230409D30(a1, 0xD000000000000019, 0x8000000230422830, v3), , swift_unknownObjectRelease(), , (v4 & 1) == 0))
  {
    swift_unknownObjectRetain();

    sub_2303B9D74(MEMORY[0x277D84F90]);
    XPCError.init(_:from:userInfo:)();
  }
}

_BYTE *sub_230409014(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    swift_unknownObjectRetain();

    sub_2303BCE1C();
  }

  return result;
}

uint64_t sub_2304090B0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);
  sub_2303BE674(v2);
  sub_2303BE674(v2);
  os_unfair_lock_unlock(v1);
  if (v2)
  {
    sub_2303BCC60(v2);
  }

  else
  {
    sub_2304089EC(nullsub_10, 0);
  }

  xpc_connection_activate(*(v0 + 24));

  return sub_2303BCC60(v2);
}

const char *sub_230409154()
{
  result = xpc_connection_get_name(*(v0 + 24));
  if (result)
  {
    return sub_23041BE98();
  }

  return result;
}

void *static SystemXPCConnection.anonymousListenerConnection(targetQueue:)(dispatch_queue_t targetq)
{
  v1 = xpc_connection_create(0, targetq);
  type metadata accessor for SystemXPCListenerConnection();
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = MEMORY[0x277D84F90];
  result[3] = v1;
  return result;
}

void *static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_23041BE38();
  mach_service = xpc_connection_create_mach_service((v4 + 32), a3, 1uLL);

  type metadata accessor for SystemXPCListenerConnection();
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = MEMORY[0x277D84F90];
  result[3] = mach_service;
  return result;
}

void *static SystemXPCConnection.connectionToMachService(name:privilegedService:targetQueue:)(uint64_t a1, uint64_t a2, char a3, NSObject *a4)
{
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23041BE38();
  mach_service = xpc_connection_create_mach_service((v6 + 32), a4, v5);

  type metadata accessor for SystemXPCPeerConnection();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = v9;
  *v9 = 0;
  v8[2] = MEMORY[0x277D84F90];
  v8[3] = mach_service;
  return v8;
}

void *static SystemXPCConnection.xpcServiceConnection(name:targetQueue:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_23041BE38();
  v5 = xpc_connection_create((v4 + 32), a3);

  type metadata accessor for SystemXPCPeerConnection();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  v6[5] = 0;
  v6[6] = 0;
  v6[4] = v7;
  *v7 = 0;
  v6[2] = MEMORY[0x277D84F90];
  v6[3] = v5;
  return v6;
}

void *static SystemXPCConnection.unsafeListener(from:)(uint64_t a1)
{
  type metadata accessor for SystemXPCListenerConnection();
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = a1;
  swift_unknownObjectRetain();
  return v2;
}

void *XPCPeerEndpoint.createConnection()()
{
  swift_getObjectType();
  v0 = OS_xpc_object.createConnection()();
  type metadata accessor for SystemXPCPeerConnection();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = v2;
  *v2 = 0;
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v0;
  return v1;
}

void *XPCListenerEndpoint.createConnection()()
{
  swift_getObjectType();
  v0 = OS_xpc_object.createConnection()();
  type metadata accessor for SystemXPCListenerConnection();
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = MEMORY[0x277D84F90];
  result[3] = v0;
  return result;
}

id sub_2304095EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  v9 = MEMORY[0x28223BE28](v8 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v9);
  v12 = &v42 - v11;
  v16 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v13 = *(v16 - 8);
  MEMORY[0x28223BE28](v16);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a1;
  *(&v55 + 1) = a2;
  v47 = a2;
  v56 = a3;
  sub_2303D3810(v12);
  LODWORD(v16) = (*(v13 + 48))(v12, 1, v16);
  if (v16 == 1)
  {
LABEL_17:
    sub_2303BA754(v12, &unk_27DB50130);
    return (v16 != 1);
  }

  sub_23040A66C(v12, v15);
  if (qword_280AC7960 != -1)
  {
LABEL_44:
    swift_once();
  }

  v17 = qword_280AC7968;
  [qword_280AC7968 lock];
  v12 = 0;
  sub_2303D5D94(v15, &v55);
  v42 = a3;
  v43 = a1;
  v44 = v15;
  [v17 unlock];
  v18 = v55;
  v50 = a4;
  v45 = v16;
  if (!(v55 >> 62))
  {
    a1 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v55;
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

  a1 = sub_23041C3E8();
  v16 = v18;
  if (!a1)
  {
LABEL_46:

    v38 = v43;
    reply = xpc_dictionary_create_reply(v43);
    if (reply)
    {
      *(&v55 + 1) = 0xD000000000000019;
      v56 = 0x8000000230422830;
      v52 = v38;
      v53 = v47;
      v54 = v42;
      *&v55 = reply;
      v40 = v46;
      sub_2303D3810(v46);
      sub_2303D3A2C(v40);
      XPCDictionary.sendReply()();
      sub_23040A6D0(v44);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_23040A6D0(v44);
    }

LABEL_49:
    LODWORD(v16) = v45;
    return (v16 != 1);
  }

LABEL_5:
  v19 = 0;
  v51 = v16 & 0xC000000000000001;
  a3 = v16 & 0xFFFFFFFFFFFFFF8;
  *&v48 = v16 + 32;
  v49 = v16;
  do
  {
    if (v51)
    {
      v20 = MEMORY[0x231915930](v19, v16);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v19 >= *(a3 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v20 = *(v16 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_16;
      }
    }

    v15 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
    if (v15)
    {
      v22 = *(*v50 + 208);
      a4 = *v50 + 208;

      v22(&v55, sub_2303D8C48, v15, MEMORY[0x277D839B0]);

      if (v55)
      {

        a4 = v50;
LABEL_31:
        v27 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
        *&v55 = v43;
        *(&v55 + 1) = v47;
        v56 = v42;
        v57 = 0;
        v28 = v44;
        if (*(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
        {
          v29 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection + 8);
          a4 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
        }

        else
        {

          v29 = &protocol witness table for RemoteXPCPeerConnection;
        }

        swift_unknownObjectRetain();

        v27(&v55, a4, v29);

        sub_23040A6D0(v28);
        sub_2303BD25C(v55, *(&v55 + 1), v56, v57);
        goto LABEL_49;
      }

      v16 = v49;
    }

    ++v19;
  }

  while (v21 != a1);
  v23 = 0;
  a4 = v50;
  v24 = v48;
  do
  {
    if (v51)
    {
      v25 = MEMORY[0x231915930](v23, v16);
      if (__OFADD__(v23++, 1))
      {
        goto LABEL_52;
      }

      v20 = v25;
      if (!*(v25 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v23 >= *(a3 + 16))
      {
        goto LABEL_43;
      }

      v20 = v24[v23];
      if (!*(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {

LABEL_30:

        goto LABEL_31;
      }

      ++v23;
    }
  }

  while (v23 != a1);
  sub_2303E42C4(0, &qword_27DB502F0);
  if (a1 >= 1)
  {
    v30 = 0;
    v48 = xmmword_23041F9D0;
    do
    {
      if (v51)
      {
        v31 = MEMORY[0x231915930](v30, v16);
      }

      else
      {
        v31 = *(v16 + 8 * v30 + 32);
      }

      ++v30;
      sub_23041C0B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
      v32 = swift_allocObject();
      *(v32 + 16) = v48;
      v55 = *(v31 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50558);
      sub_23041BE28();
      v33 = sub_23041BDA8();

      v34 = sub_2303E42C4(0, &qword_27DB50560);
      *(v32 + 56) = v34;
      v35 = sub_23040A72C();
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      *&v55 = v50;
      *(&v55 + 1) = &protocol witness table for RemoteXPCPeerConnection;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50570);
      sub_23041BE28();
      v36 = sub_23041BDA8();

      *(v32 + 96) = v34;
      *(v32 + 104) = v35;
      *(v32 + 72) = v36;
      v37 = sub_23041C1B8();
      sub_23041BB28();

      v16 = v49;
    }

    while (a1 != v30);
    goto LABEL_46;
  }

  __break(1u);
LABEL_52:
  __break(1u);

  result = [v24 *(v23 + 448)];
  __break(1u);
  return result;
}

id sub_230409D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  v9 = MEMORY[0x28223BE28](v8 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v9);
  v12 = &v42 - v11;
  v16 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v13 = *(v16 - 8);
  MEMORY[0x28223BE28](v16);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a1;
  *(&v55 + 1) = a2;
  v47 = a2;
  v56 = a3;
  sub_2303D3810(v12);
  LODWORD(v16) = (*(v13 + 48))(v12, 1, v16);
  if (v16 == 1)
  {
LABEL_17:
    sub_2303BA754(v12, &unk_27DB50130);
    return (v16 != 1);
  }

  sub_23040A66C(v12, v15);
  if (qword_280AC7960 != -1)
  {
LABEL_44:
    swift_once();
  }

  v17 = qword_280AC7968;
  [qword_280AC7968 lock];
  v12 = 0;
  sub_2303D5D94(v15, &v55);
  v42 = a3;
  v43 = a1;
  v44 = v15;
  [v17 unlock];
  v18 = v55;
  v50 = a4;
  v45 = v16;
  if (!(v55 >> 62))
  {
    a1 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v55;
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

  a1 = sub_23041C3E8();
  v16 = v18;
  if (!a1)
  {
LABEL_46:

    v38 = v43;
    reply = xpc_dictionary_create_reply(v43);
    if (reply)
    {
      *(&v55 + 1) = 0xD000000000000019;
      v56 = 0x8000000230422830;
      v52 = v38;
      v53 = v47;
      v54 = v42;
      *&v55 = reply;
      v40 = v46;
      sub_2303D3810(v46);
      sub_2303D3A2C(v40);
      XPCDictionary.sendReply()();
      sub_23040A6D0(v44);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_23040A6D0(v44);
    }

LABEL_49:
    LODWORD(v16) = v45;
    return (v16 != 1);
  }

LABEL_5:
  v19 = 0;
  v51 = v16 & 0xC000000000000001;
  a3 = v16 & 0xFFFFFFFFFFFFFF8;
  *&v48 = v16 + 32;
  v49 = v16;
  do
  {
    if (v51)
    {
      v20 = MEMORY[0x231915930](v19, v16);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v19 >= *(a3 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v20 = *(v16 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_16;
      }
    }

    v15 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
    if (v15)
    {
      v22 = *(*v50 + 208);
      a4 = *v50 + 208;

      v22(&v55, sub_2303D8310, v15, MEMORY[0x277D839B0]);

      if (v55)
      {

        a4 = v50;
LABEL_31:
        v27 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
        *&v55 = v43;
        *(&v55 + 1) = v47;
        v56 = v42;
        v57 = 0;
        v28 = v44;
        if (*(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
        {
          v29 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection + 8);
          a4 = *(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
        }

        else
        {

          v29 = &protocol witness table for SystemXPCPeerConnection;
        }

        swift_unknownObjectRetain();

        v27(&v55, a4, v29);

        sub_23040A6D0(v28);
        sub_2303BD25C(v55, *(&v55 + 1), v56, v57);
        goto LABEL_49;
      }

      v16 = v49;
    }

    ++v19;
  }

  while (v21 != a1);
  v23 = 0;
  a4 = v50;
  v24 = v48;
  do
  {
    if (v51)
    {
      v25 = MEMORY[0x231915930](v23, v16);
      if (__OFADD__(v23++, 1))
      {
        goto LABEL_52;
      }

      v20 = v25;
      if (!*(v25 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v23 >= *(a3 + 16))
      {
        goto LABEL_43;
      }

      v20 = v24[v23];
      if (!*(v20 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {

LABEL_30:

        goto LABEL_31;
      }

      ++v23;
    }
  }

  while (v23 != a1);
  sub_2303E42C4(0, &qword_27DB502F0);
  if (a1 >= 1)
  {
    v30 = 0;
    v48 = xmmword_23041F9D0;
    do
    {
      if (v51)
      {
        v31 = MEMORY[0x231915930](v30, v16);
      }

      else
      {
        v31 = *(v16 + 8 * v30 + 32);
      }

      ++v30;
      sub_23041C0B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
      v32 = swift_allocObject();
      *(v32 + 16) = v48;
      v55 = *(v31 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50558);
      sub_23041BE28();
      v33 = sub_23041BDA8();

      v34 = sub_2303E42C4(0, &qword_27DB50560);
      *(v32 + 56) = v34;
      v35 = sub_23040A72C();
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      *&v55 = v50;
      *(&v55 + 1) = &protocol witness table for SystemXPCPeerConnection;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50570);
      sub_23041BE28();
      v36 = sub_23041BDA8();

      *(v32 + 96) = v34;
      *(v32 + 104) = v35;
      *(v32 + 72) = v36;
      v37 = sub_23041C1B8();
      sub_23041BB28();

      v16 = v49;
    }

    while (a1 != v30);
    goto LABEL_46;
  }

  __break(1u);
LABEL_52:
  __break(1u);

  result = [v24 *(v23 + 448)];
  __break(1u);
  return result;
}

uint64_t sub_23040A470(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = MEMORY[0x277D84F90];
  if (qword_280AC7960 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v5 = qword_280AC7968;
    [qword_280AC7968 lock];
    v14 = a3;
    sub_2303BC020(a3, &protocol witness table for SystemXPCPeerConnection, &v19);
    [v5 unlock];
    a3 = v19;
    v6 = v19[2];

    if (!v6)
    {
      break;
    }

    v7 = 0;
    v8 = a3 + 6;
    while (v7 < a3[2])
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v17[0] = a1;
      v17[1] = a2;
      v17[2] = 0;
      v18 = 1;
      if (*(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {
        v10 = *(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection + 8);
        v9 = *(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
      }

      else
      {
        v9 = v14;

        v10 = &protocol witness table for SystemXPCPeerConnection;
      }

      ++v7;
      v16[0] = v9;
      v16[1] = v10;
      swift_retain_n();

      v11(v17, v16);

      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_9:
}

uint64_t sub_23040A66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23040A6D0(uint64_t a1)
{
  v2 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23040A72C()
{
  result = qword_27DB50568;
  if (!qword_27DB50568)
  {
    sub_2303E42C4(255, &qword_27DB50560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50568);
  }

  return result;
}

uint64_t sub_23040A7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23041BAD8();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = MEMORY[0x28223BE28](v4);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v5);
  v63 = &v55 - v7;
  v8 = sub_23041B7C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE28](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 8);
  v14 = MEMORY[0x28223BE28](v10);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE28](v14);
  v57 = &v55 - v17;
  v18 = MEMORY[0x28223BE28](v16);
  v61 = &v55 - v19;
  v20 = MEMORY[0x28223BE28](v18);
  v22 = &v55 - v21;
  MEMORY[0x28223BE28](v20);
  v24 = &v55 - v23;
  v25 = *(v13 + 16);
  v25(&v55 - v23, v65, a1);
  sub_23041B798();
  v65 = v24;
  v62 = v25;
  v25(v22, v24, a1);
  v26 = sub_23041C7D8();
  v64 = a2;
  if (v26)
  {
    v27 = v26;
    (*(v13 + 8))(v22, a1);
  }

  else
  {
    v27 = swift_allocError();
    (*(v13 + 32))(v28, v22, a1);
  }

  sub_23040D57C(&qword_27DB505D8, MEMORY[0x277CC8608]);
  v29 = sub_23041B8F8();

  (*(v9 + 8))(v12, v8);
  if (v29)
  {
    (*(v13 + 8))(v65, a1);
LABEL_11:
    v37 = 1;
    return v37 & 1;
  }

  v66 = sub_23041B7E8();
  v30 = v61;
  v31 = v62;
  v32 = v65;
  v62(v61, v65, a1);
  v33 = sub_23041C7D8();
  if (v33)
  {
    v34 = v33;
    (*(v13 + 8))(v30, a1);
  }

  else
  {
    v34 = swift_allocError();
    (*(v13 + 32))(v35, v30, a1);
  }

  sub_23040D528();
  v36 = sub_23041B8F8();

  if (v36)
  {
    (*(v13 + 8))(v32, a1);
    goto LABEL_11;
  }

  sub_23041BAF8();
  v39 = v57;
  v31(v57, v32, a1);
  v40 = sub_23041C7D8();
  if (v40)
  {
    v41 = v40;
    v42 = v13;
    (*(v13 + 8))(v39, a1);
  }

  else
  {
    v41 = swift_allocError();
    v42 = v13;
    (*(v13 + 32))(v43, v39, a1);
  }

  v45 = v59;
  v44 = v60;
  sub_23040D57C(&qword_27DB505E0, MEMORY[0x277CC9AC8]);
  v46 = v63;
  v47 = sub_23041B8F8();

  v48 = *(v45 + 8);
  v48(v46, v44);
  if (v47)
  {
    (*(v42 + 8))(v65, a1);
    goto LABEL_11;
  }

  sub_23041BAC8();
  v49 = v56;
  v50 = v65;
  v65 = *(v42 + 32);
  v65(v56, v50, a1);
  v51 = sub_23041C7D8();
  if (v51)
  {
    v52 = v51;
    (*(v42 + 8))(v49, a1);
  }

  else
  {
    v52 = swift_allocError();
    v65(v53, v49, a1);
  }

  v54 = v58;
  v37 = sub_23041B8F8();

  v48(v54, v44);
  return v37 & 1;
}

uint64_t sub_23040AE58(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v4 = sub_23041BAD8();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE28](v4);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23041B7C8();
  v59 = *(v6 - 8);
  v7 = MEMORY[0x28223BE28](v6);
  v58 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE28](v7);
  v11 = v52 - v10;
  v12 = *(a1 - 8);
  v13 = MEMORY[0x28223BE28](v9);
  v53 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE28](v13);
  v57 = v52 - v16;
  v17 = MEMORY[0x28223BE28](v15);
  v19 = v52 - v18;
  v20 = MEMORY[0x28223BE28](v17);
  v22 = v52 - v21;
  MEMORY[0x28223BE28](v20);
  v23 = *(v12 + 16);
  v23(v52 - v24, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505C8);
  if (swift_dynamicCast())
  {
    sub_2303BE65C(v61, v63);
    __swift_project_boxed_opaque_existential_0(v63, v64);
    v25 = sub_23041B828();
    __swift_project_boxed_opaque_existential_0(v63, v64);
    DynamicType = swift_getDynamicType();
    v27 = v65;
    v28 = *(DynamicType - 8);
    v29 = MEMORY[0x28223BE28](DynamicType);
    v31 = v52 - v30;
    static Error<>.unknown.getter(v29, v27);
    v32 = v25 == sub_23041B828();
    (*(v28 + 8))(v31, DynamicType);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  else
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_2303BA754(v61, &qword_27DB505D0);
    v23(v22, v2, a1);
    sub_23041B7A8();
    v23(v19, v22, a1);
    v33 = sub_23041C7D8();
    if (v33)
    {
      v34 = v33;
      (*(v12 + 8))(v19, a1);
    }

    else
    {
      v34 = swift_allocError();
      (*(v12 + 32))(v35, v19, a1);
    }

    v52[1] = sub_23040D57C(&qword_27DB505D8, MEMORY[0x277CC8608]);
    v36 = sub_23041B8F8();

    v37 = *(v59 + 8);
    v37(v11, v6);
    if (v36)
    {
      goto LABEL_11;
    }

    sub_23041B7B8();
    v38 = v57;
    v23(v57, v22, a1);
    v39 = sub_23041C7D8();
    if (v39)
    {
      v40 = v39;
      (*(v12 + 8))(v38, a1);
    }

    else
    {
      v40 = swift_allocError();
      (*(v12 + 32))(v41, v38, a1);
    }

    v42 = v58;
    v43 = sub_23041B8F8();

    v37(v42, v6);
    if (v43)
    {
LABEL_11:
      (*(v12 + 8))(v22, a1);
      v32 = 1;
    }

    else
    {
      v44 = v54;
      sub_23041BAE8();
      v45 = *(v12 + 32);
      v46 = v53;
      v45();
      v47 = sub_23041C7D8();
      if (v47)
      {
        v48 = v47;
        (*(v12 + 8))(v46, a1);
      }

      else
      {
        v48 = swift_allocError();
        (v45)(v49, v46, a1);
      }

      sub_23040D57C(&qword_27DB505E0, MEMORY[0x277CC9AC8]);
      v50 = v56;
      v32 = sub_23041B8F8();

      (*(v55 + 8))(v44, v50);
    }
  }

  return v32 & 1;
}

uint64_t Error.normalized<A>(as:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE28](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23040B69C(v5, v8, v9, v10, v11);
  if (!result)
  {
    (*(v4 + 16))(v7, v2, a2);
    v13 = sub_23041C7D8();
    if (v13)
    {
      v14 = v13;
      (*(v4 + 8))(v7, a2);
    }

    else
    {
      v14 = swift_allocError();
      (*(v4 + 32))(v15, v7, a2);
    }

    return v14;
  }

  return result;
}

uint64_t sub_23040B69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v92 = a5;
  v94 = a4;
  v91 = a1;
  v86 = sub_23041B7F8();
  v85 = *(v86 - 8);
  v9 = MEMORY[0x28223BE28](v86);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  v12 = MEMORY[0x28223BE28](v9);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE28](v12);
  v88 = &v79 - v15;
  v16 = MEMORY[0x28223BE28](v14);
  v18 = &v79 - v17;
  v19 = *(a2 - 8);
  v20 = MEMORY[0x28223BE28](v16);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE28](v20);
  v83 = &v79 - v23;
  v24 = MEMORY[0x28223BE28](v22);
  v87 = &v79 - v25;
  v26 = MEMORY[0x28223BE28](v24);
  v89 = &v79 - v27;
  v28 = MEMORY[0x28223BE28](v26);
  v30 = &v79 - v29;
  v31 = MEMORY[0x28223BE28](v28);
  v33 = &v79 - v32;
  MEMORY[0x28223BE28](v31);
  v93 = v19;
  v34 = *(v19 + 16);
  v34(&v79 - v35, v6, a2);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v18, a3);
    v34(v33, v6, a2);
    v36 = sub_23041C7D8();
    if (v36)
    {
      v37 = v36;
      (*(v93 + 8))(v33, a2);
    }

    else
    {
      v37 = swift_allocError();
      (*(v93 + 32))(v47, v33, a2);
    }
  }

  else
  {
    v80 = v11;
    v38 = v94;
    v34(v30, v6, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505B0);
    if (swift_dynamicCast())
    {
      sub_2303BE65C(v95, &v97);
      v39 = v98;
      v40 = v99;
      __swift_project_boxed_opaque_existential_0(&v97, v98);
      v37 = (*(v40 + 16))(v91, a3, v92, v39, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(&v97);
    }

    else
    {
      v81 = v34;
      v79 = a3;
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      sub_2303BA754(v95, &qword_27DB505B8);
      v41 = sub_23040A7CC(a2, v38);
      v42 = v93;
      v43 = v6;
      if ((v41 & 1) == 0)
      {
        goto LABEL_12;
      }

      LODWORD(v97) = sub_23041B7E8();
      v44 = v89;
      v81(v89, v6, a2);
      v45 = sub_23041C7D8();
      if (v45)
      {
        v46 = v45;
        (*(v42 + 8))(v44, a2);
      }

      else
      {
        v46 = swift_allocError();
        (*(v42 + 32))(v48, v44, a2);
      }

      sub_23040D528();
      v49 = sub_23041B8F8();

      if ((v49 & 1) == 0)
      {
        LODWORD(v97) = 89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23041E310;
        *(inited + 32) = sub_23041BDD8();
        *(inited + 40) = v61;
        *(inited + 72) = a2;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 48));
        v81(boxed_opaque_existential_0Tm, v6, a2);
        sub_2303BA458(inited);
        swift_setDeallocating();
        sub_2303BA754(inited + 32, &qword_27DB501B0);
        sub_23040D57C(&qword_27DB505F0, MEMORY[0x277CC8658]);
        v63 = v84;
        v64 = v86;
        sub_23041B918();
        v37 = sub_23041B7D8();
        (*(v85 + 8))(v63, v64);
      }

      else
      {
LABEL_12:
        if (sub_23040AE58(a2, v38))
        {
          v50 = v92;
          static Error<>.unknown.getter(v79, v92);
          v51 = v87;
          v81(v87, v43, a2);
          v52 = sub_23041C7D8();
          if (v52)
          {
            v53 = v52;
            (*(v42 + 8))(v51, a2);
          }

          else
          {
            v53 = swift_allocError();
            (*(v42 + 32))(v65, v51, a2);
          }

          v66 = v80;
          v67 = v88;
          v68 = v79;
          v69 = v90;
          _Error.wrapping(_:)(v53, v79, v50);

          v70 = *(v66 + 8);
          v70(v69, v68);
          v71 = sub_23041C7D8();
          if (v71)
          {
            v37 = v71;
            v70(v67, v68);
          }

          else
          {
            v37 = swift_allocError();
            (*(v66 + 32))(v74, v67, v68);
          }
        }

        else
        {
          sub_2304070CC();
          v54 = sub_23041CAE8();
          v56 = static NSError.normalizationProvider<A>(forDomain:normalizingAs:)(v54, v55, v91, v79, v92);

          if (v56)
          {
            v57 = v83;
            v81(v83, v6, a2);
            v58 = sub_23041C7D8();
            if (v58)
            {
              v59 = v58;
              (*(v42 + 8))(v57, a2);
            }

            else
            {
              v59 = swift_allocError();
              (*(v42 + 32))(v75, v57, a2);
            }

            v76 = sub_23041B928();

            v37 = v56(v76);
            sub_2303BCC60(v56);
          }

          else
          {
            v72 = v82;
            v81(v82, v6, a2);
            v73 = sub_23041C7D8();
            if (v73)
            {
              v37 = v73;
              (*(v42 + 8))(v72, a2);
            }

            else
            {
              v37 = swift_allocError();
              (*(v42 + 32))(v78, v72, a2);
            }
          }
        }
      }
    }
  }

  return v37;
}

uint64_t Error.normalized<A>(as:fallingBackTo:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE28](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23040B69C(v8, v11, v12, v13, v14);
  if (!result)
  {
    v35 = a2();
    v16 = v35;
    v17 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505A0);
    if (swift_dynamicCast())
    {
      sub_2303BE65C(&v32, v36);
      v18 = v37;
      v19 = v38;
      __swift_project_boxed_opaque_existential_0(v36, v37);
      (*(v7 + 16))(v10, v4, a4);
      v20 = sub_23041C7D8();
      if (v20)
      {
        v21 = v20;
        (*(v7 + 8))(v10, a4);
      }

      else
      {
        v21 = swift_allocError();
        (*(v7 + 32))(v22, v10, a4);
      }

      *(&v33 + 1) = v18;
      v34 = v19;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
      CustomNSError.wrapping(_:)(v21, v18, boxed_opaque_existential_0Tm);

      v24 = *(&v33 + 1);
      v25 = __swift_project_boxed_opaque_existential_0(&v32, *(&v33 + 1));
      v26 = *(v24 - 8);
      MEMORY[0x28223BE28](v25);
      v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v28);
      v29 = sub_23041C7D8();
      if (v29)
      {
        v30 = v29;
        (*(v26 + 8))(v28, v24);
      }

      else
      {
        v30 = swift_allocError();
        (*(v26 + 32))(v31, v28, v24);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      return v30;
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_2303BA754(&v32, &qword_27DB505A8);
      return v16;
    }
  }

  return result;
}

uint64_t (*static NSError.normalizationProvider<A>(forDomain:normalizingAs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (qword_280AC7458 != -1)
  {
    swift_once();
  }

  v9 = qword_280AC7460;
  [qword_280AC7460 lock];
  sub_23040D35C(a3, a1, a2, a5, &v12);
  [v9 unlock];
  if (!v12)
  {
    return 0;
  }

  v11 = v12;
  *(swift_allocObject() + 16) = v11;
  return sub_23040D450;
}

void withErrorsNormalized<A, B>(as:_:)(uint64_t a1, void (*a2)(void))
{
  a2();
  if (v2)
  {
    swift_getErrorValue();
    Error.normalized<A>(as:)(a1, v4);
    swift_willThrow();
  }
}

void withErrorsNormalized<A, B>(as:fallingBackTo:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  if (v4)
  {
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE28](ErrorValue);
    v10[2] = a2;
    v10[3] = a3;
    Error.normalized<A>(as:fallingBackTo:)(a1, sub_23040D490, v10, v9);
    swift_willThrow();
  }
}

uint64_t withErrorsNormalized<A, B>(as:_:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[6] = a2;
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = sub_23040C7F4;

  return v11(a1);
}

uint64_t sub_23040C7F4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23040C928, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23040C928()
{
  v1 = v0[10];
  v2 = v0[6];
  swift_getErrorValue();
  Error.normalized<A>(as:)(v2, v0[3]);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t withErrorsNormalized<A, B>(as:fallingBackTo:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a7;
  v7[10] = v13;
  v7[7] = a3;
  v7[8] = a4;
  v7[6] = a2;
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  v7[11] = v9;
  *v9 = v7;
  v9[1] = sub_23040CAE4;

  return v11(a1);
}

uint64_t sub_23040CAE4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23040CC18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23040CC18()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v7 = *(v0 + 56);
  swift_getErrorValue();
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = v7;
  Error.normalized<A>(as:fallingBackTo:)(v2, sub_23040D62C, v4, v3);

  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t XPCError.normalized<A>(as:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE28](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE28](v5);
  v11 = &v23 - v10;
  v13 = *v2;
  v12 = v2[1];
  if (v8 == &type metadata for XPCError)
  {
    sub_2303BCF70();
    v19 = swift_allocError();
    *v20 = v13;
    v20[1] = v12;
  }

  else
  {
    v14 = v9;
    static Error<>.xpcError.getter(a2, v9);
    sub_2303BCF70();
    v15 = swift_allocError();
    *v16 = v13;
    v16[1] = v12;

    _Error.wrapping(_:)(v15, a2, v14);

    v17 = *(v4 + 8);
    v17(v7, a2);
    v18 = sub_23041C7D8();
    if (v18)
    {
      v19 = v18;
      v17(v11, a2);
    }

    else
    {
      v19 = swift_allocError();
      (*(v4 + 32))(v21, v11, a2);
    }
  }

  return v19;
}

uint64_t sub_23040CF24()
{
  sub_23041CB48();
  sub_23041BD48();
  return sub_23041CB78();
}

uint64_t sub_23040CF90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505E8);
  sub_23041BE28();
  sub_23041BE78();

  return sub_23041BE78();
}

uint64_t sub_23040D01C()
{
  sub_23041CB48();
  sub_23041BD48();
  return sub_23041CB78();
}

uint64_t sub_23040D084(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_23041C808();
  }
}

id sub_23040D0E0()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_280AC7460 = result;
  return result;
}

id static NSError.setNormalizationProvider<A>(forDomain:normalizingAs:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_280AC7458 != -1)
  {
    swift_once();
  }

  v16 = qword_280AC7460;
  [qword_280AC7460 lock];
  sub_23040D224(a3, a1, a2, v8, a4, a5, a6, a7);

  return [v16 unlock];
}

uint64_t sub_23040D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = qword_280AC7470;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = off_280AC7478;
  off_280AC7478 = 0x8000000000000000;
  sub_23041229C(sub_23040D4F4, v15, a1, a8, a2, a3, isUniquelyReferenced_nonNull_native);

  off_280AC7478 = v18;
  return swift_endAccess();
}

uint64_t sub_23040D35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  if (qword_280AC7470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_280AC7478;
  v11 = 0uLL;
  if (*(off_280AC7478 + 2))
  {
    v12 = sub_2303D75F4(a1, a4, a2, a3);
    v11 = 0uLL;
    if (v13)
    {
      v15 = *(v10[7] + 16 * v12);

      v11 = v15;
    }
  }

  *a5 = v11;
  return swift_endAccess();
}

uint64_t sub_23040D450(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

unint64_t sub_23040D4B8(uint64_t a1)
{
  result = sub_2303BCF70();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23040D4F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23040D528()
{
  result = qword_27DB505C0;
  if (!qword_27DB505C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB505C0);
  }

  return result;
}

uint64_t sub_23040D57C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23040D5D8()
{
  result = qword_280AC7468;
  if (!qword_280AC7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7468);
  }

  return result;
}

uint64_t sub_23040D634()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  *(v0 + 16) = v1;
  result = swift_unknownObjectRelease();
  if (v1)
  {
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50678);
    sub_23040FDA4();
    return sub_23041C5B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCFileTransfer.__allocating_init(forFileAt:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCFileTransfer.init(forFileAt:)(a1);
  return v2;
}

uint64_t XPCFileTransfer.init(forFileAt:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_23041B9A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  *(v3 + 24) = -1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  result = sub_23041B968();
  if (result)
  {
    (*(v6 + 16))(v8, a1, v5);
    v10 = sub_2303DED68(v8);
    if (v2)
    {

      (*(v6 + 8))(a1, v5);
    }

    else
    {
      v11 = v10;
      (*(v6 + 8))(a1, v5);
      v12 = *(v3 + 16);
      *(v3 + 16) = v11;
      v13 = *(v3 + 24);
      *(v3 + 24) = 0;
      sub_23040F740(v12, v13);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCFileTransfer.__allocating_init(fileDescriptor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t XPCFileTransfer.init(fileDescriptor:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_23040F740(v3, v4);
  return v1;
}

uint64_t sub_23040D990()
{
  v1 = *(v0 + 48);
  [v1 lock];
  sub_23040DA18(v0, &v3);
  [v1 unlock];
  return v3;
}

off_t sub_23040DA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DF0];
  if (*(a1 + 40) != 1)
  {
    result = *(a1 + 32);
    goto LABEL_15;
  }

  v3 = *(a1 + 24);
  if (v3 == 255)
  {
    result = -1;
    goto LABEL_13;
  }

  v4 = a2;
  v6 = *(a1 + 16);
  if ((v3 & 1) == 0)
  {
    v8 = *(v6 + 64);
    memset(&v12, 0, sizeof(v12));
    sub_23040FE08(v6, 0);
    if (fstat(v8, &v12))
    {
      sub_23040F740(v6, v3);
    }

    else
    {
      st_mode = v12.st_mode;
      v10 = sub_23041BBD8() & st_mode;
      LOWORD(st_mode) = sub_23041BBE8();
      sub_23040F740(v6, v3);
      if (v10 == st_mode)
      {
        result = v12.st_size & ~(v12.st_size >> 63);
        goto LABEL_12;
      }
    }

    result = -1;
    goto LABEL_12;
  }

  result = xpc_file_transfer_get_size();
LABEL_12:
  a2 = v4;
  v2 = a1;
LABEL_13:
  if (*(v2 + 40) == 1)
  {
    *(v2 + 32) = result;
    *(v2 + 40) = 0;
  }

LABEL_15:
  if (result == -1)
  {
    result = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v11;
  return result;
}

uint64_t sub_23040DB8C()
{
  v2 = *(v0 + 48);
  [v2 lock];
  v3 = *(v0 + 24);
  if (v3 == 255)
  {
    result = sub_23041C3D8();
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;
    [v2 unlock];
    if (v3)
    {
      v5 = sub_2303DEA0C();
      if (v1)
      {
        return sub_23040F740(v4, v3);
      }

      else
      {
        v6 = v5;
        v7 = sub_2303DC608();
        v8 = v6;
        MEMORY[0x231915220](*(v6 + 64), 73, 1);
        MEMORY[0x231915220](v7, 73, 1);
        aBlock[4] = sub_23040FD9C;
        aBlock[5] = v0;
        aBlock[0] = MEMORY[0x277D85DD8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2304048A0;
        aBlock[3] = &block_descriptor_25;
        v9 = _Block_copy(aBlock);

        xpc_file_transfer_write_to_fd();
        _Block_release(v9);

        sub_23040F740(v4, v3);
        return v8;
      }
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void sub_23040DD90(uint64_t a1)
{
  v2 = sub_23041B7F8();
  MEMORY[0x28223BE28](v2);
  if (a1)
  {
    sub_23041C0B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D849A8];
    *(v3 + 16) = xmmword_23041F9D0;
    v5 = MEMORY[0x277D84A20];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = a1;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(a1);
    v6 = sub_23041BE28();
    v8 = v7;
    *(v3 + 96) = MEMORY[0x277D837D0];
    *(v3 + 104) = sub_2303BBBD4();
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    sub_2304024F0();
    v9 = sub_23041C1B8();
    sub_23041BB28();
  }
}

uint64_t sub_23040DEF4()
{
  v2 = *(v0 + 48);
  [v2 lock];
  v3 = *(v0 + 24);
  if (v3 != 255)
  {
    v4 = *(v0 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;
    [v2 unlock];
    if ((v3 & 1) == 0)
    {
      sub_2303DC608();
      if (!v1)
      {
        aBlock[4] = nullsub_10;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2304048A0;
        aBlock[3] = &block_descriptor_22;
        v5 = _Block_copy(aBlock);
        v6 = xpc_file_transfer_create_with_fd();
        _Block_release(v5);
        if (v6)
        {
          sub_23040F740(v4, v3);
          return v6;
        }

        v8 = sub_2303B9D74(MEMORY[0x277D84F90]);
        sub_2303BCF70();
        swift_allocError();
        static XPCError.unknown(_:from:userInfo:)(0xD000000000000023, 0x8000000230423DB0, 0, v8, v9);

        swift_willThrow();
      }

      sub_23040F740(v4, v3);
    }

    return v4;
  }

  result = sub_23041C3D8();
  __break(1u);
  return result;
}

uint64_t sub_23040E0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a3;
  v22 = a4;
  v10 = sub_23041B9A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE28](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v14 = *(a2 + 8);
  (*(v11 + 16))(v13, a1, v10);
  v16 = v14;
  v17 = v15;
  result = sub_23041B968();
  if (result)
  {
    v23 = a5;
    MEMORY[0x28223BE28](result);
    *(&v20 - 2) = v15;
    *(&v20 - 1) = v14;
    sub_23041B978();
    (*(v11 + 8))(v13, v10);

    v19 = v24;
    type metadata accessor for XPCFileDescriptor();
    result = swift_allocObject();
    *(result + 16) = j__read;
    *(result + 24) = 0;
    *(result + 32) = j__write;
    *(result + 40) = 0;
    *(result + 48) = j__poll;
    *(result + 56) = 0;
    if ((v19 & 0x80000000) == 0)
    {
      *(result + 64) = v19;
      *(result + 68) = 1;
      sub_23040E358(result, v21, v22, v23, a6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23040E358(uint64_t a1, uint64_t (*a2)(uint64_t, double), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v6 = v5;
  v12 = sub_23041B7F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE28](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    if ((a2(v16, 0.0) & 1) == 0)
    {
      LODWORD(aBlock[0]) = 89;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      sub_23040F8D0(&qword_27DB505F0, MEMORY[0x277CC8658]);
      sub_23041B918();
      v23 = sub_23041B7D8();
      (*(v13 + 8))(v15, v12);
      a4(v23);
      sub_2303BCC60(a2);

      return;
    }

    sub_2303BCC60(a2);
  }

  v17 = *(v5 + 48);
  [*(v6 + 48) lock];
  v18 = *(v6 + 24);
  if (v18 == 255)
  {
    sub_23041C3D8();
    __break(1u);
  }

  else
  {
    v19 = *(v6 + 16);
    *(v6 + 16) = 0;
    *(v6 + 24) = -1;
    [v17 unlock];
    if (v18)
    {
      sub_2303DC608();
      v24 = swift_allocObject();
      v24[2] = a2;
      v24[3] = a3;
      v24[4] = a4;
      v24[5] = a5;
      v24[6] = v6;
      aBlock[4] = sub_23040F764;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2304048A0;
      aBlock[3] = &block_descriptor_7;
      v25 = _Block_copy(aBlock);
      sub_2303BE674(a2);

      xpc_file_transfer_write_to_fd();
      sub_23040F740(v19, v18);
      _Block_release(v25);
    }

    else
    {
      v29 = v19;
      v30 = a5;
      v20 = a4;
      if (a2)
      {
        v21 = swift_allocObject();
        v21[2] = a2;
        v21[3] = a3;
        v21[4] = v6;

        v22 = sub_23040F81C;
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      type metadata accessor for XPCFileDescriptor();
      v26 = swift_allocObject();
      v26[2] = a2;
      v26[3] = a3;
      v26[4] = v20;
      v26[5] = v30;
      v26[6] = v6;
      sub_2303BE674(a2);
      sub_2303BE674(a2);

      v27 = v29;
      static XPCFileDescriptor.splice(from:to:on:reportingProgressUsing:completion:)(v29, a1, 0, v22, v21, sub_23040F7C4, v26);

      sub_23040F740(v27, v18);

      sub_2303BCC60(v22);
    }
  }
}

uint64_t sub_23040E814(uint64_t result, BOOL *a2, uint64_t (*a3)(uint64_t, __n128), __n128 a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    a4.n128_u64[0] = 0;
    goto LABEL_6;
  }

  v8 = result;
  v9 = *(a6 + 48);
  [v9 lock];
  sub_23040DA18(a6, &v11);
  result = [v9 unlock];
  if ((v12 & 1) == 0 && v11 > v8)
  {
    a4.n128_f64[0] = v8 / v11;
LABEL_6:
    result = a3(result, a4);
    *a2 = (result & 1) == 0;
  }

  return result;
}

void sub_23040E8F0(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, void (*a4)(void *))
{
  v7 = sub_23041B7F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE28](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(a1);
    v11 = sub_23041B7D8();
    (*(v8 + 8))(v10, v7);
    a4(v11);
  }

  else
  {
    if (a2)
    {

      a2(v12, 1.0);
      sub_2303BCC60(a2);
    }

    a4(0);
  }
}

unint64_t sub_23040EA44()
{
  v1 = 0x54656C6946637078;
  if (*v0 != 1)
  {
    v1 = 0x6465746365707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_23040EABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23040F60C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23040EAF0(uint64_t a1)
{
  v2 = sub_23040F87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23040EB2C(uint64_t a1)
{
  v2 = sub_23040F87C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23040EB68(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v28 - v7;
  sub_2303D8244(a1, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50600);
  type metadata accessor for _XPCObjectEncoder();
  if (!swift_dynamicCast())
  {
    v10 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    v12 = v11;
    v13 = sub_23041BDD8();
    v15 = v14;
    v16 = MEMORY[0x277D837D0];
    v31 = MEMORY[0x277D837D0];
    *&v30 = 0xD00000000000003BLL;
    *(&v30 + 1) = 0x8000000230423CA0;
    sub_2303BA68C(&v30, v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v10;
    sub_2303BB1EC(v29, v13, v15, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = v16;
    *(inited + 40) = v19;
    *(inited + 48) = 0xD00000000000005FLL;
    *(inited + 56) = 0x80000002304225B0;
    v20 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0);
    v21 = sub_2303BAF24(0x3ED);
    XPCError.init(code:userInfo:)(v21, v20);
    v22 = v29[0];
    v23 = sub_2303BA458(MEMORY[0x277D84F90]);
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v30);
    sub_2303BA754(&v30, &qword_27DB50620);
    sub_2303BAA64(v22, *(&v22 + 1), v32, v23);
    v24 = *(&v30 + 1);
    *v12 = v30;
    v12[1] = v24;

    return swift_willThrow();
  }

  if (!*(*&v29[0] + 24))
  {
    v26 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.xpcCoderRequired(_:from:userInfo:)(0xD000000000000060, 0x8000000230423CE0, 0, v26, v27);

    swift_willThrow();
  }

  sub_23040D634();
  v9 = *(v3 + 48);
  [v9 lock];
  sub_23040DA18(v3, &v30);
  if (!v2)
  {
    [v9 unlock];
    LOBYTE(v30) = 2;
    sub_23041C528();
    type metadata accessor for RemoteXPCConnection();
    if (swift_dynamicCastClass())
    {
      *&v30 = sub_23040DEF4();
      LOBYTE(v29[0]) = 1;
      sub_23040F828();
      swift_unknownObjectRetain();
      sub_23041C578();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return (*(v6 + 8))(v8, v5);
    }

    *&v30 = sub_23040DB8C();
    LOBYTE(v29[0]) = 0;
    type metadata accessor for XPCFileDescriptor();
    sub_23040F8D0(&qword_27DB50628, type metadata accessor for XPCFileDescriptor);
    sub_23041C578();
    (*(v6 + 8))(v8, v5);
  }

  result = [v9 unlock];
  __break(1u);
  return result;
}

uint64_t XPCFileTransfer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  XPCFileTransfer.init(from:)(a1);
  return v2;
}

uint64_t XPCFileTransfer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v19[-1] - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23040F87C();
  sub_23041CBB8();
  if (v2)
  {

    goto LABEL_4;
  }

  LOBYTE(v19[0]) = 2;
  *(v1 + 32) = sub_23041C478();
  *(v1 + 40) = v10 & 1;
  LOBYTE(v20) = 1;
  sub_2303DF160();
  sub_23041C468();
  v11 = v19[0];
  if (!v19[0])
  {
    type metadata accessor for XPCFileDescriptor();
    LOBYTE(v20) = 0;
    sub_23040F8D0(&qword_27DB50650, type metadata accessor for XPCFileDescriptor);
    sub_23041C4C8();
    (*(v6 + 8))(v8, v5);
    v14 = *(v3 + 16);
    *(v3 + 16) = v19[0];
    v15 = *(v3 + 24);
    *(v3 + 24) = 0;
LABEL_11:
    sub_23040F740(v14, v15);
    goto LABEL_4;
  }

  v12 = MEMORY[0x231917290](v19[0]);
  if (v12 == 0x1ED3F23E0)
  {
    (*(v6 + 8))(v8, v5);
    v14 = *(v3 + 16);
    *(v3 + 16) = v11;
    v15 = *(v3 + 24);
    *(v3 + 24) = 1;
    goto LABEL_11;
  }

  v18 = v12;
  sub_2303D8244(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FED8);
  type metadata accessor for _XPCObjectDecoder();
  if (swift_dynamicCast())
  {
    v13 = *(v20 + 24);
  }

  else
  {
    v13 = 0;
  }

  v16 = sub_2303B9D74(MEMORY[0x277D84F90]);
  sub_2303BCF70();
  swift_allocError();
  static XPCError.invalidType(_:expecting:from:userInfo:)(v18, 0, v13, v16, v17);

  swift_willThrow();

  swift_unknownObjectRelease();

  (*(v6 + 8))(v8, v5);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t XPCFileTransfer.deinit()
{
  sub_23040F740(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t XPCFileTransfer.__deallocating_deinit()
{
  sub_23040F740(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_23040F590@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for XPCFileTransfer();
  v5 = swift_allocObject();
  result = XPCFileTransfer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_23040F60C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000230423D90 == a2 || (sub_23041C808() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54656C6946637078 && a2 == 0xEF726566736E6172 || (sub_23041C808() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465746365707865 && a2 == 0xEE006874676E654CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_23041C808();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23040F740(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_23040F758(result, a2 & 1);
  }

  return result;
}

uint64_t sub_23040F758(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23040F7C4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  if (!a2)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v5(1.0);
    }
  }

  return v4(a2);
}

unint64_t sub_23040F828()
{
  result = qword_27DB50630;
  if (!qword_27DB50630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50630);
  }

  return result;
}

unint64_t sub_23040F87C()
{
  result = qword_27DB50640;
  if (!qword_27DB50640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50640);
  }

  return result;
}

uint64_t sub_23040F8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23040FA9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23040FAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCFileTransfer._CodingKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCFileTransfer._CodingKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23040FC98()
{
  result = qword_27DB50658;
  if (!qword_27DB50658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50658);
  }

  return result;
}

unint64_t sub_23040FCF0()
{
  result = qword_27DB50660;
  if (!qword_27DB50660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50660);
  }

  return result;
}

unint64_t sub_23040FD48()
{
  result = qword_27DB50668;
  if (!qword_27DB50668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50668);
  }

  return result;
}

unint64_t sub_23040FDA4()
{
  result = qword_27DB50680;
  if (!qword_27DB50680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB50678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50680);
  }

  return result;
}

uint64_t sub_23040FE08(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

Swift::Int static XPCError.xpcCoderRequired(_:from:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_23041BDD8();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D837D0];
  *&v24 = a1;
  *(&v24 + 1) = a2;
  sub_2303BA68C(&v24, v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2303BB1EC(v23, v10, v12, isUniquelyReferenced_nonNull_native);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = v13;
  *(inited + 40) = v16;
  *(inited + 48) = 0xD00000000000005FLL;
  *(inited + 56) = 0x80000002304225B0;
  v17 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  XPCError.init(code:userInfo:)(1005, v17);
  v18 = sub_2303BA458(MEMORY[0x277D84F90]);
  if (a3)
  {
    v25 = type metadata accessor for XPCConnection();
    *&v24 = a3;
    sub_2303BA68C(&v24, v23);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v23, 0x656E6E6F43435058, 0xED00006E6F697463, v19);
  }

  else
  {
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v24);
    sub_2303BA754(&v24, &qword_27DB50620);
  }

  result = sub_2303BAA64(a4, v22, a4, v18);
  v21 = *(&v24 + 1);
  *a5 = v24;
  a5[1] = v21;
  return result;
}

Swift::Int static XPCError.unknown(_:from:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v27 = a4;
  v10 = sub_23041BDD8();
  v12 = v11;
  v26 = MEMORY[0x277D837D0];
  *&v25 = a1;
  *(&v25 + 1) = a2;
  sub_2303BA68C(&v25, v24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  sub_2303BB1EC(v24, v10, v12, isUniquelyReferenced_nonNull_native);

  v27 = v5;
  if (a3)
  {
    v26 = type metadata accessor for XPCConnection();
    *&v25 = a3;
    sub_2303BA68C(&v25, v24);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v5;
    sub_2303BB1EC(v24, 0x656E6E6F43435058, 0xED00006E6F697463, v14);
  }

  else
  {
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v25);
    sub_2303BA754(&v25, &qword_27DB50620);
    v5 = v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v16;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x80000002304239E0;
  v17 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  XPCError.init(code:userInfo:)(-1, v17);
  v18 = sub_2303BA458(MEMORY[0x277D84F90]);
  if (a3)
  {
    v26 = type metadata accessor for XPCConnection();
    *&v25 = a3;
    sub_2303BA68C(&v25, v24);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v24, 0x656E6E6F43435058, 0xED00006E6F697463, v19);
  }

  else
  {
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v25);
    sub_2303BA754(&v25, &qword_27DB50620);
  }

  result = sub_2303BAA64(v22, v23, v5, v18);
  v21 = *(&v25 + 1);
  *a5 = v25;
  a5[1] = v21;
  return result;
}

Swift::Int static XPCError.invalidType(_:expecting:from:userInfo:)@<X0>(const _xpc_type_s *a1@<X0>, const _xpc_type_s *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  xpc_type_get_name(a1);
  v7 = sub_23041BE98();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x277D837D0];
  *&v40 = v7;
  *(&v40 + 1) = v8;
  sub_2303BA68C(&v40, v39);

  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2303BB1EC(v39, 0x79546C6175746341, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v42 = v11;
  if (a2)
  {
    xpc_type_get_name(a2);
    v13 = sub_23041BE98();
    v15 = v14;
    v41 = v10;
    *&v40 = v13;
    *(&v40 + 1) = v14;
    sub_2303BA68C(&v40, v39);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v39, 0x6465746365707845, 0xEC00000065707954, v16);
    v42 = v11;
    v17 = sub_23041BDD8();
    v19 = v18;
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_23041C288();
    MEMORY[0x231915500](0xD000000000000010, 0x8000000230423E20);
    MEMORY[0x231915500](v7, v9);

    v10 = MEMORY[0x277D837D0];
    MEMORY[0x231915500](0xD000000000000027, 0x8000000230423E90);
    MEMORY[0x231915500](v13, v15);

    MEMORY[0x231915500](0x7078652073617720, 0xEE002E6465746365);
    v41 = v10;
    sub_2303BA68C(&v40, v39);
    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v20;
    sub_2303BB1EC(v39, v17, v19, v21);
  }

  else
  {
    v22 = sub_23041BDD8();
    v24 = v23;
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_23041C288();

    *&v40 = 0xD000000000000010;
    *(&v40 + 1) = 0x8000000230423E20;
    MEMORY[0x231915500](v7, v9);

    MEMORY[0x231915500](0xD00000000000001ELL, 0x8000000230423E40);
    v41 = v10;
    sub_2303BA68C(&v40, v39);
    v25 = v42;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v25;
    sub_2303BB1EC(v39, v22, v24, v26);
  }

  v42 = v37;
  if (a3)
  {
    v41 = type metadata accessor for XPCConnection();
    *&v40 = a3;
    sub_2303BA68C(&v40, v39);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v39, 0x656E6E6F43435058, 0xED00006E6F697463, v27);
    v28 = v37;
  }

  else
  {
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v40);
    sub_2303BA754(&v40, &qword_27DB50620);
    v28 = v42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = v10;
  *(inited + 40) = v30;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x8000000230423E60;
  v31 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  XPCError.init(code:userInfo:)(1004, v31);
  if (a3)
  {
    v41 = type metadata accessor for XPCConnection();
    *&v40 = a3;
    sub_2303BA68C(&v40, v39);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v39, 0x656E6E6F43435058, 0xED00006E6F697463, v32);
  }

  else
  {

    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v40);
    sub_2303BA754(&v40, &qword_27DB50620);
  }

  result = sub_2303BAA64(v37, v38, a4, v28);
  v34 = *(&v40 + 1);
  *a5 = v40;
  a5[1] = v34;
  return result;
}

Swift::Int static XPCError.auditTokenRequired.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000076;
  *(inited + 56) = 0x8000000230423270;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1007, v2).errorCode;
}

Swift::Int static XPCError.clientEntitlementsNotFound.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000048;
  *(inited + 56) = 0x80000002304231E0;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1008, v2).errorCode;
}

Swift::Int static XPCError.dataMissing.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x80000002304234D0;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1009, v2).errorCode;
}

Swift::Int static XPCError.decodingFailed.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x8000000230423540;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1010, v2).errorCode;
}

Swift::Int static XPCError.connectionInvalid.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x8000000230423330;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1001, v2).errorCode;
}

id sub_230410CB8()
{
  result = XPCErrorGetPeerCodeSigningRequirement();
  qword_27DB50690 = result;
  return result;
}

uint64_t XPCErrorPeerCodeSigningRequirement.getter()
{
  if (qword_27DB4FC90 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t sub_230410D68(uint64_t a1)
{
  v2 = sub_2304125E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_230410DA4(uint64_t a1)
{
  v2 = sub_2304125E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

Swift::Int sub_230410DE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_23041BDD8();
  v7 = v6;

  if (v5 == 0xD000000000000017 && 0x8000000230423F90 == v7)
  {
  }

  else
  {
    v9 = sub_23041C808();

    if ((v9 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }
  }

  v11 = [a1 code];
  v12 = [a1 userInfo];
  v13 = sub_23041BCC8();

  v14 = sub_2303BAF24(v11);

  return XPCError.init(code:userInfo:)(v14, v13).errorCode;
}

uint64_t XPCError.hashValue.getter()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

id sub_230410F94(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_23041BCB8();
  v3 = sub_23041BCB8();
  v4 = [v2 isEqual_];

  return v4;
}

uint64_t sub_230411064(uint64_t a1)
{
  v3 = v1;
  sub_2303E42C4(0, &qword_27DB50010);
  sub_2303D8244(a1, &v26);
  v5 = NSError.init(from:)(&v26);
  if (!v2)
  {
    v6 = v5;
    v7 = [v5 domain];
    v8 = sub_23041BDD8();
    v10 = v9;

    if (v8 == 0xD000000000000017 && 0x8000000230423F90 == v10)
    {
    }

    else
    {
      v12 = sub_23041C808();

      if ((v12 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23041E310;
        *(inited + 32) = sub_23041BDD8();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v14;
        *(inited + 48) = 0xD00000000000002FLL;
        *(inited + 56) = 0x8000000230424010;
        v15 = sub_2303BA458(inited);
        swift_setDeallocating();
        sub_2303BA754(inited + 32, &qword_27DB501B0);
        XPCError.init(code:userInfo:)(5, v15);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_23041C288();
        MEMORY[0x231915500](0xD000000000000034, 0x8000000230424040);
        v28 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506B0);
        v16 = sub_23041BE28();
        MEMORY[0x231915500](v16);

        MEMORY[0x231915500](46, 0xE100000000000000);
        sub_230411ADC(v24, v25, v26, v27);
        sub_2303BCF70();
        if (sub_23041C7D8())
        {
        }

        else
        {
          swift_allocError();
          v21 = v27;
          *v22 = v26;
          v22[1] = v21;
        }

        swift_willThrow();
        goto LABEL_13;
      }
    }

    v17 = [v6 code];
    v18 = [v6 userInfo];
    v19 = sub_23041BCC8();

    v20 = sub_2303BAF24(v17);
    XPCError.init(code:userInfo:)(v20, v19);
LABEL_13:
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_2304113A8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2303BCF70();

  v4 = sub_23041C7D8();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = a2;
    v6[1] = a3;
  }

  v7 = sub_23041B928();

  NSError.encode(to:)(a1);
}

uint64_t sub_230411500(uint64_t a1, uint64_t a2)
{
  v3 = sub_23041BDD8();
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_2303BA5F0(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_2303BAEC8(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

Swift::Int static XPCError.xpcError.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000003CLL;
  *(inited + 56) = 0x8000000230423FD0;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(3, v2).errorCode;
}

Swift::Int static XPCError.connectionInterrupted.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x8000000230423F70;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1000, v2).errorCode;
}

Swift::Int static XPCError.terminationImminent.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000015;
  *(inited + 56) = 0x8000000230423F50;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1002, v2).errorCode;
}

Swift::Int static XPCError.invalidType.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x8000000230423E60;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1004, v2).errorCode;
}

Swift::Int static XPCError.xpcCoderRequired.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000005FLL;
  *(inited + 56) = 0x80000002304225B0;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1005, v2).errorCode;
}

Swift::Int static XPCError.peerCodeSigningRequirement.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000060;
  *(inited + 56) = 0x8000000230423EE0;
  v2 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  return XPCError.init(code:userInfo:)(1006, v2).errorCode;
}

Swift::Int sub_230411ADC(ValueMetadata *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 40) = v9;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v10 = sub_2303D08F8(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB506C0);
  }

  else
  {
    v10 = sub_2303D08F8(MEMORY[0x277D84F90]);
  }

  v11 = sub_230417E90(v10);

  v12 = sub_2303B9D74(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v11;
  sub_2303BAB50(v12, sub_2303BB75C, 0, isUniquelyReferenced_nonNull_native, &v19);

  v14 = v19;

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_2303BAB50(a2, sub_2303BB75C, 0, v15, &v19);
  swift_bridgeObjectRelease_n();
  v16._rawValue = v19;
  v17 = sub_2303BAF24(a1);
  return XPCError.init(code:userInfo:)(v17, v16).errorCode;
}

unint64_t sub_230411C78(unint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v4 = *(v28 - 8);
  result = MEMORY[0x28223BE28](v28);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_23041C258() + 1) & ~v8;
    v12 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      v15 = a1;
      v16 = v30;
      sub_2304126F0(*(a2 + 48) + v12 * v9, v30, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      sub_23041CB48();
      sub_23041BAA8();
      sub_2304127C0();
      sub_23041BD48();
      v17 = sub_23041CB78();
      v18 = v16;
      a1 = v15;
      result = sub_23040A6D0(v18);
      v19 = v17 & v10;
      if (v15 >= v11)
      {
        if (v19 < v11)
        {
          v7 = v29;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (v15 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v19 >= v11 || v15 >= v19)
        {
LABEL_11:
          v20 = *(a2 + 48);
          v21 = v12 * v15;
          result = v20 + v12 * v15;
          if (v12 * v15 < v14 || result >= v20 + v14 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v29;
          }

          else
          {
            v7 = v29;
            if (v21 != v14)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v9);
          if (a1 != v9 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v29;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230411F54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2303D7404(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_2304198BC();
      goto LABEL_7;
    }

    sub_230418A48(v16, a3 & 1);
    v21 = sub_2303D7404(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2304126F0(a2, v10, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      return sub_230412448(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_23041CAA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_2304120F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RemoteDevice.Identity();
  MEMORY[0x28223BE28](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2303D74B8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_230419B08();
      goto LABEL_7;
    }

    sub_230418DE8(v16, a3 & 1);
    v21 = sub_2303D74B8(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2304126F0(a2, v10, type metadata accessor for RemoteDevice.Identity);
      return sub_2304124FC(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_23041CAA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_23041229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_2303D75F4(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_23041943C(v22, a7 & 1);
      v17 = sub_2303D75F4(a3, a4, a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_23041CAA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_230419ED4();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 32 * v17);
  *v30 = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_230412448(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  result = sub_230412758(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2304124FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RemoteDevice.Identity();
  result = sub_230412758(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for RemoteDevice.Identity);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_2304125B0(uint64_t a1)
{
  *(a1 + 8) = sub_2304125E0();
  result = sub_230412634();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2304125E0()
{
  result = qword_27DB50698;
  if (!qword_27DB50698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50698);
  }

  return result;
}

unint64_t sub_230412634()
{
  result = qword_27DB506A0;
  if (!qword_27DB506A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB506A0);
  }

  return result;
}

unint64_t sub_23041268C()
{
  result = qword_27DB506A8;
  if (!qword_27DB506A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB506A8);
  }

  return result;
}

uint64_t sub_2304126F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230412758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2304127C0()
{
  result = qword_27DB4FF38;
  if (!qword_27DB4FF38)
  {
    sub_23041BAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF38);
  }

  return result;
}

uint64_t CustomNSError.wrapping(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_23041C1C8();
  MEMORY[0x28223BE28](v7 - 8);
  v9 = &v63 - v8;
  if (a1)
  {
    v64 = a3;
    v10 = a1;
    v63 = v3;
    v11 = sub_23041B818();
    v71 = v11;
    v12 = sub_23041BDD8();
    if (*(v11 + 16))
    {
      v14 = sub_2303BA5F0(v12, v13);
      v16 = v15;

      if (v16)
      {
        sub_2303BAEC8(*(v11 + 56) + 32 * v14, &v69);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB500C8);
        if (swift_dynamicCast())
        {
          v18 = *&v66[0];
          v19 = a1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_23040675C(0, v18[2] + 1, 1, v18);
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_23040675C((v20 > 1), v21 + 1, 1, v18);
          }

          v18[2] = v21 + 1;
          v18[v21 + 4] = a1;
          v22 = sub_23041BDD8();
          v24 = v23;
          v70 = v17;
          *&v69 = v18;
          sub_2303BA68C(&v69, v66);
          v25 = v71;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v25;
          sub_2303BB1EC(v66, v22, v24, isUniquelyReferenced_nonNull_native);
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v29 = sub_23041BDD8();
    if (*(v11 + 16))
    {
      v31 = sub_2303BA5F0(v29, v30);
      v33 = v32;

      if (v33)
      {
        sub_2303BAEC8(*(v11 + 56) + 32 * v31, &v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
        if (swift_dynamicCast())
        {
          v34 = *&v66[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB504C0);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_23041F9D0;
          *(v35 + 32) = v34;
          *(v35 + 40) = a1;
          v36 = sub_23041BDD8();
          v38 = v37;
          v39 = a1;
          v40 = v34;
          sub_2303BA930(v36, v38, &v69);

          sub_2304134DC(&v69);
          v41 = sub_23041BDD8();
          v43 = v42;
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB500C8);
          *&v69 = v35;
          sub_2303BA68C(&v69, v66);
          v44 = v71;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v44;
          sub_2303BB1EC(v66, v41, v43, v45);

LABEL_20:

          sub_23041B808();
          v54 = v63;
          v55 = sub_23041B828();
          v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v57 = sub_23041BDA8();

          v58 = sub_23041BCB8();
          v59 = [v56 initWithDomain:v57 code:v55 userInfo:v58];

          *&v69 = v59;
          sub_2304070CC();
          v60 = swift_dynamicCast();
          v61 = *(a2 - 8);
          v62 = *(v61 + 56);
          if (v60)
          {
            v62(v9, 0, 1, a2);
            (*(v61 + 32))(v64, v9, a2);
          }

          else
          {
            v62(v9, 1, 1, a2);
            (*(v61 + 16))(v64, v54, a2);
          }
        }
      }
    }

    else
    {
    }

    v46 = sub_23041BDD8();
    v48 = v47;
    swift_getErrorValue();
    v49 = v67;
    v50 = v68;
    v70 = v68;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v69);
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_0Tm, v49, v50);
    sub_2303BA68C(&v69, v66);
    v52 = v71;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v52;
    sub_2303BB1EC(v66, v46, v48, v53);
    goto LABEL_20;
  }

  v27 = *(*(a2 - 8) + 16);

  return v27(a3, v3, a2);
}

uint64_t _Error.wrapping(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v13 = a2;
  v14 = v6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0Tm, v3, a2);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v15[3] = v8;
  v15[4] = v9;
  v10 = __swift_allocate_boxed_opaque_existential_0Tm(v15);
  CustomNSError.wrapping(_:)(a1, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505A0);
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t CustomNSError.wrapping(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v6 + 16))(a3, v9, a2);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);
    v13 = (v6 + 8);
    v14 = (v6 + 32);
    do
    {
      v15 = *v12++;
      v16 = v15;
      CustomNSError.wrapping(_:)(v15, a2, v8);

      (*v13)(a3, a2);
      result = (*v14)(a3, v8, a2);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t CustomNSError.wrap(_:)(void *a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v7, v2, a2);
  CustomNSError.wrapping(_:)(a1, a2, v2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t CustomNSError.underlyingErrors.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE28](a1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  v6 = sub_23041C7D8();
  if (v6)
  {
    v7 = v6;
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    v7 = swift_allocError();
    (*(v2 + 32))(v8, v4, a1);
  }

  v9 = sub_23041B928();

  v10 = [v9 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
  v11 = sub_23041BFA8();

  return v11;
}

uint64_t _Error.wrapping(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v13 = a2;
  v14 = v6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0Tm, v3, a2);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v15[3] = v8;
  v15[4] = v9;
  v10 = __swift_allocate_boxed_opaque_existential_0Tm(v15);
  CustomNSError.wrapping(_:)(a1, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB505A0);
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t _Error.wrap(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9, v3, a2);
  _Error.wrapping(_:)(a1, a2, a3);
  return (*(v7 + 8))(v9, a2);
}

uint64_t sub_2304134DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static POSIXError.current(or:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  v5 = MEMORY[0x28223BE28](v4 - 8);
  v7 = &v15 - v6;
  v8 = MEMORY[0x231915210](v5);
  if (v8)
  {
    v9 = v8;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(v9);
    v10 = sub_23041B7F8();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v7, 0, 1, v10);
    return (*(v11 + 32))(a2, v7, v10);
  }

  else
  {
    v13 = sub_23041B7F8();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v7, 1, 1, v13);
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(a1);
    result = (*(v14 + 48))(v7, 1, v13);
    if (result != 1)
    {
      return sub_230404004(v7);
    }
  }

  return result;
}

uint64_t POSIXError.init(uncheckedCode:userInfo:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((sub_23041BB78() & 0x100000000) != 0)
    {
      v2 = *MEMORY[0x277CCA5B8];
      v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v4 = v2;
      v5 = sub_23041BCB8();

      [v3 initWithDomain:v4 code:v1 userInfo:v5];

      sub_2304070CC();
      sub_23041B7F8();
      return swift_dynamicCast();
    }

    else
    {
      sub_23041B7F8();
      sub_2303F7D74();
      return sub_23041B918();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static POSIXError.current.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x231915210]();
  if (v2)
  {
    v3 = v2;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_23041B7F8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t xpc_uuid_get_uuid(_:)(void *a1)
{
  bytes = xpc_uuid_get_bytes(a1);
  if (bytes)
  {
    return *bytes;
  }

  else
  {
    return 0;
  }
}

xpc_object_t xpc_uuid_create_with_uuid(_:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, int a9, int a10)
{
  v14 = *MEMORY[0x277D85DF0];
  uuid[0] = a1;
  uuid[1] = a2;
  uuid[2] = a3;
  uuid[3] = a4;
  uuid[4] = a5;
  uuid[5] = a6;
  uuid[6] = a7;
  uuid[7] = a8;
  v12 = a9;
  v13 = a10;
  return xpc_uuid_create(uuid);
}

uint64_t _ss13OpaquePointerV7MercuryE10descriptorAC20AnyXPCTypeDescriptor_pvg_0@<X0>(xpc_type_t type@<X0>, uint64_t a2@<X8>)
{
  if (qword_27DB4FC88 != -1)
  {
    swift_once();
  }

  v4 = off_27DB503B8;
  if (*(off_27DB503B8 + 2) && (v5 = sub_2303D7588(type), (v6 & 1) != 0))
  {
    v7 = v4[7] + 40 * v5;

    return sub_2303D8244(v7, a2);
  }

  else
  {
    xpc_type_get_name(type);
    v9 = sub_23041BE98();
    v11 = v10;
    sub_23041C288();
    MEMORY[0x231915500](0x206E776F6E6B6E55, 0xED00002065707974);
    sub_23041C3B8();
    MEMORY[0x231915500](2238496, 0xE300000000000000);
    MEMORY[0x231915500](v9, v11);
    MEMORY[0x231915500](0xD00000000000001DLL, 0x8000000230423A90);
    result = sub_23041C3D8();
    __break(1u);
  }

  return result;
}

uint64_t OS_xpc_object.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x231917290](v1);

  return _ss13OpaquePointerV7MercuryE10descriptorAC20AnyXPCTypeDescriptor_pvg_0(v3, a1);
}

id sub_230413CB4@<X0>(void *a1@<X8>)
{
  if (qword_27DB4FBD8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27DB53E20;
  *a1 = qword_27DB53E20;

  return v1;
}

uint64_t DynamicCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v60 = a3;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = sub_23041C1C8();
  v53 = *(v54 - 8);
  v6 = MEMORY[0x28223BE28](v54);
  v56 = &v48 - v7;
  v59 = AssociatedTypeWitness;
  v57 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE28](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50210);
  v61 = *(v13 - 8);
  MEMORY[0x28223BE28](v13);
  v15 = &v48 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = sub_2304010B4();
  v17 = v67;
  sub_23041CBB8();
  if (!v17)
  {
    v52 = v16;
    v50 = v10;
    v51 = v12;
    v18 = v59;
    v19 = v60;
    v67 = a1;
    LOBYTE(v63[0]) = 0;
    v20 = sub_23041C488();
    v24 = v23;
    v49 = v13;
    v25 = v20;
    v26 = v19;
    v27 = static DynamicCodable.supportedType(named:)(v20, v23, v58, v19);
    if (v27)
    {
      v30 = v27;
      v31 = v28;
      v32 = v29;

      v62[0] = 1;
      v64 = v30;
      v65 = v31;
      v66 = v32;
      __swift_allocate_boxed_opaque_existential_0Tm(v63);
      sub_23041C508();
      sub_23041C4C8();
      v33 = v61;
      sub_2304022C8(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50368);
      v35 = v56;
      v36 = swift_dynamicCast();
      v37 = v57;
      v38 = *(v57 + 56);
      v39 = v49;
      if (v36)
      {
        v38(v35, 0, 1, v18);
        v40 = v51;
        (*(v37 + 32))(v51, v35, v18);
        v41 = v50;
        (*(v37 + 16))(v50, v40, v18);
        (*(v26 + 56))(v41, v58, v26);
        (*(v37 + 8))(v40, v18);
        (*(v33 + 8))(v15, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        v21 = v67;
        return __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      v42 = v33;
      v38(v35, 1, 1, v18);
      (*(v53 + 8))(v35, v54);
      sub_230402224();
      swift_allocError();
      v44 = v43;
      v45 = v64;
      v46 = __swift_project_boxed_opaque_existential_0(v63, v64);
      *(v44 + 24) = v45;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v44);
      (*(*(v45 - 8) + 16))(boxed_opaque_existential_0Tm, v46, v45);
      *(v44 + 32) = v18;
      *(v44 + 40) = 1;
      swift_willThrow();
      (*(v42 + 8))(v15, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    else
    {
      sub_230402224();
      swift_allocError();
      *v34 = v25;
      *(v34 + 8) = v24;
      *(v34 + 40) = 0;
      swift_willThrow();
      (*(v61 + 8))(v15, v49);
    }

    a1 = v67;
  }

  v21 = a1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t DynamicCodable.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_23041C1C8();
  v41 = *(v44 - 8);
  v7 = MEMORY[0x28223BE28](v44);
  v45 = &v38 - v8;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE28](v7);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE28](v10);
  v42 = &v38 - v13;
  MEMORY[0x28223BE28](v12);
  v15 = &v38 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50330);
  v49 = *(v54 - 8);
  MEMORY[0x28223BE28](v54);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v18 = sub_2304010B4();
  v48 = v17;
  v40 = v18;
  sub_23041CBC8();
  (*(a3 + 64))(a2, a3);
  v53 = AssociatedTypeWitness;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v52);
  v47 = *(v9 + 16);
  v47(boxed_opaque_existential_0Tm, v15, AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_0(v52, v53);
  swift_getDynamicType();
  v20 = sub_23041CC18();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  if (static DynamicCodable.supportedType(named:)(v20, v22, a2, a3))
  {
    v44 = v9;
  }

  else
  {
    v39 = v20;
    v23 = v45;
    (*(a3 + 48))(v15, a2, a3);
    if ((*(v9 + 48))(v23, 1, AssociatedTypeWitness) == 1)
    {
      (*(v41 + 8))(v45, v44);
      sub_230402224();
      swift_allocError();
      *v24 = v39;
      *(v24 + 8) = v22;
      *(v24 + 40) = 0;
      swift_willThrow();
      (*(v9 + 8))(v15, AssociatedTypeWitness);
      return (*(v49 + 8))(v48, v54);
    }

    v44 = v9;
    v26 = v9 + 32;
    v41 = *(v9 + 32);
    v27 = v42;
    (v41)(v42, v45, AssociatedTypeWitness);
    v53 = AssociatedTypeWitness;
    v28 = __swift_allocate_boxed_opaque_existential_0Tm(v52);
    v47(v28, v27, AssociatedTypeWitness);
    __swift_project_boxed_opaque_existential_0(v52, v53);
    swift_getDynamicType();
    sub_23041CC18();
    (*(v26 - 24))(v15, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    (v41)(v15, v27, AssociatedTypeWitness);
  }

  v29 = v47;
  v47(v46, v15, AssociatedTypeWitness);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50370);
  v31 = swift_dynamicCast();
  v32 = v54;
  if (v31)
  {
    sub_2303BE65C(v50, v52);
    LOBYTE(v50[0]) = 0;
    v33 = v48;
    v34 = v43;
    sub_23041C538();

    if (!v34)
    {
      __swift_project_boxed_opaque_existential_0(v52, v53);
      LOBYTE(v50[0]) = 1;
      sub_23041C5A8();
      sub_23041C578();
    }

    (*(v44 + 8))(v15, AssociatedTypeWitness);
    (*(v49 + 8))(v33, v32);
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_230415124(v50);
    sub_230402224();
    swift_allocError();
    v36 = v35;
    v35[3] = AssociatedTypeWitness;
    v37 = __swift_allocate_boxed_opaque_existential_0Tm(v35);
    v29(v37, v15, AssociatedTypeWitness);
    v36[4] = v30;
    *(v36 + 40) = 1;
    swift_willThrow();
    (*(v44 + 8))(v15, AssociatedTypeWitness);
    return (*(v49 + 8))(v48, v32);
  }
}

uint64_t sub_230414AAC@<X0>(char *a1@<X8>)
{
  v2 = sub_23041C458();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t DynamicCodableContainerCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x5464656C676E616DLL;
  }
}

uint64_t sub_230414B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x5464656C676E616DLL;
  }

  if (v2)
  {
    v4 = 0xEF656D614E657079;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 0x5464656C676E616DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEF656D614E657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23041C808();
  }

  return v8 & 1;
}

uint64_t sub_230414C18()
{
  sub_23041CB48();
  sub_23041BE78();

  return sub_23041CB78();
}

uint64_t sub_230414CA4()
{
  sub_23041BE78();
}

uint64_t sub_230414D1C()
{
  sub_23041CB48();
  sub_23041BE78();

  return sub_23041CB78();
}

uint64_t sub_230414DA4@<X0>(char *a1@<X8>)
{
  v2 = sub_23041C458();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_230414E04(uint64_t *a1@<X8>)
{
  v2 = 0x5464656C676E616DLL;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xEF656D614E657079;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230414E4C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x5464656C676E616DLL;
  }
}

uint64_t sub_230414E90@<X0>(char *a1@<X8>)
{
  v2 = sub_23041C458();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_230414F00(uint64_t a1)
{
  v2 = sub_2304010B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230414F3C(uint64_t a1)
{
  v2 = sub_2304010B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DynamicCodable.defaultEncodingValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t static DynamicCodable.supportedType(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 32))(a3, a4);
  v7 = result;
  v8 = result + 48;
  v14 = -*(result + 16);
  v9 = -1;
  while (1)
  {
    if (v14 + v9 == -1)
    {

      return 0;
    }

    if (++v9 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v8 - 16);
    if (sub_23041CC18() == a1 && v11 == a2)
    {

LABEL_12:

      return v10;
    }

    v8 += 24;
    v13 = sub_23041C808();

    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230415124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static DynamicCodable.canEncode(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = AssociatedTypeWitness;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v13);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a1, AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_0(v13, v14);
  swift_getDynamicType();
  v8 = sub_23041CC18();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v11 = static DynamicCodable.supportedType(named:)(v8, v10, a2, a3);

  return v11 != 0;
}

uint64_t KeyedEncodingContainerProtocol.encode<A, B>(_:using:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = MEMORY[0x28223BE28](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE28](v10);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v12);
  (*(a8 + 56))(v12, a5, a8);
  sub_23041C9A8();
  return (*(v14 + 8))(v16, a5);
}

uint64_t KeyedDecodingContainerProtocol.decode<A, B>(using:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE28](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23041C8C8();
  if (!v7)
  {
    (*(a7 + 64))(a4, a7);
    return (*(v10 + 8))(v12, a4);
  }

  return result;
}

uint64_t static CompositeDynamicCodableContainer.supportedTypes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 32))(a3, a5);
  v8 = (*(a4 + 32))(a2, a4);
  sub_23041B500(v8);
  return v7;
}

uint64_t static CompositeDynamicCodableContainer.defaultEncodingValue(forUnencodableValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_23041C1C8();
  v21 = *(v14 - 8);
  MEMORY[0x28223BE28](v14);
  v16 = &v20 - v15;
  (*(a5 + 48))(a1, a3, a5);
  v17 = *(a2 - 8);
  v18 = *(v17 + 48);
  if (v18(v16, 1, a2) == 1)
  {
    (*(a6 + 48))(a1, a4, a6);
    result = v18(v16, 1, a2);
    if (result != 1)
    {
      return (*(v21 + 8))(v16, v14);
    }
  }

  else
  {
    (*(v17 + 32))(a7, v16, a2);
    return (*(v17 + 56))(a7, 0, 1, a2);
  }

  return result;
}

uint64_t CompositeDynamicCodableContainer.encode(to:)(uint64_t a1, void *a2)
{
  v71 = a1;
  v4 = a2[2];
  v66 = sub_23041C1C8();
  v64 = *(v66 - 8);
  v5 = MEMORY[0x28223BE28](v66);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE28](v5);
  v68 = &v56 - v8;
  v70 = a2[4];
  v69 = *(v70 - 8);
  v9 = MEMORY[0x28223BE28](v7);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE28](v9);
  v67 = &v56 - v12;
  v74 = v4;
  v13 = *(v4 - 8);
  v14 = MEMORY[0x28223BE28](v11);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE28](v14);
  v62 = &v56 - v17;
  v18 = MEMORY[0x28223BE28](v16);
  v20 = &v56 - v19;
  v21 = a2[3];
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE28](v18);
  v61 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v23);
  v26 = &v56 - v25;
  v27 = a2[5];
  v28 = v2;
  if (static DynamicCodable.canEncode(value:)(v2, v21, v27))
  {
    (*(v13 + 16))(v20, v2, v74);
    (*(v27 + 56))(v20, v21, v27);
    sub_23041BD18();
    return (*(v22 + 8))(v26, v21);
  }

  else
  {
    v57 = v22;
    v58 = v20;
    v65 = v13;
    v30 = v74;
    v31 = a2[6];
    v32 = v70;
    if (static DynamicCodable.canEncode(value:)(v2, v70, v31))
    {
      v33 = v58;
      (*(v65 + 16))(v58, v2, v30);
      v34 = v67;
      (*(v31 + 56))(v33, v32, v31);
      sub_23041BD18();
      return (*(v69 + 8))(v34, v32);
    }

    else
    {
      v35 = v68;
      (*(v27 + 48))(v2, v21, v27);
      v36 = v65;
      v37 = *(v65 + 48);
      if (v37(v35, 1, v30) == 1)
      {
        v68 = *(v64 + 8);
        (v68)(v35, v66);
        v38 = v63;
        v39 = v70;
        (*(v31 + 48))(v28, v70, v31);
        v40 = v38;
        v41 = v37(v38, 1, v30);
        v42 = v30;
        if (v41 == 1)
        {
          (v68)(v38, v66);
          sub_230402224();
          swift_allocError();
          v44 = v43;
          v73 = v30;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v72);
          (*(v65 + 16))(boxed_opaque_existential_0Tm, v28, v30);
          __swift_project_boxed_opaque_existential_0(v72, v73);
          swift_getDynamicType();
          v46 = sub_23041CC18();
          v48 = v47;
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          *v44 = v46;
          *(v44 + 8) = v48;
          *(v44 + 40) = 0;
          return swift_willThrow();
        }

        else
        {
          v52 = v65;
          v53 = v59;
          (*(v65 + 32))(v59, v40, v30);
          v54 = v58;
          (*(v52 + 16))(v58, v53, v30);
          v55 = v60;
          (*(v31 + 56))(v54, v39, v31);
          sub_23041BD18();
          (*(v69 + 8))(v55, v39);
          return (*(v52 + 8))(v53, v42);
        }
      }

      else
      {
        v49 = v62;
        (*(v36 + 32))(v62, v35, v30);
        v50 = v58;
        (*(v36 + 16))(v58, v49, v30);
        v51 = v61;
        (*(v27 + 56))(v50, v21, v27);
        sub_23041BD18();
        (*(v57 + 8))(v51, v21);
        return (*(v36 + 8))(v49, v30);
      }
    }
  }
}

void CompositeDynamicCodableContainer.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a3;
  v30 = a6;
  v26 = *(a3 - 8);
  v10 = MEMORY[0x28223BE28](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE28](v10);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v18;
  v29 = *(v18 - 8);
  v19 = MEMORY[0x28223BE28](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2303D8244(v19, v33);
  sub_23041C058();
  if (!v6)
  {
    (*(a4 + 64))(a2, a4);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v14 + 8))(v17, a2);
LABEL_6:
    (*(v29 + 32))(v30, v21, v31);
    return;
  }

  v34 = v6;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_9;
  }

  if ((v33[40] & 1) == 0)
  {

    sub_230416308(v33);
    sub_2303D8244(a1, v32);
    v24 = v27;
    v23 = v28;
    sub_23041C058();
    (*(v24 + 64))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v26 + 8))(v12, v23);

    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_230416308(v33);
LABEL_9:
}

unint64_t sub_23041633C()
{
  result = qword_27DB506C8;
  if (!qword_27DB506C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB506C8);
  }

  return result;
}

unint64_t sub_230416394()
{
  result = qword_280AC7B10;
  if (!qword_280AC7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7B10);
  }

  return result;
}

unint64_t sub_2304163EC()
{
  result = qword_280AC7B18;
  if (!qword_280AC7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7B18);
  }

  return result;
}

uint64_t sub_230416440(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
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

uint64_t sub_2304164C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2304164FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_230416548(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2304165F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230416664(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2304167A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t _Error.init(_bridgedNSError:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 domain];
  v9 = sub_23041BDD8();
  v11 = v10;

  if (v9 == sub_23041B808() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_23041C808();

    if ((v14 & 1) == 0)
    {
      v15 = 1;
      goto LABEL_9;
    }
  }

  v16 = [a1 code];
  v17 = [a1 userInfo];
  v18 = sub_23041BCC8();

  v19 = sub_2304176BC(v16, a2, a3);
  (*(a3 + 24))(v19, v18, a2, a3);
  v15 = 0;
LABEL_9:
  v20 = *(*(a2 - 8) + 56);

  return v20(a4, v15, 1, a2);
}

id static _Error<>.== infix(_:_:)()
{
  v0 = sub_23041B828();
  if (v0 != sub_23041B828())
  {
    return 0;
  }

  sub_23041B818();
  v1 = sub_23041BCB8();

  sub_23041B818();
  v2 = sub_23041BCB8();

  v3 = [v1 isEqual_];

  return v3;
}

uint64_t _Error<>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE28](a1);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v10);
  v14 = &v39 - v13;
  sub_2303E42C4(0, &qword_27DB50010);
  sub_2303D8244(a1, &v48);
  v15 = NSError.init(from:)(&v48);
  if (v5)
  {
    v16 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  v43 = 0;
  v44 = a4;
  v40 = v12;
  v41 = v14;
  v45 = v4;
  v46 = v15;
  v42 = v9;
  v18 = [v15 domain];
  v19 = sub_23041BDD8();
  v21 = v20;

  v22 = v47;
  v24 = v19 == sub_23041B808() && v21 == v23;
  v25 = a2;
  if (v24)
  {

    v27 = a1;
  }

  else
  {
    v26 = sub_23041C808();

    v27 = a1;
    if ((v26 & 1) == 0)
    {
      v28 = v40;
      Error<>.init(_:_:)(5, 0xD00000000000002FLL, 0x8000000230424010, v25, v22);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_23041C288();
      MEMORY[0x231915500](0xD000000000000034, 0x8000000230424040);
      v50 = v25;
      swift_getMetatypeMetadata();
      v29 = sub_23041BE28();
      MEMORY[0x231915500](v29);

      MEMORY[0x231915500](46, 0xE100000000000000);
      v30 = v41;
      Error<>.init(_:_:)(v28, v48, v49, v25, v22);
      v31 = sub_23041C7D8();
      v32 = v46;
      if (v31)
      {
        (*(v42 + 8))(v30, v25);
      }

      else
      {
        swift_allocError();
        (*(v42 + 32))(v38, v30, v25);
      }

      swift_willThrow();

      v16 = v27;
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }
  }

  v33 = v46;
  v34 = [v46 code];
  v35 = [v33 userInfo];
  v36 = sub_23041BCC8();

  v37 = sub_2304176BC(v34, v25, v22);
  (*(v22 + 24))(v37, v36, v25, v22);

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

void _Error<>.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v7, a2);
  v8 = sub_23041C7D8();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v6, a2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v6, a2);
  }

  v11 = sub_23041B928();

  NSError.encode(to:)(a1);
}

uint64_t sub_2304172D8()
{
  v0 = sub_23041B818();
  v1 = sub_23041BDD8();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = sub_2303BA5F0(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_2303BAEC8(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t Error<>.init(_:userInfo:defaultUserInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a2;
  sub_2303BAB8C(a3, sub_2303BB75C, 0, isUniquelyReferenced_nonNull_native, &v19);

  v11 = v19;
  v12 = sub_23041B818();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v11;
  sub_2303BAB8C(v12, sub_2303BB75C, 0, v13, &v19);

  v14 = v19;
  v15 = sub_23041B828();
  v16 = sub_2304176BC(v15, a4, a5);
  (*(a5 + 24))(v16, v14, a4, a5);
  v17 = *(*(a4 - 8) + 8);

  return v17(a1, a4);
}

uint64_t Error<>.init(_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v11;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v12 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  v13 = sub_2304176BC(v9, a4, a5);
  return (*(a5 + 24))(v13, v12, a4, a5);
}

uint64_t sub_2304176BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE28](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    if (v5 == v5)
    {
      return v5;
    }

    sub_23041C0C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23041F9D0;
    v23 = a2;
    swift_getMetatypeMetadata();
    v11 = sub_23041BE28();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    v14 = sub_2303BBBD4();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v15 = MEMORY[0x277D83C10];
    *(v10 + 96) = MEMORY[0x277D83B88];
    *(v10 + 104) = v15;
    *(v10 + 64) = v14;
    *(v10 + 72) = v5;
    sub_2303E42C4(0, &qword_27DB502F0);
    v16 = sub_23041C1B8();
  }

  else
  {
    sub_23041C0C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23041E310;
    v23 = a2;
    swift_getMetatypeMetadata();
    v18 = sub_23041BE28();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2303BBBD4();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_2303E42C4(0, &qword_27DB502F0);
    v16 = sub_23041C1B8();
  }

  sub_23041BB28();

  Error<>.init(_:_:)(0xFFFFFFFFLL, 0xD00000000000001ALL, 0x80000002304239E0, a2, a3);
  v5 = sub_23041B828();
  result = (*(v6 + 8))(v9, a2);
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _Error.init(code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2304176BC(a1, a3, a4);
  v8 = *(a4 + 24);

  return v8(v7, a2, a3, a4);
}

BOOL static _Error.~= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE28](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = sub_23041C7D8();
  if (v7)
  {
    v8 = v7;
    (*(v4 + 8))(v6, a3);
  }

  else
  {
    v8 = swift_allocError();
    (*(v4 + 32))(v9, v6, a3);
  }

  v10 = static _Error.~= infix(_:_:)();

  return v10;
}

BOOL static _Error.~= infix(_:_:)()
{
  swift_getErrorValue();
  v0 = sub_23041CAE8();
  v2 = v1;
  if (v0 == sub_23041B808() && v2 == v3)
  {

    goto LABEL_8;
  }

  v5 = sub_23041C808();

  result = 0;
  if (v5)
  {
LABEL_8:
    v7 = sub_23041B828();
    swift_getErrorValue();
    return v7 == sub_23041CAD8();
  }

  return result;
}

{
  return static _Error.~= infix(_:_:)();
}

uint64_t Error<>.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE28](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    v24 = v8;
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506B8);
    v15 = a5;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    v17 = inited + 32;
    *(inited + 40) = v18;
    *(inited + 48) = v14;
    v8 = v24;
    *(inited + 56) = a3;
    v19 = sub_2303D08F8(inited);
    a5 = v15;
    swift_setDeallocating();
    sub_2303BA754(v17, &qword_27DB506C0);
  }

  else
  {
    v19 = sub_2303D08F8(MEMORY[0x277D84F90]);
  }

  (*(v9 + 16))(v12, v8, a4);
  v20 = sub_230417E90(v19);

  v21 = sub_2303B9D74(MEMORY[0x277D84F90]);
  Error<>.init(_:userInfo:defaultUserInfo:)(v12, v20, v21, a4, a5);
  return (*(v9 + 8))(v8, a4);
}

unint64_t sub_230417E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
    v2 = sub_23041C428();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2303BA68C(&v22, v24);
        sub_2303BA68C(v24, v25);
        sub_2303BA68C(v25, &v23);
        result = sub_2303BA5F0(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_2303BA68C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2303BA68C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_2304181D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _HandlerBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _Error<>.recoveryOptions.getter()
{
  v0 = sub_23041B818();
  v1 = sub_23041BDD8();
  if (!*(v0 + 16))
  {

    goto LABEL_6;
  }

  v3 = sub_2303BA5F0(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_6:

    return MEMORY[0x277D84F90];
  }

  sub_2303BAEC8(*(v0 + 56) + 32 * v3, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FED0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t _Error<>.attemptRecovery(optionIndex:resultHandler:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE28](a1);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23041B818();
  v14 = sub_23041BDD8();
  if (!*(v13 + 16))
  {

LABEL_9:
    v27 = sub_23041B8E8();
    return a2(v27 & 1);
  }

  v38 = v10;
  v39 = a1;
  v16 = sub_2303BA5F0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_2303BAEC8(*(v13 + 56) + 32 * v16, v43);

  __swift_project_boxed_opaque_existential_0(v43, v44);
  v19 = sub_23041C7F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  if (([v19 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v20 = type metadata accessor for _HandlerBox();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC7MercuryP33_2B1830E49151A2D290BADAC81D16B73411_HandlerBox_handler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v42.receiver = v21;
  v42.super_class = v20;
  swift_unknownObjectRetain();

  v23 = objc_msgSendSuper2(&v42, sel_init);
  v24 = v38;
  (*(v38 + 16))(v12, v5, a4);
  v25 = sub_23041C7D8();
  if (v25)
  {
    v26 = v25;
    (*(v24 + 8))(v12, a4);
  }

  else
  {
    v26 = swift_allocError();
    (*(v24 + 32))(v29, v12, a4);
  }

  v44 = v20;
  v43[0] = v23;
  v30 = v23;
  v31 = sub_23041B928();
  sub_23041A084(v43, v40);
  v32 = v41;
  if (v41)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v34 = *(v32 - 8);
    MEMORY[0x28223BE28](v33);
    v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v36);
    v37 = sub_23041C7F8();
    (*(v34 + 8))(v36, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v37 = 0;
  }

  [v19 attemptRecoveryFromError:v31 optionIndex:v39 delegate:v37 didRecoverSelector:sel_invoke:: contextInfo:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  return sub_2303BA754(v43, &qword_27DB50620);
}

id _Error<>.attemptRecovery(optionIndex:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23041B818();
  v10 = sub_23041BDD8();
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v12 = sub_2303BA5F0(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_2303BAEC8(*(v9 + 56) + 32 * v12, v22);

  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v15 = sub_23041C7F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (([v15 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v6 + 16))(v8, v3, a2);
  swift_unknownObjectRetain();
  v16 = sub_23041C7D8();
  if (v16)
  {
    v17 = v16;
    (*(v6 + 8))(v8, a2);
  }

  else
  {
    v17 = swift_allocError();
    (*(v6 + 32))(v19, v8, a2);
  }

  v20 = sub_23041B928();
  v21 = [v15 attemptRecoveryFromError:v20 optionIndex:a1];
  swift_unknownObjectRelease_n();

  return v21;
}

uint64_t sub_230418A48(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE28](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506E8);
  v36 = a2;
  result = sub_23041C418();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_230412758(v24, v7, type metadata accessor for XPCSideChannel.ChannelIdentifier);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_2304126F0(v24, v7, type metadata accessor for XPCSideChannel.ChannelIdentifier);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_23041CB48();
      sub_23041BAA8();
      sub_2304127C0();
      sub_23041BD48();
      result = sub_23041CB78();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_230412758(v7, *(v10 + 48) + v23 * v18, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_230418DE8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for RemoteDevice.Identity();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE28](v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE28);
  v39 = a2;
  result = sub_23041C418();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    v17 = v40;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v37 + 72);
      v24 = *(v7 + 48) + v23 * v22;
      if (v39)
      {
        sub_230412758(v24, v17, type metadata accessor for RemoteDevice.Identity);
        v25 = *(*(v7 + 56) + 8 * v22);
      }

      else
      {
        sub_2304126F0(v24, v17, type metadata accessor for RemoteDevice.Identity);
        v25 = *(*(v7 + 56) + 8 * v22);
      }

      sub_23041CB48();
      sub_23041BAA8();
      sub_2304127C0();
      sub_23041BD48();
      sub_23041BE78();
      result = sub_23041CB78();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v40;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v40;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_230412758(v17, *(v9 + 48) + v23 * v18, type metadata accessor for RemoteDevice.Identity);
      *(*(v9 + 56) + 8 * v18) = v25;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v11, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_23041919C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504E8);
  result = sub_23041C418();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_2303BE65C(v21, v30);
      }

      else
      {
        sub_2303D8244(v21, v30);
      }

      sub_23041CB48();
      MEMORY[0x2319161D0](v20);
      result = sub_23041CB78();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2303BE65C(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23041943C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506E0);
  v37 = a2;
  result = sub_23041C418();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v38 = *(v21 + 16 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_23041CB48();
      sub_2303D8838();
      sub_23041BD48();
      result = sub_23041CB78();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      v16[3] = v26;
      *(*(v7 + 56) + 16 * v15) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_230419718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
  v2 = *v0;
  v3 = sub_23041C408();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2303BAEC8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2303BA68C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2304198BC()
{
  v1 = v0;
  v2 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE28](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506E8);
  v4 = *v0;
  v5 = sub_23041C408();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_2304126F0(*(v4 + 48) + v21, v27, type metadata accessor for XPCSideChannel.ChannelIdentifier);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_230412758(v20, *(v29 + 48) + v21, type metadata accessor for XPCSideChannel.ChannelIdentifier);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_230419B08()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteDevice.Identity();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE28](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE28);
  v4 = *v0;
  v5 = sub_23041C408();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_2304126F0(*(v4 + 48) + v21, v27, type metadata accessor for RemoteDevice.Identity);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_230412758(v20, *(v29 + 48) + v21, type metadata accessor for RemoteDevice.Identity);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_230419D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB504E8);
  v2 = *v0;
  v3 = sub_23041C408();
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
        sub_2303D8244(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2303BE65C(v19, *(v4 + 56) + 40 * v17);
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

void *sub_230419ED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506E0);
  v2 = *v0;
  v3 = sub_23041C408();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v20;
        *(*(v4 + 56) + v17) = v23;
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

uint64_t sub_23041A084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DecodingError.keyNotFoundError<A>(expecting:in:debugDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a3[3] = AssociatedTypeWitness;
  a3[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a1, AssociatedTypeWitness);
  sub_23041C8A8();
  if (!a2)
  {
    sub_23041C288();

    v8 = sub_23041CBD8();
    MEMORY[0x231915500](v8);

    MEMORY[0x231915500](46, 0xE100000000000000);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB506F0);

  sub_23041C308();
  v9 = *MEMORY[0x277D84158];
  v10 = sub_23041C328();
  v11 = *(*(v10 - 8) + 104);

  return v11(a3, v9, v10);
}

uint64_t static DecodingError.typeMismatchError<A>(expecting:butFound:forKey:in:debugDescription:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  sub_23041C8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a3, AssociatedTypeWitness);
  sub_23041B3F8(inited);
  *a5 = a1;
  if (!a4)
  {
    sub_23041C288();

    v12 = sub_23041CC18();
    MEMORY[0x231915500](v12);

    MEMORY[0x231915500](0x756F662074756220, 0xED0000206120646ELL);
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    swift_getDynamicType();
    v13 = sub_23041CC18();
    MEMORY[0x231915500](v13);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v14 = *MEMORY[0x277D84160];
  v15 = sub_23041C328();
  return (*(*(v15 - 8) + 104))(a5, v14, v15);
}

uint64_t static DecodingError.valueNotFoundError(expectingValueOfType:atCodingPath:debugDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  if (!a2)
  {
    sub_23041C288();

    v4 = sub_23041CC18();
    MEMORY[0x231915500](v4);

    MEMORY[0x231915500](0x746F672074756220, 0xED00002E6C696E20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v5 = *MEMORY[0x277D84170];
  v6 = sub_23041C328();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t static DecodingError.valueNotFoundError(expectingValueOfType:in:debugDescription:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_23041C5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v15 = sub_23041C5E8();
  v9 = sub_23041C5C8();
  MEMORY[0x231915500](v9);

  *(inited + 56) = &type metadata for CodableIndexKey;
  *(inited + 64) = sub_2303D2CFC();
  v10 = swift_allocObject();
  *(inited + 32) = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v15;
  *(v10 + 40) = 0;
  sub_23041B3F8(inited);
  *a4 = a1;
  if (!a3)
  {
    sub_23041C288();

    v11 = sub_23041CC18();
    MEMORY[0x231915500](v11);

    MEMORY[0x231915500](0x746F672074756220, 0xED00002E6C696E20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v12 = *MEMORY[0x277D84170];
  v13 = sub_23041C328();
  return (*(*(v13 - 8) + 104))(a4, v12, v13);
}

{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_23041C818();
  *a4 = a1;
  if (!a3)
  {
    sub_23041C288();

    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x746F672074756220, 0xED00002E6C696E20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v8 = *MEMORY[0x277D84170];
  v9 = sub_23041C328();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t static DecodingError.typeMismatchError(expecting:butFound:in:debugDescription:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  sub_23041C5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v18 = sub_23041C5E8();
  v10 = sub_23041C5C8();
  MEMORY[0x231915500](v10);

  *(inited + 56) = &type metadata for CodableIndexKey;
  *(inited + 64) = sub_2303D2CFC();
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v18;
  *(v11 + 40) = 0;
  sub_23041B3F8(inited);
  *a5 = a1;
  if (!a4)
  {
    sub_23041C288();

    v12 = sub_23041CC18();
    MEMORY[0x231915500](v12);

    MEMORY[0x231915500](0x756F662074756220, 0xED0000206120646ELL);
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    swift_getDynamicType();
    v13 = sub_23041CC18();
    MEMORY[0x231915500](v13);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v14 = *MEMORY[0x277D84160];
  v15 = sub_23041C328();
  return (*(*(v15 - 8) + 104))(a5, v14, v15);
}

{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  sub_23041C818();
  *a5 = a1;
  if (!a4)
  {
    sub_23041C288();

    v9 = sub_23041CC18();
    MEMORY[0x231915500](v9);

    MEMORY[0x231915500](0x756F662074756220, 0xED0000206120646ELL);
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    swift_getDynamicType();
    v10 = sub_23041CC18();
    MEMORY[0x231915500](v10);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v11 = *MEMORY[0x277D84160];
  v12 = sub_23041C328();
  v13 = *(*(v12 - 8) + 104);

  return v13(a5, v11, v12);
}

uint64_t static DecodingError.typeMismatchError(expecting:butFound:atCodingPath:debugDescription:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  *a4 = a1;
  if (!a3)
  {
    sub_23041C288();

    v6 = sub_23041CC18();
    MEMORY[0x231915500](v6);

    MEMORY[0x231915500](0x756F662074756220, 0xED0000206120646ELL);
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v8 = *MEMORY[0x277D84160];
  v9 = sub_23041C328();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t static DecodingError.valueNotFoundError<A>(expectingValueOfType:forKey:in:debugDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  sub_23041C8A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a2, AssociatedTypeWitness);
  sub_23041B3F8(inited);
  *a4 = a1;
  if (!a3)
  {
    sub_23041C288();

    v11 = sub_23041CC18();
    MEMORY[0x231915500](v11);

    MEMORY[0x231915500](0x746F672074756220, 0xED00002E6C696E20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);

  sub_23041C308();
  v12 = *MEMORY[0x277D84170];
  v13 = sub_23041C328();
  return (*(*(v13 - 8) + 104))(a4, v12, v13);
}

void *sub_23041B3F8(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_230406090(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50530);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23041B500(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2304060B4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23041B5F4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_2304061D0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}
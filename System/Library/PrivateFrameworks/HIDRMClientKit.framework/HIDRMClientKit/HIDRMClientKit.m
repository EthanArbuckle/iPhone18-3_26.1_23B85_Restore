uint64_t sub_250944258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_250944290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2509442D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_250944318()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25094435C()
{
  v0 = sub_25094B054();
  __swift_allocate_value_buffer(v0, qword_27F3DF7D8);
  __swift_project_value_buffer(v0, qword_27F3DF7D8);
  return sub_25094B044();
}

uint64_t sub_2509443DC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2509444C0()
{
  sub_25094B304();
  MEMORY[0x253063B80](v0);
  return sub_25094B334();
}

uint64_t sub_250944550()
{
  sub_25094B304();
  v1 = *v0;
  sub_250944494();
  return sub_25094B334();
}

HIDRMClientKit::HIDRMClient::HIDRMClientDevice::State_optional __swiftcall HIDRMClient.HIDRMClientDevice.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25094B2C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HIDRMClient.HIDRMClientDevice.State.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69766F72707041;
  v3 = 0x6465696E6544;
  v4 = 0x6576697463616E49;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465776F6C6C41;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2509446AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69766F72707041;
  v4 = a1;
  if (a1 <= 1u)
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

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x6465696E6544;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6576697463616E49;
    }

    else
    {
      v5 = 0x6E776F6E6B6E55;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6544;
  v9 = 0xE800000000000000;
  v10 = 0x6576697463616E49;
  if (a2 != 3)
  {
    v10 = 0x6E776F6E6B6E55;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6465776F6C6C41;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25094B2D4();
  }

  return v13 & 1;
}

uint64_t sub_250944828()
{
  v1 = *v0;
  sub_25094B304();
  sub_25094B0B4();

  return sub_25094B334();
}

uint64_t sub_25094490C()
{
  *v0;
  *v0;
  *v0;
  sub_25094B0B4();
}

uint64_t sub_2509449DC()
{
  v1 = *v0;
  sub_25094B304();
  sub_25094B0B4();

  return sub_25094B334();
}

void sub_250944AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69766F72707041;
  v5 = 0xE600000000000000;
  v6 = 0x6465696E6544;
  v7 = 0xE800000000000000;
  v8 = 0x6576697463616E49;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E55;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465776F6C6C41;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_250944B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25094A758();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_250944BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A758();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_250944C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A704();
  v5 = sub_25094A758();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_250944CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A704();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t HIDRMClient.HIDRMClientDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HIDRMClient.HIDRMClientDevice.hash.getter()
{
  v1 = *(v0 + 24);
  v2 = sub_25094B084();
  v3 = [v1 propertyForKey_];

  if (v3)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_25094AA28(v8, &qword_27F3DF190, &qword_25094B7F0);
  }

  return 0;
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

void *sub_250944F7C@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  result = HIDRMClient.HIDRMClientDevice.state.getter(&v6);
  *a2 = v6;
  return result;
}

void HIDRMClient.HIDRMClientDevice.state.setter(_BYTE *a1)
{
  v2 = *(v1 + 24);
  *a1;
  *a1;
  v3 = sub_25094B084();

  v4 = sub_25094B084();
  [v2 setProperty:v3 forKey:v4];
}

void (*HIDRMClient.HIDRMClientDevice.state.modify(void *a1))(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  *a1 = *(v1 + 3);
  HIDRMClient.HIDRMClientDevice.state.getter(a1 + 1);
  return sub_25094519C;
}

void sub_25094519C(uint64_t a1)
{
  *(a1 + 8);
  v1 = *a1;
  v3 = sub_25094B084();

  v2 = sub_25094B084();
  [v1 setProperty:v3 forKey:v2];
}

uint64_t sub_2509452D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = sub_25094B084();
  v5 = [v3 propertyForKey_];

  if (v5)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v6 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    sub_25094AA28(&v16, &qword_27F3DF190, &qword_25094B7F0);
  }

  v6 = 0xEE006E6F69747069;
  v7 = 0x7263736564206F4ELL;
LABEL_9:
  v8 = sub_25094B084();
  v9 = [v3 propertyForKey_];

  if (v9)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    result = sub_25094AA28(&v16, &qword_27F3DF190, &qword_25094B7F0);
    goto LABEL_16;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = v12;
LABEL_17:
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v3;
  return result;
}

Swift::Void __swiftcall HIDRMClient.HIDRMClientDevice.approve()()
{
  v1 = *(v0 + 24);
  sub_25094AF04(0, &qword_27F3DF198, 0x277CCABB0);
  v2 = sub_25094B1C4();
  v3 = sub_25094B084();
  [v1 setProperty:v2 forKey:v3];
}

Swift::Void __swiftcall HIDRMClient.HIDRMClientDevice.revoke()()
{
  v1 = *(v0 + 24);
  sub_25094AF04(0, &qword_27F3DF198, 0x277CCABB0);
  v2 = sub_25094B1C4();
  v3 = sub_25094B084();
  [v1 setProperty:v2 forKey:v3];
}

uint64_t HIDRMClient.HIDRMClientDevice.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v1);
  return sub_25094B334();
}

uint64_t sub_25094568C()
{
  v1 = *(v0 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v1);
  return sub_25094B334();
}

uint64_t sub_250945700()
{
  v1 = *(v0 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v1);
  return sub_25094B334();
}

void *sub_250945758()
{
  sub_250946DE0();
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_250948194(*(v1 + 16), 0);
  v4 = sub_250949DC8(&v6, v3 + 4, v2, v1);

  sub_250949F40();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t HIDRMClient.__allocating_init()()
{
  v0 = swift_allocObject();
  HIDRMClient.init()();
  return v0;
}

uint64_t HIDRMClient.init()()
{
  v11 = sub_25094B1A4();
  v1 = *(v11 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_25094B194() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_25094B074() - 8) + 64);
  MEMORY[0x28223BE20]();
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84FA0];
  *(v0 + 112) = MEMORY[0x277D84FA0];
  *(v0 + 120) = v7;
  *(v0 + 128) = 0;
  v8 = sub_25094AF04(0, &qword_28151D570, 0x277D85C78);
  v10[0] = "HIDRMDeviceRevoke";
  v10[1] = v8;
  sub_25094B064();
  v12 = MEMORY[0x277D84F90];
  sub_250949F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1A0, &qword_25094B7F8);
  sub_25094A0C4(qword_28151D580, &qword_27F3DF1A0, &qword_25094B7F8);
  sub_25094B1F4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11);
  *(v0 + 136) = sub_25094B1B4();
  *(v0 + 144) = 0;
  return v0;
}

uint64_t sub_250945AC8(uint64_t *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v3 = *(v40 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v39 = v34 - v5;
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  swift_beginAccess();
  result = sub_250945E7C(v6, v7, v9, v8, *(v1 + 112));
  if ((result & 1) == 0)
  {
    swift_beginAccess();

    v11 = v8;
    v12 = v1;
    v37 = v7;
    v35 = v11;
    sub_250948218(v47, v6, v7, v9, v11);
    v13 = v48;
    swift_endAccess();

    swift_beginAccess();
    v14 = *(v12 + 120);
    v38 = v6;
    v36 = v9;
    if ((v14 & 0xC000000000000001) != 0)
    {

      sub_25094B224();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      sub_25094A618();
      result = sub_25094B154();
      v14 = v47[0];
      v15 = v47[1];
      v16 = v47[2];
      v17 = v48;
      v18 = v49;
    }

    else
    {
      v19 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(v14 + 56);

      v17 = 0;
    }

    v34[1] = v16;
    v22 = (v16 + 64) >> 6;
    v23 = (v3 + 8);
    if (v14 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v24 = v17;
      v25 = v18;
      v26 = v17;
      if (!v18)
      {
        break;
      }

LABEL_13:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (!v28)
      {
        return sub_250949F40();
      }

      while (1)
      {
        v30 = *(*v28 + 88);
        v42 = v38;
        v43 = v37;
        v31 = v35;
        v44 = v36;
        v45 = v35;
        v46 = 0;

        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        v33 = v39;
        sub_25094B134();

        result = (*v23)(v33, v40);
        v17 = v26;
        v18 = v27;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v29 = sub_25094B254();
        if (v29)
        {
          v41 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v28 = v42;
          v26 = v17;
          v27 = v18;
          if (v42)
          {
            continue;
          }
        }

        return sub_250949F40();
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        return sub_250949F40();
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_250945E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v7 = *(a5 + 40);
  sub_25094B304();
  MEMORY[0x253063B90](a3);
  v8 = sub_25094B334();
  v9 = -1 << *(a5 + 32);
  v10 = v8 & ~v9;
  if (((*(a5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  do
  {
    v12 = *(*(a5 + 48) + 32 * v10 + 16);
    result = v12 == a3;
    if (v12 == a3)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
  }

  while (((*(a5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  return result;
}

void sub_250945F4C(uint64_t a1)
{
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v43 = *(v46 - 8);
  v2 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v45 = &v40 - v3;
  swift_beginAccess();
  v44 = v1;
  v4 = *(v1 + 112);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + 112);

  v10 = 0;
  if (!v7)
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 56 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = (*(v4 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v7)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    sub_25094AF04(0, &qword_27F3DF1D8, 0x277D82BB8);

    v17 = v16;
    v18 = sub_25094B1D4();

    if (v18)
    {
      break;
    }

    v7 &= v7 - 1;

    v10 = v11;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v19 = v44;
  swift_beginAccess();
  sub_2509496F4(v15, &v54);
  swift_endAccess();

  v47 = v55;
  if (v55)
  {
    v40 = v54;
    v42 = v56;
    v41 = v57;
    swift_beginAccess();
    v20 = *(v19 + 120);
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (v20 < 0)
      {
        v21 = *(v19 + 120);
      }

      v22 = *(v19 + 120);

      sub_25094B224();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      sub_25094A618();
      sub_25094B154();
      v20 = v54;
      v23 = v55;
      v24 = v56;
      v25 = v57;
      v26 = v58;
    }

    else
    {
      v27 = -1 << *(v20 + 32);
      v23 = v20 + 56;
      v24 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v26 = v29 & *(v20 + 56);

      v25 = 0;
    }

    v44 = v24;
    v30 = (v24 + 64) >> 6;
    v31 = (v43 + 8);
    if (v20 < 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v32 = v25;
      v33 = v26;
      v34 = v25;
      if (!v26)
      {
        break;
      }

LABEL_27:
      v35 = (v33 - 1) & v33;
      v36 = *(*(v20 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

      if (!v36)
      {
LABEL_33:
        sub_250949F40();
        sub_25094A67C(v40, v47, v42, v41);
        return;
      }

      while (1)
      {
        v38 = *(*v36 + 88);
        v49 = v40;
        v50 = v47;
        v51 = v42;
        v52 = v41;
        v53 = 64;
        sub_25094A6C0(v40, v47, v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        v39 = v45;
        sub_25094B134();

        (*v31)(v39, v46);
        v25 = v34;
        v26 = v35;
        if ((v20 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_29:
        v37 = sub_25094B254();
        if (v37)
        {
          v48 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v36 = v49;
          v34 = v25;
          v35 = v26;
          if (v49)
          {
            continue;
          }
        }

        goto LABEL_33;
      }
    }

    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v30)
      {
        goto LABEL_33;
      }

      v33 = *(v23 + 8 * v34);
      ++v32;
      if (v33)
      {
        goto LABEL_27;
      }
    }

LABEL_35:
    __break(1u);
  }
}

void sub_250946410(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8) - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20]();
  v9 = v66 - v8;
  if (!a1)
  {
    return;
  }

  v77 = v7;
  v78 = a1;
  if ([a2 type] != 1 || (v10 = objc_msgSend(a2, sel_integerValueForField_, 65537), objc_msgSend(a2, sel_integerValueForField_, 0x10000) != 65280) || v10 != 91)
  {
    v14 = v78;

    return;
  }

  if (!IOCFUnserialize([a2 dataValueForField_], 0, 0, 0))
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_13:
    v12 = 0;
    v84 = 0u;
    v85 = 0u;
LABEL_14:
    sub_25094AA28(&v84, &qword_27F3DF190, &qword_25094B7F0);
    if (qword_27F3DF240 != -1)
    {
      swift_once();
    }

    v15 = sub_25094B054();
    __swift_project_value_buffer(v15, qword_27F3DF7D8);
    v16 = sub_25094B034();
    v17 = sub_25094B184();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_250943000, v16, v17, "properties", v18, 2u);
      MEMORY[0x253063F50](v18, -1, -1);
    }

    return;
  }

  *&v79 = 0xD000000000000010;
  *(&v79 + 1) = 0x800000025094BC60;
  v12 = v11;
  v13 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v13)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0u;
    v79 = 0u;
  }

  v84 = v79;
  v85 = v80;
  if (!*(&v80 + 1))
  {
    goto LABEL_14;
  }

  v75 = v2;
  v70 = v5;
  sub_25094AA28(&v84, &qword_27F3DF190, &qword_25094B7F0);
  v78 = v78;
  sub_2509452D0(v78, &v84);
  v19 = v84;
  v21 = *(&v85 + 1);
  v20 = v85;
  v22 = HIDRMClient.HIDRMClientDevice.hash.getter();
  v74 = v12;
  v71 = 0x800000025094BC60;
  if (v22 || v23 != 0xE000000000000000)
  {
    v24 = sub_25094B2D4();

    if ((v24 & 1) == 0)
    {
      v25 = v75;
      swift_beginAccess();
      if (!sub_250945E7C(v19, *(&v19 + 1), v20, v21, *(v25 + 112)))
      {
        v84 = v19;
        *&v85 = v20;
        *(&v85 + 1) = v21;
        sub_250945AC8(&v84);
      }
    }
  }

  else
  {
  }

  v72 = v21;
  v73 = *(&v19 + 1);
  v26 = v75;
  swift_beginAccess();
  v27 = *(v26 + 112);
  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  v32 = (v29 + 63) >> 6;
  v76 = v27;

  for (i = 0; v31; i = v34)
  {
    v34 = i;
LABEL_34:
    v35 = (*(v76 + 48) + ((v34 << 11) | (32 * __clz(__rbit64(v31)))));
    v36 = *v35;
    v37 = v35[1];
    v39 = v35[2];
    v38 = v35[3];
    sub_25094AF04(0, &qword_27F3DF1D8, 0x277D82BB8);

    v20 = v38;
    v40 = sub_25094B1D4();

    if (v40)
    {
      v69 = v39;
      v68 = v36;
      v41 = v75;
      swift_beginAccess();
      v42 = *(v41 + 120);
      if ((v42 & 0xC000000000000001) != 0)
      {
        if (v42 < 0)
        {
          v43 = *(v41 + 120);
        }

        sub_25094B224();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
        sub_25094A618();
        sub_25094B154();
        v45 = *(&v84 + 1);
        v44 = v84;
        v47 = *(&v85 + 1);
        v46 = v85;
        v48 = v86;
      }

      else
      {
        v49 = -1 << *(v42 + 32);
        v45 = v42 + 56;
        v46 = ~v49;
        v50 = -v49;
        if (v50 < 64)
        {
          v51 = ~(-1 << v50);
        }

        else
        {
          v51 = -1;
        }

        v48 = v51 & *(v42 + 56);

        v47 = 0;
      }

      v52 = v37;
      v66[1] = v46;
      v53 = (v46 + 64) >> 6;
      ++v70;
      v54 = v44;
      v75 = v45;
      for (j = v53; ; v53 = j)
      {
        if (v44 < 0)
        {
          v62 = sub_25094B254();
          if (!v62)
          {
            goto LABEL_66;
          }

          *&v82 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v61 = v79;
          v60 = v48;
        }

        else
        {
          v58 = v47;
          v59 = v48;
          if (!v48)
          {
            while (1)
            {
              v47 = v58 + 1;
              if (__OFADD__(v58, 1))
              {
                break;
              }

              if (v47 >= v53)
              {
                goto LABEL_66;
              }

              v59 = *(v45 + 8 * v47);
              ++v58;
              if (v59)
              {
                goto LABEL_57;
              }
            }

            __break(1u);
            return;
          }

LABEL_57:
          v60 = (v59 - 1) & v59;
          v61 = *(*(v44 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v59)))));
        }

        if (!v61)
        {
          goto LABEL_66;
        }

        v63 = v20;
        v64 = sub_25094B084();
        v65 = [v63 propertyForKey_];

        if (v65)
        {
          sub_25094B1E4();
          swift_unknownObjectRelease();
        }

        else
        {
          v82 = 0u;
          v83 = 0u;
        }

        v80 = v83;
        v79 = v82;
        if (*(&v83 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
          sub_25094AA28(&v79, &qword_27F3DF190, &qword_25094B7F0);
        }

        v55 = sub_25094B2C4();

        v56 = v55 | 0x80;
        if (v55 >= 5)
        {
          v56 = -124;
        }

        v57 = *(*v61 + 88);
        *&v79 = v68;
        *(&v79 + 1) = v52;
        *&v80 = v69;
        *(&v80 + 1) = v20;
        v81 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        sub_25094B134();

        (*v70)(v9, v77);
        v48 = v60;
        v44 = v54;
        v45 = v75;
      }
    }

    v31 &= v31 - 1;
  }

  while (1)
  {
    v34 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      return;
    }

    v31 = *(v28 + 8 * v34);
    ++i;
    if (v31)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_66:

  sub_250949F40();
}

void sub_250946DE0()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D0EEF0]) initWithType_];
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF228, &qword_25094BC40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25094B7D0;
    v5 = MEMORY[0x277D837D0];
    *(v4 + 32) = 0x726F70736E617254;
    *(v4 + 40) = 0xE900000000000074;
    *(v4 + 88) = v5;
    *(v4 + 56) = v5;
    *(v4 + 64) = 4346709;
    *(v4 + 72) = 0xE300000000000000;
    if (!*MEMORY[0x277CD2888])
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *(v4 + 96) = sub_25094B094();
    *(v4 + 104) = v6;
    *(v4 + 152) = v5;
    *(v4 + 120) = v5;
    *(v4 + 128) = 42;
    *(v4 + 136) = 0xE100000000000000;
    sub_25094AF04(0, &qword_27F3DF230, 0x277CBEAC0);
    v7 = sub_25094B164();
    v8 = *(v1 + 128);
    if (!v8)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v8 setMatching_];
    v9 = *(v1 + 128);
    if (!v9)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    [v9 setDispatchQueue_];
    v10 = *(v1 + 128);
    if (!v10)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v43 = v7;
    v11 = v10;
    v12 = sub_25094B0D4();
    v13 = sub_25094B084();
    [v11 setProperty:v12 forKey:v13];

    v14 = *(v1 + 128);
    if (!v14)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v53 = sub_25094AE04;
    v54 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_2509474BC;
    *(&v52 + 1) = &block_descriptor;
    v15 = _Block_copy(&aBlock);

    v16 = v14;

    [v16 setServiceNotificationHandler_];
    _Block_release(v15);

    v17 = *(v1 + 128);
    if (!v17)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v53 = sub_25094AF00;
    v54 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_250947524;
    *(&v52 + 1) = &block_descriptor_51;
    v18 = _Block_copy(&aBlock);

    v19 = v17;

    [v19 setEventHandler_];
    _Block_release(v18);

    v20 = *(v1 + 128);
    if (!v20)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = [v20 services];
    sub_25094AF04(0, &qword_27F3DF238, 0x277CD2860);
    v22 = sub_25094B0E4();

    v23 = v22;
    if (v22 >> 62)
    {
      v40 = sub_25094B234();
      v23 = v22;
      v24 = v40;
      if (v40)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_11:
        if (v24 >= 1)
        {
          v45 = v23 & 0xC000000000000001;
          v25 = v23;
          swift_beginAccess();
          v26 = v25;
          v27 = 0;
          v44 = &v52;
          v46 = v24;
          v28 = v25;
          while (1)
          {
            v32 = v45 ? MEMORY[0x253063B10](v27, v26) : *(v26 + 8 * v27 + 32);
            v33 = v32;
            sub_2509452D0(v33, &aBlock);
            v34 = aBlock;
            v35 = v52;
            v36 = sub_25094B084();
            v37 = [*(&v35 + 1) propertyForKey_];

            if (v37)
            {
              sub_25094B1E4();
              swift_unknownObjectRelease();
            }

            else
            {
              v49 = 0u;
              v50 = 0u;
            }

            aBlock = v49;
            v52 = v50;
            if (!*(&v50 + 1))
            {
              break;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_26;
            }

            v38 = v48;
            if (v47)
            {
              goto LABEL_28;
            }

LABEL_27:
            if (v38 != 0xE000000000000000)
            {
LABEL_28:
              v39 = sub_25094B2D4();

              if ((v39 & 1) == 0 && !sub_250945E7C(v34, *(&v34 + 1), v35, *(&v35 + 1), *(v1 + 112)))
              {
                aBlock = v34;
                v52 = v35;
                sub_250945AC8(&aBlock);
              }

              goto LABEL_14;
            }

LABEL_14:
            ++v27;
            v29 = swift_allocObject();
            *(v29 + 16) = v1;
            *(v29 + 24) = v33;
            v53 = sub_25094AFF0;
            v54 = v29;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v52 = sub_250947478;
            *(&v52 + 1) = &block_descriptor_57;
            v30 = _Block_copy(&aBlock);

            v31 = v33;

            [v31 setRemovalHandler_];
            _Block_release(v30);

            v26 = v28;
            if (v46 == v27)
            {
              goto LABEL_32;
            }
          }

          sub_25094AA28(&aBlock, &qword_27F3DF190, &qword_25094B7F0);
LABEL_26:
          v38 = 0xE000000000000000;
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_32:

    v41 = *(v1 + 128);
    if (!v41)
    {
LABEL_43:
      __break(1u);
      return;
    }

    v42 = v41;
    [v42 activate];

    *(v1 + 144) = 1;
  }
}

uint64_t sub_250947478(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2509474BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_250947524(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, v7);
}

uint64_t sub_2509475A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1A8, &qword_25094B800);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v6 - v3;
  sub_250946DE0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  return sub_25094B144();
}

uint64_t sub_2509476B4(uint64_t a1, uint64_t a2)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v4 = *(v35 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v34 - v11;
  (*(v9 + 16))(&v34 - v11, a1, v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + *(*v16 + 88), v12, v8);
  swift_beginAccess();

  sub_250948380(v41, v16);
  swift_endAccess();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;

  v34 = v8;
  sub_25094B124();
  swift_beginAccess();
  v19 = *(a2 + 112);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 56);
  v23 = (v20 + 63) >> 6;
  v24 = (v4 + 8);

  for (i = 0; v22; result = (*v24)(v7, v35))
  {
    v27 = i;
LABEL_9:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = (*(v19 + 48) + ((v27 << 11) | (32 * v28)));
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v36 = *v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = 0;

    v33 = v32;
    sub_25094B134();
  }

  while (1)
  {
    v27 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
    }

    v22 = *(v19 + 56 + 8 * v27);
    ++i;
    if (v22)
    {
      i = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_250947A30(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  v7 = sub_25094B114();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_250947D00(0, 0, v6, &unk_25094BC08, v8);
}

uint64_t sub_250947B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_250947B6C, 0, 0);
}

uint64_t sub_250947B6C()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_250947C30, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_250947C30()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  swift_beginAccess();
  sub_250949810(v2);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_250947CD8, 0, 0);
}

uint64_t sub_250947D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_25094A9B8(a3, v26 - v10);
  v12 = sub_25094B114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25094AA28(v11, &qword_27F3DF208, &qword_25094BBF8);
  }

  else
  {
    sub_25094B104();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25094B0F4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25094B0A4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF210, &qword_25094BC20);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_25094AA28(a3, &qword_27F3DF208, &qword_25094BBF8);

      return v23;
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

  sub_25094AA28(a3, &qword_27F3DF208, &qword_25094BBF8);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF210, &qword_25094BC20);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_250948004()
{
  if (qword_27F3DF240 != -1)
  {
    swift_once();
  }

  v0 = sub_25094B054();
  __swift_project_value_buffer(v0, qword_27F3DF7D8);
  oslog = sub_25094B034();
  v1 = sub_25094B174();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_250943000, oslog, v1, "HIDRMClient revokeAllDevices called; currently a noop", v2, 2u);
    MEMORY[0x253063F50](v2, -1, -1);
  }
}

uint64_t HIDRMClient.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HIDRMClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_250948194(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF220, &qword_25094BC38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_250948218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_25094B304();
  MEMORY[0x253063B90](a4);
  v13 = sub_25094B334();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (*(*(v11 + 48) + 32 * v15 + 16) != a4)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = (*(v11 + 48) + 32 * v15);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;

    v25 = v24;
    return 0;
  }

  else
  {
LABEL_5:
    v17 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;

    v19 = a5;
    sub_250948CFC(a2, a3, a4, v19, v15, isUniquelyReferenced_nonNull_native);
    *v5 = v26;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = v19;
    return 1;
  }
}

uint64_t sub_250948380(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_25094B244();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_25094B234();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_250948590(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_250948A08(v19 + 1);
    }

    sub_250948C58(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_25094B304();
  MEMORY[0x253063B80](a2);
  v11 = sub_25094B334();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_250948E70(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_250948590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
    v2 = sub_25094B294();
    v16 = v2;
    sub_25094B224();
    for (; sub_25094B254(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_250948A08(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_25094B304();
      MEMORY[0x253063B80]();
      result = sub_25094B334();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25094879C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  result = sub_25094B284();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v34 = v19[3];
      v23 = *(v6 + 40);
      sub_25094B304();
      MEMORY[0x253063B90](v22);
      result = sub_25094B334();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v21;
      v15[1] = v20;
      v3 = v33;
      v15[2] = v22;
      v15[3] = v34;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_250948A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  result = sub_25094B284();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_25094B304();
      MEMORY[0x253063B80](v18);
      result = sub_25094B334();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_250948C58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_25094B304();
  MEMORY[0x253063B80](a1);
  sub_25094B334();
  v5 = -1 << *(a2 + 32);
  result = sub_25094B214();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_250948CFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_25094879C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      v13 = a5;
      result = sub_250948FC8();
      a5 = v13;
      goto LABEL_12;
    }

    sub_250949280(v11 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_25094B304();
  MEMORY[0x253063B90](a3);
  result = sub_25094B334();
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    while (*(*(v14 + 48) + 32 * a5 + 16) != a3)
    {
      a5 = (a5 + 1) & v17;
      if (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v19 = (*(v18 + 48) + 32 * a5);
  *v19 = v10;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25094B2F4();
  __break(1u);
  return result;
}

uint64_t sub_250948E70(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_250948A08(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_250949130();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2509494CC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_25094B304();
  MEMORY[0x253063B80](v4);
  result = sub_25094B334();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
  result = sub_25094B2F4();
  __break(1u);
  return result;
}

id sub_250948FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  v2 = *v0;
  v3 = sub_25094B274();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_250949130()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  v2 = *v0;
  v3 = sub_25094B274();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_250949280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  result = sub_25094B284();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = v19[1];
      v33 = *v19;
      v22 = v19[2];
      v21 = v19[3];
      v23 = *(v6 + 40);
      sub_25094B304();
      MEMORY[0x253063B90](v22);
      result = sub_25094B334();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v33;
      v15[1] = v20;
      v15[2] = v22;
      v15[3] = v21;
      ++*(v6 + 16);

      result = v21;
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2509494CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  result = sub_25094B284();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_25094B304();
      MEMORY[0x253063B80](v17);
      result = sub_25094B334();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2509496F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25094B304();
  MEMORY[0x253063B90](a1);
  result = sub_25094B334();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 32 * v9 + 16) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v18 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_250948FC8();
      v13 = v18;
    }

    v14 = *(v13 + 48) + 32 * v9;
    v15 = *v14;
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    *a2 = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v16;
    result = sub_250949A74(v9);
    *v2 = v18;
  }

  else
  {
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_250949810(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_25094B264();

    if (v6)
    {
      v7 = sub_250949980(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_25094B304();
  MEMORY[0x253063B80](a1);
  v10 = sub_25094B334();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (*(*(v3 + 48) + 8 * v12) != a1)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_250949130();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v12);
  sub_250949C20(v12);
  result = v17;
  *v1 = v18;
  return result;
}

uint64_t sub_250949980(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_25094B234();
  v6 = swift_unknownObjectRetain();
  v7 = sub_250948590(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  sub_25094B304();
  MEMORY[0x253063B80](a2);
  v9 = sub_25094B334();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (v7 == a2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_250949C20(v12);
  *v2 = v16;
  return v7;
}

unint64_t sub_250949A74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25094B204();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = *(*(v3 + 48) + 32 * v6 + 16);
        sub_25094B304();
        MEMORY[0x253063B90](v13);
        v14 = sub_25094B334() & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 32 * v2);
          v17 = (v15 + 32 * v6);
          if (v2 != v6 || v16 >= v17 + 2)
          {
            v11 = v17[1];
            *v16 = *v17;
            v16[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_250949C20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25094B204();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_25094B304();
        MEMORY[0x253063B80](v12);
        v13 = sub_25094B334() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_250949DC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        v25 = v21;
        goto LABEL_23;
      }

      v11 += 4;

      v22 = v21;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_250949F48()
{
  result = qword_28151D578;
  if (!qword_28151D578)
  {
    sub_25094B194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151D578);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25094A02C()
{
  result = qword_27F3DF1B0;
  if (!qword_27F3DF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1B0);
  }

  return result;
}

uint64_t sub_25094A0C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25094A110()
{
  result = qword_27F3DF1C8;
  if (!qword_27F3DF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1C8);
  }

  return result;
}

uint64_t sub_25094A168(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
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

uint64_t sub_25094A300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 33))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25094A354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
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

uint64_t sub_25094A3F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25094A438(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HIDRMClient.HIDRMClientDevice.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDRMClient.HIDRMClientDevice.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25094A618()
{
  result = qword_27F3DF7D0;
  if (!qword_27F3DF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3DF1E0, &qword_25094BBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF7D0);
  }

  return result;
}

void sub_25094A67C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_25094A6C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    v4 = a4;
  }
}

unint64_t sub_25094A704()
{
  result = qword_27F3DF1F8;
  if (!qword_27F3DF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1F8);
  }

  return result;
}

unint64_t sub_25094A758()
{
  result = qword_27F3DF200;
  if (!qword_27F3DF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF200);
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

uint64_t sub_25094A818(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25094A8C4;

  return sub_250947B48(a1, v6, v7, v5, v4);
}

uint64_t sub_25094A8C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25094A9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25094AA28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25094AA88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25094AB7C;

  return v6(v2 + 32);
}

uint64_t sub_25094AB7C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25094AC90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25094AFF4;

  return sub_25094AA88(a1, v5);
}

uint64_t sub_25094AD48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25094A8C4;

  return sub_25094AA88(a1, v5);
}

void sub_25094AE04(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v6[4] = sub_25094AF8C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_250947478;
  v6[3] = &block_descriptor_63;
  v4 = _Block_copy(v6);

  v5 = a1;

  [v5 setRemovalHandler_];
  _Block_release(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25094AF04(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25094AF8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_250945F4C(v1);
}
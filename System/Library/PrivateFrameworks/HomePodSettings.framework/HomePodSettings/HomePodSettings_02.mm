Swift::Void __swiftcall BetaEnrollment.StateChangeResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
  OUTLINED_FUNCTION_97();
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
  OUTLINED_FUNCTION_97();
  v7 = *(v1 + v6);
  v8 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  OUTLINED_FUNCTION_97();
  v10 = *(v1 + v9);
  v11 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = (v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID);
  OUTLINED_FUNCTION_97();
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    v14 = OUTLINED_FUNCTION_6_4();
    [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
  }
}

uint64_t BetaEnrollment.StateChangeResponse.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_2542E576C(a1, v24);
  if (!v25)
  {
    sub_2542E1050(v24);
    return 0;
  }

  if (swift_dynamicCast())
  {
    if (v23 == v1)
    {

      return 1;
    }

    v4 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
    OUTLINED_FUNCTION_97();
    LODWORD(v4) = v1[v4];
    v5 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
    OUTLINED_FUNCTION_97();
    if (v4 != v23[v5])
    {
      goto LABEL_6;
    }

    v6 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
    OUTLINED_FUNCTION_97();
    LODWORD(v6) = v2[v6];
    v7 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
    OUTLINED_FUNCTION_97();
    if (v6 != v23[v7])
    {
      goto LABEL_6;
    }

    v9 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
    OUTLINED_FUNCTION_97();
    v10 = *&v2[v9];
    v11 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
    OUTLINED_FUNCTION_97();
    v12 = *&v23[v11];
    if (v10)
    {
      if (v12)
      {
        sub_2542F464C();
        v13 = v12;
        v14 = v10;
        v15 = sub_2543A30B8();

        if (v15)
        {
LABEL_17:
          v16 = &v2[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID];
          OUTLINED_FUNCTION_97();
          v17 = *v16;
          v18 = v16[8];
          v19 = &v23[OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID];
          OUTLINED_FUNCTION_97();
          v20 = *v19;
          v21 = v19[8];

          if (v18)
          {
            if ((v21 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v17 == v20)
            {
              v22 = v21;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }

    else if (!v12)
    {
      goto LABEL_17;
    }

LABEL_6:
  }

  return 0;
}

uint64_t sub_2542F3E28(unsigned __int8 a1, char a2)
{
  v2 = 7955819;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7955819;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = 1651336557;
      goto LABEL_6;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 1684956531;
LABEL_6:
      v5 = v6 | 0x4449726500000000;
      break;
    case 4:
      v5 = 0x4B74736575716572;
      v3 = 0xEA00000000007965;
      break;
    case 5:
      v5 = 0x65736E6F70736572;
      v3 = 0xEB0000000079654BLL;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 1651336557;
      goto LABEL_13;
    case 3:
      v7 = 0xE800000000000000;
      v8 = 1684956531;
LABEL_13:
      v2 = v8 | 0x4449726500000000;
      break;
    case 4:
      v2 = 0x4B74736575716572;
      v7 = 0xEA00000000007965;
      break;
    case 5:
      v2 = 0x65736E6F70736572;
      v7 = 0xEB0000000079654BLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2543A3608();
  }

  return v10 & 1;
}

uint64_t sub_2542F4010(uint64_t a1, uint64_t a2)
{
  v3 = (sub_2542F7A6C)();
  v5 = v4;
  if (v3 == sub_2542F7A6C(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2543A3608();
  }

  return v8 & 1;
}

uint64_t sub_2542F4094(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0x656C626176694CLL;
  v9 = 0xE700000000000000;
  v10 = 0x656C626176694CLL;
  switch(a2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v10 = 0xD000000000000013;
      v9 = 0x80000002543B80C0;
      break;
    case 2uLL:
      v9 = 0xE800000000000000;
      v10 = 0x656C626174736554;
      break;
    case 3uLL:
      v9 = 0xE800000000000000;
      v10 = 0x6465747365746E55;
      break;
    default:
      v10 = a1;
      v9 = a2;
      break;
  }

  v11 = 0xE700000000000000;
  switch(a4)
  {
    case 0uLL:
      break;
    case 1uLL:
      v8 = 0xD000000000000013;
      v11 = 0x80000002543B80C0;
      break;
    case 2uLL:
      v11 = 0xE800000000000000;
      v8 = 0x656C626174736554;
      break;
    case 3uLL:
      v11 = 0xE800000000000000;
      v8 = 0x6465747365746E55;
      break;
    default:
      v8 = a3;
      v11 = a4;
      break;
  }

  if (v10 == v8 && v9 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2543A3608();
  }

  sub_2542F46E4(a1, a2);
  sub_2542F46E4(a3, a4);

  return v13 & 1;
}

uint64_t BetaEnrollment.StateChangeResponse.description.getter()
{
  v1 = v0;
  v2 = 1701736270;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001ELL, 0x80000002543B7FF0);
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_state;
  OUTLINED_FUNCTION_97();
  v18 = *(v1 + v3);
  sub_2543A3358();
  MEMORY[0x259C093D0](0x6563637553202D0ALL, 0xEC000000203A7373);
  v4 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_success;
  OUTLINED_FUNCTION_97();
  if (*(v1 + v4))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE400000000000000;
  if (*(v1 + v4))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v5, v7);

  MEMORY[0x259C093D0](0x726F727245202D0ALL, 0xEA0000000000203ALL);
  v8 = OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_error;
  OUTLINED_FUNCTION_97();
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = [v9 localizedDescription];
    v11 = sub_2543A2878();
    v6 = v12;
  }

  else
  {
    v11 = 1701736270;
  }

  MEMORY[0x259C093D0](v11, v6);

  MEMORY[0x259C093D0](0xD000000000000018, 0x80000002543B8010);
  v13 = (v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeResponse_enrollProgramID);
  OUTLINED_FUNCTION_97();
  if (v13[1])
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v17 = *v13;
    v2 = sub_2543A35A8();
    v14 = v15;
  }

  MEMORY[0x259C093D0](v2, v14);

  return 0;
}

id BetaEnrollment.StateChangeResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.StateChangeResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2542F464C()
{
  result = qword_27F5DFD40;
  if (!qword_27F5DFD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DFD40);
  }

  return result;
}

uint64_t sub_2542F46E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    return sub_2543A2768();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_2543A2858();
}

uint64_t HPAlarmError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_2542F47EC()
{
  result = qword_27F5DFD48;
  if (!qword_27F5DFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD48);
  }

  return result;
}

unint64_t sub_2542F4844()
{
  result = qword_27F5DFD50;
  if (!qword_27F5DFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPAlarmError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542F4974);
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

id BetaEnrollment.StateUpdatedResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.StateUpdatedResponse.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2542F4A4C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t BetaEnrollment.StateUpdatedResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_2542E1050(v4);
  }

  return 0;
}

id BetaEnrollment.StateUpdatedResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2542F4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v5 = MEMORY[0x277D84F90];
  v4[5] = a4;
  v4[6] = v5;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

uint64_t sub_2542F4C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2542F4FFC(a3, &v13, &unk_27F5DFA00, &unk_2543A76C0);
  if (!*(&v14[0] + 1))
  {
    return sub_2542F5064(&v13, &unk_27F5DFA00, &unk_2543A76C0);
  }

  sub_2542F50C4(&v13, v15);
  *&v13 = a1;
  *(&v13 + 1) = a2;
  sub_2542D62F0(v15, v14);
  swift_beginAccess();
  sub_2543A2768();
  sub_254395F8C();
  v7 = *(*(v4 + 48) + 16);
  sub_254396000(v7);
  v8 = *(v4 + 48);
  *(v8 + 16) = v7 + 1;
  v9 = (v8 + 48 * v7);
  v10 = v13;
  v11 = v14[1];
  v9[3] = v14[0];
  v9[4] = v11;
  v9[2] = v10;
  *(v4 + 48) = v8;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_2542F4D58()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[6];
  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = v0;
    v21 = MEMORY[0x277D84F90];
    sub_2543A2768();
    sub_2542F1568();
    v4 = v21;
    v5 = v2 + 32;
    do
    {
      sub_2542F4FFC(v5, v20, &qword_27F5DFC80, &unk_2543B4A10);
      MEMORY[0x259C093D0](v20[0], v20[1]);
      MEMORY[0x259C093D0](8250, 0xE200000000000000);
      sub_2543A3358();
      sub_2542F5064(v20, &qword_27F5DFC80, &unk_2543B4A10);
      v21 = v4;
      v6 = *(v4 + 16);
      if (v6 >= *(v4 + 24) >> 1)
      {
        sub_2542F1568();
        v4 = v21;
      }

      *(v4 + 16) = v6 + 1;
      v7 = v4 + 16 * v6;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      v5 += 48;
      --v3;
    }

    while (v3);

    v20[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    sub_2542F16FC();
    v8 = sub_2543A2818();
    v10 = v9;

    v11 = v0[3];
    v12 = (v19[2])(v8, v10);
  }

  else
  {
    v13 = v0[2];
    v14 = v0[3];
    v16 = v1[4];
    v15 = v1[5];
    sub_2543A2768();
    v12 = v13(v16, v15);
  }

  v17 = v12;

  return v17;
}

void *sub_2542F4F74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_2542F4FA4()
{
  sub_2542F4F74();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2542F4FFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2542F5064(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_2542F50C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static CarrySettings.LivabilitySoftwareUpdateAudiences.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_2542F5168(*a1, *a2) & 1) == 0 || (sub_2542F5430(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_5_1();

  return sub_2542F5430(v6, v7);
}

uint64_t sub_2542F5168(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v28 = *(result + 16);
  v29 = a2 + 32;
  v26 = result + 32;
  while (v3 != v2)
  {
    v5 = (v4 + 40 * v3);
    v6 = *v5;
    v7 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[4];
    v11 = (v29 + 40 * v3);
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[4];
    if (v6 != *v11 || v7 != v11[1])
    {
      v27 = v3;
      v16 = v4;
      v17 = v8;
      v18 = sub_2543A3608();
      v8 = v17;
      v4 = v16;
      v3 = v27;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    v19 = v9 == v13 && v8 == v12;
    if (!v19 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }

    v20 = *(v10 + 16);
    if (v20 != *(v14 + 16))
    {
      return 0;
    }

    if (v20)
    {
      v21 = v10 == v14;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      result = sub_2543A2768();
      v22 = 0;
      v23 = v20 - 1;
      v24 = 32;
      while (v22 < *(v10 + 16))
      {
        memcpy(__dst, (v10 + v24), 0x8AuLL);
        result = memcpy(v32, (v10 + v24), 0x8AuLL);
        if (v22 >= *(v14 + 16))
        {
          goto LABEL_35;
        }

        memcpy(v34, (v14 + v24), 0x8AuLL);
        memcpy(__src, (v14 + v24), sizeof(__src));
        v25 = static CarrySettings.LivabilityAudience.== infix(_:_:)(v32);
        memcpy(v35, __src, 0x8AuLL);
        sub_2542F9388(__dst, v30);
        sub_2542F9388(v34, v30);
        sub_2542F93C0(v35);
        memcpy(v36, v32, 0x8AuLL);
        result = sub_2542F93C0(v36);
        if ((v25 & 1) == 0)
        {

          return 0;
        }

        if (v23 == v22)
        {

          v4 = v26;
          goto LABEL_28;
        }

        v24 += 144;
        ++v22;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_28:
    ++v3;
    result = 1;
    v2 = v28;
    if (v3 == v28)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2542F5430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 144)
    {
      memcpy(__dst, v3, 0x8AuLL);
      memcpy(v9, v3, 0x8AuLL);
      memcpy(v11, i, 0x8AuLL);
      memcpy(__src, i, sizeof(__src));
      v5 = static CarrySettings.LivabilityAudience.== infix(_:_:)(v9);
      memcpy(v12, __src, 0x8AuLL);
      sub_2542F9388(__dst, v7);
      sub_2542F9388(v11, v7);
      sub_2542F93C0(v12);
      memcpy(v13, v9, 0x8AuLL);
      sub_2542F93C0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 144;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2542F5540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_2543A3608() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_2543A3608() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2542F560C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2543A31D8())
  {
    if (a2 >> 62)
    {
      result = sub_2543A31D8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for BetaProgram();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C09DA0](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x259C09DA0](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_2543A30B8();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2542F57CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6475416E69617274 && a2 == 0xEE007365636E6569;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000002543B81A0 == a2;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x75416E4F6576696CLL && a2 == 0xEF7365636E656964)
    {

      return 2;
    }

    else
    {
      v8 = sub_2543A3608();

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

uint64_t sub_2542F58F4(char a1)
{
  if (!a1)
  {
    return 0x6475416E69617274;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x75416E4F6576696CLL;
}

uint64_t sub_2542F5970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F57CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F5998(uint64_t a1)
{
  v2 = sub_2542F5BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F59D4(uint64_t a1)
{
  v2 = sub_2542F5BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void CarrySettings.LivabilitySoftwareUpdateAudiences.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD58, &qword_2543A81E0);
  OUTLINED_FUNCTION_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_3();
  v10 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v12 = sub_2542F5BCC();
  sub_2543A2768();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD68, &qword_2543A81E8);
  sub_2542F5C20();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_4_5();
  sub_2543A3578();

  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F5CF8();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3578();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3578();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_2542F5BCC()
{
  result = qword_27F5DFD60;
  if (!qword_27F5DFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD60);
  }

  return result;
}

unint64_t sub_2542F5C20()
{
  result = qword_27F5DFD70;
  if (!qword_27F5DFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD68, &qword_2543A81E8);
    sub_2542F5CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD70);
  }

  return result;
}

unint64_t sub_2542F5CA4()
{
  result = qword_27F5DFD78;
  if (!qword_27F5DFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD78);
  }

  return result;
}

unint64_t sub_2542F5CF8()
{
  result = qword_27F5DFD88;
  if (!qword_27F5DFD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F5D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD88);
  }

  return result;
}

unint64_t sub_2542F5D7C()
{
  result = qword_27F5DFD90;
  if (!qword_27F5DFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFD90);
  }

  return result;
}

uint64_t CarrySettings.LivabilitySoftwareUpdateAudiences.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_2542F8CCC(a1, v2);
  v5 = OUTLINED_FUNCTION_46();
  sub_2542F8C1C(v5, v6);
  v7 = OUTLINED_FUNCTION_5_1();

  return sub_2542F8C1C(v7, v8);
}

uint64_t CarrySettings.LivabilitySoftwareUpdateAudiences.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_24_0();
  sub_2542F8CCC(v5, v1);
  sub_2542F8C1C(v5, v2);
  sub_2542F8C1C(v5, v3);
  return sub_2543A3728();
}

void CarrySettings.LivabilitySoftwareUpdateAudiences.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16_1();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD98, &qword_2543A81F8);
  OUTLINED_FUNCTION_3(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_23_1();
  sub_2542F5BCC();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3768();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD68, &qword_2543A81E8);
    sub_2542F8E20();
    OUTLINED_FUNCTION_6_5();
    sub_2543A34D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F8EF8();
    OUTLINED_FUNCTION_6_5();
    sub_2543A34D8();
    sub_2543A34D8();
    v19 = *(v15 + 8);
    v20 = OUTLINED_FUNCTION_61_0();
    v21(v20);
    MEMORY[0] = a10;
    MEMORY[8] = a10;
    MEMORY[0x10] = a10;
    sub_2543A2768();
    sub_2543A2768();
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F6128()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2543A36E8();
  sub_2542F8CCC(v5, v1);
  sub_2542F8C1C(v5, v2);
  sub_2542F8C1C(v5, v3);
  return sub_2543A3728();
}

uint64_t CarrySettings.LivabilityTrainAudiences.trainName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityTrainAudiences.platform.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t static CarrySettings.LivabilityTrainAudiences.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (!v10 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v11 = v4 == v7 && v6 == v8;
  if (!v11 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_5_1();

  return sub_2542F5430(v12, v13);
}

uint64_t sub_2542F62A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E69617274 && a2 == 0xE900000000000065;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65636E6569647561 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_2543A3608();

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

uint64_t sub_2542F63C0(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x259C0A1D0](a1);
  return sub_2543A3728();
}

uint64_t sub_2542F6400(char a1)
{
  if (!a1)
  {
    return 0x6D614E6E69617274;
  }

  if (a1 == 1)
  {
    return 0x6D726F6674616C70;
  }

  return 0x65636E6569647561;
}

uint64_t sub_2542F6480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F62A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F64A8(uint64_t a1)
{
  v2 = sub_2542F8FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F64E4(uint64_t a1)
{
  v2 = sub_2542F8FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CarrySettings.LivabilityTrainAudiences.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDC0, &qword_2543A8200);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_3();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_2542F8FD0();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  OUTLINED_FUNCTION_25_1();
  sub_2543A3548();
  if (!v1)
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F5CF8();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3578();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityTrainAudiences.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2543A28C8();
  OUTLINED_FUNCTION_46();
  sub_2543A28C8();
  v6 = OUTLINED_FUNCTION_5_1();

  return sub_2542F8C1C(v6, v7);
}

uint64_t CarrySettings.LivabilityTrainAudiences.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_24_0();
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2542F8C1C(v7, v5);
  return sub_2543A3728();
}

void CarrySettings.LivabilityTrainAudiences.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDD0, &qword_2543A8208);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_23_1();
  sub_2542F8FD0();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3768();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v9 = sub_2543A34A8();
    v16 = v10;
    OUTLINED_FUNCTION_26_0();
    v14 = sub_2543A34A8();
    v15 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F8EF8();
    sub_2543A34D8();
    v12 = OUTLINED_FUNCTION_8_3();
    v13(v12, v5);
    *v4 = v9;
    v4[1] = v16;
    v4[2] = v14;
    v4[3] = v15;
    v4[4] = v17;
    sub_2543A2768();
    sub_2543A2768();
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F6A04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2543A36E8();
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2542F8C1C(v7, v5);
  return sub_2543A3728();
}

uint64_t CarrySettings.LivabilityAudience.purposeName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.pallasAudienceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.pallasAudienceName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.osrAudienceID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.bridgeOSCatalog.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.backgroundCatalog.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.platform.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.profileURL.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

double CarrySettings.LivabilityAudience.type.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_2543A1DF8();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  *&v20 = *v1;
  *(&v20 + 1) = v11;
  OUTLINED_FUNCTION_17_2();
  v19[2] = v12;
  v19[3] = v13;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_2542F9024();
  OUTLINED_FUNCTION_28_0();
  *&v20 = sub_2543A3138();
  *(&v20 + 1) = v14;
  sub_2543A1DE8();
  v15 = sub_2543A3128();
  v17 = v16;
  (*(v6 + 8))(v10, v3);

  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(v15, v17, &v20);
  result = *&v20;
  *a1 = v20;
  return result;
}

double CarrySettings.LivabilityAudience.AudienceType.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_2543A1DF8();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = a1;
  *(&v24 + 1) = a2;
  OUTLINED_FUNCTION_17_2();
  v23[2] = v14;
  v23[3] = v15;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_2542F9024();
  OUTLINED_FUNCTION_28_0();
  v16 = sub_2543A3138();
  v18 = v17;

  *&v24 = v16;
  *(&v24 + 1) = v18;
  sub_2543A1DE8();
  v19 = sub_2543A3128();
  v21 = v20;
  (*(v9 + 8))(v13, v6);

  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(v19, v21, &v24);
  result = *&v24;
  *a3 = v24;
  return result;
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.permalink.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2543A2768();
  return OUTLINED_FUNCTION_5_1();
}

uint64_t static CarrySettings.LivabilityAudience.DeviceFamily.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_2543A3608(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_1();

      return sub_2543A3608();
    }
  }

  return result;
}

uint64_t sub_2542F6FE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696C616D726570 && a2 == 0xE90000000000006BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_2542F70E4(char a1)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a1 & 1);
  return sub_2543A3728();
}

uint64_t sub_2542F712C(char a1)
{
  if (a1)
  {
    return 0x6E696C616D726570;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2542F7184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F6FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F71AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F70B4();
  *a1 = result;
  return result;
}

uint64_t sub_2542F71D4(uint64_t a1)
{
  v2 = sub_2542F9078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F7210(uint64_t a1)
{
  v2 = sub_2542F9078();

  return MEMORY[0x2821FE720](a1, v2);
}

void CarrySettings.LivabilityAudience.DeviceFamily.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDE0, &qword_2543A8210);
  OUTLINED_FUNCTION_3(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_3();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_2542F9078();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4_5();
  sub_2543A3548();
  if (!v1)
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3548();
  }

  (*(v15 + 8))(v2, v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2543A28C8();
  OUTLINED_FUNCTION_46();

  return sub_2543A28C8();
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_24_0();
  sub_2543A28C8();
  sub_2543A28C8();
  return sub_2543A3728();
}

void CarrySettings.LivabilityAudience.DeviceFamily.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDF0, &qword_2543A8218);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_23_1();
  sub_2542F9078();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3768();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v11 = sub_2543A34A8();
    v13 = v12;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_6_5();
    v14 = sub_2543A34A8();
    v16 = v15;
    v17 = *(v7 + 8);
    v20 = v14;
    v18 = OUTLINED_FUNCTION_61_0();
    v19(v18);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v20;
    v4[3] = v16;
    sub_2543A2768();
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F7608()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2543A36E8();
  sub_2543A28C8();
  sub_2543A28C8();
  return sub_2543A3728();
}

uint64_t CarrySettings.LivabilityAudience.identifier.getter()
{
  if (v0[7])
  {
    v1 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
    sub_2543A2768();
  }

  sub_2543A2768();
  return OUTLINED_FUNCTION_46();
}

uint64_t CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = &unk_286644C20;
  v6 = 4;
  while (1)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = 0xE700000000000000;
    v10 = 0x656C626176694CLL;
    switch(*v5)
    {
      case 0uLL:
        break;
      case 1uLL:
        v10 = 0xD000000000000013;
        v9 = 0x80000002543B80C0;
        break;
      case 2uLL:
        v9 = 0xE800000000000000;
        v10 = 0x656C626174736554;
        break;
      case 3uLL:
        v9 = 0xE800000000000000;
        v10 = 0x6465747365746E55;
        break;
      default:
        v10 = *(v5 - 1);
        v9 = *v5;
        break;
    }

    if (v10 == a1 && v9 == a2)
    {
      break;
    }

    v12 = sub_2543A3608();
    v13 = OUTLINED_FUNCTION_76();
    sub_2542F46E4(v13, v14);
    v15 = OUTLINED_FUNCTION_76();
    sub_2542F46E4(v15, v16);

    if (v12)
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_76();
    result = sub_2542F90CC(v17, v18);
    v5 += 2;
    if (!--v6)
    {
      v7 = a1;
      v8 = a2;
      goto LABEL_16;
    }
  }

  v20 = OUTLINED_FUNCTION_76();
  sub_2542F46E4(v20, v21);
  v22 = OUTLINED_FUNCTION_76();
  sub_2542F46E4(v22, v23);

LABEL_15:

LABEL_16:
  *a3 = v7;
  a3[1] = v8;
  return result;
}

unint64_t sub_2542F7870()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x656C626176694CLL;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0xD000000000000013;
      break;
    case 2uLL:
      v3 = 0x656C626174736554;
      break;
    case 3uLL:
      v3 = 0x6465747365746E55;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_2542F46E4(v1, v2);
  return v3;
}

unint64_t CarrySettings.LivabilityAudience.AudienceType.permalink.getter()
{
  result = 0x6E656D6D6F636572;
  switch(*(v0 + 8))
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x656C626174736574;
      break;
    case 3:
      result = 0x6465747365746E75;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_2542F7A14()
{
  v0 = sub_2543A3438();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2542F7A70(char a1)
{
  result = 0x4E65736F70727570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x656964754172736FLL;
      break;
    case 4:
      result = 0x534F656764697262;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6146656369766564;
      break;
    case 7:
      result = 0x6D726F6674616C70;
      break;
    case 8:
      result = 0x55656C69666F7270;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6576697463417369;
      break;
    default:
      return result;
  }

  return result;
}

double sub_2542F7C08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(*a1, *(a1 + 8), &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2542F7C48@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.LivabilityAudience.AudienceType.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2542F7CA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2542F7A14();
  *a2 = result;
  return result;
}

unint64_t sub_2542F7CD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2542F7A70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2542F7D20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F7A60();
  *a1 = result;
  return result;
}

uint64_t sub_2542F7D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F7A64();
  *a1 = result;
  return result;
}

uint64_t sub_2542F7D70(uint64_t a1)
{
  v2 = sub_2542F90E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F7DAC(uint64_t a1)
{
  v2 = sub_2542F90E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static CarrySettings.LivabilityAudience.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v44 = *(v3 + 48);
  v8 = *(v3 + 56);
  v41 = *(v3 + 64);
  v46 = *(v3 + 72);
  v37 = *(v3 + 80);
  v47 = *(v3 + 88);
  v38 = *(v3 + 96);
  v31 = *(v3 + 104);
  v35 = *(v3 + 112);
  v28 = *(v3 + 120);
  v33 = *(v3 + 128);
  v30 = *(v3 + 136);
  v27 = *(v3 + 137);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 56);
  v43 = *(v2 + 48);
  v40 = *(v2 + 64);
  v45 = *(v2 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v36 = *(v2 + 80);
  v42 = *(v2 + 88);
  v39 = *(v2 + 96);
  v48 = *(v2 + 104);
  v34 = *(v2 + 112);
  v49 = *(v2 + 120);
  v32 = *(v2 + 128);
  v29 = *(v2 + 136);
  v26 = *(v2 + 137);
  if (!v14 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v15 = v4 == v10 && v6 == v9;
  if (!v15 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v12)
    {
      return 0;
    }

    v16 = v5 == v11 && v7 == v12;
    if (!v16 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v17 = v44 == v43 && v8 == v13;
    if (!v17 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v46)
  {
    v19 = v48;
    v18 = v49;
    v20 = v47;
    if (!v45)
    {
      return 0;
    }

    v21 = v41 == v40 && v46 == v45;
    if (!v21 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = v48;
    v18 = v49;
    v20 = v47;
    if (v45)
    {
      return 0;
    }
  }

  if (v20)
  {
    if (!v42)
    {
      return 0;
    }

    v22 = v37 == v36 && v20 == v42;
    if (!v22 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (v38)
  {
    if (!v39 || (sub_2542F5540(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if (v35)
  {
    if (!v34)
    {
      return 0;
    }

    v23 = v31 == v19 && v35 == v34;
    if (!v23 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (!v33)
  {
    if (!v32)
    {
      goto LABEL_70;
    }

    return 0;
  }

  if (!v32)
  {
    return 0;
  }

  v24 = v28 == v18 && v33 == v32;
  if (!v24 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  if (v30 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }

LABEL_75:
    if (v27 == 2)
    {
      if (v26 != 2)
      {
        return 0;
      }
    }

    else if (v26 == 2 || ((v26 ^ v27) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v29 != 2 && ((v29 ^ v30) & 1) == 0)
  {
    goto LABEL_75;
  }

  return result;
}

void CarrySettings.LivabilityAudience.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDF8, &qword_2543A8220);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_3();
  v11 = *v0;
  v12 = v0[1];
  v29 = v0[3];
  v30 = v0[2];
  v27 = v0[5];
  v28 = v0[4];
  v25 = v0[7];
  v26 = v0[6];
  v23 = v0[8];
  v24 = v0[9];
  v21 = v0[10];
  v22 = v0[11];
  v19 = v0[14];
  v20 = v0[12];
  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[13];
  v14 = *(v0 + 137);
  v15 = *(v0 + 136);
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_2542F90E0();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  sub_2543A3548();
  if (!v1)
  {
    OUTLINED_FUNCTION_14_2(1);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3548();
    OUTLINED_FUNCTION_14_2(2);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(3);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(4);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(5);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F9134();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3538();
    OUTLINED_FUNCTION_14_2(7);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(8);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3528();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3528();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityAudience.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[7];
  v11 = v2[9];
  v16 = v2[6];
  v17 = v2[8];
  v12 = v2[11];
  v18 = v2[10];
  v19 = v2[13];
  v13 = v2[14];
  v20 = v2[15];
  v22 = v2[12];
  v23 = v2[16];
  v14 = *(v2 + 136);
  v21 = *(v2 + 137);
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2543A3708();
  if (v8)
  {
    sub_2543A28C8();
  }

  sub_2543A3708();
  if (v10)
  {
    sub_2543A28C8();
  }

  if (v11)
  {
    sub_2543A3708();
    sub_2543A28C8();
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2543A3708();
    if (v12)
    {
LABEL_7:
      sub_2543A3708();
      sub_2543A28C8();
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  sub_2543A3708();
  if (v22)
  {
LABEL_8:
    sub_2543A3708();
    sub_2542F920C(a1, v22);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_14:
    sub_2543A3708();
    if (v23)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_13:
  sub_2543A3708();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  sub_2543A3708();
  sub_2543A28C8();
  if (v23)
  {
LABEL_10:
    sub_2543A3708();
    sub_2543A28C8();
    goto LABEL_16;
  }

LABEL_15:
  sub_2543A3708();
LABEL_16:
  if (v14 != 2)
  {
    sub_2543A3708();
  }

  sub_2543A3708();
  if (v21 != 2)
  {
    sub_2543A3708();
  }

  return sub_2543A3708();
}

uint64_t CarrySettings.LivabilityAudience.hashValue.getter()
{
  OUTLINED_FUNCTION_24_0();
  CarrySettings.LivabilityAudience.hash(into:)(v1);
  return sub_2543A3728();
}

void CarrySettings.LivabilityAudience.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE20, &qword_2543A8230);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_3();
  v10 = v3[3];
  v11 = v3[4];
  v44 = v3;
  v12 = __swift_project_boxed_opaque_existential_0(v3, v10);
  sub_2542F90E0();
  OUTLINED_FUNCTION_21_1();
  sub_2543A3768();
  if (v0)
  {
    OUTLINED_FUNCTION_9_2();
    __swift_destroy_boxed_opaque_existential_0(v44);
    if (v10)
    {

      if ((v5 & 1) == 0)
      {
LABEL_10:
        if (v1)
        {
LABEL_11:

          if ((v12 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v12)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_10;
    }

    if (v1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v13 = v5;
  LOBYTE(v46[0]) = 0;
  OUTLINED_FUNCTION_6_5();
  v14 = sub_2543A34A8();
  v43 = v15;
  OUTLINED_FUNCTION_0_9(1);
  v34 = sub_2543A34A8();
  v42 = v16;
  OUTLINED_FUNCTION_0_9(2);
  v33 = sub_2543A3478();
  v41 = v17;
  OUTLINED_FUNCTION_0_9(3);
  v32 = sub_2543A3478();
  v40 = v18;
  OUTLINED_FUNCTION_0_9(4);
  v31 = sub_2543A3478();
  v39 = v19;
  OUTLINED_FUNCTION_0_9(5);
  v30 = sub_2543A3478();
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE08, &qword_2543A8228);
  LOBYTE(v45[0]) = 6;
  sub_2542F92B0();
  OUTLINED_FUNCTION_6_5();
  sub_2543A3498();
  v36 = v46[0];
  OUTLINED_FUNCTION_0_9(7);
  v21 = sub_2543A3478();
  v37 = v22;
  v29 = v21;
  OUTLINED_FUNCTION_0_9(8);
  v28 = sub_2543A3478();
  v35 = v23;
  OUTLINED_FUNCTION_0_9(9);
  v24 = sub_2543A3488();
  OUTLINED_FUNCTION_6_5();
  v25 = sub_2543A3488();
  v26 = OUTLINED_FUNCTION_8_3();
  v27(v26, v6);
  v45[0] = v14;
  v45[1] = v43;
  v45[2] = v34;
  v45[3] = v42;
  v45[4] = v33;
  v45[5] = v41;
  v45[6] = v32;
  v45[7] = v40;
  v45[8] = v31;
  v45[9] = v39;
  v45[10] = v30;
  v45[11] = v38;
  v45[12] = v36;
  v45[13] = v29;
  v45[14] = v37;
  v45[15] = v28;
  v45[16] = v35;
  LOBYTE(v45[17]) = v24;
  BYTE1(v45[17]) = v25;
  memcpy(v13, v45, 0x8AuLL);
  sub_2542F9388(v45, v46);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v46[0] = v14;
  v46[1] = v43;
  v46[2] = v34;
  v46[3] = v42;
  v46[4] = v33;
  v46[5] = v41;
  v46[6] = v32;
  v46[7] = v40;
  v46[8] = v31;
  v46[9] = v39;
  v46[10] = v30;
  v46[11] = v38;
  v46[12] = v36;
  v46[13] = v29;
  v46[14] = v37;
  v46[15] = v28;
  v46[16] = v35;
  v47 = v24;
  v48 = v25;
  sub_2542F93C0(v46);
LABEL_12:
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F8BDC()
{
  sub_2543A36E8();
  CarrySettings.LivabilityAudience.hash(into:)(v1);
  return sub_2543A3728();
}

uint64_t sub_2542F8C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v7, v6, 0x8AuLL);
      memcpy(__dst, v6, sizeof(__dst));
      sub_2542F9388(v7, v8);
      CarrySettings.LivabilityAudience.hash(into:)(a1);
      memcpy(v8, __dst, 0x8AuLL);
      result = sub_2542F93C0(v8);
      v6 += 144;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2542F8CCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v4);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    do
    {
      v8 = (v7 + 40 * v6);
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A28C8();
      sub_2543A28C8();
      MEMORY[0x259C0A1D0](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v14 - 1;
        for (i = 32; ; i += 144)
        {
          memcpy(__dst, (v13 + i), 0x8AuLL);
          memcpy(__src, (v13 + i), sizeof(__src));
          sub_2542F9388(__dst, v17);
          CarrySettings.LivabilityAudience.hash(into:)(a1);
          memcpy(v19, __src, 0x8AuLL);
          sub_2542F93C0(v19);
          if (!v15)
          {
            break;
          }

          --v15;
        }
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

unint64_t sub_2542F8E20()
{
  result = qword_27F5DFDA0;
  if (!qword_27F5DFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD68, &qword_2543A81E8);
    sub_2542F8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDA0);
  }

  return result;
}

unint64_t sub_2542F8EA4()
{
  result = qword_27F5DFDA8;
  if (!qword_27F5DFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDA8);
  }

  return result;
}

unint64_t sub_2542F8EF8()
{
  result = qword_27F5DFDB0;
  if (!qword_27F5DFDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F8F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDB0);
  }

  return result;
}

unint64_t sub_2542F8F7C()
{
  result = qword_27F5DFDB8;
  if (!qword_27F5DFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDB8);
  }

  return result;
}

unint64_t sub_2542F8FD0()
{
  result = qword_27F5DFDC8;
  if (!qword_27F5DFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDC8);
  }

  return result;
}

unint64_t sub_2542F9024()
{
  result = qword_27F5DFDD8;
  if (!qword_27F5DFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDD8);
  }

  return result;
}

unint64_t sub_2542F9078()
{
  result = qword_27F5DFDE8;
  if (!qword_27F5DFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDE8);
  }

  return result;
}

uint64_t sub_2542F90CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_2542F90E0()
{
  result = qword_27F5DFE00;
  if (!qword_27F5DFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE00);
  }

  return result;
}

unint64_t sub_2542F9134()
{
  result = qword_27F5DFE10;
  if (!qword_27F5DFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F91B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE10);
  }

  return result;
}

unint64_t sub_2542F91B8()
{
  result = qword_27F5DFE18;
  if (!qword_27F5DFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE18);
  }

  return result;
}

uint64_t sub_2542F920C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A28C8();
      sub_2543A28C8();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2542F92B0()
{
  result = qword_27F5DFE28;
  if (!qword_27F5DFE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F9334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE28);
  }

  return result;
}

unint64_t sub_2542F9334()
{
  result = qword_27F5DFE30;
  if (!qword_27F5DFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE30);
  }

  return result;
}

unint64_t sub_2542F93F4()
{
  result = qword_27F5DFE38;
  if (!qword_27F5DFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE38);
  }

  return result;
}

unint64_t sub_2542F944C()
{
  result = qword_27F5DFE40;
  if (!qword_27F5DFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE40);
  }

  return result;
}

unint64_t sub_2542F94A4()
{
  result = qword_27F5DFE48;
  if (!qword_27F5DFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE48);
  }

  return result;
}

unint64_t sub_2542F94FC()
{
  result = qword_27F5DFE50;
  if (!qword_27F5DFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE50);
  }

  return result;
}

unint64_t sub_2542F9554()
{
  result = qword_27F5DFE58;
  if (!qword_27F5DFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE58);
  }

  return result;
}

uint64_t sub_2542F95B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2542F95F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2542F9650(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_2542F9690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_2542F970C(uint64_t a1, int a2)
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

uint64_t sub_2542F974C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O18LivabilityAudienceV0F4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2542F97B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2542F9804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2542F9860(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t _s18LivabilityAudienceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18LivabilityAudienceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x2542F99E0);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BetaEnrollment.Availability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18LivabilityAudienceV12DeviceFamilyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2542F9B6CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2542F9BC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542F9C94);
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

unint64_t sub_2542F9CD0()
{
  result = qword_27F5DFE60;
  if (!qword_27F5DFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE60);
  }

  return result;
}

unint64_t sub_2542F9D28()
{
  result = qword_27F5DFE68;
  if (!qword_27F5DFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE68);
  }

  return result;
}

unint64_t sub_2542F9D80()
{
  result = qword_27F5DFE70;
  if (!qword_27F5DFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE70);
  }

  return result;
}

unint64_t sub_2542F9DD8()
{
  result = qword_27F5DFE78;
  if (!qword_27F5DFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE78);
  }

  return result;
}

unint64_t sub_2542F9E30()
{
  result = qword_27F5DFE80;
  if (!qword_27F5DFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE80);
  }

  return result;
}

unint64_t sub_2542F9E88()
{
  result = qword_27F5DFE88;
  if (!qword_27F5DFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE88);
  }

  return result;
}

unint64_t sub_2542F9EE0()
{
  result = qword_27F5DFE90;
  if (!qword_27F5DFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE90);
  }

  return result;
}

unint64_t sub_2542F9F38()
{
  result = qword_27F5DFE98;
  if (!qword_27F5DFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE98);
  }

  return result;
}

unint64_t sub_2542F9F90()
{
  result = qword_27F5DFEA0;
  if (!qword_27F5DFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEA0);
  }

  return result;
}

unint64_t sub_2542F9FE8()
{
  result = qword_27F5DFEA8;
  if (!qword_27F5DFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEA8);
  }

  return result;
}

unint64_t sub_2542FA040()
{
  result = qword_27F5DFEB0;
  if (!qword_27F5DFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEB0);
  }

  return result;
}

unint64_t sub_2542FA098()
{
  result = qword_27F5DFEB8[0];
  if (!qword_27F5DFEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5DFEB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_2543A36E8();
}

uint64_t sub_2542FA2CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;

  return sub_2543A2768();
}

uint64_t static TransportObservationUpdate<>.updateObservedValue(_:withUpdate:scope:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 8))(a1, AssociatedTypeWitness);
  v5 = *(v7 + 16);

  return v5(a1, a2, AssociatedTypeWitness);
}

uint64_t sub_2542FA3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2542FD940(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02C0, qword_2543A9470);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t static TransportObservationUpdate<>.value(from:targeting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_2542FA4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_2542FA5A0(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2542FA5E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_2542FA650(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return sub_2542F4000(*a1, *a2);
}

uint64_t sub_2542FA694(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_2542F70E4(*v1);
}

uint64_t sub_2542FA6B0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  return sub_2542F70BC(a1, *v2);
}

uint64_t sub_2542FA6EC(uint64_t a1, void *a2)
{
  sub_2543A36E8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  sub_2542F70BC(v12, *v2);
  return sub_2543A3728();
}

uint64_t sub_2542FA744(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_2542FA5A0(*v1);
}

uint64_t sub_2542FA760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_2542FA4DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2542FA7A8(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_2542FA7DC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_2542F70B4();
  *a2 = result;
  return result;
}

uint64_t sub_2542FA818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FA86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FA950(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FA9A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FAA1C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  return sub_2542E135C();
}

uint64_t sub_2542FAA68(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void))
{
  sub_2543A36E8();
  a4(v7, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8]);
  return sub_2543A3728();
}

uint64_t sub_2542FAAE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v11 = a3[8];
  v9 = sub_2542FA5E0(a1, a2);
  return OUTLINED_FUNCTION_25_2(v9);
}

uint64_t sub_2542FAB64(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_24_1(a1, a2);
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[8];
  v7 = v6();
  return OUTLINED_FUNCTION_25_2(v7);
}

uint64_t sub_2542FAB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FABF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void UpdateResult.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v87 = v0;
  v2 = v1;
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v88 = v1[2];
  v89 = v3;
  v90 = v4;
  v91 = v5;
  v9 = v4;
  v85 = v10;
  v86 = v4;
  OUTLINED_FUNCTION_13_4();
  updated = type metadata accessor for UpdateResult.FailureCodingKeys();
  OUTLINED_FUNCTION_6_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v77 = updated;
  v75 = v12;
  v13 = sub_2543A3588();
  v14 = OUTLINED_FUNCTION_3(v13);
  v79 = v15;
  v80 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_0();
  v76 = v19;
  OUTLINED_FUNCTION_0_2();
  v78 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9();
  v74 = v25 - v24;
  v89 = v3;
  v90 = v9;
  v91 = v5;
  OUTLINED_FUNCTION_13_4();
  v26 = type metadata accessor for UpdateResult.UpdateCodingKeys();
  OUTLINED_FUNCTION_10_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v70 = v26;
  v68 = v27;
  v73 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v73);
  v72 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_0();
  v69 = v32;
  OUTLINED_FUNCTION_0_2();
  v71 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9();
  v67 = v38 - v37;
  OUTLINED_FUNCTION_0_2();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9();
  v46 = v45 - v44;
  v83 = v5;
  v84 = v88;
  v89 = v3;
  v81 = v3;
  v82 = v7;
  v90 = v86;
  v91 = v5;
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for UpdateResult.CodingKeys();
  OUTLINED_FUNCTION_9_3();
  swift_getWitnessTable();
  v47 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v47);
  v86 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v51);
  v53 = &v66 - v52;
  v54 = v85[4];
  __swift_project_boxed_opaque_existential_0(v85, v85[3]);
  sub_2543A3778();
  (*(v40 + 16))(v46, v87, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v78;
    v56 = v74;
    v57 = v81;
    (*(v78 + 32))(v74, v46, v81);
    LOBYTE(v88) = 1;
    v58 = v76;
    v59 = v47;
    sub_2543A3508();
    v60 = v80;
    sub_2543A3578();
    (*(v79 + 8))(v58, v60);
    (*(v55 + 8))(v56, v57);
    v47 = v59;
  }

  else
  {
    v61 = v71;
    v62 = v67;
    v63 = v84;
    (*(v71 + 32))(v67, v46, v84);
    LOBYTE(v88) = 0;
    v64 = v69;
    sub_2543A3508();
    v65 = v73;
    sub_2543A3578();
    (*(v72 + 8))(v64, v65);
    (*(v61 + 8))(v62, v63);
  }

  (*(v86 + 8))(v53, v47);
  OUTLINED_FUNCTION_15_3();
}

void UpdateResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v21;
  a20 = v22;
  v121 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a10 = v37;
  v115 = v38;
  *&v124 = v35;
  *(&v124 + 1) = v33;
  *&v125 = v31;
  *(&v125 + 1) = v29;
  v126 = v27;
  v127 = v25;
  v128 = v23;
  updated = type metadata accessor for UpdateResult.FailureCodingKeys();
  OUTLINED_FUNCTION_6_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v112 = updated;
  v111 = v40;
  v104 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v104);
  v103 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0();
  v113 = v45;
  OUTLINED_FUNCTION_16_2();
  v46 = type metadata accessor for UpdateResult.UpdateCodingKeys();
  OUTLINED_FUNCTION_10_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v109 = v46;
  v108 = v47;
  v102 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v102);
  v101 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_0();
  v110 = v52;
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for UpdateResult.CodingKeys();
  OUTLINED_FUNCTION_9_3();
  WitnessTable = swift_getWitnessTable();
  v116 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v116);
  v119 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v56);
  v58 = &v98 - v57;
  v105 = v36;
  *&v124 = v36;
  *(&v124 + 1) = v34;
  v118 = v34;
  v107 = v32;
  *&v125 = v32;
  *(&v125 + 1) = v30;
  v106 = v28;
  v126 = v28;
  v127 = v26;
  v128 = v24;
  v59 = type metadata accessor for UpdateResult();
  v60 = OUTLINED_FUNCTION_3(v59);
  v114 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18_1();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = &v98 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v98 - v68;
  v70 = a10[4];
  __swift_project_boxed_opaque_existential_0(a10, a10[3]);
  v117 = v58;
  v71 = v121;
  sub_2543A3768();
  if (!v71)
  {
    v100 = v36;
    WitnessTable = v67;
    v99 = v69;
    v121 = v59;
    v72 = v117;
    v73 = v116;
    *&v122 = sub_2543A34E8();
    sub_2543A2B38();
    OUTLINED_FUNCTION_11_4();
    swift_getWitnessTable();
    *&v124 = sub_2543A3178();
    *(&v124 + 1) = v74;
    *&v125 = v75;
    *(&v125 + 1) = v76;
    sub_2543A3168();
    OUTLINED_FUNCTION_12_5();
    sub_2543A2F68();
    v77 = v122;
    if (v122 == 2 || (v98 = v124, v122 = v124, v123 = v125, (sub_2543A2F88() & 1) == 0))
    {
      v87 = sub_2543A32E8();
      swift_allocError();
      v89 = v88;
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
      *v89 = v121;
      sub_2543A3468();
      OUTLINED_FUNCTION_27_2();
      (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
      swift_willThrow();
      (*(v119 + 8))(v72, v73);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v77)
      {
        LOBYTE(v122) = 1;
        sub_2543A3458();
        v79 = v114;
        v78 = v115;
        v80 = v104;
        sub_2543A34D8();
        v81 = OUTLINED_FUNCTION_2_7(&a10);
        v82(v81, v80);
        v83 = OUTLINED_FUNCTION_20_2();
        v84(v83);
        OUTLINED_FUNCTION_17_3(&v125);
        swift_unknownObjectRelease();
        v85 = v100;
      }

      else
      {
        LOBYTE(v122) = 0;
        sub_2543A3458();
        v79 = v114;
        v78 = v115;
        v91 = v102;
        sub_2543A34D8();
        v92 = OUTLINED_FUNCTION_2_7(&v129);
        v93(v92, v91);
        v94 = OUTLINED_FUNCTION_20_2();
        v95(v94);
        OUTLINED_FUNCTION_17_3(&v125);
        swift_unknownObjectRelease();
        v85 = WitnessTable;
      }

      v86 = v121;
      swift_storeEnumTagMultiPayload();
      v96 = *(v79 + 32);
      v97 = v99;
      v96(v99, v85, v86);
      v96(v78, v97, v86);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a10);
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542FB8C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465677261746E75 && a2 == 0xEA00000000006465;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746567726174 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_2542FB990(char a1)
{
  if (a1)
  {
    return 0x6465746567726174;
  }

  else
  {
    return 0x7465677261746E75;
  }
}

BOOL sub_2542FBA10(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_2542F4000(*a1, *a2);
}

uint64_t sub_2542FBA28(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2542F70E4(*v1);
}

uint64_t sub_2542FBA3C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_2542F70BC(a1, *v2);
}

uint64_t sub_2542FBA50(uint64_t a1, void *a2)
{
  sub_2543A36E8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_2542F70BC(v9, *v2);
  return sub_2543A3728();
}

uint64_t sub_2542FBA9C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2542FB990(*v1);
}

uint64_t sub_2542FBAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_2542FB8C0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2542FBAE4(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_2542FBB10@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_2542F70B4();
  *a2 = result;
  return result;
}

uint64_t sub_2542FBB44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBB98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FBBEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v5 = a3[5];
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2542FBBFC(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_2542E135C();
}

uint64_t sub_2542FBC0C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return sub_2542E1334();
}

uint64_t sub_2542FBC1C(uint64_t a1, void *a2)
{
  sub_2543A36E8();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  sub_2542E1334();
  return sub_2543A3728();
}

uint64_t sub_2542FBC64(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_2542FA5D4();
}

uint64_t sub_2542FBCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBD10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FBD64(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_2542FBDF8(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_24_1(a1, a2);
  v3 = v2();
  return OUTLINED_FUNCTION_25_2(v3);
}

uint64_t sub_2542FBE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBE7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationUpdateScope.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v70 = v0;
  v71 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v72 = v2[2];
  v7 = v72;
  v73 = v6;
  OUTLINED_FUNCTION_21_2();
  updated = type metadata accessor for ObservationUpdateScope.TargetedCodingKeys();
  OUTLINED_FUNCTION_8_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v64 = updated;
  v62 = v11;
  v12 = sub_2543A3588();
  v13 = OUTLINED_FUNCTION_3(v12);
  v66 = v14;
  v67 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_0();
  v63 = v18;
  OUTLINED_FUNCTION_0_2();
  v65 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  v61 = v24 - v23;
  v73 = v6;
  OUTLINED_FUNCTION_21_2();
  v25 = type metadata accessor for ObservationUpdateScope.UntargetedCodingKeys();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v60 = v25;
  v58 = v26;
  v59 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v59);
  v57 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  v56 = v31;
  OUTLINED_FUNCTION_0_2();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9();
  v39 = v38 - v37;
  v73 = v6;
  v68 = v9;
  OUTLINED_FUNCTION_21_2();
  type metadata accessor for ObservationUpdateScope.CodingKeys();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  v74 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v74);
  v69 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v43);
  v45 = &v55 - v44;
  v46 = v5;
  v48 = v5[3];
  v47 = v5[4];
  __swift_project_boxed_opaque_existential_0(v46, v48);
  sub_2543A3778();
  (*(v33 + 16))(v39, v70, v3);
  v70 = v7;
  if (__swift_getEnumTagSinglePayload(v39, 1, v7) == 1)
  {
    LOBYTE(v72) = 0;
    v49 = v56;
    sub_2543A3508();
    (*(v57 + 8))(v49, v59);
    (*(v69 + 8))(v45, v74);
  }

  else
  {
    v50 = v69;
    v51 = v65;
    v52 = v61;
    (*(v65 + 32))(v61, v39, v70);
    LOBYTE(v72) = 1;
    v53 = v63;
    sub_2543A3508();
    v54 = v67;
    sub_2543A3578();
    (*(v66 + 8))(v53, v54);
    (*(v51 + 8))(v52, v70);
    (*(v50 + 8))(v45, v74);
  }

  OUTLINED_FUNCTION_15_3();
}

void ObservationUpdateScope.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = v30;
  *&v114 = v26;
  *(&v114 + 1) = v24;
  *&v115 = v31;
  *(&v115 + 1) = v32;
  updated = type metadata accessor for ObservationUpdateScope.TargetedCodingKeys();
  OUTLINED_FUNCTION_8_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v102 = v34;
  v103 = updated;
  v97 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v97);
  v96 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0();
  v104 = v39;
  OUTLINED_FUNCTION_19_2();
  v40 = type metadata accessor for ObservationUpdateScope.UntargetedCodingKeys();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v100 = v41;
  v101 = v40;
  v95 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v95);
  v94 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_0();
  v99 = v46;
  OUTLINED_FUNCTION_19_2();
  type metadata accessor for ObservationUpdateScope.CodingKeys();
  OUTLINED_FUNCTION_5_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  v106 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v106);
  v109 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v50);
  v52 = &v91 - v51;
  v107 = v25;
  v108 = v27;
  OUTLINED_FUNCTION_19_2();
  v53 = type metadata accessor for ObservationUpdateScope();
  v54 = OUTLINED_FUNCTION_3(v53);
  v98 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v58);
  v60 = &v91 - v59;
  v61 = v29[4];
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v110 = v52;
  v62 = a10;
  sub_2543A3768();
  v63 = v29;
  if (!v62)
  {
    v92 = v21;
    v93 = v60;
    WitnessTable = v53;
    v64 = v108;
    a10 = v29;
    v65 = v106;
    v66 = v110;
    *&v112 = sub_2543A34E8();
    OUTLINED_FUNCTION_45_0();
    sub_2543A2B38();
    OUTLINED_FUNCTION_11_4();
    swift_getWitnessTable();
    *&v114 = sub_2543A3178();
    *(&v114 + 1) = v67;
    *&v115 = v68;
    *(&v115 + 1) = v69;
    OUTLINED_FUNCTION_45_0();
    sub_2543A3168();
    OUTLINED_FUNCTION_12_5();
    sub_2543A2F68();
    v70 = v112;
    if (v112 == 2 || (v91 = v114, v112 = v114, v113 = v115, (sub_2543A2F88() & 1) == 0))
    {
      v73 = sub_2543A32E8();
      swift_allocError();
      v75 = v74;
      v76 = v66;
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
      *v75 = WitnessTable;
      sub_2543A3468();
      OUTLINED_FUNCTION_27_2();
      (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D84160], v73);
      swift_willThrow();
      (*(v109 + 8))(v76, v65);
      swift_unknownObjectRelease();
    }

    else if (v70)
    {
      LOBYTE(v112) = 1;
      sub_2543A3458();
      v71 = v105;
      v72 = v109;
      v80 = v64;
      v81 = v97;
      sub_2543A34D8();
      v85 = OUTLINED_FUNCTION_2_7(&a15);
      v86(v85, v81);
      (*(v72 + 8))(v110, v65);
      OUTLINED_FUNCTION_17_3(&a9);
      swift_unknownObjectRelease();
      v87 = v92;
      __swift_storeEnumTagSinglePayload(v92, 0, 1, v80);
      v88 = *(v98 + 32);
      v89 = v93;
      v90 = WitnessTable;
      v88(v93, v87, WitnessTable);
      v88(v71, v89, v90);
    }

    else
    {
      LOBYTE(v112) = 0;
      sub_2543A3458();
      v78 = v105;
      v79 = v109;
      v82 = OUTLINED_FUNCTION_2_7(&a13);
      v83(v82, v95);
      (*(v79 + 8))(v66, v65);
      OUTLINED_FUNCTION_17_3(&a9);
      swift_unknownObjectRelease();
      v84 = v93;
      __swift_storeEnumTagSinglePayload(v93, 1, 1, v64);
      (*(v98 + 32))(v78, v84, WitnessTable);
    }

    v63 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v63);
  OUTLINED_FUNCTION_15_3();
}

uint64_t static ObservationUpdateScope.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2();
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v44 = (v12 - v11);
  v45 = v10;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v10;
  updated = type metadata accessor for ObservationUpdateScope();
  OUTLINED_FUNCTION_3(updated);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  OUTLINED_FUNCTION_45_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3(TupleTypeMetadata2);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_134();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v43 - v31;
  v33 = *(v30 + 48);
  v46 = v18;
  v34 = *(v18 + 16);
  v34(&v43 - v31, a1, updated);
  v34(&v32[v33], v48, updated);
  OUTLINED_FUNCTION_14_0(v32);
  if (v36)
  {
    v35 = 1;
    OUTLINED_FUNCTION_14_0(&v32[v33]);
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v34(v23, v32, updated);
    OUTLINED_FUNCTION_14_0(&v32[v33]);
    if (!v36)
    {
      v37 = v47;
      v38 = &v32[v33];
      v39 = v44;
      (*(v47 + 32))(v44, v38, a3);
      v40 = *(v45 + 8);
      v35 = sub_2543A2848();
      v41 = *(v37 + 8);
      v41(v39, a3);
      v41(v23, a3);
LABEL_10:
      v26 = v46;
      goto LABEL_11;
    }

    (*(v47 + 8))(v23, a3);
  }

  v35 = 0;
  updated = TupleTypeMetadata2;
LABEL_11:
  (*(v26 + 8))(v32, updated);
  return v35 & 1;
}

uint64_t sub_2542FCCF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static ObservationUpdateScope.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t sub_2542FCD0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2542FCD88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_2542FCECC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x2542FD0A0);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2542FD0C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2542FD124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2542FD2AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2542FD4CCLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

_BYTE *sub_2542FD560(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2542FD62CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2542FD664(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2542FD700);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2542FD910@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2542FA43C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2542FD940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02C0, qword_2543A9470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  *(v3 - 112) = v0;
  *(v3 - 104) = v2;
  *(v3 - 96) = v1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  *(v7 - 144) = v5;
  *(v7 - 136) = v4;
  *(v7 - 128) = v6;
  *(v7 - 120) = v3;
  *(v7 - 112) = v1;
  *(v7 - 104) = v2;
  *(v7 - 96) = v0;
  return 255;
}

void OUTLINED_FUNCTION_19_2()
{
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  return 255;
}

void OUTLINED_FUNCTION_24_1(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return sub_2543A32D8();
}

uint64_t dispatch thunk of MemberObserving.observation<A>(ofType:forMemberID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7) + 40);
  v15 = *v14 + **v14;
  v7 = (*v14)[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1_11(v9);

  return v12(v11);
}

{
  v14 = (OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7) + 56);
  v15 = *v14 + **v14;
  v7 = (*v14)[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1_11(v9);

  return v12(v11);
}

uint64_t dispatch thunk of MemberObserving.observation<A>(ofType:forMemberID:targeting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(OUTLINED_FUNCTION_2_8(a1, a2, a3, a4, a5, a6, a7, a8) + 48);
  OUTLINED_FUNCTION_5_6();
  v18 = v9 + *v9;
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_17(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_0_10(v13);

  return v16(v15);
}

{
  v8 = *(OUTLINED_FUNCTION_2_8(a1, a2, a3, a4, a5, a6, a7, a8) + 64);
  OUTLINED_FUNCTION_5_6();
  v18 = v9 + *v9;
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_17(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_0_10(v13);

  return v16(v15);
}

uint64_t dispatch thunk of MemberObserving.sendObservationUpdate<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 72);
  OUTLINED_FUNCTION_5_6();
  v19 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_2542FE124;

  return v19(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2542FE124(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2542FE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_2543A2148();

  return v9;
}

uint64_t Publisher<>.asyncStream.getter()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v1 = sub_2543A2D08();
  v2 = OUTLINED_FUNCTION_110(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_9();
  sub_2542FE93C(v0);
  OUTLINED_FUNCTION_3_6();
  return sub_2543A2D88();
}

{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_7();
  v1 = sub_2543A2BF8();
  v2 = OUTLINED_FUNCTION_110(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_9();
  sub_2542FEED4(v0);
  OUTLINED_FUNCTION_3_6();
  return sub_2543A2C38();
}

uint64_t sub_2542FE44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a1;
  v21 = a4;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v7 = sub_2543A2D38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v22 = *(v8 + 16);
  v22(&v21 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, v7);
  v22(v11, v24, v7);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = a3;
  *(v15 + 24) = v16;
  v14(v15 + v12, v11, v7);
  v17 = a3;
  v18 = sub_2543A2118();

  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v16;
  v19[4] = v18;
  return sub_2543A2CF8();
}

uint64_t sub_2542FE6C4(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = v1;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2D38();
  return sub_2543A2D28();
}

uint64_t sub_2542FE770(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v7 = sub_2543A2CE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_2543A2D38();
  sub_2543A2D18();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2542FE93C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v3 = sub_2543A2D08();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2542FEA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v23 = a3;
  v24 = a4;
  swift_getAssociatedTypeWitness();
  v22 = sub_2543A2C28();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v22 - v9;
  v25 = *(v7 + 16);
  v26 = a1;
  v25(&v22 - v9, a1);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = *(v7 + 32);
  v14 = v22;
  v13(v12 + v11, v10, v22);
  (v25)(v10, a1, v14);
  v15 = swift_allocObject();
  v17 = v23;
  v16 = v24;
  *(v15 + 16) = v23;
  *(v15 + 24) = v16;
  v13(v15 + v11, v10, v14);
  v18 = v17;
  v19 = sub_2543A2118();

  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v16;
  v20[4] = v19;
  return sub_2543A2BE8();
}

uint64_t sub_2542FECF0()
{
  swift_getAssociatedTypeWitness();
  sub_2543A2C28();
  return sub_2543A2C18();
}

uint64_t sub_2542FED40(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v13 - v5;
  v7 = sub_2543A2BD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_2543A2C28();
  sub_2543A2C08();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2542FEED4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_2543A2BF8();
  v4 = OUTLINED_FUNCTION_26(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_2542FEF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  *(v20 + 6) = v23;
  *(v20 + 7) = a3;
  (*(v10 + 32))(&v20[v19], v13, AssociatedTypeWitness);

  sub_2542CCD54();
}

uint64_t sub_2542FF138()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2542FF17C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2542DF754;

  return v11(a6);
}

uint64_t sub_2542FF274()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2542FF354(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = v1[7];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2542DF754;

  return sub_2542FF17C(a1, v10, v11, v12, v13, v1 + v9);
}

uint64_t sub_2542FF484()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7();
  v0 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_0_11();

  return sub_2542FECF0();
}

uint64_t objectdestroy_7Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = sub_2543A2C28();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2542FF5A8()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7();
  v0 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_0_11();

  return sub_2542FED40(v3);
}

uint64_t sub_2542FF628()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2542FF664()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v0 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_0_11();

  return sub_2542FE6C4(v3);
}

uint64_t objectdestroy_16Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v3 = sub_2543A2D38();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2542FF7D0()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v0 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_0_11();

  return sub_2542FE770(v3);
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  *(v3 - 80) = v2;
  *(v3 - 72) = v1;
  *(v3 - 64) = v0;

  return swift_checkMetadataState();
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return swift_getAssociatedTypeWitness();
}

id static NSError.hpsError(_:localizedDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02E8, &qword_2543B39E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2543A7E00;
    v7 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_2543A2878();
    *(inited + 40) = v8;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = a2;
    *(inited + 56) = v3;
    sub_2543A2768();
    v3 = sub_2543A2748();
  }

  result = sub_2543A2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v10;
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    return sub_2542FFD9C(v11, v12, a1, v3);
  }

  return result;
}

id sub_2542FFA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = static NSError.hpsError(_:localizedDescription:)(a3, v5, v7);

  return v8;
}

id static NSError.hpsError(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  result = sub_2543A2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2543A2768();
    return sub_2542FFD9C(v6, v7, a1, a2);
  }

  return result;
}

id sub_2542FFB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2543A2718();
  v5 = static NSError.hpsError(_:userInfo:)(a3, v4);

  return v5;
}

id sub_2542FFBB4()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(14, 0x666C6573206C694ELL, 0xE800000000000000);
  qword_27F5E02C8 = result;
  return result;
}

id sub_2542FFC18()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(9, 0xD000000000000013, 0x80000002543B8220);
  qword_27F5E02D0 = result;
  return result;
}

id sub_2542FFC80()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(5, 0xD000000000000015, 0x80000002543B8200);
  qword_27F5E02D8 = result;
  return result;
}

id sub_2542FFCE8()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(15, 0xD00000000000001BLL, 0x80000002543B81E0);
  qword_27F5E02E0 = result;
  return result;
}

id sub_2542FFD50(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id sub_2542FFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2543A2858();

  if (a4)
  {
    v8 = sub_2543A2708();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2542FFE54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request;
  swift_beginAccess();
  sub_2543003F4(v1 + v3, &v5);
  if (v6)
  {
    return sub_2542DA8C0(&v5, a1);
  }

  sub_254300464(&v5);
  sub_2543004CC(*(v1 + OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject) + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request, a1);
  sub_2543004CC(a1, &v5);
  swift_beginAccess();
  sub_254300530(&v5, v1 + v3);
  return swift_endAccess();
}

id sub_2542FFF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](ObjectType);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request];
  type metadata accessor for TransportRequestObject();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  (*(v9 + 16))(v12, a1, a2);
  *&v4[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject] = sub_25435F378(v12, a2, a3);
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v9 + 8))(a1, a2);
  return v14;
}

id sub_2543000D4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_25430013C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject);
  v4 = sub_2543A2858();
  [a1 encodeObject:v3 forKey:v4];
}

id sub_254300220(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TransportRequestObject();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(ObjectType);
    v6 = sub_2543000D4(v4);

    swift_getObjectType();
    OUTLINED_FUNCTION_0_12();
  }

  else
  {
    v7 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, 0xD00000000000002BLL, 0x80000002543B82D0, v7 & 1, ObjectType, &off_286646E98);

    swift_getObjectType();
    OUTLINED_FUNCTION_0_12();
    return 0;
  }

  return v6;
}

uint64_t sub_2543003F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254300464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2543004CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254300530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_deallocPartialClassInstance();
}

void sub_254300608(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  v7 = a5();
  v9 = v8;
  objc_allocWithZone(MEMORY[0x277D02878]);
  if (a4)
  {
    v10 = sub_25431CE40(0xD000000000000019, 0x80000002543B7650, v7, v9, 0x10000000);
  }

  else
  {
    v10 = sub_25431CDB8();
  }

  v11 = v10;
  v12 = sub_2543A2858();
  [v11 ulog:a1 message:v12];
}

uint64_t sub_2543006F4()
{
  type metadata accessor for TransportObservationsRegister();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0320, &qword_2543A9588);
  result = sub_2543A2748();
  *(v0 + 16) = result;
  qword_27F5E0308 = v0;
  return result;
}

uint64_t static TransportObservationsRegister.shared.getter()
{
  if (qword_27F5DF070 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2543007C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(v6 + 32);
  v8 = v7(a2, v6);
  MEMORY[0x259C093D0](v8);

  v9 = OUTLINED_FUNCTION_0_13();
  sub_254300608(v9, v10, 0x80000002543B8390, 0, v11);

  v12 = v7(a2, v6);
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  swift_beginAccess();
  v16 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + 16);
  sub_25431982C(sub_254300DC4, v15, v12, v14, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v19;

  return swift_endAccess();
}

uint64_t sub_25430092C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2543A30C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = *(*(*(a4 + 8) + 8) + 8);
  sub_25430D830(a3, &v21 - v13);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v14, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, v14, a3);
  }

  return result;
}

uint64_t sub_254300A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2543A3298();

  *&v20 = 0xD00000000000002ALL;
  *(&v20 + 1) = 0x80000002543B8360;
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  MEMORY[0x259C093D0](a4, a5);
  v12 = OUTLINED_FUNCTION_0_13();
  sub_254300608(v12, v13, 0x80000002543B8360, 0, v14);

  swift_beginAccess();
  v15 = sub_254396570(a1, a2, *(v6 + 16));
  if (v15)
  {
    swift_endAccess();
    v22 = a3;
    v19[0] = a4;
    v19[1] = a5;
    v15(&v20, &v22, v19);
    sub_2542D7A3C(v15);
    if (v21)
    {
      return sub_2542DA8C0(&v20, a6);
    }

    sub_254300D4C(&v20);
  }

  else
  {
    swift_endAccess();
    a5 = a2;
    a4 = a1;
  }

  sub_254300CF8();
  swift_allocError();
  *v17 = a4;
  *(v17 + 8) = a5;
  *(v17 + 16) = v15 != 0;
  sub_2543A2768();
  return swift_willThrow();
}

uint64_t TransportObservationsRegister.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TransportObservationsRegister.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_254300CF8()
{
  result = qword_27F5E0310;
  if (!qword_27F5E0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0310);
  }

  return result;
}

uint64_t sub_254300D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0318, &qword_2543A9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_254300E4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_254300E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_254300F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_2542FE220;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_254301074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2542DF754;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t Target.isLocal.getter()
{
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t static Target.targetForCurrentDevice()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t sub_254301228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2543012BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254301228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543012E8(uint64_t a1)
{
  v2 = sub_2543014B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254301324(uint64_t a1)
{
  v2 = sub_2543014B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Target.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0328, &qword_2543A9698);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543014B0();
  sub_2543A3778();
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  v13 = *(v2 + 16);
  sub_2543A3558();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_2543014B0()
{
  result = qword_27F5E0330;
  if (!qword_27F5E0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0330);
  }

  return result;
}

uint64_t Target.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Target.init(from:)(a1);
  return v2;
}

void *Target.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v16[1] = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0338, &qword_2543A96A0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543014B0();
  sub_2543A3768();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = sub_2543A34B8();
    (*(v8 + 8))(v12, v5);
    *(v3 + 16) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2543016E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Target.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static Target.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v4 = 1;
  }

  else
  {
    v3 = a1;
    OUTLINED_FUNCTION_0_14();
    swift_beginAccess();
    LOBYTE(v3) = *(v3 + 16);
    OUTLINED_FUNCTION_0_14();
    swift_beginAccess();
    v4 = v3 ^ *(a2 + 16) ^ 1;
  }

  return v4 & 1;
}

uint64_t Target.hashValue.getter()
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v0);
  return sub_2543A3728();
}

uint64_t sub_254301864()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t Target.description.getter()
{
  v1 = *v0;
  sub_2543A3298();
  MEMORY[0x259C093D0](60, 0xE100000000000000);
  v2 = sub_2543A37B8();
  MEMORY[0x259C093D0](v2);

  MEMORY[0x259C093D0](32, 0xE100000000000000);
  sub_2543A3358();
  MEMORY[0x259C093D0](0x61636F4C7369203ELL, 0xEC000000203D206CLL);
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v3, v4);

  return 0;
}

unint64_t sub_254301A24()
{
  result = qword_27F5E0340;
  if (!qword_27F5E0340)
  {
    type metadata accessor for Target();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0340);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Target.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254301B9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254301BD8()
{
  result = qword_27F5E0348;
  if (!qword_27F5E0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0348);
  }

  return result;
}

unint64_t sub_254301C30()
{
  result = qword_27F5E0350;
  if (!qword_27F5E0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0350);
  }

  return result;
}

unint64_t sub_254301C88()
{
  result = qword_27F5E0358;
  if (!qword_27F5E0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0358);
  }

  return result;
}

uint64_t sub_254301CE8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v24, 1, v30);
}

uint64_t ??? infix<A>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_2543A30C8();
  v4 = sub_254301CE8(sub_2543020D0, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v3, v6);
  if (v6[1])
  {
    return v6[0];
  }

  else
  {
    return a2(v4);
  }
}

uint64_t sub_254302000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2543A2888();
  *a3 = result;
  a3[1] = v8;
  return result;
}

id BetaEnrollment.IdentifyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.IdentifyRequest.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BetaEnrollment.IdentifyRequest.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BetaEnrollment.IdentifyRequest.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t BetaEnrollment.IdentifyRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_2542E1050(v4);
  }

  return 0;
}

id BetaEnrollment.IdentifyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2543023B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0360, &unk_2543A9900);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  sub_2542EE9CC(&qword_27F5E0378, &qword_27F5DFBC8, &qword_2543A7D38);
  sub_2543A2ED8();
  sub_2543A2F48();
  sub_2542EE9CC(&qword_27F5E0410, &qword_27F5E0360, &unk_2543A9900);
  v8 = sub_2543A2848();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_254302598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*CarrySettings.MessageableDevice.target.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t CarrySettings.MessageableDevice.init(model:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25430360C(a1, a4, type metadata accessor for CarrySettings.DataModel);
  v7 = type metadata accessor for CarrySettings.MessageableDevice();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

void *sub_254302770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for CarrySettings.CarryDevice(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CarrySettings.DataModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescriptionBuilder();
  swift_allocObject();
  v14 = sub_2542F4C30(sub_25430298C, 0, 0x65746E6F43206F4ELL, 0xEA0000000000746ELL);
  sub_2542ED4C0(v1, v13);
  sub_25430360C(v13, v9, type metadata accessor for CarrySettings.CarryDevice);
  sub_25430366C(v9, v5);
  v15 = _s20CarryDeviceMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v15);
  sub_2542DE3E4(v5, &qword_27F5E0370, &qword_2543B1EB0);
  v17 = v14[5];
  v18 = 0x4C45444F4D5F4F4ELL;
  if (EnumTagSinglePayload == 1)
  {
    v18 = 0x43495645445F4F4ELL;
  }

  v19 = 0xE800000000000000;
  if (EnumTagSinglePayload == 1)
  {
    v19 = 0xEE004F464E495F45;
  }

  v14[4] = v18;
  v14[5] = v19;

  return v14;
}

uint64_t sub_25430298C(uint64_t a1, uint64_t a2)
{
  sub_2543A3298();

  strcpy(v5, "<CarryDevice, ");
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](15904, 0xE200000000000000);
  return v5[0];
}

uint64_t CarrySettings.MessageableDevice.detailedDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0360, &unk_2543A9900);
  v2 = OUTLINED_FUNCTION_3(v1);
  v125 = v3;
  v126 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v136 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v8 = OUTLINED_FUNCTION_3(v7);
  v129 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_10();
  v128 = v12 - v13;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v124 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v18 = OUTLINED_FUNCTION_110(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v127 = &v124 - v21;
  v22 = type metadata accessor for CarrySettings.CarryDevice(0);
  v23 = OUTLINED_FUNCTION_110(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_10();
  v135 = v26 - v27;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v28);
  v131 = &v124 - v29;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v124 - v31;
  v33 = type metadata accessor for CarrySettings.DataModel(0);
  v34 = OUTLINED_FUNCTION_110(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_10();
  v132 = v37 - v38;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v39);
  v130 = &v124 - v40;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v41);
  v43 = &v124 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v45 = OUTLINED_FUNCTION_110(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_10();
  v50 = v48 - v49;
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (&v124 - v53);
  MEMORY[0x28223BE20](v52);
  v56 = &v124 - v55;
  v133 = sub_254302770();
  v137 = v0;
  sub_2542ED4C0(v0, v43);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v43, v32, v57);
  sub_25430366C(v32, v56);
  v58 = _s20CarryDeviceMergeableVMa(0);
  OUTLINED_FUNCTION_10_5(v56);
  if (v59)
  {
    sub_2542DE3E4(v56, &qword_27F5E0370, &qword_2543B1EB0);
    sub_2543036DC(__dst);
  }

  else
  {
    v60 = *(v58 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_15();
    sub_254303AF4(v56, v61);
    memcpy(__dst, v158, 0xA8uLL);
  }

  OUTLINED_FUNCTION_7_7(v158);
  OUTLINED_FUNCTION_6_7(v158);
  if (v59)
  {
    v62 = 0;
    v63 = OUTLINED_FUNCTION_9_4();
    v157[2] = 0;
  }

  else
  {
    v62 = v158[7];
    v63 = sub_2543A2768();
    v64 = MEMORY[0x277D837D0];
  }

  v157[0] = v62;
  v157[1] = v63;
  v157[3] = v64;
  sub_2542F4C4C(28014, 0xE200000000000000, v157);
  sub_2542DE3E4(v157, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v156);
  OUTLINED_FUNCTION_6_7(v156);
  if (v59)
  {
    v65 = 0;
    v66 = OUTLINED_FUNCTION_9_4();
    v155[2] = 0;
  }

  else
  {
    v65 = v156[5];
    v66 = sub_2543A2768();
    v67 = MEMORY[0x277D837D0];
  }

  v155[0] = v65;
  v155[1] = v66;
  v155[3] = v67;
  sub_2542F4C4C(0x6C65646F6DLL, 0xE500000000000000, v155);
  sub_2542DE3E4(v155, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v154);
  OUTLINED_FUNCTION_6_7(v154);
  if (v59)
  {
    v68 = 0;
    memset(v152, 0, sizeof(v152));
  }

  else
  {
    v152[0] = v154[112];
    v68 = MEMORY[0x277D839B0];
  }

  v69 = MEMORY[0x277D837D0];
  v153 = v68;
  sub_2542F4C4C(0x65737546646F7270, 0xE900000000000064, v152);
  sub_2542DE3E4(v152, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v151);
  OUTLINED_FUNCTION_6_7(v151);
  if (v59 || !v151[16])
  {
    v149 = 0u;
    v150 = 0u;
  }

  else
  {
    v70 = v151[15];
    v71 = sub_2543A2768();
    *(&v150 + 1) = v69;
    *&v149 = v70;
    *(&v149 + 1) = v71;
  }

  sub_2542F4C4C(1836019570, 0xE400000000000000, &v149);
  sub_2542DE3E4(&v149, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v148);
  OUTLINED_FUNCTION_6_7(v148);
  if (v59 || !v148[1])
  {
    v72 = v16;
    v146 = 0u;
    v147 = 0u;
  }

  else
  {
    v72 = v16;
    v73 = v148[0];
    v74 = sub_2543A2768();
    *(&v147 + 1) = v69;
    *&v146 = v73;
    *(&v146 + 1) = v74;
  }

  sub_2542F4C4C(0x70756F7267, 0xE500000000000000, &v146);
  sub_2542DE3E4(&v146, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v143);
  OUTLINED_FUNCTION_6_7(v143);
  if (v59 || (v75 = v144, v76 = v145, sub_254303B4C(v144, v145), sub_2542DE3E4(__dst, &dword_27F5E0388, &unk_2543A9920), !v76))
  {
    memset(v141, 0, 32);
  }

  else
  {

    *(&v141[1] + 1) = MEMORY[0x277D837D0];
    *&v141[0] = v75;
    *(&v141[0] + 1) = v76;
  }

  v77 = v72;
  sub_2542F4C4C(1919508848, 0xE400000000000000, v141);
  sub_2542DE3E4(v141, &unk_27F5DFA00, &unk_2543A76C0);
  v78 = v137;
  v79 = v130;
  sub_2542ED4C0(v137, v130);
  OUTLINED_FUNCTION_1_12();
  v80 = v79;
  v81 = v131;
  sub_25430360C(v80, v131, v82);
  sub_25430366C(v81, v54);
  OUTLINED_FUNCTION_10_5(v54);
  if (v59)
  {
    v83 = &qword_27F5E0370;
    v84 = &qword_2543B1EB0;
LABEL_30:
    sub_2542DE3E4(v54, v83, v84);
    v90 = v135;
    v91 = v132;
    memset(v141, 0, 32);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v85 = v127;
  sub_2543A2198();
  OUTLINED_FUNCTION_0_15();
  v86 = v54;
  v54 = v85;
  sub_254303AF4(v86, v87);
  v88 = _s29AppleConnectSettingsMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v88);
  if (EnumTagSinglePayload == 1)
  {
    v83 = &qword_27F5E0368;
    v84 = &qword_2543A9910;
    goto LABEL_30;
  }

  v92 = v7;
  v94 = *v54;
  v93 = v54[1];
  sub_2543A2768();
  sub_254303AF4(v54, _s29AppleConnectSettingsMergeableVMa);
  *(&v141[1] + 1) = MEMORY[0x277D837D0];
  *&v141[0] = v94;
  *(&v141[0] + 1) = v93;
  v7 = v92;
  v90 = v135;
  v91 = v132;
LABEL_32:
  sub_2542F4C4C(25441, 0xE200000000000000, v141);
  sub_2542DE3E4(v141, &unk_27F5DFA00, &unk_2543A76C0);
  sub_2542ED4C0(v78, v91);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v91, v90, v95);
  sub_25430366C(v90, v50);
  OUTLINED_FUNCTION_10_5(v50);
  if (v59)
  {
    v96 = &qword_27F5E0370;
    v97 = &qword_2543B1EB0;
    v98 = v50;
LABEL_58:
    sub_2542DE3E4(v98, v96, v97);
    goto LABEL_59;
  }

  v99 = v128;
  v100 = v129;
  (*(v129 + 16))(v128, v50 + *(v58 + 24), v7);
  OUTLINED_FUNCTION_0_15();
  sub_254303AF4(v50, v101);
  (*(v100 + 32))(v77, v99, v7);
  v102 = sub_2543023B8();
  if (v102)
  {
    (*(v100 + 8))(v77, v7);
LABEL_59:
    v123 = sub_2542F4D58();

    return v123;
  }

  v103 = sub_2542EE9CC(&qword_27F5E0378, &qword_27F5DFBC8, &qword_2543A7D38);
  v104 = sub_2543A2EF8();
  v105 = MEMORY[0x277D84F90];
  if (!v104)
  {
LABEL_57:
    *(&v141[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    *&v141[0] = v105;
    sub_2542F4C4C(0x73656C69666F7270, 0xE800000000000000, v141);
    (*(v129 + 8))(v77, v7);
    v96 = &unk_27F5DFA00;
    v97 = &unk_2543A76C0;
    v98 = v141;
    goto LABEL_58;
  }

  v106 = v104;
  v142 = MEMORY[0x277D84F90];
  sub_2542F1568();
  v105 = v142;
  result = sub_2543A2ED8();
  if ((v106 & 0x8000000000000000) == 0)
  {
    v137 = v106 - 1;
    v134 = v7;
    v135 = v103;
    while (1)
    {
      v108 = sub_2543A2FA8();
      memcpy(v141, v109, sizeof(v141));
      sub_254303A84(v141, &v138);
      v108(&v140, 0);
      v110 = v141[1];
      v111 = LOBYTE(v141[3]);
      v112 = v77;
      v113 = BYTE1(v141[3]);
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_2543A3298();

      v138 = 10320;
      v139 = 0xE200000000000000;
      MEMORY[0x259C093D0](v110, *(&v110 + 1));
      MEMORY[0x259C093D0](0x64656E676973202CLL, 0xEA0000000000203ALL);
      v114 = v111 ? 1702195828 : 0x65736C6166;
      v115 = v111 ? 0xE400000000000000 : 0xE500000000000000;
      MEMORY[0x259C093D0](v114, v115);

      MEMORY[0x259C093D0](0x657473757274202CLL, 0xEB00000000203A64);
      v116 = v113 ? 1702195828 : 0x65736C6166;
      v117 = v113 ? 0xE400000000000000 : 0xE500000000000000;
      MEMORY[0x259C093D0](v116, v117);

      MEMORY[0x259C093D0](41, 0xE100000000000000);
      sub_2542DE3E4(v141, &qword_27F5E0380, &qword_2543A9918);
      v118 = v138;
      v119 = v139;
      v142 = v105;
      v120 = *(v105 + 16);
      if (v120 >= *(v105 + 24) >> 1)
      {
        sub_2542F1568();
        v105 = v142;
      }

      *(v105 + 16) = v120 + 1;
      v121 = v105 + 16 * v120;
      *(v121 + 32) = v118;
      *(v121 + 40) = v119;
      v122 = v136;
      v7 = v134;
      sub_2543A2F58();
      v77 = v112;
      if (!v137)
      {
        break;
      }

      --v137;
    }

    (*(v125 + 8))(v122, v126);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_25430360C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_26(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_25430366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2543036E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CarrySettings.MessageableDevice.shortDescription.getter()
{
  v1 = type metadata accessor for CarrySettings.CarryDevice(0);
  v2 = OUTLINED_FUNCTION_110(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CarrySettings.DataModel(0);
  v8 = OUTLINED_FUNCTION_110(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v14 = OUTLINED_FUNCTION_110(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  sub_254302770();
  sub_2542ED4C0(v0, v12);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v12, v6, v19);
  sub_25430366C(v6, v18);
  v20 = _s20CarryDeviceMergeableVMa(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v20) == 1)
  {
    sub_2542DE3E4(v18, &qword_27F5E0370, &qword_2543B1EB0);
    sub_2543036DC(__dst);
  }

  else
  {
    v21 = *(v20 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_15();
    sub_254303AF4(v18, v22);
    memcpy(__dst, v41, sizeof(__dst));
  }

  memcpy(v41, __dst, sizeof(v41));
  OUTLINED_FUNCTION_6_7(v41);
  if (v23)
  {
    v24 = 0;
    v25 = OUTLINED_FUNCTION_9_4();
    v40[2] = 0;
  }

  else
  {
    v24 = v41[7];
    v25 = sub_2543A2768();
    v26 = MEMORY[0x277D837D0];
  }

  v40[0] = v24;
  v40[1] = v25;
  v40[3] = v26;
  sub_2542F4C4C(28014, 0xE200000000000000, v40);
  sub_2542DE3E4(v40, &unk_27F5DFA00, &unk_2543A76C0);
  memcpy(v39, __dst, sizeof(v39));
  OUTLINED_FUNCTION_6_7(v39);
  if (v23)
  {
    v27 = 0;
    v28 = OUTLINED_FUNCTION_9_4();
    v38[2] = 0;
  }

  else
  {
    v27 = v39[5];
    v28 = sub_2543A2768();
    v29 = MEMORY[0x277D837D0];
  }

  v38[0] = v27;
  v38[1] = v28;
  v38[3] = v29;
  sub_2542F4C4C(0x6C65646F6DLL, 0xE500000000000000, v38);
  sub_2542DE3E4(v38, &unk_27F5DFA00, &unk_2543A76C0);
  memcpy(v37, __dst, sizeof(v37));
  OUTLINED_FUNCTION_6_7(v37);
  if (v23 || (v30 = v37[15], v31 = v37[16], sub_254303B4C(v37[15], v37[16]), sub_2542DE3E4(__dst, &dword_27F5E0388, &unk_2543A9920), !v31))
  {
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    v32 = MEMORY[0x277D837D0];

    *(&v36 + 1) = v32;
    *&v35 = v30;
    *(&v35 + 1) = v31;
  }

  sub_2542F4C4C(1836019570, 0xE400000000000000, &v35);
  sub_2542DE3E4(&v35, &unk_27F5DFA00, &unk_2543A76C0);
  v33 = sub_2542F4D58();

  return v33;
}

uint64_t sub_254303A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0380, &qword_2543A9918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254303AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_26(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254303B4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2543A2768();
    sub_2543A2768();

    return sub_2543A2768();
  }

  return result;
}

uint64_t sub_254303BA4(uint64_t a1)
{
  result = type metadata accessor for CarrySettings.DataModel(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254303C2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v4 = *(v44 - 8);
  v5 = *(v4 + 84);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v6 = *(v42 - 8);
  v45 = v5;
  v43 = *(v6 + 84);
  if (v43 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v8 = *(v40 - 8);
  v41 = *(v8 + 84);
  if (v41 > v7)
  {
    v7 = *(v8 + 84);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v13 - 1)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(v4 + 64);
  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v10 + 80);
  v24 = *(v15 + 80);
  if (!a2)
  {
    return 0;
  }

  v25 = v9;
  v26 = *(*(v9 - 8) + 64) + 7;
  v27 = ((v26 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v28 = a1;
  if (a2 <= v17)
  {
    goto LABEL_36;
  }

  v29 = (v27 & ~v24) + *(v15 + 64);
  v30 = 8 * v29;
  if (v29 <= 3)
  {
    v33 = ((a2 - v17 + ~(-1 << v30)) >> v30) + 1;
    if (HIWORD(v33))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v33 > 0xFF)
    {
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v33 < 2)
    {
LABEL_36:
      if (v13 - 1 < v16)
      {

        return __swift_getEnumTagSinglePayload((a1 + v27) & ~v24, v16, v14);
      }

      if (v45 == v13)
      {
        v11 = v45;
        v37 = v44;
      }

      else
      {
        v28 = (a1 + v18 + v19) & ~v19;
        if (v43 == v13)
        {
          v11 = v43;
          v37 = v42;
        }

        else
        {
          v28 = (v28 + v20 + v21) & ~v21;
          if (v41 == v13)
          {
            v11 = v41;
            v37 = v40;
          }

          else
          {
            v28 = (v28 + v22 + v23) & ~v23;
            if (v11 != v13)
            {
              v39 = *((v26 + v28) & 0xFFFFFFFFFFFFFFF8);
              if (v39 >= 0xFFFFFFFF)
              {
                LODWORD(v39) = -1;
              }

              EnumTagSinglePayload = v39 + 1;
              goto LABEL_53;
            }

            v37 = v25;
          }
        }
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v11, v37);
LABEL_53:
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v31 = *(a1 + v29);
  if (!*(a1 + v29))
  {
    goto LABEL_36;
  }

LABEL_26:
  v34 = (v31 - 1) << v30;
  if (v29 > 3)
  {
    v34 = 0;
  }

  if (v29)
  {
    if (v29 <= 3)
    {
      v35 = (v27 & ~v24) + *(v15 + 64);
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 2:
        v36 = *a1;
        break;
      case 3:
        v36 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v36 = *a1;
        break;
      default:
        v36 = *a1;
        break;
    }
  }

  else
  {
    v36 = 0;
  }

  return v17 + (v36 | v34) + 1;
}

void sub_2543040C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v5 = *(v49 - 8);
  v6 = *(v5 + 84);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v7 = *(v47 - 8);
  v50 = v6;
  v48 = *(v7 + 84);
  if (v48 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v9 = *(v45 - 8);
  v46 = *(v9 + 84);
  if (v46 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  if (v18 <= v14 - 1)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = *(v17 + 84);
  }

  v20 = *(v7 + 80);
  v21 = *(v5 + 64) + v20;
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v9 + 64);
  v25 = *(v11 + 80);
  v26 = *(*(v10 - 8) + 64) + 7;
  v27 = ((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = *(v17 + 80);
  v29 = v27 + v28;
  v30 = ((v27 + v28) & ~v28) + *(v17 + 64);
  v31 = 8 * v30;
  if (a3 <= v19)
  {
    v34 = 0;
    v32 = a1;
    v33 = a2;
  }

  else
  {
    v32 = a1;
    v33 = a2;
    if (v30 <= 3)
    {
      v38 = ((a3 - v19 + ~(-1 << v31)) >> v31) + 1;
      if (HIWORD(v38))
      {
        v34 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v34 = v39;
        }

        else
        {
          v34 = 0;
        }
      }
    }

    else
    {
      v34 = 1;
    }
  }

  if (v19 < v33)
  {
    v35 = ~v19 + v33;
    if (v30 < 4)
    {
      v36 = (v35 >> v31) + 1;
      if (v30)
      {
        v40 = v35 & ~(-1 << v31);
        bzero(v32, v30);
        if (v30 == 3)
        {
          *v32 = v40;
          v32[2] = BYTE2(v40);
        }

        else if (v30 == 2)
        {
          *v32 = v40;
        }

        else
        {
          *v32 = v35;
        }
      }
    }

    else
    {
      bzero(v32, v30);
      *v32 = v35;
      v36 = 1;
    }

    switch(v34)
    {
      case 1:
        v32[v30] = v36;
        return;
      case 2:
        *&v32[v30] = v36;
        return;
      case 3:
        goto LABEL_71;
      case 4:
        *&v32[v30] = v36;
        return;
      default:
        return;
    }
  }

  v37 = ~v28;
  switch(v34)
  {
    case 1:
      v32[v30] = 0;
      if (!v33)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *&v32[v30] = 0;
      if (!v33)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_71:
      __break(1u);
      JUMPOUT(0x254304608);
    case 4:
      *&v32[v30] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!v33)
      {
        return;
      }

LABEL_38:
      if (v15 < v18)
      {
        v41 = &v32[v29] & v37;
        v42 = v33;
        v12 = v18;
        goto LABEL_40;
      }

      if (v15 < v33)
      {
        if (((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v43 = v33 - v14;
LABEL_59:
        bzero(v32, v27);
        *v32 = v43;
        return;
      }

      v43 = v33 - v14;
      if (v33 >= v14)
      {
        if (((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        goto LABEL_59;
      }

      v42 = (v33 + 1);
      if (v50 == v14)
      {
        v41 = v32;
        v12 = v50;
        v16 = v49;
      }

      else
      {
        v41 = &v32[v21] & ~v20;
        if (v48 == v14)
        {
          v12 = v48;
          v16 = v47;
        }

        else
        {
          v41 = (v41 + v22 + v23) & ~v23;
          if (v46 == v14)
          {
            v12 = v46;
            v16 = v45;
          }

          else
          {
            v41 = (v41 + v24 + v25) & ~v25;
            if (v12 != v14)
            {
              if ((v42 & 0x80000000) != 0)
              {
                v44 = (v33 - 0x7FFFFFFF);
              }

              else
              {
                v44 = v33;
              }

              *((v26 + v41) & 0xFFFFFFFFFFFFFFF8) = v44;
              return;
            }

            v16 = v10;
          }
        }
      }

LABEL_40:

      __swift_storeEnumTagSinglePayload(v41, v42, v12, v16);
      return;
  }
}

void *OUTLINED_FUNCTION_7_7(void *a1)
{

  return memcpy(a1, (v1 - 256), 0xA8uLL);
}

uint64_t BetaEnrollment.StateChangeRequest.desiredState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  result = OUTLINED_FUNCTION_97();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.StateChangeRequest.desiredState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BetaEnrollment.StateChangeRequest.enrollProgramID.getter()
{
  v1 = (v0 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID);
  OUTLINED_FUNCTION_0_16();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BetaEnrollment.StateChangeRequest.enrollProgramID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID;
  result = OUTLINED_FUNCTION_3_2();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id BetaEnrollment.StateChangeRequest.init(desiredState:enrollProgramID:)()
{
  OUTLINED_FUNCTION_3_7();
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
  *v6 = 0;
  v6[8] = 1;
  v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState] = v5;
  OUTLINED_FUNCTION_3_2();
  *v6 = v2;
  v6[8] = v0 & 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_254304988(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
  *v4 = 0;
  v4[8] = 1;
  v5 = sub_2543A2858();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 >= 5)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState] = v6;
    v7 = OUTLINED_FUNCTION_2_11();
    v8 = [a1 containsValueForKey_];

    if (v8)
    {
      v9 = OUTLINED_FUNCTION_2_11();
      v10 = [a1 decodeIntegerForKey_];

      OUTLINED_FUNCTION_3_2();
      *v4 = v10;
      v4[8] = 0;
    }

    v13.receiver = v1;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  return v11;
}

Swift::Void __swiftcall BetaEnrollment.StateChangeRequest.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  OUTLINED_FUNCTION_97();
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = (v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID);
  OUTLINED_FUNCTION_97();
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    v8 = OUTLINED_FUNCTION_2_11();
    [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
  }
}

uint64_t BetaEnrollment.StateChangeRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v12);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      if (v11 == v1)
      {

        return 1;
      }

      v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
      OUTLINED_FUNCTION_97();
      LODWORD(v3) = v11[v3];
      v4 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
      OUTLINED_FUNCTION_97();
      if (v3 == v1[v4])
      {
        v5 = &v11[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
        OUTLINED_FUNCTION_0_16();
        v6 = *v5;
        v7 = v5[8];

        v8 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
        OUTLINED_FUNCTION_0_16();
        v9 = v8[8];
        if (v7)
        {
          if (!v8[8])
          {
            return 0;
          }
        }

        else
        {
          if (v6 != *v8)
          {
            v9 = 1;
          }

          if (v9)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  else
  {
    sub_2542E1050(v12);
  }

  return 0;
}

uint64_t BetaEnrollment.StateChangeRequest.description.getter()
{
  v1 = v0;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8420);
  v2 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  OUTLINED_FUNCTION_97();
  v9 = *(v1 + v2);
  sub_2543A3358();
  MEMORY[0x259C093D0](0xD000000000000018, 0x80000002543B8010);
  v3 = (v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID);
  OUTLINED_FUNCTION_0_16();
  if (v3[1])
  {
    v4 = 0xE400000000000000;
    v5 = 1701736270;
  }

  else
  {
    v8 = *v3;
    v5 = sub_2543A35A8();
    v4 = v6;
  }

  MEMORY[0x259C093D0](v5, v4);

  return 0;
}

id BetaEnrollment.StateChangeRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.StateChangeRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_2543A2858();
}

uint64_t sub_2543050A4(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_25430519C()
{
  OUTLINED_FUNCTION_88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_254305224();
  OUTLINED_FUNCTION_86();
}

void sub_254305224()
{
  OUTLINED_FUNCTION_88();
  v58 = v1;
  v59 = v2;
  v56 = v3;
  v57 = v4;
  v54 = v5;
  v55 = v6;
  v52 = v7;
  v53 = v8;
  v9 = *v0;
  v49 = sub_2543A3068();
  v10 = OUTLINED_FUNCTION_3(v49);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v17 = v16 - v15;
  v18 = sub_2543A3058();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v20 = sub_2543A2168();
  v21 = OUTLINED_FUNCTION_110(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  v51 = *(v9 + 88);
  v50 = *(v9 + 96);
  v60[0] = *(v9 + 80);
  v60[1] = v51;
  v60[2] = v50;
  v61 = *(v9 + 104);
  type metadata accessor for CoordinationTransportServer();
  swift_getWitnessTable();
  type metadata accessor for ObservationManager();
  *(v0 + 15) = sub_25431D0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF270, &qword_2543A6850);
  swift_allocObject();
  *(v0 + 16) = sub_2542D4F6C();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  v60[0] = MEMORY[0x277D84F90];
  sub_254308E3C(&qword_27F5DF2B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v12 + 104))(v17, *MEMORY[0x277D85260], v49);
  *(v0 + 17) = sub_2543A3078();
  OUTLINED_FUNCTION_10_6();
  v25 = *(v24 + 192);
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_17_4();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v26, v27);
  OUTLINED_FUNCTION_17_4();
  *&v0[v25] = sub_2543A2748();
  OUTLINED_FUNCTION_10_6();
  v29 = *(v28 + 200);
  sub_2543A2A88();
  OUTLINED_FUNCTION_17_4();
  *&v0[v29] = sub_2543A2748();
  OUTLINED_FUNCTION_10_6();
  v31 = &v0[*(v30 + 208)];
  OUTLINED_FUNCTION_17_4();
  sub_2542D6250(v32, v33, v34);
  v35 = *(v50 + 8);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_17_4();
  sub_2543094B4(v36, v37, v38);
  *v31 = sub_25437D744();
  v31[1] = v39;
  v31[2] = v40;
  OUTLINED_FUNCTION_10_6();
  *&v0[*(v41 + 216)] = 0;
  *&v61 = sub_2542D6250(0, &qword_27F5E04B8, 0x277CFD078);
  v60[0] = v52;
  objc_allocWithZone(MEMORY[0x277CFD0D0]);
  sub_2543A2768();
  *(v0 + 14) = sub_254346FD4(v54, v53, v60);
  OUTLINED_FUNCTION_10_6();
  (*(*(v51 - 8) + 32))(&v0[*(v42 + 160)], v55);
  OUTLINED_FUNCTION_10_6();
  v44 = &v0[*(v43 + 168)];
  *v44 = v56;
  *(v44 + 1) = v57;
  OUTLINED_FUNCTION_10_6();
  v46 = &v0[*(v45 + 176)];
  *v46 = v58;
  *(v46 + 1) = v59;
  OUTLINED_FUNCTION_10_6();
  v48 = &v0[*(v47 + 184)];
  *v48 = v54;
  v48[1] = v53;
  OUTLINED_FUNCTION_86();
}

void sub_254305784()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *v0;
  v2 = (v0 + *(*v0 + 208));
  OUTLINED_FUNCTION_97();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v1[10];
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v7 = v1[13];
  v8 = *(v1[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v9, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437D87C();

  OUTLINED_FUNCTION_38_0();
}

void sub_254305A38()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *v0;
  v2 = (v0 + *(*v0 + 208));
  OUTLINED_FUNCTION_97();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v1[10];
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v7 = v1[13];
  v8 = *(v1[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v9, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437DB58();

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_254305B70()
{
  OUTLINED_FUNCTION_28();
  v1[27] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[28] = v2;
  v4 = *(v3 + 88);
  v1[29] = v4;
  v5 = *(v4 - 8);
  v1[30] = v5;
  v6 = *(v5 + 64) + 15;
  v1[31] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254305C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v56 = v10 + 2;
  v12 = v10[31];
  v14 = v10[27];
  v13 = v10[28];
  v10[23] = v14;
  v15 = v10[30];
  v16 = v11[29];
  v17 = v13[10];
  v53 = v13[13];
  v54 = v13[12];
  v18 = v13[14];
  v11[18] = v17;
  v19 = v17;
  v11[19] = v16;
  v11[20] = v54;
  v11[21] = v53;
  v11[22] = v18;
  v20 = type metadata accessor for CoordinationTransportServer();
  v11[32] = v20;
  extended = sub_2542DF684() & 1;
  *(v11 + 288) = extended;
  v21._countAndFlagsBits = 0x6574617669746361;
  v21._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v21, extended);
  OUTLINED_FUNCTION_8_5();
  v23 = (v14 + *(v22 + 176));
  v25 = *v23;
  v24 = v23[1];
  WitnessTable = swift_getWitnessTable();
  sub_25436BAB8(v25, v24, v20, WitnessTable);
  type metadata accessor for MessageSessionConsumerObserver();
  OUTLINED_FUNCTION_8_5();
  (*(v15 + 16))(v12, v14 + *(v27 + 160), v16);
  OUTLINED_FUNCTION_67();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v19;
  v29[3] = v16;
  v29[4] = v54;
  v29[5] = v53;
  v29[6] = v18;
  v29[7] = v28;
  OUTLINED_FUNCTION_67();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v19;
  v31[3] = v16;
  v31[4] = v54;
  v31[5] = v53;
  v31[6] = v18;
  v31[7] = v30;
  v32 = sub_254349AF0();
  v11[33] = v32;
  v33 = *(v14 + 112);
  OUTLINED_FUNCTION_8_5();
  v35 = (v14 + *(v34 + 184));
  v36 = *v35;
  v37 = v35[1];
  v38 = sub_2543A2858();
  [v33 addSessionConsumerWithSubTopic:v38 delegate:v32 dispatchQueue:*(v14 + 136)];

  OUTLINED_FUNCTION_8_5();
  v40 = *(v39 + 216);
  v41 = *(v14 + v40);
  *(v14 + v40) = v32;
  v42 = v32;

  v11[24] = v14;
  v43._object = 0x80000002543B8720;
  v43._countAndFlagsBits = 0xD000000000000020;
  Logging.ulog(_:extended:)(v43, extended);
  v11[2] = v11;
  v11[3] = sub_254306004;
  v44 = swift_continuation_init();
  v11[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v11[10] = MEMORY[0x277D85DD0];
  v11[11] = 1107296256;
  v11[12] = sub_2542C9210;
  v11[13] = &block_descriptor_1;
  v11[14] = v44;
  [v33 activateWithCompletion_];

  return MEMORY[0x282200938](v56, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_254306004()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  v3 = v2[6];
  v2[34] = v3;
  v4 = v2[27];
  if (v3)
  {
    v5 = sub_254306388;
  }

  else
  {
    v5 = sub_25430611C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25430611C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  *(v0 + 200) = v3;
  v4._object = 0x80000002543B8750;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v4, v1);
  v5 = *(v3 + 120);
  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = sub_2543061E8;
  v7 = *(v0 + 216);

  return sub_25431D598(v7);
}

uint64_t sub_2543061E8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 280);
  v3 = *(v1 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2543062E0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 288);
  v4 = *(v0 + 248);
  *(v0 + 208) = *(v0 + 216);
  v5._object = 0x80000002543B8770;
  v5._countAndFlagsBits = 0xD000000000000027;
  Logging.ulog(_:extended:)(v5, v3);

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_254306388()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  swift_willThrow();

  OUTLINED_FUNCTION_27();
  v5 = v0[34];

  return v4();
}

uint64_t sub_254306400(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_254306420, 0, 0);
}

uint64_t sub_254306420()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_2543064B8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  sub_254307B7C();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25430651C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_25430653C, 0, 0);
}

uint64_t sub_25430653C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2542E7588;
    v3 = v0[5];

    return sub_25430805C();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_254306610()
{
  *(v1 + 104) = v0;
  OUTLINED_FUNCTION_19_3();
  *(v1 + 112) = v2;
  return MEMORY[0x2822009F8](sub_254306664, v3, 0);
}

void sub_254306664()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[7] = v2;
  v3 = v1[10];
  v5 = v1[12];
  v4 = v1[13];
  v38 = v1[11];
  v39 = v1[14];
  v0[2] = v3;
  v6 = v3;
  v0[3] = v38;
  v0[4] = v5;
  v7 = v5;
  v37 = v5;
  v0[5] = v4;
  v0[6] = v39;
  v8 = v4;
  v40 = v4;
  type metadata accessor for CoordinationTransportServer();
  v9 = sub_2542DF684();
  v10._object = 0xEC00000029286574;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v10, v11);
  OUTLINED_FUNCTION_8_5();
  v13 = *(v12 + 192);
  OUTLINED_FUNCTION_97();
  v0[7] = *(v2 + v13);
  v14 = swift_task_alloc();
  v14[2] = v6;
  v14[3] = v38;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v39;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v15, v16);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  OUTLINED_FUNCTION_8_5();
  v18 = *(v17 + 200);
  OUTLINED_FUNCTION_97();
  v0[10] = *(v2 + v18);
  v19 = swift_task_alloc();
  v19[2] = v6;
  v19[3] = v38;
  v19[4] = v37;
  v19[5] = v40;
  v19[6] = v39;
  sub_2543A2768();
  sub_2543A29E8();

  v20 = *(v2 + 128);
  sub_254343434();
  OUTLINED_FUNCTION_8_5();
  v22 = *(v21 + 216);
  v23 = *(v2 + v22);
  *(v2 + v22) = 0;

  OUTLINED_FUNCTION_8_5();
  v25 = (v2 + *(v24 + 208));
  OUTLINED_FUNCTION_97();
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v29 = *(v37 + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v30, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  v31 = sub_25437DC0C();

  v32 = sub_254372808(v31);
  for (i = 0; v32 != i; ++i)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x259C09DA0](i, v31);
    }

    else
    {
      if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v34 = *(v31 + 8 * i + 32);
    }

    v35 = v34;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v34 stopWithNotice_];
  }

  OUTLINED_FUNCTION_27();

  v36();
}

uint64_t sub_254306A5C(uint64_t a1)
{
  sub_2543A1F88();
  sub_2543A2C28();
  v2 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  return sub_2543A2C18();
}

uint64_t sub_254306AF8(uint64_t a1, uint64_t *a2)
{
  v25 = a1;
  v23 = *a2;
  v3 = v23;
  v22 = *(v23 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v21 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_2543A1F78();
  v21 = *(v9 + 16);
  v21(v12, v14, v8);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 24) = *(v3 + 88);
  *(v16 + 32) = *(v23 + 96);
  *(v16 + 48) = *(v3 + 112);
  *(v16 + 56) = a2;
  (*(v9 + 32))(v16 + v15, v12, v8);

  v17 = v25;
  sub_2543A2BE8();
  v21(v12, v14, v8);
  v18 = v24;
  (*(*(v4 - 8) + 16))(v24, v17, v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  v19 = *(*a2 + 192);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_254306E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254306E90, 0, 0);
}

uint64_t sub_254306E90()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_254306F34()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_254306FA0();

  return MEMORY[0x2822009F8](sub_2543095A8, 0, 0);
}

void sub_254306FA0()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v2 = *(v1 + 80);
  v22 = sub_2543A2C28();
  v3 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_31_2(v7, v20);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18_2(v12);

  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v13, v0);
  v14 = sub_2543A35A8();
  MEMORY[0x259C093D0](v14);

  OUTLINED_FUNCTION_29_1();
  v15 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v15);

  v16 = OUTLINED_FUNCTION_28_1();
  v17(v16);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  OUTLINED_FUNCTION_10_6();
  v19 = *(v18 + 192);
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  OUTLINED_FUNCTION_40_0();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543071BC()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 80);
  v2 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  nullsub_1(v1);
  sub_2542FEED4(v7);
  return sub_2543A2C38();
}

uint64_t sub_254307274(uint64_t a1, uint64_t *a2)
{
  v25 = a1;
  v23 = *a2;
  v3 = v23;
  v22 = *(v23 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v21 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_2543A1F78();
  v21 = *(v9 + 16);
  v21(v12, v14, v8);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 24) = *(v3 + 88);
  *(v16 + 32) = *(v23 + 96);
  *(v16 + 48) = *(v3 + 112);
  *(v16 + 56) = a2;
  (*(v9 + 32))(v16 + v15, v12, v8);

  v17 = v25;
  sub_2543A2BE8();
  v21(v12, v14, v8);
  v18 = v24;
  (*(*(v4 - 8) + 16))(v24, v17, v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  v19 = *(*a2 + 200);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v9 + 8))(v14, v8);
}

void sub_2543075E4()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v21[0] = *v3;
  v2 = v21[0];
  v21[1] = v4;
  v5 = sub_2543A1F88();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v17 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  OUTLINED_FUNCTION_67();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  v19 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v2[10];
  *(v20 + 40) = v2[11];
  *(v20 + 48) = *(v21[0] + 96);
  *(v20 + 64) = v2[14];
  *(v20 + 72) = v18;
  (*(v8 + 32))(v20 + v19, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_2542CD000();

  OUTLINED_FUNCTION_86();
}

uint64_t sub_25430780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254307834, 0, 0);
}

uint64_t sub_254307834()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t sub_2543078D8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_254307978();

  return MEMORY[0x2822009F8](sub_254307944, 0, 0);
}

uint64_t sub_254307944()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_27();
  return v1();
}

void sub_254307978()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v2 = *(v1 + 80);
  v22 = sub_2543A2C28();
  v3 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_31_2(v7, v20);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18_2(v12);

  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v13, v0);
  v14 = sub_2543A35A8();
  MEMORY[0x259C093D0](v14);

  OUTLINED_FUNCTION_29_1();
  v15 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v15);

  v16 = OUTLINED_FUNCTION_28_1();
  v17(v16);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  OUTLINED_FUNCTION_10_6();
  v19 = *(v18 + 200);
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  OUTLINED_FUNCTION_40_0();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

void sub_254307B7C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v4 = *(*v0 + 80);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v32 - v6;
  v35 = v0;
  v9 = *(v8 + 88);
  v11 = *(v10 + 96);
  v12 = *(v8 + 112);
  v37._countAndFlagsBits = v4;
  v37._object = v9;
  v32 = v9;
  v34 = v11;
  v38 = v11;
  v39 = v12;
  type metadata accessor for CoordinationTransportServer();
  v13 = sub_2542DF684();
  v14._object = 0x80000002543B8630;
  v14._countAndFlagsBits = 0xD000000000000014;
  Logging.ulog(_:extended:)(v14, v13 & 1);
  OUTLINED_FUNCTION_8_5();
  v16 = v0 + *(v15 + 168);
  v17 = *(v16 + 8);
  (*v16)(v3);
  OUTLINED_FUNCTION_34_1();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000024, 0x80000002543B8670);
  sub_2543A35C8();
  Logging.ulog(_:extended:)(v37, v13 & 1);

  v36 = v3;
  OUTLINED_FUNCTION_8_5();
  v19 = *(v18 + 208);
  swift_beginAccess();
  v20 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v21 = *(v34 + 8);
  OUTLINED_FUNCTION_0_17();
  v23 = sub_2543094B4(v22, &qword_27F5DF368, 0x277CFD0D8);
  v37._countAndFlagsBits = v4;
  v37._object = v20;
  *&v38 = *(&v34 + 1);
  *(&v38 + 1) = v21;
  v39 = v23;
  v24 = type metadata accessor for MemberConnectionCache();
  sub_25437DCA0(&v36, v7, v24);
  swift_endAccess();
  OUTLINED_FUNCTION_8_5();
  v26 = *(v25 + 192);
  v27 = OUTLINED_FUNCTION_97();
  v35 = *(v1 + v26);
  MEMORY[0x28223BE20](v27);
  *&v28 = v4;
  *(&v28 + 1) = v32;
  v29 = v34;
  *(&v32 - 3) = v28;
  *(&v32 - 2) = v29;
  *(&v32 - 2) = v12;
  *(&v32 - 1) = v7;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v30, v31);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v33 + 8))(v7, v4);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_25430805C()
{
  OUTLINED_FUNCTION_28();
  v1[22] = v2;
  v1[23] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[24] = v3;
  v5 = *(v4 + 80);
  v1[25] = v5;
  v6 = sub_2543A30C8();
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v9 = *(v5 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}
id DTTimer.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF520, &qword_24907B5F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249062F28();
  sub_24907735C();
  if (!v1)
  {
    v28 = 0;
    sub_249062FD0();
    sub_2490771BC();
    v11 = v27;
    if (v27 >> 60 == 15)
    {
      LOBYTE(v26) = 1;
      sub_2490771AC();
      if (v12)
      {
        v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v14 = sub_249076E0C();

        v15 = [v13 initWithMTAlarmID_];
LABEL_8:
        v9 = v15;

LABEL_12:
        (*(v4 + 8))(v7, v3);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v9;
      }

      v28 = 2;
      sub_2490771BC();
      v11 = v27;
      if (v27 >> 60 == 15)
      {
        LOBYTE(v26) = 3;
        sub_2490771AC();
        if (!v22)
        {
          v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          goto LABEL_12;
        }

        v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v14 = sub_249076E0C();

        v15 = [v23 initWithMTTimerID_];
        goto LABEL_8;
      }

      v16 = v26;
      sub_249063FF0(0, &qword_27EECF530, 0x277CCAAC8);
      sub_249063FF0(0, &qword_27EECF538, 0x277D29730);
      v25 = sub_249076FCC();
      if (v25)
      {
        v18 = v25;
        v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v20 = sel_initWithMTTimer_;
        goto LABEL_11;
      }

      v9 = type metadata accessor for DTError();
      v24 = "Decode MTTimer failed";
    }

    else
    {
      v16 = v26;
      sub_249063FF0(0, &qword_27EECF530, 0x277CCAAC8);
      sub_249063FF0(0, &qword_27EECF540, 0x277D296D0);
      v17 = sub_249076FCC();
      if (v17)
      {
        v18 = v17;
        v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v20 = sel_initWithMTAlarm_;
LABEL_11:
        v21 = v18;
        v9 = [v19 v20];
        sub_249063024(v16, v11);

        goto LABEL_12;
      }

      v9 = type metadata accessor for DTError();
      v24 = "Decode MTAlarm failed";
    }

    DTError.__allocating_init(_:_:_:)(3, 0xD000000000000015, (v24 - 32) | 0x8000000000000000, 0);
    swift_willThrow();
    sub_249063024(v16, v11);
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_24906063C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D72616C41746DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x72656D6954746DLL;
    }

    else
    {
      v4 = 0x4972656D6954746DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000044;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x496D72616C41746DLL;
    }

    else
    {
      v4 = 0x6D72616C41746DLL;
    }

    if (v3)
    {
      v5 = 0xE900000000000044;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x72656D6954746DLL;
  if (a2 != 2)
  {
    v8 = 0x4972656D6954746DLL;
    v7 = 0xE900000000000044;
  }

  if (a2)
  {
    v2 = 0x496D72616C41746DLL;
    v6 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2490772BC();
  }

  return v11 & 1;
}

uint64_t sub_249060788()
{
  v1 = *v0;
  sub_24907730C();
  sub_249076E5C();

  return sub_24907732C();
}

uint64_t sub_24906084C()
{
  *v0;
  *v0;
  *v0;
  sub_249076E5C();
}

uint64_t sub_2490608FC()
{
  v1 = *v0;
  sub_24907730C();
  sub_249076E5C();

  return sub_24907732C();
}

uint64_t sub_2490609BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249063FA4();
  *a2 = result;
  return result;
}

void sub_2490609EC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D72616C41746DLL;
  v4 = 0xE700000000000000;
  v5 = 0x72656D6954746DLL;
  if (*v1 != 2)
  {
    v5 = 0x4972656D6954746DLL;
    v4 = 0xE900000000000044;
  }

  if (*v1)
  {
    v3 = 0x496D72616C41746DLL;
    v2 = 0xE900000000000044;
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

uint64_t sub_249060A6C()
{
  v1 = 0x6D72616C41746DLL;
  v2 = 0x72656D6954746DLL;
  if (*v0 != 2)
  {
    v2 = 0x4972656D6954746DLL;
  }

  if (*v0)
  {
    v1 = 0x496D72616C41746DLL;
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

uint64_t sub_249060AE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249063FA4();
  *a1 = result;
  return result;
}

uint64_t sub_249060B1C(uint64_t a1)
{
  v2 = sub_249062F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249060B58(uint64_t a1)
{
  v2 = sub_249062F28();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_249060B94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = DTTimer.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id DTTimer.siriContext.getter()
{
  v1 = [v0 mtAlarm];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 siriContext];
    if (v3)
    {
LABEL_3:
      v4 = v3;
      v5 = sub_249076DEC();

      return v5;
    }
  }

  else
  {
    result = [v0 mtTimer];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = [result siriContext];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void __swiftcall DTTimer.setSiriContext(siriContext:)(DTTimer *__return_ptr retstr, Swift::OpaquePointer_optional siriContext)
{
  if (siriContext.value._rawValue)
  {
    if (*(siriContext.value._rawValue + 2))
    {
      rawValue = siriContext.value._rawValue;
    }

    else
    {
      rawValue = 0;
    }
  }

  else
  {
    rawValue = 0;
  }

  v4 = [v2 mtAlarm];
  if (v4)
  {
    v5 = v4;
    [v4 mutableCopy];
    sub_24907702C();
    swift_unknownObjectRelease();
    sub_249063FF0(0, &qword_27EECF550, 0x277D296F0);
    if (swift_dynamicCast())
    {
      v6 = v10;
      if (rawValue)
      {
        rawValue = sub_249076DDC();
      }

      [v10 setSiriContext_];

      [objc_allocWithZone(DTTimer) initWithMTAlarm_];
LABEL_16:

      return;
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = [v9 mtTimer];
  if (v7)
  {
    v5 = v7;
    [v7 mutableCopy];
    sub_24907702C();
    swift_unknownObjectRelease();
    sub_249063FF0(0, &qword_27EECF548, 0x277D29700);
    if (swift_dynamicCast())
    {
      v6 = v10;
      if (rawValue)
      {
        rawValue = sub_249076DDC();
      }

      [v10 setSiriContext_];

      [objc_allocWithZone(DTTimer) initWithMTTimer_];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_18:

  v8 = v9;
}

uint64_t DTTimer.targetReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = DTTimer.siriContext.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v1 mtAlarm];
  if (!v5 && (v5 = [v1 mtTimer]) == 0 || (v5, (v6 = objc_msgSend(v1, sel_mtAlarm)) == 0) && (v6 = objc_msgSend(v1, sel_mtTimer)) == 0)
  {

LABEL_13:
    v11 = sub_249076ACC();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }

  sub_24907708C();
  if (v4[2] && (v7 = sub_249063038(v13), (v8 & 1) != 0))
  {
    sub_24904EA54(v4[7] + 32 * v7, v14);
    sub_249064038(v13);

    if (swift_dynamicCast())
    {
      sub_249076AAC();
    }
  }

  else
  {

    sub_249064038(v13);
  }

  v10 = sub_249076ACC();
  return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
}

id DTTimer.setTargetReference(_:)(uint64_t a1)
{
  v57 = sub_249076B5C();
  v56 = *(v57 - 8);
  v2 = *(v56 + 64);
  (MEMORY[0x28223BE20])();
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249076ACC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF400, &qword_249078780);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  v23 = [v58 mtAlarm];
  if (v23)
  {
    v55 = v4;
    v24 = "COAlarmSiriContextTargetReferenceKey";
  }

  else
  {
    v23 = [v58 mtTimer];
    if (!v23)
    {
      goto LABEL_16;
    }

    v55 = v4;
    v24 = "COTimerSiriContextTargetReferenceKey";
  }

  v25 = v24 - 32;

  v26 = v25 | 0x8000000000000000;
  v27 = DTTimer.siriContext.getter();
  if (v27)
  {
    v64 = v27;
    *&v61 = 0xD000000000000024;
    *(&v61 + 1) = v26;
    v28 = MEMORY[0x277D837D0];
    sub_24907708C();
    sub_2490643F8(a1, v15, &qword_27EECF558, &unk_24907B5F8);
    if ((*(v6 + 48))(v15, 1, v5) == 1)
    {
      v29 = &qword_27EECF558;
      v30 = &unk_24907B5F8;
      v31 = v15;
    }

    else
    {
      sub_249076A5C();
      (*(v6 + 8))(v15, v5);
      v35 = v56;
      v36 = v57;
      if ((*(v56 + 48))(v22, 1, v57) != 1)
      {
        v43 = sub_249076B4C();
        v62 = v28;
        *&v61 = v43;
        *(&v61 + 1) = v44;
        (*(v35 + 8))(v22, v36);
        sub_24904F8FC(&v61, v60);
        v45 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v45;
        sub_249063644(v60, v63, isUniquelyReferenced_nonNull_native);
        sub_249064038(v63);
        v38 = v59;
        goto LABEL_20;
      }

      v29 = &qword_27EECF400;
      v30 = &qword_249078780;
      v31 = v22;
    }

    sub_249064460(v31, v29, v30);
    sub_249063144(v63, &v61);
    sub_249064460(&v61, &qword_27EECF500, &qword_24907B5E0);
    sub_249064038(v63);
    v38 = v64;
LABEL_20:
    v37.value._rawValue = v38;
    DTTimer.setSiriContext(siriContext:)(_118, v37);
    v48 = v47;

    return v48;
  }

  sub_2490643F8(a1, v13, &qword_27EECF558, &unk_24907B5F8);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {

    v32 = &qword_27EECF558;
    v33 = &unk_24907B5F8;
    v34 = v13;
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_249076A5C();
    v39 = v56;
    v40 = v57;
    if ((*(v56 + 48))(v20, 1, v57) != 1)
    {
      v49 = v55;
      (*(v39 + 32))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF560, &qword_24907B608);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24907B5D0;
      *(inited + 32) = 0xD000000000000024;
      *(inited + 40) = v26;
      *(inited + 48) = sub_249076B4C();
      *(inited + 56) = v51;
      v52 = sub_24906408C(inited);
      swift_setDeallocating();
      sub_249064460(inited + 32, &qword_27EECF568, &qword_24907B610);
      v53 = sub_2490617F4(v52);

      v67.value._rawValue = v53;
      DTTimer.setSiriContext(siriContext:)(_118, v67);
      v48 = v54;

      (*(v39 + 8))(v49, v40);
      (*(v6 + 8))(v9, v5);
      return v48;
    }

    (*(v6 + 8))(v9, v5);

    v32 = &qword_27EECF400;
    v33 = &qword_249078780;
    v34 = v20;
  }

  sub_249064460(v34, v32, v33);
LABEL_16:
  v41 = v58;

  return v41;
}

uint64_t sub_2490617F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF598, &qword_24907B7D8);
    v2 = sub_24907714C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_24904F8FC(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_24904F8FC(v34, v35);
    v19 = *(v2 + 40);
    result = sub_24907706C();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_24904F8FC(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t DTTimer.targetAccessory.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  DTTimer.targetReference.getter(&v6 - v2);
  v4 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v3);
  sub_249064460(v3, &qword_27EECF558, &unk_24907B5F8);
  return v4;
}

void __swiftcall DTTimer.setTargetAccessory(accessoryId:)(DTTimer *__return_ptr retstr, Swift::String_optional accessoryId)
{
  object = accessoryId.value._object;
  countAndFlagsBits = accessoryId.value._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  DTTimer.targetReference.getter(v23 - v9);
  v11 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v10);
  v13 = v12;
  sub_249064460(v10, &qword_27EECF558, &unk_24907B5F8);
  if (object)
  {
    if (!v13)
    {
LABEL_8:
      sub_249076ABC();
      sub_249076A9C();
      MEMORY[0x24C1EF900](0x726F737365636361, 0xE900000000000079);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF570, &qword_24907B618);
      v16 = *(sub_249076A2C() - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      *(swift_allocObject() + 16) = xmmword_24907B5D0;
      sub_2490769FC();
      sub_249076A4C();
      v19 = 0;
LABEL_11:
      v20 = sub_249076ACC();
      (*(*(v20 - 8) + 56))(v8, v19, 1, v20);
      DTTimer.setTargetReference(_:)(v8);
      sub_249064460(v8, &qword_27EECF558, &unk_24907B5F8);
      return;
    }

    if (v11 == countAndFlagsBits && v13 == object)
    {
    }

    else
    {
      v15 = sub_2490772BC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v13)
  {

    v19 = 1;
    goto LABEL_11;
  }

  v21 = v23[1];

  v22 = v21;
}

uint64_t static DTTimer.makeTargetReference(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_249076ABC();
    sub_249076A9C();
    MEMORY[0x24C1EF900](0x726F737365636361, 0xE900000000000079);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF570, &qword_24907B618);
    v3 = *(sub_249076A2C() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_24907B5D0;
    sub_2490769FC();
    sub_249076A4C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_249076ACC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void __swiftcall DTTimer.setTargetAccessoryIfNeeded(defaultTargetID:)(DTTimer *__return_ptr retstr, Swift::String defaultTargetID)
{
  object = defaultTargetID._object;
  countAndFlagsBits = defaultTargetID._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  DTTimer.targetReference.getter(v14 - v6);
  _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v7);
  v9 = v8;
  sub_249064460(v7, &qword_27EECF558, &unk_24907B5F8);
  if (v9)
  {

    v11 = v14[1];

    v12 = v11;
  }

  else
  {
    v13.value._countAndFlagsBits = countAndFlagsBits;
    v13.value._object = object;
    DTTimer.setTargetAccessory(accessoryId:)(v10, v13);
  }
}

BOOL DTTimer.isTargeting(accessoryId:alternateAccessoryIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  DTTimer.targetReference.getter(&v20 - v8);
  v10 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v9);
  v12 = v11;
  sub_249064460(v9, &qword_27EECF558, &unk_24907B5F8);
  if (!v12)
  {
    return !a2;
  }

  if (!a2)
  {

    DTTimer.targetReference.getter(v9);
    v15 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v9);
    v17 = v16;
    sub_249064460(v9, &qword_27EECF558, &unk_24907B5F8);
    if (v17)
    {
      v18 = sub_249062280(v15, v17, a3);

      if (v18)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v10 != a1 || v12 != a2)
  {
    v14 = sub_2490772BC();

    return (v14 & 1) != 0;
  }

  return 1;
}

uint64_t sub_249062280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24907730C();
  sub_249076E5C();
  v7 = sub_24907732C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2490772BC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DTTimer.isExpired(before:)()
{
  v1 = [v0 mtAlarm];
  if (v1)
  {
    v2 = v1;
    v3 = MTAlarm.isExpired(before:)();
  }

  else
  {
    v4 = [v0 mtTimer];
    if (!v4)
    {
      v5 = 0;
      return v5 & 1;
    }

    v2 = v4;
    v3 = MTTimer.isExpired(before:)();
  }

  v5 = v3;

  return v5 & 1;
}

uint64_t MTAlarm.isExpired(before:)()
{
  v1 = sub_249076BDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = [v0 lastModifiedDate];
  if (v9)
  {
    v10 = v9;
    sub_249076BCC();

    (*(v2 + 32))(v8, v6, v1);
    if ([v0 isEnabled] & 1) != 0 || (objc_msgSend(v0, sel_repeats))
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_249076BBC();
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t MTTimer.isExpired(before:)()
{
  v1 = sub_249076BDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  if (([v0 state] == 2 || objc_msgSend(v0, sel_state) == 1) && (v9 = objc_msgSend(v0, sel_lastModifiedDate)) != 0)
  {
    v10 = v9;
    sub_249076BCC();

    (*(v2 + 32))(v8, v6, v1);
    v11 = sub_249076BBC();
    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id MTAlarm.targetAccessory.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = sub_249076ACC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 siriContext];
  if (result)
  {
    v14 = result;
    v15 = sub_249076DEC();

    v19[1] = 0xD000000000000024;
    v19[2] = 0x800000024907C4C0;
    sub_24907708C();
    if (*(v15 + 16) && (v16 = sub_249063038(v20), (v17 & 1) != 0))
    {
      sub_24904EA54(*(v15 + 56) + 32 * v16, v21);
      sub_249064038(v20);

      if (swift_dynamicCast())
      {
        sub_249076AAC();

        if ((*(v9 + 48))(v7, 1, v8) != 1)
        {
          (*(v9 + 32))(v12, v7, v8);
          (*(v9 + 16))(v5, v12, v8);
          (*(v9 + 56))(v5, 0, 1, v8);
          v18 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v5);
          sub_249064460(v5, &qword_27EECF558, &unk_24907B5F8);
          (*(v9 + 8))(v12, v8);
          return v18;
        }

        sub_249064460(v7, &qword_27EECF558, &unk_24907B5F8);
      }
    }

    else
    {

      sub_249064038(v20);
    }

    return 0;
  }

  return result;
}

uint64_t MTTimerState.summary.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x646570706F7473;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6573756170;
      case 3:
        return 0x676E696E6E7572;
      case 4:
        return 0x746E756F63;
    }
  }

  v2 = sub_24907727C();
  MEMORY[0x24C1EFD00](v2);

  return 2629695;
}

id MTTimer.targetAccessory.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = sub_249076ACC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 siriContext];
  if (result)
  {
    v14 = result;
    v15 = sub_249076DEC();

    v19[1] = 0xD000000000000024;
    v19[2] = 0x800000024907C4F0;
    sub_24907708C();
    if (*(v15 + 16) && (v16 = sub_249063038(v20), (v17 & 1) != 0))
    {
      sub_24904EA54(*(v15 + 56) + 32 * v16, v21);
      sub_249064038(v20);

      if (swift_dynamicCast())
      {
        sub_249076AAC();

        if ((*(v9 + 48))(v7, 1, v8) != 1)
        {
          (*(v9 + 32))(v12, v7, v8);
          (*(v9 + 16))(v5, v12, v8);
          (*(v9 + 56))(v5, 0, 1, v8);
          v18 = _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(v5);
          sub_249064460(v5, &qword_27EECF558, &unk_24907B5F8);
          (*(v9 + 8))(v12, v8);
          return v18;
        }

        sub_249064460(v7, &qword_27EECF558, &unk_24907B5F8);
      }
    }

    else
    {

      sub_249064038(v20);
    }

    return 0;
  }

  return result;
}

unint64_t sub_249062E58()
{
  result = qword_27EECF4F0;
  if (!qword_27EECF4F0)
  {
    sub_249063FF0(255, &qword_27EECF4E8, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF4F0);
  }

  return result;
}

unint64_t sub_249062EC0()
{
  result = qword_27EECF4F8;
  if (!qword_27EECF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF4F8);
  }

  return result;
}

unint64_t sub_249062F28()
{
  result = qword_27EECF510;
  if (!qword_27EECF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF510);
  }

  return result;
}

unint64_t sub_249062F7C()
{
  result = qword_27EECF518;
  if (!qword_27EECF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF518);
  }

  return result;
}

unint64_t sub_249062FD0()
{
  result = qword_27EECF528;
  if (!qword_27EECF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF528);
  }

  return result;
}

uint64_t sub_249063024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24904E140(a1, a2);
  }

  return a1;
}

unint64_t sub_249063038(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24907706C();

  return sub_24906307C(a1, v5);
}

unint64_t sub_24906307C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2490644C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1EFF00](v9, a1);
      sub_249064038(v9);
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

double sub_249063144@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_249063038(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24906380C();
      v11 = v13;
    }

    sub_249064038(*(v11 + 48) + 40 * v8);
    sub_24904F8FC((*(v11 + 56) + 32 * v8), a2);
    sub_2490634A0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2490631E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF598, &qword_24907B7D8);
  result = sub_24907713C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_24904F8FC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2490644C0(v24, &v38);
        sub_24904EA54(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_24907706C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_24904F8FC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2490634A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24907705C() + 1) & ~v5;
    do
    {
      sub_2490644C0(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_24907706C();
      result = sub_249064038(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_249063644(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_249063038(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24906380C();
      goto LABEL_7;
    }

    sub_2490631E8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_249063038(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2490644C0(a2, v22);
      return sub_249063790(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2490772DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_24904F8FC(a1, v17);
}

_OWORD *sub_249063790(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24904F8FC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_24906380C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF598, &qword_24907B7D8);
  v2 = *v0;
  v3 = sub_24907712C();
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
        v18 = 40 * v17;
        sub_2490644C0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_24904EA54(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_24904F8FC(v22, (*(v4 + 56) + v17));
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

uint64_t _sSo7DTTimerC17DistributedTimersE27accessoryForTargetReferenceySSSg10Foundation13URLComponentsVSgFZ_0(uint64_t a1)
{
  v45 = sub_249076A2C();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF590, &qword_24907B7D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF558, &unk_24907B5F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_249076ACC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2490643F8(a1, v17, &qword_27EECF558, &unk_24907B5F8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_249064460(v17, &qword_27EECF558, &unk_24907B5F8);
    return 0;
  }

  (*(v19 + 32))(v22, v17, v18);
  v23 = sub_249076A8C();
  if (!v24)
  {
    goto LABEL_29;
  }

  if (v23 == 0x2D6B682D69726973 && v24 == 0xEE00746567726174)
  {
  }

  else
  {
    v26 = sub_2490772BC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v40 = v6;
  if (sub_249076A6C() == 0x726F737365636361 && v27 == 0xE900000000000079)
  {

    goto LABEL_15;
  }

  v28 = sub_2490772BC();

  if ((v28 & 1) == 0)
  {
LABEL_29:
    (*(v19 + 8))(v22, v18);
    return 0;
  }

LABEL_15:
  result = sub_249076A3C();
  if (!result)
  {
    goto LABEL_29;
  }

  v30 = result;
  v31 = v45;
  v41 = *(result + 16);
  if (!v41)
  {
LABEL_23:

    v35 = 1;
    v36 = v40;
    v37 = v44;
LABEL_27:
    v38 = v43;
    (*(v2 + 56))(v37, v35, 1, v31);
    sub_2490643F8(v37, v38, &qword_27EECF590, &qword_24907B7D0);
    if ((*(v2 + 48))(v38, 1, v31) != 1)
    {
      (*(v2 + 32))(v36, v38, v31);
      v39 = sub_249076A1C();
      (*(v2 + 8))(v36, v31);
      sub_249064460(v37, &qword_27EECF590, &qword_24907B7D0);
      (*(v19 + 8))(v22, v18);
      return v39;
    }

    sub_249064460(v37, &qword_27EECF590, &qword_24907B7D0);
    goto LABEL_29;
  }

  v32 = 0;
  v42 = v2 + 16;
  while (v32 < *(v30 + 16))
  {
    (*(v2 + 16))(v8, v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v31);
    if (sub_249076A0C() == 0x696669746E656469 && v33 == 0xEA00000000007265)
    {

LABEL_26:

      v37 = v44;
      (*(v2 + 32))(v44, v8, v31);
      v35 = 0;
      v36 = v40;
      goto LABEL_27;
    }

    v34 = sub_2490772BC();

    if (v34)
    {
      v31 = v45;
      goto LABEL_26;
    }

    ++v32;
    v31 = v45;
    result = (*(v2 + 8))(v8, v45);
    if (v41 == v32)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249063FA4()
{
  v0 = sub_24907717C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_249063FF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_24906408C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF5A0, &qword_24907B7E0);
    v3 = sub_24907714C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24904DBE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_2490641A4()
{
  result = qword_27EECF578;
  if (!qword_27EECF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF578);
  }

  return result;
}

unint64_t sub_2490641FC()
{
  result = qword_27EECF580;
  if (!qword_27EECF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF580);
  }

  return result;
}

unint64_t sub_249064254()
{
  result = qword_27EECF588;
  if (!qword_27EECF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF588);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2490643F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_249064460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24906451C()
{
  v0 = sub_249076D6C();
  __swift_allocate_value_buffer(v0, qword_27EED6A08);
  __swift_project_value_buffer(v0, qword_27EED6A08);
  v1 = sub_249050038();
  v2 = *v1;
  v3 = v1[1];

  return sub_249076D5C();
}

id sub_249064758@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) _error];
  *a1 = result;
  return result;
}

void sub_249064878(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t DTTimerClient._requestContext.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v3 = *(v1 + OBJC_IVAR___DTTimerClient__requestContext + 16);
  *a1 = *(v1 + OBJC_IVAR___DTTimerClient__requestContext);
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_249064B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_249076C7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___DTTimerClient__xpcClientCached;
  if (*(a1 + OBJC_IVAR___DTTimerClient__xpcClientCached))
  {
    v9 = *(a1 + OBJC_IVAR___DTTimerClient__xpcClientCached);
  }

  else
  {
    type metadata accessor for DTXPCClient();
    sub_24904EA54(a1 + OBJC_IVAR___DTTimerClient__environmentStorage, v12);
    swift_dynamicCast();
    v12[0] = 0;
    v9 = DTXPCClient.__allocating_init(environment:xpcEndpoint:)(v7, v12);
    v10 = *(a1 + v8);
    *(a1 + v8) = v9;
  }

  *a2 = v9;
}

id sub_249064C74()
{
  v1 = v0;
  v2 = sub_249076C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___DTTimerClient__activateCalled] = 0;
  v7 = OBJC_IVAR___DTTimerClient__clientID;
  *&v1[v7] = CUNextID64();
  *&v1[OBJC_IVAR___DTTimerClient__error] = 0;
  v8 = &v1[OBJC_IVAR___DTTimerClient_eventHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR___DTTimerClient__initTicks;
  *&v1[v9] = sub_249076D1C();
  v1[OBJC_IVAR___DTTimerClient__invalidateCalled] = 0;
  v10 = OBJC_IVAR___DTTimerClient__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF5C0, &unk_24907B820);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v1[v10] = v11;
  v1[OBJC_IVAR___DTTimerClient__monitorMode] = 0;
  v1[OBJC_IVAR___DTTimerClient__monitorSessionStarted] = 0;
  *&v1[OBJC_IVAR___DTTimerClient__timerMap] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR___DTTimerClient__xpcClientCached] = 0;
  _s17DistributedTimers11DTXPCClientC11environment11xpcEndpointAC14CoreUtilsSwift19CUEnvironmentValuesV_AA13DTXPCEndpointVSgtcfcfA__0();
  sub_249063FF0(0, &qword_27EECF6B0, 0x277D85C90);
  sub_249076FFC();
  sub_249076C5C();
  v12 = &v1[OBJC_IVAR___DTTimerClient__environmentStorage];
  v12[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(v3 + 16))(boxed_opaque_existential_0, v6, v2);
  v19 = 0uLL;
  v14 = DTRequestContext.init(endpoint:)(&v19, &v20);
  (*(v3 + 8))(v6, v2, v14);
  v15 = v21;
  v16 = &v1[OBJC_IVAR___DTTimerClient__requestContext];
  *v16 = v20;
  v16[1].n128_u64[0] = v15;
  v18.receiver = v1;
  v18.super_class = DTTimerClient;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_249064F58()
{
  v1 = v0;
  v15 = 0;
  v2 = sub_249076D1C();
  if (v2 >= [v1 _initTicks])
  {
    v3 = sub_249076C1C();
    DTAnalyticsMonitorDetails.init(accessoryType:durationSeconds:error:)(&v15, v3, [v1 _error], v16);
    *&v9[0] = v16[0] & 3;
    *(v9 + 8) = v17;
    *(&v10 + 1) = 0;
    DTAnalyticsLogEvent(_:)(v9);
    v13[2] = v10;
    v13[3] = v11;
    v14 = v12;
    v13[0] = v9[0];
    v13[1] = v9[1];
    sub_24906BED8(v13);
    v4 = [v1 _monitorSessionStarted];
    if (v4)
    {
      v5 = *&v1[OBJC_IVAR___DTTimerClient__lock];
      v6 = MEMORY[0x28223BE20](v4);
      MEMORY[0x28223BE20](v6);
      os_unfair_lock_lock(v5 + 4);
      sub_24906C388(v9);
      os_unfair_lock_unlock(v5 + 4);
      DTXPCClient.monitorStop(client:completionHandler:)(v1, nullsub_1, 0);
    }

    v7 = *&v1[OBJC_IVAR___DTTimerClient__lock];
    v8 = MEMORY[0x28223BE20](v4);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v7 + 4);
    sub_24906BFB4();
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    __break(1u);
  }
}

id sub_24906529C()
{
  v1 = [v0 eventHandler];
  if (v1)
  {
    _Block_release(v1);
    [v0 set:1 monitorMode:?];
  }

  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v2 = sub_249076D6C();
  __swift_project_value_buffer(v2, qword_27EED6A08);
  v3 = v0;
  v4 = sub_249076D4C();
  v5 = sub_249076FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 67109634;
    *(v6 + 4) = [v3 _monitorMode];

    *(v6 + 8) = 2080;
    v8 = *&v3[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v9 = *&v3[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v23[0] = *&v3[OBJC_IVAR___DTTimerClient__requestContext];
    v23[1] = v8;
    v23[2] = v9;
    sub_24906BB20();

    v10 = sub_24907727C();
    v12 = v11;

    v13 = sub_24904D594(v10, v12, v24);

    *(v6 + 10) = v13;
    *(v6 + 18) = 2080;
    v14 = [v3 _activateCalled];
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 0x2970756428202CLL;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_24904D594(v16, v17, v24);

    *(v6 + 20) = v18;
    _os_log_impl(&dword_24904B000, v4, v5, "Activate: monitor=%{BOOL}d %s%s", v6, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F07B0](v7, -1, -1);
    MEMORY[0x24C1F07B0](v6, -1, -1);
  }

  else
  {
  }

  [v3 set:1 activateCalled:?];
  result = [v3 _monitorMode];
  if (result)
  {
    v20 = *&v3[OBJC_IVAR___DTTimerClient__lock];
    v21 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v21);
    os_unfair_lock_lock(v20 + 4);
    sub_24906C388(v23);
    os_unfair_lock_unlock(v20 + 4);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();

    DTXPCClient.monitorStart(client:restart:completionHandler:)(v3, 0, sub_24906C450, v22);
  }

  return result;
}

uint64_t sub_24906562C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall DTTimerClient._monitorStart(restart:)(Swift::Bool restart)
{
  v3 = *&v1[OBJC_IVAR___DTTimerClient__lock];
  os_unfair_lock_lock(v3 + 4);
  sub_24906A4D8(&v5);
  os_unfair_lock_unlock(v3 + 4);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  DTXPCClient.monitorStart(client:restart:completionHandler:)(v1, restart, sub_24906AC2C, v4);
}

uint64_t sub_2490657D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v4 = v3;
  v5 = sub_249076DAC();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_249076DCC();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_249076C7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24904EA54(v4 + OBJC_IVAR___DTTimerClient__environmentStorage, aBlock);
  swift_dynamicCast();
  v18 = sub_249076C4C();
  (*(v14 + 8))(v17, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24906562C;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = v4;
  sub_249076DBC();
  v28 = MEMORY[0x277D84F90];
  sub_24906BCF4(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v12, v8, v20);
  _Block_release(v20);

  (*(v27 + 8))(v8, v5);
  (*(v9 + 8))(v12, v26);
}

void sub_249065BA4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v6 = sub_249076D6C();
  __swift_project_value_buffer(v6, qword_27EED6A08);
  v7 = a2;
  v8 = sub_249076D4C();
  v9 = sub_249076FBC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 7104878;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315650;
    v22 = a1;
    v13 = DTTimerClientEventType.description.getter();
    v15 = sub_24904D594(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = 0xE300000000000000;
    v17 = sub_24904D594(7104878, 0xE300000000000000, &v23);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v10 = sub_2490772EC();
      v16 = v18;
    }

    v19 = sub_24904D594(v10, v16, &v23);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24904B000, v8, v9, "Event: type=%s, timer=%s, error=%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F07B0](v12, -1, -1);
    MEMORY[0x24C1F07B0](v11, -1, -1);
  }

  else
  {
  }

  v20 = [v3 eventHandler];
  if (v20)
  {
    v21 = v20;
    (*(v20 + 2))(v20, a1, 0);
    _Block_release(v21);
  }
}

void sub_249065DF0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = *&Strong[OBJC_IVAR___DTTimerClient__lock];
      v6 = MEMORY[0x28223BE20](Strong);
      MEMORY[0x28223BE20](v6);

      os_unfair_lock_lock(v5 + 4);
      sub_24906C454();
      os_unfair_lock_unlock(v5 + 4);

      v7 = 4;
      v8 = v1;
    }

    else
    {
      v9 = [Strong set:1 monitorSessionStarted:?];
      v10 = *&v4[OBJC_IVAR___DTTimerClient__lock];
      v11 = MEMORY[0x28223BE20](v9);
      MEMORY[0x28223BE20](v11);

      os_unfair_lock_lock(v10 + 4);
      sub_24906C454();
      os_unfair_lock_unlock(v10 + 4);

      v7 = 1;
      v8 = 0;
    }

    sub_249065BA4(v7, v8);
  }
}

void DTTimerClient._monitorEvent(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v6 = sub_249076D6C();
  __swift_project_value_buffer(v6, qword_27EED6A08);

  v7 = sub_249076D4C();
  v8 = sub_249076FBC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[2] = v5;
    v24 = v10;
    *v9 = 136315138;
    v23[0] = v4;
    v23[1] = v3;
    sub_24906B38C();

    v11 = sub_24907727C();
    v13 = v12;

    v14 = sub_24904D594(v11, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24904B000, v7, v8, "Event: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C1F07B0](v10, -1, -1);
    MEMORY[0x24C1F07B0](v9, -1, -1);
  }

  if (v3 <= 0xC)
  {
    if (((1 << v3) & 0x1760) != 0)
    {
      v16 = *&v2[OBJC_IVAR___DTTimerClient__lock];
      MEMORY[0x28223BE20](v15);
      os_unfair_lock_lock(v16 + 4);
      sub_24906B08C(v23);
LABEL_8:
      os_unfair_lock_unlock(v16 + 4);
      goto LABEL_9;
    }

    if (v3 == 7)
    {
      v16 = *&v2[OBJC_IVAR___DTTimerClient__lock];
      MEMORY[0x28223BE20](v15);
      os_unfair_lock_lock(v16 + 4);
      sub_24906AE54(v23);
      goto LABEL_8;
    }
  }

LABEL_9:
  v17 = [v2 eventHandler];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  if (v5)
  {
    if (v5 >> 62)
    {
      v19 = sub_24907711C();
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_13:
        if (v19 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v19; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1EFF40](i, v5);
          }

          else
          {
            v21 = *(v5 + 8 * i + 32);
          }

          v22 = v21;
          (v18)[2](v18, v3, v21);
        }
      }
    }
  }

  else
  {
    (*(v17 + 2))(v17, v3, 0);
  }

  _Block_release(v18);
}

uint64_t sub_2490663B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 _timerMap];
  type metadata accessor for DTTimer(0);
  v4 = sub_249076DEC();

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_249069D28(*(v4 + 16), 0);
  v7 = sub_24906A564(&v9, v6 + 4, v5, v4);
  result = sub_24906C070();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x277D84F90];
  }

  *a2 = v6;
  return result;
}

id sub_249066614@<X0>(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 _timerMap];
  type metadata accessor for DTTimer(0);
  v6 = sub_249076DEC();

  v7 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      result = [*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) *a2];
      if (result)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x24C1EFD60]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_249076EFC();
    }

    result = sub_249076F0C();
    v7 = v17;
  }

  while (v10);
LABEL_6:
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      *a3 = v7;
      return result;
    }

    v10 = *(v6 + 64 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2490667C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_249076DAC();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_249076DCC();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249076C7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24904EA54(v3 + OBJC_IVAR___DTTimerClient__environmentStorage, aBlock);
  swift_dynamicCast();
  v17 = sub_249076C4C();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = v3;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_24906B93C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24906562C;
  aBlock[3] = &block_descriptor_15;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_249076DBC();
  v29 = MEMORY[0x277D84F90];
  sub_24906BCF4(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v11, v7, v21);
  _Block_release(v21);

  (*(v28 + 8))(v7, v4);
  (*(v8 + 8))(v11, v27);
}

void sub_249066B48(void (*a1)(unint64_t, void), uint64_t a2)
{
  if (![v2 _monitorSessionStarted])
  {
    goto LABEL_5;
  }

  v5 = [v2 _timerMap];
  type metadata accessor for DTTimer(0);
  v6 = sub_249076DEC();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_249069D28(*(v6 + 16), 0);
    v9 = sub_24906A564(&v51, (v8 + 32), v7, v6);
    sub_24906C070();
    if (v9 != v7)
    {
      __break(1u);
LABEL_5:
      if (qword_27EED6A00 != -1)
      {
        swift_once();
      }

      v10 = sub_249076D6C();
      __swift_project_value_buffer(v10, qword_27EED6A08);
      v11 = v2;
      v12 = sub_249076D4C();
      v13 = sub_249076FBC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v46.n128_u64[0] = v15;
        *v14 = 136315138;
        v16 = *&v11[OBJC_IVAR___DTTimerClient__requestContext + 8];
        v17 = *&v11[OBJC_IVAR___DTTimerClient__requestContext + 16];
        v51.n128_u64[0] = *&v11[OBJC_IVAR___DTTimerClient__requestContext];
        v51.n128_u64[1] = v16;
        *&v52 = v17;
        sub_24906BB20();

        v18 = sub_24907727C();
        v20 = v19;

        v21 = sub_24904D594(v18, v20, &v46);

        *(v14 + 4) = v21;
        _os_log_impl(&dword_24904B000, v12, v13, "fetchTimers: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x24C1F07B0](v15, -1, -1);
        MEMORY[0x24C1F07B0](v14, -1, -1);
      }

      v22 = *&v11[OBJC_IVAR___DTTimerClient__lock];
      v24 = MEMORY[0x28223BE20](v23);
      MEMORY[0x28223BE20](v24);
      os_unfair_lock_lock(v22 + 4);
      sub_24906C388(&v51);
      os_unfair_lock_unlock(v22 + 4);
      *&v47 = 0;
      v46 = 1uLL;
      BYTE8(v47) = 10;
      v25 = *&v11[OBJC_IVAR___DTTimerClient__requestContext + 8];
      v26 = *&v11[OBJC_IVAR___DTTimerClient__requestContext + 16];
      v50[0] = *&v11[OBJC_IVAR___DTTimerClient__requestContext];
      v50[1] = v25;
      v50[2] = v26;

      DTXPCRequest.init(request:context:)(&v46, v50, &v51);
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = a2;
      v28 = sub_24905B088();

      DTXPCClient.sendNonisolated<A>(request:replyHandler:)(&v46, sub_24906C02C, v27, &type metadata for DTFetchTimersResponse, v28);

      v29 = *(&v47 + 1);
      v30 = v48;
      v31 = v49;

      sub_24904E358(v29, v30, *(&v30 + 1), v31);
      return;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v32 = sub_249076D6C();
  __swift_project_value_buffer(v32, qword_27EED6A08);

  v33 = v2;
  v34 = sub_249076D4C();
  v35 = sub_249076FBC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46.n128_u64[0] = v37;
    *v36 = 134218242;
    if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
    {
      v38 = sub_24907711C();
    }

    else
    {
      v38 = *(v8 + 16);
    }

    *(v36 + 4) = v38;

    *(v36 + 12) = 2080;
    v39 = *&v33[OBJC_IVAR___DTTimerClient__requestContext];
    v40 = *&v33[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v41 = *&v33[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v51.n128_u64[0] = v39;
    v51.n128_u64[1] = v40;
    *&v52 = v41;
    sub_24906BB20();

    v42 = sub_24907727C();
    v44 = v43;

    v45 = sub_24904D594(v42, v44, &v46);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_24904B000, v34, v35, "fetchTimers: cached, timers=%ld, %s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x24C1F07B0](v37, -1, -1);
    MEMORY[0x24C1F07B0](v36, -1, -1);
  }

  else
  {
  }

  a1(v8, 0);
}

void sub_2490671B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for DTTimer(0);
    v5 = sub_249076EEC();
  }

  if (a2)
  {
    v6 = sub_249076B2C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_249067300(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v7 = sub_249076D6C();
  __swift_project_value_buffer(v7, qword_27EED6A08);
  v8 = a1;
  v9 = v3;
  v10 = sub_249076D4C();
  v11 = sub_249076FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = a2;
    v13 = swift_slowAlloc();
    v37 = a3;
    v38.n128_u64[0] = swift_slowAlloc();
    v14 = v38.n128_u64[0];
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v16 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v43.n128_u64[0] = *&v9[OBJC_IVAR___DTTimerClient__requestContext];
    v43.n128_u64[1] = v15;
    *&v44 = v16;
    sub_24906BB20();
    v17 = v8;

    v18 = sub_24907727C();
    v20 = v19;

    v21 = sub_24904D594(v18, v20, &v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_24904B000, v10, v11, "addTimer: %@, %s", v12, 0x16u);
    sub_24906BB74(v13);
    v22 = v13;
    a2 = v36;
    MEMORY[0x24C1F07B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v23 = v14;
    a3 = v37;
    MEMORY[0x24C1F07B0](v23, -1, -1);
    v24 = v12;
    v25 = 0x27EECF000;
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {

    v25 = 0x27EECF000uLL;
  }

  v27 = *&v9[OBJC_IVAR___DTTimerClient__lock];
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock(v27 + 4);
  sub_24906C388(&v43);
  os_unfair_lock_unlock(v27 + 4);
  *&v39 = 0;
  v38 = v8;
  BYTE8(v39) = 0;
  v29 = &v9[*(v25 + 1480)];
  v30 = *(v29 + 1);
  v31 = *(v29 + 2);
  v42[0] = *v29;
  v42[1] = v30;
  v42[2] = v31;

  v32 = v8;

  DTXPCRequest.init(request:context:)(&v38, v42, &v43);
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  DTXPCClient.send(request:completionHandler:)(&v38, a2, a3);

  v33 = *(&v39 + 1);
  v34 = v40;
  v35 = v41;

  sub_24904E358(v33, v34, *(&v34 + 1), v35);
}

void sub_249067690(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_249076B2C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2490676F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v7 = sub_249076D6C();
  __swift_project_value_buffer(v7, qword_27EED6A08);
  v8 = a1;
  v9 = v3;
  v10 = sub_249076D4C();
  v11 = sub_249076FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = a2;
    v13 = swift_slowAlloc();
    v37 = a3;
    v38.n128_u64[0] = swift_slowAlloc();
    v14 = v38.n128_u64[0];
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v16 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v43.n128_u64[0] = *&v9[OBJC_IVAR___DTTimerClient__requestContext];
    v43.n128_u64[1] = v15;
    *&v44 = v16;
    sub_24906BB20();
    v17 = v8;

    v18 = sub_24907727C();
    v20 = v19;

    v21 = sub_24904D594(v18, v20, &v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_24904B000, v10, v11, "updateTimer: %@, %s", v12, 0x16u);
    sub_24906BB74(v13);
    v22 = v13;
    a2 = v36;
    MEMORY[0x24C1F07B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v23 = v14;
    a3 = v37;
    MEMORY[0x24C1F07B0](v23, -1, -1);
    v24 = v12;
    v25 = 0x27EECF000;
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {

    v25 = 0x27EECF000uLL;
  }

  v27 = *&v9[OBJC_IVAR___DTTimerClient__lock];
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock(v27 + 4);
  sub_24906C388(&v43);
  os_unfair_lock_unlock(v27 + 4);
  *&v39 = 0;
  v38 = v8;
  BYTE8(v39) = 1;
  v29 = &v9[*(v25 + 1480)];
  v30 = *(v29 + 1);
  v31 = *(v29 + 2);
  v42[0] = *v29;
  v42[1] = v30;
  v42[2] = v31;

  v32 = v8;

  DTXPCRequest.init(request:context:)(&v38, v42, &v43);
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  DTXPCClient.send(request:completionHandler:)(&v38, a2, a3);

  v33 = *(&v39 + 1);
  v34 = v40;
  v35 = v41;

  sub_24904E358(v33, v34, *(&v34 + 1), v35);
}

void sub_249067A88(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v7 = sub_249076D6C();
  __swift_project_value_buffer(v7, qword_27EED6A08);
  v8 = a1;
  v9 = v3;
  v10 = sub_249076D4C();
  v11 = sub_249076FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = a2;
    v13 = swift_slowAlloc();
    v37 = a3;
    v38.n128_u64[0] = swift_slowAlloc();
    v14 = v38.n128_u64[0];
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v16 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v43.n128_u64[0] = *&v9[OBJC_IVAR___DTTimerClient__requestContext];
    v43.n128_u64[1] = v15;
    *&v44 = v16;
    sub_24906BB20();
    v17 = v8;

    v18 = sub_24907727C();
    v20 = v19;

    v21 = sub_24904D594(v18, v20, &v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_24904B000, v10, v11, "removeTimer: %@, %s", v12, 0x16u);
    sub_24906BB74(v13);
    v22 = v13;
    a2 = v36;
    MEMORY[0x24C1F07B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v23 = v14;
    a3 = v37;
    MEMORY[0x24C1F07B0](v23, -1, -1);
    v24 = v12;
    v25 = 0x27EECF000;
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {

    v25 = 0x27EECF000uLL;
  }

  v27 = *&v9[OBJC_IVAR___DTTimerClient__lock];
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock(v27 + 4);
  sub_24906C388(&v43);
  os_unfair_lock_unlock(v27 + 4);
  *&v39 = 0;
  v38 = v8;
  BYTE8(v39) = 2;
  v29 = &v9[*(v25 + 1480)];
  v30 = *(v29 + 1);
  v31 = *(v29 + 2);
  v42[0] = *v29;
  v42[1] = v30;
  v42[2] = v31;

  v32 = v8;

  DTXPCRequest.init(request:context:)(&v38, v42, &v43);
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  DTXPCClient.send(request:completionHandler:)(&v38, a2, a3);

  v33 = *(&v39 + 1);
  v34 = v40;
  v35 = v41;

  sub_24904E358(v33, v34, *(&v34 + 1), v35);
}

void sub_249067E1C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v7 = sub_249076D6C();
  __swift_project_value_buffer(v7, qword_27EED6A08);
  v8 = a1;
  v9 = v3;
  v10 = sub_249076D4C();
  v11 = sub_249076FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = a2;
    v13 = swift_slowAlloc();
    v37 = a3;
    v38.n128_u64[0] = swift_slowAlloc();
    v14 = v38.n128_u64[0];
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v16 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v43.n128_u64[0] = *&v9[OBJC_IVAR___DTTimerClient__requestContext];
    v43.n128_u64[1] = v15;
    *&v44 = v16;
    sub_24906BB20();
    v17 = v8;

    v18 = sub_24907727C();
    v20 = v19;

    v21 = sub_24904D594(v18, v20, &v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_24904B000, v10, v11, "snoozeTimer: %@, %s", v12, 0x16u);
    sub_24906BB74(v13);
    v22 = v13;
    a2 = v36;
    MEMORY[0x24C1F07B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v23 = v14;
    a3 = v37;
    MEMORY[0x24C1F07B0](v23, -1, -1);
    v24 = v12;
    v25 = 0x27EECF000;
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {

    v25 = 0x27EECF000uLL;
  }

  v27 = *&v9[OBJC_IVAR___DTTimerClient__lock];
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock(v27 + 4);
  sub_24906C388(&v43);
  os_unfair_lock_unlock(v27 + 4);
  *&v39 = 0;
  v38 = v8;
  BYTE8(v39) = 3;
  v29 = &v9[*(v25 + 1480)];
  v30 = *(v29 + 1);
  v31 = *(v29 + 2);
  v42[0] = *v29;
  v42[1] = v30;
  v42[2] = v31;

  v32 = v8;

  DTXPCRequest.init(request:context:)(&v38, v42, &v43);
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  DTXPCClient.send(request:completionHandler:)(&v38, a2, a3);

  v33 = *(&v39 + 1);
  v34 = v40;
  v35 = v41;

  sub_24904E358(v33, v34, *(&v34 + 1), v35);
}

void sub_2490681B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v7 = sub_249076D6C();
  __swift_project_value_buffer(v7, qword_27EED6A08);
  v8 = a1;
  v9 = v3;
  v10 = sub_249076D4C();
  v11 = sub_249076FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = a2;
    v13 = swift_slowAlloc();
    v37 = a3;
    v38.n128_u64[0] = swift_slowAlloc();
    v14 = v38.n128_u64[0];
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 8];
    v16 = *&v9[OBJC_IVAR___DTTimerClient__requestContext + 16];
    v43.n128_u64[0] = *&v9[OBJC_IVAR___DTTimerClient__requestContext];
    v43.n128_u64[1] = v15;
    *&v44 = v16;
    sub_24906BB20();
    v17 = v8;

    v18 = sub_24907727C();
    v20 = v19;

    v21 = sub_24904D594(v18, v20, &v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_24904B000, v10, v11, "dismissTimer: %@, %s", v12, 0x16u);
    sub_24906BB74(v13);
    v22 = v13;
    a2 = v36;
    MEMORY[0x24C1F07B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v23 = v14;
    a3 = v37;
    MEMORY[0x24C1F07B0](v23, -1, -1);
    v24 = v12;
    v25 = 0x27EECF000;
    MEMORY[0x24C1F07B0](v24, -1, -1);
  }

  else
  {

    v25 = 0x27EECF000uLL;
  }

  v27 = *&v9[OBJC_IVAR___DTTimerClient__lock];
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock(v27 + 4);
  sub_24906C388(&v43);
  os_unfair_lock_unlock(v27 + 4);
  *&v39 = 0;
  v38 = v8;
  BYTE8(v39) = 4;
  v29 = &v9[*(v25 + 1480)];
  v30 = *(v29 + 1);
  v31 = *(v29 + 2);
  v42[0] = *v29;
  v42[1] = v30;
  v42[2] = v31;

  v32 = v8;

  DTXPCRequest.init(request:context:)(&v38, v42, &v43);
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  DTXPCClient.send(request:completionHandler:)(&v38, a2, a3);

  v33 = *(&v39 + 1);
  v34 = v40;
  v35 = v41;

  sub_24904E358(v33, v34, *(&v34 + 1), v35);
}

uint64_t sub_249068544(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t DTTimerClient.diagnostics(request:)(_BYTE *a1)
{
  *(v2 + 144) = v1;
  *(v2 + 66) = *a1;
  return MEMORY[0x2822009F8](sub_249068614, 0, 0);
}

uint64_t sub_249068614()
{
  v27 = v0;
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v1 = sub_249076D6C();
  __swift_project_value_buffer(v1, qword_27EED6A08);
  v2 = sub_249076D4C();
  v3 = sub_249076FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23.n128_u64[0] = v6;
    *v5 = 136315138;
    *(v0 + 65) = v4;
    sub_24906BBDC();
    v7 = sub_24907727C();
    v9 = sub_24904D594(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24904B000, v2, v3, "diagnostics: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C1F07B0](v6, -1, -1);
    MEMORY[0x24C1F07B0](v5, -1, -1);
  }

  v10 = *(v0 + 144);
  v11 = *(v10 + OBJC_IVAR___DTTimerClient__lock);
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_24906C3BC;
  *(v13 + 24) = v12;
  os_unfair_lock_lock(v11 + 4);
  sub_24906C388(&v23);
  os_unfair_lock_unlock(v11 + 4);
  v14 = *(v0 + 66);
  v15 = *(v0 + 144);
  *(v0 + 152) = v23.n128_u64[0];

  v24 = 0;
  v23 = v14;
  v25 = 9;
  v16 = *(v15 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v17 = *(v15 + OBJC_IVAR___DTTimerClient__requestContext + 16);
  v26[0] = *(v15 + OBJC_IVAR___DTTimerClient__requestContext);
  v26[1] = v16;
  v26[2] = v17;

  DTXPCRequest.init(request:context:)(&v23, v26, v0 + 16);
  v18 = *(v0 + 64);
  v19 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v19;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = v18;
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  v21 = sub_24905B354();
  *v20 = v0;
  v20[1] = sub_249068918;

  return DTXPCClient.send<A>(request:)(v0 + 128, v0 + 72, &type metadata for DTShowResponse, v21);
}

uint64_t sub_249068918()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v20 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);

    sub_24904E358(v7, v8, v9, v10);

    v11 = sub_249068AD0;
  }

  else
  {
    v12 = *(v2 + 152);
    v13 = *(v2 + 80);
    v14 = *(v2 + 88);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v17 = *(v2 + 112);
    v18 = *(v2 + 120);

    sub_24904E358(v15, v16, v17, v18);

    v11 = sub_249068AB4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t DTTimerClient.echo(message:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_249068B0C, 0, 0);
}

uint64_t sub_249068B0C()
{
  v38 = v0;
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = sub_249076D6C();
  __swift_project_value_buffer(v3, qword_27EED6A08);

  v4 = v1;
  v5 = sub_249076D4C();
  v6 = sub_249076FBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34.n128_u64[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_24904D594(v9, v7, &v34);
    *(v10 + 12) = 2080;
    v12 = *(v8 + OBJC_IVAR___DTTimerClient__requestContext + 8);
    v13 = *(v8 + OBJC_IVAR___DTTimerClient__requestContext + 16);
    *(v0 + 128) = *(v8 + OBJC_IVAR___DTTimerClient__requestContext);
    *(v0 + 136) = v12;
    *(v0 + 144) = v13;
    sub_24906BB20();

    v14 = sub_24907727C();
    v16 = v15;
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);

    v19 = sub_24904D594(v14, v16, &v34);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_24904B000, v5, v6, "echo: message=%s, %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F07B0](v11, -1, -1);
    MEMORY[0x24C1F07B0](v10, -1, -1);
  }

  v20 = *(v0 + 184);
  v21 = *(v20 + OBJC_IVAR___DTTimerClient__lock);
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;
  v23 = swift_task_alloc();
  *(v23 + 16) = sub_24906C3BC;
  *(v23 + 24) = v22;
  os_unfair_lock_lock(v21 + 4);
  sub_24906C388(&v34);
  os_unfair_lock_unlock(v21 + 4);
  v24 = *(v0 + 176);
  v25 = *(v0 + 184);
  v26 = *(v0 + 168);
  *(v0 + 192) = v34.n128_u64[0];

  v34.n128_u64[0] = v26;
  v34.n128_u64[1] = v24;
  v35 = 0;
  v36 = 5;
  v27 = *(v25 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v28 = *(v25 + OBJC_IVAR___DTTimerClient__requestContext + 16);
  v37[0] = *(v25 + OBJC_IVAR___DTTimerClient__requestContext);
  v37[1] = v27;
  v37[2] = v28;

  DTXPCRequest.init(request:context:)(&v34, v37, v0 + 16);
  v29 = *(v0 + 64);
  v30 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v30;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = v29;
  v31 = swift_task_alloc();
  *(v0 + 200) = v31;
  v32 = sub_24905AE10();
  *v31 = v0;
  v31[1] = sub_249068EB0;

  return DTXPCClient.send<A>(request:)(v0 + 152, v0 + 72, &type metadata for DTEchoResponse, v32);
}

uint64_t sub_249068EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v20 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);

    sub_24904E358(v7, v8, v9, v10);

    v11 = sub_249069068;
  }

  else
  {
    v12 = *(v2 + 192);
    v13 = *(v2 + 80);
    v14 = *(v2 + 88);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v17 = *(v2 + 112);
    v18 = *(v2 + 120);

    sub_24904E358(v15, v16, v17, v18);

    v11 = sub_24906904C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2490690A0()
{
  v35 = v0;
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_249076D6C();
  __swift_project_value_buffer(v2, qword_27EED6A08);
  v3 = v1;
  v4 = sub_249076D4C();
  v5 = sub_249076FBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31.n128_u64[0] = v8;
    *v7 = 136315138;
    v9 = v6 + OBJC_IVAR___DTTimerClient__requestContext;
    v10 = *(v6 + OBJC_IVAR___DTTimerClient__requestContext);
    v11 = *(v6 + OBJC_IVAR___DTTimerClient__requestContext + 8);
    v12 = *(v9 + 16);
    *(v0 + 128) = v10;
    *(v0 + 136) = v11;
    *(v0 + 144) = v12;
    sub_24906BB20();

    v13 = sub_24907727C();
    v15 = v14;
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);

    v18 = sub_24904D594(v13, v15, &v31);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_24904B000, v4, v5, "show, %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C1F07B0](v8, -1, -1);
    MEMORY[0x24C1F07B0](v7, -1, -1);
  }

  v19 = *(v0 + 168);
  v20 = *(v19 + OBJC_IVAR___DTTimerClient__lock);
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  v22 = swift_task_alloc();
  *(v22 + 16) = sub_24906C3BC;
  *(v22 + 24) = v21;
  os_unfair_lock_lock(v20 + 4);
  sub_24906C388(&v31);
  os_unfair_lock_unlock(v20 + 4);
  v23 = *(v0 + 168);
  *(v0 + 176) = v31.n128_u64[0];

  v32 = 0;
  v31 = 0xC1uLL;
  v33 = 9;
  v24 = *(v23 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v25 = *(v23 + OBJC_IVAR___DTTimerClient__requestContext + 16);
  v34[0] = *(v23 + OBJC_IVAR___DTTimerClient__requestContext);
  v34[1] = v24;
  v34[2] = v25;

  DTXPCRequest.init(request:context:)(&v31, v34, v0 + 16);
  v26 = *(v0 + 64);
  v27 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v27;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = v26;
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  v29 = sub_24905B354();
  *v28 = v0;
  v28[1] = sub_2490693FC;

  return DTXPCClient.send<A>(request:)(v0 + 152, v0 + 72, &type metadata for DTShowResponse, v29);
}

uint64_t sub_2490693FC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v20 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);

    sub_24904E358(v7, v8, v9, v10);

    v11 = sub_249069598;
  }

  else
  {
    v12 = *(v2 + 176);
    v13 = *(v2 + 80);
    v14 = *(v2 + 88);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v17 = *(v2 + 112);
    v18 = *(v2 + 120);

    sub_24904E358(v15, v16, v17, v18);

    v11 = sub_24906C420;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t DTTimerClientStatusFlags.description.getter(char a1)
{
  v2 = sub_249076CBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_249076CAC();
  if (a1)
  {
    sub_249076E3C();
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_249076E3C();
  if ((a1 & 4) != 0)
  {
LABEL_4:
    sub_249076E3C();
  }

LABEL_5:
  v7 = v10;
  v8 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v8 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v7 = 1701736270;
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_249069B28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_249069B8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_249069BBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_249069BE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_249069CE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24906BE14(a1);

  *a2 = v3;
  return result;
}

void *sub_249069D28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF680, &unk_24907BB70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

id sub_249069DB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF670, &qword_24907BB68);
  v2 = *v0;
  v3 = sub_24907712C();
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

uint64_t sub_249069F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF670, &qword_24907BB68);
  v39 = a2;
  result = sub_24907713C();
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
      sub_24907730C();
      sub_249076E5C();
      result = sub_24907732C();
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

void *sub_24906A1C0(void *a1, int64_t a2, char a3)
{
  result = sub_24906A1E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24906A1E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF688, &qword_24907BB80);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF690, &qword_24907BB88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24906A328(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24907705C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24907730C();

      sub_249076E5C();
      v13 = sub_24907732C();

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

uint64_t sub_24906A4F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_24906A564(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_24906A6B8()
{
  v1 = sub_249076C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___DTTimerClient__activateCalled] = 0;
  v6 = OBJC_IVAR___DTTimerClient__clientID;
  *&v0[v6] = CUNextID64();
  *&v0[OBJC_IVAR___DTTimerClient__error] = 0;
  v7 = &v0[OBJC_IVAR___DTTimerClient_eventHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR___DTTimerClient__initTicks;
  *&v0[v8] = sub_249076D1C();
  v0[OBJC_IVAR___DTTimerClient__invalidateCalled] = 0;
  v9 = OBJC_IVAR___DTTimerClient__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF5C0, &unk_24907B820);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v0[v9] = v10;
  v0[OBJC_IVAR___DTTimerClient__monitorMode] = 0;
  v0[OBJC_IVAR___DTTimerClient__monitorSessionStarted] = 0;
  *&v0[OBJC_IVAR___DTTimerClient__timerMap] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___DTTimerClient__xpcClientCached] = 0;
  _s17DistributedTimers11DTXPCClientC11environment11xpcEndpointAC14CoreUtilsSwift19CUEnvironmentValuesV_AA13DTXPCEndpointVSgtcfcfA__0();
  sub_249076FDC();
  sub_249076C5C();
  v11 = &v0[OBJC_IVAR___DTTimerClient__environmentStorage];
  v11[3] = v1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(v2 + 16))(boxed_opaque_existential_0, v5, v1);
  v18 = 0uLL;
  v13 = DTRequestContext.init(endpoint:)(&v18, &v19);
  (*(v2 + 8))(v5, v1, v13);
  v14 = v20;
  v15 = &v0[OBJC_IVAR___DTTimerClient__requestContext];
  *v15 = v19;
  v15[1].n128_u64[0] = v14;
  v17.receiver = v0;
  v17.super_class = DTTimerClient;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_24906A8CC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_249076C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR___DTTimerClient__activateCalled] = 0;
  v11 = OBJC_IVAR___DTTimerClient__clientID;
  *&v3[v11] = CUNextID64();
  *&v3[OBJC_IVAR___DTTimerClient__error] = 0;
  v12 = &v3[OBJC_IVAR___DTTimerClient_eventHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR___DTTimerClient__initTicks;
  *&v3[v13] = sub_249076D1C();
  v3[OBJC_IVAR___DTTimerClient__invalidateCalled] = 0;
  v14 = OBJC_IVAR___DTTimerClient__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF5C0, &unk_24907B820);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v3[v14] = v15;
  v3[OBJC_IVAR___DTTimerClient__monitorMode] = 0;
  v3[OBJC_IVAR___DTTimerClient__monitorSessionStarted] = 0;
  *&v3[OBJC_IVAR___DTTimerClient__timerMap] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___DTTimerClient__xpcClientCached] = 0;
  _s17DistributedTimers11DTXPCClientC11environment11xpcEndpointAC14CoreUtilsSwift19CUEnvironmentValuesV_AA13DTXPCEndpointVSgtcfcfA__0();
  sub_249076FDC();
  sub_249076C5C();
  v16 = &v3[OBJC_IVAR___DTTimerClient__environmentStorage];
  v16[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(v7 + 16))(boxed_opaque_existential_0, v10, v6);
  v23.n128_u64[0] = a2;
  v23.n128_u64[1] = a3;
  v18 = DTRequestContext.init(endpoint:)(&v23, &v24);
  (*(v7 + 8))(v10, v6, v18);
  v19 = v25;
  v20 = &v3[OBJC_IVAR___DTTimerClient__requestContext];
  *v20 = v24;
  v20[1].n128_u64[0] = v19;
  v22.receiver = v3;
  v22.super_class = DTTimerClient;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_24906AAF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24906AB64()
{
  result = qword_27EECF620;
  if (!qword_27EECF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EECF6F0, &qword_24907BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF620);
  }

  return result;
}

uint64_t sub_24906ABF4()
{
  MEMORY[0x24C1F0840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24906AC34()
{
  v1 = *(v0 + 16);
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v2 = sub_249076D6C();
  __swift_project_value_buffer(v2, qword_27EED6A08);
  v3 = v1;
  v4 = sub_249076D4C();
  v5 = sub_249076FBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [v3 _invalidateCalled];
    v9 = v8 == 0;
    if (v8)
    {
      v10 = 0x297075642820;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    v12 = sub_24904D594(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_24904B000, v4, v5, "Invalidate%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C1F07B0](v7, -1, -1);
    MEMORY[0x24C1F07B0](v6, -1, -1);
  }

  [v3 set:1 invalidateCalled:?];
  if ([v3 _monitorMode])
  {
    sub_249064F58();
    [v3 set:0 monitorMode:?];
  }

  result = [v3 _invalidateCalled];
  if (result)
  {
    sub_249065BA4(2, 0);

    return [v3 setEventHandler_];
  }

  return result;
}

void sub_24906AE54(BOOL *a1@<X8>)
{
  v20 = a1;
  v22 = *(v1 + 32);
  if (v22)
  {
    v2 = *(v1 + 40);
    v3 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24907711C())
    {
      v21 = v3;
      v5 = 4;
      while (1)
      {
        v8 = v5 - 4;
        if ((v22 & 0xC000000000000001) == 0)
        {
          break;
        }

        v9 = MEMORY[0x24C1EFF40](v5 - 4, v22);
        v10 = v5 - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }

LABEL_10:
        v23 = v9;
        v11 = [v9 identifier];
        v12 = sub_249076E1C();
        v14 = v13;

        v15 = v2;
        v16 = [v2 _timerMap];
        type metadata accessor for DTTimer(0);
        v17 = sub_249076DEC();

        v18 = sub_24904DBE4(v12, v14);
        LOBYTE(v16) = v19;

        if (v16)
        {
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_249069DB0();
          }

          v6 = *(*(v17 + 48) + 16 * v18 + 8);

          sub_24906A328(v18, v17);
        }

        v3 = v21;
        v2 = v15;
        v7 = sub_249076DDC();

        [v15 set:v7 timerMap:?];

        ++v5;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      if (v8 >= *(v3 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v22 + 8 * v5);
      v10 = v5 - 3;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_10;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }
  }

LABEL_18:
  *v20 = v22 == 0;
}

void sub_24906B08C(BOOL *a1@<X8>)
{
  v35 = *(v1 + 32);
  if (!v35)
  {
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = *(v1 + 40);
  v3 = (v35 & 0xFFFFFFFFFFFFFF8);
  if (v35 >> 62)
  {
LABEL_27:
    v4 = sub_24907711C();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_28:
    *a1 = v35 == 0;
    return;
  }

  v4 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_4:
  v5 = 4;
  v6 = MEMORY[0x277D837D0];
  v33 = v3;
  v34 = isUniquelyReferenced_nonNull_native;
  v32 = v4;
  while (1)
  {
    v10 = v5 - 4;
    if ((v35 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1EFF40](v5 - 4, v35);
    }

    else
    {
      if (v10 >= v3[2])
      {
        goto LABEL_24;
      }

      v11 = *(v35 + 8 * v5);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v36 = v5 - 3;
    v13 = [v11 identifier];
    v14 = sub_249076E1C();
    v3 = v15;

    v37 = v12;
    v16 = [isUniquelyReferenced_nonNull_native _timerMap];
    type metadata accessor for DTTimer(0);
    v17 = v6;
    v18 = sub_249076DEC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_24904DBE4(v14, v3);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_249069DB0();
      if (v24)
      {
LABEL_5:

        v7 = v18[7];
        v8 = *(v7 + 8 * v20);
        v3 = v37;
        *(v7 + 8 * v20) = v37;

        goto LABEL_6;
      }
    }

LABEL_18:
    v18[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v18[6] + 16 * v20);
    *v27 = v14;
    v27[1] = v3;
    v3 = v37;
    *(v18[7] + 8 * v20) = v37;
    v28 = v18[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_26;
    }

    v18[2] = v30;
LABEL_6:
    v6 = v17;
    v9 = sub_249076DDC();

    isUniquelyReferenced_nonNull_native = v34;
    [v34 set:v9 timerMap:?];

    ++v5;
    v3 = v33;
    if (v36 == v32)
    {
      goto LABEL_28;
    }
  }

  sub_249069F1C(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_24904DBE4(v14, v3);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  sub_2490772DC();
  __break(1u);
}

unint64_t sub_24906B38C()
{
  result = qword_27EECF628;
  if (!qword_27EECF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF628);
  }

  return result;
}

void sub_24906B474(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_24904DBE4(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_249069F1C(v17, v5 & 1);
    v19 = *a3;
    v12 = sub_24904DBE4(v8, v7);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_2490772DC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v21 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v21[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v21[7] + 8 * v12) = v11;
    v27 = v21[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v21[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_249069DB0();
  v12 = v25;
  v21 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = v12;

  v23 = v21[7];
  v24 = *(v23 + 8 * v22);
  *(v23 + 8 * v22) = v11;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v32 = *v5;
      v33 = *a3;

      v8 = v32;
      v34 = sub_24904DBE4(v7, v6);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v16 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v16)
      {
        goto LABEL_23;
      }

      v11 = v35;
      if (v33[3] < v38)
      {
        sub_249069F1C(v38, 1);
        v39 = *a3;
        v34 = sub_24904DBE4(v7, v6);
        if ((v11 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v41 = *a3;
      if (v11)
      {
        v29 = v34;

        v30 = v41[7];
        v31 = *(v30 + 8 * v29);
        *(v30 + 8 * v29) = v8;
      }

      else
      {
        v41[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v41[6] + 16 * v34);
        *v42 = v7;
        v42[1] = v6;
        *(v41[7] + 8 * v34) = v8;
        v43 = v41[2];
        v16 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v41[2] = v44;
      }

      v5 += 3;
      if (!--v18)
      {
        return;
      }
    }
  }
}

unint64_t sub_24906B6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF670, &qword_24907BB68);
    v3 = sub_24907714C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24904DBE4(v5, v6);
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

uint64_t sub_24906B8FC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24906B93C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_249066B48(v1, v2);
}

void sub_24906B968()
{
  if (qword_27EED6A00 != -1)
  {
    swift_once();
  }

  v0 = sub_249076D6C();
  __swift_project_value_buffer(v0, qword_27EED6A08);
  v1 = sub_249076D4C();
  v2 = sub_249076FBC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24904B000, v1, v2, "fetchTimers sync", v3, 2u);
    MEMORY[0x24C1F07B0](v3, -1, -1);
  }

  type metadata accessor for DTXPCClient();
  v9.n128_u64[0] = 0;
  v8 = 1uLL;
  v9.n128_u8[8] = 10;
  v16[0] = 0uLL;
  DTRequestContext.init(endpoint:)(v16, &v14);
  v12 = v14;
  v13 = v15;
  DTXPCRequest.init(request:context:)(&v8, &v12, v16);
  v8 = v16[0];
  v9 = v16[1];
  v10 = v16[2];
  v11 = v17;
  v4 = sub_24905B088();
  static DTXPCClient.sendSync<A>(request:)(&v8, &type metadata for DTFetchTimersResponse, v4);
  v5 = v9.n128_u64[1];
  v6 = v10;
  v7 = v11;

  sub_24904E358(v5, v6.n128_i64[0], v6.n128_i64[1], v7);
}

unint64_t sub_24906BB20()
{
  result = qword_27EECF630;
  if (!qword_27EECF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF630);
  }

  return result;
}

uint64_t sub_24906BB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF638, &qword_24907B830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24906BBDC()
{
  result = qword_27EECF640;
  if (!qword_27EECF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF640);
  }

  return result;
}

uint64_t sub_24906BC50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24906BC70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_24906BCF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24906BE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24906BE4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_24906BE94@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void sub_24906BF2C()
{
  v1 = *(v0 + 16);
  sub_24906B6EC(MEMORY[0x277D84F90]);
  type metadata accessor for DTTimer(0);
  v2 = sub_249076DDC();

  [v1 set:v2 timerMap:?];
}

uint64_t sub_24906BFB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24906BFF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24906C02C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  if (a1[1])
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
    v4 = 0;
  }

  return v2(v5, v4);
}

void sub_24906C078()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_249076B2C();
  [v2 set:v3 error:?];

  sub_24906B6EC(MEMORY[0x277D84F90]);
  type metadata accessor for DTTimer(0);
  v4 = sub_249076DDC();

  [v2 set:v4 timerMap:?];
}

void sub_24906C120()
{
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  [v4 set:0 error:?];
  v5 = v3;
  if (v3 >> 62)
  {
    v22 = sub_24907711C();
    v5 = v3;
    v6 = v22;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = v5;
      v29 = MEMORY[0x277D84F90];
      v8 = &v29;
      sub_24906A1C0(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_19;
      }

      v25 = v1;
      v26 = v4;
      v9 = 0;
      v10 = v29;
      v11 = v7;
      v27 = v7 & 0xC000000000000001;
      v28 = v7;
      v12 = v6;
      do
      {
        if (v27)
        {
          v13 = MEMORY[0x24C1EFF40](v9, v11);
        }

        else
        {
          v13 = *(v11 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = [v13 identifier];
        v16 = sub_249076E1C();
        v18 = v17;

        v29 = v10;
        v20 = v10[2];
        v19 = v10[3];
        if (v20 >= v19 >> 1)
        {
          sub_24906A1C0((v19 > 1), v20 + 1, 1);
          v10 = v29;
        }

        ++v9;
        v10[2] = v20 + 1;
        v21 = &v10[3 * v20];
        v21[4] = v16;
        v21[5] = v18;
        v21[6] = v14;
        v11 = v28;
      }

      while (v12 != v9);
      v2 = v25;
      v4 = v26;
      goto LABEL_14;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF670, &qword_24907BB68);
    v23 = sub_24907714C();
    goto LABEL_15;
  }

  v23 = MEMORY[0x277D84F98];
LABEL_15:
  v29 = v23;
  sub_24906B474(v10, 1, &v29);
  v8 = v2;
  if (!v2)
  {

    type metadata accessor for DTTimer(0);
    v24 = sub_249076DDC();

    [v4 set:v24 timerMap:?];

    return;
  }

LABEL_19:

  __break(1u);
}

uint64_t sub_24906C470()
{
  v0 = sub_249076D6C();
  __swift_allocate_value_buffer(v0, qword_27EED7038);
  __swift_project_value_buffer(v0, qword_27EED7038);
  v1 = sub_249050038();
  v2 = *v1;
  v3 = v1[1];

  return sub_249076D5C();
}

uint64_t DTXPCClient.unownedExecutor.getter()
{
  v0 = sub_249076C4C();
  v1 = sub_24907700C();

  return v1;
}

uint64_t DTXPCClient.__allocating_init(environment:xpcEndpoint:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = *a2;
  swift_unknownObjectRelease();
  *(v7 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__invalidateCalled) = 0;
  *(v7 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap) = MEMORY[0x277D84F98];
  DTXPCCoder.init()((v7 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder));
  *(v7 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection) = 0;
  v9 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v10 = sub_249076C7C();
  (*(*(v10 - 8) + 32))(v7 + v9, a1, v10);
  *(v7 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint) = 0;
  return v7;
}

uint64_t DTXPCClient.init(environment:xpcEndpoint:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__invalidateCalled) = 0;
  *(v2 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap) = MEMORY[0x277D84F98];
  DTXPCCoder.init()((v2 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder));
  *(v2 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection) = 0;
  v5 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v6 = sub_249076C7C();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint) = 0;
  return v2;
}

Swift::Void __swiftcall DTXPCClient.invalidate()()
{
  *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__invalidateCalled) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
  if (v1)
  {
    xpc_connection_cancel(v1);
  }
}

uint64_t DTXPCClient.monitorStart(client:restart:completionHandler:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6A0, &qword_24907BBA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v26 = sub_249076C4C();
  v15 = sub_249076F6C();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = v25;
  *(v17 + 48) = a4;
  sub_2490643F8(v14, v12, &qword_27EECF6A0, &qword_24907BBA0);
  v18 = (*(v16 + 48))(v12, 1, v15);

  v19 = a1;

  if (v18 == 1)
  {
    sub_249064460(v12, &qword_27EECF6A0, &qword_24907BBA0);
  }

  else
  {
    sub_249076F5C();
    (*(v16 + 8))(v12, v15);
  }

  v20 = sub_249073358(&qword_27EECF6A8, sub_24906D1F8);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_24907BBB0;
  *(v21 + 24) = v17;
  v27 = 6;
  v28 = 0;
  v22 = v26;
  v29 = v26;
  v30 = v20;

  v23 = v22;
  swift_task_create();
  sub_249064460(v14, &qword_27EECF6A0, &qword_24907BBA0);
}

uint64_t sub_24906CA04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a2;
  v9 = sub_249076DAC();
  v6[20] = v9;
  v10 = *(v9 - 8);
  v6[21] = v10;
  v11 = *(v10 + 64) + 15;
  v6[22] = swift_task_alloc();
  v12 = sub_249076DCC();
  v6[23] = v12;
  v13 = *(v12 - 8);
  v6[24] = v13;
  v14 = *(v13 + 64) + 15;
  v6[25] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[26] = v15;
  *v15 = v6;
  v15[1] = sub_24906CB78;

  return DTXPCClient._monitorStart(client:restart:)((v6 + 14), a3, a4);
}

uint64_t sub_24906CB78()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_24906CEB8;
  }

  else
  {
    v3 = sub_24906CC8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24906CC8C()
{
  v1 = v0[25];
  v2 = v0[22];
  v17 = v0[24];
  v18 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[14];
  v8 = v0[17] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v16 = sub_249076C4C();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v7;
  v0[12] = sub_24907552C;
  v0[13] = v9;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24906562C;
  v0[11] = &block_descriptor_121;
  v10 = _Block_copy(v0 + 8);

  sub_249076DBC();
  v0[16] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v1, v2, v10);
  _Block_release(v10);

  (*(v4 + 8))(v2, v3);
  (*(v17 + 8))(v1, v18);
  v11 = v0[13];

  v12 = v0[25];
  v13 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24906CEB8()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v18 = v0[24];
  v19 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v17 = sub_249076C4C();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v1;
  v0[6] = sub_249075458;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24906562C;
  v0[5] = &block_descriptor_114;
  v10 = _Block_copy(v0 + 2);

  v11 = v1;
  sub_249076DBC();
  v0[15] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v2, v3, v10);
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  v12 = v0[7];

  v13 = v0[25];
  v14 = v0[22];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24906D0F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24906D13C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2490755E4;

  return sub_24906CA04(v7, v2, v3, v4, v6, v5);
}

unint64_t sub_24906D1F8()
{
  result = qword_27EECF6B0;
  if (!qword_27EECF6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EECF6B0);
  }

  return result;
}

uint64_t DTXPCClient._monitorStart(client:restart:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 65) = a3;
  *(v4 + 96) = a1;
  v5 = *v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6B8, &qword_24907BBD0) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = sub_249073358(&qword_27EECF6C0, type metadata accessor for DTXPCClient);
  v8 = sub_249076F1C();
  *(v4 + 136) = v8;
  *(v4 + 144) = v7;

  return MEMORY[0x2822009F8](sub_24906D35C, v8, v7);
}

uint64_t sub_24906D35C()
{
  v21 = v0;
  if ((*(v0 + 65) & 1) == 0)
  {
    v2 = *(v0 + 112);
    v1 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *&v3[OBJC_IVAR___DTTimerClient__clientID];
    type metadata accessor for DTTimerClient(0);
    v5 = v3;
    sub_249076D3C();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
    (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
    swift_beginAccess();
    sub_24906D764(v1, v4);
    swift_endAccess();
  }

  v7 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  DTMonitorContext.init(clientID:)(*(v9 + OBJC_IVAR___DTTimerClient__clientID), &v17);
  v17.n128_u64[1] = 0;
  v18 = 0;
  v19 = 6;
  v10 = *(v9 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v11 = *(v9 + OBJC_IVAR___DTTimerClient__requestContext + 16);
  v20[0] = *(v9 + OBJC_IVAR___DTTimerClient__requestContext);
  v20[1] = v10;
  v20[2] = v11;

  DTXPCRequest.init(request:context:)(&v17, v20, v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v0 + 16;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_24906D588;
  v15 = *(v0 + 96);

  return MEMORY[0x2822008A0](v15, v8, v7, 0x71657228646E6573, 0xEE00293A74736575, sub_249072A78, v12, &type metadata for DTMonitorStartResponse);
}

uint64_t sub_24906D588()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[17];
    v5 = v3[18];

    return MEMORY[0x2822009F8](sub_24906D6E8, v4, v5);
  }

  else
  {
    v6 = v3[19];
    v7 = v3[15];
    sub_249072A80((v3 + 2));

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_24906D6E8()
{
  v1 = v0[19];
  v2 = v0[15];
  sub_249072A80((v0 + 2));

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_24906D764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6B8, &qword_24907BBD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_249064460(a1, &qword_27EECF6B8, &qword_24907BBD0);
    v15 = *v3;
    v16 = sub_249073E9C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_249074690();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_249074234(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_249064460(v9, &qword_27EECF6B8, &qword_24907BBD0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2490743F8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t DTXPCClient.send<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  v6 = *v4;
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);
  *(v5 + 104) = sub_249073358(&qword_27EECF6C0, type metadata accessor for DTXPCClient);
  v9 = sub_249076F1C();
  *(v5 + 112) = v9;
  *(v5 + 120) = v8;

  return MEMORY[0x2822009F8](sub_24906DAB0, v9, v8);
}

uint64_t sub_24906DAB0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v1;
  *(v3 + 40) = v0 + 16;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_24906DBB4;
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  return MEMORY[0x2822008A0](v6, v1, v2, 0x71657228646E6573, 0xEE00293A74736575, sub_249072AD4, v3, v7);
}

uint64_t sub_24906DBB4()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[14];
    v5 = v3[15];

    return MEMORY[0x2822009F8](sub_24906DCEC, v4, v5);
  }

  else
  {
    v6 = v3[16];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24906DCEC()
{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t DTXPCClient.monitorStop(client:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6A0, &qword_24907BBA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v26 = *(a1 + OBJC_IVAR___DTTimerClient__clientID);
  v13 = *(a1 + OBJC_IVAR___DTTimerClient__requestContext);
  v14 = *(a1 + OBJC_IVAR___DTTimerClient__requestContext + 8);
  v15 = *(a1 + OBJC_IVAR___DTTimerClient__requestContext + 16);

  v29 = sub_249076C4C();
  v16 = sub_249076F6C();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v12, 1, 1, v16);
  v18 = swift_allocObject();
  v20 = v26;
  v19 = v27;
  v18[2] = v4;
  v18[3] = v20;
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = v15;
  v18[7] = v19;
  v18[8] = v28;
  sub_2490643F8(v12, v10, &qword_27EECF6A0, &qword_24907BBA0);
  LODWORD(a1) = (*(v17 + 48))(v10, 1, v16);

  if (a1 == 1)
  {
    sub_249064460(v10, &qword_27EECF6A0, &qword_24907BBA0);
  }

  else
  {
    sub_249076F5C();
    (*(v17 + 8))(v10, v16);
  }

  v21 = sub_249073358(&qword_27EECF6A8, sub_24906D1F8);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_24907BBF0;
  *(v22 + 24) = v18;
  v30 = 6;
  v31 = 0;
  v23 = v29;
  v32 = v29;
  v33 = v21;

  v24 = v23;
  swift_task_create();
  sub_249064460(v12, &qword_27EECF6A0, &qword_24907BBA0);
}

uint64_t sub_24906E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[19] = a2;
  v13 = sub_249076DAC();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v15 = *(v14 + 64) + 15;
  v8[24] = swift_task_alloc();
  v16 = sub_249076DCC();
  v8[25] = v16;
  v17 = *(v16 - 8);
  v8[26] = v17;
  v18 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[14] = a4;
  v8[15] = a5;
  v8[16] = a6;
  v19 = swift_task_alloc();
  v8[28] = v19;
  *v19 = v8;
  v19[1] = sub_24906E1F4;

  return DTXPCClient._monitorStop(clientID:context:)(a3, (v8 + 14));
}

uint64_t sub_24906E1F4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_24906E52C;
  }

  else
  {
    v3 = sub_24906E308;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24906E308()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v17 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v16 = sub_249076C4C();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  v0[12] = sub_249074BD8;
  v0[13] = v9;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24906562C;
  v0[11] = &block_descriptor_95;
  v10 = _Block_copy(v0 + 8);

  sub_249076DBC();
  v0[18] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v1, v3, v10);
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v17);
  v11 = v0[13];

  v12 = v0[27];
  v13 = v0[24];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24906E52C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v18 = v0[26];
  v19 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v17 = sub_249076C4C();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v1;
  v0[6] = sub_249074BA8;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24906562C;
  v0[5] = &block_descriptor_88;
  v10 = _Block_copy(v0 + 2);

  v11 = v1;
  sub_249076DBC();
  v0[17] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v2, v3, v10);
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  v12 = v0[7];

  v13 = v0[27];
  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

uint64_t DTXPCClient._monitorStop(clientID:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = *v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6B8, &qword_24907BBD0) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = *a2;
  *(v3 + 136) = *(a2 + 16);
  *(v3 + 144) = sub_249073358(&qword_27EECF6C0, type metadata accessor for DTXPCClient);
  v8 = sub_249076F1C();
  *(v3 + 152) = v8;
  *(v3 + 160) = v7;

  return MEMORY[0x2822009F8](sub_24906E894, v8, v7);
}

uint64_t sub_24906E894()
{
  v17 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_24906D764(v6, v7);
  swift_endAccess();
  DTMonitorContext.init(clientID:)(v7, &v13);
  v13.n128_u64[1] = 0;
  v14 = 0;
  v15 = 7;
  v16[0] = v4;
  v16[1] = v3;
  v16[2] = v2;

  DTXPCRequest.init(request:context:)(&v13, v16, (v0 + 2));
  v9 = swift_task_alloc();
  v0[21] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v0 + 2;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_24906EA74;

  return MEMORY[0x2822008A0](v11, v5, v1, 0x71657228646E6573, 0xEE00293A74736575, sub_249072DE4, v9, &type metadata for DTAckResponse);
}

uint64_t sub_24906EA74()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_24906EC00;
  }

  else
  {
    v7 = v2[21];
    sub_249072A80((v2 + 2));

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_24906EB9C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24906EB9C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24906EC00()
{
  v1 = v0[21];
  v2 = v0[14];
  sub_249072A80((v0 + 2));

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t DTXPCClient._monitorEvent(_:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D0, &qword_24907BC08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v44 - v15);
  v17 = a1[1];
  v55 = *a1;
  v44 = a1[2];
  v45 = v17;
  v18 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v47 = v4 + 16;
  v56 = (v4 + 32);
  v52 = v4;
  v53 = v19;
  v54 = (v4 + 8);

  v26 = 0;
  v51 = v8;
  v48 = v14;
  v49 = v3;
  v46 = v16;
  while (v23)
  {
    v27 = v26;
LABEL_14:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v52;
    v33 = *(*(v53 + 48) + 8 * v31);
    v3 = v49;
    v34 = v50;
    (*(v52 + 16))(v50, *(v53 + 56) + *(v52 + 72) * v31, v49);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
    v36 = *(v35 + 48);
    v37 = v48;
    *v48 = v33;
    v38 = v34;
    v14 = v37;
    (*(v32 + 32))(&v37[v36], v38, v3);
    (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
    v29 = v27;
    v8 = v51;
    v16 = v46;
LABEL_15:
    sub_249072DEC(v14, v16);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
    if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
    {
    }

    v40 = *v16;
    (*v56)(v8, v16 + *(v39 + 48), v3);
    if (v40 == v55)
    {
      v41 = sub_249076D2C();
      if (v41)
      {
        v42 = v41;
        v57[0] = v55;
        v57[1] = v45;
        v57[2] = v44;
        DTTimerClient._monitorEvent(_:)(v57);
      }
    }

    result = (*v54)(v8, v3);
    v26 = v29;
  }

  if (v24 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
      (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
      v23 = 0;
      goto LABEL_15;
    }

    v23 = *(v20 + 8 * v27);
    ++v26;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24906F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v13 = *(v6 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
  v12 = *(v6 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder + 8);
  if (qword_27EED7030 != -1)
  {
    swift_once();
  }

  v14 = sub_249076D6C();
  __swift_project_value_buffer(v14, qword_27EED7038);
  sub_249072E5C(a1, &v52);
  v15 = sub_249076D4C();
  v16 = sub_249076F9C();
  sub_249072A80(a1);
  v45 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56 = v38;
    *v37 = 136315138;
    v17 = *(a1 + 16);
    v52 = *a1;
    v53 = v17;
    v54 = *(a1 + 32);
    v55 = *(a1 + 48);
    sub_249072E5C(a1, &aBlock);
    sub_249072FA8();
    v36 = v15;
    v34 = sub_24907727C();
    v40 = v9;
    v19 = v18;
    v20 = *(&v53 + 1);
    v21 = v54;
    v35 = v16;
    v22 = v13;
    v23 = *(&v54 + 1);
    v24 = v55;

    v25 = v21;
    v8 = v7;
    v26 = v23;
    v13 = v22;
    sub_24904E358(v20, v25, v26, v24);
    v27 = sub_24904D594(v34, v19, &v56);
    v9 = v40;

    *(v37 + 4) = v27;
    _os_log_impl(&dword_24904B000, v36, v35, "XPC request start: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x24C1F07B0](v38, -1, -1);
    MEMORY[0x24C1F07B0](v37, -1, -1);
  }

  else
  {
  }

  v28 = sub_24906F880();
  if (!v8)
  {
    v29 = v28;
    aBlock = v13;
    v47 = v12;
    v30 = *(v45 + 16);
    v52 = *v45;
    v53 = v30;
    v54 = *(v45 + 32);
    v55 = *(v45 + 48);
    sub_249072EB8();
    v41 = DTXPCCoder.encode<A>(_:)();
    v39 = sub_249076C4C();
    v31 = swift_allocObject();
    *(v31 + 16) = v13;
    *(v31 + 24) = v12;
    v32 = *(v45 + 16);
    *(v31 + 32) = *v45;
    *(v31 + 48) = v32;
    *(v31 + 64) = *(v45 + 32);
    *(v31 + 80) = *(v45 + 48);
    *(v31 + 88) = a2;
    *(v31 + 96) = a3;
    *(v31 + 104) = v9;
    v50 = a5;
    v51 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_249070250;
    v49 = a6;
    v33 = _Block_copy(&aBlock);
    sub_249072E5C(v45, &v52);

    xpc_connection_send_message_with_reply(v29, v41, v39, v33);
    _Block_release(v33);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void DTXPCClient.send<A>(request:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v10 = a1[1];
  v52 = *a1;
  v53 = v10;
  v54 = a1[2];
  v55 = *(a1 + 48);
  v11 = *(v5 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
  v12 = *(v5 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder + 8);
  if (qword_27EED7030 != -1)
  {
    swift_once();
  }

  v13 = sub_249076D6C();
  __swift_project_value_buffer(v13, qword_27EED7038);
  sub_249072E5C(&v52, &v48);
  v14 = sub_249076D4C();
  v15 = sub_249076F9C();
  sub_249072A80(&v52);
  if (os_log_type_enabled(v14, v15))
  {
    v37 = a3;
    buf = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56 = v36;
    *buf = 136315138;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_249072E5C(&v52, &aBlock);
    sub_249072FA8();
    v33 = sub_24907727C();
    log = v14;
    v17 = v16;
    v18 = v11;
    v20 = *(&v49 + 1);
    v19 = v50;
    v21 = v12;
    v22 = *(&v50 + 1);
    v23 = v51;

    v24 = v20;
    v11 = v18;
    v25 = v22;
    v12 = v21;
    sub_24904E358(v24, v19, v25, v23);
    v26 = sub_24904D594(v33, v17, &v56);
    v7 = v6;

    *(buf + 4) = v26;
    _os_log_impl(&dword_24904B000, log, v15, "XPC request start: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x24C1F07B0](v36, -1, -1);
    a3 = v37;
    MEMORY[0x24C1F07B0](buf, -1, -1);
  }

  else
  {
  }

  v27 = sub_24906F880();
  if (!v7)
  {
    v28 = v27;
    aBlock = v11;
    v43 = v12;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_249072EB8();
    v29 = DTXPCCoder.encode<A>(_:)();
    replyq = sub_249076C4C();
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;
    *(v30 + 32) = v11;
    *(v30 + 40) = v12;
    v31 = v53;
    *(v30 + 48) = v52;
    *(v30 + 64) = v31;
    *(v30 + 80) = v54;
    *(v30 + 96) = v55;
    *(v30 + 104) = a2;
    *(v30 + 112) = a3;
    *(v30 + 120) = v8;
    v46 = sub_249072F7C;
    v47 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_249070250;
    v45 = &block_descriptor_0;
    v32 = _Block_copy(&aBlock);
    sub_249072E5C(&v52, &v48);

    xpc_connection_send_message_with_reply(v28, v29, replyq, v32);
    _Block_release(v32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

_xpc_connection_s *sub_24906F880()
{
  v1 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection;
  if (*(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection))
  {
    mach_service = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
  }

  else
  {
    v3 = v0;
    if (*(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint))
    {
      v4 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint);
      v5 = swift_unknownObjectRetain();
      mach_service = xpc_connection_create_from_endpoint(v5);
      swift_unknownObjectRetain();
      v6 = sub_249076C4C();
      xpc_connection_set_target_queue(mach_service, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = sub_249050060();
      v8 = *v7;
      v9 = v7[1];

      v10 = sub_249076C4C();
      v11 = sub_249076E2C();

      mach_service = xpc_connection_create_mach_service((v11 + 32), v10, 0);

      swift_unknownObjectRetain();
    }

    v12 = *(v3 + v1);
    *(v3 + v1) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    swift_weakInit();
    v16[4] = sub_2490734D4;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_249070250;
    v16[3] = &block_descriptor_73;
    v14 = _Block_copy(v16);

    xpc_connection_set_event_handler(mach_service, v14);
    _Block_release(v14);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return mach_service;
}

uint64_t sub_24906FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a6;
  v68 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF708, &unk_24907BCF8);
  v15 = sub_24907733C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v69 = a7;
  v70 = a8;
  v71 = a2;
  v72 = a3;
  v73 = a1;
  v23 = v22;
  v24 = v14;
  v26 = v25;
  sub_24907009C(sub_249073450, v24, &v61 - v20);
  (*(v26 + 16))(v19, v21, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    if (qword_27EED7030 != -1)
    {
      swift_once();
    }

    v28 = sub_249076D6C();
    __swift_project_value_buffer(v28, qword_27EED7038);
    sub_249072E5C(a4, &v76);
    v29 = v27;
    v30 = sub_249076D4C();
    v31 = sub_249076FAC();
    sub_249072A80(a4);

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75 = v64;
      *v32 = 136315394;
      v33 = *(a4 + 16);
      v76 = *a4;
      v77 = v33;
      v78 = *(a4 + 32);
      v79 = *(a4 + 48);
      sub_249072E5C(a4, v74);
      sub_249072FA8();
      v63 = v30;
      v34 = sub_24907727C();
      v65 = v26;
      v36 = v35;
      LODWORD(v62) = v31;
      v66 = v23;
      v37 = *(&v77 + 1);
      v39 = *(&v78 + 1);
      v38 = v78;
      v40 = v79;

      sub_24904E358(v37, v38, v39, v40);
      v41 = sub_24904D594(v34, v36, &v75);
      v26 = v65;

      *(v32 + 4) = v41;
      *(v32 + 12) = 2080;
      swift_getErrorValue();
      v42 = sub_2490772EC();
      v44 = sub_24904D594(v42, v43, &v75);
      v23 = v66;

      *(v32 + 14) = v44;
      v45 = v63;
      _os_log_impl(&dword_24904B000, v63, v62, "### Request failed: %s, error=%s", v32, 0x16u);
      v46 = v64;
      swift_arrayDestroy();
      MEMORY[0x24C1F07B0](v46, -1, -1);
      MEMORY[0x24C1F07B0](v32, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EED7030 != -1)
    {
      swift_once();
    }

    v47 = sub_249076D6C();
    __swift_project_value_buffer(v47, qword_27EED7038);
    sub_249072E5C(a4, &v76);
    v48 = sub_249076D4C();
    v49 = sub_249076F9C();
    sub_249072A80(a4);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75 = v64;
      *v50 = 136315138;
      v51 = *(a4 + 16);
      v76 = *a4;
      v77 = v51;
      v78 = *(a4 + 32);
      v79 = *(a4 + 48);
      sub_249072E5C(a4, v74);
      sub_249072FA8();
      LODWORD(v63) = v49;
      v62 = sub_24907727C();
      v65 = v26;
      v53 = v52;
      v54 = *(&v77 + 1);
      v55 = v78;
      v66 = v23;
      v56 = *(&v78 + 1);
      v57 = v79;

      sub_24904E358(v54, v55, v56, v57);
      v58 = sub_24904D594(v62, v53, &v75);
      v26 = v65;

      *(v50 + 4) = v58;
      v23 = v66;
      _os_log_impl(&dword_24904B000, v48, v63, "XPC request succeeded: %s", v50, 0xCu);
      v59 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x24C1F07B0](v59, -1, -1);
      MEMORY[0x24C1F07B0](v50, -1, -1);
    }

    (*(v26 + 8))(v19, v23);
  }

  v68(v21);
  return (*(v26 + 8))(v21, v23);
}

uint64_t sub_24907009C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24907733C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_249070250(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2490702B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF748, &qword_24907BD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  (*(v6 + 16))(v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_24906F0D8(a3, sub_249074DE4, v11, &unk_285C1CCE8, sub_249074F08, &block_descriptor_107);
}

uint64_t sub_249070444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF740, &qword_24907BD20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  (*(v6 + 16))(v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_24906F0D8(a3, sub_249074B80, v11, &unk_285C1CA90, sub_2490733A0, &block_descriptor_61);
}

uint64_t sub_2490705D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF708, &unk_24907BCF8);
  v9 = sub_249076F4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  v14 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v14;
  v19[2] = *(a3 + 32);
  v20 = *(a3 + 48);
  (*(v10 + 16))(&v18[-v12], a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v10 + 32))(v16 + v15, v13, v9);
  DTXPCClient.send<A>(request:replyHandler:)(v19, sub_249074CB4, v16, a4, a5);
}

uint64_t sub_2490707A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24907733C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_249076F2C();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_249076F3C();
  }
}

uint64_t DTXPCClient.sendNonisolated<A>(request:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6A0, &qword_24907BBA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = a1[1];
  v36 = *a1;
  v37 = v18;
  v38 = a1[2];
  v39 = *(a1 + 48);
  v30 = sub_249076C4C();
  v19 = sub_249076F6C();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v17, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v6;
  v22 = v37;
  *(v21 + 40) = v36;
  *(v21 + 56) = v22;
  *(v21 + 72) = v38;
  *(v21 + 88) = v39;
  *(v21 + 96) = v29;
  *(v21 + 104) = a3;
  sub_2490643F8(v17, v15, &qword_27EECF6A0, &qword_24907BBA0);
  LODWORD(a1) = (*(v20 + 48))(v15, 1, v19);

  sub_249072E5C(&v36, v35);

  if (a1 == 1)
  {
    sub_249064460(v15, &qword_27EECF6A0, &qword_24907BBA0);
  }

  else
  {
    sub_249076F5C();
    (*(v20 + 8))(v15, v19);
  }

  v23 = sub_249073358(&qword_27EECF6A8, sub_24906D1F8);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_24907BC20;
  *(v24 + 24) = v21;
  v31 = 6;
  v32 = 0;
  v25 = v30;
  v33 = v30;
  v34 = v23;

  v26 = v25;
  swift_task_create();
  sub_249064460(v17, &qword_27EECF6A0, &qword_24907BBA0);
}

uint64_t sub_249070D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 152) = a6;
  *(v7 + 160) = a7;
  *(v7 + 136) = a4;
  *(v7 + 144) = a5;
  *(v7 + 128) = a2;
  v9 = sub_249076DAC();
  *(v7 + 168) = v9;
  v10 = *(v9 - 8);
  *(v7 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  v12 = sub_249076DCC();
  *(v7 + 192) = v12;
  v13 = *(v12 - 8);
  *(v7 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v15 = *(a3 + 16);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v15;
  *(v7 + 48) = *(a3 + 32);
  *(v7 + 64) = *(a3 + 48);
  type metadata accessor for DTXPCClient();
  sub_249073358(&qword_27EECF6C0, type metadata accessor for DTXPCClient);
  v17 = sub_249076F1C();

  return MEMORY[0x2822009F8](sub_249070EA8, v17, v16);
}

uint64_t sub_249070EA8()
{
  v1 = *(v0 + 128);
  DTXPCClient.send<A>(request:replyHandler:)((v0 + 16), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 216) = 0;
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_249070F78()
{
  v1 = v0[26];
  v2 = v0[27];
  v19 = v0[25];
  v20 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v17 = *(v0 + 19);
  v8 = v0[16] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v18 = sub_249076C4C();
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  v0[13] = sub_249073440;
  v0[14] = v9;
  v0[9] = MEMORY[0x277D85DD0];
  v0[10] = 1107296256;
  v0[11] = sub_24906562C;
  v0[12] = &block_descriptor_67;
  v10 = _Block_copy(v0 + 9);

  v11 = v2;
  sub_249076DBC();
  v0[15] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v1, v3, v10);
  _Block_release(v10);

  (*(v4 + 8))(v3, v5);
  (*(v19 + 8))(v1, v20);
  v12 = v0[14];

  v13 = v0[26];
  v14 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2490711C4(void (*a1)(char *), uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF708, &unk_24907BCF8);
  v5 = sub_24907733C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  *(&v12 - v8) = a3;
  swift_storeEnumTagMultiPayload();
  v10 = a3;
  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t DTXPCClient.send(request:completionHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6A0, &qword_24907BBA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v29 = a1[2];
  v30 = *(a1 + 48);
  v16 = sub_249076C4C();
  v17 = sub_249076F6C();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v14, 1, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  v20 = v28;
  *(v19 + 24) = v27;
  *(v19 + 40) = v20;
  *(v19 + 56) = v29;
  *(v19 + 72) = v30;
  *(v19 + 80) = a2;
  *(v19 + 88) = a3;
  sub_2490643F8(v14, v12, &qword_27EECF6A0, &qword_24907BBA0);
  LODWORD(a1) = (*(v18 + 48))(v12, 1, v17);

  sub_249072E5C(&v27, v26);

  if (a1 == 1)
  {
    sub_249064460(v12, &qword_27EECF6A0, &qword_24907BBA0);
  }

  else
  {
    sub_249076F5C();
    (*(v18 + 8))(v12, v17);
  }

  v21 = sub_249073358(&qword_27EECF6A8, sub_24906D1F8);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_24907BC38;
  *(v22 + 24) = v19;
  v25[1] = 6;
  v25[2] = 0;
  v25[3] = v16;
  v25[4] = v21;

  v23 = v16;
  swift_task_create();
  sub_249064460(v14, &qword_27EECF6A0, &qword_24907BBA0);
}

uint64_t sub_249071600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = sub_249076DAC();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = sub_249076DCC();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249071720, 0, 0);
}

uint64_t sub_249071720()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = swift_allocObject();
  v0[19] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  type metadata accessor for DTXPCClient();
  sub_249073358(&qword_27EECF6C0, type metadata accessor for DTXPCClient);

  v6 = sub_249076F1C();

  return MEMORY[0x2822009F8](sub_24907180C, v6, v5);
}

uint64_t sub_24907180C()
{
  v1 = v0[9];
  sub_24906F0D8(v0[10], sub_249073318, v0[19], &unk_285C1CA90, sub_2490733A0, &block_descriptor_61);
  v0[20] = 0;
  v2 = v0[19];

  v3 = v0[18];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_249071914()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v18 = v0[17];
  v19 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9] + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v17 = sub_249076C4C();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v1;
  v0[6] = sub_2490755BC;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24906562C;
  v0[5] = &block_descriptor_55;
  v10 = _Block_copy(v0 + 2);

  v11 = v1;
  sub_249076DBC();
  v0[8] = MEMORY[0x277D84F90];
  sub_249073358(&qword_27EECF618, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EECF6F0, &qword_24907BCF0);
  sub_24906AB64();
  sub_24907704C();
  MEMORY[0x24C1EFE70](0, v2, v3, v10);
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  v12 = v0[7];

  v13 = v0[18];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t static DTXPCClient.sendSync<A>(request:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v7 = *(a1 + 48);
  v8 = sub_249050060();
  v10 = *v8;
  v9 = v8[1];
  v11 = sub_249076E2C();
  mach_service = xpc_connection_create_mach_service((v11 + 32), 0, 0);

  v21 = nullsub_1;
  v22 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_249070250;
  *(&v20 + 1) = &block_descriptor_44;
  v13 = _Block_copy(&aBlock);
  xpc_connection_set_event_handler(mach_service, v13);
  _Block_release(v13);
  xpc_connection_activate(mach_service);
  DTXPCCoder.init()(&aBlock);
  v14 = aBlock;
  v24 = aBlock;
  v15 = *a1;
  v20 = a1[1];
  aBlock = v15;
  v21 = v6;
  v22 = v5;
  v23 = v7;
  sub_249072EB8();
  v16 = DTXPCCoder.encode<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v17 = xpc_connection_send_message_with_reply_sync(mach_service, v16);
    swift_unknownObjectRelease();
    aBlock = v14;
    DTXPCCoder.decode<A>(_:)(v17);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_249071D28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF718, &qword_24907BD08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v17[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF720, &qword_24907BD10);
    v9 = sub_249076C3C();
    MEMORY[0x28223BE20](v9);
    v14 = v6;
    v10 = sub_249076C4C();
    sub_24907700C();

    if (swift_task_isCurrentExecutor())
    {
      v11 = swift_allocObject();
      *(v11 + 16) = sub_2490734DC;
      *(v11 + 24) = &v16[-4];
      v12 = swift_allocObject();
      *(v12 + 16) = sub_249073E74;
      *(v12 + 24) = v11;

      v17[0] = v8;
      sub_249074A08(v17);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return (*(v3 + 8))(v6, v2);
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_2490770AC();
    MEMORY[0x24C1EFD00](0xD00000000000003FLL, 0x800000024907CA40);
    v16[2] = v8;
    type metadata accessor for DTXPCClient();
    sub_2490770FC();
    MEMORY[0x24C1EFD00](46, 0xE100000000000000);
    v15 = 0;
    v14 = 188;
    result = sub_24907710C();
    __break(1u);
  }

  return result;
}

uint64_t sub_249072064()
{
  v1 = v0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  v54 = *(v58 - 8);
  v2 = *(v54 + 64);
  v3 = MEMORY[0x28223BE20](v58);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D0, &qword_24907BC08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v47 - v12);
  if (qword_27EED7030 != -1)
  {
LABEL_25:
    swift_once();
  }

  v56 = v13;
  v14 = sub_249076D6C();
  __swift_project_value_buffer(v14, qword_27EED7038);
  v15 = sub_249076D4C();
  v16 = sub_249076FAC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24904B000, v15, v16, "### Interrupted", v17, 2u);
    MEMORY[0x24C1F07B0](v17, -1, -1);
  }

  v18 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 64);
  v48 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v49 = v54 + 16;
  v57 = (v54 + 32);
  v55 = (v54 + 8);
  v53 = v19;

  v25 = 0;
  v52 = v5;
  v50 = v11;
  while (1)
  {
    if (!v23)
    {
      if (v24 <= v25 + 1)
      {
        v27 = v25 + 1;
      }

      else
      {
        v27 = v24;
      }

      v13 = (v27 - 1);
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {
          v1 = &qword_24907BC10;
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
          (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
          v23 = 0;
          v25 = v13;
          goto LABEL_19;
        }

        v23 = *(v48 + 8 * v26);
        v25 = (v25 + 1);
        if (v23)
        {
          v25 = v26;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v26 = v25;
LABEL_18:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v26 << 6);
    v30 = v54;
    v31 = *(*(v53 + 48) + 8 * v29);
    v32 = v51;
    v33 = v58;
    (*(v54 + 16))(v51, *(v53 + 56) + *(v54 + 72) * v29, v58);
    v1 = &qword_24907BC10;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
    v35 = *(v34 + 48);
    v36 = v50;
    *v50 = v31;
    v37 = v32;
    v11 = v36;
    (*(v30 + 32))(&v36[v35], v37, v33);
    (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
    v5 = v52;
LABEL_19:
    v38 = v11;
    v39 = v11;
    v40 = v56;
    sub_249072DEC(v39, v56);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D8, &qword_24907BC10);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
    }

    v42 = *v40;
    (*v57)(v5, v40 + *(v41 + 48), v58);
    v43 = sub_249076D2C();
    if (v43)
    {
      v44 = v43;
      DTMonitorEvent.init(clientID:eventType:timers:)(v42, 3, 0, &v61);
      v59 = v61;
      v60 = v62;
      DTTimerClient._monitorEvent(_:)(&v59);

      DTTimerClient._monitorStart(restart:)(1);
    }

    (*v55)(v5, v58);
    v11 = v38;
  }
}

uint64_t DTXPCClient.deinit()
{
  v1 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v2 = sub_249076C7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap);

  v5 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
  v4 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder + 8);

  v6 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DTXPCClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__environment;
  v2 = sub_249076C7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__monitorMap);

  v5 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
  v4 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder + 8);

  v6 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcEndpoint);
  swift_unknownObjectRelease();
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_249072734()
{
  v0 = sub_249076C4C();
  v1 = sub_24907700C();

  return v1;
}

uint64_t sub_249072784(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24907287C;

  return v7(a1);
}

uint64_t sub_24907287C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249072974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2490755E4;

  return sub_249072784(a1, v5);
}

uint64_t type metadata accessor for DTXPCClient()
{
  result = qword_27EED7100;
  if (!qword_27EED7100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249072AE0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249072B30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_249072C00;

  return sub_24906E070(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_249072C00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249072CF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249072D2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249072C00;

  return sub_249072784(a1, v5);
}

uint64_t sub_249072DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6D0, &qword_24907BC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249072EB8()
{
  result = qword_27EECF6E0;
  if (!qword_27EECF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF6E0);
  }

  return result;
}

uint64_t sub_249072F0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  sub_24904E358(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249072FA8()
{
  result = qword_27EECF6E8;
  if (!qword_27EECF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF6E8);
  }

  return result;
}

uint64_t sub_249072FFC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  sub_24904E358(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v4 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24907305C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[12];
  v6 = v0[13];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2490755E4;

  return sub_249070D10(v7, v4, (v0 + 5), v5, v6, v2, v3);
}

uint64_t sub_24907311C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_24904E358(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24907317C()
{
  v2 = v0[2];
  v3 = v0[10];
  v4 = v0[11];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2490755E4;

  return sub_249071600(v5, v2, (v0 + 3), v3, v4);
}

uint64_t sub_249073230()
{
  result = sub_249076C7C();
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

uint64_t sub_249073318(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  return v2(v4);
}

uint64_t sub_249073358(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2490733E8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2490733F4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_249073400()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249073450(void *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = DTXPCCoder.decode<A>(_:)(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_24907349C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2490734DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF718, &qword_24907BD08);
  sub_249076C2C();
  v4 = v38;
  v5 = MEMORY[0x24C1F09A0](v38);
  if (v5 == sub_249076D7C())
  {
    v16 = (a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
    v17 = *(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder + 8);
    *&v35 = *(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcCoder);
    *(&v35 + 1) = v17;
    sub_249074B18();

    DTXPCCoder.decode<A>(_:)(v38);

    v23 = *(&v38 + 1);
    v24 = v39;
    v25 = BYTE8(v39);
    v32 = v38;
    if (BYTE8(v39) == 8)
    {
      v35 = v38;
      v36 = v39;

      DTXPCClient._monitorEvent(_:)(&v35);
      sub_24904E358(v32, v23, v24, 8u);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
    }

    else
    {
      *(&v39 + 1) = &type metadata for DTAckResponse;
      v40 = sub_24905AD28();
      DTAckResponse.init()();
    }

    sub_2490643F8(&v38, &v33, &unk_27EECF730, &qword_24907BD18);
    if (v34)
    {
      v31 = v24;
      sub_24904E194(&v33, &v35);
      v26 = *(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
      if (v26)
      {
        swift_unknownObjectRetain();
        v27 = sub_249074A34(v4);
        if (v27)
        {
          v28 = v27;
          v29 = __swift_project_boxed_opaque_existential_1(&v35, v37);
          v30 = v16[1];
          *&v33 = *v16;
          *(&v33 + 1) = v30;

          DTXPCCoder.encode<A>(_:into:)(v29, v28);

          xpc_connection_send_message(v26, v28);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_24904E358(v32, v23, v31, v25);
          sub_249064460(&v38, &unk_27EECF730, &qword_24907BD18);
        }

        else
        {
          sub_249064460(&v38, &unk_27EECF730, &qword_24907BD18);
          swift_unknownObjectRelease();
          sub_24904E358(v32, v23, v31, v25);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v35);
      }

      else
      {
        sub_249064460(&v38, &unk_27EECF730, &qword_24907BD18);
        sub_24904E358(v32, v23, v31, v25);
        __swift_destroy_boxed_opaque_existential_1Tm(&v35);
      }
    }

    else
    {
      sub_249064460(&v38, &unk_27EECF730, &qword_24907BD18);
      sub_24904E358(v32, v23, v24, v25);
      sub_249064460(&v33, &unk_27EECF730, &qword_24907BD18);
    }

LABEL_29:
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = sub_249076D9C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v38 == v6)
  {
    if ((*(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__invalidateCalled) & 1) == 0)
    {
      sub_249072064();
    }

    goto LABEL_29;
  }

  swift_unknownObjectRetain();
  v7 = sub_249076D8C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v38 == v7)
  {
    if ((*(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__invalidateCalled) & 1) == 0)
    {
      if (qword_27EED7030 != -1)
      {
        swift_once();
      }

      v18 = sub_249076D6C();
      __swift_project_value_buffer(v18, qword_27EED7038);
      v19 = sub_249076D4C();
      v20 = sub_249076FAC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_24904B000, v19, v20, "### Invalidated unexpectedly", v21, 2u);
        MEMORY[0x24C1F07B0](v21, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    v22 = *(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection);
    *(a1 + OBJC_IVAR____TtC17DistributedTimers11DTXPCClient__xpcConnection) = 0;
    goto LABEL_29;
  }

  if (qword_27EED7030 != -1)
  {
    swift_once();
  }

  v8 = sub_249076D6C();
  __swift_project_value_buffer(v8, qword_27EED7038);
  swift_unknownObjectRetain();
  v9 = sub_249076D4C();
  v10 = sub_249076FAC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v38 = v12;
    *v11 = 136315138;
    v13 = sub_249076F8C();
    v15 = sub_24904D594(v13, v14, &v38);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24904B000, v9, v10, "### XPC event error: error=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x24C1F07B0](v12, -1, -1);
    MEMORY[0x24C1F07B0](v11, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_249073E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_249073E9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2490772FC();

  return sub_249074624(a1, v4);
}

uint64_t sub_249073EE0(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF758, &unk_24907BD30);
  v41 = a2;
  result = sub_24907713C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_2490772FC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_249074234(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24907705C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_2490772FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2490743F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_249073E9C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_249074690();
      goto LABEL_7;
    }

    sub_249073EE0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_249073E9C(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2490772DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_24907456C(v10, a2, a1, v16);
}

uint64_t sub_24907456C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_249074624(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_249074690()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF6C8, &qword_24907BBD8);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF758, &unk_24907BD30);
  v4 = *v0;
  v5 = sub_24907712C();
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

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

uint64_t sub_249074900(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF748, &qword_24907BD28);
    return sub_249076F2C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF748, &qword_24907BD28);
    return sub_249076F3C();
  }
}

uint64_t sub_24907498C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF740, &qword_24907BD20);
    return sub_249076F2C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF740, &qword_24907BD20);
    return sub_249076F3C();
  }
}

uint64_t sub_249074A08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

xpc_object_t sub_249074A34(void *a1)
{
  result = xpc_dictionary_create_reply(a1);
  if (!result)
  {
    if (qword_27EED7030 != -1)
    {
      swift_once();
    }

    v2 = sub_249076D6C();
    __swift_project_value_buffer(v2, qword_27EED7038);
    v3 = sub_249076D4C();
    v4 = sub_249076FAC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24904B000, v3, v4, "### XPC create reply failed", v5, 2u);
      MEMORY[0x24C1F07B0](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_249074B18()
{
  result = qword_27EECF728;
  if (!qword_27EECF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF728);
  }

  return result;
}

uint64_t sub_249074BD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_249074C04()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF708, &unk_24907BCF8);
  v2 = sub_249076F4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_249074CB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EECF708, &unk_24907BCF8);
  v4 = sub_249076F4C();
  v5 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  return sub_2490707A0(a1, v4);
}

uint64_t objectdestroy_81Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_249074E0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_24904E358(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_249074F50(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7 = v5;
  v9 = *(v5 + 88);
  v10 = *(v5 + 96);
  v32 = *(v5 + 16);
  a2();
  DTXPCCoder.decode<A>(_:)(a1);
  v36 = v30[0];
  v37 = 0;
  if (qword_27EED7030 != -1)
  {
    swift_once();
  }

  v11 = sub_249076D6C();
  __swift_project_value_buffer(v11, qword_27EED7038);
  sub_249072E5C(v5 + 32, &v32);
  v12 = sub_249076D4C();
  v13 = sub_249076F9C();
  sub_249072A80(v7 + 32);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v14 = 136315138;
    v15 = *(v7 + 48);
    v32 = *(v7 + 32);
    v33 = v15;
    v34 = *(v7 + 64);
    v35 = *(v7 + 80);
    sub_249072E5C(v7 + 32, v30);
    sub_249072FA8();
    v27 = v13;
    log = sub_24907727C();
    v17 = v16;
    v18 = v9;
    v20 = *(&v33 + 1);
    v19 = v34;
    v29 = a5;
    v21 = *(&v34 + 1);
    v22 = v35;

    v23 = v19;
    v9 = v18;
    sub_24904E358(v20, v23, v21, v22);
    v24 = sub_24904D594(log, v17, &v31);

    *(v14 + 4) = v24;
    a5 = v29;
    _os_log_impl(&dword_24904B000, v12, v27, "XPC request succeeded: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x24C1F07B0](v28, -1, -1);
    MEMORY[0x24C1F07B0](v14, -1, -1);
  }

  v9(&v36);
  return a5(v36, v37);
}

id sub_249075428(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_249075434(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_249075458()
{
  v2 = v0[2];
  v1 = v0[3];
  v6 = v0[4];
  v7 = 1;
  v3 = v6;
  v2(&v6);
  v4 = v6;
  v5 = v7;

  sub_249075434(v4, v5);
}

uint64_t objectdestroy_51Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_24907552C()
{
  v2 = v0[2];
  v1 = v0[3];
  v5 = v0[4];
  v6 = 0;

  v2(&v5);
  v3 = v5;
  v4 = v6;

  sub_249075434(v3, v4);
}

uint64_t DTXPCCoder.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2490769EC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_2490769DC();
  v5 = sub_2490769BC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_2490769AC();
  a1[1] = result;
  return result;
}

xpc_object_t DTXPCCoder.encode<A>(_:)()
{
  v2 = *v0;
  empty = xpc_dictionary_create_empty();
  v4 = sub_2490769CC();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_249076B7C();
    sub_24904E140(v6, v7);
    xpc_dictionary_set_value(empty, "data", v8);
  }

  swift_unknownObjectRelease();
  return empty;
}

uint64_t DTXPCCoder.encode<A>(_:into:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  result = sub_2490769CC();
  if (!v3)
  {
    v8 = result;
    v9 = v7;
    v10 = sub_249076B7C();
    sub_24904E140(v8, v9);
    xpc_dictionary_set_value(a2, "data", v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void DTXPCCoder.encode(_:into:)(void *a1, void *a2)
{
  v6 = *v2;
  type metadata accessor for DTError();
  v7 = a1;
  v12 = DTError.__allocating_init(_:)(a1);
  sub_249076410(&qword_27EECF7C0);
  v8 = sub_2490769CC();
  v10 = v9;

  if (!v3)
  {
    v11 = sub_249076B7C();
    sub_24904E140(v8, v10);
    xpc_dictionary_set_value(a2, "error", v11);
    swift_unknownObjectRelease();
  }
}

uint64_t DTXPCCoder.encode(data:into:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249076B7C();
  xpc_dictionary_set_value(a3, "data", v4);
  return swift_unknownObjectRelease();
}

uint64_t DTXPCCoder.decode<A>(_:)(void *a1)
{
  length[1] = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 8);
  length[0] = 0;
  data = xpc_dictionary_get_data(a1, "data", length);
  if (data)
  {
    v6 = sub_249076360(data, length[0]);
    v8 = v7;
    sub_24907699C();
    result = sub_24904E140(v6, v8);
    goto LABEL_3;
  }

  v11 = xpc_dictionary_get_data(a1, "error", length);
  if (!v11)
  {
    v16 = sub_249076D9C();
    swift_unknownObjectRelease();
    if (v16 == a1)
    {
      type metadata accessor for DTError();
      v18 = 0x65746E6920435058;
      v20 = 1886745202;
    }

    else
    {
      v17 = sub_249076D8C();
      swift_unknownObjectRelease();
      type metadata accessor for DTError();
      if (v17 != a1)
      {
        v18 = 0x6420435058206F4ELL;
        v19 = 0xEB00000000617461;
LABEL_13:
        DTError.__allocating_init(_:_:_:)(3, v18, v19, 0);
        result = swift_willThrow();
        goto LABEL_3;
      }

      v18 = 0x61766E6920435058;
      v20 = 1633970540;
    }

    v19 = v20 | 0xEF64657400000000;
    goto LABEL_13;
  }

  v12 = v11;
  type metadata accessor for DTError();
  v13 = sub_249076360(v12, length[0]);
  v15 = v14;
  sub_249076410(&qword_27EECF7C8);
  sub_24907699C();
  result = sub_24904E140(v13, v15);
  if (!v2)
  {
    result = swift_willThrow();
  }

LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DTXPCRequest.context.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

id DTXPCRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_24904E2F4(v2, v3, v4, v5);
}

__n128 DTXPCRequest.init(request:context:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v5;
  result = *a1;
  *(a3 + 24) = *a1;
  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t DTXPCRequest.description.getter()
{
  v1 = *(v0 + 2);
  v5 = *v0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 5);
  v8 = *(v0 + 48);
  sub_249076454();
  v2 = sub_24907727C();
  MEMORY[0x24C1EFD00](v2);

  MEMORY[0x24C1EFD00](8236, 0xE200000000000000);
  sub_24906BB20();
  v3 = sub_24907727C();
  MEMORY[0x24C1EFD00](v3);

  return 0x3D74736575716572;
}

uint64_t sub_249075C8C()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_249075CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_2490772BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2490772BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_249075D9C(uint64_t a1)
{
  v2 = sub_2490764A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249075DD8(uint64_t a1)
{
  v2 = sub_2490764A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTXPCRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF7E0, &qword_24907BD40);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 40);
  v17 = *(v1 + 32);
  v18 = v9;
  v16 = v11;
  v25 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490764A8();

  sub_24907736C();
  v21 = v7;
  v22 = v8;
  v23 = v10;
  v26 = 0;
  sub_2490764FC();
  v13 = v19;
  sub_24907725C();

  if (!v13)
  {
    v21 = v18;
    v22 = v17;
    v23 = v16;
    v24 = v25;
    v26 = 1;
    sub_24904E2F4(v18, v17, v16, v25);
    sub_249076550();
    sub_24907725C();
    sub_24904E358(v21, v22, v23, v24);
  }

  return (*(v20 + 8))(v6, v3);
}

void DTXPCRequest.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECF7F8, &qword_24907BD48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490764A8();
  sub_24907735C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v23 = 0;
    sub_2490765A4();
    sub_2490771EC();
    v11 = v20;
    v18 = v19;
    v12 = v21;
    v23 = 1;
    sub_249074B18();
    sub_2490771EC();
    (*(v6 + 8))(v9, v5);
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    *a2 = v18;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;

    sub_24904E2F4(v13, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_24904E358(v13, v14, v15, v16);
  }
}

uint64_t sub_2490762A8(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_249076360(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2490762A8(a1, &a1[a2]);
  }

  v3 = sub_249076B1C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_249076ADC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_249076B8C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_249076410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DTError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249076454()
{
  result = qword_27EECF7D0;
  if (!qword_27EECF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF7D0);
  }

  return result;
}

unint64_t sub_2490764A8()
{
  result = qword_27EED7110[0];
  if (!qword_27EED7110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED7110);
  }

  return result;
}

unint64_t sub_2490764FC()
{
  result = qword_27EECF7E8;
  if (!qword_27EECF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF7E8);
  }

  return result;
}

unint64_t sub_249076550()
{
  result = qword_27EECF7F0;
  if (!qword_27EECF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF7F0);
  }

  return result;
}

unint64_t sub_2490765A4()
{
  result = qword_27EECF800;
  if (!qword_27EECF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECF800);
  }

  return result;
}

uint64_t sub_2490765F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_249076640(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_2490766D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_249076714(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249076760(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2490767B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_249076810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_249076898()
{
  result = qword_27EED73A0[0];
  if (!qword_27EED73A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED73A0);
  }

  return result;
}

unint64_t sub_2490768F0()
{
  result = qword_27EED74B0;
  if (!qword_27EED74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED74B0);
  }

  return result;
}

unint64_t sub_249076948()
{
  result = qword_27EED74B8[0];
  if (!qword_27EED74B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED74B8);
  }

  return result;
}
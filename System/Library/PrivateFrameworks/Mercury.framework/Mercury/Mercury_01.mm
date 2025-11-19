unint64_t sub_2303D317C()
{
  result = qword_27DB4FB80;
  if (!qword_27DB4FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FB80);
  }

  return result;
}

unint64_t sub_2303D31D0()
{
  result = qword_27DB4FE80;
  if (!qword_27DB4FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE80);
  }

  return result;
}

unint64_t sub_2303D3224()
{
  result = qword_27DB4FE88;
  if (!qword_27DB4FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE88);
  }

  return result;
}

unint64_t sub_2303D3278()
{
  result = qword_27DB4FE90;
  if (!qword_27DB4FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE90);
  }

  return result;
}

unint64_t sub_2303D32CC()
{
  result = qword_27DB4FE98;
  if (!qword_27DB4FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE98);
  }

  return result;
}

unint64_t sub_2303D3320()
{
  result = qword_27DB4FEA0;
  if (!qword_27DB4FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEA0);
  }

  return result;
}

unint64_t sub_2303D3374()
{
  result = qword_27DB4FEA8;
  if (!qword_27DB4FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEA8);
  }

  return result;
}

unint64_t sub_2303D33C8()
{
  result = qword_27DB4FEB0;
  if (!qword_27DB4FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEB0);
  }

  return result;
}

unint64_t sub_2303D341C()
{
  result = qword_27DB4FEB8;
  if (!qword_27DB4FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEB8);
  }

  return result;
}

unint64_t sub_2303D3470()
{
  result = qword_27DB4FEC0;
  if (!qword_27DB4FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEC0);
  }

  return result;
}

unint64_t sub_2303D34C4()
{
  result = qword_27DB4FEC8;
  if (!qword_27DB4FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FEC8);
  }

  return result;
}

unint64_t sub_2303D3584()
{
  result = qword_27DB4FBA8;
  if (!qword_27DB4FBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB4FED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_2303D3744(uint64_t a1, uint64_t a2)
{
  result = sub_2303D0CF8(0x1ED3F1EE0, a2);
  if (!v2)
  {
    bytes = xpc_uuid_get_bytes(result);
    result = swift_unknownObjectRelease();
    if (bytes)
    {
      return sub_23041BA78();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_2303D37DC()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_280AC7968 = result;
  return result;
}

uint64_t sub_2303D3810@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23041BAA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = sub_23041BE38();
  string = xpc_dictionary_get_string(v10, (v11 + 32));

  if (string)
  {
    sub_23041BE98();
    sub_23041BA48();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v14 = *(v7 + 32);
      v14(v9, v5, v6);
      v14(a1, v9, v6);
      v13 = 0;
      goto LABEL_6;
    }

    sub_2303BA754(v5, &unk_27DB4FE40);
  }

  v13 = 1;
LABEL_6:
  v15 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  return (*(*(v15 - 8) + 56))(a1, v13, 1, v15);
}

uint64_t sub_2303D3A2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  MEMORY[0x28223BE28](v4 - 8);
  v6 = &v16[-v5];
  v7 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE28](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2303BA588(a1, v6, &unk_27DB50130);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2303BA754(v6, &unk_27DB50130);
    v11 = *v2;
    swift_unknownObjectRetain();

    sub_2303F0EC0(0xD00000000000001FLL, 0x8000000230422780, v11);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_2303BA754(a1, &unk_27DB50130);
  }

  else
  {
    sub_2303D87D0(v6, v10, type metadata accessor for XPCSideChannel.ChannelIdentifier);
    sub_23041BA58();
    v13 = *v2;
    v14 = sub_23041BE38();
    v15 = sub_23041BE38();

    xpc_dictionary_set_string(v13, (v14 + 32), (v15 + 32));
    sub_2303BA754(a1, &unk_27DB50130);
    sub_2303D8174(v10, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  }
}

uint64_t sub_2303D3CC4()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_2303D3D04@<X0>(uint64_t a1@<X8>)
{
  result = sub_2303D3CC4();
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2303D3D34@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2303D3D68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_23041BAA8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FF48);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2303D877C();
  sub_23041CBB8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_2303D8374(&qword_27DB4FF20, MEMORY[0x277CC95F0]);
    sub_23041C4C8();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2303D87D0(v11, v13, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2303D4028(uint64_t a1)
{
  v2 = sub_2303D877C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303D4064(uint64_t a1)
{
  v2 = sub_2303D877C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2303D40FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_23041BAA8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FF10);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for XPCSideChannel.InstanceIdentifier(0);
  MEMORY[0x28223BE28](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2303D8728();
  sub_23041CBB8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_2303D8374(&qword_27DB4FF20, MEMORY[0x277CC95F0]);
    sub_23041C4C8();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2303D87D0(v11, v13, type metadata accessor for XPCSideChannel.InstanceIdentifier);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2303D4398()
{
  sub_23041CB48();
  MEMORY[0x2319161D0](0);
  return sub_23041CB78();
}

uint64_t sub_2303D43DC()
{
  sub_23041CB48();
  MEMORY[0x2319161D0](0);
  return sub_23041CB78();
}

uint64_t sub_2303D441C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23041C808();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2303D44A4(uint64_t a1)
{
  v2 = sub_2303D8728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303D44E0(uint64_t a1)
{
  v2 = sub_2303D8728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2303D451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23041BAA8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t sub_2303D45CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23041BAA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2303D4690(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE28](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a6();
  sub_23041CBC8();
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF30, MEMORY[0x277CC95F0]);
  sub_23041C578();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2303D4810()
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  return sub_23041CB78();
}

uint64_t sub_2303D4898()
{
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF38, MEMORY[0x277CC95F0]);

  return sub_23041BD48();
}

uint64_t sub_2303D491C()
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  return sub_23041CB78();
}

uint64_t sub_2303D49A0()
{
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF40, MEMORY[0x277CC95F0]);
  return sub_23041BD78() & 1;
}

uint64_t static XPCSideChannel.makeActiveSideChannelIterator()()
{
  if (qword_280AC7960 != -1)
  {
    swift_once();
  }

  v0 = qword_280AC7968;
  [qword_280AC7968 lock];
  sub_2303D4AF4(&v2);
  [v0 unlock];
  return v2;
}

uint64_t sub_2303D4AF4@<X0>(void *a1@<X8>)
{
  if (qword_280AC7AF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27DB4FC30;
  v3 = -1 << *(off_27DB4FC30 + 32);
  v4 = ~v3;
  v5 = -v3;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(off_27DB4FC30 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FF68);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v2 + 64;
  v8[4] = v4;
  v8[5] = 0;
  v8[6] = v7;
  v8[7] = sub_2303D4C3C;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = sub_2303D4C48;
  v8[12] = 0;
  v8[13] = sub_2303D7CC8;
  v8[14] = 0;
  v8[15] = sub_2303D7CD8;
  v8[16] = 0;
  *a1 = v8;
}

uint64_t sub_2303D4C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v5 = v4 - 8;
  MEMORY[0x28223BE28](v4);
  v7 = &v11 - v6;
  sub_2303BA588(a1, &v11 - v6, &unk_27DB50520);
  v8 = *(v5 + 56);
  Strong = swift_weakLoadStrong();
  sub_2303BA754(&v7[v8], &qword_27DB4FEE0);
  *a2 = Strong;
  return sub_2303D8174(v7, type metadata accessor for XPCSideChannel.InstanceIdentifier);
}

uint64_t sub_2303D4D34(uint64_t a1)
{
  if (qword_280AC7AF8 != -1)
  {
    swift_once();
  }

  v2 = OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier;
  swift_beginAccess();
  v3 = off_27DB4FC30;
  if (*(off_27DB4FC30 + 2) && (v4 = sub_2303D7404(a1 + v2), (v5 & 1) != 0))
  {
    v6 = *(v3[7] + 8 * v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v6 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FEE8);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23041E310;
  sub_2303D82A8(a1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueInstanceIdentifier, v9 + v8, type metadata accessor for XPCSideChannel.InstanceIdentifier);
  swift_weakInit();
  sub_23041B5F4(v9);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_27DB4FC30;
  off_27DB4FC30 = 0x8000000000000000;
  sub_230411F54(v6, a1 + v2, isUniquelyReferenced_nonNull_native);
  off_27DB4FC30 = v12;
  return swift_endAccess();
}

uint64_t XPCSideChannel.__allocating_init(on:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2303D7FA8(a1, a2);

  return v4;
}

uint64_t XPCSideChannel.deinit()
{
  v1 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier;
  sub_2303D82A8(v0 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v3, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  if (qword_280AC7960 != -1)
  {
    swift_once();
  }

  v5 = qword_280AC7968;
  [qword_280AC7968 lock];
  sub_2303D51B4(v3, v0);
  [v5 unlock];
  sub_2303D8174(v3, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  sub_2303D8174(v0 + v4, type metadata accessor for XPCSideChannel.ChannelIdentifier);

  sub_2303D8174(v0 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueInstanceIdentifier, type metadata accessor for XPCSideChannel.InstanceIdentifier);

  return v0;
}

uint64_t sub_2303D51B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v42 = *(v5 - 8);
  v6 = MEMORY[0x28223BE28](v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE28](v6);
  v39 = v36 - v10;
  MEMORY[0x28223BE28](v9);
  v41 = v36 - v11;
  if (qword_280AC7AF8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    swift_beginAccess();
    v12 = off_27DB4FC30;
    if (*(off_27DB4FC30 + 2) && (v13 = sub_2303D7404(a1), (v14 & 1) != 0))
    {
      v15 = *(v12[7] + 8 * v13);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v15 = MEMORY[0x277D84F90];
    }

    result = sub_2303D7E54(v15);
    v36[1] = v3;
    v37 = a1;
    if (v17)
    {
      break;
    }

    v18 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_44;
    }

    v46 = result;
    v38 = v8;
    v20 = v15 + 2;
    v19 = v15[2];
    if (v18 == v19)
    {
      goto LABEL_10;
    }

    v40 = OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueInstanceIdentifier;
    v27 = &unk_23041F080;
    while (v18 < v19)
    {
      a1 = v15;
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v28 = v15 + v43;
      v3 = *(v42 + 72);
      v44 = v3 * v18;
      v8 = v27;
      v29 = v41;
      sub_2303BA588(v15 + v43 + v3 * v18, v41, &unk_27DB50520);
      sub_23041BAA8();
      sub_2303D8374(&qword_27DB4FF40, MEMORY[0x277CC95F0]);
      v30 = sub_23041BD78();
      v31 = v29;
      v27 = v8;
      sub_2303BA754(v31, &unk_27DB50520);
      if ((v30 & 1) == 0)
      {
        v32 = v46;
        if (v18 != v46)
        {
          if (v46 < 0)
          {
            goto LABEL_36;
          }

          v33 = *v20;
          if (v46 >= *v20)
          {
            goto LABEL_37;
          }

          v3 *= v46;
          sub_2303BA588(&v28[v3], v39, &unk_27DB50520);
          if (v18 >= v33)
          {
            goto LABEL_38;
          }

          v8 = v44;
          v34 = v38;
          sub_2303BA588(&v28[v44], v38, &unk_27DB50520);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2303D7CEC(v15);
          }

          v35 = v15 + v43;
          sub_2303D88BC(v34, v15 + v43 + v3);
          if (v18 >= v15[2])
          {
            goto LABEL_39;
          }

          sub_2303D88BC(v39, &v8[v35]);
          v32 = v46;
        }

        v46 = v32 + 1;
      }

      ++v18;
      v20 = v15 + 2;
      v19 = v15[2];
      if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v46 = v15[2];
LABEL_10:

  v21 = v15[2];
  if (v46 > v21)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v46 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v46;
  if (__OFADD__(v21, v46 - v21))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v22 > v15[3] >> 1)
  {
    if (v21 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v15 = sub_2304061D0(isUniquelyReferenced_nonNull_native, v24, 1, v15);
    v48 = v15;
  }

  v25 = v37;
  sub_2303D7D00(v46, v21, 0);
  if (v15[2])
  {

    swift_beginAccess();
    sub_2303D56A8(v25);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v47 = off_27DB4FC30;
    off_27DB4FC30 = 0x8000000000000000;
    sub_230411F54(v15, v25, v26);
    off_27DB4FC30 = v47;
    return swift_endAccess();
  }
}

uint64_t sub_2303D56A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2303D7404(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2304198BC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  sub_2303D8174(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_230411C78(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t XPCSideChannel.__deallocating_deinit()
{
  XPCSideChannel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id XPCSideChannel.setEventHandler(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_280AC7960 != -1)
  {
    swift_once();
  }

  v5 = qword_280AC7968;
  [qword_280AC7968 lock];
  v6 = (v2 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
  *v6 = a1;
  v6[1] = a2;

  return [v5 unlock];
}

uint64_t XPCSideChannel.send(message:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  result = MEMORY[0x28223BE28](v3 - 8);
  v6 = &v14[-1] - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
  if (v7)
  {
    v9 = *a1;
    v8 = a1[1];
    v10 = a1[2];
    v14[0] = v9;
    v14[1] = v8;
    v14[2] = v10;
    sub_2303D82A8(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v6, type metadata accessor for XPCSideChannel.ChannelIdentifier);
    v11 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);

    swift_unknownObjectRetain();

    sub_2303D3A2C(v6);
    v12 = *(*v7 + 168);

    v12(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSideChannel.sendSync(message:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  result = MEMORY[0x28223BE28](v3 - 8);
  v6 = &v14[-1] - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
  if (v7)
  {
    v9 = *a1;
    v8 = a1[1];
    v10 = a1[2];
    v14[0] = v9;
    v14[1] = v8;
    v14[2] = v10;
    sub_2303D82A8(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v6, type metadata accessor for XPCSideChannel.ChannelIdentifier);
    v11 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);

    swift_unknownObjectRetain();

    sub_2303D3A2C(v6);
    v12 = *(*v7 + 176);

    v12(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSideChannel.send(message:replyQueue:replyHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  result = MEMORY[0x28223BE28](v9 - 8);
  v12 = &v20[-1] - v11;
  v13 = *(v4 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
  if (v13)
  {
    v15 = *a1;
    v14 = a1[1];
    v16 = a1[2];
    v20[0] = v15;
    v20[1] = v14;
    v20[2] = v16;
    sub_2303D82A8(v4 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v12, type metadata accessor for XPCSideChannel.ChannelIdentifier);
    v17 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);

    swift_unknownObjectRetain();

    sub_2303D3A2C(v12);
    v18 = *(*v13 + 160);

    v18(v20, a2, a3, a4);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303D5D94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v5 = *(v27 - 8);
  v6 = MEMORY[0x28223BE28](v27);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v6);
  v10 = v22 - v9;
  if (qword_280AC7AF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = off_27DB4FC30;
  if (*(off_27DB4FC30 + 2) && (v12 = sub_2303D7404(a1), (v13 & 1) != 0))
  {
    v14 = *(v11[7] + 8 * v12);
    result = swift_endAccess();
    v16 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v17 = *(v14 + 16);
    if (v17)
    {
      v23 = a2;
      v24 = v2;
      v18 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v25 = *(v5 + 72);
      v22[1] = v14;

      do
      {
        sub_2303BA588(v18, v10, &unk_27DB50520);
        sub_2303BA588(v10, v8, &unk_27DB50520);
        v19 = *(v27 + 48);
        Strong = swift_weakLoadStrong();
        sub_2303BA754(v10, &unk_27DB50520);
        sub_2303BA754(&v8[v19], &qword_27DB4FEE0);
        v21 = sub_2303D8174(v8, type metadata accessor for XPCSideChannel.InstanceIdentifier);
        if (Strong)
        {
          MEMORY[0x231915610](v21);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23041BFC8();
          }

          sub_23041C008();
          v16 = v26;
        }

        v18 += v25;
        --v17;
      }

      while (v17);

      a2 = v23;
    }
  }

  else
  {
    result = swift_endAccess();
    v16 = MEMORY[0x277D84F90];
  }

  *a2 = v16;
  return result;
}

uint64_t XPCSideChannel.encode(to:)(uint64_t a1)
{
  v20[5] = *MEMORY[0x277D85DF0];
  v3 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &uuid[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2303D8244(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50600);
  type metadata accessor for _XPCObjectEncoder();
  if (swift_dynamicCast())
  {
    v6 = *uuid;
    if (*(*uuid + 24) && swift_conformsToProtocol2())
    {
      v7 = *(v6 + 32);
      v20[3] = &type metadata for XPCObjectSingleValueEncodingContainer;
      v20[4] = sub_2303D0778();
      v20[0] = v6;
      v20[1] = v7;
      sub_2303D82A8(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v5, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      result = __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for XPCObjectSingleValueEncodingContainer);
      v9 = *result;
      if (*(*result + 16))
      {
        __break(1u);
      }

      else
      {

        *uuid = sub_23041BA88();
        v19 = v10;
        *(v9 + 16) = xpc_uuid_create(uuid);
        swift_unknownObjectRelease();
        v11 = sub_23041BAA8();
        (*(*(v11 - 8) + 8))(v5, v11);
        return __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);

      v16 = sub_2303B9D74(MEMORY[0x277D84F90]);
      sub_2303BCF70();
      swift_allocError();
      static XPCError.xpcCoderRequired(_:from:userInfo:)(0xD000000000000064, 0x8000000230422500, v15, v16, v17);

      swift_willThrow();
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);

    v13 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.xpcCoderRequired(_:from:userInfo:)(0xD00000000000003ALL, 0x80000002304224C0, v12, v13, v14);

    return swift_willThrow();
  }

  return result;
}

uint64_t XPCSideChannel.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCSideChannel.init(from:)(a1);
  return v2;
}

uint64_t *XPCSideChannel.init(from:)(uint64_t a1)
{
  v108 = *v1;
  v3 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v7 = *(v6 - 8);
  v110 = v6;
  v111 = v7;
  v8 = MEMORY[0x28223BE28](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v8);
  v12 = &v93 - v11;
  v13 = sub_23041BAA8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE28](v13);
  v106 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueInstanceIdentifier;
  sub_23041BA98();
  v112 = v1;
  v17 = (v1 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
  *v17 = nullsub_10;
  v17[1] = 0;
  sub_2303D8244(a1, &v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FED8);
  type metadata accessor for _XPCObjectDecoder();
  v18 = swift_dynamicCast();
  v109 = a1;
  if ((v18 & 1) == 0)
  {
    v31 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    v113 = swift_allocError();
    v33 = v32;
    v34 = sub_23041BDD8();
    v36 = v35;
    v107 = v16;
    v37 = MEMORY[0x277D837D0];
    v120 = MEMORY[0x277D837D0];
    *&v118 = 0xD00000000000003ALL;
    *(&v118 + 1) = 0x8000000230422570;
    sub_2303BA68C(&v118, v117);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v31;
    sub_2303BB1EC(v117, v34, v36, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = v37;
    *(inited + 40) = v40;
    *(inited + 48) = 0xD00000000000005FLL;
    *(inited + 56) = 0x80000002304225B0;
    v41 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0);
    v42 = sub_2303BAF24(0x3ED);
    XPCError.init(code:userInfo:)(v42, v41);
    v43 = v117[0];
    v44 = sub_2303BA458(MEMORY[0x277D84F90]);
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v118);
    sub_2303BA754(&v118, &qword_27DB50620);
    v45 = v44;
    v16 = v107;
    sub_2303BAA64(v43, *(&v43 + 1), v122, v45);
    v46 = *(&v118 + 1);
    *v33 = v118;
    v33[1] = v46;

    swift_willThrow();
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    v30 = v112;
    goto LABEL_12;
  }

  v99 = v5;
  v100 = v14;
  v19 = *&v117[0];
  v20 = *(*&v117[0] + 24);
  if (!v20 || ((v21 = swift_conformsToProtocol2()) != 0 ? (v22 = v20) : (v22 = 0), v101 = v22, !v21))
  {
    v102 = v19;
    v47 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    v113 = swift_allocError();
    v49 = v48;
    v50 = sub_23041BDD8();
    v52 = v51;
    v107 = v16;
    v53 = MEMORY[0x277D837D0];
    v120 = MEMORY[0x277D837D0];
    *&v118 = 0xD000000000000064;
    *(&v118 + 1) = 0x8000000230422610;
    sub_2303BA68C(&v118, v117);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2303BB1EC(v117, v50, v52, v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_23041E310;
    *(v55 + 32) = sub_23041BDD8();
    *(v55 + 72) = v53;
    *(v55 + 40) = v56;
    *(v55 + 48) = 0xD00000000000005FLL;
    *(v55 + 56) = 0x80000002304225B0;
    v57 = sub_2303BA458(v55);
    swift_setDeallocating();
    sub_2303BA754(v55 + 32, &qword_27DB501B0);
    v58 = sub_2303BAF24(0x3ED);
    XPCError.init(code:userInfo:)(v58, v57);
    v59 = v117[0];
    v60 = sub_2303BA458(MEMORY[0x277D84F90]);
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v118);
    sub_2303BA754(&v118, &qword_27DB50620);
    v61 = v60;
    v16 = v107;
    sub_2303BAA64(v59, *(&v59 + 1), v116, v61);
    v62 = *(&v118 + 1);
    *v49 = v118;
    v49[1] = v62;

    swift_willThrow();

    goto LABEL_11;
  }

  v96 = v21;
  v97 = v13;
  v23 = *(v19 + 16);
  v24 = *(v19 + 32);
  v120 = &type metadata for XPCObjectSingleValueDecodingContainer;
  v25 = sub_2303D0838();
  *&v118 = v19;
  *(&v118 + 1) = v23;
  v121 = v25;
  v119 = v24;

  swift_unknownObjectRetain();

  v98 = v20;
  v27 = v106;
  v28 = v113;
  sub_2303D3744(v26, v23);
  v29 = v28;
  v30 = v112;
  if (v28)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
LABEL_12:
    sub_2303D8174(v30 + v16, type metadata accessor for XPCSideChannel.InstanceIdentifier);

    swift_deallocPartialClassInstance();
    return v30;
  }

  v102 = v19;
  v64 = *(v100 + 16);
  v95 = OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier;
  v64(v112 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, v27, v97);
  v65 = (v30 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
  v66 = v96;
  *v65 = v98;
  v65[1] = v66;
  v67 = qword_280AC7960;

  if (v67 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v94 = qword_280AC7968;
    [qword_280AC7968 lock];
    if (qword_280AC7AF8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v68 = off_27DB4FC30;
    if (*(off_27DB4FC30 + 2) && (v69 = sub_2303D7404(v30 + v95), (v70 & 1) != 0))
    {
      v71 = *(v68[7] + 8 * v69);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v71 = MEMORY[0x277D84F90];
    }

    v107 = v16;
    v113 = v29;
    v105 = *(v71 + 16);
    if (!v105)
    {
      break;
    }

    v16 = 0;
    v72 = *(v111 + 80);
    v103 = v71;
    v104 = v71 + ((v72 + 32) & ~v72);
    v29 = &unk_27DB50520;
    v73 = &unk_23041F080;
    v108 = v12;
    while (v16 < *(v71 + 16))
    {
      sub_2303BA588(v104 + *(v111 + 72) * v16, v12, v29);
      sub_2303BA588(v12, v10, v29);
      v74 = *(v110 + 48);
      v75 = v12;
      v76 = v73;
      v77 = v29;
      Strong = swift_weakLoadStrong();
      sub_2303BA754(&v10[v74], &qword_27DB4FEE0);
      if (Strong)
      {
        v79 = *(Strong + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);

        sub_2303D8174(v10, type metadata accessor for XPCSideChannel.InstanceIdentifier);
        if (v79)
        {
          v80 = *(*v79 + 208);

          v81 = v113;
          v80(v117, sub_2303D8310, v101, MEMORY[0x277D839B0]);
          v113 = v81;

          v29 = v77;
          v82 = v77;
          v73 = v76;
          sub_2303BA754(v108, v82);
          if (v117[0])
          {

            *&v117[0] = 0;
            *(&v117[0] + 1) = 0xE000000000000000;
            sub_23041C288();
            MEMORY[0x231915500](0xD000000000000038, 0x8000000230422680);
            sub_2303D8374(&qword_27DB4FEF0, MEMORY[0x277CC95F0]);
            v90 = v106;
            v91 = v97;
            v92 = sub_23041C5C8();
            MEMORY[0x231915500](v92);

            MEMORY[0x231915500](0xD000000000000010, 0x80000002304226C0);
            v114 = v101;
            v115 = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50570);
            sub_23041C3B8();
            MEMORY[0x231915500](0xD000000000000026, 0x80000002304226E0);
            sub_23041C328();
            swift_allocError();
            sub_23041C2D8();

            swift_willThrow();
            [v94 unlock];

            __swift_destroy_boxed_opaque_existential_1Tm(v109);
            (*(v100 + 8))(v90, v91);
            __swift_destroy_boxed_opaque_existential_1Tm(&v118);
            v30 = v112;

            return v30;
          }

          v30 = v112;
        }

        else
        {
          v29 = v77;
          v83 = v77;
          v73 = v76;
          sub_2303BA754(v108, v83);
        }

        v71 = v103;
      }

      else
      {
        sub_2303BA754(v75, v77);
        sub_2303D8174(v10, type metadata accessor for XPCSideChannel.InstanceIdentifier);
        v71 = v103;
        v29 = v77;
        v73 = v76;
      }

      ++v16;
      v12 = v108;
      if (v105 == v16)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_32:
  v84 = v99;
  sub_2303D82A8(v30 + v95, v99, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FEE8);
  v85 = v71;
  v86 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_23041E310;
  sub_2303D82A8(v112 + v107, v87 + v86, type metadata accessor for XPCSideChannel.InstanceIdentifier);
  v30 = v112;
  swift_weakInit();
  *&v117[0] = v85;
  sub_23041B5F4(v87);
  v88 = *&v117[0];
  swift_beginAccess();
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v114 = off_27DB4FC30;
  off_27DB4FC30 = 0x8000000000000000;
  sub_230411F54(v88, v84, v89);
  sub_2303D8174(v84, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  off_27DB4FC30 = v114;
  swift_endAccess();
  [v94 unlock];

  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  (*(v100 + 8))(v106, v97);
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  return v30;
}

uint64_t XPCSideChannel.hashValue.getter()
{
  sub_23041CB48();
  MEMORY[0x2319161D0](v0);
  return sub_23041CB78();
}

uint64_t *sub_2303D7258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = XPCSideChannel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2303D72D4()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

uint64_t sub_2303D7348()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

unint64_t sub_2303D73A0(uint64_t a1)
{
  sub_23041C3C8();
  v2 = sub_23041BD38();

  return sub_2303D7694(a1, v2);
}

unint64_t sub_2303D7404(uint64_t a1)
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  v2 = sub_23041CB78();

  return sub_2303D782C(a1, v2);
}

unint64_t sub_2303D74B8(uint64_t a1)
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303D8374(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  type metadata accessor for RemoteDevice.Identity();
  sub_23041BE78();
  v2 = sub_23041CB78();

  return sub_2303D79D8(a1, v2);
}

unint64_t sub_2303D7588(uint64_t a1)
{
  sub_23041CB48();
  MEMORY[0x2319161D0](a1);
  v2 = sub_23041CB78();

  return sub_2303D7B88(a1, v2);
}

unint64_t sub_2303D75F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23041CB48();
  sub_2303D8838();
  sub_23041BD48();
  v8 = sub_23041CB78();
  return sub_2303D7BF4(a1, a2, a3, a4, v8);
}

unint64_t sub_2303D7694(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_23041C3C8();
  MEMORY[0x28223BE28](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_23041BD78();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2303D782C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0) - 8;
  MEMORY[0x28223BE28](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2303D82A8(*(v3 + 48) + v12 * v10, v8, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      sub_23041BAA8();
      sub_2303D8374(&qword_27DB4FF40, MEMORY[0x277CC95F0]);
      v13 = sub_23041BD78();
      sub_2303D8174(v8, type metadata accessor for XPCSideChannel.ChannelIdentifier);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2303D79D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RemoteDevice.Identity();
  MEMORY[0x28223BE28](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_2303D82A8(*(v2 + 48) + v12 * v10, v8, type metadata accessor for RemoteDevice.Identity);
      if (sub_23041BA68())
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_23041C808() & 1) != 0)
        {
          break;
        }
      }

      sub_2303D8174(v8, type metadata accessor for RemoteDevice.Identity);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_2303D8174(v8, type metadata accessor for RemoteDevice.Identity);
  }

  return v10;
}

unint64_t sub_2303D7B88(uint64_t a1, uint64_t a2)
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

unint64_t sub_2303D7BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    v13 = *(v5 + 48);
    do
    {
      v14 = (v13 + 32 * v8);
      if (*v14 == a1)
      {
        v15 = v14[2] == a3 && v14[3] == a4;
        if (v15 || (sub_23041C808() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_2303D7CD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2303D7D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2303D7E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
    sub_23041BAA8();
    sub_2303D8374(&qword_27DB4FF40, MEMORY[0x277CC95F0]);
    if (sub_23041BD78())
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2303D7FA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCSideChannel.ChannelIdentifier(0);
  MEMORY[0x28223BE28](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23041BA98();
  v8 = (v2 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
  *v8 = nullsub_10;
  v8[1] = 0;
  sub_23041BA98();
  sub_2303D87D0(v7, v2 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__uniqueChannelIdentifier, type metadata accessor for XPCSideChannel.ChannelIdentifier);
  v9 = (v2 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
  *v9 = a1;
  v9[1] = a2;
  v10 = qword_280AC7960;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280AC7968;
  [qword_280AC7968 lock];
  sub_2303D4D34(v2);
  [v11 unlock];
  return v2;
}

uint64_t sub_2303D8174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2303D8244(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2303D82A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2303D8374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2303D83C4()
{
  result = sub_23041BAA8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2303D84AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23041BAA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23041BAA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2303D862C()
{
  result = sub_23041BAA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2303D8728()
{
  result = qword_27DB4FF18;
  if (!qword_27DB4FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF18);
  }

  return result;
}

unint64_t sub_2303D877C()
{
  result = qword_27DB4FF50;
  if (!qword_27DB4FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF50);
  }

  return result;
}

uint64_t sub_2303D87D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2303D8838()
{
  result = qword_27DB4FB98;
  if (!qword_27DB4FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FB98);
  }

  return result;
}

uint64_t sub_2303D88BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TypeUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TypeUtils(_WORD *result, int a2, int a3)
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

unint64_t sub_2303D8A28()
{
  result = qword_27DB4FF70;
  if (!qword_27DB4FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF70);
  }

  return result;
}

unint64_t sub_2303D8A80()
{
  result = qword_27DB4FF78;
  if (!qword_27DB4FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF78);
  }

  return result;
}

unint64_t sub_2303D8AD8()
{
  result = qword_27DB4FF80;
  if (!qword_27DB4FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF80);
  }

  return result;
}

unint64_t sub_2303D8B30()
{
  result = qword_27DB4FF88;
  if (!qword_27DB4FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF88);
  }

  return result;
}

unint64_t sub_2303D8B88()
{
  result = qword_27DB4FF90;
  if (!qword_27DB4FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF90);
  }

  return result;
}

unint64_t sub_2303D8BE0()
{
  result = qword_27DB4FF98;
  if (!qword_27DB4FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FF98);
  }

  return result;
}

uint64_t RemoteDeviceBrowser.serviceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2303D8CF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 80);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v10[9] = v2;
  v8 = sub_2303DA284(v7, 0);
  v9 = sub_2303DA30C(v10, v8 + 4, v7, v6);

  result = sub_2303BB754();
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2303D8E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFA0);
  sub_23041C158();
  return v1;
}

uint64_t sub_2303D8E7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  v6 = sub_2303DA284(*(v3 + 16), 0);
  v7 = sub_2303DA30C(&v15, (v6 + 32), v4, v3);

  result = sub_2303BB754();
  if (v7 != v4)
  {
    __break(1u);
    return result;
  }

  v16 = v5;
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000000000000000) != 0)
    {
      goto LABEL_21;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_8:
    v10 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x231915930](v10, v6);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v13 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          __break(1u);
          break;
        }

        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      state = remote_device_get_state();
      swift_beginAccess();
      if (state == dword_27DB50264)
      {
        sub_23041C378();
        sub_23041C398();
        sub_23041C3A8();
        sub_23041C388();
      }

      else
      {
      }

      ++v10;
      if (v11 == v9)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v9 = sub_23041C3E8();
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_22:
  v13 = MEMORY[0x277D84F90];
LABEL_23:

  *a2 = v13;
  return result;
}

uint64_t RemoteDeviceBrowser.__allocating_init(for:deviceType:targetQueue:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v6 = sub_23041C138();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23041C118();
  MEMORY[0x28223BE28](v10);
  v11 = sub_23041BC48();
  MEMORY[0x28223BE28](v11 - 8);
  v12 = swift_allocObject();
  sub_2303D968C();
  v28 = "XPCSideChannel.uniqueIdentifier";
  sub_23041BC38();
  v35 = MEMORY[0x277D84F90];
  v13 = sub_2303D96D8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFB0);
  v26[1] = sub_2303D9730();
  v26[2] = v14;
  v26[3] = v10;
  v26[4] = v13;
  sub_23041C248();
  v15 = *MEMORY[0x277D85260];
  v16 = *(v7 + 104);
  v27 = v6;
  v16(v9, v15, v6);
  v17 = sub_23041C178();
  v18 = MEMORY[0x277D84F90];
  *(v12 + 48) = v17;
  *(v12 + 72) = 0;
  v19 = sub_2303D0A0C(v18);
  v20 = v29;
  v21 = v30;
  *(v12 + 80) = v19;
  *(v12 + 88) = 0;
  v23 = v31;
  v22 = v32;
  *(v12 + 16) = v21;
  *(v12 + 24) = v23;
  *(v12 + 32) = v22;
  *(v12 + 36) = BYTE4(v22) & 1;
  if (!v20)
  {
    sub_23041BC38();
    v35 = v18;
    sub_23041C248();
    v16(v9, v15, v27);
    v20 = sub_23041C178();
  }

  *(v12 + 40) = v20;
  v24 = v34;
  *(v12 + 56) = v33;
  *(v12 + 64) = v24;
  return v12;
}

uint64_t RemoteDeviceBrowser.init(for:deviceType:targetQueue:eventHandler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a5;
  v37 = a6;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v8 = sub_23041C138();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE28](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23041C118();
  MEMORY[0x28223BE28](v12);
  v13 = sub_23041BC48();
  MEMORY[0x28223BE28](v13 - 8);
  sub_2303D968C();
  v31 = "XPCSideChannel.uniqueIdentifier";
  sub_23041BC38();
  v38 = MEMORY[0x277D84F90];
  v14 = sub_2303D96D8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFB0);
  v29[0] = sub_2303D9730();
  v29[1] = v15;
  v29[2] = v14;
  v16 = v11;
  sub_23041C248();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v9 + 104);
  v30 = v8;
  v19 = v18;
  v18(v16, v17, v8);
  v20 = sub_23041C178();
  v21 = MEMORY[0x277D84F90];
  *(v7 + 48) = v20;
  *(v7 + 72) = 0;
  v22 = sub_2303D0A0C(v21);
  v23 = v32;
  v24 = v33;
  *(v7 + 80) = v22;
  *(v7 + 88) = 0;
  v26 = v34;
  v25 = v35;
  *(v7 + 16) = v24;
  *(v7 + 24) = v26;
  *(v7 + 32) = v25;
  *(v7 + 36) = BYTE4(v25) & 1;
  if (!v23)
  {
    v35 = "y.RemoteDeviceBrowser";
    sub_23041BC38();
    v38 = v21;
    sub_23041C248();
    v19(v16, v17, v30);
    v23 = sub_23041C178();
  }

  *(v7 + 40) = v23;
  v27 = v37;
  *(v7 + 56) = v36;
  *(v7 + 64) = v27;
  return v7;
}

unint64_t sub_2303D968C()
{
  result = qword_27DB4FBA0;
  if (!qword_27DB4FBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB4FBA0);
  }

  return result;
}

unint64_t sub_2303D96D8()
{
  result = qword_27DB4FFA8;
  if (!qword_27DB4FFA8)
  {
    sub_23041C118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFA8);
  }

  return result;
}

unint64_t sub_2303D9730()
{
  result = qword_27DB4FFB8;
  if (!qword_27DB4FFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB4FFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFB8);
  }

  return result;
}

void sub_2303D9794()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2303DA460;
  *(v2 + 24) = v0;
  v20 = sub_2303DA468;
  v21 = v2;
  aBlock = MEMORY[0x277D85DD8];
  v17 = 1107296256;
  v18 = sub_2303D9C60;
  v19 = &block_descriptor_0;
  v3 = _Block_copy(&aBlock);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    if (*(v0 + 24))
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      v6 = sub_23041BE38();
      v7 = sub_23041BE38();
      xpc_dictionary_set_string(v5, (v6 + 32), (v7 + 32));
    }

    else
    {
      if (*(v0 + 36))
      {
        swift_beginAccess();
        v20 = sub_2303DA490;
        v21 = v4;
        aBlock = MEMORY[0x277D85DD8];
        v17 = 1107296256;
        v18 = sub_2303DA120;
        v19 = &block_descriptor_6;
        v8 = _Block_copy(&aBlock);

        started = remote_device_start_browsing();

        _Block_release(v8);
LABEL_11:
        v15 = *(v0 + 72);
        *(v0 + 72) = started;

        return;
      }

      v5 = xpc_dictionary_create(0, 0, 0);
      v10 = sub_23041BE38();
      xpc_dictionary_set_value(v5, (v10 + 32), 0);
    }

    if (*(v0 + 36))
    {
      v11 = sub_23041BE38();
      xpc_dictionary_set_value(v5, (v11 + 32), 0);
    }

    else
    {
      remote_device_type_get_description();
      sub_23041BE98();
      v12 = sub_23041BE38();
      v13 = sub_23041BE38();

      xpc_dictionary_set_string(v5, (v12 + 32), (v13 + 32));
    }

    v20 = sub_2303DA490;
    v21 = v4;
    aBlock = MEMORY[0x277D85DD8];
    v17 = 1107296256;
    v18 = sub_2303DA120;
    v19 = &block_descriptor_9;
    v14 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    started = remote_device_start_browsing_matching();
    _Block_release(v14);
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_2303D9BF0(uint64_t result)
{
  if (*(result + 88))
  {
    result = sub_23041C3D8();
    __break(1u);
  }

  else
  {
    *(result + 88) = 1;
  }

  return result;
}

void sub_2303D9C88(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v5 = *(Strong + 56);
      aBlock[0] = 0;
      v6 = Strong;
      v5(aBlock);
      Strong = v6;
    }

    if (a1)
    {
      v7 = *(Strong + 40);
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a1;
      aBlock[4] = sub_2303DA660;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2303E4D4C;
      aBlock[3] = &block_descriptor_26;
      v10 = _Block_copy(aBlock);
      v11 = a1;
      v12 = v7;

      remote_device_set_connected_callback();
      _Block_release(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_2303D9E08(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    state = remote_device_get_state();
    swift_beginAccess();
    if (state == dword_27DB50264)
    {
      type metadata accessor for RemoteDevice();
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      v8 = *(v5 + 48);
      v9 = swift_allocObject();
      *(v9 + 16) = v5;
      *(v9 + 24) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_2303DA668;
      *(v10 + 24) = v9;
      v15[4] = sub_2303DA6E0;
      v15[5] = v10;
      v15[0] = MEMORY[0x277D85DD8];
      v15[1] = 1107296256;
      v15[2] = sub_2303D9C60;
      v15[3] = &block_descriptor_36;
      v11 = _Block_copy(v15);
      v12 = a3;

      dispatch_sync(v8, v11);
      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v14 = *(v5 + 56);
      v15[0] = v7;
      v14(v15);
    }
  }

  return result;
}

uint64_t sub_2303DA018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDevice.Identity();
  v5 = v4 - 8;
  MEMORY[0x28223BE28](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2303E541C();
  remote_device_get_name();
  v8 = sub_23041BE98();
  v9 = &v7[*(v5 + 28)];
  *v9 = v8;
  v9[1] = v10;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 80);
  *(a1 + 80) = 0x8000000000000000;
  sub_2304120F8(a2, v7, isUniquelyReferenced_nonNull_native);
  sub_2303DA670(v7);
  *(a1 + 80) = v13;
  return swift_endAccess();
}

void sub_2303DA120(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_2303DA198()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 72) = 0;
    v2 = v1;
    remote_device_browser_cancel();
  }
}

id *RemoteDeviceBrowser.deinit()
{
  v1 = v0[9];
  if (v1)
  {
    v0[9] = 0;
    remote_device_browser_cancel();
  }

  return v0;
}

uint64_t RemoteDeviceBrowser.__deallocating_deinit()
{
  RemoteDeviceBrowser.deinit();

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

void *sub_2303DA284(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC0);
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

void *sub_2303DA30C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2303DA58C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2303DA5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_2303DA630(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2303DA670(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDevice.Identity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2303DA70C(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    result = sub_23041BB88();
    *a2 = result;
  }

  else
  {
    v4 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(0xD000000000000010, 0x8000000230422B40, 0, v4, v5);

    return swift_willThrow();
  }

  return result;
}

id XPCFileDescriptor.WriteOptions.fileProtection.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *XPCFileDescriptor.WriteOptions.fileSecurity.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void XPCFileDescriptor.__allocating_init(forWritingFileAt:options:)(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = sub_23041B968();
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  MEMORY[0x28223BE28](v6);
  sub_23041B978();
  if (v2)
  {
    v7 = sub_23041B9A8();
    (*(*(v7 - 8) + 8))(a1, v7);

    return;
  }

  v8 = sub_23041B9A8();
  (*(*(v8 - 8) + 8))(a1, v8);

  type metadata accessor for XPCFileDescriptor();
  v9 = swift_allocObject();
  *(v9 + 16) = j__read;
  *(v9 + 24) = 0;
  *(v9 + 32) = j__write;
  *(v9 + 40) = 0;
  *(v9 + 48) = j__poll;
  *(v9 + 56) = 0;
  if (v10 < 0)
  {
    goto LABEL_8;
  }

  *(v9 + 64) = v10;
  *(v9 + 68) = 1;
}

void sub_2303DAA38(const char *a1@<X0>, void *a2@<X1>, __CFFileSecurity *a3@<X2>, _DWORD *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DF0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v8 - 8);
  v10 = &v20[-v9];
  v11 = sub_23041B7F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE28](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (a3)
    {
      mode = 0;
      if (CFFileSecurityGetMode(a3, &mode))
      {
        a3 = sub_23041CB98();
      }

      else
      {
        a3 = 0;
      }
    }

    v17 = XPCFileTransfer_open(a1, 1537, a2, 0, a3);

    if ((v17 & 0x80000000) == 0)
    {
      *a4 = v17;
      return;
    }

    v18 = MEMORY[0x231915210]();
    if (v18)
    {
      v19 = v18;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v19);
      (*(v12 + 56))(v10, 0, 1, v11);
      (*(v12 + 32))(v14, v10, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        sub_2303BA754(v10, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v15 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(0xD000000000000010, 0x8000000230422B40, 0, v15, v16);
  }

  swift_willThrow();
}

uint64_t XPCFileDescriptor.__allocating_init(fileDescriptor:closeWhenDone:)(int a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = j__read;
  *(result + 24) = 0;
  *(result + 32) = j__write;
  *(result + 40) = 0;
  *(result + 48) = j__poll;
  *(result + 56) = 0;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 64) = a1;
    *(result + 68) = a2 & 1;
  }

  return result;
}

uint64_t XPCFileDescriptor.init(fileDescriptor:closeWhenDone:)(uint64_t result, char a2)
{
  *(v2 + 16) = j__read;
  *(v2 + 24) = 0;
  *(v2 + 32) = j__write;
  *(v2 + 40) = 0;
  *(v2 + 48) = j__poll;
  *(v2 + 56) = 0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 64) = result;
    *(v2 + 68) = a2 & 1;
    return v2;
  }

  return result;
}

uint64_t sub_2303DAE58(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_23041B7F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dup(a1);
  if ((result & 0x80000000) != 0)
  {
    v10 = result;
    v11 = MEMORY[0x231915210]();
    if (v11)
    {
      v12 = v11;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v12);
      (*(v6 + 56))(v4, 0, 1, v5);
      (*(v6 + 32))(v8, v4, v5);
    }

    else
    {
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        sub_2303BA754(v4, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v6 + 8))(v8, v5);
    swift_willThrow();
    return v10;
  }

  return result;
}

uint64_t XPCFileDescriptor.__allocating_init(duplicating:)(uint64_t a1)
{
  v2 = sub_2303DAE58(*(a1 + 64));

  if (!v1)
  {
    type metadata accessor for XPCFileDescriptor();
    result = swift_allocObject();
    *(result + 16) = j__read;
    *(result + 24) = 0;
    *(result + 32) = j__write;
    *(result + 40) = 0;
    *(result + 48) = j__poll;
    *(result + 56) = 0;
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      *(result + 64) = v2;
      *(result + 68) = 1;
    }
  }

  return result;
}

void XPCFileDescriptor.__allocating_init(duplicating:)(void *a1)
{
  v3 = sub_2303DAE58([a1 fileDescriptor]);

  if (!v1)
  {
    type metadata accessor for XPCFileDescriptor();
    v4 = swift_allocObject();
    *(v4 + 16) = j__read;
    *(v4 + 24) = 0;
    *(v4 + 32) = j__write;
    *(v4 + 40) = 0;
    *(v4 + 48) = j__poll;
    *(v4 + 56) = 0;
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 64) = v3;
      *(v4 + 68) = 1;
    }
  }
}

uint64_t XPCFileDescriptor.__allocating_init(duplicating:)(void *a1)
{
  result = MEMORY[0x231917290]();
  if (result == 0x1ED3F1F30)
  {
    v3 = xpc_fd_dup(a1);
    if (v3 < 0)
    {
      v5 = sub_2303B9D74(MEMORY[0x277D84F90]);
      sub_2303BCF70();
      swift_allocError();
      static XPCError.unknown(_:from:userInfo:)(0xD00000000000002ALL, 0x80000002304229A0, 0, v5, v6);

      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    else
    {
      v4 = v3;
      swift_unknownObjectRelease();
      type metadata accessor for XPCFileDescriptor();
      result = swift_allocObject();
      *(result + 16) = j__read;
      *(result + 24) = 0;
      *(result + 32) = j__write;
      *(result + 40) = 0;
      *(result + 48) = j__poll;
      *(result + 56) = 0;
      *(result + 64) = v4;
      *(result + 68) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303DB314(int a1)
{
  result = sub_2303DAE58(a1);
  v3 = result;
  if (!v1)
  {
    type metadata accessor for XPCFileDescriptor();
    result = swift_allocObject();
    *(result + 16) = j__read;
    *(result + 24) = 0;
    *(result + 32) = j__write;
    *(result + 40) = 0;
    *(result + 48) = j__poll;
    *(result + 56) = 0;
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      *(result + 64) = v3;
      *(result + 68) = 1;
    }
  }

  return result;
}

void XPCFileDescriptor.__allocating_init(duplicating:)(__CFFileDescriptor *a1)
{
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  v4 = sub_2303DAE58(NativeDescriptor);

  if (!v1)
  {
    type metadata accessor for XPCFileDescriptor();
    v5 = swift_allocObject();
    *(v5 + 16) = j__read;
    *(v5 + 24) = 0;
    *(v5 + 32) = j__write;
    *(v5 + 40) = 0;
    *(v5 + 48) = j__poll;
    *(v5 + 56) = 0;
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 64) = v4;
      *(v5 + 68) = 1;
    }
  }
}

tcflag_t static XPCFileDescriptor.createPseudoterminal(terminalParameters:windowSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v30 = *MEMORY[0x277D85DF0];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_23041B7F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE28](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3 & 1;
  if (*(a1 + 72))
  {
    if (a3)
    {
      v15 = v12;
      LODWORD(v27.c_iflag) = -1;
      v26[0] = -1;
      if (!openpty(&v27, v26, 0, 0, 0))
      {
        c_iflag = v27.c_iflag;
        type metadata accessor for XPCFileDescriptor();
        v22 = swift_allocObject();
        *(v22 + 16) = j__read;
        *(v22 + 24) = 0;
        *(v22 + 32) = j__write;
        *(v22 + 40) = 0;
        *(v22 + 48) = j__poll;
        *(v22 + 56) = 0;
        if (c_iflag < 0)
        {
          __break(1u);
        }

        else
        {
          *(v22 + 64) = c_iflag;
          v23 = v22;
          *(v22 + 68) = 1;
          v24 = v26[0];
          v25 = swift_allocObject();
          *(v25 + 16) = j__read;
          *(v25 + 24) = 0;
          *(v25 + 32) = j__write;
          *(v25 + 40) = 0;
          *(v25 + 48) = j__poll;
          *(v25 + 56) = 0;
          if ((v24 & 0x80000000) == 0)
          {
            *(v25 + 64) = v24;
            *(v25 + 68) = 1;
            return v23;
          }
        }

        __break(1u);
      }

      v16 = MEMORY[0x231915210]();
      if (v16)
      {
        v17 = v16;
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(v17);
        (*(v11 + 56))(v9, 0, 1, v15);
        (*(v11 + 32))(v14, v9, v15);
      }

      else
      {
        (*(v11 + 56))(v9, 1, 1, v15);
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(5);
        if ((*(v11 + 48))(v9, 1, v15) != 1)
        {
          sub_2303BA754(v9, &qword_27DB4FFC8);
        }
      }

      sub_23041B7D8();
      (*(v11 + 8))(v14, v15);
      return swift_willThrow();
    }

    else
    {
      *v26 = a2;
      result = sub_2303DBBD4(v26, 0, &v27);
      if (!v3)
      {
        return v27.c_iflag;
      }
    }
  }

  else
  {
    v18 = *(a1 + 48);
    *v27.c_cc = *(a1 + 32);
    *&v27.c_cc[16] = v18;
    v27.c_ospeed = *(a1 + 64);
    v19 = *(a1 + 16);
    *&v27.c_iflag = *a1;
    *&v27.c_cflag = v19;
    result = sub_2303DB83C(&v27, &v28, v26);
    if (!v3)
    {
      return *v26;
    }
  }

  return result;
}

uint64_t sub_2303DB83C@<X0>(termios *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DF0];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_23041B7F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE28](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 8) & 1) == 0)
  {
    *v23 = *a2;
    result = sub_2303DBBD4(v23, a1, v21);
    if (v3)
    {
      return result;
    }

    v17 = *v21;
    result = v22;
    *a2 = *v23;
    *(a2 + 8) = 0;
LABEL_10:
    *a3 = v17;
    a3[1] = result;
    return result;
  }

  v21[0] = -1;
  v23[0] = -1;
  if (!openpty(v21, v23, 0, a1, 0))
  {
    v18 = v21[0];
    type metadata accessor for XPCFileDescriptor();
    v19 = swift_allocObject();
    *(v19 + 16) = j__read;
    *(v19 + 24) = 0;
    *(v19 + 32) = j__write;
    *(v19 + 40) = 0;
    *(v19 + 48) = j__poll;
    *(v19 + 56) = 0;
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = v19;
      *(v19 + 64) = v18;
      *(v19 + 68) = 1;
      v20 = v23[0];
      result = swift_allocObject();
      *(result + 16) = j__read;
      *(result + 24) = 0;
      *(result + 32) = j__write;
      *(result + 40) = 0;
      *(result + 48) = j__poll;
      *(result + 56) = 0;
      if ((v20 & 0x80000000) == 0)
      {
        *(result + 64) = v20;
        *(result + 68) = 1;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v14 = MEMORY[0x231915210]();
  if (v14)
  {
    v15 = v14;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(v15);
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(5);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_2303BA754(v9, &qword_27DB4FFC8);
    }
  }

  sub_23041B7D8();
  (*(v11 + 8))(v13, v10);
  return swift_willThrow();
}

uint64_t sub_2303DBBD4@<X0>(winsize *a1@<X0>, termios *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DF0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_23041B7F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = -1;
  v20 = -1;
  if (!openpty(&v20, &v19, 0, a2, a1))
  {
    v15 = v20;
    type metadata accessor for XPCFileDescriptor();
    v16 = swift_allocObject();
    *(v16 + 16) = j__read;
    *(v16 + 24) = 0;
    *(v16 + 32) = j__write;
    *(v16 + 40) = 0;
    *(v16 + 48) = j__poll;
    *(v16 + 56) = 0;
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      *(v16 + 64) = v15;
      *(v16 + 68) = 1;
      *a3 = v16;
      v17 = v19;
      result = swift_allocObject();
      *(result + 16) = j__read;
      *(result + 24) = 0;
      *(result + 32) = j__write;
      *(result + 40) = 0;
      *(result + 48) = j__poll;
      *(result + 56) = 0;
      if ((v17 & 0x80000000) == 0)
      {
        *(result + 64) = v17;
        *(result + 68) = 1;
        a3[1] = result;
        return result;
      }
    }

    __break(1u);
  }

  v13 = MEMORY[0x231915210]();
  if (v13)
  {
    v14 = v13;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(v14);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(5);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2303BA754(v8, &qword_27DB4FFC8);
    }
  }

  sub_23041B7D8();
  (*(v10 + 8))(v12, v9);
  return swift_willThrow();
}

uint64_t XPCFileDescriptor.deinit()
{
  if (*(v0 + 68) == 1)
  {
    close(*(v0 + 64));
  }

  return v0;
}

uint64_t XPCFileDescriptor.__deallocating_deinit()
{
  if (*(v0 + 68) == 1)
  {
    close(*(v0 + 64));
  }

  return MEMORY[0x2821FE8D8](v0, 69, 7);
}

uint64_t sub_2303DBFCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2303DF7A0;
  a2[1] = v6;
}

uint64_t sub_2303DC04C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_2303DF7FC;
  *(v6 + 24) = v5;
}

uint64_t sub_2303DC0DC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2303DC128(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2303DC1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2303DF74C;
  a2[1] = v6;
}

uint64_t sub_2303DC250(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = sub_2303DF748;
  *(v6 + 40) = v5;
}

uint64_t sub_2303DC2E0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2303DC32C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2303DC3D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2303DF70C;
  a2[1] = v6;
}

uint64_t sub_2303DC454(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 48) = sub_2303DF6C0;
  *(v6 + 56) = v5;
}

uint64_t sub_2303DC4E4()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2303DC530(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2303DC608()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v1 - 8);
  v3 = v12 - v2;
  v4 = sub_23041B7F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dup(*(v0 + 64));
  if ((result & 0x80000000) != 0)
  {
    v9 = result;
    v10 = MEMORY[0x231915210]();
    if (v10)
    {
      v11 = v10;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v11);
      (*(v5 + 56))(v3, 0, 1, v4);
      (*(v5 + 32))(v7, v3, v4);
    }

    else
    {
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_2303BA754(v3, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
    return v9;
  }

  return result;
}

uint64_t sub_2303DC83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_23041B7F8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE28](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 68))
  {
    __break(1u);
  }

  else
  {
    result = close(*(v0 + 64));
    if (result)
    {
      v9 = MEMORY[0x231915210]();
      if (v9)
      {
        v10 = v9;
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(v10);
        (*(v5 + 56))(v3, 0, 1, v4);
        (*(v5 + 32))(v8, v3, v4);
      }

      else
      {
        (*(v5 + 56))(v3, 1, 1, v4);
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(5);
        if ((*(v5 + 48))(v3, 1, v4) != 1)
        {
          sub_2303BA754(v3, &qword_27DB4FFC8);
        }
      }

      sub_23041B7D8();
      (*(v5 + 8))(v8, v4);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2303DCA6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_23041B7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x231915220](*(v1 + 64), 4, a1);
  if (result)
  {
    v11 = MEMORY[0x231915210]();
    if (v11)
    {
      v12 = v11;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v12);
      (*(v7 + 56))(v5, 0, 1, v6);
      (*(v7 + 32))(v9, v5, v6);
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_2303BA754(v5, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v7 + 8))(v9, v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303DCCA4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_23041BBC8();
  if (v1 == 1)
  {
    v3 = v2 & 0xFFFFFFFB;
  }

  else
  {
    v3 = v2 | 4u;
  }

  return sub_2303DCA6C(v3);
}

uint64_t sub_2303DCD50(char a1)
{
  v2 = sub_23041BBC8();
  if (a1)
  {
    v3 = v2 & 0xFFFFFFFB;
  }

  else
  {
    v3 = v2 | 4u;
  }

  return sub_2303DCA6C(v3);
}

uint64_t (*sub_2303DCDD0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 12) = (sub_23041BBC8() & 4) != 0;
  return sub_2303DCE28;
}

uint64_t sub_2303DCE28(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = sub_23041BBC8();
  if (v1)
  {
    v3 = v2 & 0xFFFFFFFB;
  }

  else
  {
    v3 = v2 | 4u;
  }

  return sub_2303DCA6C(v3);
}

uint64_t sub_2303DCEB4(char a1)
{
  v2 = sub_23041BBC8();
  if (a1)
  {
    v3 = v2 & 0xFFFFFFFB;
  }

  else
  {
    v3 = v2 | 4u;
  }

  return sub_2303DCA6C(v3);
}

void sub_2303DCF24(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_23041B7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (MEMORY[0x231915220](*(v1 + 64), 73, (a1 & 1) == 0))
  {
    v10 = MEMORY[0x231915210]();
    if (v10)
    {
      v11 = v10;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v11);
      (*(v7 + 56))(v5, 0, 1, v6);
      (*(v7 + 32))(v9, v5, v6);
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_2303BA754(v5, &qword_27DB4FFC8);
      }
    }

    v12 = sub_23041B7D8();
    (*(v7 + 8))(v9, v6);
    swift_willThrow();
  }
}

void (*sub_2303DD158(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_23041BBC8() == 0;
  return sub_2303DD1B0;
}

uint64_t sub_2303DD1D8(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_23041B7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x231915220](*(v1 + 64), 73, (a1 & 1) == 0);
  if (result)
  {
    v11 = MEMORY[0x231915210]();
    if (v11)
    {
      v12 = v11;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v12);
      (*(v7 + 56))(v5, 0, 1, v6);
      (*(v7 + 32))(v9, v5, v6);
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_2303BA754(v5, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v7 + 8))(v9, v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303DD414@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFD0);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 64);
  v7 = swift_slowAlloc();
  LODWORD(v6) = MEMORY[0x231915230](v6, 50, v7);
  v8 = sub_23041B9A8();
  v9 = *(*(v8 - 8) + 56);
  if (v6 == -1)
  {
    v9(a1, 1, 1, v8);

    JUMPOUT(0x231916D20);
  }

  v10 = v8;
  (v9)(v5, 1, 1);
  sub_23041B988();
  sub_2303BA754(v5, &qword_27DB4FFD0);
  v9(a1, 0, 1, v10);
  return MEMORY[0x231916D20](v7, -1, -1);
}

uint64_t sub_2303DD5AC(uint64_t a1)
{
  sub_2303D8244(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50600);
  type metadata accessor for _XPCObjectEncoder();
  if (!swift_dynamicCast())
  {
    v5 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    v7 = v6;
    v8 = sub_23041BDD8();
    v10 = v9;
    v11 = MEMORY[0x277D837D0];
    v29 = MEMORY[0x277D837D0];
    *&v28 = 0xD00000000000003DLL;
    *(&v28 + 1) = 0x80000002304229D0;
    sub_2303BA68C(&v28, v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    sub_2303BB1EC(v27, v8, v10, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = v11;
    *(inited + 40) = v14;
    *(inited + 48) = 0xD00000000000005FLL;
    *(inited + 56) = 0x80000002304225B0;
    v15 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0);
    v16 = sub_2303BAF24(0x3ED);
    XPCError.init(code:userInfo:)(v16, v15);
    v17 = v27[0];
    v18 = sub_2303BA458(MEMORY[0x277D84F90]);
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v28);
    sub_2303BA754(&v28, &qword_27DB50620);
    sub_2303BAA64(v17, *(&v17 + 1), v31, v18);
    v19 = *(&v28 + 1);
    *v7 = v28;
    v7[1] = v19;

    return swift_willThrow();
  }

  v2 = *(*&v27[0] + 24);
  if (v2)
  {
    type metadata accessor for RemoteXPCConnection();
    if (swift_dynamicCastClass())
    {

      v3 = sub_2303B9D74(MEMORY[0x277D84F90]);
      sub_2303BCF70();
      swift_allocError();
      static XPCError.xpcCoderRequired(_:from:userInfo:)(0xD00000000000006FLL, 0x8000000230422A50, v2, v3, v4);
LABEL_10:

      swift_willThrow();
    }
  }

  v21 = *(v1 + 64);

  v22 = xpc_fd_create(v21);
  if (!v22)
  {
    v25 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(0xD00000000000003DLL, 0x8000000230422A10, v2, v25, v26);
    goto LABEL_10;
  }

  v23 = v22;
  v24 = *(*&v27[0] + 32);
  v29 = &type metadata for XPCObjectSingleValueEncodingContainer;
  v30 = sub_2303D0778();
  *&v28 = *&v27[0];
  *(&v28 + 1) = v24;
  result = __swift_mutable_project_boxed_opaque_existential_1(&v28, &type metadata for XPCObjectSingleValueEncodingContainer);
  if (*(*result + 16))
  {
    __break(1u);
  }

  else
  {
    *(*result + 16) = v23;

    return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  return result;
}

uint64_t XPCFileDescriptor.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  XPCFileDescriptor.init(from:)(a1);
  return v2;
}

uint64_t XPCFileDescriptor.init(from:)(void *a1)
{
  *(v1 + 16) = j__read;
  *(v1 + 24) = 0;
  *(v1 + 32) = j__write;
  *(v1 + 40) = 0;
  *(v1 + 48) = j__poll;
  *(v1 + 56) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23041CBA8();
  if (v2)
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  sub_2303DF160();
  sub_23041C828();
  v4 = MEMORY[0x231917290](v14[0]);
  if (v4 != 0x1ED3F1F30)
  {
    v5 = v4;
    sub_2303D8244(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FED8);
    type metadata accessor for _XPCObjectDecoder();
    if (swift_dynamicCast())
    {
      v6 = *(v15[6] + 24);
    }

    else
    {
      v6 = 0;
    }

    v9 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.invalidType(_:expecting:from:userInfo:)(v5, 0, v6, v9, v10);

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v7 = xpc_fd_dup(v14[0]);
  if (v7 < 0)
  {
    v12 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(0xD00000000000002ALL, 0x80000002304229A0, 0, v12, v13);

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_11:

    type metadata accessor for XPCFileDescriptor();
    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  v8 = v7;
  swift_unknownObjectRelease();
  *(v1 + 64) = v8;
  *(v1 + 68) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_2303DDCB4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFD0);
  v4 = MEMORY[0x28223BE28](v3 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v4);
  v8 = v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23041F7B0;
  v32[1] = v2;
  swift_getMetatypeMetadata();
  v10 = sub_23041BE28();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2303BBBD4();
  v15 = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v16 = MEMORY[0x277D841E8];
  *(v9 + 96) = MEMORY[0x277D841D8];
  *(v9 + 104) = v16;
  *(v9 + 64) = v14;
  *(v9 + 72) = v1;
  v17 = *(v1 + 16);
  v18 = MEMORY[0x277D84A20];
  *(v9 + 136) = MEMORY[0x277D849A8];
  *(v9 + 144) = v18;
  *(v9 + 112) = v17;
  v19 = 1702195828;
  if (!*(v1 + 68))
  {
    v19 = 0x65736C6166;
  }

  v20 = 0xE500000000000000;
  if (*(v1 + 68))
  {
    v20 = 0xE400000000000000;
  }

  *(v9 + 176) = v13;
  *(v9 + 184) = v14;
  *(v9 + 152) = v19;
  *(v9 + 160) = v20;
  v21 = swift_slowAlloc();
  v22 = MEMORY[0x231915230](v17, 50, v21);
  v23 = sub_23041B9A8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  if (v22 == -1)
  {
    v26 = 1;
  }

  else
  {
    v25(v6, 1, 1, v23);
    sub_23041B988();
    sub_2303BA754(v6, &qword_27DB4FFD0);
    v26 = 0;
  }

  v25(v8, v26, 1, v23);
  MEMORY[0x231916D20](v21, -1, -1);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    sub_2303BA754(v8, &qword_27DB4FFD0);
    v27 = (v9 + 192);
    *(v9 + 216) = MEMORY[0x277D837D0];
    *(v9 + 224) = v15;
LABEL_12:
    *v27 = 0x29656E6F6E28;
    v30 = 0xE600000000000000;
    goto LABEL_13;
  }

  v28 = sub_23041B998();
  v30 = v29;
  (*(v24 + 8))(v8, v23);
  v27 = (v9 + 192);
  *(v9 + 216) = MEMORY[0x277D837D0];
  *(v9 + 224) = v15;
  if (!v30)
  {
    goto LABEL_12;
  }

  *v27 = v28;
LABEL_13:
  *(v9 + 200) = v30;
  return sub_23041BDE8();
}

uint64_t sub_2303DE014@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for XPCFileDescriptor();
  v5 = swift_allocObject();
  result = XPCFileDescriptor.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCFileDescriptor.poll(forReadability:forWritability:timeoutAfter:)(Swift::Bool forReadability, Swift::Bool forWritability, Swift::Double_optional timeoutAfter)
{
  v5 = v3;
  v6 = *&timeoutAfter.is_nil;
  v30 = *MEMORY[0x277D85DF0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_23041B7F8();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE28](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = forReadability;
  if (forWritability)
  {
    v15 = forReadability | 4;
  }

  if (v5)
  {
    v16 = 100;
    goto LABEL_9;
  }

  v17 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v17 <= -2147483650.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v17 >= 2147483650.0)
  {
    goto LABEL_23;
  }

  v16 = v17;
LABEL_9:
  v27 = *(v4 + 64);
  v28 = v15;
  v29 = 0;
  swift_beginAccess();
  v18 = *(v4 + 48);

  v19 = v18(&v27, 1, v16);

  if (v19 < 0)
  {
    v23 = MEMORY[0x231915210](v20);
    if (v23)
    {
      v24 = v23;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v24);
      v25 = v26;
      (*(v26 + 56))(v11, 0, 1, v12);
      (*(v25 + 32))(v14, v11, v12);
    }

    else
    {
      v25 = v26;
      (*(v26 + 56))(v11, 1, 1, v12);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v25 + 48))(v11, 1, v12) != 1)
      {
        sub_2303BA754(v11, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v25 + 8))(v14, v12);
    return swift_willThrow();
  }

  else
  {
    if ((v29 & 0x10) != 0)
    {
      v21.value = 2;
    }

    else
    {
      v21.value = 1;
    }

    if (v19)
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }
}

char XPCFileDescriptor.read(into:polling:)(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_23041B7F8();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE28](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 64);
  result = swift_beginAccess();
  if (a1)
  {
    v14 = *(v3 + 16);

    v15 = v14(v12, a1, a2 - a1);

    if (!v15)
    {
      return 0;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      return v15;
    }

    if ((v27 & 1) != 0 && ((v16 = MEMORY[0x231915210](v16), v16 == 35) || v16 == 4))
    {
      v18 = 0;
      result = XPCFileDescriptor.poll(forReadability:forWritability:timeoutAfter:)(1, 0, *&v17).value;
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v20 = MEMORY[0x231915210](v16);
      if (v20)
      {
        v21 = v20;
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(v21);
        v23 = v25;
        v22 = v26;
        (*(v25 + 56))(v8, 0, 1, v26);
        (*(v23 + 32))(v11, v8, v22);
      }

      else
      {
        v23 = v25;
        v22 = v26;
        (*(v25 + 56))(v8, 1, 1, v26);
        sub_2303B9D74(MEMORY[0x277D84F90]);
        POSIXError.init(uncheckedCode:userInfo:)(5);
        if ((*(v23 + 48))(v8, 1, v22) != 1)
        {
          sub_2303BA754(v8, &qword_27DB4FFC8);
        }
      }

      sub_23041B7D8();
      (*(v23 + 8))(v11, v22);
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCFileDescriptor.write(from:polling:)(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_23041B7F8();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 64);
  result = swift_beginAccess();
  if (a1)
  {
    v14 = *(v3 + 32);

    v15 = v14(v12, a1, a2 - a1);

    if (v15 && v15 < 0)
    {
      if ((v25 & 1) != 0 && ((v16 = MEMORY[0x231915210](v16), v16 == 35) || v16 == 4))
      {
        v18 = 0;
        XPCFileDescriptor.poll(forReadability:forWritability:timeoutAfter:)(0, 1, *&v17);
        if (!v19)
        {
          return 0;
        }
      }

      else
      {
        v20 = MEMORY[0x231915210](v16);
        if (v20)
        {
          v21 = v20;
          sub_2303B9D74(MEMORY[0x277D84F90]);
          POSIXError.init(uncheckedCode:userInfo:)(v21);
          v22 = v24;
          (*(v24 + 56))(v8, 0, 1, v9);
          (*(v22 + 32))(v11, v8, v9);
        }

        else
        {
          v22 = v24;
          (*(v24 + 56))(v8, 1, 1, v9);
          sub_2303B9D74(MEMORY[0x277D84F90]);
          POSIXError.init(uncheckedCode:userInfo:)(5);
          if ((*(v22 + 48))(v8, 1, v9) != 1)
          {
            sub_2303BA754(v8, &qword_27DB4FFC8);
          }
        }

        sub_23041B7D8();
        (*(v22 + 8))(v11, v9);
        swift_willThrow();
      }
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303DEA0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_23041B7F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23041BFE8();
  *(v7 + 16) = 2;
  *(v7 + 32) = -1;
  result = pipe((v7 + 32));
  if (result)
  {
    v9 = MEMORY[0x231915210]();
    if (v9)
    {
      v10 = v9;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(v10);
      (*(v4 + 56))(v2, 0, 1, v3);
      (*(v4 + 32))(v6, v2, v3);
    }

    else
    {
      (*(v4 + 56))(v2, 1, 1, v3);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      POSIXError.init(uncheckedCode:userInfo:)(5);
      if ((*(v4 + 48))(v2, 1, v3) != 1)
      {
        sub_2303BA754(v2, &qword_27DB4FFC8);
      }
    }

    sub_23041B7D8();
    (*(v4 + 8))(v6, v3);
    swift_willThrow();

    return v3;
  }

  v11 = *(v7 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v7 + 32);
  type metadata accessor for XPCFileDescriptor();
  result = swift_allocObject();
  *(result + 16) = j__read;
  *(result + 24) = 0;
  *(result + 32) = j__write;
  *(result + 40) = 0;
  *(result + 48) = j__poll;
  *(result + 56) = 0;
  if (v12 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  *(result + 64) = v12;
  *(result + 68) = 1;
  if (v11 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + 36);
  v14 = swift_allocObject();
  *(v14 + 16) = j__read;
  *(v14 + 24) = 0;
  *(v14 + 32) = j__write;
  *(v14 + 40) = 0;

  *(v14 + 48) = j__poll;
  *(v14 + 56) = 0;
  if ((v13 & 0x80000000) == 0)
  {
    *(v14 + 64) = v13;
    *(v14 + 68) = 1;
    return v3;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2303DED68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v18[-v4];
  v6 = sub_23041B7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_23041B968();
  if (result)
  {
    v19 = -1;
    MEMORY[0x28223BE28](result);
    *&v18[-16] = &v19;
    v11 = sub_23041B978();
    if (v1)
    {
      v12 = sub_23041B9A8();
      return (*(*(v12 - 8) + 8))(a1, v12);
    }

    else
    {
      v13 = v19;
      if (v19 < 0)
      {
        v15 = MEMORY[0x231915210](v11);
        if (v15)
        {
          v16 = v15;
          sub_2303B9D74(MEMORY[0x277D84F90]);
          POSIXError.init(uncheckedCode:userInfo:)(v16);
          (*(v7 + 56))(v5, 0, 1, v6);
          (*(v7 + 32))(v9, v5, v6);
        }

        else
        {
          (*(v7 + 56))(v5, 1, 1, v6);
          sub_2303B9D74(MEMORY[0x277D84F90]);
          POSIXError.init(uncheckedCode:userInfo:)(5);
          if ((*(v7 + 48))(v5, 1, v6) != 1)
          {
            sub_2303BA754(v5, &qword_27DB4FFC8);
          }
        }

        sub_23041B7D8();
        (*(v7 + 8))(v9, v6);
        swift_willThrow();
        v17 = sub_23041B9A8();
        return (*(*(v17 - 8) + 8))(a1, v17);
      }

      else
      {
        v14 = sub_23041B9A8();
        (*(*(v14 - 8) + 8))(a1, v14);
        type metadata accessor for XPCFileDescriptor();
        result = swift_allocObject();
        *(result + 16) = j__read;
        *(result + 24) = 0;
        *(result + 32) = j__write;
        *(result + 40) = 0;
        *(result + 48) = j__poll;
        *(result + 56) = 0;
        *(result + 64) = v13;
        *(result + 68) = 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2303DF160()
{
  result = qword_27DB4FFD8;
  if (!qword_27DB4FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFD8);
  }

  return result;
}

uint64_t sub_2303DF604(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2303DF660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2303DF6C0(uint64_t a1, int a2, int a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  HIDWORD(v6) = a3;
  v7 = a2;
  v4(&v6, &v8, &v7, &v6 + 4);
  return v6;
}

uint64_t sub_2303DF70C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, _DWORD *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_2303DF754(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v9 = a1;
  v7 = a3;
  v8 = a2;
  v4(&v6, &v9, &v8, &v7);
  return v6;
}

uint64_t sub_2303DF7A8@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t TypeUtils.NominalTypeKind.hashValue.getter()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

uint64_t sub_2303DF8C0()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

uint64_t sub_2303DF908()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

unint64_t sub_2303DF950()
{
  result = qword_27DB4FFE0;
  if (!qword_27DB4FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypeUtils.NominalTypeKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TypeUtils.NominalTypeKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NSFileHandle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFD0);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v12 - v4;
  v6 = [v1 fileDescriptor];
  v7 = swift_slowAlloc();
  LODWORD(v6) = MEMORY[0x231915230](v6, 50, v7);
  v8 = sub_23041B9A8();
  v9 = *(*(v8 - 8) + 56);
  if (v6 == -1)
  {
    v9(a1, 1, 1, v8);

    JUMPOUT(0x231916D20);
  }

  v10 = v8;
  (v9)(v5, 1, 1);
  sub_23041B988();
  sub_2303DFCB0(v5);
  v9(a1, 0, 1, v10);
  return MEMORY[0x231916D20](v7, -1, -1);
}

uint64_t sub_2303DFCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2303DFD18()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x6F666E4972657375;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

uint64_t sub_2303DFD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2303E3FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2303DFDC0(uint64_t a1)
{
  v2 = sub_2303E2244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303DFDFC(uint64_t a1)
{
  v2 = sub_2303E2244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2303DFE38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2303DFE48(uint64_t a1)
{
  v2 = sub_2303E4178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303DFE84(uint64_t a1)
{
  v2 = sub_2303E4178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2303DFEC0(uint64_t a1)
{
  v201 = *MEMORY[0x277D85DF0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = &v163 - v4;
  v177 = sub_23041BAA8();
  v6 = *(v177 - 8);
  MEMORY[0x28223BE28](v177 - 8);
  v170 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFD0);
  MEMORY[0x28223BE28](v8 - 8);
  v182 = &v163 - v9;
  v181 = sub_23041B9A8();
  v10 = *(v181 - 8);
  MEMORY[0x28223BE28](v181 - 8);
  v176 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB500A0);
  v171 = *(v190 - 8);
  MEMORY[0x28223BE28](v190);
  v191 = &v163 - v12;
  v13 = [v1 userInfo];
  v14 = sub_23041BCC8();

  v193 = v14;
  *&v194 = v1;
  sub_2303E42C4(0, &qword_27DB50010);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB500A8);
  if (swift_dynamicCast())
  {
    sub_2303BE65C(&v196, &v199);
    v16 = sub_23041BDD8();
    v18 = v17;
    v19 = sub_23041BDD8();
    if (*(v14 + 16))
    {
      v21 = sub_2303BA5F0(v19, v20);
      v23 = v22;

      if (v23)
      {
        sub_2303BAEC8(*(v14 + 56) + 32 * v21, &v194);
        sub_2303BA68C(&v194, &v196);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    __swift_project_boxed_opaque_existential_0(&v199, *(&v200[0] + 1));
    v24 = sub_23041B8C8();
    if (v25)
    {
      v26 = MEMORY[0x277D837D0];
    }

    else
    {
      v24 = 0;
      v26 = 0;
      *&v197 = 0;
    }

    *&v196 = v24;
    *(&v196 + 1) = v25;
    *(&v197 + 1) = v26;
    if (*(&v195 + 1))
    {
      sub_2303BA754(&v194, &qword_27DB50620);
    }

LABEL_12:
    if (*(&v197 + 1))
    {
      sub_2303BA68C(&v196, &v194);
      v27 = v193;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v27;
      sub_2303BB1EC(&v194, v16, v18, isUniquelyReferenced_nonNull_native);

      v29 = v192;
      v193 = v192;
    }

    else
    {
      sub_2303BA754(&v196, &qword_27DB50620);
      sub_2303BA930(v16, v18, &v194);

      sub_2303BA754(&v194, &qword_27DB50620);
      v29 = v193;
    }

    v30 = sub_23041BDD8();
    v32 = v31;
    v33 = sub_23041BDD8();
    if (*(v29 + 2))
    {
      v35 = sub_2303BA5F0(v33, v34);
      v37 = v36;

      if (v37)
      {
        sub_2303BAEC8(*(v29 + 7) + 32 * v35, &v194);
        sub_2303BA68C(&v194, &v196);
        goto LABEL_24;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    __swift_project_boxed_opaque_existential_0(&v199, *(&v200[0] + 1));
    v38 = sub_23041B8B8();
    if (v39)
    {
      v40 = MEMORY[0x277D837D0];
    }

    else
    {
      v38 = 0;
      v40 = 0;
      *&v197 = 0;
    }

    *&v196 = v38;
    *(&v196 + 1) = v39;
    *(&v197 + 1) = v40;
    if (*(&v195 + 1))
    {
      sub_2303BA754(&v194, &qword_27DB50620);
    }

LABEL_24:
    if (*(&v197 + 1))
    {
      sub_2303BA68C(&v196, &v194);
      v41 = v193;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v41;
      sub_2303BB1EC(&v194, v30, v32, v42);

      v43 = v192;
      v193 = v192;
    }

    else
    {
      sub_2303BA754(&v196, &qword_27DB50620);
      sub_2303BA930(v30, v32, &v194);

      sub_2303BA754(&v194, &qword_27DB50620);
      v43 = v193;
    }

    v44 = sub_23041BDD8();
    v46 = v45;
    v47 = sub_23041BDD8();
    if (*(v43 + 2))
    {
      v49 = sub_2303BA5F0(v47, v48);
      v51 = v50;

      if (v51)
      {
        sub_2303BAEC8(*(v43 + 7) + 32 * v49, &v194);
        sub_2303BA68C(&v194, &v196);
        goto LABEL_36;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    __swift_project_boxed_opaque_existential_0(&v199, *(&v200[0] + 1));
    v52 = sub_23041B8D8();
    if (v53)
    {
      v54 = MEMORY[0x277D837D0];
    }

    else
    {
      v52 = 0;
      v54 = 0;
      *&v197 = 0;
    }

    *&v196 = v52;
    *(&v196 + 1) = v53;
    *(&v197 + 1) = v54;
    if (*(&v195 + 1))
    {
      sub_2303BA754(&v194, &qword_27DB50620);
    }

LABEL_36:
    if (*(&v197 + 1))
    {
      sub_2303BA68C(&v196, &v194);
      v55 = v193;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v55;
      sub_2303BB1EC(&v194, v44, v46, v56);

      v57 = v192;
      v193 = v192;
    }

    else
    {
      sub_2303BA754(&v196, &qword_27DB50620);
      sub_2303BA930(v44, v46, &v194);

      sub_2303BA754(&v194, &qword_27DB50620);
      v57 = v193;
    }

    v58 = sub_23041BDD8();
    v60 = v59;
    v61 = sub_23041BDD8();
    if (*(v57 + 2))
    {
      v63 = sub_2303BA5F0(v61, v62);
      v65 = v64;

      if (v65)
      {
        sub_2303BAEC8(*(v57 + 7) + 32 * v63, &v194);
        sub_2303BA68C(&v194, &v196);
LABEL_48:
        if (*(&v197 + 1))
        {
          sub_2303BA68C(&v196, &v194);
          v69 = v193;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v192 = v69;
          sub_2303BB1EC(&v194, v58, v60, v70);

          v193 = v192;
        }

        else
        {
          sub_2303BA754(&v196, &qword_27DB50620);
          sub_2303BA930(v58, v60, &v194);

          sub_2303BA754(&v194, &qword_27DB50620);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v199);
        goto LABEL_52;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    __swift_project_boxed_opaque_existential_0(&v199, *(&v200[0] + 1));
    v66 = sub_23041B8A8();
    if (v67)
    {
      v68 = MEMORY[0x277D837D0];
    }

    else
    {
      v66 = 0;
      v68 = 0;
      *&v197 = 0;
    }

    *&v196 = v66;
    *(&v196 + 1) = v67;
    *(&v197 + 1) = v68;
    if (*(&v195 + 1))
    {
      sub_2303BA754(&v194, &qword_27DB50620);
    }

    goto LABEL_48;
  }

  *&v198 = 0;
  v196 = 0u;
  v197 = 0u;
  sub_2303BA754(&v196, &qword_27DB500B0);
LABEL_52:
  v71 = v193;
  if (!*(v193 + 2))
  {
  }

  LOBYTE(v199) = 2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFF0);
  v73 = sub_2303E4234(&qword_27DB500B8, &qword_27DB4FFF0);
  sub_2303E4178();
  v167 = a1;
  v166 = v72;
  v165 = v73;
  sub_23041C988();
  v74 = *(v71 + 8);
  v188 = v71 + 64;
  v75 = 1 << *(v71 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v184 = (v75 + 63) >> 6;
  v179 = (v10 + 56);
  v174 = (v6 + 56);
  v164 = " lower-fidelity user info: %@";
  v169 = (v6 + 32);
  v168 = (v6 + 8);
  v173 = (v10 + 32);
  v172 = (v10 + 8);
  v187 = 0x8000000230422D50;
  v186 = *MEMORY[0x277CCA7E8];
  swift_bridgeObjectRetain_n();
  v78 = 0;
  v185 = xmmword_23041E310;
  v175 = xmmword_23041F9D0;
  v178 = xmmword_23041F9C0;
  v180 = v5;
  v189 = v71;
  while (1)
  {
    if (v77)
    {
      v80 = v78;
LABEL_68:
      v83 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v84 = v83 | (v80 << 6);
      v85 = (*(v71 + 6) + 16 * v84);
      v86 = *v85;
      v87 = v85[1];
      sub_2303BAEC8(*(v71 + 7) + 32 * v84, &v194);
      *&v196 = v86;
      *(&v196 + 1) = v87;
      sub_2303BA68C(&v194, &v197);
    }

    else
    {
      v81 = v184 <= v78 + 1 ? v78 + 1 : v184;
      v82 = v81 - 1;
      while (1)
      {
        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          __break(1u);
        }

        if (v80 >= v184)
        {
          break;
        }

        v77 = *&v188[8 * v80];
        ++v78;
        if (v77)
        {
          v78 = v80;
          goto LABEL_68;
        }
      }

      v77 = 0;
      v197 = 0u;
      v198 = 0u;
      v78 = v82;
      v196 = 0u;
    }

    v199 = v196;
    v200[0] = v197;
    v200[1] = v198;
    v88 = *(&v196 + 1);
    if (!*(&v196 + 1))
    {
      break;
    }

    v89 = v199;
    sub_2303BA68C(v200, &v196);
    sub_2303BAEC8(&v196, &v194);

    if (swift_dynamicCast())
    {
      *&v194 = v89;
      *(&v194 + 1) = v88;
      sub_23041C538();

LABEL_78:

LABEL_79:
      __swift_destroy_boxed_opaque_existential_1Tm(&v196);

      goto LABEL_57;
    }

    sub_2303BAEC8(&v196, &v194);
    if (swift_dynamicCast())
    {
      *&v194 = v89;
      *(&v194 + 1) = v88;
      sub_23041C548();
      goto LABEL_78;
    }

    sub_2303BAEC8(&v196, &v194);
    sub_2303E42C4(0, &qword_27DB50078);
    if (swift_dynamicCast())
    {
      v90 = v192;
      if (CFNumberIsFloatType(v192))
      {
        [(__CFNumber *)v90 doubleValue];
        *&v194 = v89;
        *(&v194 + 1) = v88;
        sub_23041C558();
      }

      else
      {
        v126 = sub_23041C1A8();
        v127 = [(__CFNumber *)v90 compare:v126];

        if (v127 == -1)
        {
          [(__CFNumber *)v90 longLongValue];
          *&v194 = v89;
          *(&v194 + 1) = v88;
          sub_23041C588();
        }

        else
        {
          [(__CFNumber *)v90 unsignedLongLongValue];
          *&v194 = v89;
          *(&v194 + 1) = v88;
          sub_23041C598();
        }
      }

      goto LABEL_79;
    }

    sub_2303BAEC8(&v196, &v194);
    v91 = v182;
    v92 = v181;
    v93 = swift_dynamicCast();
    v94 = *v179;
    if (v93)
    {
      v94(v91, 0, 1, v92);
      v95 = v176;
      (*v173)(v176, v91, v92);
      *&v194 = v89;
      *(&v194 + 1) = v88;
      sub_2303E427C(&qword_27DB500D8, MEMORY[0x277CC9260]);
      sub_23041C578();

      (*v172)(v95, v92);
      goto LABEL_79;
    }

    v94(v91, 1, 1, v92);
    sub_2303BA754(v91, &qword_27DB4FFD0);
    sub_2303BAEC8(&v196, &v194);
    v96 = v177;
    v97 = swift_dynamicCast();
    v98 = *v174;
    if (v97)
    {
      v98(v5, 0, 1, v96);
      v99 = v170;
      (*v169)(v170, v5, v96);
      *&v194 = v89;
      *(&v194 + 1) = v88;
      sub_2303E427C(&qword_27DB4FF30, MEMORY[0x277CC95F0]);
      sub_23041C578();

      (*v168)(v99, v96);
      goto LABEL_79;
    }

    v98(v5, 1, 1, v96);
    sub_2303BA754(v5, &unk_27DB4FE40);
    sub_2303BAEC8(&v196, &v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    if (swift_dynamicCast())
    {
      v128 = v192;
      v129 = sub_23041B928();
      *&v194 = v89;
      *(&v194 + 1) = v88;
      v192 = v129;
      sub_2303E4234(&qword_27DB500D0, &qword_27DB500A0);
      sub_2303E21F0();
      v130 = v129;
      sub_23041C9A8();

      __swift_destroy_boxed_opaque_existential_1Tm(&v196);

      goto LABEL_106;
    }

    v136 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    v137 = swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(0xD000000000000010, v164 | 0x8000000000000000, 0, v136, v138);

    swift_willThrow();
    if ((v89 != 0xD00000000000001DLL || v187 != v88) && (sub_23041C808() & 1) == 0)
    {
      sub_2303BAEC8(&v196, &v194);
      v79 = v137;
      sub_23041BE28();
      *&v194 = v89;
      *(&v194 + 1) = v88;
      sub_23041C538();

      v183 = sub_23041C0D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
      v119 = swift_allocObject();
      *(v119 + 16) = v175;
      v120 = MEMORY[0x277D837D0];
      *(v119 + 56) = MEMORY[0x277D837D0];
      v121 = sub_2303BBBD4();
      *(v119 + 64) = v121;
      *(v119 + 32) = v89;
      *(v119 + 40) = v88;
      *&v194 = v137;
      v122 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
      v123 = sub_23041BE28();
      *(v119 + 96) = v120;
      *(v119 + 104) = v121;
      *(v119 + 72) = v123;
      *(v119 + 80) = v124;
      sub_2303E42C4(0, &qword_27DB502F0);
      v125 = sub_23041C1B8();
      sub_23041BB28();

      __swift_destroy_boxed_opaque_existential_1Tm(&v196);
      goto LABEL_57;
    }

    v100 = v137;
    swift_bridgeObjectRelease_n();
    v101 = sub_23041BDD8();
    v71 = v189;
    if (*(v189 + 16))
    {
      v103 = sub_2303BA5F0(v101, v102);
      v105 = v104;

      if (v105)
      {
        sub_2303BAEC8(*(v71 + 7) + 32 * v103, &v194);
        sub_2303BA754(&v194, &qword_27DB50620);
        sub_23041C0D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
        v106 = swift_allocObject();
        *(v106 + 16) = v185;
        *&v194 = v137;
        v107 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
        v108 = sub_23041BE28();
        v110 = v109;
        *(v106 + 56) = MEMORY[0x277D837D0];
        *(v106 + 64) = sub_2303BBBD4();
        *(v106 + 32) = v108;
        *(v106 + 40) = v110;
        v71 = v189;
        sub_2303E42C4(0, &qword_27DB502F0);
        v111 = sub_23041C1B8();
        sub_23041BB28();
        goto LABEL_103;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    sub_2303BA754(&v194, &qword_27DB50620);
    if (*(v71 + 2) && (v112 = sub_2303BA5F0(0xD00000000000001DLL, v187), (v113 & 1) != 0) && (sub_2303BAEC8(*(v71 + 7) + 32 * v112, &v194), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB500C8), (swift_dynamicCast() & 1) != 0))
    {
      if (!*(v192 + 2))
      {

        goto LABEL_102;
      }

      v114 = *(v192 + 4);
      v115 = v114;

      v116 = sub_23041B928();
      *&v194 = sub_23041BDD8();
      *(&v194 + 1) = v117;
      v192 = v116;
      sub_2303E4234(&qword_27DB500D0, &qword_27DB500A0);
      sub_2303E21F0();
      v118 = v116;
      sub_23041C9A8();

      sub_23041C0D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
      v139 = swift_allocObject();
      *(v139 + 16) = v185;
      *&v194 = v137;
      v140 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
      v141 = sub_23041BE28();
      v143 = v142;
      *(v139 + 56) = MEMORY[0x277D837D0];
      *(v139 + 64) = sub_2303BBBD4();
      *(v139 + 32) = v141;
      *(v139 + 40) = v143;
      sub_2303E42C4(0, &qword_27DB502F0);
      v144 = sub_23041C1B8();
      sub_23041BB28();

      __swift_destroy_boxed_opaque_existential_1Tm(&v196);
LABEL_106:
      v5 = v180;
LABEL_57:
      v71 = v189;
    }

    else
    {
LABEL_102:
      sub_23041C0B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
      v131 = swift_allocObject();
      *(v131 + 16) = v185;
      *&v194 = v137;
      v132 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
      v133 = sub_23041BE28();
      v135 = v134;
      *(v131 + 56) = MEMORY[0x277D837D0];
      *(v131 + 64) = sub_2303BBBD4();
      *(v131 + 32) = v133;
      *(v131 + 40) = v135;
      sub_2303E42C4(0, &qword_27DB502F0);
      v111 = sub_23041C1B8();
      sub_23041BB28();
LABEL_103:

      __swift_destroy_boxed_opaque_existential_1Tm(&v196);
    }
  }

  (*(v171 + 8))(v191, v190);
  v145 = v189;

  sub_2303E2690(v145);

  v146 = objc_opt_self();
  v147 = MEMORY[0x277D837D0];
  v148 = sub_23041BCB8();

  *&v199 = 0;
  v149 = [v146 archivedDataWithRootObject:v148 requiringSecureCoding:1 error:&v199];

  v150 = v199;
  if (v149)
  {
    v151 = sub_23041B9E8();
    v153 = v152;

    *&v199 = v151;
    *(&v199 + 1) = v153;
    LOBYTE(v196) = 3;
    sub_2303E41E0();
    sub_23041C9A8();
    sub_2303D2DB4(v151, v153);
  }

  else
  {
    v154 = v150;
    v155 = sub_23041B938();

    swift_willThrow();
    sub_23041C0B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v156 = swift_allocObject();
    *(v156 + 16) = v185;
    *&v199 = v155;
    v157 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    v158 = sub_23041BE28();
    v160 = v159;
    *(v156 + 56) = v147;
    *(v156 + 64) = sub_2303BBBD4();
    *(v156 + 32) = v158;
    *(v156 + 40) = v160;
    sub_2303E42C4(0, &qword_27DB502F0);
    v161 = sub_23041C1B8();
    sub_23041BB28();
  }
}

void KeyedEncodingContainerProtocol.encode(_:forKey:)(void *a1)
{
  sub_2303E21F0();
  v2 = a1;
  sub_23041C9A8();
}

uint64_t NSError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2303E2244();
  sub_23041CBC8();
  v9 = [v3 domain];
  sub_23041BDD8();

  v11[15] = 0;
  sub_23041C538();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    [v3 code];
    v11[14] = 1;
    sub_23041C568();
    sub_2303DFEC0(v8);
    return (*(v6 + 8))(v8, v5);
  }
}

void *NSError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50008);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = &v12 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2303E2244();
  sub_23041CBB8();
  if (!v1)
  {
    v15 = 0;
    sub_23041C488();
    v14 = 1;
    v13 = sub_23041C4B8();
    sub_2303E2DE8();
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_23041BDA8();

    v11 = sub_23041BCB8();

    v7 = [v9 initWithDomain:v10 code:v13 userInfo:v11];

    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_2303E21F0()
{
  result = qword_27DB4FFE8;
  if (!qword_27DB4FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFE8);
  }

  return result;
}

unint64_t sub_2303E2244()
{
  result = qword_27DB4FFF8;
  if (!qword_27DB4FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FFF8);
  }

  return result;
}

unint64_t sub_2303E2298()
{
  result = qword_27DB50000;
  if (!qword_27DB50000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50000);
  }

  return result;
}

uint64_t NSErrorContainer.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2303E42C4(0, &qword_27DB50010);
  sub_2303D8244(a1, v7);
  v5 = NSError.init(from:)(v7);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id sub_2303E23A4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_2303E23B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2303E42C4(0, &qword_27DB50010);
  sub_2303D8244(a1, v7);
  v5 = NSError.init(from:)(v7);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(void *a1)
{
  sub_2303E21F0();
  v2 = a1;
  sub_23041C998();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  sub_2303E2298();
  result = sub_23041C8B8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void TopLevelEncoder.encode(_:)(void *a1)
{
  sub_2303E21F0();
  v2 = a1;
  sub_23041BBF8();
}

void *sub_2303E2614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, ValueMetadata *, uint64_t, ValueMetadata *, unint64_t, uint64_t, uint64_t))
{
  v10 = sub_2303E2298();
  result = a5(&v12, &type metadata for NSErrorContainer, a2, &type metadata for NSErrorContainer, v10, a3, a4);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_2303E2690(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DF0];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE28](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2303E27F0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2303E29D4(v8, v4, v2);
  result = MEMORY[0x231916D20](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_2303E27F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = 0;
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
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_2303BAEC8(*(a3 + 56) + 32 * v13, v19);
    sub_2303BAEC8(v19, &v18);
    swift_bridgeObjectRetain_n();

    sub_2303E42C4(0, &unk_27DB50240);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v19);

      *(v16 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        return sub_2303E2A4C(v16, a2, v17, a3);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
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
      return sub_2303E2A4C(v16, a2, v17, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2303E29D4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2303E27F0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2303E2A4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
  result = sub_23041C428();
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
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_2303BAEC8(v17 + 32 * v16, v33);
    sub_2303BA68C(v33, v32);
    sub_23041CB48();

    sub_23041BE78();
    result = sub_23041CB78();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_2303BA68C(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_2303E2C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50060);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23041F9E0;
  *(v0 + 32) = sub_2303E42C4(0, &qword_27DB50068);
  *(v0 + 40) = sub_2303E42C4(0, &qword_27DB50070);
  *(v0 + 48) = sub_2303E42C4(0, &qword_27DB50560);
  *(v0 + 56) = sub_2303E42C4(0, &qword_27DB50078);
  *(v0 + 64) = sub_2303E42C4(0, &qword_27DB50080);
  *(v0 + 72) = sub_2303E42C4(0, &qword_27DB50088);
  *(v0 + 80) = sub_2303E42C4(0, &qword_27DB50090);
  *(v0 + 88) = sub_2303E42C4(0, &qword_27DB50098);
  *(v0 + 96) = sub_2303E42C4(0, &qword_27DB50010);
  return v0;
}

uint64_t sub_2303E2DE8()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50030);
  v0 = *(v50 - 8);
  MEMORY[0x28223BE28](v50);
  v2 = v48 - v1;
  LOBYTE(v56) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50008);
  sub_2303E4234(&qword_27DB50038, &qword_27DB50008);
  sub_2303E4124();
  sub_23041C8B8();
  v53 = v2;
  v10 = *(&v58 + 1);
  if (*(&v58 + 1) >> 60 == 15)
  {
    v9 = sub_2303BA458(MEMORY[0x277D84F90]);
    goto LABEL_3;
  }

  v38 = v58;
  sub_2303E42C4(0, &unk_27DB501C0);
  sub_2303E2C9C();
  sub_23041C0F8();

  if (!MetatypeMetadata)
  {
    sub_2303BA754(&v56, &qword_27DB50620);
    LOBYTE(v58) = 3;
    sub_23041C328();
    v41 = swift_allocError();
    sub_23041C2F8();
    swift_willThrow();
    sub_2303E41CC(v38, v10);
LABEL_2:
    sub_23041C0B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23041E310;
    *&v58 = v41;
    v4 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
    v5 = sub_23041BE28();
    v7 = v6;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_2303BBBD4();
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    sub_2303E42C4(0, &qword_27DB502F0);
    v8 = sub_23041C1B8();
    sub_23041BB28();

    v9 = sub_2303BA458(MEMORY[0x277D84F90]);
    v2 = v53;
    goto LABEL_3;
  }

  sub_2303BA68C(&v56, &v58);
  sub_2303BAEC8(&v58, &v56);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50058);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = v40;
    __swift_project_boxed_opaque_existential_0(&v58, v59);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v56 = DynamicType;
    v52 = sub_23041C328();
    v41 = swift_allocError();
    v48[0] = v43;
    v44 = sub_23041C8A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 56) = &_s10_CodingKeyON;
    *(inited + 64) = sub_2303E2244();
    *(inited + 32) = 3;
    v54 = v44;
    sub_23041B3F8(inited);
    v49 = v54;
    v48[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0) + 48);
    v46 = v48[0];
    *v48[0] = v51;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_23041C288();

    v54 = 0xD000000000000037;
    v55 = 0x8000000230422C80;
    __swift_project_boxed_opaque_existential_0(&v56, MetatypeMetadata);
    swift_getDynamicType();
    v47 = sub_23041CC18();
    MEMORY[0x231915500](v47);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v52 - 8) + 104))(v46, *MEMORY[0x277D84160]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
    swift_willThrow();
    sub_2303E41CC(v38, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
    goto LABEL_2;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  sub_2303E41CC(v38, v10);
  v2 = v53;
  v9 = v54;
LABEL_3:
  LOBYTE(v58) = 2;
  if ((sub_23041C8D8() & 1) == 0)
  {
    return v9;
  }

  LOBYTE(v58) = 2;
  sub_2303E4178();
  sub_23041C898();
  v49 = v0;
  v11 = v50;
  v12 = sub_23041C4F8();
  v13 = v12;
  v52 = *(v12 + 16);
  if (!v52)
  {
LABEL_28:
    (*(v49 + 8))(v2, v11);

    return v9;
  }

  v14 = 0;
  v15 = (v12 + 40);
  v51 = v12;
  while (v14 < *(v13 + 16))
  {
    v19 = *(v15 - 1);
    v18 = *v15;
    v20 = v9[2];

    if (v20)
    {

      sub_2303BA5F0(v19, v18);
      v22 = v21;

      if (v22)
      {

        goto LABEL_11;
      }
    }

    *&v58 = v19;
    *(&v58 + 1) = v18;
    v23 = sub_23041C488();
    v59 = MEMORY[0x277D837D0];
    *&v58 = v23;
    *(&v58 + 1) = v24;
    sub_2303BA68C(&v58, &v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v9;
    v26 = sub_2303BA5F0(v19, v18);
    v28 = v9[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_36;
    }

    v32 = v27;
    if (v9[3] < v31)
    {
      sub_2303BB33C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2303BA5F0(v19, v18);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_38;
      }

LABEL_21:
      v2 = v53;
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v37 = v26;
    sub_230419718();
    v26 = v37;
    v11 = v50;
    v2 = v53;
    if ((v32 & 1) == 0)
    {
LABEL_22:
      v9 = v54;
      *(v54 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v34 = (v9[6] + 16 * v26);
      *v34 = v19;
      v34[1] = v18;
      sub_2303BA68C(&v56, (v9[7] + 32 * v26));
      v35 = v9[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_37;
      }

      v9[2] = v36;
      goto LABEL_10;
    }

LABEL_9:
    v16 = v26;

    v9 = v54;
    v17 = (*(v54 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    sub_2303BA68C(&v56, v17);
LABEL_10:
    v13 = v51;
LABEL_11:
    ++v14;
    v15 += 2;
    if (v52 == v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
LABEL_37:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_38:
  result = sub_23041CAA8();
  __break(1u);
  return result;
}

unint64_t sub_2303E3EB8()
{
  result = qword_27DB50018;
  if (!qword_27DB50018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50018);
  }

  return result;
}

unint64_t sub_2303E3F10()
{
  result = qword_27DB50020;
  if (!qword_27DB50020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50020);
  }

  return result;
}

unint64_t sub_2303E3F68()
{
  result = qword_27DB50028;
  if (!qword_27DB50028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50028);
  }

  return result;
}

uint64_t sub_2303E3FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_23041C808() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_23041C808() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_23041C808() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230422B60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23041C808();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2303E4124()
{
  result = qword_27DB50040;
  if (!qword_27DB50040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50040);
  }

  return result;
}

unint64_t sub_2303E4178()
{
  result = qword_27DB50048;
  if (!qword_27DB50048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50048);
  }

  return result;
}

uint64_t sub_2303E41CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2303D2DB4(a1, a2);
  }

  return a1;
}

unint64_t sub_2303E41E0()
{
  result = qword_27DB500C0;
  if (!qword_27DB500C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB500C0);
  }

  return result;
}

uint64_t sub_2303E4234(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2303E427C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2303E42C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2303E430C(uint64_t a1, int a2)
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

uint64_t sub_2303E4354(uint64_t result, int a2, int a3)
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

unint64_t sub_2303E43A4()
{
  result = qword_27DB500E0;
  if (!qword_27DB500E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB500E0);
  }

  return result;
}

unint64_t sub_2303E43FC()
{
  result = qword_27DB500E8;
  if (!qword_27DB500E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB500E8);
  }

  return result;
}

uint64_t sub_2303E4450()
{
  v1 = sub_23041BA38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE28](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v3);
  v7 = &v31 - v6;
  sub_23041BA28();
  if (v8 < -9223372040.0)
  {
    if (qword_27DB4FC60 != -1)
    {
      swift_once();
    }

    v9 = sub_23041BB58();
    __swift_project_value_buffer(v9, qword_27DB500F0);
    (*(v2 + 16))(v7, v0, v1);
    v10 = sub_23041BB38();
    v11 = sub_23041C0B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      sub_2303E498C();
      v14 = sub_23041C5C8();
      v16 = v15;
      (*(v2 + 8))(v7, v1);
      v17 = sub_2303EFD30(v14, v16, &v32);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2303B3000, v10, v11, "Provided date '%s' was outside of the expressible range of libxpc. It has been clipped to '1677-09-21 00:12:44'.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x231916D20](v13, -1, -1);
      MEMORY[0x231916D20](v12, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
    }

    return 0x8000000000000000;
  }

  sub_23041BA28();
  if (v19 <= 9223372040.0)
  {
    result = sub_23041BA28();
    v30 = v29 * 1000000000.0;
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v30 > -9.22337204e18)
    {
      if (v30 < 9.22337204e18)
      {
        return v30;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (qword_27DB4FC60 != -1)
  {
    swift_once();
  }

  v20 = sub_23041BB58();
  __swift_project_value_buffer(v20, qword_27DB500F0);
  (*(v2 + 16))(v5, v0, v1);
  v21 = sub_23041BB38();
  v22 = sub_23041C0B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    sub_2303E498C();
    v25 = sub_23041C5C8();
    v27 = v26;
    (*(v2 + 8))(v5, v1);
    v28 = sub_2303EFD30(v25, v27, &v32);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2303B3000, v21, v22, "Provided date '%s' was outside of the expressible range of libxpc. It has been clipped to '2262-04-11 23:47:15'.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x231916D20](v24, -1, -1);
    MEMORY[0x231916D20](v23, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return 0x7FFFFFFFC4653800;
}

uint64_t sub_2303E48D0()
{
  v0 = sub_23041BB58();
  __swift_allocate_value_buffer(v0, qword_27DB500F0);
  __swift_project_value_buffer(v0, qword_27DB500F0);
  return sub_23041BB48();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2303E498C()
{
  result = qword_27DB50108;
  if (!qword_27DB50108)
  {
    sub_23041BA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50108);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2303E4A48()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2303E4A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DF0];
  v6 = sub_23041B7F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  type metadata accessor for POSIXThread.Context();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v14[0] = 0;

  result = pthread_create(v14, 0, sub_2303E4C70, v10);
  if (result)
  {
    v12 = result;

    sub_2303B9D74(MEMORY[0x277D84F90]);
    POSIXError.init(uncheckedCode:userInfo:)(v12);
    sub_23041B7D8();
    (*(v7 + 8))(v9, v6);
    swift_willThrow();

    return v3;
  }

  v13 = v14[0];
  if (v14[0])
  {

    *(v3 + 16) = v13;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2303E4C70(uint64_t a1)
{
  v1 = *(a1 + 24);

  v1(v2);

  return 0;
}

uint64_t RemoteDevice.__allocating_init(underlyingDevice:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_2303E4D4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t static RemoteDevice.Identity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23041BA68() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RemoteDevice.Identity() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_23041C808();
}

uint64_t RemoteDevice.Identity.hash(into:)()
{
  sub_23041BAA8();
  sub_2303E5964(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  type metadata accessor for RemoteDevice.Identity();

  return sub_23041BE78();
}

uint64_t RemoteDevice.Identity.hashValue.getter()
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303E5964(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  type metadata accessor for RemoteDevice.Identity();
  sub_23041BE78();
  return sub_23041CB78();
}

uint64_t sub_2303E4F78()
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303E5964(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  sub_23041BE78();
  return sub_23041CB78();
}

uint64_t sub_2303E5020()
{
  sub_23041BAA8();
  sub_2303E5964(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();

  return sub_23041BE78();
}

uint64_t sub_2303E50BC()
{
  sub_23041CB48();
  sub_23041BAA8();
  sub_2303E5964(&qword_27DB4FF38, MEMORY[0x277CC95F0]);
  sub_23041BD48();
  sub_23041BE78();
  return sub_23041CB78();
}

uint64_t sub_2303E5160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23041BA68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_23041C808();
}

uint64_t static RemoteDevice.loopbackDevice()()
{
  swift_beginAccess();
  result = remote_device_copy_unique_of_type();
  if (result)
  {
    v1 = result;
    type metadata accessor for RemoteDevice();
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  return result;
}

uint64_t type metadata accessor for RemoteDevice.Identity()
{
  result = qword_27DB50118;
  if (!qword_27DB50118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2303E52C8()
{
  state = remote_device_get_state();
  swift_beginAccess();
  return state == dword_27DB50264;
}

uint64_t sub_2303E5328@<X0>(uint64_t a1@<X8>)
{
  sub_2303E541C();
  remote_device_get_name();
  v2 = sub_23041BE98();
  v4 = v3;
  result = type metadata accessor for RemoteDevice.Identity();
  v6 = (a1 + *(result + 20));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

uint64_t sub_2303E537C()
{
  remote_device_get_name();

  return sub_23041BE98();
}

void *sub_2303E53A8()
{
  result = remote_device_copy_property();
  if (result)
  {
    if (xpc_string_get_string_ptr(result))
    {
      v1 = sub_23041BE98();
      swift_unknownObjectRelease();
      return v1;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2303E541C()
{
  v8[3] = *MEMORY[0x277D85DF0];
  v0 = sub_23041BAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE28](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23041BA98();
  v4 = sub_23041BA88();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[1] = v4;
  v8[2] = v6;
  remote_device_copy_uuid();
  return sub_23041BA78();
}

void sub_2303E55EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v13 = sub_2303E58BC;
  v14 = v5;
  v9 = MEMORY[0x277D85DD8];
  v10 = 1107296256;
  v11 = sub_2303E4D4C;
  v12 = &block_descriptor_1;
  v6 = _Block_copy(&v9);

  remote_device_set_connected_callback();
  _Block_release(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v13 = sub_2303E58C4;
  v14 = v7;
  v9 = MEMORY[0x277D85DD8];
  v10 = 1107296256;
  v11 = sub_2303E4D4C;
  v12 = &block_descriptor_6_0;
  v8 = _Block_copy(&v9);

  remote_device_set_disconnected_callback();
  _Block_release(v8);
}

uint64_t sub_2303E5780(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  state = remote_device_get_state();
  result = swift_beginAccess();
  if (state == dword_27DB50264)
  {
    return a2(state);
  }

  return result;
}

uint64_t sub_2303E57F0()
{
  sub_23041BE38();
  v0 = remote_device_copy_service();

  if (!v0)
  {
    return 0;
  }

  v1 = xpc_remote_connection_create_with_remote_service();

  return v1;
}

uint64_t RemoteDevice.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2303E58C4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return v1(dword_27DB50268);
}

uint64_t sub_2303E5964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2303E5B58()
{
  result = sub_23041BAA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_2303E5BD4(void *a1)
{
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2303D0098(MEMORY[0x277D84F90]);
  v7 = type metadata accessor for _XPCObjectEncoder();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  v13[3] = v7;
  v13[4] = sub_2303F16EC(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  v13[0] = v8;

  NSError.encode(to:)(v13);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v5 = v8[2];
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v10 = sub_23041C348();
      swift_allocError();
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
      v5[3] = &type metadata for NSErrorContainer;
      *v5 = a1;
      v12 = a1;
      sub_23041C308();
      (*(*(v10 - 8) + 104))(v5, *MEMORY[0x277D841A8], v10);
      swift_willThrow();
    }
  }

  return v5;
}

void *sub_2303E5DC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2303D0098(MEMORY[0x277D84F90]);
  v7 = type metadata accessor for _XPCObjectEncoder();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  v12[3] = v7;
  v12[4] = sub_2303F16EC(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  v12[0] = v8;

  XPCSideChannel.encode(to:)(v12);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v5 = v8[2];
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v10 = sub_23041C348();
      swift_allocError();
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
      v5[3] = type metadata accessor for XPCSideChannel(0);
      *v5 = a1;

      sub_23041C308();
      (*(*(v10 - 8) + 104))(v5, *MEMORY[0x277D841A8], v10);
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_2303E5FC0(void *a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2303D0098(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for _XPCObjectEncoder();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v8;
  v14[3] = v9;
  v14[4] = sub_2303F16EC(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  v14[0] = v10;

  sub_2303EFAE4(v14, a1, a2 & 1);
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v7 = v10[2];
    if (v7)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v7 = sub_23041C348();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
      *(v13 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501F0);
      *v13 = a1;
      *(v13 + 8) = a2 & 1;
      sub_2303F15BC(a1, a2 & 1);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v13, *MEMORY[0x277D841A8], v7);
      swift_willThrow();
    }
  }

  return v7;
}

char *sub_2303E6204(uint64_t a1, unint64_t a2)
{
  bytes[2] = *MEMORY[0x277D85DF0];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      return xpc_data_create(bytes, v4);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2303F02D8(v5, v6);
  }

  if (v2)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2303F02D8(v5, v6);
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  v3 = a2 >> 40;
  BYTE4(bytes[1]) = BYTE4(a2);
  v4 = BYTE6(a2);
  BYTE5(bytes[1]) = v3;
  return xpc_data_create(bytes, v4);
}

uint64_t *sub_2303E6330(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = MEMORY[0x277D84F90];
  v5 = sub_2303D0098(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for _XPCObjectDecoder();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v9[3] = v6;
  v9[4] = sub_2303F16EC(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);
  v9[0] = v7;
  type metadata accessor for XPCSideChannel(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  return XPCSideChannel.init(from:)(v9);
}

uint64_t sub_2303E6424@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v18 - v7;
  v9 = *(v2 + 16);

  v10 = MEMORY[0x277D84F90];
  v11 = sub_2303D0098(MEMORY[0x277D84F90]);
  type metadata accessor for _XPCObjectDecoder();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  swift_unknownObjectRetain();
  sub_2303E65D0();
  if (v3)
  {
  }

  v14 = v19;
  v20 = 0;
  v15 = sub_23041C488();
  v17 = v16;

  result = (*(v6 + 8))(v8, v5);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_2303E65D0()
{
  if (MEMORY[0x231917290](*(v0 + 16)) == 0x1ED3F2070)
  {
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50220);
    sub_2303E4234(qword_280AC7518, &unk_27DB50220);
    return sub_23041C518();
  }

  else
  {
    v1 = sub_23041C328();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v3 = &type metadata for DynamicCodableContainerCodingKeys;

    sub_23041C308();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
    return swift_willThrow();
  }
}

uint64_t XPCDictionary.subscript.getter()
{
  v1 = *v0;
  v2 = sub_23041BE38();
  string = xpc_dictionary_get_string(v1, (v2 + 32));

  if (string)
  {
    return sub_23041BE98();
  }

  else
  {
    return 0;
  }
}

{
  v1 = *v0;
  v2 = sub_23041BE38();
  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  if (v3)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  return 0;
}

{
  v1 = *v0;
  v2 = sub_23041BE38();
  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  if (!v3)
  {
    return 0;
  }

  if (MEMORY[0x231917290](v3) != 0x1ED3F1E40 || (bytes_ptr = xpc_data_get_bytes_ptr(v3)) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = bytes_ptr;
  length = xpc_data_get_length(v3);
  v8 = sub_2303F0E10(v6, length);
  swift_unknownObjectRelease();
  return v8;
}

{
  v1 = sub_23041B9C8();
  MEMORY[0x28223BE28](v1);
  v2 = *v0;
  v3 = sub_23041BE38();
  v4 = xpc_dictionary_get_value(v2, (v3 + 32));

  if (v4)
  {
    XPCDictionary.underlyingConnection.getter();
    sub_2303B9D74(MEMORY[0x277D84F90]);
    swift_unknownObjectRetain();
    XPCError.init(_:from:userInfo:)();
  }

  return 0;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_23041BE38();

    v5 = sub_23041BE38();

    xpc_dictionary_set_string(v3, (v4 + 32), (v5 + 32));
  }

  else
  {
    v6 = sub_23041BE38();

    xpc_dictionary_set_value(v3, (v6 + 32), 0);
  }
}

xpc_object_t XPCDictionary.removeValue(forKey:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();

  v6 = sub_2303F0EC0(a1, a2, v5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t XPCDictionary.createReply()@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130);
  MEMORY[0x28223BE28](v3 - 8);
  v5 = v13 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  result = xpc_dictionary_create_reply(v6);
  if (result)
  {
    v15 = 0xD000000000000019;
    v16 = 0x8000000230422830;
    v13[2] = v8;
    v14 = result;
    v13[0] = v6;
    v13[1] = v7;
    sub_2303D3810(v5);
    result = sub_2303D3A2C(v5);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  return result;
}

Swift::Bool __swiftcall XPCDictionary.sendReply()()
{
  v1 = sub_23041BC18();
  v34 = *(v1 - 8);
  MEMORY[0x28223BE28](v1);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23041BC48();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE28](v33);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23041BC08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_23041BC68();
  v29 = *(v36 - 8);
  v8 = MEMORY[0x28223BE28](v36);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v8);
  v35 = &v26 - v11;
  v12 = sub_23041BC28();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE28](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v17 = xpc_dictionary_get_remote_connection(v16);
  if (v17)
  {
    v28 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v26 = os_transaction_create();
      xpc_remote_connection_send_message();
      sub_2303E42C4(0, &qword_27DB4FBA0);
      (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
      v27 = sub_23041C188();
      (*(v13 + 8))(v15, v12);
      sub_23041BC58();
      *v7 = 10;
      (*(v5 + 104))(v7, *MEMORY[0x277D85188], v4);
      MEMORY[0x2319152F0](v10, v7);
      (*(v5 + 8))(v7, v4);
      v29 = *(v29 + 8);
      (v29)(v10, v36);
      v18 = swift_allocObject();
      *(v18 + 16) = v26;
      aBlock[4] = nullsub_10;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2303BCCBC;
      aBlock[3] = &block_descriptor_2;
      v19 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v20 = v30;
      sub_23041BC38();
      v37 = MEMORY[0x277D84F90];
      sub_2303F16EC(&qword_27DB4FBC0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501A8);
      sub_2303E4234(&qword_27DB4FBB0, &qword_27DB501A8);
      v21 = v32;
      v22 = v28;
      sub_23041C248();
      v23 = v35;
      v24 = v27;
      MEMORY[0x2319157A0](v35, v20, v21, v19);
      _Block_release(v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v34 + 8))(v21, v22);
      (*(v31 + 8))(v20, v33);
      (v29)(v23, v36);
    }

    else
    {
      xpc_connection_send_message(v17, v16);
      swift_unknownObjectRelease();
    }
  }

  return v17 != 0;
}

xpc_object_t XPCDictionary.init()@<X0>(void *a1@<X8>)
{
  a1[1] = 0xD000000000000019;
  a1[2] = 0x8000000230422830;
  result = xpc_dictionary_create(0, 0, 0);
  *a1 = result;
  return result;
}

uint64_t sub_2303E706C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x28223BE28])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE28](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

void *sub_2303E7314(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = MEMORY[0x277D84F90];
  v5 = sub_2303D0098(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for _XPCObjectDecoder();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v11[3] = v6;
  v11[4] = sub_2303F16EC(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);
  v11[0] = v7;
  sub_2303E42C4(0, &qword_27DB50010);
  sub_2303D8244(v11, v10);
  swift_unknownObjectRetain();
  v8 = NSError.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v8;
}

uint64_t XPCDictionary.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0xD000000000000019;
  a2[2] = 0x8000000230422830;
  *a2 = result;
  return result;
}

xpc_connection_t XPCDictionary.underlyingConnection.getter()
{
  result = xpc_dictionary_get_remote_connection(*v0);
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for RemoteXPCPeerConnection();
      v5 = swift_allocObject();
      v6 = swift_slowAlloc();
      result = v5;
      *(v5 + 80) = 0;
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *v6 = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = v6;
      *(v5 + 24) = v4;
      *(v5 + 32) = 0;
    }

    else
    {
      type metadata accessor for SystemXPCPeerConnection();
      v7 = swift_allocObject();
      v8 = swift_slowAlloc();
      result = v7;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *v8 = 0;
      *(v7 + 3) = v2;
      *(v7 + 4) = v8;
    }

    *(result + 2) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t XPCDictionary.withUnsafeUnderlyingConnection<A>(_:)(void (*a1)(void))
{
  v3 = xpc_dictionary_get_remote_connection(*v1);
  a1();
  return swift_unknownObjectRelease();
}

uint64_t XPCDictionary.auditToken.getter@<X0>(int8x16_t *a1@<X8>)
{
  v10 = *MEMORY[0x277D85DF0];
  v8 = 0u;
  v9 = 0u;
  xpc_dictionary_get_audit_token();
  memset(v7, 0, sizeof(v7));
  result = XPCaudit_token_to_pid(v7);
  v3.i32[0] = 0;
  v4.i32[0] = result;
  v5 = vdupq_lane_s32(*&vceqq_s32(v4, v3), 0);
  v6 = vbicq_s8(v9, v5);
  *a1 = vbicq_s8(v8, v5);
  a1[1] = v6;
  a1[2].i8[0] = result == 0;
  return result;
}

uint64_t XPCDictionary.getEntitlements()()
{
  v15 = *MEMORY[0x277D85DF0];
  v11 = 0u;
  v12 = 0u;
  xpc_dictionary_get_audit_token();
  memset(v10, 0, sizeof(v10));
  if (XPCaudit_token_to_pid(v10))
  {
    v13 = v11;
    v14 = v12;
    if (xpc_copy_entitlements_data_for_token())
    {
      sub_2303E7A28();
    }

    sub_23041C0B8();
    sub_2303E42C4(0, &qword_27DB502F0);
    v5 = sub_23041C1B8();
    sub_23041BB28();

    sub_2303BCF70();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000048;
    *(inited + 56) = 0x80000002304231E0;
    v3 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0);
    v4 = 1008;
  }

  else
  {
    sub_23041C0B8();
    sub_2303E42C4(0, &qword_27DB502F0);
    v0 = sub_23041C1B8();
    sub_23041BB28();

    sub_2303BCF70();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    v1 = swift_initStackObject();
    *(v1 + 16) = xmmword_23041E310;
    *(v1 + 32) = sub_23041BDD8();
    *(v1 + 72) = MEMORY[0x277D837D0];
    *(v1 + 40) = v2;
    *(v1 + 48) = 0xD000000000000076;
    *(v1 + 56) = 0x8000000230423270;
    v3 = sub_2303BA458(v1);
    swift_setDeallocating();
    sub_2303BA754(v1 + 32, &qword_27DB501B0);
    v4 = 1007;
  }

  v8 = sub_2303BAF24(v4);
  XPCError.init(code:userInfo:)(v8, v3);
  return swift_willThrow();
}

void sub_2303E807C()
{
  v1[1] = 0xD000000000000019;
  v1[2] = 0x8000000230422830;
  *v1 = v0;
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  if (v7)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  v8 = *(*(a1 - 8) + 56);

  return v8(a2, 1, 1, a1);
}

{
  v5 = *v2;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  if (v7)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  v8 = *(*(a1 - 8) + 56);

  return v8(a2, 1, 1, a1);
}

xpc_object_t XPCDictionary.subscript.getter()
{
  v1 = *v0;
  v2 = sub_23041BE38();
  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  return v3;
}

{
  v1 = *v0;
  v2 = sub_23041BE38();
  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  return v3;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_2303E8D40(a1, a2, a3, a4, a5, sub_2303F17C0, sub_2303E8770);
}

{
  return sub_2303E8D40(a1, a2, a3, a4, a5, sub_2303F17A0, sub_2303E8770);
}

{
  return sub_2303E8D40(a1, a2, a3, a4, a5, sub_2303F1780, sub_2303E706C);
}

xpc_object_t sub_2303E82F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE28](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE28](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE28](v8);
  v12 = &v22[-v11];
  (*(v7 + 16))(&v22[-v11], a1, a2);
  if ((sub_23041C238() & 1) == 0 || sub_23041C228() < 65)
  {
    goto LABEL_14;
  }

  v25 = 0x8000000000000000;
  if (sub_23041C238())
  {
    if (sub_23041C228() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v23 = sub_23041C238();
  v13 = sub_23041C228();
  if ((v23 & 1) == 0)
  {
    if (v13 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v13 > 64)
  {
LABEL_8:
    sub_2303D3374();
    sub_23041C1F8();
    v14 = sub_23041BD68();
    v15 = *(v7 + 8);
    v15(v10, a2);
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (sub_23041C228() <= 64 && (sub_23041C228() != 64 || (sub_23041C238() & 1) != 0))
    {
      goto LABEL_24;
    }

    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = sub_23041C238();
    v18 = sub_23041C228();
    if (v17)
    {
      if (v18 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v18 > 63)
    {
LABEL_17:
      sub_2303D3374();
      sub_23041C1F8();
      v19 = sub_23041BD68();
      v15 = *(v7 + 8);
      v15(v10, a2);
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_24:
      v21 = sub_23041C218();
      (*(v7 + 8))(v12, a2);
      result = xpc_int64_create(v21);
      goto LABEL_25;
    }

    sub_23041C218();
    goto LABEL_24;
  }

  swift_getAssociatedConformanceWitness();
  sub_23041CA88();
  sub_23041C7E8();
  v16 = sub_23041BD68();
  v15 = *(v7 + 8);
  v15(v10, a2);
  if ((v16 & 1) == 0)
  {
LABEL_13:
    sub_23041C218();
    goto LABEL_14;
  }

LABEL_18:
  v15(v12, a2);
  result = 0;
LABEL_25:
  *v24 = result;
  return result;
}

uint64_t sub_2303E8770@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE28](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE28](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_xpc_object.type.getter();
  }

  v2 = *v1;
  v3 = sub_23041BE38();

  xpc_dictionary_set_value(v2, (v3 + 32), 0);

  return swift_unknownObjectRelease();
}

{
  v18 = *MEMORY[0x277D85DF0];
  v2 = sub_23041BAA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &uuid[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v6 - 8);
  v8 = &uuid[-v7 - 8];
  sub_2303BA588(a1, &uuid[-v7 - 8], &unk_27DB4FE40);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_23041BA88();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    *uuid = v11;
    v17 = v13;
    v10 = xpc_uuid_create(uuid);
  }

  XPCDictionary.subscript.setter(v10);
  return sub_2303BA754(a1, &unk_27DB4FE40);
}

{
  v2 = sub_23041BA38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0);
  MEMORY[0x28223BE28](v6 - 8);
  v8 = &v13 - v7;
  sub_2303BA588(a1, &v13 - v7, &qword_27DB501E0);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 == 1)
  {
    goto LABEL_4;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_23041BA08();
  result = xpc_date_create_absolute();
  if (result)
  {
    v12 = result;
    (*(v3 + 8))(v5, v2);
    v10 = v12;
LABEL_4:
    XPCDictionary.subscript.setter(v10);
    return sub_2303BA754(a1, &qword_27DB501E0);
  }

  __break(1u);
  return result;
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_23041C1C8();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  XPCDictionary.subscript.getter(a4, v17);
  return sub_2303E8CA0;
}

{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_23041C1C8();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  XPCDictionary.subscript.getter(a4, v17);
  return sub_2303E935C;
}

{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_23041C1C8();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  XPCDictionary.subscript.getter(a4, v17);
  return sub_2303E9840;
}

uint64_t sub_2303E8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, void *, uint64_t, void, uint64_t, void))
{
  sub_2303F1020(a1, a2, a3, a4, a5, a6, a7);
  v8 = sub_23041C1C8();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

xpc_object_t sub_2303E8DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v31 = *(*(*(a3 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE28](AssociatedTypeWitness);
  v9 = (&v27 - v8);
  v10 = *(a2 - 8);
  v11 = MEMORY[0x28223BE28](v7);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v11);
  v15 = &v27 - v14;
  (*(v10 + 16))(&v27 - v14, a1, a2);
  if ((sub_23041C238() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_23041CA88(), sub_23041C7E8(), v16 = sub_23041BD68(), v29 = *(v10 + 8), v29(v13, a2), (v16 & 1) == 0))
  {
    v29 = v9;
    if (sub_23041C228() < 64)
    {
      goto LABEL_15;
    }

    v32 = -1;
    v17 = sub_23041C238();
    v18 = sub_23041C228();
    if (v17)
    {
      v19 = v10;
      if (v18 > 64)
      {
        sub_2303D317C();
        v20 = v13;
        sub_23041C1F8();
        v21 = sub_23041BD68();
        goto LABEL_10;
      }

      swift_getAssociatedConformanceWitness();
      v28 = v10;
      sub_23041CA88();
      v24 = v13;
      sub_23041C7E8();
      v25 = sub_23041BD58();
      (*(v28 + 8))(v24, a2);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v18 >= 65)
    {
      sub_2303D317C();
      v20 = v13;
      sub_23041C1F8();
      v21 = sub_23041BD68();
      v19 = v10;
LABEL_10:
      v22 = *(v19 + 8);
      v22(v20, a2);
      if (v21)
      {
        v22(v15, a2);
        goto LABEL_12;
      }

LABEL_15:
      v26 = sub_23041C218();
      (*(v10 + 8))(v15, a2);
      result = xpc_uint64_create(v26);
      goto LABEL_16;
    }

    sub_23041C218();
    goto LABEL_15;
  }

  v29(v15, a2);
LABEL_12:
  result = 0;
LABEL_16:
  *v30 = result;
  return result;
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  return sub_2303E99BC(a1, a2, a3, a4, a5, a6, a7, XPCDictionary.subscript.getter, a8);
}

{
  return sub_2303E99BC(a1, a2, a3, a4, a5, a6, a7, XPCDictionary.subscript.getter, a8);
}

xpc_object_t sub_2303E95DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE28](a1);
  (*(v4 + 16))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2303F0FCC();
  sub_23041BCA8();
  result = xpc_double_create(*&v6[1]);
  *a2 = result;
  return result;
}

void sub_2303E986C(uint64_t **a1, char a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, void *, uint64_t, void, uint64_t, void))
{
  v4 = *a1;
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v9 = (*a1)[3];
  v11 = (*a1)[1];
  v10 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[7], v6, v7);

    sub_2303F1020(v5, v12, v11, v10, v9, a3, a4);
    v13 = *(v8 + 8);
    v13(v5, v7);
    v13(v6, v7);
  }

  else
  {

    sub_2303F1020(v6, v12, v11, v10, v9, a3, a4);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_2303E99BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v24[1] = a5;
  v25 = a4;
  v17 = sub_23041C1C8();
  v24[0] = *(v17 - 8);
  MEMORY[0x28223BE28](v17);
  v19 = v24 - v18;
  v20 = *(v9 + 2);
  v26 = *v9;
  v27 = v20;
  a8(a1, a2, a3, a6, a7);
  v21 = *(a6 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1, a6) != 1)
  {
    return (*(v21 + 32))(a9, v19, a6);
  }

  v25();
  result = (v22)(v19, 1, a6);
  if (result != 1)
  {
    return (*(v24[0] + 8))(v19, v17);
  }

  return result;
}

uint64_t _s7Mercury13XPCDictionaryV_2asSbSgSS_Sbmtcig_0()
{
  v1 = *v0;
  v2 = sub_23041BE38();
  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  if (v3)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  return 2;
}

uint64_t sub_2303E9CA4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23041BE38();
  v5 = xpc_dictionary_get_value(v3, (v4 + 32));

  if (v5)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  *a2 = 2;
  return result;
}

uint64_t sub_2303E9D48(unsigned __int8 *a1)
{
  v1 = *a1;

  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = xpc_BOOL_create(v1 & 1);
  }

  return XPCDictionary.subscript.setter(v2);
}

uint64_t XPCDictionary.subscript.setter(char a1)
{
  if (a1 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = xpc_BOOL_create(a1 & 1);
  }

  return XPCDictionary.subscript.setter(v1);
}

uint64_t (*XPCDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = *v3;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  if (v7)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  *(a1 + 24) = 2;
  return sub_2303E9ED4;
}

uint64_t sub_2303E9ED4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = xpc_BOOL_create(v1 & 1);
  }

  return XPCDictionary.subscript.setter(v2);
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  if (v7)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  return a3(v8) & 1;
}

uint64_t sub_2303E9FF4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_23041BE38();
  v5 = xpc_dictionary_get_dictionary(v3, (v4 + 32));

  v7 = 0x8000000230422830;
  v8 = 0xD000000000000019;
  if (!v5)
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v8;
  a1[2] = v7;
  return result;
}

double sub_2303EA074@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  XPCDictionary.subscript.getter(&v5, *a1, a1[1]);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2303EA0CC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    swift_unknownObjectRetain();
  }

  v4 = sub_23041BE38();
  xpc_dictionary_set_value(v3, (v4 + 32), v2);
  swift_unknownObjectRelease();
}

uint64_t XPCDictionary.subscript.setter(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*a1)
  {
    v4 = swift_unknownObjectRetain();
    sub_2303F10E0(v4);
  }

  v5 = sub_23041BE38();

  xpc_dictionary_set_value(v3, (v5 + 32), v2);
  swift_unknownObjectRelease();
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a2;
  v7[4] = a3;
  v9 = *v3;
  v7[5] = v9;
  v10 = sub_23041BE38();
  v11 = xpc_dictionary_get_dictionary(v9, (v10 + 32));

  v12 = 0x8000000230422830;
  v13 = 0xD000000000000019;
  if (!v11)
  {
    v13 = 0;
    v12 = 0;
  }

  *v8 = v11;
  v8[1] = v13;
  v8[2] = v12;
  return sub_2303EA2C4;
}

void sub_2303EA2C4(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      swift_unknownObjectRetain();
    }

    v4 = v2[5];
    v5 = sub_23041BE38();
    xpc_dictionary_set_value(v4, (v5 + 32), v3);

    swift_unknownObjectRelease();
    sub_2303F10E0(*v2);
  }

  else
  {
    if (v3)
    {
      v6 = swift_unknownObjectRetain();
      sub_2303F10E0(v6);
    }

    v7 = v2[5];
    v8 = sub_23041BE38();
    xpc_dictionary_set_value(v7, (v8 + 32), v3);

    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_2303EA3EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23041BE38();
  v5 = xpc_dictionary_get_value(v3, (v4 + 32));

  *a2 = v5;
  return result;
}

uint64_t sub_2303EA448(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();

  return XPCDictionary.subscript.setter(v1);
}

uint64_t (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  *a1 = v7;
  return sub_2303EA51C;
}

uint64_t sub_2303EA51C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();

    XPCDictionary.subscript.setter(v2);

    return swift_unknownObjectRelease();
  }

  else
  {

    return XPCDictionary.subscript.setter(v2);
  }
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_23041BE18();
  MEMORY[0x28223BE28](v5 - 8);
  v6 = *v3;
  v7 = sub_23041BE38();
  string = xpc_dictionary_get_string(v6, (v7 + 32));

  if (!string)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return sub_23041BE98();
  }

  strlen(string);
  sub_23041BDF8();
  return sub_23041BD98();
}

uint64_t sub_2303EA69C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23041BE38();
  string = xpc_dictionary_get_string(v3, (v4 + 32));

  if (string)
  {
    result = sub_23041BE98();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_2303EA708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return XPCDictionary.subscript.setter(v1, v2);
}

void (*XPCDictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = a3;
  v9 = *v3;
  v7[4] = v9;
  v10 = sub_23041BE38();
  string = xpc_dictionary_get_string(v9, (v10 + 32));

  if (string)
  {
    v12 = sub_23041BE98();
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *v8 = v12;
  v8[1] = v13;
  return sub_2303EA830;
}

void sub_2303EA830(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 8);
  if (a2)
  {
    if (v4)
    {
      v5 = sub_23041BE38();
      v6 = sub_23041BE38();
      xpc_dictionary_set_string(v3, (v5 + 32), (v6 + 32));
    }

    else
    {
      v9 = sub_23041BE38();
      xpc_dictionary_set_value(v3, (v9 + 32), 0);
    }
  }

  else
  {
    if (v4)
    {
      v7 = sub_23041BE38();
      v8 = sub_23041BE38();

      xpc_dictionary_set_string(v3, (v7 + 32), (v8 + 32));
    }

    else
    {
      v10 = sub_23041BE38();
      xpc_dictionary_set_value(v3, (v10 + 32), 0);
    }
  }

  free(v2);
}

_BYTE *sub_2303EA954(void *a1, char a2)
{
  v4 = sub_23041B9C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x231917290](a1) != 0x1ED3F1E40)
  {
    return 0;
  }

  result = xpc_data_get_bytes_ptr(a1);
  if (result)
  {
    v9 = result;
    length = xpc_data_get_length(a1);
    if (a2)
    {
      (*(v5 + 104))(v7, *MEMORY[0x277CC92A8], v4);
      return sub_2303F1204(v9, length, v7);
    }

    else
    {
      return sub_2303F0E10(v9, length);
    }
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, unint64_t a2)
{
  bytes[2] = *MEMORY[0x277D85DF0];
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    goto LABEL_26;
  }

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      v6 = 0;
      goto LABEL_25;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = sub_23041B858();
    if (v9)
    {
      v10 = sub_23041B878();
      if (__OFSUB__(v7, v10))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 += v7 - v10;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (!v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v5)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v6 = BYTE6(a2);
    BYTE5(bytes[1]) = BYTE5(a2);
LABEL_25:
    v4 = xpc_data_create(bytes, v6);
    goto LABEL_26;
  }

  v12 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = sub_23041B858();
  if (v9)
  {
    v13 = sub_23041B878();
    if (!__OFSUB__(a1, v13))
    {
      v9 += a1 - v13;
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
  }

LABEL_17:
  v14 = sub_23041B868();
  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v4 = xpc_data_create(v9, v16);
LABEL_26:
  XPCDictionary.subscript.setter(v4);
  return sub_2303E41CC(a1, a2);
}

{
  bytes[2] = *MEMORY[0x277D85DF0];
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    goto LABEL_26;
  }

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      v6 = 0;
      goto LABEL_25;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = sub_23041B858();
    if (v9)
    {
      v10 = sub_23041B878();
      if (__OFSUB__(v7, v10))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 += v7 - v10;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (!v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v5)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v6 = BYTE6(a2);
    BYTE5(bytes[1]) = BYTE5(a2);
LABEL_25:
    v4 = xpc_data_create(bytes, v6);
    goto LABEL_26;
  }

  v12 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = sub_23041B858();
  if (v9)
  {
    v13 = sub_23041B878();
    if (!__OFSUB__(a1, v13))
    {
      v9 += a1 - v13;
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
  }

LABEL_17:
  v14 = sub_23041B868();
  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v4 = xpc_data_create(v9, v16);
LABEL_26:
  XPCDictionary.subscript.setter(v4);
  return sub_2303E41CC(a1, a2);
}

uint64_t (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  v10 = sub_23041BE38();
  v11 = xpc_dictionary_get_value(v9, (v10 + 32));

  if (!v11)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x231917290](v11) != 0x1ED3F1E40)
  {
    swift_unknownObjectRelease();
LABEL_7:
    bytes_ptr = 0;
    goto LABEL_8;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v11);
  if (bytes_ptr)
  {
    length = xpc_data_get_length(v11);
    bytes_ptr = sub_2303F0E10(bytes_ptr, length);
    v13 = v16;
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
LABEL_8:
  v13 = 0xF000000000000000;
LABEL_9:
  *v8 = bytes_ptr;
  v8[1] = v13;
  return sub_2303F1898;
}

_BYTE *_s7Mercury13XPCDictionaryV_2as6noCopy10Foundation4DataVSgSS_AHmSbtcig_0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v5, (v6 + 32));

  if (!v7)
  {
    return 0;
  }

  v8 = sub_2303EA954(v7, a3 & 1);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_2303EAF2C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = sub_23041BE38();
  v7 = xpc_dictionary_get_value(v4, (v6 + 32));

  if (v7)
  {
    v9 = sub_2303EA954(v7, v5);
    v11 = v10;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t sub_2303EAFC4(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >> 60 == 15)
  {

    v2 = 0;
  }

  else
  {
    v3 = *a1;

    v2 = sub_2303E6204(v3, v1);
  }

  return XPCDictionary.subscript.setter(v2);
}

uint64_t (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[3] = a3;
  v9[4] = v4;
  v9[2] = a2;
  v11 = *v4;
  v12 = sub_23041BE38();
  v13 = xpc_dictionary_get_value(v11, (v12 + 32));

  if (v13)
  {
    v14 = sub_2303EA954(v13, a4 & 1);
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  *v10 = v14;
  v10[1] = v16;
  return sub_2303EB358;
}

void sub_2303EB35C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    if (v4 >> 60 == 15)
    {
      v6 = 0;
LABEL_53:

      XPCDictionary.subscript.setter(v6);
      v30 = v3;
      v31 = v4;
      goto LABEL_54;
    }

    v10 = v4 >> 62;
    if ((v4 >> 62) <= 1)
    {
      if (v10)
      {
        v23 = (v3 >> 32) - v3;
        if (v3 >> 32 < v3)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v21 = sub_23041B858();
        if (v21)
        {
          v27 = sub_23041B878();
          if (__OFSUB__(v3, v27))
          {
LABEL_62:
            __break(1u);
            return;
          }

          v21 += v3 - v27;
        }

LABEL_41:
        v28 = sub_23041B868();
        if (v28 >= v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = v28;
        }

        if (v21)
        {
          v11 = v29;
        }

        else
        {
          v11 = 0;
        }

        v12 = v21;
        goto LABEL_52;
      }

      v2[5] = v3;
      *(v2 + 24) = v4;
      *(v2 + 50) = BYTE2(v4);
      *(v2 + 51) = BYTE3(v4);
      *(v2 + 52) = BYTE4(v4);
      v11 = BYTE6(v4);
      *(v2 + 53) = BYTE5(v4);
      v12 = v2 + 5;
LABEL_52:
      v6 = xpc_data_create(v12, v11);
      goto LABEL_53;
    }

LABEL_19:
    if (v10 == 2)
    {
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);
      v21 = sub_23041B858();
      if (v21)
      {
        v22 = sub_23041B878();
        if (__OFSUB__(v19, v22))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v21 += v19 - v22;
      }

      v17 = __OFSUB__(v20, v19);
      v23 = v20 - v19;
      if (v17)
      {
        __break(1u);
LABEL_26:
        v18 = (v3 >> 32) - v3;
        if (v3 >> 32 >= v3)
        {

          v15 = sub_23041B858();
          if (!v15)
          {
LABEL_30:
            v25 = sub_23041B868();
            if (v25 >= v18)
            {
              v26 = v18;
            }

            else
            {
              v26 = v25;
            }

            if (v15)
            {
              v8 = v26;
            }

            else
            {
              v8 = 0;
            }

            v9 = v15;
            goto LABEL_49;
          }

          v24 = sub_23041B878();
          if (!__OFSUB__(v3, v24))
          {
            v15 += v3 - v24;
            goto LABEL_30;
          }

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    *(v2 + 46) = 0;
    v2[5] = 0;
    v12 = v2 + 5;
    v11 = 0;
    goto LABEL_52;
  }

  if (v4 >> 60 != 15)
  {
    v7 = v4 >> 62;
    if ((v4 >> 62) <= 1)
    {
      if (!v7)
      {
        v2[5] = v3;
        *(v2 + 24) = v4;
        *(v2 + 50) = BYTE2(v4);
        *(v2 + 51) = BYTE3(v4);
        *(v2 + 52) = BYTE4(v4);
        v8 = BYTE6(v4);
        *(v2 + 53) = BYTE5(v4);
        v9 = v2 + 5;
LABEL_49:
        v5 = xpc_data_create(v9, v8);
        goto LABEL_50;
      }

      goto LABEL_26;
    }

    if (v7 != 2)
    {
      *(v2 + 46) = 0;
      v2[5] = 0;
      v9 = v2 + 5;
      v8 = 0;
      goto LABEL_49;
    }

    v13 = *(v3 + 16);
    v14 = *(v3 + 24);

    v15 = sub_23041B858();
    if (v15)
    {
      v16 = sub_23041B878();
      v10 = v13 - v16;
      if (__OFSUB__(v13, v16))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v15 += v10;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_19;
  }

  v5 = 0;
LABEL_50:

  XPCDictionary.subscript.setter(v5);
  sub_2303E41CC(v3, v4);
  v30 = *v2;
  v31 = v2[1];
LABEL_54:
  sub_2303E41CC(v30, v31);

  free(v2);
}
uint64_t NetworkDescriptor.description.getter()
{
  v1 = sub_247D89318(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_247DD304C();
  MEMORY[0x24C1BA0A0](0xD00000000000001CLL, 0x8000000247DD92A0);
  v8 = sub_247D88148();
  MEMORY[0x24C1BA0A0](v8);

  MEMORY[0x24C1BA0A0](0x667265746E69202CLL, 0xED0000203A656361);
  MEMORY[0x24C1BA0A0](v1, v3);
  MEMORY[0x24C1BA0A0](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  MEMORY[0x24C1BA0A0](v5, v7);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_247D89318(uint64_t a1)
{
  v2 = sub_247DD225C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v35 - v16;
  sub_247D86A04(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v25 = 1818523489;
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v10;
      v27 = v10[1];
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_247DD304C();

      v36 = 0xD000000000000014;
      v37 = 0x8000000247DD93A0;
      v35[0] = v26;
      v35[1] = v27;
      SharedSecret.advertisementIdentifer.getter(v6);
      sub_247D8A3EC(&unk_27EE73510, MEMORY[0x277CC95F0]);
      v28 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v28);

      (*(v3 + 8))(v6, v2);
      sub_247D6A1F8(v26, v27);
    }

    else
    {
      sub_247D6A1F8(v10[1], v10[2]);
      sub_247D6A1F8(v10[3], v10[4]);
      v31 = v10[5];
      swift_unknownObjectRelease();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      (*(v3 + 32))(v6, v10 + *(v32 + 96), v2);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_247DD304C();

      v36 = 0xD000000000000014;
      v37 = 0x8000000247DD93A0;
      sub_247D8A3EC(&unk_27EE73510, MEMORY[0x277CC95F0]);
      v33 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v33);

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v20 = (v10 + *(v19 + 48));

      v10 = v20;
    }

    sub_247D89BE0(v10, v17);
    sub_247D89BE0(v17, v15);
    v21 = sub_247DD248C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15, 1, v21) == 1)
    {
      sub_247D6BAD4(v15, &unk_27EE73C00, &qword_247DD55F8);
      v23 = 0xE300000000000000;
      v24 = 7958113;
    }

    else
    {
      v29 = sub_247DD246C();
      v23 = v30;
      (*(v22 + 8))(v15, v21);
      v24 = v29;
    }

    v36 = 0x2E302E302E373231;
    v37 = 0xEA00000000003A31;
    MEMORY[0x24C1BA0A0](v24, v23);

    return 0x6B636162706F6F6CLL;
  }

  return v25;
}

uint64_t type metadata accessor for NetworkDescriptor()
{
  result = qword_27EE73A50;
  if (!qword_27EE73A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247D8982C()
{
  sub_247D898C8();
  if (v0 <= 0x3F)
  {
    sub_247D89968();
    if (v1 <= 0x3F)
    {
      sub_247D899FC();
      if (v2 <= 0x3F)
      {
        sub_247D89A60(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_247D898C8()
{
  if (!qword_27EE73A60)
  {
    sub_247D89910();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73A60);
    }
  }
}

void sub_247D89910()
{
  if (!qword_27EE73A68)
  {
    sub_247DD248C();
    v0 = sub_247DD2F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73A68);
    }
  }
}

void sub_247D89968()
{
  if (!qword_27EE73A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C00, &qword_247DD55F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE73A80, &unk_247DD5600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE73A70);
    }
  }
}

void sub_247D899FC()
{
  if (!qword_27EE73A88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE73A88);
    }
  }
}

void sub_247D89A60(uint64_t a1)
{
  if (!qword_27EE73A90)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE73A98, &qword_247DD5610);
    sub_247DD225C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EE73A90);
    }
  }
}

uint64_t sub_247D89BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D89C70(uint64_t *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v65 = sub_247DD2A5C();
  v61 = *(v65 - 8);
  v2 = *(v61 + 64);
  v3 = MEMORY[0x28223BE20](v65);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v53 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - v7;
  v9 = sub_247DD2CEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AB8, &qword_247DD5640);
  v60 = *(v66 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v66);
  v16 = &v53 - v15;
  v17 = sub_247DD2B6C();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v23 = sub_247DD27EC();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_247D6A2E8(v21, v22);
  v26 = sub_247DD27DC();
  *&v67 = v21;
  *(&v67 + 1) = v22;
  v27 = v20;
  sub_247DD2B5C();
  sub_247DD2CDC();
  v28 = sub_247DD2CBC();
  v30 = v29;
  v31 = *(v10 + 8);
  v64 = v9;
  v31(v13, v9);
  if (v30 >> 60 == 15)
  {
    goto LABEL_25;
  }

  *&v67 = v28;
  *(&v67 + 1) = v30;
  sub_247DD2C1C();
  sub_247D8A3EC(&qword_27EE73AC0, MEMORY[0x277CC5540]);
  sub_247D8A434();
  v55 = v27;
  sub_247DD2C0C();
  sub_247D6A1F8(v67, *(&v67 + 1));
  v32 = v65;
  v57 = v16;
  sub_247DD2B7C();
  v54 = v26;
  v33 = sub_247DD27CC();
  v56 = v8;
  v34 = sub_247DD2A3C();
  sub_247DD2CDC();
  v35 = sub_247DD2CBC();
  v37 = v36;
  v31(v13, v64);
  if (v37 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v38 = v37 >> 62;
  v39 = v63;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      v40 = v32;
      *(&v67 + 6) = 0;
      *&v67 = 0;
      goto LABEL_16;
    }

    v64 = v34;
    v41 = *(v35 + 16);
    v42 = *(v35 + 24);
    if (sub_247DD1FFC() && __OFSUB__(v41, sub_247DD202C()))
    {
      goto LABEL_23;
    }

    if (!__OFSUB__(v42, v41))
    {
      v40 = v32;
      sub_247DD201C();
      sub_247DD2A4C();
      sub_247D6C0AC(v35, v37);
      v43 = v66;
      v44 = v57;
LABEL_19:
      v34 = v64;
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v38)
  {
    if (v35 >> 32 >= v35)
    {
      v64 = v34;
      if (!sub_247DD1FFC())
      {
        v40 = v32;
LABEL_18:
        v43 = v66;
        v44 = v57;
        sub_247DD201C();
        sub_247DD2A4C();
        sub_247D6C0AC(v35, v37);
        goto LABEL_19;
      }

      v40 = v32;
      if (!__OFSUB__(v35, sub_247DD202C()))
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }

  v40 = v32;
  *&v67 = v35;
  WORD4(v67) = v37;
  BYTE10(v67) = BYTE2(v37);
  BYTE11(v67) = BYTE3(v37);
  BYTE12(v67) = BYTE4(v37);
  BYTE13(v67) = BYTE5(v37);
LABEL_16:
  sub_247DD2A4C();
  sub_247D6C0AC(v35, v37);
  v43 = v66;
  v44 = v57;
LABEL_20:
  v46 = v61;
  v45 = v62;
  (*(v61 + 32))(v62, v39, v40);
  v47 = sub_247DD2A3C();
  sec_protocol_options_add_pre_shared_key(v33, v34, v47);

  swift_unknownObjectRelease();
  v48 = *(v46 + 8);
  v48(v45, v40);
  v49 = v54;
  v50 = sub_247DD27CC();
  sec_protocol_options_append_tls_ciphersuite(v50, 0xA8u);
  swift_unknownObjectRelease();
  v48(v56, v40);
  (*(v60 + 8))(v44, v43);
  (*(v58 + 8))(v55, v59);
  v51 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_247D6A1F8(v0[4], v0[5]);
  sub_247D6A1F8(v0[6], v0[7]);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_247D8A3EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247D8A434()
{
  result = qword_27EE73AC8;
  if (!qword_27EE73AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73AC8);
  }

  return result;
}

uint64_t CosmoConnection.__allocating_init(descriptor:queue:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247DD249C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_247D873E8(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D879F4();
  v11 = sub_247DD26FC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_247DD265C();
  sub_247D86A04(a1, v7);
  v15 = type metadata accessor for CosmoConnection();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_247D8AE8C(v7, 1, v14, a2);
  sub_247D8690C(a1);
  return v18;
}

uint64_t type metadata accessor for CosmoConnection()
{
  result = qword_27EE73B38;
  if (!qword_27EE73B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Cosmo::CosmoConnection::State_optional __swiftcall CosmoConnection.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoConnection.State.rawValue.getter()
{
  v1 = 0x64656C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D8A6E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D8A77C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D8A888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D90368;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D8A91C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D90328;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D8A9D8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D8AA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_247D6A24C(v5);
}

uint64_t sub_247D8AACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D90320;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D8AB60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D90318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D8AC1C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D8AC6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_247D6A24C(v5);
}

uint64_t CosmoConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CosmoConnection.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name);
  v2 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name + 8);

  return v1;
}

uint64_t CosmoConnection.__allocating_init(descriptor:connection:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for NetworkDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(a1, v9);
  v10 = type metadata accessor for CosmoConnection();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_247D8AE8C(v9, 0, a2, a3);
  sub_247D8690C(a1);
  return v13;
}

_OWORD *sub_247D8AE8C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v82 = a4;
  v83 = a3;
  v74 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  v69 = *(v70 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73978, &qword_247DD5268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = v63 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73980, &qword_247DD5270);
  v72 = *(v73 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v64 = v63 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  *&v76 = *(v77 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73990, &qword_247DD5280);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  *&v78 = v63 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73998, &qword_247DD5288);
  v79 = *(v80 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v65 = v63 - v20;
  v67 = sub_247DD2F6C();
  v66 = *(v67 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_247DD2F3C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v26 = sub_247DD2A2C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = sub_247DD225C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0u;
  v4[3] = 0u;
  v4[1] = 0u;
  v33 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener) = 0;
  sub_247DD224C();
  (*(v29 + 32))(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_id, v32, v28);
  v81 = a1;
  sub_247D86A04(a1, v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor);
  v34 = v82;
  if (v82)
  {
    v35 = v82;
  }

  else
  {
    v63[1] = sub_247D6A0F4();
    sub_247DD2A1C();
    *&v85 = MEMORY[0x277D84F90];
    sub_247D9045C(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v66 + 104))(v23, *MEMORY[0x277D85260], v67);
    v35 = sub_247DD2F8C();
    v34 = v82;
  }

  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue) = v35;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_initiated) = v74 & 1;
  v36 = *(v4 + v33);
  *(v5 + v33) = v83;
  v82 = v34;

  sub_247DD263C();
  v37 = v79;
  if (qword_27EE732F0 != -1)
  {
    swift_once();
  }

  v38 = v77;
  __swift_project_value_buffer(v77, qword_27EE74060);
  sub_247DD2E5C();

  sub_247D6AE30(&qword_27EE739C0, &qword_27EE73988, &qword_247DD5278);
  v39 = v75;
  sub_247DD236C();
  v40 = v78;
  sub_247DD238C();
  (*(v76 + 8))(v39, v38);

  v41 = v80;
  if ((*(v37 + 48))(v40, 1, v80) == 1)
  {
    sub_247D6BAD4(v40, &qword_27EE73990, &qword_247DD5280);
    sub_247DD263C();
    if (qword_27EE732F8 != -1)
    {
      swift_once();
    }

    v42 = v70;
    __swift_project_value_buffer(v70, qword_27EE74078);
    sub_247DD2E5C();

    sub_247D6AE30(&qword_27EE739C8, &qword_27EE73970, &qword_247DD5260);
    v43 = v68;
    sub_247DD236C();
    v44 = v71;
    sub_247DD238C();
    (*(v69 + 8))(v43, v42);

    v45 = v72;
    v46 = v73;
    if ((*(v72 + 48))(v44, 1, v73) == 1)
    {
      sub_247D6BAD4(v44, &qword_27EE73978, &qword_247DD5268);
      v47 = sub_247DD263C();
      v49 = v48;

      sub_247D8690C(v81);
    }

    else
    {
      v57 = v64;
      (*(v45 + 32))(v64, v44, v46);
      sub_247DD239C();

      v58 = MEMORY[0x24C1BA020](v88, v89, v90, v91);
      v60 = v59;

      *&v85 = v58;
      *(&v85 + 1) = v60;

      MEMORY[0x24C1BA0A0](0xD000000000000015, 0x8000000247DD9170);

      v49 = *(&v85 + 1);
      v47 = v85;
      sub_247D8690C(v81);
      (*(v45 + 8))(v57, v46);
    }
  }

  else
  {
    v50 = v65;
    (*(v37 + 32))(v65, v40, v41);
    sub_247DD239C();

    v76 = v92;
    v52 = v93;
    v51 = v94;
    v78 = v95;
    v53 = v97;
    v77 = v96;
    v54 = MEMORY[0x24C1BA020](v88, v89, v90, v91);
    v56 = v55;

    *&v85 = v54;
    *(&v85 + 1) = v56;

    MEMORY[0x24C1BA0A0](0xD000000000000018, 0x8000000247DD9190);

    v84 = v85;
    v85 = v76;
    v86 = v52;
    v87 = v51;
    sub_247D83AE8();
    sub_247DD2D9C();

    v85 = v84;

    MEMORY[0x24C1BA0A0](10272, 0xE200000000000000);

    v84 = v85;
    v85 = v78;
    v86 = v77;
    v87 = v53;
    sub_247DD2D9C();

    v85 = v84;

    MEMORY[0x24C1BA0A0](23849, 0xE200000000000000);

    v49 = *(&v85 + 1);
    v47 = v85;
    sub_247D8690C(v81);
    (*(v37 + 8))(v50, v41);
  }

  v61 = (v5 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name);
  *v61 = v47;
  v61[1] = v49;
  return v5;
}

uint64_t sub_247D8BC48(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);

    v4 = sub_247D8BEA8(v3);
    v6 = v5;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v7 = sub_247DD23CC();
    __swift_project_value_buffer(v7, qword_27EE7B878);

    v8 = sub_247DD23AC();
    v9 = sub_247DD2F2C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247D72868(v4, v6, &v15);
      _os_log_impl(&dword_247D56000, v8, v9, "Starting %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x24C1BAF60](v11, -1, -1);
      MEMORY[0x24C1BAF60](v10, -1, -1);
    }

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v4;
    v13[4] = v6;

    sub_247D6ACFC(sub_247D90404);
    sub_247DD264C();

    v14 = *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    sub_247DD269C();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D8BEA8(uint64_t a1)
{
  if (a1)
  {
    sub_247DD258C();
    v1 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v1);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v3 = 4401184;
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v5 = sub_247D88148();
  MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
  MEMORY[0x24C1BA0A0](v3, v2);

  return v5;
}

void sub_247D8BF98(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v193 = a4;
  v190 = a3;
  v5 = sub_247DD249C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v181 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v185 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v173 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v182 = &v173 - v16;
  MEMORY[0x28223BE20](v15);
  v187 = (&v173 - v17);
  v194 = sub_247DD294C();
  v18 = *(v194 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v194);
  v22 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v173 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v183 = &v173 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v191 = &v173 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v189 = (&v173 - v31);
  MEMORY[0x28223BE20](v30);
  v192 = &v173 - v32;
  v180 = sub_247DD2ABC();
  v179 = *(v180 - 8);
  v33 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = (&v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = sub_247DD280C();
  v176 = *(v177 - 8);
  v35 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = (&v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for NetworkDescriptor();
  v37 = *(*(v188 - 1) + 64);
  v38 = MEMORY[0x28223BE20](v188);
  v184 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v186 = &v173 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v173 - v42;
  v44 = sub_247DD268C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v173 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = Strong;
  (*(v45 + 16))(v48, a1, v44);
  v51 = (*(v45 + 88))(v48, v44);
  if (v51 == *MEMORY[0x277CD8DE8])
  {
    v174 = v50;
    (*(v45 + 96))(v48, v44);
    v52 = v18;
    v53 = v194;
    v188 = *(v18 + 32);
    v188(v25, v48, v194);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v54 = sub_247DD23CC();
    __swift_project_value_buffer(v54, qword_27EE7B878);
    v189 = *(v18 + 16);
    v189(v22, v25, v53);
    v55 = v193;

    v56 = sub_247DD23AC();
    v57 = sub_247DD2F2C();

    LODWORD(v192) = v57;
    if (os_log_type_enabled(v56, v57))
    {
      v187 = v56;
      v58 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v196[0] = v186;
      *v58 = 136315394;
      *(v58 + 4) = sub_247D72868(v190, v55, v196);
      *(v58 + 12) = 2080;
      v59 = v189;
      v189(v14, v22, v53);
      (*(v18 + 56))(v14, 0, 1, v53);
      v60 = v185;
      sub_247D6BA6C(v14, v185, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v18 + 48))(v60, 1, v53) == 1)
      {
        v61 = 7104878;
        v62 = 0xE300000000000000;
      }

      else
      {
        v94 = v60;
        v95 = v191;
        v188(v191, v94, v53);
        v59(v183, v95, v53);
        v61 = sub_247DD2CFC();
        v62 = v96;
        (*(v52 + 8))(v95, v53);
      }

      sub_247D6BAD4(v14, &unk_27EE73B60, &qword_247DD5250);
      v86 = *(v52 + 8);
      v86(v22, v53);
      v97 = sub_247D72868(v61, v62, v196);

      *(v58 + 14) = v97;
      v98 = v187;
      _os_log_impl(&dword_247D56000, v187, v192, "%s in waiting state, error=%s", v58, 0x16u);
      v99 = v186;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v99, -1, -1);
      MEMORY[0x24C1BAF60](v58, -1, -1);
    }

    else
    {

      v86 = *(v18 + 8);
      v86(v22, v53);
    }

    sub_247D8E4CC();

    v86(v25, v53);
    return;
  }

  if (v51 == *MEMORY[0x277CD8DE0])
  {
    (*(v45 + 96))(v48, v44);
    v63 = v18;
    v64 = *(v18 + 32);
    v65 = v192;
    v66 = v194;
    v193 = v64;
    v64(v192, v48, v194);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v67 = sub_247DD23CC();
    __swift_project_value_buffer(v67, qword_27EE7B878);
    v68 = v63;
    v69 = *(v63 + 16);
    v70 = v189;
    v69(v189, v65, v66);

    v71 = sub_247DD23AC();
    v72 = sub_247DD2F0C();

    v73 = os_log_type_enabled(v71, v72);
    v174 = v50;
    if (v73)
    {
      LODWORD(v185) = v72;
      v190 = v71;
      v74 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v196[0] = v180;
      *v74 = 136315394;
      v75 = v70;
      v76 = *(v50 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);

      v78 = sub_247D8BEA8(v77);
      v80 = v79;

      v81 = sub_247D72868(v78, v80, v196);

      *(v74 + 4) = v81;
      *(v74 + 12) = 2080;
      v82 = v187;
      v69(v187, v75, v66);
      (*(v68 + 56))(v82, 0, 1, v66);
      v83 = v182;
      sub_247D6BA6C(v82, v182, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v68 + 48))(v83, 1, v66) == 1)
      {
        v84 = 7104878;
        v85 = 0xE300000000000000;
      }

      else
      {
        v104 = v191;
        v193(v191, v83, v66);
        v69(v183, v104, v66);
        v84 = sub_247DD2CFC();
        v85 = v105;
        (*(v68 + 8))(v104, v66);
      }

      v101 = v68;
      sub_247D6BAD4(v187, &unk_27EE73B60, &qword_247DD5250);
      v100 = *(v68 + 8);
      v100(v189, v66);
      v106 = sub_247D72868(v84, v85, v196);

      *(v74 + 14) = v106;
      v107 = v190;
      _os_log_impl(&dword_247D56000, v190, v185, "%s failed, error=%s", v74, 0x16u);
      v108 = v180;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v108, -1, -1);
      MEMORY[0x24C1BAF60](v74, -1, -1);
    }

    else
    {

      v100 = *(v68 + 8);
      v100(v70, v66);
      v101 = v68;
    }

    v109 = v174;
    sub_247D8E4CC();
    v110 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor;
    v111 = v186;
    sub_247D86A04(v109 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v186);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_247D8690C(v111);
    if (EnumCaseMultiPayload == 2 && *(v109 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_initiated) == 1 && (v113 = v191, *v191 = 53, v114 = v194, (*(v101 + 104))(v113, *MEMORY[0x277CD8FB0], v194), v115 = MEMORY[0x24C1B9C30](v192, v113), v100(v113, v114), (v115 & 1) != 0))
    {
      sub_247D873E8(v181);
      sub_247D879F4();
      v116 = sub_247DD26FC();
      v117 = *(v116 + 48);
      v118 = *(v116 + 52);
      swift_allocObject();
      v119 = sub_247DD265C();
      v120 = *(v109 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);
      *(v109 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection) = v119;

      sub_247D8BC28(v121);
    }

    else
    {
      v122 = v109;
      v123 = v184;
      sub_247D86A04(v109 + v110, v184);
      v124 = swift_getEnumCaseMultiPayload();
      sub_247D8690C(v123);
      if (v124 != 2)
      {
        goto LABEL_43;
      }

      v125 = v191;
      *v191 = 54;
      v126 = *MEMORY[0x277CD8FB0];
      v127 = *(v101 + 104);
      v128 = v194;
      v127(v125, v126, v194);
      v129 = MEMORY[0x24C1B9C30](v192, v125);
      v100(v125, v128);
      if (v129 & 1) != 0 || (v130 = v191, *v191 = 96, v131 = v194, v127(v130, v126, v194), v132 = MEMORY[0x24C1B9C30](v192, v130), v100(v130, v131), (v132))
      {
        swift_beginAccess();
        v133 = *(v122 + 16);
        if (v133)
        {
          v134 = *(v122 + 24);
          v195 = 1;

          v133(&v195);
          sub_247D6A24C(v133);
        }
      }

      else
      {
LABEL_43:
        swift_beginAccess();
        v135 = *(v122 + 16);
        if (v135)
        {
          v136 = *(v122 + 24);
          v195 = 2;

          v135(&v195);
          sub_247D6A24C(v135);
        }
      }
    }

    v100(v192, v194);
    return;
  }

  if (v51 == *MEMORY[0x277CD8DD8])
  {
    v87 = v193;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v88 = sub_247DD23CC();
    __swift_project_value_buffer(v88, qword_27EE7B878);

    v89 = sub_247DD23AC();
    v90 = sub_247DD2F2C();

    if (!os_log_type_enabled(v89, v90))
    {
      goto LABEL_30;
    }

    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v196[0] = v92;
    *v91 = 136315138;
    *(v91 + 4) = sub_247D72868(v190, v87, v196);
    v93 = "%s in setup state";
LABEL_29:
    _os_log_impl(&dword_247D56000, v89, v90, v93, v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    MEMORY[0x24C1BAF60](v92, -1, -1);
    MEMORY[0x24C1BAF60](v91, -1, -1);
LABEL_30:

    return;
  }

  v102 = v193;
  if (v51 == *MEMORY[0x277CD8DF8])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v103 = sub_247DD23CC();
    __swift_project_value_buffer(v103, qword_27EE7B878);

    v89 = sub_247DD23AC();
    v90 = sub_247DD2F2C();

    if (!os_log_type_enabled(v89, v90))
    {
      goto LABEL_30;
    }

    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v196[0] = v92;
    *v91 = 136315138;
    *(v91 + 4) = sub_247D72868(v190, v102, v196);
    v93 = "%s in preparing state";
    goto LABEL_29;
  }

  if (v51 == *MEMORY[0x277CD8DD0])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v137 = sub_247DD23CC();
    __swift_project_value_buffer(v137, qword_27EE7B878);

    v138 = sub_247DD23AC();
    v139 = sub_247DD2F2C();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v196[0] = v141;
      *v140 = 136315138;
      *(v140 + 4) = sub_247D72868(v190, v102, v196);
      _os_log_impl(&dword_247D56000, v138, v139, "%s in ready state", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      MEMORY[0x24C1BAF60](v141, -1, -1);
      MEMORY[0x24C1BAF60](v140, -1, -1);
    }

    sub_247D86A04(v50 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v43);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_247D6A1F8(*(v43 + 1), *(v43 + 2));
      sub_247D6A1F8(*(v43 + 3), *(v43 + 4));
      v142 = *(v43 + 5);
      swift_unknownObjectRelease();
      v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v144 = sub_247DD225C();
      (*(*(v144 - 8) + 8))(&v43[v143], v144);
      if (*(v50 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
      {
        sub_247DD285C();

        sub_247DD27FC();
        v145 = sub_247DD26DC();

        if (v145)
        {
          sub_247DD284C();
          if (swift_dynamicCastClass())
          {

            v146 = sub_247DD23AC();
            v147 = sub_247DD2F2C();

            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v196[0] = v149;
              *v148 = 136315138;
              *(v148 + 4) = sub_247D72868(v190, v102, v196);
              _os_log_impl(&dword_247D56000, v146, v147, "%s setting keep-alive to 15 seconds", v148, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v149);
              MEMORY[0x24C1BAF60](v149, -1, -1);
              MEMORY[0x24C1BAF60](v148, -1, -1);
            }

            v150 = v175;
            *v175 = 15;
            (*(v176 + 104))(v150, *MEMORY[0x277CD8EA0], v177);
            sub_247DD283C();
          }
        }
      }

      sub_247D8D7E4();
    }

    else
    {
      sub_247D8690C(v43);
    }

    swift_beginAccess();
    v158 = *(v50 + 16);
    if (v158)
    {
      v159 = *(v50 + 24);
      v195 = 0;

      v158(&v195);
      sub_247D6A24C(v158);
    }

    v160 = *(v50 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    v161 = v178;
    *v178 = v160;
    v162 = v179;
    v163 = v180;
    (*(v179 + 104))(v161, *MEMORY[0x277D85200], v180);
    v164 = v160;
    LOBYTE(v160) = sub_247DD2ADC();
    (*(v162 + 8))(v161, v163);
    if (v160)
    {
      v165 = *(v50 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);
      if (v165)
      {
        v166 = swift_allocObject();
        swift_weakInit();
        v167 = swift_allocObject();
        *(v167 + 16) = v166;
        *(v167 + 24) = v165;
        swift_retain_n();

        sub_247DD262C();
      }

LABEL_72:

      return;
    }

    __break(1u);
    goto LABEL_80;
  }

  if (v51 == *MEMORY[0x277CD8DF0])
  {
    if (qword_27EE73260 == -1)
    {
LABEL_62:
      v151 = sub_247DD23CC();
      __swift_project_value_buffer(v151, qword_27EE7B878);

      v152 = sub_247DD23AC();
      v153 = sub_247DD2F2C();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v196[0] = v155;
        *v154 = 136315138;
        *(v154 + 4) = sub_247D72868(v190, v102, v196);
        _os_log_impl(&dword_247D56000, v152, v153, "%s in cancelled state", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v155);
        MEMORY[0x24C1BAF60](v155, -1, -1);
        MEMORY[0x24C1BAF60](v154, -1, -1);
      }

      swift_beginAccess();
      v156 = *(v50 + 16);
      if (v156)
      {
        v157 = *(v50 + 24);
        v195 = 1;

        v156(&v195);
        sub_247D6A24C(v156);
      }

      goto LABEL_72;
    }

LABEL_80:
    swift_once();
    goto LABEL_62;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v168 = sub_247DD23CC();
  __swift_project_value_buffer(v168, qword_27EE7B878);

  v169 = sub_247DD23AC();
  v170 = sub_247DD2F0C();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v196[0] = v172;
    *v171 = 136315138;
    *(v171 + 4) = sub_247D72868(v190, v102, v196);
    _os_log_impl(&dword_247D56000, v169, v170, "%s in unknown state", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v172);
    MEMORY[0x24C1BAF60](v172, -1, -1);
    MEMORY[0x24C1BAF60](v171, -1, -1);
  }

  (*(v45 + 8))(v48, v44);
}

uint64_t sub_247D8D7E4()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  v13 = sub_247DD2ADC();
  result = (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (!*(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    return result;
  }

  sub_247D86A04(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v5);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v15 = *(v5 + 1);
    v16 = *(v5 + 2);

    sub_247D6A1F8(v15, v16);
    sub_247D6A1F8(*(v5 + 3), *(v5 + 4));
    v17 = *(v5 + 5);
    swift_unknownObjectRelease();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v19 = sub_247DD225C();
    (*(*(v19 - 8) + 8))(&v5[v18], v19);
    swift_beginAccess();
    v20 = *(v1 + 48);
    if (v20)
    {
      v21 = *(v1 + 56);
      sub_247DD253C();

      sub_247D6ACFC(v20);
      sub_247D879F4();
      v22 = sub_247DD24BC();
      v23 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener;
      v24 = *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener);
      *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener) = v22;

      if (v22)
      {
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = v20;
        v26[4] = v21;
        sub_247D6ACFC(v20);

        sub_247D6ACFC(sub_247D902CC);
        sub_247DD24DC();
      }

      if (!*(v1 + v23))
      {
        goto LABEL_16;
      }

      swift_allocObject();
      swift_weakInit();

      sub_247D6ACFC(sub_247D902D8);
      sub_247DD24CC();

      if (!*(v1 + v23))
      {
LABEL_16:

        return sub_247D6A24C(v20);
      }

      v27 = *(v1 + v23);

      sub_247DD250C();

      sub_247D6A24C(v20);
    }
  }

  sub_247D8690C(v5);
  if (qword_27EE73260 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v28 = sub_247DD23CC();
  __swift_project_value_buffer(v28, qword_27EE7B878);
  v29 = sub_247DD23AC();
  v30 = sub_247DD2F0C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_247D56000, v29, v30, "Bad API usage, raw TCP cannot set a per-connection NWListener", v31, 2u);
    MEMORY[0x24C1BAF60](v31, -1, -1);
  }
}

uint64_t sub_247D8DCB8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for NetworkDescriptor();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v38 = a4;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B878);

    v17 = sub_247DD23AC();
    v18 = sub_247DD2F2C();

    v19 = &unk_27EE7B000;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      v37 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;
      v40 = 4401184;
      v41 = 0xE300000000000000;
      v42 = v22;
      v39 = sub_247DD258C();
      v23 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v23);

      MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
      v25 = v40;
      v24 = v41;
      v40 = sub_247D88148();
      v41 = v26;
      MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
      MEMORY[0x24C1BA0A0](v25, v24);

      v27 = sub_247D72868(v40, v41, &v42);
      v19 = &unk_27EE7B000;

      *(v21 + 4) = v27;
      _os_log_impl(&dword_247D56000, v17, v18, "Received incoming stream, %s", v21, 0xCu);
      v28 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x24C1BAF60](v28, -1, -1);
      v29 = v21;
      a3 = v37;
      MEMORY[0x24C1BAF60](v29, -1, -1);
    }

    sub_247D86A04(v15 + v19[299], v13);
    v30 = *(v15 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    sub_247D86A04(v13, v11);
    v31 = type metadata accessor for CosmoConnection();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();

    v35 = v30;
    sub_247D8AE8C(v11, 0, a1, v30);
    sub_247D8690C(v13);
    a3(v34);
  }

  return result;
}

uint64_t sub_247D8E004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B50, &qword_247DD5800);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = sub_247DD24FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v48 = v14;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v22 = sub_247DD23CC();
    __swift_project_value_buffer(v22, qword_27EE7B878);
    v49 = *(v10 + 16);
    v49(v19, a1, v9);

    v23 = sub_247DD23AC();
    v24 = sub_247DD2F2C();

    if (os_log_type_enabled(v23, v24))
    {
      v45 = v24;
      v43 = v17;
      v47 = v23;
      v25 = swift_slowAlloc();
      v46 = v6;
      v26 = v25;
      v44 = swift_slowAlloc();
      v50 = v44;
      *v26 = 136315394;
      v27 = *(v21 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);

      v29 = sub_247D8BEA8(v28);
      v31 = v30;

      v32 = sub_247D72868(v29, v31, &v50);
      v33 = v26;
      v34 = v46;

      *(v33 + 1) = v32;
      *(v33 + 6) = 2080;
      v49(v8, v19, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_247D6BA6C(v8, v34, &qword_27EE73B50, &qword_247DD5800);
      if ((*(v10 + 48))(v34, 1, v9) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        v37 = v43;
        (*(v10 + 32))(v43, v34, v9);
        v49(v48, v37, v9);
        v36 = sub_247DD2CFC();
        v35 = v38;
        (*(v10 + 8))(v37, v9);
      }

      sub_247D6BAD4(v8, &qword_27EE73B50, &qword_247DD5800);
      (*(v10 + 8))(v19, v9);
      v39 = sub_247D72868(v36, v35, &v50);

      *(v33 + 14) = v39;
      v40 = v47;
      _os_log_impl(&dword_247D56000, v47, v45, "%s listener state update, state=%s", v33, 0x16u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v41, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
    }

    else
    {

      return (*(v10 + 8))(v19, v9);
    }
  }

  return result;
}

uint64_t sub_247D8E4EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247D9045C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247D8E798(uint64_t a1)
{
  v2 = sub_247DD268C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    swift_beginAccess();
    v12 = *(a1 + 16);
    if (v12)
    {
      v34 = v11;
      v13 = *(a1 + 24);

      sub_247D6ACFC(v12);
      sub_247DD26AC();
      (*(v3 + 104))(v7, *MEMORY[0x277CD8DD8], v2);
      v14 = MEMORY[0x24C1B9970](v10, v7);
      v15 = *(v3 + 8);
      v15(v7, v2);
      v15(v10, v2);
      if (v14)
      {
        v33 = v12;
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v16 = sub_247DD23CC();
        __swift_project_value_buffer(v16, qword_27EE7B878);

        v17 = sub_247DD23AC();
        v18 = sub_247DD2F2C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v35 = v20;
          *v19 = 136315138;
          v21 = *(a1 + v34);

          v23 = sub_247D8BEA8(v22);
          v25 = v24;

          v26 = sub_247D72868(v23, v25, &v35);

          *(v19 + 4) = v26;
          _os_log_impl(&dword_247D56000, v17, v18, "%s, canceling (never started)", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x24C1BAF60](v20, -1, -1);
          MEMORY[0x24C1BAF60](v19, -1, -1);
        }

        LOBYTE(v35) = 1;
        v27 = v33;
        v33(&v35);
        v28 = v27;
      }

      else
      {
        v28 = v12;
      }

      sub_247D6A24C(v28);
      v11 = v34;
    }

    else
    {
    }

    sub_247DD26BC();

    v29 = *(a1 + v11);
    *(a1 + v11) = 0;
  }

  v30 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener))
  {
    v31 = *(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener);

    sub_247DD252C();

    v32 = *(a1 + v30);
    *(a1 + v30) = 0;
  }

  return result;
}

uint64_t sub_247D8EB14(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_247DD2A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_247DD2A2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v21[1] = *(v3 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    v22 = result;
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = a3;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    aBlock[4] = sub_247D86888;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_6;
    v19 = _Block_copy(aBlock);

    sub_247D6C0B0(a1, a2, v20);
    sub_247DD2A1C();
    v23 = MEMORY[0x277D84F90];
    sub_247D9045C(&unk_27EE73AF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
    sub_247DD2FFC();
    MEMORY[0x24C1BA270](0, v17, v11, v19);
    _Block_release(v19);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v17, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247D8EE0C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  LODWORD(v54) = a2;
  v7 = sub_247DD261C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    v12 = qword_27EE73260;
    v13 = *(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_247DD23CC();
    __swift_project_value_buffer(v14, qword_27EE7B878);

    sub_247D6C0B0(a3, a4, v15);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2EFC();

    sub_247D6C0AC(a3, a4);
    v18 = os_log_type_enabled(v16, v17);
    v53 = a3;
    if (!v18)
    {

      v28 = v54;
LABEL_27:
      sub_247DD28AC();
      if (qword_27EE732A8 != -1)
      {
        swift_once();
      }

      v44 = sub_247DD289C();
      v59 = MEMORY[0x277D84CC0];
      LODWORD(v57) = v28;
      sub_247DD28CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B58, &qword_247DD5808);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_247DD5660;
      *(v45 + 32) = v44;
      v46 = sub_247DD260C();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();

      sub_247DD25AC();
      (*(v8 + 104))(v11, *MEMORY[0x277CD8DA8], v7);
      sub_247DD266C();

      (*(v8 + 8))(v11, v7);
      return;
    }

    v50 = v17;
    v51 = v7;
    v52 = v8;
    v19 = a4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 136315650;
    v22 = 0xE300000000000000;
    v56 = v21;
    v57 = 4401184;
    v58 = 0xE300000000000000;
    v55 = sub_247DD258C();
    v23 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v23);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v25 = v57;
    v24 = v58;
    v57 = sub_247D88148();
    v58 = v26;
    MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
    MEMORY[0x24C1BA0A0](v25, v24);

    v27 = sub_247D72868(v57, v58, &v56);

    *(v20 + 4) = v27;
    *(v20 + 12) = 1024;
    v28 = v54;
    *(v20 + 14) = v54;
    *(v20 + 18) = 2080;
    if (v19 >> 60 == 15)
    {
      v29 = 7104878;
      v8 = v52;
LABEL_26:
      v42 = sub_247D72868(v29, v22, &v56);

      *(v20 + 20) = v42;
      _os_log_impl(&dword_247D56000, v16, v50, "%s sending messageHeader=%u, data-size=%s", v20, 0x1Cu);
      v43 = v49;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v43, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);

      v7 = v51;
      goto LABEL_27;
    }

    v35 = BYTE6(v19);
    v36 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      v8 = v52;
      if (v36 != 2)
      {
        v38 = 0;
        goto LABEL_25;
      }

      v37 = *(v53 + 16);
      v39 = *(v53 + 24);
      v40 = __OFSUB__(v39, v37);
      v38 = v39 - v37;
      if (!v40)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v8 = v52;
      v37 = v53;
      if (!v36)
      {
        v38 = v35;
LABEL_25:
        v57 = v38;
        v29 = sub_247DD2CFC();
        v22 = v41;
        goto LABEL_26;
      }
    }

    LODWORD(v38) = HIDWORD(v37) - v37;
    if (__OFSUB__(HIDWORD(v37), v37))
    {
      __break(1u);
      return;
    }

    v38 = v38;
    goto LABEL_25;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v30 = sub_247DD23CC();
  __swift_project_value_buffer(v30, qword_27EE7B878);
  v54 = sub_247DD23AC();
  v31 = sub_247DD2F0C();
  if (os_log_type_enabled(v54, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_247D72868(0xD00000000000001DLL, 0x8000000247DD9460, &v57);
    _os_log_impl(&dword_247D56000, v54, v31, "%s connection is nil", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x24C1BAF60](v33, -1, -1);
    MEMORY[0x24C1BAF60](v32, -1, -1);
  }

  else
  {
    v34 = v54;
  }
}

uint64_t sub_247D8F4A0()
{
  v1 = v0[2];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_247D6A1F8(v0[4], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_247D8F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_247DD2ABC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v57 = v13;
    v58 = a5;
    v60 = 4401184;
    v61 = 0xE300000000000000;
    v63 = sub_247DD258C();
    v16 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v16);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v18 = v60;
    v17 = v61;
    v60 = sub_247D88148();
    v61 = v19;
    MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
    MEMORY[0x24C1BA0A0](v18, v17);

    v20 = v60;
    v21 = v61;
    if (a3)
    {

      v56 = sub_247DD25FC();
      if (v56)
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v22 = sub_247DD23CC();
        __swift_project_value_buffer(v22, qword_27EE7B878);

        v23 = sub_247DD23AC();
        v24 = sub_247DD2F2C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v55 = v23;
          v26 = v20;
          v27 = v25;
          v28 = swift_slowAlloc();
          v60 = v28;
          *v27 = 136315138;
          v29 = sub_247D72868(v26, v21, &v60);

          *(v27 + 4) = v29;
          v23 = v55;
          _os_log_impl(&dword_247D56000, v55, v24, "%s read close", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          MEMORY[0x24C1BAF60](v28, -1, -1);
          MEMORY[0x24C1BAF60](v27, -1, -1);
        }

        else
        {
        }

        sub_247DD26BC();
        goto LABEL_35;
      }

      if (qword_27EE732A8 != -1)
      {
        swift_once();
      }

      if (sub_247DD25CC())
      {
        sub_247DD28AC();
        if (swift_dynamicCastClass())
        {

          swift_beginAccess();
          v36 = *(v15 + 32);
          if (!v36)
          {
LABEL_34:

LABEL_35:
            v46 = v58;
            v47 = sub_247DD294C();
            if (*(*(v47 - 8) + 48))(v46, 1, v47) != 1 || (v56)
            {
              goto LABEL_40;
            }

            v48 = *(v15 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
            v49 = v57;
            *v57 = v48;
            (*(v10 + 104))(v49, *MEMORY[0x277D85200], v9);
            v50 = v48;
            LOBYTE(v48) = sub_247DD2ADC();
            (*(v10 + 8))(v49, v9);
            if ((v48 & 1) == 0)
            {
              __break(1u);
              return;
            }

            v51 = *(v15 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);
            if (v51)
            {
              v52 = swift_allocObject();
              swift_weakInit();
              v53 = swift_allocObject();
              *(v53 + 16) = v52;
              *(v53 + 24) = v51;
              swift_retain_n();

              sub_247DD262C();
            }

            else
            {
LABEL_40:
            }

            goto LABEL_41;
          }

          v55 = *(v15 + 40);

          sub_247DD28BC();
          if (v62)
          {
            if (swift_dynamicCast())
            {
              v37 = v59;
LABEL_33:
              v36(v37, a1, a2);
              sub_247D6A24C(v36);
              goto LABEL_34;
            }
          }

          else
          {
            sub_247D6BAD4(&v60, &qword_27EE73A38, &qword_247DD54F8);
          }

          v37 = 0;
          goto LABEL_33;
        }
      }

      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v38 = sub_247DD23CC();
      __swift_project_value_buffer(v38, qword_27EE7B878);

      v39 = sub_247DD23AC();
      v40 = sub_247DD2F0C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v20;
        v44 = v42;
        v60 = v42;
        *v41 = 136315138;
        v45 = sub_247D72868(v43, v21, &v60);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_247D56000, v39, v40, "%s could not read messageTypeHeader", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x24C1BAF60](v44, -1, -1);
        MEMORY[0x24C1BAF60](v41, -1, -1);
      }

      else
      {
      }

LABEL_41:

      return;
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v30 = sub_247DD23CC();
    __swift_project_value_buffer(v30, qword_27EE7B878);

    v31 = sub_247DD23AC();
    v32 = sub_247DD2F0C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v34;
      *v33 = 136315138;
      v35 = sub_247D72868(v20, v21, &v60);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_247D56000, v31, v32, "%s receiveMessage has nil context", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x24C1BAF60](v34, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t *CosmoConnection.deinit()
{
  v1 = v0[3];
  sub_247D6A24C(v0[2]);
  v2 = v0[5];
  sub_247D6A24C(v0[4]);
  v3 = v0[7];
  sub_247D6A24C(v0[6]);
  v4 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v5 = sub_247DD225C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor);

  v6 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name + 8);

  v7 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);

  v8 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener);

  return v0;
}

uint64_t CosmoConnection.__deallocating_deinit()
{
  CosmoConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D8FE50()
{
  result = qword_27EE73B18;
  if (!qword_27EE73B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73B18);
  }

  return result;
}

uint64_t sub_247D8FEEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v5 = sub_247DD225C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_247D8FF98()
{
  result = sub_247DD225C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NetworkDescriptor();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_247D9027C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D902E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D90328(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a1;
  v7[0] = a2;
  v7[1] = a3;
  return v4(&v8, v7);
}

uint64_t sub_247D90368(unsigned int *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, a2[1]);
}

uint64_t objectdestroy_28Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_247D90414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_247D8F4F0(a1, a2, a3, a4, a5);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D9045C(unint64_t *a1, void (*a2)(uint64_t))
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

Cosmo::CosmoListener::State_optional __swiftcall CosmoListener.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoListener.State.rawValue.getter()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D905E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656C696166;
  if (v2 != 1)
  {
    v4 = 0x64656C65636E6163;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (*a2 != 1)
  {
    v8 = 0x64656C65636E6163;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7964616572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_247DD322C();
  }

  return v11 & 1;
}

uint64_t sub_247D906E0()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D9077C()
{
  *v0;
  *v0;
  sub_247DD2D7C();
}

uint64_t sub_247D90804()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

void sub_247D908A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (v2 != 1)
  {
    v5 = 0x64656C65636E6163;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_247D90900@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D90994(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D90A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D93CE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D90AE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D93CAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t CosmoListener.__allocating_init(descriptor:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CosmoListener.init(descriptor:queue:)(a1, a2);
  return v7;
}

_OWORD *CosmoListener.init(descriptor:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2F6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2F3C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_247DD2A2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v2[2] = 0u;
  v2[3] = 0u;
  v2[1] = 0u;
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = 0;
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D86A04(a1, v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);
  if (!a2)
  {
    v17 = sub_247D6A0F4();
    sub_247DD2A1C();
    v18 = MEMORY[0x277D84F90];
    v15 = sub_247D93C2C(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    v16 = v5;
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v6 + 104))(v9, *MEMORY[0x277D85260], v16);
    a2 = sub_247DD2F8C();
  }

  sub_247D8690C(a1);
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue) = a2;
  return v2;
}

uint64_t sub_247D90EF8()
{
  v1 = sub_247DD2A0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2A2C();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  aBlock[4] = sub_247D91538;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v14 = MEMORY[0x277D84F90];
  sub_247D93C2C(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_247D911A0(uint64_t a1)
{
  v2 = sub_247DD248C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D879F4();

  sub_247DD247C();
  v4 = sub_247DD253C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_247DD251C();
  v8 = *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener);
  *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = v7;

  swift_allocObject();
  swift_weakInit();

  sub_247D6ACFC(sub_247D93D48);
  sub_247DD24CC();

  swift_allocObject();
  swift_weakInit();

  sub_247D6ACFC(sub_247D93D50);
  sub_247DD24DC();

  v9 = *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  sub_247DD250C();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D91558(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D91618(a1);
  }

  return result;
}

uint64_t sub_247D915B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D92F60(a1);
  }

  return result;
}

void sub_247D91618(uint64_t a1)
{
  v2 = v1;
  v218 = a1;
  v194 = sub_247DD225C();
  v193 = *(v194 - 8);
  v3 = *(v193 + 64);
  v4 = MEMORY[0x28223BE20](v194);
  v186 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v196 = &v183 - v6;
  v191 = type metadata accessor for NetworkDescriptor();
  v7 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v192 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_247DD249C();
  v199 = *(v195 - 8);
  v9 = *(v199 + 64);
  v10 = MEMORY[0x28223BE20](v195);
  v187 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v188 = &v183 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v190 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v198 = &v183 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v189 = &v183 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v197 = &v183 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v205 = &v183 - v24;
  MEMORY[0x28223BE20](v23);
  v207 = &v183 - v25;
  v215 = sub_247DD294C();
  v210 = *(v215 - 8);
  v26 = *(v210 + 64);
  v27 = MEMORY[0x28223BE20](v215);
  v201 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v200 = &v183 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v216 = &v183 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v202 = &v183 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v206 = &v183 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v209 = &v183 - v38;
  MEMORY[0x28223BE20](v37);
  v208 = &v183 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B50, &qword_247DD5800);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v183 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v213 = (&v183 - v45);
  v46 = sub_247DD24FC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v214 = (&v183 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x28223BE20](v49);
  v204 = &v183 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v203 = &v183 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v183 - v55;
  v57 = sub_247DD2ABC();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = (&v183 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v61 = v62;
  (*(v58 + 104))(v61, *MEMORY[0x277D85200], v57);
  v63 = v62;
  LOBYTE(v62) = sub_247DD2ADC();
  (*(v58 + 8))(v61, v57);
  if (v62)
  {
    if (qword_27EE73260 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v64 = sub_247DD23CC();
  v65 = __swift_project_value_buffer(v64, qword_27EE7B878);
  v66 = *(v47 + 16);
  (v66)(v56, v218, v46);
  v211 = v65;
  v67 = sub_247DD23AC();
  v68 = sub_247DD2F2C();
  v69 = os_log_type_enabled(v67, v68);
  v217 = v2;
  v212 = v66;
  if (v69)
  {
    v185 = v68;
    v70 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v221[0] = v184;
    *v70 = 136315138;
    v71 = v213;
    (v66)(v213, v56, v46);
    (*(v47 + 56))(v71, 0, 1, v46);
    sub_247D6BA6C(v71, v44, &qword_27EE73B50, &qword_247DD5800);
    if ((*(v47 + 48))(v44, 1, v46) == 1)
    {
      v72 = 7104878;
      v73 = 0xE300000000000000;
    }

    else
    {
      v75 = v66;
      v76 = v203;
      (*(v47 + 32))(v203, v44, v46);
      (v75)(v204, v76, v46);
      v72 = sub_247DD2CFC();
      v73 = v77;
      (*(v47 + 8))(v76, v46);
    }

    sub_247D6BAD4(v213, &qword_27EE73B50, &qword_247DD5800);
    v74 = *(v47 + 8);
    v74(v56, v46);
    v78 = sub_247D72868(v72, v73, v221);

    *(v70 + 4) = v78;
    _os_log_impl(&dword_247D56000, v67, v185, "[Listener] State update, state=%s", v70, 0xCu);
    v79 = v184;
    __swift_destroy_boxed_opaque_existential_0Tm(v184);
    MEMORY[0x24C1BAF60](v79, -1, -1);
    MEMORY[0x24C1BAF60](v70, -1, -1);

    v2 = v217;
  }

  else
  {

    v74 = *(v47 + 8);
    v74(v56, v46);
  }

  v80 = v216;
  v81 = v214;
  v212(v214, v218, v46);
  v82 = (*(v47 + 88))(v81, v46);
  v83 = v215;
  if (v82 == *MEMORY[0x277CD8B40])
  {
    (*(v47 + 96))(v81, v46);
    v84 = v210;
    v85 = *(v210 + 32);
    v86 = v208;
    v85(v208, v81, v83);
    v87 = *(v84 + 16);
    v88 = v209;
    v87(v209, v86, v83);
    v89 = sub_247DD23AC();
    v90 = sub_247DD2F2C();
    if (os_log_type_enabled(v89, v90))
    {
      LODWORD(v218) = v90;
      v91 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v221[0] = v214;
      v216 = v91;
      *v91 = 136315138;
      v92 = v207;
      v87(v207, v88, v83);
      (*(v84 + 56))(v92, 0, 1, v83);
      v93 = v92;
      v94 = v205;
      sub_247D6BA6C(v93, v205, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v84 + 48))(v94, 1, v83) == 1)
      {
        v95 = 7104878;
        v96 = 0xE300000000000000;
      }

      else
      {
        v116 = v206;
        v85(v206, v94, v83);
        v87(v202, v116, v83);
        v95 = sub_247DD2CFC();
        v96 = v117;
        v118 = v116;
        v86 = v208;
        (*(v84 + 8))(v118, v83);
      }

      v112 = v217;
      sub_247D6BAD4(v207, &unk_27EE73B60, &qword_247DD5250);
      v111 = *(v84 + 8);
      v111(v209, v83);
      v119 = sub_247D72868(v95, v96, v221);

      v120 = v216;
      *(v216 + 4) = v119;
      _os_log_impl(&dword_247D56000, v89, v218, "[Listener] Waiting for network to become available, error=%s", v120, 0xCu);
      v121 = v214;
      __swift_destroy_boxed_opaque_existential_0Tm(v214);
      MEMORY[0x24C1BAF60](v121, -1, -1);
      MEMORY[0x24C1BAF60](v120, -1, -1);
    }

    else
    {

      v111 = *(v84 + 8);
      v111(v88, v83);
      v112 = v217;
    }

    swift_beginAccess();
    v122 = *(v112 + 16);
    if (v122)
    {
      v123 = *(v112 + 24);
      LOBYTE(v220) = 1;

      v122(&v220);
      sub_247D6A24C(v122);
    }

    sub_247D93540();
    v111(v86, v83);
  }

  else if (v82 == *MEMORY[0x277CD8B38])
  {
    (*(v47 + 96))(v81, v46);
    v97 = v210;
    v98 = *(v210 + 32);
    v98(v80, v81, v83);
    v99 = v206;
    *v206 = -65569;
    (*(v97 + 104))(v99, *MEMORY[0x277CD8FA0], v83);
    v100 = MEMORY[0x24C1B9C30](v80, v99);
    v101 = *(v97 + 8);
    v101(v99, v83);
    v102 = *(v97 + 16);
    if (v100)
    {
      v103 = v200;
      v102(v200, v80, v83);
      v104 = sub_247DD23AC();
      LODWORD(v218) = sub_247DD2F2C();
      if (os_log_type_enabled(v104, v218))
      {
        v214 = v104;
        v105 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v221[0] = v212;
        v213 = v105;
        *v105 = 136315138;
        v106 = v197;
        v102(v197, v103, v83);
        v107 = v210;
        (*(v210 + 56))(v106, 0, 1, v83);
        v108 = v189;
        sub_247D6BA6C(v106, v189, &unk_27EE73B60, &qword_247DD5250);
        if ((*(v107 + 48))(v108, 1, v83) == 1)
        {
          v109 = 7104878;
          v110 = 0xE300000000000000;
        }

        else
        {
          v164 = v206;
          v98(v206, v108, v83);
          v102(v202, v164, v83);
          v109 = sub_247DD2CFC();
          v110 = v165;
          v101(v164, v83);
        }

        v161 = v217;
        sub_247D6BAD4(v197, &unk_27EE73B60, &qword_247DD5250);
        v101(v200, v83);
        v166 = sub_247D72868(v109, v110, v221);

        v168 = v213;
        v167 = v214;
        *(v213 + 1) = v166;
        _os_log_impl(&dword_247D56000, v167, v218, "[Listener] Failed with error=%s, restarting", v168, 0xCu);
        v169 = v212;
        __swift_destroy_boxed_opaque_existential_0Tm(v212);
        MEMORY[0x24C1BAF60](v169, -1, -1);
        MEMORY[0x24C1BAF60](v168, -1, -1);

        v80 = v216;
      }

      else
      {

        v101(v103, v83);
        v161 = v217;
      }

      sub_247D93540();
      *(v161 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 1;
      sub_247D90EF8();
    }

    else
    {
      v124 = v201;
      v102(v201, v80, v83);
      v125 = sub_247DD23AC();
      LODWORD(v218) = sub_247DD2F2C();
      if (os_log_type_enabled(v125, v218))
      {
        v214 = v125;
        v126 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v221[0] = v212;
        v213 = v126;
        *v126 = 136315138;
        v127 = v198;
        v102(v198, v124, v83);
        v128 = v210;
        (*(v210 + 56))(v127, 0, 1, v83);
        v129 = v127;
        v130 = v190;
        sub_247D6BA6C(v129, v190, &unk_27EE73B60, &qword_247DD5250);
        if ((*(v128 + 48))(v130, 1, v83) == 1)
        {
          v131 = 7104878;
          v132 = 0xE300000000000000;
        }

        else
        {
          v170 = v206;
          v98(v206, v130, v83);
          v102(v202, v170, v83);
          v131 = sub_247DD2CFC();
          v132 = v171;
          v101(v170, v83);
        }

        sub_247D6BAD4(v198, &unk_27EE73B60, &qword_247DD5250);
        v101(v201, v83);
        v172 = sub_247D72868(v131, v132, v221);

        v174 = v213;
        v173 = v214;
        *(v213 + 1) = v172;
        _os_log_impl(&dword_247D56000, v173, v218, "[Listener] Failed with error=%s, stopping", v174, 0xCu);
        v175 = v212;
        __swift_destroy_boxed_opaque_existential_0Tm(v212);
        MEMORY[0x24C1BAF60](v175, -1, -1);
        MEMORY[0x24C1BAF60](v174, -1, -1);

        v80 = v216;
      }

      else
      {

        v101(v124, v83);
      }

      sub_247D93540();
    }

    v101(v80, v83);
  }

  else if (v82 == *MEMORY[0x277CD8B30])
  {
    v113 = sub_247DD23AC();
    v114 = sub_247DD2EEC();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_247D56000, v113, v114, "[Listener] Initialized but not started", v115, 2u);
      MEMORY[0x24C1BAF60](v115, -1, -1);
    }
  }

  else if (v82 == *MEMORY[0x277CD8B28])
  {
    v133 = sub_247DD23AC();
    v134 = sub_247DD2F2C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_247D56000, v133, v134, "[Listener] Ready to accept incoming connections", v135, 2u);
      MEMORY[0x24C1BAF60](v135, -1, -1);
    }

    v136 = v194;
    v137 = v193;
    v138 = v196;
    v139 = v199;
    if (!*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener))
    {
      goto LABEL_68;
    }

    v140 = OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor;
    v218 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener);

    v141 = v188;
    sub_247D873E8(v188);
    v142 = sub_247DD244C();
    v145 = *(v139 + 8);
    v144 = v139 + 8;
    v143 = v145;
    (v145)(v141, v195);
    if (v142)
    {
      v216 = v143;
      v220 = MEMORY[0x277D84F90];
      v146 = swift_unknownObjectRetain();
      MEMORY[0x24C1BA170](v146);
      if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v181 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_247DD2E9C();
      }

      sub_247DD2EBC();
      v147 = v220;
      v148 = v192;
      sub_247D86A04(v2 + v140, v192);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v199 = v144;
        v149 = *(v148 + 8);
        v214 = *v148;
        v215 = v149;
        v221[0] = v214;
        v221[1] = v149;
        sub_247D97368(v138);
        v150 = v186;
        (*(v137 + 16))(v186, v138, v136);
        v151 = sub_247DD23AC();
        v152 = sub_247DD2F2C();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v221[0] = v154;
          *v153 = 136315138;
          sub_247D93C2C(&unk_27EE73510, MEMORY[0x277CC95F0]);
          v155 = sub_247DD321C();
          v157 = v156;
          v158 = *(v193 + 8);
          v158(v150, v194);
          v159 = sub_247D72868(v155, v157, v221);
          v136 = v194;

          *(v153 + 4) = v159;
          _os_log_impl(&dword_247D56000, v151, v152, "[Listener] Advertising protocol-version v1 bonjour-serviceUUID=%s", v153, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v154);
          v160 = v154;
          v2 = v217;
          MEMORY[0x24C1BAF60](v160, -1, -1);
          MEMORY[0x24C1BAF60](v153, -1, -1);
        }

        else
        {

          v158 = *(v137 + 8);
          v158(v150, v136);
        }

        v176 = v187;
        v177 = v196;
        sub_247D887C8(v187);
        if (sub_247DD244C())
        {
          v178 = swift_unknownObjectRetain();
          MEMORY[0x24C1BA170](v178);
          if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v182 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_247DD2E9C();
          }

          sub_247DD2EBC();
          sub_247D6A1F8(v214, v215);
          swift_unknownObjectRelease();
          (v216)(v187, v195);
          v158(v177, v136);
          v147 = v220;
        }

        else
        {
          sub_247D6A1F8(v214, v215);
          (v216)(v176, v195);
          v158(v177, v136);
        }
      }

      else
      {
        sub_247D8690C(v148);
      }

      sub_247DD24EC();
      advertiseEndpoints(_:onListener:)(v147);

      swift_unknownObjectRelease();
      swift_beginAccess();
      v179 = *(v2 + 16);
      if (v179)
      {
        v180 = *(v2 + 24);
        v219 = 0;

        v179(&v219);
        swift_unknownObjectRelease();
        sub_247D6A24C(v179);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_68:
      sub_247DD30AC();
      __break(1u);
    }
  }

  else if (v82 == *MEMORY[0x277CD8B48])
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) & 1) == 0)
    {
      swift_beginAccess();
      v162 = *(v2 + 16);
      if (v162)
      {
        v163 = *(v2 + 24);
        LOBYTE(v220) = 2;

        v162(&v220);
        sub_247D6A24C(v162);
      }
    }
  }

  else
  {
    v74(v81, v46);
  }
}

uint64_t sub_247D92F60(uint64_t a1)
{
  v2 = v1;
  v63 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDescriptor();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = sub_247DD2ABC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_247DD2ADC();
  (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v66 = v12;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B878);

  v24 = sub_247DD23AC();
  v25 = sub_247DD2F2C();

  v26 = os_log_type_enabled(v24, v25);
  v65 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v68 = a1;
    v69 = v28;
    *v27 = 136315138;
    sub_247DD26FC();

    v29 = sub_247DD2CFC();
    v31 = sub_247D72868(v29, v30, &v69);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_247D56000, v24, v25, "[Listener] Received connection=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x24C1BAF60](v28, -1, -1);
    MEMORY[0x24C1BAF60](v27, -1, -1);
  }

  v32 = OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor;
  sub_247D86A04(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v66;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v14);
LABEL_10:
      sub_247D86A04(v2 + v32, v34);
      v35 = v67;
      sub_247D86A04(v34, v67);
      v36 = type metadata accessor for CosmoConnection();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = v65;
      v40 = v65;

      v41 = sub_247D8AE8C(v35, 0, a1, v39);
      sub_247D8690C(v34);
      swift_beginAccess();
      v42 = *(v2 + 32);
      if (v42)
      {
        v43 = 40;
LABEL_16:
        v60 = *(v2 + v43);

        v42(v41);
        sub_247D6A24C(v42);
      }
    }

    sub_247D6A1F8(*(v14 + 1), *(v14 + 2));
    sub_247D6A1F8(*(v14 + 3), *(v14 + 4));
    v46 = *(v14 + 5);
    swift_unknownObjectRelease();
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v48 = sub_247DD225C();
    (*(*(v48 - 8) + 8))(&v14[v47], v48);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_247D6BAD4(v14, &unk_27EE73C00, &qword_247DD55F8);
      goto LABEL_10;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v45 = *(v44 + 48);

    sub_247D6BAD4(&v14[v45], &unk_27EE73C00, &qword_247DD55F8);
  }

  sub_247D86A04(v2 + v32, v34);
  v49 = objc_opt_self();
  v50 = v65;
  v51 = v65;
  v52 = [v49 defaultManager];
  v53 = [v52 temporaryDirectory];

  v54 = v64;
  v55 = &v64[*(v63 + 20)];
  sub_247DD20AC();

  *v54 = 15;
  v56 = v67;
  sub_247D86A04(v34, v67);
  v57 = type metadata accessor for CosmoHttpConnection(0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();

  v41 = sub_247D755C4(v54, v56, 0, a1, v50);
  sub_247D8690C(v34);
  v42 = *(v2 + 48);
  if (v42)
  {
    v43 = 56;
    goto LABEL_16;
  }
}

void sub_247D93540()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_247DD2ADC();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = OBJC_IVAR____TtC5Cosmo13CosmoListener_listener;
  if (*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener))
  {
    v10 = qword_27EE73260;
    v11 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener);

    if (v10 == -1)
    {
LABEL_4:
      v12 = sub_247DD23CC();
      __swift_project_value_buffer(v12, qword_27EE7B878);
      v13 = sub_247DD23AC();
      v14 = sub_247DD2F2C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_247D56000, v13, v14, "[Listener] Stopping", v15, 2u);
        MEMORY[0x24C1BAF60](v15, -1, -1);
      }

      sub_247DD252C();

      v16 = *(v2 + v1);
      *(v2 + v1) = 0;

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v17 = sub_247DD23CC();
  __swift_project_value_buffer(v17, qword_27EE7B878);
  v18 = sub_247DD23AC();
  v19 = sub_247DD2EEC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_247D72868(0x2928706F7473, 0xE600000000000000, &v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x24C1BAF60](v21, -1, -1);
    MEMORY[0x24C1BAF60](v20, -1, -1);
  }
}

uint64_t *CosmoListener.deinit()
{
  v1 = v0[3];
  sub_247D6A24C(v0[2]);
  v2 = v0[5];
  sub_247D6A24C(v0[4]);
  v3 = v0[7];
  sub_247D6A24C(v0[6]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener);

  return v0;
}

uint64_t CosmoListener.__deallocating_deinit()
{
  v1 = v0[3];
  sub_247D6A24C(v0[2]);
  v2 = v0[5];
  sub_247D6A24C(v0[4]);
  v3 = v0[7];
  sub_247D6A24C(v0[6]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

unint64_t sub_247D93948()
{
  result = qword_27EE73B80;
  if (!qword_27EE73B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73B80);
  }

  return result;
}

uint64_t type metadata accessor for CosmoListener()
{
  result = qword_27EE73B90;
  if (!qword_27EE73B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D93A10()
{
  result = type metadata accessor for NetworkDescriptor();
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

uint64_t sub_247D93C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247D93C74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D93CAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_247D93CE4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_247D93D10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t URL.fileSize.getter()
{
  result = sub_247D94864();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_247D94CC0(*MEMORY[0x277CCA1C0]), (v3 & 1) != 0))
    {
      sub_247D6B778(*(v1 + 56) + 32 * v2, v5);

      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_247D93E14(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  v3 = a1 / v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  result = [v4 setCountStyle_];
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    v6 = [v4 stringFromByteCount_];
    v7 = sub_247DD2CAC();

    MEMORY[0x24C1BA0A0](29487, 0xE200000000000000);
    return v7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t advertiseEndpoints(_:onListener:)(unint64_t a1)
{
  result = MEMORY[0x24C1BA7B0]();
  if (a1 >> 62)
  {
    result = sub_247DD30BC();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x24C1BA360](i, a1);
      nw_array_append();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      nw_array_append();
      --v3;
    }

    while (v3);
  }

LABEL_10:
  nw_listener_set_advertise_endpoints();

  return swift_unknownObjectRelease();
}

uint64_t sub_247D94008(uint64_t a1, unint64_t a2)
{
  v4 = sub_247DD219C();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_247D6A2E8(a1, a2);
  sub_247DD21AC();
  sub_247D96B38(&qword_27EE73C58, MEMORY[0x277CC92E0]);
  sub_247DD2FBC();
  if (v24)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v20 = xmmword_247DD54D0;
    v11 = MEMORY[0x277D84BC0];
    do
    {
      v12 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C60, &unk_247DD5990);
      v13 = swift_allocObject();
      *(v13 + 16) = v20;
      *(v13 + 56) = MEMORY[0x277D84B78];
      *(v13 + 64) = v11;
      *(v13 + 32) = v12;
      v14 = sub_247DD2CCC();
      v16 = v15;
      v21 = v9;
      v22 = v10;

      MEMORY[0x24C1BA0A0](v14, v16);

      v9 = v21;
      v10 = v22;
      sub_247DD2FBC();
    }

    while (v24 != 1);
  }

  (*(v19 + 8))(v7, v4);
  return v9;
}

uint64_t sub_247D94264(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_247DD322C();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_247D94320(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *a1;
  }

  v4 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  if (sub_247D95A8C(0xFuLL, v4 | (v3 << 16), v1, v2) != 1)
  {
    return 0;
  }

  result = sub_247D943BC(v1, v2);
  if ((result & 0x100000000) == 0)
  {
    return sub_247DD1FAC() & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_247D943BC(unint64_t a1, unint64_t a2)
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
    v5 = sub_247D959F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_247DD303C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_247DD308C();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_247D94508(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_247DBA18C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_247DBA18C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_247D94680@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_247D8A434();
      sub_247DD1FCC();
      sub_247DD222C();
      sub_247D6A1F8(a1, a2);
      v11 = sub_247DD225C();
      result = (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_247D6A1F8(a1, a2);
  v14 = sub_247DD225C();
  v15 = *(*(v14 - 8) + 56);
  v16 = *MEMORY[0x277D85DE8];

  return v15(a3, 1, 1, v14);
}

uint64_t sub_247D94864()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_247DD20CC();
  v1 = sub_247DD2C7C();

  v18 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v18];

  v3 = v18;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_247D96B38(&qword_27EE73650, type metadata accessor for FileAttributeKey);
    v4 = sub_247DD2C3C();
    v5 = v3;
  }

  else
  {
    v6 = v18;
    v7 = sub_247DD205C();

    swift_willThrow();
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    sub_247D952FC();
    swift_dynamicCast();
    v8 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73A40, &unk_247DD5580);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_247DD54D0;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_247DD304C();

    v18 = 0xD000000000000015;
    v19 = 0x8000000247DD9580;
    v10 = [v8 description];
    v11 = sub_247DD2CAC();
    v13 = v12;

    MEMORY[0x24C1BA0A0](v11, v13);

    v14 = v18;
    v15 = v19;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v14;
    *(v9 + 40) = v15;
    sub_247DD329C();

    v4 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t advertiseEndpoint(_:onListener:)()
{
  MEMORY[0x24C1BA7B0]();
  swift_unknownObjectRetain();
  nw_array_append();
  nw_listener_set_advertise_endpoints();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_247D94B68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_247DD32BC();
  sub_247DD2D7C();
  v6 = sub_247DD32EC();

  return sub_247D94E08(a1, a2, v6);
}

unint64_t sub_247D94BE0(unsigned int a1)
{
  v3 = MEMORY[0x24C1BA5A0](*(v1 + 40), a1, 4);

  return sub_247D94EC0(a1, v3);
}

unint64_t sub_247D94C28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_247DD225C();
  sub_247D96B38(&qword_27EE738D0, MEMORY[0x277CC95F0]);
  v5 = sub_247DD2C5C();

  return sub_247D94F2C(a1, v5);
}

unint64_t sub_247D94CC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_247DD2CAC();
  sub_247DD32BC();
  sub_247DD2D7C();
  v4 = sub_247DD32EC();

  return sub_247D950EC(a1, v4);
}

unint64_t sub_247D94D54(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_247DD32BC();
  type metadata accessor for CFString(0);
  sub_247D96B38(&qword_27EE73C20, type metadata accessor for CFString);
  sub_247DD227C();
  v4 = sub_247DD32EC();

  return sub_247D951F0(a1, v4);
}

unint64_t sub_247D94E08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247DD322C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_247D94EC0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_247D94F2C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_247DD225C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_247D96B38(&qword_27EE73C30, MEMORY[0x277CC95F0]);
      v16 = sub_247DD2C6C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_247D950EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_247DD2CAC();
      v9 = v8;
      if (v7 == sub_247DD2CAC() && v9 == v10)
      {
        break;
      }

      v12 = sub_247DD322C();

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

unint64_t sub_247D951F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_247D96B38(&qword_27EE73C20, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_247DD226C();

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

unint64_t sub_247D952FC()
{
  result = qword_27EE73C28;
  if (!qword_27EE73C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE73C28);
  }

  return result;
}

void sub_247D95348(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unsigned __int8 *sub_247D95420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_247DD2E4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247D8100C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247DD308C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_247D959F4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247D95C9C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247D95D10(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247D95A8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_247D95E24(a1, a3, a4);
  v8 = sub_247D95E24(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_247DD2D3C();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_247DD308C();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_247DD2D4C();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_247DD308C();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_247D95C9C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247D81404(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_247D95D10(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_247DD308C();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_247D95E24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247D95EBC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247D95D10(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247D95EBC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247D81404(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D95F30(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = sub_247DD1FBC();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247DD1F9C();

  v9 = sub_247DD2D8C();
  if (v9)
  {
    v10 = v9;
    v11 = sub_247D993D8(v9, 0);

    v12 = sub_247D99310(&v94, v11 + 4, v10, a1, a2);

    if (v12 != v10)
    {
      goto LABEL_203;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v14 = sub_247D94264(&unk_2859E3918, v11);
  v15 = swift_arrayDestroy();
  if (v14)
  {
    v13 = v11[2];
    if (v13)
    {
LABEL_204:
      if (v13 >= 2)
      {
        v83 = 2;
      }

      else
      {
        v83 = v13;
      }

      sub_247D95348(v11, (v11 + 4), v83, (2 * v13) | 1);
      v85 = v84;

      v11 = v85;
    }
  }

  MEMORY[0x28223BE20](v15);
  v86[-2] = v8;
  v16 = sub_247D94508(sub_247D96B18, &v86[-4], v11);
  v17 = v16;
  v18 = v16[2];
  if (v18)
  {
    v98 = xmmword_247DD5950;
    v92 = v16;
    v88 = v5;
    v89 = v4;
    v86[1] = a2;
    v87 = v8;
    if ((v18 & 1) == 0)
    {
      v19 = v18;
      v5 = 0;
LABEL_98:
      v48 = v17 + 4;
      v90 = &v94 + 1;
      v91 = xmmword_247DD5960;
      v11 = &qword_27EE73C38;
      v4 = &qword_247DD5978;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
        v49 = swift_allocObject();
        *(v49 + 16) = v91;
        v50 = v17[2];
        if (v5 >= v50)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:

          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v51 = &v48[2 * v5];
        v53 = *v51;
        v52 = v51[1];
        *(v49 + 32) = v53;
        *(v49 + 40) = v52;
        if (v5 + 1 >= v50)
        {
          goto LABEL_197;
        }

        v54 = &v48[2 * v5 + 2];
        v55 = v54[1];
        *(v49 + 48) = *v54;
        *(v49 + 56) = v55;
        v94 = v49;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C48, &qword_247DD5988);
        sub_247D6AE30(&qword_27EE73C50, &qword_27EE73C48, &qword_247DD5988);
        v56 = sub_247DD2E3C();
        v58 = HIBYTE(v57) & 0xF;
        v13 = v56 & 0xFFFFFFFFFFFFLL;
        if ((v57 & 0x2000000000000000) != 0)
        {
          v59 = HIBYTE(v57) & 0xF;
        }

        else
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (!v59)
        {
          goto LABEL_198;
        }

        if ((v57 & 0x1000000000000000) != 0)
        {
          LOWORD(v62) = sub_247D95420(v56, v57, 16);

          if ((v62 & 0x100) != 0)
          {
            goto LABEL_216;
          }

          goto LABEL_189;
        }

        if ((v57 & 0x2000000000000000) != 0)
        {
          v94 = v56;
          v95 = v57 & 0xFFFFFFFFFFFFFFLL;
          v13 = v56;
          if (v56 == 43)
          {
            if (!v58)
            {
              goto LABEL_199;
            }

            v13 = v58 - 1;
            if (v58 != 1)
            {
              LOBYTE(v62) = 0;
              v72 = v90;
              while (1)
              {
                v73 = *v72;
                v74 = v73 - 48;
                if ((v73 - 48) >= 0xA)
                {
                  if ((v73 - 65) < 6)
                  {
                    v74 = v73 - 55;
                  }

                  else
                  {
                    if ((v73 - 97) > 5)
                    {
                      break;
                    }

                    v74 = v73 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                LOBYTE(v62) = v74 + 16 * v62;
                ++v72;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v56 == 45)
          {
            if (!v58)
            {
              goto LABEL_202;
            }

            v13 = v58 - 1;
            if (v58 != 1)
            {
              LOBYTE(v62) = 0;
              v66 = v90;
              while (1)
              {
                v67 = *v66;
                v68 = v67 - 48;
                if ((v67 - 48) >= 0xA)
                {
                  if ((v67 - 65) < 6)
                  {
                    v68 = v67 - 55;
                  }

                  else
                  {
                    if ((v67 - 97) > 5)
                    {
                      break;
                    }

                    v68 = v67 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                v62 = 16 * (v62 & 0xF) - v68;
                if ((v62 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v66;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v58)
          {
            LOBYTE(v62) = 0;
            v77 = &v94;
            while (1)
            {
              v78 = *v77;
              v79 = v78 - 48;
              if ((v78 - 48) >= 0xA)
              {
                if ((v78 - 65) < 6)
                {
                  v79 = v78 - 55;
                }

                else
                {
                  if ((v78 - 97) > 5)
                  {
                    break;
                  }

                  v79 = v78 - 87;
                }
              }

              if (v62 > 0xFu)
              {
                break;
              }

              LOBYTE(v62) = v79 + 16 * v62;
              v77 = (v77 + 1);
              if (!--v58)
              {
                LOBYTE(v13) = 0;
                goto LABEL_188;
              }
            }
          }
        }

        else
        {
          if ((v56 & 0x1000000000000000) != 0)
          {
            v60 = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v60 = sub_247DD308C();
            v13 = v82;
          }

          v61 = *v60;
          if (v61 == 43)
          {
            if (v13 < 1)
            {
              goto LABEL_200;
            }

            if (--v13)
            {
              if (!v60)
              {
                goto LABEL_176;
              }

              LOBYTE(v62) = 0;
              v69 = v60 + 1;
              while (1)
              {
                v70 = *v69;
                v71 = v70 - 48;
                if ((v70 - 48) >= 0xA)
                {
                  if ((v70 - 65) < 6)
                  {
                    v71 = v70 - 55;
                  }

                  else
                  {
                    if ((v70 - 97) > 5)
                    {
                      break;
                    }

                    v71 = v70 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                LOBYTE(v62) = v71 + 16 * v62;
                ++v69;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v61 == 45)
          {
            if (v13 < 1)
            {
              goto LABEL_201;
            }

            if (--v13)
            {
              if (!v60)
              {
                goto LABEL_176;
              }

              LOBYTE(v62) = 0;
              v63 = v60 + 1;
              while (1)
              {
                v64 = *v63;
                v65 = v64 - 48;
                if ((v64 - 48) >= 0xA)
                {
                  if ((v64 - 65) < 6)
                  {
                    v65 = v64 - 55;
                  }

                  else
                  {
                    if ((v64 - 97) > 5)
                    {
                      break;
                    }

                    v65 = v64 - 87;
                  }
                }

                if (v62 > 0xFu)
                {
                  break;
                }

                v62 = 16 * (v62 & 0xF) - v65;
                if ((v62 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v63;
                if (!--v13)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v13)
          {
            if (!v60)
            {
LABEL_176:
              LOBYTE(v62) = 0;
              LOBYTE(v13) = 0;
              goto LABEL_188;
            }

            LOBYTE(v62) = 0;
            while (1)
            {
              v75 = *v60;
              v76 = v75 - 48;
              if ((v75 - 48) >= 0xA)
              {
                if ((v75 - 65) < 6)
                {
                  v76 = v75 - 55;
                }

                else
                {
                  if ((v75 - 97) > 5)
                  {
                    break;
                  }

                  v76 = v75 - 87;
                }
              }

              if (v62 > 0xFu)
              {
                break;
              }

              LOBYTE(v62) = v76 + 16 * v62;
              ++v60;
              if (!--v13)
              {
                goto LABEL_188;
              }
            }
          }
        }

        LOBYTE(v62) = 0;
        LOBYTE(v13) = 1;
LABEL_188:
        v93 = v13;
        v80 = v13;

        if (v80)
        {
          goto LABEL_216;
        }

LABEL_189:
        v81 = *(&v98 + 1) >> 62;
        if ((*(&v98 + 1) >> 62) <= 1)
        {
          if (v81)
          {
            v8 = v98 >> 32;
          }

          else
          {
            v8 = BYTE14(v98);
          }
        }

        else if (v81 == 2)
        {
          v8 = *(v98 + 24);
        }

        else
        {
          v8 = 0;
        }

        v5 += 2;
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C38, &qword_247DD5978);
        v96 = a2;
        v97 = sub_247D6AE30(&qword_27EE73C40, &qword_27EE73C38, &qword_247DD5978);
        LOBYTE(v94) = v62;
        v93 = *__swift_project_boxed_opaque_existential_1(&v94, a2);
        sub_247DD212C();
        __swift_destroy_boxed_opaque_existential_0Tm(&v94);
        v17 = v92;
        if (v5 >= v19)
        {
          goto LABEL_96;
        }
      }
    }

    v21 = v16[4];
    v22 = v16[5];
    v23 = HIBYTE(v22) & 0xF;
    v24 = v21 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((v22 & 0x1000000000000000) == 0)
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v94 = v16[4];
          v95 = v22 & 0xFFFFFFFFFFFFFFLL;
          if (v21 != 43)
          {
            if (v21 != 45)
            {
              if (!v23)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = 0;
              v42 = &v94;
              while (1)
              {
                v43 = *v42;
                v44 = v43 - 48;
                if ((v43 - 48) >= 0xA)
                {
                  if ((v43 - 65) < 6)
                  {
                    v44 = v43 - 55;
                  }

                  else
                  {
                    if ((v43 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v44 = v43 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  goto LABEL_93;
                }

                LOBYTE(v21) = v44 + 16 * v21;
                v42 = (v42 + 1);
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }

            if (v23)
            {
              if (!--v23)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = 0;
              v31 = &v94 + 1;
              while (1)
              {
                v32 = *v31;
                v33 = v32 - 48;
                if ((v32 - 48) >= 0xA)
                {
                  if ((v32 - 65) < 6)
                  {
                    v33 = v32 - 55;
                  }

                  else
                  {
                    if ((v32 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v33 = v32 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  goto LABEL_93;
                }

                LODWORD(v21) = 16 * (v21 & 0xF) - v33;
                if ((v21 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_93;
                }

                ++v31;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_213;
          }

          if (v23)
          {
            if (!--v23)
            {
              goto LABEL_93;
            }

            LOBYTE(v21) = 0;
            v37 = &v94 + 1;
            while (1)
            {
              v38 = *v37;
              v39 = v38 - 48;
              if ((v38 - 48) >= 0xA)
              {
                if ((v38 - 65) < 6)
                {
                  v39 = v38 - 55;
                }

                else
                {
                  if ((v38 - 97) > 5)
                  {
                    goto LABEL_93;
                  }

                  v39 = v38 - 87;
                }
              }

              if (v21 > 0xFu)
              {
                goto LABEL_93;
              }

              LOBYTE(v21) = v39 + 16 * v21;
              ++v37;
              if (!--v23)
              {
                goto LABEL_94;
              }
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
        }

        if ((v21 & 0x1000000000000000) == 0)
        {
          goto LABEL_211;
        }

        for (i = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_247DD308C())
        {
          v27 = *i;
          if (v27 == 43)
          {
            if (v24 < 1)
            {
              goto LABEL_214;
            }

            v23 = v24 - 1;
            if (v24 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v21) = 0;
              v34 = i + 1;
              while (1)
              {
                v35 = *v34;
                v36 = v35 - 48;
                if ((v35 - 48) >= 0xA)
                {
                  if ((v35 - 65) < 6)
                  {
                    v36 = v35 - 55;
                  }

                  else
                  {
                    if ((v35 - 97) > 5)
                    {
                      break;
                    }

                    v36 = v35 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  break;
                }

                LOBYTE(v21) = v36 + 16 * v21;
                ++v34;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v27 == 45)
          {
            if (v24 < 1)
            {
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v23 = v24 - 1;
            if (v24 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v21) = 0;
              v28 = i + 1;
              while (1)
              {
                v29 = *v28;
                v30 = v29 - 48;
                if ((v29 - 48) >= 0xA)
                {
                  if ((v29 - 65) < 6)
                  {
                    v30 = v29 - 55;
                  }

                  else
                  {
                    if ((v29 - 97) > 5)
                    {
                      break;
                    }

                    v30 = v29 - 87;
                  }
                }

                if (v21 > 0xFu)
                {
                  break;
                }

                LODWORD(v21) = 16 * (v21 & 0xF) - v30;
                if ((v21 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v28;
                if (!--v23)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v24)
          {
            if (!i)
            {
LABEL_82:
              LOBYTE(v21) = 0;
              LOBYTE(v23) = 0;
              goto LABEL_94;
            }

            LOBYTE(v21) = 0;
            while (1)
            {
              v40 = *i;
              v41 = v40 - 48;
              if ((v40 - 48) >= 0xA)
              {
                if ((v40 - 65) < 6)
                {
                  v41 = v40 - 55;
                }

                else
                {
                  if ((v40 - 97) > 5)
                  {
                    break;
                  }

                  v41 = v40 - 87;
                }
              }

              if (v21 > 0xFu)
              {
                break;
              }

              LOBYTE(v21) = v41 + 16 * v21;
              ++i;
              if (!--v24)
              {
                LOBYTE(v23) = 0;
                goto LABEL_94;
              }
            }
          }

LABEL_93:
          LOBYTE(v21) = 0;
          LOBYTE(v23) = 1;
LABEL_94:
          v93 = v23;
          if ((v23 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_210:
          __break(1u);
LABEL_211:
          ;
        }
      }
    }

    else
    {
      __break(1u);
    }

    LOWORD(v21) = sub_247D95420(v21, v22, 16);

    if ((v21 & 0x100) != 0)
    {
      goto LABEL_210;
    }

LABEL_95:
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C38, &qword_247DD5978);
    v96 = v45;
    v97 = sub_247D6AE30(&qword_27EE73C40, &qword_27EE73C38, &qword_247DD5978);
    LOBYTE(v94) = v21;
    v93 = *__swift_project_boxed_opaque_existential_1(&v94, v45);
    v5 = 1;
    sub_247DD212C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v94);
    v19 = v18;
    v17 = v92;
    if (v18 != 1)
    {
      goto LABEL_98;
    }

LABEL_96:

    v20 = v98;
    v5 = v88;
    v4 = v89;
    v8 = v87;
  }

  else
  {

    v20 = 0;
  }

  (*(v5 + 8))(v8, v4);
  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_247D96B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SharedSecret.accV2Compatible(protocolVersion:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result - 5) < 0xFCu)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = MEMORY[0x277D84B78];
  v5 = sub_247DD2EAC();
  *(v5 + 16) = 2;
  *(v5 + 32) = 0;
  SecRandomCopyBytes(*MEMORY[0x277CDC540], 2uLL, (v5 + 32));
  v6 = sub_247D9967C((v5 + 32), (v5 + 34));
  v8 = v7;

  if (v3 == 1)
  {
    LOBYTE(v9) = 1;
    goto LABEL_5;
  }

  result = sub_247D98E64(4);
  v9 = ((4 * v3 - 4) & 0xFC) + result;
  if ((v9 & 0x100) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C60, &unk_247DD5990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_247DD54D0;
  v11 = MEMORY[0x277D84BC0];
  *(v10 + 56) = v4;
  *(v10 + 64) = v11;
  *(v10 + 32) = v9;
  v17 = sub_247DD2CCC();
  v18 = v12;

  v13 = sub_247D94008(v6, v8 & 0xFFFFFFFFFFFFFFLL);
  MEMORY[0x24C1BA0A0](v13);

  result = sub_247D95F30(v17, v18);
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    sub_247D6A1F8(v6, v8 & 0xFFFFFFFFFFFFFFLL);

    *a2 = v15;
    a2[1] = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t SharedSecret.advertisementIdentifer.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = sub_247DD2B6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = *v1;
  v12 = v1[1];
  *&v33 = *v1;
  *(&v33 + 1) = v12;
  v13 = SharedSecret.protocolVersion.getter();
  if ((v13 & 0x100) == 0 && (v13 & 0xFE) != 0)
  {
    *&v33 = v11;
    *(&v33 + 1) = v12;
    sub_247D6A2E8(v11, v12);
    sub_247DD2B5C();
    *&v33 = sub_247D97644(0x696669746E656469, 0xEA00000000007265);
    *(&v33 + 1) = v14;
    sub_247DD2C1C();
    sub_247D9A090(&qword_27EE73AC0, MEMORY[0x277CC5540]);
    sub_247D8A434();
    sub_247DD2BFC();
    sub_247D6A1F8(v33, *(&v33 + 1));
    v15 = *(v4 + 8);
    v15(v8, v3);
    sub_247DD2B4C();
    v15(v10, v3);
    v16 = v33;
    v17 = *(&v33 + 1) >> 62;
    if ((*(&v33 + 1) >> 62) > 1)
    {
      if (v17 != 2)
      {
        *(&v33 + 6) = 0;
        *&v33 = 0;
        v19 = &v33;
        v18 = &v33;
        goto LABEL_26;
      }

      v21 = *(v33 + 16);
      v22 = *(v33 + 24);
      v23 = sub_247DD1FFC();
      if (v23)
      {
        v24 = sub_247DD202C();
        if (__OFSUB__(v21, v24))
        {
          goto LABEL_29;
        }

        v23 += v21 - v24;
      }

      v25 = __OFSUB__(v22, v21);
      v26 = v22 - v21;
      if (!v25)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = &v33 + BYTE14(v33);
      v19 = &v33;
LABEL_26:
      sub_247D97F20(v19, v18);
      result = sub_247D6A1F8(v16, *(&v16 + 1));
      goto LABEL_27;
    }

    v26 = (v16 >> 32) - v16;
    if (v16 >> 32 >= v16)
    {
      v23 = sub_247DD1FFC();
      if (!v23)
      {
LABEL_18:
        v28 = sub_247DD201C();
        if (v28 >= v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        v30 = (v29 + v23);
        if (v23)
        {
          v18 = v30;
        }

        else
        {
          v18 = 0;
        }

        v19 = v23;
        goto LABEL_26;
      }

      v27 = sub_247DD202C();
      if (!__OFSUB__(v16, v27))
      {
        v23 += v16 - v27;
        goto LABEL_18;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *&v33 = v11;
  *(&v33 + 1) = v12;
  result = sub_247D97368(a1);
LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SharedSecret.asACCV2CompatibileHex.getter()
{
  v1 = sub_247D94008(*v0, *(v0 + 8));
  v3 = v2;
  v4 = sub_247DD2D8C();
  if (v4)
  {
    v5 = v4;
    v6 = sub_247D993D8(v4, 0);

    v7 = sub_247D99310(v11, v6 + 4, v5, v1, v3);

    if (v7 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v9 = v6[2];
  v10 = v9 - 5;
  if (v9 < 5)
  {
    v10 = 0;
  }

  v11[0] = v6;
  v11[1] = v6 + 4;
  v11[2] = v10;
  v11[3] = (2 * v9) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
  sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0);
  return sub_247DD2E3C();
}

uint64_t SharedSecret.protocolVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    if (v1 == v1 >> 32)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (v3 == 2)
    {
      v4 = *(v1 + 16);
    }

    goto LABEL_11;
  }

  if ((v2 & 0xFF000000000000) == 0)
  {
LABEL_10:
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 8);
  }

LABEL_11:
  v7 = sub_247DD214C();
  if (v7 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v7 >> 2) + 1;
  }

  v6 = 0;
  return v5 | (v6 << 8);
}

uint64_t SharedSecret.init(length:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v4 = sub_247DD2EAC();
      *(v4 + 16) = v2;
      bzero((v4 + 32), v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    SecRandomCopyBytes(*MEMORY[0x277CDC540], v2, (v4 + 32));
    v5 = sub_247D99734((v4 + 32), v2);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_247D97368@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_247DD2C1C();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247DD2B3C();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *v1;
  v14 = v1[1];
  sub_247D9A090(&qword_27EE73AC0, MEMORY[0x277CC5540]);
  sub_247DD2B1C();
  sub_247D6A2E8(v13, v14);
  sub_247DB9ECC(v13, v14);
  v15 = v6;
  v16 = v28;
  sub_247D6A1F8(v13, v14);
  sub_247DD2B0C();
  (*(v29 + 8))(v5, v2);
  (*(v16 + 16))(v10, v12, v15);
  sub_247D9A090(&unk_27EE73CB0, MEMORY[0x277CC5290]);
  result = sub_247DD2E6C();
  if (*(result + 16) < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    v18 = *(result + 39);
    v19 = *(result + 38);
    v20 = *(result + 37);
    v21 = *(result + 36);
    v22 = *(result + 35);
    v23 = *(result + 34);
    v24 = *(result + 33);
    v25 = *(result + 32);
    v26 = *(result + 40);
    sub_247DD222C();

    return (*(v16 + 8))(v12, v15);
  }

  return result;
}

uint64_t sub_247D97644(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CA0, &qword_247DD5D50);
  if (swift_dynamicCast())
  {
    sub_247D6B5A8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_247DD204C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_247D99FA0(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_247DD308C();
  }

  sub_247D98844(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_247D99D24(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_247D9890C(sub_247D9A008);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_247DD212C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_247D81404(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_247DD2DDC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_247DD2E0C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_247DD308C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_247D81404(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_247DD2DEC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_247DD213C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_247DD213C();
    sub_247D6A25C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_247D6A25C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_247D6A2E8(*&__src[0], *(&__src[0] + 1));

  sub_247D6A1F8(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_247D97B54(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_247D9967C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_247D99DC4(v3, v4);
    }

    else
    {
      v6 = sub_247D99E40(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t ClosedReason.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t SharedSecret.data.getter()
{
  v1 = *v0;
  sub_247D6A2E8(*v0, *(v0 + 8));
  return v1;
}

uint64_t SharedSecret.init(hexEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_247D95F30(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  v7 = 0xF000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t SharedSecret.asURLSafeBase64Encoded.getter()
{
  v1 = sub_247DD1FBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v21 = sub_247DD216C();
  v22 = v8;
  v19 = 43;
  v20 = 0xE100000000000000;
  v17 = 45;
  v18 = 0xE100000000000000;
  sub_247D997E4();
  v9 = sub_247DD2FDC();
  v11 = v10;

  v21 = v9;
  v22 = v11;
  v19 = 47;
  v20 = 0xE100000000000000;
  v17 = 95;
  v18 = 0xE100000000000000;
  v12 = sub_247DD2FDC();
  v14 = v13;

  v21 = v12;
  v22 = v14;
  sub_247DD1F9C();
  v15 = sub_247DD2FCC();
  (*(v2 + 8))(v5, v1);

  return v15;
}

unsigned __int8 *sub_247D97F20(unsigned __int8 *result, uint64_t a2)
{
  if (result && (a2 - result + 15) >= 0x1F)
  {
    v2 = *(result + 1);
    v3 = result[7];
    v4 = result[6];
    v5 = result[5];
    v6 = result[4];
    v7 = result[3];
    v8 = result[2];
    v9 = result[1];
    v10 = *result;
    return sub_247DD222C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharedSecret.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SharedSecret.init(urlSafeBase64Encoded:)@<X0>(uint64_t *a1@<X8>)
{
  sub_247D997E4();
  sub_247DD2FDC();

  sub_247DD2FDC();

  v2 = sub_247DD2D8C();
  v3 = v2 & 3;
  if (v2 <= 0)
  {
    v3 = -(-v2 & 3);
  }

  if (v3 >= 1)
  {
    v4 = 4 - v3;

    v5 = sub_247DD2D8C();

    result = v5 + v4;
    if (__OFADD__(v5, v4))
    {
      __break(1u);
      return result;
    }

    sub_247DD2FEC();
  }

  v7 = sub_247DD210C();
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xF000000000000000;
  if (v9 >> 60 != 15)
  {
    v11 = v9;
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t SharedSecret.init(accCompatibileHexEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_247DD2D8C() == 5)
  {
    result = sub_247D95F30(a1, a2);
    if (v7 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = result;
    }

    v9 = 0xF000000000000000;
    if (v7 >> 60 != 15)
    {
      v9 = v7;
    }
  }

  else
  {

    v8 = 0;
    v9 = 0xF000000000000000;
  }

  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t SharedSecret.init(pinCode:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_247DD2CEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];

  sub_247DD2CDC();
  v11 = sub_247DD2CBC();
  v13 = v12;

  result = (*(v5 + 8))(v8, v4);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    *a2 = v11;
    a2[1] = v13;
  }

  return result;
}

uint64_t PinCode.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_247D98360@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && a1 != a2)
  {
    v11 = sub_247D72CA8(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = a2;
    v4 = v11;
    v13 = a1;
    v14 = *(v11 + 2);
    do
    {
      v15 = *v13;
      v16 = *(v4 + 24);
      if (v14 >= v16 >> 1)
      {
        v17 = v13;
        v18 = sub_247D72CA8((v16 > 1), v14 + 1, 1, v4);
        v12 = a2;
        v4 = v18;
        v13 = v17;
      }

      ++v13;
      *(v4 + 16) = v14 + 1;
      *(v4 + v14++ + 32) = v15;
    }

    while (v13 != v12);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_247D99EC4(v4);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t static PinCode.random(length:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = 0;
    v9 = 0;
    v10 = 0xE000000000000000;
    do
    {
      v8 = 0;
      MEMORY[0x24C1BAF70](&v8, 8);
      v6 = v8;
      if (10 * v8 <= 5)
      {
        do
        {
          v8 = 0;
          MEMORY[0x24C1BAF70](&v8, 8);
          v6 = v8;
        }

        while (10 * v8 < 6);
      }

      ++v4;
      v8 = (v6 * 0xAuLL) >> 64;
      v5 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v5);
    }

    while (v4 != v3);
    v7 = v10;
    *a2 = v9;
    a2[1] = v7;
  }

  return result;
}

uint64_t PinCode.description.getter()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0x2865646F436E6950;
}

uint64_t static PinCode.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_247DD322C();
  }
}

uint64_t sub_247D985F8()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0x2865646F436E6950;
}

void *sub_247D98654@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_247D98660(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_247DD322C();
  }
}

Cosmo::PinCode __swiftcall PinCode.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v2 = v1;
  v3 = sub_247DD321C();
  *v2 = v3;
  v2[1] = v4;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_247D986D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_247DD321C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

char *sub_247D98724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C98, &qword_247DD5D48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_247D98844@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_247D9967C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_247DD203C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_247DD1FEC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_247DD211C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_247D9890C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_247D6A1F8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_247D6A1F8(v6, v5);
    *v3 = xmmword_247DD5950;
    sub_247D6A1F8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_247DD1FFC() && __OFSUB__(v6, sub_247DD202C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_247DD203C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_247DD1FDC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_247D98DB0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_247D6A1F8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_247DD5950;
    sub_247D6A1F8(0, 0xC000000000000000);
    sub_247DD20EC();
    result = sub_247D98DB0(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_247D98CB0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_247D9967C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_247D99DC4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_247D99E40(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_247D98D44(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_247D98DB0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_247DD1FFC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_247DD202C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_247DD201C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_247D98E64(uint64_t result)
{
  if (result)
  {
    v6[3] = v1;
    v6[4] = v2;
    v3 = result;
    v6[0] = 0;
    MEMORY[0x24C1BAF70](v6, 8);
    v4 = v3;
    result = (LOBYTE(v6[0]) * v3) >> 8;
    if (v3 > (LOBYTE(v6[0]) * v3) && -v3 % v3 > (LOBYTE(v6[0]) * v3))
    {
      v5 = (-v3 % v3);
      do
      {
        v6[0] = 0;
        MEMORY[0x24C1BAF70](v6, 8);
      }

      while (v5 > (LOBYTE(v6[0]) * v4));
      return (LOBYTE(v6[0]) * v4) >> 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D98F00@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_247DD1FFC();
    if (v10)
    {
      v11 = sub_247DD202C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_247DD201C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_247DD1FFC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_247DD202C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_247DD201C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_247D99130(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_247D9945C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_247D6A1F8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_247D98F00(v14, a3, a4, &v13);
  v10 = v4;
  sub_247D6A1F8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_247D992C0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_247DD305C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247D99310(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_247DD2DCC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_247D993D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_247D9945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_247DD1FFC();
  v11 = result;
  if (result)
  {
    result = sub_247DD202C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_247DD201C();
  sub_247D98F00(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_247D99514(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_247D6A2E8(a3, a4);
          return sub_247D99130(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_247D9967C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_247D99734(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_247D9967C(a1, &a1[a2]);
  }

  v3 = sub_247DD203C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_247DD1FEC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_247DD211C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_247D997E4()
{
  result = qword_27EE73C68;
  if (!qword_27EE73C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C68);
  }

  return result;
}

unint64_t sub_247D9983C()
{
  result = qword_27EE73C70;
  if (!qword_27EE73C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C70);
  }

  return result;
}

unint64_t sub_247D99894()
{
  result = qword_27EE73C78;
  if (!qword_27EE73C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C78);
  }

  return result;
}

unint64_t sub_247D998F8()
{
  result = qword_27EE73C80;
  if (!qword_27EE73C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClosedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClosedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Cosmo13TransferErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_247D99AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
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

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247D99B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_247D99BA4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_247D99BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247D99C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_247D99C90(uint64_t a1, int a2)
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

uint64_t sub_247D99CD8(uint64_t result, int a2, int a3)
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

uint64_t sub_247D99D24(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_247DD203C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_247DD200C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_247DD211C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_247D99DC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_247DD203C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_247DD1FEC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247DD211C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_247D99E40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_247DD203C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_247DD1FEC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_247D99EC4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C88, &qword_247DD5D40);
  v10 = sub_247D6AE30(&qword_27EE73C90, &qword_27EE73C88, &qword_247DD5D40);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_247D98CB0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_247D99FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CA8, &qword_247DD5D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_247D9A008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_247D98D44(sub_247D9A070, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_247D9A090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CosmoBrowser.EndpointState.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D9A180@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D9A214(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D9A2D0()
{
  v1 = type metadata accessor for NetworkDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_247D6A1F8(*(v4 + 1), *(v4 + 2));
    sub_247D6A1F8(*(v4 + 3), *(v4 + 4));
    v7 = *(v4 + 5);
    swift_unknownObjectRelease();
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v9 = sub_247DD225C();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
    return 0x75716F6D736F635FLL;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_247D8690C(v4);
    return 0x63746F6D736F635FLL;
  }

  else
  {
    sub_247D8690C(v4);
    return 16718;
  }
}

void sub_247D9A43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CF0, &qword_247DD5E48);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v5 = sub_247DD295C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_247D88E80(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_247D6BAD4(v4, &qword_27EE73CF0, &qword_247DD5E48);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v13 = sub_247DD23CC();
    __swift_project_value_buffer(v13, qword_27EE7B878);
    v14 = sub_247DD23AC();
    v15 = sub_247DD2F0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_247D56000, v14, v15, "[Browser] No Bonjour type!", v16, 2u);
      MEMORY[0x24C1BAF60](v16, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 16))(v10, v12, v5);
    sub_247D879F4();
    v17 = sub_247DD29FC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_247DD298C();
    v21 = OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser;
    v22 = *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser);
    *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = v20;

    swift_allocObject();
    swift_weakInit();

    sub_247D6ACFC(sub_247D9BCDC);
    sub_247DD296C();

    if (*(v0 + v21))
    {
      swift_allocObject();
      swift_weakInit();

      sub_247D6ACFC(sub_247D9BCE4);
      sub_247DD297C();
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v23 = sub_247DD23CC();
    __swift_project_value_buffer(v23, qword_27EE7B878);

    v24 = sub_247DD23AC();
    v25 = sub_247DD2F2C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = v21;
      v27 = v26;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = sub_247D9A2D0();
      v31 = sub_247D72868(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_247D56000, v24, v25, "[Browser] Starting browser for Bonjour type=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x24C1BAF60](v28, -1, -1);
      v32 = v27;
      v21 = v34;
      MEMORY[0x24C1BAF60](v32, -1, -1);
    }

    if (*(v0 + v21))
    {
      v33 = *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_queue);

      sub_247DD29AC();
    }

    (*(v6 + 8))(v12, v5);
  }
}

uint64_t sub_247D9A958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D08, &unk_247DD5E60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_247DD299C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v45 = v14;
    v46 = v17;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v21 = sub_247DD23CC();
    __swift_project_value_buffer(v21, qword_27EE7B878);
    v22 = *(v10 + 16);
    v22(v19, a1, v9);

    v23 = sub_247DD23AC();
    v24 = sub_247DD2F2C();

    if (os_log_type_enabled(v23, v24))
    {
      v42 = v24;
      v44 = v23;
      v25 = swift_slowAlloc();
      v40 = v22;
      v26 = v25;
      v41 = swift_slowAlloc();
      v47 = v41;
      *v26 = 136315394;
      v27 = sub_247D9A2D0();
      v29 = sub_247D72868(v27, v28, &v47);

      *(v26 + 4) = v29;
      v43 = v26;
      *(v26 + 12) = 2080;
      v30 = v40;
      v40(v8, v19, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_247D9BCEC(v8, v6);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        v31 = 0xE300000000000000;
        v32 = 7104878;
      }

      else
      {
        v33 = v46;
        (*(v10 + 32))(v46, v6, v9);
        v30(v45, v33, v9);
        v32 = sub_247DD2CFC();
        v31 = v34;
        (*(v10 + 8))(v33, v9);
      }

      sub_247D6BAD4(v8, &qword_27EE73D08, &unk_247DD5E60);
      (*(v10 + 8))(v19, v9);
      v35 = sub_247D72868(v32, v31, &v47);

      v37 = v43;
      v36 = v44;
      *(v43 + 14) = v35;
      _os_log_impl(&dword_247D56000, v36, v42, "[Browser] Browser for Bonjour type=%s changed state=%s", v37, 0x16u);
      v38 = v41;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v38, -1, -1);
      MEMORY[0x24C1BAF60](v37, -1, -1);
    }

    else
    {

      return (*(v10 + 8))(v19, v9);
    }
  }

  return result;
}

uint64_t sub_247D9ADDC(uint64_t a1, uint64_t a2)
{
  v38 = sub_247DD29DC();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247DD29BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v37 = sub_247D88A6C();
  v40 = v17;
  v41 = v16;
  v36 = sub_247D88CCC();
  v39 = v18;
  v19 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;
  v44 = v8 + 32;
  v45 = v8 + 16;
  v43 = v8 + 88;
  v42 = *MEMORY[0x277CD9130];
  v32 = *MEMORY[0x277CD9140];
  v31 = (v8 + 8);
  v34 = (v3 + 32);
  v35 = (v8 + 96);
  v33 = (v3 + 8);
  v46 = a2;

  v24 = 0;
  while (v22)
  {
    v28 = v24;
LABEL_13:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    (*(v8 + 16))(v14, *(v46 + 48) + *(v8 + 72) * (v29 | (v28 << 6)), v7);
    (*(v8 + 32))(v12, v14, v7);
    v30 = (*(v8 + 88))(v12, v7);
    if (v30 == v42)
    {
      (*v35)(v12, v7);
      v25 = v38;
      (*v34)(v6, v12, v38);
      v26 = v6;
      v27 = 1;
LABEL_6:
      sub_247D9B1D0(v26, v27, v37, v40, v36, v39, v41);
      result = (*v33)(v6, v25);
      goto LABEL_7;
    }

    if (v30 == v32)
    {
      (*v35)(v12, v7);
      v25 = v38;
      (*v34)(v6, v12, v38);
      v26 = v6;
      v27 = 0;
      goto LABEL_6;
    }

    result = (*v31)(v12, v7);
LABEL_7:
    v24 = v28;
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
    }

    v22 = *(v19 + 8 * v28);
    ++v24;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_247D9B1D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_247DD249C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247DD29CC();
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277CD8B00])
  {
    (*(v14 + 8))(v17, v13);
    return;
  }

  v52 = a7;
  (*(v14 + 96))(v17, v13);
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[5];

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CF8, &qword_247DD5E50);
  sub_247D6BAD4(v17 + *(v23 + 80), &qword_27EE73D00, &qword_247DD5E58);
  v24 = 0x652D65766F6D6572;
  if (a2)
  {
    v24 = 0x6E6576652D646461;
  }

  v53 = v24;
  v54 = v20;
  if (a2)
  {
    v25 = 0xE900000000000074;
  }

  else
  {
    v25 = 0xEC000000746E6576;
  }

  if (a4)
  {
    v26 = v19 == a3 && v18 == a4;
    if (!v26 && (sub_247DD322C() & 1) == 0)
    {
      if (sub_247DD2D0C() == a3 && v27 == a4)
      {
      }

      else
      {
        v29 = sub_247DD322C();
        v20 = v54;

        if ((v29 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    if (a6)
    {
      v30 = v20 == a5 && v21 == a6;
      if (v30 || (sub_247DD322C() & 1) != 0)
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v31 = sub_247DD23CC();
        __swift_project_value_buffer(v31, qword_27EE7B878);

        v32 = sub_247DD23AC();
        v33 = sub_247DD2F2C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v56[0] = v35;
          *v34 = 136315650;
          v36 = sub_247D72868(v53, v25, v56);

          *(v34 + 4) = v36;
          *(v34 + 12) = 2080;
          v37 = sub_247D72868(v19, v18, v56);

          *(v34 + 14) = v37;
          *(v34 + 22) = 2080;
          v38 = sub_247D72868(v54, v21, v56);

          *(v34 + 24) = v38;
          _os_log_impl(&dword_247D56000, v32, v33, "[Browser] Received %s for Bonjour-service-name=%s Bonjour-service-type=%s", v34, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v35, -1, -1);
          MEMORY[0x24C1BAF60](v34, -1, -1);
        }

        else
        {
        }

        v47 = v52;
        if (a2)
        {
          swift_beginAccess();
          v48 = *(v47 + 16);
          if (!v48)
          {
            return;
          }

          v49 = *(v47 + 24);
          v55 = 0;
        }

        else
        {
          swift_beginAccess();
          v48 = *(v47 + 16);
          if (!v48)
          {
            return;
          }

          v50 = *(v47 + 24);
          v55 = 1;
        }

        v48(&v55);
        sub_247D6A24C(v48);
        return;
      }
    }
  }

  else
  {
    sub_247DD2D0C();
  }

LABEL_32:
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v39 = sub_247DD23CC();
  __swift_project_value_buffer(v39, qword_27EE7B878);

  v40 = sub_247DD23AC();
  v41 = sub_247DD2F2C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56[0] = v43;
    *v42 = 136315650;
    v44 = sub_247D72868(v53, v25, v56);

    *(v42 + 4) = v44;
    *(v42 + 12) = 2080;
    v45 = sub_247D72868(v19, v18, v56);

    *(v42 + 14) = v45;
    *(v42 + 22) = 2080;
    v46 = sub_247D72868(v54, v21, v56);

    *(v42 + 24) = v46;
    _os_log_impl(&dword_247D56000, v40, v41, "[Browser] Ignoring %s for Bonjour-service-name=%s Bonjour-service-type=%s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v43, -1, -1);
    MEMORY[0x24C1BAF60](v42, -1, -1);
  }

  else
  {
  }
}
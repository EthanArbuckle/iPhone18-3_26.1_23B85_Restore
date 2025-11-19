uint64_t sub_24AE9C8E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE9C8F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE9C908()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9C960()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F0, &qword_24AEC8948);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24AE9C990()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9C9E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE9CA18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE9CA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AE9CB64()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AE9CBB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE9CC10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9CC60()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE9CCB0(unint64_t a1)
{
  v2 = sub_24AEC5CFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v7 = sub_24AEC625C();
  __swift_project_value_buffer(v7, qword_280E21578);
  v8 = sub_24AEC623C();
  v9 = sub_24AEC645C();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_6;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v19 = v11;
  *v10 = 141558275;
  *(v10 + 4) = 1752392040;
  *(v10 + 12) = 2081;
  if (a1 < 5)
  {
    v12 = v11;
    (*(v3 + 104))(v6, **(&unk_278FFFD40 + a1), v2);
    sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
    v13 = sub_24AEC663C();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_24AEBFE20(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_24AE9B000, v8, v9, "validFriends: %{private,mask.hash}s not supported", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C234F80](v12, -1, -1);
    MEMORY[0x24C234F80](v10, -1, -1);
LABEL_6:

    return MEMORY[0x277D84F90];
  }

  result = sub_24AEC65DC();
  __break(1u);
  return result;
}

uint64_t sub_24AE9CF80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE9CFE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AE9D100()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FriendshipExpiration.wrapped.getter()
{
  v1 = sub_24AEC5D7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  result = 0;
  if (v6 != *MEMORY[0x277D09110])
  {
    if (v6 == *MEMORY[0x277D09118])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x277D09108])
    {
      return 2;
    }

    else
    {
      result = sub_24AEC65DC();
      __break(1u);
    }
  }

  return result;
}

uint64_t FMLFriend.fmlFriend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v39 = &v34 - v4;
  v5 = sub_24AEC5D1C();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  (MEMORY[0x28223BE20])();
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568) - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - v11;
  v12 = sub_24AEC5CFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24AEC5F4C();
  v17 = *(v34 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v34);
  v19 = [v1 handle];
  v20 = [v19 identifier];
  sub_24AEC62FC();

  sub_24AEA07E0(MEMORY[0x277D84F90]);
  sub_24AEC5F3C();

  v21 = [v1 handleType];
  if (v21 >= 5)
  {
    goto LABEL_9;
  }

  (*(v13 + 104))(v16, **(&unk_278FFFCB8 + v21), v12);
  v22 = [v1 expiry];
  if (v22)
  {
    v23 = v41;
    v24 = v22;
    sub_24AEC5CCC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
    v23 = v41;
  }

  v26 = sub_24AEC5CDC();
  v27 = *(*(v26 - 8) + 56);
  v28 = 1;
  v27(v23, v25, 1, v26);
  v29 = [v2 createdAt];
  v30 = v35;
  if (v29)
  {
    v31 = v29;
    sub_24AEC5CCC();

    v28 = 0;
  }

  v27(v30, v28, 1, v26);
  v32 = [v2 origin];
  if (v32 >= 3)
  {
LABEL_9:
    result = sub_24AEC65DC();
    __break(1u);
  }

  else
  {
    (*(v36 + 104))(v38, **(&unk_278FFFCE0 + v32), v37);
    (*(v17 + 56))(v39, 1, 1, v34);
    return sub_24AEC5EBC();
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

uint64_t FMLFriend.init(_:)(uint64_t a1)
{
  v2 = sub_24AEC5D1C();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v51 - v11;
  v12 = sub_24AEC5CFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = sub_24AEC5F4C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  sub_24AEC5EFC();
  (*(v21 + 8))(v24, v20);
  v25 = a1;
  v26 = sub_24AEC62EC();

  v27 = [objc_opt_self() handleWithIdentifier_];

  sub_24AEC5E9C();
  (*(v13 + 16))(v17, v19, v12);
  v28 = (*(v13 + 88))(v17, v12);
  v29 = 0;
  if (v28 != *MEMORY[0x277D09028])
  {
    if (v28 == *MEMORY[0x277D09030])
    {
      v29 = 1;
    }

    else if (v28 == *MEMORY[0x277D09018])
    {
      v29 = 2;
    }

    else if (v28 == *MEMORY[0x277D09020])
    {
      v29 = 3;
    }

    else
    {
      if (v28 != *MEMORY[0x277D09010])
      {
        goto LABEL_22;
      }

      v29 = 4;
    }
  }

  v52 = v29;
  v54 = v27;
  (*(v13 + 8))(v19, v12);
  v30 = v53;
  sub_24AEC5EDC();
  v31 = sub_24AEC5CDC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = 0;
  if (v33(v30, 1, v31) != 1)
  {
    v34 = sub_24AEC5CAC();
    (*(v32 + 8))(v30, v31);
  }

  v35 = v55;
  sub_24AEC5EAC();
  v36 = v33(v35, 1, v31);
  v37 = v57;
  if (v36 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_24AEC5CAC();
    (*(v32 + 8))(v35, v31);
  }

  v39 = v58;
  sub_24AEC5E7C();
  v40 = v56;
  v41 = v59;
  (*(v39 + 16))(v56, v37, v59);
  v42 = (*(v39 + 88))(v40, v41);
  if (v42 == *MEMORY[0x277D09048])
  {
    v43 = 0;
LABEL_21:
    v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    (*(v39 + 8))(v37, v41);
    v45 = sub_24AEC5E8C() & 1;
    v46 = v44;
    v47 = v54;
    v48 = [v46 initWithHandle:v54 handleType:v52 createDate:v34 expiry:v38 origin:v43 originatedFromTheSameClient:v45];

    v49 = sub_24AEC5EEC();
    (*(*(v49 - 8) + 8))(v25, v49);
    return v48;
  }

  if (v42 == *MEMORY[0x277D09050])
  {
    v43 = 1;
    goto LABEL_21;
  }

  if (v42 == *MEMORY[0x277D09060])
  {
    v43 = 2;
    goto LABEL_21;
  }

LABEL_22:
  result = sub_24AEC65DC();
  __break(1u);
  return result;
}

uint64_t sub_24AEA035C(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0000, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24AEA03C8(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0000, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24AEA0438(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24AEA04C4(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24AEA0530(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24AEA059C(void *a1, uint64_t a2)
{
  v4 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24AEA0650(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24AEA06CC()
{
  v2 = *v0;
  sub_24AEC66AC();
  sub_24AEC62BC();
  return sub_24AEC66BC();
}

void *sub_24AEA072C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AEA0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_24AEA07E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0040, &qword_24AEC8868);
    v3 = sub_24AEC662C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24AEBF788(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_24AEA0968(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AEA0B30()
{
  result = qword_27EFC0028;
  if (!qword_27EFC0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0028);
  }

  return result;
}

void sub_24AEA0C50(uint64_t a1, unint64_t *a2)
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

id sub_24AEA0CA0(uint64_t a1)
{
  sub_24AEC620C();
  v2 = sub_24AEC62EC();

  sub_24AEC61DC();
  v3 = sub_24AEC62EC();

  sub_24AEC61FC();
  v4 = sub_24AEC62EC();

  sub_24AEC621C();
  v5 = sub_24AEC62EC();

  sub_24AEC61CC();
  v6 = sub_24AEC62EC();

  sub_24AEC61BC();
  v7 = sub_24AEC62EC();

  sub_24AEC61EC();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_24AEC636C();

  v10 = [v8 initWithLocality:v2 administrativeArea:v3 country:v4 stateCode:v5 streetAddress:v6 streetName:v7 formattedAddressLines:v9];

  v11 = sub_24AEC622C();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_24AEA0E90(uint64_t a1)
{
  v2 = sub_24AEC5D2C();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v55 - v6;
  v7 = sub_24AEC60EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0068, &qword_24AEC88C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - v14;
  v16 = sub_24AEC622C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  sub_24AEC615C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24AEA147C(v15);
    v24 = 0;
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_24AEA14E4();
    (*(v17 + 16))(v21, v23, v16);
    v25 = sub_24AEA0CA0(v21);
    (*(v17 + 8))(v23, v16);
    v24 = v25;
  }

  (*(v8 + 104))(v11, *MEMORY[0x277D094B0], v7);
  sub_24AEC612C();
  v27 = v26;
  (*(v8 + 8))(v11, v7);
  sub_24AEC616C();
  v29 = v28;
  sub_24AEC618C();
  v31 = v30;
  sub_24AEC613C();
  v33 = v32;
  v34 = sub_24AEC60DC();
  v35 = v59;
  if (v34 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  v36 = v34;
  if (v34 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_24AEC611C();
  v38 = v37;
  sub_24AEC614C();
  v39 = sub_24AEC636C();

  sub_24AEC617C();
  v41 = v40;
  sub_24AEC619C();
  v43 = v42;
  sub_24AEC610C();
  v45 = v44;
  sub_24AEC60FC();
  v46 = v56;
  v47 = v57;
  v48 = v58;
  (*(v57 + 16))(v56, v35, v58);
  v49 = (*(v47 + 88))(v46, v48);
  if (v49 != *MEMORY[0x277D09088])
  {
    if (v49 == *MEMORY[0x277D09078])
    {
      v50 = 1;
      goto LABEL_14;
    }

    if (v49 == *MEMORY[0x277D09080])
    {
      v50 = 2;
      goto LABEL_14;
    }

    if (v49 == *MEMORY[0x277D09090])
    {
      v50 = 3;
      goto LABEL_14;
    }

LABEL_20:
    result = sub_24AEC65DC();
    __break(1u);
    return result;
  }

  v50 = 0;
LABEL_14:
  (*(v47 + 8))(v35, v48);
  if (v27)
  {
    v51 = sub_24AEC62EC();
  }

  else
  {
    v51 = 0;
  }

  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAddress:v24 altitude:v36 longitude:v39 speed:v50 floorLevel:v51 horizontalAccuracy:v29 labels:v31 latitude:v33 timestamp:v38 verticalAccuracy:v41 locationType:v43 coarseAddressLabel:v45];

  v53 = sub_24AEC61AC();
  (*(*(v53 - 8) + 8))(a1, v53);
  return v52;
}

uint64_t sub_24AEA147C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0068, &qword_24AEC88C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AEA14E4()
{
  result = qword_27EFC0070;
  if (!qword_27EFC0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC0070);
  }

  return result;
}

id sub_24AEA1530(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24AEC5E1C();
  v3 = sub_24AEC62EC();

  sub_24AEC5E0C();
  v4 = sub_24AEC62EC();

  sub_24AEC5DEC();
  v5 = sub_24AEC62EC();

  v6 = sub_24AEC5E4C();
  v7 = sub_24AEC5DFC();
  v8 = sub_24AEC5E2C();
  LOBYTE(v12) = sub_24AEC5E3C() & 1;
  v9 = [v2 initWithIdentifier:v3 deviceName:v4 idsDeviceId:v5 isActive:v6 & 1 isThisDevice:v7 & 1 isCompanion:v8 & 1 isAutoMeCapable:v12];

  v10 = sub_24AEC5E5C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_24AEA1664()
{
  v0 = sub_24AEC625C();
  __swift_allocate_value_buffer(v0, qword_280E21560);
  __swift_project_value_buffer(v0, qword_280E21560);
  return sub_24AEC624C();
}

uint64_t sub_24AEA16DC()
{
  v0 = sub_24AEC625C();
  __swift_allocate_value_buffer(v0, qword_280E21578);
  v1 = __swift_project_value_buffer(v0, qword_280E21578);
  if (qword_280E21540 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E21560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24AEA18A0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, v7);
}

uint64_t sub_24AEA1A04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA523C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4);
}

uint64_t sub_24AEA1AA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA51D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3);
  return sub_24AE9C8F8(v8);
}

void sub_24AEA1CCC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24AEA1E20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA520C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4);
}

uint64_t sub_24AEA1EC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA51D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3);
  return sub_24AE9C8F8(v8);
}

uint64_t sub_24AEA20E4(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_24AEA214C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_24AEA2298(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_24AEA22FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA51A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4);
}

uint64_t sub_24AEA239C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA516C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3);
  return sub_24AE9C8F8(v8);
}

uint64_t sub_24AEA24C4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEA2534, 0, 0);
}

uint64_t sub_24AEA2534()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_24AEA2624;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA2624()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEA273C, 0, 0);
}

uint64_t sub_24AEA273C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v4 = *(v0 + 8);

  return v4(v2);
}

id ObjCBootstrap.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCBootstrap.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v27 - v3;
  v4 = sub_24AEC646C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24AEC628C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AEC647C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session] = 0;
  v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations] = MEMORY[0x277D84F90];
  v28 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  v27 = sub_24AEA2C00();
  (*(v9 + 104))(v12, *MEMORY[0x277D85268], v8);
  sub_24AEC627C();
  v31 = v18;
  sub_24AEA536C(&qword_280E21518, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00C8, &qword_24AEC88F8);
  sub_24AEA53B4(&qword_280E21520, &qword_27EFC00C8, &qword_24AEC88F8);
  sub_24AEC64FC();
  *&v0[v28] = sub_24AEC64AC();
  v19 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers] = v19;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers] = v19;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles] = v19;
  v20 = type metadata accessor for ObjCBootstrap();
  v30.receiver = v0;
  v30.super_class = v20;
  v21 = objc_msgSendSuper2(&v30, sel_init);
  v22 = sub_24AEC63EC();
  v23 = v29;
  (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v21;
  v25 = v21;
  sub_24AEA2EF0(0, 0, v23, &unk_24AEC8908, v24);

  return v25;
}

unint64_t sub_24AEA2C00()
{
  result = qword_280E21510;
  if (!qword_280E21510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E21510);
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

uint64_t sub_24AEA2CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AEA2D48;

  return sub_24AEA3204();
}

uint64_t sub_24AEA2D48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AEA2E3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA2D48;

  return sub_24AEA2CB8();
}

uint64_t sub_24AEA2EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AEA5414(a3, v27 - v11);
  v13 = sub_24AEC63EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AEA5484(v12, &qword_27EFC0090, &qword_24AEC88F0);
  }

  else
  {
    sub_24AEC63DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AEC63BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AEC632C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AEA3204()
{
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v2 = sub_24AEC60BC();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_24AEC60CC();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = sub_24AEC5D1C();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA33A0, 0, 0);
}

uint64_t sub_24AEA33A0()
{
  v62 = v0;
  v59 = objc_opt_self();
  v1 = [v59 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_24AEC62FC();
    v5 = v4;

    v0[8] = v3;
    v0[9] = v5;
    v0[10] = 0xD000000000000013;
    v0[11] = 0x800000024AEC7960;
    sub_24AEA50EC();
    if (sub_24AEC64EC())
    {

LABEL_5:
      v7 = MEMORY[0x277D09050];
      goto LABEL_7;
    }

    v0[12] = v3;
    v0[13] = v5;
    v0[14] = 0xD000000000000012;
    v0[15] = 0x800000024AEC7980;
    v6 = sub_24AEC64EC();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = MEMORY[0x277D09060];
LABEL_7:
  v8 = v0 + 2;
  v60 = *(v0[26] + 104);
  v60(v0[29], *v7, v0[25]);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[25];
  v11 = v0[26];
  v13 = sub_24AEC625C();
  v0[30] = __swift_project_value_buffer(v13, qword_280E21578);
  (*(v11 + 16))(v10, v9, v12);
  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[28];
  v19 = v0[25];
  v18 = v0[26];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v20 = 136315138;
    sub_24AEA536C(&qword_280E21550, MEMORY[0x277D09068]);
    v21 = sub_24AEC663C();
    v23 = v22;
    v24 = v19;
    v25 = *(v18 + 8);
    v25(v17, v24);
    v26 = sub_24AEBFE20(v21, v23, &v61);
    v8 = v0 + 2;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Init Session with origin: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C234F80](v58, -1, -1);
    MEMORY[0x24C234F80](v20, -1, -1);
  }

  else
  {

    v27 = v19;
    v25 = *(v18 + 8);
    v25(v17, v27);
  }

  v0[31] = v25;
  v28 = v0[29];
  v30 = v0[17];
  v29 = v0[18];
  sub_24AEC609C();
  v31 = sub_24AEC5FAC();
  v0[32] = v31;
  v32 = *&v30[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v33 = swift_allocObject();
  v0[33] = v33;
  v33[2] = v30;
  v33[3] = v31;
  v33[4] = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_24AEA45C4;
  *(v34 + 24) = v33;
  v0[6] = sub_24AEA45D0;
  v0[7] = v34;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA421C;
  v0[5] = &block_descriptor;
  v35 = _Block_copy(v8);
  v36 = v0[7];
  v37 = v30;

  dispatch_sync(v32, v35);
  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    return MEMORY[0x28215FB98](v38);
  }

  v39 = v0[29];
  v40 = v0[26];
  v41 = v0[27];
  v42 = v0[25];
  v60(v41, *MEMORY[0x277D09050], v42);
  LOBYTE(v39) = sub_24AEC5D0C();
  v0[34] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v41, v42);
  if (v39)
  {
    v43 = sub_24AEC623C();
    v44 = sub_24AEC645C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_24AE9B000, v43, v44, "Subscribing to background proactive locations", v45, 2u);
      MEMORY[0x24C234F80](v45, -1, -1);
    }

    v46 = [v59 mainBundle];
    v47 = [v46 bundleIdentifier];

    if (v47)
    {
      sub_24AEC62FC();
    }

    v55 = v0[24];
    (*(v0[20] + 104))(v0[21], *MEMORY[0x277D094A8], v0[19]);
    sub_24AEC60AC();
    v56 = *(MEMORY[0x277D09460] + 4);
    v57 = swift_task_alloc();
    v0[35] = v57;
    *v57 = v0;
    v57[1] = sub_24AEA3AD0;
    v38 = v0[24];

    return MEMORY[0x28215FB98](v38);
  }

  v25(v0[29], v0[25]);

  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[27];
  v51 = v0[24];
  v52 = v0[21];

  v53 = v0[1];

  return v53();
}

uint64_t sub_24AEA3AD0()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 288) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24AEA3D98;
  }

  else
  {
    v6 = sub_24AEA3C40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24AEA3C40()
{
  v1 = v0[30];
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[29];
  v10 = v0[25];
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Finished subscribing to background proactive locations", v11, 2u);
    MEMORY[0x24C234F80](v11, -1, -1);
  }

  else
  {
    v12 = v0[32];
  }

  v8(v9, v10);

  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24AEA3D98()
{
  v34 = v0;
  v1 = v0[36];
  v2 = v0[30];
  v3 = v1;
  v4 = sub_24AEC623C();
  v5 = sub_24AEC644C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v31 = v0[34];
    v32 = v0[33];
    v7 = v0[32];
    v29 = v0[29];
    v30 = v0[31];
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446210;
    v0[16] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v12 = sub_24AEC630C();
    v14 = sub_24AEBFE20(v12, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24AE9B000, v4, v5, "Background proactive locations subscription error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C234F80](v10, -1, -1);
    MEMORY[0x24C234F80](v9, -1, -1);

    v30(v29, v8);
  }

  else
  {
    v15 = v0[36];
    v16 = v0[33];
    v17 = v0[34];
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[29];
    v21 = v0[25];

    v19(v20, v21);
  }

  v23 = v0[28];
  v22 = v0[29];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[21];

  v27 = v0[1];

  return v27();
}

uint64_t sub_24AEA3FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v9 = sub_24AEC625C();
  __swift_project_value_buffer(v9, qword_280E21578);
  v10 = sub_24AEC623C();
  v11 = sub_24AEC645C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24AE9B000, v10, v11, "FindMyLocate.Session async init is done.", v12, 2u);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  v13 = *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session) = a2;

  v14 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
  v15 = *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations);
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
    v25 = a1;
    v19 = *(v5 + 16);
    v17 = v5 + 16;
    v18 = v19;
    v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);

    do
    {
      v18(v8, v20, v4);
      sub_24AEC63CC();
      (*(v17 - 8))(v8, v4);
      v20 += v21;
      --v16;
    }

    while (v16);

    v14 = v24;
    a1 = v25;
    v22 = *(v25 + v24);
  }

  *(a1 + v14) = MEMORY[0x277D84F90];

  *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized) = 1;
  return result;
}

id ObjCBootstrap.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCBootstrap();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AEA45D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEA4610(uint64_t a1, char *a2, uint64_t a3)
{
  v23[0] = a3;
  v5 = sub_24AEC626C();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AEC628C();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - v16;
  v23[1] = *&a2[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  (*(v14 + 16))(v23 - v16, a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v14 + 32))(v19 + v18, v17, v13);
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23[0];
  aBlock[4] = sub_24AEA52D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEA5684;
  aBlock[3] = &block_descriptor_77;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_24AEC627C();
  v27 = MEMORY[0x277D84F90];
  sub_24AEA536C(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEA53B4(&qword_280E21528, &qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v12, v8, v20);
  _Block_release(v20);
  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_24AEA49BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  if (*(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized))
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v9 = sub_24AEC625C();
    __swift_project_value_buffer(v9, qword_280E21578);
    v10 = sub_24AEC623C();
    v11 = sub_24AEC645C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AE9B000, v10, v11, "Init is done. Resume all.", v12, 2u);
      MEMORY[0x24C234F80](v12, -1, -1);
    }

    return sub_24AEC63CC();
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v14 = sub_24AEC625C();
    __swift_project_value_buffer(v14, qword_280E21578);
    v15 = sub_24AEC623C();
    v16 = sub_24AEC643C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24AE9B000, v15, v16, "Init in progress; appending continuation.", v17, 2u);
      MEMORY[0x24C234F80](v17, -1, -1);
    }

    (*(v5 + 16))(v8, a2, v4);
    v18 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
    v19 = *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_24AEA4EB0(0, v19[2] + 1, 1, v19);
      *(a1 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_24AEA4EB0(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    result = (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v8, v4);
    *(a1 + v18) = v19;
  }

  return result;
}

uint64_t sub_24AEA4CC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEA4DB8;

  return v7(a1);
}

uint64_t sub_24AEA4DB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_24AEA4EB0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0118, &qword_24AEC8970);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24AEA50EC()
{
  result = qword_280E21530;
  if (!qword_280E21530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E21530);
  }

  return result;
}

uint64_t sub_24AEA516C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_24AEA51A4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24AEA51D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_24AEA520C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_24AEA523C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
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

uint64_t sub_24AEA52D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AEA49BC(v3, v0 + v2);
}

uint64_t sub_24AEA536C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AEA53B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AEA5414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEA5484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AEA54E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEA5670;

  return sub_24AEA4CC0(a1, v5);
}

uint64_t sub_24AEA559C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEA2D48;

  return sub_24AEA4CC0(a1, v5);
}

uint64_t sub_24AEA5684(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t ObjCBootstrap.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = swift_getObjectType();
  v6 = sub_24AEC5DDC();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_24AEC5D7C();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = sub_24AEC5F4C();
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v16 = sub_24AEC5DBC();
  *(v5 + 184) = v16;
  v17 = *(v16 - 8);
  *(v5 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA5918, 0, 0);
}

uint64_t sub_24AEA5918()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *(v1 + 16) = *(v0 + 72);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_24AEA5A08;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA5A08()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEA5B20, 0, 0);
}

uint64_t sub_24AEA5B20()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 240) = v1;

  if (v1)
  {
    v2 = *(v0 + 48);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v49 = *(v0 + 48);
      }

      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      goto LABEL_22;
    }

    v50 = MEMORY[0x277D84F90];
    sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v50;
      v5 = *(v0 + 152);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          v7 = *(v0 + 168);
          MEMORY[0x24C234830](i, *(v0 + 48));
          v8 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v10 = *(v50 + 16);
          v9 = *(v50 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_24AEC03C8(v9 > 1, v10 + 1, 1);
          }

          v11 = *(v0 + 168);
          v12 = *(v0 + 144);
          *(v50 + 16) = v10 + 1;
          (*(v5 + 32))(v50 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v11, v12);
        }
      }

      else
      {
        v29 = (*(v0 + 48) + 32);
        do
        {
          v30 = v3;
          v31 = *(v0 + 160);
          v32 = *v29;
          v33 = [v32 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v35 = *(v50 + 16);
          v34 = *(v50 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_24AEC03C8(v34 > 1, v35 + 1, 1);
          }

          v36 = *(v0 + 160);
          v37 = *(v0 + 144);
          *(v50 + 16) = v35 + 1;
          (*(v5 + 32))(v50 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v36, v37);
          ++v29;
          v3 = v30 - 1;
        }

        while (v30 != 1);
      }

LABEL_22:
      *(v0 + 248) = v4;
      v38 = *(v0 + 56);
      if (v38)
      {
        v39 = *(v0 + 176);
        v40 = [v38 identifier];
        sub_24AEC62FC();

        sub_24AEA07E0(MEMORY[0x277D84F90]);
        sub_24AEC5F3C();
        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = *(v0 + 64);
      (*(*(v0 + 152) + 56))(*(v0 + 176), v41, 1, *(v0 + 144));
      if (v42 >= 3)
      {
        return sub_24AEC65DC();
      }

      (*(*(v0 + 128) + 104))(*(v0 + 136), **(&unk_278FFFD28 + v42), *(v0 + 120));
      v43 = *(MEMORY[0x277D093B0] + 4);
      v44 = swift_task_alloc();
      *(v0 + 256) = v44;
      *v44 = v0;
      v44[1] = sub_24AEA6194;
      v45 = *(v0 + 216);
      v46 = *(v0 + 176);
      v47 = *(v0 + 136);
      v48 = *(v0 + 272);

      return MEMORY[0x28215FAD0](v45, v4, v46, v47, v48);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_280E21548 != -1)
  {
LABEL_34:
    swift_once();
  }

  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);
  v14 = sub_24AEC623C();
  v15 = sub_24AEC644C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Missing FindMyLocate.Session!", v16, 2u);
    MEMORY[0x24C234F80](v16, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
  sub_24AEC5C8C();
  v17 = *(v0 + 16);
  swift_willThrow();
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24AEA6194()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v12 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[22];
    v7 = v2[16];
    v6 = v2[17];
    v8 = v2[15];

    (*(v7 + 8))(v6, v8);
    sub_24AEA5484(v5, &qword_27EFBFFD0, &qword_24AEC8560);
    v9 = sub_24AEA6B68;
  }

  else
  {
    v10 = v2[22];
    (*(v2[16] + 8))(v2[17], v2[15]);
    sub_24AEA5484(v10, &qword_27EFBFFD0, &qword_24AEC8560);
    v9 = sub_24AEA6328;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24AEA6328()
{
  v104 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v95 = *(v4 + 16);
  v95(v2, v1, v3);
  v6 = sub_24AEC623C();
  v7 = sub_24AEC645C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v102 = v0;
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v103[0] = v13;
    *v12 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0]);
    v14 = sub_24AEC663C();
    v16 = v15;
    v96 = *(v10 + 8);
    v96(v9, v11);
    v17 = sub_24AEBFE20(v14, v16, v103);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_24AE9B000, v6, v7, "sendFriendshipOffer result: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C234F80](v13, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  else
  {

    v96 = *(v10 + 8);
    v96(v9, v11);
  }

  v18 = v0[27];
  v19 = v0[12];
  v20 = sub_24AEC5DAC();
  v21 = v20 + 64;
  v22 = -1;
  v23 = -1 << *(v20 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);
  v25 = (63 - v23) >> 6;
  v97 = *MEMORY[0x277D091C0];
  v99 = v20;

  v0 = 0;
  while (v24)
  {
    v26 = v0;
LABEL_14:
    v28 = v102[13];
    v27 = v102[14];
    v29 = v102[11];
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(v19 + 16))(v27, *(v99 + 56) + *(v19 + 72) * (v30 | (v26 << 6)), v29);
    (*(v19 + 104))(v28, v97, v29);
    v31 = sub_24AEC5DCC();
    v32 = *(v19 + 8);
    v32(v28, v29);
    v32(v27, v29);
    if ((v31 & 1) == 0)
    {
      v33 = v102[31];
      v34 = v102[27];
      v35 = v102[25];
      v36 = v102[23];

      v95(v35, v34, v36);
      v37 = sub_24AEC623C();
      v38 = sub_24AEC644C();
      v39 = os_log_type_enabled(v37, v38);
      v41 = v102[24];
      v40 = v102[25];
      v42 = v102[23];
      if (v39)
      {
        v43 = v102[18];
        v44 = v102[11];
        v45 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v103[0] = v100;
        *v45 = 136315138;
        sub_24AEC5DAC();
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8]);
        v46 = sub_24AEC629C();
        v48 = v47;

        v96(v40, v42);
        v49 = sub_24AEBFE20(v46, v48, v103);
        v50 = v96;

        *(v45 + 4) = v49;
        _os_log_impl(&dword_24AE9B000, v37, v38, "sendFriendshipOffer failed %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x24C234F80](v100, -1, -1);
        MEMORY[0x24C234F80](v45, -1, -1);
      }

      else
      {

        v50 = v96;
        v96(v40, v42);
      }

      v82 = v102[30];
      v83 = v102[27];
      v84 = v102[23];
      type metadata accessor for FMLSessionError(0);
      v102[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
      sub_24AEC5C8C();
      v85 = v102[4];
      swift_willThrow();

      v50(v83, v84);
      v87 = v102[26];
      v86 = v102[27];
      v88 = v102[25];
      v90 = v102[21];
      v89 = v102[22];
      v91 = v102[20];
      v92 = v102[17];
      v94 = v102[13];
      v93 = v102[14];

      v80 = v102[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v26 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    v0 = (v0 + 1);
    if (v24)
    {
      v0 = v26;
      goto LABEL_14;
    }
  }

  v51 = v102;
  v52 = v102[31];

  v53 = sub_24AEC623C();
  v54 = sub_24AEC645C();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v102[30];
  v57 = v102[31];
  v58 = v102[27];
  v60 = v102[23];
  v59 = v102[24];
  if (v55)
  {
    v61 = v102[18];
    v101 = v102[23];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v103[0] = v63;
    *v62 = 136315138;
    v64 = MEMORY[0x24C234690](v57, v61);
    v98 = v58;
    v66 = v65;

    v67 = sub_24AEBFE20(v64, v66, v103);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_24AE9B000, v53, v54, "Successfully sent friendship offer to %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v51 = v102;
    MEMORY[0x24C234F80](v63, -1, -1);
    MEMORY[0x24C234F80](v62, -1, -1);

    v68 = v98;
    v69 = v101;
  }

  else
  {
    v70 = v102[31];

    v68 = v58;
    v69 = v60;
  }

  v96(v68, v69);
  v72 = v51[26];
  v71 = v51[27];
  v73 = v51[25];
  v75 = v51[21];
  v74 = v51[22];
  v76 = v51[20];
  v77 = v51[17];
  v79 = v51[13];
  v78 = v51[14];

  v80 = v51[1];
LABEL_21:

  return v80();
}

uint64_t sub_24AEA6B68()
{
  v1 = v0[30];

  v2 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AEA6DF0(int a1, void *a2, uint64_t a3, char a4, void *aBlock, void *a6)
{
  v6[2] = a2;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v11 = sub_24AEC637C();
  v6[5] = v11;
  v12 = a2;
  a6;
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_24AEA6F00;

  return ObjCBootstrap.sendFriendshipOffer(to:from:end:isFromGroup:)(v11, a2, a3, a4);
}

uint64_t sub_24AEA6F00()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = sub_24AEC5C9C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t ObjCBootstrap.sendFriendshipInvite(to:from:isFromGroup:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 232) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  v5 = sub_24AEC5DDC();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = sub_24AEC5DBC();
  *(v4 + 120) = v9;
  v10 = *(v9 - 8);
  *(v4 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v12 = sub_24AEC5F4C();
  *(v4 + 160) = v12;
  v13 = *(v12 - 8);
  *(v4 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA72B4, 0, 0);
}

uint64_t sub_24AEA72B4()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_24AEA73A4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA73A4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEA74BC, 0, 0);
}

uint64_t sub_24AEA74BC()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 208) = v1;

  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 56);
    v4 = [*(v0 + 48) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    if (v3)
    {
      v5 = *(v0 + 112);
      v6 = [*(v0 + 56) identifier];
      sub_24AEC62FC();

      sub_24AEA07E0(MEMORY[0x277D84F90]);
      sub_24AEC5F3C();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    (*(*(v0 + 168) + 56))(*(v0 + 112), v7, 1, *(v0 + 160));
    v23 = *(MEMORY[0x277D093C0] + 4);
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v24[1] = sub_24AEA7864;
    v25 = *(v0 + 184);
    v26 = *(v0 + 152);
    v27 = *(v0 + 112);
    v28 = *(v0 + 232);

    return MEMORY[0x28215FAE8](v26, v25, v27, v28);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v8 = sub_24AEC625C();
    __swift_project_value_buffer(v8, qword_280E21578);
    v9 = sub_24AEC623C();
    v10 = sub_24AEC644C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AE9B000, v9, v10, "Missing FindMyLocate.Session!", v11, 2u);
      MEMORY[0x24C234F80](v11, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v12 = *(v0 + 16);
    swift_willThrow();
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24AEA7864()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  sub_24AEA5484(*(v2 + 112), &qword_27EFBFFD0, &qword_24AEC8560);
  if (v0)
  {
    v5 = sub_24AEA82A8;
  }

  else
  {
    v5 = sub_24AEA79A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEA79A8()
{
  v112 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = sub_24AEC623C();
  v8 = sub_24AEC645C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v109 = v0;
  v100 = v6;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v111[0] = v14;
    *v13 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0]);
    v15 = sub_24AEC663C();
    v17 = v16;
    v101 = *(v11 + 8);
    v101(v10, v12);
    v18 = sub_24AEBFE20(v15, v17, v111);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v7, v8, "sendFriendshipInvite result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C234F80](v14, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  else
  {

    v101 = *(v11 + 8);
    v101(v10, v12);
  }

  v19 = v0[19];
  v20 = v0[11];
  v21 = sub_24AEC5DAC();
  v22 = v21 + 64;
  v23 = -1;
  v24 = -1 << *(v21 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v21 + 64);
  v26 = (63 - v24) >> 6;
  v104 = *MEMORY[0x277D091C0];
  v106 = v21;

  v0 = 0;
  while (v25)
  {
    v27 = v0;
LABEL_14:
    v29 = v109[12];
    v28 = v109[13];
    v30 = v109[10];
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    (*(v20 + 16))(v28, *(v106 + 56) + *(v20 + 72) * (v31 | (v27 << 6)), v30);
    (*(v20 + 104))(v29, v104, v30);
    v32 = sub_24AEC5DCC();
    v33 = *(v20 + 8);
    v33(v29, v30);
    v33(v28, v30);
    if ((v32 & 1) == 0)
    {
      v34 = v109[19];
      v35 = v109[17];
      v36 = v109[15];

      v100(v35, v34, v36);
      v37 = sub_24AEC623C();
      v38 = sub_24AEC644C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v109[20];
        v41 = v109[16];
        v40 = v109[17];
        v107 = v109[15];
        v42 = v109[10];
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v111[0] = v44;
        *v43 = 136315138;
        sub_24AEC5DAC();
        v45 = v109;
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8]);
        v46 = sub_24AEC629C();
        v48 = v47;

        v101(v40, v107);
        v49 = sub_24AEBFE20(v46, v48, v111);

        *(v43 + 4) = v49;
        _os_log_impl(&dword_24AE9B000, v37, v38, "sendFriendshipInvitefailed %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C234F80](v44, -1, -1);
        MEMORY[0x24C234F80](v43, -1, -1);
      }

      else
      {
        v84 = v109[16];
        v83 = v109[17];
        v85 = v109[15];

        v45 = v109;
        v101(v83, v85);
      }

      v86 = v45[26];
      v110 = v45[23];
      v88 = v45[20];
      v87 = v45[21];
      v89 = v45[19];
      v90 = v45[15];
      type metadata accessor for FMLSessionError(0);
      v45[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
      sub_24AEC5C8C();
      v91 = v45[4];
      swift_willThrow();

      v101(v89, v90);
      (*(v87 + 8))(v110, v88);
      v93 = v45[22];
      v92 = v45[23];
      v95 = v45[18];
      v94 = v45[19];
      v96 = v45[17];
      v98 = v45[13];
      v97 = v45[14];
      v99 = v45[12];

      v81 = v45[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v27 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    v0 = (v0 + 1);
    if (v25)
    {
      v0 = v27;
      goto LABEL_14;
    }
  }

  v50 = v109;
  v52 = v109[22];
  v51 = v109[23];
  v54 = v109[20];
  v53 = v109[21];

  (*(v53 + 16))(v52, v51, v54);
  v55 = sub_24AEC623C();
  v56 = sub_24AEC645C();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v109[26];
  v59 = v109[22];
  v60 = v109[23];
  v61 = v109[20];
  v62 = v109[21];
  v63 = v109[19];
  v64 = v109[15];
  v108 = v109[16];
  if (v57)
  {
    v105 = v109[15];
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v111[0] = v66;
    *v65 = 136315138;
    sub_24AEC59BC(&qword_27EFC0130, MEMORY[0x277D092D8]);
    v102 = v63;
    v103 = v60;
    v67 = sub_24AEC663C();
    v69 = v68;
    v70 = *(v62 + 8);
    v70(v59, v61);
    v71 = sub_24AEBFE20(v67, v69, v111);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_24AE9B000, v55, v56, "Successfully sent friendship invite to %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x24C234F80](v66, -1, -1);
    v50 = v109;
    MEMORY[0x24C234F80](v65, -1, -1);

    v101(v102, v105);
    v70(v103, v61);
  }

  else
  {

    v72 = *(v62 + 8);
    v72(v59, v61);
    v101(v63, v64);
    v72(v60, v61);
  }

  v74 = v50[22];
  v73 = v50[23];
  v76 = v50[18];
  v75 = v50[19];
  v77 = v50[17];
  v79 = v50[13];
  v78 = v50[14];
  v80 = v50[12];

  v81 = v50[1];
LABEL_21:

  return v81();
}

uint64_t sub_24AEA82A8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];

  (*(v4 + 8))(v2, v3);
  v5 = v0[28];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AEA8534(void *a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_24AEA8618;

  return ObjCBootstrap.sendFriendshipInvite(to:from:isFromGroup:)(v10, a2, a3);
}

uint64_t sub_24AEA8618()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = sub_24AEC5C9C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t ObjCBootstrap.stopSharingLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 240) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  v5 = sub_24AEC5DDC();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_24AEC5F4C();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v12 = sub_24AEC5DBC();
  *(v4 + 152) = v12;
  v13 = *(v12 - 8);
  *(v4 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA89C8, 0, 0);
}

uint64_t sub_24AEA89C8()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_24AEA8AB8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA8AB8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEA8BD0, 0, 0);
}

uint64_t sub_24AEA8BD0()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 208) = v1;

  if (v1)
  {
    v2 = *(v0 + 48);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v46 = *(v0 + 48);
      }

      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      goto LABEL_22;
    }

    v47 = MEMORY[0x277D84F90];
    sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v47;
      v5 = *(v0 + 120);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          v7 = *(v0 + 136);
          MEMORY[0x24C234830](i, *(v0 + 48));
          v8 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v10 = *(v47 + 16);
          v9 = *(v47 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_24AEC03C8(v9 > 1, v10 + 1, 1);
          }

          v11 = *(v0 + 136);
          v12 = *(v0 + 112);
          *(v47 + 16) = v10 + 1;
          (*(v5 + 32))(v47 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v11, v12);
        }
      }

      else
      {
        v28 = (*(v0 + 48) + 32);
        do
        {
          v29 = v3;
          v30 = *(v0 + 128);
          v31 = *v28;
          v32 = [v31 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v34 = *(v47 + 16);
          v33 = *(v47 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_24AEC03C8(v33 > 1, v34 + 1, 1);
          }

          v35 = *(v0 + 128);
          v36 = *(v0 + 112);
          *(v47 + 16) = v34 + 1;
          (*(v5 + 32))(v47 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v35, v36);
          ++v28;
          v3 = v29 - 1;
        }

        while (v29 != 1);
      }

LABEL_22:
      *(v0 + 216) = v4;
      v37 = *(v0 + 56);
      if (v37)
      {
        v38 = *(v0 + 144);
        v39 = [v37 identifier];
        sub_24AEC62FC();

        sub_24AEA07E0(MEMORY[0x277D84F90]);
        sub_24AEC5F3C();
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      (*(*(v0 + 120) + 56))(*(v0 + 144), v40, 1, *(v0 + 112));
      v41 = *(MEMORY[0x277D09328] + 4);
      v42 = swift_task_alloc();
      *(v0 + 224) = v42;
      *v42 = v0;
      v42[1] = sub_24AEA9198;
      v43 = *(v0 + 184);
      v44 = *(v0 + 144);
      v45 = *(v0 + 240);

      return MEMORY[0x28215FA38](v43, v4, v44, v45);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_280E21548 != -1)
  {
LABEL_32:
    swift_once();
  }

  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);
  v14 = sub_24AEC623C();
  v15 = sub_24AEC644C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Missing FindMyLocate.Session!", v16, 2u);
    MEMORY[0x24C234F80](v16, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
  sub_24AEC5C8C();
  v17 = *(v0 + 16);
  swift_willThrow();
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 168);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 128);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_24AEA9198()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);
    sub_24AEA5484(*(v2 + 144), &qword_27EFBFFD0, &qword_24AEC8560);

    v5 = sub_24AEA9B14;
  }

  else
  {
    sub_24AEA5484(*(v2 + 144), &qword_27EFBFFD0, &qword_24AEC8560);
    v5 = sub_24AEA92E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEA92E8()
{
  v106 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = sub_24AEC623C();
  v8 = sub_24AEC645C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v104 = v0;
  v98 = v6;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v105[0] = v14;
    *v13 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0]);
    v15 = sub_24AEC663C();
    v17 = v16;
    v99 = *(v11 + 8);
    v99(v10, v12);
    v18 = sub_24AEBFE20(v15, v17, v105);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v7, v8, "stopSharingLocation result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C234F80](v14, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  else
  {

    v99 = *(v11 + 8);
    v99(v10, v12);
  }

  v19 = v0[23];
  v20 = v0[11];
  v21 = sub_24AEC5DAC();
  v22 = v21 + 64;
  v23 = -1;
  v24 = -1 << *(v21 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v21 + 64);
  v26 = (63 - v24) >> 6;
  v100 = *MEMORY[0x277D091C0];
  v102 = v21;

  v0 = 0;
  while (v25)
  {
    v27 = v0;
LABEL_14:
    v29 = v104[12];
    v28 = v104[13];
    v30 = v104[10];
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    (*(v20 + 16))(v28, *(v102 + 56) + *(v20 + 72) * (v31 | (v27 << 6)), v30);
    (*(v20 + 104))(v29, v100, v30);
    v32 = sub_24AEC5DCC();
    v33 = *(v20 + 8);
    v33(v29, v30);
    v33(v28, v30);
    if ((v32 & 1) == 0)
    {
      v34 = v104;
      v35 = v104[27];
      v36 = v104[23];
      v37 = v104[21];
      v38 = v104[19];

      v98(v37, v36, v38);
      v39 = sub_24AEC623C();
      v40 = sub_24AEC644C();
      v41 = os_log_type_enabled(v39, v40);
      v43 = v104[20];
      v42 = v104[21];
      v44 = v104[19];
      if (v41)
      {
        v45 = v104[14];
        v46 = v104[10];
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v105[0] = v48;
        *v47 = 136315138;
        sub_24AEC5DAC();
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8]);
        v49 = sub_24AEC629C();
        v51 = v50;

        v52 = v99;
        v99(v42, v44);
        v53 = sub_24AEBFE20(v49, v51, v105);
        v34 = v104;

        *(v47 + 4) = v53;
        _os_log_impl(&dword_24AE9B000, v39, v40, "stopSharingLocationFailed %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C234F80](v48, -1, -1);
        MEMORY[0x24C234F80](v47, -1, -1);
      }

      else
      {

        v52 = v99;
        v99(v42, v44);
      }

      v84 = v34[26];
      v85 = v34[23];
      v86 = v34[19];
      type metadata accessor for FMLSessionError(0);
      v34[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
      sub_24AEC5C8C();
      v87 = v34[4];
      swift_willThrow();

      v52(v85, v86);
      v89 = v34[22];
      v88 = v34[23];
      v90 = v34[21];
      v92 = v34[17];
      v91 = v34[18];
      v93 = v34[16];
      v94 = v34;
      v97 = v34 + 12;
      v96 = v34[12];
      v95 = v97[1];

      v82 = v94[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v27 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    v0 = (v0 + 1);
    if (v25)
    {
      v0 = v27;
      goto LABEL_14;
    }
  }

  v54 = v104;
  v55 = v104[27];

  v56 = sub_24AEC623C();
  v57 = sub_24AEC645C();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v104[26];
  v60 = v104[27];
  v61 = v104[23];
  v63 = v104[19];
  v62 = v104[20];
  if (v58)
  {
    v64 = v104[14];
    v103 = v104[19];
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v105[0] = v66;
    *v65 = 136315138;
    v67 = MEMORY[0x24C234690](v60, v64);
    v101 = v61;
    v69 = v68;

    v54 = v104;
    v70 = sub_24AEBFE20(v67, v69, v105);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_24AE9B000, v56, v57, "Successfully stop location share with %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x24C234F80](v66, -1, -1);
    MEMORY[0x24C234F80](v65, -1, -1);

    v71 = v101;
    v72 = v103;
  }

  else
  {
    v73 = v104[27];

    v71 = v61;
    v72 = v63;
  }

  v99(v71, v72);
  v75 = v54[22];
  v74 = v54[23];
  v76 = v54[21];
  v78 = v54[17];
  v77 = v54[18];
  v79 = v54[16];
  v81 = v54[12];
  v80 = v54[13];

  v82 = v54[1];
LABEL_21:

  return v82();
}

uint64_t sub_24AEA9B14()
{
  v1 = v0[26];

  v2 = v0[29];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AEA9D80(int a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v9 = sub_24AEC637C();
  v5[5] = v9;
  v10 = a2;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_24AEC5BCC;

  return ObjCBootstrap.stopSharingLocation(with:from:isFromGroup:)(v9, a2, a3);
}

uint64_t ObjCBootstrap.startRefreshingLocation(for:priority:isFromGroup:reverseGeocode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_24AEA5670;

  return sub_24AEC2B80(a1, a4);
}

unint64_t sub_24AEA9F40(uint64_t a1, unint64_t a2)
{
  v23 = a2;
  v2 = sub_24AEC5F1C();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    sub_24AEC656C();
    v5 = objc_opt_self();
    v6 = (v2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_24AEC62EC();

      v10 = [v5 handleWithIdentifier_];

      sub_24AEC654C();
      v11 = *(v25 + 16);
      sub_24AEC657C();
      sub_24AEC658C();
      sub_24AEC655C();
      v6 += 2;
      --v3;
    }

    while (v3);

    v12 = v25;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v25 = v4;
  if (v12 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AEC65AC())
  {
    v14 = v23;
    swift_bridgeObjectRetain_n();
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C234830](v15, v12);
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v24 = v16;
      MEMORY[0x28223BE20](v16);
      v22[2] = &v24;
      if (sub_24AEBD9C0(sub_24AEC5A04, v22, v14))
      {
        sub_24AEC654C();
        v19 = *(v25 + 16);
        sub_24AEC657C();
        v14 = v23;
        sub_24AEC658C();
        sub_24AEC655C();
      }

      else
      {
      }

      ++v15;
      if (v18 == i)
      {
        v20 = v25;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:

  swift_bridgeObjectRelease_n();
  return v20;
}

BOOL sub_24AEAA1B4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_24AEC5EEC() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_24AEC59BC(&qword_27EFC01B8, MEMORY[0x277D092C0]);
  }

  while ((sub_24AEC62DC() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_24AEAA2C0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_24AEC5EEC();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24AEC040C(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24AEC040C(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_24AEAA590(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v27 - v14;
  v31 = a1;
  v16 = *a1;
  if (v16)
  {
    sub_24AEC641C();
  }

  v17 = sub_24AEC63EC();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v8 + 16))(v11, a2, v7);
  v18 = *(v8 + 80);
  v27[1] = v16;
  v19 = (v18 + 32) & ~v18;
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v8 + 32))(v22 + v19, v11, v7);
  v23 = v30;
  *(v22 + v20) = v29;
  *(v22 + v21) = v23;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  v24 = v23;
  v25 = sub_24AEA2EF0(0, 0, v15, &unk_24AEC8D38, v22);

  *v31 = v25;
  return result;
}

uint64_t sub_24AEAA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_24AEC626C();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = sub_24AEC628C();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = sub_24AEC5F4C();
  v6[31] = v13;
  v14 = *(v13 - 8);
  v6[32] = v14;
  v15 = *(v14 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v16 = sub_24AEC61AC();
  v6[37] = v16;
  v17 = *(v16 - 8);
  v6[38] = v17;
  v18 = *(v17 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v19 = sub_24AEC5D8C();
  v6[42] = v19;
  v20 = *(v19 - 8);
  v6[43] = v20;
  v21 = *(v20 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0228, &qword_24AEC8D40) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0230, &qword_24AEC8D48);
  v6[47] = v23;
  v24 = *(v23 - 8);
  v6[48] = v24;
  v25 = *(v24 + 64) + 15;
  v6[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEAAB24, 0, 0);
}

uint64_t sub_24AEAAB24()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  sub_24AEC63FC();
  v3 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback;
  *(v0 + 400) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  *(v0 + 408) = v3;
  v4 = MEMORY[0x277D09128];
  *(v0 + 424) = *MEMORY[0x277D09130];
  *(v0 + 428) = *v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 416) = v6;
  *v6 = v0;
  v6[1] = sub_24AEAAC28;
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);
  v9 = *(v0 + 376);

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_24AEAAC28()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AEAAD24, 0, 0);
}

uint64_t sub_24AEAAD24()
{
  v185 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(*(v0 + 360), v1, v2);
    if (sub_24AEC642C())
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v4 = sub_24AEC625C();
      __swift_project_value_buffer(v4, qword_280E21578);
      v5 = sub_24AEC623C();
      v6 = sub_24AEC645C();
      v7 = os_log_type_enabled(v5, v6);
      v9 = *(v0 + 384);
      v8 = *(v0 + 392);
      v10 = *(v0 + 376);
      v11 = *(v0 + 360);
      v13 = *(v0 + 336);
      v12 = *(v0 + 344);
      if (v7)
      {
        aBlock = *(v0 + 392);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v184 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_24AEBFE20(0xD000000000000041, 0x800000024AEC7EC0, &v184);
        _os_log_impl(&dword_24AE9B000, v5, v6, "%{public}s has been canceled", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C234F80](v15, -1, -1);
        MEMORY[0x24C234F80](v14, -1, -1);

        (*(v12 + 8))(v11, v13);
        (*(v9 + 8))(aBlock, v10);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
        (*(v9 + 8))(v8, v10);
      }

      goto LABEL_14;
    }

    v16 = *(v0 + 424);
    v17 = *(v0 + 352);
    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    (*(v19 + 16))(v17, *(v0 + 360), v18);
    v20 = (*(v19 + 88))(v17, v18);
    if (v20 != v16)
    {
      if (v20 != *(v0 + 428))
      {
        if (qword_280E21548 != -1)
        {
          swift_once();
        }

        v113 = sub_24AEC625C();
        __swift_project_value_buffer(v113, qword_280E21578);
        v114 = sub_24AEC623C();
        v115 = sub_24AEC644C();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_24AE9B000, v114, v115, "Unknown location update case", v116, 2u);
          MEMORY[0x24C234F80](v116, -1, -1);
        }

        v118 = *(v0 + 352);
        v117 = *(v0 + 360);
        v119 = *(v0 + 336);
        v120 = *(v0 + 344);

        v121 = *(v120 + 8);
        v121(v117, v119);
        v121(v118, v119);
        goto LABEL_54;
      }

      v69 = (v0 + 16);
      v70 = *(v0 + 352);
      v71 = *(v0 + 272);
      v73 = *(v0 + 248);
      v72 = *(v0 + 256);
      v74 = *(v0 + 184);
      (*(*(v0 + 344) + 96))(v70, *(v0 + 336));
      (*(v72 + 32))(v71, v70, v73);
      v30 = sub_24AEA9F40(v71, v74);
      if (qword_280E21548 == -1)
      {
LABEL_19:
        v76 = *(v0 + 264);
        v75 = *(v0 + 272);
        v78 = *(v0 + 248);
        v77 = *(v0 + 256);
        v79 = sub_24AEC625C();
        __swift_project_value_buffer(v79, qword_280E21578);
        (*(v77 + 16))(v76, v75, v78);
        v80 = sub_24AEC623C();
        v81 = sub_24AEC645C();
        v82 = os_log_type_enabled(v80, v81);
        v84 = *(v0 + 256);
        v83 = *(v0 + 264);
        v85 = *(v0 + 248);
        if (v82)
        {
          v86 = swift_slowAlloc();
          aBlockb = swift_slowAlloc();
          v184 = aBlockb;
          *v86 = 141558275;
          *(v86 + 4) = 1752392040;
          *(v86 + 12) = 2081;
          v87 = v69;
          v88 = sub_24AEC5EFC();
          v176 = v81;
          v90 = v89;
          v171 = *(v84 + 8);
          v171(v83, v85);
          v91 = v88;
          v69 = v87;
          v92 = sub_24AEBFE20(v91, v90, &v184);

          *(v86 + 14) = v92;
          _os_log_impl(&dword_24AE9B000, v80, v176, "locationStreams received unavailable location for handle: %{private,mask.hash}s", v86, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(aBlockb);
          MEMORY[0x24C234F80](aBlockb, -1, -1);
          MEMORY[0x24C234F80](v86, -1, -1);
        }

        else
        {

          v171 = *(v84 + 8);
          v171(v83, v85);
        }

        v123 = *(v0 + 232);
        v122 = *(v0 + 240);
        v124 = *(v0 + 216);
        v125 = *(v0 + 200);
        v126 = *(v0 + 208);
        v127 = *(v0 + 192);
        v177 = *&v127[*(v0 + 400)];
        aBlockc = *(v0 + 224);
        v128 = swift_allocObject();
        *(v128 + 16) = v30;
        *(v128 + 24) = v127;
        *(v0 + 48) = sub_24AEC59A8;
        *(v0 + 56) = v128;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_24AEA5684;
        *(v0 + 40) = &block_descriptor_418;
        v129 = _Block_copy(v69);
        v130 = v127;

        sub_24AEC627C();
        *(v0 + 160) = MEMORY[0x277D84F90];
        sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
        sub_24AEC3EB4();
        sub_24AEC64FC();
        MEMORY[0x24C2347A0](0, v122, v124, v129);
        _Block_release(v129);
        (*(v126 + 8))(v124, v125);
        (*(v123 + 8))(v122, aBlockc);
        v131 = *(v0 + 56);

        if (v30 >> 62)
        {
          v132 = sub_24AEC65AC();
          v136 = v132;
          if (v132)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v136 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v136)
          {
LABEL_40:
            if (v136 < 1)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v132, v133, v134, v135);
            }

            v137 = *(v0 + 192) + *(v0 + 408);
            swift_beginAccess();
            for (i = 0; i != v136; ++i)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v139 = MEMORY[0x24C234830](i, v30);
              }

              else
              {
                v139 = *(v30 + 8 * i + 32);
              }

              v140 = v139;
              v141 = *(v0 + 192) + *(v0 + 408);
              v142 = *v141;
              if (*v141)
              {
                v143 = *(v141 + 8);

                v142(0, v140);
                sub_24AE9C8F8(v142);
              }
            }
          }
        }

        v151 = *(v0 + 360);
        v152 = *(v0 + 336);
        v153 = *(v0 + 344);
        v154 = *(v0 + 272);
        v155 = *(v0 + 248);
        v156 = *(v0 + 256);

        v171(v154, v155);
        (*(v153 + 8))(v151, v152);
LABEL_54:
        v157 = *(MEMORY[0x277D85798] + 4);
        v158 = swift_task_alloc();
        *(v0 + 416) = v158;
        *v158 = v0;
        v158[1] = sub_24AEAAC28;
        v159 = *(v0 + 392);
        v132 = *(v0 + 368);
        v135 = *(v0 + 376);
        v133 = 0;
        v134 = 0;

        return MEMORY[0x2822003E8](v132, v133, v134, v135);
      }

LABEL_51:
      swift_once();
      goto LABEL_19;
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 328);
    v173 = *(v0 + 320);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 184);
    (*(*(v0 + 344) + 96))(v21, *(v0 + 336));
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0238, &qword_24AEC8D50) + 48);
    (*(v24 + 32))(v22, v21, v23);
    (*(v27 + 32))(v25, v21 + v29, v26);
    v30 = sub_24AEA9F40(v25, v28);
    sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
    v168 = *(v24 + 16);
    v168(v173, v22, v23);
    v174 = sub_24AEA0E90(v173);
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 328);
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);
    v165 = *(v0 + 288);
    v34 = *(v0 + 280);
    v36 = *(v0 + 248);
    v35 = *(v0 + 256);
    v37 = sub_24AEC625C();
    __swift_project_value_buffer(v37, qword_280E21578);
    v168(v32, v31, v33);
    (*(v35 + 16))(v34, v165, v36);
    v38 = sub_24AEC623C();
    v39 = sub_24AEC645C();
    v40 = os_log_type_enabled(v38, v39);
    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    if (v40)
    {
      v166 = v39;
      v47 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v184 = v169;
      *v47 = 136315394;
      sub_24AEC59BC(&qword_27EFC0240, MEMORY[0x277D094C0]);
      v160 = v46;
      v48 = sub_24AEC663C();
      log = v38;
      v50 = v49;
      v162 = *(v42 + 8);
      v162(v41, v43);
      v51 = sub_24AEBFE20(v48, v50, &v184);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = sub_24AEC5EFC();
      v54 = v53;
      v55 = v160;
      v161 = *(v45 + 8);
      v161(v44, v55);
      v56 = sub_24AEBFE20(v52, v54, &v184);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_24AE9B000, log, v166, "locationStreams received location %s for handle: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v169, -1, -1);
      MEMORY[0x24C234F80](v47, -1, -1);
    }

    else
    {

      v161 = *(v45 + 8);
      v161(v44, v46);
      v162 = *(v42 + 8);
      v162(v41, v43);
    }

    v93 = *(v0 + 240);
    v94 = *(v0 + 216);
    v167 = *(v0 + 232);
    v172 = *(v0 + 224);
    v95 = *(v0 + 200);
    v96 = *(v0 + 208);
    v97 = *(v0 + 192);
    loga = *&v97[*(v0 + 400)];
    v98 = swift_allocObject();
    v98[2] = v30;
    v98[3] = v97;
    v98[4] = v174;
    *(v0 + 96) = sub_24AEC59B0;
    *(v0 + 104) = v98;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_24AEA5684;
    *(v0 + 88) = &block_descriptor_424;
    v99 = _Block_copy((v0 + 64));

    v100 = v97;
    v101 = v174;
    sub_24AEC627C();
    *(v0 + 168) = MEMORY[0x277D84F90];
    sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
    sub_24AEC3EB4();
    sub_24AEC64FC();
    MEMORY[0x24C2347A0](0, v93, v94, v99);
    _Block_release(v99);
    v102 = *(v96 + 8);
    v69 = (v96 + 8);
    v102(v94, v95);
    (*(v167 + 8))(v93, v172);
    v103 = *(v0 + 104);

    if (v30 >> 62)
    {
      v104 = sub_24AEC65AC();
      if (v104)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v104 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v104)
      {
LABEL_24:
        if (v104 >= 1)
        {
          v105 = *(v0 + 192) + *(v0 + 408);
          swift_beginAccess();
          for (j = 0; j != v104; ++j)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x24C234830](j, v30);
            }

            else
            {
              v107 = *(v30 + 8 * j + 32);
            }

            v108 = v107;
            v109 = *(v0 + 192) + *(v0 + 408);
            v110 = *v109;
            if (*v109)
            {
              v111 = *(v109 + 8);
              v112 = v101;
              sub_24AEA5664(v110, v111);
              v110(v101, v108);
              sub_24AE9C8F8(v110);
            }
          }

          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_51;
      }
    }

LABEL_49:
    v144 = *(v0 + 344);
    v178 = *(v0 + 336);
    aBlockd = *(v0 + 360);
    v145 = *(v0 + 328);
    v147 = *(v0 + 296);
    v146 = *(v0 + 304);
    v148 = *(v0 + 288);
    v150 = *(v0 + 248);
    v149 = *(v0 + 256);

    v161(v148, v150);
    v162(v145, v147);
    (*(v144 + 8))(aBlockd, v178);
    goto LABEL_54;
  }

  (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
LABEL_14:
  v57 = *(v0 + 392);
  v58 = *(v0 + 360);
  v59 = *(v0 + 368);
  v60 = *(v0 + 352);
  v62 = *(v0 + 320);
  v61 = *(v0 + 328);
  v63 = *(v0 + 312);
  v65 = *(v0 + 280);
  v64 = *(v0 + 288);
  v66 = *(v0 + 272);
  v170 = *(v0 + 264);
  v175 = *(v0 + 240);
  aBlocka = *(v0 + 216);

  v67 = *(v0 + 8);

  return v67();
}

void sub_24AEABCE8(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AEC65AC())
  {
    v7 = 0;
    v8 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
    v35 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C234830](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(a1 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      swift_beginAccess();
      v14 = *(a2 + v8);
      if ((v14 & 0xC000000000000001) != 0)
      {
        if (v14 < 0)
        {
          v15 = *(a2 + v8);
        }

        else
        {
          v15 = v14 & 0xFFFFFFFFFFFFFF8;
        }

        v16 = v12;
        v17 = a3;
        v18 = sub_24AEC65AC();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }

        *(a2 + v8) = sub_24AEC07B0(v15, v18 + 1);
      }

      else
      {
        v19 = *(a2 + v8);
        v20 = v12;
        v21 = a3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(a2 + v8);
      *(a2 + v8) = 0x8000000000000000;
      v24 = sub_24AEC09FC(v12);
      v26 = v23[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_29;
      }

      v30 = v25;
      if (v23[3] < v29)
      {
        sub_24AEC0B5C(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_24AEC09FC(v12);
        if ((v30 & 1) != (v31 & 1))
        {
          sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
          sub_24AEC666C();
          __break(1u);
          return;
        }

LABEL_23:
        if (v30)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v34 = v24;
      sub_24AEC19A8();
      v24 = v34;
      if (v30)
      {
LABEL_4:
        v9 = v23[7];
        v10 = *(v9 + 8 * v24);
        *(v9 + 8 * v24) = a3;

        goto LABEL_5;
      }

LABEL_24:
      v23[(v24 >> 6) + 8] |= 1 << v24;
      *(v23[6] + 8 * v24) = v12;
      *(v23[7] + 8 * v24) = a3;
      v32 = v23[2];
      v28 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v28)
      {
        goto LABEL_31;
      }

      v23[2] = v33;
LABEL_5:
      *(a2 + v8) = v23;
      swift_endAccess();

      ++v7;
      if (v13 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

uint64_t sub_24AEABF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_24AEC5EEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AEA5484(a1, &qword_27EFC01D8, &qword_24AEC8CD8);
    sub_24AEC062C(a2, a3, v10);

    return sub_24AEA5484(v10, &qword_27EFC01D8, &qword_24AEC8CD8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AEC14BC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_24AEAC144(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      v5 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
      if ((v3 & 0xC000000000000001) == 0)
      {
        v24 = (v3 + 32);
        do
        {
          v26 = *v24;
          swift_beginAccess();
          v3 = *(a2 + v5);
          if ((v3 & 0xC000000000000001) != 0)
          {
            if (v3 < 0)
            {
              v27 = *(a2 + v5);
            }

            else
            {
              v27 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            v28 = v26;
            if (sub_24AEC65BC())
            {
              swift_unknownObjectRelease();

              v29 = sub_24AEC65AC();
              v30 = sub_24AEC07B0(v27, v29);

              v31 = sub_24AEC09FC(v28);
              v33 = v32;

              if ((v33 & 1) == 0)
              {
                goto LABEL_32;
              }

              v34 = *(*(v30 + 56) + 8 * v31);
              sub_24AEC1144(v31, v30);

              *(a2 + v5) = v30;
            }
          }

          else
          {
            v35 = sub_24AEC09FC(v26);
            if (v36)
            {
              v37 = v35;
              v38 = *(a2 + v5);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v40 = *(a2 + v5);
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_24AEC19A8();
              }

              v25 = *(*(v40 + 56) + 8 * v37);
              sub_24AEC1144(v37, v40);
              *(a2 + v5) = v40;
            }
          }

          swift_endAccess();

          ++v24;
          --v4;
        }

        while (v4);
        return;
      }

      v6 = 0;
      while (1)
      {
        v8 = MEMORY[0x24C234830](v6, v3);
        swift_beginAccess();
        v9 = *(a2 + v5);
        if ((v9 & 0xC000000000000001) == 0)
        {
          v17 = *(a2 + v5);
          v18 = sub_24AEC09FC(v8);
          if (v19)
          {
            v20 = v18;
            v21 = *(a2 + v5);
            v22 = swift_isUniquelyReferenced_nonNull_native();
            v23 = *(a2 + v5);
            if (!v22)
            {
              sub_24AEC19A8();
            }

            v7 = *(*(v23 + 56) + 8 * v20);
            sub_24AEC1144(v20, v23);
            *(a2 + v5) = v23;
          }

          goto LABEL_7;
        }

        v10 = v9 < 0 ? *(a2 + v5) : v9 & 0xFFFFFFFFFFFFFF8;
        if (sub_24AEC65BC())
        {
          break;
        }

LABEL_7:
        ++v6;
        swift_endAccess();
        swift_unknownObjectRelease();
        if (v4 == v6)
        {
          return;
        }
      }

      swift_unknownObjectRelease();

      v11 = sub_24AEC65AC();
      v12 = sub_24AEC07B0(v10, v11);

      v13 = sub_24AEC09FC(v8);
      v15 = v14;

      if (v15)
      {
        break;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v4 = sub_24AEC65AC();
      if (!v4)
      {
        return;
      }
    }

    v16 = *(*(v12 + 56) + 8 * v13);
    sub_24AEC1144(v13, v12);

    *(a2 + v5) = v12;

    goto LABEL_7;
  }
}

uint64_t sub_24AEAC60C(int a1, int a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v9 = sub_24AEC637C();
  v6[4] = v9;
  a6;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_24AEC5B64;

  return sub_24AEC2B80(v9, a4);
}

uint64_t ObjCBootstrap.stopRefreshingLocation(for:priority:isFromGroup:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AEA2D48;

  return (sub_24AEC391C)(a1);
}

uint64_t sub_24AEAC7C4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24AEACA0C(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v7 = sub_24AEC637C();
  v5[4] = v7;
  a5;
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_24AEACB08;

  return sub_24AEC391C(v7);
}

uint64_t sub_24AEACB08()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_24AEC5C9C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_24AEACCC8()
{
  v11 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_24AEBFE20(0xD000000000000018, 0x800000024AEC7A70, &v10);
    _os_log_impl(&dword_24AE9B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C234F80](v5, -1, -1);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v6 = *(v0 + 16) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock;
  os_unfair_lock_lock(v6);
  if (*(v6 + 8))
  {
    sub_24AEC641C();
    v7 = *(v6 + 8);
  }

  *(v6 + 8) = 0;

  os_unfair_lock_unlock(v6);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24AEAD00C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEC5BBC;

  return ObjCBootstrap.stopRefreshingLocation()();
}

uint64_t ObjCBootstrap.startUpdatingFriends(initialUpdates:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 112) = a1;
  *(v2 + 40) = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEAD190, 0, 0);
}

uint64_t sub_24AEAD190()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_24AEAD280;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEAD280()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEAD398, 0, 0);
}

uint64_t sub_24AEAD398()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 88) = v1;

  if (v1)
  {
    v2 = *(MEMORY[0x277D093C8] + 4);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_24AEAD5CC;
    v4 = *(v0 + 64);
    v5 = *(v0 + 112);

    return MEMORY[0x28215FAF0](v4, v5);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v6 = sub_24AEC625C();
    __swift_project_value_buffer(v6, qword_280E21578);
    v7 = sub_24AEC623C();
    v8 = sub_24AEC644C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AE9B000, v7, v8, "Missing FindMyLocate.Session!", v9, 2u);
      MEMORY[0x24C234F80](v9, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v10 = *(v0 + 16);
    swift_willThrow();
    v11 = *(v0 + 64);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24AEAD5CC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_24AEAD8A4;
  }

  else
  {
    v3 = sub_24AEAD6E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24AEAD6E0()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully startUpdatingFriends stream", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[8];
  v8 = v0[4];
  v7 = v0[5];

  v9 = &v8[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock];
  os_unfair_lock_lock(&v8[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock]);
  sub_24AEAD910(v9 + 1, v6, v8, v7);
  if (v5)
  {

    os_unfair_lock_unlock(v9);
  }

  else
  {
    v10 = v0[11];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    os_unfair_lock_unlock(v9);

    (*(v12 + 8))(v11, v13);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_24AEAD8A4()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AEAD910(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v28 = a1;
  if (*a1)
  {
    v15 = *a1;
    sub_24AEC641C();
  }

  v16 = sub_24AEC63EC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v7 + 16))(v10, a2, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v7 + 32))(v19 + v17, v10, v6);
  v21 = v26;
  v20 = v27;
  *(v19 + v18) = v27;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v22 = v20;
  v23 = sub_24AEA2EF0(0, 0, v14, &unk_24AEC8D00, v19);

  *v28 = v23;
  return result;
}

uint64_t sub_24AEADB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[69] = a5;
  v5[68] = a4;
  v6 = sub_24AEC626C();
  v5[70] = v6;
  v7 = *(v6 - 8);
  v5[71] = v7;
  v8 = *(v7 + 64) + 15;
  v5[72] = swift_task_alloc();
  v9 = sub_24AEC628C();
  v5[73] = v9;
  v10 = *(v9 - 8);
  v5[74] = v10;
  v11 = *(v10 + 64) + 15;
  v5[75] = swift_task_alloc();
  v12 = sub_24AEC5CFC();
  v5[76] = v12;
  v13 = *(v12 - 8);
  v5[77] = v13;
  v14 = *(v13 + 64) + 15;
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v15 = sub_24AEC5EEC();
  v5[82] = v15;
  v16 = *(v15 - 8);
  v5[83] = v16;
  v5[84] = *(v16 + 64);
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v17 = sub_24AEC5D6C();
  v5[95] = v17;
  v18 = *(v17 - 8);
  v5[96] = v18;
  v19 = *(v18 + 64) + 15;
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0200, &qword_24AEC8D08) - 8) + 64) + 15;
  v5[102] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0208, &qword_24AEC8D10);
  v5[103] = v21;
  v22 = *(v21 - 8);
  v5[104] = v22;
  v23 = *(v22 + 64) + 15;
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEADF08, 0, 0);
}

uint64_t sub_24AEADF08()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  sub_24AEC63FC();
  *(v0 + 848) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  *(v0 + 856) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback;
  swift_beginAccess();
  v4 = MEMORY[0x277D090C8];
  *(v0 + 872) = *MEMORY[0x277D090C0];
  *(v0 + 876) = *v4;
  *(v0 + 880) = *MEMORY[0x277D090D0];
  v5 = MEMORY[0x277D09030];
  *(v0 + 884) = *MEMORY[0x277D09028];
  *(v0 + 888) = *v5;
  *(v0 + 892) = *MEMORY[0x277D09018];
  v6 = MEMORY[0x277D09010];
  *(v0 + 896) = *MEMORY[0x277D09020];
  *(v0 + 900) = *v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 864) = v8;
  *v8 = v0;
  v8[1] = sub_24AEAE094;
  v9 = *(v0 + 840);
  v10 = *(v0 + 824);
  v11 = *(v0 + 816);

  return MEMORY[0x2822003E8](v11, 0, 0, v10);
}

uint64_t sub_24AEAE094()
{
  v1 = *(*v0 + 864);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AEAE190, 0, 0);
}

uint64_t sub_24AEAE190()
{
  v469 = v0;
  v1 = v0;
  v2 = v0[102];
  v3 = v0[96];
  v4 = v0[95];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    (*(v1[104] + 8))(v1[105], v1[103]);
LABEL_13:
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v40 = sub_24AEC625C();
    __swift_project_value_buffer(v40, qword_280E21578);
    v41 = sub_24AEC623C();
    v42 = sub_24AEC645C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24AE9B000, v41, v42, "Successfully startUpdatingFriends", v43, 2u);
      MEMORY[0x24C234F80](v43, -1, -1);
    }

    v44 = v1[105];
    v45 = v1[102];
    v46 = v1[101];
    v47 = v1;
    v48 = v1[100];
    v49 = v47[99];
    v50 = v47[98];
    v51 = v47[97];
    v52 = v47[94];
    v363 = v47[93];
    v364 = v47[92];
    v365 = v47[91];
    v366 = v47[90];
    v367 = v47[89];
    v374 = v47[88];
    v384 = v47[87];
    v394 = v47[86];
    log = v47[85];
    v414 = v47[81];
    v428 = v47[80];
    v444 = v47[79];
    v457 = v47[78];
    v461 = v47[75];
    v463 = v47[72];

    v53 = v47[1];

    return v53();
  }

  (*(v3 + 32))(v1[101], v2, v4);
  if (sub_24AEC642C())
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC645C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[105];
    v10 = v1[104];
    v11 = v1[103];
    v12 = v1[101];
    v13 = v1[96];
    v14 = v1[95];
    if (v8)
    {
      v459 = v1[105];
      v455 = v1[103];
      v15 = swift_slowAlloc();
      v462 = v1;
      v468 = swift_slowAlloc();
      v16 = v468;
      *v15 = 136446210;
      *(v15 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
      _os_log_impl(&dword_24AE9B000, v6, v7, "%{public}s has been canceled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v17 = v16;
      v1 = v462;
      MEMORY[0x24C234F80](v17, -1, -1);
      MEMORY[0x24C234F80](v15, -1, -1);

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v459, v455);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v9, v11);
    }

    goto LABEL_13;
  }

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v18 = v1[101];
  v19 = v1[100];
  v20 = v1[96];
  v21 = v1[95];
  v22 = sub_24AEC625C();
  __swift_project_value_buffer(v22, qword_280E21578);
  v23 = *(v20 + 16);
  v23(v19, v18, v21);
  v24 = sub_24AEC623C();
  v25 = sub_24AEC645C();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v1[100];
  v456 = v1 + 101;
  if (v26)
  {
    v28 = v1[99];
    v29 = v1[96];
    v30 = v1;
    v31 = v1[95];
    v32 = swift_slowAlloc();
    v427 = v23;
    v33 = swift_slowAlloc();
    v468 = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
    *(v32 + 12) = 2080;
    v427(v28, v27, v31);
    v34 = sub_24AEC630C();
    v36 = v35;
    v37 = v31;
    v1 = v30;
    v460 = *(v29 + 8);
    v460(v27, v37);
    v38 = sub_24AEBFE20(v34, v36, &v468);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_24AE9B000, v24, v25, "%{public}s friendshipUpdate: %s", v32, 0x16u);
    swift_arrayDestroy();
    v39 = v33;
    v23 = v427;
    MEMORY[0x24C234F80](v39, -1, -1);
    MEMORY[0x24C234F80](v32, -1, -1);
  }

  else
  {
    v55 = v1[96];
    v56 = v1[95];

    v460 = *(v55 + 8);
    v460(v27, v56);
  }

  v57 = *(v1 + 218);
  v58 = v1[98];
  v59 = v1[96];
  v60 = v1[95];
  v23(v58, v1[101], v60);
  v61 = (*(v59 + 88))(v58, v60);
  if (v61 == v57)
  {
    v62 = *(v1 + 221);
    v63 = v1[98];
    v64 = v1[94];
    v65 = v1[83];
    v66 = v1[82];
    v67 = v1[81];
    v68 = v1[77];
    v69 = v1[76];
    (*(v1[96] + 96))(v63, v1[95]);
    v70 = *(v65 + 32);
    v70(v64, v63, v66);
    sub_24AEC5E9C();
    v71 = (*(v68 + 88))(v67, v69);
    if (v71 == v62)
    {
      v72 = v1[93];
      v73 = v70;
      v74 = v1[84];
      v75 = v1[83];
      v76 = v1[82];
      v77 = v1[74];
      v429 = v77;
      v445 = v1[73];
      v375 = v1[75];
      v385 = v1[72];
      v395 = v1[70];
      v78 = v1[69];
      v79 = *&v78[v1[106]];
      v415 = v1[71];
      v80 = *(v75 + 16);
      v80(v72, v1[94], v76);
      v81 = (*(v75 + 80) + 24) & ~*(v75 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = v78;
      v73(v82 + v81, v72, v76);
      v1[54] = sub_24AEC5BB8;
      v1[55] = v82;
      v1[50] = MEMORY[0x277D85DD0];
      v1[51] = 1107296256;
      v1[52] = sub_24AEA5684;
      v1[53] = &block_descriptor_399;
      v83 = _Block_copy(v1 + 50);
      v84 = v78;
      sub_24AEC627C();
      v1[67] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v375, v385, v83);
      v85 = v83;
      v86 = v80;
      _Block_release(v85);
      (*(v415 + 8))(v385, v395);
      (*(v429 + 8))(v375, v445);
      v87 = v1[55];
    }

    else if (v71 == *(v1 + 222))
    {
      v114 = v1[93];
      v115 = v1[84];
      v116 = v70;
      v117 = v1[83];
      v118 = v1[82];
      v119 = v1[74];
      v417 = v119;
      v431 = v1[73];
      v368 = v1[75];
      v377 = v1[72];
      v387 = v1[70];
      v120 = v1[69];
      v397 = *&v120[v1[106]];
      loga = v1[71];
      v121 = *(v117 + 16);
      v121(v114, v1[94], v118);
      v122 = (*(v117 + 80) + 24) & ~*(v117 + 80);
      v123 = swift_allocObject();
      *(v123 + 16) = v120;
      v116(v123 + v122, v114, v118);
      v1[48] = sub_24AEC5738;
      v1[49] = v123;
      v1[44] = MEMORY[0x277D85DD0];
      v1[45] = 1107296256;
      v1[46] = sub_24AEA5684;
      v1[47] = &block_descriptor_393;
      v124 = _Block_copy(v1 + 44);
      v125 = v120;
      sub_24AEC627C();
      v1[66] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v368, v377, v124);
      v126 = v124;
      v86 = v121;
      _Block_release(v126);
      (loga[1].isa)(v377, v387);
      (*(v417 + 8))(v368, v431);
      v127 = v1[49];
    }

    else if (v71 == *(v1 + 223) || v71 == *(v1 + 224))
    {
      v86 = *(v1[83] + 16);
    }

    else if (v71 == *(v1 + 225))
    {
      v168 = v1[93];
      v169 = v1[84];
      v170 = v70;
      v171 = v1[83];
      v172 = v1[82];
      v173 = v1[74];
      v420 = v173;
      v434 = v1[73];
      v370 = v1[75];
      v380 = v1[72];
      v390 = v1[70];
      v174 = v1[69];
      v400 = *&v174[v1[106]];
      logc = v1[71];
      v175 = *(v171 + 16);
      v175(v168, v1[94], v172);
      v176 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v177 = swift_allocObject();
      *(v177 + 16) = v174;
      v170(v177 + v176, v168, v172);
      v1[42] = sub_24AEC572C;
      v1[43] = v177;
      v1[38] = MEMORY[0x277D85DD0];
      v1[39] = 1107296256;
      v1[40] = sub_24AEA5684;
      v1[41] = &block_descriptor_387;
      v178 = _Block_copy(v1 + 38);
      v179 = v174;
      sub_24AEC627C();
      v1[65] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v370, v380, v178);
      v180 = v178;
      v86 = v175;
      _Block_release(v180);
      (logc[1].isa)(v380, v390);
      (*(v420 + 8))(v370, v434);
      v181 = v1[43];
    }

    else
    {
      v86 = *(v1[83] + 16);
      v86(v1[92], v1[94], v1[82]);
      v243 = sub_24AEC623C();
      v244 = sub_24AEC644C();
      v245 = os_log_type_enabled(v243, v244);
      v246 = v1[92];
      v247 = v1[83];
      v248 = v1[82];
      if (v245)
      {
        v249 = v1[80];
        v250 = v1[77];
        v251 = v1[76];
        v449 = v244;
        v424 = v1[82];
        v252 = swift_slowAlloc();
        v438 = swift_slowAlloc();
        v468 = v438;
        *v252 = 136446466;
        *(v252 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
        *(v252 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
        v253 = sub_24AEC663C();
        logg = v243;
        v254 = v86;
        v256 = v255;
        v257 = *(v250 + 8);
        v257(v249, v251);
        (*(v247 + 8))(v246, v424);
        v258 = sub_24AEBFE20(v253, v256, &v468);
        v86 = v254;

        *(v252 + 14) = v258;
        _os_log_impl(&dword_24AE9B000, logg, v449, "%{public}s Unknown friend.type %s!", v252, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v438, -1, -1);
        MEMORY[0x24C234F80](v252, -1, -1);
      }

      else
      {
        v275 = v1[77];

        (*(v247 + 8))(v246, v248);
        v257 = *(v275 + 8);
      }

      v276 = v1[77] + 8;
      v257(v1[81], v1[76]);
    }

    v440 = v1[83] + 16;
    v86(v1[91], v1[94], v1[82]);
    v277 = sub_24AEC623C();
    v278 = sub_24AEC645C();
    v279 = os_log_type_enabled(v277, v278);
    v280 = v1[91];
    v281 = v1[83];
    v282 = v1[82];
    v451 = v86;
    if (v279)
    {
      v283 = swift_slowAlloc();
      v465 = swift_slowAlloc();
      v468 = v465;
      *v283 = 136446466;
      *(v283 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
      *(v283 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0]);
      v284 = sub_24AEC663C();
      v285 = v1;
      v287 = v286;
      v288 = *(v281 + 8);
      v288(v280, v282);
      v289 = sub_24AEBFE20(v284, v287, &v468);
      v1 = v285;

      *(v283 + 14) = v289;
      _os_log_impl(&dword_24AE9B000, v277, v278, "%{public}s Added friend: %s", v283, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v465, -1, -1);
      MEMORY[0x24C234F80](v283, -1, -1);
    }

    else
    {

      v288 = *(v281 + 8);
      v288(v280, v282);
    }

    v290 = v1[69] + v1[107];
    v291 = *v290;
    v196 = v460;
    if (*v290)
    {
      v292 = v1[94];
      v293 = v1[93];
      v294 = v1[82];
      v295 = *(v290 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v451(v293, v292, v294);

      v296 = FMLFriend.init(_:)(v293);
      v291(v296, 1);

      sub_24AE9C8F8(v291);
    }

    v297 = v1[94];
  }

  else if (v61 == *(v1 + 219))
  {
    v88 = *(v1 + 221);
    v89 = v1[98];
    v90 = v1[90];
    v91 = v1[83];
    v92 = v1[82];
    v93 = v1[79];
    v94 = v1[77];
    v95 = v1[76];
    (*(v1[96] + 96))(v89, v1[95]);
    v96 = *(v91 + 32);
    v96(v90, v89, v92);
    sub_24AEC5E9C();
    v97 = (*(v94 + 88))(v93, v95);
    if (v97 == v88)
    {
      v98 = v1[93];
      v99 = v96;
      v100 = v1[84];
      v101 = v1[83];
      v102 = v1[82];
      v103 = v1[74];
      v430 = v103;
      v446 = v1[73];
      v376 = v1[75];
      v386 = v1[72];
      v396 = v1[70];
      v104 = v1[69];
      v105 = *&v104[v1[106]];
      v416 = v1[71];
      v106 = *(v101 + 16);
      v106(v98, v1[90], v102);
      v107 = (*(v101 + 80) + 24) & ~*(v101 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = v104;
      v99(v108 + v107, v98, v102);
      v1[36] = sub_24AEC5720;
      v1[37] = v108;
      v1[32] = MEMORY[0x277D85DD0];
      v1[33] = 1107296256;
      v1[34] = sub_24AEA5684;
      v1[35] = &block_descriptor_381;
      v109 = _Block_copy(v1 + 32);
      v110 = v104;
      sub_24AEC627C();
      v1[64] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v376, v386, v109);
      v111 = v109;
      v112 = v106;
      _Block_release(v111);
      (*(v416 + 8))(v386, v396);
      (*(v430 + 8))(v376, v446);
      v113 = v1[37];
    }

    else if (v97 == *(v1 + 222))
    {
      v154 = v1[93];
      v155 = v1[84];
      v156 = v96;
      v157 = v1[83];
      v158 = v1[82];
      v159 = v1[74];
      v419 = v159;
      v433 = v1[73];
      v369 = v1[75];
      v379 = v1[72];
      v389 = v1[70];
      v160 = v1[69];
      v399 = *&v160[v1[106]];
      logb = v1[71];
      v161 = *(v157 + 16);
      v161(v154, v1[90], v158);
      v162 = (*(v157 + 80) + 24) & ~*(v157 + 80);
      v163 = swift_allocObject();
      *(v163 + 16) = v160;
      v156(v163 + v162, v154, v158);
      v1[30] = sub_24AEC56BC;
      v1[31] = v163;
      v1[26] = MEMORY[0x277D85DD0];
      v1[27] = 1107296256;
      v1[28] = sub_24AEA5684;
      v1[29] = &block_descriptor_375;
      v164 = _Block_copy(v1 + 26);
      v165 = v160;
      sub_24AEC627C();
      v1[63] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v369, v379, v164);
      v166 = v164;
      v112 = v161;
      _Block_release(v166);
      (logb[1].isa)(v379, v389);
      (*(v419 + 8))(v369, v433);
      v167 = v1[31];
    }

    else if (v97 == *(v1 + 223) || v97 == *(v1 + 224))
    {
      v112 = *(v1[83] + 16);
    }

    else if (v97 == *(v1 + 225))
    {
      v213 = v1[93];
      v214 = v1[84];
      v215 = v96;
      v216 = v1[83];
      v217 = v1[82];
      v218 = v1[74];
      v422 = v218;
      v436 = v1[73];
      v372 = v1[75];
      v382 = v1[72];
      v392 = v1[70];
      v219 = v1[69];
      v402 = *&v219[v1[106]];
      loge = v1[71];
      v220 = *(v216 + 16);
      v220(v213, v1[90], v217);
      v221 = (*(v216 + 80) + 24) & ~*(v216 + 80);
      v222 = swift_allocObject();
      *(v222 + 16) = v219;
      v215(v222 + v221, v213, v217);
      v1[24] = sub_24AEC5648;
      v1[25] = v222;
      v1[20] = MEMORY[0x277D85DD0];
      v1[21] = 1107296256;
      v1[22] = sub_24AEA5684;
      v1[23] = &block_descriptor_369;
      v223 = _Block_copy(v1 + 20);
      v224 = v219;
      sub_24AEC627C();
      v1[62] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v372, v382, v223);
      v225 = v223;
      v112 = v220;
      _Block_release(v225);
      (loge[1].isa)(v382, v392);
      (*(v422 + 8))(v372, v436);
      v226 = v1[25];
    }

    else
    {
      v112 = *(v1[83] + 16);
      v112(v1[89], v1[90], v1[82]);
      v259 = sub_24AEC623C();
      v260 = sub_24AEC644C();
      v261 = os_log_type_enabled(v259, v260);
      v262 = v1[89];
      v263 = v1[83];
      v264 = v1[82];
      if (v261)
      {
        v265 = v1[80];
        v266 = v1[77];
        v267 = v1[76];
        v450 = v260;
        v425 = v1[82];
        v268 = swift_slowAlloc();
        v439 = swift_slowAlloc();
        v468 = v439;
        *v268 = 136446466;
        *(v268 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
        *(v268 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
        v269 = sub_24AEC663C();
        logh = v259;
        v270 = v112;
        v272 = v271;
        v273 = *(v266 + 8);
        v273(v265, v267);
        (*(v263 + 8))(v262, v425);
        v274 = sub_24AEBFE20(v269, v272, &v468);
        v112 = v270;

        *(v268 + 14) = v274;
        _os_log_impl(&dword_24AE9B000, logh, v450, "%{public}s Unknown friend.type %s!", v268, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v439, -1, -1);
        MEMORY[0x24C234F80](v268, -1, -1);
      }

      else
      {
        v314 = v1[77];

        (*(v263 + 8))(v262, v264);
        v273 = *(v314 + 8);
      }

      v315 = v1[77] + 8;
      v273(v1[79], v1[76]);
    }

    v442 = v1[83] + 16;
    v112(v1[88], v1[90], v1[82]);
    v316 = sub_24AEC623C();
    v317 = sub_24AEC645C();
    v318 = os_log_type_enabled(v316, v317);
    v319 = v1[88];
    v320 = v1[83];
    v321 = v1[82];
    v453 = v112;
    if (v318)
    {
      v322 = swift_slowAlloc();
      v466 = swift_slowAlloc();
      v468 = v466;
      *v322 = 136446466;
      *(v322 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
      *(v322 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0]);
      v323 = sub_24AEC663C();
      v324 = v1;
      v326 = v325;
      v288 = *(v320 + 8);
      v288(v319, v321);
      v327 = sub_24AEBFE20(v323, v326, &v468);
      v1 = v324;

      *(v322 + 14) = v327;
      _os_log_impl(&dword_24AE9B000, v316, v317, "%{public}s Removed friend: %s", v322, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v466, -1, -1);
      MEMORY[0x24C234F80](v322, -1, -1);
    }

    else
    {

      v288 = *(v320 + 8);
      v288(v319, v321);
    }

    v328 = v1[69] + v1[107];
    v329 = *v328;
    v196 = v460;
    if (*v328)
    {
      v330 = v1[93];
      v331 = v1[90];
      v332 = v1[82];
      v333 = *(v328 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v453(v330, v331, v332);

      v334 = FMLFriend.init(_:)(v330);
      v329(v334, 0);

      sub_24AE9C8F8(v329);
    }

    v297 = v1[90];
  }

  else
  {
    if (v61 != *(v1 + 220))
    {
      v182 = v1 + 98;
      v23(v1[97], v1[101], v1[95]);
      v183 = sub_24AEC623C();
      v184 = sub_24AEC644C();
      v185 = os_log_type_enabled(v183, v184);
      v458 = v1[101];
      if (v185)
      {
        v186 = v1[99];
        v187 = v1[97];
        v188 = v1[95];
        v448 = v1[96] + 8;
        v189 = v23;
        v190 = swift_slowAlloc();
        v464 = v1;
        v468 = swift_slowAlloc();
        v191 = v468;
        *v190 = 136315138;
        v189(v186, v187, v188);
        v192 = sub_24AEC630C();
        v194 = v193;
        v195 = v187;
        v196 = v460;
        v460(v195, v188);
        v197 = sub_24AEBFE20(v192, v194, &v468);

        *(v190 + 4) = v197;
        _os_log_impl(&dword_24AE9B000, v183, v184, "Unknown friendship update type %s", v190, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v191);
        v198 = v191;
        v1 = v464;
        MEMORY[0x24C234F80](v198, -1, -1);
        MEMORY[0x24C234F80](v190, -1, -1);
      }

      else
      {
        v227 = v1[97];
        v228 = v1[96];
        v188 = v1[95];

        v196 = v460;
        v460(v227, v188);
      }

      v460(v458, v188);
      goto LABEL_86;
    }

    v128 = *(v1 + 221);
    v129 = v1[98];
    v130 = v1[87];
    v131 = v1[83];
    v132 = v1[82];
    v133 = v1[78];
    v134 = v1[77];
    v135 = v1[76];
    (*(v1[96] + 96))(v129, v1[95]);
    v136 = *(v131 + 32);
    v136(v130, v129, v132);
    sub_24AEC5E9C();
    v137 = (*(v134 + 88))(v133, v135);
    if (v137 == v128)
    {
      v138 = v1[93];
      v139 = v136;
      v140 = v1[84];
      v141 = v1[83];
      v142 = v1[82];
      v143 = v1[74];
      v432 = v143;
      v447 = v1[73];
      v378 = v1[75];
      v388 = v1[72];
      v398 = v1[70];
      v144 = v1[69];
      v145 = *&v144[v1[106]];
      v418 = v1[71];
      v146 = *(v141 + 16);
      v146(v138, v1[87], v142);
      v147 = (*(v141 + 80) + 24) & ~*(v141 + 80);
      v148 = swift_allocObject();
      *(v148 + 16) = v144;
      v139(v148 + v147, v138, v142);
      v1[18] = sub_24AEC563C;
      v1[19] = v148;
      v1[14] = MEMORY[0x277D85DD0];
      v1[15] = 1107296256;
      v1[16] = sub_24AEA5684;
      v1[17] = &block_descriptor_363;
      v149 = _Block_copy(v1 + 14);
      v150 = v144;
      sub_24AEC627C();
      v1[61] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v378, v388, v149);
      v151 = v149;
      v152 = v146;
      _Block_release(v151);
      (*(v418 + 8))(v388, v398);
      (*(v432 + 8))(v378, v447);
      v153 = v1[19];
    }

    else if (v137 == *(v1 + 222))
    {
      v199 = v1[93];
      v200 = v1[84];
      v201 = v136;
      v202 = v1[83];
      v203 = v1[82];
      v204 = v1[74];
      v421 = v204;
      v435 = v1[73];
      v371 = v1[75];
      v381 = v1[72];
      v391 = v1[70];
      v205 = v1[69];
      v401 = *&v205[v1[106]];
      logd = v1[71];
      v206 = *(v202 + 16);
      v206(v199, v1[87], v203);
      v207 = (*(v202 + 80) + 24) & ~*(v202 + 80);
      v208 = swift_allocObject();
      *(v208 + 16) = v205;
      v201(v208 + v207, v199, v203);
      v1[12] = sub_24AEC5BB4;
      v1[13] = v208;
      v1[8] = MEMORY[0x277D85DD0];
      v1[9] = 1107296256;
      v1[10] = sub_24AEA5684;
      v1[11] = &block_descriptor_357;
      v209 = _Block_copy(v1 + 8);
      v210 = v205;
      sub_24AEC627C();
      v1[60] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v371, v381, v209);
      v211 = v209;
      v152 = v206;
      _Block_release(v211);
      (logd[1].isa)(v381, v391);
      (*(v421 + 8))(v371, v435);
      v212 = v1[13];
    }

    else if (v137 == *(v1 + 223) || v137 == *(v1 + 224))
    {
      v152 = *(v1[83] + 16);
    }

    else if (v137 == *(v1 + 225))
    {
      v229 = v1[93];
      v230 = v1[84];
      v231 = v136;
      v232 = v1[83];
      v233 = v1[82];
      v234 = v1[74];
      v423 = v234;
      v437 = v1[73];
      v373 = v1[75];
      v383 = v1[72];
      v393 = v1[70];
      v235 = v1[69];
      v403 = *&v235[v1[106]];
      logf = v1[71];
      v236 = *(v232 + 16);
      v236(v229, v1[87], v233);
      v237 = (*(v232 + 80) + 24) & ~*(v232 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = v235;
      v231(v238 + v237, v229, v233);
      v1[6] = sub_24AEC5BB0;
      v1[7] = v238;
      v1[2] = MEMORY[0x277D85DD0];
      v1[3] = 1107296256;
      v1[4] = sub_24AEA5684;
      v1[5] = &block_descriptor_351;
      v239 = _Block_copy(v1 + 2);
      v240 = v235;
      sub_24AEC627C();
      v1[59] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v373, v383, v239);
      v241 = v239;
      v152 = v236;
      _Block_release(v241);
      (logf[1].isa)(v383, v393);
      (*(v423 + 8))(v373, v437);
      v242 = v1[7];
    }

    else
    {
      v152 = *(v1[83] + 16);
      v152(v1[86], v1[87], v1[82]);
      v298 = sub_24AEC623C();
      v299 = sub_24AEC644C();
      v300 = os_log_type_enabled(v298, v299);
      v301 = v1[86];
      v302 = v1[83];
      v303 = v1[82];
      if (v300)
      {
        v304 = v1[80];
        v305 = v1[77];
        v306 = v1[76];
        v452 = v299;
        v426 = v1[82];
        v307 = swift_slowAlloc();
        v441 = swift_slowAlloc();
        v468 = v441;
        *v307 = 136446466;
        *(v307 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
        *(v307 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
        v308 = sub_24AEC663C();
        logi = v298;
        v309 = v152;
        v311 = v310;
        v312 = *(v305 + 8);
        v312(v304, v306);
        (*(v302 + 8))(v301, v426);
        v313 = sub_24AEBFE20(v308, v311, &v468);
        v152 = v309;

        *(v307 + 14) = v313;
        _os_log_impl(&dword_24AE9B000, logi, v452, "%{public}s Unknown friend.type %s!", v307, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v441, -1, -1);
        MEMORY[0x24C234F80](v307, -1, -1);
      }

      else
      {
        v335 = v1[77];

        (*(v302 + 8))(v301, v303);
        v312 = *(v335 + 8);
      }

      v336 = v1[77] + 8;
      v312(v1[78], v1[76]);
    }

    v443 = v1[83] + 16;
    v152(v1[85], v1[87], v1[82]);
    v337 = sub_24AEC623C();
    v338 = sub_24AEC645C();
    v339 = os_log_type_enabled(v337, v338);
    v340 = v1[85];
    v341 = v1[83];
    v342 = v1[82];
    v454 = v152;
    if (v339)
    {
      v343 = swift_slowAlloc();
      v467 = swift_slowAlloc();
      v468 = v467;
      *v343 = 136446466;
      *(v343 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v468);
      *(v343 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0]);
      v344 = sub_24AEC663C();
      v345 = v1;
      v347 = v346;
      v288 = *(v341 + 8);
      v288(v340, v342);
      v348 = sub_24AEBFE20(v344, v347, &v468);
      v1 = v345;

      *(v343 + 14) = v348;
      _os_log_impl(&dword_24AE9B000, v337, v338, "%{public}s Modified friend: %s", v343, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v467, -1, -1);
      MEMORY[0x24C234F80](v343, -1, -1);
    }

    else
    {

      v288 = *(v341 + 8);
      v288(v340, v342);
    }

    v349 = v1[69] + v1[107];
    v350 = *v349;
    v196 = v460;
    if (*v349)
    {
      v351 = v1[93];
      v352 = v1[87];
      v353 = v1[82];
      v354 = *(v349 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v454(v351, v352, v353);

      v355 = FMLFriend.init(_:)(v351);
      v350(v355, 2);

      sub_24AE9C8F8(v350);
    }

    v297 = v1[87];
  }

  v356 = v1[83] + 8;
  v288(v297, v1[82]);
  v182 = v456;
LABEL_86:
  v357 = v1[96] + 8;
  v196(*v182, v1[95]);
  v358 = *(MEMORY[0x277D85798] + 4);
  v359 = swift_task_alloc();
  v1[108] = v359;
  *v359 = v1;
  v359[1] = sub_24AEAE094;
  v360 = v1[105];
  v361 = v1[103];
  v362 = v1[102];

  return MEMORY[0x2822003E8](v362, 0, 0, v361);
}

uint64_t sub_24AEB0D04(uint64_t a1, uint64_t a2)
{
  v68[1] = a2;
  v3 = sub_24AEC5F4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v68 - v13;
  sub_24AEC5ECC();
  v15 = sub_24AEC5EFC();
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v10, v3);
  swift_beginAccess();
  sub_24AEC062C(v15, v17, v14);
  sub_24AEA5484(v14, &qword_27EFC01D8, &qword_24AEC8CD8);
  swift_endAccess();

  sub_24AEC5ECC();
  v19 = sub_24AEC5F1C();
  v18(v8, v3);
  v20 = *(v19 + 16);
  if (v20)
  {
    v70 = MEMORY[0x277D84F90];
    sub_24AEC656C();
    v21 = objc_opt_self();
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      v25 = sub_24AEC62EC();

      v26 = [v21 handleWithIdentifier_];

      sub_24AEC654C();
      v27 = *(v70 + 16);
      sub_24AEC657C();
      sub_24AEC658C();
      sub_24AEC655C();
      v22 += 2;
      --v20;
    }

    while (v20);

    v29 = v70;
    if (!(v70 >> 62))
    {
LABEL_5:
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }
  }

  result = sub_24AEC65AC();
  v30 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v30 < 1)
  {
    goto LABEL_39;
  }

  v31 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
  if ((v29 & 0xC000000000000001) == 0)
  {
    v50 = 32;
    do
    {
      v52 = *(v29 + v50);
      swift_beginAccess();
      v53 = *(a1 + v31);
      if ((v53 & 0xC000000000000001) != 0)
      {
        if (v53 < 0)
        {
          v54 = *(a1 + v31);
        }

        else
        {
          v54 = v53 & 0xFFFFFFFFFFFFFF8;
        }

        v55 = v52;
        if (sub_24AEC65BC())
        {
          swift_unknownObjectRelease();

          v56 = sub_24AEC65AC();
          v57 = sub_24AEC07B0(v54, v56);

          v58 = sub_24AEC09FC(v55);
          v60 = v59;

          if ((v60 & 1) == 0)
          {
            goto LABEL_38;
          }

          v61 = *(*(v57 + 56) + 8 * v58);
          sub_24AEC1144(v58, v57);

          *(a1 + v31) = v57;
        }
      }

      else
      {
        v62 = sub_24AEC09FC(v52);
        if (v63)
        {
          v64 = v62;
          v65 = *(a1 + v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = *(a1 + v31);
          v69 = v67;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24AEC19A8();
            v67 = v69;
          }

          v51 = *(*(v67 + 56) + 8 * v64);
          sub_24AEC1144(v64, v67);
          *(a1 + v31) = v67;
        }
      }

      swift_endAccess();

      v50 += 8;
      --v30;
    }

    while (v30);
  }

  v32 = 0;
  while (1)
  {
    v34 = MEMORY[0x24C234830](v32, v29);
    swift_beginAccess();
    v35 = *(a1 + v31);
    if ((v35 & 0xC000000000000001) == 0)
    {
      v43 = *(a1 + v31);
      v44 = sub_24AEC09FC(v34);
      if (v45)
      {
        v46 = v44;
        v47 = *(a1 + v31);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(a1 + v31);
        v69 = v49;
        if (!v48)
        {
          sub_24AEC19A8();
          v49 = v69;
        }

        v33 = *(*(v49 + 56) + 8 * v46);
        sub_24AEC1144(v46, v49);
        *(a1 + v31) = v49;
      }

      goto LABEL_10;
    }

    v36 = v35 < 0 ? *(a1 + v31) : v35 & 0xFFFFFFFFFFFFFF8;
    if (sub_24AEC65BC())
    {
      break;
    }

LABEL_10:
    ++v32;
    swift_endAccess();
    swift_unknownObjectRelease();
    if (v30 == v32)
    {
    }
  }

  swift_unknownObjectRelease();

  v37 = sub_24AEC65AC();
  v38 = sub_24AEC07B0(v36, v37);

  v39 = sub_24AEC09FC(v34);
  v41 = v40;

  if (v41)
  {

    v42 = *(*(v38 + 56) + 8 * v39);
    sub_24AEC1144(v39, v38);

    *(a1 + v31) = v38;

    goto LABEL_10;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24AEB12A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_24AEC5F4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  sub_24AEC5ECC();
  v13 = sub_24AEC5EFC();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = *a3;
  swift_beginAccess();
  sub_24AEC062C(v13, v15, v12);
  sub_24AEA5484(v12, &qword_27EFC01D8, &qword_24AEC8CD8);
  swift_endAccess();
}

uint64_t sub_24AEB143C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_24AEC5F4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  v14 = sub_24AEC5EFC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = sub_24AEC5EEC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8, a2, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = *a3;
  swift_beginAccess();
  sub_24AEABF6C(v8, v14, v16);
  return swift_endAccess();
}

uint64_t sub_24AEB17B0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AEC5BBC;

  return ObjCBootstrap.startUpdatingFriends(initialUpdates:)(a1);
}

uint64_t ObjCBootstrap.stopUpdatingFriends()()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEB18DC, 0, 0);
}

uint64_t sub_24AEB18DC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB19CC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB19CC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB1AE4, 0, 0);
}

uint64_t sub_24AEB1AE4()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[8] = v2;

  if (v2)
  {
    v3 = v1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock;
    os_unfair_lock_lock(v3);
    if (*(v3 + 8))
    {
      sub_24AEC641C();
      v4 = *(v3 + 8);
    }

    *(v3 + 8) = 0;

    os_unfair_lock_unlock(v3);
    v5 = *(MEMORY[0x277D093B8] + 4);
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_24AEB1D58;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v7 = sub_24AEC625C();
    __swift_project_value_buffer(v7, qword_280E21578);
    v8 = sub_24AEC623C();
    v9 = sub_24AEC644C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AE9B000, v8, v9, "Missing FindMyLocate.Session!", v10, 2u);
      MEMORY[0x24C234F80](v10, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v11 = v0[2];
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AEB1D58()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_24AEB1F90;
  }

  else
  {
    v3 = sub_24AEB1E6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB1E6C()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully stopUpdatingFriends", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AEB1F90()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AEB2168(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEB2210;

  return ObjCBootstrap.stopUpdatingFriends()();
}

uint64_t sub_24AEB2210()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_24AEC5C9C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t ObjCBootstrap.startMonitoringActiveLocationSharingDevice()()
{
  v1[4] = v0;
  v1[5] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v1[9] = *(v4 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB24B8, 0, 0);
}

uint64_t sub_24AEB24B8()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB25A8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB25A8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB26C0, 0, 0);
}

uint64_t sub_24AEB26C0()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[14] = v1;

  if (v1)
  {
    v2 = *(MEMORY[0x277D09448] + 4);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_24AEB2904;
    v4 = v0[11];

    return MEMORY[0x28215FB78](v4);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC644C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE9B000, v6, v7, "Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x24C234F80](v8, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v9 = v0[2];
    swift_willThrow();
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[6];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24AEB2904()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_24AEB2BE8;
  }

  else
  {
    v3 = sub_24AEB2A18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB2A18()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v15 = v0[5];
  v16 = v0[14];
  v8 = sub_24AEC63EC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v4 + 16))(v1, v2, v6);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v9, v1, v6);
  *(v11 + v10) = v7;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v12 = v7;
  sub_24AEA2EF0(0, 0, v5, &unk_24AEC8A38, v11);

  (*(v4 + 8))(v2, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AEB2BE8()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AEB2C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01E8, &qword_24AEC8CE0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_24AEC5D9C();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01F0, &qword_24AEC8CE8) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01F8, &qword_24AEC8CF0);
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB2E30, 0, 0);
}

uint64_t sub_24AEB2E30()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28);
  sub_24AEC63FC();
  *(v0 + 152) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback;
  swift_beginAccess();
  v4 = *MEMORY[0x277D09178];
  *(v0 + 168) = *MEMORY[0x277D091A0];
  *(v0 + 172) = v4;
  v5 = *MEMORY[0x277D09180];
  *(v0 + 176) = *MEMORY[0x277D09198];
  *(v0 + 180) = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_24AEB2F5C;
  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);

  return MEMORY[0x2822003E8](v9, 0, 0, v10);
}

uint64_t sub_24AEB2F5C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB3058, 0, 0);
}

uint64_t sub_24AEB3058()
{
  v73 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 112);
    (*(v3 + 32))(v18, v1, v2);
    v19 = (*(v3 + 88))(v18, v2);
    if (v19 == v17)
    {
      v20 = *(v0 + 112);
      v21 = *(v0 + 88);
      (*(*(v0 + 104) + 96))(v20, *(v0 + 96));
      sub_24AEC5340(v20, v21, &qword_27EFC01E8, &qword_24AEC8CE0);
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      v24 = sub_24AEC625C();
      __swift_project_value_buffer(v24, qword_280E21578);
      sub_24AEC5A6C(v23, v22, &qword_27EFC01E8, &qword_24AEC8CE0);
      v25 = sub_24AEC623C();
      v26 = sub_24AEC645C();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 80);
      if (v27)
      {
        v29 = *(v0 + 72);
        v30 = *(v0 + 56);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v72 = v32;
        *v31 = 136315138;
        sub_24AEC5A6C(v28, v29, &qword_27EFC01E8, &qword_24AEC8CE0);
        v33 = sub_24AEC630C();
        v35 = v34;
        sub_24AEA5484(v28, &qword_27EFC01E8, &qword_24AEC8CE0);
        v36 = sub_24AEBFE20(v33, v35, &v72);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_24AE9B000, v25, v26, "preferencesChangeStream received meDevice updated: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C234F80](v32, -1, -1);
        MEMORY[0x24C234F80](v31, -1, -1);
      }

      else
      {

        sub_24AEA5484(v28, &qword_27EFC01E8, &qword_24AEC8CE0);
      }

      v46 = *(v0 + 48) + *(v0 + 152);
      v47 = *v46;
      if (*v46)
      {
        v48 = *(v46 + 8);
        v49 = *(v0 + 88);
        v50 = sub_24AEC5E5C();
        v51 = *(v50 - 8);
        v52 = *(v51 + 48);
        if (v52(v49, 1, v50) == 1)
        {

          v53 = 0;
        }

        else
        {
          v71 = v51;
          v54 = *(v0 + 64);
          sub_24AEC5A6C(v49, v54, &qword_27EFC01E8, &qword_24AEC8CE0);
          v55 = v52(v54, 1, v50);
          if (v55 == 1)
          {
            __break(1u);
            return MEMORY[0x2822003E8](v55, v56, v57, v58);
          }

          v59 = *(v0 + 64);
          v70 = objc_allocWithZone(FMLDevice);

          sub_24AEC5E1C();
          v69 = sub_24AEC62EC();

          sub_24AEC5E0C();
          v60 = sub_24AEC62EC();

          sub_24AEC5DEC();
          v61 = sub_24AEC62EC();

          v62 = sub_24AEC5E4C();
          v63 = sub_24AEC5DFC();
          v64 = sub_24AEC5E2C();
          LOBYTE(v68) = sub_24AEC5E3C() & 1;
          v53 = [v70 initWithIdentifier:v69 deviceName:v60 idsDeviceId:v61 isActive:v62 & 1 isThisDevice:v63 & 1 isCompanion:v64 & 1 isAutoMeCapable:v68];

          (*(v71 + 8))(v59, v50);
        }

        v47(v53);

        sub_24AE9C8F8(v47);
      }

      sub_24AEA5484(*(v0 + 88), &qword_27EFC01E8, &qword_24AEC8CE0);
    }

    else if (v19 != *(v0 + 172) && v19 != *(v0 + 176) && v19 != *(v0 + 180))
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v39 = sub_24AEC625C();
      __swift_project_value_buffer(v39, qword_280E21578);
      v40 = sub_24AEC623C();
      v41 = sub_24AEC644C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24AE9B000, v40, v41, "Unknown me device update type", v42, 2u);
        MEMORY[0x24C234F80](v42, -1, -1);
      }

      v44 = *(v0 + 104);
      v43 = *(v0 + 112);
      v45 = *(v0 + 96);

      (*(v44 + 8))(v43, v45);
    }

    v65 = *(MEMORY[0x277D85798] + 4);
    v66 = swift_task_alloc();
    *(v0 + 160) = v66;
    *v66 = v0;
    v66[1] = sub_24AEB2F5C;
    v67 = *(v0 + 144);
    v55 = *(v0 + 120);
    v58 = *(v0 + 128);
    v56 = 0;
    v57 = 0;

    return MEMORY[0x2822003E8](v55, v56, v57, v58);
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v4 = sub_24AEC625C();
  __swift_project_value_buffer(v4, qword_280E21578);
  v5 = sub_24AEC623C();
  v6 = sub_24AEC645C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24AE9B000, v5, v6, "Successfully startMonitoringActiveLocationSharingDevice", v7, 2u);
    MEMORY[0x24C234F80](v7, -1, -1);
  }

  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AEB3920(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEC5BBC;

  return ObjCBootstrap.startMonitoringActiveLocationSharingDevice()();
}

uint64_t ObjCBootstrap.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEB3A3C, 0, 0);
}

uint64_t sub_24AEB3A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 48);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB3B2C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB3B2C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB3C44, 0, 0);
}

uint64_t sub_24AEB3C44()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[10] = v1;

  if (v1)
  {
    v2 = *(MEMORY[0x277D09440] + 4);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_24AEB3E6C;
    v5 = v0[4];
    v4 = v0[5];

    return MEMORY[0x28215FB70](v5, v4);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v6 = sub_24AEC625C();
    __swift_project_value_buffer(v6, qword_280E21578);
    v7 = sub_24AEC623C();
    v8 = sub_24AEC644C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AE9B000, v7, v8, "Missing FindMyLocate.Session!", v9, 2u);
      MEMORY[0x24C234F80](v9, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v10 = v0[2];
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24AEB3E6C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_24AEB40A4;
  }

  else
  {
    v3 = sub_24AEB3F80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB3F80()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully set active location sharing device", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AEB40A4()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_24AEC625C();
  __swift_project_value_buffer(v2, qword_280E21578);
  v3 = v1;
  v4 = sub_24AEC623C();
  v5 = sub_24AEC644C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = sub_24AEC5C9C();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AE9B000, v4, v5, "Error setting active location sharing device: %{public}@", v7, 0xCu);
    sub_24AEA5484(v8, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v8, -1, -1);
    MEMORY[0x24C234F80](v7, -1, -1);
  }

  v10 = v0[12];
  v11 = v0[10];

  swift_willThrow();

  v12 = v0[12];
  v13 = v0[1];

  return v13();
}

uint64_t sub_24AEB43C8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_24AEC62FC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_24AEC5B64;

  return ObjCBootstrap.setActiveLocationSharingDevice(_:)(v5, v7);
}

uint64_t ObjCBootstrap.getActiveLocationSharingDevice()()
{
  v1[4] = v0;
  v1[5] = swift_getObjectType();
  v2 = sub_24AEC5E5C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB4580, 0, 0);
}

uint64_t sub_24AEB4580()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB4670;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB4670()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB4788, 0, 0);
}

uint64_t sub_24AEB4788()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[13] = v1;

  if (v1)
  {
    v2 = *(MEMORY[0x277D09410] + 4);
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_24AEB49D0;
    v4 = v0[10];

    return MEMORY[0x28215FB40](v4, 1);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC644C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE9B000, v6, v7, "Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x24C234F80](v8, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v9 = v0[2];
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24AEB49D0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_24AEB4DCC;
  }

  else
  {
    v3 = sub_24AEB4AE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB4AE4()
{
  v32 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v30 = *(v4 + 16);
  v30(v1, v2, v3);
  v6 = sub_24AEC623C();
  v7 = sub_24AEC645C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v12 = 136315138;
    sub_24AEC59BC(&qword_27EFC0158, MEMORY[0x277D092B0]);
    v13 = sub_24AEC663C();
    v15 = v14;
    v28 = v7;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = v16;
    v18 = sub_24AEBFE20(v13, v15, &v31);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v6, v28, "Successfully get active location sharing device: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C234F80](v29, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v17 = v19;
  }

  v20 = v0[13];
  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[8];
  v24 = v0[6];
  sub_24AEC52B4(0, &qword_27EFC0150, off_278FFF8D8);
  v30(v23, v21, v24);
  v25 = sub_24AEA1530(v23);

  v17(v21, v24);

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_24AEB4DCC()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_24AEC625C();
  __swift_project_value_buffer(v2, qword_280E21578);
  v3 = v1;
  v4 = sub_24AEC623C();
  v5 = sub_24AEC644C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = sub_24AEC5C9C();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AE9B000, v4, v5, "Error getting active location sharing device: %{public}@", v7, 0xCu);
    sub_24AEA5484(v8, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v8, -1, -1);
    MEMORY[0x24C234F80](v7, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[13];

  swift_willThrow();

  v12 = v0[15];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AEB50F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEB51A0;

  return ObjCBootstrap.getActiveLocationSharingDevice()();
}

uint64_t sub_24AEB51A0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_24AEC5C9C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t ObjCBootstrap.getFriends(with:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v2[27] = swift_getObjectType();
  v3 = sub_24AEC5EEC();
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = sub_24AEC626C();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v9 = sub_24AEC628C();
  v2[37] = v9;
  v10 = *(v9 - 8);
  v2[38] = v10;
  v11 = *(v10 + 64) + 15;
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB54E8, 0, 0);
}

uint64_t sub_24AEB54E8()
{
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *(v1 + 16) = *(v0 + 208);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB55D8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB55D8()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB56F0, 0, 0);
}

uint64_t sub_24AEB56F0()
{
  v1 = *(v0[26] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[42] = v1;

  if (v1)
  {
    v2 = v0[25];
    if (v2 > 1)
    {
      if ((v2 - 2) < 2)
      {
        if (qword_280E21548 != -1)
        {
          swift_once();
        }

        v3 = sub_24AEC625C();
        __swift_project_value_buffer(v3, qword_280E21578);
        v4 = sub_24AEC623C();
        v5 = sub_24AEC645C();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_32;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "getFriends with unsupported handle Type, return emtpy list";
LABEL_31:
        _os_log_impl(&dword_24AE9B000, v4, v5, v7, v6, 2u);
        MEMORY[0x24C234F80](v6, -1, -1);
LABEL_32:

        v28 = v0[39];
        v29 = v0[36];
        v31 = v0[32];
        v30 = v0[33];
        v33 = v0[30];
        v32 = v0[31];

        v34 = v0[1];
        v35 = MEMORY[0x277D84F90];

        return v34(v35);
      }

      if (v2 == 4)
      {
        v23 = *(MEMORY[0x277D09400] + 4);
        v24 = swift_task_alloc();
        v0[49] = v24;
        *v24 = v0;
        v24[1] = sub_24AEB67FC;

        return MEMORY[0x28215FB28]();
      }

LABEL_27:
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v27 = sub_24AEC625C();
      __swift_project_value_buffer(v27, qword_280E21578);
      v4 = sub_24AEC623C();
      v5 = sub_24AEC644C();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_32;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "getFriends with unknown handle Type, return empty list";
      goto LABEL_31;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_27;
      }

      v21 = *(MEMORY[0x277D09430] + 4);
      v22 = swift_task_alloc();
      v0[46] = v22;
      *v22 = v0;
      v22[1] = sub_24AEB6228;

      return MEMORY[0x28215FB60]();
    }

    else
    {
      v25 = *(MEMORY[0x277D09330] + 4);
      v26 = swift_task_alloc();
      v0[43] = v26;
      *v26 = v0;
      v26[1] = sub_24AEB5C54;

      return MEMORY[0x28215FA40]();
    }
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v8 = sub_24AEC625C();
    __swift_project_value_buffer(v8, qword_280E21578);
    v9 = sub_24AEC623C();
    v10 = sub_24AEC644C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AE9B000, v9, v10, "Missing FindMyLocate.Session!", v11, 2u);
      MEMORY[0x24C234F80](v11, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[21] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v12 = v0[20];
    swift_willThrow();
    v13 = v0[39];
    v14 = v0[36];
    v16 = v0[32];
    v15 = v0[33];
    v18 = v0[30];
    v17 = v0[31];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_24AEB5C54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_24AEB6DD4;
  }

  else
  {
    v5 = sub_24AEB5D68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEB5D68()
{
  v50 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v48 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v46 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[18] = sub_24AEC3F3C;
  v0[19] = v8;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24AEA5684;
  v0[17] = &block_descriptor_57;
  v9 = _Block_copy(v0 + 14);
  v10 = v7;

  sub_24AEC627C();
  v0[24] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v48);
  v11 = v0[19];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[44];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[44];
    v17 = v0[28];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C234690](v16, v17);
    v22 = sub_24AEBFE20(v20, v21, &v49);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Followers: %s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v18, -1, -1);
  }

  v23 = v0[44];
  v49 = MEMORY[0x277D84F90];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v28 = *(v25 + 16);
    v26 = v25 + 16;
    v27 = v28;
    v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v47 = *(v26 + 56);
    do
    {
      v30 = v0[32];
      v31 = v0[33];
      v32 = v0[28];
      v27(v31, v29, v32);
      v27(v30, v31, v32);
      FMLFriend.init(_:)(v30);
      v33 = (*(v26 - 8))(v31, v32);
      MEMORY[0x24C234660](v33);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v29 += v47;
      --v24;
    }

    while (v24);
    v35 = v0[44];
    v36 = v49;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v37 = v0[42];

  v38 = v0[39];
  v39 = v0[36];
  v41 = v0[32];
  v40 = v0[33];
  v43 = v0[30];
  v42 = v0[31];

  v44 = v0[1];

  return v44(v36);
}

uint64_t sub_24AEB6228(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_24AEB6E84;
  }

  else
  {
    v5 = sub_24AEB633C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEB633C()
{
  v50 = v0;
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v48 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v46 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[12] = sub_24AEC3F18;
  v0[13] = v8;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AEA5684;
  v0[11] = &block_descriptor_50;
  v9 = _Block_copy(v0 + 8);
  v10 = v7;

  sub_24AEC627C();
  v0[23] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v48);
  v11 = v0[13];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[47];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[47];
    v17 = v0[28];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C234690](v16, v17);
    v22 = sub_24AEBFE20(v20, v21, &v49);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Followings: %s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v18, -1, -1);
  }

  v23 = v0[47];
  v49 = MEMORY[0x277D84F90];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v28 = *(v25 + 16);
    v26 = v25 + 16;
    v27 = v28;
    v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v47 = *(v26 + 56);
    do
    {
      v31 = v0[31];
      v30 = v0[32];
      v32 = v0[28];
      v27(v31, v29, v32);
      v27(v30, v31, v32);
      FMLFriend.init(_:)(v30);
      v33 = (*(v26 - 8))(v31, v32);
      MEMORY[0x24C234660](v33);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v29 += v47;
      --v24;
    }

    while (v24);
    v35 = v0[47];
    v36 = v49;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v37 = v0[42];

  v38 = v0[39];
  v39 = v0[36];
  v41 = v0[32];
  v40 = v0[33];
  v43 = v0[30];
  v42 = v0[31];

  v44 = v0[1];

  return v44(v36);
}

uint64_t sub_24AEB67FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v5 = sub_24AEB6F34;
  }

  else
  {
    v5 = sub_24AEB6910;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEB6910()
{
  v50 = v0;
  v1 = v0[50];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v48 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v46 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[6] = sub_24AEC3E78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA5684;
  v0[5] = &block_descriptor_0;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;

  sub_24AEC627C();
  v0[22] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v48);
  v11 = v0[7];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[50];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[50];
    v17 = v0[28];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C234690](v16, v17);
    v22 = sub_24AEBFE20(v20, v21, &v49);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Pending Offers: %s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v18, -1, -1);
  }

  v23 = v0[50];
  v49 = MEMORY[0x277D84F90];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v28 = *(v25 + 16);
    v26 = v25 + 16;
    v27 = v28;
    v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v47 = *(v26 + 56);
    do
    {
      v30 = v0[32];
      v31 = v0[30];
      v32 = v0[28];
      v27(v31, v29, v32);
      v27(v30, v31, v32);
      FMLFriend.init(_:)(v30);
      v33 = (*(v26 - 8))(v31, v32);
      MEMORY[0x24C234660](v33);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v29 += v47;
      --v24;
    }

    while (v24);
    v35 = v0[50];
    v36 = v49;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v37 = v0[42];

  v38 = v0[39];
  v39 = v0[36];
  v41 = v0[32];
  v40 = v0[33];
  v43 = v0[30];
  v42 = v0[31];

  v44 = v0[1];

  return v44(v36);
}

uint64_t sub_24AEB6DD4()
{
  v1 = v0[42];

  v2 = v0[45];
  v3 = v0[39];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AEB6E84()
{
  v1 = v0[42];

  v2 = v0[48];
  v3 = v0[39];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AEB6F34()
{
  v1 = v0[42];

  v2 = v0[51];
  v3 = v0[39];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AEB6FE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = a3;
  v47 = a1;
  v56 = sub_24AEC5F4C();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AEC5EEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v45 - v13;
  v14 = sub_24AEC4F6C(MEMORY[0x277D84F90]);
  v15 = *(a2 + 16);
  if (v15)
  {
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v53 = (v4 + 8);
    v54 = v17;
    v51 = *(v16 + 56);
    v52 = (v16 - 8);
    v48 = (v16 + 24);
    v49 = (v16 + 16);
    v50 = v16;
    while (1)
    {
      v57 = v18;
      v58 = v15;
      v19 = v59;
      v20 = v54;
      (v54)(v59);
      v21 = v55;
      sub_24AEC5ECC();
      v22 = sub_24AEC5EFC();
      v24 = v23;
      (*v53)(v21, v56);
      v25 = v19;
      v26 = v7;
      v20(v12, v25, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v14;
      v29 = sub_24AEC0A40(v22, v24, sub_24AEBF7A0);
      v30 = v14[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v28;
      if (v14[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24AEC1B08();
        }
      }

      else
      {
        sub_24AEC0DC4(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_24AEC0A40(v22, v24, sub_24AEBF7A0);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v29 = v34;
      }

      v7 = v26;
      v36 = v51;
      if (v33)
      {

        v14 = v60;
        (*v48)(v60[7] + v29 * v36, v12, v26);
        (*v52)(v59, v26);
      }

      else
      {
        v14 = v60;
        v60[(v29 >> 6) + 8] |= 1 << v29;
        v37 = (v14[6] + 16 * v29);
        *v37 = v22;
        v37[1] = v24;
        (*v49)(v14[7] + v29 * v36, v12, v26);
        (*v52)(v59, v26);
        v38 = v14[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v14[2] = v40;
      }

      v18 = v57 + v36;
      v15 = v58 - 1;
      if (v58 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_24AEC666C();
    __break(1u);
  }

  else
  {
LABEL_14:
    v41 = v47;
    v42 = *v46;
    swift_beginAccess();
    v43 = *(v41 + v42);
    *(v41 + v42) = v14;
  }

  return result;
}

uint64_t sub_24AEB7578(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AEB7634;

  return ObjCBootstrap.getFriends(with:)(a1);
}

uint64_t sub_24AEB7634()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_24AEC5C9C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v10 = sub_24AEC636C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t ObjCBootstrap.canShareLocationWithHandle(_:isFromGroup:)(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  return MEMORY[0x2822009F8](sub_24AEB77F4, 0, 0);
}

uint64_t sub_24AEB77F4()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24AEB7924;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0160, &qword_24AEC8A68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AEB7ABC;
  *(v0 + 104) = &block_descriptor_60;
  *(v0 + 112) = v4;
  [v2 friendshipStateWithHandle:v3 isFromGroup:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AEB7924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_24AEB7A50;
  }

  else
  {
    v3 = sub_24AEB7A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB7A50()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_24AEB7ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24AEB7D18(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 184) = a2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  *(v4 + 168) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_24AEB7DA8, 0, 0);
}

uint64_t sub_24AEB7DA8()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24AEB7ED8;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0160, &qword_24AEC8A68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AEB7ABC;
  *(v0 + 104) = &block_descriptor_132;
  *(v0 + 112) = v4;
  [v2 friendshipStateWithHandle:v3 isFromGroup:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AEB7ED8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_24AEB8070;
  }

  else
  {
    v3 = sub_24AEB7FE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB7FE8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  (*(v1 + 16))(v1, *(v0 + 144), 0);
  _Block_release(*(v0 + 168));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AEB8070()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  swift_willThrow();

  v5 = sub_24AEC5C9C();
  (*(v1 + 16))(v1, 0, v5);

  _Block_release(*(v0 + 168));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ObjCBootstrap.friendshipStateWithHandle(_:isFromGroup:)(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v4 = sub_24AEC5F4C();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = sub_24AEC5D5C();
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB8254, 0, 0);
}

uint64_t sub_24AEB8254()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB8344;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB8344()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB845C, 0, 0);
}

uint64_t sub_24AEB845C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 120) = v1;

  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 144);
    v4 = [*(v0 + 32) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    v5 = *(MEMORY[0x277D09380] + 4);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_24AEB8728;
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);

    return MEMORY[0x28215FAA0](v7, v8, v3);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v9 = sub_24AEC625C();
    __swift_project_value_buffer(v9, qword_280E21578);
    v10 = sub_24AEC623C();
    v11 = sub_24AEC644C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AE9B000, v10, v11, "Missing FindMyLocate.Session!", v12, 2u);
      MEMORY[0x24C234F80](v12, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v13 = *(v0 + 16);
    swift_willThrow();
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_24AEB8728()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_24AEB8984;
  }

  else
  {
    v5 = sub_24AEB8890;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEB8890()
{
  v1 = v0[12];
  v2 = sub_24AEC5D3C();
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  if (v2)
  {
    v7 = sub_24AEC5D4C();

    (*(v5 + 8))(v4, v6);
    v8 = ~v7 & 1;
  }

  else
  {
    (*(v5 + 8))(v0[12], v0[10]);

    v8 = 2;
  }

  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11(v8);
}

uint64_t sub_24AEB8984()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AEB8B8C(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_24AEB8C58;

  return ObjCBootstrap.friendshipStateWithHandle(_:isFromGroup:)(v8, a2);
}

uint64_t sub_24AEB8C58(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_24AEC5C9C();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t ObjCBootstrap.getOfferExpirationForHandle(_:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = swift_getObjectType();
  v6 = sub_24AEC5F4C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB8EDC, 0, 0);
}

uint64_t sub_24AEB8EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB8FCC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB8FCC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEB90E4, 0, 0);
}

uint64_t sub_24AEB90E4()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 120) = v1;

  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = [*(v0 + 40) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    v4 = *(MEMORY[0x277D09388] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_24AEB9394;
    v6 = *(v0 + 96);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);

    return MEMORY[0x28215FAA8](v9, v6, v7, v8);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v10 = sub_24AEC625C();
    __swift_project_value_buffer(v10, qword_280E21578);
    v11 = sub_24AEC623C();
    v12 = sub_24AEC644C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AE9B000, v11, v12, "Missing FindMyLocate.Session!", v13, 2u);
      MEMORY[0x24C234F80](v13, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
    sub_24AEC5C8C();
    v14 = *(v0 + 16);
    swift_willThrow();
    v15 = *(v0 + 96);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_24AEB9394()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_24AEB956C;
  }

  else
  {
    v5 = sub_24AEB94FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEB94FC()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AEB956C()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AEB9768(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[5] = v10;
  v4[6] = _Block_copy(a3);
  if (a2)
  {
    a2 = sub_24AEC62FC();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[7] = v12;
  v13 = a1;
  a4;
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = sub_24AEB98B4;

  return ObjCBootstrap.getOfferExpirationForHandle(_:groupId:)(v10, v13, a2, v12);
}

uint64_t sub_24AEB98B4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    v8 = v2[6];
    v9 = sub_24AEC5C9C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    v10 = v2[4];
    sub_24AEC5340(v2[5], v10, &qword_27EFBFFD8, &qword_24AEC8568);
    v11 = sub_24AEC5CDC();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = 0;
    if (v13 != 1)
    {
      v15 = v2[4];
      v14 = sub_24AEC5CAC();
      (*(v12 + 8))(v15, v11);
    }

    v16 = v2[6];
    (v16)[2](v16, v14, 0);
    _Block_release(v16);
  }

  v18 = v2[4];
  v17 = v2[5];

  v19 = *(v7 + 8);

  return v19();
}

void __swiftcall ObjCBootstrap.cachedLocation(for:includeAddress:)(FMLLocation_optional *__return_ptr retstr, FMLHandle a2, Swift::Bool includeAddress)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0168, &qword_24AEC8A80);
  sub_24AEC648C();
}

void sub_24AEB9BC4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v7 = sub_24AEC625C();
  __swift_project_value_buffer(v7, qword_280E21578);
  v8 = a1;
  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v11 = 136446722;
    *(v11 + 4) = sub_24AEBFE20(0xD000000000000023, 0x800000024AEC7E40, &v48);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 1024;
    *(v11 + 24) = a2 & 1;
    v14 = v8;
    _os_log_impl(&dword_24AE9B000, v9, v10, "%{public}s for handle: %@ includeAddress: %{BOOL}d", v11, 0x1Cu);
    sub_24AEA5484(v12, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C234F80](v13, -1, -1);
    v15 = v11;
    a4 = v43;
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
  swift_beginAccess();
  v17 = *(a3 + v16);

  v18 = sub_24AEBA064(v8, v17);

  if (v18 && (a2 & 1) != 0)
  {
    v19 = [v18 address];
    if (v19)
    {

      v20 = v18;
      v21 = sub_24AEC623C();
      v22 = sub_24AEC645C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v23 = 136315138;
        v24 = v20;
        v25 = [v24 description];
        v44 = v22;
        v26 = a4;
        v27 = sub_24AEC62FC();
        v29 = v28;

        v30 = v27;
        a4 = v26;
        v31 = sub_24AEBFE20(v30, v29, &v49);

        *(v23 + 4) = v31;
        _os_log_impl(&dword_24AE9B000, v21, v44, "Cached location: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x24C234F80](v46, -1, -1);
        MEMORY[0x24C234F80](v23, -1, -1);
      }
    }

    else
    {
      v32 = v18;
      v33 = sub_24AEC623C();
      v34 = sub_24AEC645C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v35 = 136315138;
        v36 = v32;
        v37 = [v36 description];
        v38 = sub_24AEC62FC();
        v39 = a4;
        v41 = v40;

        v42 = sub_24AEBFE20(v38, v41, &v49);
        a4 = v39;

        *(v35 + 4) = v42;
        _os_log_impl(&dword_24AE9B000, v33, v34, "Found cached location: %s, but no address!", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C234F80](v47, -1, -1);
        MEMORY[0x24C234F80](v35, -1, -1);
      }

      else
      {
      }

      v18 = 0;
    }
  }

  *a4 = v18;
}

void *sub_24AEBA064(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24AEC65BC();

    if (v4)
    {
      sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24AEC09FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_24AEBA200@<X0>(uint64_t *a1@<X8>)
{
  v37 = sub_24AEC5EEC();
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = sub_24AEBA5A0(1);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v9 = sub_24AEC625C();
  __swift_project_value_buffer(v9, qword_280E21578);

  v10 = sub_24AEC623C();
  v11 = sub_24AEC645C();

  v12 = os_log_type_enabled(v10, v11);
  v33 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v14 = v38;
    *v13 = 136446466;
    *(v13 + 4) = sub_24AEBFE20(0xD000000000000024, 0x800000024AEC7E10, &v38);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x24C234690](v8, v37);
    v17 = v8;
    v18 = sub_24AEBFE20(v15, v16, &v38);

    *(v13 + 14) = v18;
    v8 = v17;
    _os_log_impl(&dword_24AE9B000, v10, v11, "%{public}s: %s", v13, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    a1 = v33;
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  v38 = MEMORY[0x277D84F90];
  v20 = *(v8 + 16);
  if (v20)
  {
    v32[2] = v1;
    v21 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v22 = v34 + 16;
    v23 = *(v34 + 16);
    v24 = *(v34 + 80);
    v32[1] = v8;
    v25 = v8 + ((v24 + 32) & ~v24);
    v34 = *(v34 + 72);
    v35 = v21;
    v26 = (v22 - 8);
    do
    {
      v27 = v37;
      v23(v7, v25, v37);
      v28 = v36;
      v23(v36, v7, v27);
      FMLFriend.init(_:)(v28);
      v29 = (*v26)(v7, v27);
      MEMORY[0x24C234660](v29);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v25 += v34;
      --v20;
    }

    while (v20);
    v30 = v38;

    a1 = v33;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  *a1 = v30;
  return result;
}

uint64_t sub_24AEBA5A0(int64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v150 = &v141 - v7;
  v8 = sub_24AEC5CFC();
  v144 = *(v8 - 8);
  v9 = *(v144 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v141 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v143 = &v141 - v12;
  v169 = sub_24AEC5F4C();
  v13 = *(v169 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v169);
  v156 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v141 - v17;
  v160 = sub_24AEC5EEC();
  v153 = *(v160 - 8);
  v19 = *(v153 + 64);
  v20 = MEMORY[0x28223BE20](v160);
  v154 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v155 = &v141 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161 = &v141 - v25;
  MEMORY[0x28223BE20](v24);
  v157 = &v141 - v26;
  v27 = sub_24AEC5CDC();
  v152 = *(v27 - 8);
  v28 = *(v152 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC609C();
  v159 = v30;
  sub_24AEC5FBC();
  v168 = v18;
  v151 = v27;
  v145 = v8;
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    if (a1 != 1)
    {
      goto LABEL_3;
    }

    v33 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings;
    v31 = swift_beginAccess();
    v34 = *&v2[v33];
    v35 = *(v34 + 16);
    if (!v35)
    {
      goto LABEL_16;
    }

    v36 = v13;
    v148 = ObjectType;
    v147 = 1;
    v37 = sub_24AEBFD24(v35, 0);
    v172 = sub_24AEC2798(&v173, (v37 + ((*(v153 + 80) + 32) & ~*(v153 + 80))), v35, v34);
    v13 = v173;
    a1 = v174;
    ObjectType = v175;

    v31 = sub_24AEC5260();
    if (v172 == v35)
    {
LABEL_15:
      a1 = v147;
      ObjectType = v148;
      v32 = v37;
      v13 = v36;
      goto LABEL_17;
    }

    __break(1u);
  }

  else if ((a1 - 2) < 2)
  {
LABEL_3:
    v31 = sub_24AE9CCB0(a1);
    v32 = v31;
    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_3;
  }

  v38 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
  v31 = swift_beginAccess();
  v39 = *&v2[v38];
  v40 = *(v39 + 16);
  if (!v40)
  {
    goto LABEL_16;
  }

  v36 = v13;
  v148 = ObjectType;
  v147 = 4;
  v37 = sub_24AEBFD24(v40, 0);
  v172 = sub_24AEC2798(&v173, (v37 + ((*(v153 + 80) + 32) & ~*(v153 + 80))), v40, v39);
  v13 = v173;
  a1 = v174;
  ObjectType = v175;

  v31 = sub_24AEC5260();
  if (v172 == v40)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_13:
  v41 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  v31 = swift_beginAccess();
  v42 = *&v2[v41];
  v43 = *(v42 + 16);
  if (v43)
  {
    v36 = v13;
    v148 = ObjectType;
    v147 = a1;
    v37 = sub_24AEBFD24(v43, 0);
    v172 = sub_24AEC2798(&v173, (v37 + ((*(v153 + 80) + 32) & ~*(v153 + 80))), v43, v42);
    a1 = v174;
    ObjectType = v175;

    v31 = sub_24AEC5260();
    if (v172 != v43)
    {
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_15;
  }

LABEL_16:
  v32 = MEMORY[0x277D84F90];
LABEL_17:
  MEMORY[0x28223BE20](v31);
  v139 = v159;

  v44 = sub_24AEAA2C0(sub_24AEC516C, (&v141 - 4), v32);
  v45 = v32;
  if (*(v44 + 16))
  {
    v167 = 0;
    v42 = sub_24AEC4F6C(MEMORY[0x277D84F90]);
    v47 = *(v32 + 16);
    v146 = v32;
    if (v47)
    {
      v148 = ObjectType;
      v147 = a1;
      v142 = v2;
      v48 = *(v153 + 16);
      v49 = v32 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v50 = *(v153 + 72);
      v170 = (v13 + 8);
      v164 = (v153 + 8);
      v165 = v50;
      *&v46 = 141558275;
      v149 = v46;
      v51 = v160;
      v52 = v157;
      v171 = v48;
      v172 = (v153 + 16);
      v166 = v44;
      do
      {
        v48(v52, v49, v51);
        v59 = sub_24AEAA1B4(v52, v44);
        v60 = v168;
        sub_24AEC5ECC();
        if (v59)
        {
          v162 = v47;
          v163 = v42;
          v61 = sub_24AEC5F0C();
          v62 = v60;
          v63 = v169;
          v64 = *v170;
          v65 = (*v170)(v60, v169);
          MEMORY[0x28223BE20](v65);
          v139 = v159;
          v66 = v167;
          v67 = sub_24AEC1D88(sub_24AEC5268, (&v141 - 4), v61);
          v167 = v66;

          if (*(v67 + 16))
          {
            v68 = v156;
            sub_24AEC5ECC();
            sub_24AEC5F2C();

            v64(v68, v63);
            v69 = v161;
            sub_24AEC5E6C();
            sub_24AEC5ECC();
            v158 = sub_24AEC5EFC();
            v71 = v70;
            v64(v68, v63);
            v72 = v69;
            v73 = v155;
            v74 = v160;
            v171(v155, v72, v160);
            v75 = v163;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v173 = v75;
            v77 = v73;
            v78 = v72;
            v52 = v157;
            sub_24AEC14BC(v77, v158, v71, isUniquelyReferenced_nonNull_native);

            v79 = *v164;
            (*v164)(v78, v74);
            v64(v62, v63);
            v51 = v74;
            v79(v52, v74);
            v42 = v173;
            v47 = v162;
          }

          else
          {

            if (qword_280E21548 != -1)
            {
              swift_once();
            }

            v80 = sub_24AEC625C();
            __swift_project_value_buffer(v80, qword_280E21578);
            v81 = v154;
            v51 = v160;
            v171(v154, v52, v160);
            v82 = sub_24AEC623C();
            v83 = sub_24AEC645C();
            v84 = os_log_type_enabled(v82, v83);
            v47 = v162;
            if (v84)
            {
              v85 = swift_slowAlloc();
              v86 = v81;
              v158 = swift_slowAlloc();
              v173 = v158;
              *v85 = v149;
              *(v85 + 4) = 1752392040;
              *(v85 + 12) = 2081;
              sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0]);
              v87 = sub_24AEC663C();
              v89 = v88;
              v90 = *v164;
              v91 = v86;
              v52 = v157;
              (*v164)(v91, v160);
              v92 = sub_24AEBFE20(v87, v89, &v173);
              v51 = v160;

              *(v85 + 14) = v92;
              _os_log_impl(&dword_24AE9B000, v82, v83, "friend: %{private,mask.hash}s expired", v85, 0x16u);
              v93 = v158;
              __swift_destroy_boxed_opaque_existential_0(v158);
              MEMORY[0x24C234F80](v93, -1, -1);
              MEMORY[0x24C234F80](v85, -1, -1);

              v90(v52, v51);
            }

            else
            {

              v94 = *v164;
              (*v164)(v81, v51);
              v94(v52, v51);
            }

            v42 = v163;
          }
        }

        else
        {
          v53 = v42;
          v54 = sub_24AEC5EFC();
          v56 = v55;
          (*v170)(v60, v169);
          v57 = v161;
          v48(v161, v52, v51);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v173 = v53;
          sub_24AEC14BC(v57, v54, v56, v58);

          (*v164)(v52, v51);
          v42 = v173;
        }

        v44 = v166;
        v49 += v165;
        --v47;
        v48 = v171;
      }

      while (v47);

      v2 = v142;
      a1 = v147;
      ObjectType = v148;
      if (v147 > 1)
      {
LABEL_32:
        if ((a1 - 2) < 2)
        {
          v95 = v42;
          if (qword_280E21548 != -1)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v96 = sub_24AEC625C();
            __swift_project_value_buffer(v96, qword_280E21578);
            v97 = sub_24AEC623C();
            v98 = sub_24AEC645C();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v142 = v2;
              v172 = v100;
              *v99 = 141558275;
              *(v99 + 4) = 1752392040;
              *(v99 + 12) = 2081;
              v101 = ObjectType;
              v102 = v144;
              v103 = *(v144 + 104);
              v104 = MEMORY[0x277D09020];
              v173 = v100;
              if (a1 != 3)
              {
                v104 = MEMORY[0x277D09018];
              }

              v105 = *v104;
              v106 = v143;
              v163 = v95;
              v107 = v145;
              v103(v143, v105, v145);
              sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
              v108 = sub_24AEC663C();
              v110 = v109;
              v111 = v107;
              v112 = v163;
              (*(v102 + 8))(v106, v111);
              ObjectType = v101;
              v113 = sub_24AEBFE20(v108, v110, &v173);

              *(v99 + 14) = v113;
              v114 = v98;
              v42 = v112;
              _os_log_impl(&dword_24AE9B000, v97, v114, "validFriends: %{private,mask.hash}s not supported", v99, 0x16u);
              v115 = v172;
              __swift_destroy_boxed_opaque_existential_0(v172);
              v2 = v142;
              MEMORY[0x24C234F80](v115, -1, -1);
              MEMORY[0x24C234F80](v99, -1, -1);
LABEL_52:

LABEL_53:
              v117 = v150;
            }

            else
            {

              v117 = v150;
              v42 = v95;
            }

LABEL_54:
            v132 = sub_24AEC63EC();
            (*(*(v132 - 8) + 56))(v117, 1, 1, v132);
            v133 = swift_allocObject();
            v133[2] = 0;
            v133[3] = 0;
            v133[4] = v2;
            v133[5] = a1;
            v133[6] = v146;
            v133[7] = ObjectType;
            v134 = v2;
            sub_24AEBF4DC(0, 0, v117, &unk_24AEC8CA8, v133);

            v135 = *(v42 + 16);
            if (!v135)
            {
              break;
            }

            a1 = sub_24AEBFD24(*(v42 + 16), 0);
            v136 = sub_24AEC2798(&v173, (a1 + ((*(v153 + 80) + 32) & ~*(v153 + 80))), v135, v42);
            ObjectType = v42;
            v95 = v175;
            v2 = v176;

            sub_24AEC5260();
            if (v136 == v135)
            {

              v137 = v152;
              v45 = a1;
              goto LABEL_59;
            }

            __break(1u);
LABEL_61:
            swift_once();
          }

          v45 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        if (a1 == 4)
        {
          v116 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {

      if (a1 > 1)
      {
        goto LABEL_32;
      }
    }

    if (!a1)
    {
      v116 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
      goto LABEL_47;
    }

    if (a1 == 1)
    {
      v116 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings;
LABEL_47:
      v118 = *v116;
      swift_beginAccess();
      v119 = *&v2[v118];
      *&v2[v118] = v42;

      goto LABEL_53;
    }

LABEL_48:
    if (qword_280E21548 == -1)
    {
LABEL_49:
      v120 = sub_24AEC625C();
      __swift_project_value_buffer(v120, qword_280E21578);
      v97 = sub_24AEC623C();
      v121 = sub_24AEC645C();
      if (!os_log_type_enabled(v97, v121))
      {
        goto LABEL_52;
      }

      v148 = ObjectType;
      v163 = v42;
      v142 = v2;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v173 = v123;
      *v122 = 141558275;
      *(v122 + 4) = 1752392040;
      *(v122 + 12) = 2081;
      if (a1 == 4)
      {
        v124 = v123;
        v125 = v144;
        v126 = v141;
        v127 = v145;
        (*(v144 + 104))(v141, *MEMORY[0x277D09010], v145);
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
        v128 = sub_24AEC663C();
        v130 = v129;
        (*(v125 + 8))(v126, v127);
        v131 = sub_24AEBFE20(v128, v130, &v173);

        *(v122 + 14) = v131;
        _os_log_impl(&dword_24AE9B000, v97, v121, "validFriends: %{private,mask.hash}s not supported", v122, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x24C234F80](v124, -1, -1);
        MEMORY[0x24C234F80](v122, -1, -1);

        v2 = v142;
        v117 = v150;
        v42 = v163;
        ObjectType = v148;
        goto LABEL_54;
      }

      v140 = 0;
      v139 = 72;
      result = sub_24AEC65DC();
      __break(1u);
      return result;
    }

LABEL_63:
    swift_once();
    goto LABEL_49;
  }

LABEL_58:
  v137 = v152;
LABEL_59:
  (*(v137 + 8))(v159, v151);
  return v45;
}
uint64_t sub_24E634F20(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_24E634F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchDashboardAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E634F9C(uint64_t a1)
{
  v4 = *(type metadata accessor for LaunchDashboardAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24E633DD4(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_24E635118()
{
  result = qword_27F214908;
  if (!qword_27F214908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214908);
  }

  return result;
}

void sub_24E635178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214910);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() proxyForLocalPlayer];
  v12 = [v11 profileServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  v14 = sub_24F92B588();

  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;
  aBlock[4] = sub_24E635C54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v12 getProfilesForPlayerIDs:v14 fetchOptions:1 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_24E635410(unint64_t a1, id a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v18 = a2;
    v7 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214910);
    return sub_24F92B788();
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = a4;
    v5 = a5;
    if (qword_27F2113A0 == -1)
    {
LABEL_12:
      v13 = sub_24F9220D8();
      __swift_project_value_buffer(v13, qword_27F39E730);

      v14 = sub_24F9220B8();
      v15 = sub_24F92BDB8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_24E7620D4(v6, v5, &v18);
        _os_log_impl(&dword_24E5DD000, v14, v15, "AchievementsCountByPlayerDataIntentImplementation could not fetch player profile for %s.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x2530542D0](v17, -1, -1);
        MEMORY[0x2530542D0](v16, -1, -1);
      }

      sub_24E635D28();
      v18 = swift_allocError();
      goto LABEL_3;
    }

LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v10 = a1;
  v5 = a5;
  v6 = a4;
  v11 = sub_24F92C738();
  a4 = v6;
  a5 = v5;
  v12 = v11;
  a1 = v10;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](0, a1);
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 32);
LABEL_9:
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214910);
  return sub_24F92B798();
}

uint64_t sub_24E635660(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_24E635714;

  return (sub_24E635838)(v4, v3);
}

uint64_t sub_24E635714(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24E635838(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24E635858, 0, 0);
}

uint64_t sub_24E635858()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_24E635B5C();
  *v4 = v0;
  v4[1] = sub_24E635954;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000024FA453B0, sub_24E635B54, v3, v5);
}

uint64_t sub_24E635954()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E635AF0;
  }

  else
  {

    v2 = sub_24E635A70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E635A70()
{
  v1 = *(v0 + 16);
  v2 = [v1 numberOfAchievements];

  v3 = *(v0 + 8);

  return v3(v2, 0);
}

uint64_t sub_24E635AF0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E635B5C()
{
  result = qword_27F235850;
  if (!qword_27F235850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F235850);
  }

  return result;
}

uint64_t sub_24E635BA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214910);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E635C54(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214910) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_24E635410(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E635D28()
{
  result = qword_27F214918;
  if (!qword_27F214918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214918);
  }

  return result;
}

unint64_t sub_24E635D90()
{
  result = qword_27F214920;
  if (!qword_27F214920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214920);
  }

  return result;
}

unint64_t AccessPointUseCase.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  if (v5 > 3)
  {
    v6 = 0x800000024FA3ED50;
    v11 = 0xD00000000000001FLL;
    if (v5 != 6)
    {
      v11 = 0x6142656D61476E69;
      v6 = 0xEC00000072656E6ELL;
    }

    v12 = 0x800000024FA3ED00;
    v13 = 0xD00000000000001ELL;
    if (v5 == 4)
    {
      v13 = 0xD000000000000020;
    }

    else
    {
      v12 = 0x800000024FA3ED30;
    }

    if (*v2 <= 5u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }

    if (*v2 <= 5u)
    {
      v6 = v12;
    }
  }

  else
  {
    v6 = 0xEF796C6E4F746E69;
    v7 = 0x6F50737365636361;
    v8 = 0x800000024FA3ECC0;
    v9 = 0xD00000000000001BLL;
    if (v5 != 2)
    {
      v9 = 0xD000000000000011;
      v8 = 0x800000024FA3ECE0;
    }

    if (!*v2)
    {
      v7 = 0xD000000000000011;
      v6 = 0x800000024FA3EC90;
    }

    if (*v2 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (*v2 > 1u)
    {
      v6 = v8;
    }
  }

  v17 = v10;
  v18 = v6;
  v14 = sub_24F92CF68();
  v15 = [objc_opt_self() valueWithObject:v14 inContext:{a1, v17, v18}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v15;
  return result;
}

unint64_t AccessPointUseCase.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001FLL;
    if (v1 != 6)
    {
      v5 = 0x6142656D61476E69;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000020;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F50737365636361;
    v3 = 0xD00000000000001BLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000011;
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
}

unint64_t sub_24E6360E0()
{
  result = qword_27F214930;
  if (!qword_27F214930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214930);
  }

  return result;
}

GameStoreKit::AccessPointUseCase_optional __swiftcall AccessPointUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_24E6361EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x800000024FA3ED50;
    v9 = 0xD00000000000001FLL;
    if (v2 != 6)
    {
      v9 = 0x6142656D61476E69;
      v8 = 0xEC00000072656E6ELL;
    }

    v10 = 0x800000024FA3ED00;
    v11 = 0xD00000000000001ELL;
    if (v2 == 4)
    {
      v11 = 0xD000000000000020;
    }

    else
    {
      v10 = 0x800000024FA3ED30;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEF796C6E4F746E69;
    v4 = 0x6F50737365636361;
    v5 = 0x800000024FA3ECC0;
    v6 = 0xD00000000000001BLL;
    if (v2 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x800000024FA3ECE0;
    }

    if (!*v1)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA3EC90;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t AccessPointPageIntent.player.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessPointPageIntent() + 28);

  return sub_24E6364A0(v3, a1);
}

uint64_t type metadata accessor for AccessPointPageIntent()
{
  result = qword_27F214978;
  if (!qword_27F214978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6364A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AccessPointPageIntent.init(useCase:showHighlights:newToGameCenter:player:game:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for AccessPointPageIntent();
  sub_24E6365D4(a4, &a6[*(v9 + 28)]);
  v10 = &a6[*(v9 + 32)];

  return sub_24E636644(a5, v10);
}

uint64_t sub_24E6365D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E636644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6366A8()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0x6D61476F5477656ELL;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 1701667175;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68676948776F6873;
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

uint64_t sub_24E636750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E637804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E636778(uint64_t a1)
{
  v2 = sub_24E636ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6367B4(uint64_t a1)
{
  v2 = sub_24E636ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E636ABC();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v10[13] = 1;
    sub_24F92CD18();
    v10[12] = 2;
    sub_24F92CD18();
    type metadata accessor for AccessPointPageIntent();
    v10[11] = 3;
    type metadata accessor for Player(0);
    sub_24E637000(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    v10[10] = 4;
    type metadata accessor for Game();
    sub_24E637000(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E636ABC()
{
  result = qword_27F214940;
  if (!qword_27F214940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214940);
  }

  return result;
}

unint64_t sub_24E636B10()
{
  result = qword_27F214948;
  if (!qword_27F214948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214948);
  }

  return result;
}

uint64_t AccessPointPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214958);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AccessPointPageIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E636ABC();
  v14 = v26;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v26 = v7;
  v15 = v23;
  v32 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  *v12 = v33;
  v31 = 1;
  v16 = v15;
  v12[1] = sub_24F92CC38() & 1;
  v30 = 2;
  v12[2] = sub_24F92CC38() & 1;
  type metadata accessor for Player(0);
  v29 = 3;
  sub_24E637000(&qword_27F213E38, type metadata accessor for Player);
  v17 = v26;
  sub_24F92CC18();
  v21 = *(v10 + 28);
  sub_24E6365D4(v17, &v12[v21]);
  v28 = 4;
  sub_24E637000(&qword_27F214968, type metadata accessor for Game);
  v18 = v25;
  sub_24F92CC68();
  (*(v16 + 8))(v9, v18);
  sub_24E636644(v4, &v12[*(v10 + 32)]);
  sub_24E6370B0(v12, v22, type metadata accessor for AccessPointPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24E637118(v12);
}

unint64_t sub_24E636FAC()
{
  result = qword_27F214960;
  if (!qword_27F214960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214960);
  }

  return result;
}

uint64_t sub_24E637000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E637048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6370B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E637118(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E637178()
{
  result = qword_27F214970;
  if (!qword_27F214970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessPointUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessPointUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E637380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for Game();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_24E6374C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Game();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E6375F0()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Game();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E637694()
{
  if (!qword_27F214988)
  {
    type metadata accessor for Player(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214988);
    }
  }
}

unint64_t sub_24E637700()
{
  result = qword_27F214990;
  if (!qword_27F214990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214990);
  }

  return result;
}

unint64_t sub_24E637758()
{
  result = qword_27F214998;
  if (!qword_27F214998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214998);
  }

  return result;
}

unint64_t sub_24E6377B0()
{
  result = qword_27F2149A0;
  if (!qword_27F2149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2149A0);
  }

  return result;
}

uint64_t sub_24E637804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68676948776F6873 && a2 == 0xEE0073746867696CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D61476F5477656ELL && a2 == 0xEF7265746E654365 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_24E6379C0()
{
  result = qword_27F2149A8;
  if (!qword_27F2149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2149A8);
  }

  return result;
}

uint64_t GSKDeepLinkWithReferrerIntent.init(with:)(uint64_t a1)
{
  sub_24F92AA78();
  v2 = sub_24F92AA88();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t GSKDeepLinkWithReferrerIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t GSKDeepLinkWithReferrerIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v3 = sub_24F91F398();
  v4 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24E637BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E637C78(uint64_t a1)
{
  v2 = sub_24E638450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E637CB4(uint64_t a1)
{
  v2 = sub_24E638450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GSKDeepLinkWithReferrerIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2149B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E638450();
  sub_24F92D128();
  sub_24F91F4A8();
  sub_24E63859C(&qword_27F2149C0, MEMORY[0x277CC9260]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t GSKDeepLinkWithReferrerIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_24F91F4A8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2149C8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E638450();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_24E63859C(&qword_27F2145E0, MEMORY[0x277CC9260]);
    sub_24F92CC68();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_24E6384F0(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E638108(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2149B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E638450();
  sub_24F92D128();
  sub_24F91F4A8();
  sub_24E63859C(&qword_27F2149C0, MEMORY[0x277CC9260]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E638280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_24E638308@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v3 = sub_24F91F398();
  v4 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24E6383E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E638450()
{
  result = qword_27F2149B8;
  if (!qword_27F2149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2149B8);
  }

  return result;
}

uint64_t type metadata accessor for GSKDeepLinkWithReferrerIntent()
{
  result = qword_27F2149E0;
  if (!qword_27F2149E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6384F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E63859C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E63864C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E6386CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24E638750()
{
  result = qword_27F2149F0;
  if (!qword_27F2149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2149F0);
  }

  return result;
}

unint64_t sub_24E6387A8()
{
  result = qword_27F2149F8;
  if (!qword_27F2149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2149F8);
  }

  return result;
}

unint64_t sub_24E638800()
{
  result = qword_27F214A00;
  if (!qword_27F214A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214A00);
  }

  return result;
}

uint64_t sub_24E6388CC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v129 = a5;
  v128 = a4;
  v164 = a6;
  v165 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v124);
  v120 = (&v119 - v9);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18);
  MEMORY[0x28223BE20](v122);
  v123 = &v119 - v10;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v160);
  v130 = &v119 - v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28);
  MEMORY[0x28223BE20](v134);
  v125 = &v119 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30);
  MEMORY[0x28223BE20](v131);
  v133 = &v119 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38);
  MEMORY[0x28223BE20](v155);
  v135 = &v119 - v14;
  v132 = type metadata accessor for CardContentBackgroundStyle(0);
  v15 = MEMORY[0x28223BE20](v132);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v119 - v18;
  v19 = type metadata accessor for PlayerAvatar(0);
  v126 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A40);
  MEMORY[0x28223BE20](v142);
  v22 = &v119 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A48);
  MEMORY[0x28223BE20](v139);
  v141 = &v119 - v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  v24 = MEMORY[0x28223BE20](v140);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v138 = &v119 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v136 = *(v28 - 8);
  v29 = *(v136 + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v137 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v119 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v119 - v34;
  v150 = sub_24F9289E8();
  v161 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v143 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A58);
  MEMORY[0x28223BE20](v149);
  v144 = &v119 - v37;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A60);
  MEMORY[0x28223BE20](v156);
  v159 = &v119 - v38;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A68);
  MEMORY[0x28223BE20](v151);
  v153 = &v119 - v39;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A70);
  MEMORY[0x28223BE20](v145);
  v147 = &v119 - v40;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A78);
  MEMORY[0x28223BE20](v152);
  v148 = &v119 - v41;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A80);
  MEMORY[0x28223BE20](v157);
  v154 = &v119 - v42;
  v146 = type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView();
  MEMORY[0x28223BE20](v146);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A88);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v119 - v45;
  if (v165 != 3)
  {
    v47 = a2;
    if ((sub_24E92D030(a1, a2, a3) & 1) == 0)
    {
      goto LABEL_16;
    }

    v48 = a3;
    switch(a1)
    {
      case 0xCu:
        v104 = a3;
        if (a3 > 1u)
        {
          v113 = sub_24F926C98();
          v114 = type metadata accessor for ChallengeSuggestionCard();
          v115 = v120;
          sub_24F6C4E24(v47 + *(v114 + 36), v104 != 5, v113, v120);

          sub_24E60169C(v115, v123, &qword_27F214A10);
          swift_storeEnumTagMultiPayload();
          sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24E63D150();
          v106 = v125;
          sub_24F924E28();
          sub_24E601704(v115, &qword_27F214A10);
        }

        else
        {
          v105 = v130;
          sub_24E918D58(0xC, v47, a3, v128, v129, v130);
          sub_24E60169C(v105, v123, &qword_27F214A20);
          swift_storeEnumTagMultiPayload();
          sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24E63D150();
          v106 = v125;
          sub_24F924E28();
          sub_24E601704(v105, &qword_27F214A20);
        }

        v55 = v158;
        sub_24E60169C(v106, v133, &qword_27F214A28);
        swift_storeEnumTagMultiPayload();
        sub_24E63DCC4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63C1D8();
        v116 = v135;
        sub_24F924E28();
        sub_24E60169C(v116, v153, &qword_27F214A38);
        swift_storeEnumTagMultiPayload();
        sub_24E63BEC8();
        sub_24E63C124(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
        v117 = v154;
        sub_24F924E28();
        sub_24E601704(v116, &qword_27F214A38);
        sub_24E60169C(v117, v159, &qword_27F214A80);
        swift_storeEnumTagMultiPayload();
        sub_24E63BE10();
        sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F924E28();
        sub_24E601704(v117, &qword_27F214A80);
        v108 = v106;
        v109 = &qword_27F214A28;
        break;
      case 0xBu:
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        (*(*(v100 - 8) + 56))(v17, dword_24F93E95C[a3], 5, v100);
        v101 = v121;
        sub_24E63D9A4(v17, v121, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63D3EC(v101, v133, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E63DCC4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63C1D8();
        v102 = v135;
        sub_24F924E28();
        sub_24E60169C(v102, v153, &qword_27F214A38);
        swift_storeEnumTagMultiPayload();
        sub_24E63BEC8();
        sub_24E63C124(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
        v103 = v154;
        sub_24F924E28();
        sub_24E601704(v102, &qword_27F214A38);
        sub_24E60169C(v103, v159, &qword_27F214A80);
        swift_storeEnumTagMultiPayload();
        sub_24E63BE10();
        sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v55 = v158;
        sub_24F924E28();
        sub_24E601704(v103, &qword_27F214A80);
        sub_24E63D454(v101, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_40;
      case 2u:
        v49 = type metadata accessor for ChallengeSuggestionCard();
        sub_24E60169C(a2 + *(v49 + 36), v44, &qword_27F213FB0);
        v50 = v146;
        *&v44[*(v146 + 20)] = *(a2 + *(v49 + 40));
        v44[*(v50 + 24)] = v48;
        v51 = &v44[*(v50 + 28)];
        type metadata accessor for CardSafeArea(0);
        sub_24E63DCC4(&qword_27F214D10, type metadata accessor for CardSafeArea);

        *v51 = sub_24F923598();
        v51[8] = v52 & 1;
        sub_24E63D3EC(v44, v147, type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E63DCC4(&qword_27F214AA0, type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView);
        sub_24E63D844(&qword_27F214AA8, &qword_27F214A58, &unk_24F93E6B8, sub_24E63BFB0);
        v53 = v148;
        sub_24F924E28();
        sub_24E60169C(v53, v153, &qword_27F214A78);
        swift_storeEnumTagMultiPayload();
        sub_24E63BEC8();
        sub_24E63C124(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
        v54 = v154;
        sub_24F924E28();
        sub_24E601704(v53, &qword_27F214A78);
        sub_24E60169C(v54, v159, &qword_27F214A80);
        swift_storeEnumTagMultiPayload();
        sub_24E63BE10();
        sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v55 = v158;
        sub_24F924E28();
        sub_24E601704(v54, &qword_27F214A80);
        sub_24E63D454(v44, type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView);
LABEL_40:
        v118 = v164;
        sub_24E63D310(v55, v164);
        return (*(v162 + 56))(v118, 0, 1, v163);
      default:
        v107 = v130;
        sub_24E918D58(a1, a2, a3, v128, v129, v130);
        sub_24E60169C(v107, v159, &qword_27F214A20);
        swift_storeEnumTagMultiPayload();
        sub_24E63BE10();
        sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v55 = v158;
        sub_24F924E28();
        v108 = v107;
        v109 = &qword_27F214A20;
        break;
    }

    sub_24E601704(v108, v109);
    goto LABEL_40;
  }

  if (a3 > 2u)
  {
    v46 = v161;
  }

  else
  {
    v46 = v161;
    if (!a3)
    {

      goto LABEL_13;
    }
  }

  v56 = sub_24F92CE08();

  if (v56)
  {
LABEL_13:
    v57 = type metadata accessor for ChallengeSuggestionCard();
    sub_24E60169C(a2 + *(v57 + 36), v35, &qword_27F213FB0);
    v58 = v150;
    if ((*(v46 + 48))(v35, 1, v150) == 1)
    {
      sub_24E601704(v35, &qword_27F213FB0);
      v59 = *(a2 + *(v57 + 40));
      v60 = *(v59 + 16);
      v61 = 1;
      v55 = v158;
      if (v60)
      {
        v62 = v127;
        sub_24E63D3EC(v59 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * (v60 - 1), v127, type metadata accessor for PlayerAvatar);
        LOBYTE(v169) = 7;
        sub_24F8319B8(v62, &v169, v22);
        v63 = sub_24F925868();
        v64 = &v22[*(v142 + 36)];
        *v64 = v63;
        *(v64 + 8) = 0u;
        *(v64 + 24) = 0u;
        v64[40] = 1;
        sub_24E60169C(v22, v141, &qword_27F214A40);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
        sub_24E63C068();
        v65 = v144;
        sub_24F924E28();
        sub_24E601704(v22, &qword_27F214A40);
        v61 = 0;
      }

      else
      {
        v65 = v144;
      }

      goto LABEL_36;
    }

    v70 = v143;
    (*(v46 + 32))(v143, v35, v58);
    v71 = *(a2 + *(v57 + 40));
    (*(v46 + 16))(v33, v70, v58);
    (*(v46 + 56))(v33, 0, 1, v58);
    v72 = qword_27F2118C8;

    if (v72 != -1)
    {
      swift_once();
    }

    v169 = xmmword_27F2520F0;
    v170 = unk_27F252100;
    v171 = xmmword_27F252110;
    v172 = *&byte_27F252120;
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v168 = 0;
    sub_24E63D388(&v169, v166);
    sub_24F926F28();
    v73 = v167;
    v26[16] = v166[0];
    *(v26 + 3) = v73;
    v77 = sub_24E6B7C48(*(&v172 + 1), v71);
    if (v76)
    {
      v81 = v76;
      v82 = v75;
      v83 = v74;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v84 = swift_dynamicCastClass();
      if (!v84)
      {
        swift_unknownObjectRelease();
        v84 = MEMORY[0x277D84F90];
      }

      v85 = *(v84 + 16);

      if (__OFSUB__(v81 >> 1, v82))
      {
        __break(1u);
      }

      else if (v85 == (v81 >> 1) - v82)
      {
        v79 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v80 = v136;
        if (v79)
        {
LABEL_30:
          *(v26 + 4) = v79;
          v86 = v140;
          sub_24E60169C(v33, &v26[*(v140 + 44)], &qword_27F213FB0);
          v87 = &v26[v86[13]];
          v88 = v170;
          *v87 = v169;
          v87[1] = v88;
          v89 = v172;
          v87[2] = v171;
          v87[3] = v89;
          *&v26[v86[12]] = 0xBFC657184AE74487;
          *&v26[v86[14]] = 0x3FF0000000000000;
          v90 = v137;
          sub_24E6009C8(v33, v137, &qword_27F213FB0);
          v91 = (*(v80 + 80) + 16) & ~*(v80 + 80);
          v92 = (v29 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
          v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          v94 = swift_allocObject();
          sub_24E6009C8(v90, v94 + v91, &qword_27F213FB0);
          *(v94 + v92) = 0xBFC657184AE74487;
          v95 = (v94 + v93);
          v96 = v172;
          v95[2] = v171;
          v95[3] = v96;
          v97 = v170;
          *v95 = v169;
          v95[1] = v97;
          *(v94 + ((v93 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
          v98 = &v26[v86[15]];
          *v98 = sub_24E63D3E8;
          *(v98 + 1) = v94;
          v99 = v138;
          sub_24E6009C8(v26, v138, &qword_27F214A50);
          sub_24E60169C(v99, v141, &qword_27F214A50);
          swift_storeEnumTagMultiPayload();
          sub_24E63D388(&v169, v166);
          sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
          sub_24E63C068();
          v65 = v144;
          sub_24F924E28();
          sub_24E601704(v99, &qword_27F214A50);
          (*(v161 + 8))(v143, v150);
          v61 = 0;
          v55 = v158;
LABEL_36:
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214AB8);
          (*(*(v110 - 8) + 56))(v65, v61, 1, v110);
          sub_24E60169C(v65, v147, &qword_27F214A58);
          swift_storeEnumTagMultiPayload();
          sub_24E63DCC4(&qword_27F214AA0, type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView);
          sub_24E63D844(&qword_27F214AA8, &qword_27F214A58, &unk_24F93E6B8, sub_24E63BFB0);
          v111 = v148;
          sub_24F924E28();
          sub_24E60169C(v111, v153, &qword_27F214A78);
          swift_storeEnumTagMultiPayload();
          sub_24E63BEC8();
          sub_24E63C124(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
          v112 = v154;
          sub_24F924E28();
          sub_24E601704(v111, &qword_27F214A78);
          sub_24E60169C(v112, v159, &qword_27F214A80);
          swift_storeEnumTagMultiPayload();
          sub_24E63BE10();
          sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();
          sub_24E601704(v112, &qword_27F214A80);
          sub_24E601704(v65, &qword_27F214A58);
          goto LABEL_40;
        }

        v79 = MEMORY[0x277D84F90];
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
      v76 = v81;
      v75 = v82;
      v74 = v83;
    }

    sub_24E6B8064(v77, v74, v75, v76);
    v79 = v78;
    v80 = v136;
    goto LABEL_29;
  }

LABEL_16:
  v66 = *(v162 + 56);
  v68 = v163;
  v67 = v164;

  return v66(v67, 1, 1, v68);
}

uint64_t sub_24E63A6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = type metadata accessor for PlayerAvatar(0);
  v150 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v147[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  *&v180 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v147[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F9249B8();
  v165 = *(v9 - 8);
  v166 = v9;
  MEMORY[0x28223BE20](v9);
  v164 = &v147[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = type metadata accessor for ChallengesSlashHeaderView(0);
  MEMORY[0x28223BE20](v161);
  v163 = &v147[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D50);
  v12 = MEMORY[0x28223BE20](v177);
  v162 = &v147[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  *&v167 = &v147[-v14];
  *&v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D58);
  MEMORY[0x28223BE20](v175);
  v176 = &v147[-v15];
  v16 = sub_24F924848();
  v171 = *(v16 - 8);
  v172 = v16;
  MEMORY[0x28223BE20](v16);
  v170 = &v147[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  MEMORY[0x28223BE20](v154);
  *&v179 = &v147[-v18];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D60);
  MEMORY[0x28223BE20](v155);
  v157 = &v147[-v19];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D68);
  MEMORY[0x28223BE20](v156);
  v173 = &v147[-v20];
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D70);
  v21 = MEMORY[0x28223BE20](v174);
  v158 = &v147[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v159 = &v147[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v151 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v153 = &v147[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v160 = &v147[-v28];
  v152 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v147[-v30];
  v32 = sub_24F9289E8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v147[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView();
  v37 = a1;
  v38 = *(a1 + v36[6]);
  v39 = v37;
  sub_24E60169C(v37, v31, &qword_27F213FB0);
  if ((*(v33 + 48))(v31, 1, v32) != 1)
  {
    (*(v33 + 32))(v35, v31, v32);
    v49 = v39;
    v50 = *(v39 + v36[5]);
    v51 = v160;
    (*(v33 + 16))(v160, v35, v32);
    (*(v33 + 56))(v51, 0, 1, v32);
    v149 = v35;
    v168 = v36;
    *&v169 = v49;
    v148 = v38;
    if (v38 >= 3)
    {
      v55 = sub_24E608A68(qword_2861B2740);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0);
      v53 = 5;
      swift_arrayDestroy();
      v54 = 0;
      v58 = 0uLL;
      v56 = 0x4060400000000000;
      v57 = 0uLL;
    }

    else
    {
      v52 = qword_27F2118D0;

      if (v52 != -1)
      {
        swift_once();
      }

      v222 = *&byte_27F252160;
      v221[2] = xmmword_27F252150;
      v221[1] = unk_27F252140;
      v221[0] = xmmword_27F252130;
      v53 = qword_27F252168;
      v54 = byte_27F252160;
      v55 = *(&xmmword_27F252150 + 1);
      v180 = *(&v221[1] + 8);
      v167 = *(v221 + 8);
      v56 = xmmword_27F252130;
      sub_24E63D388(v221, &v212);
      v57 = v180;
      v58 = v167;
    }

    *&v219[0] = v56;
    *(v219 + 8) = v58;
    *(&v219[1] + 8) = v57;
    *(&v219[2] + 1) = v55;
    LOBYTE(v220) = v54;
    *(&v220 + 1) = v53;
    v226 = v219[0];
    v227 = v219[1];
    v228 = v219[2];
    v229 = v220;
    KeyPath = swift_getKeyPath();
    v78 = v179;
    *v179 = KeyPath;
    *(v78 + 8) = 0;
    LOBYTE(v212) = 0;
    sub_24F926F28();
    v79 = *(&v221[0] + 1);
    *(v78 + 16) = v221[0];
    *(v78 + 24) = v79;
    v83 = sub_24E6B7C48(v53, v50);
    if (v82)
    {
      v89 = v82;
      v90 = v81;
      *&v180 = v80;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v91 = swift_dynamicCastClass();
      if (!v91)
      {
        swift_unknownObjectRelease();
        v91 = MEMORY[0x277D84F90];
      }

      v92 = *(v91 + 16);

      if (__OFSUB__(v89 >> 1, v90))
      {
        __break(1u);
      }

      else if (v92 == (v89 >> 1) - v90)
      {
        v85 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v87 = v151;
        v86 = v152;
        v88 = v51;
        if (v85)
        {
          goto LABEL_25;
        }

        v85 = MEMORY[0x277D84F90];
LABEL_24:
        swift_unknownObjectRelease();
LABEL_25:
        *&v167 = v33;
        *&v180 = v32;
        v93 = v179;
        *(v179 + 32) = v85;
        v94 = v154;
        sub_24E60169C(v88, v93 + *(v154 + 44), &qword_27F213FB0);
        v95 = (v93 + v94[13]);
        v96 = v227;
        *v95 = v226;
        v95[1] = v96;
        v97 = v229;
        v95[2] = v228;
        v95[3] = v97;
        *(v93 + v94[12]) = 0xBFC657184AE74487;
        *(v93 + v94[14]) = 0x3FF0000000000000;
        v98 = v153;
        sub_24E6009C8(v88, v153, &qword_27F213FB0);
        v99 = (*(v87 + 80) + 16) & ~*(v87 + 80);
        v100 = (v86 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
        v102 = swift_allocObject();
        sub_24E6009C8(v98, v102 + v99, &qword_27F213FB0);
        *(v102 + v100) = 0xBFC657184AE74487;
        v103 = (v102 + v101);
        v104 = v229;
        v103[2] = v228;
        v103[3] = v104;
        v105 = v227;
        *v103 = v226;
        v103[1] = v105;
        *(v102 + ((v101 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
        v106 = (v93 + v94[15]);
        *v106 = sub_24E63E1EC;
        v106[1] = v102;
        v107 = (v169 + v168[7]);
        v108 = *v107;
        v109 = *(v107 + 8);
        sub_24E63D388(v219, v221);

        if (v109 == 1)
        {
          v110 = v108;
        }

        else
        {
          sub_24F92BDC8();
          v111 = sub_24F9257A8();
          sub_24F921FD8();

          v112 = v170;
          sub_24F924838();
          swift_getAtKeyPath();

          (*(v171 + 8))(v112, v172);
          v110 = *&v221[0];
        }

        v114 = v156;
        v113 = v157;
        swift_getKeyPath();
        *&v221[0] = v110;
        sub_24E63DCC4(&qword_27F214D10, type metadata accessor for CardSafeArea);
        sub_24F91FD88();

        v115 = *(v110 + 32);
        v175 = *(v110 + 16);
        v169 = v115;

        v116 = sub_24F925808();
        sub_24E6009C8(v179, v113, &qword_27F214A50);
        v117 = v113 + *(v155 + 36);
        *v117 = v116;
        *(v117 + 24) = v169;
        *(v117 + 8) = v175;
        *(v117 + 40) = 0;
        sub_24F927618();
        sub_24F9242E8();
        v118 = v173;
        sub_24E6009C8(v113, v173, &qword_27F214D60);
        v119 = &v118[*(v114 + 36)];
        v120 = v222;
        v121 = v224;
        v122 = v225;
        v119[4] = v223;
        v119[5] = v121;
        v119[6] = v122;
        v123 = v221[1];
        *v119 = v221[0];
        v119[1] = v123;
        v119[2] = v221[2];
        v119[3] = v120;

        v124 = v159;
        if ((v109 & 1) == 0)
        {
          sub_24F92BDC8();
          v125 = sub_24F9257A8();
          sub_24F921FD8();

          v126 = v170;
          sub_24F924838();
          swift_getAtKeyPath();

          (*(v171 + 8))(v126, v172);
          v108 = v212;
        }

        swift_getKeyPath();
        *&v212 = v108;
        sub_24F91FD88();

        v127 = *(v108 + 16);

        v128 = v148;
        if (v148 > 2)
        {
          v129 = v176;
          if (v148 != 3 && v148 != 4)
          {

            goto LABEL_37;
          }
        }

        else
        {
          v129 = v176;
        }

        v130 = sub_24F92CE08();

        if ((v130 & 1) == 0)
        {
          sub_24F925868();
          goto LABEL_38;
        }

LABEL_37:
        sub_24F925808();
LABEL_38:
        v131 = sub_24EA91914(v127);
        v133 = v132;
        v135 = v134;
        v137 = v136;
        v138 = sub_24F925808();
        v208 = 0;
        if (v128 > 4)
        {

          v206 = sub_24F925048();
          v207 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(v205);
          sub_24F925258();
        }

        else
        {
          v139 = sub_24F92CE08();

          v206 = sub_24F925048();
          v207 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(v205);
          sub_24F925258();
          if ((v139 & 1) == 0)
          {
            v193 = 1;
            v194 = 0;
            v195 = v210;
            v196 = v211;
            v197 = v138;
            *v198 = *v209;
            *&v198[3] = *&v209[3];
            v199 = v131;
            v200 = v133;
            v201 = v135;
            v202 = v137;
            v203 = 0;
            v204 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0);
            sub_24E63DF14();
            sub_24E63DFA0();
            sub_24F924E28();
LABEL_43:
            __swift_destroy_boxed_opaque_existential_1(v205);
            v140 = sub_24F927618();
            v141 = v158;
            v142 = &v158[*(v174 + 36)];
            v143 = v217;
            *(v142 + 4) = v216;
            *(v142 + 5) = v143;
            v142[96] = v218;
            v144 = v213;
            *v142 = v212;
            *(v142 + 1) = v144;
            v145 = v215;
            *(v142 + 2) = v214;
            *(v142 + 3) = v145;
            *(v142 + 13) = v140;
            *(v142 + 14) = v146;
            sub_24E6009C8(v173, v141, &qword_27F214D68);
            sub_24E6009C8(v141, v124, &qword_27F214D70);
            sub_24E60169C(v124, v129, &qword_27F214D70);
            swift_storeEnumTagMultiPayload();
            sub_24E63DA0C();
            sub_24E63DC08();
            sub_24F924E28();
            sub_24E601704(v124, &qword_27F214D70);
            return (*(v167 + 8))(v149, v180);
          }
        }

        sub_24E615E00(v205, &v192);
        v181 = 1;
        v182 = 0;
        v183 = v210;
        v184 = v211;
        v185 = v138;
        *v186 = *v209;
        *&v186[3] = *&v209[3];
        v187 = v131;
        v188 = v133;
        v189 = v135;
        v190 = v137;
        v191 = 0;
        sub_24E60169C(&v181, &v193, &qword_27F214DD8);
        v204 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0);
        sub_24E63DF14();
        sub_24E63DFA0();
        sub_24F924E28();
        sub_24E601704(&v181, &qword_27F214DD8);
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      v82 = v89;
      v81 = v90;
      v80 = v180;
    }

    sub_24E6B8064(v83, v80, v81, v82);
    v85 = v84;
    v87 = v151;
    v86 = v152;
    v88 = v51;
    goto LABEL_24;
  }

  sub_24E601704(v31, &qword_27F213FB0);
  v40 = v39;
  v41 = *(v39 + v36[5]);
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v168 = v36;
    *&v169 = v40;
    *&v221[0] = MEMORY[0x277D84F90];
    sub_24F457A38(0, v42, 0);
    v43 = *&v221[0];
    v44 = v41 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v45 = *(v150 + 72);
    do
    {
      sub_24E63D3EC(v44, v5, type metadata accessor for PlayerAvatar);
      v46 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78) + 48)];
      sub_24E63D9A4(v5, v8, type metadata accessor for PlayerAvatar);
      *v46 = 0;
      v46[8] = 1;
      *&v221[0] = v43;
      v48 = *(v43 + 16);
      v47 = *(v43 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24F457A38(v47 > 1, v48 + 1, 1);
        v43 = *&v221[0];
      }

      *(v43 + 16) = v48 + 1;
      sub_24E63D9A4(v8, v43 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v48, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      v44 += v45;
      --v42;
    }

    while (v42);
    v36 = v168;
    v40 = v169;
  }

  v59 = (v40 + v36[7]);
  v60 = *v59;
  v61 = *(v59 + 8);

  v62 = v176;
  if ((v61 & 1) == 0)
  {
    sub_24F92BDC8();
    v63 = sub_24F9257A8();
    sub_24F921FD8();

    v64 = v170;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v171 + 8))(v64, v172);
    v60 = *&v221[0];
  }

  swift_getKeyPath();
  *&v221[0] = v60;
  sub_24E63DCC4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v65 = *(v60 + 16);
  v179 = *(v60 + 32);
  v180 = v65;

  *&v212 = sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80);
  sub_24F926F28();
  v66 = *(&v221[0] + 1);
  v67 = v163;
  *(v163 + 11) = *&v221[0];
  *(v67 + 96) = v66;
  v212 = 0uLL;
  LOBYTE(v213) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  v68 = v221[1];
  v69 = *(&v221[1] + 1);
  *(v67 + 104) = v221[0];
  *(v67 + 120) = v68;
  *(v67 + 128) = v69;
  v70 = v161;
  v71 = *(v161 + 40);
  *(v67 + v71) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(v67 + v70[11]) = 0x4031000000000000;
  *(v67 + v70[12]) = 0x4020000000000000;
  v72 = (v67 + v70[13]);
  *v72 = 0xD000000000000017;
  v72[1] = 0x800000024FA453F0;
  *v67 = v43;
  *(v67 + 8) = 1;
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = 1;
  *(v67 + 40) = 0;
  *(v67 + 48) = 1;
  v73 = v180;
  *(v67 + 72) = v179;
  *(v67 + 56) = v73;
  (*(v165 + 104))(v164, *MEMORY[0x277CE00F0], v166);
  v74 = v162;
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  sub_24E63D9A4(v67, v74, type metadata accessor for ChallengesSlashHeaderView);
  v75 = v167;
  sub_24E6009C8(v74, v167, &qword_27F214D50);
  sub_24E60169C(v75, v62, &qword_27F214D50);
  swift_storeEnumTagMultiPayload();
  sub_24E63DA0C();
  sub_24E63DC08();
  sub_24F924E28();
  return sub_24E601704(v75, &qword_27F214D50);
}

uint64_t type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView()
{
  result = qword_27F214D18;
  if (!qword_27F214D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E63BE10()
{
  result = qword_27F214A90;
  if (!qword_27F214A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A80);
    sub_24E63BEC8();
    sub_24E63C124(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214A90);
  }

  return result;
}

unint64_t sub_24E63BEC8()
{
  result = qword_27F214A98;
  if (!qword_27F214A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A78);
    sub_24E63DCC4(&qword_27F214AA0, type metadata accessor for ChallengeSuggestionCardConfiguration.VisualView);
    sub_24E63D844(&qword_27F214AA8, &qword_27F214A58, &unk_24F93E6B8, sub_24E63BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214A98);
  }

  return result;
}

unint64_t sub_24E63BFB0()
{
  result = qword_27F214AB0;
  if (!qword_27F214AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214AB8);
    sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
    sub_24E63C068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AB0);
  }

  return result;
}

unint64_t sub_24E63C068()
{
  result = qword_27F214AC8;
  if (!qword_27F214AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A40);
    sub_24E63DCC4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AC8);
  }

  return result;
}

uint64_t sub_24E63C124(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E63DCC4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E63C1D8()
{
  result = qword_27F214AE8;
  if (!qword_27F214AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A28);
    sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AE8);
  }

  return result;
}

unint64_t sub_24E63C290()
{
  result = qword_27F214AF8;
  if (!qword_27F214AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B00);
    sub_24E63C31C();
    sub_24E63CD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AF8);
  }

  return result;
}

unint64_t sub_24E63C31C()
{
  result = qword_27F214B08;
  if (!qword_27F214B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B10);
    sub_24E63C3A8();
    sub_24E63C960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B08);
  }

  return result;
}

unint64_t sub_24E63C3A8()
{
  result = qword_27F214B18;
  if (!qword_27F214B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B20);
    sub_24E63C434();
    sub_24E63C8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B18);
  }

  return result;
}

unint64_t sub_24E63C434()
{
  result = qword_27F214B28;
  if (!qword_27F214B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B30);
    sub_24E63D844(&qword_27F214B38, &qword_27F214B40, &unk_24F94FFA0, sub_24E63C518);
    sub_24E63D844(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B28);
  }

  return result;
}

unint64_t sub_24E63C518()
{
  result = qword_27F214B48;
  if (!qword_27F214B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B50);
    sub_24E63C5D4();
    sub_24E63DCC4(&qword_27F214B78, type metadata accessor for CardElementView.Category);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B48);
  }

  return result;
}

unint64_t sub_24E63C5D4()
{
  result = qword_27F214B58;
  if (!qword_27F214B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B60);
    sub_24E63C68C();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B58);
  }

  return result;
}

unint64_t sub_24E63C68C()
{
  result = qword_27F214B68;
  if (!qword_27F214B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B70);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B68);
  }

  return result;
}

unint64_t sub_24E63C774()
{
  result = qword_27F214B90;
  if (!qword_27F214B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B98);
    sub_24E63C82C();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B90);
  }

  return result;
}

unint64_t sub_24E63C82C()
{
  result = qword_27F214BA0;
  if (!qword_27F214BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BA0);
  }

  return result;
}

unint64_t sub_24E63C8B0()
{
  result = qword_27F214BB0;
  if (!qword_27F214BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214BB8);
    sub_24E63D844(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BB0);
  }

  return result;
}

unint64_t sub_24E63C960()
{
  result = qword_27F214BC0;
  if (!qword_27F214BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214BC8);
    sub_24E63C9EC();
    sub_24E63CAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BC0);
  }

  return result;
}

unint64_t sub_24E63C9EC()
{
  result = qword_27F214BD0;
  if (!qword_27F214BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214BD8);
    sub_24E63DCC4(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
    sub_24E63D844(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BD0);
  }

  return result;
}

unint64_t sub_24E63CAD4()
{
  result = qword_27F214BE8;
  if (!qword_27F214BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214BF0);
    sub_24E63D844(&qword_27F214BF8, &qword_27F214C00, &unk_24F93E770, sub_24E63CB8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BE8);
  }

  return result;
}

unint64_t sub_24E63CB8C()
{
  result = qword_27F214C08;
  if (!qword_27F214C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C10);
    sub_24E63CC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C08);
  }

  return result;
}

unint64_t sub_24E63CC18()
{
  result = qword_27F214C18;
  if (!qword_27F214C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C20);
    sub_24F9289E8();
    sub_24F921AF8();
    sub_24E63DCC4(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E63DCC4(&qword_27F214C30, MEMORY[0x277D7EBE8]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F214C38, &qword_27F214C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C18);
  }

  return result;
}

unint64_t sub_24E63CD80()
{
  result = qword_27F214C48;
  if (!qword_27F214C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C50);
    sub_24E63CE0C();
    sub_24E63D208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C48);
  }

  return result;
}

unint64_t sub_24E63CE0C()
{
  result = qword_27F214C58;
  if (!qword_27F214C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C60);
    sub_24E63CEC4();
    sub_24E63C124(&qword_27F214C80, &qword_27F214C88, &unk_24F950000, sub_24E63CF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C58);
  }

  return result;
}

unint64_t sub_24E63CEC4()
{
  result = qword_27F214C68;
  if (!qword_27F214C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C70);
    sub_24E63DCC4(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C68);
  }

  return result;
}

unint64_t sub_24E63CF80()
{
  result = qword_27F214C90;
  if (!qword_27F214C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C98);
    sub_24E63D00C();
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C90);
  }

  return result;
}

unint64_t sub_24E63D00C()
{
  result = qword_27F214CA0;
  if (!qword_27F214CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CA8);
    sub_24E63D098();
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214CA0);
  }

  return result;
}

unint64_t sub_24E63D098()
{
  result = qword_27F214CB0;
  if (!qword_27F214CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8);
    sub_24E602068(&qword_27F214CC0, &qword_27F214CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214CB0);
  }

  return result;
}

unint64_t sub_24E63D150()
{
  result = qword_27F214CD0;
  if (!qword_27F214CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A10);
    sub_24E602068(&qword_27F214CD8, &qword_27F214CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214CD0);
  }

  return result;
}

unint64_t sub_24E63D208()
{
  result = qword_27F214CE8;
  if (!qword_27F214CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CF0);
    sub_24E63D294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214CE8);
  }

  return result;
}

unint64_t sub_24E63D294()
{
  result = qword_27F214CF8;
  if (!qword_27F214CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214CF8);
  }

  return result;
}

uint64_t sub_24E63D310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E63D3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E63D454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E63D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E63D5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24E63D668()
{
  sub_24E63D79C(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E63D79C(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E63D79C(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E63D79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24E63D844(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E63D8C0()
{
  result = qword_27F214D48;
  if (!qword_27F214D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A88);
    sub_24E63BE10();
    sub_24E63D844(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214D48);
  }

  return result;
}

uint64_t sub_24E63D9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E63DA0C()
{
  result = qword_27F214D98;
  if (!qword_27F214D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D70);
    sub_24E63DAC4();
    sub_24E602068(&qword_27F214DB0, &qword_27F214DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214D98);
  }

  return result;
}

unint64_t sub_24E63DAC4()
{
  result = qword_27F214DA0;
  if (!qword_27F214DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D68);
    sub_24E63DB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DA0);
  }

  return result;
}

unint64_t sub_24E63DB50()
{
  result = qword_27F214DA8;
  if (!qword_27F214DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D60);
    sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DA8);
  }

  return result;
}

unint64_t sub_24E63DC08()
{
  result = qword_27F214DC0;
  if (!qword_27F214DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D50);
    sub_24E63DCC4(&qword_27F214DC8, type metadata accessor for ChallengesSlashHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DC0);
  }

  return result;
}

uint64_t sub_24E63DCC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24E63DE54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v6 + 71) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F81C78C(v1 + v4, (v1 + v6), a1, v7, v8);
}

unint64_t sub_24E63DF14()
{
  result = qword_27F214DE8;
  if (!qword_27F214DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214DD8);
    sub_24E63DFA0();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DE8);
  }

  return result;
}

unint64_t sub_24E63DFA0()
{
  result = qword_27F214DF0;
  if (!qword_27F214DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214DE0);
    sub_24E63E02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DF0);
  }

  return result;
}

unint64_t sub_24E63E02C()
{
  result = qword_27F214DF8;
  if (!qword_27F214DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214DF8);
  }

  return result;
}

unint64_t sub_24E63E080()
{
  result = qword_27F214E00;
  if (!qword_27F214E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E00);
  }

  return result;
}

unint64_t sub_24E63E0D8()
{
  result = qword_27F214E08;
  if (!qword_27F214E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214E10);
    sub_24E63E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E08);
  }

  return result;
}

unint64_t sub_24E63E15C()
{
  result = qword_27F214E18;
  if (!qword_27F214E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214E20);
    sub_24E63DA0C();
    sub_24E63DC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E18);
  }

  return result;
}

uint64_t PageToolbarItem.Appearance.ButtonBackgroundShape.shape.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F9271D8();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    sub_24E63E314();
  }

  else
  {
    v6 = *MEMORY[0x277CE0118];
    v7 = sub_24F924B38();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    sub_24E63E4A8(&qword_27F214E30, MEMORY[0x277CE1260]);
  }

  result = sub_24F927348();
  *a1 = result;
  return result;
}

unint64_t sub_24E63E314()
{
  result = qword_27F214E28;
  if (!qword_27F214E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E28);
  }

  return result;
}

unint64_t PageToolbarItem.Appearance.ButtonBackgroundShape.focusEffectShape.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    a1[3] = MEMORY[0x277CE1120];
    result = sub_24E63E454();
    a1[4] = result;
  }

  else
  {
    a1[3] = sub_24F9271D8();
    a1[4] = sub_24E63E4A8(&qword_27F214E38, MEMORY[0x277CE1260]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v5 = *MEMORY[0x277CE0118];
    v6 = sub_24F924B38();
    v7 = *(*(v6 - 8) + 104);

    return v7(boxed_opaque_existential_1, v5, v6);
  }

  return result;
}

unint64_t sub_24E63E454()
{
  result = qword_27F255020;
  if (!qword_27F255020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255020);
  }

  return result;
}

uint64_t sub_24E63E4A8(unint64_t *a1, void (*a2)(uint64_t))
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

GameStoreKit::PageToolbarItem::Appearance::ButtonBackgroundShape_optional __swiftcall PageToolbarItem.Appearance.ButtonBackgroundShape.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PageToolbarItem.Appearance.ButtonBackgroundShape.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x656C7573706163;
  }
}

uint64_t sub_24E63E58C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x656C7573706163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x656C7573706163;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E63E630()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E63E6B0()
{
  sub_24F92B218();
}

uint64_t sub_24E63E71C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E63E798@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24E63E7F8(uint64_t *a1@<X8>)
{
  v2 = 0x656C7573706163;
  if (*v1)
  {
    v2 = 0x656C63726963;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24E63E8E4()
{
  if (*v0)
  {
    return 0x616D496C6562616CLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_24E63E920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D496C6562616CLL && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E63EA00(uint64_t a1)
{
  v2 = sub_24E63FEFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63EA3C(uint64_t a1)
{
  v2 = sub_24E63FEFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63EA78()
{
  v1 = 0x6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E63EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E642E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E63EB00(uint64_t a1)
{
  v2 = sub_24E63FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63EB3C(uint64_t a1)
{
  v2 = sub_24E63FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63EB80()
{
  v1 = *v0;
  v2 = 0x726579616C70;
  v3 = 1970169197;
  v4 = 0x6E694C6572616873;
  if (v1 != 4)
  {
    v4 = 0x63416E6564646968;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F74747562;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E63EC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E642F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E63EC68(uint64_t a1)
{
  v2 = sub_24E63FD58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63ECA4(uint64_t a1)
{
  v2 = sub_24E63FD58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63ECEC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24E63ED1C(uint64_t a1)
{
  v2 = sub_24E63FDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63ED58(uint64_t a1)
{
  v2 = sub_24E63FDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63ED94()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_24E63EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E64319C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E63EE14(uint64_t a1)
{
  v2 = sub_24E63FE54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63EE50(uint64_t a1)
{
  v2 = sub_24E63FE54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63EEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E63EF24(uint64_t a1)
{
  v2 = sub_24E64006C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63EF60(uint64_t a1)
{
  v2 = sub_24E64006C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E63EF9C(uint64_t a1)
{
  v2 = sub_24E63FE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63EFD8(uint64_t a1)
{
  v2 = sub_24E63FE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageToolbarItem.Appearance.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E40);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E48);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v57 - v5;
  v6 = sub_24F91F4A8();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E50);
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v57 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E58);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v57 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E60);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v57 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E68);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v13 = &v57 - v12;
  v14 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E70);
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v21 = &v57 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E63FD58();
  v81 = v21;
  sub_24F92D128();
  sub_24E641FB8(v80, v19, type metadata accessor for PageToolbarItem.Appearance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v40 = *(v19 + 4);
      LOBYTE(v83) = 3;
      sub_24E63FE54();
      v41 = v75;
      v43 = v81;
      v42 = v82;
      sub_24F92CC98();
      LOBYTE(v83) = 0;
      v44 = v77;
      v45 = v79;
      sub_24F92CD08();

      if (v45)
      {

        (*(v76 + 8))(v41, v44);
        return (*(v78 + 8))(v43, v42);
      }

      else
      {
        LOBYTE(v83) = 1;
        sub_24F92CCA8();

        v83 = v40;
        v86 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98);
        sub_24E641234(&qword_27F214EA0, sub_24E63FEA8);
        sub_24F92CD48();
        (*(v76 + 8))(v41, v44);
        (*(v78 + 8))(v43, v42);
      }
    }

    else
    {
      v32 = v81;
      v31 = v82;
      if (EnumCaseMultiPayload == 4)
      {
        v34 = v71;
        v33 = v72;
        v35 = v67;
        (*(v71 + 32))(v67, v19, v72);
        LOBYTE(v83) = 4;
        sub_24E63FE00();
        v36 = v70;
        sub_24F92CC98();
        sub_24E63E4A8(&qword_27F2149C0, MEMORY[0x277CC9260]);
        v37 = v74;
        sub_24F92CD48();
        (*(v73 + 8))(v36, v37);
        (*(v34 + 8))(v35, v33);
      }

      else
      {
        LOBYTE(v83) = 5;
        sub_24E63FDAC();
        v55 = v65;
        sub_24F92CC98();
        (*(v68 + 8))(v55, v69);
      }

      return (*(v78 + 8))(v32, v31);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24E6411CC(v19, v16, type metadata accessor for Player);
      LOBYTE(v83) = 0;
      sub_24E64006C();
      v28 = v81;
      v27 = v82;
      sub_24F92CC98();
      sub_24E63E4A8(&qword_27F213E28, type metadata accessor for Player);
      v39 = v59;
      sub_24F92CD48();
      (*(v58 + 8))(v13, v39);
      sub_24E641F08(v16, type metadata accessor for Player);
      return (*(v78 + 8))(v28, v27);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      v25 = v19[32];
      LODWORD(v80) = v19[33];
      LOBYTE(v83) = 1;
      sub_24E63FFAC();
      v26 = v60;
      v28 = v81;
      v27 = v82;
      sub_24F92CC98();
      LOBYTE(v83) = 0;
      v29 = v63;
      v30 = v79;
      sub_24F92CCA8();
      if (v30)
      {

        sub_24E640000(v24, v23, v25);
        (*(v62 + 8))(v26, v29);
        return (*(v78 + 8))(v28, v27);
      }

      v56 = v80;

      v83 = v24;
      v84 = v23;
      v85 = v25;
      v86 = 1;
      sub_24E63FF50();
      sub_24F92CCF8();
      sub_24E640000(v24, v23, v25);
      LOBYTE(v83) = v56;
      v86 = 2;
      sub_24E640018();
      sub_24F92CCF8();
      (*(v62 + 8))(v26, v29);
      return (*(v78 + 8))(v81, v82);
    }

    else
    {
      v46 = *v19;
      v47 = *(v19 + 1);
      v48 = v19[16];
      v49 = *(v19 + 4);
      v76 = *(v19 + 3);
      v77 = v49;
      LODWORD(v80) = v19[40];
      LOBYTE(v83) = 2;
      sub_24E63FEFC();
      v50 = v61;
      v51 = v81;
      v52 = v82;
      sub_24F92CC98();
      v83 = v46;
      v84 = v47;
      v85 = v48;
      v86 = 0;
      sub_24E63FF50();
      v53 = v66;
      v54 = v79;
      sub_24F92CD48();
      sub_24E63FFA4();
      if (v54)
      {
        (*(v64 + 8))(v50, v53);
        (*(v78 + 8))(v51, v52);
      }

      else
      {
        v83 = v76;
        v84 = v77;
        v85 = v80;
        v86 = 1;
        sub_24F92CD48();
        (*(v64 + 8))(v50, v53);
        (*(v78 + 8))(v81, v82);
      }

      return sub_24E63FFA4();
    }
  }
}

unint64_t sub_24E63FD58()
{
  result = qword_27F214E78;
  if (!qword_27F214E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E78);
  }

  return result;
}

unint64_t sub_24E63FDAC()
{
  result = qword_27F214E80;
  if (!qword_27F214E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E80);
  }

  return result;
}

unint64_t sub_24E63FE00()
{
  result = qword_27F214E88;
  if (!qword_27F214E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E88);
  }

  return result;
}

unint64_t sub_24E63FE54()
{
  result = qword_27F214E90;
  if (!qword_27F214E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E90);
  }

  return result;
}

unint64_t sub_24E63FEA8()
{
  result = qword_27F214EA8;
  if (!qword_27F214EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214EA8);
  }

  return result;
}

unint64_t sub_24E63FEFC()
{
  result = qword_27F214EB0;
  if (!qword_27F214EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214EB0);
  }

  return result;
}

unint64_t sub_24E63FF50()
{
  result = qword_27F214EB8;
  if (!qword_27F214EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214EB8);
  }

  return result;
}

unint64_t sub_24E63FFAC()
{
  result = qword_27F214EC0;
  if (!qword_27F214EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214EC0);
  }

  return result;
}

uint64_t sub_24E640000(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E63FFA4();
  }

  return result;
}

unint64_t sub_24E640018()
{
  result = qword_27F214EC8;
  if (!qword_27F214EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214EC8);
  }

  return result;
}

unint64_t sub_24E64006C()
{
  result = qword_27F214ED0;
  if (!qword_27F214ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214ED0);
  }

  return result;
}

uint64_t PageToolbarItem.Appearance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214ED8);
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v118 = &v90 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214EE0);
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v111 = &v90 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214EE8);
  v109 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v117 = &v90 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214EF0);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v110 = &v90 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214EF8);
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v116 = &v90 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214F00);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v114 = &v90 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214F08);
  v119 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v10 = &v90 - v9;
  v113 = type metadata accessor for PageToolbarItem.Appearance(0);
  v11 = MEMORY[0x28223BE20](v113);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v90 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v90 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v90 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  v27 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24E63FD58();
  v28 = v120;
  sub_24F92D108();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v94 = v24;
  v93 = v18;
  v29 = v114;
  v91 = v21;
  v92 = v15;
  v31 = v117;
  v30 = v118;
  v32 = v116;
  v96 = 0;
  v95 = v26;
  v33 = v115;
  v120 = v10;
  v34 = sub_24F92CC78();
  v35 = v34;
  if (*(v34 + 16) != 1 || (v36 = *(v34 + 32), v36 == 6))
  {
    v45 = sub_24F92C918();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v47 = v113;
    v48 = v120;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v119 + 8))(v48, v33);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  if (*(v34 + 32) <= 2u)
  {
    if (*(v34 + 32))
    {
      v37 = v96;
      if (v36 == 1)
      {
        LOBYTE(v124) = 1;
        sub_24E63FFAC();
        v38 = v32;
        v39 = v120;
        sub_24F92CBA8();
        if (!v37)
        {
          LOBYTE(v124) = 0;
          v40 = v104;
          v41 = sub_24F92CBC8();
          v43 = v42;
          v44 = v41;
          LOBYTE(v122) = 1;
          sub_24E641300();
          sub_24F92CC18();
          v118 = v35;
          v82 = v33;
          v83 = v124;
          v84 = v125;
          v85 = v126;
          v127 = 2;
          sub_24E641354();
          sub_24F92CC18();
          v96 = 0;
          (*(v106 + 8))(v38, v40);
          (*(v119 + 8))(v120, v82);
          swift_unknownObjectRelease();
          v88 = v122;
          v89 = v91;
          *v91 = v44;
          v89[1] = v43;
          v89[2] = v83;
          v89[3] = v84;
          *(v89 + 32) = v85;
          *(v89 + 33) = v88;
LABEL_30:
          swift_storeEnumTagMultiPayload();
          v76 = v89;
          goto LABEL_31;
        }

        goto LABEL_18;
      }

      LOBYTE(v124) = 2;
      sub_24E63FEFC();
      v62 = v110;
      v63 = v120;
      v64 = v37;
      sub_24F92CBA8();
      v65 = v119;
      if (!v64)
      {
        LOBYTE(v122) = 0;
        sub_24E641300();
        v71 = v103;
        sub_24F92CC68();
        v118 = v35;
        v78 = v124;
        v77 = v125;
        v79 = v126;
        v127 = 1;
        sub_24F92CC68();
        v96 = 0;
        (*(v101 + 8))(v62, v71);
        (*(v65 + 8))(v120, v33);
        swift_unknownObjectRelease();
        v86 = v123;
        v89 = v93;
        *v93 = v78;
        v89[1] = v77;
        *(v89 + 16) = v79;
        *(v89 + 3) = v122;
        *(v89 + 40) = v86;
        goto LABEL_30;
      }

      (*(v119 + 8))(v63, v33);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v121);
    }

    LOBYTE(v124) = 0;
    sub_24E64006C();
    v57 = v29;
    v39 = v120;
    v58 = v96;
    sub_24F92CBA8();
    if (v58)
    {
LABEL_18:
      (*(v119 + 8))(v39, v33);
      goto LABEL_11;
    }

    type metadata accessor for Player(0);
    v118 = v35;
    sub_24E63E4A8(&qword_27F213E38, type metadata accessor for Player);
    v55 = v94;
    v67 = v100;
    sub_24F92CC68();
    (*(v99 + 8))(v57, v67);
    (*(v119 + 8))(v39, v33);
    swift_unknownObjectRelease();
    v96 = 0;
LABEL_29:
    swift_storeEnumTagMultiPayload();
    v76 = v55;
LABEL_31:
    v72 = v95;
    sub_24E6411CC(v76, v95, type metadata accessor for PageToolbarItem.Appearance);
    v50 = v112;
    goto LABEL_32;
  }

  if (v36 == 3)
  {
    LOBYTE(v124) = 3;
    sub_24E63FE54();
    v59 = v120;
    v60 = v96;
    sub_24F92CBA8();
    v61 = v119;
    if (!v60)
    {
      LOBYTE(v124) = 0;
      v68 = v31;
      v69 = v98;
      v70 = sub_24F92CC28();
      v74 = v73;
      v118 = v70;
      LOBYTE(v124) = 1;
      v75 = sub_24F92CBC8();
      v81 = v80;
      v116 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98);
      LOBYTE(v122) = 2;
      sub_24E641234(&qword_27F214F10, sub_24E6412AC);
      sub_24F92CC68();
      v96 = 0;
      (*(v109 + 8))(v68, v69);
      (*(v61 + 8))(v120, v33);
      swift_unknownObjectRelease();
      v87 = v124;
      v89 = v92;
      *v92 = v118;
      v89[1] = v74;
      v89[2] = v116;
      v89[3] = v81;
      v89[4] = v87;
      goto LABEL_30;
    }

    (*(v119 + 8))(v59, v33);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v50 = v112;
  v51 = v119;
  v52 = v120;
  if (v36 == 4)
  {
    LOBYTE(v124) = 4;
    sub_24E63FE00();
    v53 = v111;
    v54 = v96;
    sub_24F92CBA8();
    if (!v54)
    {
      sub_24F91F4A8();
      sub_24E63E4A8(&qword_27F2145E0, MEMORY[0x277CC9260]);
      v55 = v97;
      v56 = v107;
      sub_24F92CC68();
      v96 = 0;
      (*(v108 + 8))(v53, v56);
      (*(v51 + 8))(v52, v33);
      swift_unknownObjectRelease();
      goto LABEL_29;
    }

LABEL_24:
    (*(v51 + 8))(v52, v33);
    goto LABEL_11;
  }

  LOBYTE(v124) = 5;
  sub_24E63FDAC();
  v66 = v96;
  sub_24F92CBA8();
  if (v66)
  {
    goto LABEL_24;
  }

  v96 = 0;
  (*(v102 + 8))(v30, v105);
  (*(v51 + 8))(v52, v33);
  swift_unknownObjectRelease();
  v72 = v95;
  swift_storeEnumTagMultiPayload();
LABEL_32:
  sub_24E6411CC(v72, v50, type metadata accessor for PageToolbarItem.Appearance);
  return __swift_destroy_boxed_opaque_existential_1(v121);
}

uint64_t sub_24E6411CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E641234(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214E98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6412AC()
{
  result = qword_27F214F18;
  if (!qword_27F214F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214F18);
  }

  return result;
}

unint64_t sub_24E641300()
{
  result = qword_27F214F20;
  if (!qword_27F214F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214F20);
  }

  return result;
}

unint64_t sub_24E641354()
{
  result = qword_27F214F28;
  if (!qword_27F214F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214F28);
  }

  return result;
}

uint64_t sub_24E6413C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 21;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E6413F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E64142C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E641464()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E641498()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E6414CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E641500()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E641534()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24E641568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24E641594()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PageToolbarItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24E641628()
{
  v1 = 0x6E61726165707061;
  if (*v0 != 1)
  {
    v1 = 0x6575676573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24E641678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6432BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6416A0(uint64_t a1)
{
  v2 = sub_24E64195C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6416DC(uint64_t a1)
{
  v2 = sub_24E64195C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageToolbarItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214F30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E64195C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PageToolbarItem(0);
    v8[14] = 1;
    type metadata accessor for PageToolbarItem.Appearance(0);
    sub_24E63E4A8(&qword_27F214F40, type metadata accessor for PageToolbarItem.Appearance);
    sub_24F92CD48();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E64195C()
{
  result = qword_27F214F38;
  if (!qword_27F214F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214F38);
  }

  return result;
}

uint64_t sub_24E6419D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24EC90);
    sub_24E641F68(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PageToolbarItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214F48);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PageToolbarItem(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v10 + *(v8 + 24);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  sub_24E61DA68(v26, v11, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E64195C();
  v24 = v6;
  v12 = v25;
  sub_24F92D108();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E641EA0(v11);
  }

  else
  {
    v25 = a1;
    v13 = v21;
    LOBYTE(v26[0]) = 0;
    *v10 = sub_24F92CC28();
    v10[1] = v14;
    v18 = v14;
    v19 = v10;
    LOBYTE(v26[0]) = 1;
    sub_24E63E4A8(&qword_27F214F50, type metadata accessor for PageToolbarItem.Appearance);
    sub_24F92CC68();
    sub_24E6411CC(v4, v19 + *(v7 + 20), type metadata accessor for PageToolbarItem.Appearance);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v28 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v15 = v25;
    (*(v13 + 8))(v24, v23);
    sub_24E61DA68(v26, v11, qword_27F24EC90);
    v16 = v19;
    sub_24E641FB8(v19, v20, type metadata accessor for PageToolbarItem);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return sub_24E641F08(v16, type metadata accessor for PageToolbarItem);
  }
}

uint64_t sub_24E641EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E641F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E641F68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E641FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E642024()
{
  result = qword_27F214F58;
  if (!qword_27F214F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214F58);
  }

  return result;
}

uint64_t sub_24E6420A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_24E6420C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PageToolbarItem.Appearance(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E642188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PageToolbarItem.Appearance(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E64222C()
{
  type metadata accessor for PageToolbarItem.Appearance(319);
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E6422C0()
{
  sub_24E64254C(319, &qword_27F214F80, type metadata accessor for Player);
  if (v0 <= 0x3F)
  {
    sub_24E6423A8();
    if (v1 <= 0x3F)
    {
      sub_24E642458();
      if (v2 <= 0x3F)
      {
        sub_24E6424B8();
        if (v3 <= 0x3F)
        {
          sub_24E64254C(319, &qword_27F214FB0, MEMORY[0x277CC9260]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E6423A8()
{
  if (!qword_27F214F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214F98);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F214F88);
    }
  }
}

void sub_24E642458()
{
  if (!qword_27F214FA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F214FA0);
    }
  }
}

void sub_24E6424B8()
{
  if (!qword_27F214FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214E98);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F214FA8);
    }
  }
}

void sub_24E64254C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E6425B4()
{
  result = qword_27F214FB8;
  if (!qword_27F214FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FB8);
  }

  return result;
}

unint64_t sub_24E642694()
{
  result = qword_27F214FC0;
  if (!qword_27F214FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FC0);
  }

  return result;
}

unint64_t sub_24E6426EC()
{
  result = qword_27F214FC8;
  if (!qword_27F214FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FC8);
  }

  return result;
}

unint64_t sub_24E642744()
{
  result = qword_27F214FD0;
  if (!qword_27F214FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FD0);
  }

  return result;
}

unint64_t sub_24E64279C()
{
  result = qword_27F214FD8;
  if (!qword_27F214FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FD8);
  }

  return result;
}

unint64_t sub_24E6427F4()
{
  result = qword_27F214FE0;
  if (!qword_27F214FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FE0);
  }

  return result;
}

unint64_t sub_24E64284C()
{
  result = qword_27F214FE8;
  if (!qword_27F214FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FE8);
  }

  return result;
}

unint64_t sub_24E6428A4()
{
  result = qword_27F214FF0;
  if (!qword_27F214FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FF0);
  }

  return result;
}

unint64_t sub_24E6428FC()
{
  result = qword_27F214FF8;
  if (!qword_27F214FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214FF8);
  }

  return result;
}

unint64_t sub_24E642954()
{
  result = qword_27F215000;
  if (!qword_27F215000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215000);
  }

  return result;
}

unint64_t sub_24E6429AC()
{
  result = qword_27F215008;
  if (!qword_27F215008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215008);
  }

  return result;
}

unint64_t sub_24E642A04()
{
  result = qword_27F215010;
  if (!qword_27F215010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215010);
  }

  return result;
}

unint64_t sub_24E642A5C()
{
  result = qword_27F215018;
  if (!qword_27F215018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215018);
  }

  return result;
}

unint64_t sub_24E642AB4()
{
  result = qword_27F215020;
  if (!qword_27F215020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215020);
  }

  return result;
}

unint64_t sub_24E642B0C()
{
  result = qword_27F215028;
  if (!qword_27F215028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215028);
  }

  return result;
}

unint64_t sub_24E642B64()
{
  result = qword_27F215030;
  if (!qword_27F215030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215030);
  }

  return result;
}

unint64_t sub_24E642BBC()
{
  result = qword_27F215038;
  if (!qword_27F215038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215038);
  }

  return result;
}

unint64_t sub_24E642C14()
{
  result = qword_27F215040;
  if (!qword_27F215040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215040);
  }

  return result;
}

unint64_t sub_24E642C6C()
{
  result = qword_27F215048;
  if (!qword_27F215048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215048);
  }

  return result;
}

unint64_t sub_24E642CC4()
{
  result = qword_27F215050;
  if (!qword_27F215050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215050);
  }

  return result;
}

unint64_t sub_24E642D1C()
{
  result = qword_27F215058;
  if (!qword_27F215058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215058);
  }

  return result;
}

unint64_t sub_24E642D74()
{
  result = qword_27F215060;
  if (!qword_27F215060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215060);
  }

  return result;
}

unint64_t sub_24E642DCC()
{
  result = qword_27F215068;
  if (!qword_27F215068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215068);
  }

  return result;
}

unint64_t sub_24E642E24()
{
  result = qword_27F215070;
  if (!qword_27F215070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215070);
  }

  return result;
}

uint64_t sub_24E642E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF6570616853646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E642F90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024FA45470 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C6572616873 && a2 == 0xE90000000000006BLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63416E6564646968 && a2 == 0xEF79726F73736563)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24E64319C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E6432BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24E6433D0()
{
  result = qword_27F215078;
  if (!qword_27F215078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215078);
  }

  return result;
}

uint64_t sub_24E64346C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GSKShelf();
  sub_24E643844(v1 + *(v14 + 20), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F213E68);
    v15 = v1;
    v16 = a1;
  }

  else
  {
    v27 = v1;
    v28 = a1;
    v26 = *(v11 + 32);
    v26(v13, v9, v10);
    sub_24F9295B8();
    v17 = sub_24F929558();
    (*(v4 + 8))(v6, v3);
    if (v17 == -1)
    {
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      v18 = sub_24F9295F8();
      if (!*(v18 + 16) || (v19 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL), (v20 & 1) == 0))
      {

        v30 = 0u;
        v31 = 0u;
        sub_24E601704(&v30, &qword_27F2129B0);
        *(&v31 + 1) = MEMORY[0x277D83B88];
        *&v30 = v17;
        v21 = sub_24F9295E8();
        sub_24E98859C(&v30, 0x6973736572706D69, 0xEF7865646E496E6FLL);
        v21(v29, 0);
        v22 = v28;
        sub_24E614E60(v27, v28);
        v23 = *(v14 + 20);
        sub_24E601704(v22 + v23, &qword_27F213E68);
        v26((v22 + v23), v13, v10);
        return (*(v11 + 56))(v22 + v23, 0, 1, v10);
      }

      sub_24E643A9C(*(v18 + 56) + 32 * v19, &v30);

      (*(v11 + 8))(v13, v10);
      sub_24E601704(&v30, &qword_27F2129B0);
    }

    v15 = v27;
    v16 = v28;
  }

  return sub_24E614E60(v15, v16);
}

uint64_t sub_24E643844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6438B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - v1;
  sub_24F92ADC8();
  v3 = sub_24F929608();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F213E68);
LABEL_11:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_12;
  }

  v5 = sub_24F9295F8();
  (*(v4 + 8))(v2, v3);
  if (!*(v5 + 16) || (v6 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL), (v7 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_24E643A9C(*(v5 + 56) + 32 * v6, &v10);

  if (!*(&v11 + 1))
  {
LABEL_12:
    sub_24E601704(&v10, &qword_27F2129B0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v9[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E643A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24E643B00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
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

uint64_t sub_24E643B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E643C20@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215088);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215090);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  *v15 = sub_24F9249A8();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215098);
  sub_24E643EA0(a1, &v15[*(v16 + 44)]);
  v17 = sub_24F9257F8();
  sub_24F923318();
  v18 = &v15[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  *v8 = sub_24F924C98();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150A0);
  sub_24E644AAC(a1, &v8[*(v23 + 44)]);
  sub_24E60169C(v15, v13, &qword_27F215090);
  sub_24E60169C(v8, v6, &qword_27F215088);
  v24 = v28;
  sub_24E60169C(v13, v28, &qword_27F215090);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150A8);
  sub_24E60169C(v6, v24 + *(v25 + 48), &qword_27F215088);
  sub_24E601704(v8, &qword_27F215088);
  sub_24E601704(v15, &qword_27F215090);
  sub_24E601704(v6, &qword_27F215088);
  return sub_24E601704(v13, &qword_27F215090);
}

uint64_t sub_24E643EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v70 = sub_24F924248();
  v3 = MEMORY[0x28223BE20](v70);
  v69 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215100);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215108);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v67 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  v12 = MEMORY[0x28223BE20](v76);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v67 - v14;
  v15 = *(a1 + 16);
  *&v81 = *(a1 + 8);
  *(&v81 + 1) = v15;
  sub_24E600AEC();

  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  v74 = a1;
  v21 = *(a1 + 312);
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v16, v18, v20 & 1);

  LODWORD(v81) = v21;
  v27 = sub_24F925C58();
  v29 = v28;
  LOBYTE(v16) = v30;
  v32 = v31;
  sub_24E600B40(v22, v24, v26 & 1);

  *&v81 = v27;
  *(&v81 + 1) = v29;
  LOBYTE(v82) = v16 & 1;
  *(&v82 + 1) = v32;
  v33 = v75;
  sub_24F9268B8();
  v34 = v27;
  v35 = v74;
  v36 = v29;
  v37 = v76;
  sub_24E600B40(v34, v36, v16 & 1);
  v38 = v77;

  KeyPath = swift_getKeyPath();
  v40 = v33;
  v41 = &v33[*(v37 + 36)];
  *v41 = KeyPath;
  v41[8] = 0;
  v42 = 1;
  if (*(*v35 + 16) >= 4uLL)
  {
    v43 = swift_allocObject();
    v44 = memcpy((v43 + 16), v35, 0x1A0uLL);
    MEMORY[0x28223BE20](v44);
    *(&v67 - 2) = v35;
    sub_24E645724(v35, &v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215128);
    v45 = sub_24E64575C();
    *&v81 = v37;
    *(&v81 + 1) = v45;
    swift_getOpaqueTypeConformance2();
    v46 = v71;
    sub_24F926F88();
    v47 = sub_24F924258();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v48 = *(v47 + 20);
    v49 = *MEMORY[0x277CE0118];
    v50 = sub_24F924B38();
    v51 = v68;
    (*(*(v50 - 8) + 104))(&v68[v48], v49, v50);
    __asm { FMOV            V0.2D, #12.0 }

    *v51 = _Q0;
    *(v51 + *(v70 + 20)) = 0xC024000000000000;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v57 = sub_24F926D08();

    sub_24E645844(v51, v69);
    sub_24E6458A8(&qword_27F214338, MEMORY[0x277CDFBC8]);
    v58 = sub_24F927348();
    sub_24E6458F0(v51);
    v84 = v58;
    v85 = v57;
    sub_24E602068(&qword_27F215138, &qword_27F215100);
    sub_24E62A2EC();
    v59 = v73;
    sub_24F926178();
    sub_24E64594C(&v81);
    (*(v72 + 8))(v46, v59);
    v42 = 0;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215118);
  (*(*(v60 - 8) + 56))(v38, v42, 1, v60);
  v61 = v78;
  sub_24E60169C(v40, v78, &qword_27F215110);
  v62 = v79;
  sub_24E60169C(v38, v79, &qword_27F215108);
  v63 = v80;
  sub_24E60169C(v61, v80, &qword_27F215110);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215120);
  v65 = v63 + *(v64 + 48);
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_24E60169C(v62, v63 + *(v64 + 64), &qword_27F215108);
  sub_24E601704(v38, &qword_27F215108);
  sub_24E601704(v40, &qword_27F215110);
  sub_24E601704(v62, &qword_27F215108);
  return sub_24E601704(v61, &qword_27F215110);
}

uint64_t sub_24E6445E4()
{
  sub_24F9276F8();
  sub_24F923B18();
}

uint64_t sub_24E644650(uint64_t a1)
{
  v3 = *(a1 + 400);
  v2[1] = *(a1 + 400);
  v4 = *(&v3 + 1);
  sub_24E60169C(&v4, v2, &qword_27F215140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v2[0] = v3;
  sub_24F926F48();
  return sub_24E6459BC(&v3);
}

uint64_t sub_24E64470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  MEMORY[0x28223BE20](v36);
  v6 = &v32 - v5;
  v38 = *(a1 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v41 == 1)
  {
    if (qword_27F211480 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39E9C8;
  }

  else
  {
    if (qword_27F211488 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39E9D8;
  }

  v8 = *v7;

  *&v38 = v8;
  *(&v38 + 1) = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 312);
  v16 = sub_24F925C98();
  v18 = v17;
  v20 = v19;
  sub_24E600B40(v10, v12, v14 & 1);

  LODWORD(v38) = v15;
  v21 = sub_24F925C58();
  v23 = v22;
  LOBYTE(v10) = v24;
  v26 = v25;
  sub_24E600B40(v16, v18, v20 & 1);

  *&v38 = v21;
  *(&v38 + 1) = v23;
  v39 = v10 & 1;
  v40 = v26;
  v27 = v33;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, v10 & 1);

  KeyPath = swift_getKeyPath();
  (*(v34 + 32))(v6, v27, v35);
  v29 = &v6[*(v36 + 36)];
  *v29 = KeyPath;
  v29[8] = 0;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v30 = sub_24F9248C8();
  __swift_project_value_buffer(v30, qword_27F39F078);
  sub_24E64575C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v6, &qword_27F215110);
}

uint64_t sub_24E644AAC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = v30 - v6;
  v7 = sub_24F925068();
  MEMORY[0x28223BE20](v7);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150B8);
  v8 = *(v35 - 8);
  v9 = MEMORY[0x28223BE20](v35);
  v34 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - v11;
  v13 = *(*a1 + 16);
  if (v13 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(*a1 + 16);
  }

  sub_24F924C98();
  v37 = a1;
  v38 = v14;
  v31 = v14;
  LODWORD(v40) = 0;
  v30[1] = sub_24E6458A8(&qword_27F2150C0, MEMORY[0x277CE0428]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150C8);
  sub_24E6454F4();
  v15 = v12;
  sub_24F9233F8();
  if (v13 >= 4 && (v40 = a1[25], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220), sub_24F926F38(), v39 == 1))
  {
    v30[0] = sub_24F924C98();
    MEMORY[0x28223BE20](v30[0]);
    v16 = v31;
    v30[-2] = a1;
    v30[-1] = v16;
    LODWORD(v40) = 0;
    sub_24F92D1D8();
    v17 = v34;
    sub_24F9233F8();
    (*(v8 + 32))(v36, v17, v35);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v8 + 56);
  v20 = v36;
  v21 = v8;
  v22 = v35;
  v19(v36, v18, 1, v35);
  v23 = *(v21 + 16);
  v24 = v34;
  v23(v34, v15, v22);
  v25 = v33;
  sub_24E60169C(v20, v33, &qword_27F2150B0);
  v26 = v32;
  v23(v32, v24, v22);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150E0);
  sub_24E60169C(v25, &v26[*(v27 + 48)], &qword_27F2150B0);
  sub_24E601704(v20, &qword_27F2150B0);
  v28 = *(v21 + 8);
  v28(v15, v22);
  sub_24E601704(v25, &qword_27F2150B0);
  return (v28)(v24, v22);
}

uint64_t *sub_24E644F4C(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  v10 = *result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v2 + 16);
  if (v3 < a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v3 == a2)
  {
    sub_24E60169C(&v10, v9, &qword_27F2150E8);
  }

  else
  {
    v4 = (2 * a2) | 1;
    v5 = *(type metadata accessor for PlayerLockup(0) - 8);
    sub_24E6B8764(v2, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), 0, v4);
    v2 = v6;
  }

  v9[2] = v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150F0);
  sub_24E602068(&qword_27F2150F8, &qword_27F2150E8);
  v7 = type metadata accessor for PlayerLockupComponent(255);
  v8 = sub_24E6458A8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  v9[0] = v7;
  v9[1] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24E64513C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v12 = v2;
  v3 = *(v2 + 16);
  if (v3 < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
LABEL_8:
    v7 = (2 * v3) | 1;
    v9 = *(type metadata accessor for PlayerLockup(0) - 8);
    sub_24E6B8764(v2, v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), a2, v7);
    v2 = v10;
    goto LABEL_5;
  }

  sub_24E60169C(&v12, v11, &qword_27F2150E8);
LABEL_5:
  v11[2] = v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2150F0);
  sub_24E602068(&qword_27F2150F8, &qword_27F2150E8);
  v4 = type metadata accessor for PlayerLockupComponent(255);
  v5 = sub_24E6458A8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  v11[0] = v4;
  v11[1] = v5;
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24E645334()
{
  v0 = type metadata accessor for PlayerLockupComponent(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_24F924258() + 20);
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_24F924B38();
  (*(*(v5 - 8) + 104))(&v2[v3], v4, v5);
  __asm { FMOV            V0.2D, #12.0 }

  *v2 = _Q0;
  v11 = &v2[*(type metadata accessor for AsymmetricalInsetRoundedRectangle() + 20)];
  *v11 = xmmword_24F93F520;
  *(v11 + 1) = xmmword_24F93F520;
  sub_24E6458A8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  sub_24F921D38();
  return sub_24E6455E8(v2);
}

uint64_t sub_24E645484@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215080);
  return sub_24E643C20(__dst, a1 + *(v3 + 44));
}

unint64_t sub_24E6454F4()
{
  result = qword_27F2150D0;
  if (!qword_27F2150D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2150C8);
    type metadata accessor for PlayerLockupComponent(255);
    sub_24E6458A8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2150D0);
  }

  return result;
}

uint64_t sub_24E6455E8(uint64_t a1)
{
  v2 = type metadata accessor for PlayerLockupComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E64564C()
{

  return swift_deallocObject();
}

unint64_t sub_24E64575C()
{
  result = qword_27F215130;
  if (!qword_27F215130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215110);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215130);
  }

  return result;
}

uint64_t sub_24E645844(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924248();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6458A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6458F0(uint64_t a1)
{
  v2 = sub_24F924248();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6459BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E645A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  *v6 = v3;
  v6[1] = sub_24E645B3C;

  return MEMORY[0x28217F228](v3 + 56, v5, v5);
}

uint64_t sub_24E645B3C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E6541BC;
  }

  else
  {
    v2 = sub_24E645C50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E645C50()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_24E614F70();
  *v3 = v0;
  v3[1] = sub_24E645D20;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for ChallengesHubEmptyStateShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E645D20()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E6541D0;
  }

  else
  {
    v2 = sub_24E654194;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E645E34(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E645EF4;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E645EF4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E64622C;
  }

  else
  {
    v2 = sub_24E646008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E646008()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for AchievementsByGameDataIntent();
  v5 = sub_24E654148(&qword_27F215228, type metadata accessor for AchievementsByGameDataIntent);
  *v3 = v0;
  v3[1] = sub_24E646118;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24E646118()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E6462AC;
  }

  else
  {
    v2 = sub_24E646244;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E646244()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E6462AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E646310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v5;
  v7[1] = sub_24E6463D8;

  return MEMORY[0x28217F228](v5 + 2, v6, v6);
}

uint64_t sub_24E6463D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6466D4;
  }

  else
  {
    v2 = sub_24E6464EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6464EC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E651558();
  *v3 = v0;
  v3[1] = sub_24E6465C0;
  v5 = v0[12];

  return MEMORY[0x28217F4B0](v0 + 11, v0 + 7, v5, &type metadata for ChallengesAllLeaderboardsDataIntent, v4, v1, v2);
}

uint64_t sub_24E6465C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E646754;
  }

  else
  {
    v2 = sub_24E6466EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6466EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E646754()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6467B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a1;
  v5[11] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_24E646880;

  return MEMORY[0x28217F228](v5 + 2, v6, v6);
}

uint64_t sub_24E646880()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E646B78;
  }

  else
  {
    v2 = sub_24E646994;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E646994()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24E651504();
  *v3 = v0;
  v3[1] = sub_24E646A64;
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengesAllLeaderboardsShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E646A64()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E646BF4;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E646B90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E646BF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E646C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[7] = a1;
  v3[8] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_24E646D1C;

  return MEMORY[0x28217F228](v3 + 2, v4, v4);
}

uint64_t sub_24E646D1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6541AC;
  }

  else
  {
    v2 = sub_24E646E30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E646E30()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E6514B0();
  *v3 = v0;
  v3[1] = sub_24E646F04;
  v5 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 9, v0 + 7, v5, &type metadata for ChallengesSuggestedGamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E646F04()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E654200;
  }

  else
  {
    v2 = sub_24E6541E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E647018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a1;
  *(v6 + 96) = a6;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v8 = swift_task_alloc();
  *(v6 + 104) = v8;
  *v8 = v6;
  v8[1] = sub_24E6470E4;

  return MEMORY[0x28217F228](v6 + 16, v7, v7);
}

uint64_t sub_24E6470E4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6541B4;
  }

  else
  {
    v2 = sub_24E6471F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6471F8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E65145C();
  *v3 = v0;
  v3[1] = sub_24E6472C8;
  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengesSuggestedGamesShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E6472C8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E6541CC;
  }

  else
  {
    v2 = sub_24E654190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6473DC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v3 + 88) = v5;
  *v5 = v3;
  v5[1] = sub_24E6474A4;

  return MEMORY[0x28217F228](v3 + 16, v4, v4);
}

uint64_t sub_24E6474A4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6541AC;
  }

  else
  {
    v2 = sub_24E6475B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6475B8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E65106C();
  *v3 = v0;
  v3[1] = sub_24E646F04;
  v5 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 9, v0 + 7, v5, &type metadata for PlayersDataIntent, v4, v1, v2);
}

uint64_t sub_24E64768C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v3 + 88) = v5;
  *v5 = v3;
  v5[1] = sub_24E647754;

  return MEMORY[0x28217F228](v3 + 16, v4, v4);
}

uint64_t sub_24E647754()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6541AC;
  }

  else
  {
    v2 = sub_24E647868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E647868()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E651018();
  *v3 = v0;
  v3[1] = sub_24E646F04;
  v5 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 9, v0 + 7, v5, &type metadata for GamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E64793C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E6479FC;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E6479FC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E6541B0;
  }

  else
  {
    v2 = sub_24E647B10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E647B10()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_24E651210();
  *v3 = v0;
  v3[1] = sub_24E647BE4;
  v5 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 8, v5, &type metadata for FriendSuggestionsDataIntent, v4, v1, v2);
}

uint64_t sub_24E647BE4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E6541C8;
  }

  else
  {
    v2 = sub_24E6541A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E647CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a3;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  *v6 = v3;
  v6[1] = sub_24E647DD0;

  return MEMORY[0x28217F228](v3 + 72, v5, v5);
}

uint64_t sub_24E647DD0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E6541C0;
  }

  else
  {
    v2 = sub_24E647EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E647EE4()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_24E651408();
  *v3 = v0;
  v3[1] = sub_24E647FB4;
  v5 = v0[14];
  v6 = v0[15];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for FriendSuggestionSwooshShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E647FB4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E6541DC;
  }

  else
  {
    v2 = sub_24E65419C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6480C8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E648188;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E648188()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E6541B0;
  }

  else
  {
    v2 = sub_24E64829C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64829C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for FriendsDataIntent();
  v5 = sub_24E654148(&qword_27F2151B0, type metadata accessor for FriendsDataIntent);
  *v3 = v0;
  v3[1] = sub_24E647BE4;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24E6483AC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E64846C;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E64846C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E6541B0;
  }

  else
  {
    v2 = sub_24E648580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E648580()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for GamesRecentlyPlayedDataIntent();
  v5 = sub_24E654148(&qword_27F2151B8, type metadata accessor for GamesRecentlyPlayedDataIntent);
  *v3 = v0;
  v3[1] = sub_24E647BE4;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24E648690(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E648750;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E648750()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E6541B0;
  }

  else
  {
    v2 = sub_24E648864;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E648864()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for LeaderboardsListDataIntent();
  v5 = sub_24E654148(&qword_27F215278, type metadata accessor for LeaderboardsListDataIntent);
  *v3 = v0;
  v3[1] = sub_24E647BE4;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24E648974(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  *v6 = v3;
  v6[1] = sub_24E648A44;

  return MEMORY[0x28217F228](v3 + 64, v5, v5);
}

uint64_t sub_24E648A44()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E6541E0;
  }

  else
  {
    v2 = sub_24E648B58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E648B58()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_24E653F50();
  *v3 = v0;
  v3[1] = sub_24E648C28;
  v5 = v0[13];
  v6 = v0[14];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for LeaderboardDataIntent, v4, v1, v2);
}

uint64_t sub_24E648C28()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E6541D4;
  }

  else
  {
    v2 = sub_24E654198;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E648D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  v4[7] = a2;
  v4[8] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_24E648E00;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24E648E00()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6490F8;
  }

  else
  {
    v2 = sub_24E648F14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E648F14()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E653FA4();
  *v3 = v0;
  v3[1] = sub_24E648FE4;
  v5 = v0[9];
  v6 = v0[10];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengeDefinitionDefaultOptionsIntent, v4, v1, v2);
}

uint64_t sub_24E648FE4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E649110;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649110()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E649174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  v4[12] = v6;
  *v6 = v4;
  v6[1] = sub_24E64923C;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24E64923C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E6541B8;
  }

  else
  {
    v2 = sub_24E649350;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649350()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24E6540A0();
  *v3 = v0;
  v3[1] = sub_24E649424;
  v5 = v0[11];

  return MEMORY[0x28217F4B0](v0 + 10, v0 + 7, v5, &type metadata for FriendsPlayingGamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E649424()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E6541D8;
  }

  else
  {
    v2 = sub_24E6541F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a1;
  v6[12] = a6;
  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a4;
  v6[10] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_24E649600;

  return MEMORY[0x28217F228](v6 + 2, v7, v7);
}

uint64_t sub_24E649600()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6541B4;
  }

  else
  {
    v2 = sub_24E649714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649714()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E653EA8();
  *v3 = v0;
  v3[1] = sub_24E6472C8;
  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengesHubDataIntent, v4, v1, v2);
}

uint64_t sub_24E6497E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a1;
  v6[12] = a6;
  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a4;
  v6[10] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_24E6498AC;

  return MEMORY[0x28217F228](v6 + 2, v7, v7);
}

uint64_t sub_24E6498AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6466D4;
  }

  else
  {
    v2 = sub_24E6499C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6499C0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E653EFC();
  *v3 = v0;
  v3[1] = sub_24E649A90;
  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for InviteFriendsShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E649A90()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E646754;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[7] = a1;
  v3[8] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_24E649C68;

  return MEMORY[0x28217F228](v3 + 2, v4, v4);
}

uint64_t sub_24E649C68()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6490F8;
  }

  else
  {
    v2 = sub_24E649D7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649D7C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E6513B4();
  *v3 = v0;
  v3[1] = sub_24E649E50;
  v5 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 9, v0 + 7, v5, &type metadata for InviteFriendsSearchDataIntent, v4, v1, v2);
}

uint64_t sub_24E649E50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E649110;
  }

  else
  {
    v2 = sub_24E649F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E649F64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E649FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  *v6 = v3;
  v6[1] = sub_24E64A09C;

  return MEMORY[0x28217F228](v3 + 56, v5, v5);
}

uint64_t sub_24E64A09C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E64A394;
  }

  else
  {
    v2 = sub_24E64A1B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64A1B0()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_24E651360();
  *v3 = v0;
  v3[1] = sub_24E64A280;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for InviteFriendsSearchShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E64A280()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E64A410;
  }

  else
  {
    v2 = sub_24E64A3AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64A3AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64A410()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v5;
  v7[1] = sub_24E64A53C;

  return MEMORY[0x28217F228](v5 + 2, v6, v6);
}

uint64_t sub_24E64A53C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6541B4;
  }

  else
  {
    v2 = sub_24E64A650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64A650()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E65130C();
  *v3 = v0;
  v3[1] = sub_24E64A724;
  v5 = v0[12];

  return MEMORY[0x28217F4B0](v0 + 11, v0 + 7, v5, &type metadata for FriendsPlayingGameDataIntent, v4, v1, v2);
}

uint64_t sub_24E64A724()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E6541CC;
  }

  else
  {
    v2 = sub_24E6541EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64A838(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E64A8F8;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E64A8F8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E6541B0;
  }

  else
  {
    v2 = sub_24E64AA0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64AA0C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for ContinuePlayingDataIntent(0);
  v5 = sub_24E654148(&qword_27F215230, type metadata accessor for ContinuePlayingDataIntent);
  *v3 = v0;
  v3[1] = sub_24E647BE4;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24E64AB1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a2;
  v3 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  *(v2 + 88) = *(a1 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v2;
  v5[1] = sub_24E64ABF0;

  return MEMORY[0x28217F228](v2 + 16, v4, v4);
}

uint64_t sub_24E64ABF0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E64A394;
  }

  else
  {
    v2 = sub_24E64AD04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64AD04()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_24E6510C0();
  *v3 = v0;
  v3[1] = sub_24E64ADD8;
  v5 = v0[13];

  return MEMORY[0x28217F4B0](v0 + 12, v0 + 7, v5, &type metadata for ChallengeableLeaderboardsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64ADD8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E64AF54;
  }

  else
  {
    v2 = sub_24E64AEEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64AEEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E64AF54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64AFB8(char a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 104) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_24E64B07C;

  return MEMORY[0x28217F228](v2 + 16, v3, v3);
}

uint64_t sub_24E64B07C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E64B378;
  }

  else
  {
    v2 = sub_24E64B190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64B190()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_24E650FC4();
  *v3 = v0;
  v3[1] = sub_24E64B264;
  v5 = v0[8];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 13, v5, &type metadata for FriendRequestsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64B264()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E64B390;
  }

  else
  {
    v2 = sub_24E646244;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64B390()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64B3F4(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_24E64B4B4;

  return MEMORY[0x28217F228](v1 + 16, v2, v2);
}

uint64_t sub_24E64B4B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E64B378;
  }

  else
  {
    v2 = sub_24E64B5C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64B5C8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v5 = sub_24E6512B8();
  *v3 = v0;
  v3[1] = sub_24E64B698;
  v6 = v0[8];

  return MEMORY[0x28217F4B0](v0 + 7, v4, v6, &type metadata for ChallengesAllGamesDataIntent, v5, v1, v2);
}

uint64_t sub_24E64B698()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E64B390;
  }

  else
  {
    v2 = sub_24E6541A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a1;
  *(v6 + 96) = a6;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v8 = swift_task_alloc();
  *(v6 + 104) = v8;
  *v8 = v6;
  v8[1] = sub_24E64B878;

  return MEMORY[0x28217F228](v6 + 16, v7, v7);
}

uint64_t sub_24E64B878()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6466D4;
  }

  else
  {
    v2 = sub_24E64B98C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64B98C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E651264();
  *v3 = v0;
  v3[1] = sub_24E649A90;
  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengesAllGamesShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E64BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  v4[12] = v6;
  *v6 = v4;
  v6[1] = sub_24E64BB24;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24E64BB24()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E646B78;
  }

  else
  {
    v2 = sub_24E64BC38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64BC38()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24E6540A0();
  *v3 = v0;
  v3[1] = sub_24E64BD0C;
  v5 = v0[11];

  return MEMORY[0x28217F4B0](v0 + 10, v0 + 7, v5, &type metadata for FriendsPlayingGamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E64BD0C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E646BF4;
  }

  else
  {
    v2 = sub_24E64BE20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64BE20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E64BE88(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_24E64BF48;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E64BF48()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E64622C;
  }

  else
  {
    v2 = sub_24E64C05C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64C05C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_24E651210();
  *v3 = v0;
  v3[1] = sub_24E646118;
  v5 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 8, v5, &type metadata for FriendSuggestionsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64C130(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v3 + 88) = v5;
  *v5 = v3;
  v5[1] = sub_24E64C1F8;

  return MEMORY[0x28217F228](v3 + 16, v4, v4);
}

uint64_t sub_24E64C1F8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6490F8;
  }

  else
  {
    v2 = sub_24E64C30C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64C30C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E65106C();
  *v3 = v0;
  v3[1] = sub_24E649E50;
  v5 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 9, v0 + 7, v5, &type metadata for PlayersDataIntent, v4, v1, v2);
}

uint64_t sub_24E64C3E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v2 + 128) = v5;
  *v5 = v2;
  v5[1] = sub_24E64C4B8;

  return MEMORY[0x28217F228](v2 + 72, v4, v4);
}

uint64_t sub_24E64C4B8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E6541C0;
  }

  else
  {
    v2 = sub_24E64C5CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64C5CC()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_24E6511BC();
  *v3 = v0;
  v3[1] = sub_24E64C6A0;
  v5 = v0[15];

  return MEMORY[0x28217F4B0](v0 + 14, v0 + 2, v5, &type metadata for LeaderboardsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64C6A0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E6541DC;
  }

  else
  {
    v2 = sub_24E6541F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v5;
  v7[1] = sub_24E64C87C;

  return MEMORY[0x28217F228](v5 + 2, v6, v6);
}

uint64_t sub_24E64C87C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E6541B4;
  }

  else
  {
    v2 = sub_24E64C990;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64C990()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24E651168();
  *v3 = v0;
  v3[1] = sub_24E64A724;
  v5 = v0[12];

  return MEMORY[0x28217F4B0](v0 + 11, v0 + 7, v5, &type metadata for ChallengesSuggestedLeaderboardDataIntent, v4, v1, v2);
}

uint64_t sub_24E64CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a1;
  v5[11] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_24E64CB2C;

  return MEMORY[0x28217F228](v5 + 2, v6, v6);
}

uint64_t sub_24E64CB2C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E6541B8;
  }

  else
  {
    v2 = sub_24E64CC40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64CC40()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24E651114();
  *v3 = v0;
  v3[1] = sub_24E64CD10;
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for ChallengesSuggestedLeaderboardsShelfConstructionIntent, v4, v1, v2);
}

uint64_t sub_24E64CD10()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E6541D8;
  }

  else
  {
    v2 = sub_24E654190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64CE24(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a2;
  v3 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  *(v2 + 88) = *(a1 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v2;
  v5[1] = sub_24E64CEF8;

  return MEMORY[0x28217F228](v2 + 16, v4, v4);
}

uint64_t sub_24E64CEF8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E6541BC;
  }

  else
  {
    v2 = sub_24E64D00C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D00C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_24E6510C0();
  *v3 = v0;
  v3[1] = sub_24E64D0E0;
  v5 = v0[13];

  return MEMORY[0x28217F4B0](v0 + 12, v0 + 7, v5, &type metadata for ChallengeableLeaderboardsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64D0E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E654204;
  }

  else
  {
    v2 = sub_24E6541F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D1F4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_24E64D2B4;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24E64D2B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E64B378;
  }

  else
  {
    v2 = sub_24E64D3C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D3C8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v5 = sub_24E6540F4();
  *v3 = v0;
  v3[1] = sub_24E64D494;
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x28217F4B0](v6, v4, v7, &type metadata for FriendRequestsPrivacyToggleDataIntent, v5, v1, v2);
}

uint64_t sub_24E64D494()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E64B390;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D5A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v5 = swift_task_alloc();
  *(v2 + 128) = v5;
  *v5 = v2;
  v5[1] = sub_24E64D680;

  return MEMORY[0x28217F228](v2 + 72, v4, v4);
}

uint64_t sub_24E64D680()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E64D97C;
  }

  else
  {
    v2 = sub_24E64D794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D794()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_24E6511BC();
  *v3 = v0;
  v3[1] = sub_24E64D868;
  v5 = v0[15];

  return MEMORY[0x28217F4B0](v0 + 14, v0 + 2, v5, &type metadata for LeaderboardsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64D868()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E64D9FC;
  }

  else
  {
    v2 = sub_24E64D994;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64D994()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E64D9FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64DA60(char a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 104) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_24E64DB24;

  return MEMORY[0x28217F228](v2 + 16, v3, v3);
}

uint64_t sub_24E64DB24()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E6541C4;
  }

  else
  {
    v2 = sub_24E64DC38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64DC38()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_24E650FC4();
  *v3 = v0;
  v3[1] = sub_24E64DD0C;
  v5 = v0[8];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 13, v5, &type metadata for FriendRequestsDataIntent, v4, v1, v2);
}

uint64_t sub_24E64DD0C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E654208;
  }

  else
  {
    v2 = sub_24E6541A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a3;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  *v6 = v3;
  v6[1] = sub_24E64DEF8;

  return MEMORY[0x28217F228](v3 + 72, v5, v5);
}

uint64_t sub_24E64DEF8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E64D97C;
  }

  else
  {
    v2 = sub_24E64E00C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64E00C()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_24E65404C();
  *v3 = v0;
  v3[1] = sub_24E64E0DC;
  v5 = v0[14];
  v6 = v0[15];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for ChallengeDefinitionDataIntent, v4, v1, v2);
}

uint64_t sub_24E64E0DC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E64D9FC;
  }

  else
  {
    v2 = sub_24E64E1F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64E1F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64E254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  v4 = *(a2 + 16);
  *(v3 + 56) = *a2;
  *(v3 + 72) = v4;
  *(v3 + 88) = *(a2 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  *v6 = v3;
  v6[1] = sub_24E64E328;

  return MEMORY[0x28217F228](v3 + 16, v5, v5);
}

uint64_t sub_24E64E328()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E64A394;
  }

  else
  {
    v2 = sub_24E64E43C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64E43C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_24E653FF8();
  *v3 = v0;
  v3[1] = sub_24E64E50C;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x28217F4B0](v5, v0 + 7, v6, &type metadata for GameDataIntent, v4, v1, v2);
}

uint64_t sub_24E64E50C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E64AF54;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64E620(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  *v6 = v3;
  v6[1] = sub_24E64E6F0;

  return MEMORY[0x28217F228](v3 + 64, v5, v5);
}

uint64_t sub_24E64E6F0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E64E9E8;
  }

  else
  {
    v2 = sub_24E64E804;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64E804()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_24E653F50();
  *v3 = v0;
  v3[1] = sub_24E64E8D4;
  v5 = v0[13];
  v6 = v0[14];

  return MEMORY[0x28217F4B0](v5, v0 + 2, v6, &type metadata for LeaderboardDataIntent, v4, v1, v2);
}

uint64_t sub_24E64E8D4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E64EA64;
  }

  else
  {
    v2 = sub_24E64EA00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64EA00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64EA64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AchievementsByGameShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for AchievementsByGameDataIntent();
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[12] = v7;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_24E64EC3C, 0, 0);
}

uint64_t sub_24E64EC3C()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = type metadata accessor for AchievementsByGameShelfIntent();
  sub_24E65317C(v2 + *(v3 + 20), v1, type metadata accessor for Player);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_24E64ED20;
  v5 = v0[12];
  v6 = v0[4];

  return sub_24E645E34(v5, v6);
}

uint64_t sub_24E64ED20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_24E64F084;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_24E64EE48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E64EE48()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v14 = *(v0 + 80);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  v15 = *(v0 + 16);
  v16 = *(v0 + 96);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v10;
  type metadata accessor for GSKShelf();
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v14, v3, v5);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();
  (*(v4 + 8))(v3, v5);
  sub_24E6531E4(v16, type metadata accessor for AchievementsByGameDataIntent);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v11 - 8) + 56))(v15, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24E64F084()
{
  sub_24E6531E4(*(v0 + 96), type metadata accessor for AchievementsByGameDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E64F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v68 = a4;
  v71 = a3;
  v56 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v49 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v10 = *(v69 - 8);
  v61 = *(v10 + 64);
  MEMORY[0x28223BE20](v69);
  v12 = &v49 - v11;
  v13 = type metadata accessor for AchievementsByGameShelfIntent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F0);
  v54 = *(v72 - 8);
  v55 = *(v54 + 64);
  v17 = MEMORY[0x28223BE20](v72);
  v52 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v49 - v19;
  v51 = *(a2 + 16);
  v67 = type metadata accessor for AchievementsByGameShelfIntent;
  v53 = v16;
  sub_24E65317C(a4, v16, type metadata accessor for AchievementsByGameShelfIntent);
  v20 = v10;
  v21 = *(v10 + 16);
  v65 = v10 + 16;
  v66 = v21;
  v50 = v12;
  v22 = a1;
  v23 = v69;
  v21(v12, v22, v69);
  v24 = *(v14 + 80);
  v25 = (v24 + 32) & ~v24;
  v57 = v24;
  v64 = v15 + 7;
  v26 = (v15 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v10 + 80);
  v63 = v59 + 8;
  v27 = (v59 + 8 + v26) & ~v59;
  v58 = v24 | v59;
  v28 = swift_allocObject();
  v29 = v71;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  sub_24E65205C(v16, v28 + v25);
  *(v28 + v26) = v73;
  v30 = *(v20 + 32);
  v60 = v20 + 32;
  v62 = v30;
  v30((v28 + v27), v12, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215208);
  sub_24E602068(&qword_27F215210, &qword_27F215208);
  v31 = a2;

  sub_24F9288B8();
  v32 = v70;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v75);
  v33 = v54;
  v34 = v52;
  v35 = v72;
  (*(v54 + 16))(v52, v32, v72);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  (*(v33 + 32))(v37 + v36, v34, v35);

  v38 = v69;
  v39 = v56;
  sub_24F92B898();
  v40 = sub_24F92B858();
  (*(*(v40 - 8) + 56))(v74, 1, 1, v40);
  v41 = v53;
  sub_24E65317C(v68, v53, v67);
  v42 = v50;
  v66(v50, v39, v38);
  v43 = (v57 + 48) & ~v57;
  v44 = (v64 + v43) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v63 + v44) & ~v59;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  v47 = v71;
  *(v46 + 4) = v31;
  *(v46 + 5) = v47;
  sub_24E65205C(v41, &v46[v43]);
  *&v46[v44] = v73;
  v62(&v46[v45], v42, v38);

  sub_24F1D3DA4(0, 0, v74, &unk_24F93F930, v46);

  return (*(v33 + 8))(v70, v72);
}

uint64_t sub_24E64F7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a6;
  v30 = a3;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v26 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v27 = &v26 - v10;
  v12 = type metadata accessor for AchievementsByGameShelfIntent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v19 = *a1;
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_24E65317C(v28, v15, type metadata accessor for AchievementsByGameShelfIntent);
  (*(v9 + 16))(v11, v29, v8);
  v21 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v9 + 80) + v22 + 8) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a2;
  *(v24 + 5) = v19;
  *(v24 + 6) = v30;
  sub_24E65205C(v15, &v24[v21]);
  *&v24[v22] = v31;
  (*(v9 + 32))(&v24[v23], v27, v26);

  sub_24F1D3DA4(0, 0, v18, &unk_24F93F998, v24);
}

uint64_t sub_24E64FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v12;
  v8[10] = a6;
  v8[11] = a7;
  v8[9] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  v8[18] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E64FC0C, 0, 0);
}

uint64_t sub_24E64FC0C()
{
  v1 = *(v0 + 88);
  *(v0 + 168) = *v1;
  *(v0 + 176) = v1[1];
  *(v0 + 256) = *(type metadata accessor for AchievementsByGameShelfIntent() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_24E64FCEC;

  return MEMORY[0x28217F228](v0 + 16, v2, v2);
}

uint64_t sub_24E64FCEC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24E650358;
  }

  else
  {
    v2 = sub_24E64FE00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E64FE00()
{
  sub_24E65317C(*(v0 + 88) + *(v0 + 256), *(v0 + 144) + *(*(v0 + 136) + 20), type metadata accessor for Player);
  *(v0 + 200) = sub_24F92B7F8();

  *(v0 + 208) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E64FEE4, v2, v1);
}

uint64_t sub_24E64FEE4()
{
  v1 = *(v0 + 72);

  swift_getKeyPath();
  *(v0 + 216) = OBJC_IVAR____TtC12GameStoreKit32AchievementsByGameOptionProvider___observationRegistrar;
  *(v0 + 56) = v1;
  *(v0 + 224) = sub_24E654148(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider);
  sub_24F91FD88();

  *(v0 + 260) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24E64FFD8, 0, 0);
}

uint64_t sub_24E64FFD8()
{
  *(v0 + 232) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E650064, v2, v1);
}

uint64_t sub_24E650064()
{
  v1 = *(v0 + 72);

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_24F91FD88();

  *(v0 + 261) = *(v1 + 25);

  return MEMORY[0x2822009F8](sub_24E650114, 0, 0);
}

uint64_t sub_24E650114()
{
  v1 = *(v0 + 261);
  v2 = *(v0 + 260);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  *v5 = *(v0 + 80);
  v7 = (v5 + v6[6]);
  *v7 = v4;
  v7[1] = v3;
  *(v5 + v6[7]) = v2;
  *(v5 + v6[8]) = v1;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v11 = sub_24E654148(&qword_27F215220, type metadata accessor for AchievementsByGameShelfConstructionIntent);
  *v10 = v0;
  v10[1] = sub_24E650244;
  v12 = *(v0 + 160);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 96);

  return MEMORY[0x28217F4B0](v12, v13, v15, v14, v11, v8, v9);
}

uint64_t sub_24E650244()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24E650524;
  }

  else
  {
    v2 = sub_24E6503E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E650358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6503E4()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  sub_24E6531E4(v0[18], type metadata accessor for AchievementsByGameShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24E65317C(v2, v1, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  (*(v4 + 8))(v3, v5);
  sub_24E6531E4(v2, type metadata accessor for GSKShelf);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24E650524()
{
  sub_24E6531E4(*(v0 + 144), type metadata accessor for AchievementsByGameShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6505D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  v8[18] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E650710, 0, 0);
}

uint64_t sub_24E650710()
{
  v1 = *(v0 + 88);
  *(v0 + 168) = *v1;
  *(v0 + 176) = v1[1];
  *(v0 + 256) = *(type metadata accessor for AchievementsByGameShelfIntent() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_24E6507F0;

  return MEMORY[0x28217F228](v0 + 16, v2, v2);
}

uint64_t sub_24E6507F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24E6541A8;
  }

  else
  {
    v2 = sub_24E650904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E650904()
{
  sub_24E65317C(*(v0 + 88) + *(v0 + 256), *(v0 + 144) + *(*(v0 + 136) + 20), type metadata accessor for Player);
  *(v0 + 200) = sub_24F92B7F8();

  *(v0 + 208) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E6509E8, v2, v1);
}

uint64_t sub_24E6509E8()
{
  v1 = *(v0 + 72);

  swift_getKeyPath();
  *(v0 + 216) = OBJC_IVAR____TtC12GameStoreKit32AchievementsByGameOptionProvider___observationRegistrar;
  *(v0 + 56) = v1;
  *(v0 + 224) = sub_24E654148(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider);
  sub_24F91FD88();

  *(v0 + 260) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24E650ADC, 0, 0);
}

uint64_t sub_24E650ADC()
{
  *(v0 + 232) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E650B68, v2, v1);
}

uint64_t sub_24E650B68()
{
  v1 = *(v0 + 72);

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_24F91FD88();

  *(v0 + 261) = *(v1 + 25);

  return MEMORY[0x2822009F8](sub_24E650C18, 0, 0);
}

uint64_t sub_24E650C18()
{
  v1 = *(v0 + 261);
  v2 = *(v0 + 260);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  *v5 = *(v0 + 80);
  v7 = (v5 + v6[6]);
  *v7 = v4;
  v7[1] = v3;
  *(v5 + v6[7]) = v2;
  *(v5 + v6[8]) = v1;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v11 = sub_24E654148(&qword_27F215220, type metadata accessor for AchievementsByGameShelfConstructionIntent);
  *v10 = v0;
  v10[1] = sub_24E650D48;
  v12 = *(v0 + 160);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 96);

  return MEMORY[0x28217F4B0](v12, v13, v15, v14, v11, v8, v9);
}

uint64_t sub_24E650D48()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24E6541FC;
  }

  else
  {
    v2 = sub_24E6541A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E650E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return AchievementsByGameShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_24E650FC4()
{
  result = qword_27F215160;
  if (!qword_27F215160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215160);
  }

  return result;
}

unint64_t sub_24E651018()
{
  result = qword_27F215168;
  if (!qword_27F215168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215168);
  }

  return result;
}

unint64_t sub_24E65106C()
{
  result = qword_27F215170;
  if (!qword_27F215170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215170);
  }

  return result;
}

unint64_t sub_24E6510C0()
{
  result = qword_27F215178;
  if (!qword_27F215178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215178);
  }

  return result;
}

unint64_t sub_24E651114()
{
  result = qword_27F215180;
  if (!qword_27F215180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215180);
  }

  return result;
}

unint64_t sub_24E651168()
{
  result = qword_27F215188;
  if (!qword_27F215188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215188);
  }

  return result;
}

unint64_t sub_24E6511BC()
{
  result = qword_27F215190;
  if (!qword_27F215190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215190);
  }

  return result;
}

unint64_t sub_24E651210()
{
  result = qword_27F215198;
  if (!qword_27F215198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215198);
  }

  return result;
}

unint64_t sub_24E651264()
{
  result = qword_27F2151A0;
  if (!qword_27F2151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151A0);
  }

  return result;
}

unint64_t sub_24E6512B8()
{
  result = qword_27F2151A8;
  if (!qword_27F2151A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151A8);
  }

  return result;
}

unint64_t sub_24E65130C()
{
  result = qword_27F2551E0;
  if (!qword_27F2551E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551E0);
  }

  return result;
}

unint64_t sub_24E651360()
{
  result = qword_27F2151C0;
  if (!qword_27F2151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151C0);
  }

  return result;
}

unint64_t sub_24E6513B4()
{
  result = qword_27F21E450;
  if (!qword_27F21E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E450);
  }

  return result;
}

unint64_t sub_24E651408()
{
  result = qword_27F2151C8;
  if (!qword_27F2151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151C8);
  }

  return result;
}

unint64_t sub_24E65145C()
{
  result = qword_27F2151D0;
  if (!qword_27F2151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151D0);
  }

  return result;
}

unint64_t sub_24E6514B0()
{
  result = qword_27F2151D8;
  if (!qword_27F2151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151D8);
  }

  return result;
}

unint64_t sub_24E651504()
{
  result = qword_27F2151E0;
  if (!qword_27F2151E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151E0);
  }

  return result;
}

unint64_t sub_24E651558()
{
  result = qword_27F2151E8;
  if (!qword_27F2151E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151E8);
  }

  return result;
}

uint64_t sub_24E6515AC()
{
  v1 = v0;
  v2 = type metadata accessor for AchievementsByGameShelfIntent();
  v54 = *(*(v2 - 8) + 80);
  v51 = *(*(v2 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v52 = *(v3 - 8);
  v50 = *(v52 + 80);

  v53 = (v54 + 32) & ~v54;

  v48 = v1 + v53;
  v49 = v2;
  v4 = v1 + v53 + *(v2 + 20);

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v55 = *(v7 - 8);
  v56 = *(v55 + 8);
  v56(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v45 = v1;
    v46 = v3;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v55 + 48))(v8 + v12, 1, v7))
      {
        v56(v8 + v12, v7);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v55 + 48))(v13 + v14, 1, v7))
      {
        v56(v13 + v14, v7);
      }
    }

    v1 = v45;
    v3 = v46;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v47 = v3;

    v17 = type metadata accessor for Game();
    v56(v15 + v17[18], v7);
    v18 = v17[19];
    if (!(*(v55 + 48))(v15 + v18, 1, v7))
    {
      v56(v15 + v18, v7);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v3 = v47;
  }

  v22 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    v56(v22 + v24[18], v7);
    v25 = v24[19];
    if (!(*(v55 + 48))(v22 + v25, 1, v7))
    {
      v56(v22 + v25, v7);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  v29 = v48 + *(v49 + 24);
  v30 = type metadata accessor for Page.Background(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v56(v29, v7);
          v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v35 = sub_24F922348();
          v36 = *(v35 - 8);
          if (!(*(v36 + 48))(v29 + v34, 1, v35))
          {
            (*(v36 + 8))(v29 + v34, v35);
          }
        }
      }

      else
      {
        v56(v29, v7);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!(*(v55 + 48))(v29, 1, v7))
      {
        v56(v29, v7);
      }

      v37 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v38 = type metadata accessor for GSKVideo();
      if (!(*(*(v38 - 1) + 48))(v37, 1, v38))
      {
        v39 = sub_24F91F4A8();
        (*(*(v39 - 8) + 8))(v37, v39);
        v56(v37 + v38[5], v7);
        v40 = v38[9];
        v41 = sub_24F928698();
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);
        if (!v43(v37 + v40, 1, v41))
        {
          (*(v42 + 8))(v37 + v40, v41);
        }

        v44 = v38[10];
        if (!v43(v37 + v44, 1, v41))
        {
          (*(v42 + 8))(v37 + v44, v41);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v29, v33);
    }
  }

  (*(v52 + 8))(v1 + ((((v51 + v53 + 7) & 0xFFFFFFFFFFFFFFF8) + v50 + 8) & ~v50), v3);

  return swift_deallocObject();
}

uint64_t sub_24E65205C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsByGameShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6520C0(uint64_t *a1)
{
  v3 = *(type metadata accessor for AchievementsByGameShelfIntent() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_24E64F7DC(a1, v7, v8, v1 + v4, v9, v10);
}

uint64_t sub_24E6521B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E6522F8()
{
  v1 = type metadata accessor for AchievementsByGameShelfIntent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v53 = *(*(v1 - 8) + 64);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = *(v54 - 8);
  v52 = *(v4 + 80);
  swift_unknownObjectRelease();

  v50 = v0 + v3;
  v51 = v1;
  v5 = v0 + v3 + *(v1 + 20);

  v6 = type metadata accessor for Player(0);
  v7 = v6[6];
  v8 = sub_24F9289E8();
  v55 = *(v8 - 8);
  v56 = *(v55 + 8);
  v56(v5 + v7, v8);

  if (*(v5 + v6[9] + 8) != 1)
  {
  }

  v9 = v5 + v6[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v46 = (v2 + 48) & ~v2;
    v47 = v4;
    v11 = type metadata accessor for CallProviderConversationHandle();
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v55 + 48))(v9 + v13, 1, v8))
      {
        v56(v9 + v13, v8);
      }
    }

    v14 = v9 + *(v10 + 20);
    v3 = v46;
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v55 + 48))(v14 + v15, 1, v8))
      {
        v56(v14 + v15, v8);
      }
    }

    v4 = v47;
  }

  if (*(v5 + v6[15] + 8))
  {
  }

  v16 = v5 + v6[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v48 = v4;

    v18 = type metadata accessor for Game();
    v56(v16 + v18[18], v8);
    v19 = v18[19];
    if (!(*(v55 + 48))(v16 + v19, 1, v8))
    {
      v56(v16 + v19, v8);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v48;
  }

  v23 = v5 + v6[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game();
    v56(v23 + v25[18], v8);
    v26 = v25[19];
    if (!(*(v55 + 48))(v23 + v26, 1, v8))
    {
      v56(v23 + v26, v8);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v50 + *(v51 + 24);
  v31 = type metadata accessor for Page.Background(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v56(v30, v8);
          v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v36 = sub_24F922348();
          v37 = *(v36 - 8);
          if (!(*(v37 + 48))(v30 + v35, 1, v36))
          {
            (*(v37 + 8))(v30 + v35, v36);
          }
        }
      }

      else
      {
        v56(v30, v8);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!(*(v55 + 48))(v30, 1, v8))
      {
        v56(v30, v8);
      }

      v38 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v39 = type metadata accessor for GSKVideo();
      if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
      {
        v49 = v4;
        v40 = sub_24F91F4A8();
        (*(*(v40 - 8) + 8))(v38, v40);
        v56(v38 + v39[5], v8);
        v41 = v39[9];
        v42 = sub_24F928698();
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);
        if (!v44(v38 + v41, 1, v42))
        {
          (*(v43 + 8))(v38 + v41, v42);
        }

        v45 = v39[10];
        if (!v44(v38 + v45, 1, v42))
        {
          (*(v43 + 8))(v38 + v45, v42);
        }

        v4 = v49;
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v34 = sub_24F928388();
      (*(*(v34 - 8) + 8))(v30, v34);
    }
  }

  (*(v4 + 8))(v0 + ((((v53 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v52 + 8) & ~v52), v54);

  return swift_deallocObject();
}
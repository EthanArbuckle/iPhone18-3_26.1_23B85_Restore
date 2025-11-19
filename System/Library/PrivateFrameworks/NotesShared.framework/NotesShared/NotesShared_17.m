uint64_t _s10Foundation4DateV11NotesSharedE11typeSummary7forNameS2S_tFZ_0()
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](40, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](1414742352, 0xE400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v3 = sub_2150A6100();
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5721934, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x455255545546, 0xE600000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x313036384F5349, 0xE700000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x656D695465746144, 0xE800000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_215010F44()
{
  v28 = MEMORY[0x277D84F90];
  sub_214F86A20(0, 3, 0);
  v0 = v28;
  v1 = sub_21500EA78();
  v4 = *(v28 + 16);
  v3 = *(v28 + 24);
  if (v4 >= v3 >> 1)
  {
    v22 = v1;
    v23 = v2;
    sub_214F86A20((v3 > 1), v4 + 1, 1);
    v2 = v23;
    v1 = v22;
    v0 = v28;
  }

  *(v0 + 16) = v4 + 1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = sub_21500EA78();
  v29 = v0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    v24 = v6;
    v25 = v7;
    sub_214F86A20((v8 > 1), v9 + 1, 1);
    v7 = v25;
    v6 = v24;
    v0 = v29;
  }

  *(v0 + 16) = v9 + 1;
  v10 = v0 + 16 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  v11 = sub_21500EA78();
  v30 = v0;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  if (v14 >= v13 >> 1)
  {
    v26 = v11;
    v27 = v12;
    sub_214F86A20((v13 > 1), v14 + 1, 1);
    v12 = v27;
    v11 = v26;
    v0 = v30;
  }

  *(v0 + 16) = v14 + 1;
  v15 = v0 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_2150118F0(&qword_280C24540);
  v16 = sub_2150A4A20();
  v18 = v17;

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v19 = sub_2150A6100();
  MEMORY[0x2160617E0](v19);

  sub_2150A49F0();
  MEMORY[0x2160617E0](40, 0xE100000000000000);
  MEMORY[0x2160617E0](v16, v18);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v20 = sub_2150A6100();
  MEMORY[0x2160617E0](v20);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t _sSb11NotesSharedE11typeSummary7forNameS2S_tFZ_0()
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();

  MEMORY[0x2160617E0](40, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5457241, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v3 = sub_2150A6100();
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](20302, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_21501166C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](a2, a3);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_215011874(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v3 + 24);

  return v6(v4, v5, v2, v3);
}

uint64_t sub_2150118F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_215011940(uint64_t a1)
{
  result = sub_214FEED84();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215011968(uint64_t a1)
{
  result = sub_215011A70(&qword_27CA424D0, MEMORY[0x277CC9578]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2150119C0(uint64_t a1)
{
  result = sub_215011A70(&qword_27CA43B80, MEMORY[0x277CC9260]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215011A18(uint64_t a1)
{
  result = sub_215011A70(&qword_27CA43008, MEMORY[0x277CC95F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215011A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215011AB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215011B0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_215011B60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_215011C48@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t RealtimeCollaborationSelectionDocument.localParticipantID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NotesShared38RealtimeCollaborationSelectionDocument_localParticipantID;
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id RealtimeCollaborationSelectionDocument.init(identity:localParticipantID:)(char *a1, char *a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC11NotesShared38RealtimeCollaborationSelectionDocument_selections] = MEMORY[0x277D84F90];
  v23 = *(v7 + 16);
  v23(&v3[OBJC_IVAR____TtC11NotesShared38RealtimeCollaborationSelectionDocument_localParticipantID], a2, v6);
  v10 = [objc_allocWithZone(ICCRVectorTimestamp) init];
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v11 = sub_2150A39A0();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v27, sel_initWithVersion_startVersion_rootObject_replica_, v10, 0, 0, v11);

  v26[3] = ObjectType;
  v26[0] = v13;
  v14 = v13;
  v15 = sub_214F6DE2C(v26);
  __swift_destroy_boxed_opaque_existential_0(v26);
  type metadata accessor for RealtimeCollaborationSelectionDocument.State();
  v16 = v24;
  v23(v9, v24, v6);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = v15;
  v19 = sub_2150A39A0();
  v20 = [v17 initWithDocument:v18 identity:v19];

  v12(v9, v6);
  [v14 setRootObject_];

  v12(v25, v6);
  v12(v16, v6);
  return v14;
}

uint64_t RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.setter(uint64_t a1)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RealtimeCollaborationSelectionDocument.ParticipantSelection.selection.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection(0) + 20));
}

uint64_t RealtimeCollaborationSelectionDocument.ParticipantSelection.selection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection(0) + 20);

  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_215012258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v45 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection(0);
  v39 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - v7;
  v8 = [v0 rootObject];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 participantIDsOrder];

    v11 = [v10 allObjects];
    sub_215013ADC();
    v12 = sub_2150A4ED0();

    if (v12 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
    {
      v14 = 0;
      v42 = v12 & 0xFFFFFFFFFFFFFF8;
      v43 = v12 & 0xC000000000000001;
      v40 = (v39 + 48);
      v41 = (v39 + 56);
      v15 = MEMORY[0x277D84F90];
      v37 = xmmword_2150C7210;
      v36 = v1;
      while (1)
      {
        if (v43)
        {
          v16 = MEMORY[0x216062780](v14, v12);
        }

        else
        {
          if (v14 >= *(v42 + 16))
          {
            goto LABEL_31;
          }

          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v19 = [v1 rootObject];
        if (v19)
        {
          v20 = v12;
          v21 = v19;
          v22 = [v19 participantIDsToSelectionRegisters];

          v23 = [v22 objectForKeyedSubscript_];
          if (v23 && (v24 = [v23 contents], v23, v24) && (v46 = v37, sub_2150A37A0(), v24, v25 = *(&v46 + 1), *(&v46 + 1) >> 60 != 15))
          {
            v31 = v46;
            sub_214FCA120(v46, *(&v46 + 1));
            sub_214FA88B0(v31, v25, &v46);
            v32 = v46;
            if ((~v46 & 0xF000000000000007) != 0)
            {
              sub_2150A39C0();
              sub_214FE1228(v31, v25);
              v26 = 0;
              *&v4[*(v45 + 20)] = v32;
            }

            else
            {
              sub_214FE1228(v31, v25);
              v26 = 1;
            }

            v1 = v36;
          }

          else
          {
            v26 = 1;
          }

          v12 = v20;
        }

        else
        {
          v26 = 1;
        }

        v27 = v45;
        (*v41)(v4, v26, 1, v45);

        if ((*v40)(v4, 1, v27) == 1)
        {
          sub_215013B28(v4);
        }

        else
        {
          v28 = v38;
          sub_215013B90(v4, v38);
          sub_215013B90(v28, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_215060498(0, v15[2] + 1, 1, v15);
          }

          v30 = v15[2];
          v29 = v15[3];
          if (v30 >= v29 >> 1)
          {
            v15 = sub_215060498(v29 > 1, v30 + 1, 1, v15);
          }

          v15[2] = v30 + 1;
          sub_215013B90(v44, v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30);
        }

        ++v14;
        if (v18 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_34:
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v33 = OBJC_IVAR____TtC11NotesShared38RealtimeCollaborationSelectionDocument_selections;
  swift_beginAccess();
  *&v1[v33] = v15;
}

void RealtimeCollaborationSelectionDocument.mergeLocalSelection(_:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = [v2 rootObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 participantIDsToSelectionRegisters];

    v9 = sub_2150A39A0();
    v10 = [v8 objectForKeyedSubscript_];

    if (v10)
    {
      v11 = [v10 contents];

      if (v11)
      {
        v40 = xmmword_2150C7210;
        sub_2150A37A0();
      }
    }
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    *&v40 = v5;

    v12 = sub_214FA8668();
    v13 = v14;
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v15 = [v2 rootObject];
  if (!v15)
  {
    sub_214FE1228(v12, v13);
    v25 = 0;
    v26 = 0xF000000000000000;
    goto LABEL_15;
  }

  v16 = v15;
  if (v13 >> 60 == 15)
  {

    v25 = v12;
    v26 = v13;
LABEL_15:
    sub_214FE1228(v25, v26);
    return;
  }

  sub_214FE1214(v12, v13);
  sub_214FE1214(0, 0xF000000000000000);
  sub_214FE1228(v12, v13);
  sub_214FE1228(0, 0xF000000000000000);
  v37 = ObjectType;
  v17 = [v2 version];
  [v17 copy];

  sub_2150A58F0();
  swift_unknownObjectRelease();
  v39 = sub_214F6E0A8(&v40);
  __swift_destroy_boxed_opaque_existential_0(&v40);
  v18 = [v16 participantIDsOrder];
  v19 = sub_2150A39A0();
  v20 = [v18 containsObject_];

  v21 = [v16 participantIDsOrder];
  v22 = sub_2150A39A0();
  if (v20)
  {
    v23 = [v16 participantIDsOrder];
    v24 = [v23 count];

    if (__OFSUB__(v24, 1))
    {
      __break(1u);
      return;
    }

    [v21 moveObject:v22 toIndex:v24 - 1];
  }

  else
  {
    [v21 addObject_];
  }

  v27 = [v16 participantIDsToSelectionRegisters];
  v28 = sub_2150A39A0();
  v29 = [v27 objectForKeyedSubscript_];

  if (v29)
  {
    sub_214FE1214(v12, v13);
    v30 = v29;
    v31 = sub_2150A3790();
    sub_214FE1228(v12, v13);
    [v30 setContents_];
  }

  else
  {
    v41 = v37;
    *&v40 = v2;
    v32 = v2;
    v38 = sub_214F6DE2C(&v40);
    __swift_destroy_boxed_opaque_existential_0(&v40);
    v30 = [v16 participantIDsToSelectionRegisters];
    v33 = sub_2150A39A0();
    sub_214FCA120(v12, v13);
    v34 = sub_2150A3790();
    sub_214FE1228(v12, v13);
    v31 = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:v34 document:v38];

    [v30 setObject:v31 forKeyedSubscript:v33];
  }

  v35 = [v2 deltaSince_];
  if (v35)
  {
    v36 = v35;
    sub_2150A37B0();
  }

  sub_215012258();
  sub_214FE1228(v12, v13);
  sub_214FE1228(0, 0xF000000000000000);
}

id RealtimeCollaborationSelectionDocument.removeSelection(forParticipantID:)()
{
  v1 = v0;
  result = [v0 rootObject];
  if (result)
  {
    v3 = result;
    v4 = [result participantIDsOrder];
    v5 = sub_2150A39A0();
    v6 = [v4 containsObject_];

    if (v6)
    {
      v7 = [v0 version];
      [v7 copy];

      sub_2150A58F0();
      swift_unknownObjectRelease();
      v8 = sub_214F6E0A8(v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v9 = [v3 participantIDsOrder];
      v10 = sub_2150A39A0();
      [v9 removeObject_];

      v11 = [v3 participantIDsToSelectionRegisters];
      v12 = sub_2150A39A0();
      [v11 setObject:0 forKeyedSubscript:v12];

      v13 = [v1 deltaSince_];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2150A37B0();
      }

      else
      {

        v15 = 0;
      }

      sub_215012258();

      return v15;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id RealtimeCollaborationSelectionDocument.merge(with:)()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2150A3790();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_mergeWithData_, v2);

  sub_215012258();
  return v3;
}

id RealtimeCollaborationSelectionDocument.__allocating_init(replica:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(a1, 1, v4) != 1)
  {
    v6 = sub_2150A39A0();
    (*(v5 + 8))(a1, v4);
  }

  v7 = [objc_allocWithZone(v2) initWithReplica_];

  return v7;
}

id RealtimeCollaborationSelectionDocument.__allocating_init(version:rootObject:replica:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    v10 = sub_2150A39A0();
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithVersion:a1 rootObject:a2 replica:v10];

  return v11;
}

id RealtimeCollaborationSelectionDocument.__allocating_init(version:startVersion:rootObject:replica:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2150A3A00();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a4, 1, v10) != 1)
  {
    v12 = sub_2150A39A0();
    (*(v11 + 8))(a4, v10);
  }

  v13 = [objc_allocWithZone(v5) initWithVersion:a1 startVersion:a2 rootObject:a3 replica:v12];

  return v13;
}

id RealtimeCollaborationSelectionDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RealtimeCollaborationSelectionDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC011ParticipantE0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_2150A39B0())
  {
    v4 = *(type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection(0) + 20);
    v5 = *(a1 + v4);
    v8 = *(a2 + v4);
    v9 = v5;

    v6 = _s11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O2eeoiySbAE_AEtFZ_0(&v9, &v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_215013978()
{
  result = sub_2150A3A00();
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

uint64_t sub_215013A68()
{
  result = sub_2150A3A00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_215013ADC()
{
  result = qword_27CA43BA0[0];
  if (!qword_27CA43BA0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CA43BA0);
  }

  return result;
}

uint64_t sub_215013B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215013B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CommandRunner.commandLineArguments.getter()
{
  result = sub_2150A5A80();
  v1 = *(result + 16);
  if (v1)
  {
    sub_214F6E4D8(result, result + 32, 1, (2 * v1) | 1);
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t CommandRunner.__allocating_init(for:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CommandRunner.run(arguments:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  return MEMORY[0x2822009F8](sub_215013CD8, 0, 0);
}

uint64_t sub_215013CD8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = *(v1 + 80);
  v0[24] = v3;
  v0[25] = *(v1 + 88);
  static Commands.command(from:)(v2, v3, v0 + 2);
  v4 = v0[5];
  v5 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v8 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_215013EF8;

  return v8(v0 + 17, v4, v5);
}

uint64_t sub_215013EF8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_215014194;
  }

  else
  {
    v2 = sub_21501400C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21501400C()
{
  sub_214F6163C(v0 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    sub_2150142A8(v0 + 136);
    if (v1)
    {
      v2 = 1;
      v3 = sub_2150A4070();
LABEL_6:
      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v5 = sub_2150A4B60();

      fputs((v5 + 32), v3);
      __swift_destroy_boxed_opaque_existential_0(v0 + 136);

      goto LABEL_10;
    }

    v2 = 1;
  }

  else
  {
    sub_2150142A8(v0 + 136);
    if (v4)
    {
      v3 = sub_2150A4080();
      v2 = 0;
      goto LABEL_6;
    }

    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_215014194()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 216);
  v2 = sub_215015270(v1);
  MEMORY[0x2160617E0](v2);

  MEMORY[0x2160617E0](10, 0xE100000000000000);
  v3 = sub_2150A4070();
  v4 = sub_2150A4B60();

  fputs((v4 + 32), v3);

  v5 = *(v0 + 8);

  return v5(1);
}

uint64_t sub_2150142A8(uint64_t a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_214F50074(a1, v33);
  v12 = 0;
  if (swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    if (LOBYTE(v32[0]))
    {
      v12 = 5457241;
    }

    else
    {
      v12 = 20302;
    }

    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v15 = v32[0];
    v14 = v32[1];

    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v3 + 16))(v9, v11, v2);
    if (sub_2150A3620())
    {
      v12 = sub_2150A3700();
      v17 = *(v3 + 8);
      v17(v9, v2);
      v17(v11, v2);
    }

    else
    {
      v31 = *(v3 + 8);
      v31(v9, v2);
      (*(v3 + 32))(v6, v11, v2);
      v12 = sub_2150A3650();
      v31(v6, v2);
    }

    goto LABEL_6;
  }

  sub_214F50074(a1, v32);
  v12 = sub_2150A4B30();
  v19 = v18;
  if ((sub_2150A4CD0() & 1) == 0 || (sub_2150A4CE0() & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = sub_2150A4BC0();
  v21 = sub_214FBA930(v20, v12, v19);

  result = sub_2150A4BC0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2150A5810();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = result;
    }

    if (v23 >> 14 >= v21 >> 14)
    {
      v24 = sub_2150A5840();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v12 = MEMORY[0x216061730](v24, v26, v28, v30);

LABEL_6:
      __swift_destroy_boxed_opaque_existential_0(v33);
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2150146A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v1, 0);
    v2 = v19;
    v4 = a1 + 32;
    do
    {
      sub_214F6163C(v4, &v20);
      __swift_project_boxed_opaque_existential_1(&v20, v22);
      v5 = sub_2150A6630();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_0(&v20);
      v9 = *(v19 + 16);
      v8 = *(v19 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_214F86A20((v8 > 1), v9 + 1, 1);
      }

      *(v19 + 16) = v9 + 1;
      v10 = v19 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F86A40();
  v11 = sub_2150A4A20();
  v13 = v12;

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  sub_2150A49F0();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x2160617E0](11565, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v15 = sub_2150A6100();
  MEMORY[0x2160617E0](v15);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](v11, v13);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v17 = sub_2150A6100();
  MEMORY[0x2160617E0](v17);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return v20;
}

unint64_t sub_215014A50(uint64_t a1)
{
  v2 = 0xD00000000000001ELL;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A5C20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D84160])
  {
    (*(v8 + 96))(v10, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8);
    (*(v4 + 32))(v6, v10 + *(v12 + 48), v3);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_2150A5B20();
    v13 = sub_2150A5C00();
    v14 = sub_2150146A8(v13);
    v16 = v15;

    v44 = v14;
    v45 = v16;
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E6D30);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v41 = 35;
    v17 = sub_2150A6100();
    v18 = v3;
    MEMORY[0x2160617E0](v17);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v42, v43);

    v19 = sub_2150A6670();
    MEMORY[0x2160617E0](v19);

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v41 = 0;
    v20 = sub_2150A6100();
    MEMORY[0x2160617E0](v20);

LABEL_5:
    sub_2150A49F0();
    MEMORY[0x2160617E0](v42, v43);

    v2 = v44;
    (*(v4 + 8))(v6, v18);
    return v2;
  }

  if (v11 == *MEMORY[0x277D84170])
  {
    (*(v8 + 96))(v10, v7);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8);
    (*(v4 + 32))(v6, v10 + *(v21 + 48), v3);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_2150A5B20();
    v22 = sub_2150A5C00();
    v23 = sub_2150146A8(v22);
    v25 = v24;

    v44 = v23;
    v45 = v25;
    MEMORY[0x2160617E0](0xD00000000000001ELL, 0x80000002150E6D10);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v41 = 35;
    v26 = sub_2150A6100();
    v18 = v3;
    MEMORY[0x2160617E0](v26);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v42, v43);

    v27 = sub_2150A6670();
    MEMORY[0x2160617E0](v27);

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v41 = 0;
    v28 = sub_2150A6100();
    MEMORY[0x2160617E0](v28);

    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x277D84158])
  {
    (*(v8 + 96))(v10, v7);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C30) + 48);
    sub_214D7A458(v10, &v44);
    (*(v4 + 32))(v6, v10 + v30, v3);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2150A5B20();
    v31 = sub_2150A5C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    sub_214F6163C(&v44, inited + 32);
    v42 = v31;
    sub_215068884(inited);
    v33 = sub_2150146A8(v42);
    v35 = v34;

    v42 = v33;
    v43 = v35;
    MEMORY[0x2160617E0](0xD000000000000015, 0x80000002150E6CF0);
    v2 = v42;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_0(&v44);
  }

  else if (v11 == *MEMORY[0x277D84168])
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 32))(v6, v10, v3);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_2150A5B20();
    v36 = sub_2150A5C00();
    v37 = sub_2150146A8(v36);
    v39 = v38;

    v44 = v37;
    v45 = v39;
    MEMORY[0x2160617E0](0xD000000000000012, 0x80000002150E6CD0);
    v2 = v44;
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  return v2;
}

uint64_t sub_215015270(void *a1)
{
  v2 = sub_2150A5C20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-1] - v7;
  *&v20 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  if (swift_dynamicCast())
  {
    (*(v3 + 32))(v6, v8, v2);
    v10 = sub_215014A50(v6);
    (*(v3 + 8))(v6, v2);

    return v10;
  }

  else
  {

    v21 = a1;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C28);
    if (swift_dynamicCast())
    {
      sub_214D7A458(&v20, v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v13 = sub_2150A32A0();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v18 = a1;
        v17 = a1;
        v15 = sub_2150A4B30();
      }

      __swift_destroy_boxed_opaque_existential_0(v19);

      return v15;
    }

    else
    {

      *&v20 = a1;
      v16 = a1;
      return sub_2150A4B30();
    }
  }
}

uint64_t DispatchQoS.init(_:)(uint64_t a1)
{
  v2 = sub_2150A5120();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  (*(v3 + 16))(&v17 - v7, a1, v2);
  sub_2150A50B0();
  sub_215015870();
  v9 = sub_2150A4A80();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(v8, v2);
    sub_2150A4430();
  }

  else
  {
    sub_2150A50D0();
    v11 = sub_2150A4A80();
    v10(v6, v2);
    if (v11 & 1) != 0 || (sub_2150A50D0(), v12 = sub_2150A4A80(), v10(v6, v2), (v12))
    {
      v10(v8, v2);
      sub_2150A4470();
    }

    else
    {
      sub_2150A5100();
      v14 = sub_2150A4A80();
      v10(v6, v2);
      if (v14)
      {
        v10(v8, v2);
        sub_2150A4460();
      }

      else
      {
        sub_2150A50C0();
        v15 = sub_2150A4A80();
        v10(v6, v2);
        if (v15)
        {
          v10(v8, v2);
        }

        else
        {
          sub_2150A50C0();
          v16 = sub_2150A4A80();
          v10(v6, v2);
          v10(v8, v2);
          if ((v16 & 1) == 0)
          {
            sub_2150A4440();
            return (v10)(a1, v2);
          }
        }

        sub_2150A4450();
      }
    }
  }

  return (v10)(a1, v2);
}

unint64_t sub_215015870()
{
  result = qword_280C23180;
  if (!qword_280C23180)
  {
    sub_2150A5120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23180);
  }

  return result;
}

Swift::Void __swiftcall ICAccount.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = [v1 objectID];
  if (([v2 ic_isModernType] & 1) == 0)
  {
    [v2 ic_isLegacyType];
  }

  v3 = v1;
  if ([v3 isLocalAccount] || (v4 = objc_msgSend(v3, sel_emailAddress)) == 0)
  {
  }

  else
  {
    v5 = v4;
    sub_2150A4AD0();
  }

  AccountID.entityIdentifierString.getter();

  v6 = [v3 localizedName];
  sub_2150A4AD0();

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5700();
}

id CloudRecordSnapshot.id.getter()
{
  v0 = sub_2150161BC();

  return v0;
}

void CloudRecordSnapshot.init(record:id:data:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

id sub_215015B84@<X0>(void *a1@<X8>)
{
  v2 = sub_2150161BC();
  *a1 = v2;

  return v2;
}

uint64_t static NSObject<>.record(from:)()
{
  v0 = [swift_getObjCClassFromMetadata() ic_systemFieldsValueTransformer];
  v1 = sub_2150A3790();
  v2 = [v0 reverseTransformedValue_];

  if (v2)
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
    sub_214F50074(v18, v17);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v18);
      return v15;
    }

    sub_214F50074(v18, v17);
    if (qword_280C24598 != -1)
    {
      swift_once();
    }

    v4 = sub_2150A3F30();
    __swift_project_value_buffer(v4, qword_280C245A0);
    v5 = sub_2150A5570();
    v6 = sub_2150A3F10();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315650;
      v9 = sub_2150A5B70();
      v11 = sub_214F7723C(v9, v10, &v16);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 29;
      *(v7 + 22) = 2080;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000041, 0x80000002150E6D80);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      swift_getDynamicType();
      v12 = sub_2150A6670();
      MEMORY[0x2160617E0](v12);

      MEMORY[0x2160617E0](0x65707974206F7420, 0xE900000000000020);
      v13 = sub_2150A6670();
      MEMORY[0x2160617E0](v13);

      MEMORY[0x2160617E0](0x2E64656C69616620, 0xE800000000000000);
      v14 = sub_214F7723C(0, 0xE000000000000000, &v16);

      *(v7 + 24) = v14;
      _os_log_impl(&dword_214D51000, v6, v5, "Failed assertion at %s:%lu: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v8, -1, -1);
      MEMORY[0x216064AF0](v7, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return 0;
}

void NSObject<>.makeSnapshot()(void *a1@<X8>)
{
  v3 = [swift_getObjCClassFromMetadata() ic_systemFieldsValueTransformer];
  v4 = [v3 transformedValue_];

  if (v4)
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      *a1 = [v1 recordID];
      a1[1] = v15;
      a1[2] = v16;
      return;
    }
  }

  else
  {
    sub_214FBC238(v19);
  }

  if (qword_280C24598 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  __swift_project_value_buffer(v5, qword_280C245A0);
  v6 = sub_2150A5570();
  v7 = sub_2150A3F10();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v17 = v9;
    *v8 = 136315650;
    v10 = sub_2150A5B70();
    v12 = sub_214F7723C(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 38;
    *(v8 + 22) = 2080;
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_2150A5B20();

    *&v19[0] = 0xD00000000000002FLL;
    *(&v19[0] + 1) = 0x80000002150E6DD0;
    v13 = sub_2150A6670();
    MEMORY[0x2160617E0](v13);

    v14 = sub_214F7723C(*&v19[0], *(&v19[0] + 1), &v17);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_214D51000, v7, v6, "Failed assertion at %s:%lu: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v9, -1, -1);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t sub_2150161C8()
{
  result = qword_27CA43C38;
  if (!qword_27CA43C38)
  {
    sub_215016220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43C38);
  }

  return result;
}

unint64_t sub_215016220()
{
  result = qword_280C24888;
  if (!qword_280C24888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24888);
  }

  return result;
}

NSProgress __swiftcall NSProgress.addingChild(totalUnitCount:pendingUnitCount:)(Swift::Int64 totalUnitCount, Swift::Int64 pendingUnitCount)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  [v5 setTotalUnitCount_];
  [v2 addChild:v5 withPendingUnitCount:pendingUnitCount];
  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSProgress.throwIfCancelled()()
{
  if ([v0 isCancelled])
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    swift_willThrow();
  }
}

uint64_t Collection.nonEmpty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2150A53F0();
  v6 = *(a1 - 8);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a2, v2, a1);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, a1);
}

uint64_t Collection.only.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v14[-v4];
  if (sub_2150A53E0() == 1)
  {
    sub_2150A53D0();
    v6 = sub_2150A5470();
    v8 = v7;
    v9 = swift_getAssociatedTypeWitness();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a1, v8, v9);
    v6(v14, 0);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v12 = swift_getAssociatedTypeWitness();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v26 = a8;
  v20[6] = a8;
  v20[7] = a1;
  v20[8] = a2;
  v11 = sub_2150A4940();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_214F86288(sub_215016884, v20, v11, a6, v12, WitnessTable, MEMORY[0x277D84950], v25);

  if (!v8)
  {
    v21 = v14;
    *&v25[0] = a3;
    v16 = sub_2150A4FD0();
    v17 = sub_2150A4950();
    v18 = swift_getWitnessTable();
    v19 = swift_getWitnessTable();
    sub_2150A63C0();

    v25[0] = v25[1];
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    sub_2150A5B80();
    swift_getWitnessTable();
    return sub_2150A4930();
  }

  return result;
}

uint64_t sub_215016884(uint64_t a1, void *a2)
{
  result = (*(v2 + 56))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_2150168BC()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 newOperationQueueWithName_];

  qword_27CA43C40 = v2;
}

uint64_t static ICSearchQueryOperation.suggestionSearchResults(linkSuggestionQuery:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2150169A8, 0, 0);
}

uint64_t sub_2150169A8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C48);
  *v2 = v0;
  v2[1] = sub_215016AB4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002DLL, 0x80000002150E6E00, sub_215016E98, v1, v3);
}

uint64_t sub_215016AB4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_215016BEC;
  }

  else
  {

    v2 = sub_215016BD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215016BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_215016C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  if (qword_27CA416A8 != -1)
  {
    swift_once();
  }

  v9 = qword_27CA43C40;
  [qword_27CA43C40 cancelAllOperations];
  v10 = [objc_allocWithZone(ICSearchQueryOperation) initWithLinkSuggestionQuery_];
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_215017C7C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  [v14 setCompletionBlock_];
  _Block_release(v13);

  [v9 addOperation_];
}

uint64_t sub_215016EA0(void *a1)
{
  if ([a1 error])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C58);
    return sub_2150A5020();
  }

  else
  {
    v3 = [a1 results];
    if (v3)
    {
      v4 = v3;
      sub_215017C30();
      sub_2150A4EC0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C58);
    return sub_2150A5030();
  }
}

uint64_t sub_21501710C(void *a1, void *aBlock)
{
  v2[3] = a1;
  v2[4] = _Block_copy(aBlock);
  v2[5] = swift_getObjCClassMetadata();
  v4 = a1;

  return MEMORY[0x2822009F8](sub_215017198, 0, 0);
}

uint64_t sub_215017198()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C48);
  *v4 = v0;
  v4[1] = sub_2150172A4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000002150E6E00, sub_215017CEC, v3, v5);
}

uint64_t sub_2150172A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21501746C;
  }

  else
  {

    v2 = sub_2150173C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2150173C0()
{
  sub_215017C30();
  v1 = sub_2150A4EB0();

  v2 = *(v0 + 32);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21501746C()
{
  v1 = *(v0 + 64);

  v2 = sub_2150A35C0();

  v3 = *(v0 + 32);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_215017518()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214F557A8;

  return sub_21501710C(v2, v3);
}

uint64_t sub_2150175CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_214F557A8;

  return v6();
}

uint64_t sub_2150176B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_214F53FB0;

  return v7();
}

uint64_t sub_21501779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_214F54918(a3, v23 - v10);
  v12 = sub_2150A5120();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_215017A58(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2150A5110();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2150A5010();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2150A4B60() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_215017A58(a3);

    return v21;
  }

LABEL_8:
  sub_215017A58(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_215017A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215017AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return sub_214FE0F68(a1, v4);
}

uint64_t sub_215017B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214FE0F68(a1, v4);
}

unint64_t sub_215017C30()
{
  result = qword_27CA43C50;
  if (!qword_27CA43C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43C50);
  }

  return result;
}

uint64_t sub_215017C7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C58);
  v1 = *(v0 + 16);

  return sub_215016EA0(v1);
}

void static Transcription.checkpointTranscription(local:remote:localTime:remoteTime:context:attachmentObjectID:)(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a5;
  *(v12 + 72) = a6;
  v16[4] = sub_214F54988;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F44018;
  v16[3] = &block_descriptor_14;
  v13 = _Block_copy(v16);

  v14 = a3;
  v15 = a4;

  [v14 performBlock_];
  _Block_release(v13);
}

uint64_t sub_215017E10()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43C60);
  v1 = __swift_project_value_buffer(v0, qword_27CA43C60);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TranscriptionTaskError.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_215017F60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43CE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21501D084();
  sub_2150A65B0();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43CC8);
  sub_21501D0D8(&qword_27CA43CE8, &qword_27CA43CF0);
  sub_2150A60A0();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_2150A60A0();
    LOBYTE(v14) = 2;
    sub_2150A6080();
    LOBYTE(v14) = 3;
    sub_2150A6080();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2150181AC()
{
  v1 = 0x7972616D697270;
  v2 = 0x547972616D697270;
  if (*v0 != 2)
  {
    v2 = 0x7261646E6F636573;
  }

  if (*v0)
  {
    v1 = 0x7261646E6F636573;
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

uint64_t sub_215018230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_215019E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_215018258(uint64_t a1)
{
  v2 = sub_21501D084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215018294(uint64_t a1)
{
  v2 = sub_21501D084();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2150182D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_215019B44(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_215018320@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 objectWithID_];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a3 = result;
  }

  else
  {

    if (qword_27CA416B0 != -1)
    {
      swift_once();
    }

    v7 = sub_2150A3F30();
    __swift_project_value_buffer(v7, qword_27CA43C60);
    v8 = a2;
    v9 = sub_2150A3F10();
    v10 = sub_2150A5560();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_214D51000, v9, v10, "no attachment found for ID %@ while attempting transcription", v11, 0xCu);
      sub_214F302D4(v12, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v12, -1, -1);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    sub_21501CFCC();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_2150184D8(uint64_t a1, void *a2, void *a3, Swift::OpaquePointer a4, uint64_t a5, void *a6, uint64_t a7)
{
  sub_214F48160();
  sub_2150A56D0();
  v21 = v37[0];
  v22 = [v37[0] audioModel];
  if (!v22)
  {
LABEL_11:
    v26 = *(a7 + 8);
    if (v26 && (v27 = *a7, v28 = type metadata accessor for Transcription(), v29 = swift_allocObject(), *(v29 + 16) = v28, *(v29 + 24) = a2, *(v29 + 32) = a3, *(v29 + 40) = v27, *(v29 + 48) = v26, v30 = *(a7 + 32), *(v29 + 56) = *(a7 + 16), *(v29 + 72) = v30, *(v29 + 88) = *(a7 + 48), *(v29 + 104) = *(a7 + 64), v31 = swift_allocObject(), *(v31 + 16) = sub_215019A24, *(v31 + 24) = v29, aBlock[4] = sub_214F5D418, aBlock[5] = v31, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_214F34100, aBlock[3] = &block_descriptor_13_0, v32 = _Block_copy(aBlock), v33 = a2, v34 = a3, sub_215019A34(a7, v37), , , [v34 performBlockAndWait_], _Block_release(v32), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , , (isEscapingClosureAtFileLocation & 1) != 0))
    {
      __break(1u);
    }

    else
    {
      [v21 setNeedsTranscription_];
      v36 = sub_2150A4A90();
      [v21 updateChangeCountWithReason_];

      [a3 ic_save];
      sub_215049A40();
    }

    return;
  }

  v23 = v22;
  v24._countAndFlagsBits = a5;
  v24._object = a6;
  ICAttachmentAudioModel.saveModelDataToSubattachment(transcriptSegments:fragmentUUID:retranscription:)(a4, v24, 0);
  if (!v25)
  {

    goto LABEL_11;
  }

  if (qword_27CA416B0 != -1)
  {
    swift_once();
  }

  v13 = sub_2150A3F30();
  __swift_project_value_buffer(v13, qword_27CA43C60);
  v14 = v25;
  v15 = sub_2150A3F10();
  v16 = sub_2150A5560();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v25;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_214D51000, v15, v16, "could not save transcript: %@", v17, 0xCu);
    sub_214F302D4(v18, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v18, -1, -1);
    MEMORY[0x216064AF0](v17, -1, -1);
  }

  else
  {
  }
}

void sub_2150188C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_214F48160();
  sub_2150A56D0();
  countAndFlagsBits = v20.text._countAndFlagsBits;
  v15 = [v20.text._countAndFlagsBits audioModel];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *(a4 + 48);
  *&v20.modelVersion.value._object = *(a4 + 32);
  *&v20.attributionIcon.value._object = v17;
  v20.attributionProvider.value._object = *(a4 + 64);
  v18 = *(a4 + 16);
  v20.text = *a4;
  *&v20.isSafe = v18;
  ICAttachmentAudioModel.saveTopLineSummaryToAttachment(summarizationResult:)(&v20);
  if (!v19)
  {

LABEL_11:
    [a3 ic_save];

    return;
  }

  if (qword_27CA416B0 != -1)
  {
    swift_once();
  }

  v6 = sub_2150A3F30();
  __swift_project_value_buffer(v6, qword_27CA43C60);
  v7 = v19;
  v8 = sub_2150A3F10();
  v9 = sub_2150A5560();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v19;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_214D51000, v8, v9, "could not save summary to audio attachment: %@", v10, 0xCu);
    sub_214F302D4(v11, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v11, -1, -1);
    MEMORY[0x216064AF0](v10, -1, -1);
  }

  else
  {
  }
}

void sub_215018AE0(uint64_t a1)
{
  if (qword_27CA416B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA43C60);
  oslog = sub_2150A3F10();
  v3 = sub_2150A5550();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_214D51000, oslog, v3, "Downloading transcription ASR model… {progress: %ld}", v4, 0xCu);
    MEMORY[0x216064AF0](v4, -1, -1);
  }
}

void sub_215018BE0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v24 = [a1 objectWithID_];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    sub_2150A2FE0();
    swift_allocObject();
    sub_2150A2FD0();
    sub_21501D020();
    v12 = sub_2150A2FC0();
    v14 = v13;
    v15 = sub_2150A3790();
    sub_214F7EDE4(v12, v14);
    [v11 setTemporaryTranscriptData_];

    v16 = sub_2150A4A90();
    [v11 updateChangeCountWithReason_];

    if (qword_27CA416B0 != -1)
    {
      swift_once();
    }

    v17 = sub_2150A3F30();
    __swift_project_value_buffer(v17, qword_27CA43C60);
    v18 = a2;
    v19 = sub_2150A3F10();
    v20 = sub_2150A5550();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412802;
      *(v21 + 4) = v18;
      *v22 = v18;
      *(v21 + 12) = 2048;
      *(v21 + 14) = a5;
      *(v21 + 22) = 2048;
      *(v21 + 24) = a6;
      v23 = v18;
      _os_log_impl(&dword_214D51000, v19, v20, "successfully checkpointed transcript for attachmentID: %@ localTime: %f remote: %f", v21, 0x20u);
      sub_214F302D4(v22, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v22, -1, -1);
      MEMORY[0x216064AF0](v21, -1, -1);
    }

    [a1 ic_save];
  }

  else
  {
  }
}

unint64_t sub_21501900C()
{
  result = qword_27CA43C78;
  if (!qword_27CA43C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43C78);
  }

  return result;
}

uint64_t sub_215019060(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2150190B0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_215019104(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21501911C(void *result, int a2)
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

void sub_215019178(void *a1, void *a2, uint64_t a3)
{
  if (qword_27CA416B0 != -1)
  {
    swift_once();
  }

  v6 = sub_2150A3F30();
  __swift_project_value_buffer(v6, qword_27CA43C60);
  v7 = a1;
  v8 = sub_2150A3F10();
  v9 = sub_2150A5550();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_214D51000, v8, v9, "checking for temp transcript: %@", v10, 0xCu);
    sub_214F302D4(v11, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v11, -1, -1);
    MEMORY[0x216064AF0](v10, -1, -1);
  }

  v39 = [a2 objectWithID_];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 temporaryTranscriptData];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2150A37B0();
      v18 = v17;

      sub_2150A2F80();
      swift_allocObject();
      sub_2150A2F70();
      sub_215019AB0();
      sub_2150A2F60();
      v25 = v40[0];
      v26 = v40[1];
      v27 = v41;
      v28 = *a3;
      *a3 = v40[0];
      *(a3 + 8) = v26;
      *(a3 + 16) = v27;

      sub_215019B04(v28);

      v29 = sub_2150A3F10();
      v30 = sub_2150A5550();

      if (os_log_type_enabled(v29, v30))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40[0] = v33;
        *v32 = 136315138;

        v34 = type metadata accessor for TranscriptViewModelSegment(0);
        v35 = MEMORY[0x216061AA0](v25, v34);
        v37 = v36;

        v38 = sub_214F7723C(v35, v37, v40);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_214D51000, v29, v30, "successfully retrieved checkpointed transcript: localTime: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x216064AF0](v33, -1, -1);
        MEMORY[0x216064AF0](v32, -1, -1);

        sub_214F7EDE4(v16, v18);
      }

      else
      {

        sub_214F7EDE4(v16, v18);
      }

      return;
    }

    v19 = v7;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5550();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_214D51000, v20, v21, "checked for temp transcript and there was none: %@", v22, 0xCu);
      sub_214F302D4(v23, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v23, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);
    }
  }
}

void sub_2150197C4(void *a1, uint64_t a2)
{
  v6 = [a1 objectWithID_];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [v3 setTemporaryTranscriptData_];
    v5 = sub_2150A4A90();
    [v4 updateChangeCountWithReason_];

    [a1 ic_save];
  }
}

uint64_t sub_21501989C(void *a1, void *a2)
{
  memset(v12, 0, sizeof(v12));
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_215019AA4;
  *(v5 + 24) = v4;
  v11[4] = sub_214F5D518;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_214F34100;
  v11[3] = &block_descriptor_24;
  v6 = _Block_copy(v11);
  v7 = a1;
  v8 = a2;

  [v8 performBlockAndWait_];
  _Block_release(v6);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = *&v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_215019A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_215019AB0()
{
  result = qword_27CA43C88;
  if (!qword_27CA43C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43C88);
  }

  return result;
}

uint64_t sub_215019B04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_215019B44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43CB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21501D084();
  sub_2150A6590();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43CC8);
  v10 = 0;
  sub_21501D0D8(&qword_27CA43CD0, &qword_27CA43CD8);
  sub_2150A5FC0();
  v10 = 1;
  sub_2150A5FC0();
  LOBYTE(v11) = 2;
  sub_2150A5FA0();
  v8 = v7;
  LOBYTE(v11) = 3;
  sub_2150A5FA0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_215019E24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000656D69 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED0000656D695479)
  {

    return 3;
  }

  else
  {
    v6 = sub_2150A6270();

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

void sub_215019F9C(uint64_t *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 audioModel];
  if (!v3)
  {
    sub_21501CFCC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = v5;
  if (!v2)
  {
    v12 = [v5 supportsGeneralASR];

    if (v12)
    {
      v13 = [v4 audioDocument];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      v15 = [v13 isCallRecording];

      if ((v15 & 1) == 0)
      {
LABEL_12:

        return;
      }
    }

LABEL_11:
    sub_21501CFCC();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = [v5 supportsCallTranscription];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v4 audioDocument];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isCallRecording];

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_21501A134(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21501A1E4;

  return sub_215056074(a1);
}

uint64_t sub_21501A1E4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 49) = a1 & 1;

    return MEMORY[0x2822009F8](sub_21501A334, 0, 0);
  }
}

uint64_t sub_21501A334()
{
  if (*(v0 + 49) == 1)
  {
    sub_215049E0C(*(v0 + 16));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_21501A43C;
    v2 = *(v0 + 48);

    return sub_215056EA0(v2, sub_215018AE0, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21501A43C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_21501A5B4;
  }

  else
  {
    v2 = sub_21501A550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21501A550()
{
  sub_215049F3C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21501A5B4()
{
  if (qword_27CA416B0 != -1)
  {
    swift_once();
  }

  v1 = sub_2150A3F30();
  __swift_project_value_buffer(v1, qword_27CA43C60);
  v2 = sub_2150A3F10();
  v3 = sub_2150A5560();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, v3, "could not download ASR model so ending background transcription", v4, 2u);
    MEMORY[0x216064AF0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_215049F3C(v5);
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21501A6E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 632) = a2;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for TranscriptViewModelSegment(0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = sub_2150A3340();
  *(v4 + 112) = swift_task_alloc();
  sub_2150A34D0();
  *(v4 + 120) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80);
  *(v4 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88);
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90);
  *(v4 + 184) = v8;
  *(v4 + 192) = *(v8 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v9 = sub_2150A33B0();
  *(v4 + 216) = v9;
  *(v4 + 224) = *(v9 - 8);
  *(v4 + 232) = swift_task_alloc();
  v10 = sub_2150A3400();
  *(v4 + 240) = v10;
  *(v4 + 248) = *(v10 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v11 = sub_2150A4220();
  *(v4 + 280) = v11;
  *(v4 + 288) = *(v11 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v12 = sub_2150A4190();
  *(v4 + 312) = v12;
  *(v4 + 320) = *(v12 - 8);
  *(v4 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0);
  *(v4 + 352) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8);
  *(v4 + 360) = v13;
  *(v4 + 368) = *(v13 - 8);
  *(v4 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8);
  *(v4 + 384) = swift_task_alloc();
  v14 = sub_2150A3750();
  *(v4 + 392) = v14;
  *(v4 + 400) = *(v14 - 8);
  *(v4 + 408) = swift_task_alloc();
  sub_2150A4120();
  *(v4 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8);
  *(v4 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C90);
  *(v4 + 432) = swift_task_alloc();
  v15 = sub_2150A3AC0();
  *(v4 + 440) = v15;
  *(v4 + 448) = *(v15 - 8);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  v16 = sub_2150A42A0();
  *(v4 + 472) = v16;
  *(v4 + 480) = *(v16 - 8);
  *(v4 + 488) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21501AE08, 0, 0);
}

uint64_t sub_21501AE08()
{
  v1 = MEMORY[0x277CDCE70];
  if (!*(v0 + 632))
  {
    v1 = MEMORY[0x277CDCE40];
  }

  (*(*(v0 + 480) + 104))(*(v0 + 488), *v1, *(v0 + 472));
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    sub_2150A3A10();
  }

  else
  {
    sub_2150A3A70();
  }

  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 472);
  v5 = *(v0 + 432);
  v6 = *(v0 + 424);
  v33 = *(v0 + 400);
  v35 = *(v0 + 392);
  v36 = *(v0 + 408);
  v37 = *(v0 + 384);
  v34 = *(v0 + 32);
  (*(*(v0 + 448) + 16))();
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v7 = sub_2150A4130();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00);
  v8 = sub_2150A4140();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2150C25D0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277CDCAB0], v8);
  sub_214F803B8(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08);
  v12 = sub_2150A4290();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2150C25D0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277CDCDA0], v12);
  sub_214F806D8(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10);
  v16 = sub_2150A41A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2150C29B0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CDCB08], v16);
  v22(v21 + v18, *MEMORY[0x277CDCB10], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CDCB28], v16);
  sub_21505578C(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2150A41E0();
  swift_allocObject();
  v23 = sub_2150A41C0();
  *(v0 + 496) = v23;
  sub_2150A40E0();
  sub_2150A4110();
  (*(v33 + 16))(v36, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C98);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2150C25D0;
  v25 = sub_21501D174(&qword_27CA43CA0, MEMORY[0x277CDCB98]);
  *(v24 + 32) = v23;
  *(v24 + 40) = v25;
  v26 = sub_2150A4250();
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  sub_2150A4240();
  swift_allocObject();

  v27 = sub_2150A4230();
  v28 = swift_task_alloc();
  *(v0 + 504) = v28;
  *v28 = v0;
  v28[1] = sub_21501B470;
  v29 = *(v0 + 408);
  v30 = *(v0 + 416);
  v31 = *(v0 + 384);

  return MEMORY[0x28212BC08](v30, v29, v24, v31, 0, v27, 0, 0);
}

uint64_t sub_21501B470(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21501C724, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[66] = v5;
    *v5 = v4;
    v5[1] = sub_21501B5F8;

    return MEMORY[0x28212BBF0]();
  }
}

uint64_t sub_21501B5F8()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_21501C93C;
  }

  else
  {
    v2 = sub_21501B70C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21501B70C()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_2150A41B0();
  *(v0 + 544) = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  v1 = MEMORY[0x277CDCBA0];
  *(v0 + 624) = *MEMORY[0x277CDCBB8];
  *(v0 + 628) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 552) = v3;
  *v3 = v0;
  v3[1] = sub_21501B85C;
  v4 = *(v0 + 360);
  v5 = *(v0 + 336);

  return MEMORY[0x282200310](v5, 0, 0, v0 + 24, v4, AssociatedConformanceWitness);
}

uint64_t sub_21501B85C()
{

  if (v0)
  {

    v1 = sub_21501CB60;
  }

  else
  {
    v1 = sub_21501B974;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_21501B974()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v4 = swift_task_alloc();
    *(v0 + 560) = v4;
    *v4 = v0;
    v4[1] = sub_21501C3DC;

    return MEMORY[0x28212BBF0]();
  }

  v5 = *(v0 + 624);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  (*(v3 + 32))(*(v0 + 328), v1, v2);
  sub_2150A4150();
  v10 = *(v9 + 104);
  v10(v7, v5, v8);
  v11 = sub_2150A4210();
  v12 = *(v9 + 8);
  v12(v7, v8);
  v13 = (v12)(v6, v8);
  if ((v11 & 1) == 0)
  {
    v14 = *(v0 + 628);
    v15 = v10;
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 280);
    sub_2150A4150();
    v15(v17, v14, v18);
    v19 = sub_2150A4210();
    v12(v17, v18);
    v13 = (v12)(v16, v18);
    if ((v19 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v20 = MEMORY[0x216060D20](v13);
  if (!*(v20 + 16))
  {

    if (qword_27CA417C0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  v92 = *(v0 + 216);
  v93 = *(v0 + 184);
  v95 = *(v0 + 200);
  v94 = *(v0 + 152);
  v97 = *(v0 + 136);
  v100 = *(v0 + 128);
  (*(v24 + 16))(v22, v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

  (*(v24 + 32))(v21, v22, v23);
  sub_2150A33D0();
  sub_2150A4260();
  sub_21501D174(&qword_27CA41EB0, MEMORY[0x277CDCCE0]);
  sub_2150A33C0();
  (*(v25 + 8))(v26, v92);
  (*(v28 + 16))(v95, v27, v93);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90);
  sub_2150A4D60();
  sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88);
  sub_2150A5850();
  v29 = *(v97 + 48);
  v30 = v29(v94, 1, v100);
  v31 = MEMORY[0x277D84F90];
  if (v30 == 1)
  {
LABEL_9:
    v32 = *(v0 + 272);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 208);
    v36 = *(v0 + 184);
    v37 = *(v0 + 192);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    goto LABEL_14;
  }

  v96 = v29;
  while (1)
  {
    v53 = *(v0 + 144);
    sub_214F548A8(*(v0 + 152), v53);
    if ((*(v53 + 48) & 1) == 0)
    {
      break;
    }

LABEL_20:
    v51 = *(v0 + 152);
    v52 = *(v0 + 128);
    sub_214F302D4(*(v0 + 144), &qword_27CA41E78);
    sub_2150A5850();
    if (v29(v51, 1, v52) == 1)
    {
      goto LABEL_9;
    }
  }

  v101 = v31;
  v54 = *(v0 + 144);
  v98 = *(v0 + 632);
  v56 = *(v54 + 32);
  v55 = *(v54 + 40);
  v57 = *(v54 + 8);
  v58 = *(v54 + 16);
  *(v0 + 576) = *v54;
  *(v0 + 584) = v57;
  *(v0 + 592) = v58;
  *(v0 + 608) = v56;
  *(v0 + 616) = v55;
  sub_2150A5730();
  v60 = v59 + 0.0;
  sub_2150A54E0();
  sub_2150A5730();
  v62 = v61 + 0.0 - v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
  sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
  sub_2150A3430();
  sub_2150A3440();
  sub_2150A3330();
  sub_21501D174(&qword_27CA42330, MEMORY[0x277CC8B30]);
  v63 = sub_2150A4D20();
  v65 = v64;
  if (v98 != 1)
  {
    goto LABEL_33;
  }

  v66 = v101[2];
  if (!v66)
  {
    goto LABEL_33;
  }

  v67 = *(v0 + 64);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = *(v67 + 72);
  sub_214F5456C(v101 + v68 + v69 * (v66 - 1), *(v0 + 96));
  v70 = *(v0 + 96);
  if (v62 >= 0.5 || *(v70 + *(*(v0 + 56) + 24)) - v60 >= 0.5)
  {
    sub_214F545D0(v70);
LABEL_33:
    v82 = *(v0 + 80);
    v81 = *(v0 + 88);
    v84 = *(v0 + 48);
    v83 = *(v0 + 56);
    v85 = *(v0 + 40);
    v86 = v83[10];
    v87 = (v81 + v83[9]);
    *(v81 + v86) = 2;
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v88 = (v81 + v83[5]);
    *v88 = v63;
    v88[1] = v65;
    *(v81 + v83[6]) = v60;
    *(v81 + v83[7]) = v62;
    *v87 = v85;
    v87[1] = v84;
    *(v81 + v86) = 2;
    *(v81 + v83[8]) = v60 + v62;
    sub_214F5456C(v81, v82);

    v31 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21505F724(0, v101[2] + 1, 1, v101);
    }

    v29 = v96;
    v90 = v31[2];
    v89 = v31[3];
    if (v90 >= v89 >> 1)
    {
      v31 = sub_21505F724(v89 > 1, v90 + 1, 1, v31);
    }

    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v48 = *(v0 + 240);
    v49 = *(v0 + 80);
    v50 = *(v0 + 64);
    sub_214F545D0(*(v0 + 88));
    (*(v46 + 8))(v47, v48);
    v31[2] = v90 + 1;
    sub_214F5462C(v49, v31 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v90);
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v101 = sub_21506098C(v101);
  }

  v71 = v101[2];
  if (v71)
  {
    v72 = *(v0 + 96);
    v99 = *(v0 + 72);
    v73 = *(v0 + 56);
    v74 = v71 - 1;
    sub_214F545D0(v101 + v68 + (v71 - 1) * v69);
    v101[2] = v74;
    MEMORY[0x2160617E0](v63, v65);

    *(v72 + *(v73 + 28)) = v62 + *(v72 + *(v73 + 28));
    sub_214F5456C(v72, v99);
    v76 = v101[2];
    v75 = v101[3];
    if (v76 >= v75 >> 1)
    {
      v101 = sub_21505F724(v75 > 1, v76 + 1, 1, v101);
    }

    v77 = *(v0 + 248);
    v78 = *(v0 + 256);
    v79 = *(v0 + 240);
    v80 = *(v0 + 72);
    sub_214F545D0(*(v0 + 96));
    (*(v77 + 8))(v78, v79);
    v31 = v101;
    v101[2] = v76 + 1;
    sub_214F5462C(v80, v101 + v68 + v76 * v69);
    v29 = v96;
    goto LABEL_20;
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_11:
  v38 = sub_2150A3F30();
  __swift_project_value_buffer(v38, qword_27CA446F8);
  v39 = sub_2150A3F10();
  v40 = sub_2150A5560();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_214D51000, v39, v40, "got an empty result", v41, 2u);
    MEMORY[0x216064AF0](v41, -1, -1);
  }

  v31 = MEMORY[0x277D84F90];
LABEL_14:
  sub_21506860C(v31);
LABEL_15:
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = swift_task_alloc();
  *(v0 + 552) = v43;
  *v43 = v0;
  v43[1] = sub_21501B85C;
  v44 = *(v0 + 360);
  v45 = *(v0 + 336);

  return MEMORY[0x282200310](v45, 0, 0, v0 + 24, v44, AssociatedConformanceWitness);
}

uint64_t sub_21501C3DC()
{
  *(*v1 + 568) = v0;

  if (v0)
  {

    v2 = sub_21501CDA8;
  }

  else
  {
    v2 = sub_21501C4F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21501C4F8()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[2];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_21501C724()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21501C93C()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21501CB60()
{
  v11 = v0[61];
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[46];
  v7 = v0[47];
  v8 = v0[45];

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v11, v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21501CDA8()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

unint64_t sub_21501CFCC()
{
  result = qword_27CA43CA8;
  if (!qword_27CA43CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CA8);
  }

  return result;
}

unint64_t sub_21501D020()
{
  result = qword_27CA43CB0;
  if (!qword_27CA43CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CB0);
  }

  return result;
}

unint64_t sub_21501D084()
{
  result = qword_27CA43CC0;
  if (!qword_27CA43CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CC0);
  }

  return result;
}

uint64_t sub_21501D0D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43CC8);
    sub_21501D174(a2, type metadata accessor for TranscriptViewModelSegment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21501D174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21501D1D0()
{
  result = qword_27CA43CF8;
  if (!qword_27CA43CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CF8);
  }

  return result;
}

unint64_t sub_21501D228()
{
  result = qword_27CA43D00;
  if (!qword_27CA43D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D00);
  }

  return result;
}

unint64_t sub_21501D280()
{
  result = qword_27CA43D08;
  if (!qword_27CA43D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D08);
  }

  return result;
}

uint64_t sub_21501D2FC()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43D10);
  v1 = __swift_project_value_buffer(v0, qword_27CA43D10);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ShareActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShareActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShareActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShareActivityEvent() + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t type metadata accessor for ShareActivityEvent()
{
  result = qword_27CA43D30;
  if (!qword_27CA43D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for ShareActivityEvent() + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t ShareActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareActivityEvent() + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 ShareActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for ShareActivityEvent() + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t ShareActivityEvent.hash(into:)()
{
  sub_2150A3960();
  sub_21501E2C0(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  type metadata accessor for ShareActivityEvent();
  sub_2150A4BB0();

  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t ShareActivityEvent.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_21501E2C0(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  type metadata accessor for ShareActivityEvent();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_21501D910()
{
  sub_2150A3960();
  sub_21501E2C0(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t sub_21501DA10()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_21501E2C0(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t ShareActivityEvent.init(cloudSyncingObject:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &mentionRecordName - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareActivityEvent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &mentionRecordName - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isSharedRootObject])
  {

LABEL_24:
    v34 = 1;
    return (*(v9 + 56))(a2, v34, 1, v8);
  }

  v12 = [a1 serverShare];
  if (!v12)
  {
    if (qword_27CA416B8 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_27CA43D10);
    v13 = a1;
    v19 = sub_2150A3F10();
    v20 = sub_2150A5560();

    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_24;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = [v13 objectID];
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_214D51000, v19, v20, "Object must have a share — returning nil {objectID: %@}", v21, 0xCu);
    sub_214FA9D98(v22);
    MEMORY[0x216064AF0](v22, -1, -1);
    MEMORY[0x216064AF0](v21, -1, -1);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v12 creationDate];
  if (!v14)
  {
    if (qword_27CA416B8 != -1)
    {
      swift_once();
    }

    v24 = sub_2150A3F30();
    __swift_project_value_buffer(v24, qword_27CA43D10);
    v25 = a1;
    v19 = sub_2150A3F10();
    v26 = sub_2150A5560();

    if (os_log_type_enabled(v19, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v25 objectID];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_214D51000, v19, v26, "Object share must have a creation date — returning nil {objectID: %@}", v27, 0xCu);
      sub_214FA9D98(v28);
      MEMORY[0x216064AF0](v28, -1, -1);
      MEMORY[0x216064AF0](v27, -1, -1);

      goto LABEL_24;
    }

LABEL_22:
    goto LABEL_24;
  }

  v15 = v14;
  sub_2150A3930();

  v16 = a1;
  v40 = ActivityEventObject.init(cloudSyncingObject:)(v16);
  countAndFlagsBits = v39.value.mentionRecordName.value._countAndFlagsBits;
  if (!v39.value.mentionRecordName.value._countAndFlagsBits)
  {
    (*(v5 + 8))(v7, v4, v40.value.recordName._object, *&v40.is_nil);

    goto LABEL_24;
  }

  v37 = v39.value.recordName._countAndFlagsBits;
  object = v39.value.recordName._object;
  if ([(ICCloudSyncingObject *)v16 isOwnedByCurrentUser:v40.value.recordName._object])
  {
    ActivityEventParticipant.init(cloudSyncingObject:)(&v39, v16);
  }

  else
  {
    ActivityEventParticipant.init(participant:)(&v39, [v13 owner]);
  }

  v30 = v39.value.recordName._object;
  if (!v39.value.recordName._object)
  {
    (*(v5 + 8))(v7, v4);

    goto LABEL_24;
  }

  mentionRecordName = v39.value.mentionRecordName;
  v31 = v39.value.recordName._countAndFlagsBits;
  (*(v5 + 32))(v11, v7, v4);
  v32 = &v11[*(v8 + 20)];
  *v32 = v37 & 1;
  *(v32 + 1) = object;
  *(v32 + 2) = countAndFlagsBits;
  v33 = &v11[*(v8 + 24)];
  v33->value._countAndFlagsBits = v31;
  v33->value._object = v30;
  v33[1] = mentionRecordName;
  sub_21501E214(v11, a2);
  v34 = 0;
  return (*(v9 + 56))(a2, v34, 1, v8);
}

uint64_t _s11NotesShared18ShareActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ShareActivityEvent();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = *(v4 + 24);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    return 1;
  }

  return sub_2150A6270();
}

uint64_t sub_21501E214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareActivityEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21501E2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21501E330()
{
  result = sub_2150A3960();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

NotesShared::AttachmentID __swiftcall AttachmentID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t AttachmentID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AttachmentID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AttachmentID.hash(into:)()
{
  if (*v0 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t AttachmentID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

unint64_t sub_21501E63C(uint64_t a1)
{
  *(a1 + 8) = sub_21501E66C();
  result = sub_21501E6C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21501E66C()
{
  result = qword_27CA43D40;
  if (!qword_27CA43D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D40);
  }

  return result;
}

unint64_t sub_21501E6C0()
{
  result = qword_27CA43D48;
  if (!qword_27CA43D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D48);
  }

  return result;
}

unint64_t sub_21501E714(void *a1)
{
  a1[1] = sub_21501E74C();
  a1[2] = sub_21501E7A0();
  result = sub_21501E7F4();
  a1[3] = result;
  return result;
}

unint64_t sub_21501E74C()
{
  result = qword_27CA43D50;
  if (!qword_27CA43D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D50);
  }

  return result;
}

unint64_t sub_21501E7A0()
{
  result = qword_27CA43D58;
  if (!qword_27CA43D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D58);
  }

  return result;
}

unint64_t sub_21501E7F4()
{
  result = qword_27CA43D60;
  if (!qword_27CA43D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D60);
  }

  return result;
}

unint64_t sub_21501E84C()
{
  result = qword_27CA43D68;
  if (!qword_27CA43D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D68);
  }

  return result;
}

void sub_21501E8A4(void *a1, size_t *a2)
{
  v42 = a2;
  v3 = sub_2150A48F0();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435D8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for ICSystemPaperDocument();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v46.receiver = v18;
  v46.super_class = v17;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v46, sel_init);
  v21 = [*&v20[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] managedObjectContext];
  if (v21 && (v22 = v21, v38 = v3, MEMORY[0x28223BE20](v21), *(&v37 - 2) = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500), sub_2150A56D0(), v22, (v23 = v45) != 0))
  {
    sub_214FD3FE0(v45, v13);
    v24 = v44;
    if ((*(v44 + 48))(v13, 1, v14) == 1)
    {

      sub_214F302D4(v13, &qword_27CA43520);
    }

    else
    {
      (*(v24 + 32))(v16, v13, v14);
      swift_getKeyPath();
      sub_2150A47C0();

      v25 = v43;
      if ((*(v43 + 48))(v8, 1, v9) == 1)
      {
        (*(v24 + 8))(v16, v14);

        sub_214F302D4(v8, &qword_27CA43550);
      }

      else
      {
        (*(v25 + 32))(v40, v8, v9);
        sub_21501F24C();
        sub_2150A47E0();
        v26 = objc_allocWithZone(sub_2150A45B0());
        v27 = sub_2150A45A0();
        sub_2150A48E0();
        v28 = v42;
        v29 = *v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_2150604C0(0, v29[2] + 1, 1, v29);
          *v42 = v29;
        }

        v31 = v38;
        v33 = v29[2];
        v32 = v29[3];
        if (v33 >= v32 >> 1)
        {
          v36 = sub_2150604C0(v32 > 1, v33 + 1, 1, v29);
          *v42 = v36;
        }

        (*(v43 + 8))(v40, v9);
        (*(v44 + 8))(v16, v14);
        v34 = v41;
        v35 = *v42;
        *(v35 + 16) = v33 + 1;
        (*(v39 + 32))(v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v34, v31);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_21501EEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21501F2B0(a1, &v5 - v3);
  return sub_2150A44C0();
}

id ICSystemPaperDrawingsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperDrawingsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSystemPaperDrawingsHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICSystemPaperDrawingsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSystemPaperDrawingsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11NotesShared27ICSystemPaperDrawingsHelperC21drawingsForAttachmentySay9PencilKit9PKDrawingVGSo12ICAttachmentCFZ_0(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v3 = [a1 managedObjectContext];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = &v11;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21501F244;
  *(v6 + 24) = v5;
  aBlock[4] = sub_214F5D418;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F34100;
  aBlock[3] = &block_descriptor_15;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  [v4 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v3 = sub_21501F244;
    v2 = v11;
LABEL_4:
    sub_214F2F6BC(v3);
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21501F24C()
{
  result = qword_280C23190;
  if (!qword_280C23190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23190);
  }

  return result;
}

uint64_t sub_21501F2B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21501F320(int a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  if (v6 == 2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v12 = 1819112552;
    if ((a1 & 1) == 0)
    {
      v12 = 0x6E7265646F6DLL;
    }

    v13 = 0xE600000000000000;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    v24 = v12;
    v25 = v13;
    v11 = sub_2150A4B50();
    v10 = v14;
  }

  sub_214F3005C(a1, a2, a3, v9);
  v15 = sub_2150A3750();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_214F5C454(v9);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2150A3650();
    v18 = v19;
    (*(v16 + 8))(v9, v15);
  }

  v24 = v17;
  v25 = v18;
  v20 = sub_2150A4B50();
  v22 = v21;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2150A5B20();

  v24 = 0xD000000000000016;
  v25 = 0x80000002150E6FC0;
  MEMORY[0x2160617E0](v11, v10);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v20, v22);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v24;
}

unint64_t sub_21501F564(int a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  if (v6 == 2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v12 = 1819112552;
    if ((a1 & 1) == 0)
    {
      v12 = 0x6E7265646F6DLL;
    }

    v13 = 0xE600000000000000;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    v24 = v12;
    v25 = v13;
    v11 = sub_2150A4B50();
    v10 = v14;
  }

  sub_214F30070(a1, a2, a3, v9);
  v15 = sub_2150A3750();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_214F5C454(v9);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2150A3650();
    v18 = v19;
    (*(v16 + 8))(v9, v15);
  }

  v24 = v17;
  v25 = v18;
  v20 = sub_2150A4B50();
  v22 = v21;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2150A5B20();

  v24 = 0xD000000000000014;
  v25 = 0x80000002150E6FA0;
  MEMORY[0x2160617E0](v11, v10);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v20, v22);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v24;
}

unint64_t sub_21501F7A8(int a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  if (v6 == 2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v12 = 1819112552;
    if ((a1 & 1) == 0)
    {
      v12 = 0x6E7265646F6DLL;
    }

    v13 = 0xE600000000000000;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    v24 = v12;
    v25 = v13;
    v11 = sub_2150A4B50();
    v10 = v14;
  }

  sub_214D6DEA4(a1, a2, a3, v9);
  v15 = sub_2150A3750();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_214F5C454(v9);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2150A3650();
    v18 = v19;
    (*(v16 + 8))(v9, v15);
  }

  v24 = v17;
  v25 = v18;
  v20 = sub_2150A4B50();
  v22 = v21;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2150A5B20();

  v24 = 0xD00000000000001ALL;
  v25 = 0x80000002150E6F80;
  MEMORY[0x2160617E0](v11, v10);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v20, v22);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v24;
}

unint64_t sub_21501F9EC(int a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  if (v6 == 2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v12 = 1819112552;
    if ((a1 & 1) == 0)
    {
      v12 = 0x6E7265646F6DLL;
    }

    v13 = 0xE600000000000000;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    v24 = v12;
    v25 = v13;
    v11 = sub_2150A4B50();
    v10 = v14;
  }

  sub_214F30080(a1, a2, a3, v9);
  v15 = sub_2150A3750();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_214F5C454(v9);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_2150A3650();
    v18 = v19;
    (*(v16 + 8))(v9, v15);
  }

  v24 = v17;
  v25 = v18;
  v20 = sub_2150A4B50();
  v22 = v21;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2150A5B20();

  v24 = 0xD000000000000015;
  v25 = 0x80000002150E6F60;
  MEMORY[0x2160617E0](v11, v10);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v20, v22);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v24;
}

NotesShared::TableID __swiftcall TableID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t TableID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TableID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TableID.hash(into:)()
{
  if (*v0 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t TableID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_21501FEA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  sub_214F30080(*v0, *(v0 + 1), *(v0 + 2), &v8 - v2);
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_214F5C454(v3);
    return 0;
  }

  else
  {
    v7 = sub_2150A3650();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

unint64_t sub_21501FFD4(uint64_t a1)
{
  *(a1 + 8) = sub_215020004();
  result = sub_215020058();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_215020004()
{
  result = qword_27CA43D70;
  if (!qword_27CA43D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D70);
  }

  return result;
}

unint64_t sub_215020058()
{
  result = qword_27CA43D78;
  if (!qword_27CA43D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D78);
  }

  return result;
}

unint64_t sub_2150200AC(void *a1)
{
  a1[1] = sub_2150200E4();
  a1[2] = sub_215020138();
  result = sub_21502018C();
  a1[3] = result;
  return result;
}

unint64_t sub_2150200E4()
{
  result = qword_27CA43D80;
  if (!qword_27CA43D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D80);
  }

  return result;
}

unint64_t sub_215020138()
{
  result = qword_27CA43D88;
  if (!qword_27CA43D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D88);
  }

  return result;
}

unint64_t sub_21502018C()
{
  result = qword_27CA43D90;
  if (!qword_27CA43D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D90);
  }

  return result;
}

unint64_t sub_2150201E4()
{
  result = qword_27CA43D98;
  if (!qword_27CA43D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43D98);
  }

  return result;
}

uint64_t sub_21502024C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43DA0);
  v1 = __swift_project_value_buffer(v0, qword_27CA43DA0);
  if (qword_27CA414C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42858);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_215020314()
{
  result = [objc_allocWithZone(type metadata accessor for ICCloudingSyncingObjectUndoTarget()) init];
  qword_27CA43DB8 = result;
  return result;
}

void sub_215020348(void *a1, void *a2, objc_class *a3)
{
  v5 = [a1 ic:a2 existingObjectWithID:?];
  if (v5)
  {
    v15 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6.super.isa = a3;
      ICCloudSyncingObject.remove(cloudSyncingObjectActivityEvent:)(v6);
      goto LABEL_9;
    }
  }

  if (qword_27CA416C0 != -1)
  {
    swift_once();
  }

  v7 = sub_2150A3F30();
  __swift_project_value_buffer(v7, qword_27CA43DA0);
  v8 = a2;
  v9 = a3;
  v15 = sub_2150A3F10();
  v10 = sub_2150A5560();

  if (os_log_type_enabled(v15, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v8;
    v12[1] = v9;
    v13 = v8;
    v14 = v9;
    _os_log_impl(&dword_214D51000, v15, v10, "Failed to get existing object for %@ to undo cloud syncing object activity event %@.", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF0);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v12, -1, -1);
    MEMORY[0x216064AF0](v11, -1, -1);
  }

LABEL_9:
}

Swift::Void __swiftcall NSUndoManager.registerUndo(for:cloudSyncingObject:)(ICCloudSyncingObjectActivityEvent_optional a1, ICCloudSyncingObject_optional *cloudSyncingObject)
{
  if (a1.value.super.isa)
  {
    data = a1.value._data;
    if (a1.value._data)
    {
      v3 = qword_27CA416C8;
      v4 = a1.value.super.isa;
      v5 = data;
      if (v3 != -1)
      {
        swift_once();
      }

      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      type metadata accessor for ICCloudingSyncingObjectUndoTarget();
      v7 = v4;
      v8 = v5;
      sub_2150A5530();
    }
  }
}

void sub_215020674(int a1, id a2, void *a3)
{
  v4 = [a2 objectID];
  sub_215020830(v4, a3);
}

void sub_215020700(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v6 = qword_27CA416C8;
    v7 = a4;
    v8 = a3;
    v9 = v7;
    v13 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    type metadata accessor for ICCloudingSyncingObjectUndoTarget();
    v11 = v8;
    v12 = v9;
    sub_2150A5530();
  }
}

void sub_215020830(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedContext];
  if (v4 && (v5 = v4, v6 = [v4 managedObjectContext], v5, v6))
  {
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    aBlock[4] = sub_215020AD0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F44018;
    aBlock[3] = &block_descriptor_16;
    v8 = _Block_copy(aBlock);
    v9 = v6;
    v10 = a1;
    v11 = a2;

    [v9 performBlock_];
    _Block_release(v8);
  }

  else
  {
    if (qword_27CA416C0 != -1)
    {
      swift_once();
    }

    v12 = sub_2150A3F30();
    __swift_project_value_buffer(v12, qword_27CA43DA0);
    v13 = a1;
    v14 = a2;
    oslog = sub_2150A3F10();
    v15 = sub_2150A5560();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v14;
      *v17 = v13;
      v17[1] = v14;
      v18 = v13;
      v19 = v14;
      _os_log_impl(&dword_214D51000, oslog, v15, "No managed object context to fetch %@ to undo cloud syncing object activity event %@.", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF0);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v17, -1, -1);
      MEMORY[0x216064AF0](v16, -1, -1);
    }
  }
}

uint64_t static NotesSiriLocalization.noteSubtitleText(folderString:accountString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = sub_2150A4A90();
  v10 = sub_2150A4A90();
  v11 = [v8 localizedFrameworkStringForKey:v9 value:v10 table:0 allowSiri:1];

  sub_2150A4AD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2150C29C0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_214D74008();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;

  v15 = sub_2150A4AA0();

  return v15;
}

void sub_215020C9C()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43DD0 = v3;
  *algn_27CA43DD8 = v5;
}

void sub_215020D68()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43DE0 = v3;
  *algn_27CA43DE8 = v5;
}

void sub_215020E34()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43DF0 = v3;
  *algn_27CA43DF8 = v5;
}

void sub_215020F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = objc_opt_self();
  v8 = sub_2150A4A90();
  v9 = [v7 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];

  v10 = sub_2150A4AD0();
  v12 = v11;

  *a4 = v10;
  *a5 = v12;
}

uint64_t static NotesSiriLocalization.plusText()()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = sub_2150A4A90();
  v3 = [v0 localizedFrameworkStringForKey:v1 value:v2 table:0 allowSiri:1];

  sub_2150A4AD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C25D0;
  v5 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v5;
  *(v4 + 32) = 25;
  v6 = sub_2150A4AA0();

  return v6;
}

uint64_t sub_215021164(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_2150A4A90();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_2150A4AD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C25D0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_214D74008();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_2150A4AA0();

  return v8;
}

uint64_t static NotesSiriLocalization.axNoteCountText(count:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v3 = MEMORY[0x277D83C10];
  *(inited + 56) = MEMORY[0x277D83B88];
  *(inited + 64) = v3;
  *(inited + 32) = a1;
  v4 = objc_opt_self();
  v5 = sub_2150A4A90();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:0];

  v7 = sub_2150A4AD0();
  v9 = v8;

  v10 = sub_215005B28(inited, v7, v9);
  swift_bridgeObjectRelease_n();
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
  swift_arrayDestroy();
  return v10;
}

void sub_2150213DC()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43E10 = v3;
  *algn_27CA43E18 = v5;
}

void sub_2150214A8()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43E20 = v3;
  *algn_27CA43E28 = v5;
}

void sub_215021574()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  v5 = v4;

  qword_27CA43E30 = v3;
  *algn_27CA43E38 = v5;
}

uint64_t sub_215021640(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t sub_2150216AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  sub_215022644();
  return sub_2150A5220();
}

uint64_t NSManagedObjectContext.ObjectIDNotification.insertedObjectIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.updatedObjectIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void static NSManagedObjectContext._makeObjectIDNotification(_:)(void *a1@<X8>)
{
  sub_2150A30C0();
  if (!v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_214D72488(&v17, v15);
  sub_215021AF0();
  swift_dynamicCast();
  v2 = *&v16[0];
  v3 = sub_2150A30D0();
  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v4 = v3;
  v13 = sub_2150A4AD0();
  sub_2150A5A70();
  v5 = MEMORY[0x277D84F90];
  if (*(v4 + 16) && (v6 = sub_214FB1AC4(v15), (v7 & 1) != 0))
  {
    sub_214F50074(*(v4 + 56) + 32 * v6, v16);
    sub_214FB6A0C(v15);
    sub_214D72488(v16, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E40);
    swift_dynamicCast();
    v8 = v13;
  }

  else
  {
    sub_214FB6A0C(v15);
    if (v5 >> 62 && sub_2150A59D0())
    {
      sub_214F81064(MEMORY[0x277D84F90]);
      v8 = v12;
    }

    else
    {
      v8 = MEMORY[0x277D84FA0];
    }
  }

  v14 = sub_2150A4AD0();
  sub_2150A5A70();
  if (*(v4 + 16) && (v9 = sub_214FB1AC4(v15), (v10 & 1) != 0))
  {
    sub_214F50074(*(v4 + 56) + 32 * v9, v16);
    sub_214FB6A0C(v15);

    sub_214D72488(v16, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E40);
    swift_dynamicCast();
    v11 = v14;
  }

  else
  {

    sub_214FB6A0C(v15);
    if (v5 >> 62 && sub_2150A59D0())
    {
      sub_214F81064(MEMORY[0x277D84F90]);
    }

    else
    {
      v11 = MEMORY[0x277D84FA0];
    }
  }

  *a1 = v2;
  a1[1] = v8;
  a1[2] = v11;
}

unint64_t sub_215021AF0()
{
  result = qword_280C230F8;
  if (!qword_280C230F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C230F8);
  }

  return result;
}

uint64_t (*static NSManagedObjectContext.didMergeChangesNotifications(context:)())()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_2150A56B0();
  v11 = sub_2150A5660();

  v16[1] = v11;
  sub_2150A5650();
  sub_2150224B0();
  sub_2150A5EB0();
  *(swift_allocObject() + 16) = v1;
  v12 = *(v3 + 32);
  v12(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v12((v14 + v13), v6, v2);
  return sub_215022508;
}

uint64_t (*static NSManagedObjectContext.didSaveNotifications(context:)())()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_2150A56C0();
  v11 = sub_2150A5660();

  v16[1] = v11;
  sub_2150A5650();
  sub_2150224B0();
  sub_2150A5EB0();
  *(swift_allocObject() + 16) = v1;
  v12 = *(v3 + 32);
  v12(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v12((v14 + v13), v6, v2);
  return sub_2150226AC;
}

uint64_t sub_215021FAC()
{
  sub_2150A30C0();
  if (v0[5])
  {
    sub_215021AF0();
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      goto LABEL_6;
    }
  }

  else
  {
    sub_214FBC238((v0 + 2));
  }

  v1 = 0;
LABEL_6:
  v2 = v1 != 0;

  v3 = v0[1];

  return v3(v2);
}

uint64_t (*NSManagedObjectContext.didMergeChangesNotifications.getter())()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_2150A56B0();
  v10 = sub_2150A5660();

  v15[1] = v10;
  sub_2150A5650();
  sub_2150224B0();
  sub_2150A5EB0();
  *(swift_allocObject() + 16) = ObjectType;
  v11 = *(v2 + 32);
  v11(v5, v7, v1);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v5, v1);
  return sub_2150226AC;
}

uint64_t (*NSManagedObjectContext.didSaveNotifications.getter())()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_2150A56C0();
  v10 = sub_2150A5660();

  v15[1] = v10;
  sub_2150A5650();
  sub_2150224B0();
  sub_2150A5EB0();
  *(swift_allocObject() + 16) = ObjectType;
  v11 = *(v2 + 32);
  v11(v5, v7, v1);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v5, v1);
  return sub_2150226AC;
}

unint64_t sub_2150224B0()
{
  result = qword_280C23100;
  if (!qword_280C23100)
  {
    sub_2150A5650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23100);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2150225B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E48) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2150216AC(v2);
}

unint64_t sub_215022644()
{
  result = qword_280C230C8;
  if (!qword_280C230C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C230C8);
  }

  return result;
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(ansi:)(NotesShared::AnsiStylings ansi)
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);
}

uint64_t String.removingAnsi.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27CA41710 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v3 = qword_27CA43E50;
  v4 = a1;
  v5 = sub_2150A4A90();
  v6 = MEMORY[0x216061870](v4, a2);
  v7 = sub_2150A4A90();
  v8 = [v3 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{v6, v7}];

  v9 = sub_2150A4AD0();
  return v9;
}

Swift::String __swiftcall String.truncating(to:ignoringAnsi:)(Swift::Int to, Swift::Bool ignoringAnsi)
{
  v4 = v3;
  v5 = v2;
  if (ignoringAnsi)
  {
    v7 = to - 1;
    if (to < 1)
    {
      v41 = 0;
      v43 = 0xE000000000000000;
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v36 = sub_2150A6100();
      MEMORY[0x2160617E0](v36);

      sub_2150A49F0();
    }

    else
    {
      if (qword_27CA41710 != -1)
      {
        swift_once();
      }

      v8 = qword_27CA43E50;
      v9 = sub_2150A4A90();
      v10 = MEMORY[0x216061870](v5, v4);
      v11 = sub_2150A4A90();
      v12 = [v8 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v10, v11}];

      sub_2150A4AD0();
      v13 = sub_2150A4BC0();

      if (v13 <= to)
      {
        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v37 = sub_2150A6100();
        MEMORY[0x2160617E0](v37);

        sub_2150A49F0();
        v41 = v5;
        v43 = v4;

        MEMORY[0x2160617E0](0, 0xE000000000000000);
      }

      else
      {
        v14 = HIBYTE(v4) & 0xF;
        v40 = v5;
        v42 = v4;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v14 = v5 & 0xFFFFFFFFFFFFLL;
        }

        v44 = 0;
        v45 = v14;
        swift_bridgeObjectRetain_n();
        v15 = sub_2150A4C40();
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v46 = v19;
            if (v20 >= to)
            {
              break;
            }

            if (v20 >= v7)
            {
              if ((v21 & 1) == 0)
              {
                v31 = objc_opt_self();

                v32 = [v31 ic_ellipsisCharacterString];
                v33 = sub_2150A4AD0();
                v35 = v34;

                MEMORY[0x2160617E0](v33, v35);

LABEL_35:
                v21 = 0;
                ++v20;
                goto LABEL_16;
              }

              goto LABEL_28;
            }

            MEMORY[0x2160617D0](v17, v18);
            if ((v21 & 1) == 0)
            {
              if (v17 == 27 && v18 == 0xE100000000000000)
              {
              }

              else
              {
                v29 = sub_2150A6270();

                if ((v29 & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              goto LABEL_15;
            }

LABEL_29:
            if (v17 == 109 && v18 == 0xE100000000000000)
            {

LABEL_33:
              v21 = 0;
              goto LABEL_16;
            }

            v30 = sub_2150A6270();

            if (v30)
            {
              goto LABEL_33;
            }

LABEL_15:
            v21 = 1;
LABEL_16:
            v19 = v46;
LABEL_17:
            v17 = sub_2150A4C40();
            v18 = v28;
            if (!v28)
            {
              goto LABEL_41;
            }
          }

          if ((v21 & 1) == 0)
          {

            v21 = 0;
            goto LABEL_17;
          }

LABEL_28:

          MEMORY[0x2160617D0](v17, v18);
          goto LABEL_29;
        }

        v19 = 0;
LABEL_41:

        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v38 = sub_2150A6100();
        MEMORY[0x2160617E0](v38);

        sub_2150A49F0();
        v41 = v19;
        v43 = 0xE000000000000000;

        MEMORY[0x2160617E0](0, 0xE000000000000000);
      }
    }

    v5 = v41;
    v4 = v43;
  }

  else if (to < 1)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  else if (sub_2150A4BC0() <= to)
  {
  }

  else
  {

    sub_2150238C4(to - 1);

    v22 = [objc_opt_self() ic_ellipsisCharacterString];
    sub_2150A4AD0();

    v23 = sub_2150A4BC0();
    v24 = sub_2150A5830();
    v26 = __OFADD__(v23, v24);
    v27 = v23 + v24;
    if (v26)
    {
      __break(1u);
      goto LABEL_46;
    }

    MEMORY[0x216061750](v27);
    sub_214F99030();
    sub_2150A4C00();
    sub_2150A4C00();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v27 = v5;
  v25 = v4;
LABEL_46:
  result._object = v25;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t String.padding(to:alignment:ignoringAnsi:)(Swift::Int a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if ((a3 & 1) == 0)
  {
    result = sub_2150A4BC0();
    v15 = result;
    goto LABEL_5;
  }

  if (qword_27CA41710 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = qword_27CA43E50;
    v11 = sub_2150A4A90();
    v12 = MEMORY[0x216061870](a4, a5);
    v13 = sub_2150A4A90();
    v14 = [v10 stringByReplacingMatchesInString:v11 options:0 range:0 withTemplate:{v12, v13}];

    sub_2150A4AD0();
    v15 = sub_2150A4BC0();

LABEL_5:
    v17 = a1 - v15;
    if (!__OFSUB__(a1, v15))
    {
      break;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  if (v17 < 1)
  {
    return String.truncating(to:ignoringAnsi:)(a1, a3 & 1)._countAndFlagsBits;
  }

  if (!v9)
  {
    sub_215023960(0x20, 0xE100000000000000, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F86A40();
    v25 = sub_2150A4A20();
    v27 = v26;

    v29 = a4;

    MEMORY[0x2160617E0](v25, v27);
    goto LABEL_19;
  }

  if (v9 != 1)
  {
    sub_215023960(0x20, 0xE100000000000000, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F86A40();
    v28 = sub_2150A4A20();

    v29 = v28;

    MEMORY[0x2160617E0](a4, a5);
    goto LABEL_19;
  }

  v18 = vcvtd_n_f64_u64(v17, 1uLL);
  v19 = ceil(v18);
  if (v19 == INFINITY)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_215023960(0x20, 0xE100000000000000, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F86A40();
  v20 = sub_2150A4A20();

  v21 = floor(v18);
  if (v21 == INFINITY)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v21 < 9.22337204e18)
  {
    sub_215023960(0x20, 0xE100000000000000, v21);
    v22 = sub_2150A4A20();
    v24 = v23;

    v29 = v20;

    MEMORY[0x2160617E0](a4, a5);

    MEMORY[0x2160617E0](v22, v24);

LABEL_19:

    return v29;
  }

LABEL_27:
  __break(1u);
  return result;
}

__C::_NSRange_optional __swiftcall String.lineRange(forLocation:)(Swift::Int forLocation)
{
  v1 = String.lineRange(for:)(forLocation);
  v1.is_nil &= 1u;
  return v1;
}

__C::_NSRange_optional __swiftcall String.lineRange(for:)(__C::_NSRange a1)
{
  length = a1.length;
  location = a1.location;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2150A4A90();
  v4 = [v3 ic:location rangeIsValid:length];
  if (v4)
  {
    v8 = 0;
    v9[0] = 0;
    [v3 getLineStart:v9 end:0 contentsEnd:&v8 forRange:{location, length}];

    v5 = v9[0];
    v6 = v8 - v9[0];
    if (!__OFSUB__(v8, v9[0]))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = 0;
  v6 = 0;
LABEL_6:
  v7 = v4 ^ 1;
  result.value.length = v6;
  result.value.location = v5;
  result.is_nil = v7;
  return result;
}

Swift::String_optional __swiftcall String.init(intValue:)(Swift::Int intValue)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_215023464()
{
  v1 = *v0;

  return v1;
}

uint64_t AnsiStylings.controlSequence.getter()
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();
  return 0;
}

uint64_t sub_215023590()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_215067730(0xD000000000000010, 0x80000002150E7160, 0);
  if (result)
  {
    qword_27CA43E50 = result;
  }

  else
  {
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

NotesShared::AnsiStylings_optional __swiftcall AnsiStylings.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case 0:
      v2 = 0;
      goto LABEL_3;
    case 1:
LABEL_3:
      *v1 = v2;
      break;
    case 2:
      *v1 = 2;
      break;
    case 3:
      *v1 = 3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 30:
      *v1 = 5;
      break;
    case 31:
      *v1 = 6;
      break;
    case 32:
      *v1 = 7;
      break;
    case 33:
      *v1 = 8;
      break;
    case 34:
      *v1 = 9;
      break;
    case 35:
      *v1 = 10;
      break;
    case 36:
      *v1 = 11;
      break;
    case 37:
      *v1 = 12;
      break;
    default:
      *v1 = 13;
      break;
  }

  return rawValue;
}

uint64_t sub_215023748()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](qword_2150C9948[v1]);
  return sub_2150A64E0();
}

uint64_t sub_2150237D0()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](qword_2150C9948[v1]);
  return sub_2150A64E0();
}

uint64_t String.PaddingAlignments.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_2150238C4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2150A4BF0();

    return sub_2150A4D40();
  }

  return result;
}

void *sub_215023960(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_2150A4F50();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_215023A18()
{
  result = qword_27CA43E58;
  if (!qword_27CA43E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43E58);
  }

  return result;
}

unint64_t sub_215023A70()
{
  result = qword_27CA43E60;
  if (!qword_27CA43E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43E60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnsiStylings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnsiStylings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_215023C24(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7103859;
  }

  else
  {
    v2 = 6580594;
  }

  if (*a2)
  {
    v3 = 7103859;
  }

  else
  {
    v3 = 6580594;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_215023C9C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_215023D04()
{
  sub_2150A4BB0();
}

uint64_t sub_215023D50()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_215023DB4@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

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

void sub_215023E14(uint64_t *a1@<X8>)
{
  v2 = 6580594;
  if (*v1)
  {
    v2 = 7103859;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_215023E3C()
{
  if (*v0)
  {
    return 7103859;
  }

  else
  {
    return 6580594;
  }
}

uint64_t sub_215023E60@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

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

uint64_t sub_215023EC4(uint64_t a1)
{
  v2 = sub_215024298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215023F00(uint64_t a1)
{
  v2 = sub_215024298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FastSync.SelectionMessage.replicaID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FastSync.SelectionMessage.selectionStateData.getter()
{
  v1 = v0 + *(type metadata accessor for FastSync.SelectionMessage() + 20);
  v2 = *v1;
  sub_214FCA120(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for FastSync.SelectionMessage()
{
  result = qword_27CA43E90;
  if (!qword_27CA43E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FastSync.SelectionMessage.init(replicaID:selectionStateData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2150A3A00();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FastSync.SelectionMessage();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t FastSync.SelectionMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215024298();
  sub_2150A65B0();
  LOBYTE(v13) = 0;
  sub_2150A3A00();
  sub_21502494C(&qword_280C241B8, MEMORY[0x277CC95F0]);
  sub_2150A60A0();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for FastSync.SelectionMessage() + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_214FCA120(v13, v10);
    sub_214FEED30();
    sub_2150A60A0();
    sub_214F7EDE4(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_215024298()
{
  result = qword_27CA43E70;
  if (!qword_27CA43E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43E70);
  }

  return result;
}

uint64_t FastSync.SelectionMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_2150A3A00();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43E78);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for FastSync.SelectionMessage();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215024298();
  sub_2150A6590();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_21502494C(&qword_27CA43008, MEMORY[0x277CC95F0]);
  v15 = v27;
  v16 = v25;
  sub_2150A5FC0();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_214FEED84();
  sub_2150A5FC0();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_21502464C(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2150246B0(v18);
}

uint64_t sub_21502464C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FastSync.SelectionMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2150246B0(uint64_t a1)
{
  v2 = type metadata accessor for FastSync.SelectionMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FastSync.SelectionMessage.description.getter()
{
  sub_2150A5B20();

  sub_2150A3A00();
  sub_21502494C(&qword_280C24850, MEMORY[0x277CC95F0]);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  MEMORY[0x2160617E0](0x654C61746164202CLL, 0xEA00000000003D6ELL);
  result = type metadata accessor for FastSync.SelectionMessage();
  v3 = (v0 + *(result + 20));
  v4 = *v3;
  v5 = v3[1] >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = v4 + 16;
    v4 = *(v4 + 16);
    if (!__OFSUB__(*(v6 + 8), v4))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_9:
    v7 = sub_2150A6100();
    MEMORY[0x2160617E0](v7);

    MEMORY[0x2160617E0](41, 0xE100000000000000);
    return 0xD000000000000019;
  }

  __break(1u);
  return result;
}

uint64_t sub_2150248C8(uint64_t a1)
{
  *(a1 + 8) = sub_21502494C(&qword_27CA43E80, type metadata accessor for FastSync.SelectionMessage);
  result = sub_21502494C(&qword_27CA43E88, type metadata accessor for FastSync.SelectionMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21502494C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2150249C0()
{
  result = sub_2150A3A00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_215024A48()
{
  result = qword_27CA43EA0;
  if (!qword_27CA43EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43EA0);
  }

  return result;
}

unint64_t sub_215024AA0()
{
  result = qword_27CA43EA8;
  if (!qword_27CA43EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43EA8);
  }

  return result;
}

unint64_t sub_215024AF8()
{
  result = qword_27CA43EB0;
  if (!qword_27CA43EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43EB0);
  }

  return result;
}

uint64_t AttributedString.isEmpty.getter()
{
  v0 = sub_2150A33E0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = sub_2150A3340();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A3330();
  sub_215024D98(&qword_27CA43EB8, MEMORY[0x277CC8B30]);
  sub_2150A53D0();
  sub_2150A5400();
  sub_215024D98(&qword_27CA43EC0, MEMORY[0x277CC8C20]);
  v11 = sub_2150A4A80();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t sub_215024D98(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall CGRect.init(union:)(CGRect_optional *__return_ptr retstr, Swift::OpaquePointer a2)
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v7 = *(a2._rawValue + 2);
  v20 = y;
  v21 = *MEMORY[0x277CBF398];
  v18 = height;
  v19 = width;
  if (v7)
  {
    v8 = (a2._rawValue + 56);
    v10 = *(MEMORY[0x277CBF398] + 8);
    v9 = *MEMORY[0x277CBF398];
    v12 = *(MEMORY[0x277CBF398] + 24);
    v11 = *(MEMORY[0x277CBF398] + 16);
    do
    {
      x = *(v8 - 3);
      y = *(v8 - 2);
      width = *(v8 - 1);
      height = *v8;
      v22.origin.x = v9;
      v22.origin.y = v10;
      v22.size.width = v11;
      v22.size.height = v12;
      if (!CGRectIsNull(v22))
      {
        v23.origin.x = v9;
        v23.origin.y = v10;
        v23.size.width = v11;
        v23.size.height = v12;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v24 = CGRectUnion(v23, v26);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
      }

      v8 += 4;
      v9 = x;
      v10 = y;
      v11 = width;
      v12 = height;
      --v7;
    }

    while (v7);
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v27.origin.y = v20;
  v27.origin.x = v21;
  v27.size.height = v18;
  v27.size.width = v19;
  v13 = CGRectEqualToRect(v25, v27);
  v14 = 0.0;
  if (v13)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = x;
  }

  if (v13)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = y;
  }

  if (v13)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = width;
  }

  if (!v13)
  {
    v14 = height;
  }

  retstr->value.origin.x = v15;
  retstr->value.origin.y = v16;
  retstr->value.size.width = v17;
  retstr->value.size.height = v14;
  retstr->is_nil = v13;
}

uint64_t PingResponse.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PingResponse.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PingResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for PingResponse(0);
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t MentionNotificationRequestV2.senderName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MentionNotificationRequestV2.senderName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.noteTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MentionNotificationRequestV2.noteTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.mentionSnippet.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MentionNotificationRequestV2.mentionSnippet.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.shareRecordName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MentionNotificationRequestV2.shareRecordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.shareOwnerUserID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MentionNotificationRequestV2.shareOwnerUserID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.noteRecordName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MentionNotificationRequestV2.noteRecordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.inlineAttachmentRecordName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t MentionNotificationRequestV2.inlineAttachmentRecordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t MentionNotificationRequestV2.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MentionNotificationRequestV2(0) + 48);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MentionNotificationRequestV2.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MentionNotificationRequestV2(0) + 48);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MentionNotificationRequestV2.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
  type metadata accessor for MentionNotificationRequestV2(0);
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t _s11NotesShared11PingRequestV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3D10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s11NotesShared11PingRequestV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_2150A3D10();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DidCompleteInstallOrUpdateRequest.continuationToken.getter()
{
  v1 = *(v0 + 80);
  sub_214FCA120(v1, *(v0 + 88));
  return v1;
}

uint64_t DidCompleteInstallOrUpdateRequest.continuationToken.setter(uint64_t a1, uint64_t a2)
{
  result = sub_214F7EDE4(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t DidCompleteInstallOrUpdateRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DidCompleteInstallOrUpdateRequest(0) + 40);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DidCompleteInstallOrUpdateRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DidCompleteInstallOrUpdateRequest(0) + 40);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DidCompleteInstallOrUpdateRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = xmmword_2150C8880;
  type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t DidCompleteInstallOrUpdateResponse.recordsToInjest.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DidCompleteInstallOrUpdateResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DidCompleteInstallOrUpdateResponse(0) + 24);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DidCompleteInstallOrUpdateResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DidCompleteInstallOrUpdateResponse(0) + 24);
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DidCompleteInstallOrUpdateResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2150C8880;
  *(a1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t RunGarbageCollectorRequest.continuationToken.getter()
{
  v1 = *v0;
  sub_214FCA120(*v0, *(v0 + 8));
  return v1;
}

uint64_t RunGarbageCollectorRequest.continuationToken.setter(uint64_t a1, uint64_t a2)
{
  result = sub_214F7EDE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_215025D08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_215025DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_215025F3C@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2150C8880;
  a1(0);
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t PingRequest.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_2150A3D40();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_21502609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA44110, type metadata accessor for PingRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21502613C(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA43FE0, type metadata accessor for PingRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2150261A8()
{
  sub_215026244(&qword_27CA43FE0, type metadata accessor for PingRequest);

  return sub_2150A3DA0();
}

uint64_t sub_215026244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PingResponse.traverse<A>(visitor:)()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_2150A3DD0(), !v1))
  {
    type metadata accessor for PingResponse(0);
    return sub_2150A3CF0();
  }

  return result;
}

uint64_t static PingResponse.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PingResponse(0);
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_2150264B0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t sub_21502654C(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA44108, type metadata accessor for PingResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2150265EC(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA43FF8, type metadata accessor for PingResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_215026658()
{
  sub_215026244(&qword_27CA43FF8, type metadata accessor for PingResponse);

  return sub_2150A3DA0();
}

uint64_t sub_2150266D4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_2150267AC()
{
  v0 = sub_2150A3E20();
  __swift_allocate_value_buffer(v0, qword_27CA43EF8);
  __swift_project_value_buffer(v0, qword_27CA43EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C9BD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "recipientUserId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2150A3DF0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "senderName";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "noteTitle";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mentionSnippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "shareRecordName";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "shareOwnerUserId";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "noteRecordName";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "inlineAttachmentRecordName";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_2150A3E00();
}

uint64_t MentionNotificationRequestV2.decodeMessage<A>(decoder:)()
{
  result = sub_2150A3D40();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
LABEL_12:
          sub_2150A3D60();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_12;
      }

      result = sub_2150A3D40();
    }
  }

  return result;
}

uint64_t MentionNotificationRequestV2.traverse<A>(visitor:)()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_2150A3DD0(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_2150A3DD0(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_2150A3DD0(), !v1))
      {
        v9 = v0[7];
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v10 || (result = sub_2150A3DD0(), !v1))
        {
          v11 = v0[9];
          v12 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v12 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12 || (result = sub_2150A3DD0(), !v1))
          {
            v13 = v0[11];
            v14 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v14 = v0[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v14 || (result = sub_2150A3DD0(), !v1))
            {
              v15 = v0[13];
              v16 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v16 = v0[12] & 0xFFFFFFFFFFFFLL;
              }

              if (!v16 || (result = sub_2150A3DD0(), !v1))
              {
                v17 = v0[15];
                v18 = HIBYTE(v17) & 0xF;
                if ((v17 & 0x2000000000000000) == 0)
                {
                  v18 = v0[14] & 0xFFFFFFFFFFFFLL;
                }

                if (!v18 || (result = sub_2150A3DD0(), !v1))
                {
                  type metadata accessor for MentionNotificationRequestV2(0);
                  return sub_2150A3CF0();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_215026E4C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t sub_215026EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_215026F20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_215026FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA44100, type metadata accessor for MentionNotificationRequestV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_215027088(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2150270F4()
{
  sub_215026244(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2);

  return sub_2150A3DA0();
}

uint64_t sub_21502719C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2150A3E20();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2150A3E10();
}

uint64_t _s11NotesShared11PingRequestV2eeoiySbAC_ACtFZ_0()
{
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_2150272F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA440F8, type metadata accessor for MentionNotificationResponseV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_215027394(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA44020, type metadata accessor for MentionNotificationResponseV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_215027400()
{
  sub_215026244(&qword_27CA44020, type metadata accessor for MentionNotificationResponseV2);

  return sub_2150A3DA0();
}

uint64_t sub_215027498()
{
  v0 = sub_2150A3E20();
  __swift_allocate_value_buffer(v0, qword_27CA43F28);
  __swift_project_value_buffer(v0, qword_27CA43F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C26D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "previousBuildNumber";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2150A3DF0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "previousVersion";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "currentBuildNumber";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "currentVersion";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "platformName";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "continuationToken";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_2150A3E00();
}

uint64_t DidCompleteInstallOrUpdateRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2150A3D40();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        sub_2150A3D60();
      }

      else if (result == 6)
      {
        sub_2150A3D50();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t DidCompleteInstallOrUpdateRequest.traverse<A>(visitor:)()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_2150A3DD0(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_2150A3DD0(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_2150A3DD0(), !v1))
      {
        v9 = v0[7];
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v10 || (result = sub_2150A3DD0(), !v1))
        {
          v11 = v0[9];
          v12 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v12 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12 || (result = sub_2150A3DD0(), !v1))
          {
            v13 = v0[10];
            v14 = v0[11];
            v15 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v15 != 2)
              {
                goto LABEL_30;
              }

              v16 = *(v13 + 16);
              v17 = *(v13 + 24);
            }

            else
            {
              if (!v15)
              {
                if ((v14 & 0xFF000000000000) == 0)
                {
                  goto LABEL_30;
                }

LABEL_29:
                result = sub_2150A3DC0();
                if (v1)
                {
                  return result;
                }

                goto LABEL_30;
              }

              v16 = v13;
              v17 = v13 >> 32;
            }

            if (v16 != v17)
            {
              goto LABEL_29;
            }

LABEL_30:
            type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
            return sub_2150A3CF0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_215027A58@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = xmmword_2150C8880;
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t sub_215027AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_215027B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_215027BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA440F0, type metadata accessor for DidCompleteInstallOrUpdateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_215027C94(uint64_t a1)
{
  v2 = sub_215026244(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_215027D00()
{
  sub_215026244(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest);

  return sub_2150A3DA0();
}

uint64_t sub_215027D9C()
{
  v0 = sub_2150A3E20();
  __swift_allocate_value_buffer(v0, qword_27CA43F40);
  __swift_project_value_buffer(v0, qword_27CA43F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C29C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "continuationToken";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2150A3DF0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordsToInjest";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_2150A3E00();
}

uint64_t DidCompleteInstallOrUpdateResponse.decodeMessage<A>(decoder:)()
{
  result = sub_2150A3D40();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2150A3D50();
      }

      else if (result == 2)
      {
        sub_2150A3BC0();
        sub_215026244(&qword_27CA43FB8, MEMORY[0x277CFB080]);
        sub_2150A3D70();
      }

      result = sub_2150A3D40();
    }
  }

  return result;
}

uint64_t DidCompleteInstallOrUpdateResponse.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2150A3DC0();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (sub_2150A3BC0(), sub_215026244(&qword_27CA43FB8, MEMORY[0x277CFB080]), result = sub_2150A3DE0(), !v1))
  {
    type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
    return sub_2150A3CF0();
  }

  return result;
}

uint64_t static DidCompleteInstallOrUpdateResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_214FEEB80(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_214F8F59C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_2150282C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2150C8880;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return _s11NotesShared11PingRequestVACycfC_0();
}

uint64_t sub_21502831C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_215028390(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_215028458(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA440E8, type metadata accessor for DidCompleteInstallOrUpdateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2150284F8(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA44038, type metadata accessor for DidCompleteInstallOrUpdateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_215028564()
{
  sub_215026244(&qword_27CA44038, type metadata accessor for DidCompleteInstallOrUpdateResponse);

  return sub_2150A3DA0();
}

uint64_t sub_2150285E0(uint64_t a1, uint64_t a2)
{
  if ((sub_214FEEB80(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_214F8F59C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_2150287E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA440E0, type metadata accessor for RunGarbageCollectorRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_215028880(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA432D0, type metadata accessor for RunGarbageCollectorRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2150288EC()
{
  sub_215026244(&qword_27CA432D0, type metadata accessor for RunGarbageCollectorRequest);

  return sub_2150A3DA0();
}

uint64_t sub_21502899C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2150A3E20();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44118);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44120) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C25D0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_2150A3DF0();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_2150A3E00();
}

uint64_t sub_215028B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3E20();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_215028BC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_2150A3D40();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_215028C70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_2150A3DC0();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_2150A3CF0();
}

uint64_t sub_215028D68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((sub_214FEEB80(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_215028E68(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2150A64B0();
  a1(0);
  sub_215026244(a2, a3);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_215028F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_215028F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2150A3D10();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21502900C(uint64_t a1, uint64_t a2)
{
  v4 = sub_215026244(&qword_27CA440D8, type metadata accessor for RunGarbageCollectorResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2150290AC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3E20();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_215029148(uint64_t a1)
{
  v2 = sub_215026244(&qword_27CA44060, type metadata accessor for RunGarbageCollectorResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2150291B4()
{
  sub_2150A64B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_21502920C()
{
  sub_215026244(&qword_27CA44060, type metadata accessor for RunGarbageCollectorResponse);

  return sub_2150A3DA0();
}

uint64_t sub_215029288()
{
  sub_2150A64B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_2150292DC(uint64_t a1, uint64_t a2)
{
  if ((sub_214FEEB80(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t _s11NotesShared33DidCompleteInstallOrUpdateRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2150A6270() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_2150A6270() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_2150A6270() & 1) == 0 || (sub_214FEEB80(a1[10], a1[11], a2[10], a2[11]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t _s11NotesShared28MentionNotificationRequestV2V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2150A6270() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_2150A6270() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_2150A6270() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_2150A6270() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_2150A6270() & 1) == 0 || (a1[14] != a2[14] || a1[15] != a2[15]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MentionNotificationRequestV2(0);
  sub_2150A3D10();
  sub_215026244(&qword_27CA43F88, MEMORY[0x277D216C8]);
  return sub_2150A4A80() & 1;
}

uint64_t sub_21502A040()
{
  result = sub_2150A3D10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3D10();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21502A1D0()
{
  result = sub_2150A3D10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21502A264()
{
  result = sub_2150A3D10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21502A31C()
{
  sub_21502A3B0();
  if (v0 <= 0x3F)
  {
    sub_2150A3D10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21502A3B0()
{
  if (!qword_27CA440B0)
  {
    sub_2150A3BC0();
    v0 = sub_2150A4FD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA440B0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2150A3D10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_65Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2150A3D10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21502A5BC()
{
  result = sub_2150A3D10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void ic_assert(_:_:simulateCrash:logger:file:line:filePath:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 2;

  if (sub_214D6DCBC(v12, a1))
  {
  }

  else
  {
    if (a5)
    {
      v13 = sub_2150A5570();
    }

    else
    {
      v13 = sub_2150A5560();
    }

    v14 = v13;
    log = sub_2150A3F10();
    if (os_log_type_enabled(log, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315650;
      v17 = sub_2150A5B70();
      v19 = sub_214F7723C(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = a10;
      *(v15 + 22) = 2080;
      v21 = a3(v20);
      v23 = sub_214F7723C(v21, v22, &v26);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_214D51000, log, v14, "Failed assertion at %s:%lu: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v16, -1, -1);
      MEMORY[0x216064AF0](v15, -1, -1);
    }
  }
}

void ic_assertionFailure(_:simulateCrash:logger:file:line:filePath:)(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  if (a3)
  {
    v11 = sub_2150A5570();
  }

  else
  {
    v11 = sub_2150A5560();
  }

  v12 = v11;
  log = sub_2150A3F10();
  if (os_log_type_enabled(log, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315650;
    v15 = sub_2150A5B70();
    v17 = sub_214F7723C(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a8;
    *(v13 + 22) = 2080;
    v19 = a1(v18);
    v21 = sub_214F7723C(v19, v20, &v23);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_214D51000, log, v12, "Failed assertion at %s:%lu: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v14, -1, -1);
    MEMORY[0x216064AF0](v13, -1, -1);
  }
}

void Logger.ic_assert(_:_:simulateCrash:file:line:filePath:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = 2;
  if (sub_214D6DCBC(v11, a1))
  {
  }

  else
  {
    if (a5)
    {
      v12 = sub_2150A5570();
    }

    else
    {
      v12 = sub_2150A5560();
    }

    v13 = v12;
    log = sub_2150A3F10();
    if (os_log_type_enabled(log, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315650;
      v16 = sub_2150A5B70();
      v18 = sub_214F7723C(v16, v17, &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = a9;
      *(v14 + 22) = 2080;
      v20 = a3(v19);
      v22 = sub_214F7723C(v20, v21, &v25);

      *(v14 + 24) = v22;
      _os_log_impl(&dword_214D51000, log, v13, "Failed assertion at %s:%lu: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v15, -1, -1);
      MEMORY[0x216064AF0](v14, -1, -1);
    }
  }
}

void Logger.ic_assertionFailure(_:simulateCrash:file:line:filePath:)(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v9 = sub_2150A5570();
  }

  else
  {
    v9 = sub_2150A5560();
  }

  v10 = v9;
  log = sub_2150A3F10();
  if (os_log_type_enabled(log, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315650;
    v13 = sub_2150A5B70();
    v15 = sub_214F7723C(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a7;
    *(v11 + 22) = 2080;
    v17 = a1(v16);
    v19 = sub_214F7723C(v17, v18, &v21);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_214D51000, log, v10, "Failed assertion at %s:%lu: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v12, -1, -1);
    MEMORY[0x216064AF0](v11, -1, -1);
  }
}

uint64_t sub_21502AEA0()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C233A0);
  v1 = __swift_project_value_buffer(v0, qword_280C233A0);
  if (qword_280C24298 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C242A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICPaperSynapseContentItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICPaperSynapseContentItemProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICPaperSynapseContentItemProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICPaperSynapseContentItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICPaperSynapseContentItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11NotesShared33ICPaperSynapseContentItemProviderC12contentItems13forAttachmentSaySo09SYContentF0CGSo12ICAttachmentC_tFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ICSystemPaperDocument();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v27.receiver = v10;
  v27.super_class = v9;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v27, sel_init);
  v13 = [*&v12[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] managedObjectContext];
  if (!v13 || (v14 = v13, MEMORY[0x28223BE20](v13), *(&v25 - 2) = v12, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500), sub_2150A56D0(), v14, (v15 = v26) == 0))
  {
    if (qword_280C23398 != -1)
    {
      swift_once();
    }

    v20 = sub_2150A3F30();
    __swift_project_value_buffer(v20, qword_280C233A0);
    v17 = sub_2150A3F10();
    v21 = sub_2150A5560();
    if (os_log_type_enabled(v17, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_214D51000, v17, v21, "Coherence context not available. Not returning SYContentItems for indexing.", v22, 2u);
      MEMORY[0x216064AF0](v22, -1, -1);
    }

    goto LABEL_14;
  }

  sub_214FD3FE0(v26, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21502B510(v4);
    if (qword_280C23398 != -1)
    {
      swift_once();
    }

    v16 = sub_2150A3F30();
    __swift_project_value_buffer(v16, qword_280C233A0);
    v17 = sub_2150A3F10();
    v18 = sub_2150A5560();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_214D51000, v17, v18, "document.paper not available. Not returning SYContentItems for indexing.", v19, 2u);
      MEMORY[0x216064AF0](v19, -1, -1);
    }

LABEL_14:
    return MEMORY[0x277D84F90];
  }

  (*(v6 + 32))(v8, v4, v5);
  v24 = sub_2150A4820();

  (*(v6 + 8))(v8, v5);
  return v24;
}

unint64_t sub_21502B4C4()
{
  result = qword_280C23138;
  if (!qword_280C23138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C23138);
  }

  return result;
}

uint64_t sub_21502B510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LoggingConfiguration.subsystem.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LoggingConfiguration.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LoggingConfiguration.logger.getter()
{

  return sub_2150A3F20();
}

uint64_t LogProducer.logger.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();

  return sub_2150A3F20();
}

uint64_t sub_21502B750(uint64_t a1, int a2)
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

uint64_t sub_21502B798(uint64_t result, int a2, int a3)
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

uint64_t AudioData.init(buffer:time:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_21502B824(void *a1, void *a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = [a1 format];
  sub_21502BDBC();
  if (sub_2150A5780())
  {
    v7 = a1;

    return v7;
  }

  v9 = v2[2];
  if (!v9 || (v10 = [v9 outputFormat]) == 0 || (v11 = v10, v12 = a2, v13 = sub_2150A5780(), v11, v12, (v13 & 1) == 0))
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v6 toFormat:a2];
    v15 = v3[2];
    v3[2] = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setPrimeMethod_];
    }
  }

  v17 = v3[2];
  if (v17)
  {
    v18 = v17;
    v19 = [v18 outputFormat];
    [v19 sampleRate];
    v21 = v20;

    v22 = [v18 inputFormat];
    [v22 sampleRate];
    v24 = v23;

    v25 = ceil(v21 / v24 * [a1 frameLength]);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -1.0)
    {
      if (v25 < 4294967300.0)
      {
        v26 = v25;
        v27 = [v18 outputFormat];
        v3 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v27 frameCapacity:v26];

        if (v3)
        {
          v28 = swift_allocObject();
          *(v28 + 16) = 0;
          v29 = swift_allocObject();
          *(v29 + 16) = v28;
          *(v29 + 24) = a1;
          aBlock[4] = sub_21502BE5C;
          aBlock[5] = v29;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21502BCF4;
          aBlock[3] = &block_descriptor_17;
          v30 = _Block_copy(aBlock);

          v31 = a1;

          aBlock[0] = 0;
          v32 = [v18 convertToBuffer:v3 error:aBlock withInputFromBlock:v30];
          _Block_release(v30);
          if (v32 == 3)
          {
            v33 = aBlock[0];
            sub_21502BE08();
            swift_allocError();
            *v34 = v33;
            swift_willThrow();
            v35 = v33;
          }

          else
          {
          }
        }

        else
        {
          sub_21502BE08();
          swift_allocError();
          *v37 = 2;
          swift_willThrow();
        }

        return v3;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_21502BE08();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();

  return v3;
}

void *sub_21502BC68(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_21502BCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_21502BD60()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21502BDBC()
{
  result = qword_27CA44128;
  if (!qword_27CA44128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44128);
  }

  return result;
}

unint64_t sub_21502BE08()
{
  result = qword_27CA44130;
  if (!qword_27CA44130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44130);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared15BufferConverterC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21502BE88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21502BEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21502BF3C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t GroupSessionMessenger.ic_sendChunked<A>(_:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2150A3CD0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for MessageChunking.Message();
  v6[12] = v8;
  v9 = *(v8 - 8);
  v6[13] = v9;
  v6[14] = *(v9 + 64);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21502C0C8, 0, 0);
}

uint64_t sub_21502C0C8()
{
  *(v0 + 128) = static MessageChunking.encodeAndChunk<A>(_:size:)(*(v0 + 24), *(v0 + 32));
  if (sub_2150A4F80())
  {
    *(v0 + 160) = *MEMORY[0x277CCB260];
    v2 = sub_2150A4F60();
    sub_2150A4F00();
    if (v2)
    {
      (*(*(v0 + 104) + 16))(*(v0 + 120), *(v0 + 128) + ((*(*(v0 + 104) + 80) + 32) & ~*(*(v0 + 104) + 80)), *(v0 + 96));
    }

    else
    {
      v15 = *(v0 + 112);
      v11 = sub_2150A5BB0();
      if (v15 != 8)
      {
        __break(1u);
        return MEMORY[0x28211FC98](v11, v9, v10, v12, v13);
      }

      v16 = *(v0 + 120);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      *(v0 + 16) = v11;
      (*(v18 + 16))(v16, v0 + 16, v17);
      swift_unknownObjectRelease();
    }

    *(v0 + 136) = 1;
    v3 = *(v0 + 160);
    v4 = *(v0 + 88);
    WitnessTable = swift_getWitnessTable();
    v6 = swift_getWitnessTable();
    v7 = sub_2150A3CD0();
    (*(*(v7 - 8) + 104))(v4, v3, v7);
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_21502C36C;
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 120);
    v12 = WitnessTable;
    v13 = v6;

    return MEMORY[0x28211FC98](v11, v9, v10, v12, v13);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_21502C36C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[12];
    v5 = v2[13];
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];

    (*(v5 + 8))(v3, v4);
    (*(v7 + 8))(v6, v8);
    v9 = sub_21502C778;
  }

  else
  {
    v10 = v2[15];
    v11 = v2[12];
    v12 = v2[13];
    v14 = v2[10];
    v13 = v2[11];
    v15 = v2[9];
    (*(v12 + 8))(v10, v11);
    (*(v14 + 8))(v13, v15);
    v9 = sub_21502C50C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_21502C50C()
{
  v1 = *(v0 + 136);
  if (v1 != sub_2150A4F80())
  {
    v4 = *(v0 + 136);
    v5 = sub_2150A4F60();
    sub_2150A4F00();
    if (v5)
    {
      v6 = (*(*(v0 + 104) + 16))(*(v0 + 120), *(v0 + 128) + ((*(*(v0 + 104) + 80) + 32) & ~*(*(v0 + 104) + 80)) + *(*(v0 + 104) + 72) * v4, *(v0 + 96));
    }

    else
    {
      v17 = *(v0 + 112);
      v6 = sub_2150A5BB0();
      if (v17 != 8)
      {
        goto LABEL_14;
      }

      v18 = *(v0 + 120);
      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      *(v0 + 16) = v6;
      (*(v20 + 16))(v18, v0 + 16, v19);
      v6 = swift_unknownObjectRelease();
    }

    *(v0 + 136) = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v11 = *(v0 + 160);
      v12 = *(v0 + 88);
      WitnessTable = swift_getWitnessTable();
      v14 = swift_getWitnessTable();
      v15 = sub_2150A3CD0();
      (*(*(v15 - 8) + 104))(v12, v11, v15);
      v16 = swift_task_alloc();
      *(v0 + 144) = v16;
      *v16 = v0;
      v16[1] = sub_21502C36C;
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      v6 = *(v0 + 120);
      v9 = WitnessTable;
      v10 = v14;

      return MEMORY[0x28211FC98](v6, v7, v8, v9, v10);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x28211FC98](v6, v7, v8, v9, v10);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21502C778()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21502C7E8()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_21502C83C()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_21502C880@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21502C8F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21502C948(uint64_t a1)
{
  v2 = sub_21502CBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21502C984(uint64_t a1)
{
  v2 = sub_21502CBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FastSync.PaperKitMessage.data.getter()
{
  v1 = *v0;
  sub_214FCA120(*v0, *(v0 + 8));
  return v1;
}

uint64_t FastSync.PaperKitMessage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_214F7EDE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FastSync.PaperKitMessage.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FastSync.PaperKitMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44138);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCA120(v7, v8);
  sub_21502CBB8();
  sub_2150A65B0();
  v10 = v7;
  v11 = v8;
  sub_214FEED30();
  sub_2150A60A0();
  sub_214F7EDE4(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21502CBB8()
{
  result = qword_27CA44140;
  if (!qword_27CA44140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44140);
  }

  return result;
}

uint64_t FastSync.PaperKitMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21502CBB8();
  sub_2150A6590();
  if (!v2)
  {
    sub_214FEED84();
    sub_2150A5FC0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21502CD7C(uint64_t a1)
{
  *(a1 + 8) = sub_21502CDAC();
  result = sub_21502CE00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21502CDAC()
{
  result = qword_27CA44150;
  if (!qword_27CA44150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44150);
  }

  return result;
}

unint64_t sub_21502CE00()
{
  result = qword_27CA44158;
  if (!qword_27CA44158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44158);
  }

  return result;
}

unint64_t sub_21502CEA8()
{
  result = qword_27CA44160;
  if (!qword_27CA44160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44160);
  }

  return result;
}

unint64_t sub_21502CF00()
{
  result = qword_27CA44168;
  if (!qword_27CA44168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44168);
  }

  return result;
}

unint64_t sub_21502CF58()
{
  result = qword_27CA44170;
  if (!qword_27CA44170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44170);
  }

  return result;
}

Swift::Void __swiftcall NoteAccountObject.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  NoteAccountObject.entityIdentifier.getter(&v4);
  AccountID.entityIdentifierString.getter();

  v2 = [v1 localizedName];
  if (v2)
  {
    v3 = v2;
    sub_2150A4AD0();
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

void sub_21502D0DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NoteAccountObject.associateAppEntity(with:)(v4);
}

NotesShared::ManagedEntityContextType_optional __swiftcall ManagedEntityContextType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

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

uint64_t ManagedEntityContextType.uriPathComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  if (*v1)
  {
    sub_2150A4350();
    v6 = sub_2150A4340();
    v7 = *(v6 - 8);
    result = (*(v7 + 48))(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 32))(a1, v5, v6);
      return (*(v7 + 56))(a1, 0, 1, v6);
    }
  }

  else
  {
    v9 = sub_2150A4340();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  return result;
}
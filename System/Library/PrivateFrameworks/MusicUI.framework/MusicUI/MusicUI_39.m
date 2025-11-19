uint64_t sub_216A84780()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_6_57();
  sub_216A85B90();
  v1 = OUTLINED_FUNCTION_15_41();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2080);
}

uint64_t sub_216A8486C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_19_34();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A84984(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700C924();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A84A44, 0, 0);
}

uint64_t sub_216A84A44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v1, v0[3], v0[4]);
  sub_216DE09A8(v1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A84ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216A84AF0, 0, 0);
}

uint64_t sub_216A84AF0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  *v1 = sub_216A832F8(*(v0 + 24));
  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A84B54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700C924();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for PlaylistDetailHeaderLockup();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A84C40, 0, 0);
}

uint64_t sub_216A84C40()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0[5] + 16);
  v6(v2, v4, v3);
  sub_216BCA75C(v2, v1);
  v6(v2, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8);
  swift_allocObject();
  OUTLINED_FUNCTION_116();
  sub_216DC4A18();
  *v5 = v7;

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216A84D38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  result = sub_21700EB24();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_216A8148C();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_216A85BE0();
      v4 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
      sub_216A81A6C();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_21700DF14();
      sub_216A814F8();
    }
  }

  return result;
}

uint64_t sub_216A84EC4()
{
  v1 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__playlist;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1308);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__headerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1310);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__footerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1318);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__trackData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1320);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData, &qword_27CAC1328);

  return v0;
}

uint64_t sub_216A85024()
{
  sub_216A84EC4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216A850A4()
{
  sub_216A852D8();
  if (v0 <= 0x3F)
  {
    sub_2166D8B98(319, &qword_27CAC12B8, &qword_27CABB7C8, &unk_21703D570, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_2166D8B98(319, &qword_27CAC12C0, &qword_27CAC12C8, &unk_21705E5E0, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        sub_2166D8B98(319, &qword_27CAC12D0, &qword_27CAC12D8, &unk_21703D580, MEMORY[0x277CBCED0]);
        if (v3 <= 0x3F)
        {
          sub_2166D8B98(319, &qword_27CAC12E0, &qword_27CAC12E8, &unk_21703D5A0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_216A852D8()
{
  if (!qword_27CAC12B0)
  {
    sub_21700C924();
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC12B0);
    }
  }
}

void sub_216A85378()
{
  sub_216A853FC();
  if (v0 <= 0x3F)
  {
    sub_21700C8E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216A853FC()
{
  if (!qword_27CAC1300)
  {
    type metadata accessor for PlaylistTrackLockup();
    sub_2166D572C(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
    sub_2166D572C(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup);
    v0 = type metadata accessor for MappedContainerItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC1300);
    }
  }
}

uint64_t sub_216A854D8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2169D1708;
  v5 = OUTLINED_FUNCTION_4_25();

  return sub_216A81F00(v5, v6, v7, v1);
}

uint64_t sub_216A85574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A855EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360);
  OUTLINED_FUNCTION_36(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_216A523A8;
  v6 = OUTLINED_FUNCTION_4_25();

  return sub_216A82984(v6, v7, v8, v2, v9);
}

uint64_t sub_216A856D8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_31_0();
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_2(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_216A523A8;
  v10 = OUTLINED_FUNCTION_4_25();

  return sub_216A84094(v10, v11, v12, v13, v5, v6);
}

uint64_t sub_216A857EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_30(v2);

  return sub_216A84984(v4, v5);
}

uint64_t sub_216A858A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v2 = sub_21700C924();
  OUTLINED_FUNCTION_2(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_216A523A8;

  return sub_216A84ACC(v0, v1 + v4, v6);
}

uint64_t objectdestroy_23Tm()
{
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216A85A18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_0();
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_23_30(v2);

  return sub_216A84B54(v4, v5);
}

uint64_t sub_216A85AF8()
{
  OUTLINED_FUNCTION_92();
  v0 = OUTLINED_FUNCTION_82();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_60_0();
  sub_2166A6EA4();
  return sub_216A81A6C();
}

uint64_t sub_216A85B90()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216A85BE0()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A85C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPlaylistDataSource.TrackData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TVShowContextMenu()
{
  result = qword_280E3F6B8;
  if (!qword_280E3F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A85D14()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_217007264();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A85DE4()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for TVShowContextMenu();
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F80(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TrackBadgeView()
{
  result = qword_27CAC13C0;
  if (!qword_27CAC13C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A86020()
{
  sub_2167D1C30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_216A860B8@<D0>(uint64_t a1@<X8>)
{
  sub_216A86170(v1, a1);
  type metadata accessor for TrackBadgeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13D0) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_216A86170@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13E8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB188);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - v14);
  if (*a1 == 1)
  {
    v45 = a2;
    v40 = sub_21700ADB4();
    if (qword_27CAB5FC8 != -1)
    {
      swift_once();
    }

    v44 = v4;
    v16 = qword_27CB22A30;
    KeyPath = swift_getKeyPath();
    v17 = qword_27CAB5FD0;

    if (v17 != -1)
    {
      swift_once();
    }

    v41 = v7;
    v42 = v12;
    v43 = v10;
    v18 = qword_27CB22A38;
    v19 = qword_27CAB5FD8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_21700ADF4();
    v21 = __swift_project_value_buffer(v20, qword_27CB22A40);
    v22 = swift_getKeyPath();
    v23 = (v15 + *(v13 + 36));
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
    (*(*(v20 - 8) + 16))(v23 + *(v24 + 28), v21, v20);
    *v23 = v22;
    v25 = KeyPath;
    *v15 = v40;
    v15[1] = v25;
    v15[2] = v16;
    v15[3] = v18;
    sub_216681B64(v15, v9, &qword_27CABB188);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_216A86800();
    v36 = v42;
    sub_217009554();
    sub_216681B64(v36, v6, &qword_27CAC13E8);
    swift_storeEnumTagMultiPayload();
    sub_216A8677C();
    sub_217009554();
    sub_21669987C(v36, &qword_27CAC13E8);
    return sub_21669987C(v15, &qword_27CABB188);
  }

  if (a1[1] == 1)
  {
    v45 = a2;
    v40 = sub_21700ADB4();
    if (qword_27CAB5FE0 != -1)
    {
      swift_once();
    }

    v44 = v4;
    v26 = qword_27CB22A58;
    KeyPath = swift_getKeyPath();
    v27 = qword_27CAB5FE8;

    if (v27 != -1)
    {
      swift_once();
    }

    v41 = v7;
    v42 = v12;
    v43 = v10;
    v28 = qword_27CB22A60;
    v29 = qword_27CAB5FF0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_21700ADF4();
    v31 = __swift_project_value_buffer(v30, qword_27CB22A68);
    v32 = swift_getKeyPath();
    v33 = (v15 + *(v13 + 36));
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
    (*(*(v30 - 8) + 16))(v33 + *(v34 + 28), v31, v30);
    *v33 = v32;
    v35 = KeyPath;
    *v15 = v40;
    v15[1] = v35;
    v15[2] = v26;
    v15[3] = v28;
    sub_216681B64(v15, v9, &qword_27CABB188);
    goto LABEL_17;
  }

  *v6 = 0;
  v6[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_216A8677C();
  return sub_217009554();
}

unint64_t sub_216A8677C()
{
  result = qword_27CAC13F0;
  if (!qword_27CAC13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC13E8);
    sub_216A86800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC13F0);
  }

  return result;
}

unint64_t sub_216A86800()
{
  result = qword_27CAC13F8;
  if (!qword_27CAC13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB188);
    sub_216A868B8();
    sub_2166D9530(&qword_280E2A710, &qword_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC13F8);
  }

  return result;
}

unint64_t sub_216A868B8()
{
  result = qword_27CAC1400;
  if (!qword_27CAC1400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1408);
    sub_2167E947C();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1400);
  }

  return result;
}

unint64_t sub_216A86970()
{
  result = qword_27CAC1410;
  if (!qword_27CAC1410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC13D0);
    sub_216A869FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1410);
  }

  return result;
}

unint64_t sub_216A869FC()
{
  result = qword_27CAC1418;
  if (!qword_27CAC1418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1420);
    sub_216A86A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1418);
  }

  return result;
}

unint64_t sub_216A86A80()
{
  result = qword_27CAC1428;
  if (!qword_27CAC1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1430);
    sub_216A8677C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1428);
  }

  return result;
}

uint64_t sub_216A86B38(uint64_t a1)
{
  swift_retain_n();
  v2 = sub_217008A34();
  v3 = sub_217009C84();
  if (qword_27CAB5C98 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v6[0] = a1;
  v6[1] = sub_216A86CCC;
  v6[2] = a1;
  memset(&v6[3], 0, 32);
  v6[7] = sub_216A86CD0;
  v6[8] = a1;
  v6[9] = v2;
  LOBYTE(v6[10]) = v3;
  v6[11] = KeyPath;
  v6[12] = sub_2170083D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1438);
  sub_216A875C0();
  sub_21700A8C4();
  memcpy(__dst, v6, sizeof(__dst));
  return sub_216A87870(__dst);
}

uint64_t sub_216A86C90()
{
  sub_216B94564();

  return sub_21700D584();
}

id sub_216A86CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21703DA30;
  sub_216685F4C(0, &qword_280E29B40);
  if (qword_280E29B20 != -1)
  {
    swift_once();
  }

  v1 = qword_280E739D0;
  v2 = qword_280E739D0;
  result = sub_216A871EC(0x78696D6F747561, 0xE700000000000000, v1, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  sub_216983738(380);
  sub_216983738(378);
  v5 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 32) = sub_216A87524(v4);
  result = sub_216A87270(0x74616C736E617274, 0xE900000000000065);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  sub_216983738(388);
  sub_216983738(386);
  v7 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 40) = sub_216A87524(v6);
  result = sub_216A87270(7235952, 0xE300000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  sub_216983738(384);
  sub_216983738(382);
  v9 = objc_allocWithZone(MEMORY[0x277CEE900]);
  *(v0 + 48) = sub_216A87524(v8);
  result = sub_216A87270(0xD000000000000033, 0x80000002170878A0);
  if (result)
  {
    v10 = result;
    sub_216983738(376);
    sub_216983738(374);
    v11 = objc_allocWithZone(MEMORY[0x277CEE900]);
    *(v0 + 56) = sub_216A87524(v10);
    return v0;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_216A86F74(uint64_t a1, uint64_t a2)
{
  v3 = sub_216983738(216);
  v5 = v4;
  v6 = sub_216A86CD8();
  v7 = sub_216983738(213);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_21700E4D4();
  v12 = [v10 linkWithBundleIdentifier_];

  v13 = objc_allocWithZone(MEMORY[0x277CEE908]);
  v14 = sub_216A8744C(v3, v5, v6, v7, v9, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v19[4] = sub_216A87940;
  v19[5] = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2169443F0;
  v19[3] = &block_descriptor_17;
  v16 = _Block_copy(v19);
  v17 = v14;

  [v17 setPrimaryButtonCallback_];
  _Block_release(v16);
  return v17;
}

void sub_216A87120(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = sub_216A87948;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2169F0990;
  v5[3] = &block_descriptor_7;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

id sub_216A871EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_21700E4D4();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_216A87270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21700E4D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_216A872E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A878EC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_216A8734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A878EC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_216A873B0()
{
  sub_216A878EC();
  sub_217009AF4();
  __break(1u);
}

uint64_t sub_216A873D8()
{
  type metadata accessor for PrivacyDisclaimerAcknowledgement();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = sub_21700AD64();
  qword_27CB22970 = result;
  return result;
}

id sub_216A8744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_21700E4D4();

  sub_216685F4C(0, &qword_27CAC1488);
  v9 = sub_21700E804();

  v10 = sub_21700E4D4();

  v11 = [v6 initWithTitleText:v8 features:v9 primaryButtonText:v10 privacyLinkController:a6];

  return v11;
}

id sub_216A87524(void *a1)
{
  v3 = sub_21700E4D4();

  v4 = sub_21700E4D4();

  v5 = [v1 initWithImage:a1 titleText:v3 descriptionText:v4];

  return v5;
}

unint64_t sub_216A875C0()
{
  result = qword_27CAC1440;
  if (!qword_27CAC1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1438);
    sub_216A8764C();
    sub_216A8780C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1440);
  }

  return result;
}

unint64_t sub_216A8764C()
{
  result = qword_27CAC1448;
  if (!qword_27CAC1448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1450);
    sub_216A87734(&qword_27CAC1458, &qword_27CAC1460, &unk_21703DB18, sub_216A87704);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1448);
  }

  return result;
}

uint64_t sub_216A87734(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_216A877B8()
{
  result = qword_27CAC1478;
  if (!qword_27CAC1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1478);
  }

  return result;
}

unint64_t sub_216A8780C()
{
  result = qword_27CAB7CD8;
  if (!qword_27CAB7CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CD8);
  }

  return result;
}

uint64_t sub_216A87870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A878EC()
{
  result = qword_27CAC1480;
  if (!qword_27CAC1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1480);
  }

  return result;
}

uint64_t sub_216A87968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21700C894();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_91();
  v7 = OUTLINED_FUNCTION_115();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D2A3B8])
  {
    v10 = OUTLINED_FUNCTION_0_129();
    v11(v10);
    v12 = sub_21700BA44();
LABEL_5:
    (*(*(v12 - 8) + 32))(v3, a1);
    v15 = OUTLINED_FUNCTION_3_90();
    v16(v15);
    v17 = OUTLINED_FUNCTION_6_58();
    v18(v17);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v2);
  }

  if (v9 == *MEMORY[0x277D2A3F8])
  {
    v13 = OUTLINED_FUNCTION_0_129();
    v14(v13);
    v12 = sub_21700C084();
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_115();
  v21(v20);
  v22 = OUTLINED_FUNCTION_5_67();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_216A87B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21700C2F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_91();
  v7 = OUTLINED_FUNCTION_115();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D2A3B8])
  {
    v10 = OUTLINED_FUNCTION_0_129();
    v11(v10);
    v12 = sub_21700BA44();
LABEL_5:
    (*(*(v12 - 8) + 32))(v3, a1);
    v15 = OUTLINED_FUNCTION_3_90();
    v16(v15);
    v17 = OUTLINED_FUNCTION_6_58();
    v18(v17);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v2);
  }

  if (v9 == *MEMORY[0x277D2A3F8])
  {
    v13 = OUTLINED_FUNCTION_0_129();
    v14(v13);
    v12 = sub_21700C084();
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_115();
  v21(v20);
  v22 = OUTLINED_FUNCTION_5_67();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_216A87D98()
{
  sub_216A87E50();
  if (v0 <= 0x3F)
  {
    sub_216A8AFBC(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A87E50()
{
  if (!qword_280E458D8)
  {
    type metadata accessor for BubbleLockup();
    sub_2166D4354(&qword_280E44DC0, type metadata accessor for BubbleLockup);
    sub_2166D4354(&qword_280E44DA8, type metadata accessor for BubbleLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E458D8);
    }
  }
}

uint64_t sub_216A87F48@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for BubbleLockupView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for BubbleLockup();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14A0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14A8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v32 = *v1;
  sub_216DE9A88();
  sub_216683A80(&v6[*(v4 + 32)], v10, &qword_27CAB6DB0);
  sub_216A8B1D0(v6, type metadata accessor for BubbleLockup);
  v14 = v8[13];
  v15 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10 + v14, 1, 1, v15);
  OUTLINED_FUNCTION_2_92();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_1_110(v16);
  v17 = v8[14];
  *(v10 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v18 = v10 + v8[15];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v10[5] = sub_216A8AA34;
  v10[6] = v16;
  v10[7] = 0;
  v10[8] = 0;
  sub_216E31744();
  sub_216697664(v10, &qword_27CAC14A0);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14B0) + 36)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v21 = sub_217008B34();
  v22 = __swift_project_value_buffer(v21, qword_280E73A88);
  sub_216A8AAA4(v22, v19);
  *(v19 + *(v20 + 36)) = 0;
  v35[3] = sub_2170067A4();
  v35[4] = sub_2166D4354(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_216CCC37C();
  v23 = &v13[*(v33 + 36)];
  sub_2167B7D58(v35, (v23 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4354(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v23 = sub_217008CF4();
  v23[1] = v24;
  v25 = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v32 = &v32;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_92();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_1_110(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A8AB6C();
  sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_2166D4354(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v28 = v34;
  sub_21700A394();

  sub_216697664(v13, &qword_27CAC14A8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14D0);
  v31 = v28 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = 0;
  return result;
}

uint64_t sub_216A88550@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9A88();
  v6 = type metadata accessor for BubbleLockupContent(0);
  sub_216CCC37C();
  sub_216CCC37C();
  v7 = sub_216EB939C();
  (*(v3 + 8))(v5, v2);
  *(a1 + v6[6]) = v7 & 1;
  v8 = v6[7];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v6[8];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_216A886B0@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BubbleLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCC37C();
  sub_216DE9A88();
  swift_storeEnumTagMultiPayload();
  sub_2168A7E38();
  sub_216A8B1D0(v2, type metadata accessor for MenuContext);
  sub_216A8B1D0(v5, type metadata accessor for BubbleLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216A8AD70(v10, v25);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216A8AD70(v19, v22 + v21);
  v24 = v28;
  *v28 = sub_216A8ADC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216A889E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BubbleLockup();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_2166D4354(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_216CCC37C();
  sub_216DE9A88();
  sub_216683A80(&v5[*(v3 + 32)], v13, &qword_27CAB6DB0);
  sub_216A8B1D0(v5, type metadata accessor for BubbleLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216697664(v13, &qword_27CAB6DB0);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2167B8EF0(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216A88BA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BubbleLockup();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9A88();
  sub_216683A80(&v13[*(v11 + 32)], &v34, &qword_27CAB6DB0);
  sub_216A8B1D0(v13, type metadata accessor for BubbleLockup);
  sub_216CCC37C();
  type metadata accessor for BubbleLockupView(0);
  v14 = sub_216C0C534(&v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(&v34, v9, &v29, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_216697664(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_216697664(&v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(&v34, &qword_27CAB6DB0);
}

uint64_t sub_216A88E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for BubbleLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

uint64_t sub_216A88F74(uint64_t a1)
{
  result = sub_2166D4354(&qword_280E41428, type metadata accessor for BubbleLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A88FCC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14F0);
  sub_216A8907C(v1, a1 + *(v3 + 44));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC14F8) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1500);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_216A8907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v70 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v6 = &v70 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  MEMORY[0x28223BE20](v86);
  v87 = &v70 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1510);
  MEMORY[0x28223BE20](v85);
  v93 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v94 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1518);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v70 - v16);
  *v17 = sub_21700B3D4();
  v17[1] = v18;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1520) + 44);
  v91 = v17;
  sub_216A89A4C(a1, v17 + v19);
  v90 = type metadata accessor for BubbleLockup();
  v20 = (a1 + *(v90 + 28));
  v21 = v20[1];
  v79 = a1;
  if (v21)
  {
    v22 = *v20;
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_21700DF14();
  v24 = sub_217009E64();
  KeyPath = swift_getKeyPath();
  v100 = v22;
  v101 = v21;
  v102 = 0;
  v103 = v23;
  v104 = KeyPath;
  v105 = v24;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v22, v21, 0, v23);

  v26 = sub_21700AD34();
  v27 = swift_getKeyPath();
  v28 = v87;
  (*(v88 + 32))(v87, v6, v95);
  v29 = (v28 + *(v86 + 36));
  *v29 = v27;
  v29[1] = v26;
  v30 = swift_getKeyPath();
  v31 = v84;
  sub_2167C5834(v28, v84, &qword_27CAC1508);
  v32 = v31 + *(v85 + 36);
  *v32 = v30;
  *(v32 + 8) = 1;
  *(v32 + 16) = 0;
  sub_2167C5834(v31, v94, &qword_27CAC1510);
  v33 = v90;
  v34 = v79;
  v35 = (v79 + *(v90 + 32));
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v34 + *(type metadata accessor for BubbleLockupContent(0) + 24));
  v95 = v36;
  sub_21700DF14();
  v39 = v89;
  sub_216A8EA78(v89);
  v40 = sub_217005EF4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
  sub_216697664(v39, &qword_27CABA820);
  if (qword_27CAB5CA0 != -1)
  {
    swift_once();
  }

  v42 = qword_27CAC1490;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D4354(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);

  v44 = sub_217008CF4();
  if (v95)
  {
    v45 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v45 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = EnumTagSinglePayload != 1;
      v47 = v38;
      v48 = v43;
      v49 = sub_2170091A4();
      v50 = v44;
      v96[0] = v44;
      v96[1] = v48;
      v96[2] = v37;
      v96[3] = v95;
      LOBYTE(v96[4]) = 0;
      BYTE1(v96[4]) = v47;
      HIWORD(v96[4]) = v118;
      *(&v96[4] + 2) = v117;
      v96[5] = v42;
      LOBYTE(v96[6]) = v46;
      *(&v96[6] + 1) = *v116;
      HIDWORD(v96[6]) = *&v116[3];
      v96[7] = v49;
      v85 = v96[6];
      v86 = v96[4];
      v100 = v44;
      v101 = v48;
      v87 = v49;
      v88 = v48;
      v102 = v37;
      v103 = v95;
      LOBYTE(v104) = 0;
      BYTE1(v104) = v47;
      v33 = v90;
      HIWORD(v104) = v118;
      *(&v104 + 2) = v117;
      v105 = v42;
      LOBYTE(v106) = v46;
      HIDWORD(v106) = *&v116[3];
      *(&v106 + 1) = *v116;
      v107 = v49;
      sub_21680DAEC(v96, v98);
      sub_21680DB48(&v100);
      v51 = v42;
      goto LABEL_13;
    }
  }

  v50 = 0;
  v87 = 0;
  v88 = 0;
  v37 = 0;
  v95 = 0;
  v85 = 0;
  v86 = 0;
  v51 = 0;
LABEL_13:
  v84 = swift_getKeyPath();
  v89 = v42;

  v83 = sub_21700AD14();
  v82 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v119 = 0;
  v52 = (v34 + *(v33 + 36));
  v53 = v52[1];
  if (v53)
  {
    v78 = *v52;
    v79 = MEMORY[0x277D84F90];
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v90 = v37;
  v54 = qword_27CAB5CA8;
  v77 = v53;
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v74 = qword_27CAC1498;
  v75 = swift_getKeyPath();

  v72 = sub_21700AD34();
  v71 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v115 = 0;
  v55 = v92;
  sub_216683A80(v91, v92, &qword_27CAC1518);
  v56 = v93;
  sub_216683A80(v94, v93, &qword_27CAC1510);
  v57 = v80;
  sub_216683A80(v55, v80, &qword_27CAC1518);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1528);
  sub_216683A80(v56, v57 + v58[12], &qword_27CAC1510);
  v59 = v58[16];
  v96[0] = v50;
  v96[1] = v88;
  v96[2] = v90;
  v96[3] = v95;
  v96[4] = v86;
  v96[5] = v51;
  v76 = v51;
  v96[6] = v85;
  v96[7] = v87;
  v73 = v50;
  v96[8] = v84;
  v96[9] = v89;
  v96[10] = v82;
  v96[11] = v83;
  v96[12] = v81;
  v96[13] = 2;
  LOBYTE(v96[14]) = 0;
  memcpy((v57 + v59), v96, 0x71uLL);
  v60 = v58[20];
  v62 = v77;
  v61 = v78;
  v97[0] = v78;
  v97[1] = v77;
  v63 = v79;
  v97[2] = 0;
  v97[3] = v79;
  v65 = v74;
  v64 = v75;
  v97[4] = v75;
  v97[5] = v74;
  v66 = v71;
  v67 = v72;
  v97[6] = v71;
  v97[7] = v72;
  v68 = v70;
  v97[8] = v70;
  v97[9] = 1;
  LOBYTE(v97[10]) = 0;
  memcpy((v57 + v60), v97, 0x51uLL);
  sub_216683A80(v96, &v100, &qword_27CABF608);
  sub_216683A80(v97, &v100, &qword_27CABF610);
  sub_216697664(v94, &qword_27CAC1510);
  sub_216697664(v91, &qword_27CAC1518);
  v98[0] = v61;
  v98[1] = v62;
  v98[2] = 0;
  v98[3] = v63;
  v98[4] = v64;
  v98[5] = v65;
  v98[6] = v66;
  v98[7] = v67;
  v98[8] = v68;
  v98[9] = 1;
  v99 = 0;
  sub_216697664(v98, &qword_27CABF610);
  v100 = v73;
  v101 = v88;
  v102 = v90;
  v103 = v95;
  v104 = v86;
  v105 = v76;
  v106 = v85;
  v107 = v87;
  v108 = v84;
  v109 = v89;
  v110 = v82;
  v111 = v83;
  v112 = v81;
  v113 = 2;
  v114 = 0;
  sub_216697664(&v100, &qword_27CABF608);
  sub_216697664(v93, &qword_27CAC1510);
  return sub_216697664(v92, &qword_27CAC1518);
}

uint64_t sub_216A89A4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v125 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00);
  MEMORY[0x28223BE20](v124);
  v109 = (&v102 - v3);
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v127 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_217006FE4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v102 - v13;
  v115 = sub_2170090F4();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v102 - v16;
  v18 = sub_2170080D4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v102 - v23;
  v117 = type metadata accessor for ArtworkView();
  MEMORY[0x28223BE20](v117);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1530);
  v120 = *(v27 - 8);
  v121 = v27;
  MEMORY[0x28223BE20](v27);
  v119 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v102 - v30;
  v126 = type metadata accessor for BubbleLockupContent(0);
  sub_216C0C924(v126, v31, v32, v33, v34, v35, v36, v37, v102, v103, v104, v105, v106, v107, *&v108, v109, v110, v111, v112, v113);
  v116 = v24;
  sub_216B2CF34(v21, v24);
  v38 = v21;
  v39 = a1;
  (*(v19 + 8))(v38, v18);
  v40 = type metadata accessor for BubbleLockup();
  sub_216683A80(a1 + v40[10], v17, &qword_27CAB6A00);
  v41 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v17, 1, v41) == 1)
  {
    sub_216697664(v17, &qword_27CAB6A00);
    v42 = 23;
  }

  else
  {
    v42 = *v17;
    sub_216A8B1D0(v17, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v130[0]) = v42;
  v43 = *(a1 + v40[8]);
  sub_21700DF14();
  v44 = sub_216E41068(v130, v43);
  v46 = v45;
  v47 = v39 + *(v126 + 32);
  v48 = *v47;
  HIDWORD(v107) = *(v47 + 8);
  v108 = *&v48;
  if (HIDWORD(v107) == 1)
  {
    v58 = v48;
    v54 = v48;
  }

  else
  {

    sub_21700ED94();
    v104 = v44;
    v49 = sub_217009C34();
    v103 = v46;
    v50 = v49;
    sub_217007BC4();

    v106 = v4;
    v51 = v113;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v48, 0);
    v52 = *(v114 + 8);
    v105 = v39;
    v53 = v115;
    v52(v51, v115);
    v54 = *&v130[0];

    sub_21700ED94();
    v55 = sub_217009C34();
    v44 = v104;
    sub_217007BC4();

    v46 = v103;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v48, 0);
    v56 = v51;
    v4 = v106;
    v57 = v53;
    v39 = v105;
    v52(v56, v57);
    v58 = *&v130[0];
  }

  sub_216A72F5C(v116, v26);
  v59 = v117;
  v60 = &v26[*(v117 + 20)];
  *v60 = v44;
  v60[1] = v46;
  v61 = &v26[*(v59 + 24)];
  *v61 = v54;
  *(v61 + 1) = v58;
  v62 = v118;
  sub_216683A80(v39 + v40[13], v118, &qword_27CABA338);
  v63 = type metadata accessor for ColorSchemeArtwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v63);
  sub_216697664(v62, &qword_27CABA338);
  if (EnumTagSinglePayload == 1)
  {
    v65 = v122;
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_21700ACD4();
    v65 = v122;
  }

  sub_216E2FE04();

  sub_216A8B1D0(v26, type metadata accessor for ArtworkView);
  v66 = v127;
  (*(v5 + 16))(v127, v39 + *(v126 + 20), v4);
  if ((*(v5 + 88))(v66, v4) == *MEMORY[0x277D2A3D0])
  {
    v67 = v127;
    (*(v5 + 96))(v127, v4);
    v68 = v111;
    v69 = v110;
    v70 = v112;
    (*(v111 + 32))(v110, v67, v112);
    v71 = sub_217006F64();
    v72 = v124;
    if (v71)
    {
      v73 = v65;
      v74 = sub_21700B3B4();
      v75 = v109;
      *v109 = v74;
      v75[1] = v76;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28);
      sub_216A8A738((v75 + *(v77 + 44)));
      sub_21700B3B4();
      sub_2170083C4();
      v78 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30) + 36));
      v79 = v130[1];
      *v78 = v130[0];
      v78[1] = v79;
      v78[2] = v130[2];
      if (HIDWORD(v107))
      {
        v80 = v108;
      }

      else
      {
        v82 = *&v108;

        sub_21700ED94();
        v83 = sub_217009C34();
        sub_217007BC4();

        v84 = v113;
        sub_2170090E4();
        swift_getAtKeyPath();
        sub_216684F5C(v82, 0);
        (*(v114 + 8))(v84, v115);
        v80 = v129;
      }

      v85 = v80 + -20.0;
      v86 = sub_217009C84();
      v87 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38) + 36));
      *v87 = v86;
      v87[1] = v85;
      v87[2] = 0.0;
      v87[3] = 0.0;
      v87[4] = 2.0;
      *(v87 + 40) = 0;
      sub_21700ACC4();
      v88 = sub_21700AD04();

      (*(v68 + 8))(v69, v70);
      v89 = v75 + *(v72 + 36);
      *v89 = v88;
      *(v89 + 8) = xmmword_21703B0A0;
      *(v89 + 3) = 0x4000000000000000;
      v90 = v75;
      v65 = v73;
      sub_2167C5834(v90, v73, &qword_27CAC0D00);
      v81 = 0;
    }

    else
    {
      (*(v68 + 8))(v69, v70);
      v81 = 1;
    }
  }

  else
  {
    (*(v5 + 8))(v127, v4);
    v81 = 1;
    v72 = v124;
  }

  __swift_storeEnumTagSinglePayload(v65, v81, 1, v72);
  v92 = v119;
  v91 = v120;
  v93 = *(v120 + 16);
  v94 = v128;
  v95 = v121;
  v93(v119, v128, v121);
  v96 = v123;
  sub_216683A80(v65, v123, &qword_27CAC0D08);
  v97 = v65;
  v98 = v125;
  v93(v125, v92, v95);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1538);
  sub_216683A80(v96, &v98[*(v99 + 48)], &qword_27CAC0D08);
  sub_216697664(v97, &qword_27CAC0D08);
  v100 = *(v91 + 8);
  v100(v94, v95);
  sub_216697664(v96, &qword_27CAC0D08);
  return (v100)(v92, v95);
}

uint64_t sub_216A8A738@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v12 = sub_21700ADB4();
  v13 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_217009DF4();
  sub_216697664(v3, &qword_27CAB81D0);
  v15 = swift_getKeyPath();
  v27 = v12;
  v28 = v15;
  v29 = v14;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  v16 = sub_21700ACE4();
  v17 = swift_getKeyPath();
  v18 = &v10[*(v5 + 44)];
  *v18 = v17;
  v18[1] = v16;
  sub_216683A80(v10, v7, &qword_27CAB8248);
  v20 = v25;
  v19 = v26;
  *v26 = KeyPath;
  v19[1] = v20;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40);
  sub_216683A80(v7, v21 + *(v22 + 48), &qword_27CAB8248);

  sub_216697664(v10, &qword_27CAB8248);
  sub_216697664(v7, &qword_27CAB8248);
}

uint64_t sub_216A8A9F4()
{
  result = sub_217009D44();
  qword_27CAC1490 = result;
  return result;
}

uint64_t sub_216A8AA14()
{
  result = sub_217009E54();
  qword_27CAC1498 = result;
  return result;
}

uint64_t sub_216A8AA34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BubbleLockupView(0);

  return sub_216A88550(a1);
}

uint64_t sub_216A8AAA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216A8AB0C()
{
  type metadata accessor for BubbleLockupView(0);

  return sub_216A88BA4();
}

unint64_t sub_216A8AB6C()
{
  result = qword_27CAC14B8;
  if (!qword_27CAC14B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A8);
    sub_216A8ABF8();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14B8);
  }

  return result;
}

unint64_t sub_216A8ABF8()
{
  result = qword_27CAC14C0;
  if (!qword_27CAC14C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A0);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_27CAC14C8, &qword_27CAC14A0);
    sub_2166D4354(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14C0);
  }

  return result;
}

uint64_t sub_216A8AD70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_216A8ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v30 = *(type metadata accessor for MenuConfiguration(0) - 8);
  v31 = v20 + ((v22 + v23 + *(v30 + 80)) & ~*(v30 + 80));

  sub_2169BDF30(v20 + v22, v31, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_216A8AEE4()
{
  type metadata accessor for BubbleLockup();
  if (v0 <= 0x3F)
  {
    sub_2170067A4();
    if (v1 <= 0x3F)
    {
      sub_216A8AFBC(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_2167B8000();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216A8AFBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216A8B010()
{
  result = qword_27CAC14E8;
  if (!qword_27CAC14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A8AB6C();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D4354(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC14E8);
  }

  return result;
}

uint64_t sub_216A8B1D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A8B228()
{
  result = qword_27CAC1540;
  if (!qword_27CAC1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1500);
    sub_216A8B2E0();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1540);
  }

  return result;
}

unint64_t sub_216A8B2E0()
{
  result = qword_27CAC1548;
  if (!qword_27CAC1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC14F8);
    sub_2166D9530(&qword_27CAC1550, &qword_27CAC1558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1548);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayGenericMusicItemAction.Error(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayGenericMusicItemAction.ShuffleMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_216A8B54C()
{
  result = qword_27CAC1560;
  if (!qword_27CAC1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1560);
  }

  return result;
}

unint64_t sub_216A8B5A4()
{
  result = qword_27CAC1568;
  if (!qword_27CAC1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SceneWillForegroundIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

id sub_216A8B6D4(void *a1, char a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1578);
    v7 = sub_21700E594();
    v13 = MEMORY[0x277D837D0];
    v11 = v7;
    v12 = v8;
    v9 = a1;
    v10 = sub_2166F1E10(&v11, a1);
    sub_2166F1F64(v10);
    sub_2166F1F64([v4 valueWithBool:a2 & 1 inContext:{v9, v11, v12}]);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216A8B810(uint64_t a1)
{
  *(a1 + 8) = sub_216A8B840();
  result = sub_216A8B894();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A8B840()
{
  result = qword_280E35038[0];
  if (!qword_280E35038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35038);
  }

  return result;
}

unint64_t sub_216A8B894()
{
  result = qword_27CAC1570;
  if (!qword_27CAC1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1570);
  }

  return result;
}

void sub_216A8BA68()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A51678(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_216939E2C();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216A8BB9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_15_42(v12, v13, v14);
  if (v15)
  {
    OUTLINED_FUNCTION_27_29(a1);
    sub_216A51910(a2, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    sub_216A8DB24(a2);
    return OUTLINED_FUNCTION_26_32();
  }

  else
  {
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_21693A140(v11, a2);
    result = sub_216A8DB24(a2);
    *v3 = v26;
  }

  return result;
}

void sub_216A8BE68()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8);
    OUTLINED_FUNCTION_7_64();
    sub_216A51B84();

    v9 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_21693A464();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216A8BF9C()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for SocialContactsCoordinator.Contact();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A51CB4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_21693A748();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216A8C0D0()
{
  OUTLINED_FUNCTION_8_54();
  if ((~*(v1 + 40) & 0xFELL) != 0)
  {
    sub_21693B454(v1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_31();
    sub_21693AB38();

    *v0 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_27_29(v1);
    OUTLINED_FUNCTION_7_64();
    sub_216A51E30();

    return OUTLINED_FUNCTION_27_29(v4);
  }

  return result;
}

uint64_t UnifiedMessages.FeatureEngagementEvent.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x507972617262696CLL;
  }
}

uint64_t sub_216A8C1D4()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_130(inited, xmmword_217013D90);
  v4 = MEMORY[0x277D837D0];
  v3[3].n128_u64[0] = v1;
  v3[3].n128_u64[1] = v0;
  OUTLINED_FUNCTION_33_23();
  v5[9] = v4;
  v5[10] = v6;
  v5[11] = 0xE300000000000000;
  v7 = sub_216A8CA30();
  inited[7].n128_u64[1] = v4;
  inited[6].n128_u64[0] = v7;
  inited[6].n128_u64[1] = v8;
  return sub_21700E384();
}

uint64_t static UnifiedMessages.EngagementEvent.initialData.getter()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_130(inited, xmmword_217013D90);
  v3 = (*(v0 + 8))(v1, v0);
  v4 = MEMORY[0x277D837D0];
  inited[3].n128_u64[0] = v3;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_33_23();
  inited[4].n128_u64[1] = v4;
  inited[5].n128_u64[0] = v6;
  inited[5].n128_u64[1] = 0xE300000000000000;
  v7 = sub_216A8CA30();
  inited[7].n128_u64[1] = v4;
  inited[6].n128_u64[0] = v7;
  inited[6].n128_u64[1] = v8;
  return sub_21700E384();
}

uint64_t UnifiedMessages.EventType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21700F5E4();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t UnifiedMessages.EventType.rawValue.getter()
{
  result = 0x6B63696C63;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x4565727574616566;
      break;
    case 3:
      result = 0x6574617453696C6DLL;
      break;
    case 4:
      result = 1701273968;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216A8C46C@<X0>(unint64_t *a1@<X8>)
{
  result = UnifiedMessages.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UnifiedMessages.FeatureName.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x507972617262696CLL;
  }
}

uint64_t sub_216A8C514@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216A8C578@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureEngagementEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216A8C5AC@<X0>(char *a1@<X8>)
{
  v2 = sub_21700F5E4();

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

uint64_t UnifiedMessages.FeatureUsage.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657355746F6ELL;
  }

  else
  {
    return 1684370293;
  }
}

uint64_t sub_216A8C670@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessages.FeatureUsage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 UnifiedMessages.EngagementEventPublisher.init<A, B>(musicPageProvider:)@<Q0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  v5 = swift_allocObject();
  swift_weakInit();

  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 + 80);
  result = *(v4 + 88);
  *(v6 + 24) = result;
  *(v6 + 40) = *(v3 + 104);
  *(v6 + 48) = v5;
  *a2 = sub_216A8D704;
  a2[1] = v6;
  return result;
}

uint64_t sub_216A8C784(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MusicPageProvider.publishEngagementEvent(event:)(a1);
  }

  return result;
}

uint64_t UnifiedMessages.MLIEvent.init(oldState:newState:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v7 = MEMORY[0x277D837D0];
  strcpy((inited + 48), "mliStateChange");
  *(inited + 63) = -18;
  OUTLINED_FUNCTION_33_23();
  v8[9] = v7;
  v8[10] = v9;
  v8[11] = 0xE300000000000000;
  *(inited + 96) = sub_216A8CA30();
  *(inited + 104) = v10;
  OUTLINED_FUNCTION_17_42();
  *(inited + 120) = v7;
  *(inited + 128) = v11;
  OUTLINED_FUNCTION_30_29();
  *(inited + 136) = v14;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_25_28();
      break;
    case 3:
      OUTLINED_FUNCTION_24_26();
      break;
    default:
      v13 = 0x800000021707FCA0;
      v12 = 0xD00000000000001ELL;
      break;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 168) = v7;
  *(inited + 176) = 0x657461745377656ELL;
  OUTLINED_FUNCTION_30_29();
  *(inited + 184) = v18;
  switch(v5)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_25_28();
      break;
    case 3:
      OUTLINED_FUNCTION_24_26();
      break;
    default:
      v17 = (v15 - 32) | 0x8000000000000000;
      v16 = 0xD00000000000001ELL;
      break;
  }

  *(inited + 216) = v7;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  result = sub_21700E384();
  *a3 = result;
  return result;
}

uint64_t sub_216A8CA30()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v0 = sub_21700E514();
  }

  else
  {
    OUTLINED_FUNCTION_19_35();
  }

  return v0;
}

uint64_t UnifiedMessages.QueryEvent.init(name:oldState:newState:)@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  *a5 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_0_130(inited, xmmword_217018C90);
  v12 = 0xE500000000000000;
  v13 = 0x6B63696C63;
  v14 = v11;
  switch(v9)
  {
    case 1:
      v12 = 0x800000021707FD20;
      v13 = 0xD000000000000016;
      break;
    case 2:
      v12 = 0xEE0064656761676ELL;
      v13 = 0x4565727574616566;
      break;
    case 3:
      v12 = 0xEE0065676E616843;
      v13 = 0x6574617453696C6DLL;
      break;
    case 4:
      v12 = 0xE400000000000000;
      v13 = 1701273968;
      break;
    default:
      break;
  }

  v15 = MEMORY[0x277D837D0];
  v11[3].n128_u64[0] = v13;
  v11[3].n128_u64[1] = v12;
  OUTLINED_FUNCTION_33_23();
  v14[4].n128_u64[1] = v15;
  v14[5].n128_u64[0] = v16;
  v14[5].n128_u64[1] = 0xE300000000000000;
  v14[6].n128_u64[0] = sub_216A8CA30();
  v14[6].n128_u64[1] = v17;
  OUTLINED_FUNCTION_17_42();
  v14[7].n128_u64[1] = v15;
  v14[8].n128_u64[0] = v18;
  v14[8].n128_u64[1] = 0xE800000000000000;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
  v14[9].n128_u64[0] = a2;
  v14[9].n128_u8[8] = a3 & 1;
  v14[10].n128_u64[1] = v19;
  v14[11].n128_u64[0] = 0x657461745377656ELL;
  v14[13].n128_u64[1] = MEMORY[0x277D83B88];
  v14[11].n128_u64[1] = 0xE800000000000000;
  v14[12].n128_u64[0] = a4;
  OUTLINED_FUNCTION_108();
  result = sub_21700E384();
  *a5 = result;
  return result;
}

uint64_t UnifiedMessages.FeatureEngagedEvent.init(oldState:newState:featureName:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  *a4 = sub_216A8C1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_0_130(inited, xmmword_217015240);
  v10 = MEMORY[0x277D837D0];
  strcpy(&v9[3], "featureEngaged");
  v9[3].n128_u8[15] = -18;
  OUTLINED_FUNCTION_33_23();
  v11[9] = v10;
  v11[10] = v12;
  v11[11] = 0xE300000000000000;
  inited[6].n128_u64[0] = sub_216A8CA30();
  inited[6].n128_u64[1] = v13;
  OUTLINED_FUNCTION_17_42();
  inited[7].n128_u64[1] = v10;
  inited[8].n128_u64[0] = v14;
  v15 = 1684370293;
  if (v5)
  {
    v16 = 0x64657355746F6ELL;
  }

  else
  {
    v16 = 1684370293;
  }

  if (v5)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  inited[8].n128_u64[1] = 0xE800000000000000;
  inited[9].n128_u64[0] = v16;
  inited[9].n128_u64[1] = v17;
  inited[10].n128_u64[1] = v10;
  inited[11].n128_u64[0] = 0x657461745377656ELL;
  if (v6)
  {
    v15 = 0x64657355746F6ELL;
    v18 = 0xE700000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  inited[11].n128_u64[1] = 0xE800000000000000;
  inited[12].n128_u64[0] = v15;
  inited[12].n128_u64[1] = v18;
  inited[13].n128_u64[1] = v10;
  inited[14].n128_u64[0] = 0x65727574616566;
  v19 = 0x507972617262696CLL;
  if (v7)
  {
    v19 = 0x6E776F6E6B6E75;
  }

  v20 = 0xEB00000000736E69;
  if (v7)
  {
    v20 = 0xE700000000000000;
  }

  inited[16].n128_u64[1] = v10;
  inited[14].n128_u64[1] = 0xE700000000000000;
  inited[15].n128_u64[0] = v19;
  inited[15].n128_u64[1] = v20;
  result = sub_21700E384();
  *a4 = result;
  return result;
}

uint64_t UnifiedMessages.ClickEvent.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UnifiedMessages.ClickEvent.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_34_5();
  v4 = sub_216A8C1D4();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(a1, v5, 0, v6, &v9);
  v7 = v9;

  *a2 = v7;
  return result;
}

uint64_t UnifiedMessages.AddToLibraryButtonClickEvent.init(pageType:kind:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = OUTLINED_FUNCTION_38_20();
  if (sub_216E1A4B8(a3, a4))
  {

    a3 = sub_21700E5A4();
    a4 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_35_25(inited, xmmword_217015240);
  v11[2].n128_u64[0] = v12;
  v11[2].n128_u64[1] = 0xE800000000000000;
  v13 = MEMORY[0x277D837D0];
  v11[3].n128_u64[0] = a1;
  v11[3].n128_u64[1] = a2;
  OUTLINED_FUNCTION_12_44();
  v15[9] = v13;
  v15[10] = v14 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
  v15[11] = 0xEA00000000006570;
  v15[12] = 6579297;
  v15[13] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_44();
  *(v17 + 120) = v13;
  *(v17 + 128) = v16 & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
  OUTLINED_FUNCTION_31_32(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0);
  v18 = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_36_23(v18, xmmword_217013D90);
  v19[3].n128_u64[0] = a3;
  v19[3].n128_u64[1] = a4;
  *(OUTLINED_FUNCTION_40_17(v19) + 80) = xmmword_21703E310;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  v20 = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580);
  inited[9].n128_u64[0] = v20;
  OUTLINED_FUNCTION_41_18();
  inited[10].n128_u64[1] = v21;
  inited[11].n128_u64[0] = v22;
  inited[11].n128_u64[1] = 0xEA00000000006570;
  inited[12].n128_u64[0] = 0x6E6F74747562;
  inited[12].n128_u64[1] = 0xE600000000000000;
  inited[13].n128_u64[1] = v13;
  inited[14].n128_u64[0] = 0x6E6F697461636F6CLL;
  inited[14].n128_u64[1] = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1588);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217013DA0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_217015230;
  *(v24 + 32) = 25705;
  *(v24 + 40) = 0xE200000000000000;
  *(v24 + 48) = xmmword_21703E320;
  strcpy((v24 + 64), "locationType");
  *(v24 + 77) = 0;
  *(v24 + 78) = -5120;
  *(v24 + 80) = xmmword_21703E330;
  *(v24 + 96) = 1684957547;
  *(v24 + 104) = 0xE400000000000000;
  *(v24 + 112) = a3;
  *(v24 + 120) = a4;
  *(v23 + 32) = sub_21700E384();
  inited[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1590);
  inited[15].n128_u64[0] = v23;
  OUTLINED_FUNCTION_108();
  v25 = sub_21700E384();
  swift_isUniquelyReferenced_nonNull_native();
  v32 = v30;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(v25, v26, 0, v27, &v32);
  v28 = v32;

  *a5 = v28;
  return result;
}

uint64_t UnifiedMessages.AddToLibraryContextClickEvent.init(pageType:kind:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = OUTLINED_FUNCTION_38_20();
  if (sub_216E1A4B8(a3, a4))
  {

    a3 = sub_21700E5A4();
    a4 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_35_25(inited, xmmword_217015240);
  v13[2].n128_u64[0] = v14;
  v13[2].n128_u64[1] = 0xE800000000000000;
  v15 = MEMORY[0x277D837D0];
  v13[3].n128_u64[0] = a1;
  v13[3].n128_u64[1] = a2;
  OUTLINED_FUNCTION_12_44();
  v17[9] = v15;
  v17[10] = v16 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
  v17[11] = 0xEA00000000006570;
  v17[12] = 6579297;
  v17[13] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_44();
  *(v19 + 120) = v15;
  *(v19 + 128) = v18 & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
  OUTLINED_FUNCTION_31_32(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0);
  v20 = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_36_23(v20, xmmword_217013D90);
  v21[3].n128_u64[0] = a3;
  v21[3].n128_u64[1] = a4;
  *(OUTLINED_FUNCTION_40_17(v21) + 80) = xmmword_21703E310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  v22 = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580);
  inited[9].n128_u64[0] = v22;
  OUTLINED_FUNCTION_41_18();
  inited[10].n128_u64[1] = v23;
  inited[11].n128_u64[0] = v24;
  inited[11].n128_u64[1] = 0xEA00000000006570;
  inited[12].n128_u64[0] = 0x6E6F74747562;
  inited[12].n128_u64[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_12_44();
  inited[13].n128_u64[1] = v15;
  inited[14].n128_u64[0] = v25 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
  inited[16].n128_u64[1] = v15;
  inited[14].n128_u64[1] = 0xED0000747865746ELL;
  inited[15].n128_u64[0] = 0xD000000000000010;
  inited[15].n128_u64[1] = 0x80000002170801D0;
  v26 = sub_21700E384();
  swift_isUniquelyReferenced_nonNull_native();
  v31 = v10;
  OUTLINED_FUNCTION_4_73();
  sub_2169C53CC(v26, v27, 0, v28, &v31);
  v29 = v31;

  *a5 = v29;
  return result;
}

uint64_t UnifiedMessages.PageEvent.init(pageType:)()
{
  OUTLINED_FUNCTION_92();
  *v0 = sub_216A8C1D4();
  return sub_2166EF928();
}

uint64_t sub_216A8D714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216ABC3C4((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_216A8D750()
{
  result = qword_27CAC1598;
  if (!qword_27CAC1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1598);
  }

  return result;
}

unint64_t sub_216A8D7A8()
{
  result = qword_27CAC15A0;
  if (!qword_27CAC15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15A0);
  }

  return result;
}

unint64_t sub_216A8D800()
{
  result = qword_27CAC15A8;
  if (!qword_27CAC15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15A8);
  }

  return result;
}

unint64_t sub_216A8D858()
{
  result = qword_27CAC15B0;
  if (!qword_27CAC15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15B0);
  }

  return result;
}

_BYTE *_s9EventTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216A8D9EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_216A8DBBC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A8DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_216A8DCE8(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *sub_216A8DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  (*(*(*(v7 + 80) - 8) + 32))(v5 + *(v7 + 144), a1);
  v8 = *(a5 + 16);
  *(v5 + 1) = *a5;
  *(v5 + 2) = v8;
  v5[6] = *(a5 + 32);
  return v5;
}

int *sub_216A8DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v13 - v7;
  v9 = *(v4 + 144);
  sub_2168E689C();
  v13[1] = *(v2 + 8);
  v10 = *(v4 + 96);
  _s15ContentObserverCMa();
  sub_21700E984();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_21700E7A4();

  (*(v6 + 16))(v8, &v2[v9], v5);
  v11 = sub_216E427CC(v5, v10);
  return sub_216E41D9C(v8, v11, 0, 1, 1, v5, a2);
}

uint64_t sub_216A8DF54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216ABD99C(a2 + *(*a2 + 144), result, *(v3 + 80), *(v3 + 96));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_216A8E00C()
{
  v1 = *v0;
  v2 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  (*(*(v2 - 8) + 8))(v0 + 2, v2);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_216A8E0FC()
{
  sub_216A8E00C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216A8E1C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A8E200(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A8E280@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v39 = v5;
  v34 = *(v5 + 16);
  v34(v8, v42, v41);
  v35 = v8;
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v36 = *(v11 + 8);
  v37 = v11 + 8;
  v38 = v9;
  v36(v15, v9);
  if (v18)
  {
    v19 = type metadata accessor for SongDetailList();
    v43 = v16;
    v44 = v18;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v20 = v34;
    v21 = v35;
    v22 = v41;
    v34(v35, v42, v41);
    v33 = v19;
    sub_216A8E8A0(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_0_131();
    type metadata accessor for SongDetailListHeaderLockup();
    sub_21700CE04();
    v20(v21, v42, v22);
    sub_216A8E8A0(&qword_27CAC15C8, type metadata accessor for SongDetailListHeaderLockup);
    OUTLINED_FUNCTION_0_131();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15D0);
    v23 = v40;
    sub_21700CE04();
    v24 = v41;
    v25 = v42;
    v20(v21, v42, v41);
    sub_216A8E7EC();
    OUTLINED_FUNCTION_0_131();
    if (v43)
    {
      v26 = v43;
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    (*(v39 + 8))(v25, v24);
    result = (v36)(v23, v38);
    *(v45 + *(v33 + 28)) = v26;
  }

  else
  {
    v28 = sub_21700E2E4();
    sub_216A8E8A0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v30 = v29;
    v31 = type metadata accessor for SongDetailList();
    *v30 = 25705;
    v30[1] = 0xE200000000000000;
    v30[2] = v31;
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v39 + 8))(v42, v41);
    v36(v40, v38);
    return sub_2167B0250(v45);
  }

  return result;
}

unint64_t sub_216A8E7EC()
{
  result = qword_27CAC15D8;
  if (!qword_27CAC15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC15D0);
    sub_216A8E8A0(&qword_27CAC15E0, type metadata accessor for ListSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC15D8);
  }

  return result;
}

uint64_t sub_216A8E8A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A8E8E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v2, v4);
  if ((*(v6 + 88))(v10, v4) == *MEMORY[0x277CD8368])
  {
    (*(v6 + 96))(v10, v4);
    v11 = sub_21700C084();
    (*(*(v11 - 8) + 32))(a1, v10, v11);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  else
  {
    v13 = sub_21700C084();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_216A8EA78@<X0>(uint64_t a1@<X8>)
{
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v48 = v4 - v3;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v54 = v6;
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v51 = v18;
  v52 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  (*(v30 + 16))(v33 - v32, v56, v28);
  v35 = (*(v30 + 88))(v34, v28);
  if (v35 == *MEMORY[0x277D2A3B0])
  {
    v36 = OUTLINED_FUNCTION_2_94();
    v37(v36);
    (*(v12 + 32))(v16, v34, v10);
    sub_217006B04();
    return (*(v12 + 8))(v16, v10);
  }

  else if (v35 == *MEMORY[0x277D2A3B8])
  {
    v39 = OUTLINED_FUNCTION_2_94();
    v40(v39);
    (*(v54 + 32))(v9, v34, v55);
    sub_21700B974();
    return (*(v54 + 8))(v9, v55);
  }

  else if (v35 == *MEMORY[0x277D2A458])
  {
    v41 = OUTLINED_FUNCTION_2_94();
    v42(v41);
    (*(v53 + 32))(v27, v34, v22);
    sub_217007354();
    return (*(v53 + 8))(v27, v22);
  }

  else if (v35 == *MEMORY[0x277D2A420])
  {
    v43 = OUTLINED_FUNCTION_2_94();
    v44(v43);
    (*(v51 + 32))(v21, v34, v52);
    sub_2170071F4();
    return (*(v51 + 8))(v21, v52);
  }

  else if (v35 == *MEMORY[0x277D2A3E0])
  {
    v45 = OUTLINED_FUNCTION_2_94();
    v46(v45);
    (*(v49 + 32))(v48, v34, v50);
    sub_217007084();
    return (*(v49 + 8))(v48, v50);
  }

  else
  {
    v47 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v47);
    return (*(v30 + 8))(v34, v28);
  }
}

double sub_216A8EFAC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = a1;
  v2 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v36 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v30 = v11;
  MEMORY[0x28223BE20](v12);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v17 = *(v4 + 16);
  v17(v9, v39, v2);
  v18 = v35;
  sub_21700D224();
  if (v18)
  {
    (*(v4 + 8))(v39, v2);
    v19 = OUTLINED_FUNCTION_1_111();
    v20(v19);
  }

  else
  {
    v35 = v4;
    (*(v32 + 32))(v34, v16, v33);
    v22 = v30;
    sub_21700CE04();
    v23 = v31;
    v17(v31, v39, v2);
    sub_2169335B0(v22, v23, v37);
    v24 = OUTLINED_FUNCTION_2_95();
    v25(v24);
    v26 = OUTLINED_FUNCTION_1_111();
    v27(v26);
    v28 = v34 + *(type metadata accessor for PresentAlertAction() + 20);
    result = *v37;
    v29 = v37[1];
    *v28 = v37[0];
    *(v28 + 16) = v29;
    *(v28 + 32) = v38;
  }

  return result;
}

uint64_t sub_216A8F31C(uint64_t a1, int a2)
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

uint64_t sub_216A8F35C(uint64_t result, int a2, int a3)
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

uint64_t sub_216A8F3D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    type metadata accessor for AppDestinationPageProviderBox();
    type metadata accessor for ObjectGraph();

    sub_21700E094();
    sub_216E9C900(v2, v5);

    *a1 = sub_2170093B4();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1600);
    sub_216A8F50C();
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    sub_2166B4C60(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A8F50C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1608);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &__src[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1610);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &__src[-v5];
  sub_216A8F6A8(v2);
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167A6724(v2, v6, &qword_27CAC1608);
  memcpy(&v6[*(v4 + 44)], __src, 0x70uLL);
  sub_216C0CE60();
  return sub_216697664(v6, &qword_27CAC1610);
}

uint64_t sub_216A8F6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1618);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1620);
  MEMORY[0x28223BE20](v69);
  v70 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v66 = sub_21700D8E4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = &v50 - v14;
  v15 = type metadata accessor for DefaultSectionHeaderView();
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1628);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1630);
  MEMORY[0x28223BE20](v61);
  v68 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = &v50 - v21;
  MEMORY[0x28223BE20](v22);
  v67 = &v50 - v23;
  v24 = sub_2169D3BF8();
  if (v24)
  {
    v26 = v24;
    v54 = v25;
    v55 = v4;
    v56 = v2;
    v57 = a1;
    if (qword_27CAB5CB0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for DefaultSectionHeader();
    v28 = __swift_project_value_buffer(v27, qword_27CAC15E8);
    sub_216A905F4(v28, v17);
    v29 = v15[5];
    *&v17[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
    swift_storeEnumTagMultiPayload();
    v30 = &v17[v15[6]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v30[32] = 0;
    v31 = v15[7];
    *&v17[v31] = swift_getKeyPath();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
    swift_storeEnumTagMultiPayload();
    v32 = v15[8];
    *&v17[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0);
    swift_storeEnumTagMultiPayload();
    *&__src[0] = 0x402E000000000000;
    sub_2167CD8D8();
    sub_2170082B4();
    *&__src[0] = 0x402A000000000000;
    sub_2170082B4();
    *&__src[0] = 0x4038000000000000;
    sub_2170082B4();
    memset(__src, 0, 32);
    v52 = 0x8000000217087930;
    *&v74 = MEMORY[0x277D837D0];
    v71 = 0xD000000000000011;
    v72 = 0x8000000217087930;
    sub_21700D8B4();
    sub_216697664(__src, &unk_27CABF7A0);
    sub_216697664(&v71, &unk_27CABF7A0);
    v33 = sub_2166BF3C8(v26);
    *(&__src[1] + 1) = MEMORY[0x277D83B88];
    *&__src[0] = v33;
    v34 = v58;
    sub_21700D8C4();
    v51 = v26;
    v35 = *(v65 + 8);
    v36 = v10;
    v37 = v66;
    v35(v36, v66);
    sub_216697664(__src, &unk_27CABF7A0);
    *(&__src[1] + 1) = &_s7SectionV8ItemKindON;
    LOBYTE(__src[0]) = 27;
    v38 = v59;
    sub_21700D8C4();
    v35(v34, v37);
    sub_216697664(__src, &unk_27CABF7A0);
    sub_2166B4C60(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView);
    v39 = v62;
    sub_21700A204();
    v35(v38, v37);
    sub_216A90658(v17);
    sub_21700B3C4();
    sub_217008BB4();
    v40 = v60;
    (*(v63 + 32))(v60, v39, v64);
    memcpy((v40 + *(v61 + 36)), __src, 0x70uLL);
    v41 = v67;
    sub_2167A6724(v40, v67, &qword_27CAC1630);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = xmmword_21703EA60;
    *(v8 + 4) = &unk_28291FA68;
    *(v8 + 5) = &off_28291DBE0;
    v42 = swift_allocObject();
    *(v8 + 1) = v42;
    sub_21698F234(&v71, v42 + 16);
    *(v42 + 80) = &unk_28291FB08;
    *(v42 + 88) = &off_28291F9F0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    *(v42 + 72) = 0x80;
    sub_216A906C4(&v71);
    *(v42 + 96) = 0;
    *(v42 + 104) = 0;
    *(v42 + 112) = 0;
    *(v42 + 120) = 0x4032000000000000;
    *v8 = v51;
    *(v8 + 18) = swift_getKeyPath();
    v8[152] = 0;
    v43 = *(v69 + 92);
    *&v8[v43] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 6) = 3;
    v8[72] = 0;
    *(v8 + 15) = sub_216A900E0;
    *(v8 + 16) = 0;
    *(v8 + 10) = 0xD000000000000011;
    *(v8 + 11) = v52;
    *(v8 + 12) = 0;
    *(v8 + 13) = 0;
    v8[112] = 0;
    *(v8 + 17) = v54;
    v44 = v68;
    sub_21672BBFC(v41, v68);
    v45 = v70;
    sub_216A90718(v8, v70);
    v46 = v55;
    sub_21672BBFC(v44, v55);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1638);
    sub_216A90718(v45, v46 + *(v47 + 48));
    sub_216697664(v8, &qword_27CAC1620);
    sub_216697664(v41, &qword_27CAC1630);
    sub_216697664(v45, &qword_27CAC1620);
    sub_216697664(v44, &qword_27CAC1630);
    v48 = v57;
    sub_2167A6724(v46, v57, &qword_27CAC1618);
    return __swift_storeEnumTagSinglePayload(v48, 0, 1, v56);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_216A900E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for RecentSearchLockupView(0);
  sub_2167CD8D8();

  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  result = swift_getKeyPath();
  *v6 = result;
  v6[40] = 0;
  return result;
}

double sub_216A901D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for DefaultAccessoryButton();
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217006224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DefaultSectionHeader();
  __swift_allocate_value_buffer(v10, qword_27CAC15E8);
  v11 = __swift_project_value_buffer(v10, qword_27CAC15E8);
  v12 = sub_216983738(225);
  v36 = v13;
  v37 = v12;
  sub_217006214();
  v14 = sub_2170061F4();
  v34 = v15;
  v35 = v14;
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1640);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_217013DA0;
  v17 = *MEMORY[0x277CE0560];
  v18 = sub_2170098A4();
  (*(*(v18 - 8) + 104))(v2, v17, v18);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v18);
  sub_216B12098(v2, v40);
  sub_216697664(v2, &qword_27CAB8600);
  v19 = sub_216983738(49);
  v21 = v20;
  v22 = v3[5];
  v23 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(&v5[v22], 1, 1, v23);
  v38 = 0xD000000000000017;
  v39 = 0x8000000217087950;
  sub_21700F364();
  sub_2166A0F18(v40, &v5[v3[7]]);
  v24 = &v5[v3[6]];
  *v24 = v19;
  v24[1] = v21;
  v5[v3[8]] = 1;
  *(v16 + 32) = 0;
  *(v16 + 64) = v3;
  *(v16 + 72) = sub_2166B4C60(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton);
  *(v16 + 80) = sub_2166B4C60(&qword_27CAB8F50, type metadata accessor for DefaultAccessoryButton);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 40));
  sub_216A90788(v5, boxed_opaque_existential_1);
  v26 = v10[8];
  v27 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(v11 + v26, 1, 1, v27);
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v30 = v34;
  v29 = v35;
  *(v11 + 64) = 0;
  *(v11 + 72) = v29;
  v31 = v36;
  v32 = v37;
  *(v11 + 80) = v30;
  *(v11 + 88) = v32;
  *(v11 + 96) = v31;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = v16;
  *(v11 + v10[9]) = 0;
  *(v11 + v10[11]) = 2;
  *(v11 + v10[10]) = 0;
  return result;
}

uint64_t sub_216A905F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSectionHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A90658(uint64_t a1)
{
  v2 = type metadata accessor for DefaultSectionHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A906B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_216A90718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A90788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A907EC()
{
  result = qword_27CAC1648;
  if (!qword_27CAC1648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1648);
  }

  return result;
}

id sub_216A908A8(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    sub_21700DF14();
    sub_21700DD04();

    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A909B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216A90A00(uint64_t a1)
{
  *(a1 + 8) = sub_216A90A30();
  result = sub_216A90A84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A90A30()
{
  result = qword_280E33200;
  if (!qword_280E33200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E33200);
  }

  return result;
}

unint64_t sub_216A90A84()
{
  result = qword_27CAC1658;
  if (!qword_27CAC1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1658);
  }

  return result;
}

uint64_t type metadata accessor for ColorSchemeArtwork()
{
  result = qword_280E3F3C0;
  if (!qword_280E3F3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A90B74()
{
  sub_21668A38C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216A90BE0(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v19 = v4;
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v10;
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  type metadata accessor for Artwork();
  v18 = a1;
  sub_21700CE04();
  v17 = *(v5 + 16);
  v11 = a2;
  v12 = v20;
  v17(v8, v11, v20);
  sub_216A913EC(&qword_280E2BF60);
  OUTLINED_FUNCTION_3_91();
  sub_21700CE04();
  v13 = v16;
  v17(v8, v16, v12);
  type metadata accessor for ColorSchemeArtwork();
  OUTLINED_FUNCTION_3_91();
  (*(v19 + 8))(v13, v12);
  return (*(v21 + 8))(v18, v22);
}

id sub_216A90E20(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    sub_216A9134C();
    sub_21700DD04();
    sub_21700F0B4();
    type metadata accessor for ColorSchemeArtwork();
    sub_21700DD04();
    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_216A90F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v42 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_77();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v27 = *(v26 + 48);
  sub_2169833F8(a1, &v41 - v24);
  sub_2169833F8(a2, &v25[v27]);
  OUTLINED_FUNCTION_1_87(v25);
  if (v31)
  {
    OUTLINED_FUNCTION_1_87(&v25[v27]);
    if (v31)
    {
      sub_216697664(v25, &qword_27CAB6D60);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_2169833F8(v25, v17);
  OUTLINED_FUNCTION_1_87(&v25[v27]);
  if (v31)
  {
    sub_216A2910C(v17);
LABEL_15:
    v32 = &qword_27CABE598;
    goto LABEL_16;
  }

  sub_216A912E8(&v25[v27], v10);
  v34 = sub_21700C4A4();
  if (v34)
  {
    v35 = sub_21688ADC8(&v17[*(v4 + 20)], &v10[*(v4 + 20)]);
    sub_216A2910C(v10);
    sub_216A2910C(v17);
    sub_216697664(v25, &qword_27CAB6D60);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v28 = *(type metadata accessor for ColorSchemeArtwork() + 20);
    v29 = *(v18 + 48);
    sub_2169833F8(a1 + v28, v22);
    sub_2169833F8(a2 + v28, v22 + v29);
    OUTLINED_FUNCTION_1_87(v22);
    if (v31)
    {
      OUTLINED_FUNCTION_1_87(v22 + v29);
      if (v31)
      {
        sub_216697664(v22, &qword_27CAB6D60);
        return 1;
      }
    }

    else
    {
      sub_2169833F8(v22, v14);
      OUTLINED_FUNCTION_1_87(v22 + v29);
      if (!v36)
      {
        v37 = v22 + v29;
        v38 = v42;
        sub_216A912E8(v37, v42);
        v39 = sub_21700C4A4();
        if (v39)
        {
          v40 = sub_21688ADC8(v14 + *(v4 + 20), v38 + *(v4 + 20));
          sub_216A2910C(v38);
          sub_216A2910C(v14);
          sub_216697664(v22, &qword_27CAB6D60);
          return (v40 & 1) != 0;
        }

        sub_216A2910C(v38);
        sub_216A2910C(v14);
        v32 = &qword_27CAB6D60;
        goto LABEL_24;
      }

      sub_216A2910C(v14);
    }

    v32 = &qword_27CABE598;
LABEL_24:
    v33 = v22;
    goto LABEL_25;
  }

  sub_216A2910C(v10);
  sub_216A2910C(v17);
  v32 = &qword_27CAB6D60;
LABEL_16:
  v33 = v25;
LABEL_25:
  sub_216697664(v33, v32);
  return 0;
}

uint64_t sub_216A912E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A9134C()
{
  result = qword_27CAC1660;
  if (!qword_27CAC1660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D60);
    sub_216A913EC(&qword_27CAC1668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1660);
  }

  return result;
}

uint64_t sub_216A913EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216A91430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v72 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v70 = v5;
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v66 = v6;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v58 = v8;
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_0();
  v60 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v57 = v19;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v32 = v26;
  v33 = v15;
  v34 = v31;
  v31(v32, v33);
  if (v29)
  {
    v64 = type metadata accessor for SubscriptionPurchaseAction();
    v35 = (v72 + v64[5]);
    *v35 = v27;
    v35[1] = v29;
    v69 = a1;
    sub_21700CE04();
    sub_21700CCB4();
    v63 = v33;
    v34(v23, v33);
    v36 = sub_21700D3E4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v36);
    v61 = v30;
    v62 = v34;
    v56 = v36;
    if (EnumTagSinglePayload == 1)
    {
      sub_2169CADB0(v14);
      v38 = 0;
    }

    else
    {
      v38 = sub_21700D3D4();
      (*(*(v36 - 8) + 8))(v14, v36);
    }

    v44 = v72;
    *(v72 + v64[6]) = v38;
    sub_21700CE04();
    v46 = v70;
    v45 = v71;
    v47 = v68;
    (*(v70 + 16))(v66, v68, v71);
    v48 = v65;
    v49 = v67;
    sub_21700D224();
    if (v49)
    {
      (*(v46 + 8))(v47, v45);
      v62(v69, v63);
    }

    else
    {
      (*(v58 + 32))(v44, v48, v59);
      v50 = v57;
      sub_21700CE04();
      v51 = v60;
      sub_21700CCB4();
      v53 = v62;
      v52 = v63;
      v62(v50, v63);
      v54 = v56;
      if (__swift_getEnumTagSinglePayload(v51, 1, v56) == 1)
      {
        (*(v70 + 8))(v47, v71);
        v53(v69, v52);
        result = sub_2169CADB0(v51);
        v55 = 0;
      }

      else
      {
        v55 = sub_21700D3D4();
        (*(v70 + 8))(v47, v71);
        v53(v69, v52);
        result = (*(*(v54 - 8) + 8))(v51, v54);
      }

      *(v72 + v64[7]) = v55;
    }
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for SubscriptionPurchaseAction();
    strcpy(v41, "buyParameters");
    *(v41 + 14) = -4864;
    *(v41 + 16) = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v70 + 8))(v68, v71);
    return (v34)(a1, v33);
  }

  return result;
}

BOOL sub_216A91B10()
{
  v0 = [objc_opt_self() currentNotificationCenter];
  v1 = [v0 notificationSettings];

  v2 = [v1 authorizationStatus];
  return v2 < 2;
}

uint64_t sub_216A91B8C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserNotificationSettingsPageView();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v6;
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2170096D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1688);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1690);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1698);
  OUTLINED_FUNCTION_1();
  v52 = v22;
  v53 = v21;
  MEMORY[0x28223BE20](v21);
  v51 = &v45 - v23;
  v57 = v1;
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16A0);
  sub_2166D9530(&qword_27CAC16A8, &qword_27CAC16A0);
  sub_217009ED4();
  sub_2170096C4();
  sub_2166D9530(&qword_27CAC16B0, &qword_27CAC1688);
  v24 = v46;
  sub_21700ABC4();
  (*(v8 + 8))(v11, v24);
  (*(v14 + 8))(v17, v12);
  v25 = [objc_opt_self() defaultCenter];
  if (qword_280E38808 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16B8);
  sub_21700EFC4();

  v27 = v57;
  v28 = v49;
  sub_216A94DB0();
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_216A94A6C(v28, v30 + v29);
  v31 = &v20[*(v26 + 56)];
  *v31 = sub_216A94AD0;
  v31[1] = v30;
  sub_216A94DB0();
  v32 = swift_allocObject();
  sub_216A94A6C(v28, v32 + v29);
  v33 = v50;
  v34 = &v20[*(v50 + 36)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = sub_216A94B40;
  *(v34 + 3) = v32;
  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDDDC0], v56);
  v38 = sub_216A94BA0();
  v39 = v51;
  sub_21700A904();
  (*(v35 + 8))(v36, v37);
  v40 = sub_216697664(v20, &qword_27CAC1690);
  MEMORY[0x28223BE20](v40);
  *(&v45 - 2) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16D0);
  v60 = v33;
  v61 = v38;
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8);
  v42 = sub_216A94C60();
  v60 = v41;
  v61 = v42;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  sub_21700AAD4();
  return (*(v52 + 8))(v39, v43);
}

uint64_t sub_216A92220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1708);
  MEMORY[0x28223BE20](v103);
  v109 = &v94 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1710);
  MEMORY[0x28223BE20](v107);
  v99 = &v94 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1718);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v96 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v97 = &v94 - v7;
  MEMORY[0x28223BE20](v8);
  v98 = &v94 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1720);
  MEMORY[0x28223BE20](v100);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = (&v94 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1728);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1730);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1738);
  MEMORY[0x28223BE20](v22 - 8);
  v102 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v27 = type metadata accessor for UserNotificationSettingsPageView();
  v28 = a1 + *(v27 + 44);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v116) = v29;
  v117 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  v104 = v17;
  v101 = v26;
  if (v112 == 1)
  {
    v31 = sub_216983738(180);
    v33 = v32;
    v34 = sub_217009E94();
    KeyPath = swift_getKeyPath();
    v36 = sub_217009834();
    v37 = sub_217009C94();
    v94 = a1;
    v38 = v37;
    sub_217007F24();
    v116 = v31;
    v117 = v33;
    v118 = 0;
    v119 = MEMORY[0x277D84F90];
    v120 = KeyPath;
    v121 = v34;
    v122 = v36;
    v123 = v38;
    v124 = v39;
    v125 = v40;
    v126 = v41;
    v127 = v42;
    v128 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1788);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1790);
    v44 = sub_2170091D4();
    a1 = v94;
    v45 = sub_2166D9530(&qword_27CAC1798, &qword_27CAC1790);
    v46 = sub_216A95074(&qword_27CABC420, MEMORY[0x277CDDE40]);
    v112 = v43;
    v113 = v44;
    v26 = v101;
    v114 = v45;
    v115 = v46;
    swift_getOpaqueTypeConformance2();
    sub_216A94E3C();
    sub_21700B1C4();
    (*(v19 + 32))(v26, v21, v18);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v47, 1, v18);
  if (*(a1 + *(v27 + 24)))
  {

    v48 = sub_216E3D990();

    if (v48)
    {
      v50 = sub_217009184();
      v51 = v111;
      *v111 = v50;
      v51[1] = 0;
      *(v51 + 16) = 1;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1778);
      v53 = sub_216A93C14(a1, (v51 + *(v52 + 44)));
      MEMORY[0x28223BE20](v53);
      *(&v94 - 2) = a1;
      v54 = (a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup() + 32));
      v55 = v54[1];
      v96 = &v94;
      if (v55)
      {
        v56 = *v54;
        v57 = MEMORY[0x277D84F90];
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      sub_21700DF14();
      v62 = sub_217009E94();
      v63 = swift_getKeyPath();
      v64 = sub_217009834();
      v65 = sub_217009C94();
      sub_217007F24();
      LOBYTE(v112) = 0;
      v116 = v56;
      v117 = v55;
      v118 = 0;
      v119 = v57;
      v120 = v63;
      v121 = v62;
      v122 = v64;
      v123 = v65;
      v124 = v66;
      v125 = v67;
      v126 = v68;
      v127 = v69;
      v128 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8);
      sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720);
      sub_216A94E3C();
      v70 = v98;
      sub_21700B1C4();
      v71 = v95;
      sub_2169FB3DC();
      v72 = v106;
      v73 = *(v106 + 16);
      v74 = v97;
      v75 = v108;
      v73(v97, v70, v108);
      v76 = v99;
      sub_2169FB3DC();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1780);
      v73((v76 + *(v77 + 48)), v74, v75);
      v78 = *(v72 + 8);
      v78(v74, v75);
      sub_216697664(v71, &qword_27CAC1720);
      sub_2169FB3DC();
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC1760, &qword_27CAC1710);
      sub_216A94F80();
      v79 = v104;
      sub_217009554();
      sub_216697664(v76, &qword_27CAC1710);
      v78(v70, v75);
      sub_216697664(v111, &qword_27CAC1720);
      v26 = v101;
    }

    else
    {
      MEMORY[0x28223BE20](v49);
      *(&v94 - 2) = a1;
      v58 = (a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup() + 32));
      v59 = v58[1];
      if (v59)
      {
        v60 = *v58;
        v61 = MEMORY[0x277D84F90];
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      sub_21700DF14();
      v80 = sub_217009E94();
      v81 = swift_getKeyPath();
      v82 = sub_217009834();
      v83 = sub_217009C94();
      sub_217007F24();
      LOBYTE(v112) = 0;
      v116 = v60;
      v117 = v59;
      v118 = 0;
      v119 = v61;
      v120 = v81;
      v121 = v80;
      v122 = v82;
      v123 = v83;
      v124 = v84;
      v125 = v85;
      v126 = v86;
      v127 = v87;
      v128 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F8);
      sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720);
      sub_216A94E3C();
      v88 = v96;
      sub_21700B1C4();
      v89 = v106;
      v90 = v108;
      (*(v106 + 16))(v109, v88, v108);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC1760, &qword_27CAC1710);
      sub_216A94F80();
      v79 = v104;
      sub_217009554();
      (*(v89 + 8))(v88, v90);
    }

    v91 = v102;
    sub_2169FB3DC();
    v92 = v105;
    sub_2169FB3DC();
    sub_2169FB3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1770);
    sub_2169FB3DC();
    sub_216697664(v79, &qword_27CAC1728);
    sub_216697664(v26, &qword_27CAC1738);
    sub_216697664(v92, &qword_27CAC1728);
    return sub_216697664(v91, &qword_27CAC1738);
  }

  else
  {
    type metadata accessor for SubscriptionStatusCoordinator();
    sub_216A95074(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A92EDC()
{
  v0 = sub_2170091D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1790);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - v5);
  v6[3] = type metadata accessor for AllowDeviceNotificationSettingsAction();
  v6[4] = sub_216A95074(qword_280E2DE90, type metadata accessor for AllowDeviceNotificationSettingsAction);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21700D234();
  v7 = v4[11];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 1, v8);
  v9 = v4[12];
  *(v6 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v10 = v6 + v4[13];
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[5] = sub_216A93184;
  v6[6] = 0;
  sub_2170091C4();
  sub_2166D9530(&qword_27CAC1798, &qword_27CAC1790);
  sub_216A95074(&qword_27CABC420, MEMORY[0x277CDDE40]);
  sub_21700A364();
  (*(v1 + 8))(v3, v0);
  return sub_216697664(v6, &qword_27CAC1790);
}

uint64_t sub_216A93184@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_216983738(24);
  v4 = v3;
  if (qword_27CAB5CC0 != -1)
  {
    swift_once();
  }

  v5 = qword_27CAC1678;
  KeyPath = swift_getKeyPath();

  v7 = sub_21700AC84();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  v9 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v9;
  a1[4] = KeyPath;
  a1[5] = v5;
  a1[6] = result;
  a1[7] = v7;
  return result;
}

uint64_t sub_216A93240()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  *v2 = sub_217009184();
  v3[1] = 0;
  *(v3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1778);
  return v0(v1);
}

uint64_t sub_216A932A4()
{
  sub_216A91B10();
  type metadata accessor for UserNotificationSettingsPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  return sub_21700AEC4();
}

uint64_t sub_216A93320(uint64_t a1)
{
  v2 = sub_2170075A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateNotificationSettingsAction();
  MEMORY[0x28223BE20](updated);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_216A935D4();
  if (result)
  {
    sub_21700D234();
    v10 = type metadata accessor for UserNotificationSettingsPageView();
    v11 = (a1 + *(v10 + 36));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v32) = v12;
    v33 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AEB4();
    v14 = v29[0];
    v15 = (a1 + *(v10 + 40));
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v32) = v16;
    v33 = v17;
    sub_21700AEB4();
    v18 = v29[0];
    v8[*(updated + 20)] = v14;
    v8[*(updated + 24)] = v18;
    sub_216C0C534(&v32);
    if (v35)
    {
      v28 = v36;
      __swift_project_boxed_opaque_existential_1(&v32, v35);
      v30 = updated;
      v31 = sub_216A95074(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction);
      __swift_allocate_boxed_opaque_existential_1(v29);
      v19 = sub_216A94DB0();
      sub_216C0C548(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32, v33, v34, v35, v36);
      sub_217007544();
      (*(v3 + 8))(v5, v2);
      sub_216A94D54(v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }

    else
    {
      sub_216A94D54(v8);
      return sub_216697664(&v32, &qword_27CAB7310);
    }
  }

  return result;
}

uint64_t sub_216A935D4()
{
  v1 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v2 = *(v0 + *(v1 + 28));
  type metadata accessor for UserNotificationSettingsPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  if (v2 == v6)
  {
    v4 = *(v0 + *(v1 + 24));
    sub_21700AEB4();
    v3 = v4 ^ v6;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_216A936B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = sub_217009684();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16D8);
  MEMORY[0x28223BE20](v23[0]);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  if (*(a1 + *(type metadata accessor for SocialOnboardingNotificationSettingsPageLockup() + 36)) == 1)
  {
    sub_217009624();
    type metadata accessor for SystemActionButton(0);
    sub_216A95074(&qword_27CAC1700, type metadata accessor for SystemActionButton);
    sub_2170081F4();
    v17 = sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8);
    MEMORY[0x21CE9A570](v11, v8, v17);
    (*(v4 + 16))(v13, v6, v3);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
    v24 = v8;
    v25 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v13, v3, OpaqueTypeConformance2);
    sub_216697664(v13, &qword_27CAC16D8);
    (*(v4 + 8))(v6, v3);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v3);
    v19 = sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8);
    v24 = v8;
    v25 = v19;
    v20 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v13, v3, v20);
    sub_216697664(v13, &qword_27CAC16D8);
  }

  v21 = sub_216A94C60();
  MEMORY[0x21CE9A570](v16, v23[0], v21);
  return sub_216697664(v16, &qword_27CAC16D8);
}

uint64_t sub_216A93B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction();
  a1[3] = v2;
  a1[4] = sub_216A95074(qword_280E30D30, type metadata accessor for DismissModalPresentationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = type metadata accessor for SystemActionButton(0);
  sub_217007EE4();
  v6 = *(v5 + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + *(v5 + 32);
  result = swift_getKeyPath();
  *v7 = result;
  v7[40] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return result;
}

uint64_t sub_216A93C14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A0);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A8);
  v25 = *(v6 - 8);
  v7 = v25;
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v28 = sub_2170093C4();
  v34 = 0;
  sub_216A94454(165, 166, v38);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, 0xF1uLL);
  sub_2169FB3DC();
  sub_216697664(v36, &qword_27CAC17B0);
  memcpy(&v33[7], v35, 0xF1uLL);
  v26 = v34;
  sub_217009264();
  v12 = (v27 + *(type metadata accessor for UserNotificationSettingsPageView() + 36));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v37[0]) = v13;
  v37[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  sub_21700B054();
  sub_2166D9530(&qword_27CAC17B8, &qword_27CAC17A0);
  v15 = v30;
  sub_21700A484();
  (*(v31 + 8))(v5, v15);
  v16 = *(v7 + 16);
  v17 = v29;
  v18 = v11;
  v16(v29, v11, v6);
  v19 = v28;
  v37[0] = v28;
  v37[1] = 0x4000000000000000;
  LOBYTE(v11) = v26;
  LOBYTE(v37[2]) = v26;
  memcpy(&v37[2] + 1, v33, 0xF8uLL);
  v20 = v32;
  memcpy(v32, v37, 0x109uLL);
  v20[34] = 0;
  *(v20 + 280) = 1;
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17C0) + 64);
  v16(v21, v17, v6);
  sub_2169FB3DC();
  v22 = *(v25 + 8);
  v22(v18, v6);
  v22(v17, v6);
  v38[0] = v19;
  v38[1] = 0x4000000000000000;
  LOBYTE(v38[2]) = v11;
  memcpy(&v38[2] + 1, v33, 0xF8uLL);
  return sub_216697664(v38, &qword_27CAC17C8);
}

uint64_t sub_216A94034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A0);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A8);
  v25 = *(v6 - 8);
  v7 = v25;
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v28 = sub_2170093C4();
  v34 = 0;
  sub_216A94454(128, 130, v38);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, 0xF1uLL);
  sub_2169FB3DC();
  sub_216697664(v36, &qword_27CAC17B0);
  memcpy(&v33[7], v35, 0xF1uLL);
  v26 = v34;
  sub_217009264();
  v12 = (v27 + *(type metadata accessor for UserNotificationSettingsPageView() + 40));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v37[0]) = v13;
  v37[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  sub_21700B054();
  sub_2166D9530(&qword_27CAC17B8, &qword_27CAC17A0);
  v15 = v30;
  sub_21700A484();
  (*(v31 + 8))(v5, v15);
  v16 = *(v7 + 16);
  v17 = v29;
  v18 = v11;
  v16(v29, v11, v6);
  v19 = v28;
  v37[0] = v28;
  v37[1] = 0x4000000000000000;
  LOBYTE(v11) = v26;
  LOBYTE(v37[2]) = v26;
  memcpy(&v37[2] + 1, v33, 0xF8uLL);
  v20 = v32;
  memcpy(v32, v37, 0x109uLL);
  v20[34] = 0;
  *(v20 + 280) = 1;
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17C0) + 64);
  v16(v21, v17, v6);
  sub_2169FB3DC();
  v22 = *(v25 + 8);
  v22(v18, v6);
  v22(v17, v6);
  v38[0] = v19;
  v38[1] = 0x4000000000000000;
  LOBYTE(v38[2]) = v11;
  memcpy(&v38[2] + 1, v33, 0xF8uLL);
  return sub_216697664(v38, &qword_27CAC17C8);
}

uint64_t sub_216A94454@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v59 = sub_216983738(a1);
  v5 = v4;
  if (qword_27CAB5CC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27CAC1678;
  KeyPath = swift_getKeyPath();
  v61 = v6;

  v57 = sub_21700AD14();
  v8 = swift_getKeyPath();
  if (qword_27CAB5CB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v9 = sub_216983738(a2);
  v51 = v10;
  v53 = v9;
  if (qword_27CAB5CC8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CAC1680;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();

  v14 = sub_21700AD34();
  v15 = swift_getKeyPath();
  v16 = sub_217009CA4();
  v17 = sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&__src[0] = v59;
  *(&__src[0] + 1) = v5;
  v49 = v5;
  v26 = MEMORY[0x277D84F90];
  *&__src[1] = 0;
  *(&__src[1] + 1) = MEMORY[0x277D84F90];
  v47 = v8;
  *&__src[2] = KeyPath;
  *(&__src[2] + 1) = v61;
  *&__src[3] = v8;
  v27 = v57;
  *(&__src[3] + 1) = v57;
  __src[4] = OUTLINED_FUNCTION_5_68(v17, v28, v29, v30, v31, v32, v33, v34, KeyPath, v47, v49, v51, v53, a3, v57, v59, v61, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v64.n128_i64[0], v64.n128_i64[1], v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28]);
  __src[5] = v35;
  __src[6] = v71;
  memcpy(__dst, __src, 0x70uLL);
  v73[0] = v54;
  v73[1] = v52;
  v73[2] = 0;
  v73[3] = v26;
  v73[4] = v12;
  v73[5] = v11;
  v73[6] = v13;
  v73[7] = 0;
  LOBYTE(v73[8]) = 1;
  v73[9] = v15;
  v73[10] = v14;
  LOBYTE(v73[11]) = v16;
  v73[12] = v19;
  v73[13] = v21;
  v73[14] = v23;
  v73[15] = v25;
  LOBYTE(v73[16]) = 0;
  memcpy(&__dst[14], v73, 0x81uLL);
  memcpy(v56, __dst, 0xF1uLL);
  v74[0] = v54;
  v74[1] = v52;
  v74[2] = 0;
  v74[3] = v26;
  v74[4] = v12;
  v74[5] = v11;
  v74[6] = v13;
  v74[7] = 0;
  v75 = 1;
  v76 = v15;
  v77 = v14;
  v78 = v16;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = v25;
  v83 = 0;
  sub_2169FB3DC();
  sub_2169FB3DC();
  v36 = sub_216697664(v74, &qword_27CAC17D8);
  v64 = OUTLINED_FUNCTION_5_68(v36, v37, v38, v39, v40, v41, v42, v43, v46, v48, v50, v52, v54, v56, v58, v60, v62, v60, v50, 0, v26, v46, v62, v48, v27, v64.n128_i64[0], v64.n128_i64[1], v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28]);
  v65 = v44;
  v66 = v71;
  return sub_216697664(v63, &qword_27CAC17D0);
}

uint64_t sub_216A947E0()
{
  result = sub_21700B304();
  v1 = 32.0;
  if ((result & 1) == 0)
  {
    v1 = 28.0;
  }

  qword_27CAC1670 = *&v1;
  return result;
}

uint64_t sub_216A94814()
{
  result = sub_217009D54();
  qword_27CAC1678 = result;
  return result;
}

uint64_t sub_216A94834()
{
  result = sub_217009D44();
  qword_27CAC1680 = result;
  return result;
}

uint64_t type metadata accessor for UserNotificationSettingsPageView()
{
  result = qword_280E2F4C0;
  if (!qword_280E2F4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A948C8()
{
  type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  if (v0 <= 0x3F)
  {
    sub_216A949B4();
    if (v1 <= 0x3F)
    {
      sub_2166D9618();
      if (v2 <= 0x3F)
      {
        sub_21680D428();
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            sub_216854FAC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_216A949B4()
{
  if (!qword_280E2ACA0)
  {
    type metadata accessor for UserSocialProfileCoordinator();
    sub_216A95074(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2ACA0);
    }
  }
}

uint64_t sub_216A94A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationSettingsPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A94AD0()
{
  type metadata accessor for UserNotificationSettingsPageView();

  return sub_216A932A4();
}

uint64_t sub_216A94B40()
{
  v1 = *(type metadata accessor for UserNotificationSettingsPageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216A93320(v2);
}

unint64_t sub_216A94BA0()
{
  result = qword_27CAC16C0;
  if (!qword_27CAC16C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1690);
    sub_2166D9530(&qword_27CAC16C8, &qword_27CAC16B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC16C0);
  }

  return result;
}

unint64_t sub_216A94C60()
{
  result = qword_27CAC16E0;
  if (!qword_27CAC16E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16E8);
    sub_2166D9530(&qword_27CAC16F0, &qword_27CAC16E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC16E0);
  }

  return result;
}

uint64_t sub_216A94D54(uint64_t a1)
{
  updated = type metadata accessor for UpdateNotificationSettingsAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_216A94DB0()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_216A94E3C()
{
  result = qword_27CAC1748;
  if (!qword_27CAC1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB87F8);
    sub_216A94EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1748);
  }

  return result;
}

unint64_t sub_216A94EC8()
{
  result = qword_27CAC1750;
  if (!qword_27CAC1750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1758);
    sub_2167C4CBC();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1750);
  }

  return result;
}

unint64_t sub_216A94F80()
{
  result = qword_27CAC1768;
  if (!qword_27CAC1768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1718);
    sub_2166D9530(&qword_27CAC1740, &qword_27CAC1720);
    sub_216A94E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1768);
  }

  return result;
}

uint64_t sub_216A95074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TwoColumnTrackTitlesView()
{
  result = qword_27CAC17E0;
  if (!qword_27CAC17E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A95130()
{
  sub_216688154();
  if (v0 <= 0x3F)
  {
    sub_216833F44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_216A951FC@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_21700AC44();
  v5 = sub_217009164();
  v11 = 0;
  sub_216A95304(v1, v4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_216681B64(__dst, &v8, &qword_27CAC17F0);
  sub_21669987C(v13, &qword_27CAC17F0);

  memcpy(&v10[7], __dst, 0x160uLL);
  v6 = v11;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0x167uLL);
}

uint64_t sub_216A95304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v67 = a3;
  v4 = sub_217008844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 32);
  type metadata accessor for ExplicitBadgingPresenter();
  sub_216A959B0();
  sub_21700DF14();
  v12 = sub_217008CF4();
  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = v11;
    if (v10)
    {
      v15 = sub_217009154();
    }

    else
    {
      v15 = sub_2170091A4();
    }

    v83[0] = v12;
    v83[1] = v14;
    v83[2] = v9;
    v83[3] = v8;
    LOWORD(v83[4]) = v10;
    v83[5] = 0;
    LOBYTE(v83[6]) = 0;
    v83[7] = v15;
    v68 = v83[4];
    v69 = v12;
    *&v65 = v83[6];
    *(&v65 + 1) = v15;
    v84[0] = v12;
    v66 = v14;
    v84[1] = v14;
    v70 = v9;
    v84[2] = v9;
    v84[3] = v8;
    LOWORD(v84[4]) = v10;
    v84[5] = 0;
    LOBYTE(v84[6]) = 0;
    v84[7] = v15;
    sub_21680DAEC(v83, v82);
    sub_21680DB48(v84);
  }

  else
  {

    v69 = 0;
    v70 = 0;
    v66 = 0;
    v8 = 0;
    v68 = 0;
    v65 = 0uLL;
  }

  *(&v64 + 1) = sub_217009D54();
  *&v64 = swift_getKeyPath();
  v16 = type metadata accessor for TwoColumnTrackTitlesView();
  sub_216C0C570(v16, v17, v18, v19, v20, v21, v22, v23, v52, v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62);
  LODWORD(v61) = sub_217008834();
  v24 = *(v5 + 8);
  v59 = v4;
  v24(v7, v4);
  KeyPath = swift_getKeyPath();
  v88 = 0;
  v25 = *(a1 + 33);
  if (v25)
  {
  }

  else
  {
    v26 = sub_21700AD14();
  }

  v62 = v26;
  sub_21700B3C4();
  sub_2170083C4();
  v27 = a1[3];
  if (v27)
  {
    v54 = a1[2];
    sub_21700DF14();
    sub_21700B3B4();
    sub_2170083C4();
    v55 = v92;
    v56 = v90;
    v57 = v95;
    v58 = v94;
    v78 = 1;
    v77 = v91;
    v76 = v93;
    *(&v53 + 1) = sub_217009E94();
    v28 = swift_getKeyPath();
    sub_216C0C570(v28, v29, v30, v31, v32, v33, v34, v35, v52, v28, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62);
    v36 = sub_217008834();
    v24(v7, v59);
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = swift_getKeyPath();
    v74 = 0;
    if (v25)
    {
      v39 = v60;
    }

    else
    {
      v39 = sub_21700AD34();
    }

    sub_21700B3C4();
    sub_2170083C4();
    HIDWORD(v52) = v78;
    LODWORD(v59) = v77;
    LODWORD(v60) = v76;
    *&v81[0] = v54;
    *(&v81[0] + 1) = v27;
    *&v81[1] = 0;
    *(&v81[1] + 1) = MEMORY[0x277D84F90];
    v81[2] = v53;
    *&v81[3] = v38;
    *(&v81[3] + 1) = v37;
    LOBYTE(v81[4]) = 0;
    *(&v81[4] + 1) = *v75;
    DWORD1(v81[4]) = *&v75[3];
    *(&v81[4] + 1) = v39;
    v81[6] = v72;
    v81[7] = v73;
    v81[5] = v71;
    memcpy(v79, v81, 0x80uLL);
    *&v82[0] = v54;
    *(&v82[0] + 1) = v27;
    *&v82[1] = 0;
    *(&v82[1] + 1) = MEMORY[0x277D84F90];
    v82[2] = v53;
    *&v82[3] = v38;
    *(&v82[3] + 1) = v37;
    LOBYTE(v82[4]) = 0;
    *(&v82[4] + 1) = *v75;
    DWORD1(v82[4]) = *&v75[3];
    *(&v82[4] + 1) = v39;
    v82[7] = v73;
    v82[6] = v72;
    v82[5] = v71;
    sub_216681B64(v81, v84, &qword_27CAC1808);
    sub_21669987C(v82, &qword_27CAC1808);
    v83[0] = 0;
    LOBYTE(v83[1]) = BYTE4(v52);
    v83[2] = v56;
    LOBYTE(v83[3]) = v59;
    v83[4] = v55;
    LOBYTE(v83[5]) = v60;
    v83[6] = v58;
    v83[7] = v57;
    memcpy(&v83[8], v79, 0x80uLL);
    nullsub_1(v83, v41, v42);
    memcpy(v84, v83, sizeof(v84));
    v40 = v70;
  }

  else
  {
    sub_216A95A08(v84);
    v40 = v70;
  }

  v70 = v40;
  if (v61)
  {
    v43 = 3;
  }

  else
  {
    v43 = 1;
  }

  v60 = v43;
  memcpy(v83, v84, sizeof(v83));
  *&v81[0] = v69;
  v45 = *(&v65 + 1);
  v44 = v66;
  *(&v81[0] + 1) = v66;
  *&v81[1] = v40;
  *(&v81[1] + 1) = v8;
  v61 = v8;
  v81[2] = v68;
  v47 = *(&v64 + 1);
  v46 = v65;
  v81[3] = v65;
  v49 = KeyPath;
  v48 = v64;
  v81[4] = v64;
  *&v81[5] = KeyPath;
  *(&v81[5] + 1) = v43;
  LOBYTE(v81[6]) = 0;
  *(&v81[6] + 1) = *v89;
  DWORD1(v81[6]) = *&v89[3];
  v50 = v62;
  *(&v81[6] + 1) = v62;
  v81[7] = v85;
  v81[8] = v86;
  v81[9] = v87;
  memcpy(v80, v81, 0xA0uLL);
  memcpy(v82, v84, sizeof(v82));
  memcpy(&v80[160], v84, 0xC0uLL);
  memcpy(v67, v80, 0x160uLL);
  sub_216681B64(v81, v79, &qword_27CAC17F8);
  sub_216681B64(v82, v79, &qword_27CAC1800);
  sub_21669987C(v83, &qword_27CAC1800);
  *&v79[0] = v69;
  *(&v79[0] + 1) = v44;
  *&v79[1] = v70;
  *(&v79[1] + 1) = v61;
  v79[2] = v68;
  *&v79[3] = v46;
  *(&v79[3] + 1) = v45;
  *&v79[4] = v48;
  *(&v79[4] + 1) = v47;
  *&v79[5] = v49;
  *(&v79[5] + 1) = v60;
  LOBYTE(v79[6]) = 0;
  *(&v79[6] + 1) = *v89;
  DWORD1(v79[6]) = *&v89[3];
  *(&v79[6] + 1) = v50;
  v79[7] = v85;
  v79[8] = v86;
  v79[9] = v87;
  return sub_21669987C(v79, &qword_27CAC17F8);
}

unint64_t sub_216A959B0()
{
  result = qword_280E36A20;
  if (!qword_280E36A20)
  {
    type metadata accessor for ExplicitBadgingPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36A20);
  }

  return result;
}

unint64_t sub_216A95A10()
{
  result = qword_27CAC1810;
  if (!qword_27CAC1810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1810);
  }

  return result;
}

uint64_t sub_216A95A74(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_216AB9718();
    v13 = v25;
    v14 = sub_217006924();
    OUTLINED_FUNCTION_2(v14);
    v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v17 + 72);
    while (1)
    {
      a1(v16, &v24);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v25 = v13;
      v18 = *(v13 + 16);
      if (v18 >= *(v13 + 24) >> 1)
      {
        sub_216AB9718();
        v13 = v25;
      }

      *(v13 + 16) = v18 + 1;
      OUTLINED_FUNCTION_236();
      (*(v7 + 32))(v13 + v19 + *(v7 + 72) * v18, v11, v22);
      v16 += v21;
      if (!--v12)
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t sub_216A95C5C(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for PlaylistAddableItem();
  v7 = OUTLINED_FUNCTION_2(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v8 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_216AB99A0();
    v9 = v19;
    v10 = sub_217006924();
    OUTLINED_FUNCTION_2(v10);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v13 + 72);
    while (1)
    {
      a1(v12, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v19 = v9;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_216AB99A0();
        v9 = v19;
      }

      *(v9 + 16) = v14 + 1;
      OUTLINED_FUNCTION_236();
      sub_216ABEA38();
      v12 += v16;
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_216A95E40(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_216AB9D1C(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 120)
  {
    memcpy(__dst, i, 0x78uLL);
    memcpy(__src, i, sizeof(__src));
    sub_2168A5278(__dst, v14);
    a1(&v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v14, __src, sizeof(v14));
    sub_2168A52D4(v14);
    v10 = v16;
    v18 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_216AB9D1C(v11 > 1, v12 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, sizeof(v14));
  sub_2168A52D4(v14);

  __break(1u);
  return result;
}

void sub_216A95FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v5 = sub_216ABE478();
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);
        sub_21700DF14();
        if (v13 >= v12 >> 1)
        {
          sub_2166F4258();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_2166F42E8(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_2166F42E8(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_216A961E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_216AB9954();
    v5 = sub_2166F42AC();
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        sub_21700DF14();
        v9 = sub_21700BA64();
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_216AB9954();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_2166F42E8(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_2166F42E8(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_216A9642C()
{
  v2 = _s7SectionVMa(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_116();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  v7 = sub_21700EA74();
  OUTLINED_FUNCTION_184_0(v7);
  OUTLINED_FUNCTION_49_19();
  sub_216ABE93C();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  sub_216ABEA38();

  v9 = OUTLINED_FUNCTION_9_46();
  sub_216888C34(v9, v10, v1, v11, v8);

  OUTLINED_FUNCTION_71_0();
  return sub_2166997CC(v12, v13);
}

uint64_t sub_216A965B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v0, v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A96690;
  OUTLINED_FUNCTION_71_0();

  return MEMORY[0x282180360](v5);
}

uint64_t sub_216A96690()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_216A967B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);
    if (*(v3 + 25))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v5 + 8);

    return v11(v10 | v9);
  }
}

uint64_t sub_216A968E4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880);
  v2[7] = swift_task_alloc();
  v3 = sub_217006FE4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A96A48, v1, 0);
}

uint64_t sub_216A96A48()
{
  v1 = v0;
  v2 = v0[9];
  v3 = v0[3];
  sub_2166C32C0();
  v4 = sub_21700E384();
  v5 = sub_21700E384();
  v6 = v3 + 64;
  OUTLINED_FUNCTION_187();
  v9 = v8 & v7;
  v11 = (63 - v10) >> 6;
  v78 = (v2 + 16);
  v79 = (v2 + 32);
  v77 = v2;
  v84 = v3;
  sub_21700DF14();
  v12 = 0;
  v82 = v3 + 64;
  v83 = v1;
  v81 = v11;
  while (2)
  {
    v80 = v4;
    v1[12] = v4;
    v13 = v12;
    while (1)
    {
      v1[13] = v5;
      if (!v9)
      {
        while (1)
        {
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v12 >= v11)
          {
            break;
          }

          v9 = *(v6 + 8 * v12);
          ++v13;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        if (!v5[2])
        {

          OUTLINED_FUNCTION_237();

          __asm { BRAA            X2, X16 }
        }

        v64 = v1[5];
        v63 = v1[6];
        sub_21700EA44();
        v65 = sub_21700EA74();
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
        v66 = swift_allocObject();
        v66[2] = 0;
        v66[3] = 0;
        v66[4] = v5;
        v66[5] = v64;
        sub_21700DF14();
        v67 = OUTLINED_FUNCTION_9_46();
        v1[14] = sub_216888EB8(v67, v68, v63, v69, v66);
        sub_2166997CC(v63, &unk_27CABFAC0);
        v70 = swift_task_alloc();
        v1[15] = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8);
        *v70 = v1;
        v70[1] = sub_216A97058;
        OUTLINED_FUNCTION_237();

        return MEMORY[0x282200460]();
      }

      v12 = v13;
LABEL_8:
      v14 = v1[7];
      OUTLINED_FUNCTION_104_7();
      v16 = v15 | (v12 << 6);
      v17 = (*(v84 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v84 + 56) + v16);
      sub_21700DF14();
      v21 = OUTLINED_FUNCTION_208_0();
      sub_216A97C48(v21, v22, v23);
      if (OUTLINED_FUNCTION_176_0(v14) != 1)
      {
        break;
      }

      sub_2166997CC(v1[7], &qword_27CAC1880);
      swift_isUniquelyReferenced_nonNull_native();
      v24 = OUTLINED_FUNCTION_208_0();
      v26 = sub_216E69548(v24, v25);
      if (__OFADD__(v5[2], (v27 & 1) == 0))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return MEMORY[0x282200460]();
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1878);
      if (sub_21700F554())
      {
        v30 = v18;
        v31 = OUTLINED_FUNCTION_208_0();
        v33 = sub_216E69548(v31, v32);
        v35 = v83;
        if ((v29 & 1) != (v34 & 1))
        {
          goto LABEL_35;
        }

        v28 = v33;
        if (v29)
        {
LABEL_16:

          *(v5[7] + v28) = v20;
          goto LABEL_17;
        }
      }

      else
      {
        v30 = v18;
        v35 = v83;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_123_4(&v5[v28 >> 6]);
      v36 = (v5[6] + 16 * v28);
      *v36 = v30;
      v36[1] = v19;
      *(v5[7] + v28) = v20;
      v37 = v5[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_40;
      }

      v5[2] = v39;
LABEL_17:
      v13 = v12;
      v11 = v81;
      v6 = v82;
      v1 = v35;
    }

    v41 = v1[10];
    v40 = v1[11];
    v42 = v1[8];
    v76 = *v79;
    (*v79)(v40, v1[7], v42);
    (*v78)(v41, v40, v42);
    swift_isUniquelyReferenced_nonNull_native();
    v43 = OUTLINED_FUNCTION_208_0();
    sub_216E69548(v43, v44);
    OUTLINED_FUNCTION_146_2();
    if (__OFADD__(v47, v48))
    {
      goto LABEL_41;
    }

    v49 = v45;
    v50 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1888);
    if ((sub_21700F554() & 1) == 0)
    {
      v51 = v18;
      v1 = v83;
LABEL_23:
      v56 = v1[8];
      if (v50)
      {
        v57 = v1[10];

        v4 = v80;
        (*(v77 + 40))(v80[7] + *(v77 + 72) * v49, v57, v56);
        OUTLINED_FUNCTION_225_0();
        v58();
      }

      else
      {
        v4 = v80;
        OUTLINED_FUNCTION_123_4(&v80[v49 >> 6]);
        v59 = (v80[6] + 16 * v49);
        *v59 = v51;
        v59[1] = v19;
        v76(v80[7] + *(v77 + 72) * v49);
        OUTLINED_FUNCTION_225_0();
        v60();
        v61 = v80[2];
        v38 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v38)
        {
          goto LABEL_42;
        }

        v80[2] = v62;
      }

      v11 = v81;
      v6 = v82;
      continue;
    }

    break;
  }

  v51 = v18;
  v52 = OUTLINED_FUNCTION_208_0();
  v54 = sub_216E69548(v52, v53);
  v1 = v83;
  if ((v50 & 1) == (v55 & 1))
  {
    v49 = v54;
    goto LABEL_23;
  }

LABEL_35:
  OUTLINED_FUNCTION_237();

  return sub_21700F824();
}

uint64_t sub_216A97058()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_216A97158, v2, 0);
}

uint64_t sub_216A97158()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[4];
  v2 = sub_216A97844(v0[2], v0[12]);

  v3 = *(v1 + 128);
  v4 = v0[4];
  if (v3)
  {

    *(v4 + 112) = v2;
    sub_21700DF14();
  }

  else
  {

    sub_216A978C8(v2);
  }

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_216A97258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880);
  v4[4] = swift_task_alloc();
  v5 = sub_217006FE4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A9735C, 0, 0);
}

void sub_216A9735C()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_2166C32C0();
  sub_21700E384();
  v3 = v2 + 64;
  OUTLINED_FUNCTION_187();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  v42 = (v1 + 32);
  v43 = v9;
  v41 = v1;
  v45 = v2;
  sub_21700DF14();
  v10 = 0;
  v44 = v2 + 64;
LABEL_2:
  v11 = v10;
  if (!v6)
  {
    goto LABEL_4;
  }

  do
  {
    v10 = v11;
LABEL_7:
    v12 = v0[5];
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = (*(v45 + 48) + 16 * (v13 | (v10 << 6)));
    v16 = *v14;
    v15 = v14[1];
    sub_21700DF14();
    sub_216A97730();
    v17 = OUTLINED_FUNCTION_49_1();
    if (__swift_getEnumTagSinglePayload(v17, v18, v12) != 1)
    {
      v39 = *v42;
      v40 = v0;
      (*v42)(v0[8], v0[4], v0[5]);
      v20 = OUTLINED_FUNCTION_227();
      v21(v20);
      swift_isUniquelyReferenced_nonNull_native();
      sub_216E69548(v16, v15);
      OUTLINED_FUNCTION_146_2();
      if (__OFADD__(v24, v25))
      {
        __break(1u);
      }

      else
      {
        v26 = v22;
        v27 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1888);
        if (sub_21700F554())
        {
          v28 = sub_216E69548(v16, v15);
          if ((v27 & 1) != (v29 & 1))
          {
LABEL_23:

            sub_21700F824();
            return;
          }

          v26 = v28;
        }

        v30 = v40[5];
        if (v27)
        {
          v31 = v40[7];

          (*(v41 + 40))(v43[7] + *(v41 + 72) * v26, v31, v30);
          OUTLINED_FUNCTION_225_0();
          v32();
LABEL_18:
          v0 = v40;
          v3 = v44;
          goto LABEL_2;
        }

        OUTLINED_FUNCTION_123_4(&v43[v26 >> 6]);
        v33 = (v43[6] + 16 * v26);
        *v33 = v16;
        v33[1] = v15;
        v39(v43[7] + *(v41 + 72) * v26);
        OUTLINED_FUNCTION_225_0();
        v34();
        v35 = v43[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (!v36)
        {
          v43[2] = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return;
    }

    v19 = v0[4];

    sub_2166997CC(v19, &qword_27CAC1880);
    v11 = v10;
    v3 = v44;
  }

  while (v6);
  while (1)
  {
LABEL_4:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v11;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_43_4();

  v38(v43);
}

uint64_t sub_216A97730()
{
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_217006FE4();
    sub_2170068F4();
    sub_2170068E4();
    v1 = MEMORY[0x277D2AB38];
    sub_2166C53B4(&qword_27CABDBF8, MEMORY[0x277D2AB38]);
    sub_2166C53B4(&qword_27CAC18C0, v1);
    sub_2170068D4();
  }

  return result;
}

uint64_t sub_216A97844(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_216ABC524(a1, sub_216ABC4B4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_216A978C8(uint64_t a1)
{
  v44 = sub_217006FE4();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1890);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v34[1] = v2 + 16;
  v42 = (v2 + 32);
  v37 = v2;
  v38 = a1;
  v40 = (v2 + 8);
  result = sub_21700DF14();
  v15 = 0;
  v35 = v9;
  v36 = v8;
  v39 = v13;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v16 << 6);
      v20 = v37;
      v21 = (*(v38 + 48) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = v43;
      v25 = v44;
      (*(v37 + 16))(v43, *(v38 + 56) + *(v37 + 72) * v19, v44);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898);
      v27 = *(v26 + 48);
      v28 = v41;
      *v41 = v22;
      *(v28 + 1) = v23;
      v29 = v28;
      (*(v20 + 32))(&v28[v27], v24, v25);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v26);
      sub_21700DF14();
      v9 = v35;
      v8 = v36;
LABEL_11:
      sub_216ABE580();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898);
      if (__swift_getEnumTagSinglePayload(v8, 1, v30) == 1)
      {
      }

      v31 = v43;
      v32 = v44;
      (*v42)(v43, &v8[*(v30 + 48)], v44);
      sub_216AB7690();

      result = (*v40)(v31, v32);
      v13 = v39;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v41;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1898);
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v33);
        v12 = 0;
        goto LABEL_11;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_216A97C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 128) == 1)
  {
    v7 = *(v3 + 112);
    if (*(v7 + 16))
    {
      sub_21700DF14();
      v8 = sub_216E69548(a1, a2);
      if (v9)
      {
        v10 = v8;
        v11 = *(v7 + 56);
        v12 = sub_217006FE4();
        (*(*(v12 - 8) + 16))(a3, v11 + *(*(v12 - 8) + 72) * v10, v12);
        v13 = a3;
        v14 = 0;
        v15 = v12;
      }

      else
      {
        v15 = sub_217006FE4();
        v13 = a3;
        v14 = 1;
      }

      __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
    }

    else
    {
      v17 = sub_217006FE4();

      return __swift_storeEnumTagSinglePayload(a3, 1, 1, v17);
    }
  }

  else
  {

    sub_216A97DC0();
  }
}

uint64_t sub_216A97E28()
{
  OUTLINED_FUNCTION_33();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  OUTLINED_FUNCTION_36(v3);
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for SocialBadgingMap();
  v1[8] = v4;
  OUTLINED_FUNCTION_36(v4);
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216A97EE0()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v0[6] + 48);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  sub_216ABE890();
  os_unfair_lock_unlock(*(v3 + 16));

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2166997CC(v0[7], &qword_27CAC1228);

    OUTLINED_FUNCTION_43_4();

    return v5(0);
  }

  else
  {
    v7 = v0[5];
    OUTLINED_FUNCTION_138_4();
    sub_216ABEA38();
    memcpy(v10, v7, sizeof(v10));
    v0[10] = sub_216AB4FE4(v10);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_216A980A4;
    v9 = OUTLINED_FUNCTION_170_0();

    return sub_216AB503C(v9);
  }
}

uint64_t sub_216A980A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A981A4()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_216AB406C(*(v0 + 96));
  OUTLINED_FUNCTION_27_30();
  sub_216ABE994();

  OUTLINED_FUNCTION_43_4();

  return v2(v1);
}

uint64_t sub_216A98228(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98240()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98338()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9841C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A984AC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F5A0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    v17[1] = sub_216A98628;
    OUTLINED_FUNCTION_47_8();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A98628()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A98720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98738()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98830()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A98914()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A989A4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F618);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A98B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98B28()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A98C20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A98D04()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A98D94()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F708);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A98F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A98F18()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A99010()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A990F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99184()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F720);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A992F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A99308()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A99400()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A994E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99574()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB98);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A996E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A996F8()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A997F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A998D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99964()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FBA8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A99AD0(__int16 a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A99AE8()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_206();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_88_9(v3);
    *v4 = v5;
    v13 = OUTLINED_FUNCTION_23_32(v4, v6, v7, v8, v9, v10, v11, v12, v14, v15);

    return v13();
  }
}

uint64_t sub_216A99BEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A99CD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A99D60()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_47_8();
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA88);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 64) = v16;
    *v16 = v17;
    v16[1] = sub_216A99EE4;
    OUTLINED_FUNCTION_47_8();
  }

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216A99EE4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 82) = v1 & 1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A99FEC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 82);

  return v1(v2);
}

uint64_t sub_216A9A04C()
{
  OUTLINED_FUNCTION_33();

  v0 = OUTLINED_FUNCTION_95_11();

  return v1(v0);
}

uint64_t sub_216A9A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A0C0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A1B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9A29C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9A32C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB10);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A4B0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A5A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9A68C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9A71C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FB28);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9A8A0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9A998()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9AA7C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9AB0C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA68);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9AC78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9AD98()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_102_9(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_99_0(v2);

    return sub_216A4F6C8();
  }

  else
  {
    v0[8] = *(v0[6] + 40);
    OUTLINED_FUNCTION_206();
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v13 = OUTLINED_FUNCTION_23_32(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);

    return v13();
  }
}

uint64_t sub_216A9AEA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9AF88()
{
  OUTLINED_FUNCTION_31();
  v0[8] = *(v0[6] + 40);
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_23_32(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_216A9B024()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9B0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 88) = v17;
    *v17 = v18;
    v17[1] = sub_216A9B1A4;
    OUTLINED_FUNCTION_47_8();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9B1A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A9B29C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A9B2F4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A9B350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9B368()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9B460()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9B544()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9B5D4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F990);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9B740()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A9B838()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A9B894(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9B8AC()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9B9A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9BA88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9BB18()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F7C0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9BC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9BC9C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9BD94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9BE78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9BF08()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA48);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9C074(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 88) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C090()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C188()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9C26C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9C2FC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F920);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_124_6(v17);
    OUTLINED_FUNCTION_47_8();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9C46C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 88) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C488()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C580()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9C664()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9C6F4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F880);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 72) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_124_6(v17);
    OUTLINED_FUNCTION_47_8();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_216A9C864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9C87C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9C974()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9CA58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9CAE8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F788);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9CC6C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9CD64()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9CE48()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9CED8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FBE8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9D05C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9D154()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9D238()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9D2C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9E8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D434()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9D538()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_216A9D598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9D5B0()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9D6A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9D78C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9D81C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F9C0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9D988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9DA6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9DAFC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9DC00()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_43_4();

  return v2(v1 & 0x1010101);
}

uint64_t sub_216A9DC64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9DC7C()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9DD74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9DE58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_102_9(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9DEE8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F818);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_133_1(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17_43(v18);
    OUTLINED_FUNCTION_47_8();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9E054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9E158(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_216A9E174()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_216A9E26C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9E350()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9E3E0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA18);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    v18[1] = sub_216A9E56C;
    OUTLINED_FUNCTION_47_8();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_216A9E56C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_45_20();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 97) = v1;
  }

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A9E670()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 97);

  return v1(v2);
}

uint64_t sub_216A9E6D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A9E7B4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25_29();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_75_11(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_23_32(v1, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_216A9E844(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216A9E868, 0, 0);
}

uint64_t sub_216A9E868()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_193_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_128_0(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_102_9(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}
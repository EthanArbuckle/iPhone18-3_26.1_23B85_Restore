_BYTE *sub_1D534B7EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_23_61()
{
  strcpy((v0 - 96), "AssetFlavors(");
  *(v0 - 82) = -4864;

  return type metadata accessor for AssetFlavors();
}

uint64_t Playlist.Collaborator.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v13 = sub_1D560D708();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  *a2 = v13;
  a2[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = a2 + *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for Playlist.Collaborator()
{
  result = qword_1EDD5F158;
  if (!qword_1EDD5F158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Playlist.Collaborator.role.getter()
{
  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_9_98();
  sub_1D534F400(v1, v0);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v2, v0);

  return sub_1D560EC28();
}

uint64_t Playlist.Collaborator.isLightweight.getter()
{
  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v1, v0);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v2, v0);
  sub_1D560EC28();
  return v4 & 1;
}

uint64_t sub_1D534BD00(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v5, v2);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t sub_1D534BDEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v5, v2);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t Playlist.Collaborator.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Playlist.Collaborator.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Collaborator() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1D534BF70(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  a3(0);
  sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v6, type metadata accessor for Playlist.Collaborator);

  return sub_1D560EC28();
}

uint64_t static Playlist.Collaborator.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Playlist.Collaborator() + 20);

  return sub_1D5611A78();
}

uint64_t Playlist.Collaborator.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_107();
  sub_1D534F400(v4, v5);
  return sub_1D5614CB8();
}

uint64_t Playlist.Collaborator.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_107();
  sub_1D534F400(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D534C1F0(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D534F400(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D534C294@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Collaborator.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaborator.subscript.getter(void *a1)
{
  return sub_1D534C2FC(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D534C2FC(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v5, v1);
  OUTLINED_FUNCTION_13_81(&unk_1EDD52D30);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D534C2FC(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v5, v2);
  OUTLINED_FUNCTION_13_81(&unk_1EDD52D30);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D534C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  v12 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D534C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  v14 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D534C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  v14 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D534C8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D534F400(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C520 = v0;
  return result;
}

uint64_t sub_1D534C94C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C528 = v0;
  return result;
}

uint64_t sub_1D534C9BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C530 = v0;
  return result;
}

uint64_t sub_1D534CA3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C538 = v0;
  return result;
}

uint64_t sub_1D534CAB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C540 = v0;
  return result;
}

uint64_t sub_1D534CB2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C548 = v0;
  return result;
}

uint64_t sub_1D534CBA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C550 = v0;
  return result;
}

uint64_t sub_1D534CC10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_95();
  sub_1D534F400(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C558 = v0;
  return result;
}

uint64_t sub_1D534CC9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D534F448();
  sub_1D560D168();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC7F46F8 = v0;
  return result;
}

uint64_t sub_1D534CD08@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaborator.role.getter();
  *a1 = v3;
  return result;
}

uint64_t static PartialMusicProperty<A>.role.getter()
{
  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }
}

uint64_t Playlist.Collaborator.init(from:)(uint64_t *a1)
{
  type metadata accessor for Playlist.Collaborator();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_8_103();
  sub_1D534F400(v3, v4);
  OUTLINED_FUNCTION_7_110();
  sub_1D534F400(v5, v1);
  OUTLINED_FUNCTION_12_79(&qword_1EC7F4748);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Collaborator.encode(to:)()
{
  type metadata accessor for Playlist.Collaborator();
  OUTLINED_FUNCTION_8_103();
  sub_1D534F400(v1, v2);
  OUTLINED_FUNCTION_7_110();
  sub_1D534F400(v3, v0);
  OUTLINED_FUNCTION_12_79(&qword_1EC7F4748);
  return sub_1D5612688();
}

uint64_t Playlist.Collaborator.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  v9 = v2 + 1;
  v3 = *v0;
  v4 = v0[1];
  v5 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v5);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EC7E9438 != -1)
  {
    OUTLINED_FUNCTION_19_5();
  }

  OUTLINED_FUNCTION_9_98();
  sub_1D534F400(v6, v1);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v7, v1);
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9460 != -1)
  {
    OUTLINED_FUNCTION_13_7();
  }

  OUTLINED_FUNCTION_19_69();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_19_69();
  MEMORY[0x1DA6EAC70](0x203A656C6F72202CLL, 0xE800000000000000);
  sub_1D5615D48();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_19_69();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v9;
}

unint64_t Playlist.Collaborator.debugDescription.getter()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33[-v4];
  v6 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_9_0();
  v36 = 0xD000000000000016;
  v37 = v14;
  strcpy(v35, "\n  id: ");
  BYTE1(v35[1]) = 0;
  WORD1(v35[1]) = 0;
  HIDWORD(v35[1]) = -402653184;
  v15 = *v0;
  v16 = v0[1];
  v17 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v17);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v35[0], v35[1]);

  if (qword_1EC7E9438 != -1)
  {
    OUTLINED_FUNCTION_19_5();
  }

  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v18, v1);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v19, v1);
  OUTLINED_FUNCTION_16_8();
  v20 = v35[1];
  if (v35[1])
  {
    v21 = v35[0];
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    strcpy(v35, ",\n  handle: ");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x1DA6EAC70](v21, v20);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_20_73();
  }

  if (qword_1EC7E9460 != -1)
  {
    OUTLINED_FUNCTION_13_7();
  }

  OUTLINED_FUNCTION_16_8();
  v22 = v35[1];
  if (v35[1])
  {
    v23 = v35[0];
    strcpy(v35, ",\n  name: ");
    HIDWORD(v35[1]) = -352321536;
    MEMORY[0x1DA6EAC70](v23, v22);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_20_73();
  }

  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  OUTLINED_FUNCTION_16_8();
  v24 = v35[0];
  if (LOBYTE(v35[0]) != 2)
  {
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x656C6F7220200A2CLL, 0xEA0000000000203ALL);
    v34 = v24 & 1;
    sub_1D5615D48();
    OUTLINED_FUNCTION_20_73();
  }

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v35[0] = 0xD000000000000013;
  v35[1] = v25;
  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_16_8();
  if (v34 == 2 || (v34 & 1) == 0)
  {
    v26 = 0xE500000000000000;
    v27 = 0x65736C6166;
  }

  else
  {
    v26 = 0xE400000000000000;
    v27 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v27, v26);

  OUTLINED_FUNCTION_20_73();

  if (qword_1EC7E9468 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D534D7FC(v5);
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v35[0] = 0xD000000000000017;
    v35[1] = v28;
    OUTLINED_FUNCTION_11_95();
    sub_1D534F400(v29, v30);
    v31 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v31);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v35[0], v35[1]);

    (*(v9 + 8))(v13, v6);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v36;
}

uint64_t sub_1D534D7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D534D86C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F4700 = v4;
  return result;
}

uint64_t sub_1D534D9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E69751F0], v0);
  qword_1EC7F4708 = v4;
  return result;
}

uint64_t sub_1D534DADC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F4710);
  __swift_project_value_buffer(v0, qword_1EC7F4710);
  type metadata accessor for Playlist.Collaborator();
  sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  return sub_1D560D978();
}

uint64_t sub_1D534DBB4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F4728);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F4728);
  if (qword_1EC7E9488 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F4710);
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D534DCB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656E696F6ALL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E696F4A746F6ELL && a2 == 0xE900000000000064;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D534DE0C(char a1)
{
  result = 1953722216;
  switch(a1)
  {
    case 1:
      result = 0x64656E696F6ALL;
      break;
    case 2:
      result = 0x656E696F4A746F6ELL;
      break;
    case 3:
      result = 0x676E69646E6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D534DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D534DCB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D534DEB8(uint64_t a1)
{
  v2 = sub_1D534E4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DEF4(uint64_t a1)
{
  v2 = sub_1D534E4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534DF30(uint64_t a1)
{
  v2 = sub_1D534E628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DF6C(uint64_t a1)
{
  v2 = sub_1D534E628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534DFA8(uint64_t a1)
{
  v2 = sub_1D534E5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DFE4(uint64_t a1)
{
  v2 = sub_1D534E5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534E020(uint64_t a1)
{
  v2 = sub_1D534E580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534E05C(uint64_t a1)
{
  v2 = sub_1D534E580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534E098(uint64_t a1)
{
  v2 = sub_1D534E52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534E0D4(uint64_t a1)
{
  v2 = sub_1D534E52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Playlist.Collaborator.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4750, &qword_1D5654FF8);
  v4 = OUTLINED_FUNCTION_4(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4758, &qword_1D5655000);
  v11 = OUTLINED_FUNCTION_4(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4760, &qword_1D5655008);
  v18 = OUTLINED_FUNCTION_4(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4768, &qword_1D5655010);
  v25 = OUTLINED_FUNCTION_4(v24);
  v46 = v26;
  v47 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4770, &qword_1D5655018);
  OUTLINED_FUNCTION_4(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v46 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D534E4D8();
  sub_1D56163D8();
  switch(v40)
  {
    case 1:
      v58 = 1;
      sub_1D534E5D4();
      v42 = v48;
      OUTLINED_FUNCTION_17_74();
      v44 = v49;
      v43 = v50;
      goto LABEL_6;
    case 2:
      v59 = 2;
      sub_1D534E580();
      v42 = v51;
      OUTLINED_FUNCTION_17_74();
      v44 = v52;
      v43 = v53;
      goto LABEL_6;
    case 3:
      v60 = 3;
      sub_1D534E52C();
      v42 = v54;
      OUTLINED_FUNCTION_17_74();
      v44 = v55;
      v43 = v56;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v57 = 0;
      sub_1D534E628();
      sub_1D5616018();
      (*(v46 + 8))(v31, v47);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_1D534E4D8()
{
  result = qword_1EC7F4778;
  if (!qword_1EC7F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4778);
  }

  return result;
}

unint64_t sub_1D534E52C()
{
  result = qword_1EC7F4780;
  if (!qword_1EC7F4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4780);
  }

  return result;
}

unint64_t sub_1D534E580()
{
  result = qword_1EC7F4788;
  if (!qword_1EC7F4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4788);
  }

  return result;
}

unint64_t sub_1D534E5D4()
{
  result = qword_1EC7F4790;
  if (!qword_1EC7F4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4790);
  }

  return result;
}

unint64_t sub_1D534E628()
{
  result = qword_1EC7F4798;
  if (!qword_1EC7F4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4798);
  }

  return result;
}

uint64_t Playlist.Collaborator.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t Playlist.Collaborator.Status.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47A0, &qword_1D5655020);
  OUTLINED_FUNCTION_4(v84);
  v80 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v83 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47A8, &qword_1D5655028);
  v9 = OUTLINED_FUNCTION_4(v8);
  v77 = v10;
  v78 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v79 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47B0, &qword_1D5655030);
  v16 = OUTLINED_FUNCTION_4(v15);
  v75 = v17;
  v76 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47B8, &qword_1D5655038);
  OUTLINED_FUNCTION_4(v23);
  v74 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v68 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47C0, &unk_1D5655040);
  OUTLINED_FUNCTION_4(v30);
  v82 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v68 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D534E4D8();
  v38 = v85;
  sub_1D5616398();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v71 = v23;
  v72 = v29;
  v73 = v22;
  v39 = v83;
  v40 = v84;
  v85 = a1;
  v41 = v36;
  v42 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v42, 0);
  if (v45 == v46 >> 1)
  {
    goto LABEL_8;
  }

  v70 = 0;
  if (v45 >= (v46 >> 1))
  {
    __break(1u);
    return result;
  }

  v47 = *(v44 + v45);
  sub_1D4FE35EC(v45 + 1, v46 >> 1, result, v44, v45, v46);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_8:
    v57 = v82;
    v58 = sub_1D5615C18();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v60 = &type metadata for Playlist.Collaborator.Status;
    sub_1D5615F28();
    sub_1D5615BF8();
    v62 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v58);
    (*(v63 + 104))(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v41, v30);
    a1 = v85;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v81;
  v53 = v82;
  v69 = v47;
  v54 = v47;
  v55 = v80;
  switch(v54)
  {
    case 1:
      v87 = 1;
      sub_1D534E5D4();
      v64 = v73;
      OUTLINED_FUNCTION_21_4();
      swift_unknownObjectRelease();
      v66 = v75;
      v65 = v76;
      goto LABEL_18;
    case 2:
      v88 = 2;
      sub_1D534E580();
      v64 = v79;
      OUTLINED_FUNCTION_21_4();
      swift_unknownObjectRelease();
      v66 = v77;
      v65 = v78;
LABEL_18:
      (*(v66 + 8))(v64, v65);
      goto LABEL_19;
    case 3:
      v89 = 3;
      sub_1D534E52C();
      v67 = v70;
      sub_1D5615F18();
      if (v67)
      {
        (*(v53 + 8))(v41, v30);
        swift_unknownObjectRelease();
        a1 = v85;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v55 + 8))(v39, v40);
LABEL_19:
      (*(v53 + 8))(v41, v30);
      *v52 = v69;
      result = __swift_destroy_boxed_opaque_existential_1(v85);
      break;
    default:
      v86 = 0;
      sub_1D534E628();
      v56 = v72;
      OUTLINED_FUNCTION_21_4();
      swift_unknownObjectRelease();
      (*(v74 + 8))(v56, v71);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_1D534EE14()
{
  result = qword_1EC7F47C8;
  if (!qword_1EC7F47C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F47D0, &qword_1D5655318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47C8);
  }

  return result;
}

unint64_t sub_1D534EE7C()
{
  result = qword_1EC7F47D8;
  if (!qword_1EC7F47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47D8);
  }

  return result;
}

_BYTE *sub_1D534EF1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D534F03C()
{
  result = qword_1EC7F47E0;
  if (!qword_1EC7F47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47E0);
  }

  return result;
}

unint64_t sub_1D534F094()
{
  result = qword_1EC7F47E8;
  if (!qword_1EC7F47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47E8);
  }

  return result;
}

unint64_t sub_1D534F0EC()
{
  result = qword_1EC7F47F0;
  if (!qword_1EC7F47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47F0);
  }

  return result;
}

unint64_t sub_1D534F144()
{
  result = qword_1EC7F47F8;
  if (!qword_1EC7F47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47F8);
  }

  return result;
}

unint64_t sub_1D534F19C()
{
  result = qword_1EC7F4800;
  if (!qword_1EC7F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4800);
  }

  return result;
}

unint64_t sub_1D534F1F4()
{
  result = qword_1EC7F4808;
  if (!qword_1EC7F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4808);
  }

  return result;
}

unint64_t sub_1D534F24C()
{
  result = qword_1EC7F4810;
  if (!qword_1EC7F4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4810);
  }

  return result;
}

unint64_t sub_1D534F2A4()
{
  result = qword_1EC7F4818;
  if (!qword_1EC7F4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4818);
  }

  return result;
}

unint64_t sub_1D534F2FC()
{
  result = qword_1EC7F4820;
  if (!qword_1EC7F4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4820);
  }

  return result;
}

unint64_t sub_1D534F354()
{
  result = qword_1EC7F4828;
  if (!qword_1EC7F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4828);
  }

  return result;
}

unint64_t sub_1D534F3AC()
{
  result = qword_1EC7F4830;
  if (!qword_1EC7F4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4830);
  }

  return result;
}

uint64_t sub_1D534F400(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D534F448()
{
  result = qword_1EC7F4838;
  if (!qword_1EC7F4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4838);
  }

  return result;
}

void OUTLINED_FUNCTION_20_73()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_28_55()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t type metadata accessor for StorePlatformTrack()
{
  result = qword_1EC7F4840;
  if (!qword_1EC7F4840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D534F524()
{
  result = type metadata accessor for StorePlatformMusicVideo();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StorePlatformSong();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D534F59C()
{
  result = qword_1EC7F4850;
  if (!qword_1EC7F4850)
  {
    type metadata accessor for StorePlatformTrack();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4850);
  }

  return result;
}

uint64_t sub_1D534F5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformSong();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = type metadata accessor for StorePlatformMusicVideo();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  v18 = type metadata accessor for StorePlatformTrack();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v43 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F0, &unk_1D561F0D0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v43 - v32;
  v34 = *(v31 + 56);
  sub_1D53502E0(a1, &v43 - v32);
  sub_1D53502E0(a2, &v33[v34]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D53502E0(v33, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_187();
      sub_1D5350280(&v33[v34], v10, v35);
      v36 = sub_1D50F5698(v24, v10);
      sub_1D53503AC(v10, type metadata accessor for StorePlatformSong);
      v37 = v24;
      v38 = type metadata accessor for StorePlatformSong;
LABEL_9:
      sub_1D53503AC(v37, v38);
      sub_1D53503AC(v33, type metadata accessor for StorePlatformTrack);
      return v36 & 1;
    }

    OUTLINED_FUNCTION_4_111();
    v40 = v24;
  }

  else
  {
    sub_1D53502E0(v33, v26);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_143();
      sub_1D5350280(&v33[v34], v17, v41);
      v36 = sub_1D5382590(v26, v17);
      sub_1D53503AC(v17, type metadata accessor for StorePlatformMusicVideo);
      v37 = v26;
      v38 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_148();
    v40 = v26;
  }

  sub_1D53503AC(v40, v39);
  sub_1D5350344(v33);
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1D534F8A8()
{
  v1 = type metadata accessor for StorePlatformSong();
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = type metadata accessor for StorePlatformMusicVideo();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for StorePlatformTrack();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_1D53502E0(v0, v20 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_187();
    sub_1D5350280(v21, v7, v22);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D50F7428();
    OUTLINED_FUNCTION_4_111();
    v24 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_143();
    sub_1D5350280(v21, v14, v25);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5383FB0();
    OUTLINED_FUNCTION_3_148();
    v24 = v14;
  }

  return sub_1D53503AC(v24, v23);
}

uint64_t sub_1D534FA0C()
{
  sub_1D56162D8();
  sub_1D534F8A8();
  return sub_1D5616328();
}

uint64_t sub_1D534FA58()
{
  sub_1D56162D8();
  sub_1D534F8A8();
  return sub_1D5616328();
}

uint64_t sub_1D534FA94(uint64_t a1)
{
  v2 = sub_1D535022C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534FAD0(uint64_t a1)
{
  v2 = sub_1D535022C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534FB0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v75 = sub_1D5615C08();
  v3 = OUTLINED_FUNCTION_4(v75);
  v72 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v71 = v8 - v7;
  v9 = type metadata accessor for StorePlatformSong();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v73 = v14 - v13;
  v15 = type metadata accessor for StorePlatformMusicVideo();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4858, &qword_1D5655AE0);
  v23 = OUTLINED_FUNCTION_4(v22);
  v74 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v68 - v27;
  v29 = type metadata accessor for StorePlatformTrack();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  v36 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535022C();
  v38 = v78;
  sub_1D5616398();
  if (!v38)
  {
    v39 = v21;
    v70 = v35;
    v78 = v29;
    v40 = v75;
    v41 = v76;
    v45 = sub_1D5615F98();
    if (v45 == 0x646956636973756DLL && v44 == 0xEA00000000006F65)
    {

      v47 = v41;
    }

    else
    {
      v68 = v45;
      v69 = v44;
      v47 = v41;
      if ((sub_1D5616168() & 1) == 0)
      {
        if (v68 == 1735290739 && v69 == 0xE400000000000000)
        {

          v55 = v73;
        }

        else
        {
          v54 = sub_1D5616168();
          v55 = v73;
          if ((v54 & 1) == 0)
          {
            v76 = v28;
            v61 = v37[4];
            __swift_project_boxed_opaque_existential_1(v37, v37[3]);
            sub_1D5616348();
            v77[0] = 0;
            v77[1] = 0xE000000000000000;
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D567E3C0);
            MEMORY[0x1DA6EAC70](v68, v69);

            MEMORY[0x1DA6EAC70](0xD000000000000025, 0x80000001D568BD40);
            v62 = v71;
            sub_1D5615BF8();
            v63 = sub_1D5615C18();
            swift_allocError();
            v65 = v64;
            v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
            *v65 = v78;
            v67 = v72;
            (*(v72 + 16))(v65 + v66, v62, v40);
            (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
            swift_willThrow();
            (*(v67 + 8))(v62, v40);
            v42 = OUTLINED_FUNCTION_7_111();
            v43(v42);
            return __swift_destroy_boxed_opaque_existential_1(v37);
          }
        }

        sub_1D4E628D4(v37, v77);
        sub_1D50F3F80(v77, v55);
        v56 = OUTLINED_FUNCTION_7_111();
        v57(v56);
        OUTLINED_FUNCTION_0_187();
        v59 = v55;
        v51 = v70;
        sub_1D5350280(v59, v70, v60);
        goto LABEL_11;
      }
    }

    sub_1D4E628D4(v37, v77);
    sub_1D53810C4(v77, v39);
    v48 = OUTLINED_FUNCTION_7_111();
    v49(v48);
    OUTLINED_FUNCTION_1_143();
    v50 = v39;
    v51 = v70;
    sub_1D5350280(v50, v70, v52);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1D5350280(v51, v47, type metadata accessor for StorePlatformTrack);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D5350088(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StorePlatformSong();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for StorePlatformMusicVideo();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for StorePlatformTrack();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1D53502E0(v2, v23 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_187();
    sub_1D5350280(v24, v10, v25);
    sub_1D50F4FDC(a1);
    OUTLINED_FUNCTION_4_111();
    v27 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_1_143();
    sub_1D5350280(v24, v17, v28);
    sub_1D5381FAC(a1);
    OUTLINED_FUNCTION_3_148();
    v27 = v17;
  }

  return sub_1D53503AC(v27, v26);
}

unint64_t sub_1D535022C()
{
  result = qword_1EC7F4860;
  if (!qword_1EC7F4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4860);
  }

  return result;
}

uint64_t sub_1D5350280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D53502E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformTrack();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5350344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F0, &unk_1D561F0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D53503AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformTrack.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D53504B4()
{
  result = qword_1EC7F4868;
  if (!qword_1EC7F4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4868);
  }

  return result;
}

unint64_t sub_1D535050C()
{
  result = qword_1EC7F4870;
  if (!qword_1EC7F4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4870);
  }

  return result;
}

unint64_t sub_1D5350564()
{
  result = qword_1EC7F4878;
  if (!qword_1EC7F4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4878);
  }

  return result;
}

uint64_t EditorialElementLink.Target.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t EditorialElementLink.Target.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D5615C08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v23);
  v10 = sub_1D50F8E84(v23);
  if (!v2)
  {
    v12 = v10;
    v13 = v11;
    v14 = v10 == 0x6C616E7265747865 && v11 == 0xE800000000000000;
    if (v14 || (OUTLINED_FUNCTION_0_188() & 1) != 0)
    {

      v15 = 0;
    }

    else
    {
      v17 = v12 == 0x6C616E7265746E69 && v13 == 0xE800000000000000;
      if (!v17 && (OUTLINED_FUNCTION_0_188() & 1) == 0)
      {
        v18 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1D5616348();
        v23[0] = 0;
        v23[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD00000000000003FLL, 0x80000001D568BD70);
        MEMORY[0x1DA6EAC70](v12, v13);

        MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
        sub_1D5615BF8();
        v19 = sub_1D5615C18();
        swift_allocError();
        v21 = v20;
        (*(v6 + 16))(v20, v9, v5);
        (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v15 = 1;
    }

    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialElementLink.Target.encode(to:)(void *a1)
{
  *v1;
  sub_1D50F8F30(a1);
}

unint64_t sub_1D5350990()
{
  result = qword_1EC7F4880;
  if (!qword_1EC7F4880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4888, &qword_1D5655C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4880);
  }

  return result;
}

unint64_t sub_1D53509F8()
{
  result = qword_1EC7F4890;
  if (!qword_1EC7F4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4890);
  }

  return result;
}

_BYTE *_s6TargetOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5350B28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655E28);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5350BD4()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x6E6F697463616552, 0xE800000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5350C9C()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_10_94();
  v8 = OUTLINED_FUNCTION_44_33();
  MEMORY[0x1DA6EAC70](v8, 0xED00006F65646956);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5350D64()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](1835365449, 0xE400000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5350E24()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_10_94();
  v8 = OUTLINED_FUNCTION_44_33();
  MEMORY[0x1DA6EAC70](v8, 0xED00006F69647541);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5350EEC()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x766F4D636973754DLL, 0xEA00000000006569);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5350FB8()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x726F62616C6C6F43, 0xEC000000726F7461);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5351088()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568BE00);
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568BE30);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5351168()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x6E6950636973754DLL, 0xE800000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D5351230()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x646F736970455654, 0xE900000000000065);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108();
}

uint64_t sub_1D53512E0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655E18);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D535136C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655E08);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D53513F8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DF8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5351484()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DE8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5351510()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DD8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D535159C(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, void), void *a5)
{
  v6 = v5;
  v70 = a3;
  v80 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  v17 = a2;
  v77 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v71 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = sub_1D560E4F8();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D4E62628(v17);
  v81 = v6;
  v79 = v17;
  v76 = v11;
  v72 = v16;
  if (v32 || (v33 = a5[12], v34 = OUTLINED_FUNCTION_32_48(), (v36 = v35(v34)) == 0))
  {
  }

  else
  {
    v79 = v36;
  }

  v37 = v77;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v40 = swift_getAssociatedConformanceWitness();
  v82 = v37;
  v83 = v39;
  v73 = v40;
  v74 = AssociatedConformanceWitness;
  v84 = AssociatedConformanceWitness;
  v85 = v40;
  type metadata accessor for LibraryRequestConfigurationParameters();
  (*(v26 + 16))(v31, v70, v24);
  v41 = swift_allocObject();
  v41[2] = a4;
  v41[3] = a5;
  v41[4] = v81;
  v42 = sub_1D50B8CD8(v31, sub_1D5355374, v41);
  v43 = a5[10];
  v44 = OUTLINED_FUNCTION_32_48();
  v45(v44);
  v46 = *(*v42 + qword_1EDD76EF0 + 32);
  OUTLINED_FUNCTION_51_32();
  (*(v71 + 40))(&v42[v46], v23, v37);
  swift_endAccess();
  v47 = a5[11];
  v48 = v72;
  v49 = OUTLINED_FUNCTION_32_48();
  v50(v49);
  v51 = *(*v42 + qword_1EDD76EF0 + 40);
  OUTLINED_FUNCTION_51_32();
  v52 = *(v76 + 5);
  v76 = v42;
  v52(&v42[v51], v48, v39);
  swift_endAccess();
  result = sub_1D4E62628(v80);
  v75 = a4;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v54 = 0;
    v71 = a5[8];
    v72 = a5 + 8;
    v70 = v80 & 0xC000000000000001;
    do
    {
      v55 = result;
      if (v70)
      {
        v56 = MEMORY[0x1DA6EB9B0](v54, v80);
      }

      else
      {
        v56 = *(v80 + 8 * v54 + 32);
      }

      ++v54;
      v57 = v75;
      v88 = (v71)(v75, a5);
      MEMORY[0x1EEE9AC00](v88);
      *(&v69 - 4) = v57;
      *(&v69 - 3) = a5;
      v59 = v76;
      v58 = v77;
      *(&v69 - 2) = v56;
      *(&v69 - 1) = v59;
      v60 = a5[2];
      v82 = v57;
      v83 = v58;
      v84 = AssociatedTypeWitness;
      v85 = v60;
      v86 = v74;
      v87 = v73;
      sub_1D5612EE8();
      sub_1D56152D8();
      OUTLINED_FUNCTION_0_1();
      swift_getWitnessTable();
      sub_1D5615098();

      result = v55;
    }

    while (v55 != v54);
  }

  v82 = MEMORY[0x1E69E7CC0];
  v61 = v79;
  result = sub_1D4E62628(v79);
  if (!result)
  {
LABEL_19:

    v68 = v76;

    sub_1D5613418();

    return v68;
  }

  if (result >= 1)
  {
    v62 = 0;
    v80 = a5;
    v77 = a5[9];
    AssociatedTypeWitness = (a5 + 9);
    v74 = v61 & 0xC000000000000001;
    v63 = v75;
    do
    {
      v64 = result;
      if (v74)
      {
        v65 = MEMORY[0x1DA6EB9B0](v62, v61);
      }

      else
      {
        v65 = *(v61 + 8 * v62 + 32);
      }

      v66 = v80;
      ++v62;
      v88 = v77(v63, v80);
      MEMORY[0x1EEE9AC00](v88);
      *(&v69 - 4) = v63;
      *(&v69 - 3) = v66;
      *(&v69 - 2) = v65;
      *(&v69 - 1) = &v82;
      v67 = v66[2];
      sub_1D5612D78();
      sub_1D56152D8();
      OUTLINED_FUNCTION_0_1();
      swift_getWitnessTable();
      sub_1D5615098();

      result = v64;
      v61 = v79;
    }

    while (v64 != v62);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D5351C78()
{
  OUTLINED_FUNCTION_80();
  v1[57] = v27;
  v1[58] = v0;
  v1[55] = v25;
  v1[56] = v26;
  v1[53] = v23;
  v1[54] = v24;
  v1[51] = v2;
  v1[52] = v3;
  v1[49] = v4;
  v1[50] = v5;
  v1[47] = v6;
  v1[48] = v7;
  v1[45] = v8;
  v1[46] = v9;
  OUTLINED_FUNCTION_1_0();
  v1[59] = v10;
  v12 = *(v11 + 64);
  v1[60] = OUTLINED_FUNCTION_167();
  v1[61] = swift_task_alloc();
  v13 = *(*(v26 + 16) + 8);
  v14 = sub_1D5613288();
  v1[62] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[63] = v15;
  v17 = *(v16 + 64) + 15;
  v1[64] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D5351DB4()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = *(v6 + 8);
  sub_1D5612B18();
  v0[65] = sub_1D560D0C8();
  v0[66] = sub_1D560CDE8();
  OUTLINED_FUNCTION_102();
  v0[67] = sub_1D5615D38();
  OUTLINED_FUNCTION_102();
  v0[68] = sub_1D5615D38();
  OUTLINED_FUNCTION_102();
  v0[69] = sub_1D5615D38();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[70] = v8;
  *v8 = v9;
  v8[1] = sub_1D5351EFC;
  v10 = v0[64];
  v11 = v0[58];
  v12 = v0[56];
  v13 = v0[53];
  v14 = v0[54];

  return sub_1D5352D64();
}

uint64_t sub_1D5351EFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[71] = v0;

  if (!v0)
  {
    v9 = v3[69];
    v10 = v3[68];
    v11 = v3[67];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1D5352018()
{
  v58 = (v0 + 16);
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 408);
  v6 = *(v0 + 392);
  OUTLINED_FUNCTION_17_75();
  v7 = sub_1D5615D38();
  v8 = sub_1D5613268();
  sub_1D4EF3050(v8);
  OUTLINED_FUNCTION_17_75();
  v9 = sub_1D5615D38();
  sub_1D4EF3050(v9);
  v10 = v7;
  v11 = sub_1D4E62628(v7);
  if (v11)
  {
    v12 = v11;
    if (v11 < 1)
    {
      __break(1u);
LABEL_22:
      MEMORY[0x1EEDD1548](v11);
      return;
    }

    v13 = 0;
    v57 = *(v0 + 448);
    v14 = (*(v0 + 472) + 8);
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = *(v0 + 512);
      v18 = *(v0 + 488);
      v17 = *(v0 + 496);
      ++v13;
      v19 = *(v0 + 432);
      sub_1D5613258();
      v20 = *(*(v57 + 24) + 8);
      sub_1D5612B18();
      (*v14)(v18, v19);
      v21 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_1D5612218();
      v22 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v58, *(v0 + 40));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    while (v12 != v13);
  }

  v23 = *(v0 + 520);
  v24 = *(v0 + 512);
  v25 = *(v0 + 496);
  *(v0 + 336) = sub_1D56151C8();
  v26 = sub_1D5613278();
  v27 = sub_1D4E62628(v26);

  if (v27)
  {
    v28 = *(v0 + 512);
    v29 = *(v0 + 464);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
    v30 = swift_task_alloc();
    *(v0 + 576) = v30;
    v31 = *(v0 + 448);
    v32 = *(v0 + 416);
    *(v30 + 16) = *(v0 + 432);
    *(v30 + 32) = v31;
    *(v30 + 48) = v28;
    *(v30 + 56) = v29;
    *(v30 + 64) = v32;
    *(v30 + 80) = v58;
    *(v30 + 88) = v0 + 336;
    v33 = *(MEMORY[0x1E69E88A0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 584) = v34;
    *v34 = v0;
    v34[1] = sub_1D535259C;
    OUTLINED_FUNCTION_41_43();

    MEMORY[0x1EEE6DD58]();
    return;
  }

  v36 = *(v0 + 472);
  v37 = *(v0 + 480);
  v38 = *(v0 + 464);
  v39 = *(v0 + 432);
  v40 = *(v0 + 376);
  v41 = *(v0 + 384);
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(v58, v42);
  *(v0 + 160) = v42;
  *(v0 + 168) = *(v43 + 8);
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_24_0(v42);
  (*(v44 + 16))();
  *(v0 + 120) = v40;
  *(v0 + 128) = v41;
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  sub_1D56131E8();
  (*(v36 + 16))(v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_44();
    v45 = *(MEMORY[0x1E69769F0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 608) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_12_80(v46);
    OUTLINED_FUNCTION_41_43();

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_37_38();
  sub_1D4E7661C(v0 + 216, &qword_1EC7F48A0, &unk_1D5655E60);
  v49 = *(v0 + 336);
  *(v0 + 344) = v49;
  sub_1D56152D8();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  if (sub_1D5615678())
  {
    v50 = *(v0 + 504);
    v51 = *(v0 + 512);
    v53 = *(v0 + 488);
    v52 = *(v0 + 496);
    v54 = *(v0 + 480);
    sub_1D4E48324((v0 + 96), *(v0 + 360));

    (*(v50 + 8))(v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v58);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_41_43();

    v55();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D568BE50);
    *(v0 + 352) = v49;
    OUTLINED_FUNCTION_20_74();
    swift_getWitnessTable();
    sub_1D5616148();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_108();
    OUTLINED_FUNCTION_41_43();
  }
}

uint64_t sub_1D535259C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 592) = v0;

  if (!v0)
  {
    v9 = *(v3 + 576);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D53526A0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[54];
  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v0[20] = v7;
  v0[21] = *(v8 + 8);
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  OUTLINED_FUNCTION_24_0(v7);
  (*(v9 + 16))();
  v0[15] = v5;
  v0[16] = v6;
  __swift_allocate_boxed_opaque_existential_0(v0 + 12);
  sub_1D56131E8();
  v10 = *(v2 + 16);
  OUTLINED_FUNCTION_17_75();
  v11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_44();
    v12 = *(MEMORY[0x1E69769F0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[76] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_12_80(v13);

    return MEMORY[0x1EEDD1548](v15);
  }

  else
  {
    OUTLINED_FUNCTION_37_38();
    sub_1D4E7661C((v0 + 27), &qword_1EC7F48A0, &unk_1D5655E60);
    v16 = v0[42];
    v0[43] = v16;
    sub_1D56152D8();
    OUTLINED_FUNCTION_1_11();
    swift_getWitnessTable();
    if (sub_1D5615678())
    {
      v18 = v0[63];
      v17 = v0[64];
      OUTLINED_FUNCTION_50_31();

      v19 = *(v18 + 8);
      v20 = OUTLINED_FUNCTION_222();
      v21(v20);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      OUTLINED_FUNCTION_22_1();

      return v22();
    }

    else
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D568BE50);
      v0[44] = v16;
      OUTLINED_FUNCTION_20_74();
      swift_getWitnessTable();
      sub_1D5616148();
      OUTLINED_FUNCTION_33_0();
      return OUTLINED_FUNCTION_6_108();
    }
  }
}

uint64_t sub_1D5352988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 616) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5352A84()
{
  OUTLINED_FUNCTION_91();
  if (*(v0 + 320))
  {
    sub_1D4E48324((v0 + 296), v0 + 256);
  }

  else
  {
    sub_1D4E628D4(v0 + 96, v0 + 256);
    if (*(v0 + 320))
    {
      sub_1D4E7661C(v0 + 296, &qword_1EC7F4008, &qword_1D5651CC8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1D4E48324((v0 + 256), v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 600);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  OUTLINED_FUNCTION_50_31();

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_128();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_22_1();

  return v7();
}

uint64_t sub_1D5352B8C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];

  v4 = v0[71];
  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D5352C1C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[72];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];

  v5 = v0[42];

  (*(v3 + 8))(v2, v4);
  v6 = v0[74];
  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D5352CBC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[75];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_128();
  v7(v6);
  v8 = v0[77];
  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D5352D64()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[29] = v4;
  v1[30] = v0;
  v1[27] = v5;
  v1[28] = v2;
  v1[25] = v6;
  v1[26] = v7;
  v1[23] = v8;
  v1[24] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48A8, qword_1D5655E80) - 8) + 64);
  v1[31] = OUTLINED_FUNCTION_167();
  v1[32] = swift_task_alloc();
  v11 = *(v3 - 8);
  v1[33] = v11;
  v12 = *(v11 + 64);
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v13 = sub_1D5613528();
  v1[39] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[40] = v14;
  v16 = *(v15 + 64);
  v1[41] = OUTLINED_FUNCTION_167();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4030, &qword_1D5651D08) - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v18 = sub_1D5613158();
  v1[49] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[50] = v19;
  v21 = *(v20 + 64);
  v1[51] = OUTLINED_FUNCTION_167();
  v1[52] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D5352FA8()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 176);
  v3 = sub_1D4E62628(*(v0 + 200));
  if (v3)
  {
    v10 = v3;
    if (v3 >= 1)
    {
      v11 = 0;
      v158 = (v0 + 16);
      v177 = (v0 + 56);
      v12 = *(v0 + 232);
      v155 = (v12 + 112);
      v184 = *(v12 + 120);
      v13 = *(v0 + 200);
      v180 = v13 & 0xC000000000000001;
      v147 = v13 + 32;
      v14 = *(v0 + 400);
      v152 = (v14 + 32);
      v15 = *(v0 + 320);
      v146 = (v14 + 16);
      v148 = (v15 + 16);
      v149 = v15;
      v150 = (v14 + 8);
      v166 = (v15 + 32);
      v169 = v3;
      v174 = (*(v0 + 264) + 16);
      v161 = v1;
      while (1)
      {
        if (v180)
        {
          v16 = MEMORY[0x1DA6EB9B0](v11, *(v0 + 200));
        }

        else
        {
          v16 = *(v147 + 8 * v11);
        }

        v17 = *(v0 + 384);
        v18 = *(v0 + 392);
        v19 = *(v0 + 224);
        v20 = *(v0 + 232);
        v184(v16);
        if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
        {
          sub_1D4E7661C(*(v0 + 384), &qword_1EC7F4030, &qword_1D5651D08);
        }

        else
        {
          v21 = *(v0 + 224);
          v22 = *(v0 + 232);
          (*v152)(*(v0 + 416), *(v0 + 384), *(v0 + 392));
          (*v155)(v16, v21, v22);
          if (v23)
          {
            v24 = *(v0 + 368);
            v25 = *(v0 + 376);
            v26 = v1;
            v27 = *(v0 + 312);
            (*v146)(*(v0 + 408), *(v0 + 416), *(v0 + 392));

            sub_1D5613508();
            v28 = *v148;
            OUTLINED_FUNCTION_17_75();
            v29 = v26;
            v30();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = *(v26 + 16);
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFFC34();
              v29 = v62;
            }

            v32 = *(v29 + 16);
            v31 = *(v29 + 24);
            if (v32 >= v31 >> 1)
            {
              OUTLINED_FUNCTION_93_1(v31);
              sub_1D4EFFC34();
              v29 = v63;
            }

            v33 = *(v0 + 416);
            v34 = *(v0 + 392);
            v36 = *(v0 + 368);
            v35 = *(v0 + 376);
            v37 = *(v0 + 312);

            (*(v149 + 8))(v35, v37);
            v38 = *v150;
            v39 = OUTLINED_FUNCTION_128();
            v40(v39);
            v1 = v29;
            *(v29 + 16) = v32 + 1;
            OUTLINED_FUNCTION_34_50();
            (*(v149 + 32))(v29 + v41 + *(v149 + 72) * v32, v36, v37);
            goto LABEL_28;
          }

          (*v150)(*(v0 + 416), *(v0 + 392));
        }

        (*v174)(*(v0 + 304), *(v0 + 240), *(v0 + 224));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
        OUTLINED_FUNCTION_102();
        if ((swift_dynamicCast() & 1) == 0)
        {
          *(v0 + 88) = 0;
          *v177 = 0u;
          *(v0 + 72) = 0u;
          sub_1D4E7661C(v177, &qword_1EC7F48A0, &unk_1D5655E60);
          goto LABEL_20;
        }

        v42 = v1;
        v43 = *(v0 + 312);
        v44 = *(v0 + 256);
        sub_1D4E48324(v177, v158);
        v45 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1(v158, *(v0 + 40));
        sub_1D5613228();
        if (__swift_getEnumTagSinglePayload(v44, 1, v43) == 1)
        {
          sub_1D4E7661C(*(v0 + 256), &qword_1EC7F48A8, qword_1D5655E80);
          __swift_destroy_boxed_opaque_existential_1(v158);
          v1 = v42;
          v10 = v169;
          v2 = (v0 + 176);
LABEL_20:

          MEMORY[0x1DA6EAF30](v46);
          v47 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
          {
            OUTLINED_FUNCTION_93_1(v47);
            sub_1D56151B8();
          }

          sub_1D56151F8();

          v161 = *v2;
          goto LABEL_29;
        }

        v48 = *(v0 + 352);
        v49 = *v166;
        (*v166)(*(v0 + 360), *(v0 + 256), *(v0 + 312));
        v50 = *v148;
        v51 = OUTLINED_FUNCTION_71();
        v52(v51);
        v53 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = *(v42 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFFC34();
          v53 = v65;
        }

        v55 = *(v53 + 16);
        v54 = *(v53 + 24);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v54);
          sub_1D4EFFC34();
          v53 = v66;
        }

        v57 = *(v0 + 352);
        v56 = *(v0 + 360);
        v58 = *(v0 + 312);

        (*(v149 + 8))(v56, v58);
        *(v53 + 16) = v55 + 1;
        OUTLINED_FUNCTION_34_50();
        v60 = v57;
        v1 = v53;
        v49(v53 + v59 + *(v149 + 72) * v55, v60, v58);
        __swift_destroy_boxed_opaque_existential_1(v158);
LABEL_28:
        v10 = v169;
        v2 = (v0 + 176);
LABEL_29:
        if (v10 == ++v11)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_79;
  }

  v161 = v1;
LABEL_32:
  *(v0 + 424) = v161;
  *(v0 + 432) = v161;
  v3 = sub_1D4E62628(*(v0 + 192));
  v175 = v1;
  if (v3)
  {
    v167 = v3;
    if (v3 < 1)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v67 = 0;
    v68 = v2 - 10;
    v69 = (v2 - 5);
    v185 = *(*(v0 + 232) + 112);
    v70 = *(v0 + 320);
    v71 = *(v0 + 192);
    v181 = v71 & 0xC000000000000001;
    v170 = (*(v0 + 264) + 16);
    v172 = v71 + 32;
    v162 = (v70 + 32);
    v153 = (v70 + 16);
    v72 = MEMORY[0x1E69E7CC0];
    v156 = v70;
    v73 = v3;
    v178 = v68;
    v164 = v69;
    do
    {
      if (v181)
      {
        v74 = MEMORY[0x1DA6EB9B0](v67, *(v0 + 192));
      }

      else
      {
        v74 = *(v172 + 8 * v67);
      }

      v75 = *(v0 + 224);
      v76 = *(v0 + 232);
      v77 = v185(v74);
      if (v78)
      {
        v79 = v77;
        v80 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = *(v72 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v72 = v103;
        }

        v82 = *(v72 + 16);
        v81 = *(v72 + 24);
        if (v82 >= v81 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v81);
          sub_1D4EFF8E4();
          v72 = v104;
        }

        *(v72 + 16) = v82 + 1;
        v83 = v72 + 16 * v82;
        *(v83 + 32) = v79;
        *(v83 + 40) = v80;
        v68 = v178;
      }

      else
      {
        (*v170)(*(v0 + 296), *(v0 + 240), *(v0 + 224));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
        OUTLINED_FUNCTION_102();
        if (swift_dynamicCast())
        {
          v84 = *(v0 + 312);
          v85 = v69;
          v86 = v68;
          v87 = *(v0 + 248);
          sub_1D4E48324(v85, v86);
          v88 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1(v86, *(v0 + 120));
          sub_1D5613228();
          if (__swift_getEnumTagSinglePayload(v87, 1, v84) == 1)
          {
            v89 = *(v0 + 248);

            sub_1D4E7661C(v89, &qword_1EC7F48A8, qword_1D5655E80);
            __swift_destroy_boxed_opaque_existential_1(v86);
            v68 = v86;
            v69 = v164;
            v73 = v167;
          }

          else
          {
            v90 = *(v0 + 336);
            v91 = *v162;
            (*v162)(*(v0 + 344), *(v0 + 248), *(v0 + 312));
            v92 = *v153;
            v93 = OUTLINED_FUNCTION_71();
            v94(v93);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v105 = *(v175 + 16);
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFFC34();
              v175 = v106;
            }

            v69 = v164;
            v96 = *(v175 + 16);
            v95 = *(v175 + 24);
            v159 = v91;
            if (v96 >= v95 >> 1)
            {
              OUTLINED_FUNCTION_93_1(v95);
              sub_1D4EFFC34();
              v175 = v107;
            }

            v98 = *(v0 + 336);
            v97 = *(v0 + 344);
            v99 = *(v0 + 312);

            (*(v156 + 8))(v97, v99);
            *(v175 + 16) = v96 + 1;
            OUTLINED_FUNCTION_34_50();
            v159(v101 + v100 + *(v156 + 72) * v96, v98, v99);
            v68 = v178;
            __swift_destroy_boxed_opaque_existential_1(v178);
            v73 = v167;
          }
        }

        else
        {

          *(v69 + 32) = 0;
          *v69 = 0u;
          *(v69 + 16) = 0u;
          sub_1D4E7661C(v69, &qword_1EC7F48A0, &unk_1D5655E60);
        }
      }

      ++v67;
    }

    while (v73 != v67);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 440) = v175;
  v3 = sub_1D4E62628(*(v0 + 208));
  if (v3)
  {
    v108 = v3;
    if (v3 < 1)
    {
LABEL_80:
      __break(1u);
      return MEMORY[0x1EEDCEAA8](v3, v4, v5, v6, v7, v8, v9);
    }

    v109 = 0;
    v110 = *(v0 + 208);
    v186 = v110 & 0xC000000000000001;
    v188 = *(*(v0 + 232) + 112);
    v182 = v110 + 32;
    do
    {
      if (v186)
      {
        v111 = MEMORY[0x1DA6EB9B0](v109, *(v0 + 208));
      }

      else
      {
        v111 = *(v182 + 8 * v109);
      }

      v112 = *(v0 + 224);
      v113 = *(v0 + 232);
      v114 = v188(v111);
      if (v115)
      {
        v116 = v114;
        v117 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = *(v72 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v72 = v122;
        }

        v119 = *(v72 + 16);
        v118 = *(v72 + 24);
        if (v119 >= v118 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v118);
          sub_1D4EFF8E4();
          v72 = v123;
        }

        *(v72 + 16) = v119 + 1;
        v120 = v72 + 16 * v119;
        *(v120 + 32) = v116;
        *(v120 + 40) = v117;
      }

      else
      {
      }

      ++v109;
    }

    while (v108 != v109);
  }

  *(v0 + 448) = v72;
  v124 = *(v0 + 288);
  v125 = *(v0 + 264);
  v126 = *(v0 + 240);
  v127 = *(v0 + 224);
  v128 = *(v125 + 16);
  *(v0 + 456) = v128;
  *(v0 + 464) = (v125 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v128(v124, v126, v127);
  if (*(v72 + 16) || *(v175 + 16))
  {
    v129 = *(v0 + 232);
    v130 = *(MEMORY[0x1E6975080] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 472) = v131;
    v9 = *(v129 + 16);
    *v131 = v132;
    v131[1] = sub_1D5353C38;
    v3 = *(v0 + 280);
    v4 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v5 = v72;
    v6 = v175;

    return MEMORY[0x1EEDCEAA8](v3, v4, v5, v6, v7, v8, v9);
  }

  v133 = *(v0 + 448);

  v134 = *(v0 + 464);
  v136 = *(v0 + 432);
  v135 = *(v0 + 440);
  v137 = *(v0 + 416);
  v151 = *(v0 + 408);
  v154 = *(v0 + 384);
  v157 = *(v0 + 376);
  v160 = *(v0 + 368);
  v163 = *(v0 + 360);
  v165 = *(v0 + 352);
  v168 = *(v0 + 344);
  v171 = *(v0 + 336);
  v173 = *(v0 + 328);
  v176 = *(v0 + 304);
  v138 = *(v0 + 288);
  v179 = *(v0 + 296);
  v183 = *(v0 + 280);
  v139 = *(v0 + 264);
  v187 = *(v0 + 256);
  v189 = *(v0 + 248);
  v141 = *(v0 + 224);
  v140 = *(v0 + 232);
  v142 = *(v0 + 184);
  (*(v0 + 456))(*(v0 + 272), v138, v141);
  v143 = *(*(v140 + 16) + 8);
  sub_1D5613248();
  (*(v139 + 8))(v138, v141);

  OUTLINED_FUNCTION_22_1();

  return v144();
}

uint64_t sub_1D5353C38()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[60] = v0;

  if (v0)
  {
    v9 = v3[56];
    v10 = v3[53];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5353D48()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_222();
  v8(v7);
  (*(v4 + 32))(v3, v2, v5);
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = *(v0 + 440);
    v11 = *(v0 + 320);
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D5615CB8();
    v14 = *(v11 + 16);
    v12 = v11 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v17 = *(v0 + 328);
      v18 = *(v0 + 312);
      v19 = OUTLINED_FUNCTION_222();
      v13(v19);
      sub_1D5613518();
      (*(v12 - 8))(v17, v18);
      sub_1D5615C88();
      v20 = *(v47 + 16);
      sub_1D5615CC8();
      sub_1D5615CD8();
      sub_1D5615C98();
      v15 += v16;
      --v9;
    }

    while (v9);
  }

  v21 = *(v0 + 448);

  v22 = *(v0 + 464);
  v23 = *(v0 + 432);
  v24 = *(v0 + 440);
  v33 = *(v0 + 416);
  v34 = *(v0 + 408);
  v35 = *(v0 + 384);
  v36 = *(v0 + 376);
  v37 = *(v0 + 368);
  v38 = *(v0 + 360);
  v39 = *(v0 + 352);
  v40 = *(v0 + 344);
  v41 = *(v0 + 336);
  v42 = *(v0 + 328);
  v43 = *(v0 + 304);
  v44 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 264);
  v45 = *(v0 + 256);
  v46 = *(v0 + 248);
  v28 = *(v0 + 224);
  v27 = *(v0 + 232);
  v29 = *(v0 + 184);
  (*(v0 + 456))(*(v0 + 272), v25, v28);
  v30 = *(*(v27 + 16) + 8);
  sub_1D5613248();
  (*(v26 + 8))(v25, v28);

  OUTLINED_FUNCTION_22_1();

  return v31();
}

uint64_t sub_1D5354000()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];
  v13 = v0[43];
  v14 = v0[42];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[35];
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[31];
  (*(v0[33] + 8))(v0[36], v0[28]);

  OUTLINED_FUNCTION_55();
  v9 = v0[60];
  OUTLINED_FUNCTION_41_43();

  return v10();
}

uint64_t sub_1D5354154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v20;
  *(v8 + 312) = v19;
  *(v8 + 296) = a8;
  *(v8 + 304) = v18;
  *(v8 + 280) = a6;
  *(v8 + 288) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  v9 = sub_1D560CBA8();
  *(v8 + 336) = v9;
  v10 = *(v9 - 8);
  *(v8 + 344) = v10;
  *(v8 + 352) = *(v10 + 64);
  *(v8 + 360) = swift_task_alloc();
  v11 = *(v18 - 8);
  *(v8 + 368) = v11;
  *(v8 + 376) = *(v11 + 64);
  *(v8 + 384) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4038, &qword_1D5651DD8);
  *(v8 + 408) = v13;
  v14 = *(v13 - 8);
  *(v8 + 416) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5354348, 0, 0);
}

uint64_t sub_1D5354348()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = *(*(*(v0 + 320) + 16) + 8);
  sub_1D5613288();
  v39 = sub_1D5613278();
  v4 = sub_1D4E62628(v39);
  v38 = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DAD8](v4);
    }

    v5 = 0;
    v37 = *(v0 + 368);
    v35 = *(v0 + 376) + 7;
    v34 = *(v0 + 352) + 7;
    v36 = *(v0 + 344);
    v33 = **(v0 + 248);
    do
    {
      v48 = v5;
      if ((v39 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1DA6EB9B0](v5, v39);
      }

      else
      {
        v47 = *(v39 + 8 * v5 + 32);
      }

      v6 = *(v0 + 400);
      v46 = *(v0 + 392);
      v7 = *(v0 + 384);
      v8 = *(v0 + 360);
      v41 = v8;
      v9 = *(v0 + 336);
      v40 = v9;
      v10 = *(v0 + 272);
      v45 = *(v0 + 280);
      v11 = *(v0 + 264);
      v42 = sub_1D5615458();
      v43 = *(v0 + 304);
      v44 = *(v0 + 320);
      v12 = *(v0 + 304);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v42);
      (*(v37 + 16))(v7, v11, v12);
      (*(v36 + 16))(v8, v10, v9);
      v13 = (*(v37 + 80) + 64) & ~*(v37 + 80);
      v14 = (v35 + v13) & 0xFFFFFFFFFFFFFFF8;
      v15 = (*(v36 + 80) + v14 + 8) & ~*(v36 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      *(v16 + 32) = v43;
      *(v16 + 48) = v44;
      (*(v37 + 32))(v16 + v13, v7, v12);
      *(v16 + v14) = v47;
      (*(v36 + 32))(v16 + v15, v41, v40);
      *(v16 + ((v34 + v15) & 0xFFFFFFFFFFFFFFF8)) = v45;
      sub_1D5155C5C(v6, v46);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v46, 1, v42);

      v18 = *(v0 + 392);
      if (v6 == 1)
      {
        sub_1D4E7661C(*(v0 + 392), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        OUTLINED_FUNCTION_24_0(v42);
        (*(v19 + 8))(v18, v42);
      }

      if (*v17)
      {
        v20 = *(v16 + 24);
        v21 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_1D5615338();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
      v25 = v24 | v22;
      if (v24 | v22)
      {
        v25 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v22;
        *(v0 + 168) = v24;
      }

      ++v5;
      v26 = *(v0 + 400);
      *(v0 + 208) = 1;
      *(v0 + 216) = v25;
      *(v0 + 224) = v33;
      swift_task_create();

      sub_1D4E7661C(v26, &qword_1EC7EB710, &qword_1D561F440);
    }

    while (v38 != v48 + 1);
  }

  v27 = *(v0 + 424);
  v28 = **(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_128();
  sub_1D5615508();
  v29 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 432) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_15_79(v30);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DAD8](v4);
}

uint64_t sub_1D5354804()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 432);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5354900()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (*(v0 + 16))
  {
    *(v0 + 136) = *(v0 + 56);
    *(v0 + 120) = *(v0 + 40);
    *(v0 + 104) = *(v0 + 24);
    if (*(v0 + 128))
    {
      v1 = *(v0 + 288);
      sub_1D4E48324((v0 + 104), v0 + 64);
      v2 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
      *(v0 + 200) = v2;
      __swift_allocate_boxed_opaque_existential_0((v0 + 176));
      OUTLINED_FUNCTION_24_0(v2);
      (*(v3 + 16))();
      v4 = *(v1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    }

    else
    {
      v16 = *(v0 + 312);
      sub_1D4E7661C(v0 + 104, &qword_1EC7F0900, &qword_1D563A1B0);
      sub_1D560D0C8();
      OUTLINED_FUNCTION_222();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = *(v0 + 296);
        *(v0 + 240) = v17;
        sub_1D56152D8();
        sub_1D5615218();
      }

      else
      {
      }
    }

    v19 = *(MEMORY[0x1E69E8710] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 432) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_15_79();
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DAD8](v22);
  }

  else
  {
    v5 = *(v0 + 424);
    OUTLINED_FUNCTION_49_31(*(v0 + 416));
    v6(v5);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1D5354B1C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[53];
  OUTLINED_FUNCTION_49_31(v0[52]);
  v2(v1);
  v3 = v0[29];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5354BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a1;
  v8[8] = a5;
  v13 = *(v19 + 128);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v8[9] = v15;
  *v15 = v8;
  v15[1] = sub_1D5354D18;

  return (v17)(v8 + 2, a5, a6, a7, a8);
}

uint64_t sub_1D5354D18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5354E14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 48);
  *(v1 + 24) = v3;
  *(v1 + 8) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D5354E94()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DC8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5354F20()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DB8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5354FAC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338(dword_1D5655DA8);
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t (*sub_1D5355038(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_1D4EFE858(a3);
  sub_1D4F0B2FC(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x1DA6EB9B0](a2, a3);
  }

  *a1 = v8;
  return sub_1D53550C4;
}

uint64_t sub_1D53550CC(uint64_t a1, uint64_t a2)
{
  v16 = *(v2 + 16);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = *(v2 + 80);
  v10 = *(v2 + 88);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32(v12);
  *v13 = v14;
  v13[1] = sub_1D4E73560;

  return sub_1D5354154(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1D53551C4(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 32);
  v20 = *(v1 + 40);
  v5 = *(v1 + 56);
  OUTLINED_FUNCTION_1_0();
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_1D560CBA8();
  OUTLINED_FUNCTION_69(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v9);
  v17 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D4E73560;

  return sub_1D5354BC0(a1, v14, v15, v1 + v7, v16, v1 + v12, v17, v4);
}

uint64_t sub_1D5355374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return (*(v5 + 104))(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_33_48()
{

  JUMPOUT(0x1DA6EAC70);
}

double OUTLINED_FUNCTION_37_38()
{
  v1 = *(v0 + 520);
  result = 0.0;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_32()
{

  return swift_beginAccess();
}

uint64_t _s14TransientEntryVMa()
{
  result = qword_1EDD5B0B0;
  if (!qword_1EDD5B0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D535549C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15PersistentEntryVMa();
  v5 = *(v4 + 20);
  if ((sub_1D560D8C8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v7 = *(_s14TransientEntryVMa() + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1D4F3C87C(v8);
}

uint64_t sub_1D535553C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736973726570 && a2 == 0xEF7972746E45746ELL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5355608(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x6574736973726570;
  }
}

uint64_t sub_1D5355648(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48D0, &qword_1D5655FA0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535614C();
  sub_1D56163D8();
  v17[15] = 0;
  _s15PersistentEntryVMa();
  OUTLINED_FUNCTION_1_145();
  sub_1D5356368(v14, v15);
  sub_1D56160C8();
  if (!v2)
  {
    v17[14] = *(v3 + *(_s14TransientEntryVMa() + 20));
    v17[13] = 1;
    sub_1D5356314();
    sub_1D56160C8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1D53557FC()
{
  v1 = v0;
  sub_1D560D838();
  OUTLINED_FUNCTION_0_190();
  sub_1D5356368(v2, v3);
  sub_1D5614CB8();
  v4 = _s15PersistentEntryVMa();
  v5 = *(v4 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_3_150();
  sub_1D5356368(v6, v7);
  sub_1D5614CB8();
  v8 = *(v4 + 24);
  sub_1D560C328();
  OUTLINED_FUNCTION_2_143();
  sub_1D5356368(v9, v10);
  sub_1D5614CB8();
  *(v1 + *(_s14TransientEntryVMa() + 20));
  sub_1D5614E28();
}

uint64_t sub_1D5355978()
{
  v1 = v0;
  sub_1D56162D8();
  sub_1D560D838();
  OUTLINED_FUNCTION_0_190();
  sub_1D5356368(v2, v3);
  sub_1D5614CB8();
  v4 = _s15PersistentEntryVMa();
  v5 = *(v4 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_3_150();
  sub_1D5356368(v6, v7);
  sub_1D5614CB8();
  v8 = *(v4 + 24);
  sub_1D560C328();
  OUTLINED_FUNCTION_2_143();
  sub_1D5356368(v9, v10);
  sub_1D5614CB8();
  v11 = _s14TransientEntryVMa();
  *(v1 + *(v11 + 20));
  *(v1 + *(v11 + 20));
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5355AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = _s15PersistentEntryVMa();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48B8, &qword_1D5655F98);
  v10 = OUTLINED_FUNCTION_4(v9);
  v30 = v11;
  v31 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v16 = _s14TransientEntryVMa();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535614C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v21;
  v24 = v30;
  v35 = 0;
  OUTLINED_FUNCTION_1_145();
  sub_1D5356368(v25, v26);
  v27 = v31;
  sub_1D5615FD8();
  sub_1D53561A0(v32, v23);
  v33 = 1;
  sub_1D5356204();
  sub_1D5615FD8();
  (*(v24 + 8))(v15, v27);
  *(v23 + *(v16 + 20)) = v34;
  sub_1D5356258(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D53562BC(v23, _s14TransientEntryVMa);
}

uint64_t sub_1D5355DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D535553C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5355DF4(uint64_t a1)
{
  v2 = sub_1D535614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5355E30(uint64_t a1)
{
  v2 = sub_1D535614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5355EA8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D56162D8();
  sub_1D560D838();
  sub_1D5356368(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  sub_1D5614CB8();
  v5 = _s15PersistentEntryVMa();
  v6 = *(v5 + 20);
  sub_1D560D9A8();
  sub_1D5356368(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
  sub_1D5614CB8();
  v7 = *(v5 + 24);
  sub_1D560C328();
  sub_1D5356368(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  *(v4 + *(a2 + 20));
  *(v4 + *(a2 + 20));
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5356058()
{
  v0 = *(_s15PersistentEntryVMa() + 24);

  return sub_1D560C2D8();
}

uint64_t sub_1D53560D8()
{
  result = _s15PersistentEntryVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D535614C()
{
  result = qword_1EC7F48C0;
  if (!qword_1EC7F48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48C0);
  }

  return result;
}

uint64_t sub_1D53561A0(uint64_t a1, uint64_t a2)
{
  v4 = _s15PersistentEntryVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5356204()
{
  result = qword_1EC7F48C8;
  if (!qword_1EC7F48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48C8);
  }

  return result;
}

uint64_t sub_1D5356258(uint64_t a1, uint64_t a2)
{
  v4 = _s14TransientEntryVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53562BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D5356314()
{
  result = qword_1EC7F48D8;
  if (!qword_1EC7F48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48D8);
  }

  return result;
}

uint64_t sub_1D5356368(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s14TransientEntryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5356490()
{
  result = qword_1EC7F48E0;
  if (!qword_1EC7F48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48E0);
  }

  return result;
}

unint64_t sub_1D53564E8()
{
  result = qword_1EC7F48E8;
  if (!qword_1EC7F48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48E8);
  }

  return result;
}

unint64_t sub_1D5356540()
{
  result = qword_1EC7F48F0;
  if (!qword_1EC7F48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F48F0);
  }

  return result;
}

uint64_t sub_1D5356598()
{
  v0 = sub_1D5613578();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v1 + 104))(v4, *MEMORY[0x1E6976A78], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D560CD48();
  sub_1D5356FE8(&qword_1EC7ECE40, MEMORY[0x1E6976BE8]);
  sub_1D560DA98();
  (*(v1 + 8))(v4, v0);
  v10 = sub_1D56123B8();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t MusicTopPlayedSongsResponse.songs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicTopPlayedSongsResponse.== infix(_:_:)()
{
  sub_1D5613838();
  OUTLINED_FUNCTION_0_191();
  sub_1D5356FE8(v0, v1);

  return sub_1D560DAA8();
}

uint64_t MusicTopPlayedSongsResponse.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();

  return sub_1D5614CB8();
}

uint64_t MusicTopPlayedSongsResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicTopPlayedSongsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41[6] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v9 = OUTLINED_FUNCTION_4(v8);
  v40 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v36 - v13;
  v15 = sub_1D560CD48();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v41);
  v23 = sub_1D502A3D0(v41);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v23;
  v36[2] = 0;
  v37 = v18;
  v38 = v14;
  v39 = v8;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5616378();
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36[1] = sub_1D5616368();
  if (v25 < 2)
  {
  }

  v28 = v15;
  v29 = v7;
  v30 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v31 = v38;
  sub_1D56123A8();
  v32 = sub_1D560CD98();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v32);
  sub_1D5613838();
  OUTLINED_FUNCTION_0_191();
  sub_1D5356FE8(v33, v34);
  v35 = v39;
  sub_1D5612368();

  sub_1D4E6C9CC(v29, &qword_1EC7EA7D8, &unk_1D561E8B0);
  (*(v40 + 8))(v31, v35);
  (*(v30 + 8))(v22, v28);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicTopPlayedSongsResponse.encode(to:)(void *a1)
{
  v3 = sub_1D560CD48();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v12 = sub_1D5356598();
  if (v1)
  {
    sub_1D4E6C9CC(v15, &qword_1EC7EF298, &qword_1D5630DA0);
    return (*(v6 + 8))(v10, v3);
  }

  else
  {
    v14 = v12;
    sub_1D4E6C9CC(v15, &qword_1EC7EF298, &qword_1D5630DA0);
    (*(v6 + 8))(v10, v3);
    sub_1D502A128(a1);
    return sub_1D4EA7410(v14);
  }
}

unint64_t sub_1D5356EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514E2CC();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_1D5356FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MusicTopPlayedSongsResponse()
{
  result = qword_1EC7F4900;
  if (!qword_1EC7F4900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D53570B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicShareableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5357120(uint64_t a1)
{
  v2 = sub_1D53572F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D535715C(uint64_t a1)
{
  v2 = sub_1D53572F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicShareableItemResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4910, &qword_1D5656200);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D53572F4();
  sub_1D56163D8();
  type metadata accessor for MusicShareableItem();
  OUTLINED_FUNCTION_0_192();
  sub_1D5357758(v11, v12);
  sub_1D56160C8();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1D53572F4()
{
  result = qword_1EC7F4918;
  if (!qword_1EC7F4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4918);
  }

  return result;
}

uint64_t MusicShareableItemResponse.hashValue.getter()
{
  sub_1D56162D8();
  MusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t MusicShareableItemResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for MusicShareableItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4928, &qword_1D5656208);
  v8 = OUTLINED_FUNCTION_4(v7);
  v25 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for MusicShareableItemResponse();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D53572F4();
  sub_1D5616398();
  if (!v2)
  {
    v19 = v24;
    OUTLINED_FUNCTION_0_192();
    sub_1D5357758(v20, v21);
    v22 = v26;
    sub_1D5615FD8();
    (*(v25 + 8))(v13, v7);
    sub_1D53576A8(v22, v17, type metadata accessor for MusicShareableItem);
    sub_1D53576A8(v17, v19, type metadata accessor for MusicShareableItemResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5357620()
{
  sub_1D56162D8();
  MusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t type metadata accessor for MusicShareableItemResponse()
{
  result = qword_1EC7F4938;
  if (!qword_1EC7F4938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D53576A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5357758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D53577C8()
{
  result = type metadata accessor for MusicShareableItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicShareableItemResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D53578E4()
{
  result = qword_1EC7F4948;
  if (!qword_1EC7F4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4948);
  }

  return result;
}

unint64_t sub_1D535793C()
{
  result = qword_1EC7F4950;
  if (!qword_1EC7F4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4950);
  }

  return result;
}

unint64_t sub_1D5357994()
{
  result = qword_1EC7F4958;
  if (!qword_1EC7F4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4958);
  }

  return result;
}

uint64_t VideoArtwork.FileAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C0A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void static VideoArtwork.FileAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for VideoArtwork.FileAsset();
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      v5 = v4[8];
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_1D4F286E0();
    }
  }
}

void VideoArtwork.FileAsset.hash(into:)()
{
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_193();
  sub_1D5358384(v1, v2);
  sub_1D5614CB8();
  v3 = type metadata accessor for VideoArtwork.FileAsset();
  MEMORY[0x1DA6EC0D0](*(v0 + v3[5]));
  MEMORY[0x1DA6EC0D0](*(v0 + v3[6]));
  v4 = *(v0 + v3[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v4);
  v5 = *(v0 + v3[8]);

  sub_1D4F31AC0();
}

uint64_t VideoArtwork.FileAsset.hashValue.getter()
{
  sub_1D56162D8();
  VideoArtwork.FileAsset.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5357C70()
{
  sub_1D56162D8();
  VideoArtwork.FileAsset.hash(into:)();
  return sub_1D5616328();
}

void VideoArtwork.FileAsset.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v29 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  v15 = OUTLINED_FUNCTION_4(v14);
  v27 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v27 - v19;
  v31 = a1;
  sub_1D4E628D4(a1, v30);
  sub_1D5611218();
  v21 = MEMORY[0x1E6976120];
  sub_1D5358384(&qword_1EC7F4960, MEMORY[0x1E6976120]);
  OUTLINED_FUNCTION_1_146();
  sub_1D5358384(v22, v21);
  sub_1D5610768();
  if (v2)
  {
    v30[0] = v2;
    v24 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v25 = v29;
      (*(v29 + 32))(v11, v13, v4);
      sub_1D5615C18();
      swift_allocError();
      v26 = v31;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v26);
      (*(v25 + 8))(v11, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    sub_1D546214C(v28);
    v23 = (v27 + 8);
    __swift_destroy_boxed_opaque_existential_1(v31);
    (*v23)(v20, v14);
  }
}

uint64_t VideoArtwork.FileAsset.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v11 - v6;
  sub_1D5462674();
  v8 = MEMORY[0x1E6976120];
  sub_1D5358384(&qword_1EC7F4960, MEMORY[0x1E6976120]);
  OUTLINED_FUNCTION_1_146();
  sub_1D5358384(v9, v8);
  sub_1D5610778();
  return (*(v3 + 8))(v7, v0);
}

uint64_t VideoArtwork.FileAsset.description.getter()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D568BEC0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_193();
  sub_1D5358384(v1, v2);
  v3 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x6874646977202C22, 0xEA0000000000203ALL);
  v4 = type metadata accessor for VideoArtwork.FileAsset();
  v9 = *(v0 + v4[6]);
  v5 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](0x746867696568202CLL, 0xEA0000000000203ALL);
  v10 = *(v0 + v4[5]);
  v6 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v7 = *(v0 + v4[7]);
  sub_1D5615568();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D5358384(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D5358410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D5358450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D53584AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 8);
  v13[3] = a3;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v11 = *(a3 - 8);
  (*(v11 + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1D535856C(v13, a2, a5);
  return (*(v11 + 8))(a1, a3);
}

uint64_t sub_1D535856C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  sub_1D4E628D4(a1, a3);
  *(a3 + 40) = a2;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  sub_1D53588D0(v8, a3, v6, v7);
  sub_1D5358624();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5358624()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D555A4A8();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      v18 = v0;
      v22 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v17 = v7;
      v9 = v7 + 32;
      v10 = *MEMORY[0x1E6976988];
      v11 = (v2 + 104);
      v12 = (v2 + 8);
      do
      {
        sub_1D4E628D4(v9, v19);
        v13 = v20;
        v14 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        (*v11)(v5, v10, v1);
        sub_1D5159364(v5, v13, v14);
        (*v12)(v5, v1);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1D5615C88();
        v15 = *(v22 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v9 += 40;
        --v8;
      }

      while (v8);

      v16 = v22;
      v0 = v18;
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1D535885C(v16, *(v0 + 48));
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

void sub_1D535885C(uint64_t a1, void *a2)
{
  sub_1D4F688F0();
  v3 = sub_1D5615158();

  [a2 setRelatedModelObjects_];
}

uint64_t sub_1D53588D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1D4E628D4(v27, v26);
  sub_1D4E628D4(v27, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v19, v23);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1D4E48324(v22, v26);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v21 = 0;
    v20 = 0u;
    v19 = 0u;
    sub_1D4E6C9CC(&v19, &qword_1EC7EC520, &unk_1D5621050);
  }

  sub_1D4E628D4(v26, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v19, v23);
    v14 = *(a2 + 48);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v9 + 104))(v12, *MEMORY[0x1E6976988], v8);
    v17 = sub_1D5159364(v12, v15, v16);
    (*(v9 + 8))(v12, v8);
    [v14 setModelObject_];

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v21 = 0;
    v20 = 0u;
    v19 = 0u;
    sub_1D4E6C9CC(&v19, &unk_1EC7ED400, &qword_1D5620CF0);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x206D657469206E41, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000071, 0x80000001D568B9C0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5358C80()
{
  v0 = type metadata accessor for UserStateViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D5358D1C();
  qword_1EDD55F60 = result;
  return result;
}

uint64_t static UserStateViewModel.shared.getter()
{
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D5358D1C()
{
  v1 = v0;
  v118[2] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v110 = &v99 - v4;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation) = 0;
  v5 = [objc_opt_self() sharedController];
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_cloudAvailabilityController) = v5;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v7 autoupdatingDefaultMediaIdentity];
  v9 = [v6 sharedMonitorForIdentity_];

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) = v9;
  v107 = objc_opt_self();
  v10 = [v107 defaultIdentityStore];
  v11 = [v7 defaultMediaIdentity];
  aBlock = 0;
  v12 = [v10 DSIDForUserIdentity:v11 outError:&aBlock];

  if (v12)
  {
    v13 = aBlock;
  }

  else
  {
    v14 = aBlock;
    v15 = sub_1D560BE98();

    swift_willThrow();
  }

  if (qword_1EDD5B420 != -1)
  {
    swift_once();
  }

  sub_1D528BCC0();
  v16 = aBlock;
  sub_1D528BCC0();
  LODWORD(v108) = BYTE2(aBlock);
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v19 = [v18 ageVerificationState];

  if (v19)
  {
    v20 = [v19 status];
  }

  else
  {
    v20 = 0;
  }

  v109 = v17;
  v21 = [v17 defaultManager];
  v22 = [v21 ageVerificationState];

  if (v22)
  {
    v23 = [v22 treatment];
  }

  else
  {
    v23 = 0;
  }

  v24 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor;
  v106 = v1;
  v25 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) subscriptionStatus];
  if (v19)
  {
    sub_1D54C7EA8(v20, &aBlock);
    v26 = aBlock;
  }

  else
  {
    v26 = 4;
  }

  v105 = v26;
  if (v22)
  {
    sub_1D54EA538(v23, &aBlock);
    v27 = aBlock;
  }

  else
  {
    v27 = 2;
  }

  v104 = v27;
  v28 = v16;
  v111 = v12;
  v29 = v12 != 0;
  v30 = qword_1EDD5D8A0;
  v31 = v25;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1D560C758();
  __swift_project_value_buffer(v32, qword_1EDD76DB0);
  v33 = v31;
  v34 = sub_1D560C738();
  v35 = sub_1D56156E8();
  v103 = v33;

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v102 = v24;
    v38 = v37;
    v118[0] = v37;
    *v36 = 136446210;
    v100 = v29;
    v101 = v28;
    LOBYTE(aBlock) = v28;
    v39 = v108;
    BYTE1(aBlock) = v108;
    BYTE2(aBlock) = v29;
    v40 = v104;
    v41 = v105;
    BYTE3(aBlock) = v105;
    BYTE4(aBlock) = v104;
    v113 = v25;
    v49 = UserState.debugDescription.getter(v37, v42, v43, v44, v45, v46, v47, v48);
    v51 = sub_1D4E6835C(v49, v50, v118);

    *(v36 + 4) = v51;
    v52 = v35;
    v53 = v100;
    _os_log_impl(&dword_1D4E3F000, v34, v52, "Initial user state: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v54 = v38;
    v24 = v102;
    MEMORY[0x1DA6ED200](v54, -1, -1);
    MEMORY[0x1DA6ED200](v36, -1, -1);

    v55 = v101;
  }

  else
  {

    v55 = v28;
    v39 = v108;
    v53 = v29;
    v40 = v104;
    v41 = v105;
  }

  v56 = v106;
  swift_beginAccess();
  LOBYTE(v118[0]) = v55;
  BYTE1(v118[0]) = v39;
  BYTE2(v118[0]) = v53;
  BYTE3(v118[0]) = v41;
  BYTE4(v118[0]) = v40;
  v118[1] = v25;
  v57 = v56;
  v108 = v103;
  sub_1D560C8B8();
  swift_endAccess();
  v58 = *(v56 + v24);
  v59 = swift_allocObject();
  swift_weakInit();
  v116 = sub_1D535C204;
  v117 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v113 = 1107296256;
  v114 = sub_1D4E73058;
  v115 = &block_descriptor_24_0;
  v60 = _Block_copy(&aBlock);
  v61 = v58;

  v62 = [v61 beginObservingSubscriptionStatusWithHandler_];
  _Block_release(v60);

  v63 = *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken);
  *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken) = v62;
  swift_unknownObjectRelease();
  aBlock = MEMORY[0x1E69E7CC0];
  v64 = objc_opt_self();
  v65 = [v64 defaultCenter];
  v66 = *MEMORY[0x1E69E4098];
  v67 = [v107 defaultIdentityStore];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v68);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v69 = [v64 defaultCenter];
  v70 = objc_opt_self();
  v71 = [v70 preferredResolutionsDidChangeNotification];
  v72 = [v70 standardUserDefaults];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v73);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v74 = sub_1D5615458();
  v75 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v74);
  sub_1D56153C8();

  v76 = sub_1D56153B8();
  v77 = swift_allocObject();
  v78 = MEMORY[0x1E69E85E0];
  v77[2] = v76;
  v77[3] = v78;
  v77[4] = v57;
  v79 = sub_1D51EC8B4(0xD00000000000001DLL, 0x80000001D568C160, v75, &unk_1D56566A8, v77);
  v80 = *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation);
  *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation) = v79;

  v81 = [v64 defaultCenter];
  v82 = *MEMORY[0x1E69E41C8];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v83);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v84 = [v64 defaultCenter];
  v85 = *MEMORY[0x1E69E4118];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v86);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  v87 = [v64 defaultCenter];
  v88 = *MEMORY[0x1E69E40A0];
  v89 = [v109 defaultManager];
  sub_1D56157E8();

  MEMORY[0x1DA6EAF30](v90);
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D56151B8();
  }

  sub_1D56151F8();
  swift_allocObject();
  swift_weakInit();

  v91 = sub_1D56120C8();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();

  v94 = sub_1D56120D8();

  v95 = v108;

  v96 = *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer);
  *(v57 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer) = v94;

  v97 = *MEMORY[0x1E69E9840];
  return v57;
}

uint64_t sub_1D5359828(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 3);
  v5 = *(a1 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D53598C8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a2;
  v10 = a2;
  sub_1D51ECB60(0, 0, v6, &unk_1D56566E0, v9);
}

uint64_t sub_1D5359A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5359A24, 0, 0);
}

uint64_t sub_1D5359A24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_95();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_9_99();
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1D5359AFC;
    v3 = v0[10];

    return sub_1D535B26C();
  }

  else
  {
    OUTLINED_FUNCTION_8_104();

    return v5();
  }
}

uint64_t sub_1D5359AFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D5359C04, 0, 0);
}

uint64_t sub_1D5359C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42B8, &qword_1D5652C10);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4998, &qword_1D56566C8);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49A0, &qword_1D56566D0);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_1D56153C8();
  v4[19] = sub_1D56153B8();
  v15 = sub_1D5615338();
  v4[20] = v15;
  v4[21] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D5359DE0, v15, v14);
}

uint64_t sub_1D5359DE0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  *(swift_task_alloc() + 16) = 1;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8650], v6);
  sub_1D56154A8();

  sub_1D5615488();
  (*(v3 + 8))(v2, v4);
  v8 = v0[18];
  v9 = sub_1D56153B8();
  v0[22] = v9;
  v10 = *(MEMORY[0x1E69E8678] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_0_194(v11);
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v9, v13);
}

uint64_t sub_1D5359F38()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D535A070, v7, v6);
}

uint64_t sub_1D535A070()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    v15 = *(v0 + 24);
    if (sub_1D56154E8())
    {
      v7 = *(v0 + 144);
      v8 = sub_1D56153B8();
      *(v0 + 176) = v8;
      v9 = *(MEMORY[0x1E69E8678] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 184) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_0_194();
      v12 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v0 + 16, v8, v12);
    }

    else
    {
      *(v0 + 40) = v1 & 0x1010101;
      *(v0 + 48) = v15;
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_1D535A244;
      v14 = *(v0 + 64);

      return sub_1D535B26C();
    }
  }
}

uint64_t sub_1D535A244()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D535A358, v6, v5);
}

uint64_t sub_1D535A358()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[18];
  v2 = sub_1D56153B8();
  v0[22] = v2;
  v3 = *(MEMORY[0x1E69E8678] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_0_194();
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v2, v6);
}

uint64_t sub_1D535A3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D51ECB60(0, 0, v3, &unk_1D56566B8, v6);
}

uint64_t sub_1D535A518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D535A538, 0, 0);
}

uint64_t sub_1D535A538()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_95();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_9_99();
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1D535A60C;

    return sub_1D535B26C();
  }

  else
  {
    OUTLINED_FUNCTION_8_104();

    return v4();
  }
}

uint64_t sub_1D535A60C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D535A714, 0, 0);
}

uint64_t UserStateViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusObservationToken))
  {
    [*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) endObservingSubscriptionStatusWithToken_];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation))
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_musicRestrictionsObservation);

    sub_1D56154B8();

    v5 = *(v0 + v3);
  }

  *(v0 + v3) = 0;

  v6 = OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel__userState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_notificationCoalescer);

  v9 = *(v0 + v1);
  swift_unknownObjectRelease();
  v10 = *(v0 + v3);

  return v0;
}

uint64_t UserStateViewModel.__deallocating_deinit()
{
  UserStateViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D535A8BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_112();
  sub_1D560C8F8();
}

uint64_t sub_1D535A92C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4988, &qword_1D5656688);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1D535AA74(v7);
}

uint64_t sub_1D535AA00()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D535AA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4988, &qword_1D5656688);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4980, &qword_1D56565A0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1D535ABAC()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  sub_1D56153C8();
  v1[26] = sub_1D56153B8();
  v4 = sub_1D5615338();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D535AC40, v4, v3);
}

uint64_t sub_1D535AC40()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v0[22];
  if (v2)
  {
    v4 = v0[25];
    v3 = v0[26];
    v5 = v0[24];

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_112();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {
    v8 = *(v0[25] + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor);
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1D535AE30;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4990, &unk_1D5656690);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_21;
    v0[14] = v9;
    [v8 performBlockWithLoadedSubscriptionStatus_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D535AE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  v3 = v2[6];
  v2[29] = v3;
  v4 = v2[28];
  v5 = v2[27];
  if (v3)
  {
    v6 = sub_1D535B200;
  }

  else
  {
    v6 = sub_1D535AF58;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D535AF58()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[23];
  v0[30] = v1;
  v0[18] = 2;
  v0[19] = 0;
  v0[20] = 0;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1D535B014;
  v4 = v0[25];

  return sub_1D535B26C();
}

uint64_t sub_1D535B014()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = *(v1 + 224);
  v7 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D535B148, v7, v6);
}

uint64_t sub_1D535B148()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_112();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D535B200()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  swift_willThrow();
  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 232);

  return v3();
}

uint64_t sub_1D535B26C()
{
  OUTLINED_FUNCTION_80();
  v8 = *MEMORY[0x1E69E9840];
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v3;
  sub_1D56153C8();
  v1[7] = sub_1D56153B8();
  v4 = sub_1D5615338();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D535B33C, v4, v5);
}

uint64_t sub_1D535B33C()
{
  v70 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);

  v2 = [objc_opt_self() defaultIdentityStore];
  v3 = [objc_opt_self() defaultMediaIdentity];
  *(v0 + 16) = 0;
  v4 = [v2 DSIDForUserIdentity:v3 outError:v0 + 16];

  v5 = *(v0 + 16);
  v57 = v4;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = v5;
    v8 = sub_1D560BE98();

    swift_willThrow();
  }

  v9 = *(v0 + 48);
  if (v9 == 2)
  {
    if (qword_1EDD5B420 != -1)
    {
      swift_once();
    }

    sub_1D528BCC0();
    LOBYTE(v9) = v58;
    LOBYTE(v10) = v59;
  }

  else
  {
    v58 = v9 & 0x101;
    v10 = (v9 >> 16) & 1;
  }

  v56 = v10;
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 ageVerificationState];

  if (v12)
  {
    v13 = [v12 status];
    v14 = [v12 treatment];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = *(v0 + 32);
  v16 = v15;
  if (!v15)
  {
    v16 = [*(*(v0 + 40) + OBJC_IVAR____TtC16MusicKitInternal18UserStateViewModel_subscriptionStatusMonitor) subscriptionStatus];
    v15 = *(v0 + 32);
  }

  v17 = v15;
  if (v12)
  {
    sub_1D54C7EA8(v13, &v58);
    v18 = v58;
    sub_1D54EA538(v14, &v58);
    v19 = v58;
  }

  else
  {
    v19 = 2;
    v18 = 4;
  }

  v54 = v18;
  v20 = v9 & 1;
  v21 = qword_1EDD5D8A0;
  v55 = v16;
  v22 = v16;
  if (v21 != -1)
  {
    swift_once();
  }

  v53 = v19;
  v23 = *(v0 + 40);
  v24 = sub_1D560C758();
  __swift_project_value_buffer(v24, qword_1EDD76DB0);
  v25 = v22;

  v26 = sub_1D560C738();
  v27 = sub_1D56156E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 40);
    v52 = v12;
    v29 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v29 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v25;
    v30 = v20;
    sub_1D560C8F8();

    v49 = v27;

    v31 = *(v0 + 17);
    v32 = *(v0 + 18);
    v33 = *(v0 + 19);
    v34 = *(v0 + 24);
    v64 = *(v0 + 16);
    v65 = v31;
    v66 = v32;
    v67 = v33;
    v68 = v34;
    LOBYTE(v58) = v20;
    HIBYTE(v58) = v56;
    v35 = v57 != 0;
    v36 = v19;
    v59 = v57 != 0;
    v37 = v54;
    v60 = v54;
    v61 = v53;
    v38 = v55;
    v62 = v55;
    v39 = sub_1D535B874(&v58);
    v41 = v40;

    v42 = sub_1D4E6835C(v39, v41, &v63);
    v20 = v30;
    v25 = v51;

    *(v29 + 4) = v42;
    _os_log_impl(&dword_1D4E3F000, v26, v49, "Updating user state: %{public}s.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1DA6ED200](v50, -1, -1);
    v43 = v29;
    v12 = v52;
    MEMORY[0x1DA6ED200](v43, -1, -1);
  }

  else
  {

    v38 = v55;
    v36 = v19;
    v37 = v54;
    v35 = v57 != 0;
  }

  v44 = *(v0 + 40);
  LOBYTE(v58) = v20;
  HIBYTE(v58) = v56;
  v59 = v35;
  v60 = v37;
  v61 = v36;
  v62 = v38;
  v45 = v25;
  sub_1D5359828(&v58);

  OUTLINED_FUNCTION_55();
  v47 = *MEMORY[0x1E69E9840];

  return v46();
}

uint64_t sub_1D535B874(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v42 = a1[2];
  v44 = a1[3];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v43 = v1[3];
  v45 = v1[4];
  v46 = a1[4];
  v47 = *(v1 + 1);
  v48 = *(a1 + 1);
  sub_1D5615B68();

  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v7, v8);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5684670);

  if (v2 != v4)
  {
    if (v2)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v9, v10);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  sub_1D5615B68();

  if (v5)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v11, v12);

  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C060);

  if (v3 != v5)
  {
    if (v3)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v3)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v13, v14);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  if (v6)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v6)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v15, v16);

  MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568C080);

  if (v42 != v6)
  {
    if (v42)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v42)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v18);

    MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
  }

  v19 = 7104878;
  v20 = 0xE800000000000000;
  v21 = 0x6E776F6E6B6E752ELL;
  switch(v43)
  {
    case 1:
      v21 = 0x75716552746F6E2ELL;
      v20 = 0xEC00000064657269;
      goto LABEL_49;
    case 2:
      v21 = 0x657269757165722ELL;
      goto LABEL_48;
    case 3:
      v21 = 0x656966697265762ELL;
LABEL_48:
      v20 = 0xE900000000000064;
      goto LABEL_49;
    case 4:
      MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568C0A0);

      v23 = v44;
      goto LABEL_52;
    default:
LABEL_49:
      MEMORY[0x1DA6EAC70](v21, v20);

      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568C0A0);

      v23 = v44;
      v22 = v44 != 4 && v43 == v44;
LABEL_52:
      if (!v22)
      {
        v24 = 0xE300000000000000;
        v25 = 7104878;
        switch(v23)
        {
          case 0:
            v24 = 0xE800000000000000;
            v25 = 0x6E776F6E6B6E752ELL;
            break;
          case 1:
            v25 = 0x75716552746F6E2ELL;
            v24 = 0xEC00000064657269;
            break;
          case 2:
            v25 = 0x657269757165722ELL;
            goto LABEL_58;
          case 3:
            v25 = 0x656966697265762ELL;
LABEL_58:
            v24 = 0xE900000000000064;
            break;
          case 4:
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1DA6EAC70](v25, v24);

        MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
      }

      if (v45 == 2)
      {
        MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

        MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C0C0);

        v26 = v46;
        if (v46 == 2)
        {
          goto LABEL_78;
        }

        goto LABEL_68;
      }

      if (v45)
      {
        v27 = 0xEB00000000393174;
      }

      else
      {
        v27 = 0xEA00000000004574;
      }

      MEMORY[0x1DA6EAC70](0x6963696C7078652ELL, v27);

      MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568C0C0);

      v26 = v46;
      if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
      {
LABEL_68:
        if (v26)
        {
          v28 = 0xEB00000000393174;
        }

        else
        {
          v28 = 0xEA00000000004574;
        }

        if (v26 == 2)
        {
          v29 = 7104878;
        }

        else
        {
          v29 = 0x6963696C7078652ELL;
        }

        if (v26 == 2)
        {
          v30 = 0xE300000000000000;
        }

        else
        {
          v30 = v28;
        }

        MEMORY[0x1DA6EAC70](v29, v30);

        MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);
      }

LABEL_78:
      if (!v47)
      {
        MEMORY[0x1DA6EAC70](7104878, 0xE300000000000000);

        MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D56846F0);

        v35 = v48;
        if (!v48)
        {
          goto LABEL_86;
        }

        goto LABEL_83;
      }

      v31 = [v47 description];
      v32 = sub_1D5614D68();
      v34 = v33;

      MEMORY[0x1DA6EAC70](v32, v34);

      MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D56846F0);

      if (v48)
      {
        sub_1D5100BA4();
        v35 = v48;
        v36 = v47;
        v37 = sub_1D5615848();

        if (v37)
        {
          goto LABEL_86;
        }

LABEL_83:
        v38 = [v35 description];
        v19 = sub_1D5614D68();
        v40 = v39;

        goto LABEL_85;
      }

      v40 = 0xE300000000000000;
LABEL_85:
      MEMORY[0x1DA6EAC70](v19, v40);

      MEMORY[0x1DA6EAC70](0x209286E220, 0xA500000000000000);

LABEL_86:
      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      return 0x7461745372657355;
  }
}

uint64_t sub_1D535C014@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserStateViewModel();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for UserStateViewModel()
{
  result = qword_1EDD55F40;
  if (!qword_1EDD55F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D535C0A8()
{
  sub_1D535C1B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D535C1B4()
{
  if (!qword_1EDD54408)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54408);
    }
  }
}

uint64_t block_copy_helper_22_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D535C224()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_4(v5);

  return sub_1D5359C0C(v7, v8, v9, v4);
}

uint64_t sub_1D535C2C8()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_4(v5);

  return sub_1D535A518(v7, v8, v9, v4);
}

uint64_t sub_1D535C364()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_4(v6);

  return sub_1D5359A00(v8, v9, v10, v5, v4);
}

uint64_t sub_1D535C42C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return MusicLibrarySearchRequest.topResultsLimit.setter();
}

uint64_t (*MusicLibrarySearchRequest.topResultsLimit.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1D560DF48();
  *(a1 + 8) = v3 & 1;
  return sub_1D535C4B4;
}

uint64_t sub_1D535C4B4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  return sub_1D560DF58();
}

uint64_t sub_1D535C4E4(uint64_t a1)
{
  v3 = *(MEMORY[0x1E6975128] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCEBD8](a1);
}

uint64_t sub_1D535C580(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6975120] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCEBD0](a1, a2);
}

uint64_t _s13PersistedDateVMa()
{
  result = qword_1EDD5A2A0;
  if (!qword_1EDD5A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D535C6A0()
{
  result = sub_1D560C328();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D535C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1D535C7C4;

  return sub_1D52FA4F8(a2, a3, a4, a5);
}

uint64_t sub_1D535C7C4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D535C8F8, 0, 0);
  }
}

uint64_t sub_1D535C8F8()
{
  v1 = v0[5];
  if (v1 && (sub_1D535C9A0(v0[4], v1), (v2 & 1) == 0))
  {
    v4 = v0[2];
    sub_1D560C1F8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[2];
  v6 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v5, v3, 1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D535C9A0(uint64_t a1, uint64_t a2)
{
  sub_1D535CD20(a1, a2);

  return 0;
}

uint64_t sub_1D535CA54()
{
  sub_1D560C328();
  OUTLINED_FUNCTION_0_195();
  sub_1D535CC6C(v0, v1);

  return sub_1D5614CB8();
}

uint64_t sub_1D535CAC8()
{
  sub_1D56162D8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_195();
  sub_1D535CC6C(v0, v1);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D535CB48()
{
  sub_1D56162D8();
  sub_1D560C328();
  sub_1D535CC6C(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D535CBEC@<X0>(void *a1@<X8>)
{
  result = sub_1D535CA28();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1D535CC6C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1D535CCB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1D535CD20(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1D5615B58();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1D535CE34()
{
  v0 = swift_allocObject();
  sub_1D535CE84();
  return v0;
}

__CFNotificationCenter *sub_1D535CE84()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v2 = result;
    if (qword_1EC7E94A0 != -1)
    {
      swift_once();
    }

    CFNotificationCenterAddObserver(v2, v0, sub_1D535CFB4, qword_1EC7F49B0, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D535CF1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1D535CF64();
  }

  return result;
}

uint64_t sub_1D535CF64()
{
  _s25RecentlyPlayedInvalidatorCMa();
  sub_1D535D17C();
  sub_1D560C828();
  sub_1D560C888();
}

void sub_1D535CFB4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1D535CF1C(a1, a2);
}

__CFNotificationCenter *sub_1D535D050()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v2 = result;
    CFNotificationCenterRemoveEveryObserver(result, v0);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D535D094()
{
  sub_1D535D050();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1D535D0EC@<X0>(uint64_t *a1@<X8>)
{
  _s25RecentlyPlayedInvalidatorCMa();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

unint64_t sub_1D535D154(uint64_t a1)
{
  result = sub_1D535D17C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D535D17C()
{
  result = qword_1EC7F49B8;
  if (!qword_1EC7F49B8)
  {
    _s25RecentlyPlayedInvalidatorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F49B8);
  }

  return result;
}

uint64_t MigratedPlaylist.init(id:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = v5;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MigratedPlaylist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedPlaylist.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedPlaylist.descriptionText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedPlaylist.descriptionText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MigratedPlaylist.creationTimeMilliseconds.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t MigratedPlaylist.updatedTimeMilliseconds.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t MigratedPlaylist.trackIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MigratedPlaylist.artworkImageFilePath.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_71();
}

uint64_t MigratedPlaylist.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

BOOL static MigratedPlaylist.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29 = *(a1 + 48);
  v6 = *(a1 + 56);
  v25 = *(a1 + 64);
  v30 = *(a1 + 72);
  v22 = *(a1 + 96);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v26 = *(a1 + 80);
  v27 = *(a2 + 48);
  v11 = *(a2 + 56);
  v28 = *(a2 + 72);
  v23 = *(a2 + 64);
  v24 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a1 + 88);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v21 = *(a2 + 96);
  if (!v12 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v7 || v3 != v8)
  {
    OUTLINED_FUNCTION_71();
    if ((sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v4 == v10 && v5 == v9;
    if (!v14 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v29 == v27)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v30)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v16 = v28;
    if (v25 != v23)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (sub_1D4EF81E0(v26, v24))
  {
    if (v22)
    {
      if (!v21)
      {
        return 0;
      }

      v17 = v20 == v19 && v22 == v21;
      return v17 || (sub_1D5616168() & 1) != 0;
    }

    if (!v21)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MigratedPlaylist.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v16 = v1[10];
  v14 = v1[8];
  v15 = v1[11];
  v12 = v1[12];
  sub_1D5614E28();
  sub_1D5614E28();
  if (v8)
  {
    OUTLINED_FUNCTION_10_96();
    sub_1D5614E28();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_10_96();
    MEMORY[0x1DA6EC100](v9);
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_100();
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_9_100();
  if (!v11)
  {
LABEL_4:
    OUTLINED_FUNCTION_10_96();
    MEMORY[0x1DA6EC100](v14);
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_9_100();
LABEL_8:
  sub_1D4F06928(a1, v16);
  if (!v12)
  {
    return OUTLINED_FUNCTION_9_100();
  }

  OUTLINED_FUNCTION_10_96();

  return sub_1D5614E28();
}

uint64_t MigratedPlaylist.hashValue.getter()
{
  sub_1D56162D8();
  MigratedPlaylist.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D535D760()
{
  sub_1D56162D8();
  MigratedPlaylist.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D535D79C@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedPlaylist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t MigratedPlaylist.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v3, v4);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t MigratedPlaylist.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  v23 = v0[10];
  v21 = v0[8];
  v22 = v0[11];
  v10 = v0[12];
  OUTLINED_FUNCTION_9_0();
  v25 = v12;
  v26 = v11;
  strcpy(v24, "\n  id: ");
  BYTE1(v24[1]) = 0;
  WORD1(v24[1]) = 0;
  HIDWORD(v24[1]) = -402653184;
  MEMORY[0x1DA6EAC70]();
  OUTLINED_FUNCTION_1_147();
  MEMORY[0x1DA6EAC70](v24[0], v24[1]);

  strcpy(v24, ",\n  title: ");
  HIWORD(v24[1]) = -5120;
  MEMORY[0x1DA6EAC70](v3, v4);
  OUTLINED_FUNCTION_1_147();
  MEMORY[0x1DA6EAC70](v24[0], v24[1]);

  if (v6)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD000000000000017;
    v24[1] = v13;
    MEMORY[0x1DA6EAC70](v5, v6);
    OUTLINED_FUNCTION_1_147();
    OUTLINED_FUNCTION_4_113();
  }

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD00000000000001ELL;
    v24[1] = v14;
    v15 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v15);

    OUTLINED_FUNCTION_4_113();
  }

  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD00000000000001DLL;
    v24[1] = v16;
    v17 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v17);

    OUTLINED_FUNCTION_4_113();
  }

  sub_1D5615B68();

  strcpy(v24, ",\n  trackIDs: ");
  HIBYTE(v24[1]) = -18;
  v18 = MEMORY[0x1DA6EAF70](v23, MEMORY[0x1E69E6158]);
  MEMORY[0x1DA6EAC70](v18);

  MEMORY[0x1DA6EAC70](v24[0], v24[1]);

  if (v10)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[1] = v19;
    MEMORY[0x1DA6EAC70](v22, v10);
    OUTLINED_FUNCTION_1_147();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, v24[1]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v25;
}

uint64_t MigratedPlaylist.creationTimeSeconds.getter()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_7_113(*(v0 + 48));
  }
}

void MigratedPlaylist.creationTimeSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 48) = v3;
    OUTLINED_FUNCTION_6_109(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

void *(*MigratedPlaylist.creationTimeSeconds.modify(uint64_t a1))(void *result, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 48) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D535DCA4;
}

void *sub_1D535DCA4(void *result, char a2)
{
  v2 = *(result + 8);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result[1])
  {
LABEL_6:
    v3 = 0;
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_8_105(result);
  if (!v4)
  {
    __break(1u);
LABEL_5:
    if (v2)
    {
      goto LABEL_6;
    }

    result = OUTLINED_FUNCTION_8_105(result);
    if (!v4)
    {
      __break(1u);
      return result;
    }
  }

LABEL_9:
  v5 = result[2];
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  return result;
}

uint64_t MigratedPlaylist.updatedTimeSeconds.getter()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_7_113(*(v0 + 64));
  }
}

void MigratedPlaylist.updatedTimeSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 64) = v3;
    OUTLINED_FUNCTION_5_109(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

void *(*MigratedPlaylist.updatedTimeSeconds.modify(uint64_t a1))(void *result, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 64) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D535DDC0;
}

void *sub_1D535DDC0(void *result, char a2)
{
  v2 = *(result + 8);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result[1])
  {
LABEL_6:
    v3 = 0;
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_8_105(result);
  if (!v4)
  {
    __break(1u);
LABEL_5:
    if (v2)
    {
      goto LABEL_6;
    }

    result = OUTLINED_FUNCTION_8_105(result);
    if (!v4)
    {
      __break(1u);
      return result;
    }
  }

LABEL_9:
  v5 = result[2];
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  return result;
}

unint64_t sub_1D535DE24()
{
  result = qword_1EC7F49C0;
  if (!qword_1EC7F49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F49C0);
  }

  return result;
}

uint64_t sub_1D535DE80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D535DEC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D535DF40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D535DF7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D535DFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D535E018()
{
  v0 = sub_1D560F8F8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = sub_1D560F928();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for MusicMoviePropertyProvider();
  sub_1D4E69910(v39[1] + *(v27 + 24), v17, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v17, 1, v18);
  if (v28)
  {
    sub_1D4E50004(v17, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    sub_1D560F908();
    (*(v3 + 104))(v8, *MEMORY[0x1E6975910], v0);
    v29 = sub_1D560F8E8();
    v30 = *(v3 + 8);
    v30(v8, v0);
    v30(v11, v0);
    if (v29)
    {
      v31 = sub_1D560F918();
      v32 = *(v21 + 8);
      v33 = OUTLINED_FUNCTION_15_2();
      v34(v33);
      if (v31)
      {
        return 1;
      }
    }

    else
    {
      v36 = *(v21 + 8);
      v37 = OUTLINED_FUNCTION_15_2();
      v38(v37);
    }
  }

  return 0;
}

uint64_t sub_1D535E2C0()
{
  v1 = v0;
  v2 = sub_1D5613198();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v35 = v9 - v8;
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  v36 = type metadata accessor for MusicMoviePropertyProvider();
  v25 = *(v36 + 88);
  (*(v5 + 104))(v24, *MEMORY[0x1E69768D0], v2);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v2);
  v26 = v10[14];
  sub_1D4E69910(v1 + v25, v14, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69910(v24, &v14[v26], &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(v14, 1, v2);
  if (!v28)
  {
    sub_1D4E69910(v14, v21, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_57(&v14[v26], 1, v2);
    if (!v28)
    {
      v29 = v35;
      (*(v5 + 32))(v35, &v14[v26], v2);
      sub_1D51DF1C8();
      OUTLINED_FUNCTION_15_2();
      v27 = sub_1D5614D18();
      v30 = *(v5 + 8);
      v30(v29, v2);
      sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
      v30(v21, v2);
      sub_1D4E50004(v14, &qword_1EC7EC530, &unk_1D5632150);
      goto LABEL_10;
    }

    sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
    (*(v5 + 8))(v21, v2);
LABEL_9:
    sub_1D4E50004(v14, &qword_1EC7EF628, &unk_1D5632440);
    v27 = 0;
    goto LABEL_10;
  }

  sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(&v14[v26], 1, v2);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v14, &qword_1EC7EC530, &unk_1D5632150);
  v27 = 1;
LABEL_10:
  v31 = *(v36 + 184);
  sub_1D560D768();
  if (v32 || (sub_1D560D628(), v33))
  {
  }

  else if ((v27 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D535E6A8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_106();
  sub_1D4E69910(v0 + *(v6 + 104), v1, &qword_1EC7EF5D8, &unk_1D5632160);
  v7 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v1, 1, v7);
  if (v8)
  {
    sub_1D4E50004(v1, &qword_1EC7EF5D8, &unk_1D5632160);
    v9 = 0;
  }

  else
  {
    v9 = sub_1D5614A58();
    (*(*(v7 - 8) + 8))(v1, v7);
  }

  return v9 & 1;
}

BOOL sub_1D535E7AC()
{
  v1 = v0;
  v2 = sub_1D5614A48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v43 = v4;
  v44 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v42 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1D5614A78();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v41 - v29;
  v31 = *(type metadata accessor for MusicMoviePropertyProvider() + 104);
  sub_1D4E69910(v1 + v31, v30, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v30, 1, v12);
  if (v32)
  {
    goto LABEL_3;
  }

  v33 = sub_1D5614A58();
  v41 = *(v15 + 8);
  v41(v30, v12);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  sub_1D4E69910(v1 + v31, v27, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v27, 1, v12);
  if (v32)
  {
    v30 = v27;
LABEL_3:
    sub_1D4E50004(v30, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v15 + 32))(v20, v27, v12);
  sub_1D5614A68();
  v35 = v42;
  v34 = v43;
  v36 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x1E6977490], v44);
  v37 = sub_1D5614A38();
  v38 = *(v34 + 8);
  v38(v35, v36);
  v38(v11, v36);
  v39 = OUTLINED_FUNCTION_15_2();
  (v41)(v39);
  return (v37 & 1) != 0;
}

uint64_t sub_1D535EAB4(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8_106();
  sub_1D4E69910(v1 + *(v8 + 24), v2, &qword_1EC7EDB98, L"X\b\a");
  v9 = sub_1D560F928();
  v10 = OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v11)
  {
    sub_1D4E50004(v2, &qword_1EC7EDB98, L"X\b\a");
    v12 = 0;
  }

  else
  {
    v12 = a1(v10);
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  return v12 & 1;
}

uint64_t sub_1D535EC4C()
{
  _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = *(_s15InternalStorageVMa(0) + 20);
  type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_33();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1D535ECB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  OUTLINED_FUNCTION_71();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = qword_1EC7E9118;

    if (v18 != -1)
    {
      swift_once();
    }

    *&v30 = qword_1EC87C368;
    v32 = v17;
    sub_1D5364270();
    if (OUTLINED_FUNCTION_63_20())
    {
      sub_1D4FB8150();
      v19 = _s12InternalItemOMa(0);
      OUTLINED_FUNCTION_57(v15, 1, v19);
      if (!v20)
      {
        *(&v31 + 1) = v19;
        __swift_allocate_boxed_opaque_existential_0(&v30);
LABEL_15:
        sub_1D53642D4();

        goto LABEL_16;
      }

      v21 = &qword_1EC7EB6E0;
      v22 = &qword_1D56320D0;
      v23 = v15;
      goto LABEL_14;
    }

    v24 = qword_1EC7E9120;

    if (v24 != -1)
    {
      OUTLINED_FUNCTION_16_83();
    }

    *&v30 = qword_1EDD76A58;
    v32 = v17;
    v25 = OUTLINED_FUNCTION_63_20();

    if (v25)
    {
      v26 = *(_s15InternalStorageVMa(0) + 20);
      sub_1D4FB8150();
      v27 = type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_57(v9, 1, v27);
      if (!v20)
      {
        *(&v31 + 1) = v27;
        __swift_allocate_boxed_opaque_existential_0(&v30);
        OUTLINED_FUNCTION_14_73();
        goto LABEL_15;
      }

      v21 = &unk_1EC7ED370;
      v22 = &unk_1D5624FE0;
      v23 = v9;
LABEL_14:
      result = sub_1D4E50004(v23, v21, v22);
      v30 = 0u;
      v31 = 0u;
LABEL_16:
      v29 = v31;
      *a2 = v30;
      a2[1] = v29;
      return result;
    }

    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
    v32 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D568C380);
    v32 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_22_61();
  __break(1u);
  return result;
}

uint64_t sub_1D535F090(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v2 = qword_1EC7E9120;
    swift_retain_n();
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_16_83();
    }

    sub_1D5364270();
    v3 = sub_1D5614D18();

    if (v3)
    {
      swift_getKeyPath();
      sub_1D5364198(&qword_1EDD52F88, _s15InternalStorageVMa);
      sub_1D5613118();

      return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D568C380);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_22_61();
  __break(1u);
  return result;
}

void sub_1D535F2F8()
{
  OUTLINED_FUNCTION_47();
  v41 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49E0, &qword_1D5656D98);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_118_1();
  v21 = _s15InternalStorageVMa(0);
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49E8, &unk_1D5656DA0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D568C2D0);
    v43 = v5;
    v35 = *(v6 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 68;
LABEL_14:
    v40 = v36;
    OUTLINED_FUNCTION_22_61();
    __break(1u);
    return;
  }

  v26 = v25;
  sub_1D4E628D4(v3, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F49F0, &qword_1D5669750);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v21);
    sub_1D4E50004(v0, &qword_1EC7F49E0, &qword_1D5656D98);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D568C310);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 71;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v0, 0, 1, v21);
  sub_1D53642D4();
  v27 = qword_1EC7E9120;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_16_83();
  }

  v42[0] = qword_1EDD76A58;
  v43 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  sub_1D5364270();
  v28 = sub_1D5614D18();

  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568C350);
    v43 = v26;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 78;
    goto LABEL_14;
  }

  v29 = *(v21 + 20);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_22_64();
  sub_1D5364380(v1, v30);
  v31 = type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_57(v13, 1, v31);
  if (v32)
  {
    v33 = *(v21 + 20);
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v13, 1, v31);
    if (!v32)
    {
      sub_1D4E50004(v13, &unk_1EC7ED370, &unk_1D5624FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_73();
    OUTLINED_FUNCTION_61();
    sub_1D53642D4();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v31);
  }

  v34 = *(v21 + 20);
  sub_1D50ADCCC();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D535F7B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  if (qword_1EC7E9118 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EC87C368;
  qword_1EC87C560 = v0;
}

uint64_t sub_1D535F858()
{
  if (qword_1EC7E94A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC87C560;
  if (qword_1EC87C560 >> 62)
  {
    sub_1D560CDE8();

    v2 = sub_1D5615E18();

    return v2;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
    return v0;
  }
}

void sub_1D535F918()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v58 = type metadata accessor for SocialProfile();
  v5 = OUTLINED_FUNCTION_14(v58);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v53 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v54 = v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A20, &qword_1D5656DE0);
  OUTLINED_FUNCTION_14(v55);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = _s12InternalItemOMa(0);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v53 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A28, &qword_1D5656DE8);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_122_3();
  v37 = *(v36 + 56);
  v56 = v4;
  sub_1D4FB8150();
  v57 = v2;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v19);
  if (!v38)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v0 + v37, 1, v19);
    if (!v38)
    {
      sub_1D53642D4();
      sub_1D5361658();
      v44 = v43;
      sub_1D5364380(v25, _s12InternalItemOMa);
      sub_1D5364380(v31, _s12InternalItemOMa);
      sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_107();
    sub_1D5364380(v31, v39);
LABEL_9:
    v40 = &qword_1EC7F4A28;
    v41 = &qword_1D5656DE8;
    v42 = v0;
LABEL_21:
    sub_1D4E50004(v42, v40, v41);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_57(v0 + v37, 1, v19);
  if (!v38)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
LABEL_11:
  v45 = *(_s15InternalStorageVMa(0) + 20);
  v46 = *(v55 + 48);
  sub_1D4FB8150();
  sub_1D4FB8150();
  v47 = v58;
  OUTLINED_FUNCTION_57(v18, 1, v58);
  if (!v38)
  {
    v48 = v54;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(&v18[v46], 1, v47);
    if (!v49)
    {
      OUTLINED_FUNCTION_14_73();
      v50 = v53;
      sub_1D53642D4();
      v51 = *v48 == *v50 && v48[1] == v50[1];
      if (v51 || (sub_1D5616168() & 1) != 0)
      {
        v52 = *(v47 + 20);
        sub_1D5611A78();
        sub_1D5364380(v50, type metadata accessor for SocialProfile);
        sub_1D5364380(v48, type metadata accessor for SocialProfile);
        sub_1D4E50004(v18, &unk_1EC7ED370, &unk_1D5624FE0);
        goto LABEL_22;
      }

      sub_1D5364380(v50, type metadata accessor for SocialProfile);
      sub_1D5364380(v48, type metadata accessor for SocialProfile);
      v40 = &unk_1EC7ED370;
      v41 = &unk_1D5624FE0;
      goto LABEL_20;
    }

    sub_1D5364380(v48, type metadata accessor for SocialProfile);
LABEL_19:
    v40 = &qword_1EC7F4A20;
    v41 = &qword_1D5656DE0;
LABEL_20:
    v42 = v18;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_57(&v18[v46], 1, v47);
  if (!v38)
  {
    goto LABEL_19;
  }

  sub_1D4E50004(v18, &unk_1EC7ED370, &unk_1D5624FE0);
LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D535FDF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006D657449;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEB00000000726F74)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D535FEC4(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_1D535FF0C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A10, &qword_1D5656DD8);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D536432C();
  sub_1D56163D8();
  _s12InternalItemOMa(0);
  OUTLINED_FUNCTION_30_51();
  sub_1D5364198(v11, v12);
  OUTLINED_FUNCTION_62_3();
  if (!v1)
  {
    v13 = *(_s15InternalStorageVMa(0) + 20);
    type metadata accessor for SocialProfile();
    OUTLINED_FUNCTION_29_50();
    sub_1D5364198(v14, v15);
    OUTLINED_FUNCTION_62_3();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1D53600B8()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for SocialProfile();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_18_3();
  v14 = _s12InternalItemOMa(v13);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_118_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v14);
  if (v25)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v20, _s12InternalItemOMa);
  }

  v26 = *(_s15InternalStorageVMa(0) + 20);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v25)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    v27 = *v8;
    v28 = v8[1];
    sub_1D5614E28();
    v29 = *(v2 + 20);
    sub_1D5611AB8();
    OUTLINED_FUNCTION_6_110();
    sub_1D5364198(v30, v31);
    OUTLINED_FUNCTION_24();
    sub_1D5614CB8();
    sub_1D5364380(v8, type metadata accessor for SocialProfile);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D5360340()
{
  OUTLINED_FUNCTION_47();
  v2 = type metadata accessor for SocialProfile();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_4();
  v13 = _s12InternalItemOMa(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v0, 1, v13);
  if (v24)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v19, _s12InternalItemOMa);
  }

  v25 = *(_s15InternalStorageVMa(0) + 20);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v24)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    v26 = *v8;
    v27 = v8[1];
    sub_1D5614E28();
    v28 = *(v2 + 20);
    sub_1D5611AB8();
    OUTLINED_FUNCTION_6_110();
    sub_1D5364198(v29, v30);
    sub_1D5614CB8();
    v31 = OUTLINED_FUNCTION_24();
    sub_1D5364380(v31, v32);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D53605E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v45 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v46 = v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A00, &qword_1D5656DD0);
  OUTLINED_FUNCTION_4(v47);
  v44 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = _s15InternalStorageVMa(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = OUTLINED_FUNCTION_18_3();
  v24 = _s12InternalItemOMa(v23);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = *(v21 + 28);
  v29 = type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D536432C();
  v34 = v48;
  sub_1D5616398();
  if (!v34)
  {
    v48 = v28;
    v35 = v44;
    v50 = 0;
    OUTLINED_FUNCTION_30_51();
    sub_1D5364198(v36, v37);
    sub_1D5615F78();
    sub_1D50ADCCC();
    v49 = 1;
    OUTLINED_FUNCTION_29_50();
    sub_1D5364198(v38, v39);
    v40 = v47;
    sub_1D5615F78();
    (*(v35 + 8))(v19, v40);
    sub_1D50ADCCC();
    sub_1D53643D8();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_22_64();
  return sub_1D5364380(v2, v41);
}

uint64_t sub_1D5360948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D535FDF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5360970(uint64_t a1)
{
  v2 = sub_1D536432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53609AC(uint64_t a1)
{
  v2 = sub_1D536432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*sub_1D5360A00(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D535ECB4(a2, v5);
  return sub_1D5360A6C;
}

void sub_1D5360A6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    v5 = *a1;
    sub_1D4FB8150();

    sub_1D535F090(v2 + 32);
    v6 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v6, v7, &qword_1D561C420);
  }

  else
  {

    sub_1D535F090(v2);
  }

  free(v2);
}

uint64_t sub_1D5360B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5364198(&qword_1EC7F49D0, _s15InternalStorageVMa);

  return MEMORY[0x1EEDD14D0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5360BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5364198(&qword_1EC7F49D8, _s15InternalStorageVMa);

  return MEMORY[0x1EEDD14C8](a1, a2, a3, v6);
}

uint64_t sub_1D5360C88(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v2 = type metadata accessor for SocialProfile();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = _s12InternalItemOMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  sub_1D56162D8();
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v17, 1, v10) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    sub_1D5362B4C();
    sub_1D5364380(v13, _s12InternalItemOMa);
  }

  v18 = *(v23 + 20);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D53642D4();
    sub_1D56162F8();
    v19 = *v5;
    v20 = v5[1];
    sub_1D5614E28();
    v21 = *(v2 + 20);
    sub_1D5611AB8();
    sub_1D5364198(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
    sub_1D5614CB8();
    sub_1D5364380(v5, type metadata accessor for SocialProfile);
  }

  return sub_1D5616328();
}

void (*sub_1D5360F9C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D5612DA8();
  return sub_1D5360FF8;
}

void sub_1D5360FF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1D5361088()
{
  sub_1D5361164(319, qword_1EDD53010, _s12InternalItemOMa);
  if (v0 <= 0x3F)
  {
    sub_1D5361164(319, &qword_1EDD57508, type metadata accessor for SocialProfile);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5361164(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D53611B8()
{
  result = type metadata accessor for MusicMovie();
  if (v1 <= 0x3F)
  {
    result = sub_1D560EEA8();
    if (v2 <= 0x3F)
    {
      result = sub_1D5613838();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TVEpisode();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for UploadedAudio();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for UploadedVideo();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1D53612C4()
{
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v56 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for UploadedAudio();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = type metadata accessor for TVEpisode();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  v22 = sub_1D5613838();
  v23 = OUTLINED_FUNCTION_4(v22);
  v55 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v27 = sub_1D560EEA8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v33 = type metadata accessor for MusicMovie();
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = OUTLINED_FUNCTION_14_3();
  v38 = _s12InternalItemOMa(v37);
  v39 = OUTLINED_FUNCTION_14(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  OUTLINED_FUNCTION_0_196();
  sub_1D53643D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v30 + 32))(v1, v44, v27);
      sub_1D560EE38();
      (*(v30 + 8))(v1, v27);
      goto LABEL_11;
    case 2u:
      (*(v55 + 32))(v0, v44, v22);
      sub_1D56137B8();
      (*(v55 + 8))(v0, v22);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_25_53();
      sub_1D53642D4();
      v50 = *v21;
      v51 = v21[1];

      v47 = v21;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_27_58();
      sub_1D53642D4();
      v48 = *v14;
      v49 = v14[1];

      v47 = v14;
      goto LABEL_6;
    case 5u:
      sub_1D53642D4();
      v53 = *v56;
      v54 = v56[1];

      v47 = v56;
      v52 = type metadata accessor for UploadedVideo;
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_28_56();
      sub_1D53642D4();
      v45 = *v2;
      v46 = v2[1];

      v47 = v2;
LABEL_6:
      v52 = v30;
LABEL_10:
      sub_1D5364380(v47, v52);
LABEL_11:
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_46();
      return;
  }
}

void sub_1D5361658()
{
  OUTLINED_FUNCTION_47();
  v125 = v0;
  v126 = v1;
  v115 = type metadata accessor for UploadedVideo();
  v2 = OUTLINED_FUNCTION_14(v115);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v120 = v5;
  OUTLINED_FUNCTION_70_0();
  v114 = type metadata accessor for UploadedAudio();
  v6 = OUTLINED_FUNCTION_14(v114);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v119 = v9;
  OUTLINED_FUNCTION_70_0();
  v113 = type metadata accessor for TVEpisode();
  v10 = OUTLINED_FUNCTION_14(v113);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v118 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D5613838();
  v15 = OUTLINED_FUNCTION_4(v14);
  v123 = v16;
  v124 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v117 = v19;
  OUTLINED_FUNCTION_70_0();
  v20 = sub_1D560EEA8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v121 = v22;
  v122 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v116 = v25;
  OUTLINED_FUNCTION_70_0();
  v111 = type metadata accessor for MusicMovie();
  v26 = OUTLINED_FUNCTION_14(v111);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v112 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v31 = _s12InternalItemOMa(v30);
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v37 = (v35 - v36);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = (&v111 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v111 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v111 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v111 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = (&v111 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4A30, &qword_1D5656DF0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = &v111 - v58;
  v60 = *(v57 + 56);
  sub_1D53643D8();
  sub_1D53643D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() == 1)
      {
        v86 = v121;
        v85 = v122;
        v87 = v116;
        (*(v121 + 32))(v116, &v59[v60], v122);
        sub_1D560EE28();
        v88 = *(v86 + 8);
        v88(v87, v85);
        v88(v50, v85);
        goto LABEL_24;
      }

      (*(v121 + 8))(v50, v122);
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 2)
      {
        (*(v123 + 8))(v47, v124);
        goto LABEL_39;
      }

      v74 = v123;
      v73 = v124;
      v75 = v117;
      (*(v123 + 32))(v117, &v59[v60], v124);
      sub_1D56137A8();
      v76 = *(v74 + 8);
      v76(v75, v73);
      v76(v47, v73);
LABEL_24:
      OUTLINED_FUNCTION_8_107();
      sub_1D5364380(v59, v89);
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 3)
      {
        OUTLINED_FUNCTION_3_151();
        v62 = v44;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v77 = v118;
      sub_1D53642D4();
      v78 = *v44;
      v79 = v44[1];
      OUTLINED_FUNCTION_93_2();
      v82 = v68 && v80 == v81;
      if (v82 || (sub_1D5616168() & 1) != 0)
      {
        v83 = *(v113 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_3_151();
        sub_1D5364380(v77, v84);
      }

      else
      {
        OUTLINED_FUNCTION_3_151();
        sub_1D5364380(v77, v107);
      }

      OUTLINED_FUNCTION_3_151();
      v72 = v44;
      goto LABEL_51;
    case 4u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 4)
      {
        OUTLINED_FUNCTION_4_114();
        v62 = v41;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v63 = v119;
      sub_1D53642D4();
      v64 = *v41;
      v65 = v41[1];
      OUTLINED_FUNCTION_93_2();
      v68 = v68 && v66 == v67;
      if (v68 || (sub_1D5616168() & 1) != 0)
      {
        v69 = *(v114 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_4_114();
        sub_1D5364380(v63, v70);
      }

      else
      {
        OUTLINED_FUNCTION_4_114();
        sub_1D5364380(v63, v106);
      }

      OUTLINED_FUNCTION_4_114();
      v72 = v41;
      goto LABEL_51;
    case 5u:
      OUTLINED_FUNCTION_0_196();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32() != 5)
      {
        OUTLINED_FUNCTION_2_145();
        v62 = v37;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_57_32();
      v90 = v120;
      sub_1D53642D4();
      v91 = *v37;
      v92 = v37[1];
      OUTLINED_FUNCTION_93_2();
      v95 = v68 && v93 == v94;
      if (v95 || (sub_1D5616168() & 1) != 0)
      {
        v96 = *(v115 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_2_145();
        sub_1D5364380(v90, v97);
      }

      else
      {
        OUTLINED_FUNCTION_2_145();
        sub_1D5364380(v90, v108);
      }

      OUTLINED_FUNCTION_2_145();
      v72 = v37;
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_0_196();
      OUTLINED_FUNCTION_24();
      sub_1D53643D8();
      if (OUTLINED_FUNCTION_50_32())
      {
        OUTLINED_FUNCTION_5_110();
        v62 = v52;
LABEL_38:
        sub_1D5364380(v62, v61);
LABEL_39:
        sub_1D4E50004(v59, &qword_1EC7F4A30, &qword_1D5656DF0);
      }

      else
      {
        OUTLINED_FUNCTION_57_32();
        v98 = v112;
        sub_1D53642D4();
        v99 = *v52;
        v100 = v52[1];
        OUTLINED_FUNCTION_93_2();
        v103 = v68 && v101 == v102;
        if (v103 || (sub_1D5616168() & 1) != 0)
        {
          v104 = *(v111 + 20);
          sub_1D5611A78();
          OUTLINED_FUNCTION_5_110();
          sub_1D5364380(v98, v105);
        }

        else
        {
          OUTLINED_FUNCTION_5_110();
          sub_1D5364380(v98, v109);
        }

        OUTLINED_FUNCTION_5_110();
        v72 = v52;
LABEL_51:
        sub_1D5364380(v72, v71);
        OUTLINED_FUNCTION_8_107();
        sub_1D5364380(v59, v110);
      }

LABEL_52:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D5361DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F4D636973756DLL && a2 == 0xEA00000000006569;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1735290739 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F736970457674 && a2 == 0xE900000000000065;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F69647541;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}
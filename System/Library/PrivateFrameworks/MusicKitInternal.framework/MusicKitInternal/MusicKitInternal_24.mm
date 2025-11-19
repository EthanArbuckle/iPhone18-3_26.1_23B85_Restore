unint64_t sub_1D506E034()
{
  result = qword_1EC7EF118;
  if (!qword_1EC7EF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF118);
  }

  return result;
}

unint64_t sub_1D506E08C()
{
  result = qword_1EC7EF120;
  if (!qword_1EC7EF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF120);
  }

  return result;
}

unint64_t sub_1D506E0E4()
{
  result = qword_1EC7EF128;
  if (!qword_1EC7EF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF128);
  }

  return result;
}

unint64_t sub_1D506E13C()
{
  result = qword_1EC7EF130;
  if (!qword_1EC7EF130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF138, &qword_1D562FE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF130);
  }

  return result;
}

unint64_t sub_1D506E1EC()
{
  result = qword_1EC7EF148;
  if (!qword_1EC7EF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF148);
  }

  return result;
}

unint64_t sub_1D506E244()
{
  result = qword_1EC7EF150;
  if (!qword_1EC7EF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF150);
  }

  return result;
}

void sub_1D506E4D4()
{
  sub_1D506E5A8();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, qword_1EDD552F0);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, qword_1EDD55240);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D506E5A8()
{
  if (!qword_1EDD552A0)
  {
    type metadata accessor for LegacyModelCodableComposer.Relationships(255);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD552A0);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D506E60C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D506E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D506E6EC()
{
  sub_1D506E758();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D506E758()
{
  if (!qword_1EDD530B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD530B8);
    }
  }
}

_BYTE *sub_1D506E7DC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableComposer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableComposer.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D506EA64()
{
  result = qword_1EC7EF168;
  if (!qword_1EC7EF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF168);
  }

  return result;
}

unint64_t sub_1D506EABC()
{
  result = qword_1EC7EF170;
  if (!qword_1EC7EF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF170);
  }

  return result;
}

unint64_t sub_1D506EB14()
{
  result = qword_1EC7EF178;
  if (!qword_1EC7EF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF178);
  }

  return result;
}

unint64_t sub_1D506EB6C()
{
  result = qword_1EC7EF180;
  if (!qword_1EC7EF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF180);
  }

  return result;
}

unint64_t sub_1D506EBC4()
{
  result = qword_1EC7EF188;
  if (!qword_1EC7EF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF188);
  }

  return result;
}

unint64_t sub_1D506EC1C()
{
  result = qword_1EC7EF190;
  if (!qword_1EC7EF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF190);
  }

  return result;
}

unint64_t sub_1D506EC74()
{
  result = qword_1EC7EF198;
  if (!qword_1EC7EF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF198);
  }

  return result;
}

unint64_t sub_1D506ECCC()
{
  result = qword_1EC7EF1A0;
  if (!qword_1EC7EF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1A0);
  }

  return result;
}

unint64_t sub_1D506ED24()
{
  result = qword_1EC7EF1A8;
  if (!qword_1EC7EF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1A8);
  }

  return result;
}

unint64_t sub_1D506ED7C()
{
  result = qword_1EC7EF1B0;
  if (!qword_1EC7EF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1B0);
  }

  return result;
}

uint64_t Playlist.Folder.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v13 = sub_1D560D708();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  *a2 = v13;
  a2[1] = v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = a2 + *(type metadata accessor for Playlist.Folder() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D506EFB0(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v6)
  {
    swift_once();
  }

  v7 = *a2;
  a3(0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v8, v3);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v9, v3);

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.name.getter()
{
  if (qword_1EC7E8D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_47();
  sub_1D507118C(v1, v0);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0);
  sub_1D560EC28();
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static Playlist.Folder.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Playlist.Folder() + 20);

  return sub_1D5611A78();
}

unint64_t Playlist.Folder.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_1D560C328();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0xD000000000000010;
  v27 = 0x80000001D5682EE0;
  v24 = 0x22203A646920200ALL;
  v25 = 0xE800000000000000;
  v13 = *v0;
  v14 = v0[1];
  v15 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v24, v25);

  v24 = 0x656D616E20200A2CLL;
  v25 = 0xEB0000000022203ALL;
  v16 = Playlist.Folder.name.getter();
  MEMORY[0x1DA6EAC70](v16);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  v17 = v25;
  MEMORY[0x1DA6EAC70](v24, v25);

  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_46();
  sub_1D507118C(v18, v17);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v19, v17);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E7661C(v4, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    (*(v8 + 32))(v12, v4, v5);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D5615B68();

    v24 = 0x6574616420200A2CLL;
    v25 = 0xEF203A6465646441;
    OUTLINED_FUNCTION_8_41();
    sub_1D507118C(v20, v21);
    v22 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v22);

    MEMORY[0x1DA6EAC70](v24, v25);

    (*(v8 + 8))(v12, v5);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v26;
}

uint64_t Playlist.Folder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t Playlist.Folder.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Folder() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1D506F620()
{
  if (qword_1EC7E8D18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_47();
  sub_1D507118C(v1, v0);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0);
  sub_1D560EC28();
  return v4;
}

uint64_t Playlist.Folder.children.getter()
{
  if (qword_1EC7E8D28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v1, v0);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  if (qword_1EC7E8D30 != -1)
  {
    OUTLINED_FUNCTION_11_44();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_6_46();
  sub_1D507118C(v8, v1);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v9, v1);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E7661C(v6, &qword_1EC7ECF38, &qword_1D562E650);
    v10 = type metadata accessor for Playlist.Folder();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }

  else
  {
    sub_1D4ECA0A8();
    OUTLINED_FUNCTION_24_0(v7);
    return (*(v12 + 8))(v6, v7);
  }
}

uint64_t sub_1D506F960()
{
  if (qword_1EC7E8D30 != -1)
  {
    OUTLINED_FUNCTION_11_44();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v1, v0);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Folder() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_44();
  sub_1D507118C(v4, v5);
  return sub_1D5614CB8();
}

uint64_t Playlist.Folder.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Folder() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_44();
  sub_1D507118C(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D506FB50(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D507118C(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D506FBF4@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Folder.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D506FC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  v12 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D506FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  v14 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D506FE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  v14 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D506FFD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D507118C(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C058 = v0;
  return result;
}

uint64_t sub_1D50700D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_41();
  sub_1D507118C(v6, v7);
  v8 = sub_1D560D188();

  *a5 = v8;
  return result;
}

uint64_t sub_1D5070180()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F89C9C();
  v0 = sub_1D560D138();

  qword_1EC87C070 = v0;
  return result;
}

uint64_t sub_1D507024C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C078 = v0;
  return result;
}

uint64_t sub_1D50702B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_13_1();
  *(v7 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v7 + v0, *MEMORY[0x1E69750B0], v2);
  sub_1D507118C(&qword_1EC7EF210, type metadata accessor for Playlist.Folder.Item);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF1B8 = v1;
  return result;
}

uint64_t sub_1D5070430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_13_1();
  *(v7 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v7 + v0, *MEMORY[0x1E69750B0], v2);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v8, v9);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF1C0 = v1;
  return result;
}

uint64_t sub_1D5070594(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
}

uint64_t sub_1D50705DC()
{
  sub_1D507118C(&qword_1EC7EE420, type metadata accessor for Playlist.Folder);

  return sub_1D5610C58();
}

uint64_t static Playlist.Folder.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E0, &unk_1D5630770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - v8;
  if (sub_1D5614898() == a4 || type metadata accessor for Playlist.Folder() == a4 || type metadata accessor for Playlist.Folder.Item() == a4)
  {
    v28[1] = v4;
    v29 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v14 = v30;
    result = sub_1D4E62638(v30);
    v16 = result;
    v17 = 0;
    v18 = v14 & 0xC000000000000001;
    v19 = v14 & 0xFFFFFFFFFFFFFF8;
    while (v16 != v17)
    {
      if (v18)
      {
        result = MEMORY[0x1DA6EB9B0](v17, v30);
      }

      else
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_22;
        }

        v20 = *(v30 + 8 * v17 + 32);
      }

      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      sub_1D560CE08();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E8, &qword_1D5653040);
      if (__swift_getEnumTagSinglePayload(v9, 1, v21) == 1)
      {
        v22 = sub_1D4E7661C(v9, &qword_1EC7EF1E0, &unk_1D5630770);
        MEMORY[0x1DA6EAF30](v22);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D56151B8();
        }

        result = sub_1D56151F8();
        v29 = v31;
        ++v17;
      }

      else
      {

        result = sub_1D4E7661C(v9, &qword_1EC7EF1E0, &unk_1D5630770);
        ++v17;
      }
    }

    v23 = sub_1D4E62638(v29);

    if (!v23)
    {
      return result;
    }

    v10 = sub_1D560DE58();
    OUTLINED_FUNCTION_9_41();
    sub_1D507118C(v24, v25);
    OUTLINED_FUNCTION_18_34();
    v13 = MEMORY[0x1E69750D0];
  }

  else
  {
    v10 = sub_1D560DE58();
    OUTLINED_FUNCTION_9_41();
    sub_1D507118C(v11, v12);
    OUTLINED_FUNCTION_18_34();
    v13 = MEMORY[0x1E69750C8];
  }

  v26 = *v13;
  OUTLINED_FUNCTION_24_0(v10);
  (*(v27 + 104))();
  return swift_willThrow();
}

uint64_t Playlist.Folder.init(from:)(uint64_t *a1)
{
  type metadata accessor for Playlist.Folder();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v3, v4);
  OUTLINED_FUNCTION_7_47();
  sub_1D507118C(v5, v1);
  OUTLINED_FUNCTION_10_45(&qword_1EC7EF1F8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Folder.encode(to:)()
{
  type metadata accessor for Playlist.Folder();
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v1, v2);
  OUTLINED_FUNCTION_7_47();
  sub_1D507118C(v3, v0);
  OUTLINED_FUNCTION_10_45(&qword_1EC7EF1F8);
  return sub_1D5612688();
}

unint64_t Playlist.Folder.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v4 = Playlist.Folder.name.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D5070C3C()
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
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7EF1C8 = v4;
  return result;
}

uint64_t sub_1D5070DD0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
}

uint64_t sub_1D5070E24()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD52BB0);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Playlist.Folder();
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v3, v4);
  return sub_1D560D978();
}

uint64_t sub_1D5070EF0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53CC8);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD52BA8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD52BB0);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5070FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v5)
  {
    swift_once();
  }

  v6 = sub_1D560D9A8();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_24_0(v6);
  v8 = *(v7 + 16);

  return v8(a3);
}

uint64_t sub_1D507118C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MusicPlatformMigration.performExport(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D50711F4, 0, 0);
}

uint64_t sub_1D50711F4()
{
  type metadata accessor for MusicPlatformMigration.ExportSession();
  swift_allocObject();
  v1 = sub_1D5071754();
  v0[4] = v1;
  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560C758();
  v0[5] = __swift_project_value_buffer(v2, qword_1EC87C300);
  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "[ExportSession] Beginning export.", v5, 2u);
    OUTLINED_FUNCTION_118();
  }

  v6 = v0[2];

  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1D50713BC;
  v9 = v0[3];

  return v11(v1);
}

uint64_t sub_1D50713BC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D50715DC;
  }

  else
  {
    v3 = sub_1D50714D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D50714D0()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134349312;
    *(v7 + 4) = *(v6 + 24);
    *(v7 + 12) = 2050;
    *(v7 + 14) = *(v6 + 32);

    _os_log_impl(&dword_1D4E3F000, v3, v4, "[ExportSession] Completed export of %{public}ld tracks and %{public}ld playlists", v7, 0x16u);
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v8 = v0[4];
  }

  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D50715DC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[ExportSession] Cancelling session due to unhandled exception during export: %{public}@.", v7, 0xCu);
    sub_1D4E765C8(v8, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v8, -1, -1);
    OUTLINED_FUNCTION_118();
  }

  v11 = v0[7];
  v12 = v0[4];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[7];

  return v13();
}

void *sub_1D5071754()
{
  result = [objc_opt_self() autoupdatingSharedLibrary];
  if (result)
  {
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D50717CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1D507517C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_36;
  v12 = _Block_copy(aBlock);

  [v9 databaseConnectionAllowingWrites:0 withBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1D5071994(id a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (a1 && (a1 = sub_1D5074EDC(0xD00000000000025DLL, 0x80000001D56831A0, a1, &selRef_executeQuery_)) != 0)
  {
    (*(v7 + 16))(v10, a3, v6);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    (*(v7 + 32))(v12 + v11, v10, v6);
    v13 = swift_allocObject();
    v14 = sub_1D50752C0;
    *(v13 + 16) = sub_1D50752C0;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1D50754D8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5073288;
    aBlock[3] = &block_descriptor_46;
    v15 = _Block_copy(aBlock);
    a1 = a1;

    [a1 enumerateRowsWithBlock_];
    _Block_release(v15);
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = 0;
  sub_1D5615538();

  return sub_1D4EA7420(v14);
}

void sub_1D5071BF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v211 = a4;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF248, &qword_1D5630D08);
  v8 = *(v178 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v11 = &v170 - v10;
  v180 = sub_1D560C728();
  v172 = *(v180 - 8);
  v12 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v173 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF250, &qword_1D5630D10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v179 = &v170 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v170 - v22;
  v183 = sub_1D560C0A8();
  v24 = *(*(v183 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v183);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v170 - v28;
  if (a1)
  {
    v170 = v27;
    v171 = v26;
    v176 = v11;
    v177 = a5;
    v30 = a1;
    v31 = &selRef_musicKit_changeDetails_type;
    v213 = [v30 int64ForColumnIndex_];
    v32 = [v30 stringForColumnIndex_];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1D5614D68();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    v45 = sub_1D5074C28(v213);
    v207 = v46;
    v208 = v45;

    v209 = [v30 int64ForColumnIndex_];
    if ((v209 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v256 = 0;
      v206 = [v30 intForColumnIndex_] == 1;
      v47 = [v30 intForColumnIndex_];
      if ((v47 & 0x80000000) == 0)
      {
        LODWORD(v182) = v47;
        v253 = 0;
        v48 = [v30 intForColumnIndex_];
        if ((v48 & 0x80000000) == 0)
        {
          LODWORD(v181) = v48;
          v251 = 0;
          v49 = [v30 stringForColumnIndex_];
          if (v49)
          {
            v50 = v49;
            v51 = sub_1D5614D68();
            v204 = v52;
            v205 = v51;
          }

          else
          {
            v204 = 0xE000000000000000;
            v205 = 0;
          }

          v53 = [v30 int64ForColumnIndex_];
          v54 = (v53 + 978307200);
          if (!__OFADD__(v53, 978307200))
          {
            v203 = 1000 * v54;
            if ((v54 * 1000) >> 64 == (1000 * v54) >> 63)
            {
              v249 = 0;
              v55 = [v30 int64ForColumnIndex_];
              if ((v55 & 0x8000000000000000) == 0)
              {
                v196 = v55;
                v247 = 0;
                v56 = [v30 stringForColumnIndex_];
                if (v56)
                {
                  v57 = v56;
                  v58 = sub_1D5614D68();
                  v194 = v59;
                  v195 = v58;
                }

                else
                {
                  v194 = 0xE000000000000000;
                  v195 = 0;
                }

                v60 = [v30 stringForColumnIndex_];
                v197 = v34;
                if (v60)
                {
                  v61 = v60;
                  v62 = sub_1D5614D68();
                  v192 = v63;
                  v193 = v62;
                }

                else
                {
                  v192 = 0xE000000000000000;
                  v193 = 0;
                }

                v64 = [v30 int64ForColumnIndex_];
                v65 = [v30 stringForColumnIndex_];
                if (v65)
                {
                  v66 = v65;
                  v67 = sub_1D5614D68();
                  v201 = v68;
                  v202 = v67;
                }

                else
                {
                  v201 = 0xE000000000000000;
                  v202 = 0;
                }

                *&v228[0] = v64;
                v69 = sub_1D56160F8();
                v199 = v70;
                v200 = v69;
                v245 = 1;
                v198 = [v30 int64ForColumnIndex_];
                if ((v198 & 0x8000000000000000) == 0)
                {
                  v243 = 0;
                  v212 = [v30 int64ForColumnIndex_];
                  if ((v212 & 0x8000000000000000) == 0)
                  {
                    v191 = v30;
                    v175 = v8;
                    v241 = 0;
                    v71 = *(v211 + 16);
                    v72 = objc_allocWithZone(MEMORY[0x1E69B3538]);
                    v73 = [v72 initWithPersistentID:v213 inLibrary:v71];
                    v74 = objc_allocWithZone(MEMORY[0x1E69B3458]);
                    v190 = v73;
                    v75 = [v74 initWithEntity:v73 artworkType:1];
                    v184 = v36;
                    v174 = v75;
                    if (v75 && (v76 = sub_1D5074F40(v75), v77))
                    {
                      v78 = v76;
                      v79 = v77;
                      objc_allocWithZone(MEMORY[0x1E69B3440]);
                      v80 = v71;
                      v81 = sub_1D5074D40(v78, v79, 1, v71);
                      v82 = v81;
                      if (v81)
                      {
                        v83 = [v81 originalFileURL];
                        if (v83)
                        {
                          v84 = v83;
                          sub_1D560BFC8();

                          v85 = 0;
                        }

                        else
                        {
                          v85 = 1;
                        }

                        v91 = v183;
                        __swift_storeEnumTagSinglePayload(v21, v85, 1, v183);
                        sub_1D4F5A3D0(v21, v23);
                        if (__swift_getEnumTagSinglePayload(v23, 1, v91) != 1)
                        {
                          (*(v171 + 32))(v29, v23, v183);
                          v96 = sub_1D560C008();
                          v97 = v151;
                          v152 = qword_1EC7E90C8;

                          if (v152 != -1)
                          {
                            swift_once();
                          }

                          v153 = sub_1D560C758();
                          __swift_project_value_buffer(v153, qword_1EC87C300);

                          v154 = sub_1D560C738();
                          v155 = sub_1D56156E8();

                          if (os_log_type_enabled(v154, v155))
                          {
                            v156 = v97;
                            v157 = swift_slowAlloc();
                            v158 = swift_slowAlloc();
                            v210 = v96;
                            v159 = v158;
                            *&v228[0] = v158;
                            *v157 = 134349314;
                            *(v157 + 4) = v213;
                            *(v157 + 12) = 2082;
                            v160 = sub_1D4E6835C(v210, v156, v228);

                            *(v157 + 14) = v160;
                            _os_log_impl(&dword_1D4E3F000, v154, v155, "[ExportSession] Setting artwork path for %{public}lld: %{public}s.", v157, 0x16u);
                            __swift_destroy_boxed_opaque_existential_1(v159);
                            v161 = v159;
                            v96 = v210;
                            MEMORY[0x1DA6ED200](v161, -1, -1);
                            v162 = v157;
                            v97 = v156;
                            v31 = &selRef_musicKit_changeDetails_type;
                            MEMORY[0x1DA6ED200](v162, -1, -1);
                          }

                          else
                          {
                          }

                          (*(v171 + 8))(v29, v183);
LABEL_54:
                          v229[0] = v200;
                          v229[1] = v199;
                          v229[2] = v202;
                          v229[3] = v201;
                          v229[4] = MEMORY[0x1E69E7CC0];
                          v229[5] = 0;
                          LOBYTE(v230) = v245;
                          *(&v230 + 1) = *v244;
                          HIDWORD(v230) = *&v244[3];
                          v231 = v198;
                          LOBYTE(v232) = v243;
                          *(&v232 + 1) = *v242;
                          HIDWORD(v232) = *&v242[3];
                          v233 = v212;
                          LOBYTE(v234) = v241;
                          BYTE1(v234) = 2;
                          *(&v234 + 2) = v239;
                          HIWORD(v234) = v240;
                          v210 = v96;
                          v235 = v96;
                          v236 = v97;
                          v186 = v230;
                          v187 = v232;
                          v188 = v234;
                          v238 = 0;
                          memset(v237, 0, sizeof(v237));
                          sub_1D5075358(v229, v228);
                          sub_1D4E765C8(v237, &qword_1EC7EF258, &qword_1D5639030);
                          v98 = v191;
                          v99 = [v191 v31[21]];
                          v100 = [v98 stringForColumnIndex_];
                          v189 = v97;
                          if (v100)
                          {
                            v101 = v100;
                            v102 = sub_1D5614D68();
                            v104 = v103;
                          }

                          else
                          {
                            v102 = 0;
                            v104 = 0xE000000000000000;
                          }

                          *&v228[0] = v99;
                          v105 = sub_1D56160F8();
                          v107 = v106;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF260, &qword_1D5630D18);
                          v108 = swift_allocObject();
                          *(v108 + 16) = xmmword_1D561C050;
                          *(v108 + 32) = v105;
                          *(v108 + 40) = v107;
                          *(v108 + 48) = v102;
                          *(v108 + 56) = v104;
                          *(v108 + 64) = 0;
                          *(v108 + 72) = 0;
                          v185 = v108;
                          v109 = v190;
                          if (v190)
                          {
                            v110 = *MEMORY[0x1E69B2F48];
                            v111 = sub_1D5614D68();
                            if (sub_1D5074EDC(v111, v112, v109, &selRef_valueForProperty_))
                            {
                              sub_1D56159A8();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              memset(v227, 0, 32);
                            }

                            v113 = v211;
                            v228[0] = v227[0];
                            v228[1] = v227[1];
                            if (*(&v227[1] + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v114 = HIBYTE(*(&v227[0] + 1)) & 0xFLL;
                                if ((*(&v227[0] + 1) & 0x2000000000000000) == 0)
                                {
                                  v114 = *&v227[0] & 0xFFFFFFFFFFFFLL;
                                }

                                if (v114)
                                {
                                  v115 = sub_1D5614D38();

                                  v116 = [v71 mediaFolderPathByAppendingPathComponent_];

                                  v30 = sub_1D5614D68();
                                  v118 = v117;

                                  v119 = v118;
                                  sub_1D560BF28();
                                  sub_1D560BEF8();
                                  sub_1D560C708();
                                  v120 = v179;
                                  sub_1D560C6D8();
                                  v121 = v180;
                                  if (__swift_getEnumTagSinglePayload(v120, 1, v180) == 1)
                                  {
                                    sub_1D4E765C8(v120, &qword_1EC7EF250, &qword_1D5630D10);
                                    v8 = 0;
                                    v211 = 0;
                                  }

                                  else
                                  {
                                    v8 = sub_1D560C6E8();
                                    v211 = v163;
                                    (*(v172 + 8))(v120, v121);
                                  }

                                  v126 = v119;
                                  if (qword_1EC7E90C8 != -1)
                                  {
                                    swift_once();
                                  }

                                  v164 = sub_1D560C758();
                                  __swift_project_value_buffer(v164, qword_1EC87C300);

                                  v165 = sub_1D560C738();
                                  v166 = sub_1D56156E8();

                                  if (os_log_type_enabled(v165, v166))
                                  {
                                    v167 = swift_slowAlloc();
                                    v180 = swift_slowAlloc();
                                    *&v228[0] = v180;
                                    *v167 = 134349314;
                                    *(v167 + 4) = v213;
                                    *(v167 + 12) = 2082;
                                    v168 = sub_1D4E6835C(v30, v126, v228);

                                    *(v167 + 14) = v168;
                                    _os_log_impl(&dword_1D4E3F000, v165, v166, "[ExportSession] Setting asset path for %{public}lld: %{public}s.", v167, 0x16u);
                                    v169 = v180;
                                    __swift_destroy_boxed_opaque_existential_1(v180);
                                    MEMORY[0x1DA6ED200](v169, -1, -1);
                                    MEMORY[0x1DA6ED200](v167, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  (*(v171 + 8))(v170, v183);
                                  goto LABEL_75;
                                }
                              }

LABEL_70:
                              if (qword_1EC7E90C8 != -1)
                              {
                                swift_once();
                              }

                              v122 = sub_1D560C758();
                              __swift_project_value_buffer(v122, qword_1EC87C300);
                              v123 = sub_1D560C738();
                              v124 = sub_1D56156E8();
                              if (os_log_type_enabled(v123, v124))
                              {
                                v125 = swift_slowAlloc();
                                *v125 = 134349056;
                                *(v125 + 4) = v213;
                                _os_log_impl(&dword_1D4E3F000, v123, v124, "[ExportSession] Failed to get asset path for item persistent ID %{public}lld.", v125, 0xCu);
                                MEMORY[0x1DA6ED200](v125, -1, -1);
                              }

                              v8 = 0;
                              v211 = 0;
                              v30 = 0;
                              v126 = 0;
LABEL_75:
                              v127 = *(v113 + 24);
                              v128 = __OFADD__(v127, 1);
                              v129 = v127 + 1;
                              if (!v128)
                              {
                                v183 = v126;
                                v180 = v182;
                                v181 = v181;
                                *(v113 + 24) = v129;
                                if (qword_1EC7E90C8 == -1)
                                {
LABEL_77:
                                  v182 = v8;
                                  v130 = sub_1D560C758();
                                  __swift_project_value_buffer(v130, qword_1EC87C300);
                                  v131 = v184;

                                  v132 = sub_1D560C738();
                                  v133 = sub_1D56156E8();

                                  v134 = os_log_type_enabled(v132, v133);
                                  v179 = v30;
                                  if (v134)
                                  {
                                    v135 = swift_slowAlloc();
                                    v136 = swift_slowAlloc();
                                    *&v228[0] = v136;
                                    *v135 = 134349314;
                                    *(v135 + 4) = v213;
                                    *(v135 + 12) = 2082;
                                    v137 = v197;
                                    v138 = sub_1D4E6835C(v197, v131, v228);

                                    *(v135 + 14) = v138;
                                    _os_log_impl(&dword_1D4E3F000, v132, v133, "[ExportSession] Exporting item [%{public}lld: %{public}s].", v135, 0x16u);
                                    __swift_destroy_boxed_opaque_existential_1(v136);
                                    MEMORY[0x1DA6ED200](v136, -1, -1);
                                    MEMORY[0x1DA6ED200](v135, -1, -1);
                                  }

                                  else
                                  {

                                    v137 = v197;
                                  }

                                  *&v227[0] = v208;
                                  *(&v227[0] + 1) = v207;
                                  *&v227[1] = v137;
                                  *(&v227[1] + 1) = v131;
                                  v139 = v199;
                                  *&v227[2] = v200;
                                  v140 = v200;
                                  *(&v227[2] + 1) = v199;
                                  v142 = v201;
                                  v141 = v202;
                                  *&v227[3] = v202;
                                  *(&v227[3] + 1) = v201;
                                  v227[4] = MEMORY[0x1E69E7CC0];
                                  *&v227[5] = v186;
                                  v143 = v198;
                                  *(&v227[5] + 1) = v198;
                                  *&v227[6] = v187;
                                  *(&v227[6] + 1) = v212;
                                  *&v227[7] = v188;
                                  *(&v227[7] + 1) = v210;
                                  *&v227[8] = v189;
                                  *(&v227[8] + 1) = v185;
                                  *&v227[9] = v209;
                                  LODWORD(v213) = v256;
                                  BYTE8(v227[9]) = v256;
                                  BYTE9(v227[9]) = v206;
                                  *(&v227[9] + 10) = v254;
                                  HIWORD(v227[9]) = v255;
                                  *&v227[10] = v180;
                                  LODWORD(v173) = v253;
                                  BYTE8(v227[10]) = v253;
                                  *(&v227[10] + 9) = *v252;
                                  HIDWORD(v227[10]) = *&v252[3];
                                  *&v227[11] = v181;
                                  LODWORD(v172) = v251;
                                  BYTE8(v227[11]) = v251;
                                  HIDWORD(v227[11]) = *&v250[3];
                                  *(&v227[11] + 9) = *v250;
                                  *&v227[12] = v205;
                                  *(&v227[12] + 1) = v204;
                                  *&v227[13] = v203;
                                  HIDWORD(v227[13]) = *&v248[3];
                                  *(&v227[13] + 9) = *v248;
                                  HIDWORD(v227[15]) = *&v246[3];
                                  *(&v227[15] + 9) = *v246;
                                  LODWORD(v170) = v249;
                                  BYTE8(v227[13]) = v249;
                                  *&v227[14] = v182;
                                  *(&v227[14] + 1) = v211;
                                  *&v227[15] = v196;
                                  LODWORD(v171) = v247;
                                  BYTE8(v227[15]) = v247;
                                  *&v227[16] = v195;
                                  *(&v227[16] + 1) = v194;
                                  *&v227[17] = v193;
                                  *(&v227[17] + 1) = v192;
                                  *&v227[18] = v179;
                                  *(&v227[18] + 1) = v183;
                                  memcpy(v228, v227, sizeof(v228));
                                  sub_1D50753B4(v227, v214);
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
                                  v144 = v176;
                                  sub_1D5615528();

                                  (*(v175 + 8))(v144, v178);
                                  v145 = v140;
                                  v214[0] = v140;
                                  v214[1] = v139;
                                  v146 = v141;
                                  v214[2] = v141;
                                  v214[3] = v142;
                                  v214[4] = MEMORY[0x1E69E7CC0];
                                  v214[5] = 0;
                                  v215 = v245;
                                  *v216 = *v244;
                                  *&v216[3] = *&v244[3];
                                  v147 = v143;
                                  v217 = v143;
                                  v218 = v243;
                                  *v219 = *v242;
                                  *&v219[3] = *&v242[3];
                                  v148 = v212;
                                  v220 = v212;
                                  v221 = v241;
                                  v222 = 2;
                                  v223 = v239;
                                  v224 = v240;
                                  v149 = v210;
                                  v150 = v189;
                                  v225 = v210;
                                  v226 = v189;
                                  sub_1D5075410(v214);
                                  *&v228[0] = v208;
                                  *(&v228[0] + 1) = v207;
                                  *&v228[1] = v197;
                                  *(&v228[1] + 1) = v184;
                                  *&v228[2] = v145;
                                  *(&v228[2] + 1) = v139;
                                  *&v228[3] = v146;
                                  *(&v228[3] + 1) = v142;
                                  v228[4] = MEMORY[0x1E69E7CC0];
                                  *&v228[5] = v186;
                                  *(&v228[5] + 1) = v147;
                                  *&v228[6] = v187;
                                  *(&v228[6] + 1) = v148;
                                  *&v228[7] = v188;
                                  *(&v228[7] + 1) = v149;
                                  *&v228[8] = v150;
                                  *(&v228[8] + 1) = v185;
                                  *&v228[9] = v209;
                                  BYTE8(v228[9]) = v213;
                                  BYTE9(v228[9]) = v206;
                                  *(&v228[9] + 10) = v254;
                                  HIWORD(v228[9]) = v255;
                                  *&v228[10] = v180;
                                  BYTE8(v228[10]) = v173;
                                  *(&v228[10] + 9) = *v252;
                                  HIDWORD(v228[10]) = *&v252[3];
                                  *&v228[11] = v181;
                                  BYTE8(v228[11]) = v172;
                                  *(&v228[11] + 9) = *v250;
                                  HIDWORD(v228[11]) = *&v250[3];
                                  *&v228[12] = v205;
                                  *(&v228[12] + 1) = v204;
                                  *&v228[13] = v203;
                                  BYTE8(v228[13]) = v170;
                                  HIDWORD(v228[13]) = *&v248[3];
                                  *(&v228[13] + 9) = *v248;
                                  *&v228[14] = v182;
                                  *(&v228[14] + 1) = v211;
                                  *&v228[15] = v196;
                                  BYTE8(v228[15]) = v171;
                                  HIDWORD(v228[15]) = *&v246[3];
                                  *(&v228[15] + 9) = *v246;
                                  *&v228[16] = v195;
                                  *(&v228[16] + 1) = v194;
                                  *&v228[17] = v193;
                                  *(&v228[17] + 1) = v192;
                                  *&v228[18] = v179;
                                  *(&v228[18] + 1) = v183;
                                  sub_1D5075464(v228);
                                  return;
                                }

LABEL_104:
                                swift_once();
                                goto LABEL_77;
                              }

LABEL_103:
                              __break(1u);
                              goto LABEL_104;
                            }
                          }

                          else
                          {
                            memset(v228, 0, 32);
                            v113 = v211;
                          }

                          sub_1D4E765C8(v228, &qword_1EC7E9F98, &qword_1D561C420);
                          goto LABEL_70;
                        }
                      }

                      else
                      {
                        __swift_storeEnumTagSinglePayload(v23, 1, 1, v183);
                      }

                      sub_1D4E765C8(v23, &unk_1EC7E9CA8, &unk_1D561D1D0);
                      if (qword_1EC7E90C8 != -1)
                      {
                        swift_once();
                      }

                      v92 = sub_1D560C758();
                      __swift_project_value_buffer(v92, qword_1EC87C300);
                      v93 = sub_1D560C738();
                      v94 = sub_1D56156E8();
                      if (os_log_type_enabled(v93, v94))
                      {
                        v95 = swift_slowAlloc();
                        *v95 = 134349056;
                        *(v95 + 4) = v213;
                        _os_log_impl(&dword_1D4E3F000, v93, v94, "[ExportSession] Failed to load artwork file URL for %{public}lld.", v95, 0xCu);
                        MEMORY[0x1DA6ED200](v95, -1, -1);
                      }
                    }

                    else
                    {
                      if (qword_1EC7E90C8 != -1)
                      {
                        swift_once();
                      }

                      v86 = sub_1D560C758();
                      __swift_project_value_buffer(v86, qword_1EC87C300);
                      v87 = sub_1D560C738();
                      v88 = sub_1D56156E8();
                      if (os_log_type_enabled(v87, v88))
                      {
                        v89 = swift_slowAlloc();
                        *v89 = 134349056;
                        *(v89 + 4) = v213;
                        _os_log_impl(&dword_1D4E3F000, v87, v88, "[ExportSession] Failed to load available artwork token for %{public}lld.", v89, 0xCu);
                        MEMORY[0x1DA6ED200](v89, -1, -1);
                      }
                    }

                    v96 = 0;
                    v97 = 0;
                    goto LABEL_54;
                  }

LABEL_102:
                  __break(1u);
                  goto LABEL_103;
                }

LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v37 = sub_1D560C758();
  __swift_project_value_buffer(v37, qword_1EC87C300);
  v38 = a2;
  v213 = sub_1D560C738();
  v39 = sub_1D56156C8();

  if (os_log_type_enabled(v213, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    if (a2)
    {
      v42 = a2;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v44 = v43;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v40 + 4) = v43;
    *v41 = v44;
    _os_log_impl(&dword_1D4E3F000, v213, v39, "[ExportSession] Error executing database statement: %{public}@.", v40, 0xCu);
    sub_1D4E765C8(v41, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v41, -1, -1);
    MEMORY[0x1DA6ED200](v40, -1, -1);
  }

  v90 = v213;
}

void sub_1D5073288(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = a2;
  v9 = a3;
  v8(a2, a3, a4);
}

void sub_1D5073308(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D50733A4(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v7 + 104))(&v9 - v6, *MEMORY[0x1E69E8790]);
  return sub_1D5615548();
}

void sub_1D5073480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1D5074E34;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  [v9 databaseConnectionAllowingWrites:0 withBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1D5073654(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v47 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v65 = sub_1D5614BD8();
  if (a1)
  {
    v10 = sub_1D5074FB0(0xD00000000000012DLL, 0x80000001D5682FE0, a1);
    if (v10)
    {
      v47[4] = v8;
      v55 = v6;
      v52 = a2;
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = a3;
      *(v12 + 24) = &v65;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1D5075000;
      *(v13 + 24) = v12;
      v51 = v12;
      v63 = sub_1D5075008;
      v64 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v47[3] = &v61;
      v61 = sub_1D5073288;
      v62 = &block_descriptor_20_0;
      v14 = _Block_copy(&aBlock);
      v49 = a3;

      v50 = v11;
      [v11 enumerateRowsWithBlock_];
      _Block_release(v14);
      v15 = v65;
      v16 = v65 + 64;
      v17 = 1 << *(v65 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v7;
      v20 = v18 & *(v65 + 64);
      v21 = (v17 + 63) >> 6;
      v58 = 0x80000001D5683140;
      v47[2] = v19 + 16;
      v48 = v19;
      v47[1] = v19 + 32;

      v53 = 0;
      v54 = 0;
      v22 = 0;
      *&v23 = 134349056;
      v57 = v23;
      while (v20)
      {
LABEL_11:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = (v22 << 9) | (8 * v25);
        v27 = *(*(v15 + 48) + v26);
        v28 = *(*(v15 + 56) + v26);
        aBlock = v27;

        v29 = sub_1D56160F8();
        aBlock = 0xD00000000000005BLL;
        v60 = v58;
        MEMORY[0x1DA6EAC70](v29);

        v30 = sub_1D5074FB0(aBlock, v60, a1);

        if (v30)
        {
          v35 = v48;
          (*(v48 + 16))(v56, v52, v55);
          v47[0] = (*(v35 + 80) + 40) & ~*(v35 + 80);
          v36 = swift_allocObject();
          v36[2] = v49;
          v36[3] = v27;
          v36[4] = v28;
          v37 = v36;
          (*(v35 + 32))(v36 + v47[0], v56, v55);

          sub_1D4EA7420(v54);
          v38 = swift_allocObject();
          v54 = sub_1D5075030;
          *(v38 + 16) = sub_1D5075030;
          *(v38 + 24) = v37;
          v63 = sub_1D50754D8;
          v64 = v38;
          aBlock = MEMORY[0x1E69E9820];
          v60 = 1107296256;
          v61 = sub_1D5073288;
          v62 = &block_descriptor_30_0;
          v39 = _Block_copy(&aBlock);

          [v30 enumerateRowsWithBlock_];
          _Block_release(v39);

          v53 = v37;
        }

        else
        {

          if (qword_1EC7E90C8 != -1)
          {
            swift_once();
          }

          v31 = sub_1D560C758();
          __swift_project_value_buffer(v31, qword_1EC87C300);
          v32 = sub_1D560C738();
          v33 = sub_1D56156C8();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = v57;
            *(v34 + 4) = v27;
            _os_log_impl(&dword_1D4E3F000, v32, v33, "[ExportSession] Failed to query properties for playlist %{public}lld.", v34, 0xCu);
            MEMORY[0x1DA6ED200](v34, -1, -1);
          }
        }
      }

      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          aBlock = 0;
          sub_1D5615538();

          v44 = sub_1D5075000;
          v45 = v54;
          goto LABEL_23;
        }

        v20 = *(v16 + 8 * v24);
        ++v22;
        if (v20)
        {
          v22 = v24;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_1EC7E90C8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v40 = sub_1D560C758();
  __swift_project_value_buffer(v40, qword_1EC87C300);
  v41 = sub_1D560C738();
  v42 = sub_1D56156C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D4E3F000, v41, v42, "[ExportSession] Failed to query playlist items.", v43, 2u);
    MEMORY[0x1DA6ED200](v43, -1, -1);
  }

  aBlock = 0;
  sub_1D5615538();
  v44 = 0;
  v45 = 0;
LABEL_23:

  sub_1D4EA7420(v44);
  return sub_1D4EA7420(v45);
}

void sub_1D5073D44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 int64ForColumnIndex_];
    v8 = sub_1D5074C28([v6 int64ForColumnIndex_]);
    v10 = v9;
    if (sub_1D4ED087C(v7, *a5))
    {
    }

    else
    {
      v20 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v28[0] = *a5;
      sub_1D4F14288();
      *a5 = v28[0];
    }

    v22 = sub_1D5089C50(v28, v7);
    if (*v21)
    {
      v23 = v21;
      sub_1D4EFF458();
      v24 = *(*v23 + 16);
      sub_1D4EFF6C0(v24);
      v25 = *v23;
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = v8;
      *(v26 + 40) = v10;
    }

    else
    {
    }

    (v22)(v28, 0);
  }

  else
  {
    if (qword_1EC7E90C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D560C758();
    __swift_project_value_buffer(v12, qword_1EC87C300);
    v13 = a2;
    oslog = sub_1D560C738();
    v14 = sub_1D56156C8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1D4E3F000, oslog, v14, "[ExportSession] Error executing database statement: %{public}@.", v15, 0xCu);
      sub_1D4E765C8(v16, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v16, -1, -1);
      MEMORY[0x1DA6ED200](v15, -1, -1);
    }
  }
}

void sub_1D5073FD8(void *a1, void *a2, uint64_t a3, char *a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v132 = a7;
  v139 = a5;
  v135 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF238, &qword_1D5630CF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v115 - v19;
  v21 = sub_1D560C0A8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v118 = v25;
    v119 = v23;
    v129 = v11;
    v136 = a6;
    v26 = a1;
    v27 = [v26 stringForColumnIndex_];
    if (v27)
    {
      v28 = v27;
      v138 = sub_1D5614D68();
      v30 = v29;
    }

    else
    {
      v138 = 0;
      v30 = 0xE000000000000000;
    }

    v39 = [v26 stringForColumnIndex_];
    v130 = v10;
    if (v39)
    {
      v40 = v39;
      v137 = sub_1D5614D68();
      v134 = v41;
    }

    else
    {
      v137 = 0;
      v134 = 0xE000000000000000;
    }

    v42 = 978307200;
    v43 = [v26 int64ForColumnIndex_];
    v44 = [v26 int64ForColumnIndex_];
    v45 = sub_1D5074C28(v139);
    v127 = v46;
    v128 = v45;
    v47 = (v43 + 978307200);
    if (__OFADD__(v43, 978307200))
    {
      __break(1u);
    }

    else
    {
      v48 = 1000 * v47;
      if ((v47 * 1000) >> 64 == (1000 * v47) >> 63)
      {
        v146 = 0;
        v49 = (v44 + 978307200);
        if (!__OFADD__(v44, 978307200))
        {
          if ((v49 * 1000) >> 64 == (1000 * v49) >> 63)
          {
            v120 = v21;
            v125 = 1000 * v49;
            v126 = v26;
            v133 = v48;
            v144 = 0;
            v50 = *(v135 + 2);
            v51 = objc_allocWithZone(MEMORY[0x1E69B34A0]);
            v11 = v30;

            v42 = v136;

            v52 = [v51 initWithPersistentID:v139 inLibrary:v50];
            v53 = objc_allocWithZone(MEMORY[0x1E69B3458]);
            v124 = v52;
            v54 = [v53 initWithEntity:v52 artworkType:5];
            v123 = v54;
            if (!v54 || (v55 = sub_1D5074F40(v54), !v56))
            {
              if (qword_1EC7E90C8 != -1)
              {
                swift_once();
              }

              v65 = sub_1D560C758();
              __swift_project_value_buffer(v65, qword_1EC87C300);
              v66 = sub_1D560C738();
              v67 = sub_1D56156E8();
              v68 = os_log_type_enabled(v66, v67);
              v18 = v138;
              if (v68)
              {
                v69 = swift_slowAlloc();
                *v69 = 134349056;
                *(v69 + 4) = v139;
                _os_log_impl(&dword_1D4E3F000, v66, v67, "[ExportSession] No available artwork token for container persistent ID %{public}lld.", v69, 0xCu);
                v70 = v69;
                v42 = v136;
                MEMORY[0x1DA6ED200](v70, -1, -1);
              }

              v20 = 0;
              v122 = 0;
LABEL_47:
              v91 = *(v135 + 4);
              v92 = __OFADD__(v91, 1);
              v93 = v91 + 1;
              if (!v92)
              {
                *(v135 + 4) = v93;
                if (qword_1EC7E90C8 == -1)
                {
LABEL_49:
                  v94 = sub_1D560C758();
                  __swift_project_value_buffer(v94, qword_1EC87C300);

                  v95 = sub_1D560C738();
                  v96 = sub_1D56156E8();

                  v97 = os_log_type_enabled(v95, v96);
                  v135 = v20;
                  v138 = v18;
                  if (v97)
                  {
                    v98 = swift_slowAlloc();
                    v99 = swift_slowAlloc();
                    __dst[0] = v99;
                    *v98 = 134349826;
                    *(v98 + 4) = v139;
                    *(v98 + 12) = 2082;
                    v100 = sub_1D4E6835C(v18, v11, __dst);
                    v101 = v11;
                    v102 = v42;
                    v103 = v100;
                    v104 = v101;

                    *(v98 + 14) = v103;
                    *(v98 + 22) = 2050;
                    *(v98 + 24) = *(v102 + 16);

                    *(v98 + 32) = 2082;
                    v105 = MEMORY[0x1DA6EAF70](v102, MEMORY[0x1E69E6158]);
                    v107 = sub_1D4E6835C(v105, v106, __dst);

                    *(v98 + 34) = v107;
                    _os_log_impl(&dword_1D4E3F000, v95, v96, "[ExportSession] Exporting playlist [%{public}lld: %{public}s] with %{public}ld tracks: %{public}s.", v98, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x1DA6ED200](v99, -1, -1);
                    MEMORY[0x1DA6ED200](v98, -1, -1);
                  }

                  else
                  {

                    v104 = v11;
                    v102 = v42;
                  }

                  v108 = v131;
                  v109 = v138;
                  v111 = v127;
                  v110 = v128;
                  v141[0] = v128;
                  v141[1] = v127;
                  v141[2] = v138;
                  v141[3] = v104;
                  v121 = v104;
                  v141[4] = v137;
                  v141[5] = v134;
                  v141[6] = v133;
                  LODWORD(v139) = v146;
                  LOBYTE(v141[7]) = v146;
                  *(&v141[7] + 1) = *v145;
                  HIDWORD(v141[7]) = *&v145[3];
                  v112 = v125;
                  v141[8] = v125;
                  LODWORD(v132) = v144;
                  LOBYTE(v141[9]) = v144;
                  HIDWORD(v141[9]) = *&v143[3];
                  *(&v141[9] + 1) = *v143;
                  v113 = v135;
                  v141[10] = v102;
                  v141[11] = v135;
                  v114 = v122;
                  v141[12] = v122;
                  memcpy(__dst, v141, sizeof(__dst));
                  sub_1D50750CC(v141, &v140);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
                  sub_1D5615528();

                  (*(v129 + 8))(v108, v130);
                  __dst[0] = v110;
                  __dst[1] = v111;
                  __dst[2] = v109;
                  __dst[3] = v121;
                  __dst[4] = v137;
                  __dst[5] = v134;
                  __dst[6] = v133;
                  LOBYTE(__dst[7]) = v139;
                  *(&__dst[7] + 1) = *v145;
                  HIDWORD(__dst[7]) = *&v145[3];
                  __dst[8] = v112;
                  LOBYTE(__dst[9]) = v132;
                  *(&__dst[9] + 1) = *v143;
                  HIDWORD(__dst[9]) = *&v143[3];
                  __dst[10] = v136;
                  __dst[11] = v113;
                  __dst[12] = v114;
                  sub_1D5075128(__dst);
                  return;
                }

LABEL_58:
                swift_once();
                goto LABEL_49;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v57 = v55;
            v58 = v56;
            objc_allocWithZone(MEMORY[0x1E69B3440]);
            v59 = v50;
            v60 = sub_1D5074D40(v57, v58, 5, v50);
            v61 = v60;
            if (v60)
            {
              v62 = [v60 originalFileURL];
              if (v62)
              {
                v63 = v62;
                sub_1D560BFC8();

                v64 = 0;
              }

              else
              {
                v64 = 1;
              }

              v72 = v120;
              __swift_storeEnumTagSinglePayload(v18, v64, 1, v120);
              sub_1D4F5A3D0(v18, v20);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v72);
              v18 = v138;
              if (EnumTagSinglePayload != 1)
              {
                (*(v119 + 32))(v118, v20, v72);
                v20 = sub_1D560C008();
                v79 = v78;
                v80 = qword_1EC7E90C8;

                if (v80 != -1)
                {
                  swift_once();
                }

                v81 = sub_1D560C758();
                __swift_project_value_buffer(v81, qword_1EC87C300);

                v82 = sub_1D560C738();
                v83 = sub_1D56156E8();

                v117 = v83;
                v84 = os_log_type_enabled(v82, v83);
                v122 = v79;
                if (v84)
                {
                  v85 = swift_slowAlloc();
                  v116 = v82;
                  v86 = v85;
                  v87 = swift_slowAlloc();
                  __dst[0] = v87;
                  *v86 = 134349314;
                  *(v86 + 4) = v139;
                  *(v86 + 12) = 2082;
                  v88 = sub_1D4E6835C(v20, v79, __dst);
                  v115 = v61;
                  v89 = v88;

                  *(v86 + 14) = v89;
                  v90 = v116;
                  _os_log_impl(&dword_1D4E3F000, v116, v117, "[ExportSession] Setting artwork path for container persistent ID %{public}lld: %{public}s.", v86, 0x16u);
                  __swift_destroy_boxed_opaque_existential_1(v87);
                  MEMORY[0x1DA6ED200](v87, -1, -1);
                  MEMORY[0x1DA6ED200](v86, -1, -1);
                }

                else
                {
                }

                (*(v119 + 8))(v118, v72);
                goto LABEL_46;
              }
            }

            else
            {
              __swift_storeEnumTagSinglePayload(v20, 1, 1, v120);
              v18 = v138;
            }

            sub_1D4E765C8(v20, &unk_1EC7E9CA8, &unk_1D561D1D0);
            if (qword_1EC7E90C8 != -1)
            {
              swift_once();
            }

            v74 = sub_1D560C758();
            __swift_project_value_buffer(v74, qword_1EC87C300);
            v75 = sub_1D560C738();
            v76 = sub_1D56156C8();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              *v77 = 134349056;
              *(v77 + 4) = v139;
              _os_log_impl(&dword_1D4E3F000, v75, v76, "[ExportSession] Failed to load artwork file url for container persistent ID %{public}lld.", v77, 0xCu);
              MEMORY[0x1DA6ED200](v77, -1, -1);
            }

            v20 = 0;
            v122 = 0;
LABEL_46:
            v42 = v136;
            goto LABEL_47;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EC87C300);
  v32 = a2;
  v139 = sub_1D560C738();
  v33 = sub_1D56156C8();

  if (os_log_type_enabled(v139, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    if (a2)
    {
      v36 = a2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = v37;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    *(v34 + 4) = v37;
    *v35 = v38;
    _os_log_impl(&dword_1D4E3F000, v139, v33, "[ExportSession] Error executing database statement. %{public}@.", v34, 0xCu);
    sub_1D4E765C8(v35, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v35, -1, -1);
    MEMORY[0x1DA6ED200](v34, -1, -1);
  }

  v71 = v139;
}

uint64_t sub_1D5074C28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D561D750;
  v3 = MEMORY[0x1E69E7360];
  v4 = MEMORY[0x1E69E73D8];
  *(v2 + 56) = MEMORY[0x1E69E7360];
  *(v2 + 64) = v4;
  *(v2 + 32) = a1 >> 32;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = WORD1(a1);
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = (a1 >> 8);
  *(v2 + 176) = v3;
  *(v2 + 184) = v4;
  *(v2 + 152) = (a1 >> 4);
  *(v2 + 216) = v3;
  *(v2 + 224) = v4;
  *(v2 + 192) = a1;

  return sub_1D5614D88();
}

uint64_t MusicPlatformMigration.ExportSession.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1D5074D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1D5614D38();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithToken:v8 artworkType:a3 musicLibrary:a4];

  return v9;
}

uint64_t sub_1D5074E34(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D5073654(a1, v1 + v4, v5);
}

id sub_1D5074EDC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1D5614D38();

  v7 = [a3 *a4];

  return v7;
}

uint64_t sub_1D5074F40(void *a1)
{
  v2 = [a1 availableArtworkToken];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D5614D68();

  return v3;
}

id sub_1D5074FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  v5 = [a3 executeQuery_];

  return v5;
}

uint64_t sub_1D5075008()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1D5075030(void *a1, void *a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0) - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  sub_1D5073FD8(a1, a2, a3, v8, v9, v10, v11);
}

uint64_t sub_1D507517C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D5071994(a1, v4, v5);
}

uint64_t objectdestroy_32Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1D50752C0(void *a1, void *a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1D5071BF0(a1, a2, a3, v8, v9);
}

uint64_t Album.presto_audioTraits.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D56138C8();
  v2 = sub_1D56139A8();

  return sub_1D53895E8(v2, a1);
}

uint64_t sub_1D507552C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D50756A0();
  v0 = sub_1D560D138();

  qword_1EC7EF268 = v0;
  return result;
}

uint64_t sub_1D5075600@<X0>(uint64_t a1@<X8>)
{
  result = Album.presto_audioTraits.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t static PartialMusicProperty<A>.presto_audioTraits.getter()
{
  if (qword_1EC7E8D48 != -1)
  {
    swift_once();
  }
}

{
  if (qword_1EC7E9400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D50756A0()
{
  result = qword_1EC7EF278;
  if (!qword_1EC7EF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF278);
  }

  return result;
}

uint64_t sub_1D50756F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a3;
  v140 = a2;
  v133 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = &v117 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v136 = &v117 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v128 = &v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v143 = &v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v125 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E8, &qword_1D561CAD8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v124 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v117 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v123 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v149 = &v117 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EA7F8, &unk_1D56311B0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v122 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v117 - v39;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v127 = *(v147 - 8);
  v41 = *(v127 + 64);
  v42 = MEMORY[0x1EEE9AC00](v147);
  v121 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v117 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA808, &unk_1D56311C0);
  v135 = *(v46 - 8);
  v47 = *(v135 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v120 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v117 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v134 = *(v52 - 8);
  v53 = *(v134 + 64);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v119 = &v117 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v144 = &v117 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA818, &qword_1D561CAE0);
  v137 = *(v57 - 8);
  v58 = *(v137 + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v118 = &v117 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v117 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v141 = v51;
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v139 = v45;
  v126 = v63;
  v130 = a1;
  sub_1D5612378();
  v142 = v40;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v57);
  __swift_storeEnumTagSinglePayload(v149, 1, 1, v52);
  v146 = v46;
  __swift_storeEnumTagSinglePayload(v148, 1, 1, v46);
  __swift_storeEnumTagSinglePayload(v145, 1, 1, v147);
  v138 = v62;
  if (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8())
  {
    v64 = v142;
    sub_1D4E50004(v142, &off_1EC7EA7F8, &unk_1D56311B0);
    (*(v137 + 16))(v64, v138, v57);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v57);
    v65 = v145;
  }

  else
  {
    v66 = v122;
    sub_1D5612348();
    v64 = v142;
    sub_1D4E68940(v66, v142, &off_1EC7EA7F8, &unk_1D56311B0);
    v67 = v123;
    sub_1D5612348();
    sub_1D4E68940(v67, v149, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v68 = v124;
    sub_1D5612348();
    sub_1D4E68940(v68, v148, &qword_1EC7EA7E8, &qword_1D561CAD8);
    v69 = v125;
    sub_1D5612348();
    v65 = v145;
    sub_1D4E68940(v69, v145, &qword_1EC7EA7E0, &unk_1D5623AB0);
  }

  v70 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v57);
  v72 = v136;
  v73 = v128;
  if (!EnumTagSinglePayload)
  {
    v74 = v137;
    v75 = v118;
    (*(v137 + 16))(v118, v142, v57);
    v76 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v76);
    sub_1D56141F8();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7D0, MEMORY[0x1E6977048]);
    sub_1D5612368();
    sub_1D4E50004(v73, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v74 + 8))(v75, v57);
    v70 = 0;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v78 = 1;
  __swift_storeEnumTagSinglePayload(v143, v70, 1, v77);
  if (!__swift_getEnumTagSinglePayload(v149, 1, v52))
  {
    v79 = v134;
    v80 = v72;
    v81 = v119;
    (*(v134 + 16))(v119, v149, v52);
    v82 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v82);
    sub_1D5613C48();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
    sub_1D5612368();
    sub_1D4E50004(v73, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v83 = v81;
    v72 = v80;
    (*(v79 + 8))(v83, v52);
    v78 = 0;
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v85 = 1;
  __swift_storeEnumTagSinglePayload(v72, v78, 1, v84);
  v86 = __swift_getEnumTagSinglePayload(v148, 1, v146);
  v87 = v131;
  if (!v86)
  {
    v88 = v135;
    v89 = *(v135 + 16);
    v90 = v120;
    v125 = v57;
    v91 = v52;
    v92 = v146;
    v89(v120, v148, v146);
    v93 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v93);
    sub_1D5614B68();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7C0, MEMORY[0x1E6977550]);
    sub_1D5612368();
    sub_1D4E50004(v73, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v94 = v92;
    v52 = v91;
    v57 = v125;
    v65 = v145;
    (*(v88 + 8))(v90, v94);
    v85 = 0;
  }

  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  __swift_storeEnumTagSinglePayload(v87, v85, 1, v95);
  if (__swift_getEnumTagSinglePayload(v65, 1, v147))
  {

    v96 = sub_1D560CD48();
    (*(*(v96 - 8) + 8))(v140, v96);
    (*(*(v126 - 8) + 8))(v130);
    (*(v127 + 8))(v139, v147);
    v97 = 1;
    v98 = v132;
  }

  else
  {
    v125 = v52;
    v99 = v127;
    v100 = v65;
    v101 = v147;
    (*(v127 + 16))(v121, v100, v147);
    v102 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v102);
    v124 = type metadata accessor for SocialProfile();
    v103 = sub_1D560CD48();
    v123 = sub_1D50A2470(&qword_1EDD57510, type metadata accessor for SocialProfile);
    sub_1D50A2470(&qword_1EDD57518, type metadata accessor for SocialProfile);
    v98 = v132;
    v104 = v87;
    v105 = v57;
    v106 = v140;
    v107 = v121;
    sub_1D5612368();

    v108 = *(*(v103 - 8) + 8);
    v109 = v106;
    v57 = v105;
    v87 = v104;
    v110 = v103;
    v72 = v136;
    v108(v109, v110);
    (*(*(v126 - 8) + 8))(v130);
    sub_1D4E50004(v73, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v111 = *(v99 + 8);
    v111(v107, v101);
    v112 = v101;
    v65 = v145;
    v111(v139, v112);
    v52 = v125;
    v97 = 0;
  }

  (*(v135 + 8))(v141, v146);
  (*(v134 + 8))(v144, v52);
  (*(v137 + 8))(v138, v57);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(v98, v97, 1, v113);
  v114 = v133;
  sub_1D4F39A1C(v143, v133, &qword_1EC7EA790, &unk_1D561FB10);
  v115 = type metadata accessor for CuratorRelationshipProvider();
  sub_1D4F39A1C(v72, v114 + v115[5], &qword_1EC7EA788, &unk_1D56223A0);
  sub_1D4F39A1C(v87, v114 + v115[6], &qword_1EC7EA780, &unk_1D561FB20);
  sub_1D4F39A1C(v98, v114 + v115[7], &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4E50004(v65, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4E50004(v148, &qword_1EC7EA7E8, &qword_1D561CAD8);
  sub_1D4E50004(v149, &qword_1EC7EA7F0, &unk_1D561E8C0);
  return sub_1D4E50004(v142, &off_1EC7EA7F8, &unk_1D56311B0);
}

uint64_t sub_1D50768AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v74 = a2;
  v4 = sub_1D560CD48();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v68 - v15;
  v17 = sub_1D5613578();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v69 = *(v26 - 8);
  v27 = *(v69 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v71 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v77 = &v68 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v80 = &v68 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v68 - v34;
  v79 = v3;
  sub_1D4F39AB0(v3, v25, &qword_1EC7EA790, &unk_1D561FB10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v36);
  v75 = v4;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v25, &qword_1EC7EA790, &unk_1D561FB10);
    v38 = 1;
  }

  else
  {
    (*(v18 + 104))(v21, *MEMORY[0x1E6976A78], v17);
    sub_1D50A2470(&qword_1EC7EA7D0, MEMORY[0x1E6977048]);
    sub_1D560DA88();
    (*(v18 + 8))(v21, v17);
    (*(*(v36 - 8) + 8))(v25, v36);
    v38 = 0;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v76 = v35;
  __swift_storeEnumTagSinglePayload(v35, v38, 1, v39);
  v40 = type metadata accessor for CuratorRelationshipProvider();
  sub_1D4F39AB0(v79 + v40[5], v16, &qword_1EC7EA788, &unk_1D56223A0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v42 = __swift_getEnumTagSinglePayload(v16, 1, v41);
  v43 = v77;
  v44 = v68;
  if (v42 == 1)
  {
    sub_1D4E50004(v16, &qword_1EC7EA788, &unk_1D56223A0);
    v45 = 1;
    v46 = v80;
  }

  else
  {
    (*(v18 + 104))(v21, *MEMORY[0x1E6976A78], v17);
    sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
    v46 = v80;
    sub_1D560DA88();
    (*(v18 + 8))(v21, v17);
    (*(*(v41 - 8) + 8))(v16, v41);
    v45 = 0;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v46, v45, 1, v47);
  sub_1D4F39AB0(v79 + v40[6], v44, &qword_1EC7EA780, &unk_1D561FB20);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  if (__swift_getEnumTagSinglePayload(v44, 1, v48) == 1)
  {
    sub_1D4E50004(v44, &qword_1EC7EA780, &unk_1D561FB20);
    v49 = 1;
    v50 = v75;
    v51 = MEMORY[0x1E6976A78];
  }

  else
  {
    v51 = MEMORY[0x1E6976A78];
    (*(v18 + 104))(v21, *MEMORY[0x1E6976A78], v17);
    sub_1D50A2470(&qword_1EC7EA7C0, MEMORY[0x1E6977550]);
    v50 = v75;
    sub_1D560DA88();
    (*(v18 + 8))(v21, v17);
    (*(*(v48 - 8) + 8))(v44, v48);
    v49 = 0;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v43, v49, 1, v52);
  v53 = v70;
  sub_1D4F39AB0(v79 + v40[7], v70, &qword_1EC7EA778, &qword_1D5622E60);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v55 = __swift_getEnumTagSinglePayload(v53, 1, v54);
  v56 = v71;
  if (v55 == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7EA778, &qword_1D5622E60);
    v57 = 1;
    v58 = v78;
  }

  else
  {
    (*(v18 + 104))(v21, *v51, v17);
    sub_1D50A2470(&qword_1EDD57510, type metadata accessor for SocialProfile);
    v58 = v78;
    sub_1D560DA88();
    (*(v18 + 8))(v21, v17);
    (*(*(v54 - 8) + 8))(v53, v54);
    v57 = 0;
  }

  v59 = v80;
  v60 = v50;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v56, v57, 1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
  v62 = *(v69 + 72);
  v63 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v64 = v56;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D561CA30;
  sub_1D4F39AB0(v76, v65 + v63, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4F39AB0(v59, v65 + v63 + v62, &qword_1EC7EA798, &unk_1D5622EF0);
  v66 = v77;
  sub_1D4F39AB0(v77, v65 + v63 + 2 * v62, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4F39AB0(v64, v65 + v63 + 3 * v62, &qword_1EC7EA798, &unk_1D5622EF0);
  v81 = v65;
  (*(v72 + 16))(v73, v58, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
  sub_1D4E62A60(&qword_1EC7EA7B8, &qword_1EC7EA7B0, &qword_1D5623B50);
  sub_1D5612408();
  sub_1D4E50004(v64, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v66, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v80, &qword_1EC7EA798, &unk_1D5622EF0);
  return sub_1D4E50004(v76, &qword_1EC7EA798, &unk_1D5622EF0);
}

void sub_1D50773C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v913 = v24;
  v914 = v23;
  v26 = v25;
  v915 = v27;
  v28 = type metadata accessor for UploadedVideo();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v907 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v34 = OUTLINED_FUNCTION_12_0(v33, v886);
  v860 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  v40 = OUTLINED_FUNCTION_48(v39);
  v41 = type metadata accessor for CloudUploadedVideo(v40);
  v42 = OUTLINED_FUNCTION_20(v41, &v882);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v906 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for UploadedAudio();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v905 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  v52 = OUTLINED_FUNCTION_12_0(v51, v883);
  v856 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_2();
  v58 = OUTLINED_FUNCTION_48(v57);
  v59 = type metadata accessor for CloudUploadedAudio(v58);
  v60 = OUTLINED_FUNCTION_20(v59, &v878);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  v904 = v63;
  OUTLINED_FUNCTION_70_0();
  v64 = type metadata accessor for TVShow();
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v903 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v70 = OUTLINED_FUNCTION_12_0(v69, v879);
  v851[1] = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  v76 = OUTLINED_FUNCTION_48(v75);
  v77 = type metadata accessor for CloudTVShow(v76);
  v78 = OUTLINED_FUNCTION_20(v77, &v874);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  v902 = v81;
  OUTLINED_FUNCTION_70_0();
  v82 = type metadata accessor for TVSeason();
  v83 = OUTLINED_FUNCTION_22(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  v901 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  v88 = OUTLINED_FUNCTION_12_0(v87, &v875);
  v848[0] = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  v94 = OUTLINED_FUNCTION_48(v93);
  v95 = type metadata accessor for CloudTVSeason(v94);
  v96 = OUTLINED_FUNCTION_20(v95, &v870);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  v900 = v99;
  OUTLINED_FUNCTION_70_0();
  v100 = type metadata accessor for TVEpisode();
  v101 = OUTLINED_FUNCTION_22(v100);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  v899 = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v106 = OUTLINED_FUNCTION_12_0(v105, &v871);
  v844 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13_2();
  v112 = OUTLINED_FUNCTION_48(v111);
  v113 = type metadata accessor for CloudTVEpisode(v112);
  v114 = OUTLINED_FUNCTION_20(v113, v865);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5_0();
  v898 = v117;
  OUTLINED_FUNCTION_70_0();
  v118 = sub_1D5614408();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v867);
  v842 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  v897 = v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v125 = OUTLINED_FUNCTION_12_0(v124, &a18);
  v839 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v130);
  v131 = sub_1D560FD68();
  v132 = OUTLINED_FUNCTION_12_0(v131, &a17);
  v837[1] = v133;
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v136);
  v137 = sub_1D5613838();
  v138 = OUTLINED_FUNCTION_12_0(v137, &v862);
  v836 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v144 = OUTLINED_FUNCTION_12_0(v143, &v860);
  v833 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v149);
  v150 = sub_1D5614A18();
  v151 = OUTLINED_FUNCTION_12_0(v150, &a14);
  v831[1] = v152;
  v154 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v155);
  v156 = type metadata accessor for SocialProfile();
  v157 = OUTLINED_FUNCTION_22(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v162 = OUTLINED_FUNCTION_12_0(v161, &v856);
  v829 = v163;
  v165 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v167);
  v168 = sub_1D5611998();
  v169 = OUTLINED_FUNCTION_12_0(v168, &a11);
  v890[0] = v170;
  v172 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v173);
  v174 = sub_1D560F8B8();
  v175 = OUTLINED_FUNCTION_12_0(v174, &v853);
  v827 = v176;
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v179);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v181 = OUTLINED_FUNCTION_12_0(v180, v851);
  v824 = v182;
  v184 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v186);
  v187 = sub_1D5610C48();
  v188 = OUTLINED_FUNCTION_12_0(v187, &v917);
  v822 = v189;
  v191 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v192);
  v193 = sub_1D5614B68();
  v194 = OUTLINED_FUNCTION_12_0(v193, v848);
  v820 = v195;
  v197 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v194);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v198);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v200 = OUTLINED_FUNCTION_12_0(v199, &v846);
  v817 = v201;
  v203 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v200);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v205);
  v206 = sub_1D5610908();
  v207 = OUTLINED_FUNCTION_12_0(v206, &v914);
  v816 = v208;
  v210 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v211);
  v212 = type metadata accessor for Playlist.Folder();
  v213 = OUTLINED_FUNCTION_22(v212);
  v215 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  v218 = OUTLINED_FUNCTION_12_0(v217, &v842);
  v813 = v219;
  v221 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v218);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v223);
  v224 = sub_1D5611C58();
  v225 = OUTLINED_FUNCTION_12_0(v224, &v911);
  v883[0] = v226;
  v228 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v229);
  v230 = sub_1D5614898();
  v231 = OUTLINED_FUNCTION_12_0(v230, &v839);
  v811 = v232;
  v234 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v231);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v235);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v237 = OUTLINED_FUNCTION_12_0(v236, v837);
  v808 = v238;
  v240 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v237);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v242);
  v243 = sub_1D5610588();
  v244 = OUTLINED_FUNCTION_12_0(v243, &v907);
  v806[1] = v245;
  v247 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v244);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v248);
  v249 = sub_1D560EEA8();
  v250 = OUTLINED_FUNCTION_12_0(v249, &v833);
  v805 = v251;
  v253 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v250);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v254);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v256 = OUTLINED_FUNCTION_12_0(v255, v831);
  v803 = v257;
  v259 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v256);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v260);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v261);
  v262 = sub_1D560D068();
  v263 = OUTLINED_FUNCTION_12_0(v262, &v904);
  v801 = v264;
  v266 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v263);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v267);
  v268 = type metadata accessor for MusicMovie();
  v269 = OUTLINED_FUNCTION_22(v268);
  v271 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v269);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v272);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v274 = OUTLINED_FUNCTION_12_0(v273, &v827);
  v798[1] = v275;
  v277 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v274);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v278);
  OUTLINED_FUNCTION_13_2();
  v280 = OUTLINED_FUNCTION_48(v279);
  v281 = type metadata accessor for CloudMusicMovie(v280);
  v282 = OUTLINED_FUNCTION_20(v281, &v820);
  v284 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v282);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v285);
  v286 = sub_1D5613C48();
  v287 = OUTLINED_FUNCTION_12_0(v286, &v824);
  v796 = v288;
  v290 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v287);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v291);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v293 = OUTLINED_FUNCTION_12_0(v292, &v821);
  v793[0] = v294;
  v296 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v293);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v297);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v298);
  v299 = sub_1D560F478();
  v300 = OUTLINED_FUNCTION_12_0(v299, &v899);
  v791 = v301;
  v303 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v300);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v304);
  v305 = type metadata accessor for EditorialItem();
  v306 = OUTLINED_FUNCTION_22(v305);
  v308 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v306);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v309);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  v311 = OUTLINED_FUNCTION_12_0(v310, &v816);
  v789 = v312;
  v314 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v311);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v315);
  OUTLINED_FUNCTION_13_2();
  v317 = OUTLINED_FUNCTION_48(v316);
  v318 = type metadata accessor for CloudEditorialItem(v317);
  v319 = OUTLINED_FUNCTION_20(v318, &v810);
  v321 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v319);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v322);
  v323 = sub_1D56141F8();
  v324 = OUTLINED_FUNCTION_12_0(v323, &v813);
  v788 = v325;
  v327 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v324);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v328);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v330 = OUTLINED_FUNCTION_12_0(v329, &v811);
  v787 = v331;
  v333 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v330);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v334);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v335);
  v336 = sub_1D560FB08();
  v337 = OUTLINED_FUNCTION_12_0(v336, &v894);
  v786 = v338;
  v340 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v337);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v341);
  v342 = type metadata accessor for CreditArtist();
  v343 = OUTLINED_FUNCTION_22(v342);
  v345 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v343);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v346);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  v348 = OUTLINED_FUNCTION_12_0(v347, v806);
  v785 = v349;
  v351 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v348);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v352);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v353);
  v354 = sub_1D5610F78();
  v355 = OUTLINED_FUNCTION_12_0(v354, &v892);
  v866 = v356;
  v358 = *(v357 + 64);
  MEMORY[0x1EEE9AC00](v355);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v359);
  v360 = type metadata accessor for Composer();
  v361 = OUTLINED_FUNCTION_22(v360);
  v363 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v361);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v364);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  v366 = OUTLINED_FUNCTION_12_0(v365, &v803);
  v784 = v367;
  v369 = *(v368 + 64);
  MEMORY[0x1EEE9AC00](v366);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v370);
  OUTLINED_FUNCTION_13_2();
  v372 = OUTLINED_FUNCTION_48(v371);
  v373 = type metadata accessor for LegacyModelCodableComposer(v372);
  v374 = OUTLINED_FUNCTION_20(v373, &v797);
  v376 = *(v375 + 64);
  MEMORY[0x1EEE9AC00](v374);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v377);
  v378 = sub_1D5613EF8();
  v379 = OUTLINED_FUNCTION_12_0(v378, &v800);
  v783 = v380;
  v382 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v379);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v383);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v385 = OUTLINED_FUNCTION_12_0(v384, v798);
  v779 = v386;
  v388 = *(v387 + 64);
  MEMORY[0x1EEE9AC00](v385);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v389);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v390);
  v391 = sub_1D560F7A8();
  v392 = OUTLINED_FUNCTION_12_0(v391, &v887);
  v777 = v393;
  v395 = *(v394 + 64);
  MEMORY[0x1EEE9AC00](v392);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v396);
  v397 = sub_1D560CD48();
  v910 = OUTLINED_FUNCTION_4(v397);
  v911 = v398;
  v400 = *(v399 + 64);
  MEMORY[0x1EEE9AC00](v910);
  OUTLINED_FUNCTION_5_0();
  v909 = v401;
  OUTLINED_FUNCTION_70_0();
  v402 = sub_1D5613AF8();
  v403 = OUTLINED_FUNCTION_12_0(v402, v793);
  v774 = v404;
  v406 = *(v405 + 64);
  MEMORY[0x1EEE9AC00](v403);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v407);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v409 = OUTLINED_FUNCTION_4(v408);
  v773 = v410;
  v412 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v409);
  OUTLINED_FUNCTION_59_0();
  v415 = v413 - v414;
  MEMORY[0x1EEE9AC00](v416);
  v418 = &v772 - v417;
  v419 = sub_1D560F308();
  v420 = OUTLINED_FUNCTION_4(v419);
  v422 = v421;
  v424 = *(v423 + 64);
  MEMORY[0x1EEE9AC00](v420);
  OUTLINED_FUNCTION_5();
  v427 = v426 - v425;
  v428 = type metadata accessor for CloudGenericMusicItem(0);
  v429 = OUTLINED_FUNCTION_14(v428);
  v431 = *(v430 + 64);
  MEMORY[0x1EEE9AC00](v429);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v432);
  v434 = &v772 - v433;
  v916 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v917 = v26;
  sub_1D5610648();
  v912 = v434;
  sub_1D50A2244(v434, v20);
  HIDWORD(v908) = swift_getEnumCaseMultiPayload();
  switch(HIDWORD(v908))
  {
    case 1:
      OUTLINED_FUNCTION_67(&v794);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v603();
      sub_1D50A2470(&qword_1EDD533D8, MEMORY[0x1E6975808]);
      OUTLINED_FUNCTION_18_35(&v795);
      OUTLINED_FUNCTION_42_0(&v796);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v604();
      v605 = OUTLINED_FUNCTION_2_54();
      v606(v605);
      OUTLINED_FUNCTION_25_30(&v888);
      sub_1D5613F08();
      v607 = OUTLINED_FUNCTION_33_26();
      v608(v607);
      OUTLINED_FUNCTION_56_0();
      v610 = *(v609 + 8);
      v611 = OUTLINED_FUNCTION_130_6();
      v612(v611);
      v613 = OUTLINED_FUNCTION_38_4();
      v614(v613);
      (*(v418 + 1))(v862, v863);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v799);
      v447 = v864;
      v448 = &v800;
      goto LABEL_24;
    case 2:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4(&v889);
      sub_1D50A21EC(v529, v530);
      sub_1D50A2470(&qword_1EC7EF108, type metadata accessor for LegacyModelCodableComposer);
      OUTLINED_FUNCTION_34_23(&v801);
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0(&v802);
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v531();
      v532 = OUTLINED_FUNCTION_2_54();
      v533(v532);
      v534 = OUTLINED_FUNCTION_50_13(v890);
      sub_1D5088664(v534, v535, v536, v537);
      v538 = OUTLINED_FUNCTION_33_26();
      v539(v538);
      OUTLINED_FUNCTION_56_0();
      v541 = *(v540 + 8);
      v542 = OUTLINED_FUNCTION_222();
      v543(v542);
      v544 = OUTLINED_FUNCTION_38_4();
      v545(v544);
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v546 = v890;
      goto LABEL_21;
    case 3:
      v560 = *(v866 + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v561();
      sub_1D50A2470(&qword_1EC7EB610, MEMORY[0x1E6976090]);
      OUTLINED_FUNCTION_18_35(&v804);
      OUTLINED_FUNCTION_42_0(&v805);
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v562();
      v563 = OUTLINED_FUNCTION_2_54();
      v564(v563);
      v565 = OUTLINED_FUNCTION_50_13(v893);
      sub_1D507ADFC(v565, v566, v567, v568, v569, v570, v571, v572, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v573 = OUTLINED_FUNCTION_33_26();
      v574(v573);
      OUTLINED_FUNCTION_56_0();
      v576 = *(v575 + 8);
      v577 = OUTLINED_FUNCTION_222();
      v578(v577);
      v579 = OUTLINED_FUNCTION_38_4();
      v580(v579);
      OUTLINED_FUNCTION_136(&v891);
      v581(v865[1], v867);
      OUTLINED_FUNCTION_0_68();
      v546 = v893;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_67(&v807);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v491();
      sub_1D50A2470(&qword_1EDD53388, MEMORY[0x1E6975A30]);
      OUTLINED_FUNCTION_18_35(&v808);
      OUTLINED_FUNCTION_42_0(&v809);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v492();
      v493 = OUTLINED_FUNCTION_2_54();
      v494(v493);
      OUTLINED_FUNCTION_25_30(&v895);
      sub_1D5614208();
      v495 = OUTLINED_FUNCTION_33_26();
      v496(v495);
      OUTLINED_FUNCTION_56_0();
      v498 = *(v497 + 8);
      v499 = OUTLINED_FUNCTION_130_6();
      v500(v499);
      v501 = OUTLINED_FUNCTION_38_4();
      v502(v501);
      (*(v418 + 1))(v869, v870);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v812);
      v447 = v871;
      v448 = &v813;
      goto LABEL_24;
    case 5:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4(&v896);
      sub_1D50A21EC(v655, v656);
      sub_1D50A2470(&qword_1EDD56748, type metadata accessor for CloudEditorialItem);
      OUTLINED_FUNCTION_34_23(&v814);
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0(&v815);
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v657();
      v658 = OUTLINED_FUNCTION_2_54();
      v659(v658);
      v660 = OUTLINED_FUNCTION_50_13(&v897);
      (loc_1D50A02C0)(v660);
      v661 = OUTLINED_FUNCTION_33_26();
      v662(v661);
      OUTLINED_FUNCTION_56_0();
      v664 = *(v663 + 8);
      v665 = OUTLINED_FUNCTION_222();
      v666(v665);
      v667 = OUTLINED_FUNCTION_38_4();
      v668(v667);
      OUTLINED_FUNCTION_111_6();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v546 = &v897;
      goto LABEL_21;
    case 6:
      OUTLINED_FUNCTION_67(&v817);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v690();
      sub_1D50A2470(&qword_1EDD53400, MEMORY[0x1E69756E8]);
      OUTLINED_FUNCTION_18_35(&v818);
      OUTLINED_FUNCTION_42_0(&v819);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v691();
      v692 = OUTLINED_FUNCTION_2_54();
      v693(v692);
      OUTLINED_FUNCTION_25_30(&v900);
      sub_1D5613C58();
      v694 = OUTLINED_FUNCTION_33_26();
      v695(v694);
      OUTLINED_FUNCTION_56_0();
      v697 = *(v696 + 8);
      v698 = OUTLINED_FUNCTION_130_6();
      v699(v698);
      v700 = OUTLINED_FUNCTION_38_4();
      v701(v700);
      (*(v418 + 1))(v873, v874);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v823);
      v447 = v875;
      v448 = &v824;
      goto LABEL_24;
    case 7:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4(&v901);
      sub_1D50A21EC(v582, v583);
      sub_1D50A2470(&qword_1EDD5C6E0, type metadata accessor for CloudMusicMovie);
      OUTLINED_FUNCTION_34_23(&v825);
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0(&v826);
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v584();
      v585 = OUTLINED_FUNCTION_2_54();
      v586(v585);
      v587 = OUTLINED_FUNCTION_50_13(&v902);
      sub_1D5096F2C(v587, v588, v589, v590, v591, v592, v593, v594, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v595 = OUTLINED_FUNCTION_33_26();
      v596(v595);
      OUTLINED_FUNCTION_56_0();
      v598 = *(v597 + 8);
      v599 = OUTLINED_FUNCTION_222();
      v600(v599);
      v601 = OUTLINED_FUNCTION_38_4();
      v602(v601);
      OUTLINED_FUNCTION_116_6();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v546 = &v902;
      goto LABEL_21;
    case 8:
      OUTLINED_FUNCTION_67(&v828);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v740();
      sub_1D50A2470(&qword_1EDD54398, MEMORY[0x1E6974DD8]);
      OUTLINED_FUNCTION_18_35(&v829);
      OUTLINED_FUNCTION_42_0(&v830);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v741();
      v742 = OUTLINED_FUNCTION_2_54();
      v743(v742);
      OUTLINED_FUNCTION_25_30(&v905);
      sub_1D560EEB8();
      v744 = OUTLINED_FUNCTION_33_26();
      v745(v744);
      OUTLINED_FUNCTION_56_0();
      v747 = *(v746 + 8);
      v748 = OUTLINED_FUNCTION_130_6();
      v749(v748);
      v750 = OUTLINED_FUNCTION_38_4();
      v751(v750);
      (*(v418 + 1))(v877, v878);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v832);
      v447 = v879[0];
      v448 = &v833;
      goto LABEL_24;
    case 9:
      OUTLINED_FUNCTION_67(&v834);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v517();
      sub_1D50A2470(&qword_1EDD53310, MEMORY[0x1E6975CF0]);
      OUTLINED_FUNCTION_18_35(&v835);
      OUTLINED_FUNCTION_42_0(&v836);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v518();
      v519 = OUTLINED_FUNCTION_2_54();
      v520(v519);
      OUTLINED_FUNCTION_25_30(&v908);
      sub_1D56148A8();
      v521 = OUTLINED_FUNCTION_33_26();
      v522(v521);
      OUTLINED_FUNCTION_56_0();
      v524 = *(v523 + 8);
      v525 = OUTLINED_FUNCTION_130_6();
      v526(v525);
      v527 = OUTLINED_FUNCTION_38_4();
      v528(v527);
      (*(v418 + 1))(v879[1], v880);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v838);
      v447 = v881;
      v448 = &v839;
      goto LABEL_24;
    case 0xA:
      v722 = *(v883[0] + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v723();
      sub_1D50A2470(&qword_1EC7EF350, MEMORY[0x1E69763B8]);
      OUTLINED_FUNCTION_18_35(&v840);
      OUTLINED_FUNCTION_42_0(&v841);
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v724();
      v725 = OUTLINED_FUNCTION_2_54();
      v726(v725);
      v727 = OUTLINED_FUNCTION_50_13(&v912);
      sub_1D5091E08(v727, v728, v729, v730);
      v731 = OUTLINED_FUNCTION_33_26();
      v732(v731);
      OUTLINED_FUNCTION_56_0();
      v734 = *(v733 + 8);
      v735 = OUTLINED_FUNCTION_222();
      v736(v735);
      v737 = OUTLINED_FUNCTION_38_4();
      v738(v737);
      OUTLINED_FUNCTION_136(&v910);
      v739(v882, v883[1]);
      OUTLINED_FUNCTION_0_68();
      v546 = &v912;
      goto LABEL_21;
    case 0xB:
      OUTLINED_FUNCTION_67(&v843);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v479();
      sub_1D50A2470(&qword_1EDD531A0, MEMORY[0x1E6975E38]);
      OUTLINED_FUNCTION_18_35(&v844);
      OUTLINED_FUNCTION_42_0(&v845);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v480();
      v481 = OUTLINED_FUNCTION_2_54();
      v482(v481);
      OUTLINED_FUNCTION_25_30(&v915);
      sub_1D5614B78();
      v483 = OUTLINED_FUNCTION_33_26();
      v484(v483);
      OUTLINED_FUNCTION_56_0();
      v486 = *(v485 + 8);
      v487 = OUTLINED_FUNCTION_130_6();
      v488(v487);
      v489 = OUTLINED_FUNCTION_38_4();
      v490(v489);
      (*(v418 + 1))(v885, v886[0]);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v847);
      v447 = v886[1];
      v448 = v848;
      goto LABEL_24;
    case 0xC:
      v503 = v822;
      v504 = *(v822 + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v505();
      sub_1D50A2470(&qword_1EC7EF3D0, MEMORY[0x1E6975FE8]);
      OUTLINED_FUNCTION_18_35(&v849);
      OUTLINED_FUNCTION_159_4(&v850);
      v506 = OUTLINED_FUNCTION_61_8();
      v507 = v825;
      v508(v506);
      v509 = *(v911 + 16);
      OUTLINED_FUNCTION_75_7();
      v510();
      OUTLINED_FUNCTION_184();
      sub_1D560F8C8();
      v511 = OUTLINED_FUNCTION_33_26();
      v512(v511);
      OUTLINED_FUNCTION_56_0();
      v514 = *(v513 + 8);
      v515 = OUTLINED_FUNCTION_130_6();
      v516(v515);
      (*(v408 + 8))(v428, v507);
      (*(v503 + 8))(v886[2], v887);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v852);
      v447 = v888;
      v448 = &v853;
      goto LABEL_24;
    case 0xD:
      OUTLINED_FUNCTION_136_5();
      v670 = *(v669 + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v671();
      sub_1D50A2470(&qword_1EDD530F0, MEMORY[0x1E69762A8]);
      OUTLINED_FUNCTION_186(&v854);
      OUTLINED_FUNCTION_30_21();
      OUTLINED_FUNCTION_159_4(&v855);
      v672 = v826;
      v673 = v830;
      v674(v826, v415, v830);
      v675 = *(v911 + 16);
      v676 = v909;
      OUTLINED_FUNCTION_75_7();
      v677();
      sub_1D50993EC(v672, v676, v913, v678, v679, v680, v681, v682, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v683 = OUTLINED_FUNCTION_33_26();
      v684(v683);
      OUTLINED_FUNCTION_56_0();
      v686 = *(v685 + 8);
      v687 = OUTLINED_FUNCTION_222();
      v688(v687);
      (*(v408 + 8))(v415, v673);
      OUTLINED_FUNCTION_136(&a10);
      v689(v889, v890[1]);
      OUTLINED_FUNCTION_0_68();
      v546 = &a12;
LABEL_21:
      v465 = *(v546 - 32);
      goto LABEL_22;
    case 0xE:
      OUTLINED_FUNCTION_81_10(&v857);
      v467 = *(v466 + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v468();
      sub_1D50A2470(&qword_1EDD52A58, MEMORY[0x1E6977468]);
      OUTLINED_FUNCTION_186(&v858);
      OUTLINED_FUNCTION_30_21();
      OUTLINED_FUNCTION_159_4(&v859);
      v469 = v834;
      v470(v831[0], v415, v834);
      v472 = v910;
      v471 = v911;
      v473 = *(v911 + 16);
      OUTLINED_FUNCTION_75_7();
      v474();
      OUTLINED_FUNCTION_137();
      OUTLINED_FUNCTION_116();
      sub_1D5613848();
      (*(v471 + 8))(v427, v472);
      OUTLINED_FUNCTION_56_0();
      v476 = *(v475 + 8);
      v477 = OUTLINED_FUNCTION_130_6();
      v478(v477);
      (*(v408 + 8))(v415, v469);
      (*(v428 + 8))(v892, v893[0]);
      OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_22_29(&v861);
      OUTLINED_FUNCTION_190_2();
      v448 = &v862;
      goto LABEL_24;
    case 0xF:
      OUTLINED_FUNCTION_186(&v863);
      v548 = *(v547 + 32);
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v549();
      sub_1D50A2470(&qword_1EDD53368, MEMORY[0x1E6975B30]);
      OUTLINED_FUNCTION_118_5(&v864);
      v550 = v916;
      v551 = v917;
      sub_1D5610598();
      v552 = v839;
      (*(v839 + 16))(v835, v418, v896);
      v553 = v911;
      v554 = *(v911 + 16);
      OUTLINED_FUNCTION_75_7();
      v555();
      OUTLINED_FUNCTION_68_4();
      sub_1D5614418();
      v556 = *(v553 + 8);
      v557 = OUTLINED_FUNCTION_128();
      v558(v557);
      OUTLINED_FUNCTION_24_0(v550);
      (*(v559 + 8))(v551, v550);
      (*(v552 + 8))(v418, v896);
      (*(v415 + 8))(v894, v895);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v866);
      v447 = v897;
      v448 = &v867;
      goto LABEL_24;
    case 0x10:
      v449 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v449, v898);
      sub_1D50A2470(&qword_1EC7EDBC0, type metadata accessor for CloudTVEpisode);
      OUTLINED_FUNCTION_35_22(&v868);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v869);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v450();
      v451 = OUTLINED_FUNCTION_14_36();
      v452(v451);
      v453 = OUTLINED_FUNCTION_86_8();
      sub_1D50821CC(v453, v454, v455, v456);
      v457 = OUTLINED_FUNCTION_90_8();
      v458(v457);
      OUTLINED_FUNCTION_24_0(v415);
      v460 = *(v459 + 8);
      v461 = OUTLINED_FUNCTION_184();
      v462(v461);
      v463 = OUTLINED_FUNCTION_89_0();
      v464(v463);
      OUTLINED_FUNCTION_102_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v465 = v899;
      goto LABEL_22;
    case 0x11:
      v615 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v615, v900);
      sub_1D50A2470(&qword_1EC7ECBC8, type metadata accessor for CloudTVSeason);
      OUTLINED_FUNCTION_35_22(&v872);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v873);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v616();
      v617 = OUTLINED_FUNCTION_14_36();
      v618(v617);
      v619 = OUTLINED_FUNCTION_86_8();
      sub_1D507C534(v619, v620, v621, v622, v623, v624, v625, v626, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v627 = OUTLINED_FUNCTION_90_8();
      v628(v627);
      OUTLINED_FUNCTION_24_0(v415);
      v630 = *(v629 + 8);
      v631 = OUTLINED_FUNCTION_184();
      v632(v631);
      v633 = OUTLINED_FUNCTION_89_0();
      v634(v633);
      OUTLINED_FUNCTION_114_2();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v465 = v901;
      goto LABEL_22;
    case 0x12:
      v702 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v702, v902);
      sub_1D50A2470(&qword_1EC7ED228, type metadata accessor for CloudTVShow);
      OUTLINED_FUNCTION_35_22(&v876);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v877);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v703();
      v704 = OUTLINED_FUNCTION_14_36();
      v705(v704);
      v706 = OUTLINED_FUNCTION_86_8();
      sub_1D507F9A0(v706, v707, v708, v709, v710, v711, v712, v713, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v714 = OUTLINED_FUNCTION_90_8();
      v715(v714);
      OUTLINED_FUNCTION_24_0(v415);
      v717 = *(v716 + 8);
      v718 = OUTLINED_FUNCTION_184();
      v719(v718);
      v720 = OUTLINED_FUNCTION_89_0();
      v721(v720);
      OUTLINED_FUNCTION_110_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v465 = v903;
      goto LABEL_22;
    case 0x13:
      v752 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v752, v904);
      sub_1D50A2470(&qword_1EC7EF390, type metadata accessor for CloudUploadedAudio);
      OUTLINED_FUNCTION_35_22(&v880);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v881);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v753();
      v754 = OUTLINED_FUNCTION_14_36();
      v755(v754);
      v756 = OUTLINED_FUNCTION_86_8();
      sub_1D509D394(v756, v757, v758, v759, v760, v761, v762, v763, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v764 = OUTLINED_FUNCTION_90_8();
      v765(v764);
      OUTLINED_FUNCTION_24_0(v415);
      v767 = *(v766 + 8);
      v768 = OUTLINED_FUNCTION_184();
      v769(v768);
      v770 = OUTLINED_FUNCTION_89_0();
      v771(v770);
      OUTLINED_FUNCTION_109_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v465 = v905;
      goto LABEL_22;
    case 0x14:
      v635 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v635, v906);
      sub_1D50A2470(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo);
      OUTLINED_FUNCTION_35_22(&v884);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v885);
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v636();
      v637 = OUTLINED_FUNCTION_14_36();
      v638(v637);
      v639 = OUTLINED_FUNCTION_86_8();
      sub_1D508E98C(v639, v640, v641, v642, v643, v644, v645, v646, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783);
      v647 = OUTLINED_FUNCTION_90_8();
      v648(v647);
      OUTLINED_FUNCTION_24_0(v415);
      v650 = *(v649 + 8);
      v651 = OUTLINED_FUNCTION_184();
      v652(v651);
      v653 = OUTLINED_FUNCTION_89_0();
      v654(v653);
      OUTLINED_FUNCTION_113_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v465 = v907;
LABEL_22:
      sub_1D50A21EC(v465, v915);
      break;
    default:
      v772 = v422;
      v435 = *(v422 + 32);
      v436 = OUTLINED_FUNCTION_128();
      v437(v436);
      sub_1D50A2470(&qword_1EDD53418, MEMORY[0x1E6975660]);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10(&v791);
      v438(v415, v418, v408);
      v439 = v911;
      (*(v911 + 16))(v909, v914, v910);
      sub_1D5613B08();
      v440 = *(v439 + 8);
      v441 = OUTLINED_FUNCTION_63_1();
      v442(v441);
      OUTLINED_FUNCTION_24_0(v916);
      (*(v443 + 8))();
      (*(v422 + 40))(v418, v408);
      OUTLINED_FUNCTION_136(&v790);
      v444(v427, v419);
      OUTLINED_FUNCTION_0_68();
      v445 = OUTLINED_FUNCTION_22_29(&v792);
      v447 = v861;
      v448 = v793;
LABEL_24:
      v446(v445, v447, *(v448 - 32));
      break;
  }

  type metadata accessor for GenericMusicItem();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507A7EC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for GenericMusicItem();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7C8, &qword_1D561EA38);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v53 = *(v14 + 16);
  v53(v19, v56, v13);
  v52 = sub_1D4E62A60(&qword_1EC7EB7D0, &qword_1EC7EA650, &qword_1D561C540);
  sub_1D5614F98();
  v25 = *(v21 + 44);
  v26 = v59;
  sub_1D4E62A60(&qword_1EC7EA658, &qword_1EC7EA650, &qword_1D561C540);
  v56 = v14 + 16;
  v50 = (v14 + 8);
  v49 = MEMORY[0x1E69E7CC0];
  v51 = v25;
  while (1)
  {
    sub_1D5615648();
    if (*&v24[v25] == v58[0])
    {
      break;
    }

    v27 = sub_1D5615688();
    sub_1D50A2244(v28, v26);
    v27(v58, 0);
    v29 = v24;
    sub_1D5615658();
    v30 = v55;
    v53(v55, v54, v13);
    v31 = sub_1D5614FC8();
    if (v31 == 2)
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v46 - 2) = v32;
      v33 = v57;
      sub_1D4F25AD0();
      v35 = v34;
      v57 = v33;
    }

    else
    {
      v35 = v31;
    }

    (*v50)(v30, v13);
    if (v35)
    {
      v36 = 1;
      v26 = v59;
    }

    else
    {
      v26 = v59;
      sub_1D50A2244(v59, v5);
      v36 = 0;
    }

    v24 = v29;
    __swift_storeEnumTagSinglePayload(v5, v36, 1, v6);
    sub_1D50A229C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
    v25 = v51;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v5, &qword_1EC7EA608, &qword_1D561C510);
    }

    else
    {
      v38 = v46;
      sub_1D50A21EC(v5, v46);
      sub_1D50A21EC(v38, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v49 + 16);
        sub_1D4F0136C();
        v49 = v43;
      }

      v39 = *(v49 + 16);
      v26 = v59;
      if (v39 >= *(v49 + 24) >> 1)
      {
        sub_1D4F0136C();
        v49 = v44;
      }

      v40 = v48;
      v41 = v49;
      *(v49 + 16) = v39 + 1;
      sub_1D50A21EC(v40, v41 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39);
    }
  }

  sub_1D4E50004(v24, &qword_1EC7EB7C8, &qword_1D561EA38);
  return v49;
}

void sub_1D507ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v155 = v24;
  v26 = v25;
  v154 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v151 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v156 = v47;
  OUTLINED_FUNCTION_70_0();
  v158 = sub_1D5610E58();
  v48 = OUTLINED_FUNCTION_4(v158);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  v147 = v53;
  OUTLINED_FUNCTION_23();
  v55 = MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_52_14(v55, v56, v57, v58, v59, v60, v61, v62, v141);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v146 = v72;
  OUTLINED_FUNCTION_70_0();
  v73 = sub_1D5610F78();
  v74 = OUTLINED_FUNCTION_4(v73);
  v152 = v75;
  v153 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v159 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_108();
  v83 = type metadata accessor for CreditArtistPropertyProvider();
  v84 = OUTLINED_FUNCTION_14(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v88 = v87;
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v87);
  v92 = v83[7];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v150 = v92;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v97 = sub_1D560D9A8();
  __swift_project_value_buffer(v97, qword_1EC7F1B20);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  v102 = v83[9];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  sub_1D56105B8();
  sub_1D4E50004(v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  v157 = v83;
  v104 = v20 + v83[10];
  sub_1D5610658();
  v148 = sub_1D5610618();
  v145 = v105;
  v143 = sub_1D56105C8();
  sub_1D56105F8();
  OUTLINED_FUNCTION_201_1();
  v106 = sub_1D56105E8();
  v107 = sub_1D56105A8();
  if (qword_1EC7E9690 != -1)
  {
    swift_once();
  }

  v108 = qword_1EC87C670;
  if (qword_1EC87C670 >> 62)
  {
    v140 = qword_1EC87C670 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C670 < 0)
    {
      v140 = qword_1EC87C670;
    }

    OUTLINED_FUNCTION_186_2(v140);
    OUTLINED_FUNCTION_157_5();

    OUTLINED_FUNCTION_184_2(&a13);
    OUTLINED_FUNCTION_157_5();

    v108 = v26;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v20 + v157[8]) = v108;
  v109 = (v20 + v157[11]);
  *v109 = v148;
  v109[1] = v145;
  *(v20 + v157[12]) = v143;
  *(v20 + v157[13]) = v92;
  *(v20 + v157[14]) = v106;
  *(v20 + v157[15]) = v107;
  sub_1D5610648();
  sub_1D5610E68();
  OUTLINED_FUNCTION_118_5(&a17);
  sub_1D5610E38();
  v110 = *(v50 + 8);
  v110(v144, v158);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v107, 1, v111) == 1)
  {
    sub_1D4E50004(v107, &qword_1EC7EB5B8, &unk_1D56206A0);
    v112 = 1;
    v113 = v146;
  }

  else
  {
    v113 = v146;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v115 = *(v114 + 8);
    v116 = OUTLINED_FUNCTION_214();
    v117(v116);
    v112 = 0;
  }

  __swift_storeEnumTagSinglePayload(v113, v112, 1, v88);
  v118 = v157[6];
  v119 = (v20 + v157[5]);
  sub_1D4E68940(v113, v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D5610E68();
  sub_1D5610E18();
  OUTLINED_FUNCTION_24_4();
  v110(v147, v158);
  *v119 = v111;
  v119[1] = v147;
  sub_1D5610E68();
  v120 = sub_1D5610E48();
  v110(v147, v158);
  *(v20 + v118) = v120;
  sub_1D5610EC8();
  v121 = sub_1D5610EB8();
  OUTLINED_FUNCTION_1(v151);
  if (v125)
  {
    sub_1D4E50004(v151, &qword_1EC7EB5A0, &qword_1D5631010);
    v122 = v155;
  }

  else
  {
    OUTLINED_FUNCTION_81_10(&a15);
    sub_1D5610E98();
    OUTLINED_FUNCTION_15_1();
    (*(v123 + 8))(v151, v121);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_1(v159);
    v122 = v155;
    if (v125)
    {
      sub_1D4E50004(v159, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v126 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v142, v127, v128, v126);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v129, v130);
      OUTLINED_FUNCTION_88_8();
      sub_1D5612368();
      sub_1D4E50004(v142, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v131 + 8))(v159, v124);
    }
  }

  v132 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v149);
  sub_1D4E68940(v156, v20 + v150, &off_1EC7EB5B0, &unk_1D5632170);
  v160[3] = v157;
  v135 = sub_1D50A2470(&qword_1EC7EB5D0, type metadata accessor for CreditArtistPropertyProvider);
  v136 = OUTLINED_FUNCTION_181_2(v135);
  sub_1D50A2244(v20, v136);
  CreditArtist.init(propertyProvider:)(v160, v154);

  v137 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v137);
  (*(v138 + 8))(v122);
  OUTLINED_FUNCTION_24_0(v103);
  (*(v139 + 8))(v26, v103);
  (*(v152 + 8))(v159, v153);
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507B790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a1;
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v94 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v94 - v14;
  v15 = sub_1D5612B78();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F0, &unk_1D5631000);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v104 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F8, &qword_1D561E528);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v94 - v23;
  v108 = sub_1D5610F78();
  v106 = *(v108 - 8);
  v24 = *(v106 + 64);
  v25 = MEMORY[0x1EEE9AC00](v108);
  v117 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v94 - v27;
  v97 = sub_1D5613578();
  v96 = *(v97 - 8);
  v28 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v100 = &v94 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v94 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v102 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v99 = &v94 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v94 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v94 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v55 = &v94 - v54;
  v56 = sub_1D5610E58();
  v114 = *(v56 - 8);
  v115 = v56;
  v57 = *(v114 + 64);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v101 = &v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v119 = &v94 - v60;
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  v61 = sub_1D56140F8();
  sub_1D50A2470(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  sub_1D50A2470(&qword_1EC7EB608, type metadata accessor for CreditArtist);
  v62 = v2;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v51, 1, v61) == 1)
  {
    sub_1D4E50004(v51, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v63 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v61 - 8) + 8))(v51, v61);
    v63 = 0;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v55, v63, 1, v64);
  CreditArtist.name.getter();
  if (qword_1EC7E9068 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  sub_1D5610E28();
  v65 = sub_1D5610EB8();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v65);
  if (qword_1EC7E9070 != -1)
  {
    swift_once();
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  sub_1D560EC28();
  v67 = v62;
  if (__swift_getEnumTagSinglePayload(v39, 1, v66) != 1)
  {
    v68 = v37;
    sub_1D4F39AB0(v39, v37, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v37, 1, v66) == 1)
    {
      sub_1D4E50004(v37, &off_1EC7EB5B0, &unk_1D5632170);
      v69 = 1;
      v70 = v100;
    }

    else
    {
      v71 = v96;
      v72 = v95;
      v73 = v97;
      (*(v96 + 104))(v95, *MEMORY[0x1E6976A78], v97);
      sub_1D560CD48();
      v94 = v65;
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);
      v70 = v100;
      v65 = v94;
      sub_1D560DA98();
      (*(v71 + 8))(v72, v73);
      (*(*(v66 - 8) + 8))(v68, v66);
      v69 = 0;
    }

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v70, v69, 1, v74);
    v75 = v99;
    sub_1D5610EA8();
    sub_1D4E50004(v47, &qword_1EC7EB5A0, &qword_1D5631010);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v65);
    sub_1D4F39A1C(v75, v47, &qword_1EC7EB5A0, &qword_1D5631010);
  }

  v77 = *v67;
  v76 = v67[1];
  (*(v114 + 16))(v101, v119, v115);
  sub_1D4F39AB0(v47, v102, &qword_1EC7EB5A0, &qword_1D5631010);
  v78 = sub_1D5610E78();
  __swift_storeEnumTagSinglePayload(v103, 1, 1, v78);
  v79 = sub_1D5610F68();
  v100 = v47;
  __swift_storeEnumTagSinglePayload(v104, 1, 1, v79);

  v80 = v116;
  sub_1D5610F08();
  v81 = *(type metadata accessor for CreditArtist() + 20);
  v104 = v39;
  v82 = v105;
  sub_1D5611A28();
  v83 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
  v84 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v107, 1, 1, v84);
  v85 = v109;
  sub_1D5612B38();
  v86 = v106;
  v87 = v80;
  v88 = v108;
  (*(v106 + 16))(v117, v87, v108);
  sub_1D5611A98();
  v107 = sub_1D5611A88();
  v105 = v89;
  v91 = v110;
  v90 = v111;
  v92 = v112;
  (*(v110 + 16))(v112, v85, v111);
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v90);
  v103 = sub_1D5611A38();
  v102 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EB610, MEMORY[0x1E6976090]);
  sub_1D5610628();
  (*(v91 + 8))(v85, v90);
  (*(v86 + 8))(v116, v88);
  sub_1D4E50004(v100, &qword_1EC7EB5A0, &qword_1D5631010);
  (*(v114 + 8))(v119, v115);
  return sub_1D4E50004(v104, &off_1EC7EB5B0, &unk_1D5632170);
}

void sub_1D507C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v392 = v24;
  v393 = v25;
  v27 = v26;
  v388 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v387 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v386 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v390 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v55 = OUTLINED_FUNCTION_22(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  v391 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v385 = v60;
  OUTLINED_FUNCTION_23();
  v62 = MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_52_14(v62, v63, v64, v65, v66, v67, v68, v69, v371);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  v389 = v79;
  OUTLINED_FUNCTION_70_0();
  v80 = sub_1D56128C8();
  v81 = OUTLINED_FUNCTION_12_0(v80, &a15);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v86 = OUTLINED_FUNCTION_22(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v90);
  v91 = sub_1D5610788();
  v92 = OUTLINED_FUNCTION_12_0(v91, &v403);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D56107C8();
  v97 = OUTLINED_FUNCTION_12_0(v96, &v401);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v101);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v107 = OUTLINED_FUNCTION_22(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v113 = OUTLINED_FUNCTION_22(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v118);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_13_3();
  v128 = OUTLINED_FUNCTION_48(v127);
  v394 = type metadata accessor for CloudTVSeason(v128);
  v129 = OUTLINED_FUNCTION_14(v394);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5_0();
  v397 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v133);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_25_4();
  v137 = type metadata accessor for TVSeasonPropertyProvider();
  v138 = OUTLINED_FUNCTION_14(v137);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v373 = v141;
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v141);
  v145 = v137[7];
  v146 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
  v150 = v137[9];
  v151 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
  v155 = OUTLINED_FUNCTION_41_21(v137[15]);
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v146);
  v158 = OUTLINED_FUNCTION_40_5(v137[18]);
  v159 = v151;
  __swift_storeEnumTagSinglePayload(v158, v160, v161, v151);
  v162 = OUTLINED_FUNCTION_40_5(v137[19]);
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v146);
  v165 = v137[24];
  sub_1D560C0A8();
  v166 = OUTLINED_FUNCTION_20_1(&v398);
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
  v170 = v137[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v171 = OUTLINED_FUNCTION_20_1(&a11);
  v379 = v172;
  __swift_storeEnumTagSinglePayload(v171, v173, v174, v172);
  v175 = v137[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v176 = OUTLINED_FUNCTION_20_1(&a17);
  v381 = v177;
  __swift_storeEnumTagSinglePayload(v176, v178, v179, v177);
  v180 = v137[27];
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v384 = v180;
  v181 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v185 = sub_1D560D9A8();
  __swift_project_value_buffer(v185, qword_1EDD53C60);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v189);
  v190 = v137[29];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  sub_1D56105B8();
  sub_1D4E50004(v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  v192 = v20 + v137[30];
  sub_1D5610658();
  v193 = sub_1D5610618();
  v195 = v194;
  v196 = sub_1D56105C8();
  v197 = sub_1D56105F8();
  v198 = v137;
  v199 = sub_1D56105E8();
  v395 = v191;
  v396 = v27;
  v200 = sub_1D56105A8();
  *(v20 + v198[13]) = 2;
  *(v20 + v198[14]) = 2;
  v398 = v198;
  v201 = v20 + v198[16];
  *v201 = 0;
  *(v201 + 8) = 1;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v202 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    v370 = qword_1EC87C4B8 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C4B8 < 0)
    {
      v370 = qword_1EC87C4B8;
    }

    OUTLINED_FUNCTION_186_2(v370);
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_184_2(&v383);
    OUTLINED_FUNCTION_82();

    v202 = v27;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v203 = v398;
  *(v20 + v398[28]) = v202;
  v204 = (v20 + v203[31]);
  *v204 = v193;
  v204[1] = v195;
  *(v20 + v203[32]) = v196;
  *(v20 + v203[33]) = v197;
  *(v20 + v203[34]) = v199;
  v205 = v203;
  *(v20 + v203[35]) = v200;
  v207 = v396;
  v206 = v397;
  sub_1D5610648();
  v208 = (v206 + *(v394 + 20));
  v209 = type metadata accessor for CloudTVSeason.Attributes(0);
  v210 = v208 + v209[5];
  OUTLINED_FUNCTION_117_0(&v388);
  sub_1D4F39AB0(v211, v212, v213, v214);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v215 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v215);
  if (v334)
  {
    sub_1D4E50004(v207, &qword_1EC7EB5B8, &unk_1D56206A0);
    v220 = v375;
    v195 = v374;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v389);
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v217 = *(v216 + 8);
    v218 = OUTLINED_FUNCTION_159();
    v219(v218);
    v220 = v375;
  }

  v221 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v373);
  sub_1D4E68940(v195, v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v224 = *(v208 + v209[6]);
  if (v224)
  {
    v224 = sub_1D511C2A4(v224);
  }

  v225 = (v20 + v205[6]);
  v226 = v205[8];
  *(v20 + v205[5]) = v224;
  v227 = (v208 + v209[7]);
  v228 = v227[1];
  *v225 = *v227;
  v225[1] = v228;
  v229 = *(v208 + v209[9]);
  *(v20 + v226) = v229;
  sub_1D4F39AB0(v208 + v209[10], v220, &qword_1EC7EC960, &unk_1D56334C0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v220, 1, v230);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v220, &qword_1EC7EC960, &unk_1D56334C0);
    v232 = v376;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v393);
    sub_1D5610738();
    v232 = v229;
    OUTLINED_FUNCTION_15_1();
    v234 = *(v233 + 8);
    v235 = OUTLINED_FUNCTION_143();
    v236(v235);
  }

  v237 = OUTLINED_FUNCTION_103_6();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v159);
  v240 = v205[10];
  v241 = v20 + v205[11];
  v242 = v205[12];
  OUTLINED_FUNCTION_61_2(&v390);
  sub_1D4E68940(v232, v243, v244, v245);
  *(v20 + v240) = *(v208 + v209[11]);
  v246 = v208 + v209[17];
  v247 = *v246;
  LOBYTE(v246) = v246[8];
  *v241 = v247;
  *(v241 + 8) = v246;
  *(v20 + v242) = *(v208 + v209[12]);
  if (*(v208 + v209[14]))
  {

    sub_1D501B268();
  }

  else
  {

    v248 = 0;
  }

  *(v20 + v205[17]) = v248;
  sub_1D4F39AB0(v208 + v209[15], v378, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v378);
  if (v334)
  {
    sub_1D4E50004(v378, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_15_1();
    v250 = *(v249 + 8);
    v251 = OUTLINED_FUNCTION_159();
    v252(v251);
  }

  v253 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v159);
  OUTLINED_FUNCTION_61_2(&v391);
  sub_1D4E68940(v377, v256, v257, v258);
  OUTLINED_FUNCTION_185_2(&v399);
  v259 = (v208 + v209[16]);
  v260 = *v259;
  v261 = v259[1];
  v262 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_186(&v402);
  (*(v263 + 104))();
  OUTLINED_FUNCTION_118_5(&v397);
  OUTLINED_FUNCTION_128();
  sub_1D5610798();
  v265 = *(v242 + 8);
  v264 = v242 + 8;
  v265();
  v266 = OUTLINED_FUNCTION_68_9(&v400);
  v267(v266);
  OUTLINED_FUNCTION_61_2(&v395);
  sub_1D4E68940(v159, v268, v269, v270);
  v271 = v209[8];
  OUTLINED_FUNCTION_117_0(&a9);
  sub_1D4F39AB0(v272, v273, v274, v275);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v276 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v276);
  if (v334)
  {
    sub_1D4E50004(v378, &qword_1EC7EC978, &unk_1D56222A0);
    v281 = 0;
    v261 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_186(&a13);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v278 = *(v277 + 8);
    v279 = OUTLINED_FUNCTION_159();
    v280(v279);
    v281 = v264;
    sub_1D56128A8();
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_135_6();
    v283 = *(v282 + 8);
    OUTLINED_FUNCTION_190_2();
    v284();
  }

  v285 = v398;
  v286 = (v20 + v398[20]);
  v287 = (v20 + v398[21]);
  *v286 = v281;
  v286[1] = v261;
  v288 = v208[1];
  *v287 = *v208;
  v287[1] = v288;
  sub_1D4F39AB0(v208 + v271, v380, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_62_17(v380);
  if (v261 == 1)
  {
    sub_1D4E50004(v380, &qword_1EC7EC978, &unk_1D56222A0);
    v260 = 0;
    v289 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150(&a13);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v291 = *(v290 + 8);
    v292 = OUTLINED_FUNCTION_13_8();
    v293(v292);
    v289 = v261;
    sub_1D56128B8();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_136(&a14);
    OUTLINED_FUNCTION_190_2();
    v294();
  }

  v295 = v397;
  v296 = (v20 + v285[22]);
  v297 = (v20 + v285[23]);
  *v296 = v260;
  v296[1] = v289;
  v298 = (v208 + v209[13]);
  v299 = v298[1];
  *v297 = *v298;
  v297[1] = v299;
  v300 = v209[18];

  OUTLINED_FUNCTION_61_2(&v398);
  sub_1D5000C8C(v301, v302, v303, v304);
  v305 = *(v394 + 24);
  sub_1D4F39AB0(v295 + v305, v382, &qword_1EC7ECB30, &unk_1D565D0F0);
  v306 = type metadata accessor for CloudTVSeason.Relationships(0);
  if (OUTLINED_FUNCTION_72_12(v306) == 1)
  {
    v307 = &qword_1EC7ECB30;
    v308 = &unk_1D565D0F0;
    v309 = v382;
  }

  else
  {
    OUTLINED_FUNCTION_117_0(&v384);
    sub_1D4F39AB0(v310, v311, v312, v313);
    OUTLINED_FUNCTION_47_22();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v289);
    if (!v334)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_198_2();
      v315 = *(v314 - 256);
      OUTLINED_FUNCTION_15_4(v315, v316, v317, v318);
      v394 = type metadata accessor for TVEpisode();
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_71_6();
      v295 = v397;
      sub_1D50A2470(v319, type metadata accessor for TVEpisode);
      sub_1D5612368();
      sub_1D4E50004(v315, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v321 = *(v320 + 8);
      v322 = OUTLINED_FUNCTION_222();
      v323(v322);
      v324 = 0;
      goto LABEL_33;
    }

    v307 = &qword_1EC7ECA78;
    v308 = &qword_1D5622340;
    v309 = v289;
  }

  sub_1D4E50004(v309, v307, v308);
  v324 = 1;
LABEL_33:
  v325 = v391;
  v326 = v385;
  v327 = v386;
  v328 = v389;
  __swift_storeEnumTagSinglePayload(v389, v324, 1, v379);
  OUTLINED_FUNCTION_61_2(&a11);
  sub_1D4E68940(v328, v329, v330, v331);
  sub_1D4F39AB0(v295 + v305, v326, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v326);
  if (v334)
  {
    sub_1D4E50004(v326, &qword_1EC7ECB30, &unk_1D565D0F0);
    v332 = v392;
  }

  else
  {
    sub_1D4F39AB0(v326 + *(v300 + 20), v327, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_47_22();
    sub_1D50A229C();
    v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_5_1(v327);
    v332 = v392;
    if (v334)
    {
      sub_1D4E50004(v327, &qword_1EC7EA7F0, &unk_1D561E8C0);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_198_2();
      v336 = *(v335 - 256);
      OUTLINED_FUNCTION_15_4(v336, v337, v338, v339);
      sub_1D5613C48();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_46_15();
      sub_1D50A2470(v340, v341);
      sub_1D5612368();
      v325 = v391;
      v342 = v336;
      v295 = v397;
      sub_1D4E50004(v342, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v343 + 8))(v327, v333);
    }
  }

  v344 = v390;
  v345 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v345, v346, v347, v381);
  OUTLINED_FUNCTION_61_2(&a17);
  sub_1D4E68940(v344, v348, v349, v350);
  sub_1D4F39AB0(v295 + v305, v325, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v325);
  if (v334)
  {
    v351 = &qword_1EC7ECB30;
    v352 = &unk_1D565D0F0;
    v353 = v325;
LABEL_45:
    sub_1D4E50004(v353, v351, v352);
    v364 = 1;
    v362 = v387;
    goto LABEL_46;
  }

  sub_1D4F39AB0(v325 + *(v300 + 24), v372, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_47_22();
  sub_1D50A229C();
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_1(v372);
  if (v355)
  {
    v351 = &qword_1EC7ECA58;
    v352 = &unk_1D5622310;
    v353 = v372;
    goto LABEL_45;
  }

  sub_1D560CD98();
  OUTLINED_FUNCTION_198_2();
  v357 = *(v356 - 256);
  OUTLINED_FUNCTION_15_4(v357, v358, v359, v360);
  type metadata accessor for TVShow();
  OUTLINED_FUNCTION_147();
  sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow);
  OUTLINED_FUNCTION_76_6();
  sub_1D50A2470(v361, type metadata accessor for TVShow);
  v362 = v387;
  OUTLINED_FUNCTION_88_8();
  sub_1D5612368();
  sub_1D4E50004(v357, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_15_1();
  (*(v363 + 8))(v372, v354);
  v364 = 0;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v362, v364, 1, v383);
  sub_1D4E68940(v362, v20 + v384, &qword_1EC7ECBA0, &unk_1D56270F0);
  v401 = v398;
  v365 = sub_1D50A2470(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider);
  v366 = OUTLINED_FUNCTION_181_2(v365);
  sub_1D50A2244(v20, v366);
  TVSeason.init(propertyProvider:)(&v399, v388);

  v367 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v367);
  (*(v368 + 8))(v332);
  OUTLINED_FUNCTION_24_0(v395);
  (*(v369 + 8))();
  OUTLINED_FUNCTION_114_2();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507DB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a1;
  v207 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v206 = &v172 - v5;
  v6 = sub_1D5610088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v205 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v199 = &v172 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = &v172 - v14;
  v204 = sub_1D5612B78();
  v203 = *(v204 - 8);
  v15 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v202 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for CloudTVSeason(0);
  v17 = *(*(v200 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v200);
  v217 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v172 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v178 = &v172 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v177 = &v172 - v26;
  v27 = sub_1D5613578();
  v209 = *(v27 - 8);
  v210 = v27;
  v28 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v208 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v212 = &v172 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v176 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v218 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v174 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v220 = &v172 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v173 = &v172 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v222 = &v172 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v175 = &v172 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v221 = &v172 - v52;
  v197 = sub_1D5610788();
  v196 = *(v197 - 8);
  v53 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v172 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v193 = &v172 - v57;
  v194 = sub_1D56107C8();
  v192 = *(v194 - 8);
  v58 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v191 = &v172 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8);
  v188 = &v172 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v172 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v216 = &v172 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v215 = &v172 - v70;
  v184 = sub_1D56128C8();
  v183 = *(v184 - 8);
  v71 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v73 = &v172 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v214 = &v172 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v80 = &v172 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v213 = &v172 - v83;
  v84 = type metadata accessor for CloudTVSeason.Attributes(0);
  v85 = *(*(v84 - 1) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v219 = (&v172 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = TVSeason.showName.getter();
  v189 = v87;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v88 = sub_1D56140F8();
  sub_1D50A2470(&unk_1EDD546A0, type metadata accessor for TVSeason);
  sub_1D50A2470(&qword_1EC7EA3C8, type metadata accessor for TVSeason);
  v89 = v2;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v80, 1, v88) == 1)
  {
    sub_1D4E50004(v80, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v90 = 1;
    v91 = v213;
  }

  else
  {
    v91 = v213;
    sub_1D5613F28();
    (*(*(v88 - 8) + 8))(v80, v88);
    v90 = 0;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v91, v90, 1, v92);
  v93 = v89;
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  if (v223)
  {
    v94 = v223;
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
  }

  v187 = sub_1D511C730(v94);

  v95 = v188;
  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v186 = v223;
  v185 = v224;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v96 = v93;
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  sub_1D56128D8();
  v97 = v214;
  sub_1D5612898();
  (*(v183 + 8))(v73, v184);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  __swift_storeEnumTagSinglePayload(v97, 0, 1, v98);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v184 = v223;
  v99 = v215;
  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  v100 = sub_1D5610978();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v65, 1, v100) == 1)
  {
    sub_1D4E50004(v65, &qword_1EC7EAC98, &unk_1D561DA80);
    v101 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v100 - 8) + 8))(v65, v100);
    v101 = 0;
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v99, v101, 1, v102);
  sub_1D4F849F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v183 = v223;
  if (qword_1EC7E8B90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v179 = v223;
  v182 = TVSeason.title.getter();
  v181 = v103;
  v104 = v216;
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  sub_1D560EC28();
  sub_1D501B598();
  v180 = v105;

  if (qword_1EC7E8BF0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v95, 1, v100) == 1)
  {
    sub_1D4E50004(v95, &qword_1EC7EAC98, &unk_1D561DA80);
    v106 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v100 - 8) + 8))(v95, v100);
    v106 = 0;
  }

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v104, v106, 1, v107);
  v108 = v191;
  sub_1D56107A8();
  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v109 = v193;
  sub_1D560EC28();
  v110 = v196;
  v111 = v195;
  v112 = v197;
  (*(v196 + 104))(v195, *MEMORY[0x1E6975DC8], v197);
  v113 = v108;
  v188 = sub_1D56107B8();
  v115 = v114;
  (*(v110 + 8))(v111, v112);
  sub_1D4E50004(v109, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v192 + 8))(v113, v194);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v224)
  {
    v116 = 0;
  }

  else
  {
    v116 = v223;
  }

  if (qword_1EC7E8BE8 != -1)
  {
    swift_once();
  }

  v117 = v84[18];
  sub_1D560C0A8();
  v118 = v219;
  sub_1D560EC28();
  if (v179)
  {
    v119 = v179;
  }

  else
  {
    v119 = MEMORY[0x1E69E7CC0];
  }

  v120 = v189;
  *v118 = v190;
  v118[1] = v120;
  sub_1D4F39A1C(v213, v118 + v84[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v118 + v84[6]) = v187;
  v121 = (v118 + v84[7]);
  v122 = v185;
  *v121 = v186;
  v121[1] = v122;
  sub_1D4F39A1C(v214, v118 + v84[8], &qword_1EC7EC978, &unk_1D56222A0);
  *(v118 + v84[9]) = v184;
  sub_1D4F39A1C(v215, v118 + v84[10], &qword_1EC7EC960, &unk_1D56334C0);
  *(v118 + v84[11]) = v183;
  *(v118 + v84[12]) = v119;
  v123 = (v118 + v84[13]);
  v124 = v181;
  *v123 = v182;
  v123[1] = v124;
  *(v118 + v84[14]) = v180;
  sub_1D4F39A1C(v216, v118 + v84[15], &qword_1EC7EC960, &unk_1D56334C0);
  v125 = (v118 + v84[16]);
  *v125 = v188;
  v125[1] = v115;
  v126 = v118 + v84[17];
  *v126 = v116;
  v126[8] = 0;
  v127 = type metadata accessor for CloudTVSeason.Relationships(0);
  __swift_storeEnumTagSinglePayload(v221, 1, 1, v127);
  if (qword_1EC7E8BF8 != -1)
  {
    swift_once();
  }

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  sub_1D560EC28();
  v129 = v96;
  if (qword_1EC7E8C00 != -1)
  {
    swift_once();
  }

  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D560EC28();
  v131 = v218;
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v222, 1, v128) != 1 || __swift_getEnumTagSinglePayload(v220, 1, v130) != 1 || __swift_getEnumTagSinglePayload(v131, 1, v132) != 1)
  {
    v216 = v127;
    v133 = v173;
    sub_1D4F39AB0(v222, v173, &qword_1EC7ECBA8, &unk_1D56223B0);
    if (__swift_getEnumTagSinglePayload(v133, 1, v128) == 1)
    {
      sub_1D4E50004(v133, &qword_1EC7ECBA8, &unk_1D56223B0);
      v134 = 1;
      v135 = v177;
      v136 = v212;
    }

    else
    {
      v138 = v208;
      v137 = v209;
      v139 = v210;
      (*(v209 + 104))(v208, *MEMORY[0x1E6976A78], v210);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode);
      v136 = v212;
      sub_1D560DA98();
      (*(v137 + 8))(v138, v139);
      (*(*(v128 - 8) + 8))(v133, v128);
      v134 = 0;
      v135 = v177;
    }

    v140 = v176;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    __swift_storeEnumTagSinglePayload(v136, v134, 1, v141);
    v142 = v174;
    sub_1D4F39AB0(v220, v174, &qword_1EC7EA788, &unk_1D56223A0);
    if (__swift_getEnumTagSinglePayload(v142, 1, v130) == 1)
    {
      sub_1D4E50004(v142, &qword_1EC7EA788, &unk_1D56223A0);
      v143 = 1;
    }

    else
    {
      v145 = v208;
      v144 = v209;
      v146 = v210;
      (*(v209 + 104))(v208, *MEMORY[0x1E6976A78], v210);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
      sub_1D560DA98();
      (*(v144 + 8))(v145, v146);
      (*(*(v130 - 8) + 8))(v142, v130);
      v143 = 0;
    }

    v147 = v178;
    v148 = v218;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    __swift_storeEnumTagSinglePayload(v135, v143, 1, v149);
    sub_1D4F39AB0(v148, v140, &qword_1EC7ECBA0, &unk_1D56270F0);
    if (__swift_getEnumTagSinglePayload(v140, 1, v132) == 1)
    {
      v150 = v221;
      sub_1D4E50004(v221, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4E50004(v140, &qword_1EC7ECBA0, &unk_1D56270F0);
      v151 = 1;
    }

    else
    {
      v153 = v208;
      v152 = v209;
      v154 = v210;
      (*(v209 + 104))(v208, *MEMORY[0x1E6976A78], v210);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow);
      sub_1D560DA98();
      (*(v152 + 8))(v153, v154);
      v150 = v221;
      sub_1D4E50004(v221, &qword_1EC7ECB30, &unk_1D565D0F0);
      (*(*(v132 - 8) + 8))(v140, v132);
      v151 = 0;
    }

    v155 = v216;
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    __swift_storeEnumTagSinglePayload(v147, v151, 1, v156);
    v157 = v175;
    sub_1D4F39A1C(v212, v175, &qword_1EC7ECA78, &qword_1D5622340);
    sub_1D4F39A1C(v135, v157 + *(v155 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D4F39A1C(v147, v157 + *(v155 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    __swift_storeEnumTagSinglePayload(v157, 0, 1, v155);
    sub_1D4F39A1C(v157, v150, &qword_1EC7ECB30, &unk_1D565D0F0);
  }

  v159 = *v129;
  v158 = v129[1];
  v160 = v200;
  v161 = v201;
  sub_1D50A2244(v219, &v201[*(v200 + 20)]);
  sub_1D4F39AB0(v221, v161 + v160[6], &qword_1EC7ECB30, &unk_1D565D0F0);
  *v161 = v159;
  v161[1] = v158;
  *(v161 + v160[7]) = 1;
  *(v161 + v160[8]) = 1;
  LODWORD(v159) = *(type metadata accessor for TVSeason() + 20);

  v162 = v198;
  sub_1D5611A28();
  v163 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v162, 0, 1, v163);
  v164 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v199, 1, 1, v164);
  v165 = v202;
  sub_1D5612B38();
  sub_1D50A2244(v161, v217);
  sub_1D5611A98();
  v166 = sub_1D5611A88();
  v215 = v167;
  v216 = v166;
  v168 = v203;
  v169 = v206;
  v170 = v204;
  (*(v203 + 16))(v206, v165, v204);
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v170);
  v214 = sub_1D5611A38();
  v213 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7ECBC8, type metadata accessor for CloudTVSeason);
  sub_1D5610628();
  (*(v168 + 8))(v165, v170);
  sub_1D50A229C();
  sub_1D4E50004(v221, &qword_1EC7ECB30, &unk_1D565D0F0);
  sub_1D50A229C();
  sub_1D4E50004(v222, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v218, &qword_1EC7ECBA0, &unk_1D56270F0);
  return sub_1D4E50004(v220, &qword_1EC7EA788, &unk_1D56223A0);
}

void sub_1D507F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v292 = v24;
  v293 = v23;
  v26 = v25;
  v291 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v290 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  v294 = v47;
  OUTLINED_FUNCTION_70_0();
  v48 = sub_1D5610788();
  v49 = OUTLINED_FUNCTION_4(v48);
  v288 = v50;
  v289 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v286 = v53;
  OUTLINED_FUNCTION_70_0();
  v287 = sub_1D56107C8();
  v54 = OUTLINED_FUNCTION_4(v287);
  v285 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v284 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  v86 = OUTLINED_FUNCTION_48(v85);
  v298 = type metadata accessor for CloudTVShow(v86);
  v87 = OUTLINED_FUNCTION_14(v298);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  v299 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v269 - v95;
  v97 = type metadata accessor for TVShowPropertyProvider();
  v98 = OUTLINED_FUNCTION_14(v97);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v271 = v101;
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v101);
  v105 = v97[9];
  v106 = sub_1D5610978();
  v273 = v105;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
  v110 = v97[15];
  v111 = sub_1D560C0A8();
  v274 = v110;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v111);
  v276 = v97[19];
  OUTLINED_FUNCTION_33();
  v115 = v106;
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v106);
  v119 = v97[20];
  sub_1D560C328();
  v279 = v119;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  v278 = v97[21];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v111);
  v127 = v97[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v283 = v127;
  OUTLINED_FUNCTION_33();
  v282 = v128;
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v128);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v132 = sub_1D560D9A8();
  __swift_project_value_buffer(v132, qword_1EC7F5D98);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
  v137 = v97[25];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  sub_1D56105B8();
  sub_1D4E50004(v96, &qword_1EC7EB5C0, &unk_1D56223C0);
  v297 = v97;
  v139 = v20 + v97[26];
  sub_1D5610658();
  v140 = sub_1D5610618();
  v142 = v141;
  v143 = sub_1D56105C8();
  v144 = sub_1D56105F8();
  v145 = sub_1D56105E8();
  v295 = v138;
  v296 = v26;
  v146 = sub_1D56105A8();
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v147 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    v267 = qword_1EC87C740 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C740 < 0)
    {
      v267 = qword_1EC87C740;
    }

    OUTLINED_FUNCTION_138_6(v267);
    sub_1D560CDE8();

    v268 = OUTLINED_FUNCTION_184_2(&v298);

    v147 = v268;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v149 = v296;
  v148 = v297;
  *(v20 + v297[24]) = v147;
  v150 = (v20 + v148[27]);
  *v150 = v140;
  v150[1] = v142;
  *(v20 + v148[28]) = v143;
  *(v20 + v148[29]) = v144;
  *(v20 + v148[30]) = v145;
  v151 = v148;
  *(v20 + v148[31]) = v146;
  v152 = v299;
  sub_1D5610648();
  v153 = v152 + v298[5];
  OUTLINED_FUNCTION_117_0(&v301);
  sub_1D4F39AB0(v154, v155, v156, v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v158 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v158);
  if (v241)
  {
    sub_1D4E50004(v149, &qword_1EC7EB5B8, &unk_1D56206A0);
    v163 = v275;
    v144 = v272;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v302);
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v160 = *(v159 + 8);
    v161 = OUTLINED_FUNCTION_159();
    v162(v161);
    v163 = v275;
  }

  v164 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v271);
  sub_1D4E68940(v144, v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v167 = type metadata accessor for CloudTVShow.Attributes(0);
  v168 = *(v153 + v167[5]);
  if (v168)
  {
    v168 = sub_1D511C2A4(v168);
  }

  *(v20 + v151[5]) = v168;
  v169 = *(v153 + v167[6]);
  if (v169)
  {
    v169 = sub_1D5259FF8(v169);
  }

  v170 = v151[7];
  *(v20 + v151[6]) = v169;
  *(v20 + v170) = *(v153 + v167[7]);
  v171 = *(v153 + v167[8]);

  if (v171)
  {
    v172 = sub_1D50C4BD4(v171);
  }

  else
  {
    v172 = 0;
  }

  *(v20 + v151[8]) = v172;
  sub_1D4F39AB0(v153 + v167[9], v163, &qword_1EC7EC960, &unk_1D56334C0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v174 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v174, v175, v173);
  if (v241)
  {
    sub_1D4E50004(v163, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v173);
    v177 = *(v176 + 8);
    v178 = OUTLINED_FUNCTION_20_5();
    v179(v178);
  }

  v180 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v115);
  v183 = v151[10];
  v184 = v20 + v151[11];
  v185 = v151[12];
  v186 = v151[13];
  v187 = v151[14];
  OUTLINED_FUNCTION_79_4(&v303);
  sub_1D4E68940(v188, v189, v190, v191);
  *(v20 + v183) = *(v153 + v167[10]);
  v192 = (v153 + v167[11]);
  v193 = *v192;
  LOBYTE(v192) = *(v192 + 8);
  *v184 = v193;
  *(v184 + 8) = v192;
  *(v20 + v185) = *(v153 + v167[12]);
  *(v20 + v186) = *(v153 + v167[13]);
  *(v20 + v187) = *(v153 + v167[14]);
  v194 = v167[15];

  OUTLINED_FUNCTION_79_4(&v304);
  sub_1D5000C8C(v195, v196, v197, v198);
  v199 = *(v153 + v167[16]);
  if (v199)
  {
    v199 = sub_1D54FEF40(v199);
  }

  v200 = v277;
  v201 = v297;
  v202 = (v20 + v297[17]);
  *(v20 + v297[16]) = v199;
  v203 = (v153 + v167[17]);
  v204 = v203[1];
  *v202 = *v203;
  v202[1] = v204;
  v205 = *(v153 + v167[18]);

  if (v205)
  {
    v206 = sub_1D50C4BD4(v205);
  }

  else
  {
    v206 = 0;
  }

  v207 = v280;
  *(v20 + v201[18]) = v206;
  sub_1D4F39AB0(v153 + v167[19], v200, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v200, 1, v173);
  if (v241)
  {
    sub_1D4E50004(v200, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v173);
    (*(v208 + 8))(v200, v173);
  }

  v209 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v209, v210, v211, v115);
  OUTLINED_FUNCTION_79_4(&a11);
  sub_1D4E68940(v207, v212, v213, v214);
  v215 = v284;
  sub_1D56107A8();
  v216 = (v153 + v167[20]);
  v217 = *v216;
  v218 = v216[1];
  v220 = v288;
  v219 = v289;
  v221 = v286;
  (*(v288 + 104))(v286, *MEMORY[0x1E6975DC8], v289);
  v222 = v281;
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v220 + 8))(v221, v219);
  (*(v285 + 8))(v215, v287);
  OUTLINED_FUNCTION_79_4(&a14);
  sub_1D4E68940(v222, v223, v224, v225);
  v226 = v153 + v167[21];
  OUTLINED_FUNCTION_79_4(&a13);
  sub_1D5000C8C(v227, v228, v229, v230);
  v231 = v290;
  sub_1D4F39AB0(v299 + v298[6], v290, &qword_1EC7ED190, &qword_1D5623F30);
  type metadata accessor for CloudTVShow.Relationships(0);
  v232 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v232, v233, v234);
  if (v241)
  {
    sub_1D4E50004(v231, &qword_1EC7ED190, &qword_1D5623F30);
    v235 = v296;
LABEL_34:
    v252 = v297;
    v247 = v293;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_117_0(v300);
  sub_1D4F39AB0(v236, v237, v238, v239);
  sub_1D50A229C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v240 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v240);
  if (v241)
  {
    sub_1D4E50004(v215, &qword_1EC7ECD90, &unk_1D5622F80);
    v235 = v296;
    goto LABEL_34;
  }

  v242 = sub_1D560CD98();
  v243 = v270;
  OUTLINED_FUNCTION_15_4(v270, v244, v245, v242);
  type metadata accessor for TVSeason();
  sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_36_11();
  sub_1D50A2470(v246, type metadata accessor for TVSeason);
  v247 = v293;
  sub_1D5612368();
  sub_1D4E50004(v243, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_15_1();
  v249 = *(v248 + 8);
  v250 = OUTLINED_FUNCTION_159();
  v251(v250);
  v235 = v296;
  v252 = v297;
LABEL_35:
  v253 = v294;
  v254 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v254, v255, v256, v282);
  OUTLINED_FUNCTION_79_4(&a18);
  sub_1D4E68940(v253, v257, v258, v259);
  v260 = *(v299 + v298[8]);
  OUTLINED_FUNCTION_175_1();
  *(v20 + v252[23]) = v261;
  v302 = v252;
  v262 = sub_1D50A2470(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider);
  v263 = OUTLINED_FUNCTION_181_2(v262);
  sub_1D50A2244(v20, v263);
  sub_1D4E67688(v260);
  TVShow.init(propertyProvider:)(v300, v291);

  v264 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v264);
  (*(v265 + 8))(v247);
  OUTLINED_FUNCTION_24_0(v295);
  (*(v266 + 8))(v235);
  OUTLINED_FUNCTION_110_7();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50808C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v147 = a1;
  v183 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v182 = &v140 - v6;
  v7 = sub_1D5610088();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v181 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v176 = &v140 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v175 = &v140 - v15;
  v16 = sub_1D5612B78();
  v179 = *(v16 - 8);
  v180 = v16;
  v17 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v178 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for CloudTVShow(0);
  v19 = *(*(v177 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v177);
  v186 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v174 = &v140 - v22;
  v146 = sub_1D5613578();
  v145 = *(v146 - 8);
  v23 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v172 = &v140 - v27;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v141 = *(v173 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v142 = &v140 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v143 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v187 = &v140 - v34;
  v170 = sub_1D5610788();
  v169 = *(v170 - 8);
  v35 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v166 = &v140 - v39;
  v167 = sub_1D56107C8();
  v165 = *(v167 - 8);
  v40 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v140 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v171 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v140 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v185 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v184 = &v140 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v60 = &v140 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v140 - v63;
  v65 = type metadata accessor for CloudTVShow.Attributes(0);
  v66 = *(*(v65 - 1) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v188 = &v140 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v68 = sub_1D56140F8();
  sub_1D50A2470(&qword_1EC7EA688, type metadata accessor for TVShow);
  v69 = sub_1D50A2470(&qword_1EC7EC4A0, type metadata accessor for TVShow);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v60, 1, v68) == 1)
  {
    sub_1D4E50004(v60, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v70 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v68 - 8) + 8))(v60, v68);
    v70 = 0;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v64, v70, 1, v71);
  if (qword_1EC7E9540 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  v72 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v73 = v189;
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v162 = sub_1D511C730(v73);

  if (qword_1EC7E9598 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  sub_1D560EC28();
  if (v189)
  {
    v161 = sub_1D525AA6C(v189);
  }

  else
  {
    v161 = 0;
  }

  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v160 = v189;
  if (qword_1EC7E95A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  sub_1D560EC28();
  if (v189)
  {
    v74 = v189;
  }

  else
  {
    v74 = v72;
  }

  v159 = sub_1D50C4F58(v74);

  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v163 = v64;
  v75 = sub_1D5610978();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v51, 1, v75) == 1)
  {
    sub_1D4E50004(v51, &qword_1EC7EAC98, &unk_1D561DA80);
    v76 = 1;
    v77 = v184;
  }

  else
  {
    v77 = v184;
    sub_1D5610918();
    (*(*(v75 - 8) + 8))(v51, v75);
    v76 = 0;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v77, v76, 1, v78);
  sub_1D4F84AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v158 = v189;
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v79 = v189;
  if (v190)
  {
    v79 = 0;
  }

  v157 = v79;
  v80 = v171;
  if (qword_1EC7E9560 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v156 = v189;
  if (qword_1EC7E9568 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v150 = v189;
  if (qword_1EC7E9570 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  LODWORD(v149) = v189;
  if (qword_1EC7E95B0 != -1)
  {
    swift_once();
  }

  v81 = v45;
  v154 = sub_1D560C0A8();
  sub_1D560EC28();
  if (qword_1EC7E9578 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED218, &qword_1D5623F90);
  sub_1D560EC28();
  v82 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v83 = v189;
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];
  }

  v155 = sub_1D54FF0E8(v83);

  v153 = TVShow.name.getter();
  v152 = v84;
  if (qword_1EC7E95B8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v189)
  {
    v85 = v189;
  }

  else
  {
    v85 = v82;
  }

  v151 = sub_1D50C4F58(v85);

  if (qword_1EC7E95C0 != -1)
  {
    swift_once();
  }

  v86 = v3;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v80, 1, v75) == 1)
  {
    sub_1D4E50004(v80, &qword_1EC7EAC98, &unk_1D561DA80);
    v87 = 1;
    v88 = v185;
  }

  else
  {
    v88 = v185;
    sub_1D5610918();
    (*(*(v75 - 8) + 8))(v80, v75);
    v87 = 0;
  }

  v171 = v81;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v88, v87, 1, v89);
  v148 = v150 & 1;
  v150 = v149 & 1;
  v90 = v164;
  sub_1D56107A8();
  if (qword_1EC7E9588 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v91 = v166;
  v92 = v86;
  sub_1D560EC28();
  v93 = v169;
  v94 = v168;
  v95 = v170;
  (*(v169 + 104))(v168, *MEMORY[0x1E6975DC8], v170);
  v96 = v90;
  v97 = sub_1D56107B8();
  v149 = v98;
  (*(v93 + 8))(v94, v95);
  sub_1D4E50004(v91, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v165 + 8))(v96, v167);
  v99 = v69;
  if (qword_1EC7E9590 != -1)
  {
    swift_once();
  }

  v100 = v188;
  v101 = v188 + v65[21];
  sub_1D560EC28();
  if (v156)
  {
    v102 = v156;
  }

  else
  {
    v102 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F39A1C(v163, v100, &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v100 + v65[5]) = v162;
  *(v100 + v65[6]) = v161;
  *(v100 + v65[7]) = v160;
  *(v100 + v65[8]) = v159;
  sub_1D4F39A1C(v184, v100 + v65[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v100 + v65[10]) = v158;
  v103 = v100 + v65[11];
  *v103 = v157;
  *(v103 + 8) = 0;
  *(v100 + v65[12]) = v102;
  *(v100 + v65[13]) = v148;
  *(v100 + v65[14]) = v150;
  sub_1D4F39A1C(v171, v100 + v65[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v100 + v65[16]) = v155;
  v104 = (v100 + v65[17]);
  v105 = v152;
  *v104 = v153;
  v104[1] = v105;
  *(v100 + v65[18]) = v151;
  sub_1D4F39A1C(v185, v100 + v65[19], &qword_1EC7EC960, &unk_1D56334C0);
  v106 = (v100 + v65[20]);
  v107 = v149;
  *v106 = v97;
  v106[1] = v107;
  v108 = type metadata accessor for CloudTVShow.Relationships(0);
  v109 = v187;
  __swift_storeEnumTagSinglePayload(v187, 1, 1, v108);
  if (qword_1EC7E95C8 != -1)
  {
    swift_once();
  }

  v110 = v172;
  v111 = v173;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v110, 1, v111) == 1)
  {
    sub_1D4E50004(v110, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    v112 = v141;
    v113 = v142;
    (*(v141 + 32))(v142, v110, v111);
    v114 = *MEMORY[0x1E6976A78];
    v184 = v108;
    v115 = v145;
    v116 = *(v145 + 104);
    v117 = v144;
    v185 = v99;
    v118 = v146;
    v116(v144, v114, v146);
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason);
    v119 = v143;
    sub_1D560DA98();
    v120 = v118;
    v109 = v187;
    (*(v115 + 8))(v117, v120);
    (*(v112 + 8))(v113, v111);
    sub_1D4E50004(v109, &qword_1EC7ED190, &qword_1D5623F30);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    __swift_storeEnumTagSinglePayload(v119, 0, 1, v121);
    __swift_storeEnumTagSinglePayload(v119, 0, 1, v184);
    sub_1D4F39A1C(v119, v109, &qword_1EC7ED190, &qword_1D5623F30);
  }

  v122 = type metadata accessor for TVShow();
  sub_1D50A2470(&qword_1EC7ED220, type metadata accessor for TVShow);
  v123 = sub_1D560CBD8();
  if (v123 <= 1)
  {
    v124 = 1;
  }

  else
  {
    v124 = v123;
  }

  v126 = *v92;
  v125 = v92[1];
  v127 = v177;
  v128 = v174;
  sub_1D50A2244(v188, &v174[*(v177 + 20)]);
  sub_1D4F39AB0(v109, v128 + v127[6], &qword_1EC7ED190, &qword_1D5623F30);
  *v128 = v126;
  v128[1] = v125;
  *(v128 + v127[7]) = 1;
  *(v128 + v127[8]) = v124;
  v129 = *(v122 + 20);

  v130 = v175;
  sub_1D5611A28();
  v131 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v131);
  v132 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v176, 1, 1, v132);
  v133 = v178;
  sub_1D5612B38();
  sub_1D50A2244(v128, v186);
  sub_1D5611A98();
  v134 = sub_1D5611A88();
  v184 = v135;
  v185 = v134;
  v137 = v179;
  v136 = v180;
  v138 = v182;
  (*(v179 + 16))(v182, v133, v180);
  __swift_storeEnumTagSinglePayload(v138, 0, 1, v136);
  v176 = sub_1D5611A38();
  v175 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7ED228, type metadata accessor for CloudTVShow);
  sub_1D5610628();
  (*(v137 + 8))(v133, v136);
  sub_1D50A229C();
  sub_1D4E50004(v187, &qword_1EC7ED190, &qword_1D5623F30);
  return sub_1D50A229C();
}

uint64_t sub_1D50821CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v766 = a3;
  v767 = a2;
  v755 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_12_0(v8, &v791);
  v719 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v13);
  v14 = sub_1D560FDC8();
  v15 = OUTLINED_FUNCTION_12_0(v14, &v793);
  *&v775 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v715 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v715 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  v63 = (v715 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v715 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v86 = OUTLINED_FUNCTION_22(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D56128C8();
  v108 = OUTLINED_FUNCTION_12_0(v107, &v767);
  v741 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v114 = OUTLINED_FUNCTION_22(v113);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v119);
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v124);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v128);
  v129 = sub_1D5610788();
  v130 = OUTLINED_FUNCTION_12_0(v129, &v758);
  v732 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v134);
  v135 = sub_1D56107C8();
  v136 = OUTLINED_FUNCTION_12_0(v135, v757);
  v729 = v137;
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v141);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v147 = OUTLINED_FUNCTION_22(v146);
  v149 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v153 = OUTLINED_FUNCTION_22(v152);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v157);
  v158 = type metadata accessor for CloudVideoOffer();
  v159 = OUTLINED_FUNCTION_22(v158);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v163);
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v167);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v168);
  v170 = *(v169 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v174 = OUTLINED_FUNCTION_22(v173);
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v178);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v180 = OUTLINED_FUNCTION_22(v179);
  v182 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v184);
  v185 = type metadata accessor for TVEpisodePropertyProvider();
  v186 = OUTLINED_FUNCTION_20(v185, &v792);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v189);
  v190 = sub_1D560D838();
  v191 = OUTLINED_FUNCTION_12_0(v190, v788);
  v764 = v192;
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v195);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v196);
  v198 = *(v197 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v199);
  v200 = OUTLINED_FUNCTION_18_3();
  v201 = type metadata accessor for CloudTVEpisode(v200);
  v202 = OUTLINED_FUNCTION_14(v201);
  v204 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_5();
  v207 = v206 - v205;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v769[0] = v207;
  v762 = v208;
  v768 = a1;
  sub_1D5610648();
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v715[2] = v63;
  v769[1] = v201;
  v752 = v69;
  v716 = v5;
  v717 = v36;
  v753 = v4;
  v718 = v25;
  v209 = sub_1D56109D8();
  __swift_project_value_buffer(v209, qword_1EC87BF50);
  sub_1D4FFCB28();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v210 = sub_1D560D9A8();
  __swift_project_value_buffer(v210, qword_1EDD53C40);
  OUTLINED_FUNCTION_150(&v787);
  v763[0] = v6;
  v211 = v768;
  sub_1D56105B8();
  v212 = sub_1D56140F8();
  v213 = v770;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v212);
  OUTLINED_FUNCTION_177_2();
  v217 = v63[6];
  sub_1D560F928();
  v218 = OUTLINED_FUNCTION_20_1(v738);
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
  v222 = v63[10];
  v223 = sub_1D560C328();
  v224 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v223);
  v227 = v63[13];
  v228 = sub_1D5610978();
  v229 = OUTLINED_FUNCTION_20_1(&v741);
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v228);
  v232 = v63[17];
  v233 = sub_1D560C0A8();
  v234 = OUTLINED_FUNCTION_20_1(&v743);
  __swift_storeEnumTagSinglePayload(v234, v235, v236, v233);
  v237 = v63[20];
  sub_1D5613178();
  v238 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
  v242 = v63[21];
  sub_1D5613198();
  v243 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v243, v244, v245, v246);
  v247 = v63[22];
  sub_1D56134E8();
  v248 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v248, v249, v250, v251);
  v252 = OUTLINED_FUNCTION_41_21(v63[24]);
  __swift_storeEnumTagSinglePayload(v252, v253, v254, v223);
  v255 = OUTLINED_FUNCTION_41_21(v63[25]);
  __swift_storeEnumTagSinglePayload(v255, v256, v257, v223);
  v258 = v63[26];
  sub_1D5614A78();
  v259 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v259, v260, v261, v262);
  v263 = OUTLINED_FUNCTION_40_5(v63[29]);
  v773 = v228;
  __swift_storeEnumTagSinglePayload(v263, v264, v265, v228);
  v266 = v63[31];
  sub_1D56109F8();
  v267 = OUTLINED_FUNCTION_20_1(v745);
  __swift_storeEnumTagSinglePayload(v267, v268, v269, v270);
  v271 = OUTLINED_FUNCTION_40_5(v63[32]);
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v212);
  v274 = OUTLINED_FUNCTION_40_5(v63[34]);
  __swift_storeEnumTagSinglePayload(v274, v275, v276, v223);
  v277 = OUTLINED_FUNCTION_40_5(v63[36]);
  __swift_storeEnumTagSinglePayload(v277, v278, v279, v779);
  v280 = OUTLINED_FUNCTION_40_5(v63[38]);
  __swift_storeEnumTagSinglePayload(v280, v281, v282, v233);
  v283 = OUTLINED_FUNCTION_40_5(v63[44]);
  __swift_storeEnumTagSinglePayload(v283, v284, v285, v233);
  v286 = v63[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v287 = OUTLINED_FUNCTION_20_1(&v759);
  v733 = v288;
  __swift_storeEnumTagSinglePayload(v287, v289, v290, v288);
  v291 = v63[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v292 = OUTLINED_FUNCTION_20_1(v763);
  v737 = v293;
  __swift_storeEnumTagSinglePayload(v292, v294, v295, v293);
  v296 = v63[47];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v297 = OUTLINED_FUNCTION_20_1(v769);
  v743 = v298;
  __swift_storeEnumTagSinglePayload(v297, v299, v300, v298);
  v301 = v63[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v302 = OUTLINED_FUNCTION_20_1(&v771);
  v745[1] = v303;
  __swift_storeEnumTagSinglePayload(v302, v304, v305, v303);
  v306 = v63[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v307 = OUTLINED_FUNCTION_20_1(&v774);
  v747 = v308;
  __swift_storeEnumTagSinglePayload(v307, v309, v310, v308);
  v311 = v63[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v312 = OUTLINED_FUNCTION_20_1(&v775);
  v749 = v313;
  __swift_storeEnumTagSinglePayload(v312, v314, v315, v313);
  (*(v764 + 16))(v213 + v63[53], v4, v765);
  v316 = v213 + v63[54];
  sub_1D5610658();
  v780 = sub_1D5610618();
  v722 = v317;
  v720 = sub_1D56105C8();
  v318 = sub_1D56105F8();
  sub_1D56105E8();
  OUTLINED_FUNCTION_174_2();
  v319 = sub_1D56105A8();
  v320 = v213 + v63[5];
  *v320 = 0;
  *(v320 + 8) = 1;
  *(v213 + v63[16]) = 2;
  *(v213 + v63[18]) = 2;
  v721 = v63[23];
  *(v213 + v721) = 26;
  v321 = v213 + v63[30];
  *v321 = xmmword_1D5626F70;
  *(v321 + 24) = 0;
  *(v321 + 32) = 0;
  *(v321 + 16) = 0;
  v322 = (v213 + v63[42]);
  v322[2] = 0u;
  v322[3] = 0u;
  *v322 = 0u;
  v322[1] = 0u;
  v728 = v322;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v323 = qword_1EC87C178;
  v324 = v727;
  v325 = v725;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();
    OUTLINED_FUNCTION_157_5();

    OUTLINED_FUNCTION_116();
    sub_1D5615E18();
    OUTLINED_FUNCTION_157_5();

    v323 = v211;
  }

  else
  {

    v211 = v323 & 0xFFFFFFFFFFFFFF8;
    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v326 = v778;
  v327 = v770;
  *(v770 + v778[52]) = v323;
  v328 = (v327 + v326[55]);
  *v328 = v780;
  v328[1] = v722;
  *(v327 + v326[56]) = v720;
  *(v327 + v326[57]) = v318;
  *(v327 + v326[58]) = v311;
  *(v327 + v326[59]) = v319;
  v329 = v327;
  OUTLINED_FUNCTION_147_4();
  v331 = (v769[0] + *(v330 + 20));
  v780 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v332 = v331 + v780[5];
  OUTLINED_FUNCTION_117_0(v739);
  sub_1D4F39AB0(v333, v334, v335, v336);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v338 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v338, v339, v337);
  v722 = v337;
  if (v417)
  {
    sub_1D4E50004(v211, &qword_1EC7EB5B8, &unk_1D56206A0);
    v344 = v771;
    v311 = v723;
  }

  else
  {
    OUTLINED_FUNCTION_172(v740);
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v337);
    v341 = *(v340 + 8);
    v342 = OUTLINED_FUNCTION_121();
    v343(v342);
    v344 = v771;
  }

  v345 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v345, v346, v347, v212);
  sub_1D4E68940(v311, v329, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_135_6();
  v349 = *(v331 + *(v348 + 24));
  if (v349 && (v350 = *(v349 + 16)) != 0)
  {
    v351 = 0;
    v352 = (v349 + 32);
    do
    {
      v353 = *v352++;
      v351 |= qword_1D5631208[v353];
      --v350;
    }

    while (v350);
  }

  else
  {
    v351 = 0;
  }

  *v320 = v351;
  *(v320 + 8) = v349 == 0;
  OUTLINED_FUNCTION_100_5();
  sub_1D50A2470(v354, v355);
  OUTLINED_FUNCTION_150(&v742);
  v356 = v780;
  v723 = v357;
  sub_1D5612A68();
  OUTLINED_FUNCTION_79_4(v738);
  sub_1D4E68940(v320, v358, v359, v360);
  v361 = *(v331 + v356[7]);
  if (v361)
  {
    sub_1D511C2A4(v361);
  }

  v362 = v724;
  OUTLINED_FUNCTION_155_4();
  v364 = *(v363 + 28);
  v365 = (v329 + *(v363 + 32));
  *(v329 + v364) = v366;
  v367 = v780;
  v368 = (v331 + v780[8]);
  v369 = v368[1];
  *v365 = *v368;
  v365[1] = v369;
  v370 = *(v331 + v367[9]);

  if (v370)
  {
    sub_1D5259FF8(v370);
  }

  OUTLINED_FUNCTION_136_5();
  *(v329 + *(v371 + 36)) = v372;
  OUTLINED_FUNCTION_135_6();
  v374 = *(v331 + *(v373 + 84));
  v375 = 0.0;
  if (!v374)
  {
    v376 = 0;
    goto LABEL_28;
  }

  v376 = *(v331 + *(v373 + 84));
  sub_1D4EC9F44(v374);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  v377 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v377);
  if (v417)
  {
    sub_1D4E50004(v362, &qword_1EC7EDB90, &unk_1D565B670);
LABEL_28:
    v384 = 1;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_150(v730);
  sub_1D5610708();
  OUTLINED_FUNCTION_15_1();
  v379 = *(v378 + 8);
  v380 = OUTLINED_FUNCTION_159();
  v381(v380);
  v382 = *v320;
  v383 = *(v320 + 8);
  OUTLINED_FUNCTION_99_7();
  sub_1D50A229C();
  if (v383)
  {
    goto LABEL_28;
  }

  v384 = 0;
  v375 = v382 / 1000.0;
LABEL_29:
  v385 = v778[12];
  v386 = (v329 + v778[11]);
  *v386 = v375;
  *(v386 + 8) = v384;
  v387 = v780;
  *(v329 + v385) = *(v331 + v780[11]);
  sub_1D4F39AB0(v331 + v387[12], v325, &qword_1EC7EC960, &unk_1D56334C0);
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v325, 1, v388);

  v771 = v331;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v325, &qword_1EC7EC960, &unk_1D56334C0);
    v390 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_56_0();
    v392 = *(v391 + 8);
    v393 = OUTLINED_FUNCTION_16_20();
    v394(v393);
    v390 = 0;
  }

  OUTLINED_FUNCTION_212_1(v344, v390, 1);
  OUTLINED_FUNCTION_136_5();
  v396 = *(v395 + 56);
  v397 = *(v395 + 60);
  OUTLINED_FUNCTION_79_4(&v741);
  sub_1D4E68940(v344, v398, v399, v400);
  v401 = v780;
  v402 = v771;
  *(v329 + v396) = *(v771 + v780[13]);
  *(v329 + v397) = *(v402 + v401[17]);
  v403 = *(v402 + v401[19]);
  v404 = v212;
  if (v403 == 26)
  {
    v405 = 26;
  }

  else
  {
    sub_1D4FD3EB8(*(v402 + v401[19]), v789);
    v405 = v789[0];
  }

  *(v329 + v721) = v405;
  v406 = v780[18];

  v407 = v771;
  OUTLINED_FUNCTION_79_4(&v743);
  sub_1D5000C8C(v408, v409, v410, v411);
  OUTLINED_FUNCTION_100_5();
  sub_1D50A2470(v412, v413);
  v414 = v407;
  v415 = sub_1D5612A28();
  if (v403 != 26 && (v415 & 1) != 0)
  {
    v414 = 0x656C696172747674;
    v417 = sub_1D4FD39E0(v403) == 0x656C696172747674 && v416 == 0xE900000000000072;
    if (!v417)
    {
      v414 = sub_1D5616168();
    }

    v407 = v771;
  }

  OUTLINED_FUNCTION_155_4();
  v419 = *(v418 + 76);
  v420 = v329 + *(v418 + 108);
  *(v329 + v419) = v421 & 1;
  OUTLINED_FUNCTION_135_6();
  OUTLINED_FUNCTION_188_2((v407 + *(v422 + 56)));
  if (v376)
  {
    sub_1D501B268();
  }

  v423 = v772;
  OUTLINED_FUNCTION_136_5();
  *(v329 + *(v424 + 112)) = v425;
  OUTLINED_FUNCTION_135_6();
  sub_1D4F39AB0(v407 + *(v426 + 88), v324, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_5_1(v324);
  if (v417)
  {
    sub_1D4E50004(v324, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    v414 = v324;
    sub_1D5610738();
    OUTLINED_FUNCTION_56_0();
    (*(v427 + 8))(v324, v388);
  }

  v428 = OUTLINED_FUNCTION_121_5();
  OUTLINED_FUNCTION_212_1(v428, v429, v430);
  OUTLINED_FUNCTION_79_4(&v744);
  sub_1D4E68940(v423, v431, v432, v433);
  OUTLINED_FUNCTION_79_4(v745);
  sub_1D5000C8C(v763[0], v434, v435, v436);
  OUTLINED_FUNCTION_135_6();
  v438 = v407 + *(v437 + 92);
  OUTLINED_FUNCTION_117_0(&v750);
  sub_1D4F39AB0(v439, v440, v441, v442);
  v443 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v443, v444, v722);
  if (v417)
  {
    sub_1D4E50004(v414, &qword_1EC7EB5B8, &unk_1D56206A0);
    v423 = v726;
  }

  else
  {
    OUTLINED_FUNCTION_172(&v751);
    sub_1D5610758();
    OUTLINED_FUNCTION_56_0();
    v446 = *(v445 + 8);
    v447 = OUTLINED_FUNCTION_222();
    v448(v447);
  }

  v449 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v449, v450, v451, v212);
  OUTLINED_FUNCTION_79_4(v746);
  sub_1D4E68940(v423, v452, v453, v454);
  OUTLINED_FUNCTION_135_6();
  v456 = *(v407 + *(v455 + 96));
  if (v456)
  {
    v457 = *(v456 + 16);
    v458 = MEMORY[0x1E69E7CC0];
    if (v457)
    {
      *&v789[0] = MEMORY[0x1E69E7CC0];
      sub_1D4F03AB4();
      v458 = *&v789[0];
      v459 = v719 + 16;
      v773 = *(v719 + 16);
      v460 = v456 + ((*(v719 + 80) + 32) & ~*(v719 + 80));
      OUTLINED_FUNCTION_138_6(*(v719 + 72));
      v329 = (v459 - 8);
      v376 = v715[1];
      do
      {
        v414 = v774;
        v461 = OUTLINED_FUNCTION_222();
        v773(v461);
        sub_1D5610728();
        v462 = *v329;
        v463 = OUTLINED_FUNCTION_121();
        v464(v463);
        *&v789[0] = v458;
        v404 = *(v458 + 16);
        if (v404 >= *(v458 + 24) >> 1)
        {
          v414 = v789;
          sub_1D4F03AB4();
          v458 = *&v789[0];
        }

        *(v458 + 16) = v404 + 1;
        (*(v775 + 32))(v458 + ((*(v775 + 80) + 32) & ~*(v775 + 80)) + *(v775 + 72) * v404, v376, v779);
        v460 += v772;
        --v457;
      }

      while (v457);
      OUTLINED_FUNCTION_158_3();
      v407 = v771;
    }
  }

  else
  {
    v458 = 0;
  }

  OUTLINED_FUNCTION_155_4();
  v466 = v329 + *(v465 + 140);
  *(v329 + *(v465 + 132)) = v458;
  OUTLINED_FUNCTION_185_2(&v755);
  v467 = v780;
  v468 = (v407 + v780[25]);
  v469 = *v468;
  v470 = v468[1];
  v471 = *MEMORY[0x1E6975DC8];
  v472 = v732;
  v473 = *(v732 + 104);
  OUTLINED_FUNCTION_179_2();
  OUTLINED_FUNCTION_140();
  v474();
  OUTLINED_FUNCTION_34_23(&v754);
  sub_1D5610798();
  v476 = *(v472 + 8);
  v475 = v472 + 8;
  v477 = v407;
  v478 = v771;
  v476(v376, v477);
  v479 = OUTLINED_FUNCTION_68_9(v756);
  v480(v479, v731);
  OUTLINED_FUNCTION_79_4(&v747);
  sub_1D4E68940(v404, v481, v482, v483);
  v484 = v478 + *(v467 + 60);
  v485 = *v484;
  LOBYTE(v484) = v484[8];
  *v466 = v485;
  *(v466 + 8) = v484;
  v486 = v478 + *(v467 + 104);
  OUTLINED_FUNCTION_117_0(v760);
  sub_1D4F39AB0(v487, v488, v489, v490);
  v491 = OUTLINED_FUNCTION_35_1();
  v492 = v776;
  OUTLINED_FUNCTION_57(v491, v493, v776);
  if (v417)
  {
    sub_1D4E50004(v414, &qword_1EC7ED9C0, &qword_1D5626FB0);
    OUTLINED_FUNCTION_202_1();
    v466 = v736;
  }

  else
  {
    OUTLINED_FUNCTION_150(v761);
    sub_1D5610728();
    v494 = OUTLINED_FUNCTION_68_9(v735);
    v495(v494, v492);
    OUTLINED_FUNCTION_202_1();
  }

  v496 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v496, v497, v498, v779);
  OUTLINED_FUNCTION_136_5();
  v500 = (v329 + *(v499 + 148));
  OUTLINED_FUNCTION_79_4(&v748);
  sub_1D4E68940(v466, v501, v502, v503);
  v504 = v478[1];
  *v500 = *v478;
  v500[1] = v504;
  v505 = v780;
  v506 = v780[27];

  OUTLINED_FUNCTION_79_4(&v749);
  sub_1D5000C8C(v507, v508, v509, v510);
  sub_1D4F39AB0(v478 + v505[10], v414, &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v511 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v511);
  v512 = v751;
  v513 = v746[1];
  if (v417)
  {
    sub_1D4E50004(v414, &qword_1EC7EC978, &unk_1D56222A0);
    v518 = 0;
    v505 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_186(&v765);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v515 = *(v514 + 8);
    v516 = OUTLINED_FUNCTION_159();
    v517(v516);
    v518 = v376;
    sub_1D56128A8();
    OUTLINED_FUNCTION_22_13();
    (*(v741 + 8))(v376, v742);
  }

  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_136_5();
  v520 = (v329 + *(v519 + 156));
  *v520 = v518;
  v520[1] = v505;
  OUTLINED_FUNCTION_117_0(&v764);
  sub_1D4F39AB0(v521, v522, v523, v524);
  OUTLINED_FUNCTION_1(v518);
  if (v417)
  {
    sub_1D4E50004(v518, &qword_1EC7EC978, &unk_1D56222A0);
    v506 = 0;
    v529 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v765);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v526 = *(v525 + 8);
    v527 = OUTLINED_FUNCTION_159();
    v528(v527);
    v529 = v505;
    sub_1D56128B8();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_136(&v766);
    v530(v505, v742);
  }

  v531 = v759;
  v532 = v745[0];
  OUTLINED_FUNCTION_155_4();
  v534 = (v329 + *(v533 + 160));
  v535 = v329 + *(v533 + 164);
  *v534 = v506;
  v534[1] = v529;
  OUTLINED_FUNCTION_188_2((v771 + v780[16]));
  sub_1D4F39AB0(v537 + *(v536 + 112), v532, &qword_1EC7ED9B0, &unk_1D5631050);
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_1(v532);
  if (v417)
  {
    sub_1D4E50004(v532, &qword_1EC7ED9B0, &unk_1D5631050);
    v539.n128_f64[0] = OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_178_1(v540, v539);
  }

  else
  {
    v529 = v532;
    sub_1D5138FDC(v789);
    OUTLINED_FUNCTION_15_1();
    (*(v541 + 8))(v532, v538);
    v776 = v789[1];
    v779 = v789[0];
    v774 = v790;
    OUTLINED_FUNCTION_178_1(&v790 + 8, v789[2]);
    v531 = v759;
  }

  OUTLINED_FUNCTION_136_5();
  v543 = (v329 + *(v542 + 172));
  v544 = v728;
  v545 = v728[1];
  v786 = *v728;
  v787 = v545;
  v546 = v728[3];
  v788[0] = v728[2];
  v788[1] = v546;
  sub_1D4E50004(&v786, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v547 = v776;
  *v544 = v779;
  v544[1] = v547;
  v548 = v774;
  v544[2] = v775;
  v544[3] = v548;
  v549 = v780;
  v550 = (v771 + v780[20]);
  v551 = v550[1];
  *v543 = *v550;
  v543[1] = v551;
  v552 = v549[29];

  OUTLINED_FUNCTION_79_4(&v753);
  sub_1D5000C8C(v553, v554, v555, v556);
  OUTLINED_FUNCTION_147_4();
  v558 = *(v557 + 24);
  sub_1D4F39AB0(v467 + v558, v513, &qword_1EC7ECD98, &unk_1D5627070);
  v559 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_1(v513);
  if (v417)
  {
    v560 = &qword_1EC7ECD98;
    v561 = &unk_1D5627070;
  }

  else
  {
    v562 = OUTLINED_FUNCTION_16_20();
    sub_1D4F39AB0(v562, v563, v564, v565);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    v513 = v531;
    OUTLINED_FUNCTION_5_1(v531);
    if (!v566)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v329 = *(v567 - 256);
      OUTLINED_FUNCTION_15_4(v329, v568, v569, v570);
      sub_1D5613C48();
      OUTLINED_FUNCTION_147();
      v532 = sub_1D560CD48();
      OUTLINED_FUNCTION_46_15();
      sub_1D50A2470(v571, v572);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      sub_1D5612368();
      v529 = v756[1];
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_158_3();
      sub_1D4E50004(v573, v574, v575);
      OUTLINED_FUNCTION_56_0();
      v577 = *(v576 + 8);
      v578 = OUTLINED_FUNCTION_16_20();
      v579(v578);
      goto LABEL_78;
    }

    v560 = &qword_1EC7EA7F0;
    v561 = &unk_1D561E8C0;
  }

  sub_1D4E50004(v513, v560, v561);
LABEL_78:
  v580 = v756[0];
  v581 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v581, v582, v583, v733);
  OUTLINED_FUNCTION_79_4(&v759);
  sub_1D4E68940(v580, v584, v585, v586);
  sub_1D4F39AB0(v467 + v558, v529, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v529);
  if (v417)
  {
    v587 = &qword_1EC7ECD98;
    v588 = &unk_1D5627070;
    v589 = v529;
  }

  else
  {
    sub_1D4F39AB0(v529 + *(v559 + 20), v512, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_5_1(v512);
    if (!v590)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v592 = *(v591 - 256);
      OUTLINED_FUNCTION_15_4(v592, v593, v594, v595);
      type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_147();
      v532 = sub_1D560CD48();
      v329 = type metadata accessor for TVSeason;
      sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_36_11();
      OUTLINED_FUNCTION_158_3();
      sub_1D50A2470(v596, v597);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      v467 = v769[0];
      v529 = v512;
      sub_1D5612368();
      OUTLINED_FUNCTION_164_1();
      v598 = v592;
      v475 = v758;
      sub_1D4E50004(v598, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v600 = *(v599 + 8);
      v601 = OUTLINED_FUNCTION_85();
      v602(v601);
      goto LABEL_85;
    }

    v587 = &qword_1EC7ECD90;
    v588 = &unk_1D5622F80;
    v589 = v512;
  }

  sub_1D4E50004(v589, v587, v588);
LABEL_85:
  v603 = OUTLINED_FUNCTION_60_8(&v780);
  __swift_storeEnumTagSinglePayload(v603, v604, v605, v737);
  OUTLINED_FUNCTION_79_4(v763);
  sub_1D4E68940(v529, v606, v607, v608);
  OUTLINED_FUNCTION_66_1(&v776);
  sub_1D4F39AB0(v609, v610, v611, v612);
  OUTLINED_FUNCTION_1(v580);
  if (v417)
  {
    sub_1D4E50004(v580, &qword_1EC7ECD98, &unk_1D5627070);
    v613 = v752;
  }

  else
  {
    v614 = v580 + *(v559 + 24);
    OUTLINED_FUNCTION_117_0(&v732);
    sub_1D4F39AB0(v615, v616, v617, v618);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    v619 = OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_1(v619);
    v613 = v752;
    if (v620)
    {
      sub_1D4E50004(v529, &qword_1EC7ECA58, &unk_1D5622310);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v467 = *(v621 - 256);
      OUTLINED_FUNCTION_15_4(v467, v622, v623, v624);
      type metadata accessor for TVShow();
      sub_1D560CD48();
      v532 = type metadata accessor for TVShow;
      sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_76_6();
      sub_1D50A2470(v625, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_48_13();
      v329 = v770;
      sub_1D5612368();
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_205_1();
      sub_1D4E50004(v626, v627, v628);
      OUTLINED_FUNCTION_15_1();
      v630 = *(v629 + 8);
      v631 = OUTLINED_FUNCTION_159();
      v632(v631);
    }
  }

  v633 = v744;
  v634 = OUTLINED_FUNCTION_197_0();
  __swift_storeEnumTagSinglePayload(v634, v635, v636, v637);
  sub_1D4E68940(v613, v329 + v633, &qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_147_4();
  v639 = *(v638 + 28);
  sub_1D4F39AB0(v467 + v639, v532, &qword_1EC7ECD80, &qword_1D5622F70);
  v640 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_1(v532);
  if (v417)
  {
    sub_1D4E50004(v532, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  else
  {
    v467 = v716;
    sub_1D4F39AB0(v532, v716, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v467);
    if (v642)
    {
      sub_1D4E50004(v467, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v329 = *(v643 - 256);
      OUTLINED_FUNCTION_15_4(v329, v644, v645, v646);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v647, v648);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      v529 = v467;
      sub_1D5612368();
      OUTLINED_FUNCTION_158_3();
      sub_1D4E50004(v649, v650, v651);
      OUTLINED_FUNCTION_56_0();
      (*(v652 + 8))(v467, v641);
    }

    OUTLINED_FUNCTION_205_1();
  }

  v653 = v746[0];
  v654 = OUTLINED_FUNCTION_60_8(v781);
  __swift_storeEnumTagSinglePayload(v654, v655, v656, v657);
  sub_1D4E68940(v529, v329 + v653, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v467 + v639, v475, &qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_1(v475);
  if (v417)
  {
    v658 = &qword_1EC7ECD80;
    v659 = &qword_1D5622F70;
    v660 = v475;
  }

  else
  {
    v661 = v475 + *(v640 + 20);
    OUTLINED_FUNCTION_117_0(&v733);
    sub_1D4F39AB0(v662, v663, v664, v665);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v529);
    if (!v666)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v668 = *(v667 - 256);
      OUTLINED_FUNCTION_15_4(v668, v669, v670, v671);
      type metadata accessor for TVEpisode();
      sub_1D560CD48();
      v329 = type metadata accessor for TVEpisode;
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_71_6();
      OUTLINED_FUNCTION_158_3();
      sub_1D50A2470(v672, v673);
      OUTLINED_FUNCTION_48_13();
      v467 = v769[0];
      sub_1D5612368();
      sub_1D4E50004(v668, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v675 = *(v674 + 8);
      v676 = OUTLINED_FUNCTION_222();
      v677(v676);
      goto LABEL_105;
    }

    v658 = &qword_1EC7ECA78;
    v659 = &qword_1D5622340;
    v660 = v529;
  }

  sub_1D4E50004(v660, v658, v659);
LABEL_105:
  v678 = v748;
  v679 = OUTLINED_FUNCTION_60_8(v783);
  __swift_storeEnumTagSinglePayload(v679, v680, v681, v682);
  sub_1D4E68940(v529, v329 + v678, &qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_117_0(v777);
  sub_1D4F39AB0(v683, v684, v685, v686);
  OUTLINED_FUNCTION_1(v529);
  if (v417)
  {
    sub_1D4E50004(v529, &qword_1EC7ECD80, &qword_1D5622F70);
    v687 = 1;
    v688 = v754;
    v689 = v763[0];
  }

  else
  {
    OUTLINED_FUNCTION_183_2(v529 + *(v640 + 24), &qword_1EC7ECD18, &qword_1D5631040, v734);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v329);
    v689 = v763[0];
    if (v690)
    {
      sub_1D4E50004(v329, &qword_1EC7ECD18, &qword_1D5631040);
      v688 = v754;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v467 = *(v691 - 256);
      OUTLINED_FUNCTION_15_4(v467, v692, v693, v694);
      sub_1D5614898();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_112_6();
      sub_1D50A2470(v695, v696);
      v688 = v754;
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_88_8();
      sub_1D5612368();
      OUTLINED_FUNCTION_205_1();
      sub_1D4E50004(v697, v698, v699);
      OUTLINED_FUNCTION_15_1();
      v701 = *(v700 + 8);
      v702 = OUTLINED_FUNCTION_86_0();
      v703(v702);
    }

    OUTLINED_FUNCTION_158_3();
  }

  v704 = v750;
  __swift_storeEnumTagSinglePayload(v688, v687, 1, v749);
  sub_1D4E68940(v688, v329 + v704, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_147_4();
  v706 = *(v467 + *(v705 + 32));
  OUTLINED_FUNCTION_175_1();
  v707 = v778;
  *(v329 + v778[51]) = v708;
  v784 = v707;
  v785 = sub_1D50A2470(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider);
  v709 = __swift_allocate_boxed_opaque_existential_0(&v782);
  sub_1D50A2244(v329, v709);
  sub_1D4E67688(v706);
  TVEpisode.init(propertyProvider:)(&v782, v755);

  v710 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v710);
  (*(v711 + 8))(v767);
  OUTLINED_FUNCTION_24_0(v762);
  (*(v712 + 8))(v768);
  OUTLINED_FUNCTION_136(&v787 + 8);
  v713(v763[1], v765);
  sub_1D4E50004(v689, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_102_7();
  sub_1D50A229C();
  return sub_1D50A229C();
}

uint64_t sub_1D5084EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v362 = a1;
  v340 = a2;
  v377 = sub_1D560FDC8();
  v341 = *(v377 - 8);
  v4 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v377);
  v374 = v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  v375 = *(v376 - 8);
  v6 = *(v375 + 64);
  MEMORY[0x1EEE9AC00](v376);
  v291 = v289 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v339 = v289 - v10;
  v11 = sub_1D5610088();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v338 = v289 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v333 = v289 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v332 = v289 - v19;
  v337 = sub_1D5612B78();
  v336 = *(v337 - 8);
  v20 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v337);
  v356 = v289 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for CloudTVEpisode(0);
  v22 = *(*(v334 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v334);
  v355 = v289 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v335 = v289 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v301 = v289 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v300 = v289 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v345 = v289 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v299 = v289 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v289 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v297 = v289 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v358 = v289 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v296 = v289 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v371 = v289 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v298 = v289 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v370 = v289 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v295 = v289 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v342 = v289 - v61;
  v361 = sub_1D5613578();
  v360 = *(v361 - 8);
  v62 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v361);
  v359 = v289 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v344 = v289 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v67 - 8);
  v294 = v289 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v364 = v289 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8);
  v292 = v289 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v366 = v289 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v77 - 8);
  v331 = v289 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v369 = v289 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x1EEE9AC00](v82 - 8);
  v293 = v289 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v368 = v289 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v354 = v289 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90 - 8);
  v329 = v289 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v353 = v289 - v95;
  v328 = sub_1D5610788();
  v325 = *(v328 - 8);
  v96 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v324 = v289 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98 - 8);
  v322 = v289 - v100;
  v323 = sub_1D56107C8();
  v321 = *(v323 - 8);
  v101 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v343 = v289 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v104 = *(*(v103 - 8) + 64);
  v105 = MEMORY[0x1EEE9AC00](v103 - 8);
  v352 = v289 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v351 = v289 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v109 = *(*(v108 - 8) + 64);
  v110 = MEMORY[0x1EEE9AC00](v108 - 8);
  v373 = (v289 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v110);
  v113 = v289 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v115 = *(*(v114 - 8) + 64);
  v116 = MEMORY[0x1EEE9AC00](v114 - 8);
  v350 = v289 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116);
  v349 = v289 - v118;
  v367 = sub_1D56128C8();
  v119 = *(v367 - 8);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v367);
  v315 = v289 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v347 = v289 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v126 = *(*(v125 - 8) + 64);
  v127 = MEMORY[0x1EEE9AC00](v125 - 8);
  v372 = v289 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127);
  v130 = v289 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v132 = *(*(v131 - 8) + 64);
  v133 = MEMORY[0x1EEE9AC00](v131 - 8);
  v348 = v289 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v133);
  v346 = v289 - v135;
  v330 = type metadata accessor for CloudTVEpisode.Attributes(0);
  v136 = *(*(v330 - 8) + 64);
  MEMORY[0x1EEE9AC00](v330);
  v363 = (v289 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  v327 = TVEpisode.showName.getter();
  v326 = v138;
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  v139 = sub_1D56140F8();
  v140 = sub_1D50A2470(&qword_1EDD54508, type metadata accessor for TVEpisode);
  v141 = sub_1D50A2470(&qword_1EC7EC490, type metadata accessor for TVEpisode);
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v130, 1, v139);
  v357 = v139;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v130, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v143 = 1;
    v144 = v346;
  }

  else
  {
    v144 = v346;
    sub_1D5613F28();
    (*(*(v139 - 8) + 8))(v130, v139);
    v143 = 0;
  }

  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v144, v143, 1, v145);
  if (qword_1EC7E9178 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v146 = v383;
  if (BYTE8(v383))
  {
    v146 = 0;
  }

  *&v383 = v146;
  v320 = sub_1D504A774();
  if (qword_1EC7E9188 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  if (v383)
  {
    v147 = v383;
  }

  else
  {
    v147 = MEMORY[0x1E69E7CC0];
  }

  v319 = sub_1D511C730(v147);

  if (qword_1EC7E9190 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v317 = *(&v383 + 1);
  v318 = v383;
  if (qword_1EC7E9290 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  sub_1D560EC28();
  if (v383)
  {
    v316 = sub_1D525AA6C(v383);
  }

  else
  {
    v316 = 0;
  }

  v365 = v40;
  if (qword_1EC7E9258 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v148 = v141;
  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v149 = v315;
  sub_1D56128D8();
  v150 = v347;
  sub_1D5612898();
  (*(v119 + 8))(v149, v367);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  __swift_storeEnumTagSinglePayload(v150, 0, 1, v151);
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v152 = v383;
  if (qword_1EC7E91B0 != -1)
  {
    swift_once();
  }

  v153 = sub_1D5610978();
  sub_1D560EC28();
  v154 = __swift_getEnumTagSinglePayload(v113, 1, v153);
  v367 = v148;
  v155 = v349;
  v315 = v152;
  if (v154 == 1)
  {
    sub_1D4E50004(v113, &qword_1EC7EAC98, &unk_1D561DA80);
    v156 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v153 - 8) + 8))(v113, v153);
    v156 = 0;
  }

  v157 = MEMORY[0x1E69E7CC0];
  v158 = v373;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v155, v156, 1, v159);
  sub_1D4F84A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v314 = v383;
  v160 = v372;
  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v313 = v383;
  v312 = BYTE8(v383);
  v161 = v350;
  if (qword_1EC7E9250 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v311 = v383;
  v310 = BYTE8(v383);
  if (qword_1EC7E9270 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v309 = v383;
  v308 = BYTE8(v383);
  if (qword_1EC7E91B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v307 = v383;
  if (qword_1EC7E9298 != -1)
  {
    swift_once();
  }

  v303 = sub_1D560C0A8();
  sub_1D560EC28();
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v383 == 26)
  {
    v306 = 26;
  }

  else
  {
    LOBYTE(v382[0]) = v383;
    v306 = sub_1D4FD3EC0();
  }

  v305 = TVEpisode.title.getter();
  v304 = v162;
  if (qword_1EC7E9218 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  sub_1D560EC28();
  sub_1D501B598();
  v302 = v163;

  if (qword_1EC7E9220 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v158, 1, v153) == 1)
  {
    sub_1D4E50004(v158, &qword_1EC7EAC98, &unk_1D561DA80);
    v164 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v153 - 8) + 8))(v158, v153);
    v164 = 0;
  }

  v165 = v343;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v161, v164, 1, v166);
  v167 = v357;
  if (qword_1EC7E9238 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v168 = __swift_getEnumTagSinglePayload(v160, 1, v167);
  v169 = v348;
  if (v168 == 1)
  {
    sub_1D4E50004(v160, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v170 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v167 - 8) + 8))(v160, v167);
    v170 = 0;
  }

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v169, v170, 1, v171);
  if (qword_1EC7E9240 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDBB0, L"X\b\t");
  sub_1D560EC28();
  if (v383)
  {
    v172 = v383;
  }

  else
  {
    v172 = v157;
  }

  v173 = *(v172 + 16);
  v357 = v140;
  if (v173)
  {
    v290 = v3;
    *&v383 = v157;
    sub_1D4F0409C();
    v174 = v383;
    v373 = *(v341 + 16);
    v175 = (*(v341 + 80) + 32) & ~*(v341 + 80);
    v289[1] = v172;
    v176 = v172 + v175;
    v372 = *(v341 + 72);
    v177 = (v341 + 8);
    v178 = v291;
    do
    {
      v179 = v374;
      v180 = v377;
      v373(v374, v176, v377);
      sub_1D560FDB8();
      (*v177)(v179, v180);
      *&v383 = v174;
      v181 = *(v174 + 16);
      if (v181 >= *(v174 + 24) >> 1)
      {
        sub_1D4F0409C();
        v174 = v383;
      }

      *(v174 + 16) = v181 + 1;
      (*(v375 + 32))(v174 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v181, v178, v376);
      v176 += v372;
      --v173;
    }

    while (v173);
    v375 = v174;

    v3 = v290;
    v165 = v343;
  }

  else
  {

    v375 = MEMORY[0x1E69E7CC0];
  }

  sub_1D56107A8();
  v182 = v329;
  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v183 = v322;
  sub_1D560EC28();
  v184 = v325;
  v185 = v324;
  v186 = v328;
  (*(v325 + 104))(v324, *MEMORY[0x1E6975DC8], v328);
  v374 = sub_1D56107B8();
  v373 = v187;
  (*(v184 + 8))(v185, v186);
  sub_1D4E50004(v183, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v321 + 8))(v165, v323);
  if (qword_1EC7E92A0 != -1)
  {
    swift_once();
  }

  v188 = v377;
  sub_1D560EC28();
  v189 = __swift_getEnumTagSinglePayload(v182, 1, v188);
  v190 = v353;
  if (v189 == 1)
  {
    sub_1D4E50004(v182, &qword_1EC7EDB88, L"P\b\a");
    v191 = 1;
  }

  else
  {
    sub_1D560FDB8();
    (*(v341 + 8))(v182, v188);
    v191 = 0;
  }

  v192 = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v190, v191, 1, v376);
  v193 = v346;
  if (qword_1EC7E92A8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (qword_1EC7E9278 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (*(&v383 + 1))
  {
    v378 = v383;
    v379 = v384;
    v380 = v385;
    v381 = v386;
    v194 = v354;
    sub_1D51394FC(v354);
    v382[0] = v378;
    v382[1] = v379;
    v382[2] = v380;
    v382[3] = v381;
    sub_1D5000CD8(v382);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v196 = v194;
    v197 = 0;
  }

  else
  {
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v196 = v354;
    v197 = 1;
  }

  __swift_storeEnumTagSinglePayload(v196, v197, 1, v195);
  if (qword_1EC7E9288 != -1)
  {
    swift_once();
  }

  v198 = v330;
  v199 = v363;
  v200 = v363 + *(v330 + 116);
  sub_1D560EC28();
  if (v307)
  {
    v201 = v307;
  }

  else
  {
    v201 = v192;
  }

  v202 = v326;
  *v199 = v327;
  v199[1] = v202;
  sub_1D4F39A1C(v193, v199 + v198[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v199 + v198[6]) = v320;
  *(v199 + v198[7]) = v319;
  v203 = (v199 + v198[8]);
  v204 = v317;
  *v203 = v318;
  v203[1] = v204;
  *(v199 + v198[9]) = v316;
  sub_1D4F39A1C(v347, v199 + v198[10], &qword_1EC7EC978, &unk_1D56222A0);
  *(v199 + v198[11]) = v315;
  sub_1D4F39A1C(v349, v199 + v198[12], &qword_1EC7EC960, &unk_1D56334C0);
  *(v199 + v198[13]) = v314;
  v205 = v199 + v198[14];
  *v205 = v313;
  v205[8] = v312;
  v206 = v199 + v198[15];
  *v206 = v311;
  v206[8] = v310;
  v207 = v199 + v198[16];
  *v207 = v309;
  v207[8] = v308;
  *(v199 + v198[17]) = v201;
  sub_1D4F39A1C(v351, v199 + v198[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v199 + v198[19]) = v306;
  v208 = (v199 + v198[20]);
  v209 = v304;
  *v208 = v305;
  v208[1] = v209;
  *(v199 + v198[21]) = v302;
  sub_1D4F39A1C(v350, v199 + v198[22], &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D4F39A1C(v348, v199 + v198[23], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v199 + v198[24]) = v375;
  v210 = (v199 + v198[25]);
  v211 = v373;
  *v210 = v374;
  v210[1] = v211;
  sub_1D4F39A1C(v353, v199 + v198[26], &qword_1EC7ED9C0, &qword_1D5626FB0);
  sub_1D4F39A1C(v352, v199 + v198[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F39A1C(v354, v199 + v198[28], &qword_1EC7ED9B0, &unk_1D5631050);
  v212 = type metadata accessor for CloudTVEpisode.Relationships(0);
  __swift_storeEnumTagSinglePayload(v368, 1, 1, v212);
  if (qword_1EC7E92B0 != -1)
  {
    swift_once();
  }

  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D560EC28();
  if (qword_1EC7E92B8 != -1)
  {
    swift_once();
  }

  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  sub_1D560EC28();
  v215 = v331;
  if (qword_1EC7E92C0 != -1)
  {
    swift_once();
  }

  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v369, 1, v213) != 1 || __swift_getEnumTagSinglePayload(v366, 1, v214) != 1 || __swift_getEnumTagSinglePayload(v364, 1, v216) != 1)
  {
    sub_1D4F39AB0(v369, v215, &qword_1EC7EA788, &unk_1D56223A0);
    v217 = __swift_getEnumTagSinglePayload(v215, 1, v213);
    v377 = v212;
    if (v217 == 1)
    {
      sub_1D4E50004(v215, &qword_1EC7EA788, &unk_1D56223A0);
      v218 = 1;
      v219 = v344;
    }

    else
    {
      v220 = v360;
      v221 = v359;
      v222 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
      v219 = v344;
      sub_1D560DA98();
      (*(v220 + 8))(v221, v222);
      (*(*(v213 - 8) + 8))(v215, v213);
      v218 = 0;
    }

    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    __swift_storeEnumTagSinglePayload(v219, v218, 1, v223);
    v224 = v292;
    sub_1D4F39AB0(v366, v292, &qword_1EC7ED1F8, &qword_1D5634780);
    v225 = __swift_getEnumTagSinglePayload(v224, 1, v214);
    v226 = v368;
    v227 = v342;
    if (v225 == 1)
    {
      sub_1D4E50004(v224, &qword_1EC7ED1F8, &qword_1D5634780);
      v228 = 1;
    }

    else
    {
      v229 = v360;
      v230 = v359;
      v231 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason);
      sub_1D560DA98();
      (*(v229 + 8))(v230, v231);
      (*(*(v214 - 8) + 8))(v224, v214);
      v228 = 0;
    }

    v232 = v295;
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    __swift_storeEnumTagSinglePayload(v227, v228, 1, v233);
    v234 = v294;
    sub_1D4F39AB0(v364, v294, &qword_1EC7ECBA0, &unk_1D56270F0);
    if (__swift_getEnumTagSinglePayload(v234, 1, v216) == 1)
    {
      sub_1D4E50004(v226, &qword_1EC7ECD98, &unk_1D5627070);
      sub_1D4E50004(v234, &qword_1EC7ECBA0, &unk_1D56270F0);
      v235 = 1;
    }

    else
    {
      v236 = v360;
      v237 = v359;
      v238 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow);
      sub_1D560DA98();
      (*(v236 + 8))(v237, v238);
      sub_1D4E50004(v226, &qword_1EC7ECD98, &unk_1D5627070);
      v227 = v342;
      (*(*(v216 - 8) + 8))(v234, v216);
      v235 = 0;
    }

    v239 = v377;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    __swift_storeEnumTagSinglePayload(v232, v235, 1, v240);
    v241 = v293;
    sub_1D4F39A1C(v344, v293, &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D4F39A1C(v227, v241 + *(v239 + 20), &qword_1EC7ECD90, &unk_1D5622F80);
    sub_1D4F39A1C(v232, v241 + *(v239 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    __swift_storeEnumTagSinglePayload(v241, 0, 1, v239);
    sub_1D4F39A1C(v241, v226, &qword_1EC7ECD98, &unk_1D5627070);
  }

  v242 = type metadata accessor for CloudTVEpisode.Associations(0);
  __swift_storeEnumTagSinglePayload(v370, 1, 1, v242);
  if (qword_1EC7E92C8 != -1)
  {
    swift_once();
  }

  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  sub_1D560EC28();
  v244 = v358;
  if (qword_1EC7E92D0 != -1)
  {
    swift_once();
  }

  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  sub_1D560EC28();
  if (qword_1EC7E92D8 != -1)
  {
    swift_once();
  }

  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v371, 1, v243) != 1 || __swift_getEnumTagSinglePayload(v244, 1, v245) != 1 || __swift_getEnumTagSinglePayload(v365, 1, v246) != 1)
  {
    v247 = v296;
    sub_1D4F39AB0(v371, v296, &off_1EC7EB5B0, &unk_1D5632170);
    v248 = __swift_getEnumTagSinglePayload(v247, 1, v243);
    v377 = v242;
    if (v248 == 1)
    {
      sub_1D4E50004(v247, &off_1EC7EB5B0, &unk_1D5632170);
      v249 = 1;
      v250 = v300;
      v251 = v345;
    }

    else
    {
      v252 = v360;
      v253 = v359;
      v254 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);
      v251 = v345;
      v244 = v358;
      sub_1D560DA98();
      (*(v252 + 8))(v253, v254);
      (*(*(v243 - 8) + 8))(v247, v243);
      v249 = 0;
      v250 = v300;
    }

    v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v251, v249, 1, v255);
    v256 = v297;
    sub_1D4F39AB0(v244, v297, &qword_1EC7ECBA8, &unk_1D56223B0);
    if (__swift_getEnumTagSinglePayload(v256, 1, v245) == 1)
    {
      sub_1D4E50004(v256, &qword_1EC7ECBA8, &unk_1D56223B0);
      v257 = 1;
    }

    else
    {
      v258 = v360;
      v259 = v359;
      v260 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode);
      sub_1D560DA98();
      (*(v258 + 8))(v259, v260);
      (*(*(v245 - 8) + 8))(v256, v245);
      v257 = 0;
    }

    v261 = v301;
    v262 = v377;
    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    __swift_storeEnumTagSinglePayload(v250, v257, 1, v263);
    v264 = v299;
    sub_1D4F39AB0(v365, v299, &qword_1EC7EB620, &unk_1D561E5B0);
    if (__swift_getEnumTagSinglePayload(v264, 1, v246) == 1)
    {
      v265 = v370;
      sub_1D4E50004(v370, &qword_1EC7ECD80, &qword_1D5622F70);
      sub_1D4E50004(v264, &qword_1EC7EB620, &unk_1D561E5B0);
      v266 = 1;
    }

    else
    {
      v267 = v360;
      v268 = v359;
      v269 = v361;
      (*(v360 + 104))(v359, *MEMORY[0x1E6976A78], v361);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EDD52A78, MEMORY[0x1E69773E0]);
      sub_1D560DA98();
      (*(v267 + 8))(v268, v269);
      v265 = v370;
      sub_1D4E50004(v370, &qword_1EC7ECD80, &qword_1D5622F70);
      (*(*(v246 - 8) + 8))(v264, v246);
      v266 = 0;
    }

    v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    __swift_storeEnumTagSinglePayload(v261, v266, 1, v270);
    v271 = v298;
    sub_1D4F39A1C(v345, v298, &qword_1EC7EB5A8, &unk_1D5622F00);
    sub_1D4F39A1C(v250, v271 + *(v262 + 20), &qword_1EC7ECA78, &qword_1D5622340);
    sub_1D4F39A1C(v261, v271 + *(v262 + 24), &qword_1EC7ECD18, &qword_1D5631040);
    __swift_storeEnumTagSinglePayload(v271, 0, 1, v262);
    sub_1D4F39A1C(v271, v265, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  v272 = type metadata accessor for TVEpisode();
  sub_1D50A2470(&qword_1EC7EDBB8, type metadata accessor for TVEpisode);
  v273 = sub_1D560CBD8();
  if (v273 <= 1)
  {
    v274 = 1;
  }

  else
  {
    v274 = v273;
  }

  v276 = *v3;
  v275 = v3[1];
  v277 = v334;
  v278 = v335;
  sub_1D50A2244(v363, &v335[*(v334 + 20)]);
  sub_1D4F39AB0(v368, v278 + v277[6], &qword_1EC7ECD98, &unk_1D5627070);
  sub_1D4F39AB0(v370, v278 + v277[7], &qword_1EC7ECD80, &qword_1D5622F70);
  *v278 = v276;
  v278[1] = v275;
  *(v278 + v277[8]) = v274;
  v279 = *(v272 + 20);

  v280 = v332;
  sub_1D5611A28();
  v281 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v280, 0, 1, v281);
  v282 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v333, 1, 1, v282);
  v283 = v356;
  sub_1D5612B38();
  sub_1D50A2244(v278, v355);
  sub_1D5611A98();
  v377 = sub_1D5611A88();
  v376 = v284;
  v285 = v336;
  v286 = v339;
  v287 = v337;
  (*(v336 + 16))(v339, v283, v337);
  __swift_storeEnumTagSinglePayload(v286, 0, 1, v287);
  v375 = sub_1D5611A38();
  v374 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EDBC0, type metadata accessor for CloudTVEpisode);
  sub_1D5610628();
  (*(v285 + 8))(v356, v287);
  sub_1D50A229C();
  sub_1D4E50004(v370, &qword_1EC7ECD80, &qword_1D5622F70);
  sub_1D4E50004(v368, &qword_1EC7ECD98, &unk_1D5627070);
  sub_1D50A229C();
  sub_1D4E50004(v371, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4E50004(v369, &qword_1EC7EA788, &unk_1D56223A0);
  sub_1D4E50004(v365, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v358, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v364, &qword_1EC7ECBA0, &unk_1D56270F0);
  return sub_1D4E50004(v366, &qword_1EC7ED1F8, &qword_1D5634780);
}

uint64_t sub_1D5088664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v91 = a4;
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v73 - v17;
  v18 = sub_1D5610788();
  v85 = *(v18 - 8);
  v86 = v18;
  v19 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D56107C8();
  v82 = *(v84 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v73 - v25;
  v80 = type metadata accessor for LegacyModelCodableComposer(0);
  v27 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v96 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ComposerPropertyProvider();
  v30 = *(*(v29 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v31 + 20);
  v35 = sub_1D560C328();
  v78 = v34;
  __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
  v36 = v29[6];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v89 = v36;
  v87 = v37;
  __swift_storeEnumTagSinglePayload(v33 + v36, 1, 1, v37);
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v38 = sub_1D560D9A8();
  __swift_project_value_buffer(v38, qword_1EDD53C88);
  v39 = v29[8];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  v41 = sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7EF100, type metadata accessor for LegacyModelCodableComposer);
  v93 = a2;
  v88 = v41;
  sub_1D5610668();
  v42 = v33 + v29[9];
  sub_1D5610658();
  v79 = sub_1D5610618();
  v77 = v43;
  v76 = sub_1D56105C8();
  v44 = sub_1D56105F8();
  v45 = sub_1D56105E8();
  v95 = v40;
  v46 = a1;
  v47 = sub_1D56105A8();
  if (qword_1EC7E8990 != -1)
  {
    swift_once();
  }

  v48 = qword_1EC87BE50;
  if (qword_1EC87BE50 >> 62)
  {
    sub_1D560CDE8();

    v72 = sub_1D5615E18();

    v48 = v72;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v33 + v29[7]) = v48;
  v49 = (v33 + v29[10]);
  v50 = v77;
  *v49 = v79;
  v49[1] = v50;
  *(v33 + v29[11]) = v76;
  *(v33 + v29[12]) = v44;
  *(v33 + v29[13]) = v45;
  *(v33 + v29[14]) = v47;
  v51 = v96;
  v79 = v46;
  sub_1D5610648();
  v52 = v81;
  sub_1D56107A8();
  v53 = v51[2];
  v54 = v51[3];
  v56 = v85;
  v55 = v86;
  v57 = v83;
  (*(v85 + 104))(v83, *MEMORY[0x1E6975DC8], v86);
  sub_1D5610798();
  (*(v56 + 8))(v57, v55);
  (*(v82 + 8))(v52, v84);
  sub_1D4E68940(v26, v33 + v78, &qword_1EC7EA3B8, &unk_1D561E370);
  v58 = v51[5];
  *v33 = v51[4];
  v33[1] = v58;
  v59 = v90;
  sub_1D4F39AB0(v51 + *(v80 + 24), v90, &qword_1EC7EF090, &qword_1D562FCA0);
  v60 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {

    sub_1D4E50004(v59, &qword_1EC7EF090, &qword_1D562FCA0);
    v61 = 1;
    v62 = v93;
  }

  else
  {
    v63 = v75;
    sub_1D4F39AB0(v59, v75, &qword_1EC7EF020, &unk_1D5630FF0);

    sub_1D50A229C();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
    v62 = v93;
    if (EnumTagSinglePayload != 1)
    {
      v67 = sub_1D560CD98();
      v68 = v74;
      __swift_storeEnumTagSinglePayload(v74, 1, 1, v67);
      sub_1D5613AF8();
      sub_1D50A2470(&qword_1EC7ECE68, MEMORY[0x1E6976D28]);
      v66 = v88;
      sub_1D5612368();
      sub_1D4E50004(v68, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v64 - 8) + 8))(v63, v64);
      v61 = 0;
      goto LABEL_13;
    }

    sub_1D4E50004(v63, &qword_1EC7EF020, &unk_1D5630FF0);
    v61 = 1;
  }

  v66 = v88;
LABEL_13:
  v69 = v94;
  __swift_storeEnumTagSinglePayload(v94, v61, 1, v87);
  sub_1D4E68940(v69, v33 + v89, &qword_1EC7EB508, &unk_1D5643E20);
  v97[3] = v29;
  v97[4] = sub_1D50A2470(&qword_1EC7EB530, type metadata accessor for ComposerPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v97);
  sub_1D50A2244(v33, boxed_opaque_existential_0);
  Composer.init(propertyProvider:)(v97, v91);

  (*(*(v66 - 8) + 8))(v62, v66);
  (*(*(v95 - 8) + 8))(v79);
  sub_1D50A229C();
  return sub_1D50A229C();
}

uint64_t sub_1D5089074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v82 - v4;
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v82 - v13;
  v14 = sub_1D5612B78();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for LegacyModelCodableComposer(0);
  v17 = *(*(v106 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v82 - v20;
  v85 = sub_1D5613578();
  v84 = *(v85 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v89 = &v82 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v87 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v88 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v82 - v35;
  v36 = sub_1D5610788();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v82 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v82 - v43;
  v90 = sub_1D56107C8();
  v45 = *(v90 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v48 = &v82 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D56107A8();
  if (qword_1EC7E90E8 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  sub_1D50A2470(&qword_1EDD54820, type metadata accessor for Composer);
  sub_1D50A2470(&qword_1EDD54818, type metadata accessor for Composer);
  sub_1D560EC28();
  (*(v37 + 104))(v40, *MEMORY[0x1E6975DC8], v36);
  v49 = sub_1D56107B8();
  v91 = v50;
  v92 = v49;
  (*(v37 + 8))(v40, v36);
  sub_1D4E50004(v44, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v45 + 8))(v48, v90);
  v51 = Composer.name.getter();
  v90 = v52;
  v53 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v54 = v102;
  __swift_storeEnumTagSinglePayload(v102, 1, 1, v53);
  if (qword_1EC7E90F0 != -1)
  {
    swift_once();
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v56 = v104;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v56, 1, v55) != 1)
  {
    v82 = v51;
    v57 = v87;
    sub_1D4F39AB0(v56, v87, &qword_1EC7EB508, &unk_1D5643E20);
    if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
    {
      sub_1D4E50004(v54, &qword_1EC7EF090, &qword_1D562FCA0);
      sub_1D4E50004(v57, &qword_1EC7EB508, &unk_1D5643E20);
      v58 = 1;
      v59 = v89;
    }

    else
    {
      v60 = v84;
      v61 = v83;
      v62 = v85;
      (*(v84 + 104))(v83, *MEMORY[0x1E6976A78], v85);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECE68, MEMORY[0x1E6976D28]);
      v59 = v89;
      sub_1D560DA98();
      (*(v60 + 8))(v61, v62);
      sub_1D4E50004(v54, &qword_1EC7EF090, &qword_1D562FCA0);
      (*(*(v55 - 8) + 8))(v57, v55);
      v58 = 0;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    __swift_storeEnumTagSinglePayload(v59, v58, 1, v63);
    v64 = v88;
    sub_1D4F39A1C(v59, v88, &qword_1EC7EF020, &unk_1D5630FF0);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v53);
    sub_1D4F39A1C(v64, v54, &qword_1EC7EF090, &qword_1D562FCA0);
    v51 = v82;
  }

  v66 = *v103;
  v65 = v103[1];
  v67 = v106;
  v68 = v95;
  sub_1D4F39AB0(v54, &v95[*(v106 + 24)], &qword_1EC7EF090, &qword_1D562FCA0);
  *v68 = v66;
  v68[1] = v65;
  v69 = v91;
  v68[2] = v92;
  v68[3] = v69;
  v70 = v90;
  v68[4] = v51;
  v68[5] = v70;
  *(v68 + *(v67 + 28)) = 1;
  *(v68 + *(v67 + 32)) = 1;
  v71 = *(type metadata accessor for Composer() + 20);

  v72 = v93;
  sub_1D5611A28();
  v73 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
  v74 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v74);
  v75 = v96;
  sub_1D5612B38();
  sub_1D50A2244(v68, v105);
  sub_1D5611A98();
  v76 = sub_1D5611A88();
  v93 = v77;
  v94 = v76;
  v79 = v97;
  v78 = v98;
  v80 = v100;
  (*(v97 + 16))(v100, v75, v98);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v78);
  v92 = sub_1D5611A38();
  v91 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EF108, type metadata accessor for LegacyModelCodableComposer);
  sub_1D5610628();
  (*(v79 + 8))(v75, v78);
  sub_1D50A229C();
  sub_1D4E50004(v102, &qword_1EC7EF090, &qword_1D562FCA0);
  return sub_1D4E50004(v104, &qword_1EC7EB508, &unk_1D5643E20);
}
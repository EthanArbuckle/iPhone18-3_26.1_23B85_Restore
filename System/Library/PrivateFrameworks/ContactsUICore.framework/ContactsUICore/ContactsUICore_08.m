uint64_t ContactAvatarEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = v29 - v2;
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A34C8A90();
  v10 = type metadata accessor for ContactAvatarEntity(0);
  v36 = *(v10 + 20);
  v38 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7790);
  sub_1A34CD060();
  sub_1A34C9810();
  v11 = *MEMORY[0x1E6968DF0];
  v12 = *(v4 + 104);
  v29[1] = v4 + 104;
  v33 = v3;
  v12(v6, v11, v3);
  v32 = v12;
  sub_1A34C95C0();
  v35 = sub_1A34C8D90();
  v13 = v34;
  *(v34 + v36) = v35;
  v31 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75D0);
  sub_1A34CD060();
  sub_1A34C9810();
  v30 = v11;
  v12(v6, v11, v3);
  sub_1A34C95C0();
  v36 = sub_1A34C8D50();
  v14 = v13;
  *(v13 + v31) = v36;
  v15 = v38;
  v16 = *(v38 + 28);
  *(v14 + v16) = sub_1A34C8D60();
  v17 = v14;
  v31 = *(v15 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C77A0);
  sub_1A34CD060();
  sub_1A34C9810();
  v19 = v32;
  v18 = v33;
  v32(v6, v11, v33);
  sub_1A34C95C0();
  sub_1A3325B88();
  *(v17 + v31) = sub_1A34C8D30();
  v20 = *(v38 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C77A8);
  sub_1A34CD060();
  sub_1A34C9810();
  v19(v6, v30, v18);
  sub_1A34C95C0();
  *(v17 + v20) = sub_1A34C8DA0();
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1A34C8D10();
  v21 = sub_1A34C8BD0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = sub_1A34CA200();
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  v26 = sub_1A34C8BB0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  (*(v22 + 16))(v29 - v24, v29 - v24, v21, v27);
  sub_1A34C8D10();
  return (*(v22 + 8))(v29 - v24, v21);
}

uint64_t ContactAvatarEntity.data.setter(uint64_t a1)
{
  type metadata accessor for ContactAvatarEntity(0);
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8D10();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1A3322E74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v26 - v4;
  v6 = [a1 imageBackgroundColorsData];
  if (!v6)
  {
    if (qword_1EB0C4920 != -1)
    {
      swift_once();
    }

    v15 = sub_1A34CA250();
    __swift_project_value_buffer(v15, qword_1EB0C76F0);
    v12 = sub_1A34CA230();
    v16 = sub_1A34CD660();
    if (!os_log_type_enabled(v12, v16))
    {
      v8 = 0;
      v10 = 0xF000000000000000;
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A31E6000, v12, v16, "Image background color data not available", v14, 2u);
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1A34C9690();
  v10 = v9;

  if (qword_1EB0C4920 != -1)
  {
    swift_once();
  }

  v11 = sub_1A34CA250();
  __swift_project_value_buffer(v11, qword_1EB0C76F0);
  v12 = sub_1A34CA230();
  v13 = sub_1A34CD660();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A31E6000, v12, v13, "Contact has image background color data", v14, 2u);
LABEL_10:
    MEMORY[0x1A58F1010](v14, -1, -1);
  }

LABEL_12:

  sub_1A34C90E0();
  swift_allocObject();
  sub_1A34C90D0();
  v27 = v8;
  v28 = v10;
  sub_1A32F74C0(v8, v10);
  sub_1A33279F4();
  v17 = sub_1A34C90C0();
  v19 = v18;
  sub_1A31EEE60(v27, v28);

  sub_1A31EC1E0(v17, v19);
  v20 = [a1 identifier];
  v21 = sub_1A34CD110();
  v23 = v22;

  v27 = v21;
  v28 = v23;
  MEMORY[0x1A58EEA30](0x7461646174656D2ELL, 0xE900000000000061);
  sub_1A34CA1E0();
  v24 = sub_1A34CA200();
  (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  sub_1A34C8BB0();
  sub_1A31EEE60(v8, v10);
  return sub_1A31EEE60(v17, v19);
}

uint64_t ContactAvatarEntity.metadata.setter(uint64_t a1)
{
  type metadata accessor for ContactAvatarEntity(0);
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8D10();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1A3323314(void *a1)
{
  if (![a1 contactType])
  {
    v2 = [objc_opt_self() abbreviatedStringFromContact:a1 trimmingWhitespace:1];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1A34CD110();
      v6 = v5;

      sub_1A34C90E0();
      swift_allocObject();
      sub_1A34C90D0();
      v20[0] = v4;
      v20[1] = v6;
      sub_1A3327A9C();
      v18 = sub_1A34C90C0();

      return v18;
    }

    if (qword_1EB0C4920 != -1)
    {
      swift_once();
    }

    v7 = sub_1A34CA250();
    __swift_project_value_buffer(v7, qword_1EB0C76F0);
    v8 = a1;
    v9 = sub_1A34CA230();
    v10 = sub_1A34CD640();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315138;
      v13 = [v8 identifier];
      v14 = sub_1A34CD110();
      v16 = v15;

      v17 = sub_1A31EE23C(v14, v16, v20);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1A31E6000, v9, v10, "Could not encode initials for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1A58F1010](v12, -1, -1);
      MEMORY[0x1A58F1010](v11, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1A332372C(void *a1)
{
  [a1 contactType];
  sub_1A34C90E0();
  swift_allocObject();
  sub_1A34C90D0();
  sub_1A3327A48();
  v1 = sub_1A34C90C0();

  return v1;
}

uint64_t ContactAvatarFetchResultEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34C95A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A34C8A90();
  v9 = *(type metadata accessor for ContactAvatarFetchResultEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7770);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1A34C95C0();
  sub_1A3325C3C(&qword_1EB0C7778, type metadata accessor for ContactAvatarEntity);
  *(a1 + v9) = sub_1A34C8D40();
  v11 = MEMORY[0x1E69E7CC0];
  return sub_1A34C8D10();
}

uint64_t sub_1A3323C98@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4928 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7710);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A3323D84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return FetchContactAvatarIntent.perform()(a1);
}

uint64_t static ContactAvatarFetchResultEntity.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A34C95C0();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A34C8FF0();
}

uint64_t ContactAvatarFetchResultEntity.displayRepresentation.getter()
{
  type metadata accessor for ContactAvatarFetchResultEntity(0);
  sub_1A34C8D00();

  sub_1A34CDDF0();
  MEMORY[0x1A58EEA30](0x7372617461766120, 0xE800000000000000);
  return sub_1A34C8F00();
}

uint64_t ContactAvatarFetchResultEntity.avatars.getter()
{
  type metadata accessor for ContactAvatarFetchResultEntity(0);
  sub_1A34C8D00();
  return v1;
}

uint64_t sub_1A33241E8()
{
  type metadata accessor for ContactAvatarFetchResultEntity(0);

  return sub_1A34C8D10();
}

uint64_t (*ContactAvatarFetchResultEntity.avatars.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarFetchResultEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t sub_1A33243C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3292C58;

  return MEMORY[0x1EEDB3F58](a1, a2, a3, a4);
}

uint64_t static ContactAvatarEntity.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A34C95C0();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A34C8FF0();
}

uint64_t ContactAvatarEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v24 - v2;
  v4 = sub_1A34CA200();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1A34CDAD0();

  v27 = 0x6620726174617641;
  v28 = 0xEB0000000020726FLL;
  sub_1A34C9780();
  sub_1A3325C3C(&qword_1ED854E60, MEMORY[0x1E69695A8]);
  v8 = sub_1A34CDDF0();
  MEMORY[0x1A58EEA30](v8);

  MEMORY[0x1A58EEA30](10272, 0xE200000000000000);
  v9 = sub_1A34C8BD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for ContactAvatarEntity(0);
  sub_1A34C8D00();
  sub_1A34C8BC0();
  v25 = *(v10 + 8);
  v25(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    sub_1A34CA1E0();
    if (v12(v3, 1, v4) != 1)
    {
      sub_1A3288FDC(v3, &qword_1EB0C75C0);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  sub_1A3325C3C(&qword_1EB0C77B8, MEMORY[0x1E69E8450]);
  v13 = sub_1A34CDDF0();
  MEMORY[0x1A58EEA30](v13);

  (*(v5 + 8))(v7, v4);
  v14 = MEMORY[0x1A58EEA30](2108457, 0xE300000000000000);
  MEMORY[0x1EEE9AC00](v14);
  sub_1A34C8D00();
  v15 = sub_1A34C8BA0();
  v17 = v16;
  v25(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_1A31EC234(v15, v17);
      v19 = 0;
      goto LABEL_15;
    }

    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    sub_1A31EC234(v15, v17);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v18)
  {
    sub_1A31EC234(v15, v17);
    v19 = BYTE6(v17);
LABEL_15:
    v26 = v19;
    v23 = sub_1A34CDDF0();
    MEMORY[0x1A58EEA30](v23);

    MEMORY[0x1A58EEA30](0x29736574796220, 0xE700000000000000);
    return sub_1A34C8F00();
  }

  result = sub_1A31EC234(v15, v17);
  LODWORD(v19) = HIDWORD(v15) - v15;
  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    v19 = v19;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t ContactAvatarEntity.id.setter(uint64_t a1)
{
  v3 = sub_1A34C9780();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ContactAvatarEntity.contactIdentifier.getter()
{
  type metadata accessor for ContactAvatarEntity(0);
  sub_1A34C8D00();
  return v1;
}

uint64_t sub_1A3324D84()
{
  type metadata accessor for ContactAvatarEntity(0);

  return sub_1A34C8D10();
}

uint64_t (*ContactAvatarEntity.contactIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A33030BC;
}

uint64_t sub_1A3324EB0(char *a1)
{
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v3 + 16);
  v7(&v11 - v6, a1, v2, v5);
  v8 = type metadata accessor for ContactAvatarEntity(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v7(&v11 - v6, &v11 - v6, v2, v9);
  sub_1A34C8D10();
  return (*(v3 + 8))(&v11 - v6, v2);
}

uint64_t (*ContactAvatarEntity.data.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t sub_1A33250E4(char *a1)
{
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v3 + 16);
  v7(&v11 - v6, a1, v2, v5);
  v8 = type metadata accessor for ContactAvatarEntity(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v7(&v11 - v6, &v11 - v6, v2, v9);
  sub_1A34C8D10();
  return (*(v3 + 8))(&v11 - v6, v2);
}

uint64_t (*ContactAvatarEntity.metadata.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t (*ContactAvatarEntity.kind.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t ContactAvatarEntity.contentIsSensitive.getter()
{
  type metadata accessor for ContactAvatarEntity(0);
  sub_1A34C8D00();
  return v1;
}

uint64_t (*ContactAvatarEntity.contentIsSensitive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactAvatarEntity(0);
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

ContactsUICore::ContactLikenessKindAppEnum_optional __swiftcall ContactLikenessKindAppEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactLikenessKindAppEnum.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7465756F686C6973;
  v3 = 0x6D49726174617661;
  v4 = 0x657069636572;
  if (v1 != 3)
  {
    v4 = 0x726574736F70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6172676F6E6F6DLL;
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

void sub_1A3325724(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0x7465756F686C6973;
  v5 = 0xEB00000000656761;
  v6 = 0x6D49726174617661;
  v7 = 0x657069636572;
  if (v2 != 3)
  {
    v7 = 0x726574736F70;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D6172676F6E6F6DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1A33257D4()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A33258BC()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A3325990()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

unint64_t sub_1A3325B88()
{
  result = qword_1EB0C7748;
  if (!qword_1EB0C7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7748);
  }

  return result;
}

uint64_t sub_1A3325C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContactLikenessKindAppEnum.description.getter()
{
  v1 = 0xEA00000000006574;
  v2 = *v0;
  v3 = 0x7465756F686C6973;
  v4 = 0xEB00000000656761;
  v5 = 0x6D49726174617661;
  v6 = 0x657069636572;
  if (v2 != 3)
  {
    v6 = 0x726574736F70;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = 0xE600000000000000;
  }

  if (*v0)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (*v0 <= 1u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1A58EEA30](v7, v8);

  return 46;
}

uint64_t sub_1A3325D68(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3327B64();
  sub_1A34CDFA0();
  v9[1] = a2;
  type metadata accessor for CNContactType(0);
  sub_1A3325C3C(&qword_1EB0C7A28, type metadata accessor for CNContactType);
  sub_1A34CDDC0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A3325EE8()
{
  v1 = 0xEA00000000006574;
  v2 = *v0;
  v3 = 0x7465756F686C6973;
  v4 = 0xEB00000000656761;
  v5 = 0x6D49726174617661;
  v6 = 0x657069636572;
  if (v2 != 3)
  {
    v6 = 0x726574736F70;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = 0xE600000000000000;
  }

  if (*v0)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (*v0 <= 1u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1A58EEA30](v7, v8);

  return 46;
}

uint64_t sub_1A3325FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A34CDE30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A3326078(uint64_t a1)
{
  v2 = sub_1A3327B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33260B4(uint64_t a1)
{
  v2 = sub_1A3327B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A33260F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A3327C0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A3326258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A34CDE30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A33262E0(uint64_t a1)
{
  v2 = sub_1A3327BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A332631C(uint64_t a1)
{
  v2 = sub_1A3327BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3326358@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3327BB8();
  sub_1A34CDF90();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1A34CDCF0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A33264D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3327BB8();
  sub_1A34CDFA0();
  sub_1A34CDD80();
  return (*(v3 + 8))(v5, v2);
}

unint64_t _s14ContactsUICore26ContactLikenessKindAppEnumO26caseDisplayRepresentationsSDyAC0F7Intents0I14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C79C8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C79D0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34E5190;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_1A34C8F00();
  v4[v1] = 1;
  sub_1A34C8F00();
  v4[2 * v1] = 2;
  sub_1A34C8F00();
  v4[3 * v1] = 3;
  sub_1A34C8F00();
  v4[4 * v1] = 4;
  sub_1A34C8F00();
  v5 = sub_1A33E9C7C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_1A33267F8()
{
  result = qword_1EB0C77C0;
  if (!qword_1EB0C77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C77C0);
  }

  return result;
}

unint64_t sub_1A3326850()
{
  result = qword_1EB0C77C8;
  if (!qword_1EB0C77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C77C8);
  }

  return result;
}

unint64_t sub_1A33268A8()
{
  result = qword_1EB0C77D0;
  if (!qword_1EB0C77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C77D0);
  }

  return result;
}

unint64_t sub_1A3326E24()
{
  result = qword_1EB0C78A0;
  if (!qword_1EB0C78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78A0);
  }

  return result;
}

unint64_t sub_1A3326E7C()
{
  result = qword_1EB0C78A8;
  if (!qword_1EB0C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78A8);
  }

  return result;
}

unint64_t sub_1A3326ED4()
{
  result = qword_1EB0C78B0;
  if (!qword_1EB0C78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78B0);
  }

  return result;
}

unint64_t sub_1A3326F2C()
{
  result = qword_1EB0C78B8;
  if (!qword_1EB0C78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78B8);
  }

  return result;
}

unint64_t sub_1A3326F84()
{
  result = qword_1EB0C78C0;
  if (!qword_1EB0C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78C0);
  }

  return result;
}

unint64_t sub_1A3326FD8()
{
  result = qword_1EB0C78C8;
  if (!qword_1EB0C78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78C8);
  }

  return result;
}

unint64_t sub_1A332702C()
{
  result = qword_1EB0C78D0;
  if (!qword_1EB0C78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78D0);
  }

  return result;
}

unint64_t sub_1A3327084()
{
  result = qword_1EB0C78D8;
  if (!qword_1EB0C78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78D8);
  }

  return result;
}

unint64_t sub_1A3327144()
{
  result = qword_1EB0C78E0;
  if (!qword_1EB0C78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78E0);
  }

  return result;
}

unint64_t sub_1A332719C()
{
  result = qword_1EB0C78E8;
  if (!qword_1EB0C78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78E8);
  }

  return result;
}

unint64_t sub_1A33271F4()
{
  result = qword_1EB0C78F0;
  if (!qword_1EB0C78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C78F0);
  }

  return result;
}

void sub_1A33272B0()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A332778C(319, &qword_1EB0C7920, &qword_1EB0C7928, &unk_1A34E5B20, sub_1A3327360);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A3327360()
{
  result = qword_1EB0C7930;
  if (!qword_1EB0C7930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7928);
    sub_1A3325C3C(&qword_1EB0C7878, type metadata accessor for ContactAvatarEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7930);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
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

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9780();
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

void sub_1A33275A4()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A332772C(319, &qword_1EB0C7948, sub_1A33276E4);
    if (v1 <= 0x3F)
    {
      sub_1A331CE74();
      if (v2 <= 0x3F)
      {
        sub_1A332772C(319, &qword_1EB0C7968, sub_1A332702C);
        if (v3 <= 0x3F)
        {
          sub_1A332778C(319, &qword_1EB0C7970, &qword_1EB0C7978, &unk_1A34E5B48, sub_1A33277FC);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A33276E4()
{
  result = qword_1EB0C7950;
  if (!qword_1EB0C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7950);
  }

  return result;
}

void sub_1A332772C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A34C8DB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A332778C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = sub_1A34C8DB0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A33277FC()
{
  result = qword_1EB0C7980;
  if (!qword_1EB0C7980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7978);
    sub_1A3327874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7980);
  }

  return result;
}

unint64_t sub_1A3327874()
{
  result = qword_1EB0C7988;
  if (!qword_1EB0C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7988);
  }

  return result;
}

uint64_t sub_1A33278CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3327930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3327994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A33279F4()
{
  result = qword_1EB0C79D8;
  if (!qword_1EB0C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C79D8);
  }

  return result;
}

unint64_t sub_1A3327A48()
{
  result = qword_1EB0C79E0;
  if (!qword_1EB0C79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C79E0);
  }

  return result;
}

unint64_t sub_1A3327A9C()
{
  result = qword_1EB0C79F0;
  if (!qword_1EB0C79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C79F0);
  }

  return result;
}

unint64_t sub_1A3327AF0()
{
  result = qword_1EB0C7A00;
  if (!qword_1EB0C7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A00);
  }

  return result;
}

unint64_t sub_1A3327B64()
{
  result = qword_1EB0C7A20;
  if (!qword_1EB0C7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A20);
  }

  return result;
}

unint64_t sub_1A3327BB8()
{
  result = qword_1EB0C7A38;
  if (!qword_1EB0C7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A38);
  }

  return result;
}

void *sub_1A3327C0C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3327B64();
  sub_1A34CDF90();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    type metadata accessor for CNContactType(0);
    sub_1A3325C3C(&qword_1EB0C7A50, type metadata accessor for CNContactType);
    sub_1A34CDD30();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1A3327DD8()
{
  result = qword_1EB0C7A58;
  if (!qword_1EB0C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A58);
  }

  return result;
}

unint64_t sub_1A3327E30()
{
  result = qword_1EB0C7A60;
  if (!qword_1EB0C7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A60);
  }

  return result;
}

unint64_t sub_1A3327E88()
{
  result = qword_1EB0C7A68;
  if (!qword_1EB0C7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A68);
  }

  return result;
}

unint64_t sub_1A3327EE0()
{
  result = qword_1EB0C7A70;
  if (!qword_1EB0C7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A70);
  }

  return result;
}

unint64_t sub_1A3327F38()
{
  result = qword_1EB0C7A78;
  if (!qword_1EB0C7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A78);
  }

  return result;
}

unint64_t sub_1A3327F90()
{
  result = qword_1EB0C7A80;
  if (!qword_1EB0C7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7A80);
  }

  return result;
}

uint64_t sub_1A3328008()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7A90);
  __swift_project_value_buffer(v6, qword_1EB0C7A90);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t (*static UpdateContactIntent.title.modify())()
{
  if (qword_1EB0C4938 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C95B0();
  __swift_project_value_buffer(v0, qword_1EB0C7A90);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A33282FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7AA8);
  __swift_project_value_buffer(v10, qword_1EB0C7AA8);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t (*static UpdateContactIntent.description.modify())()
{
  if (qword_1EB0C4940 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7AA8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3328708(__int128 *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v20 = a1[4];
  v21 = v2;
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v18 = a1[2];
  v19 = v4;
  v7 = a1[5];
  v14 = v20;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  v22 = *(a1 + 12);
  v16 = *(a1 + 12);
  v12 = v18;
  v13 = v1;
  sub_1A330C650(v17, v9);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33289B8()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.label.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3328C04()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.namePrefix.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3328E54()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.givenName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33290A4()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.middleName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33292F4()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.familyName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3329544()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.nameSuffix.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3329794()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.phoneNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33299E4()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.emailAddress.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3329C34()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*UpdateContactIntent.postalAddress.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3329E78(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  sub_1A3303784(a1, v15 - v8);
  v10 = *a2;
  v15[6] = a2[1];
  v15[7] = v10;
  v11 = a2[2];
  v15[4] = a2[3];
  v15[5] = v11;
  v13 = a2[8];
  v12 = a2[9];
  v15[0] = a2[7];
  v15[1] = v13;
  v15[2] = v12;
  v15[3] = a2[10];
  sub_1A3303784(v9, v6);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
  sub_1A33037F4(v9);
}

uint64_t UpdateContactIntent.birthday.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3303784(a1, &v5 - v3);
  sub_1A34C8DE0();
  return sub_1A33037F4(a1);
}

uint64_t (*UpdateContactIntent.birthday.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t UpdateContactIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v158 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v145 = v138 - v3;
  v156 = sub_1A34C95A0();
  v4 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v6 = v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v146 = v9;
  v163 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v138[0] = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v171, "entityProvider");
  v171[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A0);
  sub_1A34CD060();
  sub_1A34C9810();
  v12 = *(v4 + 104);
  v154 = *MEMORY[0x1E6968DF0];
  v11 = v154;
  v13 = v156;
  v12(v6, v154, v156);
  v155 = v12;
  v144 = v4 + 104;
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v12(v6, v11, v13);
  v14 = v145;
  sub_1A34C95C0();
  v15 = *(v163 + 56);
  v163 += 56;
  v148 = v15;
  v15(v14, 0, 1, v9);
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v157 = v17;
  v149 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = sub_1A34C8C20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v162 = v18;
  v22 = v20(v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v18);
  v159 = v21;
  v160 = v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (v20)(v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v18, v23);
  v147 = sub_1A34C8FA0();
  v24 = *(v147 - 8);
  v153 = *(v24 + 64);
  v25 = MEMORY[0x1EEE9AC00](v147);
  v150 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = *MEMORY[0x1E695A4F8];
  v151 = *(v24 + 104);
  v151(v138 - v150, v25);
  v138[1] = v24 + 104;
  sub_1A3308738();
  v158[1] = sub_1A34C8E20();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C74F8);
  sub_1A34CD060();
  sub_1A34C9810();
  v27 = v154;
  v28 = v156;
  v29 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v29(v6, v27, v28);
  sub_1A34C95C0();
  v148(v14, 0, 1, v146);
  v164 = 0uLL;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C75B0);
  v142 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v143 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = v138 - v143;
  v140 = sub_1A34CD050();
  v33 = *(v140 - 8);
  v139 = *(v33 + 56);
  v141 = v33 + 56;
  v34 = v139(v32, 1, 1, v140);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v160(v138 - v149, 1, 1, v162, v35);
  v37 = MEMORY[0x1EEE9AC00](v36);
  (v151)(v138 - v150, v161, v147, v37);
  v158[2] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v38 = v154;
  v39 = v156;
  v40 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v40(v6, v38, v39);
  v41 = v145;
  sub_1A34C95C0();
  v42 = (v148)(v41, 0, 1, v146);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v164 = 0uLL;
  v44 = (v139)(v138 - v143, 1, 1, v140, v43);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v46 = v160(v138 - v149, 1, 1, v162, v45);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v48 = v151;
  (v151)(v138 - v150, v161, v147, v47);
  v49 = sub_1A34C8E60();
  v50 = v158;
  v158[3] = v49;
  sub_1A34CD060();
  sub_1A34C9810();
  v51 = v154;
  v52 = v156;
  v53 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v53(v6, v51, v52);
  v54 = v145;
  sub_1A34C95C0();
  v55 = (v148)(v54, 0, 1, v146);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v164 = 0uLL;
  v57 = (v139)(v138 - v143, 1, 1, v140, v56);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v59 = v149;
  v60 = v160(v138 - v149, 1, 1, v162, v58);
  v61 = MEMORY[0x1EEE9AC00](v60);
  (v48)(v138 - v150, v161, v147, v61);
  v50[4] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v62 = v154;
  v63 = v156;
  v64 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v64(v6, v62, v63);
  v65 = v145;
  sub_1A34C95C0();
  v66 = v146;
  v67 = (v148)(v65, 0, 1, v146);
  v68 = MEMORY[0x1EEE9AC00](v67);
  v164 = 0uLL;
  v69 = (v139)(v138 - v143, 1, 1, v140, v68);
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = v160(v138 - v59, 1, 1, v162, v70);
  v72 = MEMORY[0x1EEE9AC00](v71);
  v73 = v147;
  (v151)(v138 - v150, v161, v147, v72);
  v158[5] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v74 = v154;
  v75 = v156;
  v76 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v76(v6, v74, v75);
  v77 = v145;
  sub_1A34C95C0();
  v78 = v66;
  v79 = v148;
  v80 = (v148)(v77, 0, 1, v78);
  v81 = MEMORY[0x1EEE9AC00](v80);
  v164 = 0uLL;
  v82 = (v139)(v138 - v143, 1, 1, v140, v81);
  v83 = MEMORY[0x1EEE9AC00](v82);
  v84 = v160(v138 - v149, 1, 1, v162, v83);
  v85 = MEMORY[0x1EEE9AC00](v84);
  (v151)(v138 - v150, v161, v73, v85);
  v158[6] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v86 = v154;
  v87 = v156;
  v88 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v88(v6, v86, v87);
  v89 = v145;
  sub_1A34C95C0();
  v90 = v79(v89, 0, 1, v146);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v164 = 0uLL;
  v92 = (v139)(v138 - v143, 1, 1, v140, v91);
  v93 = MEMORY[0x1EEE9AC00](v92);
  v94 = v160(v138 - v149, 1, 1, v162, v93);
  v95 = MEMORY[0x1EEE9AC00](v94);
  v96 = v150;
  (v151)(v138 - v150, v161, v147, v95);
  v158[7] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v97 = v154;
  v98 = v156;
  v99 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v99(v6, v97, v98);
  v100 = v145;
  sub_1A34C95C0();
  v101 = (v148)(v100, 0, 1, v146);
  v102 = MEMORY[0x1EEE9AC00](v101);
  v164 = 0uLL;
  v103 = (v139)(v138 - v143, 1, 1, v140, v102);
  v104 = MEMORY[0x1EEE9AC00](v103);
  v105 = v160(v138 - v149, 1, 1, v162, v104);
  v106 = MEMORY[0x1EEE9AC00](v105);
  (v151)(v138 - v96, v161, v147, v106);
  v158[8] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v107 = v154;
  v108 = v156;
  v109 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v109(v6, v107, v108);
  v110 = v145;
  sub_1A34C95C0();
  v111 = (v148)(v110, 0, 1, v146);
  v112 = MEMORY[0x1EEE9AC00](v111);
  v164 = 0uLL;
  v113 = (v139)(v138 - v143, 1, 1, v140, v112);
  v114 = MEMORY[0x1EEE9AC00](v113);
  v115 = v160(v138 - v149, 1, 1, v162, v114);
  v116 = MEMORY[0x1EEE9AC00](v115);
  (v151)(v138 - v150, v161, v147, v116);
  v158[9] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v117 = v154;
  v118 = v155;
  v155(v6, v154, v108);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v118(v6, v117, v108);
  v119 = v145;
  sub_1A34C95C0();
  v120 = (v148)(v119, 0, 1, v146);
  v121 = MEMORY[0x1EEE9AC00](v120);
  v164 = 0uLL;
  v122 = (v139)(v138 - v143, 1, 1, v140, v121);
  v123 = MEMORY[0x1EEE9AC00](v122);
  v124 = v160(v138 - v149, 1, 1, v162, v123);
  v125 = MEMORY[0x1EEE9AC00](v124);
  (v151)(v138 - v150, v161, v147, v125);
  v158[10] = sub_1A34C8E60();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7AC0);
  sub_1A34CD060();
  sub_1A34C9810();
  v126 = v154;
  v127 = v156;
  v128 = v155;
  v155(v6, v154, v156);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v128(v6, v126, v127);
  sub_1A34C95C0();
  v129 = (v148)(v119, 0, 1, v146);
  v130 = MEMORY[0x1EEE9AC00](v129);
  v160(v138 - v149, 1, 1, v162, v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7AC8);
  v132 = MEMORY[0x1EEE9AC00](v131);
  v135 = (*(v134 + 104))(v138 - v133, *MEMORY[0x1E695A190], v132);
  v136 = MEMORY[0x1EEE9AC00](v135);
  (v151)(v138 - v150, v161, v147, v136);
  result = sub_1A34C8E40();
  v158[11] = result;
  return result;
}

uint64_t UpdateContactIntent.perform()(uint64_t a1)
{
  *(v2 + 432) = a1;
  *(v2 + 440) = v1;
  *(v2 + 448) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A332C230, 0, 0);
}

uint64_t sub_1A332C230()
{
  v30 = v0;
  sub_1A34C8AA0();
  sub_1A34C8DD0();
  v21 = *(v0 + 80);
  v22 = *(v0 + 96);
  v23 = *(v0 + 112);
  v17 = *(v0 + 16);
  v18 = *(v0 + 32);
  v19 = *(v0 + 48);
  v20 = *(v0 + 64);
  v1 = sub_1A3317428();
  *(v0 + 168) = v20;
  *(v0 + 184) = v21;
  *(v0 + 200) = v22;
  *(v0 + 120) = v17;
  *(v0 + 136) = v18;
  v2 = *(v0 + 440);
  *(v0 + 216) = v23;
  *(v0 + 152) = v19;
  v16 = *(v0 + 448);
  sub_1A330B6A0(v0 + 120);

  ViewContactCardIntent.init()(&v24);
  v4 = *(&v25 + 1);
  v3 = v26;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[1];
  v26 = v2[2];
  v27 = v5;
  v8 = v2[5];
  v28 = v6;
  v29 = v8;
  v9 = v24;
  v10 = v25;
  v24 = v16;
  v25 = v7;
  sub_1A332C5A0(v1);
  sub_1A34C8DD0();
  v11 = *(v0 + 304);
  *(v0 + 392) = *(v0 + 288);
  *(v0 + 408) = v11;
  *(v0 + 424) = *(v0 + 320);
  v12 = *(v0 + 240);
  *(v0 + 328) = *(v0 + 224);
  *(v0 + 344) = v12;
  v13 = *(v0 + 272);
  *(v0 + 360) = *(v0 + 256);
  *(v0 + 376) = v13;
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();

  *(v0 + 224) = v9;
  *(v0 + 240) = v10;
  *(v0 + 248) = v4;
  *(v0 + 256) = v3;
  sub_1A330BE54();
  sub_1A34C8C90();

  v14 = *(v0 + 8);

  return v14();
}

void sub_1A332C5A0(void *a1)
{
  v104[4] = *MEMORY[0x1E69E9840];
  v90 = sub_1A34C9330();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v77 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v76 - v7;
  v9 = *v1;
  v99 = v1[2];
  v10 = v1[9];
  v98 = v1[8];
  v97 = v10;
  v11 = v1[11];
  v93 = v1[10];
  v88 = v11;
  v84 = v9;
  sub_1A34C8AA0();

  [a1 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  v12 = v101;
  sub_1A34C8DD0();
  v13 = v103;
  v78 = v102;
  sub_1A34C8DD0();
  v79 = v102;
  v96 = v103;
  sub_1A34C8DD0();
  v80 = v102;
  v95 = v103;
  sub_1A34C8DD0();
  v81 = v102;
  v94 = v103;
  sub_1A34C8DD0();
  v14 = v103;
  v87 = v102;
  sub_1A34C8DD0();
  v92 = v102;
  v99 = v103;
  sub_1A34C8DD0();
  v82 = v102;
  v98 = v103;
  sub_1A34C8DD0();
  v83 = v102;
  v97 = v103;
  sub_1A34C8DD0();
  v93 = v103;
  v91 = v8;
  sub_1A34C8DD0();
  v85 = v12;
  [v12 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  v15 = v13;
  swift_dynamicCast();
  v16 = v100;
  v17 = v13 != 0;
  if (v13)
  {
    v18 = sub_1A34CD0E0();
    [v16 setNamePrefix_];
  }

  if (v96)
  {
    v19 = sub_1A34CD0E0();
    [v16 setGivenName_];

    v17 = 1;
  }

  v20 = v94;
  v21 = v99;
  if (v95)
  {
    v22 = sub_1A34CD0E0();
    [v16 setMiddleName_];

    v17 = 1;
  }

  if (v20)
  {
    v23 = sub_1A34CD0E0();
    [v16 setFamilyName_];

    v17 = 1;
  }

  v88 = v15;
  if (v14)
  {
    v24 = sub_1A34CD0E0();
    [v16 setNameSuffix_];

    v17 = 1;
  }

  v87 = v14;
  if (v98)
  {
    v25 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v26 = sub_1A34CD0E0();
    v27 = [v25 initWithStringValue_];

    v28 = v27;
    if (v21)
    {
      v29 = sub_1A34CD0E0();
    }

    else
    {
      v29 = 0;
    }

    v30 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v29 value:v27];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DAA30;
    *(inited + 32) = v30;
    v32 = v30;
    v33 = [v16 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v34 = sub_1A34CD370();

    v102 = v34;
    sub_1A33B938C(inited);
    v35 = sub_1A34CD350();

    [v16 setPhoneNumbers_];

    v17 = 1;
    v21 = v99;
  }

  if (v97)
  {
    v36 = sub_1A34CD0E0();
    if (v21)
    {
      v37 = sub_1A34CD0E0();
    }

    else
    {
      v37 = 0;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v37 value:v36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1A34DAA30;
    *(v39 + 32) = v38;
    v40 = v38;
    v41 = [v16 emailAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v42 = sub_1A34CD370();

    v102 = v42;
    sub_1A33B9360(v39);
    v43 = sub_1A34CD350();

    [v16 setEmailAddresses_];

    v17 = 1;
  }

  if (v93)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695CF68]) 0x1FB2FAB78];
    v45 = sub_1A34CD0E0();
    v46 = [v44 postalAddressFromString_];

    if (v46)
    {
      v47 = v46;
      if (v21)
      {
        v48 = sub_1A34CD0E0();
      }

      else
      {
        v48 = 0;
      }

      v53 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v48 value:v46];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_1A34DAA30;
      *(v54 + 32) = v53;
      v55 = v53;
      v56 = [v16 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
      v57 = sub_1A34CD370();

      v102 = v57;
      sub_1A33B9334(v54);
      v58 = sub_1A34CD350();

      [v16 setPostalAddresses_];
    }

    else
    {
      v49 = [objc_allocWithZone(MEMORY[0x1E695CF30]) 0x1FB2FAB78];
      v50 = sub_1A34CD0E0();
      [v49 setStreet_];

      [v49 copy];
      sub_1A34CD920();
      swift_unknownObjectRelease();
      sub_1A31EC194(0, qword_1EB0C01D0);
      swift_dynamicCast();
      v51 = v100;
      if (v21)
      {
        v52 = sub_1A34CD0E0();
      }

      else
      {
        v52 = 0;
      }

      v59 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v52 value:v51];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_1A34DAA30;
      *(v60 + 32) = v59;
      v61 = v59;
      v62 = [v16 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
      v63 = sub_1A34CD370();

      v102 = v63;
      sub_1A33B9334(v60);
      v64 = sub_1A34CD350();

      [v16 setPostalAddresses_];
    }

    v17 = 1;
  }

  v65 = v91;
  v66 = v86;
  sub_1A3303784(v91, v86);
  v67 = v89;
  v68 = v90;
  if ((*(v89 + 48))(v66, 1, v90) == 1)
  {
    sub_1A33037F4(v66);
    if (!v17)
    {
      sub_1A33173D4();
      swift_allocError();
      swift_willThrow();

      sub_1A33037F4(v65);
      return;
    }
  }

  else
  {
    v69 = v77;
    (*(v67 + 32))(v77, v66, v68);
    v70 = sub_1A34C9220();
    [v16 setBirthday_];

    (*(v67 + 8))(v69, v68);
  }

  sub_1A33037F4(v65);
  v71 = [objc_allocWithZone(MEMORY[0x1E695CF88]) 0x1FB2FAB78];
  [v71 updateContact_];
  sub_1A34C8AA0();
  v72 = *(v104[0] + 2);

  v104[0] = 0;
  v73 = [v72 executeSaveRequest:v71 error:v104];

  if (v73)
  {
    v74 = v104[0];
  }

  else
  {
    v75 = v104[0];
    sub_1A34C9580();

    swift_willThrow();
  }
}

unint64_t sub_1A332D3C8()
{
  result = qword_1EB0C7AD0;
  if (!qword_1EB0C7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AD0);
  }

  return result;
}

uint64_t (*sub_1A332D424(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33030BC;
}

unint64_t sub_1A332D49C()
{
  result = qword_1EB0C7AD8;
  if (!qword_1EB0C7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AD8);
  }

  return result;
}

unint64_t sub_1A332D4F4()
{
  result = qword_1EB0C7AE0;
  if (!qword_1EB0C7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AE0);
  }

  return result;
}

uint64_t sub_1A332D5C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4938 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7A90);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A332D680(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return UpdateContactIntent.perform()(a1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A332D768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A332D7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A332D818()
{
  result = qword_1EB0C7AE8;
  if (!qword_1EB0C7AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AE8);
  }

  return result;
}

uint64_t sub_1A332D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v6 = sub_1A34C9780();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C95A0();
  v23 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B8);
  sub_1A34CD060();
  sub_1A34C9810();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_1A34C95C0();
  *a5 = sub_1A34C8D90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7790);
  sub_1A34CD060();
  sub_1A34C9810();
  v16(v11, v15, v23);
  sub_1A34C95C0();
  a5[1] = sub_1A34C8D90();
  v17 = v24;
  sub_1A34C8A90();
  v18 = sub_1A34C9740();
  v20 = v19;
  (*(v25 + 8))(v17, v26);
  a5[2] = v18;
  a5[3] = v20;
  v31 = v27;
  v32 = v28;
  sub_1A34C8D10();
  v31 = v29;
  v32 = v30;
  return sub_1A34C8D10();
}

uint64_t static ContactLabeledValueEntity.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A34C95C0();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A34C8FF0();
}

uint64_t sub_1A332DF9C()
{

  sub_1A34C9010();
  sub_1A34C9010();

  sub_1A34C8D10();
}

uint64_t (*ContactLabeledValueEntity.label.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A33030BC;
}

uint64_t sub_1A332E0E0()
{

  sub_1A34C9010();
  sub_1A34C9010();

  sub_1A34C8D10();
}

uint64_t (*ContactLabeledValueEntity.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t ContactLabeledValueEntity.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContactLabeledValueEntity.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContactLabeledValueEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A34C9780();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C95A0();
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B8);
  sub_1A34CD060();
  sub_1A34C9810();
  v11 = *MEMORY[0x1E6968DF0];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  sub_1A34C95C0();
  *a1 = sub_1A34C8D90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7790);
  sub_1A34CD060();
  sub_1A34C9810();
  v12(v7, v11, v19);
  sub_1A34C95C0();
  a1[1] = sub_1A34C8D90();
  v13 = v20;
  sub_1A34C8A90();
  v14 = sub_1A34C9740();
  v16 = v15;
  (*(v21 + 8))(v13, v22);
  a1[2] = v14;
  a1[3] = v16;
  v23 = 0;
  v24 = 0;
  sub_1A34C8D10();
  v23 = 0;
  v24 = 0xE000000000000000;
  return sub_1A34C8D10();
}

uint64_t _s14ContactsUICore25ContactLabeledValueEntityV2eeoiySbAC_ACtFZ_0()
{
  sub_1A34C8D00();
  sub_1A34C8D00();
  if (v1)
  {
  }

  sub_1A34C8D00();
  sub_1A34C8D00();

  return 1;
}

unint64_t sub_1A332E8F4()
{
  result = qword_1EB0C7AF0;
  if (!qword_1EB0C7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AF0);
  }

  return result;
}

unint64_t sub_1A332E94C()
{
  result = qword_1EB0C7AF8;
  if (!qword_1EB0C7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7AF8);
  }

  return result;
}

unint64_t sub_1A332E9A4()
{
  result = qword_1EB0C7B00;
  if (!qword_1EB0C7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B00);
  }

  return result;
}

unint64_t sub_1A332EA34()
{
  result = qword_1EB0C7B18;
  if (!qword_1EB0C7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B18);
  }

  return result;
}

unint64_t sub_1A332EA88()
{
  result = qword_1EB0C7B20;
  if (!qword_1EB0C7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B20);
  }

  return result;
}

unint64_t sub_1A332EAE0()
{
  result = qword_1EB0C7B28;
  if (!qword_1EB0C7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B28);
  }

  return result;
}

unint64_t sub_1A332EB70()
{
  result = qword_1EB0C7B40;
  if (!qword_1EB0C7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B40);
  }

  return result;
}

unint64_t sub_1A332EBD4()
{
  result = qword_1EB0C7B48;
  if (!qword_1EB0C7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7B48);
  }

  return result;
}

uint64_t sub_1A332EC30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7BD8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7BE0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7BE8);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v26 - v11;
  *v5 = sub_1A34CB110();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7BF0);
  sub_1A332F100(v2, &v5[*(v12 + 44)]);
  sub_1A3330590(v2, v35);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v35, 0x140uLL);
  v14 = sub_1A3284D0C(&qword_1EB0C7BF8, &qword_1EB0C7BD8);
  sub_1A34CBF50();

  sub_1A3288FDC(v5, &qword_1EB0C7BD8);
  v15 = *(v2 + 296);
  v35[0] = *(v2 + 288);
  v35[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C00);
  sub_1A34CC740();
  v16 = v32;
  v34 = v32;
  sub_1A3330590(v2, v35);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v35, 0x140uLL);
  v18 = sub_1A31EC194(0, &qword_1EB0C7C08);
  v32 = v3;
  v33 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1A33305D8();
  sub_1A34CC3C0();

  (*(v27 + 8))(v8, v6);
  v21 = *(v2 + 312);
  LOBYTE(v32) = *(v2 + 304);
  v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  sub_1A3330590(v2, v35);
  v22 = swift_allocObject();
  memcpy((v22 + 16), v35, 0x140uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C20);
  v35[0] = v6;
  v35[1] = v18;
  v35[2] = OpaqueTypeConformance2;
  v35[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1A3330648();
  v23 = v28;
  v24 = v31;
  sub_1A34CC2F0();

  return (*(v29 + 8))(v24, v23);
}

uint64_t sub_1A332F100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C38);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  *v13 = sub_1A34CB290();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C48);
  sub_1A332F4F0(a1, &v13[*(v14 + 44)]);
  v15 = sub_1A34CC5E0();
  KeyPath = swift_getKeyPath();
  v17 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C50) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C58) + 28);
  v19 = *MEMORY[0x1E697E7D0];
  v20 = sub_1A34CABE0();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = KeyPath;
  *v8 = v15;
  sub_1A34546F8(v35);
  sub_1A31EE4BC(&v36, v34);
  sub_1A3292144(v35);
  v21 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  *(v8 + *(v4 + 44)) = sub_1A34CA770();
  __swift_destroy_boxed_opaque_existential_0(v34);
  v25 = v31;
  sub_1A328D790(v13, v31, &qword_1EB0C7C40);
  v26 = v32;
  sub_1A328D790(v8, v32, &qword_1EB0C7C38);
  v27 = v33;
  sub_1A328D790(v25, v33, &qword_1EB0C7C40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7C60);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_1A328D790(v26, v27 + *(v28 + 64), &qword_1EB0C7C38);
  sub_1A3288FDC(v8, &qword_1EB0C7C38);
  sub_1A3288FDC(v13, &qword_1EB0C7C40);
  sub_1A3288FDC(v26, &qword_1EB0C7C38);
  return sub_1A3288FDC(v25, &qword_1EB0C7C40);
}

uint64_t sub_1A332F4F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for DetailsBodyText();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for DetailsLabelText();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  if (a1[35] == 1)
  {
    v19 = "TEXTTONE_CARD_ITEM_LABEL";
  }

  else
  {
    v19 = "ntable11Coordinator";
  }

  v20 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000018, v19 | 0x8000000000000000);
  v22 = v21;
  *v15 = swift_getKeyPath();
  v15[264] = 0;
  v23 = *(v10 + 28);
  *&v15[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v24 = &v15[*(v10 + 32)];
  *v24 = v20;
  v24[1] = v22;
  sub_1A3331B58(v15, v18);
  v25 = a1[37];
  v40 = a1[36];
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C00);
  sub_1A34CC740();
  v26 = v39;
  v27 = sub_1A332F878();
  v29 = v28;

  *v8 = swift_getKeyPath();
  v8[264] = 0;
  *(v8 + 34) = swift_getKeyPath();
  v8[280] = 0;
  v30 = v4[8];
  *&v8[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C70);
  swift_storeEnumTagMultiPayload();
  v31 = &v8[v4[9]];
  *v31 = v27;
  v31[1] = v29;
  v8[v4[11]] = 0;
  v8[v4[10]] = 0;
  sub_1A3331BBC(v18, v12, type metadata accessor for DetailsLabelText);
  v32 = v37;
  sub_1A3331BBC(v8, v37, type metadata accessor for DetailsBodyText);
  v33 = v38;
  sub_1A3331BBC(v12, v38, type metadata accessor for DetailsLabelText);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C78);
  sub_1A3331BBC(v32, v33 + *(v34 + 48), type metadata accessor for DetailsBodyText);
  sub_1A3331C24(v8, type metadata accessor for DetailsBodyText);
  sub_1A3331C24(v18, type metadata accessor for DetailsLabelText);
  sub_1A3331C24(v32, type metadata accessor for DetailsBodyText);
  return sub_1A3331C24(v12, type metadata accessor for DetailsLabelText);
}

uint64_t sub_1A332F878()
{
  sub_1A332FD54();
  v23 = v1;
  v24 = v2;
  sub_1A332FEC8();
  v25 = v3;
  v26 = v4;
  if ([v0 ignoreMute])
  {
    result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000017, 0x80000001A350E8F0);
  }

  else
  {
    result = 0;
    v6 = 0;
  }

  v7 = 0;
  v27 = result;
  v28 = v6;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v7 <= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  v11 = 16 * v7 + 40;
  while (v7 != 3)
  {
    if (v10 == ++v7)
    {
      __break(1u);
      return result;
    }

    v12 = v11 + 16;
    v13 = *&v22[v11];
    v11 += 16;
    if (v13)
    {
      v14 = *&v22[v12 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A32984C4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1A32984C4((v15 > 1), v16 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
  sub_1A3284D0C(&qword_1EB0C0270, &qword_1EB0C7380);
  v18 = sub_1A34CD010();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    return v18;
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000020, 0x80000001A350E8C0);
}

uint64_t sub_1A332FAF4(uint64_t a1)
{
  v2 = sub_1A34CABE0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A34CAEB0();
}

void sub_1A332FC1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C00);
  sub_1A34CC740();
  sub_1A3330B48(v0);
}

void sub_1A332FC88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[35];
  v7 = a1[36];
  *&v8 = a1[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C00);
  sub_1A34CC740();
  v4 = [objc_allocWithZone(CNUITonePickerViewController) initWithAlertType:v3 activityAlert:v9];

  if (v4)
  {
    sub_1A34CC760();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

void sub_1A332FD54()
{
  v1 = [v0 sound];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedToneManager];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 nameForToneIdentifier_];

      if (v5)
      {
        v6 = sub_1A34CD110();
        v8 = v7;

        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1A34DAA10;
          *(inited + 32) = v6;
          v11 = inited + 32;
          *(inited + 40) = v8;
          sub_1A3332448(inited, 0, 0, 0xD00000000000001BLL, 0x80000001A350E930);
          swift_setDeallocating();
          sub_1A3288FDC(v11, &qword_1EB0C5A80);
        }

        else
        {
        }
      }
    }

    else
    {

      __break(1u);
    }
  }
}

void sub_1A332FEC8()
{
  v1 = [v0 vibration];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedVibrationManager];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 nameOfVibrationWithIdentifier_];

      if (v5)
      {
        v6 = sub_1A34CD110();
        v8 = v7;

        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1A34DAA10;
          *(inited + 32) = v6;
          v11 = inited + 32;
          *(inited + 40) = v8;
          sub_1A3332448(inited, 0, 0, 0xD00000000000001FLL, 0x80000001A350E910);
          swift_setDeallocating();
          sub_1A3288FDC(v11, &qword_1EB0C5A80);
        }

        else
        {
        }
      }
    }

    else
    {

      __break(1u);
    }
  }
}

id sub_1A3330108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePickerViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A33301D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3330220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 272) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1A33302E0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7BC8);
  sub_1A34CBA20();
  [v1 setDelegate_];

  return v1;
}

id sub_1A333035C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = type metadata accessor for TonePickerViewRepresentable.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV14ContactsUICoreP33_EA00BFAD0B6A1DB4F54018AB8FB6008727TonePickerViewRepresentable11Coordinator_delegate];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = v4;
  sub_1A34C9010();
  sub_1A34C9010();
  v11 = v6;
  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A33303F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A333053C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3330458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A333053C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33304BC()
{
  sub_1A333053C();
  sub_1A34CB940();
  __break(1u);
}

unint64_t sub_1A33304E8()
{
  result = qword_1EB0C7BC0;
  if (!qword_1EB0C7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7BC0);
  }

  return result;
}

unint64_t sub_1A333053C()
{
  result = qword_1EB0C7BD0;
  if (!qword_1EB0C7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7BD0);
  }

  return result;
}

unint64_t sub_1A33305D8()
{
  result = qword_1EB0C7C10;
  if (!qword_1EB0C7C10)
  {
    sub_1A31EC194(255, &qword_1EB0C7C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7C10);
  }

  return result;
}

unint64_t sub_1A3330648()
{
  result = qword_1EB0C7C28;
  if (!qword_1EB0C7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7C20);
    sub_1A33304E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7C28);
  }

  return result;
}

uint64_t sub_1A33306F0(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3331BBC(a1, v4, type metadata accessor for ContactCardConfiguration);
  return sub_1A338DC10(v4);
}

void sub_1A33307D8(void *a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1A31EC194(0, &qword_1EB0C7C08);
  v5 = v4;
  v6 = sub_1A34CD830();

  if (v6)
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    sub_1A33305D8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3284D0C(&qword_1EB0C7C30, &qword_1EB0CCFD0);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3330994(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = sub_1A34CDE30(), (v7 & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3284D0C(&qword_1EB0C7C80, &unk_1EB0C7C88);
    sub_1A34C9990();
  }
}

void sub_1A3330B48(void *a1)
{
  v2 = v1;
  sub_1A31EC194(0, &qword_1EB0C7C08);
  sub_1A33305D8();
  swift_getKeyPath();
  v39 = v1;
  sub_1A3284D0C(&qword_1EB0C7C30, &qword_1EB0CCFD0);
  sub_1A34C99A0();

  v3 = v1 + qword_1EB0C1618;
  v4 = swift_beginAccess();
  if (!*(v3 + 8))
  {
    MEMORY[0x1EEE9AC00](v4);
    swift_getKeyPath();
    v39 = v1;
    sub_1A34C99A0();

    [*v3 mutableCopy];
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31EC194(0, &qword_1EB0C2B00);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v38;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1EEE9AC00](v5);
    swift_getKeyPath();
    sub_1A34C99A0();

    v38 = v1;
    MEMORY[0x1EEE9AC00](v7);
    swift_getKeyPath();
    sub_1A34C99C0();

    v8 = *(v3 + 8);
    *(v3 + 8) = v6;

    v38 = v1;
    MEMORY[0x1EEE9AC00](v9);
    swift_getKeyPath();
    sub_1A34C99B0();
  }

  MEMORY[0x1EEE9AC00](v4);
  swift_getKeyPath();
  v39 = v1;
  sub_1A34C99A0();

  v11 = *(v3 + 8);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v10);
    swift_getKeyPath();
    v39 = v2;
    v12 = v11;
    sub_1A34C99A0();

    v13 = *(*v2 + 120);
    swift_beginAccess();
    v14 = *(v2 + v13);
    LOBYTE(v13) = sub_1A34CD830();

    if ((v13 & 1) == 0)
    {
      if (qword_1EB0C12A8 != -1)
      {
        swift_once();
      }

      v15 = sub_1A34CA250();
      __swift_project_value_buffer(v15, qword_1EB0ED038);
      v35 = v12;
      v16 = v12;
      v17 = sub_1A34CA230();
      v18 = sub_1A34CD660();

      v36 = v16;
      if (os_log_type_enabled(v17, v18))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38 = v34;
        *v33 = 136446210;
        v19 = [v16 identifier];
        v20 = v18;
        v21 = sub_1A34CD110();
        v23 = v22;

        v24 = sub_1A31EE23C(v21, v23, &v38);

        *(v33 + 4) = v24;
        _os_log_impl(&dword_1A31E6000, v17, v20, "[ContactCardPropertyItemViewModel] Saving contact %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1A58F1010](v34, -1, -1);
        MEMORY[0x1A58F1010](v33, -1, -1);
      }

      v25 = a1;
      v26 = sub_1A34CD0E0();
      [v36 setValue:v25 forKey:v26];

      MEMORY[0x1EEE9AC00](v27);
      swift_getKeyPath();
      v38 = v2;
      sub_1A34C99A0();

      v28 = *(v3 + 16);
      v29 = objc_allocWithZone(MEMORY[0x1E695CF88]);
      v30 = v28;
      v31 = [v29 init];
      MEMORY[0x1EEE9AC00](v31);
      swift_getKeyPath();
      v38 = v2;
      sub_1A34C99A0();

      v32 = *(v3 + 32);
      [v36 saveContactInStore:v30 group:0 container:0 request:v31 authorizationContext:v32];

      sub_1A33307D8(v25);
      v12 = v35;
    }
  }
}

void sub_1A3331244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v42 = v2;
  sub_1A3284D0C(&qword_1EB0C7C80, &unk_1EB0C7C88);
  sub_1A34C99A0();

  v5 = v2 + qword_1EB0C1618;
  v6 = swift_beginAccess();
  if (!*(v5 + 8))
  {
    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    v42 = v2;
    sub_1A34C99A0();

    [*v5 mutableCopy];
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31EC194(0, &qword_1EB0C2B00);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v41[0];
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1EEE9AC00](v7);
    swift_getKeyPath();
    sub_1A34C99A0();

    v41[0] = v2;
    MEMORY[0x1EEE9AC00](v9);
    swift_getKeyPath();
    sub_1A34C99C0();

    v10 = *(v5 + 8);
    *(v5 + 8) = v8;

    v41[0] = v2;
    MEMORY[0x1EEE9AC00](v11);
    swift_getKeyPath();
    sub_1A34C99B0();
  }

  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  v42 = v2;
  sub_1A34C99A0();

  v13 = *(v5 + 8);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v12);
    swift_getKeyPath();
    v42 = v3;
    v14 = v13;
    sub_1A34C99A0();

    v15 = (v3 + *(*v3 + 120));
    swift_beginAccess();
    if ((*v15 != a1 || v15[1] != a2) && (sub_1A34CDE30() & 1) == 0)
    {
      if (qword_1EB0C12A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1A34CA250();
      __swift_project_value_buffer(v16, qword_1EB0ED038);
      v38 = v14;
      v17 = v14;
      v18 = sub_1A34CA230();
      v19 = sub_1A34CD660();

      v39 = v17;
      if (os_log_type_enabled(v18, v19))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41[0] = v37;
        *v36 = 136446210;
        v20 = [v17 identifier];
        v21 = a1;
        v22 = sub_1A34CD110();
        v35 = v19;
        v24 = v23;

        v25 = v22;
        a1 = v21;
        v26 = sub_1A31EE23C(v25, v24, v41);

        *(v36 + 4) = v26;
        _os_log_impl(&dword_1A31E6000, v18, v35, "[ContactCardPropertyItemViewModel] Saving contact %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1A58F1010](v37, -1, -1);
        MEMORY[0x1A58F1010](v36, -1, -1);
      }

      v41[0] = a1;
      v41[1] = a2;

      v27 = sub_1A34CDE70();
      v28 = sub_1A34CD0E0();
      [v39 setValue:v27 forKey:v28];
      swift_unknownObjectRelease();

      MEMORY[0x1EEE9AC00](v29);
      swift_getKeyPath();
      v41[0] = v3;
      sub_1A34C99A0();

      v30 = *(v5 + 16);
      v31 = objc_allocWithZone(MEMORY[0x1E695CF88]);
      v32 = v30;
      v33 = [v31 init];
      MEMORY[0x1EEE9AC00](v33);
      swift_getKeyPath();
      v41[0] = v3;
      sub_1A34C99A0();

      v34 = *(v5 + 32);
      [v39 saveContactInStore:v32 group:0 container:0 request:v33 authorizationContext:v34];

      sub_1A3330994(a1, a2);
      v14 = v38;
    }
  }
}

id sub_1A3331970(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(*a1 + 120);
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = v3;

  return v3;
}

uint64_t sub_1A3331A00(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1A3331A78(uint64_t a1)
{
  sub_1A328D790(a1, &v3, &qword_1EB0C7690);
  if (!v5)
  {
    return sub_1A3288FDC(&v3, &qword_1EB0C7690);
  }

  sub_1A31EC194(0, &qword_1EB0C7C08);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCV14ContactsUICoreP33_EA00BFAD0B6A1DB4F54018AB8FB6008727TonePickerViewRepresentable11Coordinator_delegate + 8);
    v4 = *(v1 + OBJC_IVAR____TtCV14ContactsUICoreP33_EA00BFAD0B6A1DB4F54018AB8FB6008727TonePickerViewRepresentable11Coordinator_delegate + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C98);
    return sub_1A34CC910();
  }

  return result;
}

uint64_t sub_1A3331B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsLabelText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3331BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3331C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1A3331CA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = sub_1A34C9080();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a4);
    goto LABEL_10;
  }

  LODWORD(v13) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v13;
LABEL_10:
  if (__OFADD__(v13, 200))
  {
    __break(1u);
    goto LABEL_34;
  }

  v35 = a4;
  v17 = malloc(v13 + 200);
  if (v17)
  {
    *v36 = 1;
    memset(&v36[4], 0, 196);
    sub_1A3332074(a1, a2, &v36[136], &v37);
    if (v12 > 1)
    {
      if (v12 != 2)
      {
LABEL_28:
        v17[24] = *&v36[192];
        *&v36[4] = 0;
        v28 = *&v36[176];
        *(v17 + 10) = *&v36[160];
        *(v17 + 11) = v28;
        goto LABEL_29;
      }

      v20 = *(a3 + 16);
      v19 = *(a3 + 24);
      v16 = __OFSUB__(v19, v20);
      v21 = v19 - v20;
      if (!v16)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v12)
    {
      *&v36[4] = BYTE6(v35);
      v18 = *&v36[176];
      *(v17 + 10) = *&v36[160];
      *(v17 + 11) = v18;
      v17[24] = *&v36[192];
LABEL_29:
      v29 = *&v36[112];
      *(v17 + 6) = *&v36[96];
      *(v17 + 7) = v29;
      v30 = *&v36[144];
      *(v17 + 8) = *&v36[128];
      *(v17 + 9) = v30;
      v31 = *&v36[48];
      *(v17 + 2) = *&v36[32];
      *(v17 + 3) = v31;
      v32 = *&v36[80];
      *(v17 + 4) = *&v36[64];
      *(v17 + 5) = v32;
      v33 = *&v36[16];
      *v17 = *v36;
      *(v17 + 1) = v33;
LABEL_31:
      sub_1A34C96B0();
      return v17;
    }

    LODWORD(v21) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = v21;
LABEL_22:
    if ((v21 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v21))
      {
        *&v36[4] = v21;
        v22 = *&v36[176];
        *(v17 + 10) = *&v36[160];
        *(v17 + 11) = v22;
        v17[24] = *&v36[192];
        v23 = *&v36[112];
        *(v17 + 6) = *&v36[96];
        *(v17 + 7) = v23;
        v24 = *&v36[144];
        *(v17 + 8) = *&v36[128];
        *(v17 + 9) = v24;
        v25 = *&v36[48];
        *(v17 + 2) = *&v36[32];
        *(v17 + 3) = v25;
        v26 = *&v36[80];
        *(v17 + 4) = *&v36[64];
        *(v17 + 5) = v26;
        v27 = *&v36[16];
        *v17 = *v36;
        *(v17 + 1) = v27;
        if (v12 == 2)
        {
          if (!__OFSUB__(*(a3 + 24), *(a3 + 16)))
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_28;
        }

        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_31;
        }

LABEL_38:
        __break(1u);
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *v36 = 12;
  sub_1A3332240(MEMORY[0x1E69E7CC0]);
  sub_1A3332350();
  sub_1A34C9560();
  sub_1A34C9070();
  (*(v9 + 8))(v11, v8);
  swift_willThrow();
  return v17;
}

uint64_t sub_1A3332074(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1A34CDAA0();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_1A34CDAA0();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

unint64_t sub_1A3332110(uint64_t a1, uint64_t a2)
{
  sub_1A34CDF20();
  sub_1A34CD1C0();
  v4 = sub_1A34CDF70();

  return sub_1A3332188(a1, a2, v4);
}

unint64_t sub_1A3332188(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A34CDE30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A3332240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CA8);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A33323D8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1A3332110(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A31FA144(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3332350()
{
  result = qword_1EB0C7CA0;
  if (!qword_1EB0C7CA0)
  {
    sub_1A34C9080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7CA0);
  }

  return result;
}

char *sub_1A33323A8(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33323D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3332448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5798);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_1A34C9840();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v14 - 8);

  sub_1A34CD0D0();
  if (qword_1ED853448 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED853450;
  sub_1A34C9810();
  v16 = sub_1A34CD150();
  v47 = v17;
  sub_1A34C9810();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = *(a1 + 16);
  if (v18)
  {
    v41 = v16;
    v42 = v11;
    v43 = a3;
    v44 = a4;
    v45 = a5;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB34(0, v18, 0);
    v19 = v51;
    v20 = (a1 + 40);
    v21 = MEMORY[0x1E69E6158];
    v22 = (a1 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      if (v24)
      {
        v25 = *(v20 - 1);
        v26 = v23;
      }

      else
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v51 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_1A32EBB34((v27 > 1), v28 + 1, 1);
        v19 = v51;
      }

      v49 = v21;
      v50 = sub_1A329A290();
      *&v48 = v25;
      *(&v48 + 1) = v26;
      *(v19 + 16) = v28 + 1;
      sub_1A31EE568(&v48, v19 + 40 * v28 + 32);
      v20 = v22;
      --v18;
    }

    while (v18);
    a4 = v44;
    a5 = v45;
    v11 = v42;
    a3 = v43;
  }

  v29 = sub_1A34CD120();
  v31 = v30;

  sub_1A3332E08(v11);
  if (a3 && (v29 == a4 && v31 == a5 || (sub_1A34CDE30() & 1) != 0) && (sub_1A34CD260() & 1) != 0)
  {

    v32 = sub_1A34CD1D0();
    v33 = sub_1A3332E70(v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v29 = MEMORY[0x1A58EE9C0](v33, v35, v37, v39);
  }

  return v29;
}

void sub_1A3332838()
{
  v0 = sub_1A34CD0E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1ED853450 = v1;
}

uint64_t sub_1A33328A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v37 = sub_1A34C9410();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8050);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CB8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8060);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v35 - v22;
  v24 = sub_1A34CBDC0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CBD50();
  v28 = sub_1A34CBD60();
  (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
  v29 = sub_1A34CBD70();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  sub_1A34CBD50();
  v30 = sub_1A34CBDA0();
  (*(*(v30 - 8) + 56))(v17, 0, 1, v30);
  v31 = sub_1A34CBD40();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v32 = v35;
  sub_1A34CC440();
  sub_1A34CBDB0();
  sub_1A34C9400();
  (*(v25 + 16))(v6, v27, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  sub_1A3332DB4();
  sub_1A34C9420();
  v33 = v37;
  (*(v7 + 16))(v36, v11, v37);

  sub_1A34C93C0();
  (*(v7 + 8))(v11, v33);
  return (*(v25 + 8))(v27, v24);
}

unint64_t sub_1A3332DB4()
{
  result = qword_1EB0C2A78;
  if (!qword_1EB0C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A78);
  }

  return result;
}

uint64_t sub_1A3332E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3332E70(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A34CD1E0();

    return sub_1A34CD2A0();
  }

  return result;
}

uint64_t sub_1A3332F0C()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v10, &qword_1EB0C5820);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A3333068@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1A333321C(v1, a1);
  v22 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v4 = v20[0];
  v5 = v20[1];
  v6 = v21;
  v7 = swift_allocObject();
  v8 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = *(v2 + 80);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  v11 = *(v2 + 48);
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(v2 + 64);
  *(v10 + 96) = *(v2 + 80);
  v12 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v12;
  KeyPath = swift_getKeyPath();
  v14 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CC8) + 36)];
  *v14 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CD0);
  v16 = v14 + v15[9];
  *v16 = v4;
  *(v16 + 1) = v5;
  v16[16] = v6;
  v17 = (v14 + v15[10]);
  *v17 = sub_1A3335298;
  v17[1] = v7;
  v18 = (v14 + v15[11]);
  *v18 = sub_1A33352A0;
  v18[1] = v10;
  sub_1A33352A8(v2, v20);
  return sub_1A33352A8(v2, v20);
}

uint64_t sub_1A333321C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D00) - 8;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v50 - v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  sub_1A33352A8(a1, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();
  v17 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1347375683, 0xE400000000000000);
  v19 = v18;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  *&v68 = v17;
  *(&v68 + 1) = v19;
  v63 = &v68;
  v64 = 1886351971;
  v65 = 0xE400000000000000;
  sub_1A33352A8(a1, &v69);
  sub_1A34CC790();

  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  *(v23 + 96) = *(a1 + 80);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  v62 = a1;
  sub_1A33352A8(a1, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5480);
  sub_1A3284D0C(&qword_1EB0C5488, &qword_1EB0C5480);
  v51 = v6;
  sub_1A34CC790();
  v68 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v26 = v70;
  v52 = v69;
  v27 = v71;
  sub_1A3333E50(a1, v66);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A33354FC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v28 = sub_1A34CA600();
  LOBYTE(v19) = v29;
  KeyPath = swift_getKeyPath();
  v31 = &v6[*(v54 + 44)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5498);
  *&v31[v32[10]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v33 = &v31[v32[12]];
  v34 = v66[3];
  *(v33 + 2) = v66[2];
  *(v33 + 3) = v34;
  *(v33 + 4) = v66[4];
  *(v33 + 10) = v67;
  v35 = v66[1];
  *v33 = v66[0];
  *(v33 + 1) = v35;
  *v31 = 0;
  *(v31 + 1) = v28;
  v31[16] = v19 & 1;
  v36 = &v31[v32[11]];
  *v36 = v52;
  *(v36 + 1) = v26;
  v36[16] = v27;
  v37 = &v31[v32[13]];
  *&v68 = 0x4076800000000000;
  sub_1A34CC730();
  v38 = v70;
  *v37 = v69;
  *(v37 + 1) = v38;
  v39 = v60;
  v40 = *(v61 + 16);
  v41 = v56;
  v40(v60, v59, v56);
  v42 = v55;
  v43 = v53;
  v40(v55, v53, v41);
  v44 = v51;
  v45 = v57;
  sub_1A3335484(v51, v57);
  v46 = v58;
  v40(v58, v39, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D08);
  v40(&v46[*(v47 + 48)], v42, v41);
  sub_1A3335484(v45, &v46[*(v47 + 64)]);
  sub_1A3288FDC(v44, &qword_1EB0C7D00);
  v48 = *(v61 + 8);
  v48(v43, v41);
  v48(v59, v41);
  sub_1A3288FDC(v45, &qword_1EB0C7D00);
  v48(v42, v41);
  return (v48)(v60, v41);
}

uint64_t sub_1A3333900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = sub_1A34CD4A0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1A34CD450();
  sub_1A33352A8(a1, v13);
  v6 = sub_1A34CD440();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v9;
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = *(a1 + 80);
  v10 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_1A32C0B38(0, 0, v4, &unk_1A34E6C18, v7);
}

uint64_t sub_1A3333A9C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A350E9A0);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A3333B1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CC640();
  *a1 = result;
  return result;
}

uint64_t sub_1A3333B54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54A8);
  sub_1A328D800();
  return sub_1A34CC6A0();
}

uint64_t sub_1A3333BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A34CC5E0();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D0) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v7 = *MEMORY[0x1E69816C0];
  v8 = sub_1A34CC670();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a2 = v4;
  sub_1A34CCE10();
  v10 = v9;
  v12 = v11;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54C0) + 36));
  *v13 = vdupq_n_s64(0x3FF2147AE147AE14uLL);
  v13[1].i64[0] = v10;
  v13[1].i64[1] = v12;
  v22 = *(a1 + 48);
  v23 = *(a1 + 64);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE8);
  MEMORY[0x1A58EE120](&v21, v14);
  v15 = v21;
  swift_getKeyPath();
  *&v22 = v15;
  sub_1A33354FC(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v16 = *(v15 + 64);
  LOBYTE(v7) = *(v15 + 72);
  sub_1A31EE004(v16, v7);

  KeyPath = swift_getKeyPath();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54A8) + 36));
  *v18 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BackgroundRepresentationModifier();
  v20 = v18 + *(result + 20);
  *v20 = v16;
  v20[8] = v7;
  return result;
}

double sub_1A3333E50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE8);
  sub_1A34CC930();
  swift_getKeyPath();
  sub_1A34CC920();

  if (qword_1EB0C1778 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0ED110;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CB290);
  sub_1A34CC730();
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  result = 38.0;
  *(a2 + 72) = xmmword_1A34DAEB0;
  return result;
}

uint64_t sub_1A3333FD0(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 80);
  v6 = *(a1 + 72);
  v13 = v6;
  v7 = v14;
  sub_1A34C9010();
  if ((v7 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v13, &qword_1EB0C6E58);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 44))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 0;
    v12 = v6;
    sub_1A33354FC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  else
  {
    *(v6 + 44) = 0;
  }
}

uint64_t sub_1A3334210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CD8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = (&v40 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE0);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - v7;
  v61 = *(a1 + 48);
  v62 = *(a1 + 64);
  v58 = *(a1 + 48);
  *&v59 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE8);
  sub_1A34CC930();
  v8 = v53;
  v9 = v54;
  swift_getKeyPath();
  v58 = v8;
  *&v59 = v9;
  sub_1A34CC920();

  v47 = v53;
  v10 = v54;

  v56 = v47;
  v57 = v10;
  sub_1A31EC194(0, &qword_1EB0C00D0);
  sub_1A34CC980();
  v11 = *(&v49 + 1);
  if (!*(&v49 + 1))
  {
    return (*(v48 + 56))(a2, 1, 1, v6);
  }

  v12 = v50;
  v13 = v49;
  v49 = v61;
  *&v50 = v62;
  sub_1A34C9010();
  sub_1A34C9010();
  v43 = v12;
  sub_1A34CC930();
  v14 = v58;
  v44 = v6;
  v15 = v59;
  swift_getKeyPath();
  *&v47 = a2;
  v56 = v14;
  v57 = v15;
  sub_1A34CC920();

  v16 = v49;
  v42 = v52;
  v41 = v50;
  v40 = v51;

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ImageCroppingView();
  v18 = v5 + v17[5];
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_1A34CC730();
  v19 = v60;
  v20 = *(&v60 + 1);
  v21 = v59;
  *v18 = v58;
  *(v18 + 1) = v21;
  v18[32] = v19;
  *(v18 + 5) = v20;
  v22 = v5 + v17[6];
  type metadata accessor for CGPoint(0);
  v53 = 0uLL;
  sub_1A34CC730();
  v23 = v59;
  *v22 = v58;
  *(v22 + 2) = v23;
  v24 = (v5 + v17[7]);
  *&v53 = 0x3FF0000000000000;
  sub_1A34CC730();
  v25 = *(&v58 + 1);
  *v24 = v58;
  v24[1] = v25;
  v26 = (v5 + v17[8]);
  *v26 = v13;
  v26[1] = v11;
  v27 = v43;
  v26[2] = v43;
  *(v5 + v17[9]) = 0x4072C00000000000;
  v28 = v5 + v17[10];
  *v28 = v16;
  v29 = v40;
  *(v28 + 1) = v41;
  *(v28 + 2) = v29;
  v28[48] = v42;
  sub_1A34CCC80();
  sub_1A34CA760();
  v30 = (v5 + *(v45 + 36));
  v31 = v59;
  *v30 = v58;
  v30[1] = v31;
  v30[2] = v60;
  *&v49 = sub_1A34CC4E0();
  sub_1A33352E0();
  v32 = v46;
  sub_1A34CC1E0();

  sub_1A3288FDC(v5, &qword_1EB0C7CD8);
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = *(a1 + 80);
  v35 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  v36 = v44;
  v37 = (v32 + *(v44 + 36));
  *v37 = sub_1A333539C;
  v37[1] = v33;
  v37[2] = 0;
  v37[3] = 0;
  v38 = v47;
  sub_1A3203D78(v32, v47);
  (*(v48 + 56))(v38, 0, 1, v36);
  return sub_1A33352A8(a1, &v49);
}

uint64_t sub_1A33347E0(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 80);
  v6 = *(a1 + 72);
  v13 = v6;
  v7 = v14;
  sub_1A34C9010();
  if ((v7 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v13, &qword_1EB0C6E58);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 44) == 1)
  {
    *(v6 + 44) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 1;
    v12 = v6;
    sub_1A33354FC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3334A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_1A34CD450();
  v4[13] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3334AC0, v6, v5);
}

uint64_t sub_1A3334AC0()
{
  v1 = *(v0 + 96);
  *(v0 + 128) = sub_1A3332F0C();
  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE8);
  MEMORY[0x1A58EE120]();
  v3 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v3;
  *(v0 + 144) = sub_1A33354FC(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 56);
  *(v0 + 152) = v4;
  v5 = v4;

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1A3334C4C;

  return sub_1A344586C(v5);
}

uint64_t sub_1A3334C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  v5 = v3[19];
  if (v1)
  {

    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1A3334F58;
  }

  else
  {

    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1A3334DC0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1A3334DC0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);

  v4 = *(v3 + 48);
  *(v0 + 56) = *(v3 + 64);
  *(v0 + 40) = v4;
  v5 = v1;
  MEMORY[0x1A58EE120](v2);
  v6 = *(v0 + 80);
  v7 = *(v6 + 56);
  sub_1A31EC194(0, &qword_1EB0C01B8);
  v8 = v7;
  LOBYTE(v1) = sub_1A34CD830();

  if (v1)
  {
    v9 = *(v0 + 168);
    sub_1A341C0FC(v9);
  }

  else
  {
    v10 = *(v0 + 168);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = v10;
    *(v0 + 88) = v6;
    sub_1A34C9990();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A3334F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3335004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A34CC730();
  sub_1A34CC730();
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A33354FC(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  result = sub_1A34CA600();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  *(a4 + 72) = result;
  *(a4 + 80) = v10 & 1;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A3335150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3335198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3335200(uint64_t a1)
{
  result = sub_1A3335228();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3335228()
{
  result = qword_1EB0C7CC0;
  if (!qword_1EB0C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7CC0);
  }

  return result;
}

unint64_t sub_1A33352E0()
{
  result = qword_1EB0C7CF0;
  if (!qword_1EB0C7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7CD8);
    sub_1A33354FC(&qword_1EB0C7CF8, type metadata accessor for ImageCroppingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7CF0);
  }

  return result;
}

uint64_t sub_1A3335484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33354FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3335544(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3292050;

  return sub_1A3334A28(a1, v4, v5, v1 + 32);
}

unint64_t sub_1A3335610()
{
  result = qword_1EB0C7D10;
  if (!qword_1EB0C7D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7CC8);
    sub_1A3284D0C(&qword_1EB0C7D18, &qword_1EB0C7D20);
    sub_1A3284D0C(&qword_1EB0C7D28, &qword_1EB0C7CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7D10);
  }

  return result;
}

uint64_t sub_1A333570C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[0] = a1;
  v16[1] = a2;
  v6 = type metadata accessor for VisualIdentity(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1A32EBCF4(0, v10, 0);
  v11 = v17;
  for (i = a3 + 32; ; i += 40)
  {
    (v16[0])(i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v17 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1A32EBCF4(v13 > 1, v14 + 1, 1);
      v11 = v17;
    }

    *(v11 + 16) = v14 + 1;
    sub_1A3336E78(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1A3335898(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a1);
  v4 = sub_1A34CDF70();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1A3335964(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1A34CDF20();
    MEMORY[0x1A58EF750](a1 & 1);
    v5 = sub_1A34CDF70();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1A3335A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A34CDF20();
  sub_1A34CD1C0();
  v6 = sub_1A34CDF70();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A34CDE30() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1A3335B24(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v3);
  v4 = sub_1A34CDF70();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1A3335C18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_1A34C9010();
    v4 = sub_1A34CD9F0();

    return v4 & 1;
  }

  else
  {
    if (*(a2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(a3), v6 = sub_1A34CCFD0(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      do
      {
        v10 = sub_1A34CD040();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_1A3335D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A3335D6C, 0, 0);
}

uint64_t sub_1A3335D6C()
{
  v1 = v0[8];
  v0[3] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D30);

  v3 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[7];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1A3298804(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1A3298804((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = v0[5];
  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v2;
  v0[2] = v5;
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1A3335F00;

  return (v11)(v0 + 4, v0 + 2);
}

uint64_t sub_1A3335F00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A33360C8;
  }

  else
  {
    v2 = sub_1A3336014;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3336014()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
LABEL_4:
        *(v1 + 16) = v3 - 1;
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_1A3426048(v1);
      v1 = result;
      v3 = *(result + 16);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

LABEL_5:

  v4 = *(v0 + 32);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A33360C8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
LABEL_4:
        *(v1 + 16) = v3 - 1;
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_1A3426048(v1);
      v1 = result;
      v3 = *(result + 16);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

LABEL_5:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3336178()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000017, 0x80000001A350E9F0);
  qword_1EB0EDD30 = result;
  *algn_1EB0EDD38 = v1;
  return result;
}

uint64_t sub_1A33361C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A33361E8, 0, 0);
}

uint64_t sub_1A33361E8()
{
  v1 = v0[4];
  v2 = v1[3];
  v0[6] = v2;
  v3 = v1[4];
  v0[7] = v3;
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1A3336324;
  v5 = v0[5];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_1A3336324(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A3336424, 0, 0);
}

uint64_t sub_1A3336424()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  v2 = sub_1A34CDBF0();

  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A33364E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A34C8A90();
  v6 = type metadata accessor for VisualIdentity(0);
  v7 = *(a2 + v6[5]);
  sub_1A31EE4BC(a1, a3 + v6[7]);
  result = sub_1A31EE4BC(a2 + v6[8], a3 + v6[8]);
  *(a3 + v6[5]) = v7;
  *(a3 + v6[6]) = 0;
  return result;
}

uint64_t sub_1A333656C()
{
  sub_1A31F08B0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A33365C8()
{
  if (qword_1EB0C4950 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDD30;

  return v0;
}

uint64_t sub_1A333666C(uint64_t a1)
{
  v11 = v1;
  v2 = a1 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 24);
  v3 = type metadata accessor for VisualIdentity(0);
  sub_1A31EE4BC(v2 + *(v3 + 28), &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  if (swift_dynamicCast())
  {

    v4 = 10;
  }

  else
  {
    v4 = 16;
  }

  v5 = sub_1A3466630(v4);
  v6 = *(v1 + 8);

  return v6(v5);
}

uint64_t sub_1A3336764(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A330F6A8;

  return (sub_1A3336848)(a1, a2);
}

uint64_t sub_1A3336818()
{
  v0 = type metadata accessor for EditorSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F1621430);
}

uint64_t sub_1A3336848(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v2[19] = type metadata accessor for VisualIdentity(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33368DC, 0, 0);
}

uint64_t sub_1A33368DC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for VisualIdentitySuggestionContext(0);
  sub_1A3300BB8(v3 + *(v4 + 24), v2);
  sub_1A31EE4BC(v2 + *(v1 + 28), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D30);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    sub_1A31EE568((v0 + 96), v0 + 16);
    v7 = *v5;
    v8 = v5[1];
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *(v9 + 16) = v0 + 16;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1A3336AC0;

    return sub_1A3335D48(v0 + 16, &unk_1A34E6CF0, v9, v7, v8);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1A3336CE0(v0 + 96);
    sub_1A3336D48(*(v0 + 160));

    v12 = *(v0 + 8);
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

void sub_1A3336AC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 192) = a1;

    MEMORY[0x1EEE6DFA0](sub_1A3336C08, 0, 0);
  }
}

uint64_t sub_1A3336C08()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1A333570C(sub_1A3336E58, v3, v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  sub_1A3336D48(v0[20]);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1A3336CE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3336D48(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3336DA4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A3292050;

  return sub_1A33361C4(a1, a2, v7, v6);
}

uint64_t sub_1A3336E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3336EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[3] = a2;
  v3 = type metadata accessor for PaletteButtonStyle();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = sub_1A333B668(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
  v21 = v7;
  v22 = v3;
  v23 = v6;
  v24 = v8;
  v20[1] = MEMORY[0x1E697CDC0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  *v5 = 0;
  *(v5 + 1) = swift_getKeyPath();
  *(v5 + 8) = 0;
  v16 = *(v3 + 24);
  *&v5[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC0);
  swift_storeEnumTagMultiPayload();
  sub_1A34CBEB0();
  sub_1A333B6B0(v5);
  v21 = v7;
  v22 = v3;
  v23 = v6;
  v24 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3345BC8(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v10 + 8);
  v18(v12, OpaqueTypeMetadata2);
  sub_1A3345BC8(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v18)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1A3337164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A333A878();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A33371C8()
{
  sub_1A333A814();
  sub_1A34CB0E0();
  return v1;
}

uint64_t sub_1A3337208()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A3337348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A32BB4B0(v2 + *(a1 + 40), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A34CB5F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A34CD650();
    v14 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A3337534(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  MEMORY[0x1A58EE120](&v7, v5);
  return v7;
}

uint64_t sub_1A33375F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  return v1;
}

uint64_t sub_1A333765C(uint64_t a1)
{
  v2 = sub_1A34CB5F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  if (sub_1A3337534(a1))
  {
    sub_1A3337348(a1, v8);
    (*(v3 + 104))(v5, *MEMORY[0x1E697FF38], v2);
    v9 = sub_1A34CB5E0();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A33377B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v88 = a3;
  v87 = sub_1A34CB6D0();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = (v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = *(a2 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v77 = a2;
  sub_1A34CB4F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E70);
  v76 = sub_1A34CAC30();
  v84 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v90 = v67 - v7;
  v89 = sub_1A34CA9E0();
  v79 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E78);
  v8 = sub_1A34CAC30();
  v78 = *(a2 + 24);
  v9 = v78;
  v10 = sub_1A3284D0C(&qword_1EB0C06A8, &qword_1EB0C7E78);
  v109 = v9;
  v110 = v10;
  v11 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v105 = v8;
  v106 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E80);
  v105 = v8;
  v106 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8D40);
  v17 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  v105 = v16;
  v106 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v105 = OpaqueTypeMetadata2;
  v106 = v14;
  v107 = OpaqueTypeConformance2;
  v108 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  v19 = sub_1A34CAC30();
  v105 = OpaqueTypeMetadata2;
  v106 = v14;
  v107 = OpaqueTypeConformance2;
  v108 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x1E697E5D8];
  v103 = v20;
  v104 = MEMORY[0x1E697E5D8];
  v101 = swift_getWitnessTable();
  v102 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1A333B40C();
  v24 = MEMORY[0x1E69E7DE0];
  v105 = v19;
  v106 = MEMORY[0x1E69E7DE0];
  v107 = v22;
  v108 = v23;
  v25 = swift_getOpaqueTypeMetadata2();
  v105 = v19;
  v106 = v24;
  v107 = v22;
  v108 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v105 = v25;
  v106 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v105 = v25;
  v106 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v105 = v27;
  v106 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v105 = v27;
  v106 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v105 = v29;
  v106 = v30;
  swift_getOpaqueTypeMetadata2();
  v105 = v29;
  v106 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1A34CAC50();
  sub_1A34CAC30();
  v31 = sub_1A34CAC30();
  v32 = swift_getWitnessTable();
  v33 = sub_1A3284D0C(&qword_1EB0C7E88, &qword_1EB0C7E70);
  v99 = v32;
  v100 = v33;
  v34 = v76;
  v35 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E040];
  v75 = v11;
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x1E697EBF8];
  v67[1] = v31;
  v89 = swift_getWitnessTable();
  v105 = v34;
  v106 = v31;
  v36 = v34;
  v107 = v35;
  v108 = v89;
  v72 = &unk_1A3515864;
  v69 = swift_getOpaqueTypeMetadata2();
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67[0] = v67 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E90);
  v71 = sub_1A34CAC30();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v70 = v67 - v40;
  swift_getKeyPath();
  v41 = v91;
  v105 = sub_1A34CCD60();
  LOBYTE(v106) = 0;
  sub_1A34CBEE0();

  v42 = v77;
  v43 = sub_1A33375F8();
  v45 = v44;
  LODWORD(v83) = v46;
  v47 = v81;
  v48 = v80;
  (*(v81 + 16))(v80, v41, v42);
  v49 = v47;
  v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v52 = v78;
  *(v51 + 16) = v79;
  *(v51 + 24) = v52;
  (*(v49 + 32))(v51 + v50, v48, v42);
  v53 = swift_checkMetadataState();
  v54 = v85;
  sub_1A3284D9C(v85);
  v55 = v35;
  v56 = v67[0];
  v57 = v90;
  sub_1A3284E18(v43, v45, v83 & 1, v54, 0);

  (*(v86 + 8))(v54, v87);
  (*(v84 + 8))(v57, v36);
  v94 = sub_1A333765C(v42) & 1;
  v105 = v36;
  v106 = v53;
  v107 = v55;
  v108 = v89;
  v58 = swift_getOpaqueTypeConformance2();
  sub_1A333B4EC();
  v59 = v68;
  v60 = v69;
  sub_1A34CBE80();
  (*(v73 + 8))(v56, v60);
  v61 = sub_1A3284D0C(&qword_1EB0C7EA0, &qword_1EB0C7E90);
  v92 = v58;
  v93 = v61;
  v62 = v71;
  v63 = swift_getWitnessTable();
  v64 = v70;
  sub_1A3345BC8(v59, v62, v63);
  v65 = *(v74 + 8);
  v65(v59, v62);
  sub_1A3345BC8(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_1A3338338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a1;
  v76 = a4;
  v75 = sub_1A34CB5F0();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v60 - v8;
  v77 = sub_1A34CA9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E78);
  v9 = sub_1A34CAC30();
  v10 = sub_1A3284D0C(&qword_1EB0C06A8, &qword_1EB0C7E78);
  v95 = a3;
  v96 = v10;
  WitnessTable = swift_getWitnessTable();
  v91 = v9;
  v92 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E80);
  v91 = v9;
  v92 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8D40);
  v16 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  v91 = v15;
  v92 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = v13;
  v93 = OpaqueTypeConformance2;
  v94 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  v18 = sub_1A34CAC30();
  v91 = OpaqueTypeMetadata2;
  v92 = v13;
  v93 = OpaqueTypeConformance2;
  v94 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = MEMORY[0x1E697E5D8];
  v89 = v19;
  v90 = MEMORY[0x1E697E5D8];
  v87 = swift_getWitnessTable();
  v88 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1A333B40C();
  v23 = MEMORY[0x1E69E7DE0];
  v91 = v18;
  v92 = MEMORY[0x1E69E7DE0];
  v93 = v21;
  v94 = v22;
  v24 = swift_getOpaqueTypeMetadata2();
  v91 = v18;
  v92 = v23;
  v93 = v21;
  v94 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v91 = v24;
  v92 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v91 = v24;
  v92 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v91 = v26;
  v92 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v91 = v26;
  v92 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v91 = v28;
  v92 = v29;
  swift_getOpaqueTypeMetadata2();
  v91 = v28;
  v92 = v29;
  swift_getOpaqueTypeConformance2();
  v65 = sub_1A34CAC50();
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v60 - v30;
  v31 = sub_1A34CAC30();
  v69 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v77 = &v60 - v32;
  v70 = v33;
  v72 = sub_1A34CAC30();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v68 = &v60 - v36;
  v80 = a2;
  v81 = a3;
  v82 = v78;
  sub_1A34CAC40();
  v60 = type metadata accessor for EditorSheetModifier();
  v37 = v73;
  sub_1A3337348(v60, v73);
  v62 = *MEMORY[0x1E697FF40];
  v38 = v79;
  v61 = *(v79 + 104);
  v39 = v74;
  v40 = v75;
  v61(v74);
  sub_1A34CB5E0();
  v41 = *(v38 + 8);
  v79 = v38 + 8;
  v41(v39, v40);
  v41(v37, v40);
  sub_1A34CCC80();
  v42 = v65;
  v43 = swift_getWitnessTable();
  v44 = v78;
  v45 = v60;
  v64 = v43;
  v46 = v63;
  sub_1A34CC2D0();
  (*(v66 + 8))(v46, v42);
  sub_1A3337348(v45, v37);
  (v61)(v39, v62, v40);
  v47 = sub_1A34CB5E0();
  v41(v39, v40);
  v41(v37, v40);
  if (v47)
  {
    v48 = (v44 + *(v45 + 52));
    v49 = *v48;
    v50 = v48[1];
    v91 = v49;
    v92 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
    sub_1A34CC740();
  }

  sub_1A34CCC80();
  v85 = v64;
  v86 = MEMORY[0x1E697E040];
  v58 = v70;
  v59 = swift_getWitnessTable();
  v51 = v67;
  v52 = v77;
  sub_1A34CC2E0();
  (*(v69 + 8))(v52, v58);
  v83 = v59;
  v84 = MEMORY[0x1E697EBF8];
  v53 = v72;
  v54 = swift_getWitnessTable();
  v55 = v68;
  sub_1A3345BC8(v51, v53, v54);
  v56 = *(v71 + 8);
  v56(v51, v53);
  sub_1A3345BC8(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_1A3338D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a1;
  v163 = a4;
  v162 = sub_1A34CB5D0();
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v159 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1A34CB9E0();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a2;
  v8 = a3;
  v165 = a3;
  v9 = type metadata accessor for EditorSheetModifier();
  v155 = *(v9 - 8);
  v153 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v106 - v10;
  v152 = sub_1A34CB5F0();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v106 - v13;
  v123 = sub_1A34CB100();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E78);
  v15 = sub_1A34CAC30();
  v119 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v106 - v16;
  v17 = sub_1A3284D0C(&qword_1EB0C06A8, &qword_1EB0C7E78);
  v177 = v8;
  v178 = v17;
  WitnessTable = swift_getWitnessTable();
  v173 = v15;
  v174 = WitnessTable;
  v19 = WitnessTable;
  v112 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v113 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E80);
  v173 = v15;
  v174 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8D40);
  v25 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  v173 = v24;
  v174 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeMetadata2;
  v107 = OpaqueTypeMetadata2;
  v173 = OpaqueTypeMetadata2;
  v174 = v22;
  v110 = v22;
  v175 = OpaqueTypeConformance2;
  v176 = v26;
  v109 = OpaqueTypeConformance2;
  v108 = v26;
  v28 = swift_getOpaqueTypeMetadata2();
  v127 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v106 - v29;
  v129 = v30;
  v31 = sub_1A34CAC30();
  v137 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v106 - v32;
  v33 = sub_1A34CAC30();
  v147 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v106 - v34;
  v173 = v27;
  v174 = v22;
  v175 = OpaqueTypeConformance2;
  v176 = v26;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = MEMORY[0x1E697E5D8];
  v115 = v35;
  v171 = v35;
  v172 = MEMORY[0x1E697E5D8];
  v138 = v31;
  v118 = swift_getWitnessTable();
  v169 = v118;
  v170 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_1A333B40C();
  v39 = MEMORY[0x1E69E7DE0];
  v173 = v33;
  v174 = MEMORY[0x1E69E7DE0];
  v175 = v37;
  v176 = v38;
  v40 = swift_getOpaqueTypeMetadata2();
  v133 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v130 = &v106 - v41;
  v134 = v33;
  v173 = v33;
  v174 = v39;
  v132 = v37;
  v175 = v37;
  v176 = v38;
  v125 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v173 = v40;
  v174 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v126 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v124 = &v106 - v44;
  v136 = v40;
  v173 = v40;
  v174 = v42;
  v122 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v173 = v43;
  v174 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v145 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v142 = &v106 - v47;
  v128 = v43;
  v173 = v43;
  v174 = v45;
  v117 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v148 = v46;
  v173 = v46;
  v174 = v48;
  v141 = v48;
  v146 = swift_getOpaqueTypeMetadata2();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v139 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v140 = &v106 - v51;
  v161 = v9;
  v52 = v131;
  v53 = *(sub_1A3337208() + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  v173 = v53;
  sub_1A333B668(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v54 = *(v53 + 48);
  sub_1A34C9010();

  v173 = v54;
  v55 = v114;
  v56 = v164;
  v57 = v165;
  sub_1A34CC2A0();
  v58 = v52;

  v59 = v121;
  v60 = v120;
  v61 = v123;
  (*(v121 + 104))(v120, *MEMORY[0x1E697C438], v123);
  v62 = v113;
  sub_1A34CC260();
  (*(v59 + 8))(v60, v61);
  (*(v119 + 8))(v55, v15);
  v166 = v56;
  v63 = v57;
  v64 = v111;
  v167 = v63;
  v168 = v58;
  v65 = v107;
  sub_1A34CC380();
  (*(v116 + 8))(v62, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  LOBYTE(v55) = sub_1A34CBA80();
  *(inited + 32) = v55;
  v67 = sub_1A34CBAB0();
  *(inited + 33) = v67;
  sub_1A34CBAD0();
  sub_1A34CBAD0();
  if (sub_1A34CBAD0() != v55)
  {
    sub_1A34CBAD0();
  }

  sub_1A34CBAD0();
  if (sub_1A34CBAD0() != v67)
  {
    sub_1A34CBAD0();
  }

  v68 = v135;
  v69 = v129;
  sub_1A34CC370();
  (*(v127 + 8))(v64, v69);
  sub_1A34CBAA0();
  v70 = v149;
  v71 = v161;
  sub_1A3337348(v161, v149);
  v72 = v151;
  v73 = v150;
  v74 = v152;
  (*(v151 + 104))(v150, *MEMORY[0x1E697FF40], v152);
  sub_1A34CB5E0();
  v75 = *(v72 + 8);
  v75(v73, v74);
  v75(v70, v74);
  v76 = v143;
  v77 = v138;
  sub_1A34CC370();
  (*(v137 + 8))(v68, v77);
  v78 = v155;
  v79 = v154;
  (*(v155 + 16))(v154, v58, v71);
  v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v81 = swift_allocObject();
  v82 = v165;
  *(v81 + 16) = v164;
  *(v81 + 24) = v82;
  (*(v78 + 32))(v81 + v80, v79, v71);
  v83 = v130;
  v84 = v134;
  sub_1A34CC080();

  (*(v147 + 8))(v76, v84);
  v85 = v156;
  sub_1A34CB9D0();
  v86 = v124;
  v87 = v136;
  sub_1A34CC280();
  (*(v157 + 8))(v85, v158);
  (*(v133 + 8))(v83, v87);
  v88 = v159;
  sub_1A34CB5C0();
  v89 = v142;
  v90 = v128;
  sub_1A34CC270();
  (*(v160 + 8))(v88, v162);
  (*(v126 + 8))(v86, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EB0);
  v91 = sub_1A34CB1C0();
  v92 = *(v91 - 8);
  v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1A34DAA10;
  v95 = (v58 + *(v71 + 52));
  v96 = *v95;
  v97 = v95[1];
  v173 = v96;
  v174 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  sub_1A34CC740();
  sub_1A34CB1B0();
  sub_1A33BE42C(v94);
  swift_setDeallocating();
  (*(v92 + 8))(v94 + v93, v91);
  swift_deallocClassInstance();
  v98 = v139;
  v99 = v148;
  v100 = v141;
  sub_1A34CC130();

  (*(v145 + 8))(v89, v99);
  v173 = v99;
  v174 = v100;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v140;
  v103 = v146;
  sub_1A3345BC8(v98, v146, v101);
  v104 = *(v144 + 8);
  v104(v98, v103);
  sub_1A3345BC8(v102, v103, v101);
  return (v104)(v102, v103);
}

uint64_t sub_1A333A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  sub_1A34CB440();
  v14 = a2;
  v15 = a3;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  sub_1A32B51E4();
  sub_1A34CA680();
  v11 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  MEMORY[0x1A58ECCD0](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A333A284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for EditorSheetModifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x45534F4C43, 0xE500000000000000);
  v17 = v16;
  (*(v8 + 16))(v10, a1, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v8 + 32))(v19 + v18, v10, v7);
  v29[0] = v15;
  v29[1] = v17;
  v26 = v29;
  v27 = 0x6B72616D78;
  v28 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  v20 = v23;
  sub_1A34CC1F0();
  return (*(v24 + 8))(v14, v20);
}

uint64_t sub_1A333A588@<X0>(void *a1@<X8>)
{
  result = sub_1A34CA7C0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A333A5B4()
{
  type metadata accessor for EditorSheetModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EA8);
  return sub_1A34CC750();
}

uint64_t static EditorSheetPresentationStateKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB0C7D48 = a1;
  return result;
}

uint64_t static EditorSheetPresentationStateKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1A333A760@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB0C7D48;
  return result;
}

char *sub_1A333A7AC(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

unint64_t sub_1A333A814()
{
  result = qword_1EB0C7D50;
  if (!qword_1EB0C7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7D50);
  }

  return result;
}

unint64_t sub_1A333A878()
{
  result = qword_1EB0C7D58;
  if (!qword_1EB0C7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7D60);
    sub_1A333A8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7D58);
  }

  return result;
}

unint64_t sub_1A333A8FC()
{
  result = qword_1EB0C7D68[0];
  if (!qword_1EB0C7D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB0C7D68);
  }

  return result;
}

void sub_1A333A950()
{
  sub_1A32BAFB8(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A32BAFB8(319, &qword_1ED8534C8, MEMORY[0x1E697FF50]);
    if (v1 <= 0x3F)
    {
      sub_1A333AF64(319, &qword_1ED853478, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1A333AF64(319, &qword_1EB0C8C00, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A333AAB0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A34CB5F0() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 8;
  v16 = v11 + 17;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((v15 + ((v13 + 24) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = (v15 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14)) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v28 = *(v8 + 48);

    return v28((v16 + v26) & ~v11);
  }

  else
  {
    v27 = *(v26 + 8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_1A333ACD8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A34CB5F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 8;
  v17 = ((*(v10 + 64) + ((v13 + 17 + ((v16 + (((v12 & 0xF8) + 24) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 17 + ((v16 + (((v12 & 0xF8) + 24) & ~v15)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v24 = (v16 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15)) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25((v13 + 17 + v24) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(v24 + 16) = 0;
        *v24 = a2 & 0x7FFFFFFF;
        *(v24 + 8) = 0;
      }

      else
      {
        *(v24 + 8) = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_1A333AF64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A333AFB4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A333B024(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A333B164(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1A333B40C()
{
  result = qword_1EB0C2A28;
  if (!qword_1EB0C2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A28);
  }

  return result;
}

uint64_t sub_1A333B460@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for EditorSheetModifier() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1A3338338(v6, v3, v4, a1);
}

unint64_t sub_1A333B4EC()
{
  result = qword_1EB0C7E98;
  if (!qword_1EB0C7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7E98);
  }

  return result;
}

uint64_t sub_1A333B558()
{
  type metadata accessor for EditorSheetModifier();

  return sub_1A333A5B4();
}

uint64_t sub_1A333B668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A333B6B0(uint64_t a1)
{
  v2 = type metadata accessor for PaletteButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A333B70C(uint64_t a1)
{
  v2 = sub_1A333B8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A333B748(uint64_t a1)
{
  v2 = sub_1A333B8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactLikeness.Monogram.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A333B8C0();
  sub_1A34CDFA0();
  sub_1A34CDD60();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A333B8C0()
{
  result = qword_1EB0C7ED0;
  if (!qword_1EB0C7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7ED0);
  }

  return result;
}

uint64_t ContactLikeness.Monogram.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7ED8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A333B8C0();
  sub_1A34CDF90();
  if (!v2)
  {
    v9 = sub_1A34CDCC0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A333BAA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A333B8C0();
  sub_1A34CDFA0();
  sub_1A34CDD60();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A333BC00()
{
  result = qword_1EB0C7EE0;
  if (!qword_1EB0C7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7EE0);
  }

  return result;
}

unint64_t sub_1A333BC58()
{
  result = qword_1EB0C7EE8;
  if (!qword_1EB0C7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7EE8);
  }

  return result;
}

unint64_t sub_1A333BCB0()
{
  result = qword_1EB0C7EF0;
  if (!qword_1EB0C7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7EF0);
  }

  return result;
}

void sub_1A333BD04(CGFloat a1@<X0>, CFIndex a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v101 = *MEMORY[0x1E69E9840];
  v11 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);

  v12 = [v11 init];
  [v12 setAlignment_];
  [v12 setAllowsDefaultTighteningForTruncation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DD060;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  v15 = MEMORY[0x1E69DB748];
  *(inited + 40) = a3;
  v16 = *v15;
  *(inited + 64) = v17;
  *(inited + 72) = v16;
  v18 = MEMORY[0x1E69E63B0];
  *(inited + 80) = a5;
  v19 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  *(inited + 144) = sub_1A31EC194(0, &qword_1ED8545C0);
  *(inited + 120) = v12;
  v86 = v14;
  v83 = a3;
  v20 = v16;
  v21 = v19;
  v22 = v12;
  sub_1A31FA3D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7F00);
  swift_arrayDestroy();
  v23 = sub_1A34CD0E0();

  type metadata accessor for Key(0);
  sub_1A31FA4F8();
  v24 = sub_1A34CCF70();

  v25 = CTLineCreateWithString();

  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  CTLineGetTypographicBounds(v25, &ascent, &descent, &leading);
  v26 = descent;
  v27 = ascent;
  v28 = leading;
  CGAffineTransformMakeScale(&v100, 1.0, -1.0);
  transform = v100;
  XHeight = 0.0;
  CGAffineTransformTranslate(&transform, &v100, 0.0, -v27);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v25, 1uLL);
  v100 = transform;
  v105 = CGRectApplyAffineTransform(BoundsWithOptions, &v100);
  x = v105.origin.x;
  y = v105.origin.y;
  height = v105.size.height;
  width = v105.size.width;
  v106 = CTLineGetBoundsWithOptions(v25, 0x10uLL);
  v100 = transform;
  v107 = CGRectApplyAffineTransform(v106, &v100);
  v77 = v107.origin.y;
  v78 = v107.origin.x;
  v75 = v107.size.height;
  v76 = v107.size.width;
  *&v92 = COERCE_DOUBLE(CGPathCreateMutable());
  v82 = v25;
  v31 = CTLineGetGlyphRuns(v25);
  objc_opt_self();
  v81 = v28;
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_49;
  }

  v100.a = 0.0;
  type metadata accessor for CTRun(0);
  sub_1A34CD360();

  if (!*&v100.a)
  {
LABEL_49:
    CapHeight = 0.0;
    v33 = v92;
    goto LABEL_50;
  }

  *&v32 = *&v100.a & 0xFFFFFFFFFFFFFF8;
  a = v100.a;
  v33 = v92;
  if (*&v100.a >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((*&v100.a & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A34CD9B0())
  {
    v72 = v22;
    v73 = a1;
    v74 = a2;
    v22 = 0;
    v35 = a;
    CapHeight = 0.0;
    XHeight = 0.0;
    v87 = i;
    v88 = v32;
    while (1)
    {
      if ((*&a & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1A58EF310](v22, *&v35);
      }

      else
      {
        if (v22 >= *(*&v32 + 16))
        {
          goto LABEL_56;
        }

        v36 = *(*&a + 32 + 8 * v22);
      }

      v37 = v36;
      if (__OFADD__(v22++, 1))
      {
        break;
      }

      GlyphCount = CTRunGetGlyphCount(v36);
      if (GlyphCount < 1)
      {

        if (v22 == i)
        {
          goto LABEL_47;
        }
      }

      else
      {
        a2 = GlyphCount;
        v40 = CTRunGetAttributes(v37);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          matrix.a = 0.0;
          sub_1A34CCF80();

          if (*&matrix.a)
          {
            v32 = matrix.a;
          }

          else
          {
            v32 = MEMORY[0x1E69E7CC8];
          }

          if (!*(*&v32 + 16))
          {
LABEL_23:

LABEL_24:
            a1 = COERCE_DOUBLE([objc_opt_self() systemFontOfSize_]);
            goto LABEL_25;
          }
        }

        else
        {

          v32 = MEMORY[0x1E69E7CC8];
          if (!*(MEMORY[0x1E69E7CC8] + 16))
          {
            goto LABEL_23;
          }
        }

        v41 = sub_1A31FA5B8(v86);
        if ((v42 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_1A31EE354(*(*&v32 + 56) + 32 * v41, &matrix);

        sub_1A31EC194(0, &qword_1ED8545B8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_24;
        }

        a1 = font.a;
LABEL_25:
        CapHeight = CTFontGetCapHeight(*&a1);
        XHeight = CTFontGetXHeight(*&a1);
        GlyphsPtr = CTRunGetGlyphsPtr(v37);
        run = v37;
        PositionsPtr = CTRunGetPositionsPtr(v37);
        if (GlyphsPtr && (p_x = &PositionsPtr->x) != 0)
        {
          do
          {
            v50 = *GlyphsPtr;
            v52 = *p_x;
            v51 = p_x[1];
            CGAffineTransformMakeScale(&font, 1.0, 1.0);
            matrix = font;
            v53 = CTFontCreatePathForGlyph(*&a1, v50, &matrix);
            if (v53)
            {
              v54 = v53;
              CGAffineTransformMakeTranslation(&v98, v52, v51);
              if (a6 > 0.0)
              {
                CopyByRoundingCorners = CGPathCreateCopyByRoundingCorners();
                if (CopyByRoundingCorners)
                {
                  v56 = CopyByRoundingCorners;

                  v54 = v56;
                }
              }

              sub_1A34CD6B0();
            }

            ++GlyphsPtr;
            p_x += 2;
            --a2;
          }

          while (a2);
        }

        else
        {
          v46 = sub_1A34CD3A0();
          *(v46 + 16) = a2;
          bzero((v46 + 32), 2 * a2);
          v102.location = 0;
          v102.length = a2;
          CTRunGetGlyphs(run, v102, (v46 + 32));
          type metadata accessor for CGPoint(0);
          v47 = sub_1A34CD3A0();
          *(v47 + 16) = a2;
          bzero((v47 + 32), 16 * a2);
          v103.location = 0;
          v103.length = a2;
          CTRunGetPositions(run, v103, (v47 + 32));
          v48 = *(v46 + 16);
          if (v48)
          {
            v33 = 0;
            v49 = (v47 + 40);
            while (v33 < *(v46 + 16))
            {
              v57 = *(v47 + 16);
              if (v33 == v57)
              {
                goto LABEL_45;
              }

              if (v33 >= v57)
              {
                goto LABEL_54;
              }

              *&v32 = *(v46 + 32 + 2 * v33);
              v58 = *(v49 - 1);
              v59 = *v49;
              CGAffineTransformMakeScale(&font, 1.0, 1.0);
              matrix = font;
              v60 = CTFontCreatePathForGlyph(*&a1, LOWORD(v32), &matrix);
              if (v60)
              {
                a2 = v60;
                CGAffineTransformMakeTranslation(&v100, v58, v59);
                if (a6 > 0.0)
                {
                  v61 = CGPathCreateCopyByRoundingCorners();
                  if (v61)
                  {
                    v62 = v61;

                    a2 = v62;
                  }
                }

                v32 = *&v92;
                sub_1A34CD6B0();
              }

              v33 = (v33 + 1);
              v49 += 2;
              if (v48 == v33)
              {
                goto LABEL_45;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
            break;
          }

LABEL_45:

          v33 = v92;
          v35 = a;
        }

        i = v87;
        v32 = v88;
        if (v22 == v87)
        {
LABEL_47:

          a1 = v73;
          a2 = v74;
          v22 = v72;
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  CapHeight = 0.0;
LABEL_50:
  v63 = v26;
  v64 = v33;
  v65 = CGPathCreateMutableCopyByTransformingPath(v64, &transform);
  v66 = v64;
  if (v65)
  {
    v67 = v65;

    v66 = v67;
  }

  PathBoundingBox = CGPathGetPathBoundingBox(v66);
  v68 = PathBoundingBox.origin.x;
  v69 = PathBoundingBox.origin.y;
  v70 = PathBoundingBox.size.width;
  v71 = PathBoundingBox.size.height;

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = x;
  *(a4 + 24) = y;
  *(a4 + 32) = width;
  *(a4 + 40) = height;
  *(a4 + 48) = v68;
  *(a4 + 56) = v69;
  *(a4 + 64) = v70;
  *(a4 + 72) = v71;
  *(a4 + 80) = v78;
  *(a4 + 88) = v77;
  *(a4 + 96) = v76;
  *(a4 + 104) = v75;
  *(a4 + 112) = v27;
  *(a4 + 120) = v63;
  *(a4 + 128) = v81;
  *(a4 + 136) = CapHeight;
  *(a4 + 144) = XHeight;
  *(a4 + 152) = v66;
}

uint64_t sub_1A333C5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1A333C5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1A333C664()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 272);
  if (*(v0 + 280) == 1)
  {
    return *(v0 + 272);
  }

  sub_1A34C9010();
  sub_1A34CD650();
  v7 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();
  sub_1A32141EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

void *ContactCardGeminiView.init(contact:actionsProvider:geminiManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 264) = 0;
  *(a4 + 272) = swift_getKeyPath();
  *(a4 + 280) = 0;
  sub_1A34CC730();
  *(a4 + 288) = v9;
  *(a4 + 296) = v10;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  *(a4 + 304) = sub_1A333F82C;
  *(a4 + 312) = result;
  *(a4 + 320) = 0;
  return result;
}

char *sub_1A333C870(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for ContactCardGeminiViewModel());
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a3;
  v9 = sub_1A342A844(v7, a2, v8);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t ContactCardGeminiView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7F10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7F18);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v13 = sub_1A34CA650();
  v14 = sub_1A3427AF4();

  if (v14)
  {
    sub_1A333CBF8(v2, v6);
    sub_1A34CCC80();
    sub_1A34CADA0();
    sub_1A329D98C(v6, v9, &qword_1EB0C7F10);
    v15 = &v9[*(v7 + 36)];
    v16 = v28;
    *(v15 + 4) = v27;
    *(v15 + 5) = v16;
    *(v15 + 6) = v29;
    v17 = v24;
    *v15 = v23;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 2) = v25;
    *(v15 + 3) = v18;
    sub_1A329D98C(v9, v12, &qword_1EB0C7F18);
    sub_1A329D98C(v12, a1, &qword_1EB0C7F18);
    return (*(v22 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a1, 1, 1, v7);
  }
}

uint64_t sub_1A333CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7F70);
  MEMORY[0x1EEE9AC00](v66);
  v55 = &v50[-v3];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7F68);
  v56 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v50[-v4];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7FB0);
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v50[-v5];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7FB8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v50[-v6];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7F60);
  v54 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v53 = &v50[-v7];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7F50);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v50[-v8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7FC0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v50[-v9];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7F40);
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v50[-v11];
  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v13 = sub_1A34CA650();
  v14 = v13;
  v15 = *(v13 + OBJC_IVAR____TtC14ContactsUICore26ContactCardGeminiViewModel_contact);
  if (!v15)
  {
    v16 = v13;
LABEL_10:

    goto LABEL_11;
  }

  v52 = v10;
  v16 = v15;
  if ([v16 isSuggested])
  {

LABEL_4:
    MEMORY[0x1EEE9AC00](v17);
    MEMORY[0x1EEE9AC00](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7FF0);
    sub_1A333FCF4();
    sub_1A3340198();
    sub_1A34CBC70();
    v19 = v52;
    v20 = v69;
    (*(v52 + 16))(v68, v12, v69);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&unk_1EB0C0618, &unk_1EB0C7F40);
    sub_1A333FB6C();
    sub_1A34CB3E0();
    return (*(v19 + 8))(v12, v20);
  }

  v22 = [v16 iOSLegacyIdentifier];
  if (v22 != *MEMORY[0x1E695C248])
  {

    goto LABEL_10;
  }

  v51 = [v16 isSuggestedMe];

  if ((v51 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  v23 = sub_1A34CA650();
  v24 = v23[OBJC_IVAR____TtC14ContactsUICore26ContactCardGeminiViewModel_useDualSimParity];

  if (v24 == 1)
  {
    MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7FD0);
    v27 = sub_1A333FCF4();
    sub_1A33400BC();
    v28 = v53;
    v29 = v66;
    sub_1A34CBC70();
    v30 = v54;
    v31 = v62;
    (*(v54 + 16))(v61, v28, v62);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C0628, &qword_1EB0C7F60);
    v32 = type metadata accessor for ContactCardGeminiPicker();
    v74[0] = v29;
    v74[1] = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = sub_1A3340014(&unk_1EB0C2108, type metadata accessor for ContactCardGeminiPicker);
    v74[0] = v64;
    v74[1] = v32;
    v74[2] = OpaqueTypeConformance2;
    v74[3] = v34;
    swift_getOpaqueTypeConformance2();
    v35 = v63;
    sub_1A34CB3E0();
    (*(v30 + 8))(v28, v31);
  }

  else
  {
    v36 = v55;
    sub_1A333DC90(v55);
    sub_1A334005C(a1, v74);
    v37 = swift_allocObject();
    memcpy((v37 + 16), v74, 0x141uLL);
    v38 = sub_1A333FCF4();
    v39 = v66;
    sub_1A34CBF50();

    sub_1A3288FDC(v36, &unk_1EB0C7F70);
    v40 = *(a1 + 296);
    v72 = *(a1 + 288);
    v73 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC760();
    sub_1A334005C(a1, v74);
    v41 = swift_allocObject();
    memcpy((v41 + 16), v74, 0x141uLL);
    v42 = type metadata accessor for ContactCardGeminiPicker();
    v74[0] = v39;
    v74[1] = v38;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_1A3340014(&unk_1EB0C2108, type metadata accessor for ContactCardGeminiPicker);
    v43 = v57;
    v44 = v64;
    v45 = v59;
    sub_1A34CC2F0();

    (*(v56 + 8))(v45, v44);
    v46 = v58;
    v47 = v65;
    (*(v58 + 16))(v61, v43, v65);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C0628, &qword_1EB0C7F60);
    v74[0] = v44;
    v74[1] = v42;
    v74[2] = v48;
    v74[3] = v49;
    swift_getOpaqueTypeConformance2();
    v35 = v63;
    sub_1A34CB3E0();
    (*(v46 + 8))(v43, v47);
  }

  sub_1A320464C(v35, v68);
  swift_storeEnumTagMultiPayload();
  sub_1A3284D0C(&unk_1EB0C0618, &unk_1EB0C7F40);
  sub_1A333FB6C();
  sub_1A34CB3E0();
  return sub_1A3288FDC(v35, &unk_1EB0C7F50);
}

uint64_t sub_1A333D794(uint64_t a1)
{
  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v2 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  __src[41] = __src[0];
  swift_getKeyPath();
  sub_1A334005C(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x141uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8008);
  sub_1A3284D0C(&qword_1EB0C8018, &qword_1EB0C8010);
  sub_1A3284D0C(&qword_1EB0C8000, &qword_1EB0C8008);
  return sub_1A34CC9C0();
}

uint64_t sub_1A333D9AC(__int128 *a1, uint64_t a2)
{
  *&v19[9] = *(a1 + 25);
  v3 = a1[1];
  v18 = *a1;
  *v19 = v3;
  v4 = a1[1];
  v20 = v18;
  v21 = v4;
  v5 = *&v19[16];
  sub_1A34CD450();
  sub_1A3340250(&v20, __src);
  sub_1A3340250(&v21, __src);
  v6 = v5;
  v7 = sub_1A34CD440();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *v19;
  *(v8 + 32) = v18;
  *(v8 + 48) = v10;
  *(v8 + 57) = *&v19[9];
  sub_1A334005C(a2, __src);
  sub_1A3340250(&v20, v16);
  sub_1A3340250(&v21, v16);
  v11 = v6;
  v12 = sub_1A34CD440();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  memcpy((v13 + 32), __src, 0x141uLL);
  v14 = *v19;
  *(v13 + 360) = v18;
  *(v13 + 376) = v14;
  *(v13 + 385) = *&v19[9];
  sub_1A34CC940();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8020);
  sub_1A3284D0C(&unk_1EB0C8028, &qword_1EB0C8020);
  return sub_1A34CC870();
}

uint64_t sub_1A333DBBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1A328A95C();

  v4 = sub_1A34CBE30();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1A33402D0(*(a1 + 16), *(a1 + 24));
  sub_1A3285BB4(v4, v6, v8 & 1);

  sub_1A328A9B0(v4, v6, v8 & 1);

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_1A333DC90@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1A34CB220();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A34CB7E0();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8088);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v28 = sub_1A34CB110();
  LOBYTE(v40) = 1;
  sub_1A333EFDC(v1, v36);
  v51 = *&v36[64];
  v52 = *&v36[80];
  v53 = *&v36[96];
  v54 = *&v36[112];
  v47 = *v36;
  v48 = *&v36[16];
  v49 = *&v36[32];
  v50 = *&v36[48];
  v55[0] = *v36;
  v55[1] = *&v36[16];
  v55[2] = *&v36[32];
  v55[3] = *&v36[48];
  v55[4] = *&v36[64];
  v55[5] = *&v36[80];
  v55[6] = *&v36[96];
  v56 = *&v36[112];
  sub_1A33406AC(&v47, v35);
  sub_1A3288FDC(v55, &qword_1EB0C8090);
  *(&v37[4] + 7) = v51;
  *(&v37[5] + 7) = v52;
  *(&v37[6] + 7) = v53;
  *(v37 + 7) = v47;
  *(&v37[1] + 7) = v48;
  *(&v37[2] + 7) = v49;
  *(&v37[7] + 7) = v54;
  *(&v37[3] + 7) = v50;
  v12 = v40;
  v13 = sub_1A34CC500();
  v14 = sub_1A34CBA90();
  sub_1A34CA460();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v38 = 0;
  sub_1A34CCC80();
  sub_1A34CADA0();
  *&v39[55] = v43;
  *&v39[71] = v44;
  *&v39[87] = v45;
  *&v39[103] = v46;
  *&v39[7] = v40;
  *&v39[23] = v41;
  *&v39[39] = v42;
  *&v35[81] = v37[4];
  *&v35[97] = v37[5];
  *&v35[113] = v37[6];
  *&v35[128] = *(&v37[6] + 15);
  *&v35[17] = v37[0];
  *&v35[33] = v37[1];
  *&v35[49] = v37[2];
  *v35 = v28;
  *&v35[8] = 0;
  v35[16] = v12;
  *&v35[65] = v37[3];
  *&v35[144] = v13;
  v35[152] = v14;
  *&v35[160] = v16;
  *&v35[168] = v18;
  *&v35[176] = v20;
  *&v35[184] = v22;
  v35[192] = 0;
  *&v35[273] = *&v39[80];
  *&v35[289] = *&v39[96];
  *&v35[257] = *&v39[64];
  *&v35[241] = *&v39[48];
  *&v35[225] = *&v39[32];
  *&v35[209] = *&v39[16];
  *&v35[193] = *v39;
  *&v35[304] = *(&v46 + 1);
  sub_1A34CB7D0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7F80);
  v24 = sub_1A333FE20(&qword_1EB0C0A68, &qword_1EB0C7F80, &unk_1A34E7450, sub_1A333FEA4);
  sub_1A34CC140();
  (*(v5 + 8))(v7, v29);
  memcpy(v36, v35, sizeof(v36));
  sub_1A3288FDC(v36, &qword_1EB0C7F80);
  sub_1A34CB210();
  *v35 = v23;
  *&v35[8] = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  sub_1A34CC1B0();
  (*(v32 + 8))(v4, v33);
  return (*(v31 + 8))(v11, v25);
}

uint64_t sub_1A333E184(uint64_t a1)
{
  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v2 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  __src[41] = __src[0];
  swift_getKeyPath();
  sub_1A334005C(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x141uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7FE8);
  sub_1A3284D0C(&qword_1EB0C8018, &qword_1EB0C8010);
  sub_1A3284D0C(&qword_1EB0C7FE0, &qword_1EB0C7FE8);
  return sub_1A34CC9C0();
}

uint64_t sub_1A333E39C(__int128 *a1, uint64_t a2)
{
  *&v19[9] = *(a1 + 25);
  v3 = a1[1];
  v18 = *a1;
  *v19 = v3;
  v4 = a1[1];
  v20 = v18;
  v21 = v4;
  v5 = *&v19[16];
  sub_1A34CD450();
  sub_1A3340250(&v20, __src);
  sub_1A3340250(&v21, __src);
  v6 = v5;
  v7 = sub_1A34CD440();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *v19;
  *(v8 + 32) = v18;
  *(v8 + 48) = v10;
  *(v8 + 57) = *&v19[9];
  sub_1A334005C(a2, __src);
  sub_1A3340250(&v20, v16);
  sub_1A3340250(&v21, v16);
  v11 = v6;
  v12 = sub_1A34CD440();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  memcpy((v13 + 32), __src, 0x141uLL);
  v14 = *v19;
  *(v13 + 360) = v18;
  *(v13 + 376) = v14;
  *(v13 + 385) = *&v19[9];
  sub_1A34CC940();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8070);
  sub_1A3284D0C(&qword_1EB0C8078, &qword_1EB0C8070);
  return sub_1A34CC870();
}

uint64_t sub_1A333E5AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1A328A95C();

  v4 = sub_1A34CBE30();
  v24 = v5;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v23 = v9;
  v26 = sub_1A33402D0(*(a1 + 16), *(a1 + 24));
  v8 &= 1u;
  sub_1A3285BB4(v4, v6, v8);

  sub_1A328A9B0(v4, v6, v8);

  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v10 = sub_1A34CA650();
  sub_1A342B62C(*(a1 + 32));

  v11 = sub_1A34CBE30();
  v13 = v12;
  v15 = v14;
  sub_1A34CB590();
  v16 = sub_1A34CBDF0();
  v18 = v17;
  LOBYTE(v4) = v19;
  v21 = v20;
  sub_1A328A9B0(v11, v13, v15 & 1);

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v8;
  *(a2 + 24) = v23;
  *(a2 + 32) = v26;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v4 & 1;
  *(a2 + 64) = v21;
  sub_1A3285BB4(v25, v24, v8);

  sub_1A34C9010();
  sub_1A3285BB4(v16, v18, v4 & 1);

  sub_1A328A9B0(v16, v18, v4 & 1);

  sub_1A328A9B0(v25, v24, v8);
}

uint64_t sub_1A333E884@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  sub_1A34CA650();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for ContactCardGeminiPicker() + 20));
  result = sub_1A34CAA00();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void sub_1A333E974(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1)
  {
    type metadata accessor for ContactCardGeminiViewModel();
    sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
    v6 = sub_1A34CA650();
    sub_1A3429114(*(a5 + 32));
  }

  type metadata accessor for ContactCardGeminiViewModel();
  sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v9 = sub_1A34CA650();
  v7 = [objc_allocWithZone(MEMORY[0x1E69968B8]) init];
  v8 = OBJC_IVAR____TtC14ContactsUICore26ContactCardGeminiViewModel_didSelectDifferentLine;
  sub_1A34299C0(v9[OBJC_IVAR____TtC14ContactsUICore26ContactCardGeminiViewModel_didSelectDifferentLine]);

  v9[v8] = 0;
}

uint64_t sub_1A333EAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8040);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v35 = sub_1A34C9410();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8050);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CB8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8060);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  v23 = sub_1A34CBDC0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CBD50();
  v27 = sub_1A34CBD60();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  v28 = sub_1A34CBD70();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  sub_1A34CBD90();
  v29 = sub_1A34CBDA0();
  (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
  v30 = sub_1A34CBD40();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  sub_1A34CBDB0();
  sub_1A34C9400();
  (*(v24 + 16))(v5, v26, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  sub_1A3332DB4();
  sub_1A34C9420();
  v31 = v35;
  (*(v6 + 16))(v34, v10, v35);

  sub_1A34C93C0();
  (*(v6 + 8))(v10, v31);
  return (*(v24 + 8))(v26, v23);
}

uint64_t sub_1A333EFDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8098);
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v76[-v3];
  v4 = sub_1A34C93B0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 304);
  v7 = *(a1 + 312);
  v8 = type metadata accessor for ContactCardGeminiViewModel();
  v9 = sub_1A3340014(&qword_1EB0C1C00, type metadata accessor for ContactCardGeminiViewModel);
  v10 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v83 = sub_1A328A95C();
  v11 = sub_1A34CBE30();
  v13 = v12;
  v15 = v14;
  sub_1A34CBB10();
  v16 = sub_1A34CBE10();
  v91 = v17;
  v92 = v16;
  v84 = v18;
  v90 = v19;

  sub_1A328A9B0(v11, v13, v15 & 1);

  KeyPath = v7;
  v88 = v6;
  v89 = v9;
  v20 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v21 = v95;
  if (!v95)
  {

    goto LABEL_7;
  }

  v22 = [v95 channel];

  v23 = [v22 isAvailable];
  if (!v23)
  {
LABEL_7:
    v86 = 0;
    v81 = 0;
    v82 = 0;
    v80 = 0;
    goto LABEL_8;
  }

  v79 = v8;
  v24 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v25 = v95;
  v26 = v96;
  sub_1A31EC930();
  sub_1A34CC500();
  v27 = sub_1A34CD800();
  sub_1A33328A8(v27, v25, v26, v81);

  v28 = sub_1A34CBE20();
  v30 = v29;
  v32 = v31;
  if (qword_1EB0C1DE8 != -1)
  {
    swift_once();
  }

  v33 = sub_1A34CBE10();
  v80 = v35;
  v81 = v34;
  v37 = v36;
  sub_1A328A9B0(v28, v30, v32 & 1);

  v38 = sub_1A34CC490();
  v39 = *(v82 + 36);
  v40 = *MEMORY[0x1E6981DC0];
  v41 = sub_1A34CCD00();
  v42 = v86;
  (*(*(v41 - 8) + 104))(v86 + v39, v40, v41);
  *v42 = v38;
  sub_1A3284D0C(&qword_1EB0C07C8, &qword_1EB0C8098);
  v43 = v81;
  v44 = sub_1A34CBDF0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1A328A9B0(v33, v43, v37 & 1);

  sub_1A3288FDC(v42, &qword_1EB0C8098);
  v86 = v44;
  v82 = v46;
  v80 = v48 & 1;
  sub_1A3285BB4(v44, v46, v48 & 1);
  v81 = v50;

LABEL_8:
  v51 = sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v52 = sub_1A34CBE30();
  v54 = v53;
  v56 = v55;
  sub_1A34CBB10();
  v79 = sub_1A34CBE10();
  v78 = v57;
  v77 = v58;
  v83 = v59;

  sub_1A328A9B0(v52, v54, v56 & 1);

  v60 = sub_1A34CA650();

  v61 = sub_1A34CC5E0();
  v88 = sub_1A34CBB10();
  KeyPath = swift_getKeyPath();
  LOBYTE(v95) = v84 & 1;
  v94 = v84 & 1;
  v62 = v77 & 1;
  v93 = v77 & 1;
  LODWORD(v89) = v77 & 1;
  sub_1A3285BB4(v92, v91, v84 & 1);
  v63 = v90;

  v64 = v86;
  v66 = v81;
  v65 = v82;
  v67 = v80;
  sub_1A334071C(v86, v82, v80, v81);
  v68 = v79;
  v69 = v78;
  sub_1A3285BB4(v79, v78, v62);
  v70 = v83;

  sub_1A34C9010();
  sub_1A34C9010();
  v71 = v88;
  sub_1A34C9010();
  sub_1A3340760(v64, v65, v67, v66);
  v72 = v94;
  v73 = v93;
  v74 = v85;
  *v85 = v92;
  v74[1] = v91;
  *(v74 + 16) = v72;
  v74[3] = v63;
  v74[4] = v64;
  v74[5] = v65;
  v74[6] = v67;
  v74[7] = v66;
  v74[8] = v68;
  v74[9] = v69;
  *(v74 + 80) = v73;
  v74[11] = v70;
  v74[12] = v61;
  v74[13] = KeyPath;
  v74[14] = v71;

  sub_1A328A9B0(v68, v69, v89);

  sub_1A3340760(v64, v65, v67, v66);
  sub_1A328A9B0(v92, v91, v95);
}

uint64_t sub_1A333F7D8@<X0>(void *a1@<X8>)
{
  result = sub_1A34CAE40();
  *a1 = v3;
  return result;
}

uint64_t sub_1A333F868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 321))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 296);
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

uint64_t sub_1A333F8C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 0;
    }

    if (a2)
    {
      *(result + 296) = a2;
    }
  }

  return result;
}

unint64_t sub_1A333F980()
{
  result = qword_1EB0C0D78;
  if (!qword_1EB0C0D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F20);
    sub_1A333FE20(&qword_1EB0C0D88, &qword_1EB0C7F18, &unk_1A34E7228, sub_1A333FA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D78);
  }

  return result;
}

unint64_t sub_1A333FA30()
{
  result = qword_1EB0C05C0;
  if (!qword_1EB0C05C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7F10);
    sub_1A333FAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05C0);
  }

  return result;
}

unint64_t sub_1A333FAB4()
{
  result = qword_1EB0C0878;
  if (!qword_1EB0C0878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F30);
    sub_1A3284D0C(&unk_1EB0C0618, &unk_1EB0C7F40);
    sub_1A333FB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0878);
  }

  return result;
}

unint64_t sub_1A333FB6C()
{
  result = qword_1EB0C0888;
  if (!qword_1EB0C0888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F50);
    sub_1A3284D0C(&qword_1EB0C0628, &qword_1EB0C7F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7F68);
    type metadata accessor for ContactCardGeminiPicker();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F70);
    sub_1A333FCF4();
    swift_getOpaqueTypeConformance2();
    sub_1A3340014(&unk_1EB0C2108, type metadata accessor for ContactCardGeminiPicker);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0888);
  }

  return result;
}

unint64_t sub_1A333FCF4()
{
  result = qword_1EB0C0DC8;
  if (!qword_1EB0C0DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7F80);
    sub_1A333FE20(&qword_1EB0C0A68, &qword_1EB0C7F80, &unk_1A34E7450, sub_1A333FEA4);
    swift_getOpaqueTypeConformance2();
    sub_1A3340014(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DC8);
  }

  return result;
}

uint64_t sub_1A333FE20(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A333FEA4()
{
  result = qword_1EB0C0B40;
  if (!qword_1EB0C0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F88);
    sub_1A333FF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B40);
  }

  return result;
}

unint64_t sub_1A333FF30()
{
  result = qword_1EB0C0D00;
  if (!qword_1EB0C0D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7F98);
    sub_1A3284D0C(&qword_1EB0C04C0, &qword_1EB0C7FA8);
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D00);
  }

  return result;
}

uint64_t sub_1A3340014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3340094(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  else
  {
  }
}

unint64_t sub_1A33400BC()
{
  result = qword_1EB0C7FD8;
  if (!qword_1EB0C7FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7FD0);
    sub_1A3284D0C(&qword_1EB0C7FE0, &qword_1EB0C7FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7FD8);
  }

  return result;
}

unint64_t sub_1A3340198()
{
  result = qword_1EB0C7FF8;
  if (!qword_1EB0C7FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7FF0);
    sub_1A3284D0C(&qword_1EB0C8000, &qword_1EB0C8008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7FF8);
  }

  return result;
}

uint64_t sub_1A33402D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34C93B0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A333EAE0(a1, a2, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[0] = sub_1A34CBE20();
  v16[1] = v6;
  v17 = v7 & 1;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8038);
  swift_allocObject();
  MEMORY[0x1A58EC060](v16);
  sub_1A333C664();
  sub_1A34CA820();
  if (sub_1A34CA800())
  {
    v9 = sub_1A34CC5C0();
  }

  else
  {
    if (qword_1EB0C12C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1A34CA250();
    __swift_project_value_buffer(v10, qword_1EB0ED068);
    v11 = sub_1A34CA230();
    v12 = sub_1A34CD640();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A31E6000, v11, v12, "Failed to create UIImage from badge string", v13, 2u);
      MEMORY[0x1A58F1010](v13, -1, -1);
    }

    v9 = sub_1A34CC5E0();
  }

  v14 = v9;

  return v14;
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 280) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 48);

    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0(v0 + 232);
  }

  sub_1A32141EC(*(v0 + 288), *(v0 + 296));

  sub_1A3340094(*(v0 + 320), *(v0 + 328), *(v0 + 336));

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 296) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 64);

    __swift_destroy_boxed_opaque_existential_0(v0 + 120);
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
    __swift_destroy_boxed_opaque_existential_0(v0 + 200);
    __swift_destroy_boxed_opaque_existential_0(v0 + 248);
  }

  sub_1A32141EC(*(v0 + 304), *(v0 + 312));

  sub_1A3340094(*(v0 + 336), *(v0 + 344), *(v0 + 352));

  return swift_deallocObject();
}

uint64_t sub_1A33406AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A334071C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3285BB4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1A3340760(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A328A9B0(result, a2, a3 & 1);
  }

  return result;
}

double sub_1A33407E8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1A33407FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A33452F8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.posterLayoutPreferences.getter()
{
  sub_1A33408A8();

  return sub_1A34CB0E0();
}

unint64_t sub_1A33408A8()
{
  result = qword_1EB0C0940;
  if (!qword_1EB0C0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0940);
  }

  return result;
}

double sub_1A33408FC@<D0>(uint64_t a1@<X8>)
{
  sub_1A33408A8();
  sub_1A34CB0E0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*EnvironmentValues.posterLayoutPreferences.modify(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *(v3 + 88) = sub_1A33408A8();
  sub_1A34CB0E0();
  return sub_1A3340A80;
}

void sub_1A3340A80(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  v1[72] = v2;
  sub_1A34CB0F0();

  free(v1);
}

void ContactPosterScrollGeometry.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void ContactPosterScrollGeometry.init(contentOffset:contentInsets:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

uint64_t static ContactPosterScrollGeometry.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1A34CA450();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3340B88(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1A34CA450();
  }

  else
  {
    return 0;
  }
}

uint64_t PosterLayoutPreferencesChangeModifier.init(onChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PosterLayoutPreferencesChangeModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80A0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80A8) + 36));
  *v9 = sub_1A3340CA0;
  v9[1] = v7;

  return sub_1A34C9010();
}

uint64_t sub_1A3340CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80A0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80A8) + 36));
  *v9 = sub_1A3345BE4;
  v9[1] = v7;

  return sub_1A34C9010();
}

__n128 sub_1A3340DAC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1A3340DF0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

BOOL static PosterLayoutPreferencesValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_beginAccess();
  v9.origin.x = v4;
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  return CGRectEqualToRect(v9, *(a2 + 16));
}

BOOL sub_1A3340F24(double **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v9.origin.x = v4;
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  return CGRectEqualToRect(v9, *(v3 + 16));
}
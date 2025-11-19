uint64_t TestContactAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v28 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v25 = *a6;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v13 = v7 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  *v13 = 0;
  *(v13 + 8) = 768;
  v14 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__primaryCaption;
  v15 = *(a6 + 8);
  v16 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v7 + v14, 1, 1, v16);
  v17(v7 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__secondaryCaption, 1, 1, v16);
  v17(v7 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__bodyCaption, 1, 1, v16);
  v17(v7 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__detailCaption, 1, 1, v16);
  sub_1C2E71A94();
  sub_1C2DD318C(v28, v7 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C736A4(a2, v12, &qword_1EC05E0F0);
  TestContactAvatarTileState.primaryCaption.setter(v12);
  v18 = v23;
  sub_1C2C736A4(v23, v12, &qword_1EC05E0F0);
  TestContactAvatarTileState.secondaryCaption.setter(v12);
  v19 = v26;
  sub_1C2C736A4(v26, v12, &qword_1EC05E0F0);
  TestContactAvatarTileState.bodyCaption.setter(v12);
  swift_getKeyPath();
  v20 = v25;
  v29 = v7;
  v30 = v25;
  v31 = v15;
  v32 = v7;
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();
  sub_1C2CC2664(v20, v15);

  v21 = v27;
  sub_1C2C736A4(v27, v12, &qword_1EC05E0F0);
  TestContactAvatarTileState.detailCaption.setter(v12);
  sub_1C2C73644(v21, &qword_1EC05E0F0);
  sub_1C2C73644(v19, &qword_1EC05E0F0);
  sub_1C2C73644(v18, &qword_1EC05E0F0);
  sub_1C2C73644(v24, &qword_1EC05E0F0);
  sub_1C2C734EC(v28, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return v7;
}

uint64_t TestContactAvatarTileState.deinit()
{
  sub_1C2C73644(v0 + 16, &unk_1EC061C40);
  sub_1C2C734EC(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2CC2664(*(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration + 8));
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__primaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__secondaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__bodyCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__detailCaption, &qword_1EC05E0F0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TestContactAvatarTileState.__deallocating_deinit()
{
  sub_1C2C73644(v0 + 16, &unk_1EC061C40);
  sub_1C2C734EC(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2CC2664(*(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration + 8));
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__primaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__secondaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__bodyCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__detailCaption, &qword_1EC05E0F0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C2DD1680(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.primaryCaption.modify(v2);
  return sub_1C2CF84BC;
}

void (*sub_1C2DD172C(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.secondaryCaption.modify(v2);
  return sub_1C2CF84BC;
}

void (*sub_1C2DD17D8(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.detailCaption.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2DD1860@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v6 = *a1;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v6, a2, &qword_1EC05E0F0);
}

void (*sub_1C2DD1960(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.bodyCaption.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2DD19D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v4 = v3 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  *a1 = *v4;
  v6 = *(v4 + 8);
  *(a1 + 8) = v6;
  return sub_1C2DD32B0(v5, v6);
}

uint64_t sub_1C2DD1AA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();
  sub_1C2CC2664(v1, v2);
}

void (*sub_1C2DD1B90(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.buttonConfiguration.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2DD1C04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C736A4(v3 + 16, a1, &unk_1EC061C40);
}

uint64_t sub_1C2DD1CD4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &unk_1EC061C40);
}

void (*sub_1C2DD1DB8(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.playable.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2DD1E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2DD318C(v3 + v4, a1, type metadata accessor for ContactAvatarTileView.ImageStyle);
}

void (*sub_1C2DD1F2C(uint64_t **a1))(void *)
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
  v2[4] = TestContactAvatarTileState.avatarImageStyle.modify(v2);
  return sub_1C2CF6D08;
}

char *sub_1C2DD1FA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C2DD20A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1C2DD2198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C2DD22A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2DD2400(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C2DD2554(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2DD26B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2DD27F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C2DD292C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C2DD2B08(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C69272B0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C69272B0](*&v3);
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO07ClippedG13ConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *a1;
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1C2C70B1C(v10, v4, 1u);
    }

    else
    {
      sub_1C2C70B1C(v10, v4, 2u);
      v11 = [v5 description];
      v12 = sub_1C2E75C64();
      v14 = v13;

      sub_1C2C77608(v5, v4, 2u);
      v5 = v12;
      v4 = v14;
    }
  }

  else
  {
    sub_1C2C70B1C(v10, v4, 0);
  }

  if (!v9)
  {
    v15 = 0;
LABEL_10:
    sub_1C2C70B1C(v8, v7, v15);
    if (v5 != v8)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v9 == 1)
  {
    v15 = 1;
    goto LABEL_10;
  }

  sub_1C2C70B1C(v8, v7, 2u);
  v16 = [v8 description];
  v17 = sub_1C2E75C64();
  v19 = v18;

  sub_1C2C77608(v8, v7, 2u);
  v7 = v19;
  if (v5 != v17)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v4 == v7)
  {

    goto LABEL_16;
  }

LABEL_15:
  v20 = sub_1C2E767A4();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v21 = *(a1 + 24);
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v21 == 0.0)
    {
      if (v22 != 0.0)
      {
        LOBYTE(v23) = 0;
      }

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v22 == 0.0)
      {
        v23 = 0;
      }

      if (v23 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v21 != v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a2 + 40);
  if (*(a1 + 56))
  {
    if (v24 == v25)
    {
      v26 = *(a2 + 56);
    }

    else
    {
      v26 = 0;
    }

    if ((v26 & 1) == 0)
    {
      return 0;
    }

LABEL_38:
    if (*(a1 + 57) == *(a2 + 57))
    {
      v28 = *(a1 + 72);
      v37 = *(a1 + 64);
      v38 = v28;
      v29 = *(a2 + 72);
      v35 = *(a2 + 64);
      v36 = v29;
      sub_1C2D29128(v37, v28);
      sub_1C2D29128(v35, v29);
      v30 = _s16CommunicationsUI26ClippedImageBackgroundViewV0E5StyleO2eeoiySbAE_AEtFZ_0(&v37, &v35);
      sub_1C2D29144(v35, v36);
      sub_1C2D29144(v37, v38);
      if (v30)
      {
        v31 = *(type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0) + 36);
        v32 = a1 + v31;
        v33 = a2 + v31;
        if (sub_1C2E74ED4())
        {
          v34 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
          if (_s16CommunicationsUI12ClippedImageV0D4SizeO2eeoiySbAE_AEtFZ_0(v32 + *(v34 + 20), v33 + *(v34 + 20)))
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  result = 0;
  if (v24 == v25 && *(a1 + 48) == *(a2 + 48))
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV15ForegroundStyleO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 < 0x40)
    {
      sub_1C2DD30A8(*a2, *(a2 + 8), v7);
      sub_1C2DD30A8(v3, v2, v4);
      v15 = sub_1C2E74ED4();
      sub_1C2DD3E18(v3, v2, v4);
      sub_1C2DD3E18(v6, v5, v7);
      return v15 & 1;
    }

    goto LABEL_20;
  }

  if (v4 >> 6 != 1)
  {
    if ((v7 & 0xC0) == 0x80)
    {
      sub_1C2DD3E18(*a1, v2, v4);
      sub_1C2DD3E18(v6, v5, v7);
      v14 = v4 & v7;
      v17 = *&v3 == *&v6;
      if (*&v2 != *&v5)
      {
        v17 = 0;
      }

      if (v7)
      {
        v17 = v4 & v7;
      }

      if ((v4 & 1) == 0)
      {
        v14 = v17;
      }

      return v14 & 1;
    }

    goto LABEL_20;
  }

  if ((v7 & 0xC0) != 0x40)
  {
LABEL_20:
    sub_1C2DD30A8(v6, v5, v7);
    sub_1C2DD3E18(v3, v2, v4);
    sub_1C2DD3E18(v6, v5, v7);
    v14 = 0;
    return v14 & 1;
  }

  v8 = sub_1C2E75C94();
  v10 = v9;
  if (v8 == sub_1C2E75C94() && v10 == v11)
  {
    sub_1C2DD3E18(v3, v2, v4);
    sub_1C2DD3E18(v6, v5, v7);

LABEL_23:
    v14 = *&v2 == *&v5;
    return v14 & 1;
  }

  v13 = sub_1C2E767A4();
  sub_1C2DD3E18(v3, v2, v4);
  sub_1C2DD3E18(v6, v5, v7);

  v14 = 0;
  if (v13)
  {
    goto LABEL_23;
  }

  return v14 & 1;
}

uint64_t sub_1C2DD30A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_1C2DD30DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DD3124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2DD318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2DD324C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DD32B0(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0xFF00) != 0x300)
  {
    return sub_1C2CC290C(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2DD32E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C2C736A4(a1, &v20 - v12, &qword_1EC05E0F0);
  sub_1C2C736A4(a2, &v13[v15], &qword_1EC05E0F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C2C736A4(v13, v10, &qword_1EC05E0F0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1C2DD3124(&v13[v15], v7, type metadata accessor for ContactAvatarTileView.Caption);
      v18 = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1C2C734EC(v7, type metadata accessor for ContactAvatarTileView.Caption);
      sub_1C2C734EC(v10, type metadata accessor for ContactAvatarTileView.Caption);
      sub_1C2C73644(v13, &qword_1EC05E0F0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1C2C734EC(v10, type metadata accessor for ContactAvatarTileView.Caption);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v13, &qword_1EC062AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v13, &qword_1EC05E0F0);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1C2DD365C()
{
  result = qword_1EC062A38;
  if (!qword_1EC062A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062A38);
  }

  return result;
}

unint64_t sub_1C2DD36B4()
{
  result = qword_1EC062A40;
  if (!qword_1EC062A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062A40);
  }

  return result;
}

unint64_t sub_1C2DD379C()
{
  result = qword_1EC062A50;
  if (!qword_1EC062A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062A50);
  }

  return result;
}

unint64_t sub_1C2DD37F4()
{
  result = qword_1EC062A58;
  if (!qword_1EC062A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062A58);
  }

  return result;
}

uint64_t sub_1C2DD3890(uint64_t a1)
{
  result = sub_1C2DD30DC(&qword_1EC062A68, type metadata accessor for TestContactAvatarTileState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DD38E8(uint64_t a1)
{
  result = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DD3A6C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

void sub_1C2DD3AB8()
{
  if (!qword_1EC05CA48)
  {
    sub_1C2E71784();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC061C20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC05CA48);
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C2DD3B74()
{
  result = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2DD3C3C()
{
  type metadata accessor for ContactAvatarTileView.ImageStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1C2DD3DB4(319, &qword_1EC05BFE8, type metadata accessor for ContactAvatarTileView.Caption, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C2E71AA4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2DD3DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C2DD3E18(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_1C2DD3E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2DD3E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_1C2DD3F2C()
{
  sub_1C2DD3DB4(319, &unk_1EC05B210, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C2DD3DB4(319, &qword_1EC05CBF8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2DD4048()
{
  result = qword_1EC062AE8;
  if (!qword_1EC062AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062AD0);
    sub_1C2DD4100();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062AE8);
  }

  return result;
}

unint64_t sub_1C2DD4100()
{
  result = qword_1EC062AF0;
  if (!qword_1EC062AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062AF8);
    sub_1C2DD30DC(&qword_1EC062B00, MEMORY[0x1E697EAF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062AF0);
  }

  return result;
}

unint64_t sub_1C2DD41BC()
{
  result = qword_1EC062B18;
  if (!qword_1EC062B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062B20);
    sub_1C2DD4048();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062AD8);
    sub_1C2C94F38(&qword_1EC062AE0, &qword_1EC062AD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062B18);
  }

  return result;
}

unint64_t sub_1C2DD42C0()
{
  result = qword_1EC05B930;
  if (!qword_1EC05B930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062B10);
    sub_1C2C94F38(&qword_1EC05B4B0, &qword_1EC062B08);
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B930);
  }

  return result;
}

id sub_1C2DD43E0()
{
  result = [objc_allocWithZone(type metadata accessor for ApertureController()) init];
  qword_1EC05C2D0 = result;
  return result;
}

id static ApertureController.shared.getter()
{
  if (qword_1EC05C2C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC05C2D0;

  return v1;
}

void static ApertureController.clientBundleIdentifier.getter()
{
  if (qword_1EC062B30)
  {
    goto LABEL_4;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1C2E75C64();

LABEL_4:

    return;
  }

  __break(1u);
}

uint64_t static ApertureController.clientBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  qword_1EC062B28 = a1;
  qword_1EC062B30 = a2;
}

void static ApertureController.clientBundleIdentifier.modify(uint64_t *a1)
{
  if (qword_1EC062B30)
  {
    v2 = qword_1EC062B28;
    v3 = qword_1EC062B30;
LABEL_5:
    *a1 = v2;
    a1[1] = v3;

    return;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v2 = sub_1C2E75C64();
    v3 = v7;

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1C2DD461C(uint64_t *a1)
{
  v1 = a1[1];
  qword_1EC062B28 = *a1;
  qword_1EC062B30 = v1;
}

char *ApertureController.elementProvider.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
  v3 = v2;
  if (v2)
  {
    goto LABEL_4;
  }

  v4 = v0;
  v5 = [objc_allocWithZone(type metadata accessor for ApertureBannerElement()) init];
  v6 = objc_allocWithZone(type metadata accessor for ApertureBannerViewController());
  v3 = sub_1C2DEA8A4(v5);

  result = [v3 view];
  if (result)
  {
    v8 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v3;
    v10 = v3;

LABEL_4:
    v11 = v2;
    return v3;
  }

  __break(1u);
  return result;
}

void ApertureController.currentLayout.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
  if (v2)
  {
    v3 = *(*(v2 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode) + 1;
    if (v3 > 5)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 0x20100030303uLL >> (8 * v3);
    }
  }

  else
  {
    *a1 = 3;
  }
}

id sub_1C2DD47BC()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController_apertureHandle] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController____lazy_storage___bannerSource] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController_elementSession] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController_alertingAssertion] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18ApertureController_layoutSink] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1C2DD4860(char *a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_elementSession;
  if (!*(v1 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_elementSession))
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D45A0]) init];
    v5 = *(v1 + v3);
    *(v1 + v3) = v4;

    v6 = *(v1 + v3);
    if (v6)
    {
      [v6 activateWithElementProvider_];
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController) = a1;

  v8 = *&a1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement];
  type metadata accessor for ApertureElementHandle();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_apertureHandle;
  swift_beginAccess();
  *(v1 + v10) = v9;
  v11 = a1;
  v12 = v8;
}

id ApertureController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ApertureController.present(_:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  result = [v6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_layoutSink;
  *(v3 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_layoutSink) = 0;

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 32))(v6, v10, v11);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v6 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = result;
  v59 = a2;
  v60 = v9;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C2E7A700;
  result = [v6 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result leadingAnchor];

  v17 = [v12 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v14 + 32) = v18;
  result = [v6 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = result;
  v20 = [result trailingAnchor];

  v21 = [v12 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v14 + 40) = v22;
  result = [v6 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = result;
  v61 = v3;
  v24 = [result topAnchor];

  v25 = [v12 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v14 + 48) = v26;
  result = [v6 view];
  if (result)
  {
    v27 = result;
    v28 = objc_opt_self();
    v29 = [v27 bottomAnchor];

    v30 = [v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v14 + 56) = v31;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v32 = sub_1C2E75D64();

    [v28 activateConstraints_];

    v34 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v34);
    (*(*(v33 + 8) + 16))(v62, v34);
    v35 = ApertureController.present(_:apertureAccessories:animated:)(v6, v62, v59 & 1);
    v63[0] = v62[0];
    v63[1] = v62[1];
    v63[2] = v62[2];
    v63[3] = v62[3];
    sub_1C2C73644(v63, &qword_1EC062B50);
    v37 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v37);
    v38 = (*(*(v36 + 8) + 40))(v37);
    swift_getKeyPath();
    *&v62[0] = v38;
    sub_1C2DD6824();
    sub_1C2E71A64();

    swift_beginAccess();
    v39 = *(v38 + 24);

    LOBYTE(v62[0]) = v39;
    sub_1C2DDEE94(v62);
    v41 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    v42 = (*(*(v40 + 8) + 40))(v41);
    swift_getKeyPath();
    *&v62[0] = v42;
    sub_1C2E71A64();

    swift_beginAccess();
    LOBYTE(v40) = *(v42 + 25);

    LOBYTE(v62[0]) = v40;
    sub_1C2DDF1FC(v62);
    v44 = a1[3];
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v44);
    v45 = (*(*(v43 + 8) + 40))(v44);
    swift_getKeyPath();
    *&v62[0] = v45;
    sub_1C2E71A64();

    swift_beginAccess();
    v46 = *(v45 + 26);

    v47 = v35[2];
    v48 = *(v47 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
    if ((v46 ^ ((v48 & 4) == 0)))
    {
LABEL_16:
      v54 = a1[3];
      v53 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v54);
      v55 = (*(*(v53 + 8) + 40))(v54);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v62[0] = v55;

      sub_1C2E71A54();

      *&v62[0] = *(v35[2] + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_layoutPublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B60);
      sub_1C2C94F38(&qword_1EC062B68, &qword_1EC062B60);
      sub_1C2E72E94();
      sub_1C2C6E3A4(a1, v62);
      v57 = swift_allocObject();
      sub_1C2C716EC(v62, v57 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B70);
      sub_1C2C94F38(&qword_1EC062B78, &qword_1EC062B70);
      v58 = sub_1C2E72F14();

      *(v61 + v60) = v58;

      return v35;
    }

    if (v46)
    {
      v49 = v48 | 6;
    }

    else
    {
      if ((v48 & 6) == 0)
      {
        goto LABEL_13;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFF9;
    }

    *(v47 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v49;
LABEL_13:
    v50 = *(v47 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
    if (v50)
    {

      v52 = v50(v51);
      sub_1C2C71668(v50);
      if (v52)
      {
        [v52 setElementNeedsUpdate];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

id ApertureController.present(_:apertureAccessories:animated:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v51 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController;
  v8 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
  if (v8)
  {
    v52 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v30 = v8;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    v13 = v52;
    goto LABEL_12;
  }

  v25 = [objc_allocWithZone(type metadata accessor for ApertureBannerElement()) init];
  v26 = objc_allocWithZone(type metadata accessor for ApertureBannerViewController());
  v27 = sub_1C2DEA8A4(v25);

  v52 = v27;
  result = [v27 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v29 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = v5(v8);
  v10 = v6();
  v11 = v7();
  v12 = v11;
  v13 = v52;
  v14 = &v52[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_accessoryViews];
  if (!v9)
  {
    v47 = v11;
    v48 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *v14;
  v16 = v11;
  v17 = v15;
  v18 = v9;
  v19 = v10;
  sub_1C2DD5C30(v18);

  if (v10)
  {
LABEL_5:
    v20 = *(v14 + 1);
    v21 = v10;
    v22 = v20;
    sub_1C2DD5C30(v21);
  }

LABEL_6:
  if (v12)
  {
    v23 = *(v14 + 2);
    v12 = v12;
    v24 = v23;
    sub_1C2DD5C30(v12);
  }

LABEL_12:
  v31 = *(v4 + v51);
  if (v31)
  {
    v32 = v31;
    v33 = [v32 systemApertureElementContext];
    v34 = swift_allocObject();
    *(v34 + 16) = v13;
    *(v34 + 24) = a1;
    if (a3)
    {
      v57 = sub_1C2DD68C0;
      v58 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1C2CB2CC4;
      v56 = &block_descriptor_24;
      v35 = _Block_copy(&aBlock);
      v36 = v13;
      v37 = a1;

      [v33 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v35];
    }

    else
    {
      v57 = sub_1C2DD68B8;
      v58 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1C2CB2CC4;
      v56 = &block_descriptor_18_0;
      v35 = _Block_copy(&aBlock);
      v42 = v13;
      v43 = a1;

      [v33 setElementNeedsUpdateWithCoordinatedAnimations_];
    }

    _Block_release(v35);
    swift_unknownObjectRelease();
    if (*(v4 + v51))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  sub_1C2DE92F4(a1, 1);
  v38 = *(v4 + v51);
  if (!v38 || (v39 = [v38 systemApertureElementContext], v57 = CGPointMake, v58 = 0, aBlock = MEMORY[0x1E69E9820], v54 = 1107296256, v55 = sub_1C2CB2CC4, v56 = &block_descriptor_15, v40 = _Block_copy(&aBlock), objc_msgSend(v39, sel_setElementNeedsUpdateWithCoordinatedAnimations_, v40), swift_unknownObjectRelease(), v41 = v40, v13 = v52, _Block_release(v41), !*(v4 + v51)))
  {
LABEL_20:
    sub_1C2DD4860(v13);
  }

LABEL_21:

  v44 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_apertureHandle;
  swift_beginAccess();
  v45 = *(v4 + v44);
  if (v45)
  {
  }

  else
  {
    v46 = *&v13[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement];

    type metadata accessor for ApertureElementHandle();
    v45 = swift_allocObject();
    *(v45 + 16) = v46;
  }

  return v45;
}

uint64_t sub_1C2DD57FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  if ((v2 + 1) >= 6)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0x20100030303uLL >> (8 * (v2 + 1));
  }

  v7 = v5;
  return (*(*(*(v4 + 8) + 8) + 8))(&v7, v3);
}

uint64_t sub_1C2DD588C(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C2DD6934;
  *(v6 + 24) = v5;
  v11[4] = sub_1C2CB1B14;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C2D0A7A0;
  v11[3] = &block_descriptor_41;
  v7 = _Block_copy(v11);
  v8 = a1;
  v9 = a2;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1C2DD5A00(void *a1, void *a2)
{
  sub_1C2DE92F4(a2, 1);
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ApertureController.revoke()()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI18ApertureController_elementSession;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_elementSession);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    v4 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController);
    *(v0 + OBJC_IVAR____TtC16CommunicationsUI18ApertureController_presentedController) = 0;
  }
}

void sub_1C2DD5C30(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, Strong, v5 != a1))
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    [v6 removeFromSuperview];

    swift_unknownObjectWeakAssign();
    [v2 addSubview_];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C2E7A700;
    v9 = [v2 centerXAnchor];
    v10 = [a1 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v2 centerYAnchor];
    v13 = [a1 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [v2 widthAnchor];
    v16 = [a1 widthAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v8 + 48) = v17;
    v18 = [v2 heightAnchor];
    v19 = [a1 heightAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v8 + 56) = v20;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v21 = sub_1C2E75D64();

    [v7 activateConstraints_];
  }
}

id sub_1C2DD5F08(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v8 = sub_1C2E75D74();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_15;
  }

  result = sub_1C2E764E4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C6927010](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062BA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
LABEL_15:
    sub_1C2C73644(&v16, &unk_1EC062BB0);
    return [v3 sizeThatFits_];
  }

  v13 = v18;
  __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
  if ((a1 + 1) >= 6)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0x20100030303uLL >> (8 * (a1 + 1));
  }

  LOBYTE(v15) = v14;
  (*(v13 + 8))(&v15, v12, v13, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

void sub_1C2DD615C(double a1, double a2)
{
  v5 = [v2 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v6 = sub_1C2E75D74();

  if (v6 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }

LABEL_8:

    v9.receiver = v2;
    v9.super_class = type metadata accessor for ApertureTemplateView();
    objc_msgSendSuper2(&v9, sel_sizeThatFits_, a1, a2);
    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C6927010](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_6:
    v8 = v7;

    [v8 sizeThatFits_];

    return;
  }

  __break(1u);
}

void sub_1C2DD6334()
{
  v1 = [v0 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v2 = sub_1C2E75D74();

  if (v2 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }

LABEL_8:

    v5.receiver = v0;
    v5.super_class = type metadata accessor for ApertureTemplateView();
    objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1C6927010](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
LABEL_6:
    v4 = v3;

    [v4 intrinsicContentSize];

    return;
  }

  __break(1u);
}

id sub_1C2DD648C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApertureTemplateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2DD64D0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD6824();
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1C2DD654C()
{
  swift_getKeyPath();
  sub_1C2DD6824();
  sub_1C2E71A54();
}

uint64_t sub_1C2DD65E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD6824();
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C2DD66AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD6824();
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1C2DD6770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD6824();
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

unint64_t sub_1C2DD6824()
{
  result = qword_1EC062B58;
  if (!qword_1EC062B58)
  {
    type metadata accessor for ApertureElementConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062B58);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ApertureElementConfiguration.__allocating_init(maximumLayout:preferredLayout:showsLargeWhileFullScreen:)(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v6 = swift_allocObject();
  ApertureElementConfiguration.init(maximumLayout:preferredLayout:showsLargeWhileFullScreen:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1C2DD69C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_1C2DD6A2C(void *a1)
{
  v3 = *v1;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F398));

  return sub_1C2DD6BD4(v3, a1);
}

uint64_t ApertureTemplateConfiguration<>.buildView(hostController:)(void *a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v5 + 16))(v7, v2, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v12, v7, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v12;
}

char *sub_1C2DD6BD4(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  if (v7)
  {
    v9 = v7;
    [v8 setTextColor_];
  }

  *&v3[qword_1EC05F618] = v8;
  *&v3[qword_1EC05F620] = 0;
  v10 = qword_1EC05F628;
  v11 = [v4 systemFontOfSize_];
  v12 = [v6 secondaryLabelColor];
  v13 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v14 = v11;
  v15 = v12;
  v16 = [v13 init];
  [v16 setFont_];
  v17 = v15;
  [v16 &selRef:v17 setName:?];

  v18 = type metadata accessor for BadgedLabel();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] = v16;
  *&v19[v20] = 0;
  v58.receiver = v19;
  v58.super_class = v18;
  v21 = v16;
  v22 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 addSubview_];

  *&v3[v10] = v22;
  *&v3[qword_1EC05F630] = 0;
  *&v3[qword_1EC05F638] = 0x3FF0000000000000;
  v23 = sub_1C2DD9E50(&qword_1EC062BD8, type metadata accessor for BasicApertureHudConfiguration);
  v24 = *(v23 + 80);
  v25 = type metadata accessor for BasicApertureHudConfiguration();
  v26 = v24(v25, v23);
  v27 = v26();
  v29 = v28;

  *&v3[qword_1EC05F640] = v27;
  *&v3[qword_1EC05F648] = v29;
  v55 = v27;
  v53 = v29;
  v57.receiver = v3;
  v57.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F398);
  v30 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v32;
  sub_1C2E71A44();
  v34 = (*(v23 + 40))(v25, v23);
  v35 = v34();

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromSuperview];

  if (v35)
  {
    swift_unknownObjectWeakAssign();
    v37 = v33;
    v38 = v35;
    [v37 addSubview_];
    [v37 setNeedsLayout];
  }

  v39 = qword_1EC05F628;
  v40 = *(v23 + 72);
  v41 = *&v33[qword_1EC05F628];
  v42 = v40(v25, v23);
  v43 = v42();

  v44 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  v45 = *&v41[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge];
  *&v41[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge] = v43;
  v46 = v43;
  [v45 removeFromSuperview];
  if (*&v41[v44])
  {
    [v41 addSubview_];
  }

  [v41 setNeedsLayout];

  [v33 addSubview_];
  [v33 addSubview_];
  if (*&v33[qword_1EC05F640])
  {
    [v33 addSubview_];
  }

  v47 = *&v33[qword_1EC05F648];
  if (v47)
  {
    v48 = v47;
    v49 = v33;
    v50 = v48;
    [v49 addSubview_];

    v51 = v55;
  }

  else
  {

    v51 = a2;
  }

  return v33;
}

void *sub_1C2DD71EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + qword_1EC05F618);
  v4 = sub_1C2DD9E50(&qword_1EC062BD8, type metadata accessor for BasicApertureHudConfiguration);
  v5 = (*(v4 + 24))(v2, v4);
  [v3 setAttributedText_];

  v6 = (*(v4 + 32))(v2, v4);
  sub_1C2DD76C0(v6);

  return (*(v4 + 48))(&v8, v2, v4);
}

uint64_t (*sub_1C2DD7328(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1C2DD9EA8;
}

uint64_t sub_1C2DD73B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1C2E75E74();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C2E75E34();

  v8 = sub_1C2E75E24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_1C2D22B9C(0, 0, v6, &unk_1C2E8BA20, v9);
}

uint64_t sub_1C2DD74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1C2E75E34();
  v5[10] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2DD7580, v7, v6);
}

uint64_t sub_1C2DD7580()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 72);
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    sub_1C2E71A44();
  }

  v8 = *(v0 + 8);

  return v8();
}

id sub_1C2DD76C0(unint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC05F630;
  if (*&v1[qword_1EC05F630])
  {

    sub_1C2DFBE38();
  }

  if (a1 >> 62)
  {
    if (sub_1C2E764E4() >= 2)
    {
      goto LABEL_5;
    }

    v8 = *&v1[qword_1EC05F628];
    result = sub_1C2E764E4();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= 1)
  {
    v8 = *&v1[qword_1EC05F628];
    if (result)
    {
LABEL_7:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6927010](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v9 = *(a1 + 32);
      }

      v10 = v9;
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
LABEL_14:
    [*&v8[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] setAttributedText_];
    [v8 setNeedsLayout];

    goto LABEL_15;
  }

LABEL_5:
  v6 = *&v1[qword_1EC05F628];

  v7 = sub_1C2D0B7C4(v6, a1, 2.5, 0, 0);

  sub_1C2DFB92C();
  *&v2[v4] = v7;

LABEL_15:

  return [v2 setNeedsLayout];
}

uint64_t sub_1C2DD784C(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1C2DD9FC0;
  a2[1] = v5;
  return result;
}

uint64_t ApertureAccessoryTemplate.leadingView.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ApertureAccessoryTemplate.leadingView.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C2DD7944(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_1C2DD9FC0;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ApertureAccessoryTemplate.trailingView.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ApertureAccessoryTemplate.trailingView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1C2DD7A3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = sub_1C2DD9FC0;
  *(a2 + 40) = v5;
  return result;
}

uint64_t ApertureAccessoryTemplate.minimalView.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ApertureAccessoryTemplate.minimalView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1C2DD7B34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_1C2DD9DE8;
  *(a2 + 56) = v5;
  return result;
}

uint64_t ApertureAccessoryTemplate.detachedMinimalView.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ApertureAccessoryTemplate.detachedMinimalView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ApertureAccessoryTemplate.init(leadingView:trailingView:minimalView:detachedMinimalView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1C2DD7C48()
{
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  return swift_weakLoadStrong();
}

uint64_t (*sub_1C2DD7D08(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2DD7D5C;
}

uint64_t sub_1C2DD7D5C(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = a1[3];
      swift_getKeyPath();
      *a1 = v6;
      sub_1C2E71A64();

      v7 = *(v6 + 24);
      sub_1C2DDEE94(&v7);
    }
  }

  return result;
}

uint64_t sub_1C2DD7E7C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_1C2DD7F38(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  if (*(v2 + 24) == v3)
  {
    swift_getKeyPath();
    v6 = v2;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      v6 = v2;
      sub_1C2E71A64();

      LOBYTE(v6) = *(v2 + 24);
      sub_1C2DDEE94(&v6);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2DD8128(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  swift_getKeyPath();
  v5 = a1;
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    v5 = a1;
    sub_1C2E71A64();

    LOBYTE(v5) = *(a1 + 24);
    sub_1C2DDEE94(&v5);
  }

  return result;
}

void (*sub_1C2DD8258(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ApertureElementConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DD7D08(v4);
  return sub_1C2DD8390;
}

uint64_t (*sub_1C2DD839C(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2DD83F0;
}

uint64_t sub_1C2DD83F0(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = a1[3];
      swift_getKeyPath();
      *a1 = v6;
      sub_1C2E71A64();

      v7 = *(v6 + 25);
      sub_1C2DDF1FC(&v7);
    }
  }

  return result;
}

uint64_t sub_1C2DD8510@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a1 = *(v1 + 25);
  return result;
}

uint64_t sub_1C2DD85CC(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  if (*(v2 + 25) == v3)
  {
    swift_getKeyPath();
    v6 = v2;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      v6 = v2;
      sub_1C2E71A64();

      LOBYTE(v6) = *(v2 + 25);
      sub_1C2DDF1FC(&v6);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2DD87BC(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 25) = a2;
  swift_getKeyPath();
  v5 = a1;
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    v5 = a1;
    sub_1C2E71A64();

    LOBYTE(v5) = *(a1 + 25);
    sub_1C2DDF1FC(&v5);
  }

  return result;
}

void (*sub_1C2DD88EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ApertureElementConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DD839C(v4);
  return sub_1C2DD8A24;
}

uint64_t (*sub_1C2DD8A30(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2DD8A84;
}

uint64_t sub_1C2DD8A84(void *a1, char a2)
{
  result = swift_endAccess();
  if (a2)
  {
    return result;
  }

  v5 = a1[3];
  swift_getKeyPath();
  *a1 = v5;
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a1[3];
  swift_getKeyPath();
  *a1 = v7;
  sub_1C2E71A64();

  v8 = *(v6 + 16);
  v9 = *(v8 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
  if (((*(v7 + 26) ^ ((v9 & 4) == 0)) & 1) == 0)
  {
    if (*(v7 + 26))
    {
      v10 = v9 | 6;
    }

    else
    {
      if ((v9 & 6) == 0)
      {
LABEL_10:
        v11 = *(v8 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
        if (v11)
        {

          v13 = v11(v12);
          sub_1C2C71668(v11);
          if (v13)
          {
            [v13 setElementNeedsUpdate];
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_13;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFF9;
    }

    *(v8 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v10;
    goto LABEL_10;
  }

LABEL_13:
}

uint64_t sub_1C2DD8C4C()
{
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 26);
}

uint64_t sub_1C2DD8D00(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (*(v2 + 26) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A54();
  }

  *(v2 + 26) = v3;
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_1C2E71A64();

    v7 = *(v6 + 16);
    v8 = *(v7 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
    if (*(v2 + 26) != ((v8 & 4) == 0))
    {
    }

    if (*(v2 + 26))
    {
      v9 = v8 | 6;
    }

    else
    {
      if ((v8 & 6) == 0)
      {
LABEL_10:
        v10 = *(v7 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
        if (v10)
        {

          v12 = v10(v11);
          sub_1C2C71668(v10);
          if (v12)
          {
            [v12 setElementNeedsUpdate];

            return swift_unknownObjectRelease();
          }
        }
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFF9;
    }

    *(v7 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v9;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1C2DD8F88(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 26) = a2;
  swift_getKeyPath();
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1C2E71A64();

    v6 = *(v5 + 16);
    v7 = *(v6 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
    if (*(a1 + 26) != ((v7 & 4) == 0))
    {
    }

    if (*(a1 + 26))
    {
      v8 = v7 | 6;
    }

    else
    {
      if ((v7 & 6) == 0)
      {
LABEL_8:
        v9 = *(v6 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
        if (v9)
        {

          v11 = v9(v10);
          sub_1C2C71668(v9);
          if (v11)
          {
            [v11 setElementNeedsUpdate];

            return swift_unknownObjectRelease();
          }
        }
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFF9;
    }

    *(v6 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v8;
    goto LABEL_8;
  }

  return result;
}

void (*sub_1C2DD9150(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ApertureElementConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DD8A30(v4);
  return sub_1C2DD9288;
}

uint64_t ApertureElementConfiguration.init(maximumLayout:preferredLayout:showsLargeWhileFullScreen:)(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v5 = *a1;
  v6 = *a2;
  swift_weakInit();
  *(v3 + 24) = 514;
  *(v3 + 26) = 0;
  sub_1C2E71A94();
  swift_beginAccess();
  if (*(v3 + 24) == v5)
  {
    swift_getKeyPath();
    *v21 = v3;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      *v21 = v3;
      sub_1C2E71A64();

      v21[0] = *(v3 + 24);
      sub_1C2DDEE94(v21);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *v21 = v3;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A54();
  }

  swift_beginAccess();
  if (*(v3 + 25) == v6)
  {
    swift_getKeyPath();
    *v20 = v3;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      *v20 = v3;
      sub_1C2E71A64();

      v20[0] = *(v3 + 25);
      sub_1C2DDF1FC(v20);
    }
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    *v20 = v3;
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A54();
  }

  swift_beginAccess();
  if (*(v3 + 26) == (a3 & 1))
  {
    *(v3 + 26) = a3 & 1;
    swift_getKeyPath();
    sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
    sub_1C2E71A64();

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return v4;
    }

    v11 = Strong;
    swift_getKeyPath();
    sub_1C2E71A64();

    v12 = *(v11 + 16);
    v13 = *(v12 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
    if (*(v3 + 26) != ((v13 & 4) == 0))
    {
LABEL_21:

      return v4;
    }

    if (*(v3 + 26))
    {
      v14 = v13 | 6;
    }

    else
    {
      if ((v13 & 6) == 0)
      {
LABEL_18:
        v15 = *(v12 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
        if (v15)
        {

          v17 = v15(v16);
          sub_1C2C71668(v15);
          if (v17)
          {
            [v17 setElementNeedsUpdate];

            swift_unknownObjectRelease();
            return v4;
          }
        }

        goto LABEL_21;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFF9;
    }

    *(v12 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v14;
    goto LABEL_18;
  }

  v9 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C2DD9E50(&qword_1EC062B58, type metadata accessor for ApertureElementConfiguration);
  sub_1C2E71A54();

  return v4;
}

uint64_t type metadata accessor for ApertureElementConfiguration()
{
  result = qword_1EC062BC8;
  if (!qword_1EC062BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ApertureElementConfiguration.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC16CommunicationsUI28ApertureElementConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ApertureElementConfiguration.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC16CommunicationsUI28ApertureElementConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2DD9A58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C2DD9AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2DD9B08()
{
  result = sub_1C2E71AA4();
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

uint64_t sub_1C2DD9E20@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C2DD9E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DD9EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2C7DC10;

  return sub_1C2DD74E8(a1, v4, v5, v7, v6);
}

uint64_t TextButtonViewModel.init(title:titleColor:backgroundColor:defaultBackgroundOpacity:highlightedBackgroundOpacity:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v16 = sub_1C2E763A4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1C2C6E1B4(0, &qword_1EC062BE0);
  sub_1C2DDA268();
  v17 = sub_1C2E763B4();
  v18 = v17;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1C2C6E1B4(0, &qword_1EC05CA60);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v18;
  v20 = v18;

  v21 = sub_1C2E76264();
  [v20 addAction:v21 forControlEvents:64];

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a9;
  *(a7 + 48) = v17;
  return result;
}

uint64_t TextButtonStackViewModel.__allocating_init(buttonViewModels:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *TextButtonViewModel.textButton.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1C2DDA268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062BE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C2E762B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C2E76394();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  sub_1C2E762C4();
  sub_1C2E76374();
  sub_1C2C6E1B4(0, &qword_1EC05CA78);
  sub_1C2E761F4();
  sub_1C2E76324();
  v7 = [objc_opt_self() systemGrayColor];
  sub_1C2E76314();
  sub_1C2E72CE4();
  v8 = sub_1C2E72CD4();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_1C2E76334();
  return sub_1C2E762F4();
}

uint64_t sub_1C2DDA4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E716A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1C2E74514();
  sub_1C2DDA778();
  return sub_1C2E716B4();
}

uint64_t TextButtonStackViewModel.buttonViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TextButtonStackViewModel.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C2DDA684(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C2DDA6CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C2DDA778()
{
  result = qword_1EC062BF0;
  if (!qword_1EC062BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062BF0);
  }

  return result;
}

uint64_t type metadata accessor for LanguagePair()
{
  result = qword_1EC05C628;
  if (!qword_1EC05C628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DDA8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*sub_1C2DDA950(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DDA7CC();
  return sub_1C2DDAA88;
}

uint64_t sub_1C2DDAB08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  return sub_1C2DDA8B8(v5 + v6, a3);
}

uint64_t sub_1C2DDABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1C2DDA8B8(a1, &v11 - v8);
  return a5(v9);
}

uint64_t sub_1C2DDAC9C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
  sub_1C2E71A64();

  v5 = *a1;
  swift_beginAccess();
  return sub_1C2DDA8B8(v2 + v5, a2);
}

uint64_t sub_1C2DDAD8C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1C2DDA8B8(v2 + v8, v7);
  LOBYTE(a2) = sub_1C2DDBC54(v7, a1);
  sub_1C2C73644(v7, &qword_1EC05DBF8);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
    sub_1C2E71A54();
  }

  else
  {
    sub_1C2DDA8B8(a1, v7);
    swift_beginAccess();
    sub_1C2DDBF44(v7, v2 + v8);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05DBF8);
}

uint64_t sub_1C2DDAF78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1C2DDA8B8(a2, &v11 - v7);
  v9 = *a3;
  swift_beginAccess();
  sub_1C2DDBF44(v8, a1 + v9);
  return swift_endAccess();
}

void (*sub_1C2DDB044(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DDAA94();
  return sub_1C2DDB17C;
}

uint64_t LanguagePair.__allocating_init(local:remote:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__local;
  v9 = sub_1C2E71934();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  v10(v7 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__remote, 1, 1, v9);
  sub_1C2E71A94();
  sub_1C2DDA8B8(a1, v6);
  sub_1C2DDA928(v6);
  sub_1C2DDA8B8(a2, v6);
  sub_1C2DDAD64(v6);
  sub_1C2C73644(a2, &qword_1EC05DBF8);
  sub_1C2C73644(a1, &qword_1EC05DBF8);
  return v7;
}

uint64_t LanguagePair.init(local:remote:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__local;
  v9 = sub_1C2E71934();
  v10 = *(*(v9 - 8) + 56);
  v10(v2 + v8, 1, 1, v9);
  v10(v2 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__remote, 1, 1, v9);
  sub_1C2E71A94();
  sub_1C2DDA8B8(a1, v7);
  sub_1C2DDA928(v7);
  sub_1C2DDA8B8(a2, v7);
  sub_1C2DDAD64(v7);
  sub_1C2C73644(a2, &qword_1EC05DBF8);
  sub_1C2C73644(a1, &qword_1EC05DBF8);
  return v2;
}

uint64_t LanguagePair.deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__local, &qword_1EC05DBF8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__remote, &qword_1EC05DBF8);
  v1 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LanguagePair.__deallocating_deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__local, &qword_1EC05DBF8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__remote, &qword_1EC05DBF8);
  v1 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t CallTranslationLanguagePairView.init(model:oneWay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CallTranslationLanguagePairView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v2 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = sub_1C2E71934();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = *v1;
  v54 = *(v1 + 8);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair___observationRegistrar;
  v63 = v18;
  v57 = sub_1C2DDC200(&qword_1EC062BF8, type metadata accessor for LanguagePair);
  v58 = v19;
  sub_1C2E71A64();

  v20 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__remote;
  swift_beginAccess();
  sub_1C2DDA8B8(v18 + v20, v8);
  v21 = v10[6];
  if (v21(v8, 1, v9) == 1)
  {
    result = sub_1C2C73644(v8, &qword_1EC05DBF8);
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  v52 = v10[4];
  v53 = v10 + 4;
  v52(v17, v8, v9);
  sub_1C2E718F4();
  v23 = sub_1C2E72284();
  v25 = v24;
  v26 = v10[1];
  v26(v14, v9);
  result = (v26)(v17, v9);
  if (!v25)
  {
LABEL_10:
    v44 = 0;
    v49 = 0;
    v48 = 0;
    goto LABEL_11;
  }

  v51 = v23;
  swift_getKeyPath();
  v62 = v18;
  sub_1C2E71A64();

  v27 = OBJC_IVAR____TtC16CommunicationsUI12LanguagePair__local;
  swift_beginAccess();
  v28 = v18 + v27;
  v29 = v59;
  sub_1C2DDA8B8(v28, v59);
  if (v21(v29, 1, v9) == 1)
  {

    result = sub_1C2C73644(v29, &qword_1EC05DBF8);
    goto LABEL_9;
  }

  v30 = v56;
  v52(v56, v29, v9);
  sub_1C2E718F4();
  sub_1C2E72284();
  v32 = v31;
  v26(v14, v9);
  v26(v30, v9);
  if (!v32)
  {

    goto LABEL_9;
  }

  sub_1C2E73CF4();
  sub_1C2E73CE4();
  sub_1C2E75044();
  sub_1C2E73CC4();

  sub_1C2E73CE4();
  sub_1C2E73CD4();

  sub_1C2E73CE4();
  sub_1C2E75044();
  sub_1C2E73CC4();

  sub_1C2E73CE4();
  sub_1C2E73CD4();

  sub_1C2E73CE4();
  sub_1C2E73D24();
  v33 = sub_1C2E74884();
  v35 = v34;
  v37 = v36;
  sub_1C2E74684();
  v38 = sub_1C2E747F4();
  v40 = v39;
  v42 = v41;

  sub_1C2C72340(v33, v35, v37 & 1);

  v61 = sub_1C2E740F4();
  v25 = sub_1C2E74794();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1C2C72340(v38, v40, v42 & 1);

  v49 = v46 & 1;
LABEL_11:
  v50 = v60;
  *v60 = v25;
  v50[1] = v44;
  v50[2] = v49;
  v50[3] = v48;
  return result;
}

uint64_t sub_1C2DDBC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71934();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1C2DDA8B8(a1, &v21 - v12);
  sub_1C2DDA8B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C2DDA8B8(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C2DDC200(&qword_1EC05DC60, MEMORY[0x1E6969770]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v13, &qword_1EC05DBF8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v13, &qword_1EC05DC58);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v13, &qword_1EC05DBF8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2DDBF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C2DDC020()
{
  sub_1C2CAAD14();
  if (v0 <= 0x3F)
  {
    sub_1C2E71AA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C2DDC200(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C2DDC248(void *a1)
{
  [v1 bounds];
  if (CGRectGetWidth(v8) > 0.0)
  {
    [v1 bounds];
    [a1 sizeThatFits_];
    return;
  }

  v3 = [v1 window];
  if (v3)
  {
    v4 = v3;
    [v3 frame];
    [a1 sizeThatFits_];
LABEL_11:

    return;
  }

  v5 = [a1 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v6 = sub_1C2E75D74();

  if (v6 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_7;
    }

LABEL_13:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C6927010](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_10:
    v4 = v7;

    [v4 intrinsicContentSize];
    goto LABEL_11;
  }

  __break(1u);
}

double sub_1C2DDC48C()
{
  sub_1C2DDC248(*(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView));
  sub_1C2DDC248(*(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView));
  sub_1C2DDC248(*(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView));
  return 1.79769313e308;
}

char *InternalBannerPlacementUIView.__allocating_init<A, B, C, D>(hostingVC:leading:trailing:center:bottom:)(void *a1, void (*a2)(__n128), uint64_t a3, void (*a4)(__n128), uint64_t a5, void (*a6)(__n128), uint64_t a7, void (*a8)(__n128), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v41 = sub_1C2DDC7A0(a2, a3, a1, a10, a11, a12, a13, a10, a14, a15, a16, a17, a14);
  v19 = sub_1C2DDC7A0(a4, a5, a1, a10, a11, a12, a13, a11, a14, a15, a16, a17, a15);
  v46 = sub_1C2DDC7A0(a6, a7, a1, a10, a11, a12, a13, a12, a14, a15, a16, a17, a16);
  v20 = a1;
  v21 = sub_1C2DDC7A0(a8, a9, a1, a10, a11, a12, a13, a13, a14, a15, a16, a17, a17);
  v22 = [objc_allocWithZone(v44) initWithFrame_];
  v23 = v22;
  if (v41)
  {
    v24 = *&v22[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView];
    v25 = v41;
    v26 = v24;
    sub_1C2DDDF18(v26, v25);
  }

  if (v19)
  {
    v27 = *&v23[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView];
    v28 = v19;
    v29 = v27;
    sub_1C2DDDF18(v29, v28);
  }

  if (v46)
  {
    v30 = *&v23[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView];
    v31 = v46;
    v32 = v30;
    sub_1C2DDDF18(v32, v31);
  }

  if (v21)
  {
    v33 = *&v23[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView];
    v34 = v21;
    v35 = v33;
    sub_1C2DDDF18(v35, v34);
  }

  v36 = objc_opt_self();
  v37 = v23;
  v38 = [v36 blackColor];
  [v37 setBackgroundColor_];

  sub_1C2DDD0FC();
  return v37;
}

id sub_1C2DDC7A0(void (*a1)(__n128), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a3;
  v15 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2E730D4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v24 = sub_1C2E73654();
  v34 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  a1(v25);
  swift_getKeyPath();
  (*(v18 + 104))(v20, *MEMORY[0x1E697DBA8], v17);
  sub_1C2E749A4();

  (*(v18 + 8))(v20, v17);
  (*(v35 + 8))(v23, a8);
  v28 = sub_1C2DDE410();
  v38 = a13;
  v39 = v28;
  swift_getWitnessTable();
  v29 = View.inLockScreenHostingController()();
  (*(v34 + 8))(v27, v24);
  v30 = v29;
  v31 = v37;
  [v37 addChildViewController_];
  [v30 didMoveToParentViewController_];
  sub_1C2E743A4();
  sub_1C2E73E14();
  v32 = [v30 view];

  return v32;
}

char *InternalBannerPlacementUIView.__allocating_init(leading:trailing:center:bottom:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = [objc_allocWithZone(v4) initWithFrame_];
  v10 = v9;
  if (a1)
  {
    v11 = *&v9[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView];
    v12 = a1;
    v13 = v11;
    sub_1C2DDDF18(v13, v12);
  }

  if (a2)
  {
    v14 = *&v10[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView];
    v15 = a2;
    v16 = v14;
    sub_1C2DDDF18(v16, v15);
  }

  if (a3)
  {
    v17 = *&v10[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView];
    v18 = a3;
    v19 = v17;
    sub_1C2DDDF18(v19, v18);
  }

  if (a4)
  {
    v20 = *&v10[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView];
    v21 = a4;
    v22 = v20;
    sub_1C2DDDF18(v22, v21);
  }

  v23 = objc_opt_self();
  v24 = v10;
  v25 = [v23 blackColor];
  [v24 setBackgroundColor_];

  sub_1C2DDD0FC();
  return v24;
}

char *sub_1C2DDCCAC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_minimumAccessoryViewHeight] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_horizontalMargin] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_verticalMargin] = 0x4030000000000000;
  v39.receiver = v4;
  v39.super_class = type metadata accessor for InternalBannerPlacementUIView();
  v13 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView];
  v15 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView;
  v16 = v13;
  v17 = v14;
  v18 = sub_1C2E75C24();
  [v17 _setLayoutDebuggingIdentifier_];

  v19 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView;
  v20 = *&v16[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView];
  v21 = sub_1C2E75C24();
  [v20 _setLayoutDebuggingIdentifier_];

  v22 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView;
  v23 = *&v16[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView];
  v24 = sub_1C2E75C24();
  [v23 _setLayoutDebuggingIdentifier_];

  v25 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView;
  v26 = *&v16[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView];
  v27 = sub_1C2E75C24();
  [v26 _setLayoutDebuggingIdentifier_];

  [*&v13[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v16[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v16[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v16[v25] setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = *&v13[v15];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor_];

  v32 = *&v16[v19];
  v33 = [v29 blackColor];
  [v32 setBackgroundColor_];

  v34 = *&v16[v22];
  v35 = [v29 blackColor];
  [v34 setBackgroundColor_];

  v36 = *&v16[v25];
  v37 = [v29 blackColor];
  [v36 setBackgroundColor_];

  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_1C2DDD0FC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView];
  sub_1C2DDC248(v2);
  v4 = v3;
  v6 = v5;
  v82 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView];
  sub_1C2DDC248(v82);
  v8 = v7;
  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView];
  sub_1C2DDC248(v11);
  v13 = v12;
  v14 = [v0 leadingAnchor];
  v15 = [v11 leadingAnchor];
  v85 = v11;
  v16 = [v11 topAnchor];
  v90 = MEMORY[0x1E69E7CC0];
  v17 = v14;
  v18 = [v2 leadingAnchor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C2E7A720;
  *(v19 + 32) = [v18 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v19);
  v20 = v15;
  v21 = [v2 trailingAnchor];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C2E7A720;
  *(v22 + 32) = [v21 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v22);
  v23 = v16;
  v24 = [v2 bottomAnchor];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C2E7A720;
  *(v25 + 32) = [v24 constraintGreaterThanOrEqualToAnchor_];

  sub_1C2CA2AE4(v25);
  v84 = v2;
  v26 = [v2 topAnchor];
  v27 = [v1 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];

  MEMORY[0x1C6926780]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (v6 > 10.0)
  {
    v29 = [v2 widthAnchor];
    v30 = [v29 constraintEqualToConstant_];

    MEMORY[0x1C6926780]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
  }

  v31 = [v11 trailingAnchor];
  v32 = [v1 trailingAnchor];
  v83 = *&v1[OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView];
  v81 = [v83 topAnchor];
  v89 = MEMORY[0x1E69E7CC0];
  v33 = v31;
  v34 = [v82 leadingAnchor];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C2E7A720;
  *(v35 + 32) = [v34 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v35);
  v36 = v32;
  v37 = [v82 trailingAnchor];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C2E7A720;
  *(v38 + 32) = [v37 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v38);
  v39 = v81;
  v40 = [v82 bottomAnchor];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C2E7A720;
  *(v41 + 32) = [v40 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v41);
  v42 = [v82 topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:16.0];

  MEMORY[0x1C6926780]();
  if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (v10 > 10.0)
  {
    v45 = [v82 widthAnchor];
    v46 = [v45 constraintEqualToConstant_];

    MEMORY[0x1C6926780]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
  }

  if (v6 <= 10.0)
  {
    v48 = &property descriptor for KeypadNumber.secondary;
    v47 = [v1 leadingAnchor];
  }

  else
  {
    v47 = [v84 trailingAnchor];
    v48 = &property descriptor for KeypadNumber.secondary;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v50 = v47;
  v51 = [v82 v48[298]];
  v88 = v49;
  v52 = v50;
  v53 = [v85 v48[298]];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C2E7A720;
  *(v54 + 32) = [v53 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v54);
  v55 = v51;
  v56 = [v85 trailingAnchor];
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1C2E7A720;
  *(v57 + 32) = [v56 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v57);
  v58 = [v85 topAnchor];
  v59 = [v1 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:16.0];

  MEMORY[0x1C6926780]();
  if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  v61 = [v85 bottomAnchor];
  v87 = MEMORY[0x1E69E7CC0];
  v62 = v61;
  v63 = [v83 topAnchor];
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1C2E7A720;
  *(v64 + 32) = [v63 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v64);
  v65 = [v83 v48[298]];
  v66 = [v1 v48[298]];
  v67 = [v65 constraintEqualToAnchor:v66 constant:16.0];

  MEMORY[0x1C6926780]();
  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  v68 = [v83 trailingAnchor];
  v69 = [v1 trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:-16.0];

  MEMORY[0x1C6926780]();
  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  v71 = [v83 bottomAnchor];
  v72 = [v1 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  MEMORY[0x1C6926780]();
  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  v74 = [v83 topAnchor];
  if (v6 >= v13)
  {
    v75 = [v84 bottomAnchor];
  }

  else
  {
    v75 = [v85 bottomAnchor];
  }

  v76 = [v74 constraintEqualToAnchor_];

  MEMORY[0x1C6926780]();
  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  v77 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v78 = sub_1C2E75D64();

  [v77 activateConstraints_];

  v79 = sub_1C2E75D64();

  [v77 activateConstraints_];

  v80 = sub_1C2E75D64();

  [v77 activateConstraints_];

  v86 = sub_1C2E75D64();

  [v77 activateConstraints_];
}

id InternalBannerPlacementUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalBannerPlacementUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C2DDDF18(void *a1, id a2)
{
  [a2 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  v4 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor_];

  v5 = [a1 leadingAnchor];
  v6 = [a1 trailingAnchor];
  v7 = [a1 bottomAnchor];
  v8 = [a1 topAnchor];
  v9 = v5;
  v10 = [a2 leadingAnchor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C2E7A720;
  *(v11 + 32) = [v10 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v11);
  v12 = v6;
  v13 = [a2 trailingAnchor];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C2E7A720;
  *(v14 + 32) = [v13 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v14);
  v15 = v7;
  v16 = [a2 bottomAnchor];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C2E7A720;
  *(v17 + 32) = [v16 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v17);
  v18 = v8;
  v19 = [a2 topAnchor];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C2E7A720;
  *(v20 + 32) = [v19 constraintEqualToAnchor_];

  sub_1C2CA2AE4(v20);
  v21 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v22 = sub_1C2E75D64();

  [v21 activateConstraints_];
}

void sub_1C2DDE308()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_centerView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_minimumAccessoryViewHeight) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_horizontalMargin) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_verticalMargin) = 0x4030000000000000;
  sub_1C2E766F4();
  __break(1u);
}

unint64_t sub_1C2DDE410()
{
  result = qword_1EC05CB08;
  if (!qword_1EC05CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB08);
  }

  return result;
}

uint64_t sub_1C2DDE58C(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode) = result;
  v2 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
  if (v2)
  {

    v4 = v2(v3);
    result = sub_1C2C71668(v2);
    if (v4)
    {
      [v4 requestTransitionToPreferredLayoutMode];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C2DDE828()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_alertingAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_alertingAssertion);
  if (v2)
  {

    [v2 resetAutomaticInvalidationTimer];
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
    if (v3)
    {

      v5 = v3(v4);
      sub_1C2C71668(v3);
      if (v5)
      {
        v3 = [v5 requestAlertingAssertion];
        swift_unknownObjectRelease();
      }

      else
      {
        v3 = 0;
      }
    }

    *(v0 + v1) = v3;
    swift_unknownObjectRelease();
    v6 = *(v0 + v1);
    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_1C2DDEE34;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1C2DDEB84;
      v9[3] = &block_descriptor_16;
      v8 = _Block_copy(v9);
      swift_unknownObjectRetain();

      [v6 addInvalidationBlock_];
      swift_unknownObjectRelease();
      _Block_release(v8);
    }
  }
}

char *sub_1C2DDE9E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_alertingAssertion] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C2DDEA44()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 4;
  sub_1C2E71894();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_contentRole] = 2;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode] = 3;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors] = 14;
  v2 = &v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_associatedAppBundleIdentifier];
  type metadata accessor for ApertureController();
  static ApertureController.clientBundleIdentifier.getter();
  *v2 = v3;
  *(v2 + 1) = v4;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView] = 0;
  v5 = &v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_layoutPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B60);
  swift_allocObject();
  *&v0[v6] = sub_1C2E72DE4();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_alertingAssertion] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1C2DDEB84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C2E75C64();
  v4 = v3;

  v5 = swift_unknownObjectRetain();
  v1(v5, v2, v4);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for ApertureBannerElement()
{
  result = qword_1EC062CC0;
  if (!qword_1EC062CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DDED68()
{
  result = sub_1C2E718A4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2DDEE54(char *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode) + 1;
  if (v2 >= 6)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x20100030303uLL >> (8 * v2);
  }

  *a1 = v3;
}

void sub_1C2DDEE94(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (qword_1C2E8BE80[v2] != *(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode))
  {
    v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode) + 1;
    if (v4 >= 6)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0x20100030303uLL >> (8 * v4);
    }

    v7 = v5;
    v6 = v2;
    sub_1C2DDEF28(&v7, &v6);
  }
}

void sub_1C2DDEF28(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] + 1;
  if (v6 > 5)
  {
    v7 = 4;
  }

  else
  {
    v7 = qword_1C2E8BE50[v6];
  }

  v8 = OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode;
  v9 = *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode];
  if (v9 <= 1)
  {
    if ((v9 + 1) < 3)
    {
      if (v3 == 3)
      {
        goto LABEL_7;
      }

LABEL_24:
      if (v4 == 1 && v3 == 2)
      {
        v12 = 4;
        *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 4;
        goto LABEL_40;
      }

      if (v7 == v4)
      {
        goto LABEL_39;
      }

      LOBYTE(v10) = 1;
      if (*a2 <= 2u)
      {
        goto LABEL_9;
      }

LABEL_29:
      *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 1;
      if (!v10)
      {
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    if (*a1)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  if (v9 != 4)
  {
    if (v9 != 3)
    {
LABEL_31:
      if (v3 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    if (v3 != 1)
    {
      goto LABEL_24;
    }

LABEL_7:
    v10 = 0;
    if (v7 != v4)
    {
      goto LABEL_8;
    }

LABEL_34:
    if (!v10)
    {
      return;
    }

    goto LABEL_39;
  }

  v10 = v3 != 2;
  if (v7 == v4)
  {
    goto LABEL_34;
  }

LABEL_8:
  if (*a2 > 2u)
  {
    goto LABEL_29;
  }

LABEL_9:
  if (!*a2)
  {
    *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 2;
    if (!v10)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v4 != 1)
  {
    *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 4;
    if (!v10)
    {
      return;
    }

    goto LABEL_39;
  }

  v11 = v3 == 2 || v10;
  if (v3 == 2)
  {
    LOBYTE(v3) = 1;
  }

  *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode] = 3;
  if (v11)
  {
LABEL_39:
    v12 = qword_1C2E8BE80[v3];
LABEL_40:
    *&v5[v8] = v12;
    v13 = *&v5[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context];
    if (v13)
    {
      v16 = v5;
      v14 = sub_1C2C6EE50(v13);
      v15 = v13(v14);
      sub_1C2C71668(v13);
      if (v15)
      {
        [v15 requestTransitionToPreferredLayoutMode];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t (*sub_1C2DDF144(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode) + 1;
  if (v2 >= 6)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x20100030303uLL >> (8 * v2);
  }

  *(a1 + 8) = v3;
  return sub_1C2DDF1A4;
}

void sub_1C2DDF1BC(char *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode) + 1;
  if (v2 >= 6)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x20100030303uLL >> (8 * v2);
  }

  *a1 = v3;
}

void sub_1C2DDF1FC(char *a1)
{
  v2 = *(v1 + 16);
  if (qword_1C2E8BE80[*a1] != *(v2 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode))
  {
    v6 = *a1;
    v3 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_maximumLayoutMode) + 1;
    if (v3 >= 6)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0x20100030303uLL >> (8 * v3);
    }

    v5 = v4;
    sub_1C2DDEF28(&v6, &v5);
  }
}

uint64_t (*sub_1C2DDF290(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_preferredLayoutMode) + 1;
  if (v2 >= 6)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x20100030303uLL >> (8 * v2);
  }

  *(a1 + 8) = v3;
  return sub_1C2DDF2F0;
}

uint64_t sub_1C2DDF308(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t sub_1C2DDF370(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
  if ((((v3 & 4) == 0) ^ result))
  {
    return result;
  }

  if (result)
  {
    v4 = v3 | 6;
LABEL_6:
    *(v2 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v4;
    goto LABEL_7;
  }

  if ((v3 & 6) != 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFF9;
    goto LABEL_6;
  }

LABEL_7:
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
  if (v5)
  {

    v7 = v5(v6);
    result = sub_1C2C71668(v5);
    if (v7)
    {
      [v7 setElementNeedsUpdate];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

_BYTE *(*sub_1C2DDF44C(uint64_t a1))(_BYTE *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = (*(*(v1 + 16) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) & 4) != 0;
  return sub_1C2DDF48C;
}

_BYTE *sub_1C2DDF48C(_BYTE *result, char a2)
{
  v2 = result[8];
  v3 = *(*result + 16);
  v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors);
  if (a2)
  {
    if ((v2 ^ ((*(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) & 4) == 0)))
    {
      return result;
    }

    if ((result[8] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = v4 | 6;
    goto LABEL_9;
  }

  if ((v2 ^ ((*(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) & 4) == 0)))
  {
    return result;
  }

  if (result[8])
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 6) != 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFF9;
LABEL_9:
    *(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_presentationBehaviors) = v5;
  }

  v6 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context);
  if (v6)
  {

    v8 = v6(v7);
    result = sub_1C2C71668(v6);
    if (v8)
    {
      [v8 setElementNeedsUpdate];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C2DDF578()
{
  v1 = *(v0 + 16);
  sub_1C2DDE828();
}

uint64_t ApertureElementHandle.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ApertureDisplayLayout.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

unint64_t sub_1C2DDF6A8()
{
  result = qword_1EC062CD0;
  if (!qword_1EC062CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApertureDisplayLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApertureDisplayLayout(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C2DDF9F0()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC05BB40);
  __swift_project_value_buffer(v0, qword_1EC05BB40);
  return sub_1C2E72B34();
}

uint64_t sub_1C2DDFA64(void *a1)
{
  if (!a1)
  {
    return 1701602377;
  }

  if (a1 == 1)
  {
    return 0x646568737550;
  }

  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2E75C64();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001C2E99770;
    v4 = 0xD000000000000010;
  }

  MEMORY[0x1C6926710](v4, v6);

  return 0x20676E6968737570;
}

id sub_1C2DDFB50()
{
  v1 = sub_1C2E75A34();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter);
  *v5 = [v6 queue];
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = sub_1C2E75A54();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_call))
    {
      return [v6 activeConversationForCall_];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2DDFCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  if (qword_1EC05BB38 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2E72B44();
  __swift_project_value_buffer(v4, qword_1EC05BB40);
  v5 = v0;
  v6 = sub_1C2E72B24();
  v7 = sub_1C2E75FE4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state];
    sub_1C2DE6A40(v10);
    v11 = sub_1C2DDFA64(v10);
    v13 = v12;
    sub_1C2DE150C(v10);
    v14 = sub_1C2E43AC0(v11, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C2C6B000, v6, v7, "Updating handoff menu for state changed to: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C6927DF0](v9, -1, -1);
    MEMORY[0x1C6927DF0](v8, -1, -1);
  }

  v15 = sub_1C2E75E74();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1C2E75E34();
  v16 = v5;
  v17 = sub_1C2E75E24();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_1C2D22B9C(0, 0, v3, &unk_1C2E8C0D0, v18);
}

Swift::Void __swiftcall RoutesMoreMenuViewModel.updateMenuItem()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_1C2E75E74();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1C2E75E34();
  v5 = v0;
  v6 = sub_1C2E75E24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_1C2D22B9C(0, 0, v3, &unk_1C2E8BEC0, v7);
}

char *RoutesMoreMenuViewModel.init(call:callCenter:audioRouteService:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062CE0);
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D800);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D808);
  v20 = *(v19 - 8);
  v61 = v19;
  v62 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062CF0);
  v73 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v24 = &v54 - v23;
  sub_1C2E71894();
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRoutes] = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_pickedRoute;
  v26 = sub_1C2E71EA4();
  (*(*(v26 - 8) + 56))(&v3[v25], 1, 1, v26);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_cancellables] = MEMORY[0x1E69E7CD0];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_seenNearbyMenuItems] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_call] = a1;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter] = a2;
  v71 = a1;
  v70 = a2;
  v27 = [v70 neighborhoodActivityConduit];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit] = v27;
  sub_1C2C6E3A4(a3, &v3[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRouteService]);
  v75.receiver = v3;
  v75.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v75, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v29 = v28;
  v74 = sub_1C2E725D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D00);
  v60 = MEMORY[0x1E695BED8];
  sub_1C2C94F38(&unk_1EC05BAD0, &unk_1EC062D00);
  sub_1C2DE146C(&qword_1EC05B290, &qword_1EC05D838);
  sub_1C2E72F04();

  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v30 = sub_1C2E76084();
  v74 = v30;
  v31 = sub_1C2E76054();
  v32 = *(v31 - 8);
  v58 = *(v32 + 56);
  v59 = v32 + 56;
  v55 = v18;
  v58(v18, 1, 1, v31);
  v57 = MEMORY[0x1E695BD38];
  sub_1C2C94F38(&qword_1EC05BB10, &qword_1EC05D808);
  v56 = sub_1C2C9A17C();
  v33 = v61;
  sub_1C2E72ED4();
  sub_1C2C73644(v18, &qword_1EC0626D0);

  (*(v62 + 8))(v22, v33);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2C94F38(&unk_1EC05BAF0, &unk_1EC062CF0);
  v34 = v63;
  sub_1C2E72F14();

  (v73[1])(v24, v34);
  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v35 = a3[3];
  v73 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v35);
  v74 = sub_1C2E725C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D848);
  sub_1C2C94F38(&qword_1EC05BAE0, &qword_1EC05D848);
  sub_1C2DE146C(&qword_1EC05BB58, &unk_1EC062D10);
  v36 = v64;
  sub_1C2E72F04();

  v37 = sub_1C2E76084();
  v74 = v37;
  v38 = v55;
  v58(v55, 1, 1, v31);
  sub_1C2C94F38(&qword_1EC05BB18, &unk_1EC062CE0);
  v40 = v65;
  v39 = v66;
  sub_1C2E72ED4();
  sub_1C2C73644(v38, &qword_1EC0626D0);

  (*(v67 + 8))(v36, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2C94F38(&unk_1EC05BB00, &qword_1EC05D800);
  v41 = v68;
  sub_1C2E72F14();

  (*(v69 + 8))(v40, v41);
  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v42 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit;
  v43 = *&v29[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit];
  v44 = sub_1C2E76084();
  [v43 addDelegate:v29 queue:v44];

  v45 = [*&v29[v42] activeSplitSessionTV];
  if (v45)
  {

    v46 = *&v29[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state];
    *&v29[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state] = 1;
    sub_1C2DE150C(v46);
  }

  v47 = sub_1C2E75E74();
  v48 = v72;
  (*(*(v47 - 8) + 56))(v72, 1, 1, v47);
  sub_1C2E75E34();
  v49 = v29;
  v50 = sub_1C2E75E24();
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E85E0];
  v51[2] = v50;
  v51[3] = v52;
  v51[4] = v49;
  sub_1C2D22B9C(0, 0, v48, &unk_1C2E8BF00, v51);

  __swift_destroy_boxed_opaque_existential_1(v73);
  return v49;
}

void sub_1C2DE0B10(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRoutes) = v5;
    v7 = Strong;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C2E75E74();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1C2E75E34();
    v11 = v9;
    v12 = sub_1C2E75E24();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_1C2D22B9C(0, 0, v4, &unk_1C2E8C078, v13);
  }
}

void sub_1C2DE0CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_pickedRoute;
    v7 = Strong;
    swift_beginAccess();
    sub_1C2C9E074(a1, v7 + v6);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C2E75E74();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1C2E75E34();
    v11 = v9;
    v12 = sub_1C2E75E24();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_1C2D22B9C(0, 0, v4, &unk_1C2E8C070, v13);
  }
}

id RoutesMoreMenuViewModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit] removeDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C2DE1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C2E75E34();
  v4[3] = sub_1C2E75E24();
  v6 = sub_1C2E75DD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2DE10FC, v6, v5);
}

uint64_t sub_1C2DE10FC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state);
  if (v1)
  {
    if (v1 == 1)
    {
    }

    else
    {
      v4 = v1;

      sub_1C2DE2C20(v4);
      sub_1C2DE150C(v1);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1C2DE1214;

    return sub_1C2DE151C();
  }
}

uint64_t sub_1C2DE1214(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2DE133C, v4, v3);
}

uint64_t sub_1C2DE133C()
{
  v1 = *(v0 + 56);

  sub_1C2DE18A8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C2DE13B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DE1064(a1, v4, v5, v6);
}

uint64_t sub_1C2DE146C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1C2DE6870(&qword_1EC05BB70, MEMORY[0x1E6995D28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C2DE150C(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1C2DE151C()
{
  v1[3] = v0;
  v1[4] = sub_1C2E75E34();
  v1[5] = sub_1C2E75E24();
  v3 = sub_1C2E75DD4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2DE15B8, v3, v2);
}

uint64_t sub_1C2DE15B8()
{
  v1 = sub_1C2E75E24();
  v0[8] = v1;
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DF0);
  *v3 = v0;
  v3[1] = sub_1C2DE16E4;
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v5, 0xD000000000000015, 0x80000001C2E997B0, sub_1C2DE6A50, v2, v4);
}

uint64_t sub_1C2DE16E4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C2DE1844, v3, v2);
}

uint64_t sub_1C2DE1844()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C2DE18A8(unint64_t a1)
{
  v3 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1C2E75C14();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v133 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v132 - v9;
  v145 = sub_1C2E72074();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = &v132 - v12;
  v13 = sub_1C2E71EA4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v132 - v18;
  v19 = type metadata accessor for FTPickerView.PickerItem(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v132 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v132 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v132 - v27;
  v141 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v132 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D88);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v146 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v132 - v34;
  sub_1C2DE3128(a1);
  v152 = v36;
  v37 = sub_1C2DE38A8();
  v38 = v37;
  v39 = v37[2];
  v158 = v20;
  v161 = v39;
  v163 = v1;
  if (v39)
  {
    v162 = v13;
    v149 = v16;
    v147 = v35;
    v40 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_pickedRoute;
    v160 = v37 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    swift_beginAccess();
    v41 = 0;
    v159 = (v14 + 48);
    v154 = (v14 + 16);
    v150 = v14;
    v153 = (v14 + 8);
    v42 = v20;
    v35 = v157;
    v155 = v38;
    while (v41 < v38[2])
    {
      v43 = v38;
      sub_1C2DE6528(&v160[*(v42 + 72) * v41], v35);
      v164 = sub_1C2E72054();
      v45 = v44;
      v47 = v162;
      v46 = v163;
      if ((*v159)(v163 + v40, 1, v162))
      {

        v38 = v43;
      }

      else
      {
        v48 = v47;
        v49 = v156;
        (*v154)(v156, v46 + v40, v47);
        v50 = sub_1C2E71E94();
        v52 = v51;
        (*v153)(v49, v48);
        if (v164 == v50 && v45 == v52)
        {

          v38 = v155;
          v35 = v157;
LABEL_16:
          v56 = v35;
          v35 = v147;
          sub_1C2DE658C(v56, v147);
          v55 = 0;
LABEL_17:
          v14 = v150;
          v16 = v149;
          v13 = v162;
          goto LABEL_18;
        }

        v54 = sub_1C2E767A4();

        v38 = v155;
        v42 = v158;
        v35 = v157;
        if (v54)
        {
          goto LABEL_16;
        }
      }

      ++v41;
      sub_1C2CFEF54(v35);
      if (v161 == v41)
      {
        v55 = 1;
        v35 = v147;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v55 = 1;
LABEL_18:
  (*(v158 + 56))(v35, v55, 1, v19);
  v57 = v163;
  if (v38[2] > 1uLL || (v58 = *(v152 + 16), v58 >= 2))
  {
    v59 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_pickedRoute;
    swift_beginAccess();
    v60 = v57 + v59;
    v61 = v151;
    sub_1C2C736A4(v60, v151, &unk_1EC062D10);
    if ((*(v14 + 48))(v61, 1, v13) == 1)
    {

      v62 = &unk_1EC062D10;
    }

    else
    {
      (*(v14 + 32))(v16, v61, v13);
      v61 = v146;
      sub_1C2C736A4(v35, v146, &qword_1EC062D88);
      if ((*(v158 + 48))(v61, 1, v19) != 1)
      {
        v150 = v14;
        v162 = v13;
        sub_1C2DE658C(v61, v148);
        sub_1C2E720E4();
        type metadata accessor for StringDummy();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v98 = [objc_opt_self() bundleForClass_];
        sub_1C2E71684();

        v99 = v16;
        sub_1C2E71E94();
        v100 = v143;
        v149 = v99;
        sub_1C2DE3F20(v143);
        v101 = sub_1C2E71F74();
        v155 = v38;
        v164 = v101;

        (*(v144 + 8))(v100, v145);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DA0);
        v103 = v142;
        v104 = &v142[*(v102 + 48)];
        v105 = *MEMORY[0x1E6995D90];
        v106 = sub_1C2E72024();
        (*(*(v106 - 8) + 104))(v103, v105, v106);
        v107 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v108 = v140;
        sub_1C2DE6528(v148, v140);
        v109 = (*(v158 + 80) + 40) & ~*(v158 + 80);
        v110 = (v141 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
        v111 = swift_allocObject();
        v112 = v155;
        *(v111 + 2) = v107;
        *(v111 + 3) = v112;
        v113 = v152;
        *(v111 + 4) = v152;
        v114 = v111 + v109;
        v115 = v113;
        sub_1C2DE658C(v108, v114);
        v116 = v164;
        *(v111 + v110) = v164;
        v117 = v116;
        *v104 = sub_1C2DE65F0;
        v104[1] = v111;
        (*(*(v102 - 8) + 56))(v103, 0, 1, v102);

        sub_1C2E71FB4();

        *(v163 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem) = v117;

        if (qword_1EC05BB38 != -1)
        {
          swift_once();
        }

        v118 = sub_1C2E72B44();
        __swift_project_value_buffer(v118, qword_1EC05BB40);

        v119 = sub_1C2E72B24();
        v120 = sub_1C2E75FE4();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 134218240;
          v122 = v112[2];

          *(v121 + 4) = v122;

          *(v121 + 12) = 2048;
          v123 = *(v115 + 16);

          *(v121 + 14) = v123;

          _os_log_impl(&dword_1C2C6B000, v119, v120, "Showing routes menu with %ld audio routes and %ld nearby devices", v121, 0x16u);
          MEMORY[0x1C6927DF0](v121, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v129 = v162;
        v130 = v150;
        v131 = v149;
        sub_1C2CFEF54(v148);
        (*(v130 + 8))(v131, v129);
        return sub_1C2C73644(v35, &qword_1EC062D88);
      }

      (*(v14 + 8))(v16, v13);

      v62 = &qword_1EC062D88;
    }

    sub_1C2C73644(v61, v62);
    if (qword_1EC05BB38 == -1)
    {
LABEL_25:
      v63 = sub_1C2E72B44();
      __swift_project_value_buffer(v63, qword_1EC05BB40);
      v64 = sub_1C2E72B24();
      v65 = sub_1C2E75FC4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1C2C6B000, v64, v65, "No picked route", v66, 2u);
        MEMORY[0x1C6927DF0](v66, -1, -1);
      }

      return sub_1C2C73644(v35, &qword_1EC062D88);
    }

LABEL_48:
    swift_once();
    goto LABEL_25;
  }

  if (v58 == 1)
  {
    v164 = v19;
    v147 = v35;
    if (*(v152 + 16))
    {
      v67 = v139;
      sub_1C2DE6528(v152 + ((*(v158 + 80) + 32) & ~*(v158 + 80)), v139);

      v162 = sub_1C2E720E4();
      v68 = v134;
      sub_1C2E75BB4();
      v69 = v135;
      v70 = v137;
      (*(v135 + 16))(v133, v68, v137);
      type metadata accessor for StringDummy();
      v71 = swift_getObjCClassFromMetadata();
      v72 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      sub_1C2E75C84();
      (*(v69 + 8))(v68, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1C2E7A930;
      v74 = sub_1C2E72054();
      v76 = v75;
      *(v73 + 56) = MEMORY[0x1E69E6158];
      *(v73 + 64) = sub_1C2CAB500();
      *(v73 + 32) = v74;
      *(v73 + 40) = v76;
      sub_1C2E75C74();

      sub_1C2E720B4();
      v77 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      v78 = MEMORY[0x1E69815C0];
      v79 = MEMORY[0x1E6981568];
      v168[3] = MEMORY[0x1E69815C0];
      v168[4] = MEMORY[0x1E6981568];
      v168[0] = v77;
      v80 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
      v166 = v78;
      v167 = v79;
      v165 = v80;
      sub_1C2E745E4();
      sub_1C2E74594();
      sub_1C2E74604();

      v81 = v143;
      sub_1C2E71F24();
      v82 = v144;
      v83 = v145;
      (*(v144 + 104))(v81, *MEMORY[0x1E6995DC0], v145);
      v84 = sub_1C2E71F84();

      (*(v82 + 8))(v81, v83);
      *(v57 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem) = v84;

      if (qword_1EC05BB38 != -1)
      {
        swift_once();
      }

      v85 = sub_1C2E72B44();
      __swift_project_value_buffer(v85, qword_1EC05BB40);
      v86 = v138;
      sub_1C2DE6528(v67, v138);
      v87 = sub_1C2E72B24();
      v88 = sub_1C2E75FE4();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v147;
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v168[0] = v92;
        *v91 = 136315138;
        v93 = sub_1C2E72054();
        v95 = v94;
        sub_1C2CFEF54(v86);
        v96 = sub_1C2E43AC0(v93, v95, v168);
        v67 = v139;

        *(v91 + 4) = v96;
        _os_log_impl(&dword_1C2C6B000, v87, v88, "Showing handoff to %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1C6927DF0](v92, -1, -1);
        MEMORY[0x1C6927DF0](v91, -1, -1);

        sub_1C2C73644(v90, &qword_1EC062D88);
      }

      else
      {

        sub_1C2C73644(v90, &qword_1EC062D88);
        sub_1C2CFEF54(v86);
      }

      return sub_1C2CFEF54(v67);
    }

    __break(1u);
    goto LABEL_50;
  }

  if (qword_1EC05BB38 != -1)
  {
LABEL_50:
    swift_once();
  }

  v124 = sub_1C2E72B44();
  __swift_project_value_buffer(v124, qword_1EC05BB40);
  v125 = sub_1C2E72B24();
  v126 = sub_1C2E75FE4();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_1C2C6B000, v125, v126, "No nearby devices found, hide the menu item", v127, 2u);
    MEMORY[0x1C6927DF0](v127, -1, -1);
  }

  sub_1C2C73644(v35, &qword_1EC062D88);
  *(v163 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem) = 0;
}

uint64_t sub_1C2DE2C20(void *a1)
{
  v39 = a1;
  v2 = sub_1C2E72074();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C2E75C14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1C2E718A4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v18;
  v41 = v17;
  v19 = *(v18 + 16);
  v44 = v1;
  v19(v16, v1 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_topLevelMenuItemID, v14);
  sub_1C2E75BB4();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  sub_1C2E75C84();
  (*(v7 + 8))(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C2E7A930;
  v23 = [v39 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C2E75C64();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C2CAB500();
  v28 = 22100;
  if (v27)
  {
    v28 = v25;
  }

  v29 = 0xE200000000000000;
  if (v27)
  {
    v29 = v27;
  }

  *(v22 + 32) = v28;
  *(v22 + 40) = v29;
  sub_1C2E720E4();
  sub_1C2E75C74();

  v30 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v31 = MEMORY[0x1E69815C0];
  v32 = MEMORY[0x1E6981568];
  v49 = MEMORY[0x1E69815C0];
  v50 = MEMORY[0x1E6981568];
  v48 = v30;
  v33 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  v46 = v31;
  v47 = v32;
  v45 = v33;
  sub_1C2E745E4();
  sub_1C2E74594();
  sub_1C2E74604();

  sub_1C2E71F24();
  v35 = v42;
  v34 = v43;
  (*(v42 + 104))(v4, *MEMORY[0x1E6995DC0], v43);
  v36 = sub_1C2E71F84();

  (*(v35 + 8))(v4, v34);
  (*(v40 + 8))(v16, v41);
  *(v44 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem) = v36;
}

void sub_1C2DE3128(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FTPickerView.PickerItem(0);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_1C2E718A4();
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_1C2E72074();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v50 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v11 = sub_1C2E764E4();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_28:
    v62 = MEMORY[0x1E69E7CC0];
    return;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v58 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_seenNearbyMenuItems;
    v13 = a1 & 0xC000000000000001;
    v47 = (v6 + 8);
    v48 = (v8 + 104);
    v46 = (v8 + 8);
    v62 = MEMORY[0x1E69E7CC0];
    v45 = *MEMORY[0x1E6995DB0];
    v53 = v11;
    v54 = a1;
    v49 = v4;
    v56 = v2;
    v59 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x1C6927010](v12, a1, v9);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 name];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1C2E75C64();
        v20 = v19;

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          v22 = [v15 identifierWithType_];
          if (v22)
          {
            v23 = v22;
            v61 = sub_1C2E75C64();
            v25 = v24;

            if ([v15 deviceModel] == 3)
            {
              v26 = v58;
              swift_beginAccess();
              v27 = *(v2 + v26);
              if (*(v27 + 16) && (v28 = sub_1C2D921F4(v61, v25), (v29 & 1) != 0))
              {
                v30 = *(*(v27 + 56) + 8 * v28);
                swift_endAccess();
                swift_retain_n();
              }

              else
              {
                swift_endAccess();
                sub_1C2E720E4();
                v31 = sub_1C2E75064();
                v32 = v50;
                *v50 = v31;
                (*v48)(v32, v45, v57);
                v33 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v34 = swift_allocObject();
                *(v34 + 16) = v33;
                *(v34 + 24) = v15;

                v35 = v15;
                v36 = v51;
                sub_1C2E71894();
                v30 = sub_1C2E71F84();

                (*v47)(v36, v52);
                (*v46)(v32, v57);
                v2 = v56;
                v4 = v49;

                v37 = v58;
                swift_beginAccess();
                swift_retain_n();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v63 = *(v2 + v37);
                *(v2 + v37) = 0x8000000000000000;
                sub_1C2D93A88(v30, v61, v25, isUniquelyReferenced_nonNull_native);

                *(v2 + v37) = v63;
                swift_endAccess();
              }

              v39 = v60;
              sub_1C2E71894();
              *&v39[*(v4 + 20)] = v30;
              v39[*(v4 + 24)] = 0;
              v40 = swift_isUniquelyReferenced_nonNull_native();
              v13 = v59;
              if ((v40 & 1) == 0)
              {
                v62 = sub_1C2DD2688(0, v62[2] + 1, 1, v62);
              }

              v11 = v53;
              v42 = v62[2];
              v41 = v62[3];
              if (v42 >= v41 >> 1)
              {
                v62 = sub_1C2DD2688(v41 > 1, v42 + 1, 1, v62);
              }

              v43 = v62;
              v62[2] = v42 + 1;
              sub_1C2DE658C(v60, v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42);
              a1 = v54;
            }

            else
            {

              v13 = v59;
            }

            goto LABEL_7;
          }
        }
      }

LABEL_7:
      if (v11 == ++v12)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1C2DE3740(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1C2E75E74();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_1C2E75E34();
    v9 = v7;
    v10 = a2;
    v11 = sub_1C2E75E24();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = v10;
    sub_1C2D22B9C(0, 0, v5, &unk_1C2E8C0A8, v12);
  }
}

void *sub_1C2DE38A8()
{
  v1 = type metadata accessor for FTPickerView.PickerItem(0);
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = (v42 - v5);
  v6 = sub_1C2E71EA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v54 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRoutes);
  v13 = *(v12 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1C2E720E4();
  v52 = v0;
  v49 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter);
  v50 = v14;
  v16 = *(v7 + 16);
  v15 = v7 + 16;
  v59 = v16;
  v17 = *(v15 + 64);
  v18 = v12 + ((v17 + 32) & ~v17);
  v42[2] = 0x80000001C2E949D0;
  v47 = *(v15 + 56);
  v48 = v17;
  v46 = *MEMORY[0x1E6995DB0];
  v45 = (v17 + 24) & ~v17;
  v43 = (v15 - 8);
  v44 = (v15 + 16);
  v42[1] = v12;

  v19 = MEMORY[0x1E69E7CC0];
  v61 = v15;
  v62 = v6;
  v60 = v11;
  v51 = v3;
  v20 = v53;
  do
  {
    v59(v11, v18, v6);
    v58 = sub_1C2E71E94();
    v21 = sub_1C2E71E64();
    if (v22 && (!v21 && v22 == 0xE000000000000000 || (sub_1C2E767A4() & 1) != 0))
    {
    }

    *v20 = sub_1C2E75064();
    v23 = sub_1C2E72074();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v20, v46, v23);
    (*(v24 + 56))(v20, 0, 1, v23);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v54;
    v27 = v62;
    v59(v54, v60, v62);
    v28 = v45;
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    (*v44)(v29 + v28, v26, v27);

    v30 = sub_1C2E71FF4();

    sub_1C2C73644(v20, &qword_1EC062DB0);

    v31 = v49;
    v32 = [v49 frontmostAudioOrVideoCall];
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = [v31 activeConversationForCall_];
    if (!v33)
    {

      LOBYTE(v32) = 0;
LABEL_13:
      v36 = v51;
      v11 = v60;
      goto LABEL_16;
    }

    v34 = v33;
    v35 = [v33 hasJoinedActivitySession];

    v11 = v60;
    if (v35)
    {
      LOBYTE(v32) = sub_1C2E71E84() ^ 1;
    }

    else
    {
      LOBYTE(v32) = 0;
    }

    v36 = v51;
LABEL_16:
    sub_1C2E71894();
    v37 = v57;
    *(v36 + *(v57 + 20)) = v30;
    *(v36 + *(v37 + 24)) = v32 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1C2DD2688(0, v19[2] + 1, 1, v19);
    }

    v40 = v19[2];
    v39 = v19[3];
    if (v40 >= v39 >> 1)
    {
      v19 = sub_1C2DD2688(v39 > 1, v40 + 1, 1, v19);
    }

    (*v43)(v11, v6);
    v19[2] = v40 + 1;
    sub_1C2DE658C(v36, v19 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v40);
    v18 += v47;
    --v13;
  }

  while (v13);

  return v19;
}

uint64_t sub_1C2DE3E84()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1C2C6E3A4(result + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRouteService, v2);

    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C2E725F4();
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t sub_1C2DE3F20@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemTealColor];
  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = [v2 resolvedColorWithTraitCollection_];

  v5 = sub_1C2E71E64();
  if (v6 && (!v5 && v6 == 0xE000000000000000 || (sub_1C2E767A4() & 1) != 0))
  {
  }

  v7 = v4;
  sub_1C2E74E94();
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E745E4();
  sub_1C2E74594();
  sub_1C2E74604();

  sub_1C2E71F24();

  v8 = *MEMORY[0x1E6995DC0];
  v9 = sub_1C2E72074();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t sub_1C2DE40F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)())
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    sub_1C2CA30C0(v10);
    sub_1C2DE6684(a2, a4, a5);
  }

  return 0;
}

uint64_t sub_1C2DE41C4(uint64_t a1)
{
  v2 = sub_1C2E759D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E75A04();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *&Strong[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter];
    v24 = Strong;
    v25 = [v14 queue];
    v15 = swift_allocObject();
    v26 = v5;
    v16 = v15;
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v12, a1, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v12, v8);
    *(v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    aBlock[4] = sub_1C2DE6AF0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2CB2CC4;
    aBlock[3] = &block_descriptor_103;
    v19 = _Block_copy(aBlock);

    sub_1C2E759F4();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C2DE6870(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
    sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60);
    v20 = v28;
    sub_1C2E76464();
    v21 = v25;
    MEMORY[0x1C6926AC0](0, v7, v20, v19);
    _Block_release(v19);

    (*(v3 + 8))(v20, v2);
    (*(v27 + 8))(v7, v26);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    return sub_1C2E75DE4();
  }
}

uint64_t sub_1C2DE4620()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C2DE46BC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DF8);
  return sub_1C2E75DE4();
}

id sub_1C2DE46BC()
{
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter);
  *v6 = [v7 queue];
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = sub_1C2E75A54();
  (*(v3 + 8))(v6, v2);
  if ((v8 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    v11 = sub_1C2E764E4();
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v9 = [objc_opt_self() eligibleLagunaDevices_];
  v8 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v8;
  }

  v10 = v9;
  sub_1C2C6E1B4(0, &qword_1EC05B248);
  v1 = sub_1C2E75D74();

  v25 = v8;
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_22:

    return v8;
  }

LABEL_5:
  v12 = 0;
  v24 = v1 & 0xC000000000000001;
  v8 = &selRef_insertSublayer_atIndex_;
  while (1)
  {
    if (v24)
    {
      v13 = MEMORY[0x1C6927010](v12, v1);
    }

    else
    {
      if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v13 = *(v1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v16 = [v13 *(v8 + 1552)];
    if (v16)
    {
      break;
    }

LABEL_7:
    ++v12;
    if (v15 == v11)
    {
      v8 = v25;
      goto LABEL_22;
    }
  }

  v17 = v8;
  result = [v14 *(v8 + 1552)];
  if (result)
  {
    v19 = result;
    v20 = sub_1C2E75C64();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
    }

    else
    {
    }

    v8 = v17;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2DE49AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1C2E718A4();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = sub_1C2E75E34();
  v5[28] = sub_1C2E75E24();
  v8 = sub_1C2E75DD4();
  v5[29] = v8;
  v5[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2DE4AF8, v8, v7);
}

uint64_t sub_1C2DE4AF8()
{
  v1 = v0[18];
  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem))
  {

    sub_1C2E72064();

    v1 = v0[18];
  }

  v2 = v0[19];
  v3 = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state;
  v0[31] = OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_state;
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
  sub_1C2DE150C(v4);
  sub_1C2DDFCA4();
  v6 = sub_1C2E75E24();
  v0[32] = v6;
  v7 = swift_allocObject();
  v0[33] = v7;
  swift_unknownObjectWeakInit();
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_1C2DE4C70;
  v9 = v0[26];
  v10 = v0[24];
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v9, v6, v11, 0x2866666F646E6168, 0xEC000000293A6F74, sub_1C2DE69E4, v7, v10);
}

uint64_t sub_1C2DE4C70()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1C2DE4DD0, v3, v2);
}

uint64_t sub_1C2DE4DD0()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  sub_1C2C736A4(v0[26], v1, &qword_1EC062DB8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[25];
  if (v4 == 1)
  {
    sub_1C2C73644(v0[26], &qword_1EC062DB8);

    sub_1C2C73644(v5, &qword_1EC062DB8);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    (*(v0[21] + 32))(v0[23], v0[25], v0[20]);
    v10 = *(v9 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit);
    v11 = sub_1C2E71864();
    v0[35] = v11;
    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_1C2DE5020;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062DC0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2DE5C1C;
    v0[13] = &block_descriptor_17;
    v0[14] = v12;
    [v10 handoffConversation:v11 toTVDevice:v8 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C2DE5020()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1C2DE524C;
  }

  else
  {
    v5 = sub_1C2DE5150;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C2DE5150()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[18];

  v8 = *(v7 + v2);
  *(v7 + v2) = 1;
  sub_1C2DE150C(v8);
  sub_1C2DDFCA4();
  (*(v6 + 8))(v4, v5);
  sub_1C2C73644(v3, &qword_1EC062DB8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C2DE524C()
{
  v44 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[18];

  swift_willThrow();

  v4 = *(v3 + v2);
  *(v3 + v2) = 0;
  sub_1C2DE150C(v4);
  sub_1C2DDFCA4();
  if (qword_1EC05BB38 != -1)
  {
    swift_once();
  }

  v5 = v0[36];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];
  v11 = sub_1C2E72B44();
  __swift_project_value_buffer(v11, qword_1EC05BB40);
  v12 = sub_1C2E75FC4();
  (*(v9 + 16))(v7, v6, v8);
  v13 = v10;
  v14 = v5;
  v15 = sub_1C2E72B24();

  v16 = os_log_type_enabled(v15, v12);
  v17 = v0[36];
  v18 = v0[26];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[21];
  if (v16)
  {
    v42 = v0[23];
    v23 = v0[19];
    v39 = v12;
    v24 = swift_slowAlloc();
    v38 = v17;
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v24 = 136315650;
    sub_1C2DE6870(&qword_1EC05CF08, MEMORY[0x1E69695A8]);
    v41 = v18;
    v26 = sub_1C2E76774();
    v28 = v27;
    v29 = *(v22 + 8);
    v29(v19, v21);
    v30 = sub_1C2E43AC0(v26, v28, &v43);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v23;
    *v25 = v23;
    *(v24 + 22) = 2112;
    v31 = v23;
    v32 = v38;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v33;
    v25[1] = v33;
    _os_log_impl(&dword_1C2C6B000, v15, v39, "Error pushing conversation %s to %@ -- %@", v24, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062DD0);
    swift_arrayDestroy();
    MEMORY[0x1C6927DF0](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1C6927DF0](v40, -1, -1);
    MEMORY[0x1C6927DF0](v24, -1, -1);

    v29(v42, v21);
    v34 = v41;
  }

  else
  {

    v35 = *(v22 + 8);
    v35(v19, v21);
    v35(v20, v21);
    v34 = v18;
  }

  sub_1C2C73644(v34, &qword_1EC062DB8);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1C2DE55F8(uint64_t a1)
{
  v2 = sub_1C2E759D4();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E75A04();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062DE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *&Strong[OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter];
    v26 = Strong;
    v27 = [v17 queue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v12, a1, v8);
    v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v20 = swift_allocObject();
    (*(v9 + 32))(v20 + v19, v12, v8);
    *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    aBlock[4] = sub_1C2DE6A18;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2CB2CC4;
    aBlock[3] = &block_descriptor_89;
    v21 = _Block_copy(aBlock);

    sub_1C2E759F4();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C2DE6870(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
    sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60);
    sub_1C2E76464();
    v22 = v27;
    MEMORY[0x1C6926AC0](0, v7, v4, v21);
    _Block_release(v21);

    (*(v30 + 8))(v4, v2);
    (*(v28 + 8))(v7, v29);
  }

  else
  {
    v24 = sub_1C2E718A4();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
    return sub_1C2E75DE4();
  }
}

uint64_t sub_1C2DE5AC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = sub_1C2DDFB50(), v4, v5))
  {
    v6 = [v5 UUID];

    sub_1C2E71884();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1C2E718A4();
  (*(*(v8 - 8) + 56))(v2, v7, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062DE0);
  return sub_1C2E75DE4();
}

uint64_t sub_1C2DE5C1C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t RoutesMoreMenuViewModel.createMenuItem()()
{
  v1 = sub_1C2E75A34();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = [*(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_callCenter) queue];
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v6 = sub_1C2E75A54();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_menuItem);
    if (!v1)
    {
      return v1;
    }

    v7 = sub_1C2DDFB50();
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    v9 = [v7 state];

    if (v9 != 3)
    {
      goto LABEL_8;
    }

    v10 = sub_1C2DE46BC();
    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v11)
      {
        return v1;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = sub_1C2E764E4();

  if (v13)
  {
    return v1;
  }

LABEL_7:
  if (*(*(v0 + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_audioRoutes) + 16) <= 1uLL)
  {
LABEL_8:

    return 0;
  }

  return v1;
}

uint64_t sub_1C2DE5F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1C2E75E74();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1C2E75E34();
  v10 = v4;
  v11 = sub_1C2E75E24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_1C2D22B9C(0, 0, v8, a4, v12);
}

void sub_1C2DE60D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1C2E75E74();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C2E75E34();
  v12 = a1;
  v13 = sub_1C2E75E24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_1C2D22B9C(0, 0, v10, a6, v14);
}

id RoutesMoreMenuViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2DE62BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DE1064(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RoutesMoreMenuViewModel()
{
  result = qword_1EC05BEB0;
  if (!qword_1EC05BEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2DE63C4()
{
  sub_1C2E718A4();
  if (v0 <= 0x3F)
  {
    sub_1C2C9DF64();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI23RoutesMoreMenuViewModelC5State33_38FE984871EC231FE451C11D9A75BCDFLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2DE6528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTPickerView.PickerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DE658C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTPickerView.PickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DE65F0()
{
  v1 = *(type metadata accessor for FTPickerView.PickerItem(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_1C2DE40F8(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_1C2DE6684(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  v6 = type metadata accessor for FTPickerView.PickerItem(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = type metadata accessor for FTPickerView(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1C2DE6528(a2, v14);
  v17[2] = a1;
  sub_1C2DE6528(v14, v11);
  sub_1C2DE6528(v11, v8);

  sub_1C2E75174();
  sub_1C2CFEF54(v11);
  sub_1C2CFEF54(v14);
  *v17 = sub_1C2DE686C;
  v17[1] = a3;
  sub_1C2DE6870(&qword_1EC062DA8, type metadata accessor for FTPickerView);
  return sub_1C2E75374();
}

uint64_t sub_1C2DE6870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DE68B8()
{
  sub_1C2E71EA4();

  return sub_1C2DE3E84();
}

uint64_t sub_1C2DE6924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2CC8E70;

  return sub_1C2DE49AC(a1, v4, v5, v7, v6);
}

id sub_1C2DE6A40(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_85Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t sub_1C2DE6B18(uint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v3 + v5, v6);
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

CommunicationsUI::PriorityStackViewManager::Priority_optional __swiftcall PriorityStackViewManager.Priority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 3 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C2DE6C30()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](3 - v1);
  return sub_1C2E76894();
}

uint64_t sub_1C2DE6CB0()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](3 - v1);
  return sub_1C2E76894();
}

id sub_1C2DE6D94()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager____lazy_storage___stackViewEmptyHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager____lazy_storage___stackViewEmptyHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager____lazy_storage___stackViewEmptyHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PriorityStackViewManager.__allocating_init(stackView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager____lazy_storage___stackViewEmptyHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_orderCounter] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = sub_1C2DE6D94();
  [v6 setActive_];

  return v5;
}

id PriorityStackViewManager.init(stackView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager____lazy_storage___stackViewEmptyHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_orderCounter] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = sub_1C2DE6D94();
  [v6 setActive_];

  return v5;
}

BOOL PriorityStackViewManager.isEmpty.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) == 0;
}

Swift::Void __swiftcall PriorityStackViewManager.addView(_:priority:animated:)(UIView *_, CommunicationsUI::PriorityStackViewManager::Priority priority, Swift::Bool animated)
{
  LOBYTE(v51) = *priority;
  v53 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView);
  v5 = [(UIView *)v53 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v6 = sub_1C2E75D74();

  v7 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 >> 62)
  {
LABEL_43:
    v8 = sub_1C2E764E4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v8 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6927010](i, v6);
    }

    else
    {
      if (i >= v7[2])
      {
        goto LABEL_41;
      }

      v10 = *(v6 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_1C2C6E1B4(0, &qword_1EC062E20);
    v12 = sub_1C2E76234();

    if (v12)
    {

      return;
    }
  }

  v13 = sub_1C2DE6D94();
  [v13 setActive_];

  v14 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_orderCounter;
  v15 = *(v52 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_orderCounter);
  v16 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority;
  swift_beginAccess();
  v17 = *(v52 + v16);
  v18 = _;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + v16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1C2DD26B0(0, *(v17 + 2) + 1, 1, v17);
    *(v52 + v16) = v17;
  }

  v21 = *(v17 + 2);
  v20 = *(v17 + 3);
  if (v21 >= v20 >> 1)
  {
    v17 = sub_1C2DD26B0((v20 > 1), v21 + 1, 1, v17);
  }

  *(v17 + 2) = v21 + 1;
  v22 = &v17[24 * v21];
  *(v22 + 4) = v18;
  v22[40] = v51;
  *(v22 + 6) = v15;
  *(v52 + v16) = v17;
  swift_endAccess();
  v23 = *(v52 + v14);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v51 = v18;
    *(v52 + v14) = v25;
    swift_beginAccess();
    _ = 0;
    sub_1C2DE7678((v52 + v16));
    swift_endAccess();
    v26 = *(v52 + v16);
    v27 = *(v26 + 16);

    v28 = v53;
    if (v27)
    {
      v29 = 0;
      v30 = (v26 + 32);
      v6 = &selRef_insertSublayer_atIndex_;
      v7 = &selRef_insertSublayer_atIndex_;
      while (v29 < *(v26 + 16))
      {
        _ = *v30;
        v35 = [(UIView *)_ superview];
        if (!v35 || (v36 = v35, v35, v37 = v36 == v53, v28 = v53, !v37))
        {
          v31 = [(UIView *)v28 arrangedSubviews];
          v32 = sub_1C2E75D74();

          if (v32 >> 62)
          {
            v33 = sub_1C2E764E4();
            v28 = v53;
          }

          else
          {
            v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v29 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v29;
          }

          [(UIView *)v28 insertArrangedSubview:_ atIndex:v34];
        }

        ++v29;

        v30 += 3;
        if (v27 == v29)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_42;
    }

LABEL_32:

    if (animated)
    {
      v38 = sub_1C2DE76E8(v51, 0);
      if (v38)
      {
        v39 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1C2E7A720;
        *(v40 + 32) = v38;
        sub_1C2C6E1B4(0, &qword_1EC062670);
        v41 = v38;
        v42 = sub_1C2E75D64();

        [v39 activateConstraints_];

        [(UIView *)v28 setNeedsLayout];
        [(UIView *)v28 layoutIfNeeded];
      }

      [(UIView *)v51 setAlpha:0.0];
      [(UIView *)v51 setHidden:1];
      v43 = objc_opt_self();
      v44 = swift_allocObject();
      *(v44 + 16) = v51;
      v58 = sub_1C2DE864C;
      v59 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v55 = 1107296256;
      v56 = sub_1C2CB2CC4;
      v57 = &block_descriptor_18;
      v45 = _Block_copy(&aBlock);
      v46 = v51;

      v47 = swift_allocObject();
      *(v47 + 16) = v38;
      v58 = sub_1C2DE8670;
      v59 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v55 = 1107296256;
      v56 = sub_1C2CB3840;
      v57 = &block_descriptor_6_0;
      v48 = _Block_copy(&aBlock);
      v49 = v38;

      [v43 animateWithDuration:4 delay:v45 options:v48 animations:0.15 completion:0.0];

      _Block_release(v48);
      _Block_release(v45);
    }

    else
    {
    }
  }
}

uint64_t sub_1C2DE7678(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C2D8E23C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C2DE87C8(v5);
  *a1 = v2;
  return result;
}

id sub_1C2DE76E8(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView);
  if ([v5 alignment] != 3)
  {
    return 0;
  }

  v6 = [v5 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v7 = sub_1C2E75D74();

  v8 = v7 >> 62 ? sub_1C2E764E4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v8 != 1 && (a2 & 1) == 0)
  {
    return 0;
  }

  if ([v5 axis] == 1)
  {
    v10 = &selRef_centerXAnchor;
  }

  else
  {
    v10 = &selRef_centerYAnchor;
  }

  v11 = [a1 *v10];
  v12 = [v5 *v10];
  v13 = [v11 constraintEqualToAnchor_];

  return v13;
}

Swift::Void __swiftcall PriorityStackViewManager.removeView(_:animated:)(UIView *_, Swift::Bool animated)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority;
  swift_beginAccess();
  v33 = v2;
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  if (!v6)
  {
LABEL_6:

    return;
  }

  v7 = 0;
  v8 = 32;
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = *(v5 + v8);
    sub_1C2C6E1B4(0, &qword_1EC062E20);
    v10 = v9;
    v2 = sub_1C2E76234();

    if (v2)
    {
      break;
    }

    ++v7;
    v8 += 24;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  sub_1C2DE7D00(v7, &aBlock);
  swift_endAccess();

  v11 = swift_allocObject();
  *(v11 + 16) = v33;
  *(v11 + 24) = _;
  if (!animated)
  {
    v26 = *&v33[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView];
    v27 = v33;
    v28 = _;
    [v26 removeArrangedSubview_];
    [(UIView *)v28 removeFromSuperview];
    v2 = sub_1C2DE6D94();
    v29 = [v26 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v30 = sub_1C2E75D74();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

      [v2 setActive_];

      return;
    }

LABEL_15:
    v31 = sub_1C2E764E4();
    goto LABEL_13;
  }

  v12 = v33;
  v13 = _;
  v14 = sub_1C2DE76E8(v13, 0);
  if (v14)
  {
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C2E7A720;
    *(v16 + 32) = v14;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v17 = v14;
    v18 = sub_1C2E75D64();

    [v15 activateConstraints_];

    v19 = *&v12[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView];
    [v19 setNeedsLayout];
    [v19 layoutIfNeeded];
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  v38 = sub_1C2DE8694;
  v39 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C2CB2CC4;
  v37 = &block_descriptor_15_0;
  v22 = _Block_copy(&aBlock);
  v23 = v13;

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C2DE868C;
  *(v24 + 24) = v11;
  v38 = sub_1C2D0B4AC;
  v39 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C2CB3840;
  v37 = &block_descriptor_21;
  v25 = _Block_copy(&aBlock);

  [v20 animateWithDuration:4 delay:v22 options:v25 animations:0.15 completion:0.0];

  _Block_release(v25);
  _Block_release(v22);
}

uint64_t sub_1C2DE7D00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C2D8E23C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

void sub_1C2DE7DA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView);
  [v3 removeArrangedSubview_];
  [a2 removeFromSuperview];
  v7 = sub_1C2DE6D94();
  v4 = [v3 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v5 = sub_1C2E75D74();

  if (v5 >> 62)
  {
    v6 = sub_1C2E764E4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v7 setActive_];
}

Swift::Void __swiftcall PriorityStackViewManager.removeAllViews(animated:)(Swift::Bool animated)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_viewsWithPriority;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    aBlock = MEMORY[0x1E69E7CC0];

    sub_1C2E76634();
    v7 = 32;
    do
    {
      v8 = *(v4 + v7);
      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
      v7 += 24;
      --v5;
    }

    while (v5);

    v9 = aBlock;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *&v1[v3] = v6;

  *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_orderCounter] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  if (!animated)
  {

    sub_1C2DE8334(v9, v1);

    return;
  }

  v11 = *&v1[OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView];

  v12 = v1;
  v13 = [v11 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v14 = sub_1C2E75D74();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_17:

LABEL_18:
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v9;
    v32 = sub_1C2DE86FC;
    v33 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1C2CB2CC4;
    v31 = &block_descriptor_30_2;
    v25 = _Block_copy(&aBlock);

    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C2DE86F4;
    *(v26 + 24) = v10;
    v32 = sub_1C2D0BD8C;
    v33 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1C2CB3840;
    v31 = &block_descriptor_36;
    v27 = _Block_copy(&aBlock);

    [v23 animateWithDuration:4 delay:v25 options:v27 animations:0.15 completion:0.0];

    _Block_release(v27);
    _Block_release(v25);
    return;
  }

  if (!sub_1C2E764E4())
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6927010](0, v14);
    goto LABEL_12;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
LABEL_12:
    v16 = v15;

    v17 = sub_1C2DE76E8(v16, 1);
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C2E7A720;
      *(v20 + 32) = v18;
      sub_1C2C6E1B4(0, &qword_1EC062670);
      v21 = v18;
      v22 = sub_1C2E75D64();

      [v19 activateConstraints_];

      [v11 setNeedsLayout];
      [v11 layoutIfNeeded];
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1C2DE8334(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC16CommunicationsUI24PriorityStackViewManager_stackView;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6927010](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [*(a2 + v6) removeArrangedSubview_];
      [v8 removeFromSuperview];

      ++v5;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1C2DE8430(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6927010](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 setAlpha_];
      [v5 setHidden_];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id PriorityStackViewManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PriorityStackViewManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C2DE8670()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

id sub_1C2DE86A0(char a1)
{
  v3 = *(v1 + 16);
  [v3 setAlpha_];

  return [v3 setHidden_];
}

unint64_t sub_1C2DE8704()
{
  result = qword_1EC062E28;
  if (!qword_1EC062E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062E28);
  }

  return result;
}

uint64_t sub_1C2DE87C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C2E76764();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C2E75DA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C2DE896C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C2DE88C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C2DE88C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 24 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      result = *(v11 - 8);
      if (3 - result >= (3 - v8) && (result != v8 || v9 >= *v11))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v11[1];
      *(v11 + 1) = *(v11 - 1);
      result = *v11;
      v11[3] = *v11;
      *(v11 - 2) = v13;
      *(v11 - 8) = v8;
      *v11 = v9;
      v11 -= 3;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2DE896C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v8 = *v97;
    if (!*v97)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_108;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *a3 + 24 * v10;
      v15 = *(v14 + 8);
      if (3 - v15 >= (3 - v12))
      {
        v17 = *(v14 + 16);
        v16 = v15 == v12 && v13 < v17;
      }

      else
      {
        v16 = 1;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v19 = (*a3 + 24 * v10 + 64);
        do
        {
          v20 = *(v19 - 8);
          v21 = *v19;
          if (3 - v12 < 3 - v20)
          {
            if (!v16)
            {
              goto LABEL_33;
            }
          }

          else if (v12 == v20)
          {
            if (((v16 ^ (v21 >= v13)) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (v16)
          {
            goto LABEL_25;
          }

          v19 += 3;
          ++v8;
          v13 = v21;
          LODWORD(v12) = v20;
        }

        while (v6 != v8);
        v8 = v6;
      }

LABEL_24:
      if (v16)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v22 = 24 * v8 - 8;
          v23 = 24 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v27 = (v26 + v23);
              v28 = (v26 + v22);
              v29 = *v27;
              v30 = *(v27 + 8);
              v31 = v27[2];
              v32 = *v28;
              *v27 = *(v28 - 1);
              v27[2] = v32;
              *(v28 - 2) = v29;
              *(v28 - 8) = v30;
              *v28 = v31;
            }

            ++v25;
            v22 -= 24;
            v23 += 24;
          }

          while (v25 < v24);
          v6 = a3[1];
        }
      }
    }

LABEL_33:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_135;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          result = sub_1C2CC780C(v9);
          v9 = result;
LABEL_108:
          v92 = *(v9 + 2);
          if (v92 >= 2)
          {
            while (*a3)
            {
              v93 = *&v9[16 * v92];
              v94 = *&v9[16 * v92 + 24];
              sub_1C2DE8FC4((*a3 + 24 * v93), (*a3 + 24 * *&v9[16 * v92 + 16]), *a3 + 24 * v94, v8);
              if (v5)
              {
              }

              if (v94 < v93)
              {
                goto LABEL_131;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1C2CC780C(v9);
              }

              if (v92 - 2 >= *(v9 + 2))
              {
                goto LABEL_132;
              }

              v95 = &v9[16 * v92];
              *v95 = v93;
              *(v95 + 1) = v94;
              result = sub_1C2CC7780(v92 - 1);
              v92 = *(v9 + 2);
              if (v92 <= 1)
              {
              }
            }

            goto LABEL_142;
          }
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2CC7820(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1C2CC7820((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v10;
    *(v48 + 5) = v8;
    v49 = *v97;
    if (!*v97)
    {
      goto LABEL_143;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_122;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_125;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_129;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_124;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_127;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v89 = *&v9[16 * v88 + 32];
        v90 = *&v9[16 * v50 + 40];
        sub_1C2DE8FC4((*a3 + 24 * v89), (*a3 + 24 * *&v9[16 * v50 + 32]), *a3 + 24 * v90, v49);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C2CC780C(v9);
        }

        if (v88 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v91 = &v9[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_1C2CC7780(v50);
        v47 = *(v9 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_120;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_121;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_123;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_126;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_130;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_106;
    }
  }

  v33 = *a3;
  v34 = *a3 + 24 * v8 - 8;
  v35 = v10 - v8;
LABEL_43:
  v36 = v33 + 24 * v8;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 8);
    if (3 - v41 >= (3 - v37) && (v41 != v37 || v38 >= *v40))
    {
LABEL_42:
      ++v8;
      v34 += 24;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_43;
      }

      v8 = v6;
      goto LABEL_55;
    }

    if (!v33)
    {
      break;
    }

    v43 = v40[1];
    *(v40 + 1) = *(v40 - 1);
    v40[3] = *v40;
    *(v40 - 2) = v43;
    *(v40 - 8) = v37;
    *v40 = v38;
    v40 -= 3;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C2DE8FC4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
LABEL_39:
      v19 = v6;
    }

    else
    {
      do
      {
        v20 = 0;
        v21 = v12;
        while (1)
        {
          v12 = &v21[v20];
          v22 = (v5 + v20);
          v23 = (v5 + v20 - 24);
          v24 = v21[v20 - 16];
          v25 = *(v6 - 16);
          if (3 - v25 < (3 - v24))
          {
            break;
          }

          if (v25 == v24 && *(v12 - 1) < *(v6 - 1))
          {
            break;
          }

          if (v22 != v12)
          {
            v27 = *(v12 - 24);
            *(v5 + v20 - 8) = *(v12 - 1);
            *v23 = v27;
          }

          v20 -= 24;
          v12 = &v21[v20];
          if (&v21[v20] <= v4)
          {
            goto LABEL_39;
          }
        }

        v19 = v6 - 24;
        if (v22 != v6)
        {
          v28 = *v19;
          *(v5 + v20 - 8) = *(v6 - 1);
          *v23 = v28;
        }

        if (v12 <= v4)
        {
          break;
        }

        v5 = v5 + v20 - 24;
        v6 -= 24;
      }

      while (v19 > v7);
      v12 = &v21[v20];
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      while (1)
      {
        v13 = v6[8];
        v14 = v4[8];
        if (3 - v14 < (3 - v13))
        {
          break;
        }

        if (v14 == v13 && *(v6 + 2) < *(v4 + 2))
        {
          break;
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 24;
        if (!v17)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 24;
      if (v17)
      {
        goto LABEL_17;
      }

LABEL_16:
      v18 = *v16;
      *(v7 + 2) = *(v16 + 2);
      *v7 = v18;
      goto LABEL_17;
    }

LABEL_19:
    v19 = v7;
  }

  v29 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v30 = (v29 >> 2) + (v29 >> 63);
  if (v19 != v4 || v19 >= &v4[24 * v30])
  {
    memmove(v19, v4, 24 * v30);
  }

  return 1;
}

id sub_1C2DE92F4(void *a1, char a2)
{
  [v2 addChildViewController_];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController;
  v7 = *&v2[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController];
  if (v7)
  {
    v8 = a1;
    v9 = v2;
    [v7 willMoveToParentViewController_];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C2DE98E4(v2, a1);
    [*&v2[v6] removeFromParentViewController];
    v11 = *&v2[v6];
    *&v2[v6] = a1;
    v21 = a1;
    goto LABEL_7;
  }

  v19 = a1;
  v20 = v2;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = [v2 view];
  if (result)
  {
    v11 = result;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C2DEAB74;
    *(v13 + 24) = v5;
    v26 = sub_1C2D0B4AC;
    v27 = v13;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C2CB2CC4;
    v25 = &block_descriptor_25;
    v14 = _Block_copy(&v22);

    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = a1;
    v26 = sub_1C2DEAB7C;
    v27 = v15;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C2CB3840;
    v25 = &block_descriptor_31;
    v16 = _Block_copy(&v22);
    v17 = a1;
    v18 = v2;

    [v12 transitionWithView:v11 duration:5242880 options:v14 animations:v16 completion:0.25];
    _Block_release(v16);
    _Block_release(v14);
LABEL_7:

    [a1 didMoveToParentViewController_];
  }

  __break(1u);
  return result;
}

id sub_1C2DE9588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong systemApertureElementContext];

  return v2;
}
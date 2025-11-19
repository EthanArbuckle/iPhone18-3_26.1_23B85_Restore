uint64_t sub_1D2574F54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28754C8();
  *a1 = result;
  return result;
}

unint64_t sub_1D2574FA8()
{
  result = qword_1EC6DDF70;
  if (!qword_1EC6DDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF78);
    sub_1D2575034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF70);
  }

  return result;
}

unint64_t sub_1D2575034()
{
  result = qword_1EC6DDF80;
  if (!qword_1EC6DDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF80);
  }

  return result;
}

uint64_t PhotoGridViewModel.__allocating_init(servicesFetcher:sessionUndoManager:creationViewStyle:pickerMode:forwardingPhotoLibraryUpdatingDelegate:)(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v20 = *a3;
  LOBYTE(a3) = *a4;
  *(v10 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 80) = 1;
  *(v10 + 97) = 1;
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v12 = sub_1D2871818();
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v14 = (v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v14 = 0;
  v14[1] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v13(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]) = v15;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v10 + 16) = a1;
  *(v10 + 88) = a2;
  *(v10 + 96) = a3;
  *(v10 + 24) = v20;
  *(v10 + 72) = a6;
  swift_unknownObjectWeakAssign();
  v16 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC6D8B50;
  v18 = sub_1D2870F78();
  sub_1D2581C34(v18, v17);

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1D25752D4(uint64_t result)
{
  if (*(v1 + 97) == (result & 1))
  {
    *(v1 + 97) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t PhotoGridViewModel.PickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t PhotoGridViewModel.init(servicesFetcher:sessionUndoManager:creationViewStyle:pickerMode:forwardingPhotoLibraryUpdatingDelegate:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v19 = *a3;
  v9 = *a4;
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 80) = 1;
  *(v6 + 97) = 1;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v11 = sub_1D2871818();
  v12 = *(*(v11 - 8) + 56);
  v12(v6 + v10, 1, 1, v11);
  v13 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v12(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v11);
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]) = v14;
  *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v6 + 16) = a1;
  *(v6 + 88) = a2;
  *(v6 + 96) = v9;
  *(v6 + 24) = v19;
  *(v6 + 72) = a6;
  swift_unknownObjectWeakAssign();
  v15 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC6D8B50;
  v17 = sub_1D2870F78();
  sub_1D2581C34(v17, v16);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1D25756D8(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  return result;
}

void sub_1D25757E8(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize) == a1 && *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2575914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets;
  v4 = sub_1D2870F68();
  v5 = sub_1D233875C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1D25766C4(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2575AA4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v8, v7, &qword_1EC6D8F70);
  LOBYTE(a2) = sub_1D2582D48(v7, a1);
  sub_1D22BD238(v7, &qword_1EC6D8F70);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D25187F4(a1, v2 + v8);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70);
}

uint64_t sub_1D2575CB4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2575DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels;
  v4 = sub_1D2870F68();
  v5 = sub_1D23389EC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
    sub_1D28719D8();
  }
}

uint64_t PhotoGridViewModel.delegate.getter()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2575FD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2576094()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719D8();
}

uint64_t PhotoGridViewModel.delegate.setter()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2576244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*PhotoGridViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_1D25763F8;
}

void sub_1D25763F8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  sub_1D28719F8();

  free(v3);
}

uint64_t sub_1D25764BC()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + 80);
}

uint64_t sub_1D2576564()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + 97);
}

double sub_1D2576618()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
}

uint64_t sub_1D25766C4(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v4 = sub_1D2870F68();
  LOBYTE(a1) = sub_1D233875C(v4, a1);

  if ((a1 & 1) == 0)
  {
    v6 = sub_1D2576804();
    sub_1D2575DB8(v6);
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache;
    swift_beginAccess();
    v8 = sub_1D2870F68();
    *(v2 + v7) = sub_1D2582A10(v8, sub_1D25836E4);
  }

  return result;
}

uint64_t sub_1D2576804()
{
  v1 = v0;
  v28 = MEMORY[0x1E69E7CC8];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  v27 = v1;
  v25 = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  v26 = v2;
  sub_1D28719E8();

  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels);
  if (v4 >> 62)
  {
LABEL_21:
    v18 = v4;
    result = sub_1D2879368();
    v4 = v18;
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:
    swift_getKeyPath();
    v27 = v1;
    sub_1D28719E8();

    sub_1D2870F78();
    v19 = sub_1D2870F68();
    v20 = sub_1D258212C(v19, &v28, v1);

    return v20;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v23 = v4 & 0xC000000000000001;
    v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets;
    v6 = v4;
    sub_1D2870F68();
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v22 = v5;
    while (1)
    {
      if (v23)
      {
        v10 = MEMORY[0x1D38A1C30](v8);
      }

      else
      {
        v10 = *(v7 + 8 * v8 + 32);
        sub_1D2870F78();
      }

      swift_getKeyPath();
      v27 = v1;
      sub_1D28719E8();

      v12 = *(v1 + v24);
      v27 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v11);
      v21[2] = &v27;
      sub_1D2870F68();
      sub_1D2870F78();
      v13 = sub_1D286447C(sub_1D2583AF0, v21, v12);

      if (v13)
      {
        v14 = *(v10 + 16);
        if ((v9 & 0xC000000000000001) != 0)
        {
          if (v9 < 0)
          {
            v15 = v9;
          }

          else
          {
            v15 = v9 & 0xFFFFFFFFFFFFFF8;
          }

          sub_1D2870F78();
          sub_1D2870F78();
          v16 = sub_1D2879368();
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_21;
          }

          v9 = sub_1D257CEDC(v15, v16 + 1, &qword_1EC6DCB78, &unk_1D288E898, type metadata accessor for PhotoGridElementViewModel, sub_1D24E0D84);
          v28 = v9;
        }

        else
        {
          sub_1D2870F78();
          sub_1D2870F78();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v9;
        sub_1D24E84AC(v10, v14, isUniquelyReferenced_nonNull_native);

        v9 = v27;
        v28 = v27;
      }

      else
      {
      }

      ++v8;
      v7 = v6;
      if (v22 == v8)
      {

        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2576BB4(uint64_t a1)
{
  v2 = sub_1D2576C30();
  v5 = a1;
  v4[2] = &v5;
  LOBYTE(a1) = sub_1D286447C(sub_1D2583AF0, v4, v2);

  return a1 & 1;
}

uint64_t sub_1D2576C30()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels);
  v12 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38A1C30](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v3 = MEMORY[0x1E69E7CC0];
          break;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v4 + 32);
        sub_1D2870F78();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
      sub_1D28719E8();

      if (*(v5 + 49))
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v4;
      if (v6 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = sub_1D2870F78();
  v12 = sub_1D2581A08(v7, sub_1D27D3200, sub_1D2750AF4);
  sub_1D257D200(&v12);

  v8 = v12;
  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v9 = *(v12 + 16);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1D2879368();
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_19:
  v12 = v3;
  sub_1D2879258();
  if (v9 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38A1C30](v10, v8);
      }

      else
      {
        sub_1D2870F78();
      }

      ++v10;
      sub_1D2870F78();

      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    while (v9 != v10);

    return v12;
  }

  return result;
}

uint64_t sub_1D2576FCC()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D2577070(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v137 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](&v121 - v20);
  v139 = &v121 - v25;
  if (*(v1 + 96) == 2)
  {
    v26 = sub_1D2576C30();
    if (v26 >> 62)
    {
      goto LABEL_126;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v133 = v21;
  v131 = v24;
  v128 = v23;
  v132 = v22;
  v129 = v7;
  v126 = v6;
  v130 = v3;
  swift_getKeyPath();
  v155 = v1;
  v136 = sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v30 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v155 = MEMORY[0x1E69E7CC0];
  if (v30 >> 62)
  {
    v31 = sub_1D2879368();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v32 = MEMORY[0x1E69E7CC0];
  v134 = a1;
  v127 = v12;
  if (!v31)
  {
    goto LABEL_22;
  }

  v33 = 0;
  v148 = v4;
  v149 = v30 & 0xC000000000000001;
  a1 = v30 & 0xFFFFFFFFFFFFFF8;
  while (v149)
  {
    v34 = MEMORY[0x1D38A1C30](v33, v30);
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_15:
    swift_getKeyPath();
    v150 = v34;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D28719E8();

    if (*(v34 + 49) == 1 && (swift_getKeyPath(), v150 = v34, sub_1D28719E8(), , *(v34 + 56) > 0))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v33;
    if (v35 == v31)
    {
      goto LABEL_21;
    }
  }

  if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_123;
  }

  v34 = *(v30 + 8 * v33 + 32);
  sub_1D2870F78();
  v35 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v32 = v155;
  v4 = v148;
LABEL_22:

  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    v36 = sub_1D2879368();
  }

  else
  {
    v36 = *(v32 + 16);
  }

  a1 = MEMORY[0x1E69E7CA8];
  if (!v36)
  {
LABEL_114:

    v119 = v134;
    if (*(v134 + 56) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v121 - 2) = v119;
      *(&v121 - 1) = 1;
      v150 = v119;
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
      sub_1D28719D8();
    }

    return result;
  }

  v37 = 0;
  v38 = 0;
  v145 = v32 & 0xC000000000000001;
  v144 = v32 + 32;
  v125 = (v4 + 16);
  v124 = (v4 + 56);
  v123 = (v4 + 48);
  v121 = (v4 + 32);
  v122 = (v4 + 8);
  v143 = v36;
  v141 = v32;
  while (2)
  {
    if (v145)
    {
      v40 = MEMORY[0x1D38A1C30](v37, v32);
      v41 = __OFADD__(v37, 1);
      v42 = v37 + 1;
      if (v41)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v37 >= *(v32 + 16))
      {
        goto LABEL_125;
      }

      v40 = *(v144 + 8 * v37);
      sub_1D2870F78();
      v41 = __OFADD__(v37, 1);
      v42 = v37 + 1;
      if (v41)
      {
        goto LABEL_124;
      }
    }

    v43 = *(v40 + 49);
    v149 = v42;
    if (v43 == 1)
    {
      v44 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v44);
      *(&v121 - 2) = v40;
      *(&v121 - 8) = 0;
      v150 = v40;
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
      sub_1D28719D8();

      goto LABEL_84;
    }

    v146 = v38;
    *(v40 + 49) = 0;
    swift_getKeyPath();
    v150 = v40;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D28719E8();

    if (*(v40 + 49) != 1)
    {
      goto LABEL_83;
    }

    swift_getKeyPath();
    v150 = v40;
    sub_1D28719E8();

    v45 = *(v40 + 49);
    swift_getKeyPath();
    v148 = v40;
    if (v45 == 1)
    {
      v150 = v40;
      sub_1D28719E8();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v47 = Strong;
        v48 = *(v40 + 16);
        sub_1D2577070(v40);
        if (*(v47 + 96))
        {
          v49 = sub_1D28785F8();
          v50 = *(v49 - 8);
          v51 = v139;
          (*(v50 + 56))(v139, 1, 1, v49);
          sub_1D2878568();
          swift_unknownObjectRetain();
          v52 = sub_1D2878558();
          v53 = swift_allocObject();
          v53[2] = v52;
          v53[3] = MEMORY[0x1E69E85E0];
          v53[4] = v47;
          v54 = v51;
          v55 = v133;
          sub_1D22BD1D0(v54, v133, &qword_1EC6D8E60);
          LODWORD(v52) = (*(v50 + 48))(v55, 1, v49);
          sub_1D2870F78();
          if (v52 == 1)
          {
            sub_1D22BD238(v55, &qword_1EC6D8E60);
          }

          else
          {
            sub_1D28785E8();
            (*(v50 + 8))(v55, v49);
          }

          v75 = v53[2];
          swift_unknownObjectRetain();

          if (v75)
          {
            swift_getObjectType();
            v76 = sub_1D28784F8();
            v78 = v77;
            swift_unknownObjectRelease();
          }

          else
          {
            v76 = 0;
            v78 = 0;
          }

          v38 = v146;
          v32 = v141;
          sub_1D22BD238(v139, &qword_1EC6D8E60);
          v79 = swift_allocObject();
          *(v79 + 16) = &unk_1D2894890;
          *(v79 + 24) = v53;
          if (v78 | v76)
          {
            v156 = 0;
            v157 = 0;
            v158 = v76;
            v159 = v78;
          }

          a1 = MEMORY[0x1E69E7CA8];
          swift_task_create();
          goto LABEL_105;
        }

        v69 = swift_unknownObjectWeakLoadStrong();
        if (v69)
        {
          v70 = *(v69 + 56);
          v71 = *(*v48 + 160);
          v72 = *(v70 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
          v147 = v69;
          if (v72)
          {
            v73 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v73);
            *(&v121 - 2) = v70;
            *(&v121 - 8) = 0;
            v150 = v70;
            sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
            v74 = v146;
            sub_1D28719D8();
            v146 = v74;
          }

          else
          {
            *(v70 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
          }

          v80 = v137;
          v81 = *v125;
          v142 = v48;
          v82 = v48 + v71;
          v83 = v138;
          v84 = v130;
          v81(v138, v82, v130);
          (*v124)(v83, 0, 1, v84);
          v85 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
          swift_beginAccess();
          v140 = v85;
          sub_1D22BD1D0(v70 + v85, v80, &qword_1EC6D8F70);
          v86 = *(v129 + 48);
          v87 = v135;
          sub_1D22BD1D0(v80, v135, &qword_1EC6D8F70);
          sub_1D22BD1D0(v83, v87 + v86, &qword_1EC6D8F70);
          v88 = v80;
          v89 = *v123;
          if ((*v123)(v87, 1, v84) == 1)
          {
            sub_1D22BD238(v88, &qword_1EC6D8F70);
            if (v89(v87 + v86, 1, v84) == 1)
            {
              sub_1D22BD238(v87, &qword_1EC6D8F70);
              v40 = v148;
              goto LABEL_95;
            }

LABEL_92:
            sub_1D22BD238(v87, &qword_1EC6D94F0);
            v40 = v148;
            goto LABEL_93;
          }

          v90 = v127;
          sub_1D22BD1D0(v87, v127, &qword_1EC6D8F70);
          if (v89(v87 + v86, 1, v84) == 1)
          {
            sub_1D22BD238(v137, &qword_1EC6D8F70);
            (*v122)(v90, v84);
            goto LABEL_92;
          }

          v95 = v126;
          (*v121)(v126, v87 + v86, v84);
          sub_1D25838BC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
          v96 = sub_1D2877F98();
          v97 = *v122;
          (*v122)(v95, v84);
          sub_1D22BD238(v137, &qword_1EC6D8F70);
          v97(v127, v84);
          sub_1D22BD238(v87, &qword_1EC6D8F70);
          v40 = v148;
          if (v96)
          {
LABEL_95:
            v98 = v140;
            swift_beginAccess();
            v99 = v70 + v98;
            v93 = v138;
            sub_1D25187F4(v138, v99);
            swift_endAccess();
          }

          else
          {
LABEL_93:
            v91 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v91);
            v92 = v138;
            *(&v121 - 2) = v70;
            *(&v121 - 1) = v92;
            v150 = v70;
            sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
            v93 = v92;
            v94 = v146;
            sub_1D28719D8();
            v146 = v94;
          }

          sub_1D22BD238(v93, &qword_1EC6D8F70);
          v100 = sub_1D28785F8();
          v101 = *(v100 - 8);
          v102 = v131;
          (*(v101 + 56))(v131, 1, 1, v100);
          sub_1D2878568();
          v103 = v147;
          swift_unknownObjectRetain();
          v104 = v142;
          sub_1D2870F78();
          v105 = sub_1D2878558();
          v106 = swift_allocObject();
          v106[2] = v105;
          v106[3] = MEMORY[0x1E69E85E0];
          v106[4] = v103;
          v106[5] = v104;
          v107 = v102;
          v108 = v128;
          sub_1D22BD1D0(v107, v128, &qword_1EC6D8E60);
          LODWORD(v105) = (*(v101 + 48))(v108, 1, v100);
          sub_1D2870F78();
          if (v105 == 1)
          {
            sub_1D22BD238(v108, &qword_1EC6D8E60);
          }

          else
          {
            sub_1D28785E8();
            (*(v101 + 8))(v108, v100);
          }

          v109 = v106[2];
          swift_unknownObjectRetain();

          if (v109)
          {
            swift_getObjectType();
            v110 = sub_1D28784F8();
            v112 = v111;
            swift_unknownObjectRelease();
          }

          else
          {
            v110 = 0;
            v112 = 0;
          }

          v38 = v146;
          v32 = v141;
          sub_1D22BD238(v131, &qword_1EC6D8E60);
          v113 = swift_allocObject();
          *(v113 + 16) = &unk_1D28948D0;
          *(v113 + 24) = v106;
          if (v112 | v110)
          {
            v151 = 0;
            v152 = 0;
            v153 = v110;
            v154 = v112;
          }

          a1 = MEMORY[0x1E69E7CA8];
          swift_task_create();
          swift_unknownObjectRelease();
LABEL_105:
          swift_unknownObjectRelease();

LABEL_84:
          if (*(v40 + 56))
          {
            v39 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v39);
            *(&v121 - 2) = v40;
            *(&v121 - 1) = 0;
            v150 = v40;
            sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
            sub_1D28719D8();
          }

          v37 = v149;
          if (v149 == v143)
          {
            goto LABEL_114;
          }

          continue;
        }

        swift_unknownObjectRelease();
      }

LABEL_83:
      v38 = v146;
      v32 = v141;
      goto LABEL_84;
    }

    break;
  }

  v150 = v40;
  sub_1D28719E8();

  v140 = swift_unknownObjectWeakLoadStrong();
  if (!v140)
  {
    goto LABEL_83;
  }

  swift_getKeyPath();
  v150 = v40;
  sub_1D28719E8();

  v142 = *(v40 + 56);
  if (v142)
  {
    v56 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v56);
    *(&v121 - 2) = v40;
    *(&v121 - 1) = 0;
    v150 = v40;
    v57 = v146;
    sub_1D28719D8();
    v146 = v57;
  }

  a1 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v58 = v140;
  v150 = v140;
  sub_1D28719E8();

  v59 = *(v58 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v150 = a1;
  if (v59 >> 62)
  {
    v60 = sub_1D2879368();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (!v60)
  {
LABEL_59:

    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      v63 = sub_1D2879368();
      v40 = v148;
      if (v63)
      {
LABEL_62:
        v64 = 0;
        v147 = a1 & 0xC000000000000001;
        do
        {
          if (v147)
          {
            v65 = MEMORY[0x1D38A1C30](v64, a1);
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v64 >= *(a1 + 16))
            {
              goto LABEL_121;
            }

            v65 = *(a1 + 8 * v64 + 32);
            sub_1D2870F78();
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_120;
            }
          }

          swift_getKeyPath();
          v150 = v65;
          sub_1D28719E8();

          v150 = v65;
          swift_getKeyPath();
          sub_1D2871A08();

          v67 = *(v65 + 56);
          v41 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v41)
          {
            goto LABEL_122;
          }

          *(v65 + 56) = v68;
          v150 = v65;
          swift_getKeyPath();
          sub_1D28719F8();

          ++v64;
          v40 = v148;
        }

        while (v66 != v63);
      }
    }

    else
    {
      v63 = *(a1 + 16);
      v40 = v148;
      if (v63)
      {
        goto LABEL_62;
      }
    }

    v114 = v140;
    if (*(v140 + 96))
    {
      v115 = sub_1D28785F8();
      v116 = v132;
      (*(*(v115 - 8) + 56))(v132, 1, 1, v115);
      sub_1D2878568();
      swift_unknownObjectRetain();
      v117 = sub_1D2878558();
      v118 = swift_allocObject();
      v118[2] = v117;
      v118[3] = MEMORY[0x1E69E85E0];
      v118[4] = v114;
      sub_1D22AE01C(0, 0, v116, &unk_1D2897D70, v118);
    }

    swift_unknownObjectRelease();
    a1 = MEMORY[0x1E69E7CA8];
    v38 = v146;
    v32 = v141;
    goto LABEL_84;
  }

  v61 = 0;
  v147 = v59 & 0xC000000000000001;
  while (v147)
  {
    v62 = MEMORY[0x1D38A1C30](v61, v59);
    a1 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_118;
    }

LABEL_52:
    swift_getKeyPath();
    v160 = v62;
    sub_1D28719E8();

    if (*(v62 + 49) == 1 && (swift_getKeyPath(), v160 = v62, sub_1D28719E8(), , v142 < *(v62 + 56)))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v61;
    if (a1 == v60)
    {
      a1 = v150;
      goto LABEL_59;
    }
  }

  if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_119;
  }

  v62 = *(v59 + 8 * v61 + 32);
  sub_1D2870F78();
  a1 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_52;
  }

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
  v27 = sub_1D2879368();
LABEL_4:

  if (*(a1 + 56) != v27)
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v121 - 2) = a1;
    *(&v121 - 1) = v27;
    v155 = a1;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25789F0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
  sub_1D28719E8();

  v18 = *(a1 + 56);
  if (v18)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v19 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  sub_1D2870F68();
  if (!v5)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D38A1C30](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

LABEL_12:
    swift_getKeyPath();
    sub_1D28719E8();

    if (*(v7 + 49) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , v18 < *(v7 + 56)))
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v7 = *(v4 + 8 * v6 + 32);
  sub_1D2870F78();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v9 = v19;
LABEL_20:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_1D2879368();
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
LABEL_23:
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38A1C30](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_34;
          }

          v12 = *(v9 + 8 * v11 + 32);
          sub_1D2870F78();
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v5 = sub_1D2879368();
            goto LABEL_5;
          }
        }

        swift_getKeyPath();
        v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25PhotoGridElementViewModel___observationRegistrar;
        sub_1D28719E8();

        v19 = v12;
        swift_getKeyPath();
        sub_1D2871A08();

        v14 = *(v12 + 56);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          goto LABEL_35;
        }

        *(v12 + 56) = v16;
        v19 = v12;
        swift_getKeyPath();
        sub_1D28719F8();

        ++v11;
      }

      while (v13 != v10);
    }
  }
}

uint64_t sub_1D2578E94@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v5 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v2 + v5, a2, &qword_1EC6D8F70);
}

uint64_t sub_1D2578F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v6, a3, &qword_1EC6D8F70);
}

uint64_t sub_1D2579084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D22BD1D0(a1, &v11 - v8, &qword_1EC6D8F70);
  return sub_1D2575AA4(v9, a5);
}

uint64_t sub_1D2579150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1D25187F4(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1D25791CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D257927C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D28719E8();

    v1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
    v11 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_22;
    }

    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v5 = v6;
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            v3 = sub_1D2879368();
            goto LABEL_4;
          }

          v5 = *(v1 + 8 * v4 + 32);
          v6 = sub_1D2870F78();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        v8 = *(v5 + 16);
        MEMORY[0x1EEE9AC00](v6);
        sub_1D22BCFD0(0, &qword_1EC6D74E0);
        swift_getKeyPath();
        sub_1D2583618();
        sub_1D28719E8();

        if (*(v8 + *(*v8 + 208)))
        {
          sub_1D2879228();
          sub_1D2879268();
          sub_1D2879278();
          sub_1D2879238();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          v9 = v11;
          goto LABEL_19;
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  }

  else
  {
LABEL_16:
    sub_1D28719E8();

    v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
    sub_1D2870F68();
  }

  return v9;
}

uint64_t sub_1D2579574()
{
  v1[15] = v0;
  sub_1D2878568();
  v1[16] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D257960C, v3, v2);
}

uint64_t sub_1D257960C()
{
  v1 = v0[15];
  v2 = sub_1D2576C30();
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache;
  v0[19] = v2;
  v0[20] = v3;
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v2;
  v4 = sub_1D2870F68();
  v5 = sub_1D2582A10(v4, sub_1D25830E0);

  *(v1 + v3) = v5;

  v0[11] = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    result = sub_1D2879368();
    v0[21] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[21] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v0[22] = v7;
        v0[23] = v8;
        v9 = v0[19];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1D38A1C30]();
        }

        else
        {
          v10 = *(v9 + 8 * v7 + 32);
          sub_1D2870F78();
        }

        v0[24] = v10;
        v11 = v0[20];
        v12 = v0[15];
        swift_beginAccess();
        v13 = *(v12 + v11);
        if ((v13 & 0xC000000000000001) != 0)
        {
          sub_1D2870F78();
          v14 = sub_1D2879378();

          if (!v14)
          {
            goto LABEL_19;
          }

          v0[14] = v14;
          sub_1D2878C28();
          swift_dynamicCast();
          v15 = v0[13];
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        else if (!*(v13 + 16) || (v16 = sub_1D25D0B54(v10), (v17 & 1) == 0) || (v15 = *(*(v13 + 56) + 8 * v16)) == 0)
        {
LABEL_19:
          swift_endAccess();
          v19 = swift_task_alloc();
          v0[25] = v19;
          *v19 = v0;
          v19[1] = sub_1D2579970;

          return sub_1D23F4380(v10);
        }

        swift_endAccess();
        v18 = v15;
        MEMORY[0x1D38A0E30]();
        if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();

        v8 = v0[11];
        v7 = v0[22] + 1;
        if (v7 == v0[21])
        {
          goto LABEL_24;
        }
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_1D2579970(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D2579A98, v4, v3);
}

unint64_t sub_1D2579A98()
{
  v1 = v0[26];
  if (!v1)
  {
    sub_1D2579FD0(v0[24]);

    v5 = v0[23];
    goto LABEL_24;
  }

  v2 = v1;
  MEMORY[0x1D38A0E30]();
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  v3 = v0[20];
  v4 = v0[15];
  sub_1D2878488();
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v4 + v3);
  v7 = v0[24];
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *(v4 + v3);
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1D2870F78();
    v9 = v2;
    result = sub_1D2879368();
    if (__OFADD__(result, 1))
    {
      goto LABEL_46;
    }

    v11 = v0[20];
    v12 = v0[15];
    *(v12 + v11) = sub_1D257CEDC(v8, result + 1, &qword_1EC6DCB48, &unk_1D28947C0, MEMORY[0x1E696E4E0], sub_1D24E107C);
    v7 = v0[24];
  }

  else
  {
    sub_1D2870F78();
    v13 = v2;
  }

  v8 = v0[20];
  v14 = v0[15];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v14 + v8);
  v0[12] = v16;
  *(v14 + v8) = 0x8000000000000000;
  result = sub_1D25D0B54(v7);
  v18 = *(v16 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v43 = result;
    sub_1D24EF384();
    result = v43;
    goto LABEL_19;
  }

  LOBYTE(v8) = v17;
  if (*(v16 + 24) < v21)
  {
    v22 = v0[24];
    sub_1D24E107C(v21, isUniquelyReferenced_nonNull_native);
    result = sub_1D25D0B54(v22);
    if ((v8 & 1) != (v23 & 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);

      return sub_1D28796E8();
    }

    goto LABEL_19;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_19:
  v24 = v0[12];
  v25 = v0[24];
  if (v8)
  {
    v26 = v24[7];
    v27 = *(v26 + 8 * result);
    *(v26 + 8 * result) = v2;
  }

  else
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = v25;
    *(v24[7] + 8 * result) = v2;
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      __break(1u);
      return result;
    }

    v24[2] = v29;
  }

  *(v0[15] + v0[20]) = v24;
  swift_endAccess();

LABEL_24:
  v30 = v0[22] + 1;
  if (v30 == v0[21])
  {
LABEL_25:

    v31 = v0[1];

    return v31(v5);
  }

  while (1)
  {
    v0[22] = v30;
    v0[23] = v5;
    v32 = v0[19];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1D38A1C30]();
    }

    else
    {
      v33 = *(v32 + 8 * v30 + 32);
      sub_1D2870F78();
    }

    v0[24] = v33;
    v34 = v0[20];
    v35 = v0[15];
    swift_beginAccess();
    v36 = *(v35 + v34);
    if ((v36 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_1D2870F78();
    v37 = sub_1D2879378();

    if (!v37)
    {
      goto LABEL_42;
    }

    v0[14] = v37;
    sub_1D2878C28();
    swift_dynamicCast();
    v38 = v0[13];
    if (!v38)
    {
      goto LABEL_42;
    }

LABEL_38:
    swift_endAccess();
    v41 = v38;
    MEMORY[0x1D38A0E30]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();

    v5 = v0[11];
    v30 = v0[22] + 1;
    if (v30 == v0[21])
    {
      goto LABEL_25;
    }
  }

  if (*(v36 + 16))
  {
    v39 = sub_1D25D0B54(v33);
    if (v40)
    {
      v38 = *(*(v36 + 56) + 8 * v39);
      if (v38)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_42:
  swift_endAccess();
  v42 = swift_task_alloc();
  v0[25] = v42;
  *v42 = v0;
  v42[1] = sub_1D2579970;

  return sub_1D23F4380(v33);
}

uint64_t sub_1D2579FD0(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v22 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_27:
    v8 = sub_1D2879368();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(*a1 + 160);
  sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 & 0xC000000000000001;
    v18 = (v4 + 8);
    v19 = (v4 + 16);
    v17[1] = v9;
    while (1)
    {
      if (v21)
      {
        v4 = MEMORY[0x1D38A1C30](v10, v7);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v22;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v4 = *(v7 + 8 * v10 + 32);
        sub_1D2870F78();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      (*v19)(v6, *(v4 + 16) + *(**(v4 + 16) + 160), v3);
      v12 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      (*v18)(v6, v3);
      if (v12)
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v10;
      if (v11 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    result = sub_1D2879368();
    if (!result)
    {
    }
  }

  else if (!*(v13 + 16))
  {
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38A1C30](0, v13);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
    sub_1D2870F78();
  }

  if (*(v15 + 49) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v15;
    LOBYTE(v17[-1]) = 0;
    v22 = v15;
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D28719D8();
  }

  *(v15 + 49) = 0;
  sub_1D25E4D94(0);
}

uint64_t sub_1D257A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC6D8B50;
  type metadata accessor for DuplicateAssetOperation();
  v11 = swift_allocObject();
  v11[3] = a1;
  v11[4] = 0;
  v11[2] = v10;
  v12 = *(v3 + 88);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1D2878568();
  swift_retain_n();
  v15 = v10;
  sub_1D2870F68();
  sub_1D22A58B8(a2);
  sub_1D2870F78();
  sub_1D2870F78();
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v11;
  *(v17 + 40) = &off_1EEC2D748;
  *(v17 + 48) = 1;
  *(v17 + 56) = v12;
  *(v17 + 64) = sub_1D258360C;
  *(v17 + 72) = v13;
  sub_1D22AE01C(0, 0, v9, &unk_1D288CB00, v17);
}

void sub_1D257A644(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_1D2872528();
    v12 = a1;
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A18();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1D226E000, v13, v14, "Cannot duplicate asset with error: %@", v15, 0xCu);
      sub_1D22BD238(v16, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v16, -1, -1);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }

  else if (a2 && *(a4 + 32))
  {
    sub_1D22A58B8(a2);
    v19 = sub_1D2870F68();
    a2(v19);

    sub_1D22A576C(a2);
  }
}

uint64_t sub_1D257A8B4(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  v20 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_26:
    v8 = sub_1D2879368();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(*a1 + 160);
  sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    v19 = v7 & 0xC000000000000001;
    v16 = (v4 + 8);
    v17 = (v4 + 16);
    v15 = v9;
    while (1)
    {
      if (v19)
      {
        v4 = MEMORY[0x1D38A1C30](v10, v7);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v20;
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v4 = *(v7 + 8 * v10 + 32);
        sub_1D2870F78();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      (*v17)(v6, *(v4 + 16) + *(**(v4 + 16) + 160), v3);
      v12 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      (*v16)(v6, v3);
      if (v12)
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v10;
      if (v11 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    result = sub_1D2879368();
    if (!result)
    {
    }
  }

  else if (!*(v13 + 16))
  {
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, v13);
    goto LABEL_23;
  }

  if (*(v13 + 16))
  {
    sub_1D2870F78();
LABEL_23:

    sub_1D25E3F68();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D257AC10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  if (*(v1 + 96))
  {
    v9 = sub_1D28785F8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1D2878568();
    sub_1D2870F78();
    v10 = v1;
    v11 = sub_1D2878558();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_1D22AE01C(0, 0, v8, &unk_1D2894828, v12);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = result;
      v16 = *(result + 56);
      v17 = *(*a1 + 160);
      if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v25[-2] = v16;
        LOBYTE(v25[-1]) = 0;
        v25[1] = v16;
        sub_1D25838BC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
        sub_1D28719D8();
      }

      else
      {
        *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
      }

      v19 = sub_1D2871818();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, a1 + v17, v19);
      (*(v20 + 56))(v5, 0, 1, v19);
      sub_1D25E2EEC(v5);
      v21 = sub_1D28785F8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      sub_1D2878568();
      swift_unknownObjectRetain();
      sub_1D2870F78();
      v22 = sub_1D2878558();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v15;
      v23[5] = a1;
      sub_1D22AE01C(0, 0, v8, &unk_1D2894858, v23);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D257B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_1D2878568();
  v4[8] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_1D257B0B8;

  return sub_1D2579574();
}

uint64_t sub_1D257B0B8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2583AD4, v3, v2);
}

uint64_t sub_1D257B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_1D2878568();
  v4[8] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_1D257B2AC;

  return sub_1D2579574();
}

uint64_t sub_1D257B2AC(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D257B3F0, v3, v2);
}

uint64_t sub_1D257B3F0()
{
  v1 = v0[6];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0[10];
  if (Strong)
  {
    v4 = v0[6];
    v5 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D257B540(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v5 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1D2879368();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (!v6)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D38A1C30](i, v5);
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_17:
        __break(1u);
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v8 = *(v5 + 8 * i + 32);
      sub_1D2870F78();
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_17;
      }
    }

    if (sub_1D28717B8() == a1 && v10 == a2)
    {
      break;
    }

    v12 = sub_1D2879618();

    if (v12)
    {
      goto LABEL_20;
    }

    if (v9 == v6)
    {
    }
  }

LABEL_20:

  if (*(v8 + 49) == 1)
  {
    *(v8 + 49) = 1;
    sub_1D2870F78();
    sub_1D25E4D94(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }
}

uint64_t sub_1D257B83C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v5 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1D2879368();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (!v6)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D38A1C30](i, v5);
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_17:
        __break(1u);
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v8 = *(v5 + 8 * i + 32);
      sub_1D2870F78();
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_17;
      }
    }

    if (sub_1D28717B8() == a1 && v10 == a2)
    {
      break;
    }

    v12 = sub_1D2879618();

    if (v12)
    {
      goto LABEL_20;
    }

    if (v9 == v6)
    {
    }
  }

LABEL_20:

  if (*(v8 + 49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  else
  {
    *(v8 + 49) = 0;
    sub_1D2870F78();
    sub_1D25E4D94(0);
  }
}

void sub_1D257BB30(uint64_t a1)
{
  v28 = sub_1D2871818();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v30 = "ImagePlaygroundGridViewDelete";
    v6 = *(v1 + 16);
    v29 = objc_opt_self();
    v7 = type metadata accessor for InputAnalyticsHelper();
    v26 = (v3 + 8);
    v8 = *MEMORY[0x1E69DDAC8];
    v24 = *MEMORY[0x1E69DDBC0];
    v25 = v8;
    do
    {
      swift_beginAccess();
      v10 = *(v6 + 16);
      if (*(v10 + 16) && (v11 = sub_1D25D0574(v7), (v12 & 1) != 0))
      {
        sub_1D22D7044(*(v10 + 56) + 40 * v11, &v32);
        swift_endAccess();
        sub_1D22D79FC(&v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
        swift_dynamicCast();
      }

      else
      {
        swift_endAccess();
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        v14 = v27;
        sub_1D2871808();
        v15 = sub_1D28717B8();
        v17 = v16;
        (*v26)(v14, v28);
        *(v13 + 24) = v15;
        *(v13 + 32) = v17;
        *(v13 + 40) = 0;
        *(v13 + 48) = 0;
        v18 = objc_opt_self();
        v19 = [v18 defaultCenter];
        [v19 addObserver:v13 selector:sel_didEnterBackground name:v25 object:0];

        v20 = [v18 defaultCenter];
        [v20 addObserver:v13 selector:sel_didEnterForeground name:v24 object:0];

        v33 = v7;
        v34 = &off_1F4DC3E28;
        *&v32 = v13;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(&v32, v7);
        swift_endAccess();
      }

      v21 = sub_1D2878068();
      v22 = sub_1D2878068();
      v23 = sub_1D2878068();
      if (sub_1D2418030(MEMORY[0x1E69E7CC8]))
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D25838BC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v9 = sub_1D2877E78();
      }

      else
      {
        v9 = 0;
      }

      [v29 asyncSendSignal:v22 toChannel:v21 withNullableUniqueStringID:v23 withPayload:{v9, v24}];

      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1D257BF28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1D23C7CA8();
  v7 = sub_1D2878068();
  v8 = sub_1D2878068();
  v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v10 = sub_1D2878068();
  v11 = sub_1D2418030(v9);

  if (v11)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D25838BC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v12 = sub_1D2877E78();
  }

  else
  {
    v12 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v10 withPayload:v12];

  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1D2878568();
  sub_1D2870F68();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = v2;
  sub_1D22AE01C(0, 0, v6, &unk_1D2894938, v15);
}

uint64_t sub_1D257C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D257C254, v6, v5);
}

uint64_t sub_1D257C254()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6D8B50;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D257C338;
  v3 = *(v0 + 16);

  return sub_1D27EE2BC(v3, v1);
}

uint64_t sub_1D257C338()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D22ADFBC, v3, v2);
}

uint64_t sub_1D257C458(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v15[0] = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v15[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v15[3] = a1;
  sub_1D2583618();
  sub_1D28719E8();

  v7 = *(a1 + *(*a1 + 208));
  type metadata accessor for FavoriteAssetOperation();
  v8 = swift_allocObject();
  *(v8 + 24) = a1;
  *(v8 + 32) = 0;
  *(v8 + 16) = (v7 & 1) == 0;
  v9 = *(v2 + 88);
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1D2878568();
  swift_retain_n();
  swift_retain_n();
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v8;
  *(v12 + 40) = &off_1EEC2D558;
  *(v12 + 48) = 1;
  *(v12 + 56) = v9;
  *(v12 + 64) = sub_1D2583864;
  *(v12 + 72) = a1;
  sub_1D22AE01C(0, 0, v6, &unk_1D2894A90, v12);
}

void sub_1D257C698(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28724F8();
    v7 = a1;
    sub_1D2870F78();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v10 = 136315394;
      sub_1D2871818();
      sub_1D25838BC(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v11 = sub_1D28795C8();
      v13 = sub_1D23D7C84(v11, v12, &v21);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v16 = v19;
      *v19 = v15;
      _os_log_impl(&dword_1D226E000, v8, v9, "Failed to favorite asset: %s error: %@", v10, 0x16u);
      sub_1D22BD238(v16, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v16, -1, -1);
      v17 = v20;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38A3520](v17, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t PhotoGridViewModel.deinit()
{

  sub_1D22729C0(v0 + 32);
  sub_1D22729C0(v0 + 48);
  sub_1D22729C0(v0 + 64);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID, &qword_1EC6D8F70);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, &qword_1EC6D8F70);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotoGridViewModel.__deallocating_deinit()
{
  PhotoGridViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PhotoGridViewModel.photoLibrary(didUpdate:)(Swift::OpaquePointer didUpdate)
{
  v3 = sub_1D2870F68();
  v6 = sub_1D2581A08(v3, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(&v6);
  sub_1D2575914(v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(didUpdate._rawValue, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D257CBBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D257CC6C()
{
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D257CD3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D257CE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1D257CEDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_1D28793E8();
    v22 = v7;
    sub_1D2879358();
    for (; sub_1D2879388(); ++*(v22 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
      swift_dynamicCast();
      a5(0);
      swift_dynamicCast();
      v14 = *(v7 + 16);
      if (*(v7 + 24) <= v14)
      {
        a6(v14 + 1, 1);
      }

      v7 = v22;
      sub_1D28797D8();
      sub_1D2871818();
      sub_1D25838BC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
      sub_1D2877F08();
      result = sub_1D2879828();
      v9 = v22 + 64;
      v10 = -1 << *(v22 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6))) != 0)
      {
        v13 = __clz(__rbit64((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v10) >> 6;
        do
        {
          if (++v12 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v12 == v16;
          if (v12 == v16)
          {
            v12 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v12);
        }

        while (v18 == -1);
        v13 = __clz(__rbit64(~v18)) + (v12 << 6);
      }

      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v22 + 48) + 8 * v13) = v21;
      *(*(v22 + 56) + 8 * v13) = v20;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v7;
}

uint64_t sub_1D257D184(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D257D450(v6);
  return sub_1D2879238();
}

uint64_t sub_1D257D200(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v23[0] = v2 + 32;
  v23[1] = v4;
  v5 = sub_1D28795B8();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 32);
      v18 = v4;
      do
      {
        v20 = v9;
        v21 = v8;
        v11 = *(v2 + 32 + 8 * v9);
        v19 = v10;
        do
        {
          v12 = *v10;
          swift_getKeyPath();
          v22[0] = v11;
          sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
          sub_1D2870F78();
          sub_1D2870F78();
          sub_1D28719E8();

          v13 = *(v11 + 56);
          swift_getKeyPath();
          v22[0] = v12;
          sub_1D28719E8();

          v14 = *(v12 + 56);

          if (v13 >= v14)
          {
            break;
          }

          v15 = *v10;
          v11 = v10[1];
          *v10 = v11;
          v10[1] = v15;
          --v10;
        }

        while (!__CFADD__(v8++, 1));
        v9 = v20 + 1;
        v10 = v19 + 1;
        v8 = v21 - 1;
      }

      while (v20 + 1 != v18);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for PhotoGridElementViewModel();
      v7 = sub_1D2878468();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v22[1] = v4 >> 1;
    sub_1D2580908(v22, v24, v23, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1D2879238();
}

id sub_1D257D450(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D28795B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
        v6 = sub_1D2878468();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D257E480(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1D257D560(0, v2, 1, a1);
  }

  return result;
}

id sub_1D257D560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v111 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v121 = &v111 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v119 = &v111 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v127 = &v111 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v120 = &v111 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v111 - v23;
  v130 = sub_1D2871798();
  v24 = *(v130 - 8);
  v25 = MEMORY[0x1EEE9AC00](v130);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v123 = &v111 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v125 = &v111 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v128 = &v111 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v139 = &v111 - v35;
  result = MEMORY[0x1EEE9AC00](v34);
  v138 = &v111 - v37;
  v112 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v38 = *a4;
  result = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v145 = result;
  v137 = (v24 + 16);
  v131 = (v24 + 56);
  v140 = (v24 + 48);
  v122 = (v24 + 32);
  v129 = v38;
  v39 = (v38 + 8 * a3 - 8);
  v40 = a1 - a3;
  v118 = v27;
  v136 = (v24 + 8);
LABEL_6:
  v115 = a3;
  v41 = *(v129 + 8 * a3);
  v113 = v40;
  v114 = v39;
  while (1)
  {
    v144 = v41;
    v141 = v39;
    v142 = v40;
    v42 = *v39;
    MEMORY[0x1EEE9AC00](result);
    *(&v111 - 2) = v145;
    *(&v111 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v43 = *(*v41 + 224);
    v146 = v41;
    v44 = sub_1D2583618();
    sub_1D2870F78();
    sub_1D2870F78();
    v134 = v43;
    sub_1D28719E8();

    v45 = *(*v41 + 184);
    swift_beginAccess();
    v46 = *v137;
    v133 = v45;
    v47 = v41 + v45;
    v48 = v138;
    v49 = v130;
    v50 = v46(v138, v47, v130);
    MEMORY[0x1EEE9AC00](v50);
    *(&v111 - 2) = v145;
    *(&v111 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v51 = *(*v42 + 224);
    v146 = v42;
    v132 = v51;
    v143 = v44;
    sub_1D28719E8();

    v52 = *(*v42 + 184);
    swift_beginAccess();
    v53 = v139;
    v135 = v46;
    v46(v139, v42 + v52, v49);
    v54 = v136;
    v55 = sub_1D2871738();
    v56 = *v54;
    (*v54)(v53, v49);
    v57 = v48;
    v58 = v144;
    v59 = v56(v57, v49);
    if (v55)
    {
LABEL_30:

      v88 = v141;
      v89 = v142;
      goto LABEL_53;
    }

    MEMORY[0x1EEE9AC00](v59);
    *(&v111 - 2) = v145;
    *(&v111 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v146 = v58;
    sub_1D28719E8();

    v60 = v58 + v133;
    v61 = v138;
    v62 = v135;
    v63 = (v135)(v138, v60, v49);
    MEMORY[0x1EEE9AC00](v63);
    *(&v111 - 2) = v145;
    *(&v111 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v146 = v42;
    sub_1D28719E8();

    v64 = v42 + v52;
    v65 = v139;
    v62(v139, v64, v49);
    v66 = sub_1D2871748();
    v56(v65, v49);
    v67 = v56;
    v56(v61, v49);
    v68 = v144;
    if (v66)
    {
      goto LABEL_4;
    }

    v69 = v49;
    swift_beginAccess();
    v70 = v68[10];
    if (v70)
    {
      result = [v70 curationProperties];
      if (!result)
      {
        goto LABEL_58;
      }

      v71 = result;
      v72 = [result addedDate];

      v73 = v127;
      v74 = v125;
      if (v72)
      {
        v75 = v120;
        sub_1D2871768();

        v76 = 0;
      }

      else
      {
        v76 = 1;
        v75 = v120;
      }

      v143 = *v131;
      v143(v75, v76, 1, v69);
      v78 = v75;
      v77 = v126;
      sub_1D2583794(v78, v126);
      v79 = *v140;
      if ((*v140)(v77, 1, v69) != 1)
      {
        (*v122)(v128, v77, v69);
        goto LABEL_19;
      }
    }

    else
    {
      v77 = v126;
      v143 = *v131;
      v143(v126, 1, 1, v49);
      v73 = v127;
      v74 = v125;
    }

    sub_1D2871778();
    v79 = *v140;
    if ((*v140)(v77, 1, v69) != 1)
    {
      sub_1D22BD238(v77, &unk_1EC6DAE40);
    }

LABEL_19:
    swift_beginAccess();
    v80 = v42[10];
    v135 = v79;
    if (v80)
    {
      result = [v80 curationProperties];
      if (!result)
      {
        goto LABEL_59;
      }

      v81 = result;
      v82 = [result addedDate];

      if (v82)
      {
        sub_1D2871768();

        v83 = 0;
      }

      else
      {
        v83 = 1;
      }

      v143(v73, v83, 1, v69);
      v85 = v73;
      v84 = v124;
      sub_1D2583794(v85, v124);
      v79 = v135;
      if (v135(v84, 1, v69) != 1)
      {
        (*v122)(v74, v84, v69);
        goto LABEL_29;
      }
    }

    else
    {
      v84 = v124;
      v143(v124, 1, 1, v69);
    }

    sub_1D2871778();
    if (v79(v84, 1, v69) != 1)
    {
      sub_1D22BD238(v84, &unk_1EC6DAE40);
    }

LABEL_29:
    v86 = v128;
    v87 = sub_1D2871738();
    v67(v74, v69);
    v67(v86, v69);
    if (v87)
    {
      goto LABEL_30;
    }

    v90 = v68[10];
    if (v90)
    {
      result = [v90 curationProperties];
      v91 = v117;
      v92 = v130;
      if (!result)
      {
        goto LABEL_60;
      }

      v93 = result;
      v94 = [result addedDate];

      if (v94)
      {
        sub_1D2871768();

        v95 = 0;
      }

      else
      {
        v95 = 1;
      }

      v97 = v121;
      v143(v91, v95, 1, v92);
      v99 = v91;
      v96 = v119;
      sub_1D2583794(v99, v119);
      v98 = v135;
      if (v135(v96, 1, v92) != 1)
      {
        (*v122)(v123, v96, v92);
        v100 = v42[10];
        if (!v100)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v96 = v119;
      v92 = v130;
      v143(v119, 1, 1, v130);
      v97 = v121;
      v98 = v135;
    }

    sub_1D2871778();
    if (v98(v96, 1, v92) != 1)
    {
      sub_1D22BD238(v96, &unk_1EC6DAE40);
    }

    v100 = v42[10];
    if (!v100)
    {
LABEL_45:
      v143(v97, 1, 1, v92);
LABEL_48:
      v105 = v118;
      sub_1D2871778();
      if (v98(v97, 1, v92) != 1)
      {
        sub_1D22BD238(v97, &unk_1EC6DAE40);
      }

      goto LABEL_51;
    }

LABEL_41:
    result = [v100 curationProperties];
    if (!result)
    {
      goto LABEL_61;
    }

    v101 = result;
    v102 = [result addedDate];

    if (v102)
    {
      v103 = v116;
      sub_1D2871768();

      v104 = 0;
    }

    else
    {
      v104 = 1;
      v103 = v116;
    }

    v97 = v121;
    v143(v103, v104, 1, v92);
    sub_1D2583794(v103, v97);
    v98 = v135;
    if (v135(v97, 1, v92) == 1)
    {
      goto LABEL_48;
    }

    v105 = v118;
    (*v122)(v118, v97, v92);
LABEL_51:
    v106 = v123;
    v107 = sub_1D2871748();
    v67(v105, v92);
    v67(v106, v92);
    if (v107)
    {
LABEL_4:

LABEL_5:
      a3 = v115 + 1;
      v39 = v114 + 1;
      v40 = v113 - 1;
      if (v115 + 1 == v112)
      {
        return result;
      }

      goto LABEL_6;
    }

    v108 = MEMORY[0x1D389A250](v68 + *(*v68 + 160), v42 + *(*v42 + 160));

    v88 = v141;
    v89 = v142;
    if ((v108 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_53:
    if (!v129)
    {
      break;
    }

    v109 = *v88;
    v41 = v88[1];
    *v88 = v41;
    v88[1] = v109;
    v39 = v88 - 1;
    v110 = __CFADD__(v89, 1);
    v40 = v89 + 1;
    if (v110)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1D257E480(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v300 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v310 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v305 = &v284 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v309 = &v284 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v284 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v316 = &v284 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v311 = &v284 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v314 = &v284 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v317 = &v284 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v288 = &v284 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v289 = &v284 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v292 = &v284 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v291 = &v284 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v293 = &v284 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v294 = &v284 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v284 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v298 = &v284 - v41;
  v42 = sub_1D2871798();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v313 = &v284 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v315 = &v284 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v318 = &v284 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v297 = &v284 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v284 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v301 = &v284 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v328 = &v284 - v59;
  result = MEMORY[0x1EEE9AC00](v58);
  v327 = &v284 - v64;
  v65 = a3[1];
  if (v65 < 1)
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_192:
    v69 = *v300;
    if (!*v300)
    {
      goto LABEL_240;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_226:
      result = sub_1D269163C(v67);
      v67 = result;
    }

    v339 = v67;
    v279 = *(v67 + 16);
    if (v279 >= 2)
    {
      while (*a3)
      {
        v280 = *(v67 + 16 * v279);
        v281 = v67;
        v282 = *(v67 + 16 * (v279 - 1) + 32);
        v67 = *(v67 + 16 * (v279 - 1) + 40);
        sub_1D258110C((*a3 + 8 * v280), (*a3 + 8 * v282), (*a3 + 8 * v67), v69);
        if (v5)
        {
        }

        if (v67 < v280)
        {
          goto LABEL_219;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v281 = sub_1D269163C(v281);
        }

        if (v279 - 2 >= *(v281 + 2))
        {
          goto LABEL_220;
        }

        v283 = &v281[16 * v279];
        *v283 = v280;
        *(v283 + 1) = v67;
        v339 = v281;
        result = sub_1D26915B0(v279 - 1);
        v67 = v339;
        v279 = *(v339 + 16);
        if (v279 <= 1)
        {
        }
      }

      goto LABEL_234;
    }
  }

  v296 = v55;
  v290 = v63;
  v307 = v62;
  v66 = 0;
  v335 = (v61 + 16);
  v330 = (v61 + 8);
  v326 = (v61 + 56);
  v333 = (v61 + 48);
  v312 = (v61 + 32);
  v67 = MEMORY[0x1E69E7CC0];
  v295 = a4;
  v308 = v17;
  v299 = v40;
  v320 = result;
  v284 = a3;
  while (1)
  {
    v69 = v66;
    v70 = v66 + 1;
    if (v66 + 1 >= v65)
    {
      goto LABEL_76;
    }

    v304 = v65;
    v71 = *a3;
    v72 = v66;
    v338 = *(*a3 + 8 * v70);
    v337 = *(v71 + 8 * v66);
    sub_1D2870F78();
    sub_1D2870F78();
    LODWORD(v303) = sub_1D2641BD4(&v338, &v337);
    if (v5)
    {
    }

    v70 = v72 + 2;
    v69 = v72;
    if (v72 + 2 < v304)
    {
      v286 = v67;
      v287 = 0;
      result = sub_1D22BCFD0(0, &qword_1EC6D74E0);
      v285 = v72;
      v73 = (v71 + 8 * v72 + 16);
      v334 = result;
      while (1)
      {
        v306 = v70;
        v75 = *(v73 - 1);
        v74 = *v73;
        v325 = v73;
        *(&v284 - 2) = MEMORY[0x1EEE9AC00](result);
        *(&v284 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v76 = *(*v74 + 224);
        v338 = v74;
        v336 = sub_1D2583618();
        sub_1D2870F78();
        sub_1D2870F78();
        v324 = v76;
        sub_1D28719E8();

        v77 = *(*v74 + 184);
        swift_beginAccess();
        v78 = *v335;
        v332 = v74;
        v323 = v77;
        v79 = v74 + v77;
        v80 = v327;
        v81 = v320;
        v82 = (v78)(v327, v79, v320);
        MEMORY[0x1EEE9AC00](v82);
        *(&v284 - 2) = v334;
        *(&v284 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v83 = *(*v75 + 224);
        v338 = v75;
        v322 = v83;
        sub_1D28719E8();

        v84 = *(*v75 + 184);
        swift_beginAccess();
        v331 = v75;
        v321 = v84;
        v85 = v75 + v84;
        v86 = v334;
        v87 = v328;
        v329 = v78;
        (v78)(v328, v85, v81);
        v88 = sub_1D2871738();
        v89 = *v330;
        (*v330)(v87, v81);
        v90 = v80;
        v91 = v80;
        v92 = v81;
        v93 = (v89)(v91, v81);
        if (v88)
        {

          v70 = v306;
          result = v86;
          if ((v303 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_10;
        }

        MEMORY[0x1EEE9AC00](v93);
        *(&v284 - 2) = v86;
        *(&v284 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v319 = v89;
        v94 = v332;
        v338 = v332;
        sub_1D28719E8();

        v95 = (v329)(v90, v94 + v323, v92);
        MEMORY[0x1EEE9AC00](v95);
        *(&v284 - 2) = v86;
        *(&v284 - 1) = &protocol witness table for PHAsset;
        swift_getKeyPath();
        v96 = v331;
        v338 = v331;
        sub_1D28719E8();
        v97 = v319;

        (v329)(v87, v96 + v321, v92);
        v98 = sub_1D2871748();
        v97(v87, v92);
        v97(v90, v92);
        v99 = v96;
        if ((v98 & 1) == 0)
        {
          break;
        }

        v70 = v306;
LABEL_14:
        result = v334;
        if (v303)
        {
          v5 = v287;
          a3 = v284;
          a4 = v295;
          v67 = v286;
          v69 = v285;
          if (v70 < v285)
          {
LABEL_225:
            __break(1u);
            goto LABEL_226;
          }

LABEL_68:
          if (v69 < v70)
          {
            v146 = 8 * v70 - 8;
            v147 = 8 * v69;
            v148 = v70;
            v149 = v69;
            do
            {
              if (v149 != --v148)
              {
                v151 = *a3;
                if (!*a3)
                {
                  goto LABEL_233;
                }

                v150 = *(v151 + v147);
                *(v151 + v147) = *(v151 + v146);
                *(v151 + v146) = v150;
              }

              v149 = (v149 + 1);
              v146 -= 8;
              v147 += 8;
            }

            while (v149 < v148);
          }

          goto LABEL_76;
        }

LABEL_10:
        ++v70;
        v73 = (v325 + 8);
        if (v304 == v70)
        {
          v70 = v304;
LABEL_65:
          v5 = v287;
          a3 = v284;
          a4 = v295;
          v67 = v286;
          v69 = v285;
          goto LABEL_66;
        }
      }

      v100 = v332;
      swift_beginAccess();
      v101 = v100;
      v102 = *(v100 + 80);
      if (v102)
      {
        result = [v102 curationProperties];
        if (!result)
        {
          goto LABEL_236;
        }

        v103 = result;
        v104 = [result addedDate];

        if (v104)
        {
          v105 = v294;
          sub_1D2871768();

          v106 = 0;
        }

        else
        {
          v106 = 1;
          v105 = v294;
        }

        v108 = v298;
        v109 = *v326;
        (*v326)(v105, v106, 1, v92);
        sub_1D2583794(v105, v108);
        v110 = *v333;
        if ((*v333)(v108, 1, v92) != 1)
        {
          (*v312)(v301, v108, v92);
          v107 = v109;
          goto LABEL_27;
        }

        v107 = v109;
      }

      else
      {
        v107 = *v326;
        v108 = v298;
        (*v326)(v298, 1, 1, v92);
      }

      sub_1D2871778();
      v110 = *v333;
      if ((*v333)(v108, 1, v92) != 1)
      {
        sub_1D22BD238(v108, &unk_1EC6DAE40);
      }

LABEL_27:
      swift_beginAccess();
      v111 = v99[10];
      if (v111)
      {
        result = [v111 curationProperties];
        if (!result)
        {
          goto LABEL_237;
        }

        v112 = result;
        v113 = v101;
        v114 = [result addedDate];

        if (v114)
        {
          v115 = v293;
          sub_1D2871768();

          v116 = 0;
        }

        else
        {
          v116 = 1;
          v115 = v293;
        }

        v118 = v320;
        v107(v115, v116, 1, v320);
        v119 = v115;
        v117 = v299;
        sub_1D2583794(v119, v299);
        if (v110(v117, 1, v118) != 1)
        {
          v120 = v296;
          (*v312)(v296, v117, v118);
          goto LABEL_37;
        }
      }

      else
      {
        v117 = v299;
        v118 = v320;
        v107(v299, 1, 1, v320);
        v113 = v101;
      }

      v120 = v296;
      sub_1D2871778();
      if (v110(v117, 1, v118) != 1)
      {
        sub_1D22BD238(v299, &unk_1EC6DAE40);
      }

LABEL_37:
      v121 = v301;
      v122 = sub_1D2871738();
      v123 = v319;
      v319(v120, v118);
      v123(v121, v118);
      if (v122)
      {

        v70 = v306;
        result = v334;
        if ((v303 & 1) == 0)
        {
LABEL_75:
          v5 = v287;
          a3 = v284;
          a4 = v295;
          v67 = v286;
          v69 = v285;
          goto LABEL_76;
        }

        goto LABEL_10;
      }

      v124 = v113[10];
      v70 = v306;
      if (v124)
      {
        result = [v124 curationProperties];
        v125 = v292;
        if (!result)
        {
          goto LABEL_238;
        }

        v126 = result;
        v127 = [result addedDate];

        if (v127)
        {
          v128 = v289;
          sub_1D2871768();

          v129 = 0;
        }

        else
        {
          v129 = 1;
          v128 = v289;
        }

        v131 = v320;
        v107(v128, v129, 1, v320);
        v132 = v128;
        v130 = v291;
        sub_1D2583794(v132, v291);
        if (v110(v130, 1, v131) != 1)
        {
          (*v312)(v297, v130, v131);
          goto LABEL_50;
        }
      }

      else
      {
        v130 = v291;
        v131 = v320;
        v107(v291, 1, 1, v320);
        v125 = v292;
      }

      sub_1D2871778();
      if (v110(v130, 1, v131) != 1)
      {
        sub_1D22BD238(v130, &unk_1EC6DAE40);
      }

LABEL_50:
      v133 = v331[10];
      if (v133)
      {
        result = [v133 curationProperties];
        if (!result)
        {
          goto LABEL_239;
        }

        v134 = result;
        v135 = [result addedDate];

        if (v135)
        {
          v136 = v288;
          sub_1D2871768();

          v137 = 0;
        }

        else
        {
          v137 = 1;
          v136 = v288;
        }

        v138 = v320;
        v107(v136, v137, 1, v320);
        sub_1D2583794(v136, v125);
        if (v110(v125, 1, v138) != 1)
        {
          v139 = v290;
          (*v312)(v290, v125, v138);
          v140 = v138;
LABEL_60:
          v141 = v297;
          v142 = sub_1D2871748();
          v143 = v139;
          v144 = v319;
          v319(v143, v140);
          v144(v141, v140);
          if ((v142 & 1) == 0)
          {
            v145 = MEMORY[0x1D389A250](v113 + *(*v113 + 160), v331 + *(*v331 + 160));

            result = v334;
            if ((v303 ^ v145))
            {
              goto LABEL_65;
            }

            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v138 = v320;
        v107(v125, 1, 1, v320);
      }

      v139 = v290;
      sub_1D2871778();
      v140 = v138;
      if (v110(v125, 1, v138) != 1)
      {
        sub_1D22BD238(v125, &unk_1EC6DAE40);
      }

      goto LABEL_60;
    }

LABEL_66:
    if (v303)
    {
      if (v70 < v69)
      {
        goto LABEL_225;
      }

      goto LABEL_68;
    }

LABEL_76:
    v152 = a3[1];
    if (v70 < v152)
    {
      if (__OFSUB__(v70, v69))
      {
        goto LABEL_222;
      }

      if (v70 - v69 < a4)
      {
        break;
      }
    }

LABEL_139:
    if (v70 < v69)
    {
      goto LABEL_221;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2691650(0, *(v67 + 16) + 1, 1, v67);
      v67 = result;
    }

    v233 = *(v67 + 16);
    v232 = *(v67 + 24);
    v234 = v233 + 1;
    if (v233 >= v232 >> 1)
    {
      result = sub_1D2691650((v232 > 1), v233 + 1, 1, v67);
      v67 = result;
    }

    *(v67 + 16) = v234;
    v235 = v67 + 16 * v233;
    *(v235 + 32) = v69;
    *(v235 + 40) = v70;
    v236 = *v300;
    if (!*v300)
    {
      goto LABEL_235;
    }

    v237 = v70;
    if (v233)
    {
      while (1)
      {
        v238 = v234 - 1;
        if (v234 >= 4)
        {
          break;
        }

        if (v234 == 3)
        {
          v239 = *(v67 + 32);
          v240 = *(v67 + 40);
          v249 = __OFSUB__(v240, v239);
          v241 = v240 - v239;
          v242 = v249;
LABEL_159:
          if (v242)
          {
            goto LABEL_210;
          }

          v255 = (v67 + 16 * v234);
          v257 = *v255;
          v256 = v255[1];
          v258 = __OFSUB__(v256, v257);
          v259 = v256 - v257;
          v260 = v258;
          if (v258)
          {
            goto LABEL_213;
          }

          v261 = (v67 + 32 + 16 * v238);
          v263 = *v261;
          v262 = v261[1];
          v249 = __OFSUB__(v262, v263);
          v264 = v262 - v263;
          if (v249)
          {
            goto LABEL_216;
          }

          if (__OFADD__(v259, v264))
          {
            goto LABEL_217;
          }

          if (v259 + v264 >= v241)
          {
            if (v241 < v264)
            {
              v238 = v234 - 2;
            }

            goto LABEL_180;
          }

          goto LABEL_173;
        }

        v265 = (v67 + 16 * v234);
        v267 = *v265;
        v266 = v265[1];
        v249 = __OFSUB__(v266, v267);
        v259 = v266 - v267;
        v260 = v249;
LABEL_173:
        if (v260)
        {
          goto LABEL_212;
        }

        v268 = v67 + 16 * v238;
        v270 = *(v268 + 32);
        v269 = *(v268 + 40);
        v249 = __OFSUB__(v269, v270);
        v271 = v269 - v270;
        if (v249)
        {
          goto LABEL_215;
        }

        if (v271 < v259)
        {
          goto LABEL_3;
        }

LABEL_180:
        v276 = v238 - 1;
        if (v238 - 1 >= v234)
        {
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        if (!*a3)
        {
          goto LABEL_232;
        }

        v277 = *(v67 + 32 + 16 * v276);
        v69 = *(v67 + 32 + 16 * v238 + 8);
        sub_1D258110C((*a3 + 8 * v277), (*a3 + 8 * *(v67 + 32 + 16 * v238)), (*a3 + 8 * v69), v236);
        if (v5)
        {
        }

        if (v69 < v277)
        {
          goto LABEL_206;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1D269163C(v67);
        }

        if (v276 >= *(v67 + 16))
        {
          goto LABEL_207;
        }

        v278 = v67 + 16 * v276;
        *(v278 + 32) = v277;
        *(v278 + 40) = v69;
        v339 = v67;
        result = sub_1D26915B0(v238);
        v67 = v339;
        v234 = *(v339 + 16);
        if (v234 <= 1)
        {
          goto LABEL_3;
        }
      }

      v243 = v67 + 32 + 16 * v234;
      v244 = *(v243 - 64);
      v245 = *(v243 - 56);
      v249 = __OFSUB__(v245, v244);
      v246 = v245 - v244;
      if (v249)
      {
        goto LABEL_208;
      }

      v248 = *(v243 - 48);
      v247 = *(v243 - 40);
      v249 = __OFSUB__(v247, v248);
      v241 = v247 - v248;
      v242 = v249;
      if (v249)
      {
        goto LABEL_209;
      }

      v250 = (v67 + 16 * v234);
      v252 = *v250;
      v251 = v250[1];
      v249 = __OFSUB__(v251, v252);
      v253 = v251 - v252;
      if (v249)
      {
        goto LABEL_211;
      }

      v249 = __OFADD__(v241, v253);
      v254 = v241 + v253;
      if (v249)
      {
        goto LABEL_214;
      }

      if (v254 >= v246)
      {
        v272 = (v67 + 32 + 16 * v238);
        v274 = *v272;
        v273 = v272[1];
        v249 = __OFSUB__(v273, v274);
        v275 = v273 - v274;
        if (v249)
        {
          goto LABEL_218;
        }

        if (v241 < v275)
        {
          v238 = v234 - 2;
        }

        goto LABEL_180;
      }

      goto LABEL_159;
    }

LABEL_3:
    v65 = a3[1];
    v66 = v237;
    v68 = v237 < v65;
    a4 = v295;
    if (!v68)
    {
      goto LABEL_192;
    }
  }

  if (__OFADD__(v69, a4))
  {
    goto LABEL_223;
  }

  if (v69 + a4 >= v152)
  {
    v153 = a3[1];
  }

  else
  {
    v153 = (v69 + a4);
  }

  if (v153 < v69)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  if (v70 == v153)
  {
    goto LABEL_139;
  }

  v286 = v67;
  v287 = v5;
  v154 = *a3;
  result = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v325 = result;
  v319 = v154;
  v155 = v154 + 8 * v70 - 8;
  v285 = v69;
  v156 = (v69 - v70);
  v302 = v153;
LABEL_88:
  v306 = v70;
  v157 = v156;
  v158 = *(v319 + v70);
  v303 = v156;
  v304 = v155;
  v159 = v155;
  while (1)
  {
    v336 = v158;
    v332 = v157;
    v331 = v159;
    v160 = *v159;
    MEMORY[0x1EEE9AC00](result);
    v161 = v325;
    *(&v284 - 2) = v325;
    *(&v284 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v162 = *(*v158 + 224);
    v338 = v158;
    v163 = sub_1D2583618();
    sub_1D2870F78();
    sub_1D2870F78();
    v323 = v162;
    sub_1D28719E8();

    v164 = *(*v158 + 184);
    swift_beginAccess();
    v165 = *v335;
    v322 = v164;
    v166 = v158 + v164;
    v167 = v327;
    v168 = v320;
    v169 = (v165)(v327, v166, v320);
    MEMORY[0x1EEE9AC00](v169);
    *(&v284 - 2) = v161;
    *(&v284 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v170 = *(*v160 + 224);
    v338 = v160;
    v321 = v170;
    v334 = v163;
    sub_1D28719E8();

    v171 = *(*v160 + 184);
    swift_beginAccess();
    v172 = v328;
    v324 = v165;
    (v165)(v328, v160 + v171, v168);
    LOBYTE(v164) = sub_1D2871738();
    v173 = *v330;
    (*v330)(v172, v168);
    v174 = v336;
    v175 = (v173)(v167, v168);
    if (v164)
    {
LABEL_112:

      goto LABEL_135;
    }

    MEMORY[0x1EEE9AC00](v175);
    v329 = v173;
    v176 = v325;
    *(&v284 - 2) = v325;
    *(&v284 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v338 = v174;
    sub_1D28719E8();

    v177 = v174 + v322;
    v178 = v327;
    v179 = v324;
    v180 = (v324)(v327, v177, v168);
    MEMORY[0x1EEE9AC00](v180);
    *(&v284 - 2) = v176;
    *(&v284 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v338 = v160;
    sub_1D28719E8();

    v181 = v328;
    v179(v328, v160 + v171, v168);
    v182 = sub_1D2871748();
    v183 = v181;
    v184 = v329;
    v329(v183, v168);
    v184(v178, v168);
    v185 = v336;
    if (v182)
    {
      goto LABEL_86;
    }

    swift_beginAccess();
    v186 = v185[10];
    v187 = v317;
    v334 = v160;
    if (v186)
    {
      result = [v186 curationProperties];
      if (!result)
      {
        goto LABEL_229;
      }

      v188 = result;
      v189 = [result addedDate];

      v190 = v316;
      v191 = v311;
      if (v189)
      {
        sub_1D2871768();

        v192 = 0;
      }

      else
      {
        v192 = 1;
      }

      v193 = *v326;
      (*v326)(v191, v192, 1, v168);
      sub_1D2583794(v191, v187);
      v194 = *v333;
      if ((*v333)(v187, 1, v168) != 1)
      {
        (*v312)(v318, v187, v168);
        goto LABEL_101;
      }
    }

    else
    {
      v193 = *v326;
      (*v326)(v317, 1, 1, v168);
      v190 = v316;
    }

    sub_1D2871778();
    v194 = *v333;
    if ((*v333)(v187, 1, v168) != 1)
    {
      sub_1D22BD238(v187, &unk_1EC6DAE40);
    }

LABEL_101:
    v195 = v315;
    v196 = v334;
    swift_beginAccess();
    v197 = *(v196 + 80);
    v324 = v194;
    if (v197)
    {
      result = [v197 curationProperties];
      if (!result)
      {
        goto LABEL_228;
      }

      v198 = result;
      v199 = [result addedDate];

      if (v199)
      {
        sub_1D2871768();

        v200 = 0;
      }

      else
      {
        v200 = 1;
      }

      v202 = v193;
      v193(v190, v200, 1, v168);
      v203 = v190;
      v201 = v314;
      sub_1D2583794(v203, v314);
      v194 = v324;
      if (v324(v201, 1, v168) != 1)
      {
        (*v312)(v195, v201, v168);
        goto LABEL_111;
      }
    }

    else
    {
      v201 = v314;
      v202 = v193;
      v193(v314, 1, 1, v168);
    }

    sub_1D2871778();
    if (v194(v201, 1, v168) != 1)
    {
      sub_1D22BD238(v201, &unk_1EC6DAE40);
    }

LABEL_111:
    v204 = v318;
    v205 = sub_1D2871738();
    v206 = v329;
    v329(v195, v168);
    v206(v204, v168);
    if (v205)
    {
      goto LABEL_112;
    }

    v207 = v185[10];
    if (v207)
    {
      result = [v207 curationProperties];
      v208 = v310;
      v209 = v305;
      v210 = v308;
      v211 = v320;
      if (!result)
      {
        goto LABEL_230;
      }

      v212 = result;
      v213 = [result addedDate];

      if (v213)
      {
        sub_1D2871768();

        v214 = 0;
      }

      else
      {
        v214 = 1;
      }

      v202(v209, v214, 1, v211);
      sub_1D2583794(v209, v210);
      v215 = v324;
      if (v324(v210, 1, v211) != 1)
      {
        (*v312)(v313, v210, v211);
        v217 = v309;
        goto LABEL_123;
      }
    }

    else
    {
      v210 = v308;
      v211 = v320;
      v202(v308, 1, 1, v320);
      v208 = v310;
      v215 = v324;
    }

    sub_1D2871778();
    v216 = v215(v210, 1, v211);
    v217 = v309;
    if (v216 != 1)
    {
      sub_1D22BD238(v210, &unk_1EC6DAE40);
    }

LABEL_123:
    v218 = *(v334 + 80);
    if (!v218)
    {
      v202(v217, 1, 1, v211);
      v219 = v307;
LABEL_130:
      sub_1D2871778();
      v223 = v215(v217, 1, v211);
      v224 = v334;
      if (v223 != 1)
      {
        sub_1D22BD238(v217, &unk_1EC6DAE40);
      }

      goto LABEL_133;
    }

    result = [v218 curationProperties];
    v219 = v307;
    if (!result)
    {
      goto LABEL_231;
    }

    v220 = result;
    v221 = [result addedDate];

    if (v221)
    {
      sub_1D2871768();

      v222 = 0;
    }

    else
    {
      v222 = 1;
    }

    v202(v208, v222, 1, v211);
    sub_1D2583794(v208, v217);
    v215 = v324;
    if (v324(v217, 1, v211) == 1)
    {
      goto LABEL_130;
    }

    (*v312)(v219, v217, v211);
    v224 = v334;
LABEL_133:
    v225 = v313;
    v226 = sub_1D2871748();
    v227 = v329;
    v329(v219, v211);
    v227(v225, v211);
    if (v226)
    {
LABEL_86:

LABEL_87:
      v70 = v306 + 1;
      v155 = v304 + 8;
      v156 = v303 - 1;
      if ((v306 + 1) == v302)
      {
        v70 = v302;
        v5 = v287;
        a3 = v284;
        v67 = v286;
        v69 = v285;
        goto LABEL_139;
      }

      goto LABEL_88;
    }

    v228 = MEMORY[0x1D389A250](v185 + *(*v185 + 160), v224 + *(*v224 + 160));

    if ((v228 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_135:
    v229 = v332;
    if (!v319)
    {
      break;
    }

    v230 = v331;
    v231 = *v331;
    v158 = v331[1];
    *v331 = v158;
    v230[1] = v231;
    v159 = v230 - 1;
    v157 = v229 + 1;
    if (v229 == -1)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
  return result;
}

uint64_t sub_1D2580908(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D269163C(v10);
      v10 = result;
    }

    v85 = *(v10 + 2);
    if (v85 >= 2)
    {
      while (*v6)
      {
        v86 = *&v10[16 * v85];
        v87 = *&v10[16 * v85 + 24];
        sub_1D25814A4((*v6 + 8 * v86), (*v6 + 8 * *&v10[16 * v85 + 16]), (*v6 + 8 * v87), v9);
        if (v5)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D269163C(v10);
        }

        if (v85 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v10[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_1D26915B0(v85 - 1);
        v85 = *(v10 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v95 = result;
  while (1)
  {
    v11 = v9++;
    v96 = v11;
    if (v9 < v8)
    {
      v98 = v8;
      v92 = v10;
      v93 = v5;
      v12 = *(*v6 + 8 * v9);
      v91 = 8 * v11;
      v13 = (*v6 + 8 * v11);
      v15 = *v13;
      v14 = v13 + 2;
      swift_getKeyPath();
      sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D28719E8();

      v102 = *(v12 + 56);
      swift_getKeyPath();
      sub_1D28719E8();

      v100 = *(v15 + 56);

      v16 = (v11 + 2);
      while (1)
      {
        v9 = v98;
        if (v98 == v16)
        {
          break;
        }

        v18 = *(v14 - 1);
        v17 = *v14;
        swift_getKeyPath();
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v19 = *(v17 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v20 = *(v18 + 56);

        ++v16;
        ++v14;
        if (v102 < v100 == v19 >= v20)
        {
          v9 = (v16 - 1);
          break;
        }
      }

      v10 = v92;
      v5 = v93;
      v6 = a3;
      v21 = v91;
      v7 = v95;
      if (v102 < v100)
      {
        v22 = v96;
        if (v9 < v96)
        {
          goto LABEL_117;
        }

        if (v96 < v9)
        {
          v23 = 8 * v9 - 8;
          v24 = v9;
          do
          {
            if (v22 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v23);
              *(v26 + v23) = v25;
            }

            ++v22;
            v23 -= 8;
            v21 += 8;
          }

          while (v22 < v24);
        }
      }
    }

    v27 = v6[1];
    if (v9 >= v27)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v9, v96))
    {
      goto LABEL_116;
    }

    if (v9 - v96 >= a4)
    {
LABEL_36:
      v29 = v96;
      goto LABEL_37;
    }

    if (__OFADD__(v96, a4))
    {
      goto LABEL_118;
    }

    if (v96 + a4 >= v27)
    {
      v28 = v6[1];
    }

    else
    {
      v28 = (v96 + a4);
    }

    if (v28 < v96)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v29 = v96;
    if (v9 != v28)
    {
      break;
    }

LABEL_37:
    if (v9 < v29)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2691650(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_1D2691650((v38 > 1), v39 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v96;
    *(v41 + 5) = v9;
    v42 = *v7;
    if (!*v7)
    {
      goto LABEL_125;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v10 + 4);
          v45 = *(v10 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v10[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_107;
          }

          v66 = &v10[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v70 = &v10[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_71:
        if (v65)
        {
          goto LABEL_106;
        }

        v73 = &v10[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_109;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_78:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v82 = *&v10[16 * v81 + 32];
        v83 = *&v10[16 * v43 + 40];
        sub_1D25814A4((*v6 + 8 * v82), (*v6 + 8 * *&v10[16 * v43 + 32]), (*v6 + 8 * v83), v42);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D269163C(v10);
        }

        if (v81 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v84 = &v10[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D26915B0(v43);
        v40 = *(v10 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_108;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_112;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v95;
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v94 = v5;
  v104 = *v6;
  v30 = (*v6 + 8 * v9 - 8);
  v31 = v96 - v9;
  v97 = v28;
LABEL_29:
  v101 = v30;
  v103 = v9;
  v32 = *(v104 + 8 * v9);
  v99 = v31;
  while (1)
  {
    v33 = *v30;
    swift_getKeyPath();
    sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D28719E8();

    v34 = *(v32 + 56);
    swift_getKeyPath();
    sub_1D28719E8();

    v35 = *(v33 + 56);

    if (v34 >= v35)
    {
LABEL_28:
      v9 = (v103 + 1);
      v30 = v101 + 1;
      v31 = v99 - 1;
      if (v103 + 1 != v97)
      {
        goto LABEL_29;
      }

      v9 = v97;
      v5 = v94;
      v6 = a3;
      v7 = v95;
      goto LABEL_36;
    }

    if (!v104)
    {
      break;
    }

    v36 = *v30;
    v32 = v30[1];
    *v30 = v32;
    v30[1] = v36;
    --v30;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_1D258110C(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      sub_1D2870F78();
      sub_1D2870F78();
      v17 = sub_1D2641BD4(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    sub_1D2870F78();
    sub_1D2870F78();
    v29 = sub_1D2641BD4(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1D25814A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v23 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      v24 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v24;
    }

    v39 = &a4[8 * v11];
    v13 = a4;
    if (v9 >= 8 && v23 > v5)
    {
      v36 = a4;
      v38 = v5;
LABEL_28:
      v33 = v23;
      v25 = v23 - 8;
      v4 -= 8;
      v26 = v39;
      v35 = v23 - 8;
      do
      {
        v27 = v4 + 8;
        v28 = *(v26 - 1);
        v26 -= 8;
        v29 = *v25;
        swift_getKeyPath();
        sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v30 = *(v28 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v31 = *(v29 + 56);

        if (v30 < v31)
        {
          if (v27 != v33)
          {
            *v4 = *v35;
          }

          v13 = v36;
          if (v39 <= v36 || (v23 = v35, v35 <= v38))
          {
            v23 = v35;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (v27 != v39)
        {
          *v4 = *v26;
        }

        v4 -= 8;
        v39 = v26;
        v25 = v35;
      }

      while (v26 > v36);
      v39 = v26;
      v23 = v33;
      v13 = v36;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v39 = &v13[8 * v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v34 = v4;
      while (1)
      {
        v37 = v5;
        v15 = *v14;
        v16 = *v13;
        v17 = v13;
        swift_getKeyPath();
        sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
        sub_1D2870F78();
        sub_1D2870F78();
        sub_1D28719E8();

        v18 = *(v15 + 56);
        swift_getKeyPath();
        sub_1D28719E8();

        v19 = *(v16 + 56);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v14;
        v21 = v37;
        v22 = v37 == v14;
        v14 += 8;
        if (!v22)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 = v21 + 8;
        if (v13 >= v39 || v14 >= v34)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v13 += 8;
      v21 = v37;
      if (v37 == v17)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v21 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    v23 = v5;
  }

LABEL_39:
  if (v23 != v13 || v23 >= &v13[(v39 - v13 + (v39 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v13, 8 * ((v39 - v13) / 8));
  }

  return 1;
}

void *sub_1D25818C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D2582728(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D2581A08(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D2879368();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D2581AAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = &off_1F4DC57C0;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v6 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v6);
  if (*((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v7 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  swift_bridgeObjectRetain_n();
  v9[0] = sub_1D2581A08(v7, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(v9);

  *(a1 + 16) = v9[0];
}

uint64_t sub_1D2581C34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &protocol witness table for PhotoGridViewModel;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v5 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v5);
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v6 = sub_1D2870F68();
  PhotoGridViewModel.photoLibrary(didUpdate:)(v6);
}

uint64_t type metadata accessor for PhotoGridViewModel()
{
  result = qword_1EC6D8678;
  if (!qword_1EC6D8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D2581DC0()
{
  result = qword_1EC6DDF90;
  if (!qword_1EC6DDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDF90);
  }

  return result;
}

void sub_1D2581E44()
{
  sub_1D24FEC8C();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D2581FA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_1F4DD11E8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v5 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v5);
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v6 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  swift_bridgeObjectRetain_n();
  v8[0] = sub_1D2581A08(v6, sub_1D27D3200, sub_1D27507B8);
  sub_1D257D184(v8);
  sub_1D2711D60(v8[0]);
}

uint64_t sub_1D258212C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = a3;
  v36 = a2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v44 = MEMORY[0x1E69E7CC0];
    result = sub_1D2879258();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v41 = v3;
      v7 = 0;
      v35 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = MEMORY[0x1E69E7CA8];
      v31 = v5;
      v32 = v4;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v5 = sub_1D2879368();
          goto LABEL_3;
        }

        if (v35)
        {
          v10 = MEMORY[0x1D38A1C30](v7, v4);
        }

        else
        {
          if (v7 >= *(v30 + 16))
          {
            goto LABEL_35;
          }

          v10 = *(v4 + 8 * v7 + 32);
          sub_1D2870F78();
        }

        v11 = *v36;
        if ((*v36 & 0xC000000000000001) != 0)
        {
          if (v11 < 0)
          {
            v3 = *v36;
          }

          else
          {
            v3 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          sub_1D2870F78();
          v12 = sub_1D2879378();

          if (!v12 || (v42 = v12, type metadata accessor for PhotoGridElementViewModel(), swift_dynamicCast(), !v43))
          {
LABEL_25:
            v37 = v7;
            v39 = v7 + 1;
            v16 = v40;
            v17 = *(v40 + 16);
            type metadata accessor for PhotoGridElementViewModel();
            v18 = swift_allocObject();
            *(v18 + 32) = 0;
            swift_unknownObjectWeakInit();
            *(v18 + 48) = 0;
            *(v18 + 50) = 0;
            *(v18 + 56) = 0;
            *(v18 + 64) = 1;
            *(v18 + 72) = 0;
            *(v18 + 80) = 0;
            sub_1D2870F78();
            sub_1D2870F78();
            sub_1D2871A18();
            *(v18 + 40) = v17;
            v38 = v10;
            *(v18 + 16) = v10;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            v20 = v8;
            v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal25PhotoGridElementViewModel___observationRegistrar;
            v43 = v18;
            v22 = sub_1D25838BC(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel);
            v3 = v41;
            sub_1D28719D8();

            v23 = *(v16 + 96);
            v24 = *(v18 + 64) ^ ((v23 - 3) < 0xFFFFFFFE);
            v33 = v22;
            v34 = v21;
            if (v24)
            {
              v25 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v25);
              v43 = v18;
              sub_1D28719D8();
              v41 = v3;

              v8 = v20;
              v9 = v39;
              v7 = v37;
            }

            else
            {
              v41 = v3;
              v26 = sub_1D25E46C4();
              if (!v23)
              {
                sub_1D2870F78();
              }

              v9 = v39;
              v7 = v37;
              LODWORD(v39) = (v23 - 3) < 0xFFFFFFFE;
              v27 = swift_getKeyPath();
              v37 = &v30;
              MEMORY[0x1EEE9AC00](v27);
              v43 = v26;
              sub_1D25838BC(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel);
              v3 = v41;
              sub_1D28719D8();
              v41 = v3;
              v8 = v20;

              swift_unknownObjectRelease();
              *(v18 + 64) = v39;
            }

            v28 = *(v40 + 96) - 1;
            v5 = v31;
            if ((*(v18 + 48) ^ (v28 < 2)))
            {
              v29 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v29);
              v43 = v18;
              v3 = v41;
              sub_1D28719D8();
              v41 = v3;
            }

            else
            {
              *(v18 + 48) = v28 < 2;
            }

            v4 = v32;
            goto LABEL_8;
          }
        }

        else
        {
          if (!*(v11 + 16))
          {
            goto LABEL_25;
          }

          v13 = sub_1D25D0B54(v10);
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }

          v15 = *(*(v11 + 56) + 8 * v13);
          sub_1D2870F78();
          if (!v15)
          {
            goto LABEL_25;
          }
        }

LABEL_8:
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v7 = (v7 + 1);
        if (v9 == v5)
        {
          return v44;
        }
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D2582728(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id))
{
  v21 = 0;
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
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = *(*(a3 + 56) + 8 * v13);
    sub_1D2870F78();
    v16 = v15;
    v17 = a4(v14, v16);

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D2626108(a1, a2, v21, a3);
        return;
      }
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
      goto LABEL_15;
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
}

void sub_1D2582890(uint64_t a1, uint64_t (*a2)(uint64_t, id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1D2870F78();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1D25818C8(v9, v6, v4, a2);
      MEMORY[0x1D38A3520](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1D2582728(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_1D2582A10(uint64_t a1, uint64_t (*a2)(uint64_t, id))
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v23 = MEMORY[0x1E69E7CC8];
    sub_1D2879358();
    v4 = sub_1D2879388();
    if (v4)
    {
      v20 = v2;
      do
      {
        v22 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
        swift_dynamicCast();
        sub_1D2878C28();
        swift_dynamicCast();
        if (!v21)
        {
          break;
        }

        sub_1D2870F78();
        v5 = v22;
        v6 = v2(v21, v5);

        if (v6)
        {
          v7 = *(v3 + 16);
          if (*(v3 + 24) <= v7)
          {
            sub_1D24E107C(v7 + 1, 1);
          }

          v3 = v23;
          sub_1D28797D8();
          sub_1D2871818();
          sub_1D25838BC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
          sub_1D2877F08();
          result = sub_1D2879828();
          v9 = v23 + 64;
          v10 = -1 << *(v23 + 32);
          v11 = result & ~v10;
          v12 = v11 >> 6;
          if (((-1 << v11) & ~*(v23 + 64 + 8 * (v11 >> 6))) != 0)
          {
            v13 = __clz(__rbit64((-1 << v11) & ~*(v23 + 64 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
            v2 = v20;
          }

          else
          {
            v14 = 0;
            v15 = (63 - v10) >> 6;
            v2 = v20;
            do
            {
              if (++v12 == v15 && (v14 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v16 = v12 == v15;
              if (v12 == v15)
              {
                v12 = 0;
              }

              v14 |= v16;
              v17 = *(v9 + 8 * v12);
            }

            while (v17 == -1);
            v13 = __clz(__rbit64(~v17)) + (v12 << 6);
          }

          *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          *(*(v23 + 48) + 8 * v13) = v21;
          *(*(v23 + 56) + 8 * v13) = v5;
          ++*(v23 + 16);
        }

        else
        {
        }

        v4 = sub_1D2879388();
      }

      while (v4);
    }

    sub_1D23EEDB0();
    return v3;
  }

  else
  {
    sub_1D2582890(a1, a2);
    v19 = v18;

    return v19;
  }
}

uint64_t sub_1D2582D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &qword_1EC6D8F70);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D8F70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D8F70);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D25838BC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &qword_1EC6D8F70);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6D94F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F70);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25830E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v4[2] = &v5;
  return sub_1D286447C(sub_1D2583158, v4, v2) & 1;
}

uint64_t sub_1D2583190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D257B008(a1, v4, v5, v6);
}

uint64_t sub_1D2583244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D256B48C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2583320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256B48C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D25833E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D233BEF0(a1, v4);
}

uint64_t sub_1D2583498()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels) = *(v0 + 24);
  sub_1D2870F68();
}

__n128 sub_1D25834DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize) = result;
  return result;
}

uint64_t objectdestroy_49Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D258354C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D257C1BC(a1, v4, v5, v6);
}

unint64_t sub_1D2583618()
{
  result = qword_1EC6DAE20;
  if (!qword_1EC6DAE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAE20);
  }

  return result;
}

uint64_t sub_1D258368C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = *(v0 + 24);
  sub_1D2870F68();
  sub_1D25766C4(v2);
}

uint64_t sub_1D2583794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2583804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D25838BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2583904(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96))
  {
    sub_1D2872658();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "Cannot edit asset while in Picker Mode", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1D2569550(a1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2583B24(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1D28776F8();
      v5 = sub_1D2878468();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1D28776F8();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1D2583C80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View();
      v5 = sub_1D2878468();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1D258F0B8(v3, v5 + v7, type metadata accessor for VStackWithCenteredSubviewLayout.View);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_1D258F0B8(v3, v10, type metadata accessor for VStackWithCenteredSubviewLayout.View);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D258EF2C(v3, type metadata accessor for VStackWithCenteredSubviewLayout.View);
    return v5;
  }

  return result;
}

__n128 sub_1D2583DA0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *a2 = result;
  return result;
}

uint64_t sub_1D2583F08@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D2583FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return sub_1D2870F68();
}

uint64_t sub_1D25840DC(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v3 = type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  v4 = v1;
  sub_1D2877618();
  v5 = *(v9 + 96);

  if (v5)
  {
    return 3;
  }

  v7 = round(a1 / *(v4 + *(v3 + 56) + 16));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = v7;
  if (v7 >= 8)
  {
    v8 = 8;
  }

  if (v8 <= 2)
  {
    return 2;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1D25841E4@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v85 = a3;
  v82 = sub_1D2875008();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v90 = v4;
  v80 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v61 - v5;
  v66 = type metadata accessor for PhotoGridView();
  v84 = *(v66 - 1);
  v6 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE010);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE018);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v12 = &v61 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE020);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v61 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE028);
  MEMORY[0x1EEE9AC00](v67);
  v15 = &v61 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE030);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v86 = &v61 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE038);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v87 = &v61 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE040);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v88 = &v61 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE048);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v61 - v19;
  sub_1D2876318();
  v93 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE050);
  sub_1D258D794();
  sub_1D28743A8();
  type metadata accessor for CGRect(0);
  v21 = v20;
  v92 = a2;
  sub_1D258F0B8(a2, &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoGridView);
  v22 = *(v84 + 80);
  v23 = (v22 + 16) & ~v22;
  v83 = v6;
  v69 = v22;
  v24 = swift_allocObject();
  v70 = v23;
  v84 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D258EF8C(v84, v24 + v23, type metadata accessor for PhotoGridView);
  v25 = sub_1D22BB9D8(&qword_1EC6D7ED8, &qword_1EC6DE010);
  v60 = sub_1D258F070(&qword_1ED89CCE8, type metadata accessor for CGRect);
  sub_1D2876CA8();
  v26 = v61;

  (*(v8 + 8))(v10, v7);
  *&v94 = v7;
  *(&v94 + 1) = v21;
  *&v95 = v25;
  *(&v95 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v27 = v62;
  sub_1D2876B28();
  (*(v63 + 8))(v12, v27);
  LOBYTE(v12) = sub_1D2876328();
  v28 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v12)
  {
    v28 = sub_1D2876378();
  }

  v29 = sub_1D2874F98();
  (*(v64 + 32))(v15, v26, v65);
  v30 = v67;
  v31 = &v15[*(v67 + 36)];
  *v31 = v29;
  v31[8] = v28;
  swift_getKeyPath();
  v65 = sub_1D258DBD4();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  sub_1D28768C8();

  sub_1D22BD238(v15, &qword_1EC6DE028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  v32 = v94;
  swift_getKeyPath();
  *&v94 = v32;
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID;
  swift_beginAccess();
  v34 = v75;
  sub_1D22BD1D0(v32 + v33, v75, &qword_1EC6D8F70);

  v35 = v81;
  v36 = v80;
  v37 = v82;
  v66 = *(v81 + 16);
  v66(v80, v91, v82);
  v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v81 = *(v35 + 32);
  (v81)(v39 + v38, v36, v37);
  *&v94 = v30;
  *(&v94 + 1) = &type metadata for PhotoGridActions;
  *&v95 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1D258E098(&qword_1EC6D8BC8, &unk_1ED8A6CA0);
  v42 = v71;
  v67 = OpaqueTypeConformance2;
  v65 = v41;
  v43 = v86;
  sub_1D2876F48();

  sub_1D22BD238(v34, &qword_1EC6D8F70);
  (*(v68 + 8))(v43, v42);
  if (qword_1EC6D7EC8 != -1)
  {
    swift_once();
  }

  v44 = sub_1D2874558();
  __swift_project_value_buffer(v44, qword_1EC6E3B10);
  v66(v36, v91, v37);
  v45 = swift_allocObject();
  (v81)(v45 + v38, v36, v37);
  *&v94 = v42;
  *(&v94 + 1) = v89;
  *&v95 = v67;
  *(&v95 + 1) = v65;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v74;
  v48 = v87;
  sub_1D2876E98();

  (*(v72 + 8))(v48, v47);
  if (qword_1ED89DF90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v44, qword_1ED8B0040);
  v91 = type metadata accessor for PhotoGridView;
  v49 = v92;
  v50 = v84;
  sub_1D258F0B8(v92, v84, type metadata accessor for PhotoGridView);
  v51 = v70;
  v52 = swift_allocObject();
  sub_1D258EF8C(v50, v52 + v51, type metadata accessor for PhotoGridView);
  *&v94 = v47;
  *(&v94 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v53 = v73;
  v54 = v78;
  v55 = v88;
  sub_1D2876E98();

  (*(v76 + 8))(v55, v54);
  sub_1D258F0B8(v49, v50, v91);
  v56 = swift_allocObject();
  sub_1D258EF8C(v50, v56 + v51, type metadata accessor for PhotoGridView);
  v57 = v85;
  (*(v77 + 32))(v85, v53, v79);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE090);
  v59 = (v57 + *(result + 36));
  *v59 = sub_1D258DF44;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_1D25850E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v83 - v3;
  v91 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D28776E8();
  v5 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v7 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D28776F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE080);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE078);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v83 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE070) - 8;
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v83 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE068) - 8;
  MEMORY[0x1EEE9AC00](v96);
  v86 = &v83 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE060);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v83 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE058);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v83 - v18;
  v19 = type metadata accessor for PhotoGridView();
  v20 = *(v19 + 20);
  sub_1D2877618();
  v21 = v109;
  swift_getKeyPath();
  *&v109 = v21;
  v101 = sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v22 = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);

  *v7 = vextq_s8(*(a1 + *(v19 + 56) + 8), *(a1 + *(v19 + 56) + 8), 8uLL);
  (*(v5 + 104))(v7, *MEMORY[0x1E697D730], v87);
  sub_1D2877708();
  v23 = sub_1D25840DC(v22);
  sub_1D2583B24(v10, v23);
  v103 = a1;
  v24 = a1;
  sub_1D2875918();
  LODWORD(v109) = 0;
  sub_1D258F070(&qword_1ED89D4C0, MEMORY[0x1E697FCB0]);
  sub_1D2879968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0A0);
  sub_1D258E200();
  v25 = v88;
  v26 = v20;
  sub_1D28779B8();
  sub_1D2877848();
  v27 = v86;
  sub_1D2875208();
  v28 = v89;
  (*(v92 + 32))(v89, v25, v93);
  v29 = (v28 + *(v13 + 44));
  v30 = v114;
  v29[4] = v113;
  v29[5] = v30;
  v29[6] = v115;
  v31 = v110;
  *v29 = v109;
  v29[1] = v31;
  v32 = v112;
  v29[2] = v111;
  v29[3] = v32;
  v33 = v99;
  v34 = v97;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v100 + 8))(v33, v34);
  v35 = v105;
  v36 = v106;
  v37 = v107;
  v38 = v108;
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = v36;
  v39[4] = v37;
  v39[5] = v38;
  v40 = v94;
  sub_1D22EC9BC(v28, v94, &qword_1EC6DE078);
  v41 = v24;
  v42 = (v40 + *(v95 + 44));
  *v42 = sub_1D22A585C;
  v42[1] = 0;
  v42[2] = sub_1D2478FBC;
  v42[3] = v39;
  LOBYTE(v39) = sub_1D2876348();
  sub_1D2877618();

  sub_1D2874298();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1D22EC9BC(v40, v27, &qword_1EC6DE070);
  v51 = v27 + *(v96 + 44);
  *v51 = v39;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  *(v51 + 32) = v50;
  *(v51 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v28) = sub_1D2876358();
  *(inited + 32) = v28;
  v53 = sub_1D2876328();
  *(inited + 33) = v53;
  v54 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v28)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v53)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2877618();

  sub_1D2874298();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v98;
  v64 = sub_1D22EC9BC(v27, v98, &qword_1EC6DE068);
  v65 = v63 + *(v102 + 36);
  *v65 = v54;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  v96 = MEMORY[0x1D38A0390](v64, 0.5, 1.0, 0.0);
  sub_1D2877618();
  v66 = v105;
  swift_getKeyPath();
  v105 = v66;
  v100 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel___observationRegistrar;
  sub_1D28719E8();

  v67 = *(v66 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets);
  v105 = MEMORY[0x1E69E7CC0];
  if (v67 >> 62)
  {
LABEL_24:
    v68 = sub_1D2879368();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites;
  sub_1D2870F68();
  if (v68)
  {
    v94 = v26;
    v95 = v41;
    v69 = 0;
    v102 = v67 & 0xC000000000000001;
    v26 = v67 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v102)
      {
        v71 = MEMORY[0x1D38A1C30](v69, v67);
        v70 = v71;
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v73 = v105;
          goto LABEL_22;
        }
      }

      else
      {
        if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v70 = *(v67 + 8 * v69 + 32);
        v71 = sub_1D2870F78();
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_19;
        }
      }

      v41 = &v83;
      MEMORY[0x1EEE9AC00](v71);
      sub_1D22BCFD0(0, &qword_1EC6D74E0);
      swift_getKeyPath();
      v104 = v70;
      sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
      sub_1D28719E8();

      if ((*(v70 + *(*v70 + 208)) & 1) != 0 || (swift_getKeyPath(), v104 = v66, sub_1D28719E8(), , (v99[v66] & 1) == 0))
      {
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v69;
      if (v72 == v68)
      {
        goto LABEL_20;
      }
    }
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v74 = v84;
  v75 = sub_1D22EC9BC(v98, v84, &qword_1EC6DE060);
  v76 = (v74 + *(v83 + 36));
  *v76 = v96;
  v76[1] = v73;
  v77 = MEMORY[0x1D38A0390](v75, 0.5, 1.0, 0.0);
  sub_1D2877618();
  v78 = v105;
  swift_getKeyPath();
  v105 = v78;
  sub_1D28719E8();

  v79 = *(v78 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);

  v80 = v85;
  sub_1D22EC9BC(v74, v85, &qword_1EC6DE058);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE050);
  v82 = v80 + *(result + 36);
  *v82 = v77;
  *(v82 + 8) = v79;
  return result;
}

uint64_t sub_1D2585EDC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoGridView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  v5 = sub_1D257927C();

  v11[5] = v5;
  swift_getKeyPath();
  sub_1D258F0B8(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoGridView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D258EF8C(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PhotoGridView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0B0);
  sub_1D22BB9D8(&qword_1EC6D7588, &qword_1EC6DDFC8);
  sub_1D258F070(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0A8);
  v9 = sub_1D22BB9D8(&unk_1EC6D7698, &qword_1EC6DE0A8);
  v11[1] = v8;
  v11[2] = MEMORY[0x1E69E6158];
  v11[3] = v9;
  v11[4] = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  return sub_1D2877578();
}

uint64_t sub_1D25861A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v4 = sub_1D2871818();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875628();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2875678();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v86 - v11;
  v12 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for PhotoGridView();
  v14 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  KeyPath = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = v23;
  v98 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0A8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v86 - v28;
  v112 = *v2;
  v97 = v27;
  sub_1D258F0B8(v2, v27, type metadata accessor for PhotoGridView);
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = (v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v14 + 80);
  v32 = swift_allocObject();
  v95 = v32;
  sub_1D258EF8C(v27, v32 + v29, type metadata accessor for PhotoGridView);
  *(v32 + v30) = a1;
  sub_1D258F0B8(v2, v22, type metadata accessor for PhotoGridView);
  v33 = swift_allocObject();
  v94 = v33;
  sub_1D258EF8C(v22, v33 + v29, type metadata accessor for PhotoGridView);
  *(v33 + v30) = a1;
  v34 = a1;
  v35 = v92;
  sub_1D258F0B8(v2, v92, type metadata accessor for PhotoGridView);
  v36 = swift_allocObject();
  v93 = v36;
  v111 = type metadata accessor for PhotoGridView;
  sub_1D258EF8C(v35, v36 + v29, type metadata accessor for PhotoGridView);
  *(v36 + v30) = v34;
  v37 = v2;
  v38 = KeyPath;
  v110 = type metadata accessor for PhotoGridView;
  sub_1D258F0B8(v2, KeyPath, type metadata accessor for PhotoGridView);
  v90 = v31;
  v39 = swift_allocObject();
  v92 = v39;
  sub_1D258EF8C(v38, v39 + v29, type metadata accessor for PhotoGridView);
  *(v39 + v30) = v34;
  KeyPath = swift_getKeyPath();
  v135 = 0;
  v89 = swift_getKeyPath();
  v133 = 0;
  sub_1D2870F78();
  *&v117 = v34;
  type metadata accessor for PhotoGridElementViewModel();
  v109 = v34;
  swift_retain_n();
  sub_1D28772F8();
  v40 = *v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D28809B0;
  *(v41 + 32) = v34;
  v42 = v37;
  v43 = v37;
  v115 = v37;
  v44 = v96;
  sub_1D258F0B8(v42, v96, type metadata accessor for PhotoGridView);
  v45 = swift_allocObject();
  sub_1D258EF8C(v44, v45 + v29, v111);
  *(v45 + v30) = v41;
  *v136 = v112;
  *&v136[8] = v40;
  *&v136[24] = KeyPath;
  LOBYTE(v137) = v135;
  *(&v137 + 1) = *v134;
  DWORD1(v137) = *&v134[3];
  *(&v137 + 1) = v89;
  LOBYTE(v138) = v133;
  *(&v138 + 1) = *v132;
  DWORD1(v138) = *&v132[3];
  *(&v138 + 1) = v41;
  *&v139 = sub_1D258EB28;
  *(&v139 + 1) = v45;
  LOWORD(v140) = 256;
  *(&v140 + 2) = v130;
  WORD3(v140) = v131;
  *(&v140 + 1) = sub_1D258E6AC;
  *&v141 = v95;
  *(&v141 + 1) = sub_1D258E7E0;
  *&v142 = v93;
  *(&v142 + 1) = sub_1D258E738;
  *&v143 = v94;
  *(&v143 + 1) = sub_1D258E7F8;
  *&v144 = v92;
  *(&v144 + 1) = sub_1D258C168;
  *&v145 = 0;
  *(&v145 + 1) = sub_1D258C1B4;
  *&v146 = 0;
  *(&v146 + 1) = sub_1D258C200;
  v147 = 0;
  v46 = v97;
  sub_1D258F0B8(v43, v97, v110);
  sub_1D2878568();
  v47 = v109;
  swift_retain_n();
  sub_1D2870F68();
  v48 = sub_1D2878558();
  v49 = (v90 + 32) & ~v90;
  v50 = (v49 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E85E0];
  *(v51 + 16) = v48;
  *(v51 + 24) = v52;
  v53 = v46;
  v54 = v46;
  v55 = v111;
  sub_1D258EF8C(v54, v51 + v49, v111);
  *(v51 + v50) = v47;
  sub_1D258F0B8(v115, v53, v110);
  v56 = sub_1D2878558();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = MEMORY[0x1E69E85E0];
  sub_1D258EF8C(v53, v57 + v49, v55);
  sub_1D2877528();
  v110 = *(&v117 + 1);
  v111 = v117;
  LODWORD(v98) = v118;
  v127 = v145;
  v128 = v146;
  v129 = v147;
  v123 = v141;
  v124 = v142;
  v125 = v143;
  v126 = v144;
  v119 = v137;
  v120 = v138;
  v121 = v139;
  v122 = v140;
  v117 = *v136;
  v118 = *&v136[16];
  sub_1D2870F78();
  sub_1D2875778();
  sub_1D2875768();
  v116 = 1;
  sub_1D2875748();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v58 = qword_1ED8B0058;
  v59 = sub_1D2876668();
  v96 = v60;
  v97 = v59;
  v62 = v61;
  v64 = v63;
  v99 = &v86;
  MEMORY[0x1EEE9AC00](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D22BB9D8(&qword_1EC6DE0C0, &qword_1EC6DE0B8);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v65 = v113;
  v66 = v97;
  sub_1D2876B08();

  sub_1D22BD238(v136, &qword_1EC6DE0B8);
  v67 = v109;

  sub_1D22ED6E0(v66, v62, v64 & 1);

  v68 = v101;
  sub_1D2875668();
  v70 = v103;
  v69 = v104;
  (*(v103 + 16))(v100, v68, v104);
  sub_1D258F070(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
  v71 = sub_1D2874988();
  (*(v70 + 8))(v68, v69);
  *&v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0C8) + 36)] = v71;
  v72 = *(v67 + 16);
  v73 = *(*v72 + 160);
  v74 = v105;
  v75 = *(v105 + 16);
  v76 = &v65[*(v114 + 52)];
  v77 = v106;
  v75(v76, v72 + v73, v106);
  v78 = v115 + *(v102 + 48);
  if (*(v78 + 8) == 1)
  {
    *&v117 = *v78;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v79 = sub_1D28762E8();
    sub_1D2873BE8();

    v80 = v86;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v87 + 8))(v80, v88);
  }

  v81 = v107;
  v75(v107, v72 + v73, v77);
  v82 = sub_1D28717B8();
  *&v117 = 0x6E61725464697247;
  *(&v117 + 1) = 0xEF2D6E6F69746973;
  MEMORY[0x1D38A0C50](v82);

  v83 = v117;
  (*(v74 + 8))(v81, v77);
  v117 = v83;
  sub_1D22BB9D8(&unk_1EC6D7698, &qword_1EC6DE0A8);
  v84 = v113;
  sub_1D2876CD8();

  return sub_1D22BD238(v84, &qword_1EC6DE0A8);
}

uint64_t sub_1D2586F8C@<X0>(void *a1@<X8>)
{
  result = sub_1D2874D38();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1D2586FBC(double *a1, CGFloat *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  v10 = *(v16 + 81);

  if ((v10 & 1) == 0)
  {
    v17.origin.x = v6;
    v17.origin.y = v7;
    v17.size.width = v8;
    v17.size.height = v9;
    MinY = CGRectGetMinY(v17);
    v13 = v2;
    v14 = MinY;
    v18.origin.x = v13;
    v18.origin.y = v3;
    v18.size.width = v4;
    v18.size.height = v5;
    v15 = CGRectGetMinY(v18) <= v14;
    return sub_1D25870A0(v15, v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_1D25870A0(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat MaxY)
{
  v6 = v5;
  LOBYTE(v7) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for PhotoGridView();
  v23 = *(v22 + 20);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  v24 = v93;
  swift_getKeyPath();
  v93 = v24;
  v87 = sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v25 = *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);

  if (v25 <= 0.0)
  {
    return result;
  }

  sub_1D2877618();
  v27 = v93;
  swift_getKeyPath();
  v93 = v27;
  sub_1D28719E8();

  v28 = *(v27 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (v28 >> 62)
  {
    goto LABEL_77;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v29 < 1)
  {
    return result;
  }

  v94.origin.x = a2;
  v94.origin.y = a3;
  v94.size.width = a4;
  v94.size.height = MaxY;
  MinY = CGRectGetMinY(v94);
  v95.origin.x = a2;
  v95.origin.y = a3;
  v95.size.width = a4;
  v95.size.height = MaxY;
  MaxY = CGRectGetMaxY(v95);
  a3 = *(v6 + *(v22 + 56));
  if (MinY - a3 > 0.0)
  {
    a4 = MinY - a3;
  }

  else
  {
    a4 = 0.0;
  }

  v22 = sub_1D25840DC(v25);
  sub_1D2877618();
  v31 = v93;
  swift_getKeyPath();
  v93 = v31;
  sub_1D28719E8();

  v32 = *(v31 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (v32 >> 62)
  {
    v33 = sub_1D2879368();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v33, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (!v22)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v33 == 0x8000000000000001 && v22 == -1)
  {
    goto LABEL_96;
  }

  v34 = (v25 + a3) / v22;
  a4 = a4 / v34;
  if (a4 <= -9.22337204e18)
  {
    goto LABEL_81;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v35 = (MaxY - a3) / v34;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_83;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v36 = v23;
  if ((v33 - 1) / v22 >= v35)
  {
    v23 = v35;
  }

  else
  {
    v23 = (v33 - 1) / v22;
  }

  v83 = v36;
  sub_1D2877618();
  v37 = v93;
  swift_getKeyPath();
  v93 = v37;
  sub_1D28719E8();

  v38 = *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_86:
  v39 = sub_1D2879368();
LABEL_25:

  v40 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
    goto LABEL_88;
  }

  v41 = a4;
  v42 = a4 * v22;
  if ((a4 * v22) >> 64 != v42 >> 63)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v43 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v44 = v43 * v22;
  if ((v43 * v22) >> 64 != (v43 * v22) >> 63)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v45 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v40 >= v45)
  {
    v46 = v44 - 1;
  }

  else
  {
    v46 = v39 - 1;
  }

  v47 = __OFSUB__(v23, v41);
  v48 = v23 - v41;
  if (v47)
  {
    goto LABEL_92;
  }

  v49 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v50 = v49 * v22;
  if ((v49 * v22) >> 64 != (v49 * v22) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v50 + 0x4000000000000000 < 0)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v51 = 2 * v50;
  if (v7)
  {
    v23 = v83;
    if (v45 >= v40)
    {
      return result;
    }

    if (!__OFADD__(v46, v51))
    {
      v7 = v46 + 1;
      if (v40 >= v46 + v51)
      {
        v52 = v46 + v51;
      }

      else
      {
        v52 = v39 - 1;
      }

      if (v52 >= v7)
      {
        goto LABEL_49;
      }

      return result;
    }

LABEL_98:
    __break(1u);
    return result;
  }

  v52 = v42 - 1;
  v23 = v83;
  if (v42 < 1)
  {
    return result;
  }

  if (__OFSUB__(v42, v51))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v7 = (v42 - v51) & ~((v42 - v51) >> 63);
  if (v52 >= v7)
  {
LABEL_49:
    v85 = v52;
    v82 = v16;
    v81 = v6;
    v80 = v18;
    while (1)
    {
      sub_1D2877618();
      v53 = v93;
      swift_getKeyPath();
      v93 = v53;
      sub_1D28719E8();

      v54 = *(v53 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
      sub_1D2870F68();

      if ((v54 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D38A1C30](v7, v54);
      }

      else
      {
        if (v7 < 0)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v29 = sub_1D2879368();
          goto LABEL_4;
        }

        if (v7 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v22 = *(v54 + 8 * v7 + 32);
        sub_1D2870F78();
      }

      v55 = *(v22 + 16);
      v56 = *(*v55 + 160);
      v57 = *(*(v55 + 7) + 16);
      v58 = sub_1D2871818();
      (*(*(v58 - 8) + 16))(v18, &v55[v56], v58);
      v18[*(v16 + 36)] = 0;
      swift_beginAccess();
      v59 = *(v57 + 16);
      if (*(v59 + 16) && (v60 = sub_1D25D0A7C(v18), (v61 & 1) != 0))
      {
        v62 = *(*(v59 + 56) + 8 * v60);
        swift_endAccess();
        v63 = sub_1D2870F78();
        sub_1D27190D8(v63);
        sub_1D22BD238(v18, &qword_1EC6DCAB8);
        v64 = *(*v62 + 112);
        swift_beginAccess();
        sub_1D258F0B8(v62 + v64, v21, type metadata accessor for PlaygroundImage);

        v65 = 0;
      }

      else
      {
        swift_endAccess();
        sub_1D22BD238(v18, &qword_1EC6DCAB8);
        v65 = 1;
      }

      v66 = type metadata accessor for PlaygroundImage();
      v67 = *(v66 - 8);
      (*(v67 + 56))(v21, v65, 1, v66);
      if ((*(v67 + 48))(v21, 1, v66) == 1)
      {
        v68 = v21;
        sub_1D22BD238(v21, &unk_1EC6DE5A0);
        v69 = sub_1D28785F8();
        v70 = *(v69 - 8);
        v71 = v86;
        (*(v70 + 56))(v86, 1, 1, v69);
        sub_1D2878568();
        sub_1D2870F78();
        v72 = sub_1D2878558();
        v73 = swift_allocObject();
        *(v73 + 16) = v72;
        *(v73 + 24) = MEMORY[0x1E69E85E0];
        *(v73 + 32) = v22;
        *(v73 + 40) = 0;
        v74 = v84;
        sub_1D22BD1D0(v71, v84, &qword_1EC6D8E60);
        LODWORD(v72) = (*(v70 + 48))(v74, 1, v69);
        sub_1D2870F78();
        if (v72 == 1)
        {
          sub_1D22BD238(v74, &qword_1EC6D8E60);
        }

        else
        {
          sub_1D28785E8();
          (*(v70 + 8))(v74, v69);
        }

        v75 = *(v73 + 16);
        swift_unknownObjectRetain();

        v21 = v68;
        if (v75)
        {
          swift_getObjectType();
          v76 = sub_1D28784F8();
          v78 = v77;
          swift_unknownObjectRelease();
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        v18 = v80;
        sub_1D22BD238(v86, &qword_1EC6D8E60);
        v79 = swift_allocObject();
        *(v79 + 16) = &unk_1D2894E30;
        *(v79 + 24) = v73;
        v23 = v83;
        if (v78 | v76)
        {
          v89 = 0;
          v90 = 0;
          v91 = v76;
          v92 = v78;
        }

        v6 = v81;
        swift_task_create();

        v16 = v82;
      }

      else
      {

        result = sub_1D22BD238(v21, &unk_1EC6DE5A0);
      }

      if (v85 == v7)
      {
        return result;
      }

      v47 = __OFADD__(v7++, 1);
      if (v47)
      {
        goto LABEL_76;
      }
    }
  }

  return result;
}

uint64_t FocusedValues.photoGridActions.getter()
{
  sub_1D2587C8C();

  return sub_1D28749B8();
}

unint64_t sub_1D2587C8C()
{
  result = qword_1EC6D7E48;
  if (!qword_1EC6D7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E48);
  }

  return result;
}

__n128 sub_1D2587CE0@<Q0>(uint64_t a1@<X8>)
{
  sub_1D2587C8C();
  sub_1D28749B8();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D2587D54(__int128 *a1)
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
  sub_1D22BD1D0(v17, v9, &qword_1EC6DDFA8);
  sub_1D2587C8C();
  return sub_1D28749C8();
}

uint64_t sub_1D2587E54()
{
  sub_1D2877958();
  sub_1D2874BE8();
}

uint64_t sub_1D2587EC8()
{
  sub_1D2877AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  sub_1D258E098(&qword_1EC6DE098, &qword_1ED8A6CB0);
  return sub_1D2874FF8();
}

uint64_t sub_1D2587F84(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = sub_1D2877B48();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877B68();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D2875008();
  v5 = *(v31 - 8);
  v32 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2874578();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877BA8();
  v36 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v29 - v16;
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v35 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v33 = *(v12 + 8);
  v33(v14, v11);
  (*(v8 + 16))(v10, v37, v7);
  v17 = v30;
  v18 = v31;
  (*(v5 + 16))(v30, v38, v31);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v10, v7);
  (*(v5 + 32))(v21 + v20, v17, v18);
  aBlock[4] = sub_1D258DFA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_25;
  v22 = _Block_copy(aBlock);
  v23 = v39;
  sub_1D2877B58();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D258F070(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v25 = v40;
  v24 = v41;
  sub_1D2879088();
  v27 = v34;
  v26 = v35;
  MEMORY[0x1D38A1510](v34, v23, v25, v22);
  _Block_release(v22);

  (*(v44 + 8))(v25, v24);
  (*(v42 + 8))(v23, v43);
  v33(v27, v36);
}

unint64_t sub_1D2588514()
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v0 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]);
  sub_1D2870F68();

  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v1 = sub_1D2879368();
  if (!v1)
  {
  }

LABEL_3:
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v4 = MEMORY[0x1D38A1C30](result, v0);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v0 + 8 * result + 32);
    sub_1D2870F78();
LABEL_8:

    v5 = *(v4 + 16);
    sub_1D2870F78();

    sub_1D2877618();
    sub_1D257A8B4(v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25886D4(uint64_t a1)
{
  v16 = sub_1D2875628();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1D2875D78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotoGridView();
  sub_1D22BD1D0(a1 + *(v12 + 52), v7, &qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1D2875D68();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D258895C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE000);
  v80 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v60 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE008);
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v60 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFF8);
  v69 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v68 = &v60 - v6;
  v73 = sub_1D2875C08();
  v67 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v60 - v9;
  v10 = sub_1D2875628();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFF0);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v60 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFE8);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  v23 = a1;
  sub_1D2877618();
  v24 = v83;
  swift_getKeyPath();
  v83 = v24;
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v25 = v24[OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled];

  if (v25 == 1)
  {
    v64 = v18;
    v63 = v21;
    v62 = v13;
    v61 = v3;
    v26 = (v23 + *(v22 + 36));
    if (*(v26 + 8) == 1)
    {
      v83 = *v26;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v71 + 8))(v12, v72);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v83 = off_1ED8A4930;
    sub_1D258F070(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    if (os_variant_has_internal_ui())
    {
      sub_1D22BCFD0(0, &qword_1ED89CDA0);
      v32 = sub_1D2878A58();
      v33 = sub_1D2878068();
      v34 = [v32 BOOLForKey_];

      if (v34)
      {
        v35 = v66;
        sub_1D2875BB8();
        v36 = v67;
        v37 = (*(v67 + 16))(v65, v35, v73);
        MEMORY[0x1EEE9AC00](v37);
        *(&v60 - 2) = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB958);
        sub_1D22BB9D8(&qword_1EC6DB950, &qword_1EC6DB958);
        v38 = v68;
        sub_1D28745C8();
        v39 = sub_1D22BB9D8(&qword_1EC6D7E98, &qword_1EC6DDFF8);
        v40 = v70;
        v41 = v76;
        MEMORY[0x1D389E720](v38, v76, v39);
        v43 = v74;
        v42 = v75;
        v44 = v78;
        (*(v75 + 16))(v74, v40, v78);
        (*(v42 + 56))(v43, 0, 1, v44);
        v83 = v41;
        v84 = v39;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v46 = v77;
        MEMORY[0x1D389E750](v43, v44, OpaqueTypeConformance2);
        sub_1D22BD238(v43, &qword_1EC6DDFF0);
        (*(v42 + 8))(v40, v44);
        (*(v69 + 8))(v38, v41);
        (*(v36 + 8))(v35, v73);
LABEL_13:
        v51 = v61;
        v52 = v80;
        v53 = sub_1D258D688();
        v54 = v79;
        v55 = v62;
        MEMORY[0x1D389E720](v46, v62, v53);
        v56 = v64;
        (*(v52 + 16))(v64, v54, v51);
        (*(v52 + 56))(v56, 0, 1, v51);
        v83 = v55;
        v84 = v53;
        v57 = swift_getOpaqueTypeConformance2();
        v21 = v63;
        MEMORY[0x1D389E750](v56, v51, v57);
        sub_1D22BD238(v56, &qword_1EC6DDFE8);
        (*(v52 + 8))(v54, v51);
        v29 = &qword_1EC6DDFF0;
        v30 = v46;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v47 = v74;
    v48 = v78;
    (*(v75 + 56))(v74, 1, 1, v78);
    v49 = sub_1D22BB9D8(&qword_1EC6D7E98, &qword_1EC6DDFF8);
    v83 = v76;
    v84 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v46 = v77;
    MEMORY[0x1D389E750](v47, v48, v50);
    sub_1D22BD238(v47, &qword_1EC6DDFF0);
    goto LABEL_13;
  }

  (*(v80 + 56))(v18, 1, 1, v3);
  v27 = sub_1D258D688();
  v83 = v13;
  v84 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E750](v18, v3, v28);
  v29 = &qword_1EC6DDFE8;
  v30 = v18;
LABEL_14:
  sub_1D22BD238(v30, v29);
  v58 = sub_1D258D5C8();
  MEMORY[0x1D389E720](v21, v81, v58);
  return sub_1D22BD238(v21, &qword_1EC6DDFE8);
}

uint64_t sub_1D2589480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  type metadata accessor for PhotoGridView();
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v3 + 8))(v5, v2);
  v8 = a1;
  return sub_1D28774A8();
}

uint64_t sub_1D25895DC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();

  v2 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites);

  if (v2 == 1)
  {
    sub_1D2875798();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1D2589800()
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719E8();
}

void sub_1D25898D4(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  if (a1 >> 62)
  {
    v5 = sub_1D2879368();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = v7 + 1;
        MEMORY[0x1D38A1C30]();
        sub_1D2870F78();
        swift_unknownObjectRelease();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v7 = v8;
      }

      while (v5 != v8);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        v9 += 8;
        sub_1D2870F78();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        --v5;
      }

      while (v5);
    }

    v6 = v23;
  }

  v10 = [objc_opt_self() generalPasteboard];
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1D2878568();
  v12 = v10;
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v6;
  v14[5] = v12;
  sub_1D22AE01C(0, 0, v4, &unk_1D2894F80, v14);

  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  sub_1D23C7CA8();
  v16 = sub_1D2878068();
  v17 = sub_1D2878068();
  v18 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v19 = sub_1D2878068();
  v20 = sub_1D2418030(v18);

  if (v20)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v21 = sub_1D2877E78();
  }

  else
  {
    v21 = 0;
  }

  [objc_opt_self() asyncSendSignal:v17 toChannel:v16 withNullableUniqueStringID:v19 withPayload:v21];
}

void sub_1D2589CBC(unint64_t a1)
{
  type metadata accessor for PhotoGridView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  sub_1D2877618();
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        MEMORY[0x1D38A1C30]();
        swift_beginAccess();
        sub_1D2870F78();
        swift_unknownObjectRelease();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = a1 + 32;
      do
      {
        v6 += 8;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        --v2;
      }

      while (v2);
    }

    v3 = v13;
  }

  sub_1D257A414(v3, CGRectMake, 0);

  sub_1D2877618();
  sub_1D23C7CA8();
  v7 = sub_1D2878068();
  v8 = sub_1D2878068();
  v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v10 = sub_1D2878068();
  v11 = sub_1D2418030(v9);

  if (v11)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v12 = sub_1D2877E78();
  }

  else
  {
    v12 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v10 withPayload:v12];
}

uint64_t sub_1D258A014(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28809B0;
  *(inited + 32) = a2;
  sub_1D2870F78();
  a3(inited);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

size_t sub_1D258A0C0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - v10;
  if (a1 >> 62)
  {
    v36 = v9;
    v37 = sub_1D2879368();
    v9 = v36;
    v12 = v37;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_16:
    v32 = sub_1D233DD14(v13);

    v33 = (v2 + *(type metadata accessor for PhotoGridView() + 24));
    v35 = *v33;
    v34 = v33[1];
    v41 = v35;
    v42 = v34;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0D0);
    return sub_1D2877318();
  }

  v14 = v9;
  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D8A14(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v38[0] = v2;
    v13 = v41;
    v16 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v38[1] = v5 + 32;
      v39 = (v5 + 16);
      v18 = v4;
      do
      {
        v19 = v16;
        v20 = MEMORY[0x1D38A1C30](v17);
        swift_beginAccess();
        v21 = *(v20 + 16);
        v22 = *(*v21 + 160);
        swift_beginAccess();
        (*v39)(v11, v21 + v22, v18);
        swift_unknownObjectRelease();
        v41 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D23D8A14(v23 > 1, v24 + 1, 1);
          v13 = v41;
        }

        ++v17;
        *(v13 + 16) = v24 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v11, v18);
        v16 = v19;
      }

      while (v12 != v17);
    }

    else
    {
      v25 = (v14 + 32);
      v26 = v4;
      do
      {
        v27 = *v25;
        swift_beginAccess();
        v28 = *(v27 + 16);
        v29 = *(*v28 + 160);
        swift_beginAccess();
        (*(v5 + 16))(v7, v28 + v29, v26);
        v41 = v13;
        v31 = *(v13 + 16);
        v30 = *(v13 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D23D8A14(v30 > 1, v31 + 1, 1);
          v13 = v41;
        }

        *(v13 + 16) = v31 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v7, v26);
        ++v25;
        --v12;
      }

      while (v12);
    }

    v2 = v38[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D258A46C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 400) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  *(v6 + 112) = swift_task_alloc();
  v7 = sub_1D2872428();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_1D2872278();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  v9 = sub_1D2873CB8();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_1D2872438();
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = sub_1D2878568();
  *(v6 + 232) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v6 + 240) = v12;
  *(v6 + 248) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D258A6C0, v12, v11);
}

uint64_t sub_1D258A6C0()
{
  if (*(v0 + 400) == 1)
  {
    *(v0 + 376) = *(type metadata accessor for PhotoGridView() + 20);
    *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
    sub_1D2877618();
    sub_1D23C7CA8();
    v1 = sub_1D2878068();
    v2 = sub_1D2878068();
    v3 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v4 = sub_1D2878068();
    v5 = sub_1D2418030(v3);

    if (v5)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D258F070(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v6 = sub_1D2877E78();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + 104);
    [objc_opt_self() asyncSendSignal:v2 toChannel:v1 withNullableUniqueStringID:v4 withPayload:v6];

    if (v7 >> 62)
    {
      v9 = sub_1D2879368();
      *(v0 + 264) = v9;
      if (v9)
      {
LABEL_7:
        *(v0 + 380) = *MEMORY[0x1E696E450];
        *(v0 + 384) = *MEMORY[0x1E696E468];
        v10 = *(v0 + 104);
        *(v0 + 388) = *MEMORY[0x1E696E448];
        *(v0 + 392) = *MEMORY[0x1E696E460];
        *(v0 + 396) = *MEMORY[0x1E696E458];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D38A1C30](0);
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v9, v10, v8);
          }

          v11 = sub_1D2870F78();
        }

        *(v0 + 280) = v11;
        *(v0 + 288) = 1;
        *(v0 + 296) = *(v11 + 16);
        sub_1D2870F78();
        *(v0 + 304) = sub_1D2878558();
        v12 = sub_1D28784F8();
        v8 = v13;
        *(v0 + 312) = v12;
        *(v0 + 320) = v13;
        v9 = sub_1D258AA50;
        v10 = v12;

        return MEMORY[0x1EEE6DFA0](v9, v10, v8);
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 264) = v9;
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D258AA50()
{
  v1 = v0[37];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[41] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[37] + 16), *(v0[37] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[42] = v4;
    *v4 = v0;
    v4[1] = sub_1D258ABAC;
    v5 = v0[27];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v0[46] = v7;
    v9 = v0[30];
    v10 = v0[31];

    return MEMORY[0x1EEE6DFA0](sub_1D258B520, v9, v10);
  }
}

uint64_t sub_1D258ABAC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1D258B4A4;
  }

  else
  {
    v5 = sub_1D258ACE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D258ACE8()
{
  v1 = v0[41];

  v2 = v0[30];
  v3 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D258AD5C, v2, v3);
}

uint64_t sub_1D258AD5C()
{
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
  sub_1D2877618();
  v1 = sub_1D23C6DDC();

  *(v0 + 401) = sub_1D2730C54(v1) & 1;

  sub_1D2877618();
  v2 = sub_1D23C6DDC();
  *(v0 + 352) = v2;

  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1D258AEAC;
  v4 = *(v0 + 216);

  return (sub_1D273113C)(v2, v4);
}

uint64_t sub_1D258AEAC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  *(*v1 + 402) = a1;

  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D258AFF4, v5, v4);
}

uint64_t sub_1D258AFF4()
{
  v1 = sub_1D28722E8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = 0;
    v38 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(v0 + 152);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v41 = *(v5 + 72);
    v43 = *(v5 + 16);
    v7 = 6;
    do
    {
      v8 = *(v0 + 380);
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 144);
      v43(v9, v6, v11);
      v12 = (*(v10 + 88))(v9, v11);
      if (v12 == v8)
      {
        v12 = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
        v15 = __OFADD__(v3++, 1);
        if (v15)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v16 = v7;
      }

      else if (v12 == *(v0 + 384))
      {
        v15 = __OFADD__(v4++, 1);
        if (v15)
        {
          goto LABEL_40;
        }

        v16 = v7;
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      }

      else
      {
        v16 = v7;
        if (v12 == *(v0 + 388))
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v39 = 1;
        }

        else if (v12 == *(v0 + 392))
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v38 = 1;
        }

        else
        {
          v17 = *(v0 + 152);
          v18 = *(v0 + 160);
          v19 = *(v0 + 144);
          if (v12 == *(v0 + 396))
          {
            v20 = *(v0 + 128);
            v21 = *(v0 + 136);
            v22 = *(v0 + 112);
            v23 = *(v0 + 120);
            (*(v17 + 96))(*(v0 + 160), v19);
            (*(v20 + 32))(v21, v18, v23);
            sub_1D2872418();
            sub_1D2871EA8();
            v24 = sub_1D2872008();
            (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
            v16 = sub_1D24198DC(v22);
            (*(v20 + 8))(v21, v23);
          }

          else
          {
            (*(v17 + 8))(*(v0 + 160), v19);
          }
        }
      }

      v7 = v16;
      v6 += v41;
      --v2;
    }

    while (v2);
    v25 = 0x1000000;
    if ((v39 & 1) == 0)
    {
      v25 = 0;
    }

    v44 = v25;
    if (v38)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    v42 = v16;
  }

  else
  {
    v44 = 0;
    v3 = 0;
    v4 = 0;
    v42 = 6;
  }

  v26 = *(v0 + 402);
  v27 = *(v0 + 401);
  v28 = *(v0 + 278);
  v40 = *(v0 + 216);
  v29 = *(v0 + 192);
  v30 = *(*(v0 + 200) + 8);
  v30(*(v0 + 208), v29);

  v31 = 0x10000;
  if (!v27)
  {
    v31 = 0;
  }

  v32 = (v26 << 40) | (v28 << 48) | v31 | v44 | v2 | 0x200;
  sub_1D279C458(v32, v3, v4, v42);

  v12 = v30(v40, v29);
  v33 = *(v0 + 288);
  if (v33 != *(v0 + 264))
  {
    *(v0 + 272) = v32;
    v13 = *(v0 + 104);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1D38A1C30](v33);
    }

    else
    {
      if (v33 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v12 = sub_1D2870F78();
    }

    *(v0 + 280) = v12;
    *(v0 + 288) = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      *(v0 + 296) = *(v12 + 2);
      sub_1D2870F78();
      *(v0 + 304) = sub_1D2878558();
      v36 = sub_1D28784F8();
      v14 = v37;
      *(v0 + 312) = v36;
      *(v0 + 320) = v37;
      v12 = sub_1D258AA50;
      v13 = v36;

      return MEMORY[0x1EEE6DFA0](v12, v13, v14);
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D258B4A4()
{
  v1 = v0[41];

  v0[46] = v0[43];
  v2 = v0[30];
  v3 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D258B520, v2, v3);
}

uint64_t sub_1D258B520()
{
  v27 = v0;
  v1 = v0[46];
  sub_1D28726F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = v0[22];
    v24 = v0[21];
    v25 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1D2879748();
    v11 = sub_1D23D7C84(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to get recipe for asset with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v12 = (*(v6 + 8))(v25, v24);
  }

  else
  {
    v14 = v0[46];
    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[21];

    v12 = (*(v16 + 8))(v15, v17);
  }

  v18 = v0[36];
  if (v18 != v0[33])
  {
    v21 = v0[13];
    if ((v21 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1D38A1C30](v0[36]);
    }

    else
    {
      if (v18 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v12 = sub_1D2870F78();
    }

    v0[35] = v12;
    v0[36] = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      v0[37] = *(v12 + 2);
      sub_1D2870F78();
      v0[38] = sub_1D2878558();
      v22 = sub_1D28784F8();
      v13 = v23;
      v0[39] = v22;
      v0[40] = v23;
      v12 = sub_1D258AA50;
      v21 = v22;

      return MEMORY[0x1EEE6DFA0](v12, v21, v13);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v12, v21, v13);
  }

  v19 = v0[1];

  return v19();
}

size_t sub_1D258B824@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v48 = type metadata accessor for DisplayableImage();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0E8);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0F0);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v38 - v11;
  v13 = a1;
  v43 = a1 >> 62;
  if (a1 >> 62)
  {
    v14 = sub_1D2879368();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v47 = v9;
  if (v14)
  {
    v49 = MEMORY[0x1E69E7CC0];
    result = sub_1D23D8A58(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v39 = v12;
    v40 = a4;
    v17 = 0;
    v15 = v49;
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v20 = a1;
    do
    {
      if (v19)
      {
        v21 = MEMORY[0x1D38A1C30](v17, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v17 + 32);
        sub_1D2870F78();
      }

      v22 = *(v21 + 16);
      sub_1D2870F78();

      *v8 = v22;
      swift_storeEnumTagMultiPayload();
      v49 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D23D8A58(v23 > 1, v24 + 1, 1);
        v15 = v49;
      }

      ++v17;
      *(v15 + 16) = v24 + 1;
      sub_1D258EF8C(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, type metadata accessor for DisplayableImage);
      v18 = v20;
    }

    while (v14 != v17);
    v13 = v20;
    v12 = v39;
    a4 = v40;
  }

  v49 = v15;
  v25 = swift_allocObject();
  v26 = v41;
  v27 = v42;
  v25[2] = v13;
  v25[3] = v26;
  v25[4] = v27;
  sub_1D2870F68();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0F8);
  sub_1D22BB9D8(&qword_1EC6DE100, &qword_1EC6DE0F8);
  sub_1D258F070(&qword_1EC6E0FD0, type metadata accessor for DisplayableImage);
  v28 = v45;
  sub_1D2877A28();
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED8B0018;
  KeyPath = swift_getKeyPath();
  v49 = v29;
  sub_1D2870F78();
  v31 = sub_1D28748D8();
  (*(v46 + 32))(v12, v28, v47);
  v32 = &v12[*(v44 + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  if (v43)
  {
    v33 = sub_1D2879368();
  }

  else
  {
    v33 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v33 == 0;
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  sub_1D22EC9BC(v12, a4, &qword_1EC6DE0F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE108);
  v37 = (a4 + *(result + 36));
  *v37 = v35;
  v37[1] = sub_1D22C03D8;
  v37[2] = v36;
  return result;
}
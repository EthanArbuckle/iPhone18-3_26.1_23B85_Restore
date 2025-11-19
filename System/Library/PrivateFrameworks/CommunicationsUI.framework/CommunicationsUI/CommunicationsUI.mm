uint64_t static FilterMenuViewModel.recommendedActions(for:junkFilteringEnabled:voicemailEnabled:requestsEnabled:)(_BYTE *a1, char a2, char a3, char a4)
{
  if ((*a1 & 1) == 0)
  {
    v6 = sub_1C2C6DEB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    v14 = v12 >> 1;
    v15 = v13 + 1;
    if (v12 >> 1 <= v13)
    {
      v6 = sub_1C2C6DEB4((v12 > 1), v13 + 1, 1, v6);
      v12 = *(v6 + 24);
      v14 = v12 >> 1;
    }

    *(v6 + 16) = v15;
    *(v6 + v13 + 32) = 0;
    v16 = v13 + 2;
    if (v14 < (v13 + 2))
    {
      v6 = sub_1C2C6DEB4((v12 > 1), v13 + 2, 1, v6);
    }

    *(v6 + 16) = v16;
    *(v6 + v15 + 32) = 1;
    if (a3)
    {
      v17 = *(v6 + 24);
      v18 = v13 + 3;
      if ((v13 + 3) > (v17 >> 1))
      {
        v6 = sub_1C2C6DEB4((v17 > 1), v13 + 3, 1, v6);
      }

      *(v6 + 16) = v18;
      *(v6 + v16 + 32) = 2;
      if ((a4 & 1) == 0)
      {
LABEL_16:
        v19 = *(v6 + 16);
        if (a2)
        {
LABEL_17:
          v20 = *(v6 + 24);
          v9 = v19 + 1;
          if (v19 >= v20 >> 1)
          {
            v6 = sub_1C2C6DEB4((v20 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 16) = v9;
          v10 = v6 + v19;
          goto LABEL_20;
        }

LABEL_26:
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = v13 + 2;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v21 = *(v6 + 24);
    if (v18 >= v21 >> 1)
    {
      v6 = sub_1C2C6DEB4((v21 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 16) = v18 + 1;
    *(v6 + v18 + 32) = 4;
    v19 = *(v6 + 16);
    if (a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7C4C0;
  *(v6 + 32) = 33751296;
  v7 = 4;
  if (a4)
  {
    v6 = sub_1C2C6DEB4(1, 5, 1, v6);
    *(v6 + 16) = 5;
    *(v6 + 36) = 4;
    v7 = 5;
  }

  if (a2)
  {
    v8 = *(v6 + 24);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      v6 = sub_1C2C6DEB4((v8 > 1), v7 + 1, 1, v6);
    }

    *(v6 + 16) = v9;
    v10 = v6 + v7;
LABEL_20:
    *(v10 + 32) = 5;
    goto LABEL_27;
  }

  v9 = v7;
LABEL_27:
  v22 = *(v6 + 24);
  if (v9 >= v22 >> 1)
  {
    v6 = sub_1C2C6DEB4((v22 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + v9 + 32) = 7;
  return v6;
}

uint64_t sub_1C2C6DDDC()
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

char *sub_1C2C6DEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB30);
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

uint64_t type metadata accessor for FilterMenuViewModel()
{
  result = qword_1EC05CEB0;
  if (!qword_1EC05CEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C6DFF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FilterMenuViewModel.actionHandler.setter()
{
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A54();
}

uint64_t sub_1C2C6E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t sub_1C2C6E1B4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C2C6E240()
{
  type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_1C2C6E320();
    if (v1 <= 0x3F)
    {
      sub_1C2DD3DB4(319, &qword_1EC05CAB0, sub_1C2C6E350, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C2DD3AB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1C2C6E320()
{
  result = qword_1EC05CED8;
  if (!qword_1EC05CED8)
  {
    result = &type metadata for SystemImage;
    atomic_store(&type metadata for SystemImage, &qword_1EC05CED8);
  }

  return result;
}

unint64_t sub_1C2C6E350()
{
  result = qword_1EC05CA58;
  if (!qword_1EC05CA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05CA58);
  }

  return result;
}

uint64_t sub_1C2C6E3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C2C6E41C(uint64_t a1, unint64_t *a2)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static FavoriteTileStyle.current.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E74624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = 8.0;
    v9 = 0x3FC89374BC6A7EFALL;
    v10 = 0x3FF851EB851EB852;
    sub_1C2E74674();
  }

  else
  {
    v8 = 6.0;
    v9 = 0x3FD199999999999ALL;
    v10 = 0x3FF8333333333333;
    sub_1C2E74644();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v11 = sub_1C2E74664();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v10;
  a1[1] = v9;
  a1[2] = 0x4000000000000000;
  *(a1 + 3) = v8;
  a1[4] = v11;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t FilterMenuViewModel.selectedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void sub_1C2C6E7AC()
{
  if (!qword_1EC05BAB8)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BAB8);
    }
  }
}

void sub_1C2C6E814()
{
  sub_1C2C6E8E0();
  if (v0 <= 0x3F)
  {
    sub_1C2C6E7AC();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C2C6E8E0()
{
  result = qword_1EC05BD88;
  if (!qword_1EC05BD88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC05BD88);
  }

  return result;
}

uint64_t _s26ButtonShelfHorizontalStackVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C2C6E96C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C2C6E9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2C6E9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2C6EA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2C6EA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2C6EAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v16 - v10;
  sub_1C2C6EE48(v9, v12, v13);
  (*(v5 + 16))(v8, v11, a2);
  v18 = 0;
  v19 = 0;
  v20[0] = v8;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x1E6981840];
  v16[0] = a3;
  v16[1] = MEMORY[0x1E6981838];
  sub_1C2C6EC40(v20, 2uLL, v17);
  v14 = *(v5 + 8);
  v14(v11, a2);
  return (v14)(v8, a2);
}

uint64_t sub_1C2C6EC40(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C2E75854();
}

uint64_t sub_1C2C6EE50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1C2C6EE98@<D0>(uint64_t a1@<X8>)
{
  sub_1C2C6EEF0();
  sub_1C2E73BB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_1C2C6EEF0()
{
  result = qword_1EC05BC78;
  if (!qword_1EC05BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BC78);
  }

  return result;
}

uint64_t sub_1C2C6EF44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EC0758C0;
  v3 = *algn_1EC0758B0;
  *a1 = xmmword_1EC0758A0;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

unint64_t sub_1C2C6EFD0()
{
  result = qword_1EC05CEC8;
  if (!qword_1EC05CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CEC8);
  }

  return result;
}

uint64_t sub_1C2C6F038()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t static FilterMenu.menu(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v96 = MEMORY[0x1E69E7CC0];
  v3 = FilterMenuViewModel.actions.getter();
  v84 = a1;
  v78 = *(v3 + 16);
  if (!v78)
  {

    v7 = MEMORY[0x1E69E7CC0];
    v44 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v44)
    {
      goto LABEL_81;
    }

    goto LABEL_95;
  }

  v4 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsInSeparateSubmenu;
  v5 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  v74 = v3 + 32;
  v76 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount;
  swift_beginAccess();
  swift_beginAccess();
  v73 = v5;
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = *(v74 + v6);
    swift_getKeyPath();
    v93[0] = a1;
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A64();

    v9 = *(a1 + v76);
    if (*(v9 + 16))
    {

      v10 = sub_1C2D92424(v8);
      if (v11)
      {
        v12 = *(v9 + 56) + 24 * v10;
        v79 = *(v12 + 8);
        v81 = *v12;
        v85 = *(v12 + 16);
        sub_1C2E605B4(*v12, v79, v85);
      }

      else
      {
        v79 = 0;
        v81 = 0;
        v85 = 0;
      }
    }

    else
    {
      v79 = 0;
      v81 = 0;
      v85 = 0;
    }

    v82 = v6 + 1;
    swift_getKeyPath();
    v93[0] = a1;
    sub_1C2E71A64();

    v13 = *(a1 + v4);
    v14 = *(v13 + 16);
    v15 = (v13 + 32);

    while (v14)
    {
      v17 = *v15;
      if (v17 <= 3)
      {
        v20 = 0x69616D6F65646976;
        if (v17 == 2)
        {
          v20 = 0x69616D6563696F76;
        }

        v21 = 0x64657373696DLL;
        if (!*v15)
        {
          v21 = 0x736C6C6163;
        }

        v22 = 0xE500000000000000;
        if (*v15)
        {
          v22 = 0xE600000000000000;
        }

        if (*v15 <= 1u)
        {
          v18 = v21;
        }

        else
        {
          v18 = v20;
        }

        if (*v15 <= 1u)
        {
          v19 = v22;
        }

        else
        {
          v19 = 0xE90000000000006CLL;
        }

        if (v8 > 3)
        {
LABEL_43:
          v23 = 0x746C69466C6C6163;
          if (v8 != 7)
          {
            v23 = 0x656D695465636166;
          }

          v24 = 0xED0000676E697265;
          if (v8 != 7)
          {
            v24 = 0xE800000000000000;
          }

          if (v8 == 6)
          {
            v23 = 0x64656B636F6C62;
            v24 = 0xE700000000000000;
          }

          v25 = 0x7374736575716572;
          if (v8 == 4)
          {
            v26 = 0xE800000000000000;
          }

          else
          {
            v25 = 1802401130;
            v26 = 0xE400000000000000;
          }

          if (v8 <= 5)
          {
            v27 = v25;
          }

          else
          {
            v27 = v23;
          }

          if (v8 <= 5)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (v18 != v27)
          {
            goto LABEL_12;
          }

          goto LABEL_71;
        }
      }

      else if (*v15 <= 5u)
      {
        if (v17 == 4)
        {
          v18 = 0x7374736575716572;
        }

        else
        {
          v18 = 1802401130;
        }

        if (v17 == 4)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else if (v17 == 6)
      {
        v19 = 0xE700000000000000;
        v18 = 0x64656B636F6C62;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else if (v17 == 7)
      {
        v18 = 0x746C69466C6C6163;
        v19 = 0xED0000676E697265;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        v18 = 0x656D695465636166;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v29 = 0x69616D6563696F76;
        }

        else
        {
          v29 = 0x69616D6F65646976;
        }

        v28 = 0xE90000000000006CLL;
        if (v18 != v29)
        {
          goto LABEL_12;
        }
      }

      else if (v8)
      {
        v28 = 0xE600000000000000;
        if (v18 != 0x64657373696DLL)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v28 = 0xE500000000000000;
        if (v18 != 0x736C6C6163)
        {
          goto LABEL_12;
        }
      }

LABEL_71:
      if (v19 == v28)
      {

LABEL_76:

        sub_1C2E605A0(v81, v79, v85);
        v6 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C2C6DEB4(0, *(v7 + 2) + 1, 1, v7);
        }

        v43 = *(v7 + 2);
        v42 = *(v7 + 3);
        a1 = v84;
        if (v43 >= v42 >> 1)
        {
          v7 = sub_1C2C6DEB4((v42 > 1), v43 + 1, 1, v7);
        }

        *(v7 + 2) = v43 + 1;
        v7[v43 + 32] = v8;
        goto LABEL_4;
      }

LABEL_12:
      v16 = sub_1C2E767A4();

      ++v15;
      --v14;
      if (v16)
      {
        goto LABEL_76;
      }
    }

    swift_getKeyPath();
    v93[0] = v84;
    sub_1C2E71A64();

    v30 = v84[v73];
    LOBYTE(v93[0]) = v8;
    FilterMenuViewModel.isSelected(_:)(v93);
    v31 = swift_allocObject();
    *(v31 + 16) = v84;
    v92[0] = v8;
    v93[0] = v81;
    v93[1] = v79;
    v94 = v85;
    v32 = v84;
    FilterMenuViewModel.Action.title(occurrences:)(v93);
    LOBYTE(v93[0]) = v8;
    v92[0] = v30;
    sub_1C2E5C710(v92);
    v33 = sub_1C2E75C24();

    v34 = [objc_opt_self() systemImageNamed_];

    sub_1C2C6E1B4(0, &qword_1EC05CA60);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1C2E605C4;
    *(v35 + 24) = v31;
    *(v35 + 32) = v8;
    v36 = sub_1C2E76264();
    sub_1C2E605A0(v81, v79, v85);
    v37 = v36;
    MEMORY[0x1C6926780](v37, v38, v39, v40, v41);
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();

    v6 = v82;
    a1 = v84;
LABEL_4:
    ;
  }

  while (v6 != v78);

  v2 = MEMORY[0x1E69E7CC0];
  v44 = *(v7 + 2);
  if (!v44)
  {
LABEL_95:

    goto LABEL_96;
  }

LABEL_81:
  v95 = v2;
  sub_1C2C6E1B4(0, &qword_1EC05CA60);
  v80 = objc_opt_self();
  v45 = (a1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  v77 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount;
  swift_beginAccess();
  swift_beginAccess();
  v75 = v45;
  swift_beginAccess();
  v46 = 32;
  v88 = v7;
  do
  {
    v47 = v7[v46];
    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A64();

    v48 = *(a1 + v77);
    v83 = v44;
    if (*(v48 + 16))
    {

      v49 = sub_1C2D92424(v47);
      if (v50)
      {
        v51 = *(v48 + 56) + 24 * v49;
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        sub_1C2E605B4(*v51, v53, v54);
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
      }

      v86 = v53;
      v87 = v52;

      v55 = v54;
    }

    else
    {
      v86 = 0;
      v87 = 0;
      v55 = 0;
    }

    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2E71A64();

    LOBYTE(v89[0]) = v47;
    FilterMenuViewModel.isSelected(_:)(v89);
    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2E71A64();

    v57 = *v75;
    v56 = v75[1];
    v91 = v47;
    v89[0] = v87;
    v89[1] = v86;
    v90 = v55;

    FilterMenuViewModel.Action.title(occurrences:)(v89);
    v58 = sub_1C2E75C24();

    v59 = [v80 systemImageNamed_];

    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v47;
    v61 = sub_1C2E76264();
    sub_1C2E605A0(v87, v86, v55);
    v62 = v61;
    MEMORY[0x1C6926780](v62, v63, v64, v65, v66);
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();

    ++v46;
    a1 = v84;
    --v44;
    v7 = v88;
  }

  while (v83 != 1);

  sub_1C2C6E1B4(0, &unk_1EC05CA80);
  v67 = sub_1C2E76194();
  MEMORY[0x1C6926780](v67, v68, v69, v70, v71);
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
LABEL_96:
  sub_1C2C6E1B4(0, &unk_1EC05CA80);
  return sub_1C2E76194();
}

uint64_t sub_1C2C6FDF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2C6FE30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C2C6FE84(unsigned __int8 a1)
{
  sub_1C2E76854();
  MEMORY[0x1C6927290](a1);
  v2 = sub_1C2E76894();

  return sub_1C2D92548(a1, v2);
}

uint64_t type metadata accessor for ContactAvatarTileView()
{
  result = qword_1EC05BFD8;
  if (!qword_1EC05BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C6FF3C()
{
  sub_1C2C701B4(319, &qword_1EC05CC08, MEMORY[0x1E69CA888]);
  if (v0 <= 0x3F)
  {
    sub_1C2E5B29C(319, &qword_1EC05B318, &qword_1EC05E100, &unk_1C2E93130, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C2E5B29C(319, &qword_1EC05B410, &qword_1EC05E0E8, &unk_1C2E7C0C0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C2E5B29C(319, &qword_1EC05B308, &qword_1EC05DB40, &unk_1C2E7AFB0, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C2C70208(319, &qword_1EC05BBB0, &type metadata for ContactAvatarTileViewCustomConfiguration, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C2C70208(319, &qword_1EC05B310, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1C2C701B4(319, &qword_1EC05CC00, MEMORY[0x1E697E730]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C2C70150(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C2C701B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2E730F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C2C70208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C2C702C8()
{
  sub_1C2C7042C(319, &qword_1EC05B2D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C2C7042C(319, &qword_1EC05B2B0, &type metadata for ContactAvatarTileView.Caption.Accessory, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C2E757E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2C703E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C2E76424();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C2C7042C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C2C70490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C2E757E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 9) = v3;
  return result;
}

uint64_t sub_1C2C70558(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C2C705A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v52 = a1;
  v53 = a3;
  v54 = a2;
  v56 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v45 - v13;
  v14 = sub_1C2E746A4();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2E757E4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v58 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  v23 = *a4;
  v24 = *(a4 + 8);
  v25 = *(a4 + 16);
  v59[0] = v23;
  v59[1] = v24;
  v60 = v25;
  v57 = a7;
  v55 = a5;
  if (v25 == 255)
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C2C70B1C(v23, v24, v25);
    v26 = MEMORY[0x1E69E7CC0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1C2C70B44(0, *(v26 + 16) + 1, 1, v26);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1C2C70B44((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v50 = v28;
    v31 = &v28[24 * v30];
    *(v31 + 4) = v23;
    *(v31 + 5) = v24;
    v31[48] = v25;
  }

  sub_1C2C73644(v59, &qword_1EC05F148);
  v32 = *(v18 + 16);
  v33 = v51;
  v32(v22, v51, v17);
  sub_1C2E74FA4();
  v49 = sub_1C2E74F74();

  v32(v58, v22, v17);
  v34 = v53;
  if (v53)
  {
    v35 = *(v18 + 8);
    v35(v33, v17);
    v35(v22, v17);
    v36 = v55;
  }

  else
  {
    v37 = *MEMORY[0x1E6980EF0];
    v38 = *(v47 + 104);
    v45 = v16;
    v38(v16, v37, v48);
    v39 = sub_1C2E74534();
    v40 = v46;
    (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
    v36 = v55;

    sub_1C2E74594();
    v34 = sub_1C2E745D4();

    v41 = *(v18 + 8);
    v41(v33, v17);
    sub_1C2C73644(v40, &qword_1EC05D810);
    (*(v47 + 8))(v45, v48);
    v41(v22, v17);
  }

  v42 = v54;
  *v11 = v52;
  *(v11 + 1) = v42;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v43 = v50;
  *(v11 + 4) = v49;
  *(v11 + 5) = 0;
  v11[48] = 0;
  *(v11 + 7) = 0;
  *(v11 + 8) = v34;
  *(v11 + 9) = v43;
  if (!v36)
  {
  }

  *(v11 + 10) = v36;
  *(v11 + 11) = 0;
  v11[96] = 0;
  *(v11 + 13) = v34;
  (*(v18 + 32))(&v11[*(v56 + 48)], v58, v17);
  sub_1C2DD3124(v11, v57, type metadata accessor for ContactAvatarTileView.Caption);
}

id sub_1C2C70B1C(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

char *sub_1C2C70B44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0629E0);
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

uint64_t sub_1C2C70C84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C2E757E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C70D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C2C70D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t ContactAvatarTileView.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:customConfig:showSpinner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v90 = a8;
  v76 = sub_1C2E718A4();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v68 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v67) = *a11;
  v77 = a1;
  sub_1C2C6E3A4(a1, v115);
  if (a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v24 = sub_1C2D0BD8C;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v96 = v24;
  v97 = v23;
  sub_1C2C6EE50(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40);
  sub_1C2E753B4();
  sub_1C2C71668(v24);
  v88 = v111;
  v87 = v112;
  v89 = v113;
  v94 = v114;
  v75 = a3;
  if (a4)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v26 = sub_1C2D0BD8C;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v96 = v26;
  v97 = v25;
  v27 = a5;
  sub_1C2C6EE50(a4);
  sub_1C2E753B4();
  sub_1C2C71668(v26);
  v85 = v107;
  v92 = v108;
  v93 = v109;
  v86 = v110;
  if (a6)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    v29 = a7;
    v30 = sub_1C2D0BD8C;
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v29 = a7;
  }

  LODWORD(v65) = a14;
  v81 = a13;
  v82 = a12;
  v96 = v30;
  v97 = v28;
  sub_1C2C6EE50(a6);
  sub_1C2E753B4();
  sub_1C2C71668(v30);
  v91 = v103;
  v80 = v104;
  v84 = v105;
  v83 = v106;
  v31 = v90;
  v74 = a2;
  v73 = v27;
  v71 = a4;
  v70 = v29;
  v69 = a6;
  if (v90)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a10;
    v33 = v31;
    v31 = sub_1C2D0B4AC;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v96 = v31;
  v97 = v32;
  v66 = a10;
  sub_1C2C6EE50(v33);
  sub_1C2E753B4();
  sub_1C2C71668(v31);
  v34 = v99;
  v35 = v100;
  v37 = v101;
  v36 = v102;
  v95 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E100);
  sub_1C2E753B4();
  v78 = v96;
  v38 = v97;
  v79 = v98;
  v39 = type metadata accessor for ContactAvatarTileView();
  v40 = v39[5];
  *(a9 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  swift_storeEnumTagMultiPayload();
  v41 = v39[14];
  *(a9 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  sub_1C2C6E3A4(v115, &v96);
  sub_1C2C6E3A4(&v96, &v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E8);
  sub_1C2E75174();
  __swift_destroy_boxed_opaque_existential_1(&v96);
  v42 = (a9 + v39[8]);
  *v42 = v88;
  v43 = v89;
  v42[1] = v87;
  v42[2] = v43;
  v44 = a9;
  v64 = a9;
  v45 = v43;
  v42[3] = v94;
  v46 = (v44 + v39[9]);
  v47 = v92;
  *v46 = v85;
  v46[1] = v47;
  v48 = v86;
  v46[2] = v93;
  v46[3] = v48;
  v49 = (v44 + v39[10]);
  v50 = v80;
  *v49 = v91;
  v49[1] = v50;
  v51 = v83;
  v49[2] = v84;
  v49[3] = v51;
  v52 = (v44 + v39[11]);
  *v52 = v34;
  v52[1] = v35;
  v63 = v37;
  v52[2] = v37;
  v52[3] = v36;
  v62[1] = v36;
  *(v44 + v39[12]) = v67;
  v53 = v44 + v39[13];
  v54 = v81;
  *v53 = v82;
  *(v53 + 8) = v54;
  *(v53 + 16) = v65 & 1;
  v55 = (v44 + v39[6]);
  *v55 = v78;
  v55[1] = v38;
  v55[2] = v79;

  sub_1C2C6EE50(v45);

  sub_1C2C6EE50(v93);

  v56 = v84;
  sub_1C2C6EE50(v84);

  sub_1C2C6EE50(v37);

  v57 = v68;
  sub_1C2E71894();
  v67 = sub_1C2E71854();
  v65 = v58;

  sub_1C2C71668(v63);

  sub_1C2C71668(v56);

  sub_1C2C71668(v93);

  sub_1C2C71668(v89);
  sub_1C2C71668(v90);
  sub_1C2C71668(v69);
  sub_1C2C71668(v71);
  sub_1C2C71668(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  (*(v72 + 8))(v57, v76);
  result = __swift_destroy_boxed_opaque_existential_1(v115);
  v60 = v64;
  v61 = v65;
  *v64 = v67;
  v60[1] = v61;
  return result;
}

uint64_t sub_1C2C71668(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2C716A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C716EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s11CaptionViewVMa()
{
  result = qword_1EC05C078;
  if (!qword_1EC05C078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C71750()
{
  result = type metadata accessor for ContactAvatarTileView.Caption(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2C717F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C2C7185C()
{
  sub_1C2C70150(319, &qword_1EC05B410, &qword_1EC05E0E8, &unk_1C2E7C0C0, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C2C717F8(319, &qword_1EC05B408, type metadata accessor for ContactAvatarTileView.Caption, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C2C70150(319, &qword_1EC05B400, &qword_1EC05E0F0, &unk_1C2E7EA00, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C2C70150(319, &unk_1EC05B3C8, &qword_1EC05E0F8, &unk_1C2E7C0D0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C2C71ACC();
          if (v4 <= 0x3F)
          {
            sub_1C2C70150(319, &qword_1EC05B318, &qword_1EC05E100, &unk_1C2E93130, MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1C2C717F8(319, &qword_1EC05CC08, MEMORY[0x1E69CA888], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C2C717F8(319, &qword_1EC05CC00, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C2C71ACC()
{
  if (!qword_1EC05B310)
  {
    v0 = sub_1C2E753F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05B310);
    }
  }
}

uint64_t sub_1C2C71B48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064968);
  sub_1C2C94F38(&qword_1EC05B3C0, &qword_1EC064968);
  sub_1C2C71BF4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C2C71BF4()
{
  result = qword_1EC05C020;
  if (!qword_1EC05C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C020);
  }

  return result;
}

uint64_t sub_1C2C71CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2C71CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C71D5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2C71DC4()
{
  result = qword_1EC05BD80;
  if (!qword_1EC05BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD80);
  }

  return result;
}

uint64_t sub_1C2C71E88(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72340(result, a2, a3 & 1);
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

uint64_t sub_1C2C71EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v4 = v1[3];
  v22 = v1[2];
  v23 = v4;
  v5 = v4;
  if (qword_1EC05CF10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC05D730;
  v6 = *algn_1EC05D738;
  v19[3] = &type metadata for AggregateFavoriteTile.TileState;
  v19[4] = &off_1F4298330;
  v8 = swift_allocObject();
  v19[0] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v17 = *&qword_1EC05D750;
  *(v8 + 32) = xmmword_1EC05D740;
  *(v8 + 48) = v17;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = v5;
  sub_1C2C6E3A4(v19, a1 + 8);
  v9 = swift_allocObject();
  v10 = v21;
  v9[1] = v20;
  v9[2] = v10;
  v11 = v23;
  v9[3] = v22;
  v9[4] = v11;

  sub_1C2C721E0(&v20, v18);
  LOBYTE(v6) = sub_1C2E74464();
  sub_1C2E73034();
  v18[0] = 0;
  *(a1 + 96) = sub_1C2C98500;
  *(a1 + 104) = v9;
  *(a1 + 112) = v6;
  *(a1 + 120) = v12;
  *(a1 + 128) = v13;
  *(a1 + 136) = v14;
  *(a1 + 144) = v15;
  *(a1 + 152) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1C2C72094()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1C2C720E4()
{
  result = qword_1EC05B9C0;
  if (!qword_1EC05B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D798);
    sub_1C2C98448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9C0);
  }

  return result;
}

uint64_t sub_1C2C72170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C72278(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72330(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2C722C8()
{
  sub_1C2C6EEF0();

  return sub_1C2E73BC4();
}

uint64_t sub_1C2C72330(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2C72340(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t FavoriteTile.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C2E73D84();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C2E74264();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 16);
  v37 = sub_1C2E73654();
  v39 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F548);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060318);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v6 = sub_1C2E73654();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v59 = WitnessTable;
  v60 = v9;
  v38 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v11 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
  v55 = v6;
  v56 = v7;
  v57 = v10;
  v58 = v11;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v34[2] = sub_1C2E75844();
  v34[1] = swift_getWitnessTable();
  v12 = sub_1C2E752E4();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v34[0] = swift_getWitnessTable();
  v55 = v12;
  v56 = v34[0];
  v34[3] = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v34 - v16;
  sub_1C2E74384();
  v18 = sub_1C2E73654();
  v37 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v34 - v22;
  v24 = a1;
  v25 = v42;
  sub_1C2D3E4A0(&v55);

  v49 = v40;
  v50 = v39;
  v51 = *(v24 + 32);
  v52 = v25;
  sub_1C2E73DC4();
  sub_1C2E752D4();
  v26 = v41;
  sub_1C2E74244();
  v27 = v34[0];
  sub_1C2E74C04();
  (*(v43 + 8))(v26, v44);
  (*(v36 + 8))(v14, v12);
  v28 = v45;
  sub_1C2E73D64();
  v55 = v12;
  v56 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2E74C34();
  (*(v46 + 8))(v28, v47);
  (*(v35 + 8))(v17, OpaqueTypeMetadata2);
  v30 = sub_1C2C6EA44(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v53 = OpaqueTypeConformance2;
  v54 = v30;
  v31 = swift_getWitnessTable();
  sub_1C2C6EE48(v21, v18, v31);
  v32 = *(v37 + 8);
  v32(v21, v18);
  sub_1C2C6EE48(v23, v18, v31);
  return (v32)(v23, v18);
}

uint64_t sub_1C2C72B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2C72BD4(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C72C58@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C2E73BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C2C736A4(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1C2E75FD4();
    v17 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ContactAvatarBackgroundView.body.getter()
{
  v1 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060218);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060220);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  sub_1C2D3A938(v0, v6);
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v6, v9, &qword_1EC060218);
  v10 = &v9[*(v7 + 36)];
  v11 = v26;
  v12 = v28;
  v13 = v29;
  *(v10 + 4) = v27;
  *(v10 + 5) = v12;
  *(v10 + 6) = v13;
  v14 = v24;
  *v10 = v23;
  *(v10 + 1) = v14;
  *(v10 + 2) = v25;
  *(v10 + 3) = v11;
  v15 = v0[3];
  v16 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v15);
  (*(v16 + 40))(v15, v16);
  sub_1C2C7360C(v0, v21);
  v17 = swift_allocObject();
  v18 = v21[3];
  *(v17 + 48) = v21[2];
  *(v17 + 64) = v18;
  *(v17 + 80) = v21[4];
  *(v17 + 96) = v22;
  v19 = v21[1];
  *(v17 + 16) = v21[0];
  *(v17 + 32) = v19;
  sub_1C2D3C7D4();
  sub_1C2D3CE80(&qword_1EC05CE58, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2E74DD4();

  sub_1C2C7348C(v3, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return sub_1C2C73644(v9, &qword_1EC060220);
}

uint64_t sub_1C2C73170()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void sub_1C2C731C8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C6926F20](a1, a2, v7);
      sub_1C2C6E1B4(0, &qword_1EC05CA70);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C2C6E1B4(0, &qword_1EC05CA70);
    if (sub_1C2E764C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C2E764D4();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C2E76224();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C2E76234();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_ly7SwiftUI5ColorVytIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C2C7348C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C734EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C7354C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C735AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C73644(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C736A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1C2C73764()
{
  sub_1C2E71784();
  if (v0 <= 0x3F)
  {
    sub_1C2D9DB68(319, &qword_1EC05CA40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C2D9E8E4(319, &qword_1EC05B3D8, &unk_1EC061C30, &unk_1C2E83560, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C2D9E8E4(319, &qword_1EC05B3F8, &unk_1EC061C40, &unk_1C2E7EA40, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C2C738BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060220);
  type metadata accessor for ContactAvatarTileView.ImageStyle(255);
  sub_1C2D3C7D4();
  sub_1C2D3CE80(&qword_1EC05CE58, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t storeEnumTagSinglePayload for CommunicationDetailsAppType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C2C73A20(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  sub_1C2C73C8C(v2, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContactAvatarTileView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C2C71CF4(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for ContactAvatarTileView);
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064970);
  sub_1C2E5AC08();
  sub_1C2E751C4();
  sub_1C2C94F38(&qword_1EC05B3C0, &qword_1EC064968);
  sub_1C2C71BF4();
  sub_1C2E74984();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2C73C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C73CF4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A10);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v33 - v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A18);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v33 - v13;
  type metadata accessor for ContactAvatarTileView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  sub_1C2E75184();
  v15 = v45;
  v14 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  (*(v14 + 16))(v15, v14);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = v8;
LABEL_5:
    sub_1C2C73644(v17, &qword_1EC05E0F0);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    v22 = sub_1C2E5B070();
    v23 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    v42 = v20;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_1C2E73F44();
  }

  sub_1C2C71CF4(v8, v41, type metadata accessor for ContactAvatarTileView.Caption);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  sub_1C2E75184();
  v18 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  (*(v19 + 40))(v18, v19);
  if (v16(v5, 1, v9) == 1)
  {
    sub_1C2C735AC(v41, type metadata accessor for ContactAvatarTileView.Caption);
    v17 = v5;
    goto LABEL_5;
  }

  v25 = v34;
  sub_1C2C71CF4(v5, v34, type metadata accessor for ContactAvatarTileView.Caption);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v26 = v35;
  sub_1C2E56914(v41, v25, v35);
  v27 = v36;
  v28 = v39;
  (*(v36 + 16))(v38, v26, v39);
  swift_storeEnumTagMultiPayload();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
  v31 = sub_1C2E5B070();
  v32 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1C2E73F44();
  (*(v27 + 8))(v26, v28);
  sub_1C2C735AC(v25, type metadata accessor for ContactAvatarTileView.Caption);
  return sub_1C2C735AC(v41, type metadata accessor for ContactAvatarTileView.Caption);
}

BOOL sub_1C2C742D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v29[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29[-1] - v3;
  v5 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  type metadata accessor for ContactAvatarTileView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  sub_1C2E75184();
  v15 = v30;
  v14 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(*(v14 + 8) + 40))(v15);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_1C2C71CF4(v13, v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1C2C735AC(v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C2C71CF4(v10, v7, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
    v17 = v7[57];
    sub_1C2C735AC(v7, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1C2C735AC(v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
  }

  sub_1C2E75184();
  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v20 + 16))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v21 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v4, 1, v21);
  sub_1C2C73644(v4, &qword_1EC05E0F0);
  if (v23 == 1)
  {
    return 0;
  }

  sub_1C2E75184();
  v24 = v30;
  v25 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v26 = v28;
  (*(v25 + 40))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v27 = v22(v26, 1, v21) != 1;
  sub_1C2C73644(v26, &qword_1EC05E0F0);
  return v27;
}

uint64_t sub_1C2C746E0@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  *a1 = sub_1C2D40950;
  a1[1] = v5;
  return sub_1C2D3E468(v10, &v9);
}

uint64_t sub_1C2C74764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2C747B0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C2E76494();
    v5 = v4;
    v6 = sub_1C2E76534();
    v8 = v7;
    v9 = MEMORY[0x1C6926EE0](v3, v5, v6, v7);
    sub_1C2C748CC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C2C748CC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C2E76474();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C2C731C8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C2C748CC(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1C2C748CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C2C74960()
{
  result = qword_1EDDCD9F8;
  if (!qword_1EDDCD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCD9F8);
  }

  return result;
}

unint64_t sub_1C2C749B4()
{
  result = qword_1EC05CB70;
  if (!qword_1EC05CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060290);
    sub_1C2D3CCD4(&qword_1EC05CB98, &qword_1EC060298);
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB70);
  }

  return result;
}

unint64_t sub_1C2C74A8C()
{
  result = qword_1EC05CAC8;
  if (!qword_1EC05CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CAC8);
  }

  return result;
}

unint64_t sub_1C2C74AE0()
{
  result = qword_1EC05CB78;
  if (!qword_1EC05CB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0602D0);
    sub_1C2D3CDFC();
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB78);
  }

  return result;
}

uint64_t sub_1C2C74BB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2C74C30()
{
  sub_1C2C717F8(319, &qword_1EC05CC00, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C2C7698C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1C2C74D20()
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v0 = sub_1C2E74F74();

  qword_1EC075910 = 0x4028000000000000;
  *algn_1EC075918 = v0;
  xmmword_1EC075920 = xmmword_1C2E93060;
  unk_1EC075930 = xmmword_1C2E93070;
  result = 1.0;
  xmmword_1EC075940 = xmmword_1C2E93080;
  qword_1EC075950 = 0x3FE6666666666666;
  return result;
}

double sub_1C2C74D98()
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v0 = sub_1C2E74F74();

  *&xmmword_1EC0758C8 = 0x4028000000000000;
  *(&xmmword_1EC0758C8 + 1) = v0;
  xmmword_1EC0758D8 = xmmword_1C2E93090;
  xmmword_1EC0758E8 = xmmword_1C2E930A0;
  result = 0.5;
  xmmword_1EC0758F8 = xmmword_1C2E930B0;
  qword_1EC075908 = 0x3FE6666666666666;
  return result;
}

uint64_t sub_1C2C74E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C74ED4(uint64_t a1, uint64_t a2)
{
  v4 = _s11CaptionViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2C74F38()
{
  result = qword_1EC05CBA8;
  if (!qword_1EC05CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F580);
    sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBA8);
  }

  return result;
}

double sub_1C2C74FF4()
{
  v0 = sub_1C2E73554();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13AccessoryViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8);
  sub_1C2E75184();
  v7 = v6[48] & 0xC0;
  sub_1C2CC2FE0(v6, type metadata accessor for ContactAvatarTileView.Caption);
  result = 0.0;
  if (v7 == 128)
  {
    sub_1C2CBF910(v3);
    v9 = (*(v1 + 88))(v3, v0);
    result = 8.0;
    if (v9 != *MEMORY[0x1E697E708])
    {
      result = 10.0;
      if (v9 != *MEMORY[0x1E697E720] && v9 != *MEMORY[0x1E697E728])
      {
        result = 13.0;
        if (v9 != *MEMORY[0x1E697E6C0] && v9 != *MEMORY[0x1E697E6C8] && v9 != *MEMORY[0x1E697E6D0])
        {
          result = 20.0;
          if (v9 != *MEMORY[0x1E697E6D8])
          {
            result = 24.0;
            if (v9 != *MEMORY[0x1E697E6E0])
            {
              (*(v1 + 8))(v3, v0, 24.0);
              return 7.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C2C7522C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2C75288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2C75348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E198);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v59 - v6;
  v70 = sub_1C2E72B04();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A0);
  v8 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v59 - v10;
  v82 = sub_1C2E73554();
  v83 = *(v82 - 8);
  v11 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v59 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - v14;
  v75 = sub_1C2E746A4();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1B0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v21 = &v59 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1B8);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v59 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C0);
  MEMORY[0x1EEE9AC00](v59);
  v84 = &v59 - v24;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - v25;
  v26 = *a1;
  v27 = *(a1 + 9);
  v28 = *(a1 + 8);
  v29 = v3 + *(_s13AccessoryViewVMa(0) + 28);
  v30 = *(v29 + 16);
  v93 = *v29;
  *&v94 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E168);
  sub_1C2E75184();
  *(swift_allocObject() + 16) = v89;
  v71 = v3;
  v85 = v3;
  v86 = v26;
  v87 = v28;
  v88 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1D0);
  sub_1C2CC26D4();
  sub_1C2E751C4();
  *&v19[*(v17 + 24)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  *v19 = v26;
  v19[8] = v28;
  v19[9] = v27;
  sub_1C2CC290C(v26, v28);
  if (qword_1EC05C028 != -1)
  {
    swift_once();
  }

  v31 = unk_1EC0759A8;
  v95 = xmmword_1EC075998;
  v96 = unk_1EC0759A8;
  v32 = qword_1EC0759B8;
  v97 = qword_1EC0759B8;
  v34 = xmmword_1EC075978;
  v33 = *&qword_1EC075988;
  v93 = xmmword_1EC075978;
  v94 = *&qword_1EC075988;
  *(v19 + 3) = xmmword_1EC075998;
  *(v19 + 4) = v31;
  *(v19 + 10) = v32;
  *(v19 + 1) = v34;
  *(v19 + 2) = v33;
  v92 = 0x40F86A0000000000;
  sub_1C2C74E10(&v93, &v89);
  if (qword_1EC05C038 != -1)
  {
    swift_once();
  }

  v35 = v75;
  v36 = __swift_project_value_buffer(v75, qword_1EC0759C0);
  (*(v74 + 16))(v16, v36, v35);
  sub_1C2C774AC();
  sub_1C2E731C4();
  v37 = sub_1C2C94F38(&qword_1EC05B3B8, &qword_1EC05E1B0);
  v38 = sub_1C2C7522C(&qword_1EC05C070, _s13AccessoryViewV24CallButtonHighlightStyleVMa);
  v39 = v77;
  sub_1C2E74984();
  sub_1C2CC2FE0(v19, _s13AccessoryViewV24CallButtonHighlightStyleVMa);
  (*(v76 + 8))(v21, v39);
  *&v89 = v39;
  *(&v89 + 1) = v17;
  v90 = v37;
  v91 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v79;
  sub_1C2E74C54();
  (*(v78 + 8))(v23, v40);
  v41 = v83;
  v42 = *(v83 + 104);
  v43 = v80;
  v44 = v82;
  v42(v80, *MEMORY[0x1E697E6F0], v82);
  v45 = v81;
  v42(v81, *MEMORY[0x1E697E6C8], v44);
  sub_1C2C7522C(&qword_1EC05CBC8, MEMORY[0x1E697E730]);
  result = sub_1C2E75B94();
  if (result)
  {
    v47 = v41;
    v48 = *(v41 + 32);
    v49 = v64;
    v48(v64, v43, v44);
    v50 = v67;
    v48((v49 + *(v67 + 48)), v45, v44);
    v51 = v66;
    sub_1C2C736A4(v49, v66, &qword_1EC05E1A0);
    v52 = *(v50 + 48);
    v53 = v63;
    v48(v63, v51, v44);
    v54 = *(v47 + 8);
    v54(v51 + v52, v44);
    sub_1C2C71D5C(v49, v51, &qword_1EC05E1A0);
    v48((v53 + *(v65 + 36)), (v51 + *(v50 + 48)), v44);
    v54(v51, v44);
    sub_1C2CC2924();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    v55 = v60;
    v56 = v84;
    sub_1C2E74A84();
    sub_1C2C73644(v53, &qword_1EC05E1A8);
    sub_1C2C73644(v56, &qword_1EC05E1C0);
    v57 = v68;
    sub_1C2CBF708(v68);
    v58 = v72;
    sub_1C2E72AE4();
    (*(v69 + 8))(v57, v70);
    sub_1C2CC1984(v58, v73);
    sub_1C2C73644(v58, &qword_1EC05E198);
    return (*(v61 + 8))(v55, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2C75F6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1C2C75FB0()
{
  result = qword_1EC05B568;
  if (!qword_1EC05B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1D8);
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0);
    sub_1C2C76068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B568);
  }

  return result;
}

unint64_t sub_1C2C76068()
{
  result = qword_1EC05B818;
  if (!qword_1EC05B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1E8);
    sub_1C2C74A8C();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B818);
  }

  return result;
}

unint64_t sub_1C2C76120()
{
  result = qword_1EC05B860;
  if (!qword_1EC05B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E208);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B860);
  }

  return result;
}

uint64_t sub_1C2C76200()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration()
{
  result = qword_1EC05CDA8;
  if (!qword_1EC05CDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C762EC()
{
  result = sub_1C2E75004();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C2C76380()
{
  result = qword_1EC05B7D8;
  if (!qword_1EC05B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2B8);
    sub_1C2C76438();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7D8);
  }

  return result;
}

unint64_t sub_1C2C76438()
{
  result = qword_1EC05B980;
  if (!qword_1EC05B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2A8);
    sub_1C2CC3188();
    sub_1C2C94F38(&qword_1EC05BD28, &qword_1EC05E2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B980);
  }

  return result;
}

unint64_t sub_1C2C764F0()
{
  result = qword_1EC05B910;
  if (!qword_1EC05B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E298);
    sub_1C2C7522C(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B910);
  }

  return result;
}

uint64_t sub_1C2C765F0()
{
  type metadata accessor for ButtonBackgroundStyleModifier();
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E741E4();
  sub_1C2E73654();
  sub_1C2E756D4();
  sub_1C2E741E4();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73F54();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C7685C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062A90);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = *(v0 + 16) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(v0 + 8);
      LOBYTE(v11) = *v0;
      v7 = v2;
      CUIMaterial.swiftUIMaterial.getter();
      v8 = v6;
      *&v4[*(v7 + 36)] = v8;
      sub_1C2C94F38(&qword_1EC05B5E8, &qword_1EC062A90);
    }

    else
    {
      v11 = sub_1C2E74F84();
    }
  }

  else
  {
    v11 = *v0;
  }

  return sub_1C2E73284();
}

void sub_1C2C7698C()
{
  if (!qword_1EC05CBE0)
  {
    sub_1C2C774AC();
    v0 = sub_1C2E731F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CBE0);
    }
  }
}

uint64_t sub_1C2C76A2C()
{
  type metadata accessor for BadgeView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063950);
  sub_1C2E741F4();
  sub_1C2E73654();
  sub_1C2E73F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063948);
  sub_1C2E73F54();
  sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView);
  sub_1C2C77500();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2E09740();
  return swift_getWitnessTable();
}

unint64_t sub_1C2C76BB0()
{
  result = qword_1EC05CB98;
  if (!qword_1EC05CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB98);
  }

  return result;
}

unint64_t sub_1C2C76C34()
{
  result = qword_1EC05B8C8;
  if (!qword_1EC05B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0635A8);
    sub_1C2E09590(&qword_1EC05B710, &qword_1EC0635A8, &unk_1C2E8DB70, sub_1C2C76D5C);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8C8);
  }

  return result;
}

unint64_t sub_1C2C76D5C()
{
  result = qword_1EC05CB90;
  if (!qword_1EC05CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCA8);
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB90);
  }

  return result;
}

uint64_t sub_1C2C76E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E73F34();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1C2E73F44();
}

__n128 sub_1C2C76F5C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638B8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = sub_1C2E73C24();
  if (qword_1EC05C028 != -1)
  {
    v24 = v7;
    swift_once();
    v7 = v24;
  }

  v8 = qword_1EC075988;
  *v6 = v7;
  *(v6 + 1) = v8;
  v6[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638C0);
  sub_1C2E08434(v2, &v6[*(v9 + 44)]);
  v10 = (v2 + *(_s11CaptionViewVMa() + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638C8) + 36)];
  *v13 = 1;
  *(v13 + 1) = v12;
  *(v13 + 2) = v11;

  v14 = sub_1C2E74654();
  KeyPath = swift_getKeyPath();
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638D0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v18 = *(v4 + 36);
  v19 = sub_1C2E757E4();
  (*(*(v19 - 8) + 16))(&v6[v18], v2 + v17, v19);
  sub_1C2E75754();
  sub_1C2E737F4();
  sub_1C2E08C74(v6, a1);
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638D8) + 36);
  v21 = v25[5];
  *(v20 + 64) = v25[4];
  *(v20 + 80) = v21;
  *(v20 + 96) = v25[6];
  v22 = v25[1];
  *v20 = v25[0];
  *(v20 + 16) = v22;
  result = v25[3];
  *(v20 + 32) = v25[2];
  *(v20 + 48) = result;
  return result;
}

unint64_t sub_1C2C771D8()
{
  result = qword_1EC05B9B0;
  if (!qword_1EC05B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063908);
    sub_1C2C94F38(qword_1EC05C090, &qword_1EC063910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9B0);
  }

  return result;
}

unint64_t sub_1C2C77290()
{
  result = qword_1EC05C620;
  if (!qword_1EC05C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C620);
  }

  return result;
}

__n128 sub_1C2C772E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E108);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v15 - v4);
  if (sub_1C2CC0E20())
  {
    v6 = sub_1C2E73C24();
  }

  else
  {
    v6 = sub_1C2E73C14();
  }

  v7 = v6;
  v8 = *(v1 + *(_s13AccessoryViewVMa(0) + 36));
  v9 = 0.0;
  if (v8 == 1)
  {
    v9 = sub_1C2CBFB18();
  }

  *v5 = v7;
  v5[1] = v9;
  *(v5 + 16) = v8 ^ 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E110);
  sub_1C2CBFE4C(v1, v5 + *(v10 + 44));
  sub_1C2E75754();
  sub_1C2E737F4();
  sub_1C2C71D5C(v5, a1, &qword_1EC05E108);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E118) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

id sub_1C2C77478(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  if (!(a3 >> 6))
  {
    return sub_1C2C70B1C(result, a2, a3);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t sub_1C2C774AC()
{
  result = qword_1EC05CEE0;
  if (!qword_1EC05CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CEE0);
  }

  return result;
}

unint64_t sub_1C2C77500()
{
  result = qword_1EC05B720;
  if (!qword_1EC05B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063950);
    sub_1C2C76BB0();
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B720);
  }

  return result;
}

void sub_1C2C775D8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
    sub_1C2C77608(a1, a2, a3);
  }
}

void sub_1C2C77608(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_1C2C77684(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 48) & ~v6);
      }

      v16 = *(v15 + 40);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1C2C77820()
{
  if (qword_1EC05BCF8 != -1)
  {
    swift_once();
  }

  if (qword_1EC05BCF0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EC0758E8;
  v2[3] = xmmword_1EC0758F8;
  v3 = qword_1EC075908;
  v2[0] = xmmword_1EC0758C8;
  v2[1] = xmmword_1EC0758D8;
  xmmword_1EC075998 = xmmword_1EC0758E8;
  unk_1EC0759A8 = xmmword_1EC0758F8;
  qword_1EC0759B8 = qword_1EC075908;
  xmmword_1EC075978 = xmmword_1EC0758C8;
  *&qword_1EC075988 = xmmword_1EC0758D8;
  return sub_1C2C74E10(v2, v1);
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI21ContactAvatarTileViewV7CaptionV9AccessoryO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_1C2C778FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return 0xD000000000000011;
    }

    v12 = 0x2865676461622ELL;
    MEMORY[0x1C6926710](v1, v2);
  }

  else
  {
    v12 = 0x286567616D692ELL;
    if (*(v0 + 16) && v3 != 1)
    {
      v7 = *v0;
      v8 = v1;
      sub_1C2E76254();
      v9 = sub_1C2E76774();
      v11 = v10;
      sub_1C2C775D8(v7, v2, 2u);
      v5 = v9;
      v2 = v11;
    }

    else
    {
      v4 = *v0;

      v5 = v4;
    }

    MEMORY[0x1C6926710](v5, v2);
  }

  MEMORY[0x1C6926710](41, 0xE100000000000000);
  return v12;
}

uint64_t type metadata accessor for BadgeView()
{
  result = qword_1EC05CC58;
  if (!qword_1EC05CC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C77A7C()
{
  sub_1C2C7698C();
  if (v0 <= 0x3F)
  {
    sub_1C2CD77BC(319, &qword_1EC05CAD8);
    if (v1 <= 0x3F)
    {
      sub_1C2CD77BC(319, &unk_1EC05B3E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2C77B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2C77B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C2C77BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635A8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = (&v101 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063948);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063950);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v101 - v7;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v109 = a1;
  v108 = v9;
  v121 = sub_1C2E741F4();
  v11 = sub_1C2E73654();
  v105 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v101 - v18;
  v20 = type metadata accessor for BadgeView();
  v119 = v11;
  v21 = sub_1C2E73F54();
  v112 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v111 = &v101 - v23;
  v107 = v10;
  v24 = *(v10 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v20;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v30;
  v117 = v4;
  v31 = sub_1C2E73F54();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v114 = &v101 - v33;
  v35 = *v113;
  v34 = *(v113 + 8);
  v36 = *(v113 + 16);
  v116 = v32;
  v115 = v37;
  if (v36 >> 6)
  {
    if (v36 >> 6 == 1)
    {
      v38 = v34;
      v39 = v107;
      (*(v24 + 16))(v27, v113 + *(v109 + 36), v107);

      BadgeView.init<A>(text:cutoutBackgroundStyle:)(v35, v38, v27, v39, v29);
      v40 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView);
      v41 = sub_1C2C77500();
      WitnessTable = swift_getWitnessTable();
      v124 = v41;
      v125 = WitnessTable;
      v43 = swift_getWitnessTable();
      v44 = v111;
      sub_1C2C76E34(v29, v110);
      v122 = v40;
      v123 = v43;
      v45 = v118;
      swift_getWitnessTable();
      sub_1C2E09740();
      v46 = v114;
      sub_1C2C76E34(v44, v45);
      (*(v112 + 8))(v44, v45);
      sub_1C2E097CC(v29);
    }

    else
    {
      v51 = sub_1C2E75044();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8);
      v53 = v103;
      v54 = (v103 + *(v52 + 36));
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
      v56 = *MEMORY[0x1E69816C8];
      v57 = sub_1C2E750B4();
      (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
      *v54 = swift_getKeyPath();
      *v53 = v51;
      v58 = sub_1C2E74514();
      KeyPath = swift_getKeyPath();
      v60 = (v53 + *(v104 + 36));
      *v60 = KeyPath;
      v60[1] = v58;
      sub_1C2E74584();
      sub_1C2E09590(&qword_1EC05B710, &qword_1EC0635A8, &unk_1C2E8DB70, sub_1C2C76D5C);
      v61 = v106;
      sub_1C2E74934();
      sub_1C2C73644(v53, &qword_1EC0635A8);
      v62 = sub_1C2E74EF4();
      *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063958) + 36)) = v62;
      v63 = sub_1C2E744A4();
      if (qword_1EC05C028 != -1)
      {
        swift_once();
      }

      sub_1C2E73034();
      v64 = v117;
      v65 = v61 + *(v117 + 36);
      *v65 = v63;
      *(v65 + 8) = v66;
      *(v65 + 16) = v67;
      *(v65 + 24) = v68;
      *(v65 + 32) = v69;
      *(v65 + 40) = 0;
      v70 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView);
      v71 = sub_1C2C77500();
      v72 = swift_getWitnessTable();
      v138 = v71;
      v139 = v72;
      v73 = swift_getWitnessTable();
      v136 = v70;
      v137 = v73;
      v74 = v118;
      swift_getWitnessTable();
      sub_1C2E09740();
      v46 = v114;
      sub_1C2C78970(v61, v74, v64);
      sub_1C2C78904(v61);
    }
  }

  else
  {
    v47 = v35;
    v104 = v17;
    v106 = v19;
    v102 = v35;
    v101 = v34;
    if (v36)
    {
      v48 = v14;
      v49 = v34;
      if (v36 == 1)
      {
        sub_1C2C77478(v47, v34, 1u);
        sub_1C2C70B1C(v47, v49, 1u);
        v50 = sub_1C2E75064();
      }

      else
      {
        sub_1C2C77478(v47, v34, 2u);
        sub_1C2C70B1C(v47, v49, 2u);
        v50 = sub_1C2E75034();
      }

      v76 = v50;
    }

    else
    {
      v75 = v34;
      sub_1C2C77478(v35, v34, 0);
      sub_1C2C70B1C(v35, v75, 0);
      v76 = sub_1C2E750D4();
      v48 = v14;
    }

    v77 = &v8[*(v6 + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
    v79 = *MEMORY[0x1E69816C8];
    v80 = sub_1C2E750B4();
    (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
    *v77 = swift_getKeyPath();
    *v8 = v76;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    v81 = sub_1C2C77500();
    v82 = v104;
    sub_1C2E74A94();
    sub_1C2C73644(v8, &qword_1EC063950);
    v83 = swift_getWitnessTable();
    v128 = v81;
    v129 = v83;
    v84 = v119;
    v85 = swift_getWitnessTable();
    v86 = v106;
    sub_1C2C6EE48(v82, v84, v85);
    v87 = *(v105 + 8);
    v87(v82, v84);
    sub_1C2C6EE48(v86, v84, v85);
    v88 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView);
    v89 = v111;
    sub_1C2C78970(v48, v110, v84);
    v126 = v88;
    v127 = v85;
    v90 = v48;
    v91 = v118;
    swift_getWitnessTable();
    sub_1C2E09740();
    v46 = v114;
    sub_1C2C76E34(v89, v91);
    sub_1C2C775D8(v102, v101, v36);
    (*(v112 + 8))(v89, v91);
    v87(v90, v84);
    v87(v86, v84);
  }

  v92 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView);
  v93 = sub_1C2C77500();
  v94 = swift_getWitnessTable();
  v134 = v93;
  v135 = v94;
  v95 = swift_getWitnessTable();
  v132 = v92;
  v133 = v95;
  v96 = swift_getWitnessTable();
  v97 = sub_1C2E09740();
  v130 = v96;
  v131 = v97;
  v98 = v116;
  v99 = swift_getWitnessTable();
  sub_1C2C6EE48(v46, v98, v99);
  return (*(v115 + 8))(v46, v98);
}

uint64_t sub_1C2C78904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C78970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C2E73F34();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1C2E73F44();
}

uint64_t sub_1C2C78A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E290);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E298);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_1C2E741B4();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v43 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2A8);
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v43 - v17;
  v49 = a1;
  sub_1C2E741C4();
  if (*(v3 + 8) != 192 || *v3)
  {
    v18 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
    v43 = v9;
    v44 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
    sub_1C2E731E4();
    v9 = v43;
    sub_1C2E731E4();
    sub_1C2E75744();
    sub_1C2E73274();
  }

  else
  {
    v44 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
    sub_1C2E731E4();
    sub_1C2E75744();
    sub_1C2E73274();
  }

  v19 = v48;
  (*(v48 + 16))(v9, v12, v10);
  v20 = &v9[*(v7 + 36)];
  v21 = v55;
  *v20 = v54;
  *(v20 + 1) = v21;
  *(v20 + 2) = v56;
  sub_1C2C736A4(v9, v6, &qword_1EC05E298);
  swift_storeEnumTagMultiPayload();
  sub_1C2C764F0();
  v22 = v45;
  sub_1C2E73F44();
  sub_1C2C73644(v9, &qword_1EC05E298);
  (*(v19 + 8))(v12, v10);
  v23 = v50;
  sub_1C2C71D5C(v22, v50, &qword_1EC05E2A0);
  v24 = *(v3 + 56);
  _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
  sub_1C2E731E4();
  v25 = v24 * (v53 / 100000.0);
  v26 = v51;
  v27 = &v51[*(v46 + 36)];
  v28 = *(sub_1C2E737C4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1C2E73D44();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v25;
  v27[1] = v25;
  v31 = *v3;
  v32 = *(v3 + 8);
  sub_1C2CC290C(v31, v32);
  LOBYTE(v29) = sub_1C2E741D4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2B0);
  v34 = v27 + v33[11];
  sub_1C2E74FF4();
  v34[*(type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration() + 20)] = 4;
  v35 = v27 + v33[9];
  *v35 = v31;
  v35[8] = v32;
  *(v27 + v33[10]) = v29 & 1;
  sub_1C2C71D5C(v23, v26, &qword_1EC05E2A0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2B8);
  v37 = v52;
  v38 = (v52 + *(v36 + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v40 = *MEMORY[0x1E697DBB8];
  v41 = sub_1C2E730D4();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  return sub_1C2C71D5C(v26, v37, &qword_1EC05E2A8);
}

uint64_t sub_1C2C790FC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a1;
  v147 = a3;
  swift_getWitnessTable();
  v4 = sub_1C2E74094();
  v124 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v132 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v118 - v7;
  v8 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v10 = *(a2 + 24);
  v197 = v4;
  v198 = v8;
  v154 = WitnessTable;
  v199 = WitnessTable;
  v200 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_1C2E73F54();
  v130 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v118 - v13;
  v14 = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2E75004();
  v121 = *(v17 - 8);
  v122 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v119 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = OpaqueTypeMetadata2;
  v129 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v118 - v22;
  v23 = sub_1C2E756D4();
  v125 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v24;
  v198 = v8;
  v199 = MEMORY[0x1E6981AD0];
  v200 = v10;
  v148 = sub_1C2E741E4();
  v27 = sub_1C2E73654();
  v126 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v118 - v30;
  v197 = MEMORY[0x1E69815C0];
  v198 = v8;
  v151 = v8;
  v199 = MEMORY[0x1E6981568];
  v200 = v10;
  v153 = v10;
  v31 = sub_1C2E741E4();
  v152 = v4;
  v149 = v31;
  v32 = sub_1C2E73654();
  v145 = v27;
  v33 = v140;
  v34 = sub_1C2E73F54();
  v138 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v137 = &v118 - v36;
  v127 = *(v32 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v139 = &v118 - v40;
  v146 = v12;
  v144 = sub_1C2E73F54();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v42 = &v118 - v41;
  v43 = v33 + *(a2 + 36);
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = v45 >> 6;
  v143 = v34;
  v150 = v42;
  if (v45 >> 6 <= 1)
  {
    if (!v46)
    {
      LODWORD(v132) = v45;

LABEL_11:
      v118 = v47;
      v197 = v47;
      v99 = v151;
      sub_1C2E74914();
      v100 = swift_getWitnessTable();
      v161 = v154;
      v162 = v100;
      v101 = swift_getWitnessTable();
      v102 = v139;
      sub_1C2C6EE48(v39, v32, v101);
      v141 = *(v127 + 8);
      v141(v39, v32);
      sub_1C2C6EE48(v102, v32, v101);
      v103 = swift_getWitnessTable();
      v159 = v154;
      v160 = v103;
      v104 = swift_getWitnessTable();
      v105 = v137;
      sub_1C2C76E34(v39, v32);
      v157 = v101;
      v158 = v104;
      v106 = v143;
      swift_getWitnessTable();
      v197 = v152;
      v198 = v99;
      v199 = v154;
      v200 = v153;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v156 = v154;
      swift_getWitnessTable();
      sub_1C2C76E34(v105, v106);
      sub_1C2CC2678(v118, v132);
      (*(v138 + 8))(v105, v106);
      v107 = v141;
      v141(v39, v32);
      v107(v139, v32);
      v63 = v153;
      v50 = v154;
      goto LABEL_12;
    }

    v64 = v44;
    v50 = v154;
LABEL_7:
    LOBYTE(v197) = v64;
    CUIMaterial.swiftUIMaterial.getter();
    v139 = v32;
    v65 = v136;
    sub_1C2E74914();
    (*(v125 + 8))(v26, v23);
    v66 = swift_getWitnessTable();
    v169 = v50;
    v170 = v66;
    v67 = v145;
    v68 = swift_getWitnessTable();
    v69 = v135;
    sub_1C2C6EE48(v65, v67, v68);
    v154 = *(v126 + 8);
    v154(v65, v67);
    sub_1C2C6EE48(v69, v67, v68);
    v70 = swift_getWitnessTable();
    v167 = v50;
    v168 = v70;
    v71 = v139;
    v72 = swift_getWitnessTable();
    v73 = v137;
    sub_1C2C78970(v65, v71, v67);
    v165 = v72;
    v166 = v68;
    v74 = v143;
    swift_getWitnessTable();
    v197 = v152;
    v198 = v151;
    v199 = v50;
    v200 = v153;
    v163 = swift_getOpaqueTypeConformance2();
    v164 = v50;
    swift_getWitnessTable();
    sub_1C2C76E34(v73, v74);
    (*(v138 + 8))(v73, v74);
    v75 = v154;
    v154(v136, v67);
    v75(v135, v67);
    v63 = v153;
    goto LABEL_12;
  }

  if (v46 != 3)
  {
    LODWORD(v132) = v45;
    v76 = v33 + *(a2 + 44);
    v64 = *(v76 + *(v15 + 28));
    v50 = v154;

    if (_UISolariumEnabled())
    {
      v77 = v76;
      v78 = v120;
      sub_1C2D64140(v77, v120);
      v79 = v119;
      sub_1C2E74FE4();
      v118 = v44;
      v80 = v122;
      v81 = *(v121 + 8);
      v81(v78, v122);
      v82 = v151;
      v83 = v152;
      sub_1C2E749B4();
      v81(v79, v80);
      v197 = v83;
      v198 = v82;
      v84 = v153;
      v199 = v50;
      v200 = v153;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = v123;
      v87 = v128;
      v88 = v133;
      sub_1C2C6EE48(v128, v133, v85);
      v89 = *(v129 + 8);
      v129 += 8;
      v141 = v89;
      v89(v87, v88);
      sub_1C2C6EE48(v86, v88, v85);
      v63 = v84;
      sub_1C2C76E34(v87, v88);
      v90 = swift_getWitnessTable();
      v177 = v50;
      v178 = v90;
      v91 = swift_getWitnessTable();
      v139 = v32;
      v92 = v91;
      v93 = swift_getWitnessTable();
      v175 = v50;
      v176 = v93;
      v94 = swift_getWitnessTable();
      v173 = v92;
      v174 = v94;
      v95 = v143;
      swift_getWitnessTable();
      v171 = v85;
      v172 = v50;
      v96 = v146;
      swift_getWitnessTable();
      v97 = v134;
      sub_1C2C78970(v134, v95, v96);
      sub_1C2CC2678(v118, v132);
      (*(v130 + 8))(v97, v96);
      v98 = v141;
      v141(v128, v88);
      v98(v123, v133);
      goto LABEL_12;
    }

    v47 = v44;
    if (v44)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v48 = v131;
  v49 = v152;
  v50 = v154;
  sub_1C2C6EE48(v141, v152, v154);
  v51 = v132;
  sub_1C2C6EE48(v48, v49, v50);
  v197 = v49;
  v198 = v151;
  v199 = v50;
  v200 = v153;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v134;
  sub_1C2C78970(v51, v133, v49);
  v54 = swift_getWitnessTable();
  v195 = v50;
  v196 = v54;
  v55 = swift_getWitnessTable();
  v139 = v32;
  v56 = v55;
  v57 = swift_getWitnessTable();
  v193 = v50;
  v194 = v57;
  v58 = swift_getWitnessTable();
  v191 = v56;
  v192 = v58;
  v59 = v143;
  swift_getWitnessTable();
  v189 = v52;
  v190 = v50;
  v60 = v146;
  swift_getWitnessTable();
  sub_1C2C78970(v53, v59, v60);
  (*(v130 + 8))(v53, v60);
  v61 = *(v124 + 8);
  v61(v132, v49);
  v62 = v49;
  v63 = v153;
  v61(v131, v62);
LABEL_12:
  v108 = swift_getWitnessTable();
  v187 = v50;
  v188 = v108;
  v109 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v185 = v50;
  v186 = v110;
  v111 = swift_getWitnessTable();
  v183 = v109;
  v184 = v111;
  v112 = swift_getWitnessTable();
  v197 = v152;
  v198 = v151;
  v199 = v50;
  v200 = v63;
  v181 = swift_getOpaqueTypeConformance2();
  v182 = v50;
  v113 = swift_getWitnessTable();
  v179 = v112;
  v180 = v113;
  v114 = v144;
  v115 = swift_getWitnessTable();
  v116 = v150;
  sub_1C2C6EE48(v150, v114, v115);
  return (*(v142 + 8))(v116, v114);
}

uint64_t RecentsCellViewStateProviding.titleColor.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {

    return sub_1C2E74EF4();
  }

  else
  {

    return sub_1C2E74F84();
  }
}

uint64_t sub_1C2C7A1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_1C2E730A4();
}

unint64_t sub_1C2C7A37C()
{
  result = qword_1EC05B760;
  if (!qword_1EC05B760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
    sub_1C2C74F38();
    sub_1C2D06C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B760);
  }

  return result;
}

uint64_t sub_1C2C7A44C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FED0);
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75304();
  sub_1C2E73654();
  sub_1C2E76424();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2E73804();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2D8FE64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C2C7A654()
{
  result = qword_1EDDCDAC8;
  if (!qword_1EDDCDAC8)
  {
    sub_1C2E71514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDAC8);
  }

  return result;
}

uint64_t sub_1C2C7A6AC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

char *_s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v160 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v149 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v152 = &v149 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v158 = &v149 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v149 - v9;
  v10 = sub_1C2E71784();
  v155 = *(v10 - 8);
  v156 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v149 - v13;
  v14 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v149 - v17;
  v18 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v149 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v149 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v149 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v149 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v149 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AA8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v149 - v37;
  v40 = &v149 + *(v39 + 56) - v37;
  sub_1C2DD318C(v159, &v149 - v37, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2DD318C(v160, v40, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C2DD318C(v38, v32, type metadata accessor for ContactAvatarTileView.ImageStyle);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v150;
          sub_1C2DD3124(v32, v150, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          v43 = v151;
          sub_1C2DD3124(v40, v151, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          v44 = _s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO07ClippedG13ConfigurationV2eeoiySbAG_AGtFZ_0(v42, v43);
          sub_1C2C734EC(v43, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          sub_1C2C734EC(v42, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
LABEL_25:
          v64 = v38;
          goto LABEL_113;
        }

        sub_1C2C734EC(v32, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
        goto LABEL_38;
      }

      v151 = v38;
      sub_1C2DD318C(v38, v29, type metadata accessor for ContactAvatarTileView.ImageStyle);
      v65 = *v29;
      v66 = *(v29 + 1);
      v67 = v29[16];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1C2C77608(v65, v66, v67);
        v38 = v151;
        goto LABEL_38;
      }

      v68 = *v40;
      v69 = *(v40 + 1);
      LODWORD(v70) = v40[16];
      if (v67)
      {
        if (v67 != 1)
        {
          sub_1C2C70B1C(v65, v66, 2u);
          v129 = [v65 description];
          v127 = sub_1C2E75C64();
          v128 = v130;

          sub_1C2C77608(v65, v66, 2u);
LABEL_76:
          if (v70)
          {
            if (v70 != 1)
            {
              sub_1C2C70B1C(v68, v69, 2u);
              v133 = [v68 description];
              v160 = v127;
              v134 = v70;
              v70 = v133;
              v135 = sub_1C2E75C64();
              v132 = v136;

              LOBYTE(v70) = v134;
              v137 = v160;
              sub_1C2C77608(v68, v69, 2u);
              if (v137 != v135)
              {
                goto LABEL_85;
              }

              goto LABEL_83;
            }

            v131 = 1;
          }

          else
          {
            v131 = 0;
          }

          sub_1C2C70B1C(v68, v69, v131);
          v132 = v69;
          if (v127 != v68)
          {
            goto LABEL_85;
          }

LABEL_83:
          if (v128 == v132)
          {
            v44 = 1;
LABEL_86:

            sub_1C2C77608(v68, v69, v70);
            sub_1C2C77608(v65, v66, v67);
            goto LABEL_112;
          }

LABEL_85:
          v44 = sub_1C2E767A4();
          goto LABEL_86;
        }

        v71 = 1;
      }

      else
      {
        v71 = 0;
      }

      sub_1C2C70B1C(v65, v66, v71);
      v127 = v65;
      v128 = v66;
      goto LABEL_76;
    }

    v60 = v38;
    sub_1C2DD318C(v38, v35, type metadata accessor for ContactAvatarTileView.ImageStyle);
    v61 = *v35;
    v62 = *(v35 + 1);
    v63 = v35[16];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C2C77608(v61, v62, v63);
      v38 = v60;
      goto LABEL_38;
    }

    v84 = *v40;
    v85 = *(v40 + 1);
    v86 = v40[16];
    if (v63)
    {
      if (v63 != 1)
      {
        sub_1C2C70B1C(v61, v62, 2u);
        v139 = [v61 description];
        v159 = sub_1C2E75C64();
        v138 = v140;

        sub_1C2C77608(v61, v62, 2u);
LABEL_90:
        LODWORD(v160) = v86;
        if (v86)
        {
          if (v86 != 1)
          {
            sub_1C2C70B1C(v84, v85, 2u);
            v144 = v85;
            v145 = [v84 description];
            v142 = sub_1C2E75C64();
            v143 = v146;

            v85 = v144;
            sub_1C2C77608(v84, v144, 2u);
LABEL_96:
            if (v159 == v142 && v138 == v143)
            {
              v44 = 1;
            }

            else
            {
              v44 = sub_1C2E767A4();
            }

            sub_1C2C77608(v84, v85, v160);
            sub_1C2C77608(v61, v62, v63);
            v64 = v60;
            goto LABEL_113;
          }

          v141 = 1;
        }

        else
        {
          v141 = 0;
        }

        sub_1C2C70B1C(v84, v85, v141);
        v142 = v84;
        v143 = v85;
        goto LABEL_96;
      }

      v87 = 1;
    }

    else
    {
      v87 = 0;
    }

    sub_1C2C70B1C(v61, v62, v87);
    v159 = v61;
    v138 = v62;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1C2DD318C(v38, v26, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = sub_1C2E74ED4();

      goto LABEL_25;
    }

LABEL_38:
    sub_1C2C73644(v38, &qword_1EC062AA8);
    v44 = 0;
    return (v44 & 1);
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_1C2DD318C(v38, v20, type metadata accessor for ContactAvatarTileView.ImageStyle);
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140) + 48);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v151 = v38;
      v74 = v155;
      v73 = v156;
      v75 = *(v155 + 32);
      v75(v153, v20, v156);
      v75(v157, v40, v73);
      v76 = v154;
      sub_1C2C71D5C(&v20[v72], v154, &unk_1EC061C20);
      sub_1C2C71D5C(&v40[v72], v158, &unk_1EC061C20);
      v77 = sub_1C2E71724();
      v79 = v78;
      v80 = v152;
      sub_1C2C736A4(v76, v152, &unk_1EC061C20);
      v81 = *(v74 + 48);
      if (v81(v80, 1, v73) == 1)
      {
        sub_1C2C73644(v80, &unk_1EC061C20);
        v82 = 0;
        v83 = 0xE000000000000000;
      }

      else
      {
        v82 = sub_1C2E71724();
        v83 = v95;
        (*(v74 + 8))(v80, v73);
      }

      v96 = v149;
      v161 = v77;
      v162 = v79;

      MEMORY[0x1C6926710](v82, v83);

      v98 = v161;
      v97 = v162;
      v99 = sub_1C2E71724();
      v101 = v100;
      sub_1C2C736A4(v158, v96, &unk_1EC061C20);
      if (v81(v96, 1, v73) == 1)
      {
        sub_1C2C73644(v96, &unk_1EC061C20);
        v102 = 0;
        v103 = 0xE000000000000000;
      }

      else
      {
        v102 = sub_1C2E71724();
        v103 = v104;
        (*(v74 + 8))(v96, v73);
      }

      v161 = v99;
      v162 = v101;

      MEMORY[0x1C6926710](v102, v103);

      if (v98 == v161 && v97 == v162)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_1C2E767A4();
      }

      v105 = v151;

      sub_1C2C73644(v158, &unk_1EC061C20);
      sub_1C2C73644(v154, &unk_1EC061C20);
      v106 = *(v74 + 8);
      v106(v157, v73);
      v106(v153, v73);
      v64 = v105;
      goto LABEL_113;
    }

    sub_1C2C73644(&v20[v72], &unk_1EC061C20);
    (*(v155 + 8))(v20, v156);
    goto LABEL_38;
  }

  sub_1C2DD318C(v38, v23, type metadata accessor for ContactAvatarTileView.ImageStyle);
  v45 = *v23;
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    goto LABEL_38;
  }

  v151 = v38;
  v46 = *v40;
  if (v45 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v148)
  {
    v160 = v46;
    if (i)
    {
      v161 = MEMORY[0x1E69E7CC0];
      result = sub_1C2C7B754(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_116:
        __break(1u);
        return result;
      }

      v49 = 0;
      v50 = v161;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1C6927010](v49, v45);
        }

        else
        {
          v51 = *(v45 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v51 identifier];
        v54 = sub_1C2E75C64();
        v56 = v55;

        v161 = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          sub_1C2C7B754((v57 > 1), v58 + 1, 1);
          v50 = v161;
        }

        ++v49;
        v50[2] = v58 + 1;
        v59 = &v50[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
      }

      while (i != v49);

      v88 = v160;
      v89 = v50[2];
      if (v89)
      {
LABEL_43:
        v90 = 0;
        v91 = 0;
        v92 = v50 + 5;
        v45 = 0xE000000000000000;
        while (v91 < v50[2])
        {
          ++v91;
          v94 = *(v92 - 1);
          v93 = *v92;
          v161 = v90;
          v162 = v45;

          MEMORY[0x1C6926710](v94, v93);

          v90 = v161;
          v45 = v162;
          v92 += 2;
          if (v89 == v91)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    else
    {
      v88 = v46;

      v50 = MEMORY[0x1E69E7CC0];
      v89 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v89)
      {
        goto LABEL_43;
      }
    }

    v90 = 0;
    v45 = 0xE000000000000000;
LABEL_58:

    if (v88 >> 62)
    {
      v107 = sub_1C2E764E4();
      if (!v107)
      {
LABEL_105:

        v109 = MEMORY[0x1E69E7CC0];
        v120 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v120)
        {
          break;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v107 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v107)
      {
        goto LABEL_105;
      }
    }

    v161 = MEMORY[0x1E69E7CC0];
    result = sub_1C2C7B754(0, v107 & ~(v107 >> 63), 0);
    if (v107 < 0)
    {
      goto LABEL_116;
    }

    v108 = 0;
    v109 = v161;
    v110 = v88;
    v159 = (v88 & 0xC000000000000001);
    do
    {
      if (v159)
      {
        v111 = MEMORY[0x1C6927010](v108, v110);
      }

      else
      {
        v111 = *(v110 + 8 * v108 + 32);
      }

      v112 = v111;
      v113 = [v111 identifier];
      v114 = sub_1C2E75C64();
      v116 = v115;

      v161 = v109;
      v118 = v109[2];
      v117 = v109[3];
      if (v118 >= v117 >> 1)
      {
        sub_1C2C7B754((v117 > 1), v118 + 1, 1);
        v109 = v161;
      }

      ++v108;
      v109[2] = v118 + 1;
      v119 = &v109[2 * v118];
      v119[4] = v114;
      v119[5] = v116;
      v110 = v160;
    }

    while (v107 != v108);

    v120 = v109[2];
    if (!v120)
    {
      break;
    }

LABEL_69:
    v121 = 0;
    v122 = 0;
    v123 = v109 + 5;
    v124 = 0xE000000000000000;
    while (v122 < v109[2])
    {
      ++v122;
      v126 = *(v123 - 1);
      v125 = *v123;
      v161 = v121;
      v162 = v124;

      MEMORY[0x1C6926710](v126, v125);

      v121 = v161;
      v124 = v162;
      v123 += 2;
      if (v120 == v122)
      {
        goto LABEL_107;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v147 = v46;
    v148 = sub_1C2E764E4();
    v46 = v147;
  }

  v121 = 0;
  v124 = 0xE000000000000000;
LABEL_107:

  if (v90 == v121 && v45 == v124)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_1C2E767A4();
  }

LABEL_112:
  v64 = v151;
LABEL_113:
  sub_1C2C734EC(v64, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return (v44 & 1);
}

char *sub_1C2C7B754(char *a1, int64_t a2, char a3)
{
  result = sub_1C2C7B774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2C7B774(char *result, int64_t a2, char a3, char *a4)
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

unint64_t sub_1C2C7B880()
{
  result = qword_1EC05CA98;
  if (!qword_1EC05CA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05CA98);
  }

  return result;
}

uint64_t sub_1C2C7B938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061B20);
  sub_1C2D9BB00();
  sub_1C2D9BC68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CUPosterOrAvatarView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CUPosterOrAvatarView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E73BA4();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B20);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  sub_1C2D99DDC(v1, v20 - v10);
  v13 = *v1;
  v12 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v25 = *v1;
    v26 = v12;
  }

  else
  {

    sub_1C2E75FD4();
    v20[0] = v11;
    v14 = sub_1C2E74404();
    v20[1] = v4;
    v15 = v3;
    v16 = v14;
    v11 = v20[0];
    sub_1C2E72B14();

    v3 = v15;
    v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2D9A22C(v13, v12, 0);
    (*(v21 + 8))(v8, v22);
    LOBYTE(v13) = v25;
    v12 = v26;
  }

  v23 = v13;
  v24 = v12;
  sub_1C2D9E0D4(v1, v5, type metadata accessor for CUPosterOrAvatarView);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_1C2D9E13C(v5, v18 + v17, type metadata accessor for CUPosterOrAvatarView);
  sub_1C2D9BB00();
  sub_1C2D9BC68();
  sub_1C2E74DD4();

  return sub_1C2C73644(v11, &qword_1EC061B20);
}

uint64_t sub_1C2C7BD0C(uint64_t a1, uint64_t *a2, double a3)
{
  v74 = a2;
  v69 = sub_1C2E735E4();
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v67);
  v66 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C2E74814();
  v70 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v50 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061170);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v50 - v12;
  v14 = sub_1C2E74834();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061178);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = sub_1C2E74844();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  v22 = *(v18 + 44);
  v23 = v7;
  v24 = sub_1C2D728A4(&qword_1EC05B430, MEMORY[0x1E6981090]);
  sub_1C2E75F44();
  sub_1C2E75F64();
  if (*&v20[v22] != *&v76.a)
  {
    v52 = (v15 + 16);
    v51 = (v15 + 8);
    v72 = (v70 + 2);
    v71 = (v70 + 4);
    v64 = a3 * -2.6;
    v63 = a3 * -0.6;
    v26 = a3 * 1.9;
    v62 = *MEMORY[0x1E697F480];
    v61 = (v75 + 8);
    ++v70;
    v65 = v23;
    v56 = v20;
    v55 = v21;
    v54 = v22;
    v53 = v24;
    v60 = v14;
    v59 = v10;
    do
    {
      v75 = sub_1C2E75F84();
      v27 = *v52;
      (*v52)(v58);
      (v75)(&v76, 0);
      sub_1C2E75F74();
      v28 = v58;
      (v27)(v13, v58, v14);
      v29 = *(v57 + 36);
      sub_1C2D728A4(&qword_1EC05B438, MEMORY[0x1E6981048]);
      sub_1C2E75F44();
      (*v51)(v28, v14);
      while (1)
      {
        sub_1C2E75F64();
        if (*&v13[v29] == *&v76.a)
        {
          break;
        }

        v30 = sub_1C2E75F84();
        v31 = v73;
        (*v72)(v73);
        v30(&v76, 0);
        sub_1C2E75F74();
        (*v71)(v10, v31, v23);
        sub_1C2C7C914();
        sub_1C2E74824();
        if (*&v76.b)
        {
          LODWORD(v75) = LODWORD(v76.a);
          v77 = *v74;

          sub_1C2E74804();
          v32 = v78;
          v33 = v80;
          v34 = v79 - v81;
          v35 = v81 + v82;
          v36 = objc_opt_self();
          v37 = [v36 currentDevice];
          [v37 userInterfaceIdiom];

          v38 = [v36 currentDevice];
          [v38 userInterfaceIdiom];

          v84.origin.x = v32;
          v84.origin.y = v34;
          v84.size.width = v33;
          v84.size.height = v35;
          v85 = CGRectInset(v84, v64, v63);
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
          v43 = [v36 currentDevice];
          [v43 userInterfaceIdiom];

          CGAffineTransformMakeTranslation(&v76, 0.0, a3 * -2.8);
          v86.origin.x = x;
          v86.origin.y = y;
          v86.size.width = width;
          v86.size.height = height;
          CGRectApplyAffineTransform(v86, &v76);
          v44 = *(v67 + 20);
          v45 = sub_1C2E73D44();
          v46 = v66;
          (*(*(v45 - 8) + 104))(v66 + v44, v62, v45);
          *v46 = v26;
          v46[1] = v26;
          sub_1C2E737B4();
          sub_1C2D728EC(v46, MEMORY[0x1E697EAF0]);

          v47 = v68;
          sub_1C2E735D4();

          sub_1C2E73594();
          (*v61)(v47, v69);
          v48 = [v36 currentDevice];
          [v48 userInterfaceIdiom];

          v49 = [v36 currentDevice];
          [v49 userInterfaceIdiom];

          sub_1C2E73564();
          if (v75)
          {
            sub_1C2E73604();
          }

          v10 = v59;
          sub_1C2E73584();
          sub_1C2D7294C(v83);

          v23 = v65;
          (*v70)(v10, v65);

          v14 = v60;
        }

        else
        {
          sub_1C2E73584();
          (*v70)(v10, v23);
        }
      }

      sub_1C2C73644(v13, &qword_1EC061170);
      v20 = v56;
      sub_1C2E75F64();
    }

    while (*&v20[v54] != *&v76.a);
  }

  return sub_1C2C73644(v20, &qword_1EC061178);
}

uint64_t sub_1C2C7C7C4(uint64_t a1, int a2)
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

unint64_t sub_1C2C7C80C()
{
  result = qword_1EC05C5C8;
  if (!qword_1EC05C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5C8);
  }

  return result;
}

double sub_1C2C7C860@<D0>(uint64_t a1@<X8>)
{
  sub_1C2C7CFC4();
  sub_1C2E73BB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1C2C7C8C0()
{
  result = qword_1EC05C5D0;
  if (!qword_1EC05C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5D0);
  }

  return result;
}

unint64_t sub_1C2C7C914()
{
  result = qword_1EC05C5D8;
  if (!qword_1EC05C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5D8);
  }

  return result;
}

void sub_1C2C7C9A4(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 48) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *(v19 + 40) = v20;
  }
}

uint64_t sub_1C2C7CC10(uint64_t result, int a2, int a3)
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

uint64_t static TextBuilder.buildBlock(_:)(uint64_t a1)
{
  v2 = sub_1C2E73D04();
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = a1 + 32 * v4;
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_18;
    }

    v9 = *(v7 + 56);
    ++v4;
    v7 += 32;
    if (v9)
    {
      v10 = *v7;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      sub_1C2C72330(*v7, v11, v12 & 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C2C7E290(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = v6;
      if (v14 >= v13 >> 1)
      {
        result = sub_1C2C7E290((v13 > 1), v14 + 1, 1, v6);
        v15 = result;
      }

      *(v15 + 16) = v14 + 1;
      v6 = v15;
      v16 = v15 + 32 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12 & 1;
      *(v16 + 56) = v9;
      v4 = v8;
      goto LABEL_2;
    }
  }

  sub_1C2E73D14();
  v17 = sub_1C2E74884();
  v19 = v18;
  v21 = v20;
  v22 = *(v6 + 16);
  sub_1C2C72330(v17, v18, v20 & 1);

  v35 = v22;
  v36 = v6;
  v34 = v17;
  v33 = v19;
  v32 = v21;
  if (!v22)
  {
LABEL_16:

    sub_1C2C72340(v34, v33, v32 & 1);

    return v17;
  }

  v23 = 0;
  v24 = v6 + 56;
  v25 = v21;
  v26 = v19;
  v27 = v17;
  while (v23 < *(v36 + 16))
  {
    ++v23;
    v37 = v27;
    v38 = *(v24 - 24);
    v39 = *(v24 - 16);
    v40 = *(v24 - 8);
    sub_1C2C72330(v38, v39, v40);

    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E73D24();
    v17 = sub_1C2E74884();
    v29 = v28;
    v31 = v30;
    sub_1C2C72340(v37, v26, v25 & 1);

    sub_1C2C72340(v38, v39, v40);

    v24 += 32;
    v25 = v31;
    v26 = v29;
    v27 = v17;
    if (v35 == v23)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1C2C7CFC4()
{
  result = qword_1EC05BD08;
  if (!qword_1EC05BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD08);
  }

  return result;
}

uint64_t sub_1C2C7D018@<X0>(void *a1@<X8>)
{
  if (qword_1EC05BD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EC075960;
  v2 = unk_1EC075968;
  v3 = qword_1EC075970;
  *a1 = qword_1EC075958;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t DoubleLineCellView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_1C2E73D84();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1C2E74264();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v50 = a1[4];
  v6 = v5;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  v7 = sub_1C2E74384();
  v41 = sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  v48 = a1[5];
  v8 = sub_1C2E73654();
  v47 = a1[10];
  v9 = v47;
  v10 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v76 = v9;
  v77 = v10;
  v49 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v72 = v8;
  v73 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v43 = a1[6];
  v42 = v7;
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  v38[1] = v6;
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  v46 = a1[3];
  v45 = a1;
  v12 = sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v39 = sub_1C2E752E4();
  v44 = a1[2];
  v72 = sub_1C2E73654();
  v13 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v73 = sub_1C2E752E4();
  v74 = v13;
  v75 = v12;
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73F54();
  v14 = sub_1C2E75024();
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v70 = v17;
  v71 = v18;
  v69 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v72 = v14;
  v73 = v19;
  v39 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = v38 - v21;
  v23 = sub_1C2E73654();
  v42 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v38 - v27;
  *&v29 = v44;
  *(&v29 + 1) = v46;
  *&v30 = v50;
  *(&v30 + 1) = v48;
  v60 = v30;
  v59 = v29;
  v61 = v43;
  v62 = *(v45 + 7);
  v63 = v45[9];
  v64 = v47;
  v65 = v45[11];
  v66 = v54;
  sub_1C2E75014();
  v31 = v51;
  sub_1C2E74244();
  sub_1C2E74C04();
  (*(v52 + 8))(v31, v53);
  (*(v41 + 8))(v16, v14);
  v32 = v55;
  sub_1C2E73D64();
  v72 = v14;
  v73 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2E74C34();
  (*(v56 + 8))(v32, v57);
  (*(v40 + 8))(v22, OpaqueTypeMetadata2);
  v34 = sub_1C2D06C00();
  v67 = OpaqueTypeConformance2;
  v68 = v34;
  v35 = swift_getWitnessTable();
  sub_1C2C6EE48(v26, v23, v35);
  v36 = *(v42 + 8);
  v36(v26, v23);
  sub_1C2C6EE48(v28, v23, v35);
  return (v36)(v28, v23);
}

void sub_1C2C7DB70()
{
  sub_1C2C7DD48();
  if (v0 <= 0x3F)
  {
    sub_1C2C7DD98();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2C7DC10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2C7DD04(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72330(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C2C7DD48()
{
  if (!qword_1EC05CC18)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CC18);
    }
  }
}

void sub_1C2C7DD98()
{
  if (!qword_1EC05CAB0)
  {
    sub_1C2C6E350();
    v0 = sub_1C2E75DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CAB0);
    }
  }
}

void sub_1C2C7DDF8()
{
  sub_1C2C7E46C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              sub_1C2C7DD48();
              if (v6 <= 0x3F)
              {
                sub_1C2C7E4D0();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for BadgeRendererModifier()
{
  result = qword_1EC05C118;
  if (!qword_1EC05C118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C7DF90()
{
  if (!qword_1EC05BA58)
  {
    sub_1C2C7E058();
    v0 = sub_1C2E731F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BA58);
    }
  }
}

void sub_1C2C7DFEC()
{
  sub_1C2C7DF90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C2C7E058()
{
  result = qword_1EC05B2E0;
  if (!qword_1EC05B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2E0);
  }

  return result;
}

uint64_t DateLabel.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateLabel();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F278);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = sub_1C2E71844();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t sub_1C2C7E19C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C7E218@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244B0]();
  *a1 = result;
  return result;
}

uint64_t static TextBuilder.buildOptional(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  sub_1C2C7E5C8(a1, a2, a3, a4);
  return v4;
}

char *sub_1C2C7E290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C2C7E39C()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  return static RecentCellStyle.phone.getter(&qword_1EC075958);
}

uint64_t type metadata accessor for DateLabel()
{
  result = qword_1EC05BB78;
  if (!qword_1EC05BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C2C7E46C()
{
  result = qword_1EC05BC70;
  if (!qword_1EC05BC70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC05BC70);
  }

  return result;
}

void sub_1C2C7E4D0()
{
  if (!qword_1EC05CC00)
  {
    sub_1C2E73554();
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CC00);
    }
  }
}

uint64_t RecentsCellAvatarLeadingView.init(contacts:badge:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a1;
  type metadata accessor for RecentsCellAvatarLeadingView();
  return a2();
}

uint64_t sub_1C2C7E5C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1C2C7DD04(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C2C7E5D8(uint64_t a1, int a2)
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

uint64_t sub_1C2C7E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v4 = sub_1C2E75844();
  WitnessTable = swift_getWitnessTable();
  v37 = v4;
  v5 = sub_1C2E75304();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = sub_1C2E76424();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v33 - v21;
  if (v22 == MEMORY[0x1E6981E70])
  {
    (*(v9 + 56))(v19, 1, 1, v8);
    v42 = swift_getWitnessTable();
    v43 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
  }

  else
  {
    v35 = a3;
    MEMORY[0x1EEE9AC00](v20);
    v34 = v16;
    v23 = v39;
    v24 = v40;
    *(&v33 - 4) = v25;
    *(&v33 - 3) = v24;
    *(&v33 - 2) = v23;
    sub_1C2E75744();
    sub_1C2E752F4();
    v26 = swift_getWitnessTable();
    sub_1C2E74D44();
    (*(v38 + 8))(v7, v5);
    v47 = v26;
    v48 = MEMORY[0x1E697E270];
    v27 = swift_getWitnessTable();
    sub_1C2C6EE48(v12, v8, v27);
    v28 = *(v9 + 8);
    v28(v12, v8);
    sub_1C2C6EE48(v14, v8, v27);
    v28(v14, v8);
    v16 = v34;
    (*(v9 + 32))(v19, v12, v8);
    (*(v9 + 56))(v19, 0, 1, v8);
  }

  v29 = v41;
  (*(v16 + 16))(v41, v19, v15);
  v30 = *(v16 + 8);
  v30(v19, v15);
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x1E697E270];
  v44 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_1C2C6EE48(v29, v15, v31);
  return (v30)(v29, v15);
}

size_t RecentsCellAvatarLeadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C2E718A4();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E71514();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEC8);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FED0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = *(a1 + 16);
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75304();
  sub_1C2E73654();
  v16 = sub_1C2E76424();
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E270];
  v85 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v71 = v16;
  v62 = v17;
  v63 = sub_1C2E73804();
  v18 = sub_1C2E73654();
  v67 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v57 - v19;
  v68 = v20;
  v72 = sub_1C2E73654();
  v70 = *(v72 - 8);
  v21 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v57 - v23;
  v24 = *(v2 + 40);
  v25 = v24 >> 62;
  v26 = v24;
  if (v24 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C2E7A720;
  *(v27 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
LABEL_6:
  sub_1C2E71504();
  v76 = v15;
  v77 = v14;
  if (v25)
  {
    v28 = sub_1C2E764E4();
  }

  else
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
LABEL_19:
    v41 = v75;
    (*(v73 + 32))(v75, v78, v74);
    *(v41 + *(v69 + 52)) = v29;
    sub_1C2D8F770(v88);

    sub_1C2D8F770(v88);

    sub_1C2E75744();
    sub_1C2E73274();
    v42 = v77;
    sub_1C2D8FDF4(v41, v77);
    v43 = (v42 + *(v12 + 36));
    v44 = v88[1];
    *v43 = v88[0];
    v43[1] = v44;
    v43[2] = v88[2];
    v45 = sub_1C2E75724();
    MEMORY[0x1EEE9AC00](v45);
    v46 = *(a1 + 24);
    *(&v57 - 4) = v76;
    *(&v57 - 3) = v46;
    *(&v57 - 2) = v3;
    v47 = sub_1C2D8FE64();
    v48 = v64;
    sub_1C2E74D64();
    sub_1C2D8FF54(v42);
    v49 = swift_getWitnessTable();
    v83 = v47;
    v84 = v49;
    v50 = v68;
    v51 = swift_getWitnessTable();
    v52 = v65;
    sub_1C2E74AD4();
    (*(v67 + 8))(v48, v50);
    v81 = v51;
    v82 = MEMORY[0x1E69802C0];
    v53 = v72;
    v54 = swift_getWitnessTable();
    v55 = v66;
    sub_1C2C6EE48(v52, v53, v54);
    v56 = *(v70 + 8);
    v56(v52, v53);
    sub_1C2C6EE48(v55, v53, v54);
    return (v56)(v55, v53);
  }

  *&v88[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C2C7F4A8(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v57 = v12;
    v58 = a1;
    v59 = v3;
    v60 = a2;
    v31 = 0;
    v29 = *&v88[0];
    v32 = v26;
    v33 = v26 & 0xC000000000000001;
    v34 = v61;
    v35 = v32;
    do
    {
      if (v33)
      {
        v36 = MEMORY[0x1C6927010](v31);
      }

      else
      {
        v36 = *(v32 + 8 * v31 + 32);
      }

      v37 = v36;
      v38 = [v37 id];
      sub_1C2E71884();

      *&v88[0] = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1C2C7F4A8(v39 > 1, v40 + 1, 1);
        v29 = *&v88[0];
      }

      ++v31;
      *(v29 + 16) = v40 + 1;
      (*(v80 + 32))(v29 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v40, v34, v79);
      v32 = v35;
    }

    while (v28 != v31);
    v3 = v59;
    a1 = v58;
    v12 = v57;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

size_t sub_1C2C7F4A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DB60, &unk_1C2E7AFD8, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1C2C7F4EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

uint64_t sub_1C2C7F6D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72340(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C2C7F718()
{
  sub_1C2CF072C(&qword_1EC05BB90, type metadata accessor for DateLabel);
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2C7F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  sub_1C2E731E4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061140);
  *(a2 + *(result + 36)) = v6;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1C2E767A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v8;
  v26 = v9;
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v10;
  v23 = v11;
  sub_1C2DD30A8(v24, v8, v9);
  sub_1C2DD30A8(v21, v10, v11);
  v12 = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV15ForegroundStyleO2eeoiySbAG_AGtFZ_0(&v24, &v21);
  sub_1C2DD3E18(v21, v22, v23);
  sub_1C2DD3E18(v24, v25, v26);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if ((sub_1C2E74504() & 1) == 0)
  {
    return 0;
  }

  sub_1C2C7FA30(*(a1 + 72), *(a2 + 72));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v24 = *(a1 + 80);
  v25 = v14;
  v26 = v15;
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v21 = *(a2 + 80);
  v16 = v21;
  v22 = v17;
  v23 = v18;
  sub_1C2DD30A8(v24, v14, v15);
  sub_1C2DD30A8(v16, v17, v18);
  LOBYTE(v16) = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV15ForegroundStyleO2eeoiySbAG_AGtFZ_0(&v24, &v21);
  sub_1C2DD3E18(v21, v22, v23);
  sub_1C2DD3E18(v24, v25, v26);
  if ((v16 & 1) == 0 || (sub_1C2E74504() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);

  return MEMORY[0x1EEDE5810](a1 + v19, a2 + v19);
}

void sub_1C2C7FA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *(v3 - 2);
    v11 = *(v3 - 1);
    v12 = *v3;
    if (!(v9 >> 6))
    {
      break;
    }

    if (v9 >> 6 == 1)
    {
      if ((v12 & 0xC0) != 0x40)
      {
        goto LABEL_39;
      }

      if (v8 == v10 && v7 == v11)
      {
        sub_1C2C77478(*(i - 2), *(i - 1), *i);
        sub_1C2C77478(v8, v7, v12);
        sub_1C2C775D8(v8, v7, v9);
        sub_1C2C775D8(v8, v7, v12);
      }

      else
      {
        v5 = *(v3 - 1);
        v6 = sub_1C2E767A4();
        sub_1C2C77478(v8, v7, v9);
        sub_1C2C77478(v10, v5, v12);
        sub_1C2C775D8(v8, v7, v9);
        sub_1C2C775D8(v10, v5, v12);
        if ((v6 & 1) == 0)
        {
          return;
        }
      }
    }

    else
    {
      v18 = (v12 & 0xC0) == 0x80 && (v11 | v10) == 0;
      if (!v18 || v12 != 128)
      {
        goto LABEL_40;
      }

      sub_1C2C775D8(*(i - 2), *(i - 1), *i);
      sub_1C2C775D8(0, 0, 0x80u);
    }

LABEL_6:
    v3 += 24;
    if (!--v2)
    {
      return;
    }
  }

  if (v12 < 0x40)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    if (*i)
    {
      if (v9 != 1)
      {
        sub_1C2C77478(v13, v14, 2u);
        sub_1C2C77478(v10, v11, v12);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v10, v11, v12);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v10, v11, v12);
        v20 = v11;
        v21 = [v8 description];
        v31 = sub_1C2E75C64();
        v32 = v22;

        v11 = v20;
        sub_1C2C775D8(v8, v7, 2u);
        v19 = v32;
LABEL_27:
        v30 = v9;
        v33 = v19;
        v29 = v11;
        if (v12)
        {
          if (v12 != 1)
          {
            sub_1C2C70B1C(v10, v11, 2u);
            v28 = [v10 description];
            v24 = sub_1C2E75C64();
            v25 = v11;
            v11 = v26;

            sub_1C2C775D8(v10, v25, 2u);
            goto LABEL_33;
          }

          v23 = 1;
        }

        else
        {
          v23 = 0;
        }

        sub_1C2C70B1C(v10, v11, v23);
        v24 = v10;
LABEL_33:
        if (v31 == v24 && v33 == v11)
        {

          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
        }

        else
        {
          v27 = sub_1C2E767A4();

          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          if ((v27 & 1) == 0)
          {
            return;
          }
        }

        goto LABEL_6;
      }

      sub_1C2C77478(v13, v14, 1u);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 1u);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 1u);
      v15 = v8;
      v16 = v7;
      v17 = 1;
    }

    else
    {
      sub_1C2C77478(v13, v14, 0);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 0);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 0);
      v15 = v8;
      v16 = v7;
      v17 = 0;
    }

    sub_1C2C77478(v15, v16, v17);
    sub_1C2C77478(v10, v11, v12);
    v31 = v8;
    v19 = v7;
    goto LABEL_27;
  }

LABEL_39:
  sub_1C2C77478(*(i - 2), *(i - 1), *i);
LABEL_40:
  sub_1C2C77478(v10, v11, v12);
  sub_1C2C775D8(v8, v7, v9);
  sub_1C2C775D8(v10, v11, v12);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  sub_1C2CE1FA4();

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1C2E743E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for FTMenuView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C2E732B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 40)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_4()
{
  sub_1C2C7DF38();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  if (*(v4 + v1[10]) >= 2uLL)
  {
  }

  if (*(v4 + v1[11]) >= 2uLL)
  {
  }

  v7 = v1[12];
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = v1[13];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for LanguageSelectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[12]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ControlButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C2E73DB4();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for SettingsPersonList();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v9 = *(*(v1 - 8) + 64);
  v4 = sub_1C2E754F4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);

  v6 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v5(v6 + *(v7 + 32), v4);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v9, v2 | 7);
}

uint64_t objectdestroyTm_11()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_12()
{
  sub_1C2C77608(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for CallWaveFormView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063B28);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 81);
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v7 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_15()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_16()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV9AccessoryO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 > 0x3F)
    {
      goto LABEL_17;
    }

    v12 = *a1;
    if (v4)
    {
      if (v4 != 1)
      {
        sub_1C2C77478(v12, v2, 2u);
        sub_1C2C77478(v3, v2, 2u);
        sub_1C2C77478(v6, v5, v7);
        sub_1C2C77478(v3, v2, 2u);
        sub_1C2C77478(v6, v5, v7);
        v23 = [v3 description];
        v21 = sub_1C2E75C64();
        v22 = v24;

        sub_1C2C775D8(v3, v2, 2u);
LABEL_25:
        if (v7)
        {
          if (v7 != 1)
          {
            sub_1C2C70B1C(v6, v5, 2u);
            v30 = v21;
            v27 = [v6 description];
            v28 = sub_1C2E75C64();
            v26 = v29;

            sub_1C2C775D8(v6, v5, 2u);
            if (v30 != v28)
            {
              goto LABEL_34;
            }

            goto LABEL_32;
          }

          v25 = 1;
        }

        else
        {
          v25 = 0;
        }

        sub_1C2C70B1C(v6, v5, v25);
        v26 = v5;
        if (v21 != v6)
        {
          goto LABEL_34;
        }

LABEL_32:
        if (v22 == v26)
        {
          v17 = 1;
LABEL_35:

          sub_1C2C775D8(v3, v2, v4);
          sub_1C2C775D8(v6, v5, v7);
          sub_1C2C775D8(v6, v5, v7);
          sub_1C2C775D8(v3, v2, v4);
          return v17 & 1;
        }

LABEL_34:
        v17 = sub_1C2E767A4();
        goto LABEL_35;
      }

      sub_1C2C77478(v12, v2, 1u);
      sub_1C2C77478(v3, v2, 1u);
      sub_1C2C77478(v6, v5, v7);
      v13 = v3;
      v14 = v2;
      v15 = 1;
    }

    else
    {
      sub_1C2C77478(v12, v2, 0);
      sub_1C2C77478(v3, v2, 0);
      sub_1C2C77478(v6, v5, v7);
      v13 = v3;
      v14 = v2;
      v15 = 0;
    }

    sub_1C2C77478(v13, v14, v15);
    sub_1C2C77478(v6, v5, v7);
    v21 = v3;
    v22 = v2;
    goto LABEL_25;
  }

  if (v4 >> 6 == 1)
  {
    if ((v7 & 0xC0) == 0x40)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1C2E767A4();
        sub_1C2C77478(v3, v2, v4);
        sub_1C2C77478(v6, v5, v7);
        sub_1C2C775D8(v3, v2, v4);
        sub_1C2C775D8(v6, v5, v7);
        return v10 & 1;
      }

      sub_1C2C77478(v8, v2, v4);
      sub_1C2C77478(v3, v2, v7);
      sub_1C2C775D8(v3, v2, v4);
      v18 = v3;
      v19 = v2;
      v20 = v7;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = (v7 & 0xC0) == 0x80 && (v5 | v6) == 0;
    if (v16 && v7 == 128)
    {
      sub_1C2C775D8(*a1, v2, v4);
      v18 = 0;
      v19 = 0;
      v20 = 0x80;
LABEL_21:
      sub_1C2C775D8(v18, v19, v20);
      v17 = 1;
      return v17 & 1;
    }
  }

LABEL_17:
  sub_1C2C77478(*a1, v2, v4);
  sub_1C2C77478(v6, v5, v7);
  sub_1C2C775D8(v3, v2, v4);
  sub_1C2C775D8(v6, v5, v7);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2C8119C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C811D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1C2C81240(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1C2C812F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C2C8130C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E75C64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2C81338()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C2E74204();

    return sub_1C2E73654();
  }

  else
  {
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    sub_1C2E76424();
    swift_getWitnessTable();
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    return sub_1C2E73654();
  }
}

uint64_t sub_1C2C8149C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C2E74204();
    sub_1C2E73654();
  }

  else
  {
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    sub_1C2E76424();
    swift_getWitnessTable();
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8169C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C2E734B4();
  }

  else
  {
    sub_1C2E733B4();
  }

  return sub_1C2E73654();
}

uint64_t sub_1C2C81704()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C2E734B4();
    sub_1C2E73654();
    sub_1C2C965D4();
  }

  else
  {
    sub_1C2E733B4();
    sub_1C2E73654();
    sub_1C2C94F80(&qword_1EC05CBD8, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1C2C817F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C81818(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t _s26ButtonShelfHorizontalStackVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C81868()
{
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();

  return swift_getWitnessTable();
}

uint64_t sub_1C2C81944()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C819C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81A48()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81AAC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(sub_1C2C9F44C() + 16);

  *a1 = v2;
  return result;
}

uint64_t sub_1C2C81AE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C81B40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C2C81BA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81BFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81DC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CAA1F8(v1, v2);
}

uint64_t sub_1C2C81E08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81F38()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C81FA0()
{
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  sub_1C2E751F4();
  type metadata accessor for IconButton.ButtonStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for IconButton.Container();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73F54();
  sub_1C2E73654();
  sub_1C2E73F54();
  sub_1C2E73654();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82364()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2C823A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IconButtonStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C82454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IconButtonStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C82544()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C2C82644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8273C()
{
  sub_1C2E752E4();
  sub_1C2E75214();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C82880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C828E8()
{
  type metadata accessor for OptionalForegroundStyle();
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E741F4();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD98);
  sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
  sub_1C2CB28EC();
  sub_1C2CB2BEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C82B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82BA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C82BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82C2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C82CA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C82D64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_x7SwiftUI5ImageV5ScaleORi_zRi0_zlyxIsegnr_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2C82EBC@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C8309C@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.hasBadge.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C83154()
{
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle();
  swift_getOpaqueTypeConformance2();
  sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  sub_1C2E73654();
  swift_getOpaqueTypeConformance2();
  sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for IconButton.Container();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C83724()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C83764()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C837C4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C2CBE714();
  result = sub_1C2E73BB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2C83884(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_1C2C83A68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C2C83C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C2C83DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C83EF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = DisableableControlService.controlEnabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_1C2C83F64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2C83F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C83FC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C83FF8()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C8414C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CCECB0(v1, v2);
}

__n128 sub_1C2C84278(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8428C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C842C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C2C84398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1C2C8445C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C84518(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C84604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2C846C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71574();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C2C84780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8);
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

uint64_t sub_1C2C84848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8);
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

uint64_t sub_1C2C8490C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E728);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7D0);
  sub_1C2CD7D3C();
  sub_1C2CD7E5C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C849E4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C84A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA10);
  sub_1C2CD8C8C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C84B28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C84B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C84BA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C84BEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C2C84D28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C84EC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C84F7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C85068()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C850B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85110()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85150()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85188()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C851F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C85240()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C85288()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C852E0()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C2C85348()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2C853A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C853E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C2C85428(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8543C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C85484()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C854BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71844();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F280);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C2C855E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71844();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F280);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C2C85780()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F2B0);
  sub_1C2CF20CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C857F4()
{
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1C2C85940(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BasicApertureHudConfiguration.title.setter(v1);
}

uint64_t sub_1C2C859F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85A50()
{

  sub_1C2CFAECC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C2C85AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F3D0);
  sub_1C2E73404();
  sub_1C2C94F38(&qword_1EC05F3F0, &qword_1EC05F3D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C85B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85BC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85C54()
{
  v1 = type metadata accessor for FTPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = v0 + v3 + *(v1 + 24);
  v6 = sub_1C2E718A4();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for FTPickerView.PickerItem(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C85D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C85E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C85EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E718A4();
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

uint64_t sub_1C2C85FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E718A4();
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

uint64_t sub_1C2C8609C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73F54();
  sub_1C2E75024();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  swift_getOpaqueTypeConformance2();
  sub_1C2D06C00();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C866A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C86718()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C2C86768()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C2C867C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C86810()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C86848()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86880()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C868B8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C868F8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C86944()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C869BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = MuteControlServiceProtocol.muteState.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

uint64_t sub_1C2C86A00(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return MuteControlServiceProtocol.muteState.setter(&v7, v4, v5);
}
uint64_t sub_1C2CA2CF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C2DD2198(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2DE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1C2E765F4();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D9F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2EE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2DD1FA0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2FD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2DD2400(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA3118(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA325C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C2DD27F8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA3350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts);
  sub_1C2E71A64();

  *a2 = *(v3 + 80);
  return result;
}

id sub_1C2CA3448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1C2CA34C4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C2E764E4();
LABEL_9:
  result = sub_1C2E765F4();
  *v1 = result;
  return result;
}

uint64_t sub_1C2CA3564(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2E764E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2E764E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2C94F38(&qword_1EC05DA28, &qword_1EC05DA20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA20);
            v9 = sub_1C2DEA81C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C2C6E1B4(0, &qword_1EC062670);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C2CA3718()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C2E766F4();
  __break(1u);
}

uint64_t type metadata accessor for CallTranslationViewController()
{
  result = qword_1EC05D900;
  if (!qword_1EC05D900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2CA383C()
{
  sub_1C2CA3944();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C2CA3944()
{
  if (!qword_1EC05D910)
  {
    sub_1C2C6E1B4(255, &qword_1EC05D8C0);
    type metadata accessor for CallTranscripts();
    v0 = sub_1C2E76014();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05D910);
    }
  }
}

id sub_1C2CA39BC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2CA3A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CA3A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CA3AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2CA112C(a1, v4, v5, v6);
}

uint64_t (*sub_1C2CA3BB0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1C2CA3AF4;
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1C2CA3C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CUIMaterial.Platter.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA3DBC()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

void *static CUIMaterial.allCases.getter()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4B94(0, 4, 0);
  v0 = v10;
  v2 = *(v10 + 16);
  v1 = *(v10 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1C2CA4B94((v1 > 1), v2 + 1, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1C2CA4B94((v1 > 1), v2 + 2, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1C2CA4B94((v1 > 1), v2 + 3, 1);
  }

  v7 = v10;
  *(v10 + 16) = v6;
  *(v10 + v5 + 32) = 2;
  v8 = *(v10 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    sub_1C2CA4B94((v8 > 1), v2 + 4, 1);
    v7 = v10;
  }

  *(v7 + 16) = v2 + 4;
  *(v7 + v6 + 32) = 3;
  sub_1C2CA2C04(v7);
  return &unk_1F42972F0;
}

uint64_t CUIMaterial.swiftUIMaterial.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        sub_1C2CA4C08();
      }

      else
      {
        sub_1C2CA4BB4();
      }
    }

    else if (*v0)
    {
      sub_1C2CA4C5C();
    }

    else
    {
      sub_1C2CA4CB0();
    }

    return sub_1C2E756C4();
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {

      return sub_1C2E75644();
    }

    else
    {

      return sub_1C2E75604();
    }
  }

  else if (v1 == 6)
  {

    return sub_1C2E75634();
  }

  else if (v1 == 7)
  {

    return sub_1C2E75614();
  }

  else
  {

    return MEMORY[0x1EEDE4C50]();
  }
}

uint64_t CUIMaterial.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  return MEMORY[0x1C6927290](v2);
}

uint64_t CUIMaterial.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA4198()
{
  v1 = *v0;
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  return MEMORY[0x1C6927290](v2);
}

uint64_t sub_1C2CA41E0()
{
  v1 = *v0;
  sub_1C2E76854();
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA4240()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7A110;
  sub_1C2E75654();
  if (qword_1EC05BA20 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC075780;
  v6[3] = unk_1EC075790;
  v6[4] = xmmword_1EC0757A0;
  v6[0] = xmmword_1EC075760;
  v6[1] = *algn_1EC075770;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA44FC()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  v6[0] = xmmword_1C2E7A930;
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = v6[0];
  if (qword_1EC05BA48 != -1)
  {
    swift_once();
  }

  v6[3] = xmmword_1EC075870;
  v6[4] = unk_1EC075880;
  v6[5] = xmmword_1EC075890;
  v6[1] = xmmword_1EC075850;
  v6[2] = unk_1EC075860;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA47A0()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7A110;
  sub_1C2E75654();
  if (qword_1EC05BA30 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC0757D0;
  v6[3] = unk_1EC0757E0;
  v6[4] = xmmword_1EC0757F0;
  v6[0] = xmmword_1EC0757B0;
  v6[1] = unk_1EC0757C0;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

double sub_1C2CA4A54()
{
  xmmword_1EC075800 = xmmword_1C2E7A940;
  *algn_1EC075810 = xmmword_1C2E7A950;
  xmmword_1EC075820 = xmmword_1C2E7A960;
  unk_1EC075830 = xmmword_1C2E7A970;
  result = 0.0;
  xmmword_1EC075840 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4A94()
{
  xmmword_1EC075760 = xmmword_1C2E7A990;
  *algn_1EC075770 = xmmword_1C2E7A9A0;
  xmmword_1EC075780 = xmmword_1C2E7A9B0;
  unk_1EC075790 = xmmword_1C2E7A9C0;
  result = 0.0;
  xmmword_1EC0757A0 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4AD4()
{
  xmmword_1EC075850 = xmmword_1C2E7A9D0;
  unk_1EC075860 = xmmword_1C2E7A9E0;
  xmmword_1EC075870 = xmmword_1C2E7A9F0;
  unk_1EC075880 = xmmword_1C2E7AA00;
  result = 0.0;
  xmmword_1EC075890 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4B14()
{
  xmmword_1EC0757B0 = xmmword_1C2E7AA10;
  unk_1EC0757C0 = xmmword_1C2E7AA20;
  xmmword_1EC0757D0 = xmmword_1C2E7AA30;
  unk_1EC0757E0 = xmmword_1C2E7AA40;
  result = 0.0;
  xmmword_1EC0757F0 = xmmword_1C2E7A980;
  return result;
}

char *sub_1C2CA4B54(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA4F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4B74(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4B94(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA5134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C2CA4BB4()
{
  result = qword_1EC05BE20;
  if (!qword_1EC05BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE20);
  }

  return result;
}

unint64_t sub_1C2CA4C08()
{
  result = qword_1EC05BFD0;
  if (!qword_1EC05BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFD0);
  }

  return result;
}

unint64_t sub_1C2CA4C5C()
{
  result = qword_1EC05BD48;
  if (!qword_1EC05BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD48);
  }

  return result;
}

unint64_t sub_1C2CA4CB0()
{
  result = qword_1EC05BE40;
  if (!qword_1EC05BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE40);
  }

  return result;
}

void *sub_1C2CA4D04(void *a1, int64_t a2, char a3)
{
  result = sub_1C2CA56BC(a1, a2, a3, *v3, &qword_1EC05DB80, &unk_1C2E7B000, &qword_1EC05DA20);
  *v3 = result;
  return result;
}

void *sub_1C2CA4D44(void *a1, int64_t a2, char a3)
{
  result = sub_1C2CA524C(a1, a2, a3, *v3, &qword_1EC05DB00, &unk_1C2E7AF70, &qword_1EC05DB08);
  *v3 = result;
  return result;
}

void *sub_1C2CA4D84(void *a1, int64_t a2, char a3)
{
  result = sub_1C2CA5380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C2CA4DA4(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DAF0, &unk_1C2E7AF60, MEMORY[0x1EEE85500]);
  *v3 = result;
  return result;
}

char *sub_1C2CA4DDC(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA54B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4DFC(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA55B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2CA4E1C(void *a1, int64_t a2, char a3)
{
  result = sub_1C2CA56BC(a1, a2, a3, *v3, &qword_1EC05DB48, &unk_1C2E8B460, &qword_1EC05DB50);
  *v3 = result;
  return result;
}

void *sub_1C2CA4E5C(void *a1, int64_t a2, char a3)
{
  result = sub_1C2CA57F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C2CA4E7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DAF8, &unk_1C2E7AF68, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
  *v3 = result;
  return result;
}

char *sub_1C2CA4EC0(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA5A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4EE0(char *a1, int64_t a2, char a3)
{
  result = sub_1C2CA5B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4F00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB68);
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

char *sub_1C2CA5134(char *result, int64_t a2, char a3, char *a4)
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

void *sub_1C2CA524C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1C2CA5380(void *result, int64_t a2, char a3, void *a4)
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

char *sub_1C2CA54B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB70);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C2CA55B8(char *result, int64_t a2, char a3, char *a4)
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

void *sub_1C2CA56BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1C2CA57F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5924(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1C2CA5A44(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1C2CA5B50(char *result, int64_t a2, char a3, char *a4)
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

BOOL _s16CommunicationsUI11CUIMaterialO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 == 5)
    {
      return v3 == 5;
    }
  }

  else
  {
    switch(v2)
    {
      case 6u:
        return v3 == 6;
      case 7u:
        return v3 == 7;
      case 8u:
        return v3 == 8;
    }
  }

  if ((v3 - 4) < 5)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1C2CA5CF0()
{
  result = qword_1EC05DAC0;
  if (!qword_1EC05DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAC0);
  }

  return result;
}

unint64_t sub_1C2CA5D58()
{
  result = qword_1EC05DAD0;
  if (!qword_1EC05DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAD0);
  }

  return result;
}

unint64_t sub_1C2CA5DB0()
{
  result = qword_1EC05DAD8;
  if (!qword_1EC05DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIMaterial(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUIMaterial(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C2CA5F5C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C2CA5F70(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIMaterial.Platter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIMaterial.Platter(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2CA6124()
{
  result = qword_1EC05BE10;
  if (!qword_1EC05BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE10);
  }

  return result;
}

unint64_t sub_1C2CA617C()
{
  result = qword_1EC05BFC0;
  if (!qword_1EC05BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFC0);
  }

  return result;
}

unint64_t sub_1C2CA61D4()
{
  result = qword_1EC05BD38;
  if (!qword_1EC05BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD38);
  }

  return result;
}

unint64_t sub_1C2CA622C()
{
  result = qword_1EC05BE28;
  if (!qword_1EC05BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE28);
  }

  return result;
}

unint64_t sub_1C2CA6284()
{
  result = qword_1EC05BE30;
  if (!qword_1EC05BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE30);
  }

  return result;
}

unint64_t sub_1C2CA62DC()
{
  result = qword_1EC05BD40;
  if (!qword_1EC05BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD40);
  }

  return result;
}

unint64_t sub_1C2CA6334()
{
  result = qword_1EC05BFC8;
  if (!qword_1EC05BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFC8);
  }

  return result;
}

unint64_t sub_1C2CA638C()
{
  result = qword_1EC05BE18;
  if (!qword_1EC05BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE18);
  }

  return result;
}

uint64_t sub_1C2CA63E0()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7AA50;
  sub_1C2E75684();
  if (qword_1EC05BA38 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC075820;
  v6[3] = unk_1EC075830;
  v6[4] = xmmword_1EC075840;
  v6[0] = xmmword_1EC075800;
  v6[1] = *algn_1EC075810;
  sub_1C2E75664();
  sub_1C2E75674();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA66D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  v4 = sub_1C2E71934();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted) = 0;
  v6 = (v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted) = 0;
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables) = MEMORY[0x1E69E7CC0];
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service);
  if (qword_1EC05CF18 != -1)
  {
    swift_once();
  }

  if (!qword_1EC05DB98)
  {
    goto LABEL_7;
  }

  v7 = qword_1EC05DB98;
  v8 = sub_1C2E75C24();
  v9 = [v7 objectForKey_];

  if (!v9)
  {

    memset(v13, 0, sizeof(v13));
    sub_1C2C73644(v13, &unk_1EC0645B0);
LABEL_7:
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale) = 0;
    goto LABEL_8;
  }

  sub_1C2E76444();
  swift_unknownObjectRelease();
  sub_1C2C73644(v13, &unk_1EC0645B0);
  v10 = sub_1C2E75C24();
  v11 = [v7 BOOLForKey_];

  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale) = v11;
LABEL_8:
  sub_1C2CA6C24();
  sub_1C2CA6D80();
  sub_1C2CA77A4(MEMORY[0x1E6995F70], sub_1C2CAB584);
  sub_1C2CA77A4(MEMORY[0x1E6995F78], sub_1C2CAB050);
  sub_1C2CA7D5C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1C2CA69D0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2CA6AD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1C2CF74E0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CA6C24()
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A84();

  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  sub_1C2E72584();
  swift_endAccess();
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA6D80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC30);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC38);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v40 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v50 = v1;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  v18 = v17;
  sub_1C2E71A64();

  v19 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  v47 = v19;
  sub_1C2C6E3A4(v1 + v19, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_1C2E72554();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40);
  v40[0] = *(*(v20 - 8) + 48);
  v21 = (v40[0])(v10, 1, v20);
  v42 = v14;
  if (v21 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_1C2C73644(v10, &qword_1EC05DC38);
    v22 = sub_1C2E71934();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  else
  {
    v23 = *(v20 + 48);
    v24 = sub_1C2E71934();
    v25 = v18;
    v26 = *(v24 - 8);
    (*(v26 + 32))(v16, v10, v24);
    (*(v26 + 56))(v16, 0, 1, v24);
    (*(v26 + 8))(&v10[v23], v24);
    v18 = v25;
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_1C2CA8788(v16, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale);
  swift_getKeyPath();
  v49 = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v47, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v27 = v41;
  sub_1C2E72554();
  if ((v40[0])(v27, 1, v20) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_1C2C73644(v27, &qword_1EC05DC38);
    v28 = sub_1C2E71934();
    v29 = v42;
    (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  }

  else
  {
    v30 = *(v20 + 48);
    v31 = sub_1C2E71934();
    v32 = *(v31 - 8);
    v33 = v27 + v30;
    v29 = v42;
    (*(v32 + 32))(v42, v33, v31);
    (*(v32 + 56))(v29, 0, 1, v31);
    (*(v32 + 8))(v27, v31);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_1C2CA8788(v29, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale);
  swift_getKeyPath();
  v51[0] = v1;
  v40[1] = v18;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v47, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v49 = sub_1C2E72594();
  v34 = [objc_opt_self() mainRunLoop];
  v48 = v34;
  v35 = sub_1C2E763E4();
  v36 = v43;
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC48);
  sub_1C2CAB004();
  sub_1C2C94F38(&qword_1EC05BAE8, &qword_1EC05DC48);
  sub_1C2CAB444(&qword_1EC05D110, sub_1C2CAB004);
  v37 = v44;
  sub_1C2E72ED4();
  sub_1C2C73644(v36, &qword_1EC0625C0);

  __swift_destroy_boxed_opaque_existential_1(v51);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05DC50, &qword_1EC05DC30);
  v38 = v46;
  sub_1C2E72F14();

  (*(v45 + 8))(v37, v38);
  swift_getKeyPath();
  v51[0] = v1;
  sub_1C2E71A64();

  v51[0] = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28);
  sub_1C2E72DA4();
  swift_endAccess();

  v51[0] = v1;
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA77A4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v26 = a2;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC08);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  swift_getKeyPath();
  v23[0] = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v28[0] = v2;
  v23[1] = sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v16 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v4 + v16, v28);
  v18 = v29;
  v17 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v27 = a1(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10);
  sub_1C2E72F04();

  __swift_destroy_boxed_opaque_existential_1(v28);
  v19 = [objc_opt_self() mainRunLoop];
  v28[0] = v19;
  v20 = sub_1C2E763E4();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_1C2CAB004();
  sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00);
  sub_1C2CAB444(&qword_1EC05D110, sub_1C2CAB004);
  sub_1C2E72ED4();
  sub_1C2C73644(v7, &qword_1EC0625C0);

  (*(v9 + 8))(v11, v8);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05DC20, &qword_1EC05DC08);
  v21 = v24;
  sub_1C2E72F14();

  (*(v25 + 8))(v15, v21);
  swift_getKeyPath();
  v28[0] = v4;
  sub_1C2E71A64();

  v28[0] = v4;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28);
  sub_1C2E72DA4();
  swift_endAccess();

  v28[0] = v4;
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA7D5C()
{
  v1 = v0;
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C2E75C14();
  v4 = *(v35 - 8);
  v5 = MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - v7;
  swift_getKeyPath();
  v37[0] = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v8 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v0 + v8, v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = sub_1C2E724C4() & 1;
  if (v9 == *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted))
  {
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v9;
    v36 = v1;
    sub_1C2E71A54();
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_getKeyPath();
  v37[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v8, v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v11 = sub_1C2E72514() & 1;
  v12 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted;
  if (v11 == *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted))
  {
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted) = v11;
  }

  else
  {
    v13 = swift_getKeyPath();
    v31 = v8;
    MEMORY[0x1EEE9AC00](v13);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v11;
    v36 = v1;
    sub_1C2E71A54();

    v8 = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_getKeyPath();
  v37[0] = v1;
  sub_1C2E71A64();

  if (*(v1 + v12) == 1)
  {
    swift_getKeyPath();
    v37[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v8, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_1C2E724C4();
    __swift_destroy_boxed_opaque_existential_1(v37);
    v14 = v34;
    sub_1C2E75BB4();
    (*(v4 + 16))(v32, v14, v35);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v25 = sub_1C2E75C84();
    v27 = v26;
    (*(v4 + 8))(v14, v35);
    v28 = v25;
    v29 = v27;
  }

  else
  {
    sub_1C2CA6C24();
    swift_getKeyPath();
    v37[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v8, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v16 = sub_1C2E724C4();
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (v16)
    {
      v17 = v34;
      sub_1C2E75BB4();
      v18 = v35;
      (*(v4 + 16))(v32, v17, v35);
      type metadata accessor for StringDummy();
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      v21 = sub_1C2E75C84();
      v23 = v22;
      (*(v4 + 8))(v17, v18);
      v29 = v23;
      v28 = v21;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }
  }

  return sub_1C2CAA1F8(v28, v29);
}

uint64_t sub_1C2CA84E0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v5 = *a1;
  swift_beginAccess();
  return sub_1C2C736A4(v2 + v5, a2, &qword_1EC05DBF8);
}

uint64_t sub_1C2CA85B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v6, a3, &qword_1EC05DBF8);
}

uint64_t sub_1C2CA8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1C2C736A4(a1, &v11 - v8, &qword_1EC05DBF8);
  return sub_1C2CA8788(v9, a5);
}

uint64_t sub_1C2CA8788(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v2 + v8, v7, &qword_1EC05DBF8);
  LOBYTE(a2) = sub_1C2CAB090(v7, a1);
  sub_1C2C73644(v7, &qword_1EC05DBF8);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2CAB3B0(a1, v2 + v8);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05DBF8);
}

uint64_t sub_1C2CA8970(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1C2CAB3B0(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1C2CA89D8()
{
  v1 = v0;
  v2 = sub_1C2E75C14();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  swift_getKeyPath();
  v37 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v17, v9, &qword_1EC05DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C2C73644(v9, &qword_1EC05DBF8);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_1C2E718F4();
    v19 = sub_1C2E72284();
    v21 = v20;
    v33 = *(v11 + 8);
    v33(v13, v10);
    if (v21)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v23 = 0xE000000000000000;
    if (v21)
    {
      v23 = v21;
    }

    v31 = v23;
    v32 = v22;
    sub_1C2E75BB4();
    v24 = v35;
    v25 = v36;
    (*(v35 + 16))(v34, v6, v36);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    sub_1C2E75C84();
    (*(v24 + 8))(v6, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C2E7A930;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C2CAB500();
    v29 = v31;
    *(v28 + 32) = v32;
    *(v28 + 40) = v29;
    v30 = sub_1C2E75C74();

    v33(v16, v10);
    return v30;
  }
}

uint64_t sub_1C2CA8E60()
{
  v1 = v0;
  v2 = sub_1C2E75C14();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = sub_1C2E71934();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v48 - v18;
  swift_getKeyPath();
  v60 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v19 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v19, v11, &qword_1EC05DBF8);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    v21 = v11;
LABEL_5:
    sub_1C2C73644(v21, &qword_1EC05DBF8);
    return 0;
  }

  v51 = v13;
  v50 = *(v13 + 32);
  v50(v58, v11, v12);
  swift_getKeyPath();
  v59 = v1;
  sub_1C2E71A64();

  v22 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v22, v8, &qword_1EC05DBF8);
  if (v20(v8, 1, v12) == 1)
  {
    (*(v51 + 8))(v58, v12);
    v21 = v8;
    goto LABEL_5;
  }

  v50(v57, v8, v12);
  v24 = v52;
  sub_1C2E718F4();
  v25 = sub_1C2E72284();
  v27 = v26;
  v28 = *(v51 + 8);
  v28(v24, v12);
  if (v27)
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v50 = v30;
  v51 = v29;
  sub_1C2E718F4();
  v31 = sub_1C2E72284();
  v33 = v32;
  v28(v24, v12);
  if (v33)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v48 = v35;
  v49 = v34;
  v36 = v54;
  sub_1C2E75BB4();
  v38 = v55;
  v37 = v56;
  (*(v55 + 16))(v53, v36, v56);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  sub_1C2E75C84();
  (*(v38 + 8))(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C2E7A110;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1C2CAB500();
  v44 = v50;
  *(v41 + 32) = v51;
  *(v41 + 40) = v44;
  *(v41 + 96) = v42;
  *(v41 + 104) = v43;
  v45 = v48;
  v46 = v49;
  *(v41 + 64) = v43;
  *(v41 + 72) = v46;
  *(v41 + 80) = v45;
  v47 = sub_1C2E75C74();

  v28(v57, v12);
  v28(v58, v12);
  return v47;
}

uint64_t sub_1C2CA9488()
{
  v1 = sub_1C2E75C14();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  swift_getKeyPath();
  v41 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale;
  swift_beginAccess();
  sub_1C2C736A4(v0 + v17, v9, &qword_1EC05DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C2C73644(v9, &qword_1EC05DBF8);
    sub_1C2E75BB4();
    v19 = v39;
    v18 = v40;
    (*(v39 + 16))(v3, v6, v40);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v22 = sub_1C2E75C84();
    (*(v19 + 8))(v6, v18);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_1C2E718F4();
    v23 = sub_1C2E72284();
    v25 = v24;
    v38 = *(v11 + 8);
    v38(v13, v10);
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    if (v25)
    {
      v27 = v25;
    }

    v36 = v27;
    v37 = v26;
    sub_1C2E75BB4();
    v28 = v39;
    v29 = v40;
    (*(v39 + 16))(v3, v6, v40);
    type metadata accessor for StringDummy();
    v30 = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    sub_1C2E75C84();
    (*(v28 + 8))(v6, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C2E7A930;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C2CAB500();
    v33 = v36;
    *(v32 + 32) = v37;
    *(v32 + 40) = v33;
    v22 = sub_1C2E75C74();

    v38(v16, v10);
  }

  return v22;
}

uint64_t sub_1C2CA99E0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  return sub_1C2C6E3A4(v5 + v3, a1);
}

uint64_t sub_1C2CA9AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC38);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C2C736A4(a1, v7, &qword_1EC05DC38);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40);
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      sub_1C2C73644(v7, &qword_1EC05DC38);
      v15 = sub_1C2E71934();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    }

    else
    {
      v16 = *(v14 + 48);
      v17 = sub_1C2E71934();
      v18 = *(v17 - 8);
      (*(v18 + 32))(v13, &v7[v16], v17);
      (*(v18 + 56))(v13, 0, 1, v17);
      (*(v18 + 8))(v7, v17);
    }

    sub_1C2CA8788(v13, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C736A4(a1, v5, &qword_1EC05DC38);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40);
    if ((*(*(v20 - 8) + 48))(v5, 1, v20) == 1)
    {
      sub_1C2C73644(v5, &qword_1EC05DC38);
      v21 = sub_1C2E71934();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    else
    {
      v22 = *(v20 + 48);
      v23 = sub_1C2E71934();
      v24 = *(v23 - 8);
      (*(v24 + 32))(v11, v5, v23);
      (*(v24 + 56))(v11, 0, 1, v23);
      (*(v24 + 8))(&v5[v22], v23);
    }

    sub_1C2CA8788(v11, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale);
  }

  return result;
}

uint64_t sub_1C2CA9F78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2CA7D5C();
  }

  return result;
}

uint64_t sub_1C2CAA044()
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);

  return v1;
}

uint64_t sub_1C2CAA100@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  a2[1] = v4;
}

uint64_t sub_1C2CAA1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CAA1F8(v1, v2);
}

uint64_t sub_1C2CAA1F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  v6 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C2E767A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A54();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C2CAA374()
{
  v1 = v0;
  swift_getKeyPath();
  v6[0] = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v0 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = sub_1C2E72514();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v3 & 1) == 0)
  {
    swift_getKeyPath();
    v6[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v2, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1C2E724D4();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  swift_getKeyPath();
  v6[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1C2E724C4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v4)
  {
    swift_getKeyPath();
    v6[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v2, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1C2E725A4();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  swift_getKeyPath();
  v6[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1C2E725B4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return sub_1C2CA6C24();
}

uint64_t sub_1C2CAA628(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  return *(v2 + *a2);
}

uint64_t sub_1C2CAA6DC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1C2CAA7DC(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_1C2CAA848()
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CAA908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2CAA9D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C2CAAA40()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C2E75C24();
  v2 = [v0 initWithSuiteName_];

  qword_1EC05DB98 = v2;
}

uint64_t sub_1C2CAAAB0()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale, &qword_1EC05DBF8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, &qword_1EC05DBF8);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service);

  v1 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallTranslationFooterViewModel()
{
  result = qword_1EC05DBE8;
  if (!qword_1EC05DBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2CAAC1C()
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

void sub_1C2CAAD14()
{
  if (!qword_1EC05CA28)
  {
    sub_1C2E71934();
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CA28);
    }
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1C2CAAFB8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_1C2CAB004()
{
  result = qword_1EC05D100;
  if (!qword_1EC05D100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05D100);
  }

  return result;
}

uint64_t sub_1C2CAB090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71934();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC58);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1C2C736A4(a1, &v21 - v13, &qword_1EC05DBF8);
  sub_1C2C736A4(a2, &v14[v15], &qword_1EC05DBF8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C736A4(v14, v10, &qword_1EC05DBF8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C2CAB444(&qword_1EC05DC60, MEMORY[0x1E6969770]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v14, &qword_1EC05DBF8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC05DC58);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC05DBF8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2CAB3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CAB444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1C2CAB500()
{
  result = qword_1EC05CAC0;
  if (!qword_1EC05CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CAC0);
  }

  return result;
}

uint64_t static SupplementaryControlViewConfiguration.default(arrangement:)(uint64_t a1, uint64_t a2)
{
  sub_1C2C6E3A4(a1, v11);
  sub_1C2C6E3A4(a2, v12 + 8);
  v10[0] = v12[0];
  v10[1] = v12[1];
  v10[2] = v12[2];
  v9[0] = v11[0];
  v9[1] = v11[1];
  type metadata accessor for SupplementaryControlViewConfiguration();
  v3 = swift_allocObject();
  sub_1C2C716EC(v9, v7);
  sub_1C2C716EC((v10 + 8), v8 + 8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v5[0] = v7[0];
  v5[1] = v7[1];
  sub_1C2C716EC(v5, v3 + 16);
  sub_1C2C716EC((v6 + 8), v3 + 56);
  *(v3 + 96) = xmmword_1C2E7B250;
  *(v3 + 112) = vdupq_n_s64(0x4049000000000000uLL);
  *(v3 + 128) = 0x4049000000000000;
  return v3;
}

uint64_t IconButton.init(config:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IconButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = *(a1 + 16);
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  *&v93 = sub_1C2E751F4();
  *(&v93 + 1) = type metadata accessor for IconButton.ButtonStyle();
  *&v94 = swift_getWitnessTable();
  *(&v94 + 1) = swift_getWitnessTable();
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
  WitnessTable = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v55 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  v46[1] = type metadata accessor for IconButton.Container();
  v4 = sub_1C2E73654();
  v49 = sub_1C2E73654();
  v48 = sub_1C2E73F54();
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v60 = v46 - v5;
  v53 = sub_1C2E73654();
  v52 = sub_1C2E73F54();
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = v46 - v6;
  v7 = sub_1C2E73654();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v50 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v46 - v10;
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[2];
  v14 = *v2 + *(**v2 + 128);
  v15 = type metadata accessor for IconButtonStyle();
  v16 = *(v14 + *(v15 + 44));
  v17 = *(v14 + *(v15 + 60));
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = v11;
  v18[4] = v12;
  v18[5] = v13;
  LOBYTE(v93) = v16;
  *(&v93 + 1) = v17;
  *&v94 = sub_1C2CACB18;
  *(&v94 + 1) = v18;

  sub_1C2C6EE50(v12);
  sub_1C2E75744();
  v45 = swift_getWitnessTable();
  sub_1C2E74D24();

  v79 = v88;
  v80 = v89;
  v81 = v90;
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v78 = v87;
  v73 = v82;
  v74 = v83;
  v19 = sub_1C2CB8AC0();
  v21 = v20;
  v71 = v45;
  v72 = MEMORY[0x1E697EBF8];

  v22 = swift_getWitnessTable();
  View.optionalAXID(_:)(v19, v21, v4, v22, v60);

  v99 = v79;
  v100 = v80;
  v101 = v81;
  v95 = v75;
  v96 = v76;
  v97 = v77;
  v98 = v78;
  v93 = v73;
  v94 = v74;
  (*(*(v4 - 8) + 8))(&v93, v4);
  v23 = sub_1C2CB8B34();
  v25 = v24;
  v26 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v69 = v22;
  v70 = v26;

  v67 = swift_getWitnessTable();
  v68 = v22;
  v27 = v48;
  v28 = swift_getWitnessTable();
  v29 = v47;
  v30 = v23;
  v31 = v60;
  View.optionalAXLabel(_:)(v30, v25, v27, v28, v47);

  (*(v51 + 8))(v31, v27);
  v32 = sub_1C2CB8C1C();
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  *&v82 = v34;
  *(&v82 + 1) = v35;

  sub_1C2CB8C1C();
  v65 = v28;
  v66 = v26;
  v63 = swift_getWitnessTable();
  v64 = v28;
  v36 = v52;
  v37 = swift_getWitnessTable();
  sub_1C2C74960();
  v38 = v50;
  sub_1C2E74B44();

  (*(v58 + 8))(v29, v36);
  v61 = v37;
  v62 = v26;
  v39 = v57;
  swift_getWitnessTable();
  v40 = v56;
  v41 = *(v56 + 16);
  v42 = v54;
  v41(v54, v38, v39);
  v43 = *(v40 + 8);
  v43(v38, v39);
  v41(v59, v42, v39);
  return (v43)(v42, v39);
}

uint64_t sub_1C2CABF50@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v72 = a2;
  v81 = a4;
  v5 = type metadata accessor for IconButton.LabelView();
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  v6 = sub_1C2E751F4();
  v7 = type metadata accessor for IconButton.ButtonStyle();
  v97 = v6;
  v98 = v7;
  WitnessTable = swift_getWitnessTable();
  v99 = WitnessTable;
  v100 = swift_getWitnessTable();
  v9 = v100;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v10 = sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v70 = v10;
  v11 = sub_1C2E73654();
  sub_1C2E74384();
  v75 = v11;
  v12 = sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v13 = sub_1C2E75844();
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v66 - v14;
  v15 = v5;
  swift_getTupleTypeMetadata2();
  v16 = sub_1C2E75844();
  v69 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v66 - v18;
  v71 = v12;
  v74 = *(v12 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v66 - v22;
  v79 = v23;
  v80 = v13;
  v78 = sub_1C2E73F54();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v24;
  type metadata accessor for IconButtonStyle();
  swift_retain_n();
  LODWORD(v5) = sub_1C2E744C4();
  if (v5 == sub_1C2E744C4())
  {
  }

  else
  {
    v25 = sub_1C2E744C4();
    v26 = sub_1C2E744C4();

    if (v25 != v26)
    {
      v97 = a1;
      v69 = swift_getWitnessTable();
      (*(*(v15 - 8) + 16))(&v96, &v97, v15);

      v97 = a1;
      v98 = v72;
      v99 = v73;
      v45 = type metadata accessor for IconButton();
      sub_1C2CACB24(v45, v21);
      v97 = v6;
      v98 = v7;
      v99 = WitnessTable;
      v100 = v9;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v47 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
      v95[5] = OpaqueTypeConformance2;
      v95[6] = v47;
      v48 = swift_getWitnessTable();
      v49 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
      v95[3] = v48;
      v95[4] = v49;
      v50 = swift_getWitnessTable();
      v51 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
      v95[1] = v50;
      v95[2] = v51;
      v52 = v71;
      v53 = swift_getWitnessTable();
      v54 = v74;
      v55 = *(v74 + 16);
      v56 = v82;
      v55(v82, v21, v52);
      v57 = *(v54 + 8);
      v57(v21, v52);
      v95[0] = v96;
      v97 = v95;
      v55(v21, v56, v52);
      v98 = v21;

      v93 = v15;
      v94 = v52;
      v91 = v69;
      v92 = v53;
      v58 = v66;
      sub_1C2C6EC40(&v97, 2uLL, &v93);
      v57(v21, v52);

      v59 = v79;
      swift_getWitnessTable();
      v60 = v80;
      swift_getWitnessTable();
      v44 = v76;
      sub_1C2C78970(v58, v59, v60);
      (*(v67 + 8))(v58, v60);
      v57(v82, v52);

      goto LABEL_6;
    }
  }

  v97 = a1;
  v98 = v72;
  v99 = v73;
  v27 = type metadata accessor for IconButton();
  sub_1C2CACB24(v27, v21);
  v97 = v6;
  v98 = v7;
  v99 = WitnessTable;
  v100 = v9;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v87 = v28;
  v88 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v85 = v30;
  v86 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v83 = v32;
  v84 = v33;
  v34 = v71;
  v35 = swift_getWitnessTable();
  v36 = v74;
  v37 = *(v74 + 16);
  v38 = v82;
  v37(v82, v21, v34);
  v75 = *(v36 + 8);
  v75(v21, v34);
  v97 = a1;
  v39 = swift_getWitnessTable();
  (*(*(v15 - 8) + 16))(&v96, &v97, v15);

  v37(v21, v38, v34);
  v95[0] = v96;
  v97 = v21;
  v98 = v95;

  v93 = v34;
  v94 = v15;
  v91 = v35;
  v92 = v39;
  v40 = v68;
  sub_1C2C6EC40(&v97, 2uLL, &v93);

  v41 = v21;
  v42 = v75;
  v75(v41, v34);
  v43 = v79;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v44 = v76;
  sub_1C2C76E34(v40, v43);
  (*(v69 + 8))(v40, v43);

  v42(v82, v34);
LABEL_6:
  v61 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v89 = v61;
  v90 = v62;
  v63 = v78;
  swift_getWitnessTable();
  v64 = v77;
  (*(v77 + 16))(v81, v44, v63);
  return (*(v64 + 8))(v44, v63);
}

uint64_t sub_1C2CACB24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v4 = sub_1C2E73D84();
  v96 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v95 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = v73 - v7;
  v90 = sub_1C2E730D4();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = type metadata accessor for IconButton.IconView();
  WitnessTable = swift_getWitnessTable();
  v83 = v10;
  v78 = WitnessTable;
  v12 = sub_1C2E751F4();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = v73 - v13;
  v77 = v9;
  v14 = type metadata accessor for IconButton.ButtonStyle();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v107 = v12;
  v108 = v14;
  v73[1] = v14;
  v80 = v15;
  v109 = v15;
  v110 = v16;
  v75 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v74 = v73 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v79 = OpaqueTypeMetadata2;
  v19 = sub_1C2E73654();
  v84 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v81 = v73 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v21 = sub_1C2E73654();
  v86 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v99 = v73 - v22;
  sub_1C2E74384();
  v87 = v21;
  v23 = sub_1C2E73654();
  v93 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v100 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v91 = v73 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v92 = v73 - v28;
  v30 = *v2;
  v29 = v2[1];
  v31 = v2[2];
  v97 = v4;
  if (v29)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    *(v32 + 24) = v31;
    v33 = sub_1C2CB2CC0;
  }

  else
  {
    v34 = (v30 + *(*v30 + 152));
    v35 = *v34;
    v36 = v34[1];
    v32 = swift_allocObject();
    *(v32 + 16) = v35;
    *(v32 + 24) = v36;

    v33 = sub_1C2CB1B14;
  }

  v37 = v33;
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v32;
  MEMORY[0x1EEE9AC00](v38);
  v73[-4] = v77;
  v73[-3] = v30;
  v73[-2] = v29;
  v73[-1] = v31;
  sub_1C2C6EE50(v29);
  v39 = v82;
  sub_1C2E751C4();
  v107 = v30;

  v40 = swift_checkMetadataState();
  v41 = v74;
  v42 = v80;
  v43 = v75;
  sub_1C2E74984();

  (*(v85 + 8))(v39, v12);
  IconButtonConfig.enabled.getter();
  v107 = v12;
  v108 = v40;
  v109 = v42;
  v110 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v81;
  v46 = v79;
  sub_1C2E74DB4();
  (*(v76 + 8))(v41, v46);
  v47 = v89;
  v48 = v88;
  v49 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x1E697DBB8], v90);
  v50 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v105 = OpaqueTypeConformance2;
  v106 = v50;
  v51 = swift_getWitnessTable();
  sub_1C2E74994();
  (*(v47 + 8))(v48, v49);
  v52 = (*(v84 + 8))(v45, v19);
  v53 = IconButtonConfig.accessibilityIsToggle.getter(v52);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    v55 = v94;
    sub_1C2E73D64();
    v56 = v97;
  }

  else
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C2C6E9FC(&qword_1EC05B5D8, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD20);
    sub_1C2C94F38(&unk_1EC05B270, &qword_1EC05DD20);
    v55 = v94;
    v56 = v97;
    sub_1C2E76464();
  }

  v57 = v96;
  v58 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v103 = v51;
  v104 = v58;
  v59 = v87;
  v60 = swift_getWitnessTable();
  v61 = v99;
  sub_1C2E74C84();
  v62 = *(v57 + 8);
  v62(v55, v56);
  v63 = (*(v86 + 8))(v61, v59);
  if (IconButtonConfig.accessibilityIsToggle.getter(v63))
  {
    v64 = v95;
    sub_1C2E73D74();
  }

  else
  {
    v107 = v54;
    sub_1C2C6E9FC(&qword_1EC05B5D8, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD20);
    sub_1C2C94F38(&unk_1EC05B270, &qword_1EC05DD20);
    v64 = v95;
    sub_1C2E76464();
  }

  v65 = v91;
  v66 = v100;
  sub_1C2E73644();
  v62(v64, v56);
  v67 = v93;
  v68 = *(v93 + 8);
  v68(v66, v23);
  v69 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v101 = v60;
  v102 = v69;
  swift_getWitnessTable();
  v70 = *(v67 + 16);
  v71 = v92;
  v70(v92, v65, v23);
  v68(v65, v23);
  v70(v98, v71, v23);
  return (v68)(v71, v23);
}

uint64_t sub_1C2CAD700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for IconButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for IconButton.IconView();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = *(a1 + *(*a1 + 136));
  (*(v5 + 16))(v7, a1 + *(*a1 + 128), v4);
  sub_1C2CAD944(v15, v7, v12);
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);

  v17(v12, v8);
  v16(a2, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_1C2CAD944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IconButton.IconView() + 28);
  v6 = type metadata accessor for IconButtonStyle();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1C2CAD9E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v53 = a7;
  v12 = sub_1C2E75214();
  v48 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v16;
  v17 = a5;
  v18 = sub_1C2E752E4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v25 = sub_1C2E73F54();
  v55 = *(v25 - 8);
  v56 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v54 = &v47 - v26;
  v27 = a1;
  v28 = sub_1C2E744C4();
  v29 = sub_1C2E744C4();
  if (v28 == v29 || (v30 = sub_1C2E744C4(), v29 = sub_1C2E744C4(), v30 == v29))
  {
    v49 = v12;
    MEMORY[0x1EEE9AC00](v29);
    v31 = v51;
    *(&v47 - 8) = v50;
    *(&v47 - 7) = v17;
    *(&v47 - 6) = a6;
    *(&v47 - 40) = v27;
    *(&v47 - 4) = a8;
    v32 = v52;
    *(&v47 - 3) = v31;
    *(&v47 - 2) = v32;
    sub_1C2E73DC4();
    sub_1C2E752D4();
    swift_getWitnessTable();
    v33 = *(v19 + 16);
    v33(v24, v22, v18);
    v34 = *(v19 + 8);
    v34(v22, v18);
    v33(v22, v24, v18);
    swift_getWitnessTable();
    v35 = v54;
    sub_1C2C76E34(v22, v18);
    v34(v22, v18);
    v34(v24, v18);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v29);
    v36 = v51;
    *(&v47 - 8) = v50;
    *(&v47 - 7) = v17;
    *(&v47 - 6) = a6;
    *(&v47 - 40) = v27;
    *(&v47 - 4) = a8;
    v37 = v52;
    *(&v47 - 3) = v36;
    *(&v47 - 2) = v37;
    sub_1C2E73C24();
    sub_1C2E75204();
    swift_getWitnessTable();
    v38 = v48;
    v39 = v49;
    v40 = *(v48 + 16);
    v40(v49, v15, v12);
    v41 = *(v38 + 8);
    v41(v15, v12);
    v40(v15, v39, v12);
    swift_getWitnessTable();
    v35 = v54;
    sub_1C2C78970(v15, v18, v12);
    v41(v15, v12);
    v41(v39, v12);
  }

  WitnessTable = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v43;
  v44 = v56;
  swift_getWitnessTable();
  v45 = v55;
  (*(v55 + 16))(v53, v35, v44);
  return (*(v45 + 8))(v35, v44);
}

uint64_t sub_1C2CADF9C@<X0>(uint64_t a1@<X4>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11(v8);
  v12 = *(v4 + 16);
  v12(v10, v7, a1);
  v13 = *(v4 + 8);
  v13(v7, a1);
  v12(a2, v10, a1);
  return (v13)(v10, a1);
}

uint64_t sub_1C2CAE0F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC78);
  sub_1C2CB152C();
  return sub_1C2E74074();
}

uint64_t sub_1C2CAE170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v84 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC98);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC90);
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCC8);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v69 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC88);
  MEMORY[0x1EEE9AC00](v71);
  v79 = &v69 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC80);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v69 - v16;
  v17 = type metadata accessor for IconButton.IconView();
  sub_1C2CAEB7C(v17, v8);
  v18 = (a1 + *(v17 + 28));
  v19 = v18[5];
  v137 = v18[4];
  v138 = v19;
  v139 = v18[6];
  v20 = v18[1];
  v133 = *v18;
  v134 = v20;
  v21 = v18[3];
  v135 = v18[2];
  v136 = v21;
  v121 = v133;
  v122 = v20;
  v126 = v19;
  v127 = v139;
  v123 = v135;
  v124 = v21;
  v125 = v137;
  v22 = v17;
  v23 = type metadata accessor for IconButtonStyle.SystemSymbol();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v89 = v23;
  v85 = v25;
  v80 = v24 + 16;
  (v25)(v132, &v133);
  v131[5] = v126;
  v131[4] = v125;
  v131[6] = v127;
  v131[0] = v121;
  v131[1] = v122;
  v131[3] = v124;
  v131[2] = v123;
  v26 = v126;
  sub_1C2C6EE50(v126);
  v90 = a2;
  v27 = type metadata accessor for IconButtonStyle.SystemSymbol();
  v28 = *(v27 - 8);
  v87 = *(v28 + 8);
  v88 = v27;
  v86 = v28 + 8;
  v87(v131);
  if (v26)
  {
    v29 = v83;
    StateHolder.state.getter(v83);
    v30 = v26(v29);
    sub_1C2C71668(v26);
    (*(v84 + 8))(v29, v90);
  }

  else
  {
    v30 = 0;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2CB1930(v8, v10);
  v32 = v73;
  v33 = &v10[*(v73 + 36)];
  *v33 = KeyPath;
  v33[1] = v30;
  v34 = (a1 + *(v22 + 28));
  v35 = v34[5];
  v137 = v34[4];
  v138 = v35;
  v139 = v34[6];
  v36 = v34[1];
  v133 = *v34;
  v134 = v36;
  v37 = v34[3];
  v135 = v34[2];
  v136 = v37;
  v113 = v133;
  v114 = v36;
  v118 = v35;
  v119 = v139;
  v115 = v135;
  v116 = v37;
  v117 = v137;
  v85(v132, &v133, v89);
  v120[5] = v118;
  v120[6] = v119;
  v120[0] = v113;
  v120[1] = v114;
  v120[3] = v116;
  v120[4] = v117;
  v120[2] = v115;
  v38 = v119;
  sub_1C2C6EE50(v119);
  (v87)(v120, v88);
  if (v38)
  {
    v39 = v83;
    StateHolder.state.getter(v83);
    v38(v39);
    sub_1C2C71668(v38);
    (*(v84 + 8))(v39, v90);
  }

  v40 = sub_1C2CB17A0();
  v41 = v70;
  sub_1C2E74934();
  sub_1C2C73644(v10, &qword_1EC05DC98);
  sub_1C2E74594();
  *&v133 = v32;
  *(&v133 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v72;
  v43 = v75;
  sub_1C2E74934();
  (*(v74 + 8))(v41, v43);
  type metadata accessor for IconButtonStyle();
  sub_1C2E75744();
  sub_1C2E73274();
  v44 = v79;
  (*(v76 + 32))(v79, v42, v77);
  v45 = (v44 + *(v71 + 36));
  v46 = v129;
  *v45 = v128;
  v45[1] = v46;
  v45[2] = v130;
  v47 = (a1 + *(v22 + 28));
  v48 = v47[5];
  v137 = v47[4];
  v138 = v48;
  v139 = v47[6];
  v49 = v47[1];
  v133 = *v47;
  v134 = v49;
  v50 = v47[3];
  v135 = v47[2];
  v136 = v50;
  v106 = v133;
  v107 = v49;
  v111 = v48;
  v112 = v139;
  v108 = v135;
  v109 = v50;
  v110 = v137;
  v69 = v22;
  v51 = v85;
  v85(v132, &v133, v89);
  v105[4] = v110;
  v105[5] = v111;
  v105[6] = v112;
  v105[0] = v106;
  v105[1] = v107;
  v105[2] = v108;
  v105[3] = v109;
  v52 = v107;

  (v87)(v105, v88);
  v53 = v83;
  StateHolder.state.getter(v83);
  v54 = v52(v53);

  v84 = *(v84 + 8);
  (v84)(v53, v90);
  v55 = v81;
  sub_1C2C71D5C(v44, v81, &qword_1EC05DC88);
  *(v55 + *(v78 + 36)) = v54;
  v56 = (a1 + *(v22 + 28));
  v57 = v56[5];
  v137 = v56[4];
  v138 = v57;
  v139 = v56[6];
  v58 = v56[1];
  v133 = *v56;
  v134 = v58;
  v59 = v56[3];
  v135 = v56[2];
  v136 = v59;
  v98 = v133;
  v99 = v58;
  v103 = v57;
  v104 = v139;
  v100 = v135;
  v101 = v59;
  v102 = v137;
  v51(v132, &v133, v89);
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  v106 = v98;
  v107 = v99;
  v60 = v100;

  (v87)(&v106, v88);
  StateHolder.state.getter(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC78);
  v61 = v90;
  v60(v53);

  v62 = v84;
  (v84)(v53, v61);
  v63 = (a1 + *(v69 + 28));
  v64 = v63[5];
  v137 = v63[4];
  v138 = v64;
  v139 = v63[6];
  v65 = v63[1];
  v133 = *v63;
  v134 = v65;
  v66 = v63[3];
  v135 = v63[2];
  v136 = v66;
  v91 = v133;
  v92 = v65;
  v96 = v64;
  v97 = v139;
  v93 = v135;
  v94 = v66;
  v95 = v137;
  v85(v132, &v133, v89);
  v137 = v95;
  v138 = v96;
  v139 = v97;
  v133 = v91;
  v134 = v92;
  v135 = v93;
  v136 = v94;
  v67 = v94;

  (v87)(&v133, v88);
  StateHolder.state.getter(v53);
  type metadata accessor for OptionalBackground();
  v67(v53);

  v62(v53, v61);
  return sub_1C2C71D5C(v81, v82, &qword_1EC05DC80);
}

uint64_t sub_1C2CAEB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCD0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v46 - v4);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v50 = (&v46 - v6);
  v7 = *(a1 + 16);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E750B4();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v52 = a1;
  v14 = v2;
  v15 = (v2 + *(a1 + 28));
  v16 = v15[5];
  v82 = v15[4];
  v83 = v16;
  v84 = v15[6];
  v17 = v15[1];
  v78 = *v15;
  v79 = v17;
  v18 = v15[3];
  v80 = v15[2];
  v81 = v18;
  v69 = v78;
  v70 = v17;
  v74 = v16;
  v75 = v84;
  v71 = v80;
  v72 = v18;
  v73 = v82;
  v61 = v7;
  v19 = type metadata accessor for IconButtonStyle.SystemSymbol();
  v20 = *(v19 - 8);
  v51 = *(v20 + 16);
  v51(v77, &v78, v19);
  v76[4] = v73;
  v76[5] = v74;
  v76[6] = v75;
  v76[0] = v69;
  v76[1] = v70;
  v76[2] = v71;
  v76[3] = v72;
  v21 = v73;
  sub_1C2C6EE50(v73);
  v22 = *(v20 + 8);
  v22(v76, v19);
  if (v21)
  {
    v23 = *v2;
    v47 = v22;
    v48 = v23;
    v46 = v19;
    v24 = v53;
    StateHolder.state.getter(v53);
    v25 = v49;
    v21(v24);
    sub_1C2C71668(v21);
    v54 = *(v54 + 8);
    (v54)(v24, v61);
    (*(v59 + 32))(v13, v25, v60);
    v26 = (v14 + *(v52 + 28));
    v27 = v26[5];
    v82 = v26[4];
    v83 = v27;
    v84 = v26[6];
    v28 = v26[1];
    v78 = *v26;
    v79 = v28;
    v29 = v26[3];
    v80 = v26[2];
    v81 = v29;
    v62 = v78;
    v63 = v28;
    v67 = v27;
    v68 = v84;
    v64 = v80;
    v65 = v29;
    v66 = v82;
    v30 = v46;
    v51(v77, &v78, v46);
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v78 = v62;
    v79 = v63;
    v80 = v64;
    v81 = v65;
    v31 = v62;

    v47(&v78, v30);
    StateHolder.state.getter(v24);
    v31(v24);

    (v54)(v24, v61);
    v32 = sub_1C2E75044();
    KeyPath = swift_getKeyPath();
    v34 = v50;
    v35 = (v50 + *(v56 + 36));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0);
    v37 = v59;
    v38 = v60;
    (*(v59 + 16))(v35 + *(v36 + 28), v13, v60);
    *v35 = KeyPath;
    *v34 = v32;
    sub_1C2C736A4(v34, v57, &qword_1EC05DCA8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C76D5C();
    sub_1C2E73F44();
    sub_1C2C73644(v34, &qword_1EC05DCA8);
    return (*(v37 + 8))(v13, v38);
  }

  else
  {
    v40 = (v2 + *(v52 + 28));
    v41 = v40[5];
    v82 = v40[4];
    v83 = v41;
    v84 = v40[6];
    v42 = v40[1];
    v78 = *v40;
    v79 = v42;
    v43 = v40[3];
    v80 = v40[2];
    v81 = v43;
    v62 = v78;
    v63 = v42;
    v67 = v41;
    v68 = v84;
    v64 = v80;
    v65 = v43;
    v66 = v82;
    v51(v77, &v78, v19);
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v78 = v62;
    v79 = v63;
    v80 = v64;
    v81 = v65;
    v44 = v62;

    v22(&v78, v19);
    v45 = v53;
    StateHolder.state.getter(v53);
    v44(v45);

    (*(v54 + 8))(v45, v61);
    *v57 = sub_1C2E75044();
    swift_storeEnumTagMultiPayload();
    sub_1C2C76D5C();
    return sub_1C2E73F44();
  }
}

uint64_t sub_1C2CAF208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C2CB8C20();
  if (v5)
  {
    sub_1C2C74960();

    v6 = sub_1C2E748A4();
    v28 = v7;
    v29 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v13 = a1 + *(*a1 + 128);
    v14 = type metadata accessor for IconButtonStyle();
    v15 = *(v13 + v14[10]);
    v16 = swift_getKeyPath();
    v17 = v9 & 1;
    v18 = *(v13 + v14[9]);
    v19 = swift_getKeyPath();
    v20 = (v13 + v14[14]);
    v27 = *v20;
    v21 = *(v20 + 16);

    v22 = v27;
    v23 = v11;
    v24 = v28;
    v25 = v29;
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    KeyPath = 0;
    v16 = 0;
    v15 = 0;
    v19 = 0;
    v18 = 0;
    v21 = 0;
    v26 = 0;
    v17 = 0;
    v22 = 0uLL;
  }

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v17;
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v26;
  *(a2 + 48) = v16;
  *(a2 + 56) = v15;
  *(a2 + 64) = v19;
  *(a2 + 72) = v18;
  *(a2 + 80) = v22;
  *(a2 + 96) = v21;
  return result;
}

uint64_t sub_1C2CAF3A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28[0] = a1;
  v28[1] = a2;
  v4 = sub_1C2E73C54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E741B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E741C4();
  sub_1C2E73C44();
  sub_1C2C6E9FC(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
  sub_1C2C6E9FC(&qword_1EC05B600, MEMORY[0x1E697C4E8]);
  sub_1C2E74954();
  v12 = v4;
  v13 = v28[0];
  (*(v5 + 8))(v7, v12);
  (*(v9 + 8))(v11, v8);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCD8) + 36)) = 256;
  v14 = 0.5;
  if (IconButtonConfig.enabled.getter())
  {
    if (sub_1C2E741D4())
    {
      v14 = 0.75;
    }

    else
    {
      v14 = 1.0;
    }
  }

  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCE0) + 36)) = v14;
  KeyPath = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCE8) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v18 = *MEMORY[0x1E697DBB8];
  v19 = sub_1C2E730D4();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v20 = sub_1C2E75744();
  v22 = v21;
  sub_1C2CAF79C(v13, &v35);
  *(v34 + 9) = *(v39 + 9);
  v33 = v38;
  v34[0] = v39[0];
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v42 = v37;
  v43 = v38;
  v40 = v35;
  v41 = v36;
  v44 = v39[0];
  v45 = v34[1];
  *&v46 = v20;
  *(&v46 + 1) = v22;
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCF0) + 36));
  v24 = v45;
  v23[4] = v44;
  v23[5] = v24;
  v23[6] = v46;
  v25 = v41;
  *v23 = v40;
  v23[1] = v25;
  v26 = v43;
  v23[2] = v42;
  v23[3] = v26;
  v47[0] = v30;
  v47[1] = v31;
  v47[4] = v34[0];
  v47[5] = v34[1];
  v47[2] = v32;
  v47[3] = v33;
  v48 = v20;
  v49 = v22;
  sub_1C2C736A4(&v40, &v29, &qword_1EC05DCF8);
  return sub_1C2C73644(v47, &qword_1EC05DCF8);
}

uint64_t sub_1C2CAF79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E74EF4();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v11[6] = v12;
  *&v11[22] = v13;
  *&v11[38] = v14;
  v5 = a1 + *(*a1 + 128);
  v6 = *(v5 + *(type metadata accessor for IconButtonStyle() + 52)) * 0.5;
  v7 = v6 * 0.5;
  v8 = v6 * -0.866025404;
  result = IconButtonConfig.hasBadge.getter();
  *(a2 + 10) = *v11;
  v10 = 0.0;
  if (result)
  {
    v10 = 0.85;
  }

  *a2 = v4;
  *(a2 + 8) = 256;
  *(a2 + 26) = *&v11[16];
  *(a2 + 42) = *&v11[32];
  *(a2 + 56) = *(&v14 + 1);
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1C2CAF8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v54 = a3;
  swift_getWitnessTable();
  v4 = sub_1C2E74094();
  v51 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(a2 + 16);
  v47 = *(a2 + 24);
  v48 = &v44 - v8;
  v58 = sub_1C2E741F4();
  v9 = sub_1C2E73654();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v13;
  v14 = sub_1C2E76424();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C2E73F54();
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v44 - v23;
  (*(v15 + 16))(v18, v53, v14);
  if ((*(v19 + 48))(v18, 1, v7) == 1)
  {
    (*(v15 + 8))(v18, v14);
    WitnessTable = swift_getWitnessTable();
    v25 = v51;
    v26 = *(v51 + 16);
    v27 = v48;
    v26(v48, v52, v4);
    v28 = v50;
    v26(v50, v27, v4);
    v29 = swift_getWitnessTable();
    v65 = WitnessTable;
    v66 = v29;
    swift_getWitnessTable();
    v30 = v55;
    sub_1C2C78970(v28, v9, v4);
    v31 = *(v25 + 8);
    v31(v28, v4);
    v31(v27, v4);
  }

  else
  {
    v45 = v19;
    v32 = *(v19 + 32);
    v44 = v21;
    v32(v21, v18, v7);
    v33 = swift_getWitnessTable();
    v53 = v33;
    sub_1C2E74A94();
    v34 = swift_getWitnessTable();
    v59 = v33;
    v60 = v34;
    v52 = swift_getWitnessTable();
    v35 = v49;
    v36 = *(v49 + 16);
    v37 = v46;
    v36(v46, v12, v9);
    v38 = *(v35 + 8);
    v38(v12, v9);
    v36(v12, v37, v9);
    v30 = v55;
    sub_1C2C76E34(v12, v9);
    v38(v12, v9);
    v38(v37, v9);
    (*(v45 + 8))(v44, v7);
  }

  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v63 = v39;
  v64 = v40;
  v61 = swift_getWitnessTable();
  v62 = v39;
  v41 = v57;
  swift_getWitnessTable();
  v42 = v56;
  (*(v56 + 16))(v54, v30, v41);
  return (*(v42 + 8))(v30, v41);
}

uint64_t sub_1C2CAFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v52 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v41 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDC8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDD0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v41 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0);
  MEMORY[0x1EEE9AC00](v53);
  v45 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDD8);
  v8 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_1C2E75364();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OptionalBackground();
  sub_1C2C736A4(a2 + *(v18 + 20), v13, &qword_1EC05DD28);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = v47;
    v20 = v48;
    v21 = v49;
    sub_1C2C73644(v13, &qword_1EC05DD28);
    sub_1C2C736A4(a2, &v54, &qword_1EC05DDC0);
    if (v56)
    {
      sub_1C2C716EC(&v54, v57);
      v22 = __swift_project_boxed_opaque_existential_1(v57, v58);
      MEMORY[0x1EEE9AC00](v22);
      (*(v24 + 16))(&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = sub_1C2E73284();
      v26 = sub_1C2E74454();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
      v28 = v43;
      (*(*(v27 - 8) + 16))(v43, v20, v27);
      v29 = v28 + *(v21 + 36);
      *v29 = v25;
      *(v29 + 8) = v26;
      sub_1C2C736A4(v28, v19, &qword_1EC05DDA8);
      swift_storeEnumTagMultiPayload();
      v30 = sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
      v31 = sub_1C2CB2AB4();
      *&v54 = v27;
      *(&v54 + 1) = MEMORY[0x1E69817E8];
      v55 = v30;
      v56 = v31;
      swift_getOpaqueTypeConformance2();
      sub_1C2CB2B08();
      v32 = v45;
      sub_1C2E73F44();
      sub_1C2C82810(v32, v50);
      swift_storeEnumTagMultiPayload();
      sub_1C2CB29A4();
      sub_1C2E73F44();
      sub_1C2C82880(v32);
      sub_1C2C73644(v28, &qword_1EC05DDA8);
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {
      sub_1C2C73644(&v54, &qword_1EC05DDC0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
      (*(*(v40 - 8) + 16))(v50, v20, v40);
      swift_storeEnumTagMultiPayload();
      sub_1C2CB29A4();
      sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
      return sub_1C2E73F44();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
    v35 = sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    v36 = sub_1C2CB2AB4();
    v42 = v10;
    sub_1C2E749D4();
    v37 = v10;
    v38 = v46;
    (*(v8 + 16))(v47, v37, v46);
    swift_storeEnumTagMultiPayload();
    v57[0] = v34;
    v57[1] = MEMORY[0x1E69817E8];
    v57[2] = v35;
    v58 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C2CB2B08();
    v39 = v45;
    sub_1C2E73F44();
    sub_1C2C82810(v39, v50);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB29A4();
    sub_1C2E73F44();
    sub_1C2C82880(v39);
    (*(v8 + 8))(v42, v38);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1C2CB07E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDB8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  sub_1C2C736A4(a2, &v22, &qword_1EC05DDC0);
  if (v23)
  {
    sub_1C2C716EC(&v22, v24);
    v12 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v21[1] = a3;
    MEMORY[0x1EEE9AC00](v12);
    (*(v14 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = sub_1C2E73284();
    v16 = sub_1C2E74454();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
    (*(*(v17 - 8) + 16))(v8, a1, v17);
    v18 = &v8[*(v6 + 36)];
    *v18 = v15;
    v18[8] = v16;
    sub_1C2C736A4(v8, v11, &qword_1EC05DDA8);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    sub_1C2E73F44();
    sub_1C2C73644(v8, &qword_1EC05DDA8);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1C2C73644(&v22, &qword_1EC05DDC0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
    (*(*(v20 - 8) + 16))(v11, a1, v20);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    return sub_1C2E73F44();
  }
}

uint64_t sub_1C2CB0B90()
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD98);
  sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
  sub_1C2CB28EC();
  sub_1C2CB2BEC();
  return sub_1C2E74E04();
}

uint64_t sub_1C2CB0CC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD00);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD08);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  if (*(v1 + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD10);
    (*(*(v9 - 8) + 16))(v5, a1, v9);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10);
    return sub_1C2E73F44();
  }

  else
  {
    sub_1C2E75744();
    sub_1C2E73274();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD10);
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD18) + 36)];
    v13 = v14[1];
    *v12 = v14[0];
    *(v12 + 1) = v13;
    *(v12 + 2) = v14[2];
    *&v8[*(v6 + 36)] = 1;
    sub_1C2C736A4(v8, v5, &qword_1EC05DD08);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10);
    sub_1C2E73F44();
    return sub_1C2C73644(v8, &qword_1EC05DD08);
  }
}

uint64_t sub_1C2CB0FF0(uint64_t a1)
{
  v2 = sub_1C2E750B4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C2E738A4();
}

uint64_t sub_1C2CB10FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2CB1170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C2CB11B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidhRestrictionModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WidhRestrictionModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C2CB126C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2CB12A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2CB12F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C2CB1338()
{
  result = type metadata accessor for StateHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IconButtonStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2CB152C()
{
  result = qword_1EC05B6A8;
  if (!qword_1EC05B6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC78);
    sub_1C2CB15E8();
    sub_1C2C6E9FC(qword_1EC05C220, type metadata accessor for OptionalBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6A8);
  }

  return result;
}

unint64_t sub_1C2CB15E8()
{
  result = qword_1EC05B740;
  if (!qword_1EC05B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC80);
    sub_1C2CB16A0();
    sub_1C2C94F38(qword_1EC05BF38, &qword_1EC05DCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B740);
  }

  return result;
}

unint64_t sub_1C2CB16A0()
{
  result = qword_1EC05B8C0;
  if (!qword_1EC05B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC98);
    sub_1C2CB17A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8C0);
  }

  return result;
}

unint64_t sub_1C2CB17A0()
{
  result = qword_1EC05B978;
  if (!qword_1EC05B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC98);
    sub_1C2CB1858();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B978);
  }

  return result;
}

unint64_t sub_1C2CB1858()
{
  result = qword_1EC05B5A8;
  if (!qword_1EC05B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCA0);
    sub_1C2C76D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5A8);
  }

  return result;
}

uint64_t type metadata accessor for OptionalBackground()
{
  result = qword_1EC05C210;
  if (!qword_1EC05C210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2CB1930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2CB19D0()
{
  result = qword_1EC05B7B0;
  if (!qword_1EC05B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD08);
    sub_1C2CB1A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7B0);
  }

  return result;
}

unint64_t sub_1C2CB1A5C()
{
  result = qword_1EC05B940;
  if (!qword_1EC05B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD18);
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B940);
  }

  return result;
}

void sub_1C2CB1B58()
{
  sub_1C2CB1BDC();
  if (v0 <= 0x3F)
  {
    sub_1C2CB1C40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2CB1BDC()
{
  if (!qword_1EC05BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD30);
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BAC0);
    }
  }
}

void sub_1C2CB1C40()
{
  if (!qword_1EC05B328)
  {
    sub_1C2E75364();
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05B328);
    }
  }
}

uint64_t sub_1C2CB1CA0()
{
  result = sub_1C2E76424();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2CB1D10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1C2CB1E90(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_1C2CB20D4()
{
  result = qword_1EC05B650;
  if (!qword_1EC05B650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCF0);
    sub_1C2CB218C();
    sub_1C2C94F38(&qword_1EC05B608, &qword_1EC05DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B650);
  }

  return result;
}

unint64_t sub_1C2CB218C()
{
  result = qword_1EC05B6A0;
  if (!qword_1EC05B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCE8);
    sub_1C2CB2244();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6A0);
  }

  return result;
}

unint64_t sub_1C2CB2244()
{
  result = qword_1EC05B738;
  if (!qword_1EC05B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCE0);
    sub_1C2CB22D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B738);
  }

  return result;
}

unint64_t sub_1C2CB22D0()
{
  result = qword_1EC05B8B8;
  if (!qword_1EC05B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCD8);
    sub_1C2E741B4();
    sub_1C2E73C54();
    sub_1C2C6E9FC(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
    sub_1C2C6E9FC(&qword_1EC05B600, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05BA78, &qword_1EC05DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8B8);
  }

  return result;
}

unint64_t sub_1C2CB2438()
{
  result = qword_1EC05B5A0;
  if (!qword_1EC05B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD48);
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5A0);
  }

  return result;
}

unint64_t sub_1C2CB24F0()
{
  result = qword_1EC05B658;
  if (!qword_1EC05B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD50);
    sub_1C2CB2574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B658);
  }

  return result;
}

unint64_t sub_1C2CB2574()
{
  result = qword_1EC05B660;
  if (!qword_1EC05B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD58);
    sub_1C2CB2600();
    sub_1C2CB2828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B660);
  }

  return result;
}

unint64_t sub_1C2CB2600()
{
  result = qword_1EC05B6B0;
  if (!qword_1EC05B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD60);
    sub_1C2CB26B8();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6B0);
  }

  return result;
}

unint64_t sub_1C2CB26B8()
{
  result = qword_1EC05B778;
  if (!qword_1EC05B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD68);
    sub_1C2CB2770();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B778);
  }

  return result;
}

unint64_t sub_1C2CB2770()
{
  result = qword_1EC05B8E0;
  if (!qword_1EC05B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD70);
    sub_1C2C94F38(&qword_1EC05B458, &qword_1EC05DD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8E0);
  }

  return result;
}

unint64_t sub_1C2CB2828()
{
  result = qword_1EC05BE88;
  if (!qword_1EC05BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE88);
  }

  return result;
}

unint64_t sub_1C2CB28EC()
{
  result = qword_1EC05B520;
  if (!qword_1EC05B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD90);
    sub_1C2CB29A4();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B520);
  }

  return result;
}

unint64_t sub_1C2CB29A4()
{
  result = qword_1EC05B550;
  if (!qword_1EC05B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DDA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD88);
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    sub_1C2CB2AB4();
    swift_getOpaqueTypeConformance2();
    sub_1C2CB2B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B550);
  }

  return result;
}

unint64_t sub_1C2CB2AB4()
{
  result = qword_1EC05B398;
  if (!qword_1EC05B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B398);
  }

  return result;
}

unint64_t sub_1C2CB2B08()
{
  result = qword_1EC05B928;
  if (!qword_1EC05B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DDA8);
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    sub_1C2C94F38(&qword_1EC05B478, &qword_1EC05DDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B928);
  }

  return result;
}

unint64_t sub_1C2CB2BEC()
{
  result = qword_1EC05B5C0;
  if (!qword_1EC05B5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD98);
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5C0);
  }

  return result;
}

uint64_t sub_1C2CB2CC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_1C2CB2D08(unint64_t a1)
{
  v3 = [v1 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v4 = sub_1C2E75D74();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6927010](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  *&v23[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = a1;

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v26 = MEMORY[0x1E69E7CC0];

      result = sub_1C2CA4D04(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        break;
      }

      v12 = 0;
      v13 = v26;
      v14 = a1;
      v21 = a1 & 0xFFFFFFFFFFFFFF8;
      v22 = a1 & 0xC000000000000001;
      v15 = a1;
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v22)
        {
          v17 = MEMORY[0x1C6927010](v12, v14);
        }

        else
        {
          if (v12 >= *(v21 + 16))
          {
            goto LABEL_28;
          }

          v17 = *(v14 + 8 * v12 + 32);
        }

        v18 = v17;
        v24 = v17;
        sub_1C2CB2FC0(&v24, v23, &v25);

        v19 = v25;
        v26 = v13;
        a1 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (a1 >= v20 >> 1)
        {
          sub_1C2CA4D04((v20 > 1), a1 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = a1 + 1;
        *(v13 + 8 * a1 + 32) = v19;
        ++v12;
        v14 = v15;
        if (v16 == v10)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v10 = sub_1C2E764E4();
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *&v23[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v13;
  }

  return result;
}

void sub_1C2CB2FC0(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  [*a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setHidden_];
  [a2 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7B940;
  v7 = [v5 topAnchor];
  v8 = [a2 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v5 centerXAnchor];
  v11 = [a2 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v5 leadingAnchor];
  v14 = [a2 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v5 trailingAnchor];
  v17 = [a2 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = [v5 bottomAnchor];
  v20 = [a2 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 64) = v21;
  *a3 = v6;
}

void sub_1C2CB3250(unint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views;
  v6 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views];
  if (v6 >> 62)
  {
    v7 = sub_1C2E764E4();
    if ((a1 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a1 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  if (v7 <= a1)
  {
    return;
  }

  v8 = *&v2[v5];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x1C6927010](a1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v9 = *(v8 + 8 * a1 + 32);
  }

  v10 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView;
  v11 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView];
  if (v11)
  {
    v12 = v2;
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v33 = v9;
    v13 = v11;
    v14 = sub_1C2E76234();

    if (v14)
    {

LABEL_23:

      return;
    }

    v2 = v12;
    v16 = *&v12[v10];
  }

  else
  {
    v15 = v9;
    v16 = 0;
  }

  *&v2[v10] = v9;
  v17 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints];
  if (*(v17 + 16) <= a1)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v18 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints];
  *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = *(v17 + 8 * a1 + 32);
  v19 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  swift_bridgeObjectRetain_n();
  v20 = sub_1C2E75D64();

  [v19 activateConstraints_];

  [v2 layoutIfNeeded];
  [v9 setAlpha_];
  [v9 setHidden_];
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  if (a2)
  {
    v23 = objc_opt_self();
    v38 = sub_1C2CB3EF8;
    v39 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2CB2CC4;
    v37 = &block_descriptor_0;
    v24 = _Block_copy(&aBlock);
    v25 = v16;
    v26 = v9;
    v27 = v25;

    v38 = sub_1C2CB3F48;
    v39 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2CB3840;
    v37 = &block_descriptor_6;
    v28 = _Block_copy(&aBlock);

    [v23 animateWithDuration:0 delay:v24 options:v28 animations:0.15 completion:0.0];

    _Block_release(v28);
    _Block_release(v24);
    return;
  }

  v32 = v19;

  v29 = v16;
  v30 = v9;
  v33 = v29;
  [v33 setAlpha_];
  [v30 setAlpha_];
  if (v16)
  {
    [v33 setHidden_];
    [v33 setAlpha_];
  }

  if (!v18)
  {

    goto LABEL_23;
  }

  v31 = sub_1C2E75D64();
  [v32 deactivateConstraints_];
}

void sub_1C2CB3768(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    [a2 setHidden_];
    [a2 setAlpha_];
  }

  if (a3)
  {
    v5 = objc_opt_self();
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v6 = sub_1C2E75D64();
    [v5 deactivateConstraints_];
  }
}

uint64_t sub_1C2CB3840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1C2CB3894(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView];
  if (v2)
  {
    *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
    v4 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints;
    if (*&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints])
    {
      v5 = objc_opt_self();
      sub_1C2C6E1B4(0, &qword_1EC062670);

      v6 = sub_1C2E75D64();

      [v5 deactivateConstraints_];

      *&v1[v4] = 0;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    if (a1)
    {
      v9 = objc_opt_self();
      v20 = sub_1C2CB3F68;
      v21 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1C2CB2CC4;
      v19 = &block_descriptor_15;
      v10 = _Block_copy(&aBlock);
      v11 = v2;
      v12 = v1;

      v20 = sub_1C2CB3FB4;
      v21 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1C2CB3840;
      v19 = &block_descriptor_18;
      v13 = _Block_copy(&aBlock);

      [v9 animateWithDuration:0 delay:v10 options:v13 animations:0.15 completion:0.0];

      _Block_release(v13);
      _Block_release(v10);
    }

    else
    {
      v15 = v2;
      v14 = v1;
      [v15 setAlpha_];
      [v14 layoutIfNeeded];
      [v15 setHidden_];
      [v15 setAlpha_];
    }
  }
}

id SwitchingContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SwitchingContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v9;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for SwitchingContainerView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id SwitchingContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchingContainerView.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v3;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SwitchingContainerView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SwitchingContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchingContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C2CB3EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    [v1 setAlpha_];
  }

  return [v2 setAlpha_];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C2CB3F68()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 layoutIfNeeded];
}

id sub_1C2CB3FB4()
{
  v1 = *(v0 + 16);
  [v1 setHidden_];

  return [v1 setAlpha_];
}

uint64_t sub_1C2CB410C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CB4188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C2E74534();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1C2E745C4();
  sub_1C2CB410C(v2);
  return v4;
}

uint64_t IconButtonStyle.symbol.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16 = v1[6];
  v4 = v16;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v6;
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  v8 = type metadata accessor for IconButtonStyle.SystemSymbol();
  return (*(*(v8 - 8) + 16))(&v10, v11, v8);
}

uint64_t IconButtonStyle.init(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12)
{
  v21 = *a12;
  v22 = *(a12 + 8);
  v23 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v23;
  v24 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v24;
  v25 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v25;
  v26 = *(a2 + 16);
  *(a9 + 112) = *a2;
  *(a9 + 128) = v26;
  v27 = a1[6];
  *(a9 + 144) = *(a2 + 32);
  *(a9 + 96) = v27;
  v28 = type metadata accessor for IconButtonStyle();
  result = sub_1C2CB4434(a3, a9 + v28[8]);
  *(a9 + v28[9]) = a4;
  *(a9 + v28[10]) = a5;
  *(a9 + v28[11]) = a6;
  v30 = a9 + v28[12];
  *v30 = a7;
  *(v30 + 8) = a8 & 1;
  *(a9 + v28[13]) = a10;
  v31 = a9 + v28[14];
  *v31 = a10;
  *(v31 + 8) = v21;
  *(v31 + 16) = v22;
  *(a9 + v28[15]) = a11;
  return result;
}

uint64_t sub_1C2CB4434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IconButtonStyle.SystemSymbol.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.color.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.background.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.glass.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 IconButtonStyle.SystemSymbol.init(name:color:background:glass:scale:font:weight:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a11;
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a10;
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = sub_1C2C82BDC;
  a9[9] = v17;
  a9[10] = sub_1C2CB5590;
  a9[11] = v18;
  a9[12] = sub_1C2C82BE0;
  a9[13] = v19;
}

uint64_t sub_1C2CB47A0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(unsigned __int8 *a1)@<X8>, uint64_t (*a10)(unsigned __int8 *a1))
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C2CB5628;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *a9 = sub_1C2CB5658;
  a9[1] = v20;
  a9[2] = sub_1C2CB5684;
  a9[3] = v21;
  a9[4] = sub_1C2CB56B0;
  a9[5] = v22;
  a9[6] = sub_1C2CB56B0;
  a9[7] = v23;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB56DC;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

uint64_t static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(unsigned __int8 *)@<X8>, uint64_t (*a10)(unsigned __int8 *))
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v19;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v20;
  a9[4] = sub_1C2CB688C;
  a9[5] = v21;
  a9[6] = sub_1C2CB688C;
  a9[7] = v22;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

uint64_t sub_1C2CB4BD4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)()@<X6>, uint64_t (**a8)()@<X8>, double a9@<D0>)
{
  v38 = a2;
  v39 = a7;
  v37 = a6;
  v34 = a5;
  v35 = a3;
  v32 = a4;
  v36 = sub_1C2E750B4();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  sub_1C2C736A4(v32, v40, &qword_1EC05DDC0);
  v20 = swift_allocObject();
  v21 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v41;
  sub_1C2C736A4(v34, v18, &qword_1EC05DD28);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1C2CB4434(v18, v23 + v22);
  v24 = v36;
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v25, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  *a8 = sub_1C2CB5628;
  a8[1] = v19;
  v28 = v33;
  a8[2] = sub_1C2C9757C;
  a8[3] = v28;
  a8[4] = sub_1C2CB56E4;
  a8[5] = v20;
  a8[6] = sub_1C2CB5714;
  a8[7] = v23;
  a8[8] = sub_1C2CB5718;
  a8[9] = v26;
  v29 = v39;
  a8[10] = sub_1C2CB6890;
  a8[11] = v29;
  a8[12] = sub_1C2CB571C;
  a8[13] = v27;
}

uint64_t sub_1C2CB4F8C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v30 = a8;
  v32 = a7;
  v31 = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - v21;
  v23 = a1[5];
  v36[4] = a1[4];
  v36[5] = v23;
  v36[6] = a1[6];
  v24 = a1[1];
  v36[0] = *a1;
  v36[1] = v24;
  v25 = a1[3];
  v36[2] = a1[2];
  v36[3] = v25;
  v26 = *a12;
  v27 = *(a12 + 8);
  sub_1C2C736A4(a2, v33, &qword_1EC05DDC0);
  sub_1C2C736A4(a3, v22, &qword_1EC05DD28);
  v34 = v26;
  v35 = v27;
  IconButtonStyle.init(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)(a1, v33, v22, a4, a5, v31, v32, v30 & 1, a9, a10, a11, &v34);
  v28 = type metadata accessor for IconButtonStyle.SystemSymbol();
  (*(*(v28 - 8) + 16))(v33, v36, v28);
}

uint64_t static IconButtonStyle.SystemSymbol.catalystCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a11;
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a10;
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = sub_1C2CB6894;
  a9[9] = v17;
  a9[10] = sub_1C2CB68A8;
  a9[11] = v18;
  a9[12] = sub_1C2CB6870;
  a9[13] = v19;
}

uint64_t sub_1C2CB52A4()
{
  result = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  qword_1EC05C568 = result;
  return result;
}

uint64_t sub_1C2CB52C4()
{
  v0 = sub_1C2E74EC4();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  result = sub_1C2E74FB4();
  qword_1EC05C550 = result;
  return result;
}

uint64_t sub_1C2CB53E0()
{
  v0 = sub_1C2E755F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E756D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E75364();
  __swift_allocate_value_buffer(v8, qword_1EC05C580);
  __swift_project_value_buffer(v8, qword_1EC05C580);
  sub_1C2E755E4();
  sub_1C2E75624();
  (*(v1 + 8))(v3, v0);
  sub_1C2E75344();
  (*(v5 + 8))(v7, v4);
  sub_1C2E75324();
  return sub_1C2E75334();
}

uint64_t sub_1C2CB55CC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t sub_1C2CB5628()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C2CB5724@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816E0];
  v3 = sub_1C2E750B4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C2CB5798@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1C2E730D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C2E755F4();
  v5 = *(v23 - 8);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v22 = sub_1C2E756D4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C2E75364();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E755C4();
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  sub_1C2E755D4();
  (*(v2 + 8))(v4, v1);
  v17 = *(v5 + 8);
  v18 = v8;
  v19 = v23;
  v17(v18, v23);
  sub_1C2E75624();
  v17(v10, v19);
  sub_1C2E75344();
  (*(v11 + 8))(v13, v22);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E75354();

  (*(v14 + 8))(v16, v21);
  sub_1C2E75324();
  return sub_1C2E75334();
}

uint64_t static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(unsigned __int8 *)@<X8>, uint64_t (*a10)(unsigned __int8 *))
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C2CB6874;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v20;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v21;
  a9[4] = sub_1C2CB688C;
  a9[5] = v22;
  a9[6] = sub_1C2CB688C;
  a9[7] = v23;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v19;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v20;
  a9[4] = sub_1C2CB688C;
  a9[5] = v21;
  a9[6] = sub_1C2CB688C;
  a9[7] = v22;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

uint64_t static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:scale:font:weight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)()@<X6>, uint64_t (**a8)()@<X8>, double a9@<D0>)
{
  v38 = a2;
  v39 = a7;
  v37 = a6;
  v34 = a5;
  v35 = a3;
  v32 = a4;
  v36 = sub_1C2E750B4();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  sub_1C2C736A4(v32, v40, &qword_1EC05DDC0);
  v20 = swift_allocObject();
  v21 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v41;
  sub_1C2C736A4(v34, v18, &qword_1EC05DD28);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1C2CB4434(v18, v23 + v22);
  v24 = v36;
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v25, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  *a8 = sub_1C2CB6874;
  a8[1] = v19;
  v28 = v33;
  a8[2] = sub_1C2CB68AC;
  a8[3] = v28;
  a8[4] = sub_1C2CB6878;
  a8[5] = v20;
  a8[6] = sub_1C2CB6898;
  a8[7] = v23;
  a8[8] = sub_1C2CB689C;
  a8[9] = v26;
  v29 = v39;
  a8[10] = sub_1C2CB6890;
  a8[11] = v29;
  a8[12] = sub_1C2CB687C;
  a8[13] = v27;
}

uint64_t objectdestroy_46Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C2E75364();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_1C2E750B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2CB6404@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E750B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void sub_1C2CB6480()
{
  type metadata accessor for IconButtonStyle.SystemSymbol();
  if (v0 <= 0x3F)
  {
    sub_1C2CB1BDC();
    if (v1 <= 0x3F)
    {
      sub_1C2CB1C40();
      if (v2 <= 0x3F)
      {
        sub_1C2CB6590();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2CB6590()
{
  if (!qword_1EC05CA20)
  {
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CA20);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoiceMailTab.Option(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VoiceMailTab.Option(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C2CB66F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1C2CB6758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C2CB67A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t IconButtonConfig.accessibilityIdentifier.getter()
{
  v0 = sub_1C2CB8AC0();

  return v0;
}

uint64_t IconButtonConfig.accessibilityLabel.getter()
{
  v0 = sub_1C2CB8B34();

  return v0;
}

uint64_t IconButtonConfig.axValue.getter()
{
  v0 = sub_1C2CB8C1C();

  return v0;
}

uint64_t IconButtonConfig.enabled.getter()
{
  swift_getKeyPath();
  sub_1C2CB700C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t IconButtonConfig.accessibilityIsToggle.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  StateHolder.state.getter(&v3 - v1);
  return swift_dynamicCast();
}

uint64_t IconButtonConfig.title.getter()
{
  v0 = sub_1C2CB8C20();

  return v0;
}

uint64_t IconButtonConfig.hasBadge.getter()
{
  v1 = *(v0 + *(*v0 + 144));
  swift_getKeyPath();
  sub_1C2CB8C94();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IconButtonConfig.state.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1C2CB8CF8();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*IconButtonConfig.state.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateHolder.state.getter(v9);
  return sub_1C2CB6D5C;
}

void sub_1C2CB6D5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1C2E348C0();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1C2E348C0();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1C2CB6E68@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t IconButtonConfig.enabled.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  result = sub_1C2E75BA4();
  if (result)
  {
    *(v2 + 16) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CB70AC();
  }

  return result;
}

uint64_t (*IconButtonConfig.enabled.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2CB700C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB72C8;
}

uint64_t IconButtonConfig.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CB70AC();
  }
}

uint64_t sub_1C2CB7490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t (*IconButtonConfig.title.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2CB700C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7640;
}

uint64_t IconButtonConfig.hasBadge.setter()
{
  swift_getKeyPath();
  sub_1C2CB8C94();
  sub_1C2E71A54();
}

uint64_t (*IconButtonConfig.hasBadge.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = IconButtonConfig.hasBadge.getter() & 1;
  return sub_1C2CB7790;
}

uint64_t IconButtonConfig.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CB70AC();
  }
}

uint64_t sub_1C2CB794C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C2CB7954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t (*IconButtonConfig.accessibilityLabel.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2CB700C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7B04;
}

uint64_t IconButtonConfig.accessibilityValue.getter()
{
  v0 = sub_1C2CB8BA8();

  return v0;
}

uint64_t IconButtonConfig.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CB70AC();
  }
}

uint64_t sub_1C2CB7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

uint64_t (*IconButtonConfig.accessibilityValue.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2CB700C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7EB4;
}

uint64_t keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t IconButtonConfig.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CB70AC();
  }
}

uint64_t sub_1C2CB8108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

uint64_t (*IconButtonConfig.accessibilityIdentifier.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2CB700C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB82B8;
}

uint64_t sub_1C2CB82EC()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A74();
}

uint64_t IconButtonConfig.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = type metadata accessor for IconButtonStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IconButtonConfig.didTap.getter()
{
  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t IconButtonConfig.__allocating_init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  swift_allocObject();
  v19 = sub_1C2CB8ED4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  (*(*(*(v15 + 80) - 8) + 8))(a11, *(v15 + 80));
  v20 = type metadata accessor for IconButtonStyle();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

uint64_t IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  v17 = sub_1C2CB8ED4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  (*(*(*(v16 + 80) - 8) + 8))(a11, *(v16 + 80));
  v18 = type metadata accessor for IconButtonStyle();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t IconButtonConfig.deinit()
{

  v1 = *(*v0 + 128);
  v2 = type metadata accessor for IconButtonStyle();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 160);
  v4 = sub_1C2E71AA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t IconButtonConfig.__deallocating_deinit()
{
  IconButtonConfig.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v30 = a7;
  v31 = a8;
  v33 = a12;
  v34 = a13;
  v32 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v29 - v20;
  sub_1C2CB916C(a1, &v29 - v20);
  v22 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2CB916C(v21, v22 + *(*v22 + 128));
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF80);
  v23 = swift_allocObject();
  sub_1C2E71A94();
  *(v23 + 16) = a4;
  *(v22 + *(*v22 + 144)) = v23;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  v24 = v31;
  *(v22 + 56) = v30;
  *(v22 + 64) = v24;
  *(v22 + 72) = a9;
  *(v22 + 80) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF98);
  v25 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2CB91DC(a1);
  sub_1C2CB91DC(v21);
  *(v22 + *(*v22 + 136)) = v25;
  *(v22 + 16) = v32;
  v26 = (v22 + *(*v22 + 152));
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  return v22;
}

uint64_t sub_1C2CB8AC0()
{
  swift_getKeyPath();
  sub_1C2CB700C();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1C2CB8B34()
{
  swift_getKeyPath();
  sub_1C2CB700C();

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1C2CB8BA8()
{
  swift_getKeyPath();
  sub_1C2CB700C();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_1C2CB8C20()
{
  swift_getKeyPath();
  sub_1C2CB700C();

  swift_beginAccess();
  return *(v0 + 24);
}

unint64_t sub_1C2CB8C94()
{
  result = qword_1EC05C6F0[0];
  if (!qword_1EC05C6F0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DF80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC05C6F0);
  }

  return result;
}

uint64_t sub_1C2CB8D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

unint64_t sub_1C2CB8D84()
{
  result = qword_1EC05B2C8;
  if (!qword_1EC05B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2C8);
  }

  return result;
}

uint64_t sub_1C2CB8E20()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C2CB8ED4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v38 = a7;
  v39 = a8;
  v42 = a13;
  v43 = a14;
  v41 = a12;
  v40 = a11;
  v37 = a10;
  v35 = a6;
  v36 = a9;
  v21 = *(*v15 + 80);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v34 - v23;
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 24) = 0u;
  sub_1C2E71A94();
  v25 = *(*v15 + 128);
  v26 = type metadata accessor for IconButtonStyle();
  (*(*(v26 - 8) + 16))(v15 + v25, a1, v26);

  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF80);
  v27 = swift_allocObject();
  sub_1C2E71A94();
  *(v27 + 16) = a4;
  *(v15 + *(*v15 + 144)) = v27;

  v28 = v35;
  *(v15 + 40) = a5;
  *(v15 + 48) = v28;

  v29 = v39;
  *(v15 + 56) = v38;
  *(v15 + 64) = v29;

  v30 = v37;
  *(v15 + 72) = v36;
  *(v15 + 80) = v30;
  type metadata accessor for StateHolder();
  (*(v22 + 16))(v24, v40, v21);
  *(v15 + *(*v15 + 136)) = StateHolder.__allocating_init(state:)(v24);
  *(v15 + 16) = v41;
  v31 = (v15 + *(*v15 + 152));
  v32 = v43;
  *v31 = v42;
  v31[1] = v32;
  return v15;
}

uint64_t sub_1C2CB916C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CB91DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CB9244()
{
  result = type metadata accessor for IconButtonStyle();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C2CB9410(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2CB942C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t IconMenu.init(config:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IconMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = a1;
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  v25 = MEMORY[0x1E697D248];
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
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21[3] = MEMORY[0x1E6980A18];
  v42 = OpaqueTypeConformance2;
  v43 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  v3 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  sub_1C2E73654();
  v45 = WitnessTable;
  v46 = v5;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v21[2] = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  type metadata accessor for IconButton.Container();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  v6 = sub_1C2E73F54();
  v36 = swift_getWitnessTable();
  v37 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E697EBF8];
  v21[1] = v3;
  v7 = swift_getWitnessTable();
  v8 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v32 = v7;
  v33 = v8;
  v30 = swift_getWitnessTable();
  v31 = v7;
  v9 = swift_getWitnessTable();
  *&v44 = v6;
  *(&v44 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v10 = sub_1C2E73F54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  v17 = *(v23 + 2);
  v44 = *v23;
  v45 = v17;
  sub_1C2CB9BF0(v22, v14);
  *&v44 = v6;
  *(&v44 + 1) = v9;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v8;
  v26 = swift_getWitnessTable();
  v27 = v9;
  v18 = swift_getWitnessTable();
  sub_1C2C6EE48(v14, v10, v18);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1C2C6EE48(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_1C2CB9BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2CB9BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v76 = sub_1C2E74264();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IconButton.IconView();
  WitnessTable = swift_getWitnessTable();
  v111 = v4;
  v112 = WitnessTable;
  v86 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(a1 + 24);
  v111 = v4;
  v112 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = a1;
  v9 = *(a1 + 32);
  v111 = OpaqueTypeMetadata2;
  v112 = v7;
  v113 = OpaqueTypeConformance2;
  v114 = v9;
  v10 = sub_1C2E74704();
  v11 = sub_1C2E734E4();
  v12 = swift_getWitnessTable();
  v13 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  v111 = v10;
  v112 = v11;
  v113 = v12;
  v114 = v13;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8);
  v14 = sub_1C2E73654();
  v15 = type metadata accessor for IconButton.ButtonStyle();
  v111 = v10;
  v112 = v11;
  v113 = v12;
  v114 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v82 = MEMORY[0x1E6980A18];
  v17 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  v109 = v16;
  v110 = v17;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v111 = v14;
  v112 = v15;
  v113 = v18;
  v114 = v19;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v20 = sub_1C2E73654();
  v111 = v14;
  v112 = v15;
  v113 = v18;
  v114 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v107 = v21;
  v108 = v22;
  v23 = swift_getWitnessTable();
  v111 = v20;
  v112 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v105 = v24;
  v106 = v25;
  swift_getWitnessTable();
  type metadata accessor for IconButton.Container();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  v26 = sub_1C2E73F54();
  v80 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v71 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v70 - v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v103 = v30;
  v104 = v31;
  v101 = swift_getWitnessTable();
  v102 = MEMORY[0x1E697EBF8];
  v32 = swift_getWitnessTable();
  v33 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v99 = v32;
  v100 = v33;
  v82 = v33;
  v97 = swift_getWitnessTable();
  v98 = v32;
  v34 = swift_getWitnessTable();
  v111 = v26;
  v112 = v34;
  v81 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v73 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v70 - v36;
  v72 = v38;
  v39 = sub_1C2E73654();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v70 - v44);
  v86 = sub_1C2E73F54();
  v79 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v77 = &v70 - v46;
  v47 = *v83;
  v48 = v83[1];
  v49 = v83[2];
  v50 = sub_1C2CB8B34();
  if (v51)
  {
    v52 = v51;
    v111 = v47;
    v112 = v48;
    v113 = v49;
    v71 = v50;

    v83 = v45;
    v53 = v78;
    sub_1C2CBA8BC(v84, v78);
    v54 = v74;
    sub_1C2E74244();
    v55 = v81;
    sub_1C2E74C04();
    (*(v75 + 8))(v54, v76);
    (*(v80 + 8))(v53, v26);
    v111 = v71;
    v112 = v52;
    v89 = v26;
    v90 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    sub_1C2C74960();
    v57 = v72;
    sub_1C2E74B34();
    (*(v73 + 8))(v37, v57);

    v87 = v56;
    v58 = v82;
    v88 = v82;
    v59 = swift_getWitnessTable();
    v60 = v83;
    sub_1C2C6EE48(v43, v39, v59);
    v61 = *(v40 + 8);
    v61(v43, v39);
    sub_1C2C6EE48(v60, v39, v59);
    v62 = v77;
    sub_1C2C76E34(v43, v39);
    v61(v43, v39);
    v61(v60, v39);
  }

  else
  {
    v111 = v47;
    v112 = v48;
    v113 = v49;
    v63 = v71;
    sub_1C2CBA8BC(v84, v71);
    v64 = v78;
    v55 = v81;
    sub_1C2C6EE48(v63, v26, v81);
    v65 = *(v80 + 8);
    v65(v63, v26);
    sub_1C2C6EE48(v64, v26, v55);
    v111 = v26;
    v112 = v55;
    v66 = swift_getOpaqueTypeConformance2();
    v58 = v82;
    v95 = v66;
    v96 = v82;
    swift_getWitnessTable();
    v62 = v77;
    sub_1C2C78970(v63, v39, v26);
    v65(v63, v26);
    v65(v64, v26);
  }

  v111 = v26;
  v112 = v55;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v58;
  v91 = swift_getWitnessTable();
  v92 = v55;
  v67 = v86;
  v68 = swift_getWitnessTable();
  sub_1C2C6EE48(v62, v67, v68);
  return (*(v79 + 8))(v62, v67);
}

uint64_t sub_1C2CBA8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v2 = *(a1 + 16);
  v33 = a1;
  v29 = v2;
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
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E6980A18];
  v48 = OpaqueTypeConformance2;
  v49 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  v31 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v6 = sub_1C2E73654();
  v51 = WitnessTable;
  v52 = v5;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  *&v50 = v6;
  *(&v50 + 1) = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v30 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  type metadata accessor for IconButton.Container();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  v7 = sub_1C2E73654();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  sub_1C2E74384();
  v28 = sub_1C2E73654();
  v11 = sub_1C2E73F54();
  v29 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = *(v34 + 16);
  v34 = *v34;
  v50 = v34;
  v51 = v17;
  sub_1C2CBB044(v33, v10);
  v18 = sub_1C2CB8AC0();
  v20 = v19;

  v21 = swift_getWitnessTable();
  v22 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v42 = v21;
  v43 = v22;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E697EBF8];
  v23 = swift_getWitnessTable();
  View.optionalAXID(_:)(v18, v20, v7, v23, v14);

  (*(v8 + 8))(v10, v7);
  v24 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v38 = v23;
  v39 = v24;
  v36 = swift_getWitnessTable();
  v37 = v23;
  v25 = swift_getWitnessTable();
  sub_1C2C6EE48(v14, v11, v25);
  v26 = *(v29 + 8);
  v26(v14, v11);
  sub_1C2C6EE48(v16, v11, v25);
  return (v26)(v16, v11);
}

uint64_t sub_1C2CBB044@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1C2E730D4();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 2);
  v6 = type metadata accessor for IconButton.IconView();
  *&v7 = COERCE_DOUBLE(swift_getWitnessTable());
  v80 = v6;
  v81 = *&v7;
  v60 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = a1[3];
  v9 = v64;
  v80 = v6;
  v81 = *&v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = *(a1 + 4);
  v80 = OpaqueTypeMetadata2;
  v81 = v9;
  v82 = OpaqueTypeConformance2;
  v83 = v63;
  v11 = sub_1C2E74704();
  *&v12 = COERCE_DOUBLE(sub_1C2E734E4());
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  v80 = v11;
  v81 = *&v12;
  v82 = WitnessTable;
  v83 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8);
  v15 = sub_1C2E73654();
  *&v16 = COERCE_DOUBLE(type metadata accessor for IconButton.ButtonStyle());
  v80 = v11;
  v81 = *&v12;
  v82 = WitnessTable;
  v83 = v14;
  v17 = swift_getOpaqueTypeConformance2();
  v62 = MEMORY[0x1E6980A18];
  v18 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  v78 = v17;
  v79 = v18;
  v61 = MEMORY[0x1E697E858];
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v80 = v15;
  v81 = *&v16;
  v82 = v19;
  v83 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v21 = sub_1C2E73654();
  v80 = v15;
  v81 = *&v16;
  v82 = v19;
  v83 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v76 = v22;
  v77 = v23;
  *&v24 = COERCE_DOUBLE(swift_getWitnessTable());
  v80 = v21;
  v81 = *&v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E73F54();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v74 = v25;
  v75 = v26;
  swift_getWitnessTable();
  v27 = v5;
  type metadata accessor for IconButton.Container();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v57 = sub_1C2E73654();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v29 = &v55 - v28;
  v55 = sub_1C2E73654();
  v60 = *(v55 - 8);
  v30 = MEMORY[0x1EEE9AC00](v55);
  v56 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v58 = &v55 - v32;
  v33 = *(v65 + 16);
  v65 = *v65;
  v34 = v65 + *(*v65 + 128);
  v35 = *(v34 + *(type metadata accessor for IconButtonStyle() + 44));
  v36 = swift_allocObject();
  v37 = v64;
  *(v36 + 16) = v27;
  *(v36 + 24) = v37;
  *(v36 + 32) = v63;
  *(v36 + 40) = v65;
  *(v36 + 56) = v33;
  v38 = CGPointMake(v35);
  LOBYTE(v80) = v39;
  v81 = v38;
  v82 = v40;
  v83 = v41;
  v43 = v66;
  v42 = v67;
  v44 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x1E697DBA8], v68);

  v45 = swift_getWitnessTable();
  sub_1C2E74994();
  (*(v42 + 8))(v43, v44);

  sub_1C2E75744();
  v46 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v72 = v45;
  v73 = v46;
  v53 = v57;
  v54 = swift_getWitnessTable();
  v47 = v56;
  sub_1C2E74D24();
  (*(v59 + 8))(v29, v53);
  v70 = v54;
  v71 = MEMORY[0x1E697EBF8];
  v48 = v55;
  v49 = swift_getWitnessTable();
  v50 = v58;
  sub_1C2C6EE48(v47, v48, v49);
  v51 = *(v60 + 8);
  v51(v47, v48);
  sub_1C2C6EE48(v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_1C2CBB92C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v62 = a3;
  v61 = a2;
  v54 = a1;
  v66 = a6;
  v55 = type metadata accessor for IconButton.LabelView();
  type metadata accessor for IconButton.IconView();
  swift_getWitnessTable();
  v65 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v63 = a4;
  v64 = a5;
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v10 = sub_1C2E73654();
  v81 = WitnessTable;
  v82 = v9;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v11 = v54;
  v79 = v10;
  v80 = swift_getWitnessTable();
  v56 = v80;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = v55;
  swift_getTupleTypeMetadata2();
  v14 = sub_1C2E75844();
  v51 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v50 - v15;
  swift_getTupleTypeMetadata2();
  v16 = sub_1C2E75844();
  v53 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v52 = &v50 - v18;
  v19 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - v23;
  v60 = v25;
  v65 = v14;
  v59 = sub_1C2E73F54();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v50 - v26;
  type metadata accessor for IconButtonStyle();
  swift_retain_n();
  LODWORD(v9) = sub_1C2E744C4();
  if (v9 == sub_1C2E744C4())
  {
  }

  else
  {
    v27 = sub_1C2E744C4();
    v28 = sub_1C2E744C4();

    if (v27 != v28)
    {
      v79 = CGPointMake(v11);
      v37 = v13;
      v38 = swift_getWitnessTable();
      sub_1C2C6EE48(&v79, v37, v38);

      v79 = v11;
      v80 = v61;
      v81 = v62;
      v39 = type metadata accessor for IconMenu();
      sub_1C2CBC400(v39, v22);
      v79 = v10;
      v80 = v56;
      v40 = swift_getOpaqueTypeConformance2();
      sub_1C2C6EE48(v22, OpaqueTypeMetadata2, v40);
      v41 = *(v19 + 8);
      v41(v22, OpaqueTypeMetadata2);
      v73 = v74;
      v79 = &v73;
      (*(v19 + 16))(v22, v24, OpaqueTypeMetadata2);
      v80 = v22;

      v71 = v37;
      v72 = OpaqueTypeMetadata2;
      v69 = v38;
      v70 = v40;
      v42 = v50;
      sub_1C2C6EC40(&v79, 2uLL, &v71);
      v41(v22, OpaqueTypeMetadata2);

      v43 = v60;
      swift_getWitnessTable();
      v44 = v65;
      swift_getWitnessTable();
      v36 = v57;
      sub_1C2C78970(v42, v43, v44);
      (*(v51 + 8))(v42, v44);
      v41(v24, OpaqueTypeMetadata2);

      goto LABEL_6;
    }
  }

  v79 = v11;
  v80 = v61;
  v81 = v62;
  v29 = type metadata accessor for IconMenu();
  sub_1C2CBC400(v29, v22);
  v79 = v10;
  v80 = v56;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v22, OpaqueTypeMetadata2, v30);
  v31 = v11;
  v32 = *(v19 + 8);
  v32(v22, OpaqueTypeMetadata2);
  v79 = CGPointMake(v31);
  v33 = swift_getWitnessTable();
  sub_1C2C6EE48(&v79, v13, v33);

  (*(v19 + 16))(v22, v24, OpaqueTypeMetadata2);
  v73 = v74;
  v79 = v22;
  v80 = &v73;

  v71 = OpaqueTypeMetadata2;
  v72 = v13;
  v69 = v30;
  v70 = v33;
  v34 = v52;
  sub_1C2C6EC40(&v79, 2uLL, &v71);

  v32(v22, OpaqueTypeMetadata2);
  v35 = v60;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = v57;
  sub_1C2C76E34(v34, v35);
  (*(v53 + 8))(v34, v35);

  v32(v24, OpaqueTypeMetadata2);
LABEL_6:
  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v67 = v45;
  v68 = v46;
  v47 = v59;
  v48 = swift_getWitnessTable();
  sub_1C2C6EE48(v36, v47, v48);
  return (*(v58 + 8))(v36, v47);
}

uint64_t sub_1C2CBC400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = sub_1C2E74264();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C2E73834();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E734E4();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1[2];
  v7 = type metadata accessor for IconButton.IconView();
  WitnessTable = swift_getWitnessTable();
  v96 = v7;
  v97 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = OpaqueTypeMetadata2;
  v63 = a1[3];
  v10 = v63;
  v96 = v7;
  v97 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = a1[4];
  v96 = OpaqueTypeMetadata2;
  v97 = v10;
  v98 = OpaqueTypeConformance2;
  v99 = v62;
  v11 = sub_1C2E74704();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = swift_getWitnessTable();
  v15 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  v96 = v11;
  v97 = v5;
  v16 = v5;
  v49 = v5;
  v98 = v14;
  v99 = v15;
  v51 = v14;
  v50 = v15;
  v60 = swift_getOpaqueTypeMetadata2();
  v64 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v46 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8);
  v18 = sub_1C2E73654();
  v65 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v46 - v19;
  v20 = type metadata accessor for IconButton.ButtonStyle();
  v52 = v20;
  v96 = v11;
  v97 = v16;
  v98 = v14;
  v99 = v15;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
  v94 = v21;
  v95 = v22;
  v66 = MEMORY[0x1E697E858];
  v23 = swift_getWitnessTable();
  v54 = v23;
  v53 = swift_getWitnessTable();
  v96 = v18;
  v97 = v20;
  v98 = v23;
  v99 = v53;
  v56 = MEMORY[0x1E697CDC0];
  v24 = swift_getOpaqueTypeMetadata2();
  v58 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68);
  v59 = sub_1C2E73654();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v48 = &v46 - v27;
  v29 = *v72;
  v28 = v72[1];
  v30 = v72[2];
  v86 = v47;
  v87 = v63;
  v88 = v62;
  v89 = v29;
  v90 = v28;
  v91 = v30;
  v80 = v47;
  v81 = v63;
  v82 = v62;
  v83 = v29;
  v84 = v28;
  v85 = v30;
  sub_1C2E746F4();
  v31 = v70;
  sub_1C2E734D4();
  v32 = v57;
  v33 = v49;
  sub_1C2E74E84();
  (*(v71 + 8))(v31, v33);
  (*(v69 + 8))(v13, v11);
  v34 = v73;
  sub_1C2E73814();
  v35 = v55;
  v36 = v60;
  sub_1C2E74B14();
  (*(v74 + 8))(v34, v75);
  (*(v64 + 8))(v32, v36);
  v96 = CGPointMake(v29);

  v37 = swift_checkMetadataState();
  v38 = v54;
  v39 = v53;
  sub_1C2E74984();

  (*(v65 + 8))(v35, v18);
  IconButtonConfig.enabled.getter();
  v96 = v18;
  v97 = v37;
  v98 = v38;
  v99 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_1C2E74DB4();
  (*(v58 + 8))(v26, v24);
  v42 = v76;
  sub_1C2E74254();
  v43 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
  v92 = v40;
  v93 = v43;
  v44 = v59;
  swift_getWitnessTable();
  sub_1C2E74C04();
  (*(v77 + 8))(v42, v79);
  return (*(v61 + 8))(v41, v44);
}

uint64_t sub_1C2CBCE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  v15(v12);
  sub_1C2C6EE48(v11, a5, a6);
  v16 = *(v8 + 8);
  v16(v11, a5);
  sub_1C2C6EE48(v14, a5, a6);
  return (v16)(v14, a5);
}

uint64_t sub_1C2CBCF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1C2E74264();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IconButtonStyle();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for IconButton.IconView();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  WitnessTable = swift_getWitnessTable();
  v32 = v8;
  v33 = WitnessTable;
  v24 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = *(a1 + *(*a1 + 136));
  (*(v25 + 16))(v7, a1 + *(*a1 + 128), v26);
  sub_1C2CAD944(v19, v7, v10);

  v20 = v28;
  sub_1C2E74234();
  sub_1C2E74C04();
  (*(v29 + 8))(v20, v30);
  (*(v27 + 8))(v10, v8);
  v32 = v8;
  v33 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v22 = *(v13 + 8);
  v22(v16, OpaqueTypeMetadata2);
  sub_1C2C6EE48(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v22)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_1C2CBD31C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t IntelligenceActivityView.bottomViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2CBD420@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  result = sub_1C2E75184();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2CBD478()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  return sub_1C2E75194();
}

uint64_t (*IntelligenceActivityView.bottomViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  sub_1C2E75184();
  return sub_1C2CBE888;
}

uint64_t IntelligenceActivityView.$bottomViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceActivityView.participantLabelViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2CBD674@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  result = sub_1C2E75184();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2CBD6CC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  return sub_1C2E75194();
}

uint64_t (*IntelligenceActivityView.participantLabelViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  return sub_1C2CBD824;
}

uint64_t IntelligenceActivityView.$participantLabelViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceActivityView.bodyViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2CBD8CC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  result = sub_1C2E75184();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2CBD924()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  return sub_1C2E75194();
}

uint64_t (*IntelligenceActivityView.bodyViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  return sub_1C2CBE888;
}
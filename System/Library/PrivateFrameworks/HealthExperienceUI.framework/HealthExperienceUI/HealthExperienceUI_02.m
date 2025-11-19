uint64_t sub_1B9F34870()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1BA1A2CB0();
    v1 = sub_1BA4A6808();
  }

  return v1;
}

void *sub_1B9F348D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F15B38();
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v11;
  sub_1BA4A45D8();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections) = a1;

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap) = Array<A>.identifierToIndexDict()(v12);
  v4[5] = a2;
  v4[6] = a3;
  sub_1B9F34BA0(a1);
  return v4;
}

void *ArrayDataSource.init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B9F348D8(a1, a2, a3);

  return v3;
}

uint64_t sub_1B9F34BA0(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v33[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v6 = *(a1 + 16);
  if (v6)
  {
    v35 = v5;
    v36 = v3;
    v42[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v6, 0);
    v7 = v42[0];
    v37 = a1 + 32;
    v8 = (a1 + 72);
    v34 = v6;
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v42[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1B9F1C360((v11 > 1), v12 + 1, 1);
        v7 = v42[0];
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 6;
      --v6;
    }

    while (v6);
    v5 = v35;
    v3 = v36;
    sub_1BA4A44C8();

    v14 = 0;
    v15 = v34;
    do
    {
      v16 = (v37 + 48 * v14);
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v41 = v16[4];
      v20 = v16[5];
      v21 = *(v18 + 16);
      if (v21)
      {
        v43 = MEMORY[0x1E69E7CC0];
        v40 = v17;

        v38 = v19;

        sub_1B9F1C360(0, v21, 0);
        v22 = v43;
        v39 = v18;
        v23 = v18 + 32;
        do
        {
          sub_1B9F0A534(v23, v42);
          __swift_project_boxed_opaque_existential_1(v42, v42[3]);
          v24 = sub_1BA4A2D58();
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_1(v42);
          v43 = v22;
          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1B9F1C360((v27 > 1), v28 + 1, 1);
            v22 = v43;
          }

          *(v22 + 16) = v28 + 1;
          v29 = v22 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          v23 += 40;
          --v21;
        }

        while (v21);
        v5 = v35;
        v3 = v36;
        v15 = v34;
      }

      else
      {
      }

      ++v14;
      v42[0] = v41;
      v42[1] = v20;

      sub_1BA4A4448();
      swift_bridgeObjectRelease_n();
    }

    while (v14 != v15);
  }

  else
  {
    sub_1BA4A44C8();
  }

  v30 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  v31 = v33[1];
  swift_beginAccess();
  (*(v33[0] + 40))(v31 + v30, v5, v3);
  return swift_endAccess();
}

uint64_t PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(v4 + 272))();
  swift_beginAccess();
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;

  return v7;
}

void *sub_1B9F34FD8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PrimarySecondaryDataSource();
  swift_allocObject();
  return sub_1B9F2EB64(a1, a2);
}

uint64_t sub_1B9F3503C()
{
  v0 = sub_1B9F35074();

  return v0;
}

uint64_t sub_1B9F35088()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_1B9F35130()
{
  if (!qword_1EDC6E9C8[0])
  {
    type metadata accessor for SectionContext(255);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC6E9C8);
    }
  }
}

void sub_1B9F351B0()
{
  sub_1B9F35130();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B9F35260()
{
  result = sub_1BA4A1998();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9F35348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1B9F35404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9F35348();
  *a1 = v3;
  return result;
}

__n128 sub_1B9F35484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1B9F35490(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1B9F35348();
  if (v1 != v2)
  {
    type metadata accessor for HideableDataSource();

    SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  }
}

void sub_1B9F3558C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F355F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D9AC(255, &qword_1EDC67F10);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F35664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F356C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F35724(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B9F35790(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B9F357D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B9F3581C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

Swift::Void __swiftcall CompoundSectionedDataSource.registerCells(for:)(UICollectionView *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v16 = *(v3 + 32 + 16 * v5);
      sub_1B9F0D9AC(0, &qword_1EDC67F10);
      sub_1B9F0D9AC(0, qword_1EDC6C328);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (*(&v14 + 1))
        {
          sub_1B9F25598(&v13, &v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1B9F39AF4(0, v6[2] + 1, 1, v6);
          }

          v8 = v6[2];
          v7 = v6[3];
          if (v8 >= v7 >> 1)
          {
            v6 = sub_1B9F39AF4((v7 > 1), v8 + 1, 1, v6);
          }

          v6[2] = v8 + 1;
          sub_1B9F25598(&v16, &v6[5 * v8 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }

      sub_1B9F399C0(&v13);
LABEL_5:
      if (v4 == ++v5)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v9 = v6[2];
  if (v9)
  {
    v10 = (v6 + 4);
    do
    {
      sub_1B9F0A534(v10, &v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      (*(v12 + 8))(a1, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }
}

void sub_1B9F35AE4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1BA4A3A48();
  swift_getWitnessTable();
  v6 = sub_1BA4A8508();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-1] - v8;
  sub_1B9F0A534(v0 + *((v3 & v2) + 0x60), v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_1BA4A3958();
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (sub_1B9F35F24())
  {
    v11 = v10;
    sub_1B9F0A534(v0 + *((*v1 & *v0) + 0x60), v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1BA4A3968();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v12 = *(v0 + *((*v1 & *v0) + 0x90) + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();
    LOBYTE(v12) = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {
      v15 = swift_getObjectType();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v4;
      v17[3] = v5;
      v17[4] = v16;
      v18 = *(v11 + 32);

      v18(sub_1BA0A2784, v17, v15, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = sub_1B9F530F0();
      if (v19)
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      }

      else
      {
        v20 = 0;
      }

      sub_1BA0A1DE8(v20, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1B9F0A534(v0 + *((*v1 & *v0) + 0x60), v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1BA4A3968();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v22[0] = 0;
    type metadata accessor for MeProfilePicturePublisher.Inner();
    swift_getWitnessTable();
    sub_1BA4A39D8();
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1B9F35F24()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88));
  if (*v2)
  {
    v3 = *v2;
  }

  else
  {
    v4 = v0;
    v3 = (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80)))();
    v6 = v5;
    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6, *(v4 + *((*v1 & *v4) + 0x70)) * *(v4 + *((*v1 & *v4) + 0x78)));
      v8 = (v4 + *((*v1 & *v4) + 0x88));
      *v8 = v3;
      v8[1] = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  return v3;
}

unint64_t get_enum_tag_for_layout_string_18HealthExperienceUI20PluginViewModelErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = sub_1BA4A2BF8();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = a5(0);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

_BYTE *__swift_store_extra_inhabitant_indexTm_0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 241)
  {
    *result = a2 + 14;
  }

  else
  {
    v7 = sub_1BA4A40C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B9F362B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B9F36484();
    v2 = sub_1BA4A8098();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1B9F24A34(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B9F36484()
{
  if (!qword_1EDC5DFD0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E350);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFD0);
    }
  }
}

void sub_1B9F36508(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BA0F3028();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9F3664C(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_1B9F23574(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1B9F3664C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F36484();
  v35 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

UICollectionView *sub_1B9F36938()
{
  v1 = v0;
  sub_1B9F12538();
  v82 = v2;
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_42;
  }

  v7 = result;
  sub_1B9F23D88();
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v8, v9, type metadata accessor for FakeCollectionViewHeader, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v10, v11, type metadata accessor for FakeCollectionViewHeader, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);

  sub_1B9F23FB0();
  result = [v1 collectionView];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = result;
  CompoundSectionedDataSource.registerCells(for:)(result);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = result;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();

  result = [v1 collectionView];
  v14 = v82;
  v15 = v81;
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = result;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v17, v18, type metadata accessor for SectionHeaderCollectionViewCell, qword_1EDC630E0, type metadata accessor for SectionHeaderCollectionViewCell);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v19 = result;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v20 = result;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v21 = result;
  sub_1B9F43994();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = result;
  sub_1B9F40768();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v23 = result;
  sub_1B9F3A2A0();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = result;
  sub_1B9F437FC();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = result;
  sub_1B9F439C8();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = result;
  sub_1B9F4079C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v28, v29, type metadata accessor for CollectionViewGroupedFooterCell, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);

  v90 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource;
  v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource];
  v31 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v33 = v3 + 16;
  v32 = *(v3 + 16);
  v32(v15, v30 + v31, v14);
  v34 = sub_1BA4A4578();
  v36 = *(v3 + 8);
  v35 = v3 + 8;
  v80 = v36;
  result = (v36)(v15, v14);
  v79 = *(v34 + 16);
  if (v79)
  {
    v37 = 0;
    v78 = v34 + 32;
    v83 = v35;
    v86 = v1;
    v85 = v33;
    v89 = v32;
    v77 = v34;
    while (1)
    {
      v84 = v37;
      if (v37 >= *(v34 + 16))
      {
        goto LABEL_40;
      }

      v40 = (v78 + 16 * v84);
      v42 = *v40;
      v41 = v40[1];
      v43 = *&v1[v90];
      v44 = v32;
      v45 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v44(v15, v43 + v45, v14);
      v95 = v42;
      v105 = v42;
      v106 = v41;

      sub_1BA4A44E8();
      LOBYTE(v44) = v46;
      v47 = v80;
      v80(v15, v14);
      v91 = v41;
      if (v44)
      {

        v48 = MEMORY[0x1E69E7CC0];
        v32 = v89;
      }

      else
      {
        v49 = v43 + v45;
        v32 = v89;
        v89(v15, v49, v14);
        v105 = v95;
        v106 = v41;
        v50 = sub_1BA4A4528();

        v51 = v15;
        v48 = v50;
        result = v47(v51, v14);
      }

      v52 = 0x2A5F5F5F2ALL;
      v88 = *(v48 + 16);
      if (v88)
      {
        break;
      }

LABEL_16:
      v38 = v84 + 1;

      v39 = v38 == v79;
      v37 = v38;
      v14 = v82;
      v15 = v81;
      v34 = v77;
      if (v39)
      {
      }
    }

    v53 = 0;
    v54 = (v48 + 40);
    v87 = v48;
    while (1)
    {
      if (v53 >= *(v48 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v94 = v53;
      v55 = v52;
      v56 = *(v54 - 1);
      v57 = *v54;
      v93 = v54;
      v58 = *&v1[v90];
      v96 = v56;
      p_swiftAnimationInfo = v57;
      v100 = v55;
      v101 = 0xE500000000000000;
      sub_1BA164F44();

      result = sub_1BA4A6E08();
      if (!result->super.super._constraintsExceptingSubviewAutoresizingConstraints)
      {
        goto LABEL_38;
      }

      v92 = v58;
      swiftAnimationInfo = result->super.super._swiftAnimationInfo;
      traitChangeRegistry = result->super.super._traitChangeRegistry;
      layerRetained = result->super.super._layerRetained;
      subviewCache = result->super.super._subviewCache;
      v95 = v57;

      v63 = MEMORY[0x1BFAF12A0](swiftAnimationInfo, traitChangeRegistry, layerRetained, subviewCache);
      v65 = v64;

      v96 = v56;
      p_swiftAnimationInfo = v95;
      v100 = v55;
      v101 = 0xE500000000000000;
      result = sub_1BA4A6E08();
      constraintsExceptingSubviewAutoresizingConstraints = result->super.super._constraintsExceptingSubviewAutoresizingConstraints;
      if (!constraintsExceptingSubviewAutoresizingConstraints)
      {
        goto LABEL_39;
      }

      v52 = v55;
      v96 = result;
      p_swiftAnimationInfo = &result->super.super._swiftAnimationInfo;
      v98 = 1;
      v99 = (2 * constraintsExceptingSubviewAutoresizingConstraints) | 1;
      sub_1B9F3A31C();
      sub_1B9F3A36C(&qword_1EDC5E070, sub_1B9F3A31C);
      sub_1B9F439FC();
      v67 = sub_1BA4A6A48();
      v69 = v68;

      v96 = v67;
      p_swiftAnimationInfo = v69;
      v70 = sub_1BA4A69D8();
      sub_1B9F3A3B4(v63, v65, v70, v71, &v105);

      if (!v107)
      {
        break;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50);
      sub_1B9F0D950(0, qword_1EDC6C328);
      v72 = swift_dynamicCast();
      v1 = v86;
      v48 = v87;
      if ((v72 & 1) == 0)
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
LABEL_35:

LABEL_24:
        result = sub_1B9F43A50(&v102, &qword_1EDC6C320, qword_1EDC6C328);
        goto LABEL_25;
      }

      if (!*(&v103 + 1))
      {
        goto LABEL_35;
      }

      sub_1B9F1134C(&v102, &v105);
      v73 = v107;
      v74 = v108;
      __swift_project_boxed_opaque_existential_1(&v105, v107);
      result = [v1 collectionView];
      if (!result)
      {
        goto LABEL_41;
      }

      v75 = result;

      (*(v74 + 8))(v75, v73, v74);

      result = __swift_destroy_boxed_opaque_existential_1(&v105);
LABEL_25:
      v32 = v89;
      v53 = v94 + 1;
      v54 = v93 + 2;
      if (v88 == v94 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_1B9F43A50(&v105, &qword_1EDC6AD40, &qword_1EDC6AD50);
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    v1 = v86;
    v48 = v87;
    goto LABEL_24;
  }
}

uint64_t sub_1B9F37450(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F3749C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F374E8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1B9F0CDE8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F37558(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F224CC(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B9F375DC()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1B9F376F0()
{
  type metadata accessor for HideableDataSource.Visibility();
  result = sub_1BA4A4F58();
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

void *sub_1B9F37820(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  sub_1B9F15B38();
  v7 = sub_1BA4A7A78();
  v8 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithName:v9 loggingCategory:v7];

  v3[2] = v10;
  *(v3 + *(*v3 + 112)) = a1;
  swift_beginAccess();
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  swift_unknownObjectRetain();
  v20 = v6;
  v13 = type metadata accessor for HideableDataSource.Visibility();
  sub_1B9F37A14(&v20, v13);
  swift_endAccess();
  v14 = (*(v12 + 8))(v11, v12);
  v15 = (v3 + *(*v3 + 120));
  *v15 = v14;
  v15[1] = v16;
  swift_beginAccess();
  v17 = *(v12 + 40);
  swift_unknownObjectRetain();
  v18 = v17(v11, v12);
  swift_unknownObjectRelease();
  [v18 registerObserver_];

  return v3;
}

uint64_t sub_1B9F37A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_1BA4A4EE8();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1B9F37B04()
{
  v0 = sub_1B9F37B3C();

  return v0;
}

void sub_1B9F37B64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B9F37BB8()
{
  result = qword_1EDC6B3C0;
  if (!qword_1EDC6B3C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC6B3C0);
  }

  return result;
}

uint64_t sub_1B9F37C2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ListLayoutConfiguration();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_1B9F37E38(v6, a3);
}

uint64_t _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1EDC6D290 + 1);
  if (*(&xmmword_1EDC6D290 + 1))
  {
    v3 = qword_1EDC6D2A0;
    v4 = qword_1EDC6D2A0;
    v5 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = [objc_opt_self() clearColor];
  sub_1BA4A75C8();
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = 0x404E000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = sub_1BA4A7618();
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 257;
  v10 = type metadata accessor for ListLayoutConfiguration();
  v11 = *(v10 + 88);
  v12 = *MEMORY[0x1E69DC280];
  v13 = sub_1BA4A47D8();
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = *(v10 + 92);
  v15 = *MEMORY[0x1E69DC278];
  v16 = sub_1BA4A47C8();
  v17 = *(*(v16 - 8) + 104);

  return v17(a1 + v14, v15, v16);
}

uint64_t sub_1B9F37E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v34 = sub_1BA4A1798();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v27 = a3;
    v28 = a4;
    v29 = a2;
    v30 = v4;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v11, 0);
    v12 = v35;
    v31 = (v9 + 8);
    v32 = a1;
    v13 = 32;
    do
    {
      v14 = *(a1 + v13);

      v15 = v33;
      sub_1BA4A1788();
      v16 = sub_1BA4A1748();
      v18 = v17;
      (*v31)(v15, v34);

      v20 = Array<A>.identifierToIndexDict()(v19);

      v35 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B9F277B0((v21 > 1), v22 + 1, 1);
        v12 = v35;
      }

      *(v12 + 16) = v22 + 1;
      v23 = (v12 + 48 * v22);
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v14;
      v23[7] = v20;
      v23[8] = v16;
      v23[9] = v18;
      v13 += 8;
      --v11;
      a1 = v32;
    }

    while (v11);

    v4 = v30;
    LOBYTE(a2) = v29;
    a3 = v27;
    a4 = v28;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = v4;
  return (*(v4 + 584))(v12, a2 & 1, sub_1B9F57074, v24);
}

uint64_t sub_1B9F380E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F38128()
{
  sub_1B9F38150();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F38150()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL SnapshotDataSource.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  (*(a2 + 16))(a1, a2, v7);
  v10 = sub_1BA4A4538();
  (*(v6 + 8))(v9, v5);
  v11 = *(v10 + 16);

  return v11 == 0;
}

void sub_1B9F382CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F38();
  sub_1B9F35490(&v0);
}

uint64_t type metadata accessor for HeaderFooterDataSourceWithLayout()
{
  result = qword_1EDC62A90;
  if (!qword_1EDC62A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeaderFooterDataSourceWithLayout.init(headerDataSource:mainDataSource:footerDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1B9F384A0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1B9F384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_headerDataSource);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_mainDataSource);
  *v11 = a4;
  v11[1] = a5;
  v11[2] = a6;
  v12 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_footerDataSource);
  *v12 = a7;
  v12[1] = a8;
  v12[2] = a9;
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a7;
  v26[7] = a8;
  v26[8] = a9;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  result = swift_unknownObjectRetain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v14 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = &v26[3 * v14];
  while (1)
  {
    if (v14 == 3)
    {
      sub_1B9F3558C(0, &qword_1EDC60EF0, sub_1B9F1AC28, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v24 = sub_1B9F38800(v15);

      return CompoundSectionedDataSource.init(_:)(v24);
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 3;
    v20 = *v18;
    v18 += 3;
    if (v20)
    {
      v25 = *(v19 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F386A0(0, v15[2] + 1, 1, v15);
        v15 = result;
      }

      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1B9F386A0((v21 > 1), v22 + 1, 1, v15);
        v15 = result;
      }

      v15[2] = v22 + 1;
      v23 = &v15[3 * v22];
      v23[4] = v20;
      *(v23 + 5) = v25;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B9F386A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DC58, sub_1B9F1AC28, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1AC28();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B9F38800(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v1, 0);
    v2 = v11;
    sub_1B9F1AC28();
    sub_1B9F0D9AC(0, &qword_1EDC67F10);
    v4 = a1 + 48;
    do
    {
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B9F39554((v5 > 1), v6 + 1, 1);
      }

      ObjectType = swift_getObjectType();
      sub_1B9F38934(v6, v9, &v11, ObjectType, v10);
      v2 = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B9F38934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

uint64_t sub_1B9F38950()
{
  v1 = *v0;
  sub_1B9F35348();
  if (v7)
  {
    swift_beginAccess();
    v4 = v1 + 80;
    v2 = *(v1 + 80);
    v3 = *(v4 + 8);
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(v2, v3);
    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1BA4A45D8();
  }
}

uint64_t DelayedDataSource.$dataSourceState.getter()
{
  swift_beginAccess();
  type metadata accessor for DelayedDataSource.DataSourceState();
  sub_1BA4A4F58();
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9F38B44()
{

  sub_1BA4A24D8();
}

void sub_1B9F38BA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B9F35AE4();
  }
}

unint64_t sub_1B9F38BF4()
{
  result = qword_1EDC6B5A0;
  if (!qword_1EDC6B5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5A0);
  }

  return result;
}

uint64_t sub_1B9F38C40(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B9F38CA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SnidgetTileView.ViewModel.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = sub_1BA4A2BF8();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = a4(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 241)
  {
    v4 = *a1;
    if (v4 >= 0xF)
    {
      return v4 - 14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1BA4A40C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI25ResettableDateDisplayItemV10Foundation0E0VSgIegnr_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ProvidedViewContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthStore;
  v2 = MEMORY[0x1E695C070];
  sub_1B9F2AC84(0, &qword_1EDC6B6F0, sub_1B9F2ACE8, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthExperienceStore;
  sub_1B9F2AC84(0, &qword_1EDC6B710, sub_1B9F1F4BC, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);

  return swift_deallocClassInstance();
}

uint64_t sub_1B9F3904C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    sub_1B9F2D594();
    v4 = sub_1BA4A6628();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1B9F39100(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BA4A3E58();
    v12 = a2;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v31 = a4;
      v18 = v17;
      v34 = v17;
      *v16 = 136315394;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v34);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v33 = a2;
      v22 = a2;
      sub_1B9F22538(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v23 = sub_1BA4A6828();
      v25 = sub_1B9F0B82C(v23, v24, &v34);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v13, v14, "%s Error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      v26 = v16;
      a3 = v32;
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return a3(0);
  }

  else
  {
    sub_1B9F2240C(&qword_1EDC69CD0, v9, type metadata accessor for HealthAppInteractionAnalyticEvent);
    v28 = sub_1BA4A2CD8();
    sub_1B9F362B0(v28);
    v30 = v29;

    a3(v30);
  }
}

void *sub_1B9F39410(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1B9F356C8(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1B9F39554(void *a1, int64_t a2, char a3)
{
  result = sub_1B9F39410(a1, a2, a3, *v3, &qword_1EDC5DC70, &qword_1EDC67F10);
  *v3 = result;
  return result;
}

void sub_1B9F395C8()
{
  sub_1B9F39780(319, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  if (v0 <= 0x3F)
  {
    sub_1B9F39780(319, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    if (v1 <= 0x3F)
    {
      sub_1B9F4A814(319, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1B9F4A864();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9F39780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F3980C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 376))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(from:)(uint64_t a1)
{
  swift_allocObject();
  sub_1B9F0A534(a1, v4);
  v2 = CellHeaderViewModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t getEnumTagSinglePayload for DataLoggingPluginViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B9F39968()
{
  result = qword_1EDC6CF28[0];
  if (!qword_1EDC6CF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6CF28);
  }

  return result;
}

uint64_t sub_1B9F399C0(uint64_t a1)
{
  sub_1B9F39A1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F39A1C()
{
  if (!qword_1EDC6C320)
  {
    sub_1B9F0D9AC(255, qword_1EDC6C328);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6C320);
    }
  }
}

void sub_1B9F39A88()
{
  if (!qword_1EDC6B440)
  {
    sub_1B9F0D9AC(255, qword_1EDC6C328);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B440);
    }
  }
}

Swift::Void __swiftcall PrimarySecondaryDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, qword_1EDC6C328);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(&v7 + 1);
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v3 + 8))(a1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1B9F399C0(&v6);
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v7 + 1);
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v5 + 8))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1B9F399C0(&v6);
  }
}

void sub_1B9F39D20()
{
  v1 = v0;
  v2 = type metadata accessor for EmptyStateCollectionViewCell();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    (*(*(v4 + 16) + 8))(v2);
    v7 = sub_1BA4A6758();

    [v1 registerNib:v5 forCellWithReuseIdentifier:v7];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    off_1F380B600();
    v7 = sub_1BA4A6758();

    [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }
}

void UICollectionView.registerCell<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = swift_conformsToProtocol2();
  if (v7 && a2)
  {
    v8 = v7;
    v9 = (*(v7 + 24))(a2, v7);
    (*(*(v8 + 16) + 8))(a2);
    v11 = sub_1BA4A6758();

    [v4 registerNib:v9 forCellWithReuseIdentifier:v11];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (*(a3 + 8))(a2, a3);
    v11 = sub_1BA4A6758();

    [v4 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];
  }
}

uint64_t sub_1B9F39FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HideableDataSource<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B9F437D0();
  v6 = *(a2 + 8);
  v7 = *(v5 + 80);
  swift_unknownObjectRetain();
  v6(a1, v7, a2);
  return swift_unknownObjectRelease();
}

void sub_1B9F3A13C()
{
  v1 = v0;
  v2 = type metadata accessor for EmptyHeaderCollectionReusableView();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    v6 = sub_1BA4A6758();
    (*(*(v4 + 16) + 8))(v2);
    v8 = sub_1BA4A6758();

    [v1 registerNib:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v8];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_1BA4A6758();
    v8 = sub_1BA4A6758();
    [v1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v6 withReuseIdentifier:?];
  }
}

void sub_1B9F3A31C()
{
  if (!qword_1EDC5E068)
  {
    v0 = sub_1BA4A7C08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E068);
    }
  }
}

uint64_t sub_1B9F3A36C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1B9F3A3B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v10 = *v5;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  if (sub_1B9F3A69C(a1, a2))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 24))(a3, v35, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = a1;
    v31 = a3;
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v20 = v14;
    sub_1BA4A3D88();
    v21 = v35;

    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315650;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v36);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1B9F0B82C(v31, v21, &v36);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_1B9F0B82C(v30, v15, &v36);
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s]: Unable to retrieve item at with uniqueIdentifier %s, for child data source %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v34 + 8))(v20, v33);
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B9F3A69C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSourcesIdentifierToIndexMap);
  if (*(v11 + 16) && (result = sub_1B9F24A34(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * result);
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(*(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources) + 16))
    {
      return swift_unknownObjectRetain();
    }

    __break(1u);
  }

  else
  {
    sub_1BA4A3D88();

    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = a1;
      v25[0] = v18;
      v19 = v18;
      *v17 = 136315394;
      v25[1] = v6;
      swift_getMetatypeMetadata();
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, v25);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1B9F0B82C(v24, a2, v25);
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s]: Unable to retrieve data source with identifier %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return result;
}

void *sub_1B9F3A92C()
{
  sub_1BA164F44();
  result = sub_1BA4A6E08();
  if (result[2])
  {
    v1 = result[4];
    v2 = result[5];
    v3 = result[6];
    v4 = result[7];

    v5 = MEMORY[0x1BFAF12A0](v1, v2, v3, v4);

    result = sub_1BA4A6E08();
    if (result[2])
    {
      sub_1B9F261DC(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
      sub_1B9F407D0();
      sub_1B9F439FC();
      sub_1BA4A6A48();

      sub_1BA4A69D8();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F3AB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B9F3A92C();
  sub_1B9F3A3B4(v2, v3, v4, v5, a1);
}

double sub_1B9F3AB98@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  v35 = a1;
  v36 = a2;
  sub_1BA4A4568();
  (*(v10 + 8))(v12, v9);
  v14 = v30;
  if (v30)
  {
    v15 = v29;
    v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
    swift_beginAccess();
    v17 = *(v4 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1B9F24A34(v15, v14);
      v20 = v19;

      if (v20)
      {
        v21 = (*(v17 + 56) + 48 * v18);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v27 = v21[4];
        v26 = v21[5];

        v29 = v23;
        v30 = v22;
        v31 = v24;
        v32 = v25;
        v33 = v27;
        v34 = v26;
        ArrayDataSourceSection.item(for:)(a1, a2, a3);

        return result;
      }
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t ArrayDataSourceSection.item(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 24);
  if (!*(v6 + 16) || (v7 = *(v4 + 16), result = sub_1B9F24A34(result, a2), (v8 & 1) == 0))
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_1B9F0A534(v7 + 40 * v9 + 32, a3);
}

uint64_t sub_1B9F3AE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

unint64_t sub_1B9F3AEE8()
{
  result = qword_1EDC67DC0;
  if (!qword_1EDC67DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67DC0);
  }

  return result;
}

uint64_t sub_1B9F3AF4C()
{
  swift_beginAccess();
  v0 = qword_1EBBF0198;

  return v0;
}

uint64_t sub_1B9F3AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  return (*(a4 + 248))(a1, a2, a6, a7, a3, sub_1B9F5D980, v13);
}

void *sub_1B9F3B090(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a6;
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  sub_1BA4A70E8();
  v42[0] = 2;
  sub_1B9F1174C();
  sub_1BA4A1CC8();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded) = 0;
  type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  swift_storeEnumTagMultiPayload();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) = a1;
  v15 = (a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  *v15 = a2;
  v15[1] = a8;
  v37 = a8;
  v15[2] = a9;
  v16 = a1;
  swift_unknownObjectRetain();
  [v16 _setShouldPrefetchCellsWhenPerformingReloadData_];
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a2;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = v14;
  sub_1B9F11824(0, &qword_1EDC5F880, MEMORY[0x1E69E6168], MEMORY[0x1E69DC228]);
  v19 = objc_allocWithZone(v18);
  v20 = v16;
  swift_unknownObjectRetain();

  v39 = v20;
  v21 = sub_1BA4A46B8();
  v22 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource) = v21;
  v23 = v15[1];
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 40);
  swift_unknownObjectRetain();
  v26 = v25(ObjectType, v23);
  swift_unknownObjectRelease();
  [v26 registerObserver_];

  v27 = *(a6 + v22);
  swift_unownedRetainStrong();
  v28 = v27;
  swift_unownedRetain();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = a6;
  *(v29 + 24) = v14;
  sub_1BA4A46C8();

  swift_unownedRelease();
  LOBYTE(v28) = (*(v37 + 32))(a7);
  swift_unknownObjectRelease();
  if (v28)
  {
    v30 = *(a6 + v22);
    swift_allocObject();
    swift_weakInit();
    v31 = v30;

    v32 = sub_1BA4A4708();
    sub_1B9F11824(0, &qword_1EDC5F888, MEMORY[0x1E69E6168], MEMORY[0x1E69DC210]);
    sub_1BA4A46F8();
    v32(v42, 0);

    v33 = *(a6 + v22);
    swift_allocObject();
    swift_weakInit();
    v34 = v33;

    v35 = sub_1BA4A4708();
    sub_1BA4A46E8();
    v35(v42, 0);
  }

  return a6;
}

uint64_t sub_1B9F3B4EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F3B52C()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F3B564()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1B9F3B59C()
{
  result = qword_1EDC66C70;
  if (!qword_1EDC66C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC66C70);
  }

  return result;
}

Swift::Bool __swiftcall PrimarySecondaryDataSource.isReorderable()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[12];
  v3 = *(v2 + 32);
  v4 = v1[10];
  swift_unknownObjectRetain();
  v5 = v3(v4, v2);
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    v7 = v1[13];
    v8 = *(v7 + 32);
    v9 = v1[11];
    swift_unknownObjectRetain();
    v6 = v8(v9, v7);
    swift_unknownObjectRelease();
  }

  return v6 & 1;
}

Swift::Bool __swiftcall SnapshotDataSource.isReorderable()()
{
  sub_1B9F0D9AC(0, &qword_1EDC66C70);
  swift_unknownObjectRetain();
  v0 = swift_dynamicCast();
  if (v0)
  {
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1(&v3);
    LOBYTE(v0) = v1;
  }

  return v0;
}

uint64_t sub_1B9F3B7C8()
{
  v0 = sub_1B9F23FB0();
  v1 = (*(*v0 + 248))(v0);

  sub_1B9F3BED8(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v5 = sub_1BA4A4438();
  v6 = MEMORY[0x1E69DC130];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1BA4A6588();
  v8 = sub_1B9F3A36C(&qword_1EDC5E8D0, MEMORY[0x1E69A4080]);
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  sub_1B9F3BC30(inited);
  return v1;
}

uint64_t sub_1B9F3B8FC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1B9F40D78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PrimarySecondaryDataSource.observedTraits.getter()
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, &qword_1EDC63A40);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v0 = *(&v9 + 1);
    v1 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v6 = v5;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v8 = v2;
  sub_1B9F3BC30(v6);
  return v8;
}

uint64_t sub_1B9F3BB6C(uint64_t a1)
{
  sub_1B9F3BBC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F3BBC8()
{
  if (!qword_1EDC63A30)
  {
    sub_1B9F0D950(255, &qword_1EDC63A40);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC63A30);
    }
  }
}

uint64_t sub_1B9F3BC30(uint64_t result)
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

  result = sub_1B9F3BD1C(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

char *sub_1B9F3BD1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
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

uint64_t HideableDataSource<>.observedTraits.getter(uint64_t a1)
{
  v3 = *v1;
  sub_1B9F437D0();
  return (*(a1 + 8))(*(v3 + 80), a1);
}

void sub_1B9F3BED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F3BF3C()
{
  result = qword_1EDC5F8C0;
  if (!qword_1EDC5F8C0)
  {
    sub_1B9F3BF84();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EDC5F8C0);
  }

  return result;
}

unint64_t sub_1B9F3BF84()
{
  result = qword_1EDC5F8D0;
  if (!qword_1EDC5F8D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5F8D0);
  }

  return result;
}

uint64_t (*static CompoundDataSourceCollectionViewController.makeLayoutErrorHandler(diffableAdaptor:)())(void *a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  return sub_1BA16509C;
}

uint64_t sub_1B9F3C064()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3C09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9F3C0D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = objc_opt_self();

  sub_1B9F0F1B8(a1);
  v7 = [v6 defaultConfiguration];
  [v7 setContentInsetsReference_];
  v8 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v12[4] = sub_1B9F54DE8;
  v12[5] = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B9F54940;
  v12[3] = &block_descriptor_24_1;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithSectionProvider:v9 configuration:v7];

  _Block_release(v9);

  return v10;
}

uint64_t sub_1B9F3C228()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void ProfileButtonDisplaying<>.updateProfileButtonForCompactSizeClass()(uint64_t a1, uint64_t a2)
{
  v5 = [v2 navigationItem];
  [v5 setLargeTitleDisplayMode_];

  v6 = [v2 navigationItem];
  v7 = (*(a2 + 8))(a1, a2);
  [v6 _setLargeTitleAccessoryView_alignToBaseline_];
}

id ProfileBarButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B9F3C3C0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ProfileBarButton();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1B9F3C618();
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel_openProfileViewControllerWithSender_];
  v12 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer] = v11;
  v13 = v11;

  if (v13)
  {
    v14 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView];
    [v14 addGestureRecognizer_];

    v15 = v9;
    [v15 setIsAccessibilityElement_];
    [v15 setAccessibilityTraits_];
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v16 = sub_1BA4A6758();

    [v15 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_1B9F3C618()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for MeContactAvatarView());
    v6 = sub_1B9F3C6B0(1);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1B9F3C6B0(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_defaultAvatarImageSymbolConfiguration;
  *&v1[v3] = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:28.0];
  v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_avatarSize] = a1 & 1;
  type metadata accessor for PublisherImageView();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_screenScale] = v6;
  v7 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_monogramRightToLeft] = v7;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MeContactAvatarView();
  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView;
  v10 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView];
  v11 = v8;
  [v11 addSubview_];
  [*&v8[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 hk:*&v8[v9] alignConstraintsWithView:?];
  sub_1B9F3C990();

  return v11;
}

void sub_1B9F3C928()
{
  if (!qword_1EDC5E1E0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E1E0);
    }
  }
}

uint64_t sub_1B9F3C990()
{
  sub_1B9F3D850();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v58 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D608(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v45 - v4;
  sub_1B9F3DA8C();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44C60();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44B94();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BA4A72F8();
  v11 = *(v46 - 1);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_defaultAvatarImageSymbolConfiguration);
  v17 = sub_1BA4A6758();
  v47 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  sub_1BA4A6498();
  v61 = MEMORY[0x1E69E7CC0];
  sub_1B9F3DBF4(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
  sub_1B9F3D608(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v46);
  v18 = v45;
  v19 = sub_1BA4A7328();
  v20 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_avatarSize);
  v21 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_screenScale);
  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v22 = 86.0;
  if (v20)
  {
    v22 = 44.0;
  }

  v61 = v22;
  v62 = v21;
  v63 = qword_1EDC63688;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v19;
  v25 = MEMORY[0x1E695BED0];
  sub_1B9F3DE4C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F3DB14();

  v46 = v19;
  v26 = v48;
  sub_1BA4A4FE8();

  v27 = sub_1B9F3DBF4(&qword_1EDC5F690, sub_1B9F3DA8C);
  v28 = sub_1B9F3DED0(&qword_1EDC5F498, &qword_1EDC5F490, v25);
  v29 = v50;
  v30 = v51;
  MEMORY[0x1BFAEFB60](v50, v27, v28);
  (*(v49 + 8))(v26, v29);
  v31 = sub_1BA4A7308();
  v61 = *&v31;
  v32 = sub_1BA4A72A8();
  v33 = v54;
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  sub_1B9F3DBF4(&qword_1EDC5F6B0, sub_1B9F44C60);
  sub_1B9F3DC80();
  v34 = v55;
  v35 = v53;
  sub_1BA4A50A8();
  sub_1B9F0DCE0(v33, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D608);

  (*(v52 + 8))(v30, v35);
  sub_1B9F3D608(0, &qword_1EDC5DB78, sub_1B9F3C928, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5480;
  v37 = v47;
  *(v36 + 32) = v47;
  sub_1B9F3DBF4(&qword_1EDC5F520, sub_1B9F44B94);
  v38 = v37;
  v40 = v57;
  v39 = v58;
  sub_1BA4A5098();

  v41 = *((*MEMORY[0x1E69E7D40] & **(v18 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView)) + 0x70);
  v42 = sub_1B9F3DBF4(&qword_1EDC5F6E0, sub_1B9F3D850);
  v43 = v60;
  v41(v39, v60, v42);

  (*(v59 + 8))(v39, v43);
  return (*(v56 + 8))(v34, v40);
}

uint64_t sub_1B9F3D358()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3D390()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B9F3D3D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F3D424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D550(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F3D5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D6D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F3D724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D850()
{
  if (!qword_1EDC5F6D8)
  {
    sub_1B9F40E34();
    sub_1B9F44B94();
    sub_1B9F3DBF4(&qword_1EDC5F580, sub_1B9F40E34);
    sub_1B9F3DBF4(&qword_1EDC5F520, sub_1B9F44B94);
    v0 = sub_1BA4A4AF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F6D8);
    }
  }
}

void sub_1B9F3D93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3D9AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3DA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3DA8C()
{
  if (!qword_1EDC5F688)
  {
    sub_1B9F3D93C(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F3DB14();
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F688);
    }
  }
}

unint64_t sub_1B9F3DB14()
{
  result = qword_1EDC63590;
  if (!qword_1EDC63590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63590);
  }

  return result;
}

uint64_t sub_1B9F3DB68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D93C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3DBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F3DBF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F3DC3C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F2C28(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9F3DC80()
{
  result = qword_1EDC6B5B0;
  if (!qword_1EDC6B5B0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B5B0);
  }

  return result;
}

void *sub_1B9F3DCE8()
{
  type metadata accessor for MeProfilePictureCachePublisher.SharePublisherCache();
  result = MeProfilePictureCachePublisher.SharePublisherCache.__allocating_init()();
  qword_1EDC63688 = result;
  return result;
}

void *MeProfilePictureCachePublisher.SharePublisherCache.__allocating_init()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  type metadata accessor for MeProfilePictureCachePublisher.SharePublisherCache();
  v2 = swift_allocObject();
  sub_1BA4A1C18();
  swift_allocObject();
  v2[2] = sub_1BA4A1C08();
  v3 = MEMORY[0x1E69E7CC8];
  v2[4] = v1;
  v2[5] = v3;
  v2[3] = sub_1B9F44FAC;
  v4 = objc_opt_self();

  v5 = [v4 defaultCenter];
  [v5 addObserver:v2 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  return v2;
}

void sub_1B9F3DE4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9F3DED0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3DE4C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3DF14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a4;
  v23[3] = a5;
  v6 = v5;
  v23[1] = a1;
  sub_1B9F3E26C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B9F38BF4();
  v13 = sub_1B9F3E224(&qword_1EDC6B5B0, sub_1B9F38BF4);
  v24 = a2;
  v25 = v12;
  v26 = a3;
  v27 = v13;
  v14 = sub_1BA4A4CC8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v18 = sub_1BA4A7308();
  v24 = v18;
  v19 = sub_1BA4A72A8();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v11);

  KeyPath = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  sub_1B9F44D78(KeyPath, v6, v14, WitnessTable);

  (*(v15 + 8))(v17, v14);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();
}

id sub_1B9F3E190@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

uint64_t sub_1B9F3E1E0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0ADF8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3E224(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9F3E26C()
{
  if (!qword_1EDC6B5B8)
  {
    sub_1BA4A72A8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B5B8);
    }
  }
}

uint64_t sub_1B9F3E2C4(uint64_t a1)
{
  sub_1B9F3E26C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F3E320(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t MeProfilePictureCachePublisher.receive<A>(subscriber:)()
{
  sub_1B9F3E438(*v0, v0[1]);
  v1 = MEMORY[0x1E695BED0];
  sub_1B9F3DA1C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F44FF8(&qword_1EDC5F498, &qword_1EDC5F490, v1);
  sub_1BA4A5108();
}

uint64_t sub_1B9F3E438(double a1, double a2)
{
  v3 = v2;
  sub_1BA4A1BE8();
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16) && (v7 = sub_1B9F3EE1C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    *&v13 = a1;
    *(&v13 + 1) = a2;
    v9 = sub_1B9F3E544(&v13);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_1B9F450D0(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    *(v3 + 40) = v12;
    swift_endAccess();
  }

  sub_1BA4A1BF8();
  return v9;
}

uint64_t sub_1B9F3E544(__int128 *a1)
{
  sub_1B9F3E860(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  sub_1B9F44EC0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 24);
  v19 = *a1;
  *&v19 = v11(&v19);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v12 = sub_1BA4A7308();
  v18[1] = v12;
  v13 = sub_1BA4A72A8();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = MEMORY[0x1E695BED0];
  sub_1B9F3DA1C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F44FF8(&qword_1EDC5F498, &qword_1EDC5F490, v14);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v5);

  sub_1B9F3EC74(&qword_1EDC5F540, sub_1B9F44EC0);
  v15 = sub_1BA4A4F68();
  (*(v8 + 8))(v10, v7);
  *&v19 = v15;
  sub_1B9F4503C();
  sub_1B9F3EC74(&qword_1EDC5F6F0, sub_1B9F4503C);
  v16 = sub_1BA4A4F98();

  return v16;
}

void sub_1B9F3E860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3E8C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F3E918(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D9AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3E95C(uint64_t *a1)
{
  v2 = sub_1BA4A72F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *a1;
  v9 = a1[1];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  sub_1BA4A6498();
  *&v19 = MEMORY[0x1E69E7CC0];
  sub_1B9F3EC74(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
  sub_1B9F3E860(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
  v10 = sub_1BA4A7328();
  v11 = objc_allocWithZone(MEMORY[0x1E6959A48]);
  v12 = v10;
  v13 = [v11 init];
  v14 = *MEMORY[0x1E698BB38];
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v20 = sub_1B9F3607C;
  v21 = 0;
  *&v22 = v13;
  *(&v22 + 1) = &off_1F38048C0;
  *&v23 = v10;
  *(&v23 + 1) = v14;
  v18[0] = v19;
  v18[1] = sub_1B9F3607C;
  v18[2] = v22;
  v18[3] = v23;
  sub_1B9F3ECBC();
  v15 = v14;
  v16 = sub_1BA4A4F98();

  sub_1B9F40F98(&v19);
  return v16;
}

uint64_t sub_1B9F3EC74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9F3ECBC()
{
  result = qword_1EDC65738[0];
  if (!qword_1EDC65738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC65738);
  }

  return result;
}

void sub_1B9F3ED10()
{
  if (!qword_1EDC5F548)
  {
    sub_1B9F44EC0();
    v0 = MEMORY[0x1E69A3180];
    sub_1B9F3DA1C(255, &qword_1EDC6AD78, MEMORY[0x1E69A3180]);
    sub_1B9F3EC74(&qword_1EDC5F540, sub_1B9F44EC0);
    sub_1B9F44FF8(&qword_1EDC6AD80, &qword_1EDC6AD78, v0);
    v1 = sub_1BA4A4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F548);
    }
  }
}

unint64_t sub_1B9F3EE1C(double a1, double a2)
{
  sub_1BA4A8488();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1BFAF2F00](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1BFAF2F00](*&v5);
  v6 = sub_1BA4A84D8();

  return sub_1B9F454BC(v6, a1, a2);
}

void sub_1B9F3EEB4()
{
  if (!qword_1EDC5E008)
  {
    sub_1B9F3EF20();
    sub_1B9F3EF88();
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E008);
    }
  }
}

void sub_1B9F3EF20()
{
  if (!qword_1EDC5F490)
  {
    sub_1B9F3C928();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F490);
    }
  }
}

unint64_t sub_1B9F3EF88()
{
  result = qword_1EDC63698[0];
  if (!qword_1EDC63698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC63698);
  }

  return result;
}

unint64_t sub_1B9F3EFDC(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = (a3[6] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  *(a3[7] + 8 * result) = a2;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_1B9F3F028()
{
  result = sub_1BA4A3A68();
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

uint64_t sub_1B9F3F1FC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1BA4A3A68();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1B9F3F2D8()
{
  sub_1B9F45A18();
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_profilePictureStoreDidChange_ name:*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)) object:0];
}

void sub_1B9F3F378()
{
  if (!qword_1EDC5E6B0)
  {
    sub_1BA4A6478();
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E6B0);
    }
  }
}

Swift::Void __swiftcall GradientBackgroundPresenting.configureGradientBackground()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = [v2 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v7 = objc_opt_self();
  v8 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v50[0]) - 4) & 0xF7) != 0)
  {
    v8 = &selRef_systemGroupedBackgroundColor;
  }

  v9 = [v7 *v8];
  v10 = [v3 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 setBackgroundColor_];

  v12 = *(v4 + 48);
  v12(v50, v5, v4);
  v13 = v51;
  v14 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v14 + 8))(v13, v14);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v50);
  v15 = *(v4 + 8);
  v16 = v15(v5, v4);
  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 8))(v49, ObjectType, v18);

  v20 = v15(v5, v4);
  v21 = [v20 layer];

  [v21 setZPosition_];
  v22 = [v3 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = v15(v5, v4);
  [v23 insertSubview:v24 atIndex:0];

  v48 = v12;
  v12(v50, v5, v4);
  v25 = v51;
  v26 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v26 + 8))(v25, v26);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v4;
  v28[4] = v27;
  sub_1B9F10B50();
  sub_1B9F4117C();
  v29 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v4 + 24))(v29, v5, v4);
  v30 = v15(v5, v4);
  v32 = v31;
  v33 = [v3 view];
  if (!v33)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v34 = v33;

  v35 = [v34 backgroundColor];

  if (!v35)
  {
    v35 = [objc_opt_self() systemBackgroundColor];
  }

  v36 = swift_getObjectType();
  (*(v32 + 16))(v35, v36, v32);

  sub_1B9F0F2FC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5480;
  v38 = sub_1BA4A4178();
  v39 = MEMORY[0x1E69DC0F8];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = swift_allocObject();
  v40[2] = v5;
  v40[3] = v4;
  v40[4] = v9;
  v41 = v9;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  v48(v50, v5, v4);
  v42 = v51;
  v43 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v44 = *((*(v43 + 24))(v42, v43) + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (v44)
  {
    v48(v50, v5, v4);
    v45 = v51;
    v46 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v46 + 24))(v45, v46);
    v47 = swift_allocObject();
    *(v47 + 16) = v5;
    *(v47 + 24) = v4;
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
  }
}

uint64_t sub_1B9F3FA1C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3FA54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F3FA8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *sub_1B9F3FAD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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

double static PersonalizedFeedTrainer.DwellPolicy.summary.getter@<D0>(uint64_t a1@<X8>)
{
  result = 2.5;
  *a1 = xmmword_1BA4D7B40;
  *(a1 + 16) = 0x3FF3333333333333;
  return result;
}

uint64_t _s18HealthExperienceUI31PersonalizedFeedTrainerDelegatePAAE07visibleE24ItemsEligibleForTraining2inShy0A8Platform0E4ItemCGSo16UICollectionViewC_tF_0(void *a1)
{
  v68 = sub_1BA4A1C68();
  v55 = *(v68 - 8);
  v2 = MEMORY[0x1EEE9AC00](v68);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - v4;
  v54 = a1;
  v6 = [a1 visibleCells];
  sub_1B9F0ADF8(0, &qword_1EDC6B550);
  v7 = sub_1BA4A6B08();

  v69 = MEMORY[0x1E69E7CC0];
  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_30:
    v9 = sub_1BA4A7CC8();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v11 = v7 & 0xC000000000000001;
      v12 = v7 + 32;
      v64 = v55 + 16;
      v53 = MEMORY[0x1E69E7CC0];
      v67 = (v55 + 8);
      v56 = v7;
      v58 = v8;
      v60 = v9;
      v57 = v7 & 0xC000000000000001;
      v59 = v7 + 32;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x1BFAF2860](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v10);
        }

        v14 = v13;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        type metadata accessor for ChromeHostViewCell(0);
        v16 = swift_dynamicCastClass();
        if (!v16)
        {
          goto LABEL_4;
        }

        v17 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
        v18 = v16;
        result = swift_beginAccess();
        v20 = *(v18 + v17);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
        swift_beginAccess();
        v22 = *(v20 + v21);
        if (v22)
        {
          v23 = qword_1EDC6CB58;
          v24 = v14;
          v25 = v22;
          if (v23 != -1)
          {
            swift_once();
          }

          v26 = off_1EDC6CB60;
          sub_1BA4A26B8();
          if (*(v26 + 2))
          {
            v61 = v24;
            v62 = v25;
            v63 = v10;
            sub_1B9F85D08(&qword_1EDC6E240, MEMORY[0x1E69A3C08]);
            v27 = sub_1BA4A6698();
            v28 = -1 << v26[32];
            v29 = v27 & ~v28;
            v66 = v26 + 56;
            if ((*&v26[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29))
            {
              v30 = ~v28;
              v31 = *(v55 + 72);
              v32 = *(v55 + 16);
              while (1)
              {
                v33 = v65;
                v34 = v68;
                v32(v65, *(v26 + 6) + v31 * v29, v68);
                sub_1B9F85D08(&qword_1EDC6E230, MEMORY[0x1E69A3C08]);
                v35 = sub_1BA4A6728();
                v36 = *v67;
                (*v67)(v33, v34);
                if (v35)
                {
                  break;
                }

                v29 = (v29 + 1) & v30;
                if (((*&v66[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              v36(v5, v68);
              [v54 bounds];
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v46 = v61;
              [v61 frame];
              v71.origin.x = v47;
              v71.origin.y = v48;
              v71.size.width = v49;
              v71.size.height = v50;
              v70.origin.x = v39;
              v70.origin.y = v41;
              v70.size.width = v43;
              v70.size.height = v45;
              v51 = CGRectContainsRect(v70, v71);

              v8 = v58;
              v9 = v60;
              v10 = v63;
              v11 = v57;
              if (v51)
              {
                MEMORY[0x1BFAF1510]();
                v7 = v56;
                v12 = v59;
                if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1BA4A6B68();
                }

                sub_1BA4A6BB8();
                v53 = v69;
              }

              else
              {

                v7 = v56;
                v12 = v59;
              }
            }

            else
            {
LABEL_20:

              v37 = v61;
              (*v67)(v5, v68);
              v7 = v56;
              v8 = v58;
              v12 = v59;
              v9 = v60;
              v10 = v63;
              v11 = v57;
            }
          }

          else
          {

            (*v67)(v5, v68);
            v12 = v59;
            v9 = v60;
          }
        }

        else
        {
LABEL_4:
        }

        if (v10 == v9)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v52 = sub_1B9F51CBC(v53);

  return v52;
}

uint64_t sub_1B9F402F0()
{
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  return sub_1BA4A6808();
}

uint64_t DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(uint64_t a1)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2D28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39FD0(a1, v5, sub_1B9F0C700);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B9F0DF80(v5, sub_1B9F0C700);
    v10 = *v1;
    v11 = sub_1BA4A6758();
    [v10 removeObjectForKey_];

    return sub_1B9F0DF80(a1, sub_1B9F0C700);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v13 = *v1;
    sub_1BA4A2D08();
    v14 = sub_1BA4A6758();

    v15 = sub_1BA4A6758();
    [v13 setObject:v14 forKey:v15];

    sub_1B9F0DF80(a1, sub_1B9F0C700);
    return (*(v7 + 8))(v9, v6);
  }
}

void sub_1B9F405E0()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionHeaderWithIconReusableView();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    v6 = sub_1BA4A6758();
    (*(*(v4 + 16) + 8))(v2);
    v8 = sub_1BA4A6758();

    [v1 registerNib:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v8];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_1BA4A6758();
    v8 = sub_1BA4A6758();
    [v1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v6 withReuseIdentifier:?];
  }
}

unint64_t sub_1B9F407D0()
{
  result = qword_1EDC5E070;
  if (!qword_1EDC5E070)
  {
    sub_1B9F261DC(255, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E070);
  }

  return result;
}

void *sub_1B9F4085C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  ObjectType = swift_getObjectType();
  return sub_1B9F3B090(a1, a2, a5, a6, a7, v14, ObjectType, a3, a4);
}

Swift::Bool __swiftcall DataSourceWrapper.isReorderable()()
{
  v2 = v1;
  v3 = v0;
  sub_1B9F3B59C();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v9);
    (*(v2 + 32))(v3, v2);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 32);
    v6 = swift_checkMetadataState();
    v7 = v5(v6, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1B9F40A0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v7 = v4[2];
    if (!v7)
    {
LABEL_32:

      return;
    }

    v8 = (v4 + 4);
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B9F0A534(v8, &v25);
      v10 = v26;
      v11 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      v12 = (*(v11 + 8))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v13 = *(v12 + 16);
      v14 = *(v9 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v9 + 3) >> 1)
      {
        if (!*(v12 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v17 = v14 + v13;
        }

        else
        {
          v17 = v14;
        }

        v9 = sub_1B9F3BD1C(isUniquelyReferenced_nonNull_native, v17, 1, v9);
        if (!*(v12 + 16))
        {
LABEL_17:

          if (v13)
          {
            goto LABEL_35;
          }

          goto LABEL_18;
        }
      }

      v18 = *(v9 + 2);
      if ((*(v9 + 3) >> 1) - v18 < v13)
      {
        goto LABEL_36;
      }

      memcpy(&v9[16 * v18 + 32], (v12 + 32), 16 * v13);

      if (v13)
      {
        v19 = *(v9 + 2);
        v20 = __OFADD__(v19, v13);
        v21 = v19 + v13;
        if (v20)
        {
          goto LABEL_37;
        }

        *(v9 + 2) = v21;
      }

LABEL_18:
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_32;
      }
    }
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v25 = *(v1 + 32 + 16 * v3);
    sub_1B9F0D9AC(0, &qword_1EDC67F10);
    sub_1B9F0D9AC(0, &qword_1EDC63A40);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_1B9F1134C(&v22, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B9F3B95C(0, v4[2] + 1, 1, v4);
        }

        v6 = v4[2];
        v5 = v4[3];
        if (v6 >= v5 >> 1)
        {
          v4 = sub_1B9F3B95C((v5 > 1), v6 + 1, 1, v4);
        }

        v4[2] = v6 + 1;
        sub_1B9F1134C(&v25, &v4[5 * v6 + 4]);
        goto LABEL_5;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    sub_1B9F3B8FC(&v22, &qword_1EDC63A30, &qword_1EDC63A40);
LABEL_5:
    if (v2 == ++v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1B9F40D10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F40D78(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F40DD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F40E34()
{
  if (!qword_1EDC5F578)
  {
    sub_1B9F3D608(255, &qword_1EDC5E648, sub_1B9F3C928, MEMORY[0x1E69E62F8]);
    sub_1B9F40EE4();
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F578);
    }
  }
}

unint64_t sub_1B9F40EE4()
{
  result = qword_1EDC5E640;
  if (!qword_1EDC5E640)
  {
    sub_1B9F3D608(255, &qword_1EDC5E648, sub_1B9F3C928, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E640);
  }

  return result;
}

uint64_t sub_1B9F41010@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1BA4A3A68();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

double sub_1B9F410E4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0.0;
  v7[0] = 0;
  v4 = 0.0;
  v5 = 0.0;
  [v0 getRed:v7 green:&v6 blue:&v5 alpha:&v4];
  *&v1.f64[0] = v7[0];
  v2.f64[0] = v5;
  v1.f64[1] = v6;
  v2.f64[1] = v4;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v1), v2).u64[0];
  return result;
}

unint64_t sub_1B9F4117C()
{
  result = qword_1EDC5F468;
  if (!qword_1EDC5F468)
  {
    sub_1B9F10B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F468);
  }

  return result;
}

void sub_1B9F411D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 8))(a3, a4);
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v6, ObjectType, v11);
  }
}

uint64_t sub_1B9F41290(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t CodablePluginViewModel.init(userData:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v27 = sub_1BA4A3EA8();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA4A0E98();
  if (v3)
  {
    v26 = a1;

    sub_1BA4A3E28();
    v10 = v3;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315394;
      v28 = a3;
      swift_getMetatypeMetadata();
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, &v29);
      v25 = a2;
      v18 = v17;

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v28 = v3;
      v19 = v3;
      sub_1B9FED358();
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v29);
      a2 = v25;

      *(v13 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v27);
    sub_1B9F21374();
    swift_allocError();
    *v23 = v3 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(v26, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1B9F41674()
{
  sub_1B9F416DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B9F416DC()
{
  if (!qword_1EDC6E250)
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E250);
    }
  }
}

unint64_t sub_1B9F41748()
{
  result = qword_1EDC6CF10;
  if (!qword_1EDC6CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingTileDisabledState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingTileDisabledState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B9F418E4()
{
  sub_1B9F39780(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_1BA4A7488();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F4BDC0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F4BEAC();
  v12 = [objc_opt_self() defaultCenter];
  sub_1BA4A7498();

  sub_1B9F38BF4();
  v13 = sub_1BA4A7308();
  v18[3] = v13;
  v14 = sub_1BA4A72A8();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_1B9F42A64(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
  sub_1B9F42A64(&qword_1EDC6B5B0, sub_1B9F38BF4);
  sub_1BA4A50A8();
  sub_1B9F4C1D4(v2, &qword_1EDC6B5B8, v18[2]);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  v15 = v18[1];
  swift_weakInit();
  sub_1B9F42A64(&unk_1EDC6B750, sub_1B9F4BDC0);
  v16 = sub_1BA4A5148();

  (*(v9 + 8))(v11, v8);
  *(v15 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable) = v16;
}

uint64_t sub_1B9F41C90()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F41CC8()
{
  v0 = sub_1BA4A18A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1878();
  v4 = objc_allocWithZone(MEMORY[0x1E69A4358]);
  v5 = sub_1BA4A1818();
  v6 = [v4 initWithCalendar_];

  result = (*(v1 + 8))(v3, v0);
  qword_1EDC6E400 = v6;
  return result;
}

uint64_t SnidgetContentView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SnidgetContentView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t SnidgetCurrentValueView.ViewModel<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v56 = a4;
  v64 = a5;
  v8 = type metadata accessor for SnidgetCurrentValueView.ViewModel.DataCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v62 = v8;
  v55 = sub_1BA4A81E8();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v63 = &v47 - v9;
  v10 = type metadata accessor for SnidgetCurrentValueView.ViewModel.NoDataCodingKeys();
  v59 = swift_getWitnessTable();
  v60 = v10;
  v53 = sub_1BA4A81E8();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v47 - v11;
  type metadata accessor for SnidgetCurrentValueView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v67 = sub_1BA4A81E8();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v47 - v12;
  v65 = a2;
  v68 = a3;
  v14 = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v57 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v66 = v13;
  v20 = v74;
  sub_1BA4A8528();
  if (!v20)
  {
    v48 = v17;
    v49 = v19;
    v51 = v14;
    v50 = 0;
    v74 = a1;
    v22 = v66;
    v21 = v67;
    *&v70 = sub_1BA4A81D8();
    sub_1BA4A6BF8();
    swift_getWitnessTable();
    *&v72 = sub_1BA4A7C18();
    *(&v72 + 1) = v23;
    *&v73 = v24;
    *(&v73 + 1) = v25;
    sub_1BA4A7C08();
    swift_getWitnessTable();
    sub_1BA4A6E58();
    v26 = v70;
    if (v70 == 2 || (v47 = v72, v70 = v72, v71 = v73, (sub_1BA4A6E78() & 1) == 0))
    {
      v34 = sub_1BA4A7E68();
      swift_allocError();
      v36 = v35;
      sub_1B9FFFD90();
      *v36 = v51;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v69 + 8))(v22, v21);
    }

    else
    {
      if (v26)
      {
        LOBYTE(v70) = 1;
        v27 = v63;
        v28 = v50;
        sub_1BA4A8118();
        v29 = v64;
        if (!v28)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v31 = v48;
          v32 = v55;
          sub_1BA4A81C8();
          v33 = v69;
          (*(v54 + 8))(v27, v32);
          (*(v33 + 8))(v22, v21);
          swift_unknownObjectRelease();
          (*(*(AssociatedTypeWitness - 8) + 56))(v31, 0, 1, AssociatedTypeWitness);
          v44 = *(v57 + 32);
          v45 = v49;
          v46 = v51;
          v44(v49, v31, v51);
          v44(v29, v45, v46);
LABEL_14:
          v37 = v74;
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }
      }

      else
      {
        LOBYTE(v70) = 0;
        v39 = v58;
        v40 = v50;
        sub_1BA4A8118();
        v41 = v64;
        if (!v40)
        {
          (*(v52 + 8))(v39, v53);
          (*(v69 + 8))(v22, v21);
          swift_unknownObjectRelease();
          v42 = swift_getAssociatedTypeWitness();
          v43 = v49;
          (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
          (*(v57 + 32))(v41, v43, v51);
          goto LABEL_14;
        }
      }

      (*(v69 + 8))(v22, v21);
    }

    swift_unknownObjectRelease();
    a1 = v74;
  }

  v37 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1B9F42674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
  v5 = swift_allocObject();
  result = StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B9F426D0(uint64_t a1, uint64_t a2)
{
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F42764()
{
  if (!qword_1EDC6AE98)
  {
    sub_1BA4A1168();
    sub_1B9F4D13C(&qword_1EDC6AEE8, MEMORY[0x1E69DBE88]);
    v0 = sub_1BA4A14D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6AE98);
    }
  }
}

void sub_1B9F427F8()
{
  if (!qword_1EDC5E030)
  {
    sub_1BA4A1278();
    sub_1B9F4D13C(&qword_1EDC6AEC8, MEMORY[0x1E69687C8]);
    v0 = sub_1BA4A7FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E030);
    }
  }
}

uint64_t SnidgetTileView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SnidgetTileView.ViewModel.init(from:)(a1);
  return v2;
}

unint64_t sub_1B9F42954(char a1)
{
  result = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

void sub_1B9F429B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1B9F42A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F42A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F42AAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9F42AF4()
{
  result = qword_1EDC6CEF0;
  if (!qword_1EDC6CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEF0);
  }

  return result;
}

uint64_t sub_1B9F42B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F42BAC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F39780(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F42C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F42C80(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F39780(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F42CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *SnidgetContentView.ViewModel.init(from:)(void *a1)
{
  v49 = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1BA4A7AA8();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v30 - v6;
  v7 = *(v2 + 96);
  v8 = *(v2 + 80);
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1BA4A7AA8();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v30 - v11;
  *&v12 = v8;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = v3;
  v46 = v13;
  v45 = v12;
  v14 = *(v2 + 128);
  v37 = *(v2 + 112);
  v47 = v37;
  v32 = v14;
  v48 = v14;
  type metadata accessor for SnidgetContentView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v43 = sub_1BA4A81E8();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v30 - v15;
  v17 = *(*(v9 - 8) + 56);
  v35 = *(v2 + 144);
  v40 = v9;
  v18 = v9;
  v19 = v16;
  v17(&v1[v35], 1, 1, v18);
  v20 = *(*v1 + 152);
  v21 = *(*(AssociatedTypeWitness - 8) + 56);
  v34 = AssociatedTypeWitness;
  v21(&v1[v20], 1, 1, AssociatedTypeWitness);
  sub_1BA4A19D8();
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v42 = v19;
  v22 = v44;
  sub_1BA4A8528();
  if (v22)
  {
  }

  else
  {
    v24 = v35;
    v23 = v36;
    v26 = v38;
    v25 = v39;
    LOBYTE(v45) = 0;
    v27 = v41;
    sub_1BA4A8178();
    swift_beginAccess();
    (*(v26 + 40))(&v1[v24], v27, v25);
    swift_endAccess();
    LOBYTE(v45) = 1;
    v28 = v33;
    sub_1BA4A8178();
    (*(v23 + 8))(v42, v43);
    swift_beginAccess();
    (*(v30 + 40))(&v1[v20], v28, v31);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v1;
}

void sub_1B9F432CC(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (v8)
  {
    v10 = *(v7 + 64);
  }

  else
  {
    v9 = 0;
    v10 = *(v7 + 64) + 1;
  }

  if (a3 <= v9)
  {
    goto LABEL_15;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v11))
    {
      v6 = 4;
      if (v9 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 >= 2)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

LABEL_15:
    if (v9 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v6 = 1;
  if (v9 >= a2)
  {
LABEL_25:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v10] = 0;
    }

    else if (v6)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v8 >= 2)
    {
      v16 = *(v7 + 56);

      v16(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v13 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v13;
    v14 = 1;
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_39:
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v10 == 2)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_43:
      if (v6 == 2)
      {
        *&a1[v10] = v14;
      }

      else
      {
        *&a1[v10] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v6 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6)
  {
    a1[v10] = v14;
  }
}

uint64_t sub_1B9F4354C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B9F43614(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x617461446F6ELL;
  }
}

_WORD *storeEnumTagSinglePayload for PDFFileNameGenerator(_WORD *result, int a2, int a3)
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

void sub_1B9F436C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F4372C();
    v7 = a3(a1, &type metadata for StandardSnidgetCurrentValueDataView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B9F4372C()
{
  result = qword_1EDC6BAC8;
  if (!qword_1EDC6BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAC8);
  }

  return result;
}

void sub_1B9F43830()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultHeaderCollectionReusableView();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    v6 = sub_1BA4A6758();
    (*(*(v4 + 16) + 8))(v2);
    v8 = sub_1BA4A6758();

    [v1 registerNib:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v8];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_1BA4A6758();
    v8 = sub_1BA4A6758();
    [v1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v6 withReuseIdentifier:?];
  }
}

unint64_t sub_1B9F439FC()
{
  result = qword_1EDC5E880;
  if (!qword_1EDC5E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E880);
  }

  return result;
}

uint64_t sub_1B9F43A50(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1B9F0CDE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43AAC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1B9F0CE40(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F43B68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0CE9C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0CF08(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43C48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0CFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D028(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D08C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0D0F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43DE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D144(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43E50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D1B0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43EAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1BA172450(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43F68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D260(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43FD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0D31C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0D370(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44090(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D3C4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F44100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2173E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F441D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0D484(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F4422C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F4428C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D4D8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F442E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F443A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F44468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D5FC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F444C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D658(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D6BC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F48104(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F445EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D718(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44648(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F0D774(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F446A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F664A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F447C4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBBF0190;
  return result;
}

uint64_t storeEnumTagSinglePayload for PlatformCellBackgroundColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B9F3AFE0(a1, a2, a5, v5, ObjectType, a3, a4);
}

void sub_1B9F44938()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 2;
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
    LOBYTE(v6) = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v2 = v5;
    if (v6)
    {
      return;
    }
  }
}

BOOL sub_1B9F44A04()
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

BOOL sub_1B9F44A70()
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

void sub_1B9F44AE4()
{
  if (!qword_1EDC5DC60)
  {
    sub_1B9F0D9AC(255, &qword_1EDC63A40);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC60);
    }
  }
}

void sub_1B9F44B94()
{
  if (!qword_1EDC5F518)
  {
    sub_1B9F44C60();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F3DBF4(&qword_1EDC5F6B0, sub_1B9F44C60);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F518);
    }
  }
}

void sub_1B9F44C60()
{
  if (!qword_1EDC5F6A8)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1B9F3D93C(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F3DA8C();
    sub_1B9F3DB68(&qword_1EDC5F498, &qword_1EDC5F490, v0);
    sub_1B9F3DBAC(&qword_1EDC5F690, sub_1B9F3DA8C);
    v1 = sub_1BA4A4B48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6A8);
    }
  }
}

uint64_t sub_1B9F44D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;
  v8[5] = a1;

  v9 = sub_1BA4A5148();

  return v9;
}

uint64_t sub_1B9F44E40()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F44E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_1B9F44EC0()
{
  if (!qword_1EDC5F538)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1B9F3D9AC(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F3E918(&qword_1EDC5F498, &qword_1EDC5F490, v0);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F538);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B9F44FF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3DA1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9F4503C()
{
  if (!qword_1EDC5F6E8)
  {
    sub_1B9F3ED10();
    sub_1B9F3EC74(&qword_1EDC5F550, sub_1B9F3ED10);
    v0 = sub_1BA4A4AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F6E8);
    }
  }
}

unint64_t sub_1B9F450D0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F3EE1C(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_1BA0F28E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9F45208(v16, a2 & 1);
    v11 = sub_1B9F3EE1C(a3, a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_1B9F3EFDC(v11, a1, v21, a3, a4);
  }
}

uint64_t sub_1B9F45208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F3EEB4();
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v31 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      v21 = *&v31;
      if (*&v31 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1BFAF2F00](*&v21);
      v22 = *(&v31 + 1);
      if (*(&v31 + 1) == 0.0)
      {
        v22 = 0.0;
      }

      MEMORY[0x1BFAF2F00](*&v22);
      result = sub_1BA4A84D8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

unint64_t sub_1B9F454BC(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B9F45534()
{
  result = qword_1EDC63690;
  if (!qword_1EDC63690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63690);
  }

  return result;
}

uint64_t MeProfilePicturePublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  v11 = type metadata accessor for MeProfilePicturePublisher.Inner();
  v12 = v9;
  v13 = v10;

  swift_unknownObjectRetain();
  v14 = sub_1B9F3F10C(a1, v5, v6, v7, v8, v9, v13, v3, v4);
  v16[3] = v11;
  v16[4] = swift_getWitnessTable();
  v16[0] = v14;
  sub_1BA4A4CD8();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

id sub_1B9F456A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v30[1] = a1;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *v9;
  v15 = *MEMORY[0x1E69E7D40];
  v16 = sub_1BA4A3A68();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v30 - v18;
  v20 = &v10[*((v15 & v14) + 0x60)];
  v21 = sub_1BA4A1C18();
  swift_allocObject();
  v22 = sub_1BA4A1C08();
  v20[3] = v21;
  v20[4] = sub_1B9F0AE88(&qword_1EDC6AE00, MEMORY[0x1E69A3B50]);
  *v20 = v22;
  v23 = &v10[*((*v13 & *v10) + 0x88)];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_1BA4A3A58();
  (*(v17 + 32))(&v10[*((*v13 & *v10) + 0x68)], v19, v16);
  *&v10[*((*v13 & *v10) + 0x70)] = a8;
  *&v10[*((*v13 & *v10) + 0x78)] = a9;
  v24 = &v10[*((*v13 & *v10) + 0x80)];
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  v26 = &v10[*((*v13 & *v10) + 0x90)];
  v27 = v34;
  *v26 = v33;
  *(v26 + 1) = v27;
  *&v10[*((*v13 & *v10) + 0x98)] = v35;
  *&v10[*((*v13 & *v10) + 0xA0)] = v36;
  v28 = type metadata accessor for MeProfilePicturePublisher.Inner();
  v37.receiver = v10;
  v37.super_class = v28;
  return objc_msgSendSuper2(&v37, sel_init);
}

void sub_1B9F45A18()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + *((v2 & v1) + 0x98));
  if (v13)
  {
    v18[0] = v10;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = *(v3 + 80);
    v15[3] = *(v3 + 88);
    v15[4] = v14;
    aBlock[4] = sub_1B9F38B94;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_18;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    sub_1BA4A64A8();
    v18[1] = MEMORY[0x1E69E7CC0];
    sub_1B9F0AE88(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AE88(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v12, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v18[0]);
  }

  else
  {

    sub_1B9F35AE4();
  }
}

uint64_t sub_1B9F45DA0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F45DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F45E40(unint64_t a1)
{
  v2 = v1;
  v76 = [v1 layer];
  type metadata accessor for GradientLayer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    if (a1 >> 62)
    {
      v6 = sub_1BA4A7CC8();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        v18 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
        swift_beginAccess();
        *(v18 + 1) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 2) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 3) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 4) = 0u;
        [v5 setNeedsDisplay];
LABEL_70:

        v60 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
        *v60 = 0;
        v60[4] = 1;
        return;
      }

      if (v6 == 1)
      {
        v7 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFAF2860](0, a1);
          goto LABEL_10;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(a1 + 32);
LABEL_10:
          v9 = v8;
          *&v10 = sub_1B9F410E4();
          v63 = v10;

          v11 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
          swift_beginAccess();
          *(v11 + 1) = v63;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v12 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v12 = *(a1 + 32);
          }

          v27 = v12;
          *&v28 = sub_1B9F410E4();
          v67 = v28;

          *(v11 + 2) = v67;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v29 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v29 = *(a1 + 32);
          }

          v33 = v29;
          *v34.i64 = sub_1B9F410E4();
          v61 = v34;

          __asm { FMOV            V0.4S, #0.25 }

          v69 = _Q0;
          *(v11 + 3) = vmulq_f32(v61, _Q0);
          [v5 setNeedsDisplay];
          if (v7)
          {
            v40 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v40 = *(a1 + 32);
          }

          v41 = v40;
          *v42.i64 = sub_1B9F410E4();
          v62 = v42;

          *(v11 + 4) = vmulq_f32(v62, v69);
          [v5 setNeedsDisplay];

          v43 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
          *v43 = 0;
          v43[4] = 0;
          return;
        }

        __break(1u);
        goto LABEL_78;
      }

      goto LABEL_22;
    }

    if (v6 == 2)
    {
      v7 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          v23 = MEMORY[0x1BFAF2860](0, a1);
          goto LABEL_33;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
      *&v21 = sub_1B9F410E4();
      v65 = v21;

      v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
      swift_beginAccess();
      *(v16 + 1) = v65;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v22 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        v22 = *(a1 + 32);
      }

      v44 = v22;
      *&v45 = sub_1B9F410E4();
      v70 = v45;

      *(v16 + 2) = v70;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v46 = MEMORY[0x1BFAF2860](1, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v46 = *(a1 + 40);
      }

      v47 = v46;
      *&v48 = sub_1B9F410E4();
      v71 = v48;

      *(v16 + 3) = v71;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v49 = 1;
LABEL_68:
        v52 = MEMORY[0x1BFAF2860](v49, a1);
        goto LABEL_69;
      }

      v52 = *(a1 + 40);
    }

    else
    {
      if (v6 != 3)
      {
LABEL_22:
        if (v6 < 4)
        {
          goto LABEL_70;
        }

        v7 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_80;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(a1 + 32);
LABEL_33:
          v24 = v23;
          *&v25 = sub_1B9F410E4();
          v66 = v25;

          v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
          swift_beginAccess();
          *(v16 + 1) = v66;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v26 = MEMORY[0x1BFAF2860](1, a1);
LABEL_62:
            v53 = v26;
            *&v54 = sub_1B9F410E4();
            v73 = v54;

            *(v16 + 2) = v73;
            [v5 setNeedsDisplay];
            if (v7)
            {
              v55 = MEMORY[0x1BFAF2860](2, a1);
LABEL_66:
              v56 = v55;
              *&v57 = sub_1B9F410E4();
              v74 = v57;

              *(v16 + 3) = v74;
              [v5 setNeedsDisplay];
              if (v7)
              {
                v49 = 3;
                goto LABEL_68;
              }

              if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
              {
                v52 = *(a1 + 56);
                goto LABEL_69;
              }

LABEL_87:
              __break(1u);
              return;
            }

            if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
            {
              v55 = *(a1 + 48);
              goto LABEL_66;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v26 = *(a1 + 40);
            goto LABEL_62;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        __break(1u);
        goto LABEL_82;
      }

      v7 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v13 = *(a1 + 32);
      }

      v14 = v13;
      *&v15 = sub_1B9F410E4();
      v64 = v15;

      v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
      swift_beginAccess();
      *(v16 + 1) = v64;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v17 = MEMORY[0x1BFAF2860](1, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v17 = *(a1 + 40);
      }

      v30 = v17;
      *&v31 = sub_1B9F410E4();
      v68 = v31;

      *(v16 + 2) = v68;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v32 = MEMORY[0x1BFAF2860](2, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v32 = *(a1 + 48);
      }

      v50 = v32;
      *&v51 = sub_1B9F410E4();
      v72 = v51;

      *(v16 + 3) = v72;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v49 = 2;
        goto LABEL_68;
      }

      v52 = *(a1 + 48);
    }

LABEL_69:
    v58 = v52;
    *&v59 = sub_1B9F410E4();
    v75 = v59;

    *(v16 + 4) = v75;
    [v5 setNeedsDisplay];
    goto LABEL_70;
  }
}

void sub_1B9F46518(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView) layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = a1;
  sub_1B9F46608(v5, 0.0, 1.0, 0.1);

  v6 = sub_1BA4A6AE8();

  [v4 setColors_];
}

void *sub_1B9F46608(void *a1, double a2, double a3, double a4)
{
  v8 = sub_1B9F41290(a2, a3, a4);
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F468EC(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    goto LABEL_32;
  }

  v31 = v4;
  v10 = v35;
  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    v15 = a2;
    goto LABEL_17;
  }

  v13 = a2;
  do
  {
    if (a4 <= 0.0)
    {
      v14 = v13 <= a3;
    }

    else
    {
      v14 = v13 >= a3;
    }

    if (v14)
    {
      if (v11 & 1 | (v13 != a3))
      {
        goto LABEL_30;
      }

      v11 = 1;
      v15 = v13;
    }

    else
    {
      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_31;
      }

      v15 = a2 + v12 * a4;
    }

    v17 = fmin(fmax(v13, 0.0), 1.0);
    v18 = [a1 colorWithAlphaComponent_];
    v19 = [v18 CGColor];

    type metadata accessor for CGColor(0);
    v34 = v20;
    *&v33 = v19;
    v35 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1B9F468EC((v21 > 1), v22 + 1, 1);
      v10 = v35;
    }

    *(v10 + 16) = v22 + 1;
    result = sub_1B9F46920(&v33, (v10 + 32 * v22 + 32));
    v13 = v15;
    --v8;
  }

  while (v8);
LABEL_17:
  while (a4 <= 0.0 ? v15 <= a3 : v15 >= a3)
  {
    if ((v15 != a3) | v11 & 1)
    {
      return v10;
    }

    v11 = 1;
    v24 = v15;
LABEL_25:
    v25 = fmin(fmax(v15, 0.0), 1.0);
    v26 = [a1 colorWithAlphaComponent_];
    v27 = [v26 CGColor];

    type metadata accessor for CGColor(0);
    v34 = v28;
    *&v33 = v27;
    v35 = v10;
    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1B9F468EC((v29 > 1), v30 + 1, 1);
      v10 = v35;
    }

    *(v10 + 16) = v30 + 1;
    result = sub_1B9F46920(&v33, (v10 + 32 * v30 + 32));
    v15 = v24;
  }

  v16 = __OFADD__(v12++, 1);
  if (!v16)
  {
    v24 = a2 + v12 * a4;
    goto LABEL_25;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_1B9F468EC(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F3FAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1B9F46920(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B9F46930(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 traitCollection];
  v7 = sub_1BA4A7368();

  if (v7 != sub_1BA4A7368())
  {
    v8 = [a1 traitCollection];
    v9 = sub_1BA4A7368();

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x128))(v9);
  }

  v10 = sub_1B9F23FB0();
  (*(*v10 + 256))(a1, a2);

  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 collectionViewLayout];

    [v13 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F46AC4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    return sub_1BA4A7678();
  }

  return result;
}

uint64_t sub_1B9F46B24(void *a1, void *a2)
{
  v5 = sub_1BA4A6478();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v24 = result;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v23 = sub_1BA4A7308();
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    v27 = sub_1B9F84D00;
    v28 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    v26 = &block_descriptor_46;
    v15 = _Block_copy(aBlock);
    v16 = a2;

    swift_unknownObjectRetain();

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F46F90(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F46F90(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    v17 = v23;
    MEMORY[0x1BFAF1D50](0, v13, v8, v15);
    _Block_release(v15);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v24);
  }

  else
  {
    v18 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      swift_unknownObjectRetain();
      sub_1B9F0D9AC(0, &qword_1EDC67F10);
      sub_1B9F0D9AC(0, &qword_1EDC63A40);
      do
      {
        v31 = *v20;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v29, aBlock);
          v21 = v26;
          v22 = v27;
          __swift_project_boxed_opaque_existential_1(aBlock, v26);
          TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, 0, v21, v22);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          v30 = 0;
          memset(v29, 0, sizeof(v29));
          sub_1B9F3B8FC(v29, &qword_1EDC63A30, &qword_1EDC63A40);
        }

        ++v20;
        --v19;
      }

      while (v19);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B9F46F48()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F46F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F46FD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9F47020()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProfileGradientView();
  objc_msgSendSuper2(&v6, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    sub_1B9F470E0();
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 window];
    v5 = v4;
    if (v4)
    {
    }

    [v3 setPaused_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F470E0()
{
  if (!UIAccessibilityIsReduceMotionEnabled() && (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded) = 1;
    v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
    swift_beginAccess();
    if (*(v0 + v1) == 1)
    {
      sub_1B9F471D4();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate) = CACurrentMediaTime();
      v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink);
      if (v2)
      {
        v3 = objc_opt_self();
        v4 = v2;
        v5 = [v3 mainRunLoop];
        [v4 addToRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1B9F471D4()
{
  v26 = sub_1BA4A6478();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v1 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BA4A64C8();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A6468();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BA4A64E8();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v25 = sub_1BA4A7308();
  sub_1BA4A64D8();
  *v8 = 3;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F48], v5);
  MEMORY[0x1BFAF0F40](v13, v8);
  (*(v6 + 8))(v8, v5);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BA3626A4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_96;
  v18 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1B9F0AA08(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F0B95C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v19);
  v20 = v26;
  sub_1BA4A7C38();
  v21 = v25;
  MEMORY[0x1BFAF1CD0](v15, v4, v1, v18);
  _Block_release(v18);

  (*(v29 + 8))(v1, v20);
  (*(v27 + 8))(v4, v28);
  return (v16)(v15, v24);
}

uint64_t sub_1B9F4767C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t PersonalizedFeedTrainer.init(delegate:dwellPolicy:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B9F47720(a1, a3, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1B9F47720(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *a2;
  v7 = *(a2 + 2);
  v8 = MEMORY[0x1E69E7CC8];
  *(a3 + 16) = MEMORY[0x1E69E7CC8];
  *(a3 + 24) = v8;
  *(a3 + 32) = MEMORY[0x1E69E7CC0];
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 56) = a5;
  swift_unknownObjectWeakAssign();
  *(a3 + 64) = v13;
  *(a3 + 80) = v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  [v10 addObserver:a3 selector:sel_appDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v11 = [v9 defaultCenter];
  [v11 addObserver:a3 selector:sel_appDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  return a3;
}

uint64_t sub_1B9F47854(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
    sub_1B9F51E70(v5, a1);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id PersonalizedFeedTrainerDelegate<>.visibleFeedItemsEligibleForTraining()()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = _s18HealthExperienceUI31PersonalizedFeedTrainerDelegatePAAE07visibleE24ItemsEligibleForTraining2inShy0A8Platform0E4ItemCGSo16UICollectionViewC_tF_0(result);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B9F479AC(uint64_t a1)
{
  result = sub_1B9F51360();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F479EC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel()
{
  result = qword_1EDC6BAA8;
  if (!qword_1EDC6BAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F47AA4()
{
  sub_1B9F47BAC(319, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BA4A12C8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9F47BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47C10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F47C64()
{
  if (!qword_1EDC6B6B8)
  {
    type metadata accessor for SnidgetSwiftChartViewModel(255);
    sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel);
    v0 = sub_1BA4A5378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B6B8);
    }
  }
}

void sub_1B9F47CF8()
{
  sub_1B9F47C64();
  if (v0 <= 0x3F)
  {
    sub_1B9F51630(319, &qword_1EDC6C3F8, type metadata accessor for SnidgetSwiftChartViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9F51694(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1B9F516E4();
        if (v3 <= 0x3F)
        {
          sub_1B9F51630(319, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B9F47E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F47F20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F47F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F4803C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F480A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F48104(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F48158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F481BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F48210()
{
  sub_1BA4A2B98();
  if (v0 <= 0x3F)
  {
    sub_1B9F47FD8(319, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9F482E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9F482E4()
{
  if (!qword_1EDC6B648)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B648);
    }
  }
}

uint64_t sub_1B9F48334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F4837C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F483B8(uint64_t a1)
{
  result = sub_1B9F48334(&qword_1EDC6CCD0, type metadata accessor for SnidgetSwiftChartView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F48410()
{
  result = sub_1BA4A19E8();
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

uint64_t sub_1B9F484D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A7AA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F48634@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v98[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v98[-v12];
  v14 = FeedItem.pluginInfo.getter();
  if (!v14)
  {
    sub_1BA1EB328();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 2;
    return swift_willThrow();
  }

  v103 = v5;
  v104 = v4;
  v107 = v14;
  v15 = sub_1BA4A3AD8();
  [v15 load];

  v16 = sub_1BA4A2718();
  v19 = v17;
  v20 = v18;
  if (v18 == 4)
  {
    v33 = v16;

    v34 = sub_1BA4A6758();
    v35 = NSClassFromString(v34);

    if (!v35 || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v36 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
    {
      sub_1BA4A3DD8();
      sub_1BA1EB37C(v33, v19, 4u);
      v79 = a1;
      v80 = sub_1BA4A3E88();
      v81 = sub_1BA4A6FA8();
      sub_1B9F244F4(v33, v19, 4u);

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v105[0] = v101;
        *v82 = 136446466;
        *(v82 + 4) = sub_1B9F0B82C(v33, v19, v105);
        *(v82 + 12) = 2080;
        v100 = "secondaryDataSource";
        sub_1B9F2EAC0();
        v83 = swift_allocObject();
        v102 = v33;
        v84 = v83;
        *(v83 + 16) = xmmword_1BA4B5460;
        v85 = [v79 uniqueIdentifier];
        v86 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v99 = v81;
        v88 = v87;

        v84[7] = MEMORY[0x1E69E6158];
        v84[8] = sub_1B9F1BE20();
        v84[4] = v86;
        v84[5] = v88;
        v89 = [v79 dateSubmitted];
        v84[12] = sub_1B9F6A2A4();
        v84[13] = sub_1B9F6A24C();
        v84[9] = v89;
        v90 = sub_1BA4A67D8();
        v92 = sub_1B9F0B82C(v90, v91, v105);

        *(v82 + 14) = v92;
        _os_log_impl(&dword_1B9F07000, v80, v99, "Cannot resolve view from class name %{public}s for feedItem %s", v82, 0x16u);
        v93 = v101;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v93, -1, -1);
        MEMORY[0x1BFAF43A0](v82, -1, -1);

        (*(v103 + 8))(v11, v104);
        sub_1BA1EB328();
        swift_allocError();
        v94 = v102;
        *v95 = v102;
        *(v95 + 8) = v19;
        *(v95 + 16) = 0;
        swift_willThrow();
        v38 = v94;
      }

      else
      {

        (*(v103 + 8))(v11, v104);
        sub_1BA1EB328();
        swift_allocError();
        *v97 = v33;
        *(v97 + 8) = v19;
        *(v97 + 16) = 0;
        swift_willThrow();
        v38 = v33;
      }

      v39 = v19;
      v40 = 4;
      goto LABEL_25;
    }

    v26 = v36;
    v27 = v33;
    v28 = v33;
    v29 = v19;
    v30 = 4;
  }

  else
  {
    if (v18 != 3)
    {
      sub_1B9F244F4(v16, v17, v18);
      sub_1BA4A3DD8();
      v41 = a1;
      v42 = sub_1BA4A3E88();
      v43 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v105[0] = v101;
        *v44 = 136446210;
        v45 = sub_1BA4A2718();
        v47 = v46;
        v49 = v48;
        v50 = sub_1BA4A1D88();
        v102 = v41;
        v51 = v50;
        v53 = v52;
        sub_1B9F244F4(v45, v47, v49);
        v54 = sub_1B9F0B82C(v51, v53, v105);

        *(v44 + 4) = v54;
        _os_log_impl(&dword_1B9F07000, v42, v43, "%{public}s does not support SwiftUI Views", v44, 0xCu);
        v55 = v101;
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x1BFAF43A0](v55, -1, -1);
        MEMORY[0x1BFAF43A0](v44, -1, -1);
      }

      (*(v103 + 8))(v8, v104);
      v105[0] = sub_1BA4A2718();
      v105[1] = v56;
      v106 = v57;
      v58 = sub_1BA4A6808();
      v60 = v59;
      sub_1BA1EB328();
      swift_allocError();
      *v61 = v58;
      *(v61 + 8) = v60;
      *(v61 + 16) = 1;
      swift_willThrow();
    }

    v21 = v16;

    v22 = sub_1BA4A6758();
    v23 = NSClassFromString(v22);

    if (!v23 || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v25 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
    {
      sub_1BA4A3DD8();
      sub_1BA1EB37C(v21, v19, 3u);
      v62 = a1;
      v63 = sub_1BA4A3E88();
      v64 = sub_1BA4A6FA8();
      sub_1B9F244F4(v21, v19, 3u);

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v105[0] = v101;
        *v65 = 136446466;
        *(v65 + 4) = sub_1B9F0B82C(v21, v19, v105);
        *(v65 + 12) = 2080;
        v100 = "secondaryDataSource";
        sub_1B9F2EAC0();
        v66 = swift_allocObject();
        v102 = v21;
        v67 = v66;
        *(v66 + 16) = xmmword_1BA4B5460;
        v68 = [v62 uniqueIdentifier];
        v69 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v99 = v64;
        v71 = v70;

        v67[7] = MEMORY[0x1E69E6158];
        v67[8] = sub_1B9F1BE20();
        v67[4] = v69;
        v67[5] = v71;
        v72 = [v62 dateSubmitted];
        v67[12] = sub_1B9F6A2A4();
        v67[13] = sub_1B9F6A24C();
        v67[9] = v72;
        v73 = sub_1BA4A67D8();
        v75 = sub_1B9F0B82C(v73, v74, v105);

        *(v65 + 14) = v75;
        _os_log_impl(&dword_1B9F07000, v63, v99, "Cannot resolve view from class name %{public}s for feedItem %s", v65, 0x16u);
        v76 = v101;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v76, -1, -1);
        MEMORY[0x1BFAF43A0](v65, -1, -1);

        (*(v103 + 8))(v13, v104);
        sub_1BA1EB328();
        swift_allocError();
        v77 = v102;
        *v78 = v102;
        *(v78 + 8) = v19;
        *(v78 + 16) = 0;
        swift_willThrow();
        v38 = v77;
      }

      else
      {

        (*(v103 + 8))(v13, v104);
        sub_1BA1EB328();
        swift_allocError();
        *v96 = v21;
        *(v96 + 8) = v19;
        *(v96 + 16) = 0;
        swift_willThrow();
        v38 = v21;
      }

      v39 = v19;
      v40 = 3;
      goto LABEL_25;
    }

    v26 = v25;
    v27 = v21;
    v28 = v21;
    v29 = v19;
    v30 = 3;
  }

  sub_1B9F244F4(v28, v29, v30);
  v37 = *(v26 + 16);
  a2[3] = ObjCClassMetadata;
  a2[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v37(ObjCClassMetadata, v26);
  v38 = v27;
  v39 = v19;
  v40 = v20;
LABEL_25:
  sub_1B9F244F4(v38, v39, v40);
}

void *sub_1B9F48FD8@<X0>(void *a1@<X8>)
{
  result = PlatformConfigurationProvider.__allocating_init()();
  *a1 = result;
  return result;
}

void *PlatformConfigurationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = (*(*(*v0 + 88) + 32))();
  return v0;
}

uint64_t PlatformCellHostingConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UIPluginInfo.__deallocating_deinit()
{
  v0 = sub_1BA4A3AF8();
  sub_1B9F49114(*(v0 + qword_1EDC6DC48));

  return swift_deallocClassInstance();
}

void sub_1B9F49114(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1B9F49124(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v82 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - v6;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v8, v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v91)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v81 = v4;
      v9 = v87;
      v10 = [v87 userData];
      if (v10)
      {
        v77 = a1;
        v11 = v10;
        v79 = sub_1BA4A1608();
        v78 = v12;

        v13 = [v9 baseAutomationIdentifier];
        v80 = v9;
        if (v13)
        {
          v14 = v13;
          v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v17 = v16;

          sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BA4B5480;
          *(v18 + 32) = v15;
          *(v18 + 40) = v17;
          v19 = sub_1BA4A6AE8();

          v20 = HKUIJoinStringsForAutomationIdentifier();

          if (v20)
          {
            v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v23 = v22;
          }

          else
          {
            v21 = 0;
            v23 = 0;
          }

          sub_1B9F641A0(v21, v23);
          v9 = v80;
        }

        sub_1B9F48634(v9, v90);
        v43 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider;
        swift_beginAccess();
        sub_1B9F4A184(v90, v2 + v43, &qword_1EDC66650, &qword_1EDC66658);
        swift_endAccess();
        v44 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel;
        swift_beginAccess();
        v75 = v44;
        sub_1B9F374E8(v2 + v44, v90, &qword_1EDC68F40, &qword_1EDC68F50);
        v76 = v43;
        sub_1B9F374E8(v2 + v43, v86, &qword_1EDC66650, &qword_1EDC66658);
        if (v86[3])
        {
          sub_1B9F0A534(v86, v83);
          sub_1B9F4A1F4(v86, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
          v45 = v84;
          v46 = v85;
          __swift_project_boxed_opaque_existential_1(v83, v84);
          (*(v46 + 32))(&v87, v79, v78, v45, v46);
          __swift_destroy_boxed_opaque_existential_1(v83);
        }

        else
        {
          sub_1B9F4A1F4(v86, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
          v87 = 0u;
          v88 = 0u;
          v89 = 0;
        }

        v47 = v80;
        v48 = v75;
        swift_beginAccess();
        sub_1B9F4A184(&v87, v2 + v48, &qword_1EDC68F40, &qword_1EDC68F50);
        swift_endAccess();
        sub_1B9F374E8(v77, &v87, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
        if (*(&v88 + 1))
        {
          if (swift_dynamicCast())
          {
            v49 = v86[0];
            v50 = [v86[0] uniqueIdentifier];

            v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v53 = v52;

            goto LABEL_26;
          }
        }

        else
        {
          sub_1B9F4A1F4(&v87, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        }

        v51 = 0;
        v53 = 0;
LABEL_26:
        v54 = [v47 uniqueIdentifier];
        v55 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v57 = v56;

        if (v53)
        {
          if (v55 == v51 && v53 == v57)
          {

LABEL_32:
            sub_1B9F374E8(v90, &v87, &qword_1EDC68F40, &qword_1EDC68F50);
            v59 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
            swift_beginAccess();
            v60 = v2 + v59;
LABEL_34:
            sub_1B9F4A184(&v87, v60, &qword_1EDC68F40, &qword_1EDC68F50);
            swift_endAccess();
            sub_1B9F374E8(v2 + v76, &v87, &qword_1EDC66650, &qword_1EDC66658);
            v62 = *(&v88 + 1);
            if (*(&v88 + 1))
            {
              v63 = v89;
              v64 = __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
              v65 = *(v62 - 8);
              MEMORY[0x1EEE9AC00](v64);
              v67 = &v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v65 + 16))(v67);
              sub_1B9F4A1F4(&v87, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
              v68 = (*(v63 + 8))(v62, v63);
              (*(v65 + 8))(v67, v62);
              if (*(v68 + 16))
              {
                MEMORY[0x1BFAF2130](v68, sel_setNeedsUpdateConfiguration);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
              sub_1B9F4A1F4(&v87, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
            }

            v70 = sub_1B9F7C5E4();
            v71 = *(v69 + 24);
            if (v71)
            {
              v72 = *(v69 + 32);
              __swift_mutable_project_boxed_opaque_existential_1(v69, *(v69 + 24));
              v73 = *(v72 + 80);
              v74 = swift_unknownObjectRetain();
              v73(v74, &protocol witness table for ContentConfigurationHostCell, v71, v72);
            }

            (v70)(&v87, 0);
            sub_1B9F4A1F4(v90, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0CDE8);
            [v2 setNeedsUpdateConfiguration];
            sub_1B9F2BB4C(v79, v78);

            return;
          }

          v58 = sub_1BA4A8338();

          if (v58)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v61 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
        swift_beginAccess();
        v60 = v2 + v61;
        goto LABEL_34;
      }

      v4 = v81;
    }
  }

  else
  {
    sub_1B9F4A1F4(v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  }

  sub_1BA4A3E28();
  v24 = v2;
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v87 = v28;
    *v27 = 136315394;
    v29 = sub_1BA4A85D8();
    v31 = sub_1B9F0B82C(v29, v30, &v87);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_1B9F374E8(v2 + v8, v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v32 = v91;
    if (v91)
    {
      v33 = __swift_project_boxed_opaque_existential_1(v90, v91);
      v80 = &v75;
      v34 = *(v32 - 8);
      MEMORY[0x1EEE9AC00](v33);
      v81 = v28;
      v36 = v4;
      v37 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37);
      sub_1B9F4A1F4(v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v38 = sub_1BA4A2D58();
      v40 = v39;
      v41 = v37;
      v4 = v36;
      v28 = v81;
      (*(v34 + 8))(v41, v32);
    }

    else
    {
      v38 = 0x6E776F6E6B6E55;
      sub_1B9F4A1F4(v90, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v40 = 0xE700000000000000;
    }

    v42 = sub_1B9F0B82C(v38, v40, &v87);

    *(v27 + 14) = v42;
    _os_log_impl(&dword_1B9F07000, v25, v26, "[%s]: Failed to update hosting content for feed item: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  (*(v82 + 8))(v7, v4);
}

uint64_t sub_1B9F4A184(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1B9F0CDE8(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F4A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F4A278@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 8);
  a3[3] = AssociatedTypeWitness;
  a3[4] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B9F206D4(a1, a2);
  result = v9(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

char *SnidgetTileView.ViewModel.init(from:)(void *a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 128);
  v10 = *(*v1 + 136);
  v28 = *(*v1 + 88);
  v29 = v4;
  v35 = v4;
  v36 = v28;
  v27 = v5;
  v37 = v5;
  v38 = v6;
  v33 = v7;
  v34 = v6;
  v39 = v7;
  v40 = v8;
  v31 = v9;
  v32 = v8;
  v41 = v9;
  v42 = v10;
  v30 = v10;
  type metadata accessor for SnidgetTileView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1BA4A81E8();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - v12;
  v25 = qword_1EDC6DA40;
  sub_1BA4A19D8();
  v14 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BA4A8528();
  if (v2)
  {
    v17 = v28;
    v16 = v29;
    v18 = v27;
    v19 = sub_1BA4A19E8();
    (*(*(v19 - 8) + 8))(&v1[v25], v19);
    v35 = v16;
    v36 = v17;
    v37 = v18;
    v38 = v34;
    v39 = v33;
    v40 = v32;
    v41 = v31;
    v42 = v30;
    type metadata accessor for SnidgetTileView.ViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v11;
    type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
    LOBYTE(v43) = 0;
    sub_1B9F4A8E0(&qword_1EDC663B8, type metadata accessor for DisclosureCellHeaderView.ViewModel);
    v15 = v24;
    sub_1BA4A81C8();
    v21 = v34;
    *(v1 + 2) = v35;
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v38 = v21;
    v39 = v33;
    v40 = v32;
    v41 = v31;
    v42 = v30;
    type metadata accessor for SnidgetContentView.ViewModel();
    LOBYTE(v35) = 1;
    swift_getWitnessTable();
    sub_1BA4A81C8();
    (*(v23 + 8))(v13, v15);
    *(v1 + 3) = v43;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v1;
}

void sub_1B9F4A814(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F4A864()
{
  if (!qword_1EDC6B6F8)
  {
    sub_1B9F4A814(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A4F58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B6F8);
    }
  }
}

uint64_t sub_1B9F4A8E0(unint64_t *a1, void (*a2)(uint64_t))
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

char *CellHeaderViewModel.init(from:)(void *a1)
{
  v2 = v1;
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = v41 - v5;
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = v41 - v7;
  sub_1B9F429B0(0, &qword_1EDC6B468, sub_1B9F4B08C, &type metadata for CellHeaderViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  sub_1B9F4A864();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 4) = 0;
  v41[1] = v2 + 32;
  *(v2 + 5) = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v17 = type metadata accessor for CellHeaderDetailText(0);
  v18 = *(*(v17 - 8) + 56);
  v53 = v16;
  v18(&v2[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v20 = sub_1BA4A2B98();
  v21 = *(*(v20 - 8) + 56);
  v52 = v19;
  v21(&v2[v19], 1, 1, v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A814(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v56 = 0;
  v57 = 0;
  sub_1BA4A4EE8();
  v48 = v22;
  v49 = v13;
  v23 = *(v13 + 32);
  v50 = v12;
  v23(&v2[v22], v15, v12);
  v47 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v24 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B9F4B08C();
  v46 = v10;
  v25 = v51;
  sub_1BA4A8528();
  if (v25)
  {
    v30 = v52;
    v29 = v53;

    sub_1B9F4C1D4(&v2[v29], qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    sub_1B9F4C1D4(&v2[v30], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    (*(v49 + 8))(&v2[v48], v50);

    type metadata accessor for CellHeaderViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v42;
    v51 = v20;
    v27 = v43;
    LOBYTE(v56) = 0;
    v28 = v45;
    *(v2 + 2) = sub_1BA4A8188();
    *(v2 + 3) = v32;
    LOBYTE(v56) = 1;
    v33 = sub_1BA4A8138();
    v35 = v34;
    swift_beginAccess();
    *(v2 + 4) = v33;
    *(v2 + 5) = v35;

    v55 = 2;
    sub_1B9F42A64(&qword_1EDC6CEE0, type metadata accessor for CellHeaderDetailText);
    v36 = v46;
    sub_1BA4A8178();
    v37 = v53;
    swift_beginAccess();
    sub_1B9F42BAC(v26, &v2[v37], qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    swift_endAccess();
    v55 = 3;
    sub_1B9F42A64(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    sub_1BA4A8178();
    v38 = v44;
    v39 = v52;
    swift_beginAccess();
    sub_1B9F42BAC(v27, &v2[v39], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    swift_endAccess();
    v55 = 4;
    v40 = sub_1BA4A81B8();
    swift_beginAccess();
    v58 = v40;
    sub_1BA4A4EE8();
    swift_endAccess();
    sub_1B9F418E4();
    (*(v38 + 8))(v36, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v2;
}

unint64_t sub_1B9F4B08C()
{
  result = qword_1EDC6D6E0[0];
  if (!qword_1EDC6D6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D6E0);
  }

  return result;
}

unint64_t sub_1B9F4B0E4()
{
  result = qword_1EDC6D6D0;
  if (!qword_1EDC6D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D6D0);
  }

  return result;
}

unint64_t sub_1B9F4B138()
{
  result = qword_1EDC6D6D8;
  if (!qword_1EDC6D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D6D8);
  }

  return result;
}

uint64_t sub_1B9F4B18C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6C6961746564;
  v4 = 0x756F726765726F66;
  if (v1 != 3)
  {
    v4 = 0x696C696269736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E6567616D69;
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

uint64_t storeEnumTagSinglePayload for DataLoggingPluginViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CellHeaderDetailText.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B9F429B0(0, &qword_1EDC5DF00, sub_1B9F39968, &type metadata for CellHeaderDetailText.TextCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v6;
  sub_1B9F429B0(0, &qword_1EDC5DEF0, sub_1B9F4BB00, &type metadata for CellHeaderDetailText.DateCodingKeys, v3);
  v55 = v7;
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v51 - v8;
  sub_1B9F429B0(0, &qword_1EDC5DEF8, sub_1B9F41748, &type metadata for CellHeaderDetailText.CodingKeys, v3);
  v10 = v9;
  v62 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for CellHeaderDetailText(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B9F41748();
  v23 = v63;
  sub_1BA4A8528();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v53 = v16;
  v54 = v19;
  v24 = v59;
  v25 = v60;
  v63 = v13;
  v26 = v61;
  v27 = sub_1BA4A81D8();
  v28 = (2 * *(v27 + 16)) | 1;
  v65 = v27;
  v66 = v27 + 32;
  v67 = 0;
  v68 = v28;
  v29 = sub_1B9F4BD44();
  v30 = v10;
  if (v29 == 2 || v67 != v68 >> 1)
  {
    v35 = sub_1BA4A7E68();
    swift_allocError();
    v37 = v36;
    sub_1B9FFFD90();
    *v37 = v63;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v62 + 8))(v12, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v29)
  {
    v69 = 1;
    sub_1B9F39968();
    sub_1BA4A8118();
    v31 = v26;
    v32 = v25;
    v33 = v56;
    v34 = sub_1BA4A8188();
    v52 = 0;
    v42 = v34;
    v44 = v43;
    (*(v57 + 8))(v32, v33);
    (*(v62 + 8))(v12, v30);
    swift_unknownObjectRelease();
    v45 = v53;
    *v53 = v42;
    *(v45 + 8) = v44;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v69 = 0;
    sub_1B9F4BB00();
    sub_1BA4A8118();
    v60 = v10;
    sub_1BA4A1728();
    v69 = 0;
    sub_1B9F42A64(&qword_1EDC6AE70, MEMORY[0x1E6969530]);
    v39 = v55;
    v40 = v24;
    sub_1BA4A81C8();
    v41 = v62;
    v69 = 1;
    v46 = sub_1BA4A8198();
    v52 = 0;
    v47 = v58;
    v48 = v46;
    sub_1B9F416DC();
    v50 = *(v49 + 48);
    (*(v47 + 8))(v40, v39);
    (*(v41 + 8))(v12, v60);
    swift_unknownObjectRelease();
    v45 = v54;
    v54[v50] = v48 & 1;
    swift_storeEnumTagMultiPayload();
    v31 = v26;
  }

  sub_1B9F42B48(v45, v21);
  sub_1B9F42B48(v21, v31);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}
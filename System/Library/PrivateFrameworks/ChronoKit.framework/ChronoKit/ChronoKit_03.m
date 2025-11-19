uint64_t sub_1BF3D4F00()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_12:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](58);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v8 = sub_1BF4E77F4();
  if (v8 < 0)
  {
    goto LABEL_10;
  }

  v37 = v0;
  v9 = sub_1BF3D7F44(v8);
  v11 = v10;
  v13 = v12;
  v38 = *(v5 + 16) + 1;
  v14 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v9, v11, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v9, v11, v13, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v9, v11, v13);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4F88D0);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v17 = sub_1BF4E7794();
  v19 = v18;

  v20 = sub_1BF3D815C(v17, v19, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v22 = v21;
  LOBYTE(v9) = v23;
  v39 = *(v5 + 16) + 1;
  v24 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v24);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v20, v22, v9);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v20, v22, v9, 0x676E69646E696240, 0xE800000000000000, v25);

  sub_1BF3D88B8(v20, v22, v9);

  v26 = v5;
  MEMORY[0x1BFB58C90](0x444E41202020200ALL, 0xE900000000000020);
  v27 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v28 = sub_1BF4E7844();
  if (v28 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = sub_1BF3D7F44(v28);
  v31 = v30;
  v33 = v32;
  v40 = *(v26 + 16) + 1;
  v34 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v34);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v29, v31, v33);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v29, v31, v33, 0x676E69646E696240, 0xE800000000000000, v35);

  sub_1BF3D88B8(v29, v31, v33);
  sub_1BF3E4F48(v26);

  if (!v37)
  {
  }

  return result;
}

uint64_t sub_1BF3D54A4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = v0;
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](48);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F88F0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x200A455245485720, 0xEF20202020202020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v8 = sub_1BF4E7794();
  v10 = v9;

  v11 = sub_1BF3D815C(v8, v10, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v13 = v12;
  v15 = v14;
  v29 = *(v5 + 16) + 1;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v11, v13, v15);

  MEMORY[0x1BFB58C90](0x444E41202020200ALL, 0xE900000000000020);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v19 = sub_1BF4E7844();
  if (v19 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = sub_1BF3D7F44(v19);
  v22 = v21;
  v24 = v23;
  v30 = *(v5 + 16) + 1;
  v25 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v25);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v20, v22, v24);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v20, v22, v24, 0x676E69646E696240, 0xE800000000000000, v26);

  sub_1BF3D88B8(v20, v22, v24);
  sub_1BF3E4F48(v5);

  if (!v28)
  {
  }

  return result;
}

uint64_t sub_1BF3D5900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id default argument 4 of BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t default argument 7 of PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)()
{
  v10 = sub_1BF4E8F24();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BF4E8ED4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1BF4E8064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1024(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF4E91A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  return sub_1BF4E8F64();
}

uint64_t default argument 8 of PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)()
{
  v10 = sub_1BF4E8F24();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BF4E8ED4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1BF4E8064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1024(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF4E91A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  return sub_1BF4E8F64();
}

uint64_t sub_1BF3D5FB8(uint64_t a1, id *a2)
{
  result = sub_1BF4E88F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1BF3D6030@<X0>(uint64_t *a1@<X8>)
{
  sub_1BF4E8914();
  v2 = sub_1BF4E88E4();

  *a1 = v2;
  return result;
}

uint64_t sub_1BF3D6074()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1BF4E7884();
}

uint64_t sub_1BF3D60C0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1BF4E7874();
}

uint64_t sub_1BF3D6118()
{
  sub_1BF4E9804();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1BF4E7874();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3D6180(uint64_t a1, id *a2)
{
  v3 = sub_1BF4E8904();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BF3D620C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1BF4E7864();
}

uint64_t sub_1BF3D6278(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EBDD8710, type metadata accessor for FileProtectionType);
  v3 = sub_1BF3A1024(&unk_1EBDD8718, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D6334(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EDC9D710, type metadata accessor for FileAttributeKey);
  v3 = sub_1BF3A1024(&qword_1EBDD8808, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D63F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BF4E88E4();

  *a2 = v5;
  return result;
}

uint64_t sub_1BF3D6438(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EDC9FDD0, type metadata accessor for URLResourceKey);
  v3 = sub_1BF3A1024(&qword_1EBDD8728, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D64F4()
{
  v1 = *v0;
  v2 = sub_1BF4E8914();
  v3 = MEMORY[0x1BFB58CE0](v2);

  return v3;
}

uint64_t sub_1BF3D6530()
{
  v1 = *v0;
  sub_1BF4E8914();
  sub_1BF4E89F4();
}

uint64_t sub_1BF3D6584()
{
  v1 = *v0;
  sub_1BF4E8914();
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v2 = sub_1BF4E9844();

  return v2;
}

uint64_t sub_1BF3D65F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1BF4E8914();
  v6 = v5;
  if (v4 == sub_1BF4E8914() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();
  }

  return v9 & 1;
}

uint64_t sub_1BF3D6680(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1BF3CD5D0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1BF4A248C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1BF49DE28(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1BF3CD5D0(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_1BF3D88B8(v28, v29, v30);
  }

  else
  {
    sub_1BF4A1CB4(v15, a4, a5, a1, a2, a3, v26);
  }
}

_OWORD *sub_1BF3D67F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BF3CD5D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BF4A2624();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BF49E108(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BF3CD5D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1BF38EB2C(a1, v23);
  }

  else
  {
    sub_1BF4A1D08(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1BF3D6940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BF3CD5D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BF4A2948();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BF49E3C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BF3CD5D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1BF4A6724(v11, a2, a3, a1, v22);
}

uint64_t sub_1BF3D6A84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BF3CD5D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BF4A2AB4();
      goto LABEL_7;
    }

    sub_1BF49E664(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1BF3CD5D0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1BF4E7334();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1BF4A1D74(v12, a2, a3, a1, v18);
}

uint64_t sub_1BF3D6C04(__int128 *a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *v3;
  v14 = sub_1BF3EC540(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BF4A2E1C();
      goto LABEL_7;
    }

    sub_1BF49E68C(v17, a3 & 1);
    v23 = *v4;
    v24 = sub_1BF3EC540(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BF38C94C(a2, v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      return sub_1BF4A1E24(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_1BF38E610(a1, v21);
}

uint64_t sub_1BF3D6DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BF3CD5D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BF4A3058();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BF49EBB8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BF3CD5D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1BF4A6724(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1BF3D6F04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *v3;
  v15 = sub_1BF3EC768(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1BF4A3478();
      goto LABEL_7;
    }

    sub_1BF49EE60(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1BF3EC768(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1BF4A1F24(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_1BF4E7334();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_1BF3D7110(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = *v3;
  v15 = sub_1BF38C890(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1BF4A3A84();
      goto LABEL_7;
    }

    sub_1BF49F724(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1BF38C890(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1BF4A2024(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return sub_1BF38E610(a1, v22);
}

uint64_t sub_1BF3D72F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BF3CD5D0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RemoteActivityArchiveBudget();
      return sub_1BF3DB194(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RemoteActivityArchiveBudget);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1BF4A3D14();
    goto LABEL_7;
  }

  sub_1BF49FB0C(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1BF3CD5D0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF4A20F4(v12, a2, a3, a1, v18);
}

id sub_1BF3D7460(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF3916CC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BF4A3F6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BF49FE84(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1BF3916CC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1BF4E9034();
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1BF38E610(a1, v20);
  }

  else
  {
    sub_1BF4A21A0(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1BF3D75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BF3CD5D0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1BF4A40F0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1BF4A0104(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1BF3CD5D0(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1BF4A220C(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_1BF3D76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BF3CD5D0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1BF4A4270();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1BF4A03BC(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1BF3CD5D0(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1BF4A220C(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_1BF3D7844(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BF4E7394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1BF3EC94C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for RemoteActivitySubscription(0);
      return sub_1BF3DB194(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for RemoteActivitySubscription);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1BF4A4558();
    goto LABEL_7;
  }

  sub_1BF4A0B94(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1BF3EC94C(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1BF4A225C(v15, v12, a1, v21);
}

uint64_t sub_1BF3D7A18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF3EC9E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BF4A4884();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BF4A1034(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1BF3EC9E4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_1BF4E79A4();
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_1BF4A6720(v9, a2, a1, v20);
  }
}

uint64_t sub_1BF3D7B44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF3ECA90(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BF4A4898();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BF4A1318(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1BF3ECA90(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for _ReloadStateKey(0);
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_1BF4A6720(v9, a2, a1, v20);
  }
}

id sub_1BF3D7C70(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1BF3916CC(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for ExtensionMetadata();
      return sub_1BF3DB194(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for ExtensionMetadata);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_1BF4A4A00();
    goto LABEL_7;
  }

  sub_1BF4A1688(v12, a3 & 1);
  v19 = *v4;
  v20 = sub_1BF3916CC(a2);
  if ((v13 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_1BF4E9034();
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

  v9 = v20;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF4A2390(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_1BF3D7DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1BF3CD5D0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1BF4A4C38();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1BF4A19D0(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1BF3CD5D0(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    sub_1BF3B03C0(v28, v29);
  }

  else
  {
    sub_1BF4A2438(v15, a4, a5, a1, a2, a3, v26);
  }
}

uint64_t sub_1BF3D7F44(uint64_t a1)
{
  v5[3] = MEMORY[0x1E69E7360];
  v5[4] = &off_1F3DF0090;
  v5[0] = a1;
  sub_1BF38E49C(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    v1 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return v1;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v1 = v3;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF3D815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a3;
  v8[4] = a4;
  v8[0] = a1;
  v8[1] = a2;
  sub_1BF38E49C(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    v4 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return v4;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v4 = v6;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF3D833C(double a1)
{
  v5[3] = MEMORY[0x1E69E63B0];
  v5[4] = &off_1F3DF0098;
  *v5 = a1;
  sub_1BF38E49C(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    v1 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return v1;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v1 = v3;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF3D852C(uint64_t a1)
{
  v6[3] = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  v6[4] = &off_1F3DF0088;
  v6[0] = a1;
  sub_1BF38E49C(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);

    v2 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v2;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v2 = v4;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

unint64_t sub_1BF3D871C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1BF3D8840(v7, v8, v9);
      result = sub_1BF3CD5D0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_1BF3D8840(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1BF3D8864(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1BF3D8864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF3D88B8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1BF3B03C0(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1BF3D89CC(uint64_t a1)
{
  sub_1BF3D9314();
  if (v2 <= 0x3F)
  {
    sub_1BF4E7854();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_1BF4E7804();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BF3D8A84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(v5 - 8);
  v38 = v5;
  v7 = *(v6 + 84);
  v37 = sub_1BF4E7854();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v35 = *(a3 + 16);
  v11 = *(v35 - 8);
  v36 = *(v11 + 84);
  if (v36 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v13 = *(sub_1BF4E7804() - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  v18 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v14;
  v21 = a1;
  if (a2 > v19)
  {
    v22 = ((v17 + v18 + ((v15 + v16 + (v20 & ~v14)) & ~v16)) & ~v18) + *(v13 + 64);
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v19 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 < 2)
      {
LABEL_33:
        if (v19)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_33;
    }

LABEL_20:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v19 + (v28 | v26) + 1;
  }

LABEL_34:
  if (v7 == v19)
  {
    v29 = v38;
    v30 = *(v6 + 48);
    v31 = v7;

    return v30(v21, v31, v29);
  }

  v21 = ((a1 + v20) & ~v14);
  if (v9 == v19)
  {
    v30 = *(v8 + 48);
    v31 = v9;
    v29 = v37;

    return v30(v21, v31, v29);
  }

  v21 = ((v21 + v15 + v16) & ~v16);
  if (v36 == v19)
  {
    v30 = *(v11 + 48);
    v31 = v36;
    v29 = v35;

    return v30(v21, v31, v29);
  }

  v33 = *(v13 + 48);
  v34 = (v21 + v17 + v18) & ~v18;

  return v33(v34);
}

void sub_1BF3D8EAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0) - 8);
  v37 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_1BF4E7854() - 8);
  v39 = v7;
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(a4 + 16) - 8);
  v38 = v10;
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1BF4E7804() - 8);
  v14 = v13;
  v15 = *(v5 + 64);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v7 + 80);
  v18 = v15 + v17;
  v19 = *(v7 + 64);
  v20 = *(v10 + 80);
  v21 = (v19 + v20 + ((v15 + v17) & ~v17)) & ~v20;
  v22 = *(v10 + 64);
  v23 = *(v13 + 80);
  v24 = ((v22 + v23 + v21) & ~v23) + *(v13 + 64);
  if (a3 <= v16)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v16 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v16 < v26)
  {
    v28 = ~v16 + v26;
    if (v24 < 4)
    {
      v29 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v32 = v28 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v32;
            if (v27 > 1)
            {
LABEL_56:
              if (v27 == 2)
              {
                *&v25[v24] = v29;
              }

              else
              {
                *&v25[v24] = v29;
              }

              return;
            }
          }

          else
          {
            *v25 = v28;
            if (v27 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v25 = v32;
        v25[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v27)
    {
      v25[v24] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v27)
  {
    v25[v24] = 0;
    if (!v26)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    return;
  }

LABEL_37:
  if (v6 == v16)
  {
    v33 = *(v37 + 56);
    v34 = v25;
    goto LABEL_41;
  }

  v34 = (&v25[v18] & ~v17);
  if (v8 == v16)
  {
    v33 = *(v39 + 56);
LABEL_41:

LABEL_43:
    v33(v34);
    return;
  }

  v34 = (&v34[v19 + v20] & ~v20);
  if (v11 == v16)
  {
    v33 = *(v38 + 56);

    goto LABEL_43;
  }

  v35 = *(v14 + 56);
  v36 = &v34[v22 + v23] & ~v23;

  v35(v36);
}

void sub_1BF3D9314()
{
  if (!qword_1EDC9F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
    sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0);
    sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0);
    sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0);
    sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0);
    v0 = sub_1BF4E77D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9F000);
    }
  }
}

uint64_t sub_1BF3D95E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3D9608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BF3D99EC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](86);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000025, 0x80000001BF4F8B90);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4F8BC0);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF3D9B8C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F8B70);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF3D9CE8()
{
  v1 = sub_1BF4E7854();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](163);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A80);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000032, 0x80000001BF4F8AA0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v4);

  if (!v0)
  {

    v46 = 0;
    v47 = 0xE000000000000000;
    v13 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](57);
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v14 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v14);

    MEMORY[0x1BFB58C90](10272, 0xE200000000000000);
    v15 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v15);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v16 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v16);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v17 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v17);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v18 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v18);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8AE0);
    v19 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v19);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v21 = v41;
    v20 = v42;
    v22 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x1E6994188], v43);
    v23 = sub_1BF4E7844();
    result = (*(v20 + 8))(v21, v22);
    if (v23 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = sub_1BF3D7F44(v23);
      v26 = v25;
      v28 = v27;
      v44 = 0x676E69646E696240;
      v45 = 0xE800000000000000;
      v48 = *(v13 + 16) + 1;
      v29 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v29);

      v30 = v44;
      v31 = v45;
      MEMORY[0x1BFB58C90](v44, v45);
      sub_1BF3D8840(v24, v26, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      sub_1BF3D6680(v24, v26, v28, v30, v31, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v24, v26, v28);
      v33 = v44;
      MEMORY[0x1BFB58C90](542327072, 0xE400000000000000);
      v34 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v34);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v35 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v36 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v36);

      MEMORY[0x1BFB58C90](0x204D4F524620, 0xE600000000000000);
      v37 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v37);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v33);

      v46 = 0;
      v47 = 0xE000000000000000;
      v38 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](16);
      MEMORY[0x1BFB58C90](0x504F524420202020, 0xEF20454C42415420);
      v39 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v38);
    }
  }

  return result;
}

uint64_t sub_1BF3DA450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1BF3DA488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v13, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v5 = v13;
      v6 = v14;
      result = sub_1BF3CD5D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BF38EB2C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1BF3DA5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BF3CD5D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1BF3DA6BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B8, &unk_1BF4EB2D0);
    v8 = sub_1BF4E94C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v10, v6, &qword_1EBDD87B0, &qword_1BF4EDD20);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1BF3CD5D0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1BF4E7334();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1BF3DA8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8798, &qword_1BF4EB2B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
    v8 = sub_1BF4E94C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v10, v6, &qword_1EBDD8798, &qword_1BF4EB2B0);
      result = sub_1BF3EC768(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1BF4E7334();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1BF3DAAD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8790, &qword_1BF4EB2A8);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1BF3EC898(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BF3DABCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BF3CD5D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1BF3DACD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8748, &qword_1BF4EB268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
    v8 = sub_1BF4E94C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v10, v6, &qword_1EBDD8748, &qword_1BF4EB268);
      v12 = *v6;
      result = sub_1BF3916CC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ExtensionMetadata();
      result = sub_1BF3919A0(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1BF3DAEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8758, &qword_1BF4EB278);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
    v8 = sub_1BF4E94C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v10, v6, &qword_1EBDD8758, &qword_1BF4EB278);
      result = sub_1BF38C890(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1BF38E610(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1BF3DB09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1BF3ECA90(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1BF3DB194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF3DB1FC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF3D88B8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1BF3DB210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF3B03C0(a1, a2);
  }

  return a1;
}

uint64_t RemoteExtensionStore.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RemoteExtensionStore.allExtensions()()
{
  v1 = *(*(v0 + 16) + 32);

  v2 = sub_1BF49CEDC();

  return v2;
}

uint64_t RemoteExtensionStore.update(remoteWidgetExtensionInfo:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v8[2] = a1;
  v3 = *(v2 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v4 = sub_1BF4A4E98();
  v5 = *(v2 + 136);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v2 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4F8BE0, v6, sub_1BF3DB8E0, v8, v4);

  os_unfair_lock_unlock(*(v5 + 16));
  sub_1BF48EBD0();
}

uint64_t RemoteExtensionStore.removeExtension(with:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v8[2] = a1;
  v3 = *(v2 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v4 = sub_1BF4A4E98();
  v5 = *(v2 + 136);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v2 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4F8C00, v6, sub_1BF3DB90C, v8, v4);

  os_unfair_lock_unlock(*(v5 + 16));
  sub_1BF48EBD0();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteExtensionStore.removeAllExtensions()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v3 = sub_1BF4A4E98();
  v4 = *(v1 + 136);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v1 + 16);

  sub_1BF3E7904(0xD00000000000001DLL, 0x80000001BF4F8C20, v5, sub_1BF3DB7A4, 0, v3);

  os_unfair_lock_unlock(*(v4 + 16));
  sub_1BF48EBD0();
}

uint64_t RemoteExtensionStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RemoteExtensionStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3DB820()
{
  v1 = *(*(*v0 + 16) + 32);

  v2 = sub_1BF49CEDC();

  return v2;
}

uint64_t sub_1BF3DB8E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return ChronoMetadataStore.MutableRemoteExtensionStore.update(remoteWidgetExtensionInfo:)(v2);
}

uint64_t sub_1BF3DB90C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  return ChronoMetadataStore.MutableRemoteExtensionStore.removeExtension(with:)(v2);
}

uint64_t SystemDataMigrationState.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBB64()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBBAC()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBBF0()
{
  type metadata accessor for _SystemDataMigrator();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1BF4E7C64();
  *(v0 + 16) = result;
  qword_1EDC99E18 = v0;
  return result;
}

uint64_t static _SystemDataMigrator.shared.getter()
{
  if (qword_1EDC99E10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF3DBCC0()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  sub_1BF38C8B4(&qword_1EDC9D398, &qword_1EBDD88D0, &qword_1BF4EB6F0);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3DBD4C()
{
  v1 = v0;
  v2 = DMIsMigrationNeeded();
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v3 = sub_1BF4E7564();

  if (v2 & 1) != 0 || (v3)
  {
    v4 = *(v1 + 16);

    sub_1BF4E7C54();

    if (v2)
    {
      DMPerformMigrationIfNeeded();
    }

    else
    {
      sub_1BF3DBF74();
    }

    v5 = *(v1 + 16);

    sub_1BF4E7C54();
  }

  return v2;
}

uint64_t sub_1BF3DBE10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t _SystemDataMigrator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t _SystemDataMigrator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3DBEE4()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  sub_1BF38C8B4(&qword_1EDC9D398, &qword_1EBDD88D0, &qword_1BF4EB6F0);
  return sub_1BF4E7C84();
}

void sub_1BF3DBF74()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v24 = sub_1BF4E8F24();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BF4E8ED4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1BF4E8064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = sub_1BF3DC720();
  sub_1BF4E8034();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3DC76C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF4E91A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v24);
  v8 = sub_1BF4E8F64();
  out_token = -1;
  v9 = swift_allocObject();
  *(v9 + 16) = 60;
  v10 = (v9 + 16);
  if (qword_1EBDD8588 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EBDE1EF0);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      swift_beginAccess();
      *(v14 + 4) = *(v9 + 16);

      _os_log_impl(&dword_1BF389000, v12, v13, "Simulating migration for %{public}lds", v14, 0xCu);
      MEMORY[0x1BFB5A5D0](v14, -1, -1);
    }

    else
    {
    }

    aBlock[4] = sub_1BF3DC7C4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3DBE10;
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);

    v8 = v8;

    v16 = notify_register_dispatch("com.apple.chronod.finishmigration", &out_token, v8, v15);
    _Block_release(v15);

    if (v16)
    {

      goto LABEL_13;
    }

    swift_beginAccess();
    if (*v10 < 1)
    {
      break;
    }

    while (1)
    {
      sleep(1u);
      v17 = *v10 - 1;
      if (__OFSUB__(*v10, 1))
      {
        break;
      }

      *v10 = v17;
      if (v17 <= 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_10:
  notify_cancel(out_token);
  v18 = sub_1BF4E7B34();
  v19 = sub_1BF4E8E84();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1BF38D65C(0xD000000000000021, 0x80000001BF4F8CF0, &v26);
    _os_log_impl(&dword_1BF389000, v18, v19, "%{public}s: Done simulating migration", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1BFB5A5D0](v21, -1, -1);
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1BF3DC4D0()
{
  result = qword_1EBDD88D8;
  if (!qword_1EBDD88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD88D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemDataMigrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemDataMigrationState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BF3DC720()
{
  result = qword_1EDC9F140;
  if (!qword_1EDC9F140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F140);
  }

  return result;
}

unint64_t sub_1BF3DC76C()
{
  result = qword_1EDC9F148;
  if (!qword_1EDC9F148)
  {
    sub_1BF4E8ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F148);
  }

  return result;
}

uint64_t sub_1BF3DC7C4()
{
  result = swift_beginAccess();
  *(v0 + 16) = 0;
  return result;
}

uint64_t RemoteActivityArchiveBudgetType.description.getter()
{
  if (*v0)
  {
    result = 0x6C616D726F6ELL;
  }

  else
  {
    result = 0x676E697472656C61;
  }

  *v0;
  return result;
}

uint64_t sub_1BF3DC860(uint64_t a1)
{
  v2 = sub_1BF3DCE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DC89C(uint64_t a1)
{
  v2 = sub_1BF3DCE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3DC8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697472656C61 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BF4E9734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BF3DC9BC(uint64_t a1)
{
  v2 = sub_1BF3DCD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DC9F8(uint64_t a1)
{
  v2 = sub_1BF3DCD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3DCA34(uint64_t a1)
{
  v2 = sub_1BF3DCDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DCA70(uint64_t a1)
{
  v2 = sub_1BF3DCDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivityArchiveBudgetType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88E0, &qword_1BF4EB800);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88E8, &qword_1BF4EB808);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88F0, &qword_1BF4EB810);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DCD68();
  sub_1BF4E9864();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1BF3DCDBC();
    v18 = v22;
    sub_1BF4E95F4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1BF3DCE10();
    sub_1BF4E95F4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1BF3DCD68()
{
  result = qword_1EBDD88F8;
  if (!qword_1EBDD88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD88F8);
  }

  return result;
}

unint64_t sub_1BF3DCDBC()
{
  result = qword_1EBDD8900;
  if (!qword_1EBDD8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8900);
  }

  return result;
}

unint64_t sub_1BF3DCE10()
{
  result = qword_1EBDD8908;
  if (!qword_1EBDD8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8908);
  }

  return result;
}

uint64_t RemoteActivityArchiveBudgetType.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t RemoteActivityArchiveBudgetType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8910, &qword_1BF4EB818);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8918, &qword_1BF4EB820);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8920, &qword_1BF4EB828);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DCD68();
  v17 = v37;
  sub_1BF4E9854();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1BF4E95D4();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1BF4E9344();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830) + 48);
    *v25 = &type metadata for RemoteActivityArchiveBudgetType;
    sub_1BF4E9534();
    sub_1BF4E9334();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1BF3DCDBC();
    sub_1BF4E9524();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1BF3DCE10();
    sub_1BF4E9524();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_1BF3DD32C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3DD360()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static RemoteActivityArchiveBudget.makeKey(activityBudgetID:activityBudgetType:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1BF4E7394();
  sub_1BF3E0284(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
  v6 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (v2)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x676E697472656C61;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v3, v4);

  return v6;
}

uint64_t RemoteActivityArchiveBudget.activityBudgetID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteActivityArchiveBudget.activityBudgetID.setter(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteActivityArchiveBudget.activityBudgetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for RemoteActivityArchiveBudget()
{
  result = qword_1EDC97C50;
  if (!qword_1EDC97C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteActivityArchiveBudget.activityBudgetType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t RemoteActivityArchiveBudget.id.getter()
{
  v1 = (v0 + *(type metadata accessor for RemoteActivityArchiveBudget() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RemoteActivityArchiveBudget.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RemoteActivityArchiveBudget() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RemoteActivityArchiveBudget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget() + 28);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivityArchiveBudget.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget() + 28);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivityArchiveBudget.lastRefreshDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget() + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivityArchiveBudget.lastRefreshDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget() + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivityArchiveBudget.windowDuration.setter(double a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.maximumDuration.setter(double a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.maximumBudgetPerWindow.setter(uint64_t a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.remainingBudget.setter(uint64_t a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.init(activityBudgetID:activityBudgetType:windowDuration:maximumDuration:maximumBudgetPerWindow:startDate:remainingBudget:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v16 = *a2;
  v17 = sub_1BF4E7394();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a7, a1, v17);
  v19 = type metadata accessor for RemoteActivityArchiveBudget();
  *(a7 + v19[5]) = v16;
  sub_1BF3E0284(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
  v30 = sub_1BF4E96A4();
  v31 = v20;
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (v16)
  {
    v21 = 0x6C616D726F6ELL;
  }

  else
  {
    v21 = 0x676E697472656C61;
  }

  if (v16)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v21, v22);

  (*(v18 + 8))(a1, v17);
  v23 = (a7 + v19[6]);
  *v23 = v30;
  v23[1] = v31;
  *(a7 + v19[9]) = a8;
  *(a7 + v19[10]) = a9;
  *(a7 + v19[11]) = a3;
  v24 = v19[7];
  v25 = sub_1BF4E7334();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a7 + v24, a4, v25);
  result = (*(v26 + 32))(a7 + v19[8], a4, v25);
  v28 = a5;
  if (a6)
  {
    v28 = a3;
  }

  *(a7 + v19[12]) = v28;
  return result;
}

unint64_t sub_1BF3DDEB4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    if (a1 != 2)
    {
      v5 = 0x7461447472617473;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x446D756D6978616DLL;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 0x6E696E69616D6572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x726665527473616CLL;
    if (a1 != 4)
    {
      v3 = 0x7544776F646E6977;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BF3DE00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF3DFF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF3DE040(uint64_t a1)
{
  v2 = sub_1BF3DF3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DE07C(uint64_t a1)
{
  v2 = sub_1BF3DF3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivityArchiveBudget.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8930, &qword_1BF4EB838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DF3F8();
  sub_1BF4E9864();
  v22[31] = 0;
  sub_1BF4E7394();
  sub_1BF3E0284(&qword_1EDC9D5E0, MEMORY[0x1E69695A8]);
  sub_1BF4E9674();
  if (!v2)
  {
    v11 = type metadata accessor for RemoteActivityArchiveBudget();
    v22[30] = *(v3 + v11[5]);
    v22[29] = 1;
    sub_1BF3DF44C();
    sub_1BF4E9674();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    v22[28] = 2;
    sub_1BF4E9624();
    v15 = v11[7];
    v22[27] = 3;
    sub_1BF4E7334();
    sub_1BF3E0284(&qword_1EDC9D5F8, MEMORY[0x1E6969530]);
    sub_1BF4E9674();
    v16 = v11[8];
    v22[26] = 4;
    sub_1BF4E9674();
    v17 = *(v3 + v11[9]);
    v22[25] = 5;
    sub_1BF4E9644();
    v18 = *(v3 + v11[10]);
    v22[24] = 6;
    sub_1BF4E9644();
    v19 = *(v3 + v11[11]);
    v22[15] = 7;
    sub_1BF4E9654();
    v20 = *(v3 + v11[12]);
    v22[14] = 8;
    sub_1BF4E9654();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RemoteActivityArchiveBudget.hash(into:)()
{
  v1 = v0;
  sub_1BF4E7394();
  sub_1BF3E0284(&qword_1EBDD8948, MEMORY[0x1E69695A8]);
  sub_1BF4E8884();
  v2 = type metadata accessor for RemoteActivityArchiveBudget();
  MEMORY[0x1BFB59A70](*(v0 + v2[5]));
  v3 = (v0 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_1BF4E89F4();
  v6 = v2[7];
  sub_1BF4E7334();
  sub_1BF3E0284(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  v7 = v1 + v2[8];
  sub_1BF4E8884();
  v8 = *(v1 + v2[9]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v8);
  v9 = *(v1 + v2[10]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v9);
  MEMORY[0x1BFB59A70](*(v1 + v2[11]));
  return MEMORY[0x1BFB59A70](*(v1 + v2[12]));
}

uint64_t RemoteActivityArchiveBudget.hashValue.getter()
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t RemoteActivityArchiveBudget.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1BF4E7334();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = sub_1BF4E7394();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8950, &qword_1BF4EB840);
  v41 = *(v44 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v35 - v13;
  v15 = type metadata accessor for RemoteActivityArchiveBudget();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DF3F8();
  v43 = v14;
  v20 = v45;
  sub_1BF4E9854();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v8;
  v22 = v40;
  v55 = 0;
  sub_1BF3E0284(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
  sub_1BF4E95B4();
  (*(v39 + 32))(v18, v42, v9);
  v53 = 1;
  sub_1BF3DF4A0();
  sub_1BF4E95B4();
  v18[v15[5]] = v54;
  v52 = 2;
  v23 = sub_1BF4E9564();
  v45 = v9;
  v24 = &v18[v15[6]];
  *v24 = v23;
  v24[1] = v25;
  v51 = 3;
  v26 = sub_1BF3E0284(&qword_1EDC9D5F0, MEMORY[0x1E6969530]);
  v27 = v38;
  v42 = v26;
  sub_1BF4E95B4();
  v35 = v15;
  v28 = v21;
  v29 = *(v37 + 32);
  v29(&v18[v15[7]], v28, v27);
  v50 = 4;
  sub_1BF4E95B4();
  v29(&v18[v35[8]], v22, v27);
  v49 = 5;
  sub_1BF4E9584();
  v30 = v35;
  *&v18[v35[9]] = v31;
  v48 = 6;
  sub_1BF4E9584();
  *&v18[v30[10]] = v32;
  v47 = 7;
  *&v18[v30[11]] = sub_1BF4E9594();
  v46 = 8;
  v33 = sub_1BF4E9594();
  (*(v41 + 8))(v43, v44);
  *&v18[v30[12]] = v33;
  sub_1BF3DF4F4(v18, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1BF3DF558(v18);
}

uint64_t sub_1BF3DECE0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1BF3DED18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1BF3DED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BF3DEE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BF3DEE90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1BF3DEF04(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t (*sub_1BF3DEF4C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1BF3DEFD4()
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DF018()
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DF058()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BF4E92E4();
  v10 = type metadata accessor for RemoteActivityArchiveBudget();
  MEMORY[0x1BFB58C90](*(v1 + v10[6]), *(v1 + v10[6] + 8));
  MEMORY[0x1BFB58C90](0x696E69616D657220, 0xEB0000000020676ELL);
  v18[1] = *(v0 + v10[12]);
  v11 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x20747261747320, 0xE700000000000000);
  v12 = v10[7];
  sub_1BF3E0284(&qword_1EDC9D5E8, MEMORY[0x1E6969530]);
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x6873657266657220, 0xEC000000206E6920);
  v14 = *(v1 + v10[9]);
  v15 = v1 + v10[8];
  sub_1BF4E7284();
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7234();
  v16 = *(v3 + 8);
  v16(v6, v2);
  v16(v9, v2);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](115, 0xE100000000000000);
  return v19;
}

uint64_t sub_1BF3DF2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

BOOL _s9ChronoKit27RemoteActivityArchiveBudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E7364() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RemoteActivityArchiveBudget();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (v10 || (sub_1BF4E9734()) && (v11 = v5[7], (sub_1BF4E72D4()) && (v12 = v5[8], (sub_1BF4E72D4()) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]))
  {
    return *(a1 + v5[12]) == *(a2 + v5[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BF3DF3F8()
{
  result = qword_1EBDD8938;
  if (!qword_1EBDD8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8938);
  }

  return result;
}

unint64_t sub_1BF3DF44C()
{
  result = qword_1EBDD8940;
  if (!qword_1EBDD8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8940);
  }

  return result;
}

unint64_t sub_1BF3DF4A0()
{
  result = qword_1EBDD8960;
  if (!qword_1EBDD8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8960);
  }

  return result;
}

uint64_t sub_1BF3DF4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveBudget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3DF558(uint64_t a1)
{
  v2 = type metadata accessor for RemoteActivityArchiveBudget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF3DF5B4()
{
  result = qword_1EBDD8968;
  if (!qword_1EBDD8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8968);
  }

  return result;
}

unint64_t sub_1BF3DF60C()
{
  result = qword_1EBDD8970;
  if (!qword_1EBDD8970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8978, &qword_1BF4EB928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8970);
  }

  return result;
}

unint64_t sub_1BF3DF704()
{
  result = qword_1EBDD8980;
  if (!qword_1EBDD8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8980);
  }

  return result;
}

unint64_t sub_1BF3DF75C()
{
  result = qword_1EBDD8988;
  if (!qword_1EBDD8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8988);
  }

  return result;
}

uint64_t sub_1BF3DF7B8(void *a1)
{
  a1[1] = sub_1BF3E0284(&qword_1EBDD8990, type metadata accessor for RemoteActivityArchiveBudget);
  a1[2] = sub_1BF3E0284(&qword_1EBDD8998, type metadata accessor for RemoteActivityArchiveBudget);
  a1[3] = sub_1BF3E0284(&qword_1EBDD89A0, type metadata accessor for RemoteActivityArchiveBudget);
  a1[4] = sub_1BF3E0284(&qword_1EBDD89A8, type metadata accessor for RemoteActivityArchiveBudget);
  result = sub_1BF3E0284(&qword_1EBDD89B0, type metadata accessor for RemoteActivityArchiveBudget);
  a1[5] = result;
  return result;
}

uint64_t sub_1BF3DF940()
{
  result = sub_1BF4E7394();
  if (v1 <= 0x3F)
  {
    result = sub_1BF4E7334();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteActivityArchiveBudget.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteActivityArchiveBudget.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReloadConfiguration.ReloadCost(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1BF3DFC0C()
{
  result = qword_1EBDD89C0;
  if (!qword_1EBDD89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89C0);
  }

  return result;
}

unint64_t sub_1BF3DFC64()
{
  result = qword_1EBDD89C8;
  if (!qword_1EBDD89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89C8);
  }

  return result;
}

unint64_t sub_1BF3DFCBC()
{
  result = qword_1EBDD89D0;
  if (!qword_1EBDD89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89D0);
  }

  return result;
}

unint64_t sub_1BF3DFD14()
{
  result = qword_1EBDD89D8;
  if (!qword_1EBDD89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89D8);
  }

  return result;
}

unint64_t sub_1BF3DFD6C()
{
  result = qword_1EBDD89E0;
  if (!qword_1EBDD89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89E0);
  }

  return result;
}

unint64_t sub_1BF3DFDC4()
{
  result = qword_1EBDD89E8;
  if (!qword_1EBDD89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89E8);
  }

  return result;
}

unint64_t sub_1BF3DFE1C()
{
  result = qword_1EBDD89F0;
  if (!qword_1EBDD89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89F0);
  }

  return result;
}

unint64_t sub_1BF3DFE74()
{
  result = qword_1EBDD89F8;
  if (!qword_1EBDD89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89F8);
  }

  return result;
}

unint64_t sub_1BF3DFECC()
{
  result = qword_1EBDD8A00;
  if (!qword_1EBDD8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8A00);
  }

  return result;
}

unint64_t sub_1BF3DFF24()
{
  result = qword_1EBDD8A08;
  if (!qword_1EBDD8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8A08);
  }

  return result;
}

uint64_t sub_1BF3DFF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BF4F8D50 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BF4F8D70 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BF4E9734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365 || (sub_1BF4E9734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172 || (sub_1BF4E9734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446D756D6978616DLL && a2 == 0xEF6E6F6974617275 || (sub_1BF4E9734() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BF4F8D90 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xEF74656764754267)
  {

    return 8;
  }

  else
  {
    v5 = sub_1BF4E9734();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1BF3E0284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActivityError.errorCode.getter()
{
  v1 = type metadata accessor for ActivityError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v4);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00) + 48)];

      v7 = sub_1BF4E7544();
      (*(*(v7 - 8) + 8))(v4, v7);
      return 3;
    }

    else
    {
      sub_1BF3E0514(v4);
      return 4;
    }
  }

  else
  {
    sub_1BF3E0514(v4);
    return 1;
  }
}

uint64_t type metadata accessor for ActivityError()
{
  result = qword_1EDC9B208;
  if (!qword_1EDC9B208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3E04B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E0514(uint64_t a1)
{
  v2 = type metadata accessor for ActivityError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActivityError.failureReason.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7544();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF3E04B0(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v10);
      return 0x662064616F6C6552;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000034;
    }

    else
    {
      return 0xD00000000000004ALL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00) + 48));

      (*(v3 + 32))(v6, v10, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1BF4E92E4();

      v19 = 0xD00000000000002BLL;
      v20 = 0x80000001BF4F8E50;
      v13 = sub_1BF4E7524();
      MEMORY[0x1BFB58C90](v13);

      v14 = v19;
      (*(v3 + 8))(v6, v2);
      return v14;
    }

    else
    {
      v17 = *v10;
      v18 = v10[1];
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1BF4E92E4();

      v19 = 0xD000000000000019;
      v20 = 0x80000001BF4F8E30;
      MEMORY[0x1BFB58C90](v17, v18);

      MEMORY[0x1BFB58C90](0x756F6620746F6E20, 0xEB000000002E646ELL);
      return v19;
    }
  }

  else
  {
    result = *v10;
    v16 = v10[1];
  }

  return result;
}

unint64_t ActivityError.recoverySuggestion.getter()
{
  v1 = type metadata accessor for ActivityError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BF3E0514(v4);
  if (EnumCaseMultiPayload == 2)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0;
  }
}

__int128 *ActivityError.errorUserInfo.getter()
{
  v69 = sub_1BF4E7454();
  v67 = *(v69 - 8);
  v1 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v69);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BF4E7544();
  v63 = *(v64 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4EBEF0;
  v14 = *MEMORY[0x1E696A588];
  *(inited + 32) = sub_1BF4E8914();
  *(inited + 40) = v15;
  result = ActivityError.failureReason.getter();
  if (v17)
  {
    v18 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = result;
    *(inited + 56) = v17;
    v19 = sub_1BF3DA488(inited);
    swift_setDeallocating();
    sub_1BF3E21B8(inited + 32);
    sub_1BF3E04B0(v0, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1BF3E0514(v12);
    if (EnumCaseMultiPayload == 2)
    {
      v21 = *MEMORY[0x1E696A598];
      v22 = sub_1BF4E8914();
      v24 = v23;
      v75 = v18;
      *&v74 = 0xD00000000000005ALL;
      *(&v74 + 1) = 0x80000001BF4F8EC0;
      sub_1BF38EB2C(&v74, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v19;
      sub_1BF3D67F0(v71, v22, v24, isUniquelyReferenced_nonNull_native);

      v19 = v70;
    }

    sub_1BF3E04B0(v0, v9);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 == 3)
    {
      v49 = *v9;
      v50 = *MEMORY[0x1E696AA08];
      v51 = sub_1BF4E8914();
      v53 = v52;
      swift_getErrorValue();
      v54 = v72;
      v55 = v73;
      v75 = v73;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
      (*(*(v55 - 8) + 16))(boxed_opaque_existential_0, v54, v55);
      sub_1BF38EB2C(&v74, v71);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v19;
      sub_1BF3D67F0(v71, v51, v53, v57);
    }

    else
    {
      if (v26 != 1)
      {
        sub_1BF3E0514(v9);
        return v19;
      }

      v27 = 0xD000000000000019;
      v28 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00) + 48));
      (*(v63 + 32))(v62, v9, v64);
      v29 = sub_1BF4E7524();
      v75 = v18;
      *&v74 = v29;
      *(&v74 + 1) = v30;
      sub_1BF38EB2C(&v74, v71);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v19;
      sub_1BF3D67F0(v71, 0xD000000000000019, 0x80000001BF4F8F20, v31);
      result = v28;
      v32 = v70;
      if (v28 >> 62)
      {
        goto LABEL_24;
      }

      v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        while (1)
        {
          v61 = v32;
          v34 = result;
          *&v74 = MEMORY[0x1E69E7CC0];
          v32 = &v74;
          result = sub_1BF3A31DC(0, v33 & ~(v33 >> 63), 0);
          if (v33 < 0)
          {
            break;
          }

          v35 = 0;
          v36 = v74;
          v37 = v34;
          v68 = v34 & 0xC000000000000001;
          v65 = v34 & 0xFFFFFFFFFFFFFF8;
          v38 = (v67 + 8);
          v67 = v34;
          v66 = v33;
          while (1)
          {
            v39 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v68)
            {
              v40 = MEMORY[0x1BFB59570](v35, v37);
            }

            else
            {
              if (v35 >= *(v65 + 16))
              {
                goto LABEL_23;
              }

              v40 = *(v37 + 8 * v35 + 32);
            }

            v41 = v40;
            result = [v40 activityAttributesType];
            if (!result)
            {
              goto LABEL_30;
            }

            v42 = result;
            sub_1BF3E241C(&qword_1EDC9F090, MEMORY[0x1E6959BC8]);
            v43 = v69;
            sub_1BF4E7554();

            v32 = v3;
            v44 = sub_1BF4E7424();
            v27 = v45;

            result = (*v38)(v3, v43);
            *&v74 = v36;
            v47 = *(v36 + 16);
            v46 = *(v36 + 24);
            if (v47 >= v46 >> 1)
            {
              v32 = &v74;
              result = sub_1BF3A31DC((v46 > 1), v47 + 1, 1);
              v36 = v74;
            }

            *(v36 + 16) = v47 + 1;
            v48 = v36 + 16 * v47;
            *(v48 + 32) = v44;
            *(v48 + 40) = v27;
            ++v35;
            v37 = v67;
            if (v39 == v66)
            {

              v27 = 0xD000000000000019;
              v32 = v61;
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v58 = result;
          v33 = sub_1BF4E9204();
          result = v58;
          if (!v33)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_25:

      v36 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      *&v74 = v36;
      sub_1BF38EB2C(&v74, v71);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v32;
      sub_1BF3D67F0(v71, v27 + 10, 0x80000001BF4F8F40, v59);
      (*(v63 + 8))(v62, v64);
    }

    return v70;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::String __swiftcall CHSSessionPlatterDescriptor.formatted()()
{
  v1 = sub_1BF4E7454();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 activityAttributesType];
  if (v7)
  {
    v9 = v7;
    sub_1BF3E241C(&qword_1EDC9F090, MEMORY[0x1E6959BC8]);
    sub_1BF4E7554();

    v10 = sub_1BF4E7424();
    v12 = v11;
    (*(v2 + 8))(v6, v1);
    v7 = v10;
    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1BF3E119C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v4);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00) + 48)];

      v8 = sub_1BF4E7544();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 3;
    }

    else
    {
      sub_1BF3E0514(v4);
      return 4;
    }
  }

  else
  {
    sub_1BF3E0514(v4);
    return 1;
  }
}

unint64_t sub_1BF3E12EC(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BF3E0514(v4);
  if (EnumCaseMultiPayload == 2)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3E139C(uint64_t a1)
{
  v2 = sub_1BF3E241C(&qword_1EBDD8A48, type metadata accessor for ActivityError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BF3E1408(uint64_t a1)
{
  v2 = sub_1BF3E241C(&qword_1EBDD8A48, type metadata accessor for ActivityError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void *sub_1BF3E147C(void *a1, int64_t a2, char a3)
{
  result = sub_1BF3E16F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BF3E149C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1BA4(a1, a2, a3, *v3, &qword_1EBDD8A30, &qword_1BF4F3E50, &qword_1EBDD8A38, &unk_1BF4EC4D0);
  *v3 = result;
  return result;
}

char *sub_1BF3E14DC(char *a1, int64_t a2, char a3)
{
  result = sub_1BF3E185C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BF3E14FC(char *a1, int64_t a2, char a3)
{
  result = sub_1BF3E1950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E151C(void *a1, int64_t a2, char a3)
{
  result = sub_1BF3E1A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BF3E153C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1BA4(a1, a2, a3, *v3, &qword_1EBDD8A58, &qword_1BF4EC028, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  *v3 = result;
  return result;
}

size_t sub_1BF3E157C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A88, &qword_1BF4EC058, type metadata accessor for EnvironmentModifiers);
  *v3 = result;
  return result;
}

size_t sub_1BF3E15C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A80, &qword_1BF4EC050, MEMORY[0x1E6985980]);
  *v3 = result;
  return result;
}

size_t sub_1BF3E1604(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A60, &qword_1BF4EC030, type metadata accessor for ExtensionMetadata);
  *v3 = result;
  return result;
}

size_t sub_1BF3E1648(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A78, &qword_1BF4EC048, MEMORY[0x1E69C73C8]);
  *v3 = result;
  return result;
}

size_t sub_1BF3E168C(size_t a1, int64_t a2, char a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A70, &qword_1BF4EC040, MEMORY[0x1E69C7370]);
  *v3 = result;
  return result;
}

void *sub_1BF3E16D0(void *a1, int64_t a2, char a3)
{
  result = sub_1BF3E1F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E16F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA8, &qword_1BF4EC078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AB0, &unk_1BF4EC080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF3E185C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
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

char *sub_1BF3E1950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A40, &qword_1BF4EC018);
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

void *sub_1BF3E1A60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A90, &qword_1BF4EC060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A98, &qword_1BF4EC068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BF3E1BA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_1BF3E1D8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_1BF3E1F68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_1BF3E20B0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB59570](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BF3E2464;
  }

  __break(1u);
  return result;
}

void (*sub_1BF3E2130(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB59570](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BF3E21B0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3E21B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF3E2270()
{
  sub_1BF3E22F0();
  if (v0 <= 0x3F)
  {
    sub_1BF3E2370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF3E22F0()
{
  if (!qword_1EDC9D5C8)
  {
    sub_1BF4E7544();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A28, &qword_1BF4EBFF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC9D5C8);
    }
  }
}

void sub_1BF3E2370()
{
  if (!qword_1EDC962D0)
  {
    v0 = sub_1BF3E23B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC962D0);
    }
  }
}

unint64_t sub_1BF3E23B8()
{
  result = qword_1EDC962C8;
  if (!qword_1EDC962C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC962C8);
  }

  return result;
}

uint64_t sub_1BF3E241C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PowerlogSuggestionService.__allocating_init(owner:)(char *a1)
{
  v18 = sub_1BF4E8F24();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BF4E8064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  v11 = type metadata accessor for WidgetPowerlogProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v17[1] = sub_1BF3DC720();
  sub_1BF4E8044();
  *&v19 = MEMORY[0x1E69E7CC0];
  sub_1BF3A106C(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v18);
  *(v12 + 24) = sub_1BF4E8F64();
  v20 = v11;
  v21 = sub_1BF3A106C(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider);
  *&v19 = v12;
  type metadata accessor for PowerlogSuggestionService();
  v13 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  *(v13 + 56) = v14;
  sub_1BF38E610(&v19, v13 + 16);
  return v13;
}

uint64_t sub_1BF3E2780(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_1BF38E49C(v1 + 16, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AB8, &qword_1BF4EC098);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF4EBEF0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v3;
  *(v9 + 48) = v4;
  v10 = *(v8 + 64);
  v11 = v2;

  v10(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t PowerlogSuggestionService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t PowerlogSuggestionService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

char *AssertedStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8, void *a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  swift_allocObject();
  v20 = sub_1BF3E4870(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v20;
}

char *AssertedStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8, void *a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v15 = sub_1BF3E4870(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v15;
}

uint64_t sub_1BF3E2C38()
{
  v1 = sub_1BF44DE1C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3B1E44(sub_1BF3E4AD4, v0, v2);
  sub_1BF4E92E4();

  v7 = v1;
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F9010);
  sub_1BF3E4AF0();
  v3 = sub_1BF4E8894();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  return v7;
}

uint64_t sub_1BF3E2D48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v127 = *a1;
  v3 = v127;
  v4 = v127[198];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v131 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v95 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = sub_1BF4E90F4();
  v133 = *(v126 - 8);
  v11 = *(v133 + 8);
  MEMORY[0x1EEE9AC00](v126);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v95 - v15;
  v16 = *(v3[197] - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v95 - v21;
  v22 = v3[203];
  v132 = v4;
  v24 = v23;
  sub_1BF4E8834();
  v25 = swift_getTupleTypeMetadata2();
  v110 = sub_1BF4E90F4();
  v26 = *(v110 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v95 - v30;
  v31 = qword_1EDC99B78;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v32 + 64);
  v97 = (v34 + 63) >> 6;
  v108 = v25 - 8;
  v98 = v16 + 16;
  v115 = (v16 + 32);
  v107 = (v26 + 32);
  v120 = TupleTypeMetadata2;
  v125 = TupleTypeMetadata2 - 8;
  v37 = v130;
  v117 = v5 + 16;
  v128 = (v5 + 32);
  v123 = ":\n            Counts:\n";
  v124 = v133 + 32;
  v119 = v5;
  v122 = (v5 + 8);
  v104 = "ifetime assertion";
  v100 = v16;
  v103 = (v16 + 8);
  v38 = v111;
  v101 = v32;

  v40 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  v129 = v13;
  v105 = v33;
  v106 = v24;
  v102 = v25;
  if (v36)
  {
    while (1)
    {
      v113 = v40;
      v41 = v40;
LABEL_14:
      v114 = (v36 - 1) & v36;
      v45 = __clz(__rbit64(v36)) | (v41 << 6);
      v46 = v101;
      v47 = v100;
      (*(v100 + 16))(v99, *(v101 + 48) + *(v100 + 72) * v45, v24);
      v48 = *(*(v46 + 56) + 8 * v45);
      v49 = *(v25 + 48);
      v44 = v112;
      (*(v47 + 32))();
      *&v44[v49] = v48;
      v50 = *(v25 - 8);
      (*(v50 + 56))(v44, 0, 1, v25);

LABEL_15:
      v51 = v109;
      (*v107)(v109, v44, v110);
      if ((*(v50 + 48))(v51, 1, v25) == 1)
      {
        break;
      }

      v52 = *&v51[*(v25 + 48)];
      (*v115)(v38, v51, v24);
      v53 = 0;
      v55 = v52 + 64;
      v54 = *(v52 + 64);
      v121 = v52;
      v56 = 1 << *(v52 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & v54;
      v59 = (v56 + 63) >> 6;
      v133 = MEMORY[0x1E69E7CC0];
      v60 = v120;
      if ((v57 & v54) == 0)
      {
LABEL_21:
        if (v59 <= v53 + 1)
        {
          v62 = v53 + 1;
        }

        else
        {
          v62 = v59;
        }

        v63 = v62 - 1;
        while (1)
        {
          v61 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v61 >= v59)
          {
            v58 = 0;
            v74 = 1;
            v53 = v63;
            goto LABEL_30;
          }

          v58 = *(v55 + 8 * v61);
          ++v53;
          if (v58)
          {
            v53 = v61;
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }

      while (1)
      {
        v61 = v53;
LABEL_29:
        v64 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v65 = v64 | (v61 << 6);
        v66 = v121;
        v67 = v118;
        v68 = v119;
        v69 = v132;
        (*(v119 + 16))(v118, *(v121 + 48) + *(v119 + 72) * v65, v132);
        v70 = *(*(v66 + 56) + 8 * v65);
        v71 = *(v120 + 48);
        v72 = *(v68 + 32);
        v13 = v129;
        v73 = v67;
        v60 = v120;
        v72(v129, v73, v69);
        v74 = 0;
        *&v13[v71] = v70;
        v37 = v130;
LABEL_30:
        v75 = *(v60 - 8);
        (*(v75 + 56))(v13, v74, 1, v60);
        (*v124)(v37, v13, v126);
        if ((*(v75 + 48))(v37, 1, v60) == 1)
        {
          break;
        }

        v76 = *&v37[*(v60 + 48)];
        (*v128)(v131, v37, v132);
        v134 = 0;
        v135 = 0xE000000000000000;
        sub_1BF4E92E4();
        MEMORY[0x1BFB58C90](0xD000000000000010, v123 | 0x8000000000000000);
        v77 = v127[202];
        sub_1BF4E96F4();
        MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
        v136 = v76;
        v78 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v78);

        v79 = v134;
        v80 = v135;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1BF431F90(0, *(v133 + 2) + 1, 1, v133);
        }

        v82 = *(v133 + 2);
        v81 = *(v133 + 3);
        if (v82 >= v81 >> 1)
        {
          v133 = sub_1BF431F90((v81 > 1), v82 + 1, 1, v133);
        }

        (*v122)(v131, v132);
        v83 = v133;
        *(v133 + 2) = v82 + 1;
        v84 = &v83[16 * v82];
        *(v84 + 4) = v79;
        *(v84 + 5) = v80;
        v13 = v129;
        v37 = v130;
        if (!v58)
        {
          goto LABEL_21;
        }
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
      v85 = v127[200];
      v38 = v111;
      v24 = v106;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](0xD000000000000016, v104 | 0x8000000000000000);
      v136 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF3E4AF0();
      v86 = sub_1BF4E8894();
      v88 = v87;

      MEMORY[0x1BFB58C90](v86, v88);

      v89 = v134;
      v90 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_1BF431F90(0, *(v116 + 2) + 1, 1, v116);
      }

      v25 = v102;
      v92 = *(v116 + 2);
      v91 = *(v116 + 3);
      if (v92 >= v91 >> 1)
      {
        v116 = sub_1BF431F90((v91 > 1), v92 + 1, 1, v116);
      }

      result = (*v103)(v38, v24);
      v93 = v116;
      *(v116 + 2) = v92 + 1;
      v94 = &v93[16 * v92];
      *(v94 + 4) = v89;
      *(v94 + 5) = v90;
      v33 = v105;
      v36 = v114;
      v40 = v113;
      if (!v114)
      {
        goto LABEL_6;
      }
    }

    *v96 = v116;
  }

  else
  {
LABEL_6:
    if (v97 <= v40 + 1)
    {
      v42 = v40 + 1;
    }

    else
    {
      v42 = v97;
    }

    v43 = v42 - 1;
    v44 = v112;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v97)
      {
        v50 = *(v25 - 8);
        (*(v50 + 56))(v112, 1, 1, v25);
        v114 = 0;
        v113 = v43;
        goto LABEL_15;
      }

      v36 = *(v33 + 8 * v41);
      ++v40;
      if (v36)
      {
        v113 = v41;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3E3958()
{
  if (!sub_1BF3B530C())
  {
    return 0;
  }

  return sub_1BF45D9CC();
}

uint64_t sub_1BF3E3990()
{
  v0 = sub_1BF3E4B54(&qword_1EDCA6810);
  sub_1BF391990(v0);
  return v0;
}

uint64_t sub_1BF3E3A4C()
{
  v0 = sub_1BF3E4B54(&qword_1EDCA6808);
  sub_1BF391990(v0);
  return v0;
}

uint64_t sub_1BF3E3AA8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1BF3E3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2;
    v9 = a3;
    sub_1BF3B1E44(sub_1BF3E4F20, v6, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1BF3E3C04(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3E4F20, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BF3E3C5C(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v94 = a3;
  v84 = *a1;
  v7 = v84;
  v8 = v84[197];
  isa = v8[-1].isa;
  v9 = *(isa + 8);
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v75 - v15;
  v16 = v7[198];
  v91 = *(v16 - 8);
  v17 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v75 - v21;
  v22 = qword_1EDC99B78;
  swift_beginAccess();
  v23 = *(a1 + v22);
  v24 = v7[203];
  sub_1BF4E8834();
  v93 = a1;
  v25 = v7[201];

  v90 = a2;
  v83 = v8;
  v87 = v25;
  sub_1BF4E8854();

  v26 = v96;
  if (!v96)
  {
    goto LABEL_23;
  }

  v98 = v96;
  v92 = v16;
  sub_1BF4E8854();
  if (v97)
  {
    goto LABEL_23;
  }

  v27 = v96 - 1;
  if (__OFSUB__(v96, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v27 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_1BF4E92E4();
    v72 = v84;
    v73 = v84[200];
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v74 = v72[202];
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0xD000000000000031, 0x80000001BF4F90B0);
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v79 = v4;
  v78 = v96 - 1;
  if (v96 == 1)
  {
    v80 = v26;
    v36 = isa;
    v37 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38 = v83;
    v76 = *(isa + 2);
    v76(v13, v90, v83);
    v77 = sub_1BF3E29DC();
    v75 = sub_1BF4E8834();
    v39 = sub_1BF4E8844();
    if (*v40)
    {
      sub_1BF4E8784();
    }

    v39(v95, 0);
    (*(v36 + 1))(v13, v38);
    (v77)(&v96, 0);
    v31 = v38;
    v41 = qword_1EDC99B78;
    v42 = v93;
    swift_beginAccess();
    v43 = *(v42 + v41);

    v33 = v90;
    sub_1BF4E8854();

    v44 = v91;
    v89 = v37;
    if (v95[0])
    {
      v45 = MEMORY[0x1BFB58A40](v95[0], v92, MEMORY[0x1E69E6530], v24);

      v35 = v81;
      v29 = v76;
      if (v45)
      {
        swift_beginAccess();
        sub_1BF4E8784();
        swift_endAccess();
      }

      v28 = isa;
    }

    else
    {
      v28 = isa;
      v35 = v81;
      v29 = v76;
    }

    v34 = v44;
  }

  else
  {
    (*(v91 + 16))(v86, v94, v92);
    v96 = v27;
    LOBYTE(v97) = 0;
    sub_1BF4E8864();
    v28 = isa;
    v29 = *(isa + 2);
    v89 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30 = v90;
    v31 = v83;
    v29(v85, v90, v83);
    v32 = v98;
    v95[0] = v98;
    swift_beginAccess();
    sub_1BF4E8834();
    v80 = v32;
    v33 = v30;

    v34 = v91;
    sub_1BF4E8864();
    swift_endAccess();
    v35 = v81;
  }

  v46 = v82;
  v29(v82, v33, v31);
  isa = *(v34 + 16);
  (isa)(v35, v94, v92);
  v47 = sub_1BF4E7B34();
  v48 = sub_1BF4E8E84();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v83 = v47;
    v50 = v49;
    v87 = swift_slowAlloc();
    v95[0] = v87;
    *v50 = 136446722;
    LODWORD(v81) = v48;
    v51 = v85;
    v29(v85, v46, v31);
    v52 = *(v28 + 1);
    v52(v46, v31);
    v53 = v84[200];
    v54 = sub_1BF4E96A4();
    v55 = v91;
    v57 = v56;
    v52(v51, v31);
    v58 = sub_1BF38D65C(v54, v57, v95);

    *(v50 + 4) = v58;
    *(v50 + 12) = 2082;
    v59 = v86;
    v60 = v92;
    (isa)(v86, v35, v92);
    v61 = *(v55 + 8);
    v61(v35, v60);
    v62 = v84[202];
    v63 = v60;
    v64 = sub_1BF4E96A4();
    v66 = v65;
    v61(v59, v63);
    v67 = sub_1BF38D65C(v64, v66, v95);

    *(v50 + 14) = v67;
    *(v50 + 22) = 2050;
    v68 = v78;
    *(v50 + 24) = v78;
    v69 = v83;
    _os_log_impl(&dword_1BF389000, v83, v81, "%{public}s:%{public}s assertion released (%{public}ld)", v50, 0x20u);
    v70 = v87;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v70, -1, -1);
    MEMORY[0x1BFB5A5D0](v50, -1, -1);
  }

  else
  {
    (*(v34 + 8))(v35, v92);
    (*(v28 + 1))(v46, v31);

    v68 = v78;
  }

  if (!v68)
  {
    sub_1BF450388(v90, v94);
  }
}

uint64_t sub_1BF3E468C()
{
  v1 = *(v0 + qword_1EDC99B78);

  v2 = qword_1EDC99B70;
  v3 = sub_1BF4E7B54();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EDCA6810 + 8);
  sub_1BF3B0E64(*(v0 + qword_1EDCA6810));
  v5 = *(v0 + qword_1EDCA6808);
  v6 = *(v0 + qword_1EDCA6808 + 8);

  return sub_1BF3B0E64(v5);
}

char *AssertedStatefulStore.deinit()
{
  v0 = StatefulStore.deinit();
  v1 = *&v0[qword_1EDC99B78];

  v2 = qword_1EDC99B70;
  v3 = sub_1BF4E7B54();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[qword_1EDCA6810 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6810]);
  v5 = *&v0[qword_1EDCA6808 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6808]);
  return v0;
}

uint64_t AssertedStatefulStore.__deallocating_deinit()
{
  v0 = *AssertedStatefulStore.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1BF3E4820(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1BF3E4840@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_1BF3E4870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v36 = a3;
  v37 = a8;
  v38 = a6;
  v39 = a7;
  v34 = a1;
  v35 = a2;
  v33 = a9;
  v31 = a10;
  v32 = a5;
  v12 = *v10;
  v13 = sub_1BF4E7B54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1EDC99B78;
  v19 = v12[197];
  v20 = v12[198];
  v21 = v12[203];
  v22 = sub_1BF4E8834();
  swift_getTupleTypeMetadata2();
  v23 = sub_1BF4E8BF4();
  v24 = sub_1BF3B0FE8(v23, v19, v22, v12[201]);

  *&v10[v18] = v24;
  v25 = &v10[qword_1EDCA6810];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v10[qword_1EDCA6808];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *(v14 + 16);
  v27(&v10[qword_1EDC99B70], a4, v13);
  v27(v17, a4, v13);
  v28 = v32;
  sub_1BF38E49C(v32, v40);
  v29 = sub_1BF45C7E0(v34, v35, v36, v17, v40, v38, v39, 0, 0, v37, v33, *(&v33 + 1), v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  (*(v14 + 8))(a4, v13);
  return v29;
}

unint64_t sub_1BF3E4AF0()
{
  result = qword_1EDC9F180;
  if (!qword_1EDC9F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F180);
  }

  return result;
}

uint64_t sub_1BF3E4B54(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1BF3E4B98()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = (*(*(*(v0 + 16) - 8) + 80) + 88) & ~*(*(*(v0 + 16) - 8) + 80);
  v7 = *(v0 + 72);
  v6 = *(v0 + 56);
  return sub_1BF3E3B6C(*(v0 + 80), v0 + v4, v0 + ((v4 + *(*(*(v0 + 16) - 8) + 64) + *(*(*(v0 + 24) - 8) + 80)) & ~*(*(*(v0 + 24) - 8) + 80)));
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = sub_1BF3E4B54(a2);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v6;
  a4[1] = v8;

  return a3();
}

uint64_t keypath_setTm(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  a5(*a1, a1[1]);
  return a6(v7, v8);
}

uint64_t sub_1BF3E4D10()
{
  result = sub_1BF4E7B54();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1BF3E4F48(uint64_t a1)
{
  v3 = v2;
  v67 = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 32);
  v6 = sub_1BF4E88E4();
  v7 = [v5 prepareStatement_];

  if (!v7)
  {
    sub_1BF3E9074();
    swift_allocError();
    *v41 = 3;
    swift_willThrow();
    goto LABEL_39;
  }

  v57 = v1;
  v58 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AE8, &qword_1BF4EC248);
  v8 = sub_1BF4E9494();
  v9 = v8;
  v10 = 0;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v59 = a1;
  for (i = v8 + 64; v14; v9[2] = v35)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v3 = v16 | (v10 << 6);
    v19 = (*(a1 + 48) + 16 * v3);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(a1 + 56) + 24 * v3;
    v23 = *v22;
    v24 = *(v22 + 16);
    if (v24 <= 1)
    {
      if (*(v22 + 16))
      {
        v65 = &off_1F3DF0098;
        v29 = MEMORY[0x1E69E63B0];
      }

      else
      {
        v65 = &off_1F3DF0090;
        v29 = MEMORY[0x1E69E7360];
      }

      v64 = v29;
      *&aBlock = v23;

      goto LABEL_23;
    }

    v25 = *(v22 + 8);
    if (v24 == 2)
    {
      v64 = MEMORY[0x1E69E6158];
      v65 = &off_1F3DF00A0;
      *&aBlock = v23;
      *(&aBlock + 1) = v25;

      v26 = v23;
      v27 = v25;
      v28 = 2;
    }

    else
    {
      if (v24 != 3)
      {
        v30 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

        v31 = [v30 init];
        v64 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
        v65 = &off_1F3DF0088;
        *&aBlock = v31;
        goto LABEL_20;
      }

      v64 = MEMORY[0x1E6969080];
      v65 = &off_1F3DF00A8;
      *&aBlock = v23;
      *(&aBlock + 1) = v25;

      v26 = v23;
      v27 = v25;
      v28 = 3;
    }

    sub_1BF3D8840(v26, v27, v28);
LABEL_20:
    a1 = v59;
LABEL_23:
    *(i + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
    v32 = (v9[6] + 16 * v3);
    *v32 = v20;
    v32[1] = v21;
    sub_1BF38E610(&aBlock, v9[7] + 40 * v3);
    v33 = v9[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_41;
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_33;
    }

    if (v10 >= v15)
    {
      break;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BF476754(v9);

  v37 = sub_1BF4E8744();

  v65 = sub_1BF3E91D4;
  v66 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v63 = sub_1BF3E924C;
  v64 = &block_descriptor_28;
  v38 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v7 = v58;
  v39 = [v58 executeWithBindings:v37 resultRowHandler:v38 error:&aBlock];
  _Block_release(v38);

  if (v39)
  {
    v40 = aBlock;

    swift_beginAccess();
    v7 = *(v36 + 16);

    goto LABEL_39;
  }

  v42 = aBlock;
  v43 = sub_1BF4E6FF4();

  swift_willThrow();
  *&aBlock = v43;
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_38:

    goto LABEL_39;
  }

  v3 = v61;
  if ([v61 code] != 11)
  {

    goto LABEL_38;
  }

  v10 = v57;
  if (*(v57 + 40) != 1)
  {
    goto LABEL_36;
  }

  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  v45 = sub_1BF4E7B54();
  __swift_project_value_buffer(v45, qword_1EDCA6898);
  v46 = v3;
  v47 = sub_1BF4E7B34();
  v48 = sub_1BF4E8E74();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138543362;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&dword_1BF389000, v47, v48, "Corrupt database detected. Calling corruption handler and exiting: %{public}@", v49, 0xCu);
    sub_1BF38C9B4(v50, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v50, -1, -1);
    MEMORY[0x1BFB5A5D0](v49, -1, -1);
  }

  v52 = *(v10 + 48);
  v53 = *(v10 + 56);
  v54 = v46;
  v52();

  v7 = v58;
LABEL_36:
  swift_willThrow();

LABEL_39:
  v55 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1BF3E5608(uint64_t a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 24) + 16));
  if (a1 == 1)
  {
    if (!*(v1 + 80))
    {
      v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](18);
      MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F92A0);
      v5 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v5);

      sub_1BF3E4F48(v4);
    }
  }

  else if (!a1 && *(v1 + 80) == 1)
  {
    v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v3);
  }
}

uint64_t sub_1BF3E57B4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  *(v8 + 16) = 10;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  *(v8 + 40) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 56) = a6;
  *(v8 + 64) = 0;
  *(v8 + 24) = v14;
  *(v8 + 32) = a1;
  *(v8 + 48) = a5;
  v16 = a1;

  v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v17);
  if (v7)
  {

    [*(v8 + 32) close];
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v22 = sub_1BF4E7B54();
    __swift_project_value_buffer(v22, qword_1EDCA6898);
    v23 = v7;
    v24 = sub_1BF4E7B34();
    v25 = sub_1BF4E8E64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v16;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = sub_1BF4E6FE4();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1BF389000, v24, v25, "Failed to open database: %{public}@", v27, 0xCu);
      sub_1BF38C9B4(v28, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
      v30 = v27;
      v16 = v26;
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
    }

    swift_willThrow();

    sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  else
  {

    v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v18);
    v47 = v16;

    v19 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](18);
    MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F92A0);
    v20 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v20);

    sub_1BF3E4F48(v19);

    v21 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v21);

    v32 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v32);

    v33 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v33);

    if (a4)
    {
      sub_1BF3E5FA0(a3, a4, a2);
    }

    v34 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v35 = sub_1BF3E6988(v34);

    v36 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v48 = sub_1BF3E6988(v36);

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v37 = fmax(v48 * 0.05, 256.0);
    v38 = sub_1BF4E7B54();
    __swift_project_value_buffer(v38, qword_1EDCA6898);
    v39 = sub_1BF4E7B34();
    v40 = sub_1BF4E8E84();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134349312;
      *(v41 + 4) = v35;
      *(v41 + 12) = 2050;
      *(v41 + 14) = v48;
      _os_log_impl(&dword_1BF389000, v39, v40, "Database has %{public}lld/%{public}lld free pages.", v41, 0x16u);
      MEMORY[0x1BFB5A5D0](v41, -1, -1);
    }

    if (v37 <= v35)
    {
      v42 = sub_1BF4E7B34();
      v43 = sub_1BF4E8E84();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1BF389000, v42, v43, "Vacuuming", v44, 2u);
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
      }

      v45 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      sub_1BF3E4F48(v45);

      sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    else
    {
      sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    *(v8 + 40) = 1;
  }

  return v8;
}

uint64_t sub_1BF3E5FA0(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v88 = a3;
  v90 = a2;
  v91 = a1;
  v96[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76[-v16];
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  v89 = v3;
  v19 = sub_1BF3E6988(v18);

  if (!v4)
  {
    v81 = v14;
    v82 = v7;
    v83 = v17;
    v21 = v91;
    v87 = v10;
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      v86 = 0;
      v5 = *(v90 + 16);
      if (!(v5 >> 16))
      {
        v80 = v6;
        LODWORD(v7) = v19;
        LODWORD(v6) = v5;
        if (qword_1EDC9D460 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_6:
      v22 = sub_1BF4E7B54();
      v84 = __swift_project_value_buffer(v22, qword_1EDCA6898);
      v23 = sub_1BF4E7B34();
      v24 = sub_1BF4E8E84();
      v25 = os_log_type_enabled(v23, v24);
      v85 = v7;
      if (v25)
      {
        v77 = v24;
        v26 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = v5;
        v96[0] = v78;
        *v26 = 136446466;
        v93 = 118;
        v94 = 0xE100000000000000;
        v92 = WORD1(v19);
        v27 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v27);

        MEMORY[0x1BFB58C90](46, 0xE100000000000000);
        v92 = v7;
        v28 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v28);

        v29 = sub_1BF38D65C(v93, v94, v96);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v93 = 118;
        v94 = 0xE100000000000000;
        v92 = v91;
        v30 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v30);

        MEMORY[0x1BFB58C90](46, 0xE100000000000000);
        v31 = v6;
        v92 = v6;
        v21 = v91;
        v32 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v32);

        v33 = sub_1BF38D65C(v93, v94, v96);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_1BF389000, v23, v77, "Migrating database from %{public}s to %{public}s", v26, 0x16u);
        v5 = v78;
        swift_arrayDestroy();
        v34 = v5;
        LOWORD(v5) = v79;
        MEMORY[0x1BFB5A5D0](v34, -1, -1);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);
      }

      else
      {
        v31 = v6;
      }

      v35 = v87;
      result = v88;
      if (WORD1(v19) == v21)
      {
        v36 = v85;
        if (v85 == v31)
        {
          goto LABEL_27;
        }

        v95 = v19;
        LODWORD(v88) = v31;
        if (v31 >= v85)
        {
          goto LABEL_25;
        }

        v46 = v21;
        v37 = v5;
        v47 = v83;
        sub_1BF3E90C8(result, v83);
        v48 = sub_1BF4E7B34();
        v49 = sub_1BF4E8E64();
        if (os_log_type_enabled(v48, v49))
        {
          LODWORD(v84) = v49;
          v50 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v96[0] = v79;
          *v50 = 136446722;
          v93 = 118;
          v94 = 0xE100000000000000;
          v92 = v46;
          v51 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v51);

          MEMORY[0x1BFB58C90](46, 0xE100000000000000);
          v92 = v36;
          v52 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v52);

          v53 = sub_1BF38D65C(v93, v94, v96);

          *(v50 + 4) = v53;
          *(v50 + 12) = 2082;
          v93 = 118;
          v94 = 0xE100000000000000;
          v92 = v46;
          v54 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v54);

          MEMORY[0x1BFB58C90](46, 0xE100000000000000);
          v92 = v88;
          v55 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v55);

          v56 = sub_1BF38D65C(v93, v94, v96);

          *(v50 + 14) = v56;
          *(v50 + 22) = 2082;
          v57 = v81;
          sub_1BF3E90C8(v83, v81);
          v58 = sub_1BF4E7194();
          v59 = *(v58 - 8);
          if ((*(v59 + 48))(v57, 1, v58) == 1)
          {
            sub_1BF38C9B4(v57, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
            v60 = 0xEB000000003E7972;
            v61 = 0x6F6D656D2D6E693CLL;
          }

          else
          {
            v61 = sub_1BF4E7074();
            v60 = v62;
            (*(v59 + 8))(v57, v58);
          }

          v35 = v87;
          sub_1BF38C9B4(v83, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
          v63 = sub_1BF38D65C(v61, v60, v96);

          *(v50 + 24) = v63;
          _os_log_impl(&dword_1BF389000, v48, v84, "Detected database schema downgrade from %{public}s to %{public}s. Will attempt to truncate %{public}s", v50, 0x20u);
          v64 = v79;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v64, -1, -1);
          MEMORY[0x1BFB5A5D0](v50, -1, -1);

          v46 = v91;
        }

        else
        {

          sub_1BF38C9B4(v47, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
        }

        v65 = v89[4];
        v93 = 0;
        v66 = [v65 truncateDatabaseAndReturnError_];
        v40 = v93;
        v67 = v82;
        if (v66)
        {
          v95 = 0;
          v68 = objc_opt_self();
          v69 = v40;
          v70 = [v68 standardUserDefaults];
          _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
          v71 = sub_1BF4E7254();
          (*(v67 + 8))(v35, v80);
          v5 = sub_1BF4E88E4();
          [v70 setObject:v71 forKey:v5];

          v21 = v46;
LABEL_24:

          LOWORD(v5) = v37;
LABEL_25:
          v72 = v90;

          v73 = v89;

          sub_1BF3E8430(0x6F6974617267694DLL, 0xE90000000000006ELL, v73, v72, &v95, v73, v21 | (v5 << 16));

          goto LABEL_27;
        }
      }

      else
      {
        v37 = v5;
        v38 = v89[4];
        v93 = 0;
        v39 = [v38 truncateDatabaseAndReturnError_];
        v40 = v93;
        if (v39)
        {
          v95 = 0;
          v41 = v93;
          v5 = sub_1BF4E7B34();
          v42 = sub_1BF4E8E84();
          if (os_log_type_enabled(v5, v42))
          {
            v43 = v21;
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_1BF389000, v5, v42, "Truncated database for major schema version migration.", v44, 2u);
            v45 = v44;
            v21 = v43;
            MEMORY[0x1BFB5A5D0](v45, -1, -1);
          }

          goto LABEL_24;
        }
      }

      v74 = v40;
      sub_1BF4E6FF4();

      result = swift_willThrow();
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF3E6988(uint64_t a1)
{
  v3 = sub_1BF3E4F48(a1);
  if (!v2)
  {
    if (v3[2] && (v4 = v3[4], , , *(v4 + 16) == 1))
    {
      v5 = *(v4 + 40);
      v1 = *(v4 + 48);
      v6 = *(v4 + 56);
      v7 = *(v4 + 64);

      sub_1BF3D8840(v1, v6, v7);

      if (!v7)
      {
        return v1;
      }

      sub_1BF3D88B8(v1, v6, v7);
    }

    else
    {
    }

    sub_1BF3E9074();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1BF3E6A80@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1BF4E88E4();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1BF4E7334();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1BF38C9B4(v11, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v8 = sub_1BF4E7334();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t SQLDatabase.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLDatabase.Storage()
{
  result = qword_1EDC9B620;
  if (!qword_1EDC9B620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3E6D2C()
{
  sub_1BF3E6D84();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BF3E6D84()
{
  if (!qword_1EDC9D620)
  {
    sub_1BF4E7194();
    type metadata accessor for BSSqliteDatabaseConnectionDataProtectionClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC9D620);
    }
  }
}

uint64_t sub_1BF3E6DF8(void *a1, uint64_t a2)
{
  v3 = sub_1BF480D60(a1);
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BF4321E4(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1BF4321E4((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = v3;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1BF3E6ED0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  result = *(v0 + 80);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = result + 1;
    sub_1BF3E5608(result);
    os_unfair_lock_unlock(*(v1 + 16));
    v3 = objc_allocWithZone(MEMORY[0x1E698E778]);

    v4 = sub_1BF4E88E4();
    v5 = sub_1BF4E88E4();
    v8[4] = sub_1BF3E91CC;
    v8[5] = v0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BF3E924C;
    v8[3] = &block_descriptor_0;
    v6 = _Block_copy(v8);
    v7 = [v3 initWithIdentifier:v4 forReason:v5 invalidationBlock:v6];

    _Block_release(v6);

    return v7;
  }

  return result;
}

uint64_t sub_1BF3E7024(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA6898);

  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20[3] = a5;
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_1BF38D65C(a1, a2, v20);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1BF38D65C(a3, a4, v20);
    _os_log_impl(&dword_1BF389000, v13, v14, "Committing transaction savepoint [%{public}s]: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    v6 = v5;
    MEMORY[0x1BFB5A5D0](v17, -1, -1);
    MEMORY[0x1BFB5A5D0](v15, -1, -1);
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](18);
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F93A0);
  MEMORY[0x1BFB58C90](a3, a4);
  sub_1BF3E4F48(v18);

  if (!v6)
  {
  }

  return result;
}

uint64_t sub_1BF3E7274(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA6898);

  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E54();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_1BF38D65C(a1, a2, &v18);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1BF38D65C(a3, a4, &v18);
    _os_log_impl(&dword_1BF389000, v11, v12, "Rollback to transaction savepoint [%{public}s]: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
    v5 = v20;
    MEMORY[0x1BFB5A5D0](v13, -1, -1);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  v15 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F93E0);
  MEMORY[0x1BFB58C90](a3, a4);
  sub_1BF3E4F48(v15);

  if (!v5)
  {

    v18 = 0;
    v19 = 0xE000000000000000;
    v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](18);
    MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F93A0);
    MEMORY[0x1BFB58C90](a3, a4);
    sub_1BF3E4F48(v17);
  }

  return result;
}

void sub_1BF3E755C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v6);
  if (v3)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v7 = sub_1BF4E7B54();
    __swift_project_value_buffer(v7, qword_1EDCA6898);

    v8 = sub_1BF4E7B34();
    v9 = sub_1BF4E8E54();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1BF38D65C(a2, a3, &v17);
      _os_log_impl(&dword_1BF389000, v8, v9, "Unable to execute wal_checkpoint(FULL, privacy: .public) for: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF4E7B54();
    __swift_project_value_buffer(v12, qword_1EDCA6898);

    v13 = sub_1BF4E7B34();
    v14 = sub_1BF4E8E54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1BF38D65C(a2, a3, &v17);
      _os_log_impl(&dword_1BF389000, v13, v14, "Successfully executed wal_checkpoint(FULL, privacy: .public) for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }
  }
}

void sub_1BF3E7834(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 80) = v4 - 1;
    sub_1BF3E5608(v4);
    v5 = *(v3 + 16);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF3E788C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 1)
  {
    if (v6 < 0 || v6 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a3)
  {
    return 0;
  }

LABEL_9:
  v7 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1BF3E7920(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = a3[3];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = a3[9];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_24;
  }

  a3[9] = v15;
  os_unfair_lock_assert_owner(*(v12 + 16));
  v16 = a3[8];
  v17 = a3[9];
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = a6;
  v47 = a4;
  os_unfair_lock_unlock(*(v12 + 16));
  sub_1BF4E92E4();

  strcpy(v50, "transaction_");
  BYTE5(v50[1]) = 0;
  HIWORD(v50[1]) = -5120;
  MEMORY[0x1BFB58C90](a1, a2);
  MEMORY[0x1BFB58C90](95, 0xE100000000000000);
  v50[3] = v18;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  v48 = a1;
  v20 = v12;
  v21 = a2;
  v12 = v50[0];
  a2 = v50[1];
  v49 = sub_1BF3E6ED0();
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  v22 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](10);
  MEMORY[0x1BFB58C90](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFB58C90](v12, a2);
  sub_1BF3E4F48(v22);

  if (!v6)
  {
    v43 = v20;
    v44 = 0;
    v45 = v21;

    if (qword_1EDC9D460 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  os_unfair_lock_lock(*(v20 + 16));
  v23 = a3[9];
  v14 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (!v14)
  {
    a3[9] = v24;
    os_unfair_lock_assert_owner(*(v20 + 16));
    os_unfair_lock_unlock(*(v20 + 16));
    swift_willThrow();
LABEL_15:
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_7:
  v25 = sub_1BF4E7B54();
  __swift_project_value_buffer(v25, qword_1EDCA6898);

  v26 = sub_1BF4E7B34();
  v27 = sub_1BF4E8E54();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_1BF38D65C(v48, v45, v50);
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1BF38D65C(v12, a2, v50);
    _os_log_impl(&dword_1BF389000, v26, v27, "Beginning db savepoint [%{public}s]: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v29, -1, -1);
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
  }

  os_unfair_lock_lock(*(v43 + 16));
  v31 = a3[8];
  v30 = a3[9];
  v14 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  a3[9] = v32;
  os_unfair_lock_assert_owner(*(v43 + 16));
  v33 = a3[8];
  v14 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v14)
  {
LABEL_28:
    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  a3[8] = v34;
  os_unfair_lock_assert_owner(*(v43 + 16));
  os_unfair_lock_unlock(*(v43 + 16));
  v47(v46);
  if (v44)
  {
    sub_1BF3E7274(v48, v45, v12, a2);

    swift_willThrow();
    os_unfair_lock_lock(*(v43 + 16));
    v35 = a3[8];
    v14 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (!v14)
    {
      a3[8] = v36;
      os_unfair_lock_assert_owner(*(v43 + 16));
      os_unfair_lock_unlock(*(v43 + 16));
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  sub_1BF3E7024(v48, v45, v12, a2, a3);

  if (v31)
  {

    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      os_unfair_lock_lock(*(v43 + 16));
      v40 = a3[8];
      os_unfair_lock_unlock(*(v43 + 16));
      *(v39 + 4) = v40;

      _os_log_impl(&dword_1BF389000, v37, v38, "Outstanding transactions remaining: %{public}ld", v39, 0xCu);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BF3E755C(a3, v48, v45);
  }

  os_unfair_lock_lock(*(v43 + 16));
  v41 = a3[8];
  v14 = __OFSUB__(v41, 1);
  v42 = v41 - 1;
  if (!v14)
  {
    a3[8] = v42;
    os_unfair_lock_assert_owner(*(v43 + 16));
    os_unfair_lock_unlock(*(v43 + 16));
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BF3E7F48(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4)
{
  if (*a2 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = *(a1 + 16);
  v7 = sub_1BF3E788C(0, 0, *a2, v6, 0, a1);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v6 < v11)
  {
    goto LABEL_34;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 != v6)
  {

    v30 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_31;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_32;
      }

      v32 = v11 + 1;
      v33 = *(a1 + 16 * v11 + 32);
      v18 = swift_allocObject();
      *(v18 + 16) = v33;
      v19 = qword_1EDC9D460;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA6898);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = a3;
        v24 = swift_slowAlloc();
        *v24 = 134349312;
        *(v24 + 4) = v10;
        *(v24 + 12) = 2050;
        *(v24 + 14) = v10 + 1;
        _os_log_impl(&dword_1BF389000, v21, v22, "Migrating from minor revision %{public}ld to %{public}ld", v24, 0x16u);
        v25 = v24;
        a3 = v23;
        MEMORY[0x1BFB5A5D0](v25, -1, -1);
      }

      sub_1BF4E92E4();

      strcpy(v35, "MigratingFrom_");
      HIBYTE(v35[1]) = -18;
      v4 = MEMORY[0x1E69E6530];
      v26 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v26);

      MEMORY[0x1BFB58C90](1601139807, 0xE400000000000000);
      v36 = v10 + 1;
      v27 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v27);

      sub_1BF3E7920(v35[0], v35[1], a3, sub_1BF3E919C, v18, a3);

      if (v34)
      {

        return 1;
      }

      ++v10;
      ++v11;
      v6 = v30;
      if (v32 == v30)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_12:

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  v12 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9400);
  v4 = __PAIR64__(a4, a4) >> 16;
  LODWORD(v36) = v4;
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  sub_1BF3E4F48(v12);

  if (!v34)
  {

    if (qword_1EDC9D460 == -1)
    {
LABEL_14:
      v14 = sub_1BF4E7B54();
      __swift_project_value_buffer(v14, qword_1EDCA6898);
      v15 = sub_1BF4E7B34();
      v16 = sub_1BF4E8E84();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67240192;
        *(v17 + 4) = v4;
        _os_log_impl(&dword_1BF389000, v15, v16, "Set revision to %{public}d", v17, 8u);
        MEMORY[0x1BFB5A5D0](v17, -1, -1);
      }

      return 1;
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  return 1;
}

void sub_1BF3E8430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void *a6, unsigned int a7)
{
  v8 = v7;
  v16 = a3[3];
  os_unfair_lock_lock(*(v16 + 16));
  v17 = a3[9];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_26;
  }

  v59 = v7;
  a3[9] = v19;
  os_unfair_lock_assert_owner(*(v16 + 16));
  v20 = a3[8];
  v21 = a3[9];
  v8 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  os_unfair_lock_unlock(*(v16 + 16));
  sub_1BF4E92E4();

  strcpy(v60, "transaction_");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  MEMORY[0x1BFB58C90](a1, a2);
  MEMORY[0x1BFB58C90](95, 0xE100000000000000);
  v60[3] = v8;
  v22 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v22);

  v23 = v16;
  v16 = v60[0];
  a4 = v60[1];
  v58 = a1;
  v24 = a2;
  v25 = sub_1BF3E6ED0();
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  v8 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](10);
  MEMORY[0x1BFB58C90](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFB58C90](v16, a4);
  sub_1BF3E4F48(v8);
  a5 = v7;

  if (!v7)
  {
    v8 = a4;
    a4 = v23;
    v52 = v25;
    v53 = v16;
    v16 = v58;
    v59 = v24;

    if (qword_1EDC9D460 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  os_unfair_lock_lock(*(v23 + 16));
  v26 = a3[9];
  v18 = __OFSUB__(v26, 1);
  v27 = v26 - 1;
  if (!v18)
  {
    a3[9] = v27;
    os_unfair_lock_assert_owner(*(v23 + 16));
    os_unfair_lock_unlock(*(v23 + 16));
    swift_willThrow();
LABEL_16:
    [v25 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_7:
  v28 = sub_1BF4E7B54();
  __swift_project_value_buffer(v28, qword_1EDCA6898);

  v29 = v8;

  v30 = sub_1BF4E7B34();
  v31 = sub_1BF4E8E54();

  v32 = v16;
  v33 = a4;
  if (os_log_type_enabled(v30, v31))
  {
    v51 = a5;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60[0] = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1BF38D65C(v32, v59, v60);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1BF38D65C(v53, v29, v60);
    _os_log_impl(&dword_1BF389000, v30, v31, "Beginning db savepoint [%{public}s]: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
    v36 = v34;
    a5 = v51;
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
  }

  os_unfair_lock_lock(*(v33 + 16));
  v37 = a3[9];
  v18 = __OFSUB__(v37, 1);
  v38 = v37 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_30;
  }

  v39 = a3[8];
  a3[9] = v38;
  os_unfair_lock_assert_owner(*(v33 + 16));
  v40 = a3[8];
  v18 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v18)
  {
LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  a3[8] = v41;
  os_unfair_lock_assert_owner(*(v33 + 16));
  os_unfair_lock_unlock(*(v33 + 16));
  v42 = sub_1BF3E7F48(v54, v55, v56, v57);
  if (a5)
  {
    sub_1BF3E7274(v32, v59, v53, v29);
    v25 = v52;

    swift_willThrow();
    os_unfair_lock_lock(*(v33 + 16));
    v43 = a3[8];
    v18 = __OFSUB__(v43, 1);
    v44 = v43 - 1;
    if (!v18)
    {
      a3[8] = v44;
      os_unfair_lock_assert_owner(*(v33 + 16));
      os_unfair_lock_unlock(*(v33 + 16));
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  if (v42)
  {
    sub_1BF3E7024(v32, v59, v53, v29, a3);
  }

  else
  {
    sub_1BF3E7274(v32, v59, v53, v29);
  }

  if (v39)
  {

    v45 = sub_1BF4E7B34();
    v46 = sub_1BF4E8E54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      os_unfair_lock_lock(*(v33 + 16));
      v48 = a3[8];
      os_unfair_lock_unlock(*(v33 + 16));
      *(v47 + 4) = v48;

      _os_log_impl(&dword_1BF389000, v45, v46, "Outstanding transactions remaining: %{public}ld", v47, 0xCu);
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BF3E755C(a3, v32, v59);
  }

  os_unfair_lock_lock(*(v33 + 16));
  v49 = a3[8];
  v18 = __OFSUB__(v49, 1);
  v50 = v49 - 1;
  if (!v18)
  {
    a3[8] = v50;
    os_unfair_lock_assert_owner(*(v33 + 16));
    os_unfair_lock_unlock(*(v33 + 16));
    [v52 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_32:
  __break(1u);
  __break(1u);
}

uint64_t sub_1BF3E8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v53 = a4;
  v54 = a5;
  v56 = sub_1BF4E7194();
  v55 = *(v56 - 8);
  v7 = *(v55 + 8);
  MEMORY[0x1EEE9AC00](v56);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for SQLDatabase.Storage();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  sub_1BF3E8FB4(a1, &v47 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v21, 1, v22);
  result = sub_1BF3E9018(v21);
  v52 = a3;
  if (v24 != 1 || a3 == 0)
  {
    v27 = *(v55 + 7);
    v27(v14, 1, 1, v56);
    sub_1BF3E8FB4(a1, v18);
    v28 = a1;
    if (v23(v18, 1, v22) == 1)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E698E788]) initWithInMemoryDatabase];
    }

    else
    {
      v30 = *(v55 + 4);
      v47 = *&v18[*(v22 + 48)];
      v48 = v30;
      v31 = v49;
      v32 = v56;
      v30(v49, v18, v56);
      v33 = objc_allocWithZone(MEMORY[0x1E698E788]);
      v55 = v27;
      v34 = v33;
      v35 = v28;
      v36 = sub_1BF4E7094();
      v29 = [v34 initWithFileURL:v36 dataProtectionClass:v47];

      v28 = v35;
      sub_1BF38C9B4(v14, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      v48(v14, v31, v32);
      v55(v14, 0, 1, v32);
    }

    v37 = v14;
    v38 = v51;
    v39 = v29;
    v41 = v53;
    v40 = v54;
    if (v39)
    {
      v42 = v39;
      sub_1BF3E90C8(v37, v38);
      if (v41)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v41;
        *(v43 + 24) = v40;
        v44 = sub_1BF3E9170;
      }

      else
      {
        v44 = nullsub_1;
        v43 = 0;
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *(v46 + 24) = v43;
      type metadata accessor for SQLDatabase();
      swift_allocObject();
      sub_1BF391990(v41);
      v29 = sub_1BF3E57B4(v42, v38, v50, v52, sub_1BF3E9138, v46);

      sub_1BF3B0E64(v41);
      sub_1BF3E9018(v28);
      sub_1BF38C9B4(v37, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    else
    {

      sub_1BF3E9074();
      swift_allocError();
      *v45 = 2;
      swift_willThrow();
      sub_1BF3B0E64(v41);
      sub_1BF3E9018(v28);
      sub_1BF38C9B4(v37, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3E8FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Storage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E9018(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Storage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF3E9074()
{
  result = qword_1EBDD8AE0;
  if (!qword_1EBDD8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8AE0);
  }

  return result;
}

uint64_t sub_1BF3E90C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E9138(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1BF3E9170(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1BF3E919C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

unint64_t sub_1BF3E91F0()
{
  result = qword_1EBDD8AF0;
  if (!qword_1EBDD8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8AF0);
  }

  return result;
}

uint64_t sub_1BF3E9250(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + *(a1 + 36));
  return sub_1BF4E7284();
}

uint64_t RemoteActivityWindowBudgeting.nextRefreshDate.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 168))(a1, a2, v7);
  (*(a2 + 152))(a1, a2);
  sub_1BF4E7284();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BF3E937C(uint64_t a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v11 = *(v1 + *(a1 + 36));
  v12 = v1 + *(a1 + 32);
  sub_1BF4E7284();
  LOBYTE(a1) = sub_1BF4E7264();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v10, v3);
  return a1 & 1;
}

uint64_t RemoteActivityWindowBudgeting.windowExpired.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(a2 + 168))(a1, a2);
  (*(a2 + 152))(a1, a2);
  sub_1BF4E7284();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = sub_1BF4E7264();
  v15(v11, v4);
  v15(v14, v4);
  return v16 & 1;
}

uint64_t sub_1BF3E9640(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  result = *(v1 + *(a1 + 44));
  if (v2 >= 1)
  {
    v4 = __OFSUB__(result, v2);
    result -= v2;
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RemoteActivityWindowBudgeting.consumedBudget.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 224);
  v5 = v4();
  result = (*(a2 + 208))(a1, a2);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = (v4)(a1, a2);
    v9 = __OFSUB__(v7, v8);
    result = v7 - v8;
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF3E973C(uint64_t result)
{
  v2 = *(result + 48);
  v3 = *(v1 + v2);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.decrement()()
{
  v1 = (*(v0 + 240))(v3);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    --*v2;
    v1(v3, 0);
  }
}

uint64_t sub_1BF3E97CC(int *a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v11 = a1[8];
  v12 = *(v1 + a1[9]);
  sub_1BF4E7284();
  v13 = sub_1BF4E7264();
  v14 = *(v4 + 8);
  v14(v7, v3);
  result = (v14)(v10, v3);
  if (v13)
  {
    *(v1 + a1[12]) = *(v1 + a1[11]);
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    return (*(v4 + 40))(v1 + v11, v10, v3);
  }

  return result;
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.refreshIfNecessary()()
{
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 200))())
  {
    v4 = *(v2 + 280);

    v4(v3, v2);
  }
}

uint64_t sub_1BF3E99B4(int *a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + a1[12]) = *(v1 + a1[11]);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  return (*(v4 + 40))(v1 + a1[8], v7, v3);
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.refresh()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v2 + 208))(v3, v2, v6);
  (*(v2 + 232))(v9, v3, v2);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(v2 + 176))(v8, v3, v2);
}

uint64_t RemoteActivityWindowBudgeting.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1BF4E92E4();
  v12 = (*(a2 + 120))(a1, a2);
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x696E69616D657220, 0xEB0000000020676ELL);
  v17[1] = (*(a2 + 224))(a1, a2);
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x20747261747320, 0xE700000000000000);
  (*(a2 + 144))(a1, a2);
  sub_1BF3E9E48();
  v14 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v14);

  v15 = *(v5 + 8);
  v15(v11, v4);
  MEMORY[0x1BFB58C90](0x6873657266657220, 0xEC000000206E6920);
  (*(a2 + 192))(a1, a2);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7234();
  v15(v8, v4);
  v15(v11, v4);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](115, 0xE100000000000000);
  return v18;
}

unint64_t sub_1BF3E9E48()
{
  result = qword_1EDC9D5E8;
  if (!qword_1EDC9D5E8)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D5E8);
  }

  return result;
}

uint64_t RemoteActivityWindowBudgeting.budgetExpired.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(a2 + 144))(a1, a2);
  (*(a2 + 160))(a1, a2);
  sub_1BF4E7284();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = sub_1BF4E7264();
  v15(v11, v4);
  v15(v14, v4);
  return v16 & 1;
}

uint64_t sub_1BF3EA200(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = sub_1BF4E7174();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 60;
}

uint64_t DataProtectedArchiveFilePromise.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DataProtectedArchiveFilePromise.deinit()
{
  v1 = v0;
  v2 = sub_1BF4E8D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_1EDC97000;
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) == 1)
  {
    v45 = v9;
    v43 = v2;
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v44 = 7104878;
    v13 = sub_1BF4E7B54();
    __swift_project_value_buffer(v13, qword_1EDCA6A48);

    v14 = sub_1BF4E7B34();
    v15 = sub_1BF4E8E64();

    v16 = os_log_type_enabled(v14, v15);
    v42 = v3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v50 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1BF38D65C(*(v1 + 16), *(v1 + 24), &v50);
      *(v17 + 12) = 2082;
      v19 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      swift_beginAccess();
      if ((*(v45 + 48))(v1 + v19, 1, v7))
      {
        v20 = 0xE300000000000000;
        v21 = 7104878;
      }

      else
      {
        sub_1BF3EDB58(v1 + v19, v11);
        v48 = 60;
        v49 = 0xE100000000000000;
        v22 = &v11[*(v7 + 20)];
        v23 = sub_1BF4E7174();
        MEMORY[0x1BFB58C90](v23);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v21 = v48;
        v20 = v49;
        sub_1BF3CA2B8(v11);
      }

      v24 = sub_1BF38D65C(v21, v20, &v50);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1BF389000, v14, v15, "ArchiveFilePromise abandoned [%{public}s]: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v18, -1, -1);
      MEMORY[0x1BFB5A5D0](v17, -1, -1);
    }

    v25 = [objc_opt_self() processInfo];
    v26 = [v25 environment];

    v27 = sub_1BF4E8764();
    v12 = &unk_1EDC97000;
    if (*(v27 + 16))
    {
      sub_1BF3CD5E8(0xD000000000000011, 0x80000001BF4F9480, sub_1BF3CD66C);
      v29 = v28;

      if (v29)
      {
LABEL_16:
        sub_1BF3EB8FC(0, 0x74696E696564, 0xE600000000000000);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1BF4E92E4();

    v30 = 0xE300000000000000;
    v50 = 4023401;
    v51 = 0xE300000000000000;
    v31 = *(v1 + 16);
    v32 = *(v1 + 24);

    MEMORY[0x1BFB58C90](v31, v32);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F94A0);
    v33 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
    swift_beginAccess();
    if (!(*(v45 + 48))(v1 + v33, 1, v7))
    {
      sub_1BF3EDB58(v1 + v33, v11);
      v46 = 60;
      v47 = 0xE100000000000000;
      v34 = &v11[*(v7 + 20)];
      v35 = sub_1BF4E7174();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](62, 0xE100000000000000);
      v30 = v47;
      v44 = v46;
      sub_1BF3CA2B8(v11);
    }

    type metadata accessor for BugCapture();
    MEMORY[0x1BFB58C90](v44, v30);

    v36 = v50;
    v37 = v51;
    _s9ChronoKit10BugCaptureC06reportC04type7subType4name5value8priority10completionySS_S3SScPyycSgtFZfA3__0();
    static BugCapture.reportBug(type:subType:name:value:priority:completion:)(0xD000000000000012, 0x80000001BF4F94C0, 0x656E6F646E616241, 0xE900000000000064, 0xD00000000000001DLL, 0x80000001BF4F94E0, v36, v37, v6, 0, 0);

    (*(v42 + 8))(v6, v43);
    goto LABEL_16;
  }

LABEL_17:
  v38 = *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));
  v39 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination;
  v40 = sub_1BF4E7194();
  (*(*(v40 - 8) + 8))(v1 + v39, v40);
  sub_1BF38C9B4(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF38C9B4(v1 + v12[33], &qword_1EBDD8B00, &qword_1BF4EC378);
  return v1;
}

uint64_t sub_1BF3EA924@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1BF4E6D54();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E6D64();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  sub_1BF38C94C(v2 + v19, v13, &qword_1EBDD8B00, &qword_1BF4EC378);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BF38C9B4(v13, &qword_1EBDD8B00, &qword_1BF4EC378);
    sub_1BF4E6D14();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF3EE29C(&qword_1EDC9F110, MEMORY[0x1E6967E98]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v50 + 8))(v9, v6);
    return swift_willThrow();
  }

  else
  {
    sub_1BF3EDD00(v13, v18);
    v21 = v2[7];
    v22 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v21);
    v23 = v51;
    v24 = (*(v22 + 32))(*&v18[*(v14 + 24)], v21, v22);
    v25 = v2;
    if (v23)
    {
    }

    v54 = 0;
    v26 = MEMORY[0x1EEE9AC00](v24);
    *(&v47 - 4) = &v54;
    *(&v47 - 3) = v2;
    *(&v47 - 2) = v18;
    (*(*v2 + 192))(sub_1BF3EDD64, v26);
    v27 = v2[7];
    v28 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v27);
    v29 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination;
    (*(v28 + 40))(v2 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v27, v28);
    v30 = v2[7];
    v31 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v30);
    (*(v31 + 88))(&v18[*(v14 + 20)], v2 + v29, v30, v31);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1BF4E92E4();

    v52 = 0xD000000000000019;
    v53 = 0x80000001BF4F9520;
    v32 = sub_1BF4E7074();
    MEMORY[0x1BFB58C90](v32);

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    sub_1BF3EB8FC(0, v52, v53);

    v33 = [objc_opt_self() defaultManager];
    sub_1BF4E7164();
    v34 = sub_1BF4E88E4();

    v35 = [v33 fileExistsAtPath_];

    if ((v35 & 1) == 0)
    {
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v36 = sub_1BF4E7B54();
      __swift_project_value_buffer(v36, qword_1EDCA6A48);

      v37 = sub_1BF4E7B34();
      v38 = sub_1BF4E8E74();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v51 = v18;
        v40 = v39;
        v41 = swift_slowAlloc();
        v52 = v41;
        *v40 = 136446210;
        v42 = sub_1BF4E7164();
        v44 = sub_1BF38D65C(v42, v43, &v52);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1BF389000, v37, v38, "Destination file DOES NOT EXIST at %{public}s.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1BFB5A5D0](v41, -1, -1);
        v45 = v40;
        v18 = v51;
        MEMORY[0x1BFB5A5D0](v45, -1, -1);
      }
    }

    v46 = sub_1BF4E7194();
    (*(*(v46 - 8) + 16))(v48, v25 + v29, v46);
    return sub_1BF3CA2B8(v18);
  }
}

void sub_1BF3EB12C(_BYTE *a1, void *a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v64 = 0;
  v59 = sub_1BF4E7194();
  v61 = *(v59 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8424();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B18, &qword_1BF4EF790);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = (&v57 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - v25;
  *a1 = 1;
  v27 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel;
  (*(v7 + 104))(&v57 - v25, *MEMORY[0x1E6985988], v6, v24);
  (*(v7 + 56))(v26, 0, 1, v6);
  v28 = *(v11 + 56);
  v63 = v27;
  sub_1BF38C94C(v67 + v27, v14, &qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF38C94C(v26, &v14[v28], &qword_1EBDD8AF8, &qword_1BF4EC370);
  v65 = v7;
  v29 = *(v7 + 48);
  if (v29(v14, 1, v6) == 1)
  {
    sub_1BF38C9B4(v26, &qword_1EBDD8AF8, &qword_1BF4EC370);
    if (v29(&v14[v28], 1, v6) == 1)
    {
      sub_1BF38C9B4(v14, &qword_1EBDD8AF8, &qword_1BF4EC370);
      goto LABEL_8;
    }

LABEL_6:
    sub_1BF38C9B4(v14, &qword_1EBDD8B18, &qword_1BF4EF790);
    v30 = v64;
    goto LABEL_15;
  }

  sub_1BF38C94C(v14, v22, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if (v29(&v14[v28], 1, v6) == 1)
  {
    sub_1BF38C9B4(v26, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v65 + 8))(v22, v6);
    goto LABEL_6;
  }

  v31 = v65;
  v32 = v60;
  (*(v65 + 32))(v60, &v14[v28], v6);
  sub_1BF3EE29C(&qword_1EDC9FDE0, MEMORY[0x1E69859A8]);
  v33 = sub_1BF4E88C4();
  v34 = *(v31 + 8);
  v34(v32, v6);
  sub_1BF38C9B4(v26, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v34(v22, v6);
  sub_1BF38C9B4(v14, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((v33 & 1) == 0)
  {
    v30 = v64;
    goto LABEL_15;
  }

LABEL_8:
  v35 = v67;
  sub_1BF38E49C((v67 + 4), v70);
  v36 = v71;
  v37 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v38 = v35 + v63;
  v39 = v62;
  sub_1BF38C94C(v38, v62, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v60 = v29;
  if (v29(v39, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = sub_1BF4E8404();
  v41 = *(v65 + 8);
  v65 += 8;
  v62 = v41;
  (v41)(v39, v6);
  v42 = *(type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0) + 20);
  v30 = v64;
  (*(v37 + 64))(v40, v66 + v42, v36, v37);
  v43 = v61;
  if (!v30)
  {

    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  v44 = v67;
  sub_1BF38E49C((v67 + 4), v70);
  v45 = v71;
  v46 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v47 = v66 + v42;
  v49 = v58;
  v48 = v59;
  (*(v43 + 16))(v58, v47, v59);
  v50 = v44 + v63;
  v51 = v57;
  sub_1BF38C94C(v50, v57, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((v60)(v51, 1, v6) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = sub_1BF4E8414();
  (v62)(v52, v6);
  v68 = v53;
  v69 = 0;
  v30 = 0;
  (*(v46 + 48))(v49, 0xD00000000000002DLL, 0x80000001BF4F9630, &v68, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], v45, v46);
  (*(v43 + 8))(v49, v48);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
LABEL_15:
  v54 = v67[7];
  v55 = v67[8];
  __swift_project_boxed_opaque_existential_1(v67 + 4, v54);
  v56 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(v55 + 32))(*(v66 + *(v56 + 28)), v54, v55);
  if (v30)
  {
  }
}
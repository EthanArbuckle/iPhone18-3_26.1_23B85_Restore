void sub_1D54AC554(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1D4ECA4A0(*v1);
  v8 = sub_1D5613838();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    if (*(v7 + 16))
    {
      sub_1D526D830();
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_1D54AC664()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v6 = OUTLINED_FUNCTION_4(v5);
  v41 = v7;
  v42 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v40 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5613838();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_245_3();
  v22 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
  OUTLINED_FUNCTION_220_3();
  if (!*(*(v2 + v22) + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_64_29();
    v31 = sub_1D560C8E8();
    sub_1D525CD18();
    (*(v15 + 8))(v1, v12);
    v31(v43, 0);

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_54_0();
  sub_1D54AC554(v20);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  v23 = sub_1D560C8E8();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D54B464C(v26);
    v26 = v39;
    *v25 = v39;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v26 + 16) > v4)
  {
    v28 = *(v15 + 80);
    OUTLINED_FUNCTION_43_3();
    (*(v15 + 24))(v26 + v29 + *(v15 + 72) * v30, v20, v12);
    v23(v43, 0);

    (*(v15 + 8))(v20, v12);
LABEL_8:
    v32 = sub_1D54A52B8();
    v33 = *(v2 + v22);
    v43[0] = v32;

    sub_1D4EF388C();
    v34 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_72_29();
    sub_1D54BE3C4(v36, v37);
    sub_1D560DAD8();
    v38 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession;
    OUTLINED_FUNCTION_54_0();
    (*(v41 + 40))(v2 + v38, v40, v42);
    swift_endAccess();
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
}

BOOL sub_1D54AC9EC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3)
  {
    if (a2 == 3)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 4)
    {
      return a2 == 4;
    }

    if (a2 - 3 >= 2)
    {
      if (a1 == 2)
      {
        if (a2 != 2)
        {
          return 0;
        }
      }

      else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D54ACA5C(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    v2 = 1;
  }

  else if (a2 == 4)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    if (a2 == 2)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    v2 = a2 & 1;
  }

  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t sub_1D54ACAD4(char a1)
{
  sub_1D56162D8();
  sub_1D54ACA5C(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D54ACB44()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D54ACA5C(v3, v1);
  return sub_1D5616328();
}

void *sub_1D54ACB88@<X0>(void *a1@<X8>)
{
  result = sub_1D54ACB1C();
  *a1 = result;
  return result;
}

uint64_t sub_1D54ACBB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D54ACC08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicSuggestedSongsViewModel(0);
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

uint64_t static MusicSuggestedSongsViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id) == *(a2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id) && *(a1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8) == *(a2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t MusicSuggestedSongsViewModel.hash(into:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8);
  return sub_1D5614E28();
}

uint64_t MusicSuggestedSongsViewModel.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54ACD50()
{
  sub_1D56162D8();
  v1 = *v0;
  MusicSuggestedSongsViewModel.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsViewModel.description.getter()
{
  OUTLINED_FUNCTION_109_17();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000001FLL);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](62, 0xE100000000000000);
  return v1;
}

uint64_t sub_1D54ACE48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D56675F0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D54ACEAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicItemCache.Key();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  result = sub_1D5615B18();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v38 = v2;
  v39 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      sub_1D54ACE48(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48);
    v23 = *(v40 + 72);
    sub_1D54B5AC0(v22 + v23 * (v19 | (v12 << 6)), v7);
    v24 = *(v11 + 40);
    sub_1D56162D8();
    v25 = *v7;
    v26 = v7[1];
    sub_1D5614E28();
    v27 = *(v41 + 20);
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
    sub_1D5614CB8();
    result = sub_1D5616328();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_1D54B5AC0(v7, *(v11 + 48) + v31 * v23);
    ++*(v11 + 16);
    v8 = v39;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v18 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D54AD214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  result = sub_1D5615B18();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1D54ACE48(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1D56162D8();
    sub_1D5614E28();
    result = sub_1D5616328();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D54AD470(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v54 - v10;
  v11 = type metadata accessor for MusicItemTypedIdentifier();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  result = sub_1D5615B18();
  v18 = v15;
  v19 = result;
  if (!*(v15 + 16))
  {
LABEL_35:

    *v2 = v19;
    return result;
  }

  v20 = v5;
  v21 = 0;
  v22 = (v15 + 56);
  v23 = 1 << *(v15 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v15 + 56);
  v26 = (v23 + 63) >> 6;
  v57 = (v20 + 32);
  v55 = v2;
  v56 = (v20 + 8);
  v27 = result + 56;
  v60 = v18;
  v61 = v4;
  v59 = result;
  if (!v25)
  {
LABEL_9:
    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v21 >= v26)
      {
        break;
      }

      v30 = v22[v21];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    v53 = 1 << *(v18 + 32);
    if (v53 >= 64)
    {
      sub_1D54ACE48(0, (v53 + 63) >> 6, v22);
    }

    else
    {
      *v22 = -1 << v53;
    }

    v2 = v55;
    *(v18 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_14:
    v31 = *(v18 + 48);
    v65 = *(v62 + 72);
    sub_1D54B5AC0(v31 + v65 * (v28 | (v21 << 6)), v14);
    v32 = *(v19 + 40);
    sub_1D56162D8();
    v33 = *v14;
    v34 = v14[1];
    sub_1D5614E28();
    v35 = v14[2];
    MEMORY[0x1DA6EC0D0](*(v35 + 16));
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = (v35 + 40);
      do
      {
        v38 = *(v37 - 1);
        v39 = *v37;

        sub_1D5614E28();

        v37 += 2;
        --v36;
      }

      while (v36);
    }

    v40 = v63;
    v41 = *(v63 + 24);
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
    sub_1D5614CB8();
    v42 = v64;
    sub_1D4F39AB0(v14 + *(v40 + 28), v64, &qword_1EC7EA358, &unk_1D561DF50);
    v43 = v61;
    if (__swift_getEnumTagSinglePayload(v42, 1, v61) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      v44 = v58;
      (*v57)(v58, v42, v43);
      sub_1D56162F8();
      sub_1D54B4BA4(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
      sub_1D5614CB8();
      (*v56)(v44, v43);
    }

    v19 = v59;
    result = sub_1D5616328();
    v45 = -1 << *(v19 + 32);
    v46 = result & ~v45;
    v47 = v46 >> 6;
    if (((-1 << v46) & ~*(v27 + 8 * (v46 >> 6))) == 0)
    {
      break;
    }

    v48 = __clz(__rbit64((-1 << v46) & ~*(v27 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
    v18 = v60;
LABEL_29:
    *(v27 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    result = sub_1D54B5AC0(v14, *(v19 + 48) + v48 * v65);
    ++*(v19 + 16);
    if (!v25)
    {
      goto LABEL_9;
    }
  }

  v49 = 0;
  v50 = (63 - v45) >> 6;
  v18 = v60;
  while (++v47 != v50 || (v49 & 1) == 0)
  {
    v51 = v47 == v50;
    if (v47 == v50)
    {
      v47 = 0;
    }

    v49 |= v51;
    v52 = *(v27 + 8 * v47);
    if (v52 != -1)
    {
      v48 = __clz(__rbit64(~v52)) + (v47 << 6);
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D54AD9FC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D560D838();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  result = sub_1D5615B18();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1D54ACE48(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
    result = sub_1D5614CA8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1D54ADD54()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v6)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v24 = v0;
  v7 = 0;
  OUTLINED_FUNCTION_417();
  v8 = *(v3 - 24);
  OUTLINED_FUNCTION_88_19();
  if (!v0)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v4)
      {
        break;
      }

      ++v10;
      if (v3[v7])
      {
        OUTLINED_FUNCTION_113_2();
        v0 = (v12 & v11);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v22 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v22);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v3 = v23;
    }

    v0 = v24;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_250_2();
LABEL_9:
    v13 = *(*(v1 + 48) + 8 * (v9 | (v7 << 6)));
    OUTLINED_FUNCTION_436();
    MEMORY[0x1DA6EC0D0](v13);
    v14 = sub_1D5616328();
    OUTLINED_FUNCTION_127_11(v14);
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_19:
    OUTLINED_FUNCTION_110_14(v16);
    *(v21 + 8 * v20) = v13;
    OUTLINED_FUNCTION_253_2();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v15)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_342_1(v17);
    if (!v15)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1D54ADEA4()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v5)
  {
LABEL_28:

    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v28 = v0;
  v6 = 0;
  OUTLINED_FUNCTION_417();
  v8 = 1 << *(v3 - 24);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v12 = v2 + 56;
  if ((v9 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v14;
      if (v3[v6])
      {
        OUTLINED_FUNCTION_113_2();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v26 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v26);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v3 = v27;
    }

    v0 = v28;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_194();
LABEL_12:
    v17 = *(*(v1 + 48) + 8 * (v13 | (v6 << 6)));
    OUTLINED_FUNCTION_436();
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    sub_1D5614E28();
    v20 = sub_1D5616328() & ~(-1 << *(v2 + 32));
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_22:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v2 + 48) + 8 * v21) = v17;
    OUTLINED_FUNCTION_253_2();
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v25)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v12 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1D54AE054(uint64_t a1)
{
  v2 = v1;
  v4 = _s15PersistentEntryVMa();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  result = sub_1D5615B18();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v36 = v2;
  v37 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      sub_1D54ACE48(0, (v35 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v36;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48);
    v40 = *(v38 + 72);
    sub_1D54B5AC0(v22 + v40 * (v19 | (v12 << 6)), v7);
    v23 = *(v11 + 40);
    sub_1D56162D8();
    sub_1D560D838();
    sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
    sub_1D5614CB8();
    v24 = v39;
    v25 = *(v39 + 20);
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
    sub_1D5614CB8();
    v26 = *(v24 + 24);
    sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    sub_1D5614CB8();
    result = sub_1D5616328();
    v27 = -1 << *(v11 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_1D54B5AC0(v7, *(v11 + 48) + v30 * v40);
    ++*(v11 + 16);
    v8 = v37;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v18 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1D54AE464()
{
  OUTLINED_FUNCTION_30_14();
  v6 = OUTLINED_FUNCTION_112_15(v5);
  v8 = OUTLINED_FUNCTION_313_1(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v10)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v28 = v0;
  v11 = 0;
  OUTLINED_FUNCTION_417();
  v12 = *(v3 - 24);
  OUTLINED_FUNCTION_88_19();
  if (!v0)
  {
LABEL_4:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v11 >= v4)
      {
        break;
      }

      ++v14;
      if (v3[v11])
      {
        OUTLINED_FUNCTION_113_2();
        v0 = (v16 & v15);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v26 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v26);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v3 = v27;
    }

    v0 = v28;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_250_2();
LABEL_9:
    v17 = *(*(v1 + 48) + (v13 | (v11 << 6)));
    OUTLINED_FUNCTION_436();
    MEMORY[0x1DA6EC0D0](v17);
    v18 = sub_1D5616328();
    OUTLINED_FUNCTION_127_11(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_19:
    OUTLINED_FUNCTION_110_14(v20);
    *(v25 + v24) = v17;
    OUTLINED_FUNCTION_253_2();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v19)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    OUTLINED_FUNCTION_342_1(v21);
    if (!v19)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1D54AE5A8(uint64_t a1)
{
  v2 = v1;
  v50 = _s13PersistedDateVMa();
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v45 - v8;
  v9 = _s10DescriptorVMa();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  result = sub_1D5615B18();
  v16 = result;
  if (!*(v13 + 16))
  {
LABEL_32:

    *v2 = v16;
    return result;
  }

  v45 = v2;
  v17 = 0;
  v18 = (v13 + 56);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 56);
  v22 = (v19 + 63) >> 6;
  v23 = result + 56;
  v47 = result;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v53 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    v44 = 1 << *(v13 + 32);
    if (v44 >= 64)
    {
      sub_1D54ACE48(0, (v44 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v44;
    }

    v2 = v45;
    *(v13 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_14:
    v27 = *(v13 + 48);
    v52 = *(v48 + 72);
    sub_1D54B5AC0(v27 + v52 * (v24 | (v17 << 6)), v12);
    v28 = v16[5];
    sub_1D56162D8();
    v29 = *v12;
    v30 = v12[1];
    sub_1D5614E28();
    v31 = v49;
    v32 = v49[5];
    sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    sub_1D5614CB8();
    v33 = *(v12 + v31[6]);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*(v12 + v31[7]));
    MEMORY[0x1DA6EC0D0](*(v12 + v31[8]));
    v34 = v12 + v31[9];
    sub_1D5614CB8();
    v35 = v51;
    sub_1D4F39AB0(v12 + v31[10], v51, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v50) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      sub_1D54B5AC0(v51, v46);
      sub_1D56162F8();
      sub_1D5614CB8();
      sub_1D54B4B54();
    }

    result = sub_1D5616328();
    v16 = v47;
    v36 = -1 << *(v47 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    result = sub_1D54B5AC0(v12, v16[6] + v39 * v52);
    ++v16[2];
    v21 = v53;
    if (!v53)
    {
      goto LABEL_9;
    }
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v23 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D54AEAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  result = sub_1D5615B18();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v32 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1D54ACE48(0, (v30 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](*(v17 + 16));
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = (v17 + 32);
      do
      {
        v21 = *v20++;
        MEMORY[0x1DA6EC0D0](v21);
        --v19;
      }

      while (v19);
    }

    result = sub_1D5616328();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v3 = v32;
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v6 + 48) + 8 * v25) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D54AED34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  result = sub_1D5615B18();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v38 = v2;
  v39 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      sub_1D54ACE48(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48);
    v23 = *(v40 + 72);
    sub_1D54B5AC0(v22 + v23 * (v19 | (v12 << 6)), v7);
    v24 = *(v11 + 40);
    sub_1D56162D8();
    sub_1D5613838();
    sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
    sub_1D5614CB8();
    v25 = &v7[*(v41 + 20)];
    v26 = *v25;
    v27 = *(v25 + 1);
    sub_1D5614E28();
    result = sub_1D5616328();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_1D54B5AC0(v7, *(v11 + 48) + v31 * v23);
    ++*(v11 + 16);
    v8 = v39;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v18 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D54AF0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  result = sub_1D5615B18();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1D54ACE48(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1D56162D8();
    sub_1D5614E28();

    result = sub_1D5616328();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1D54AF324()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v34 = v7;
  v8 = type metadata accessor for MusicItemCache.Key();
  v9 = OUTLINED_FUNCTION_4(v8);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  if (!v26 & v15 && (v4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    sub_1D54ACEAC(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D54B0EF4();
      goto LABEL_18;
    }

    sub_1D54B2160(v13 + 1);
  }

  OUTLINED_FUNCTION_381();
  v16 = *v34;
  v17 = v34[1];
  OUTLINED_FUNCTION_314_1();
  sub_1D5614E28();
  v18 = *(v8 + 20);
  v6 = sub_1D560D9A8();
  OUTLINED_FUNCTION_210_6();
  sub_1D54B4BA4(v19, v20);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  sub_1D5616328();
  v21 = *(v2 + 32);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_341_1();
  if ((*(v2 + 56 + v23) >> v6))
  {
    v24 = ~v22;
    v25 = *(v33 + 72);
    do
    {
      sub_1D54ACBB0(*(v2 + 48) + v25 * v6, v1);
      v26 = *v1 == v16 && v1[1] == v17;
      if (v26 || (sub_1D5616168() & 1) != 0)
      {
        v27 = v1 + *(v8 + 20);
        if (sub_1D560D8C8())
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_237_1();
      v6 = (v6 + 1) & v24;
      OUTLINED_FUNCTION_351_1(v6 >> 3);
    }

    while (((v28 >> v6) & 1) != 0);
  }

LABEL_18:
  v29 = *v0;
  OUTLINED_FUNCTION_159_11(*v0 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v34, *(v29 + 48) + *(v33 + 72) * v6);
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
LABEL_21:
  OUTLINED_FUNCTION_237_1();
  sub_1D5616228();
  __break(1u);
}

void sub_1D54AF56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81_27();
  if (!(!v25 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      sub_1D54AD214(v8 + 1);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1D54B2498(v8 + 1);
LABEL_11:
      v17 = *v3;
      v18 = *(*v3 + 40);
      sub_1D56162D8();
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      sub_1D5616328();
      v19 = *(v17 + 32);
      OUTLINED_FUNCTION_168_5();
      v22 = ~v21;
      while (1)
      {
        a3 = v20 & v22;
        OUTLINED_FUNCTION_351_1((v20 & v22) >> 3);
        if (((v23 >> a3) & 1) == 0)
        {
          goto LABEL_8;
        }

        v24 = (*(v17 + 48) + 16 * a3);
        v25 = *v24 == a1 && v24[1] == a2;
        if (v25 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_20;
        }

        v20 = a3 + 1;
      }
    }

    sub_1D54B10FC();
  }

LABEL_8:
  OUTLINED_FUNCTION_107_14(*v3);
  v13 = (v12 + 16 * a3);
  *v13 = a1;
  v13[1] = a2;
  v14 = *(v11 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_20:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v16;
  }
}

void sub_1D54AF6B4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_64_1();
  v7 = sub_1D5610088();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v69 = v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14(v73);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v72 = v24;
  OUTLINED_FUNCTION_70_0();
  v74 = type metadata accessor for MusicItemTypedIdentifier();
  v25 = OUTLINED_FUNCTION_4(v74);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v70 = v27;
  v71 = v1;
  if (!v44 & v32 && (v4 & 1) != 0)
  {
LABEL_42:
    v33 = v0;
    goto LABEL_43;
  }

  if (v4)
  {
    sub_1D54AD470(v30 + 1);
    goto LABEL_9;
  }

  if (v31 <= v30)
  {
    sub_1D54B26CC(v30 + 1);
LABEL_9:
    v34 = *v1;
    v35 = *(*v1 + 40);
    sub_1D56162D8();
    MusicItemTypedIdentifier.hash(into:)(v77);
    v1 = v77;
    sub_1D5616328();
    v36 = *(v34 + 32);
    OUTLINED_FUNCTION_168_5();
    v6 = v38 & ~v37;
    v76 = v39;
    if ((*(v39 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v63 = v15;
      v68 = v7;
      v75 = ~v37;
      v40 = v10;
      v42 = *v0;
      v41 = v0[1];
      v33 = v0;
      v62 = (v40 + 32);
      v43 = *(v27 + 72);
      v67 = v34;
      v65 = (v40 + 8);
      v66 = v43;
      while (1)
      {
        sub_1D54ACBB0(*(v34 + 48) + v43 * v6, v2);
        v44 = *v2 == v42 && v2[1] == v41;
        if (v44 || (sub_1D5616168() & 1) != 0)
        {
          v45 = v2[2];
          v46 = *(v33 + 16);
          v1 = *(v45 + 16);
          if (v1 == *(v46 + 16))
          {
            if (v1)
            {
              v47 = v45 == v46;
            }

            else
            {
              v47 = 1;
            }

            if (!v47)
            {
              v48 = (v45 + 40);
              v49 = (v46 + 40);
              while (v1)
              {
                v50 = *(v48 - 1) == *(v49 - 1) && *v48 == *v49;
                if (!v50 && (sub_1D5616168() & 1) == 0)
                {
                  goto LABEL_40;
                }

                v48 += 2;
                v49 += 2;
                v1 = (v1 - 1);
                if (!v1)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              sub_1D54BE1FC(v1, &qword_1EC7EA358);
LABEL_48:
              OUTLINED_FUNCTION_236_1();
              sub_1D5616228();
              __break(1u);
              return;
            }

LABEL_29:
            v51 = *(v74 + 24);
            if (sub_1D560D8C8())
            {
              v52 = *(v74 + 28);
              v53 = *(v73 + 48);
              sub_1D4F39AB0(v2 + v52, v72, &qword_1EC7EA358, &unk_1D561DF50);
              v54 = v33 + v52;
              v1 = v72;
              sub_1D4F39AB0(v54, v72 + v53, &qword_1EC7EA358, &unk_1D561DF50);
              OUTLINED_FUNCTION_57(v72, 1, v68);
              if (v44)
              {
                OUTLINED_FUNCTION_57(v72 + v53, 1, v68);
                v43 = v66;
                v34 = v67;
                if (v44)
                {
                  goto LABEL_47;
                }

                goto LABEL_38;
              }

              sub_1D4F39AB0(v72, v69, &qword_1EC7EA358, &unk_1D561DF50);
              OUTLINED_FUNCTION_57(v72 + v53, 1, v68);
              if (v55)
              {
                (*v65)(v69, v68);
                v1 = v72;
                v43 = v66;
                v34 = v67;
LABEL_38:
                sub_1D54BE1FC(v1, &qword_1EC7EB208);
                goto LABEL_40;
              }

              (*v62)(v63, v72 + v53, v68);
              sub_1D54B4BA4(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
              OUTLINED_FUNCTION_74_0();
              v64 = sub_1D5614D18();
              v1 = v65;
              v56 = *v65;
              v57 = OUTLINED_FUNCTION_215();
              (v56)(v57);
              v56(v69, v68);
              sub_1D54BE1FC(v72, &qword_1EC7EA358);
              v43 = v66;
              v34 = v67;
              if (v64)
              {
                goto LABEL_48;
              }
            }
          }
        }

LABEL_40:
        OUTLINED_FUNCTION_236_1();
        v6 = (v6 + 1) & v75;
        if (((*(v76 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    goto LABEL_42;
  }

  v33 = v0;
  sub_1D54B1254();
LABEL_43:
  v58 = *v71;
  OUTLINED_FUNCTION_159_11(*v71 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v33, *(v58 + 48) + *(v70 + 72) * v6);
  v59 = *(v58 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (v60)
  {
    goto LABEL_46;
  }

  *(v58 + 16) = v61;
  OUTLINED_FUNCTION_46();
}

void sub_1D54AFC3C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v37 = v5;
  v6 = sub_1D560D838();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_81_27();
  if (!(!v18 & v17) || (v2 & 1) == 0)
  {
    if (v2)
    {
      sub_1D54AD9FC(v15 + 1);
      goto LABEL_9;
    }

    if (v16 <= v15)
    {
      sub_1D54B2C1C(v15 + 1);
LABEL_9:
      v36 = v0;
      v19 = *v0;
      v20 = *(*v0 + 40);
      OUTLINED_FUNCTION_79_23();
      sub_1D54B4BA4(v21, v22);
      sub_1D5614CA8();
      v23 = *(v19 + 32);
      OUTLINED_FUNCTION_168_5();
      v26 = ~v25;
      while (1)
      {
        v4 = v24 & v26;
        if (((*(v19 + 56 + (((v24 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v26)) & 1) == 0)
        {
          break;
        }

        (*(v9 + 16))(v14, *(v19 + 48) + *(v9 + 72) * v4, v6);
        OUTLINED_FUNCTION_79_23();
        sub_1D54B4BA4(&qword_1EDD53DB8, v27);
        v28 = sub_1D5614D18();
        v29 = *(v9 + 8);
        v30 = OUTLINED_FUNCTION_93();
        v31(v30);
        if (v28)
        {
          goto LABEL_17;
        }

        v24 = v4 + 1;
      }

      v0 = v36;
      goto LABEL_14;
    }

    sub_1D54B145C();
  }

LABEL_14:
  v32 = *v0;
  OUTLINED_FUNCTION_159_11(*v0 + 8 * (v4 >> 6));
  (*(v9 + 32))(*(v32 + 48) + *(v9 + 72) * v4, v37, v6);
  v33 = *(v32 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_17:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v35;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54AFE6C()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_81_27();
  if (!(!v6 & v5) || (v2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_268_3(v3);
      sub_1D54ADD54();
      goto LABEL_11;
    }

    if (v4 <= v3)
    {
      v10 = OUTLINED_FUNCTION_268_3(v3);
      sub_1D54B2F34(v10);
LABEL_11:
      v11 = *v1;
      v12 = *(*v1 + 40);
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v0);
      sub_1D5616328();
      v13 = *(v11 + 32);
      OUTLINED_FUNCTION_168_5();
      v16 = ~v15;
      while (1)
      {
        v17 = v14 & v16;
        OUTLINED_FUNCTION_351_1((v14 & v16) >> 3);
        if (((v18 >> v17) & 1) == 0)
        {
          goto LABEL_8;
        }

        _s11TransactionCMa();
        if (*(*(v11 + 48) + 8 * v17) == v0)
        {
          goto LABEL_16;
        }

        v14 = v17 + 1;
      }
    }

    sub_1D54B16A4(&qword_1EC7EDED8, &qword_1D5628A58);
  }

LABEL_8:
  OUTLINED_FUNCTION_70_26();
  if (v9)
  {
    __break(1u);
LABEL_16:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v8;
  }
}

void sub_1D54AFF6C()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_81_27();
  if (!(!v22 & v5) || (v2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_268_3(v3);
      sub_1D54ADEA4();
      goto LABEL_11;
    }

    if (v4 <= v3)
    {
      v9 = OUTLINED_FUNCTION_268_3(v3);
      sub_1D54B3158(v9);
LABEL_11:
      v10 = *v1;
      v11 = *(*v1 + 40);
      sub_1D56162D8();
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);
      sub_1D5614E28();
      sub_1D5616328();
      v14 = *(v10 + 32);
      OUTLINED_FUNCTION_168_5();
      v17 = ~v16;
      while (1)
      {
        v18 = v15 & v17;
        if (((*(v10 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v19 = OUTLINED_FUNCTION_68_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
        v21 = *(*(v10 + 48) + 8 * v18);
        v22 = *(v21 + 16) == *(v0 + 16) && *(v21 + 24) == *(v0 + 24);
        if (v22 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_20;
        }

        v15 = v18 + 1;
      }
    }

    sub_1D54B16A4(&qword_1EC7EDED0, &qword_1D5628A50);
  }

LABEL_8:
  OUTLINED_FUNCTION_70_26();
  if (v8)
  {
    __break(1u);
LABEL_20:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
    OUTLINED_FUNCTION_31_19();
  }
}

void sub_1D54B0098()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_64_1();
  v7 = _s15PersistentEntryVMa();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v37 = v10;
  v38 = v1;
  if (!(!v16 & v15) || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_1D54AE054(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        sub_1D54B17A8();
        goto LABEL_17;
      }

      sub_1D54B3388(v13 + 1);
    }

    v17 = *v1;
    v18 = *(*v1 + 40);
    sub_1D56162D8();
    sub_1D560D838();
    OUTLINED_FUNCTION_79_23();
    sub_1D54B4BA4(v19, v20);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    v21 = *(v7 + 20);
    sub_1D560D9A8();
    OUTLINED_FUNCTION_210_6();
    sub_1D54B4BA4(v22, v23);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    v24 = *(v7 + 24);
    v6 = sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    sub_1D5616328();
    v25 = *(v17 + 32);
    OUTLINED_FUNCTION_168_5();
    OUTLINED_FUNCTION_341_1();
    if ((*(v17 + 56 + v27) >> v6))
    {
      v28 = ~v26;
      v29 = *(v10 + 72);
      do
      {
        sub_1D54ACBB0(*(v17 + 48) + v29 * v6, v2);
        if (sub_1D560D6E8() & 1) != 0 && (v30 = *(v7 + 20), (sub_1D560D8C8()))
        {
          v31 = v2 + *(v7 + 24);
          v32 = sub_1D560C2E8();
          OUTLINED_FUNCTION_239_4();
          if (v32)
          {
            goto LABEL_20;
          }
        }

        else
        {
          OUTLINED_FUNCTION_239_4();
        }

        v6 = (v6 + 1) & v28;
      }

      while (((*(v17 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }
  }

LABEL_17:
  v33 = *v38;
  OUTLINED_FUNCTION_159_11(*v38 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v0, *(v33 + 48) + *(v37 + 72) * v6);
  v34 = *(v33 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_20:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v36;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54B03B0(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  OUTLINED_FUNCTION_81_27();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_268_3(v8);
      sub_1D54AE464();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      OUTLINED_FUNCTION_268_3(v8);
      sub_1D54B376C();
LABEL_11:
      v17 = *v2;
      v18 = *(*v2 + 40);
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v4);
      v19 = sub_1D5616328();
      v20 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v19 & v20;
        if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v17 + 48) + a2) == v4)
        {
          goto LABEL_16;
        }

        v19 = a2 + 1;
      }
    }

    sub_1D54B19B0(v6, v7);
  }

LABEL_8:
  OUTLINED_FUNCTION_107_14(*v2);
  *(v13 + a2) = v4;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

void sub_1D54B0500()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_64_1();
  v7 = _s13PersistedDateVMa();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  OUTLINED_FUNCTION_14(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v56 = v24;
  OUTLINED_FUNCTION_70_0();
  v25 = _s10DescriptorVMa();
  v26 = OUTLINED_FUNCTION_4(v25);
  v57 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_81_27();
  v55 = v1;
  if (!(!v40 & v32) || (v4 & 1) == 0)
  {
    if (v4)
    {
      v51 = v20;
      v54 = v19;
      sub_1D54AE5A8(v30 + 1);
    }

    else
    {
      if (v31 > v30)
      {
        sub_1D54B1AC0();
        goto LABEL_32;
      }

      v51 = v20;
      v54 = v19;
      sub_1D54B38A0(v30 + 1);
    }

    OUTLINED_FUNCTION_381();
    sub_1D52D50B4();
    sub_1D5616328();
    v33 = *(v20 + 32);
    OUTLINED_FUNCTION_168_5();
    v6 = v35 & ~v34;
    if ((*(v20 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v50 = v13;
      v53 = v7;
      v36 = ~v34;
      v37 = *v0;
      v38 = v0[1];
      v39 = *(v57 + 72);
      while (1)
      {
        sub_1D54ACBB0(*(v20 + 48) + v39 * v6, v2);
        v40 = *v2 == v37 && v2[1] == v38;
        if (!v40 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_31;
        }

        v41 = v25[5];
        if ((sub_1D560C2E8() & 1) == 0)
        {
          goto LABEL_31;
        }

        if (*(v2 + v25[6]) != *(v0 + v25[6]))
        {
          goto LABEL_31;
        }

        if (*(v2 + v25[7]) != *(v0 + v25[7]))
        {
          goto LABEL_31;
        }

        if (*(v2 + v25[8]) != *(v0 + v25[8]))
        {
          goto LABEL_31;
        }

        v42 = v25[9];
        if ((sub_1D560C2E8() & 1) == 0)
        {
          goto LABEL_31;
        }

        v49 = v25[10];
        v52 = *(v51 + 48);
        sub_1D4F39AB0(v2 + v49, v56, &qword_1EC7EB470, &qword_1D561F3D0);
        sub_1D4F39AB0(v0 + v49, v56 + v52, &qword_1EC7EB470, &qword_1D561F3D0);
        OUTLINED_FUNCTION_57(v56, 1, v53);
        if (v40)
        {
          break;
        }

        sub_1D4F39AB0(v56, v54, &qword_1EC7EB470, &qword_1D561F3D0);
        OUTLINED_FUNCTION_57(v56 + v52, 1, v53);
        if (v43)
        {
          OUTLINED_FUNCTION_217_5();
          sub_1D54B4B54();
LABEL_29:
          sub_1D54BE1FC(v56, &qword_1EC7EB478);
          goto LABEL_31;
        }

        sub_1D54B5AC0(v56 + v52, v50);
        LODWORD(v52) = sub_1D560C2E8();
        OUTLINED_FUNCTION_217_5();
        v49 = v44;
        sub_1D54B4B54();
        sub_1D54B4B54();
        sub_1D54BE1FC(v56, &qword_1EC7EB470);
        if (v52)
        {
          goto LABEL_36;
        }

LABEL_31:
        OUTLINED_FUNCTION_238_3();
        v6 = (v6 + 1) & v36;
        if (((*(v20 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      OUTLINED_FUNCTION_57(v56 + v52, 1, v53);
      if (v40)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

LABEL_32:
  v45 = *v55;
  OUTLINED_FUNCTION_159_11(*v55 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v0, *(v45 + 48) + *(v57 + 72) * v6);
  v46 = *(v45 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    __break(1u);
LABEL_35:
    sub_1D54BE1FC(v56, &qword_1EC7EB470);
LABEL_36:
    OUTLINED_FUNCTION_238_3();
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v48;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54B09A4()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_81_27();
  if (!v6 & v5 && (v2 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (v2)
  {
    v7 = OUTLINED_FUNCTION_268_3(v3);
    sub_1D54AEAC0(v7);
  }

  else
  {
    if (v4 > v3)
    {
      sub_1D54B1CC8();
      goto LABEL_20;
    }

    v8 = OUTLINED_FUNCTION_268_3(v3);
    sub_1D54B3D80(v8);
  }

  v9 = *v1;
  v10 = *(*v1 + 40);
  sub_1D56162D8();
  sub_1D4F0B2F8(v23, v0);
  v11 = sub_1D5616328();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_70_26();
    if (!v22)
    {
      *(v20 + 16) = v21;
      return;
    }

    goto LABEL_23;
  }

  v14 = ~v12;
  v15 = *(v0 + 16);
  while (1)
  {
    v16 = *(*(v9 + 48) + 8 * v13);
    if (*(v16 + 16) == v15)
    {
      break;
    }

LABEL_19:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!v15 || v16 == v0)
  {
    goto LABEL_24;
  }

  v17 = (v16 + 32);
  v18 = (v0 + 32);
  v19 = *(v0 + 16);
  while (v19)
  {
    if (*v17 != *v18)
    {
      goto LABEL_19;
    }

    ++v17;
    ++v18;
    if (!--v19)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
  sub_1D5616228();
  __break(1u);
}

uint64_t sub_1D54B0B10(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1D54AF0A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D54B2020();
      goto LABEL_18;
    }

    sub_1D54B4308(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1D5474688();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    if (v5)
    {
      v12 = 0x6577656976657270;
    }

    else
    {
      v12 = 0x6573736572706D69;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x6577656976657270 : 0x6573736572706D69;
      if (v13 == v12)
      {
        goto LABEL_21;
      }

      v14 = sub_1D5616168();
      result = swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_22;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v5 & 1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_21:
  swift_bridgeObjectRelease_n();
LABEL_22:
  result = sub_1D5616228();
  __break(1u);
  return result;
}

void sub_1D54B0CBC()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_64_1();
  v8 = type metadata accessor for MusicSuggestedSongsEntry();
  v9 = OUTLINED_FUNCTION_4(v8);
  v39 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v38 = v1;
  if (!v29 & v15 && (v5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    sub_1D54AED34(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D54B1E18();
      goto LABEL_18;
    }

    sub_1D54B3FCC(v13 + 1);
  }

  OUTLINED_FUNCTION_381();
  v7 = sub_1D5613838();
  OUTLINED_FUNCTION_38_45();
  sub_1D54B4BA4(v16, v17);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  v18 = (v0 + *(v8 + 20));
  v19 = *v18;
  v20 = v18[1];
  OUTLINED_FUNCTION_314_1();
  sub_1D5614E28();
  sub_1D5616328();
  v21 = *(v3 + 32);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_341_1();
  if ((*(v3 + 56 + v23) >> v7))
  {
    v24 = ~v22;
    v25 = *(v39 + 72);
    do
    {
      v26 = *(v3 + 48);
      OUTLINED_FUNCTION_23_72();
      sub_1D54ACBB0(v27, v2);
      if (sub_1D56137A8())
      {
        v28 = (v2 + *(v8 + 20));
        v29 = *v28 == v19 && v28[1] == v20;
        if (v29 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_3_184();
      sub_1D54B4B54();
      v7 = (v7 + 1) & v24;
      OUTLINED_FUNCTION_351_1(v7 >> 3);
    }

    while (((v30 >> v7) & 1) != 0);
  }

LABEL_18:
  v31 = *v1;
  OUTLINED_FUNCTION_159_11(*v38 + 8 * (v7 >> 6));
  v32 = *(v31 + 48);
  v33 = *(v39 + 72);
  OUTLINED_FUNCTION_37_48();
  sub_1D54B5AC0(v0, v34);
  v35 = *(v31 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v31 + 16) = v37;
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
LABEL_21:
  OUTLINED_FUNCTION_3_184();
  sub_1D54B4B54();
  sub_1D5616228();
  __break(1u);
}

void *sub_1D54B0EF4()
{
  v1 = v0;
  v2 = type metadata accessor for MusicItemCache.Key();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D54ACBB0(*(v7 + 48) + v22, v6);
        result = sub_1D54B5AC0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1D54B10FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D54B1254()
{
  v1 = v0;
  v2 = type metadata accessor for MusicItemTypedIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D54ACBB0(*(v7 + 48) + v22, v6);
        result = sub_1D54B5AC0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1D54B145C()
{
  v1 = v0;
  v2 = sub_1D560D838();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void sub_1D54B16A4(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v2;
  v6 = sub_1D5615B08();
  if (v5[2])
  {
    v7 = OUTLINED_FUNCTION_262_1();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v3, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = v5[2];
    OUTLINED_FUNCTION_246_3();
    v14 = v5[7];
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_194();
LABEL_17:
        *(*(v6 + 48) + 8 * (v18 | (v12 << 6))) = *(v5[6] + 8 * (v18 | (v12 << 6)));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      ++v19;
      if (*(v3 + v12))
      {
        OUTLINED_FUNCTION_113_2();
        v16 = v21 & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v6;
  }
}

void *sub_1D54B17A8()
{
  v1 = v0;
  v2 = _s15PersistentEntryVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D54ACBB0(*(v7 + 48) + v22, v6);
        result = sub_1D54B5AC0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1D54B19B0(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v2;
  v6 = sub_1D5615B08();
  if (*(v5 + 16))
  {
    result = OUTLINED_FUNCTION_262_1();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v3, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + v18) = *(*(v5 + 48) + v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v3 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v6;
  }

  return result;
}

void *sub_1D54B1AC0()
{
  v1 = v0;
  v2 = _s10DescriptorVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D54ACBB0(*(v7 + 48) + v22, v6);
        result = sub_1D54B5AC0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1D54B1CC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D54B1E18()
{
  v1 = v0;
  v2 = type metadata accessor for MusicSuggestedSongsEntry();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  v7 = *v0;
  v8 = sub_1D5615B08();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D54ACBB0(*(v7 + 48) + v22, v6);
        result = sub_1D54B5AC0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1D54B2020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D54B2160(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicItemCache.Key();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  result = sub_1D5615B18();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v8 + 48);
        v23 = *(v39 + 72);
        sub_1D54ACBB0(v22 + v23 * (v19 | (v12 << 6)), v7);
        v24 = *(v11 + 40);
        sub_1D56162D8();
        v25 = *v7;
        v26 = v7[1];
        sub_1D5614E28();
        v27 = *(v40 + 20);
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
        sub_1D5614CB8();
        result = sub_1D5616328();
        v28 = -1 << *(v11 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = sub_1D54B5AC0(v7, *(v11 + 48) + v31 * v23);
        ++*(v11 + 16);
        v8 = v38;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D54B2498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  result = sub_1D5615B18();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D54B26CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for MusicItemTypedIdentifier();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  v18 = sub_1D5615B18();
  result = v16;
  if (*(v16 + 16))
  {
    v20 = 0;
    v21 = v16 + 56;
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 56);
    v25 = (v22 + 63) >> 6;
    v55 = (v5 + 32);
    v53 = v2;
    v54 = (v5 + 8);
    v26 = v18 + 56;
    v58 = v11;
    v59 = v4;
    v57 = result;
    if (v24)
    {
      while (1)
      {
        v27 = __clz(__rbit64(v24));
        v63 = (v24 - 1) & v24;
LABEL_14:
        v30 = *(result + 48);
        v62 = *(v60 + 72);
        sub_1D54ACBB0(v30 + v62 * (v27 | (v20 << 6)), v15);
        v31 = *(v18 + 40);
        sub_1D56162D8();
        v32 = *v15;
        v33 = v15[1];
        sub_1D5614E28();
        v34 = v15[2];
        MEMORY[0x1DA6EC0D0](*(v34 + 16));
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = (v34 + 40);
          do
          {
            v37 = *(v36 - 1);
            v38 = *v36;

            sub_1D5614E28();

            v36 += 2;
            --v35;
          }

          while (v35);
        }

        v39 = v61;
        v40 = *(v61 + 24);
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
        sub_1D5614CB8();
        v41 = v58;
        sub_1D4F39AB0(v15 + *(v39 + 28), v58, &qword_1EC7EA358, &unk_1D561DF50);
        v42 = v59;
        if (__swift_getEnumTagSinglePayload(v41, 1, v59) == 1)
        {
          sub_1D56162F8();
        }

        else
        {
          v43 = v56;
          (*v55)(v56, v41, v42);
          sub_1D56162F8();
          sub_1D54B4BA4(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
          sub_1D5614CB8();
          (*v54)(v43, v42);
        }

        result = sub_1D5616328();
        v44 = -1 << *(v18 + 32);
        v45 = result & ~v44;
        v46 = v45 >> 6;
        if (((-1 << v45) & ~*(v26 + 8 * (v45 >> 6))) == 0)
        {
          break;
        }

        v47 = __clz(__rbit64((-1 << v45) & ~*(v26 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
        *(v26 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        sub_1D54B5AC0(v15, *(v18 + 48) + v47 * v62);
        ++*(v18 + 16);
        result = v57;
        v24 = v63;
        if (!v63)
        {
          goto LABEL_9;
        }
      }

      v48 = 0;
      v49 = (63 - v44) >> 6;
      while (++v46 != v49 || (v48 & 1) == 0)
      {
        v50 = v46 == v49;
        if (v46 == v49)
        {
          v46 = 0;
        }

        v48 |= v50;
        v51 = *(v26 + 8 * v46);
        if (v51 != -1)
        {
          v47 = __clz(__rbit64(~v51)) + (v46 << 6);
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_9:
      v28 = v20;
      while (1)
      {
        v20 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v20 >= v25)
        {

          v2 = v53;
          goto LABEL_33;
        }

        v29 = *(v21 + 8 * v20);
        ++v28;
        if (v29)
        {
          v27 = __clz(__rbit64(v29));
          v63 = (v29 - 1) & v29;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1D54B2C1C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D560D838();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  v10 = sub_1D5615B18();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
        result = sub_1D5614CA8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D54B2F34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
  result = sub_1D5615B18();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v16);
        result = sub_1D5616328();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D54B3158(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
  result = sub_1D5615B18();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1D56162D8();
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);

        sub_1D5614E28();
        result = sub_1D5616328();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v6 + 48) + 8 * v23) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v28;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D54B3388(uint64_t a1)
{
  v2 = v1;
  v4 = _s15PersistentEntryVMa();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  result = sub_1D5615B18();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    v19 = v38;
    if (v16)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v23 = *(v8 + 48);
        v39 = *(v37 + 72);
        sub_1D54ACBB0(v23 + v39 * (v20 | (v12 << 6)), v7);
        v24 = *(v11 + 40);
        sub_1D56162D8();
        sub_1D560D838();
        sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
        sub_1D5614CB8();
        v25 = *(v19 + 20);
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
        sub_1D5614CB8();
        v26 = *(v19 + 24);
        sub_1D560C328();
        sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
        sub_1D5614CB8();
        result = sub_1D5616328();
        v27 = -1 << *(v11 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
        v8 = v36;
LABEL_23:
        *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        result = sub_1D54B5AC0(v7, *(v11 + 48) + v30 * v39);
        ++*(v11 + 16);
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      v8 = v36;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v18 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v12;
      while (1)
      {
        v12 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v35;
          goto LABEL_27;
        }

        v22 = *(v13 + 8 * v12);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v16 = (v22 - 1) & v22;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

void sub_1D54B376C()
{
  OUTLINED_FUNCTION_30_14();
  v5 = OUTLINED_FUNCTION_112_15(v4);
  v7 = OUTLINED_FUNCTION_313_1(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (v9)
  {
    v26 = v0;
    v10 = 0;
    v11 = *(v1 + 56);
    v12 = *(v1 + 32);
    OUTLINED_FUNCTION_88_19();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_250_2();
LABEL_9:
        v17 = *(*(v1 + 48) + (v13 | (v10 << 6)));
        OUTLINED_FUNCTION_436();
        MEMORY[0x1DA6EC0D0](v17);
        v18 = sub_1D5616328();
        OUTLINED_FUNCTION_127_11(v18);
        if (v19)
        {
          break;
        }

        OUTLINED_FUNCTION_173_5();
LABEL_19:
        OUTLINED_FUNCTION_110_14(v20);
        *(v25 + v24) = v17;
        OUTLINED_FUNCTION_253_2();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_266_0();
      while (1)
      {
        OUTLINED_FUNCTION_418();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        OUTLINED_FUNCTION_342_1(v21);
        if (!v19)
        {
          OUTLINED_FUNCTION_171_7();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= v3)
        {

          v0 = v26;
          goto LABEL_23;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v10))
        {
          OUTLINED_FUNCTION_113_2();
          v0 = (v16 & v15);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
  }
}

uint64_t sub_1D54B38A0(uint64_t a1)
{
  v2 = v1;
  v49 = _s13PersistedDateVMa();
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - v8;
  v10 = _s10DescriptorVMa();
  v48 = *(v10 - 1);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v15 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  result = sub_1D5615B18();
  v17 = result;
  if (*(v14 + 16))
  {
    v43 = v1;
    v44 = v10;
    v18 = 0;
    v19 = v14 + 56;
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v24 = result + 56;
    v46 = result;
    v47 = v14;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v51 = (v22 - 1) & v22;
LABEL_14:
        v28 = *(v14 + 48);
        v50 = *(v48 + 72);
        sub_1D54ACBB0(v28 + v50 * (v25 | (v18 << 6)), v13);
        v29 = v17[5];
        sub_1D56162D8();
        v30 = *v13;
        v31 = v13[1];
        sub_1D5614E28();
        v32 = v10[5];
        sub_1D560C328();
        sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
        sub_1D5614CB8();
        v33 = *(v13 + v10[6]);
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](*(v13 + v10[7]));
        MEMORY[0x1DA6EC0D0](*(v13 + v10[8]));
        v34 = v13 + v10[9];
        sub_1D5614CB8();
        sub_1D4F39AB0(v13 + v10[10], v9, &qword_1EC7EB470, &qword_1D561F3D0);
        if (__swift_getEnumTagSinglePayload(v9, 1, v49) == 1)
        {
          sub_1D56162F8();
        }

        else
        {
          sub_1D54B5AC0(v9, v45);
          sub_1D56162F8();
          sub_1D5614CB8();
          v10 = v44;
          sub_1D54B4B54();
        }

        result = sub_1D5616328();
        v17 = v46;
        v14 = v47;
        v35 = -1 << *(v46 + 32);
        v36 = result & ~v35;
        v37 = v36 >> 6;
        if (((-1 << v36) & ~*(v24 + 8 * (v36 >> 6))) == 0)
        {
          break;
        }

        v38 = __clz(__rbit64((-1 << v36) & ~*(v24 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v24 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        result = sub_1D54B5AC0(v13, v17[6] + v38 * v50);
        ++v17[2];
        v22 = v51;
        if (!v51)
        {
          goto LABEL_9;
        }
      }

      v39 = 0;
      v40 = (63 - v35) >> 6;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v24 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {

          v2 = v43;
          goto LABEL_30;
        }

        v27 = *(v19 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v51 = (v27 - 1) & v27;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D54B3D80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  result = sub_1D5615B18();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](*(v17 + 16));
        v19 = *(v17 + 16);
        if (v19)
        {
          v20 = (v17 + 32);
          do
          {
            v21 = *v20++;
            MEMORY[0x1DA6EC0D0](v21);
            --v19;
          }

          while (v19);
        }

        result = sub_1D5616328();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        v3 = v31;
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(*(v6 + 48) + 8 * v25) = v17;
        ++*(v6 + 16);

        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v30;
          goto LABEL_30;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D54B3FCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  result = sub_1D5615B18();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v8 + 48);
        v23 = *(v39 + 72);
        sub_1D54ACBB0(v22 + v23 * (v19 | (v12 << 6)), v7);
        v24 = *(v11 + 40);
        sub_1D56162D8();
        sub_1D5613838();
        sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
        sub_1D5614CB8();
        v25 = &v7[*(v40 + 20)];
        v26 = *v25;
        v27 = *(v25 + 1);
        sub_1D5614E28();
        result = sub_1D5616328();
        v28 = -1 << *(v11 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = sub_1D54B5AC0(v7, *(v11 + 48) + v31 * v23);
        ++*(v11 + 16);
        v8 = v38;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v37;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D54B4308(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  result = sub_1D5615B18();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1D56162D8();
        sub_1D5614E28();

        result = sub_1D5616328();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D54B4664@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v50 = a3;
  v5 = type metadata accessor for MusicSuggestedSongsEntry();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v49 - v10;
  v52 = v3;
  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1D56162D8();
  v14 = sub_1D5613838();
  v49[0] = sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
  v49[1] = v14;
  sub_1D5614CB8();
  v54 = v5;
  v15 = (a1 + *(v5 + 20));
  v16 = *v15;
  v17 = v15[1];
  sub_1D5614E28();
  v18 = sub_1D5616328();
  v19 = -1 << *(v12 + 32);
  v20 = v18 & ~v19;
  if ((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v53 + 72);
    while (1)
    {
      sub_1D54ACBB0(*(v12 + 48) + v22 * v20, v11);
      if (sub_1D56137A8())
      {
        v23 = &v11[*(v54 + 20)];
        v24 = *v23 == v16 && *(v23 + 1) == v17;
        if (v24 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D54B4B54();
      v20 = (v20 + 1) & v21;
      if (((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1D54B4B54();
    v26 = 0;
    v25 = 1;
  }

  else
  {
LABEL_10:
    v25 = 0;
    v26 = 1;
  }

  v27 = *(v12 + 16);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v29 = *(v12 + 24);
  v30 = v52;
  if (v29 >= v28 && (v51 & 1) != 0)
  {
    if (v25)
    {
LABEL_16:
      v31 = *(v53 + 72) * v20;
LABEL_36:
      v47 = *v30;
      v46 = v50;
      sub_1D54B5AC0(*(v47 + 48) + v31, v50);
      sub_1D54B5AC0(a1, *(v47 + 48) + v31);
      v45 = 0;
      return __swift_storeEnumTagSinglePayload(v46, v45, 1, v54);
    }

    goto LABEL_21;
  }

  if (v51)
  {
    sub_1D54AED34(v28);
  }

  else
  {
    if (v29 >= v28)
    {
      sub_1D54B1E18();
      if (v25)
      {
        goto LABEL_16;
      }

LABEL_21:
      v32 = v53;
      goto LABEL_33;
    }

    sub_1D54B3FCC(v28);
  }

  v51 = v25;
  v33 = *v30;
  v34 = *(*v30 + 40);
  sub_1D56162D8();
  sub_1D5614CB8();
  sub_1D5614E28();
  v35 = sub_1D5616328();
  v36 = -1 << *(v33 + 32);
  v20 = v35 & ~v36;
  if ((*(v33 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v37 = ~v36;
    v38 = *(v53 + 72);
    while (1)
    {
      v31 = v38 * v20;
      sub_1D54ACBB0(*(v33 + 48) + v38 * v20, v9);
      if (sub_1D56137A8())
      {
        v39 = &v9[*(v54 + 20)];
        v40 = *v39 == v16 && *(v39 + 1) == v17;
        if (v40 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D54B4B54();
      v20 = (v20 + 1) & v37;
      if (((*(v33 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    sub_1D54B4B54();
    v30 = v52;
    if (v51)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
    v30 = v52;
    v32 = v53;
    if ((v51 & 1) == 0)
    {
LABEL_33:
      v41 = *v30;
      *(*v30 + 8 * (v20 >> 6) + 56) |= 1 << v20;
      sub_1D54B5AC0(a1, *(v41 + 48) + *(v32 + 72) * v20);
      v42 = *(v41 + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (!v43)
      {
        *(v41 + 16) = v44;
        v45 = 1;
        v46 = v50;
        return __swift_storeEnumTagSinglePayload(v46, v45, 1, v54);
      }

      goto LABEL_39;
    }
  }

LABEL_40:
  result = sub_1D5616228();
  __break(1u);
  return result;
}

uint64_t sub_1D54B4B54()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D54B4BA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D54B4C3C()
{
  v0 = type metadata accessor for MusicSuggestedSongsViewModelSeed(319);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1D54B56D4();
    if (v3 <= 0x3F)
    {
      v10 = *(v2 - 8) + 64;
      sub_1D54B5738();
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_1D514E26C();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)()
{
  return (*(*v0 + 920))();
}

{
  return (*(*v0 + 928))();
}

{
  return (*(*v0 + 984))();
}

uint64_t dispatch thunk of MusicSuggestedSongsViewModel.refresh()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v1 + 952) + **(v1 + 952));
  v2 = *(*(v1 + 952) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_26_12(v3);

  return v5();
}

void sub_1D54B56D4()
{
  if (!qword_1EC7F6EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6EC0, &qword_1D5667838);
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F6EB8);
    }
  }
}

void sub_1D54B5738()
{
  if (!qword_1EDD5D848)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D848);
    }
  }
}

void sub_1D54B5788()
{
  sub_1D5614898();
  if (v0 <= 0x3F)
  {
    sub_1D54B57FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D54B57FC()
{
  if (!qword_1EC7F6ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFBD8, &unk_1D56346A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F6ED8);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicSuggestedSongsViewModel.RefreshStatus(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 2;
    if (v6 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9 >= 3)
    {
      return (v9 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsViewModel.RefreshStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54B5A18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D54B5A4C()
{
  result = qword_1EC7F6EE0;
  if (!qword_1EC7F6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6EE0);
  }

  return result;
}

uint64_t sub_1D54B5AC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D54B5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1D54B5C70;

  return sub_1D54845B8(a2, a3, a4, a5, a6);
}

uint64_t sub_1D54B5C70()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  *v5 = v2 & 1;
  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D54B5D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F8A0(a2, a3, a4);
}

uint64_t sub_1D54B5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547E860(a2, a3, a4);
}

uint64_t sub_1D54B5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t *a8)
{
  v14 = *a6;
  v15 = *a8;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1D4E73560;

  return sub_1D548F450(a1, a2, a3, a4, a5, v14, a7 & 1, v15);
}

uint64_t sub_1D54B6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FA04(a2, a3, a4);
}

uint64_t sub_1D54B60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EAF4(a2, a3, a4);
}

uint64_t sub_1D54B61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FB68(a2, a3, a4);
}

uint64_t sub_1D54B6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EC58(a2, a3, a4);
}

uint64_t sub_1D54B6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v17 = *a5;
  v22 = *(a5 + 8);
  v10 = *(a5 + 16);
  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = *a8;
  v14 = *(a8 + 8);
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1D4E6ED20;

  return sub_1D548FA58(a1, a2, a3, a4, v17, v22, v10, v11);
}

uint64_t sub_1D54B6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1D54768E8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1D54B6494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FCCC(a2, a3, a4);
}

uint64_t sub_1D54B6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EDBC(a2, a3, a4);
}

uint64_t sub_1D54B6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FE30(a2, a3, a4);
}

uint64_t sub_1D54B66E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EF20(a2, a3, a4);
}

uint64_t sub_1D54B67D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FF94(a2, a3, a4);
}

uint64_t sub_1D54B6884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F084(a2, a3, a4);
}

uint64_t sub_1D54B6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D54800F8(a2, a3, a4);
}

uint64_t sub_1D54B6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F1E8(a2, a3, a4);
}

uint64_t sub_1D54B6B4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480E4C(v3, v4, v5, v6);
}

uint64_t sub_1D54B6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D548025C(a2, a3, a4);
}

uint64_t sub_1D54B6E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F34C(a2, a3, a4);
}

uint64_t sub_1D54B6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__src, char a7, const void *a8)
{
  memcpy(v8 + 12, __src, 0x50uLL);
  memcpy(v8 + 2, a8, 0x50uLL);
  v16 = swift_task_alloc();
  v8[22] = v16;
  *v16 = v8;
  v16[1] = sub_1D54B7004;

  return sub_1D5490A78(a1, a2, a3, a4, a5, (v8 + 12), a7 & 1, v8 + 1);
}

uint64_t sub_1D54B7004()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54B70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D5480548(a2, a3, a4);
}

uint64_t sub_1D54B7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F4B0(a2, a3, a4);
}

uint64_t sub_1D54B7284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D54806AC(a2, a3, a4);
}

uint64_t sub_1D54B7334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F614(a2, a3, a4);
}

uint64_t sub_1D54B73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71A0, &qword_1D5668368);
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v9 = *(v8 + 64) + 15;
  v5[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v11 = sub_1D560DF28();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v14 = sub_1D560DF38();
  v5[35] = v14;
  v15 = *(v14 - 8);
  v5[36] = v15;
  v16 = *(v15 + 64) + 15;
  v5[37] = swift_task_alloc();
  v17 = sub_1D560EA18();
  v5[38] = v17;
  v18 = *(v17 - 8);
  v5[39] = v18;
  v19 = *(v18 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7198, &qword_1D5668358) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v21 = sub_1D560E8E8();
  v22 = MEMORY[0x1E69753C8];
  v5[5] = v21;
  v5[6] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, a1, v21);

  return MEMORY[0x1EEE6DFA0](sub_1D54B76A4, 0, 0);
}

uint64_t sub_1D54B76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F7198, &qword_1D5668358);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7178, &qword_1D56682F8);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    v13 = v10[43];
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18();
        }

        v15 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v15, qword_1EDD76DC8);
        v16 = sub_1D560C738();
        v17 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v17))
        {
          v18 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v18);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v19, v20, v21, v22, v23, 2u);
          OUTLINED_FUNCTION_54();
        }

        v24 = v10[42];
        v25 = v10[43];
        v27 = v10[40];
        v26 = v10[41];
        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
      }
    }

    else
    {
      v37 = v10[38];
      v38 = OUTLINED_FUNCTION_22_17(v10[39]);
      v39(v38);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_161_9(v40);
  OUTLINED_FUNCTION_348_0();

  return sub_1D549D55C(v42, v43, v44);
}

uint64_t sub_1D54B7880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54B7978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v14 = MEMORY[0x1E69753F0];
  v13[10] = v12;
  v13[11] = v14;
  __swift_allocate_boxed_opaque_existential_0(v13 + 7);
  OUTLINED_FUNCTION_162_10();
  v15();
  v16 = v13[10];
  v17 = v13[11];
  OUTLINED_FUNCTION_65_32(v13 + 7);
  v18 = *MEMORY[0x1E6975100];
  v19 = OUTLINED_FUNCTION_243_3();
  v20(v19);
  v21 = *MEMORY[0x1E6975110];
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  v24 = *(MEMORY[0x1E6974CC0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v13[48] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_130_14(v25);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D54B7A7C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[37];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  v11 = v4[32];
  v12 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v13 = v12;
  *(v14 + 392) = v0;

  v15 = OUTLINED_FUNCTION_19_71();
  v16(v15);
  v17 = OUTLINED_FUNCTION_97_17();
  v18(v17);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D54B7C14()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D5497298(v12, v13);
}

void sub_1D54B7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14())
  {
    v13 = v11[46];
    v12 = v11[47];
    v14 = v11[40];
    v15 = v11[41];
    v16 = v11[38];
    v17 = v11[39];
    v19 = v11[30];
    v18 = v11[31];
    v20 = OUTLINED_FUNCTION_31_54();
    v21(v20);
    v22 = OUTLINED_FUNCTION_76_1();
    v13(v22);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_318_1(v23);
    *v24 = v25;
    v24[1] = sub_1D54B7FBC;
    v26 = v11[30];
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D5496050(v27, v28);
  }

  else
  {
    v30 = v11[38];
    v31 = v11[31];
    v32 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
    sub_1D54BE1FC(v31, &qword_1EC7EABF0);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23();
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B7EAC()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D5497298(v14, v15);
}

uint64_t sub_1D54B7FBC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 400);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54B80A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = v10[41];
  v12 = v10[42];
  v13 = v10[38];
  v14 = v10[39];
  (*(v10[29] + 8))(v10[30], v10[28]);
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_128();
  v15(v16);
  v17 = OUTLINED_FUNCTION_222();
  v15(v17);
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  v18 = v10[42];
  v19 = v10[43];
  v21 = v10[40];
  v20 = v10[41];
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1D54B8190()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54B8274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();

  v11 = *(v10 + 336);
  v12 = *(v10 + 344);
  v14 = *(v10 + 320);
  v13 = *(v10 + 328);
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D54B8318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7120, &qword_1D56681A0);
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v9 = *(v8 + 64) + 15;
  v5[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7100, &qword_1D5668140) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v11 = sub_1D560DF28();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v14 = sub_1D560DF38();
  v5[35] = v14;
  v15 = *(v14 - 8);
  v5[36] = v15;
  v16 = *(v15 + 64) + 15;
  v5[37] = swift_task_alloc();
  v17 = sub_1D560DFC8();
  v5[38] = v17;
  v18 = *(v17 - 8);
  v5[39] = v18;
  v19 = *(v18 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7118, &qword_1D5668190) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v21 = sub_1D560DF18();
  v22 = MEMORY[0x1E69750F0];
  v5[5] = v21;
  v5[6] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, a1, v21);

  return MEMORY[0x1EEE6DFA0](sub_1D54B85D8, 0, 0);
}

uint64_t sub_1D54B85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F7118, &qword_1D5668190);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70F0, &qword_1D5668130);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    v13 = v10[43];
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18();
        }

        v15 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v15, qword_1EDD76DC8);
        v16 = sub_1D560C738();
        v17 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v17))
        {
          v18 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v18);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v19, v20, v21, v22, v23, 2u);
          OUTLINED_FUNCTION_54();
        }

        v24 = v10[42];
        v25 = v10[43];
        v27 = v10[40];
        v26 = v10[41];
        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
      }
    }

    else
    {
      v37 = v10[38];
      v38 = OUTLINED_FUNCTION_22_17(v10[39]);
      v39(v38);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_161_9(v40);
  OUTLINED_FUNCTION_348_0();

  return sub_1D549E758(v42, v43, v44);
}

uint64_t sub_1D54B87B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54B88AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v14 = MEMORY[0x1E6975190];
  v13[10] = v12;
  v13[11] = v14;
  __swift_allocate_boxed_opaque_existential_0(v13 + 7);
  OUTLINED_FUNCTION_162_10();
  v15();
  v16 = v13[10];
  v17 = v13[11];
  OUTLINED_FUNCTION_65_32(v13 + 7);
  v18 = *MEMORY[0x1E6975100];
  v19 = OUTLINED_FUNCTION_243_3();
  v20(v19);
  v21 = *MEMORY[0x1E6975110];
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  v24 = *(MEMORY[0x1E6974CC0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v13[48] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_130_14(v25);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D54B89B0()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[37];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  v11 = v4[32];
  v12 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v13 = v12;
  *(v14 + 392) = v0;

  v15 = OUTLINED_FUNCTION_19_71();
  v16(v15);
  v17 = OUTLINED_FUNCTION_97_17();
  v18(v17);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D54B8B48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D54977D4(v12, v13);
}

void sub_1D54B8C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14())
  {
    v13 = v11[46];
    v12 = v11[47];
    v14 = v11[40];
    v15 = v11[41];
    v16 = v11[38];
    v17 = v11[39];
    v19 = v11[30];
    v18 = v11[31];
    v20 = OUTLINED_FUNCTION_31_54();
    v21(v20);
    v22 = OUTLINED_FUNCTION_76_1();
    v13(v22);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_318_1(v23);
    *v24 = v25;
    v24[1] = sub_1D54B8EF0;
    v26 = v11[30];
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D54963A0(v27, v28);
  }

  else
  {
    v30 = v11[38];
    v31 = v11[31];
    v32 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
    sub_1D54BE1FC(v31, &qword_1EC7F7100);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23();
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B8DE0()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D54977D4(v14, v15);
}

uint64_t sub_1D54B8EF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 400);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54B8FD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54B90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D8, &qword_1D56680C0);
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v9 = *(v8 + 64) + 15;
  v5[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B8, &qword_1D5668060) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v11 = sub_1D560DF28();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v14 = sub_1D560DF38();
  v5[35] = v14;
  v15 = *(v14 - 8);
  v5[36] = v15;
  v16 = *(v15 + 64) + 15;
  v5[37] = swift_task_alloc();
  v17 = sub_1D560EA78();
  v5[38] = v17;
  v18 = *(v17 - 8);
  v5[39] = v18;
  v19 = *(v18 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D0, &qword_1D56680B0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v21 = sub_1D560E9B8();
  v22 = MEMORY[0x1E69753E0];
  v5[5] = v21;
  v5[6] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, a1, v21);

  return MEMORY[0x1EEE6DFA0](sub_1D54B9378, 0, 0);
}

uint64_t sub_1D54B9378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F70D0, &qword_1D56680B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70A8, &qword_1D5668050);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    v13 = v10[43];
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18();
        }

        v15 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v15, qword_1EDD76DC8);
        v16 = sub_1D560C738();
        v17 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v17))
        {
          v18 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v18);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v19, v20, v21, v22, v23, 2u);
          OUTLINED_FUNCTION_54();
        }

        v24 = v10[42];
        v25 = v10[43];
        v27 = v10[40];
        v26 = v10[41];
        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
      }
    }

    else
    {
      v37 = v10[38];
      v38 = OUTLINED_FUNCTION_22_17(v10[39]);
      v39(v38);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_161_9(v40);
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A0060(v42, v43, v44);
}

uint64_t sub_1D54B9554()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54B964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v14 = MEMORY[0x1E69753F8];
  v13[10] = v12;
  v13[11] = v14;
  __swift_allocate_boxed_opaque_existential_0(v13 + 7);
  OUTLINED_FUNCTION_162_10();
  v15();
  v16 = v13[10];
  v17 = v13[11];
  OUTLINED_FUNCTION_65_32(v13 + 7);
  v18 = *MEMORY[0x1E6975100];
  v19 = OUTLINED_FUNCTION_243_3();
  v20(v19);
  v21 = *MEMORY[0x1E6975110];
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  v24 = *(MEMORY[0x1E6974CC0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v13[48] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_130_14(v25);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D54B9750()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[48];
  v6 = v4[37];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  v11 = v4[32];
  v12 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v13 = v12;
  *(v14 + 392) = v0;

  v15 = OUTLINED_FUNCTION_19_71();
  v16(v15);
  v17 = OUTLINED_FUNCTION_97_17();
  v18(v17);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D54B98E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D549806C(v12, v13);
}

void sub_1D54B99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14())
  {
    v13 = v11[46];
    v12 = v11[47];
    v14 = v11[40];
    v15 = v11[41];
    v16 = v11[38];
    v17 = v11[39];
    v19 = v11[30];
    v18 = v11[31];
    v20 = OUTLINED_FUNCTION_31_54();
    v21(v20);
    v22 = OUTLINED_FUNCTION_76_1();
    v13(v22);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_318_1(v23);
    *v24 = v25;
    v24[1] = sub_1D54B8EF0;
    v26 = v11[30];
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D5496938(v27, v28);
  }

  else
  {
    v30 = v11[38];
    v31 = v11[31];
    v32 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
    sub_1D54BE1FC(v31, &qword_1EC7F70B8);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23();
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B9B80()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D549806C(v14, v15);
}

uint64_t sub_1D54B9C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F58, &qword_1D5667B38);
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v9 = *(v8 + 64) + 15;
  v5[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v11 = sub_1D560DF28();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v14 = sub_1D560DF38();
  v5[35] = v14;
  v15 = *(v14 - 8);
  v5[36] = v15;
  v16 = *(v15 + 64) + 15;
  v5[37] = swift_task_alloc();
  v17 = type metadata accessor for MusicSuggestedSongsResponse();
  v5[38] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F50, &qword_1D5667B28) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[5] = type metadata accessor for MusicSuggestedSongsRequest(0);
  v5[6] = sub_1D54B4BA4(&qword_1EC7F5868, type metadata accessor for MusicSuggestedSongsRequest);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  sub_1D54ACBB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x1EEE6DFA0](sub_1D54B9F40, 0, 0);
}

uint64_t sub_1D54B9F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[42], &qword_1EC7F6F50, &qword_1D5667B28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    v13 = v10[42];
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18();
        }

        v15 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v15, qword_1EDD76DC8);
        v16 = sub_1D560C738();
        v17 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v17))
        {
          v18 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v18);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v19, v20, v21, v22, v23, 2u);
          OUTLINED_FUNCTION_54();
        }

        v24 = v10[41];
        v25 = v10[42];
        v27 = v10[39];
        v26 = v10[40];
        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
      }
    }

    else
    {
      sub_1D54B4B54();
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[43] = v37;
  *v37 = v38;
  v37[1] = sub_1D54BA138;
  v39 = v10[41];
  v40 = v10[27];
  v41 = v10[24];
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A12B8(v42, v43, v44);
}

uint64_t sub_1D54BA138()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54BA230()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 304);
  v8 = sub_1D54B4BA4(&qword_1EC7F5E88, type metadata accessor for MusicSuggestedSongsResponse);
  OUTLINED_FUNCTION_392(v8);
  OUTLINED_FUNCTION_82_24();
  sub_1D54ACBB0(v1, v9);
  v16 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  (*(v4 + 104))(v2, *MEMORY[0x1E6975100], v3);
  (*(v6 + 104))(v5, *MEMORY[0x1E6975110], v7);
  *(v0 + 120) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 360) = v11;
  *v11 = v12;
  v11[1] = sub_1D54BA3B4;
  v13 = *(v0 + 296);
  v14 = *(v0 + 272);

  return MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(boxed_opaque_existential_0, v13, v14);
}

uint64_t sub_1D54BA3B4()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[45];
  v6 = v4[37];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  v11 = v4[32];
  v12 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v13 = v12;
  *(v14 + 368) = v0;

  v15 = OUTLINED_FUNCTION_19_71();
  v16(v15);
  v17 = OUTLINED_FUNCTION_97_17();
  v18(v17);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D54BA54C()
{
  OUTLINED_FUNCTION_80();
  *(v0 + 384) = *(v0 + 352);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_201_6(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_30_65(v11);

  return sub_1D54985F4(v13, v14);
}

void sub_1D54BA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_225_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14())
  {
    v13 = v12[39];
    v14 = v12[40];
    v15 = v12[38];
    v17 = v12[30];
    v16 = v12[31];
    v18 = OUTLINED_FUNCTION_101_15();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v15);
    OUTLINED_FUNCTION_39_50();
    sub_1D54B5AC0(v16, v14);
    OUTLINED_FUNCTION_82_24();
    v21 = OUTLINED_FUNCTION_159();
    sub_1D54ACBB0(v21, v22);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v23 = swift_task_alloc();
    v12[47] = v23;
    *v23 = v12;
    v23[1] = sub_1D54BA918;
    v24 = v12[30];
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_349_1();

    sub_1D5496CE8(v25, v26);
  }

  else
  {
    v28 = v12[38];
    v29 = v12[31];
    v30 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
    sub_1D54BE1FC(v29, &qword_1EC7F6F38);
    OUTLINED_FUNCTION_57_3();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a12);
    OUTLINED_FUNCTION_120_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23();
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_349_1();
  }
}

uint64_t sub_1D54BA7F8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[41];
  OUTLINED_FUNCTION_21_77();
  sub_1D54B4B54();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[48] = v0[46];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_201_6(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D54985F4(v14, v15);
}

uint64_t sub_1D54BA918()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54BA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = v10[40];
  v12 = v10[41];
  (*(v10[29] + 8))(v10[30], v10[28]);
  sub_1D54B4B54();
  OUTLINED_FUNCTION_222();
  sub_1D54B4B54();
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  v13 = v10[41];
  v14 = v10[42];
  v16 = v10[39];
  v15 = v10[40];
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D54BAAEC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 392);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54BABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();

  v11 = *(v10 + 328);
  v12 = *(v10 + 336);
  v14 = *(v10 + 312);
  v13 = *(v10 + 320);
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D54BAC74()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BAD04()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BAE14()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5481014(v3, v4, v5, v6);
}

uint64_t sub_1D54BB02C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB0BC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB1C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480BA0(v3, v4, v5, v6);
}

uint64_t sub_1D54BB3DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB46C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB574()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480F30(v3, v4, v5, v6);
}

uint64_t sub_1D54BB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[191] = a5;
  v5[190] = a4;
  v5[189] = a3;
  v5[188] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7048, &qword_1D5667EF8);
  v5[192] = v7;
  v8 = *(v7 - 8);
  v5[193] = v8;
  v9 = *(v8 + 64) + 15;
  v5[194] = swift_task_alloc();
  v10 = sub_1D560DF28();
  v5[195] = v10;
  v11 = *(v10 - 8);
  v5[196] = v11;
  v12 = *(v11 + 64) + 15;
  v5[197] = swift_task_alloc();
  v13 = sub_1D560DF38();
  v5[198] = v13;
  v14 = *(v13 - 8);
  v5[199] = v14;
  v15 = *(v14 + 64) + 15;
  v5[200] = swift_task_alloc();
  v5[169] = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v5[170] = sub_1D54B4BA4(&qword_1EC7F5860, type metadata accessor for MusicCatalogInternalSearchRequest);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 166);
  sub_1D54ACBB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x1EEE6DFA0](sub_1D54BB940, 0, 0);
}

uint64_t sub_1D54BB940()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[190];
  v2 = *(v1 + 80);
  if (!*(v1 + 80))
  {
    memcpy(v0 + 156, v0[190], 0x50uLL);
    sub_1D4F39AB0(v1, (v0 + 24), &qword_1EC7F7040, &qword_1D5667EF0);
    sub_1D54BC69C((v0 + 156));
LABEL_15:
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[201] = v15;
    *v15 = v16;
    v15[1] = sub_1D54BBB1C;
    v17 = v0[191];
    v18 = v0[188];

    return sub_1D54A1D8C((v0 + 46), (v0 + 166), v18);
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = (v0 + 13);
    }

    else
    {
      v3 = (v0 + 2);
    }

    sub_1D4F39AB0(v0[190], v3, &qword_1EC7F7040, &qword_1D5667EF0);
    goto LABEL_15;
  }

  sub_1D4F39AB0(v0[190], (v0 + 35), &qword_1EC7F7040, &qword_1D5667EF0);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v4 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v4, qword_1EDD76DC8);
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_74_12(v6))
  {
    v7 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v7);
    OUTLINED_FUNCTION_66_26();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D54BBB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1608);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 1616) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54BBC14()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  OUTLINED_FUNCTION_431(v0 + 56);
  v0[174] = &type metadata for MusicCatalogInternalSearchResponse;
  v7 = sub_1D5414518();
  v0[175] = v7;
  v8 = swift_allocObject();
  v0[171] = v8;
  OUTLINED_FUNCTION_431((v8 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 171, &type metadata for MusicCatalogInternalSearchResponse);
  (*(v2 + 104))(v1, *MEMORY[0x1E6975100], v3);
  v9 = *MEMORY[0x1E6975110];
  v10 = OUTLINED_FUNCTION_243_3();
  v11(v10);
  v0[179] = &type metadata for MusicCatalogInternalSearchResponse;
  v0[180] = v7;
  __swift_allocate_boxed_opaque_existential_0(v0 + 176);
  sub_1D54BC640((v0 + 56), (v0 + 66));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[203] = v12;
  *v12 = v13;
  v12[1] = sub_1D54BBD7C;
  v14 = v0[200];
  v15 = v0[197];
  OUTLINED_FUNCTION_73_0();

  return MusicCatalogInternalSearchResponse.libraryMapped(policy:scope:)();
}

uint64_t sub_1D54BBD7C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v7 = *(v6 + 1624);
  v8 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  *(v4 + 1632) = v0;

  v10 = OUTLINED_FUNCTION_290_1();
  v11(v10);
  if (v0)
  {
    v12 = *(v2 + 8);
  }

  else
  {
    v15 = *(v2 + 8);
  }

  v13 = OUTLINED_FUNCTION_222();
  v14(v13);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D54BBEC8()
{
  OUTLINED_FUNCTION_80();
  v0[206] = v0[202];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v0[207] = v10;
  *v10 = v0;
  v10[1] = sub_1D54BC4E8;
  v11 = v0[191];
  v12 = v0[189];
  v13 = OUTLINED_FUNCTION_178_5();

  return sub_1D5498898(v13, v14);
}

uint64_t sub_1D54BBFDC()
{
  OUTLINED_FUNCTION_160();
  sub_1D4E628D4((v0 + 176), (v0 + 181));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_377_0())
  {
    v1 = v0[194];
    memcpy(v0 + 126, v0 + 86, 0x50uLL);
    memcpy(v0 + 116, v0 + 86, 0x50uLL);
    memcpy(v0 + 136, v0 + 86, 0x50uLL);
    sub_1D54BC640((v0 + 116), (v0 + 146));
    sub_1D5612878();
    v2 = swift_task_alloc();
    v0[205] = v2;
    *v2 = v0;
    v2[1] = sub_1D54BC340;
    v3 = v0[191];
    v4 = v0[189];
    v5 = OUTLINED_FUNCTION_93_0(v0[194]);

    return sub_1D5496EC0(v5, v6);
  }

  else
  {
    bzero(v0 + 86, 0xA0uLL);
    sub_1D54BE1FC((v0 + 96), &qword_1EC7F7020);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    v0[186] = v10;
    v0[187] = v11;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000034);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_48();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v8 = v0[186];
    v9 = v0[187];
    return OUTLINED_FUNCTION_138();
  }
}

uint64_t sub_1D54BC20C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_431(v0 + 76);
  sub_1D54BC69C((v0 + 76));
  __swift_deallocate_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 171);
  v0[206] = v0[204];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v0[207] = v10;
  *v10 = v0;
  v10[1] = sub_1D54BC4E8;
  v11 = v0[191];
  v12 = v0[189];
  v13 = OUTLINED_FUNCTION_178_5();

  return sub_1D5498898(v13, v14);
}

uint64_t sub_1D54BC340()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 1640);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54BC424()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[194];
  v2 = v0[193];
  v3 = v0[192];
  sub_1D54BE1FC((v0 + 126), &qword_1EC7F7020);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_159();
  v6(v5);
  OUTLINED_FUNCTION_431(v0 + 106);
  sub_1D54BC69C((v0 + 106));
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 171);
  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D54BC4E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 1656);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54BC5CC()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54BC6F0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BC780()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BC888()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480D68(v3, v4, v5, v6);
}

uint64_t sub_1D54BCA8C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCB1C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCC24()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480C84(v3, v4, v5, v6);
}

uint64_t sub_1D54BCE28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCEB8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCFC0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54809D8(v3, v4, v5, v6);
}

uint64_t sub_1D54BD1C4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD254()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD35C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54808F4(v3, v4, v5, v6);
}

uint64_t sub_1D54BD3EC(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D54BD538(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D54BD548(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D54BD538(a1, a2);
  }

  return a1;
}

uint64_t sub_1D54BD55C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D54BD3EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1D54BD570()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD600()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD708()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480810(v3, v4, v5, v6);
}

uint64_t sub_1D54BD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_32(v16);
  *v17 = v18;
  v17[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_25_3();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D54BD9CC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BDA5C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BDAEC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_153_1();

  return sub_1D54A9890(v8, v9, v10, v11, v12);
}

uint64_t sub_1D54BDB90()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = OUTLINED_FUNCTION_64_1();
  v2 = type metadata accessor for MusicSuggestedSongsViewModelSeed(v1);
  OUTLINED_FUNCTION_69(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v5);
  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_25_3();

  return sub_1D54A8490(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D54BDC9C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_64_1();
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_32(v7);
  *v8 = v9;
  v8[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_376();

  return sub_1D54A4CEC(v10, v11, v12, v13, v14);
}

uint64_t sub_1D54BDD6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54A4B9C(v3, v4, v5, v6);
}

uint64_t sub_1D54BDE74()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480ABC(v3, v4, v5, v6);
}

uint64_t sub_1D54BDF04(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1D54BDF14()
{
  OUTLINED_FUNCTION_75_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71F8, &qword_1D56684B8);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 73);
  v7 = *(v0 + 96);
  v8 = v0 + ((*(v2 + 80) + 104) & ~*(v2 + 80));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_86(v9);
  *v10 = v11;
  v10[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_12_34();
  OUTLINED_FUNCTION_73_0();

  __asm { BR              X9 }
}

uint64_t sub_1D54BE038(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D54BE048(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D54BE038(result, a2, SBYTE1(a2));
  }

  return result;
}

uint64_t sub_1D54BE05C(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D54BDF04(result, a2, SBYTE1(a2));
  }

  return result;
}

uint64_t sub_1D54BE094()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_100Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_159();

  return swift_deallocObject();
}

uint64_t sub_1D54BE16C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BE1FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_313_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsViewModel.AutomaticRefreshReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54BE32C()
{
  result = qword_1EC7F7258;
  if (!qword_1EC7F7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7258);
  }

  return result;
}

uint64_t sub_1D54BE3C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_313_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_54()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  v4 = *(v3 + 32);
  return v0;
}

void OUTLINED_FUNCTION_70_26()
{
  v3 = *v1;
  *(*v1 + 8 * (v2 >> 6) + 56) |= 1 << v2;
  *(*(v3 + 48) + 8 * v2) = v0;
  v4 = *(v3 + 16);
}

uint64_t OUTLINED_FUNCTION_71_25()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_74_28(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_25()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_78_25()
{
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[41];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_87_20()
{
  v1 = v0[42];
  v2 = v0[36];
  result = v0[29];
  v4 = *(v0[37] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_19(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_105_17()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_106_15()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v0[50] = *(v3 + 16);
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

void OUTLINED_FUNCTION_111_14()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v6 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_113_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 320);
  v5 = *(v3 + 296);
  return v2;
}

double OUTLINED_FUNCTION_114_9()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_17()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_120_11()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_121_11()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_127_11(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

void *OUTLINED_FUNCTION_129_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[22];
  v4 = v2[17];
  v5 = v2[15];
  v6 = v2[13];
  return v2 + 2;
}

uint64_t OUTLINED_FUNCTION_140_13()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_141_6()
{

  return sub_1D560C8F8();
}

uint64_t OUTLINED_FUNCTION_143_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_144_5()
{
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[35];
}

void *OUTLINED_FUNCTION_146_9()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  sub_1D4E48324((v0 + 56), v0 + 16);
  v7 = *(v0 + 48);
  return __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
}

uint64_t OUTLINED_FUNCTION_160_9()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[6];
  v4 = *(v0[8] + 16);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_161_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[42];
  v4 = v2[27];
  v5 = v2[24];
  return result;
}

uint64_t OUTLINED_FUNCTION_177_7()
{
  v2 = *(v0 + 328);
  v3 = *(v0 + 288);

  return sub_1D4E628D4(v0 + 16, v0 + 56);
}

double OUTLINED_FUNCTION_190_8()
{
  v1 = *(v0 + 208);
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_192_3()
{
  *(v1 + v2) = v0;

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_194_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[46];
  v4 = v2[30];
  v5 = v2[26];
  v6 = v2[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_196_4()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_199_5()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v9 = v0[33];
}

uint64_t OUTLINED_FUNCTION_205_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  v16 = v14 + *v14;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  return a11;
}

uint64_t OUTLINED_FUNCTION_219_3()
{
  v2 = *(v0 + 16);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_220_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_221_5()
{
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_225_4()
{
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);

  return sub_1D4E628D4(v0 + 96, v0 + 136);
}

uint64_t OUTLINED_FUNCTION_232_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_233_4()
{
  *(v1 + v0) = 4;
  v5 = *(v3 + 16);
  result = v2;
  v7 = *(v4 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_236_1()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_237_1()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_238_3()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_239_4()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_244_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_248_1()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

void OUTLINED_FUNCTION_256_2()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[12];
}

uint64_t OUTLINED_FUNCTION_262_1()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_270_3()
{
  v2 = v0[24];
  result = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_280_2()
{

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_281_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_287_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_290_1()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  result = v0[197];
  v5 = v0[195];
  v6 = *(v0[196] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_291_3()
{
  v1 = v0[200];
  v2 = v0[197];
  v3 = v0[194];
  __swift_destroy_boxed_opaque_existential_1(v0 + 166);
}

void OUTLINED_FUNCTION_295_2()
{
  v2 = v0[3];
  v3 = v0[2];
  v1 = v0[4];
}

uint64_t OUTLINED_FUNCTION_299_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_300_3()
{
  __swift_deallocate_boxed_opaque_existential_1(v0 + 12);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[56] = v0[54];
  return result;
}

uint64_t OUTLINED_FUNCTION_301_3()
{
  __swift_deallocate_boxed_opaque_existential_1(v0 + 12);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[51] = v0[49];
  return result;
}

uint64_t OUTLINED_FUNCTION_304_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_305_0()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_307_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1D54ACE48(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_312_1()
{

  return sub_1D5614E28();
}
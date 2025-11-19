uint64_t MNTraceSelectStatement.objectValue<A>(_:of:)()
{
  v1 = sub_1D32770B0();
  v2 = [v0 dataValue_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D3276C80();
  v5 = v4;

  sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
  v6 = sub_1D32773C0();
  sub_1D31422C8(v3, v5);
  return v6;
}

Swift::OpaquePointer_optional __swiftcall MNTraceSelectStatement.objectsValue(_:of:)(Swift::String _, Swift::OpaquePointer of)
{
  v3 = sub_1D32770B0();
  v4 = [v2 dataValue_];

  if (v4)
  {
    v6 = sub_1D3276C80();
    v8 = v7;

    sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C318, &qword_1D328ACC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D328AC00;
    *(v9 + 32) = sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
    v11 = sub_1D32773D0();

    if (v11)
    {
      v12 = sub_1D313F638(v11);
      sub_1D31422C8(v6, v8);

      v10 = v12;
      goto LABEL_7;
    }

    sub_1D31422C8(v6, v8);
  }

  v10 = 0;
LABEL_7:
  result.value._rawValue = v10;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1D313F638(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3D8, &qword_1D328AEC0);
    v2 = sub_1D3277810();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v27 = v8 >> 6;

    v28 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

    while (1)
    {
LABEL_31:
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_51;
      }

      if (v34 >= v27)
      {
        break;
      }

      v7 = *(v4 + 8 * v34);
      ++v28;
      if (v7)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v7)) | (v34 << 6);
          sub_1D31427CC(*(a1 + 48) + 40 * v35, &v50);
          sub_1D312BEE8(*(a1 + 56) + 32 * v35, &v52 + 8);
          v47 = v52;
          v48 = v53;
          v49 = v54;
          v45 = v50;
          v46 = v51;
          v36 = sub_1D3277690();
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          sub_1D312BEE8(&v47 + 8, v44);
          sub_1D3142828(&v45);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_47;
          }

          v7 &= v7 - 1;
          result = sub_1D3141740(v38);
          if (v39)
          {
            v29 = *(v2 + 48);
            v30 = *(v29 + 8 * result);
            *(v29 + 8 * result) = v38;
            v31 = result;

            v32 = *(v2 + 56);
            v33 = *(v32 + 8 * v31);
            *(v32 + 8 * v31) = v43;
            result = swift_unknownObjectRelease();
            v28 = v34;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_52;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v38;
            *(*(v2 + 56) + 8 * result) = v43;
            v40 = *(v2 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_53;
            }

            *(v2 + 16) = v42;
            v28 = v34;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v34 = v28;
        }

LABEL_45:
        sub_1D3142828(&v45);
LABEL_47:

        return 0;
      }
    }

LABEL_41:

    return v2;
  }

  v9 = v8 >> 6;
  v10 = v2 + 64;

  v12 = 0;
  while (v7)
  {
LABEL_16:
    v15 = __clz(__rbit64(v7)) | (v12 << 6);
    sub_1D31427CC(*(a1 + 48) + 40 * v15, &v50);
    sub_1D312BEE8(*(a1 + 56) + 32 * v15, &v52 + 8);
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v45 = v50;
    v46 = v51;
    v16 = sub_1D3277690();
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      goto LABEL_45;
    }

    v18 = v17;
    sub_1D312BEE8(&v47 + 8, v44);
    sub_1D3142828(&v45);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_47;
    }

    v19 = *(v2 + 40);
    result = sub_1D32775E0();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v10 + 8 * v22);
        if (v26 != -1)
        {
          v13 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_50;
    }

    v13 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    v7 &= v7 - 1;
    *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + 8 * v13) = v18;
    *(*(v2 + 56) + 8 * v13) = v43;
    ++*(v2 + 16);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_41;
    }

    v7 = *(v4 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void MNTracePreparedStatementProtocol.init(trace:tableName:columnNames:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for MNTraceSelectStatementBuilder();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses] = 0;
  *&v10[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace] = a1;
  v11 = &v10[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v14, sel_init);
  swift_beginAccess();
  sub_1D31400F8(a4);
  swift_endAccess();
  sub_1D314068C();

  if (!v4)
  {
    type metadata accessor for MNTraceSelectStatement();
    swift_dynamicCast();
  }
}

id MNTraceSelectStatementBuilder.__allocating_init(trace:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses] = 0;
  *&v7[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace] = a1;
  v8 = &v7[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id MNTraceSelectStatementBuilder.init(trace:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses] = 0;
  *&v3[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace] = a1;
  v4 = &v3[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MNTraceSelectStatementBuilder();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D313FEB4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D3141080(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D3141080((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v2 + v5) = v6;
  return swift_endAccess();
}

uint64_t sub_1D3140094()
{
  swift_beginAccess();

  sub_1D31400F8(v0);
  return swift_endAccess();
}

uint64_t sub_1D31400F8(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1D3141080(result, v11, 1, v3);
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

uint64_t sub_1D31401EC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D31411B4(result, v12, 1, v3, &qword_1EC75C378, &qword_1D328AE78);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D3140398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D32776F0();

  v24[0] = 0x4F4A2052454E4E49;
  v24[1] = 0xEB00000000204E49;
  MEMORY[0x1D38B3FE0](a1, a2);
  MEMORY[0x1D38B3FE0](542002976, 0xE400000000000000);
  MEMORY[0x1D38B3FE0](*(v6 + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName), *(v6 + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName + 8));
  MEMORY[0x1D38B3FE0](46, 0xE100000000000000);
  MEMORY[0x1D38B3FE0](a3, a4);
  MEMORY[0x1D38B3FE0](2112800, 0xE300000000000000);
  MEMORY[0x1D38B3FE0](a1, a2);
  MEMORY[0x1D38B3FE0](46, 0xE100000000000000);
  MEMORY[0x1D38B3FE0](a5, a6);
  v13 = OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses;
  swift_beginAccess();
  if (!*(v6 + v13))
  {
    *(v6 + v13) = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D3140CBC();
  v16 = *v14;
  if (*v14)
  {
    v17 = v14;
    v18 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1D3141080(0, *(v16 + 2) + 1, 1, v16);
      *v17 = v16;
    }

    v21 = *(v16 + 2);
    v20 = *(v16 + 3);
    if (v21 >= v20 >> 1)
    {
      v16 = sub_1D3141080((v20 > 1), v21 + 1, 1, v16);
      *v17 = v16;
    }

    *(v16 + 2) = v21 + 1;
    v22 = &v16[16 * v21];
    *(v22 + 4) = 0x4F4A2052454E4E49;
    *(v22 + 5) = 0xEB00000000204E49;
    return (v15)(v24, 0);
  }

  else
  {

    return (v15)(v24, 0);
  }
}

uint64_t sub_1D314068C()
{
  v2 = v1;
  v3 = v0;
  v4 = OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16))
  {
    v5 = OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses;
    swift_beginAccess();
    if (*(v3 + v5))
    {
      v27 = *(v3 + v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C340, &qword_1D328ACC8);
      sub_1D3124958(&qword_1EC75C780, &qword_1EC75C340, &qword_1D328ACC8);
      v6 = sub_1D3277080();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    sub_1D32776F0();

    v26 = *(v3 + v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C340, &qword_1D328ACC8);
    sub_1D3124958(&qword_1EC75C780, &qword_1EC75C340, &qword_1D328ACC8);
    v10 = sub_1D3277080();
    v12 = v11;

    MEMORY[0x1D38B3FE0](v10, v12);

    MEMORY[0x1D38B3FE0](0x204D4F524620, 0xE600000000000000);
    MEMORY[0x1D38B3FE0](*(v3 + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName), *(v3 + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName + 8));
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    MEMORY[0x1D38B3FE0](v6, v8);

    MEMORY[0x1D38B3FE0](59, 0xE100000000000000);
    v13 = *(v3 + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace);
    v14 = objc_allocWithZone(type metadata accessor for MNTraceSelectStatement());
    v15 = v13;

    v16 = v15;
    v17 = v2;
    v18 = sub_1D313E350(v16);
    if (v2)
    {
      v19 = v2;
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
      sub_1D3126084(0, &qword_1EC75C350, 0x1E696ABC0);
      if (swift_dynamicCast())
      {

        v0 = v26;
        v20 = [v26 debugDescription];
        v21 = sub_1D32770C0();
        v23 = v22;

        sub_1D3142388();
        swift_allocError();
        *v24 = 0x205443454C4553;
        v24[1] = 0xE700000000000000;
        v24[2] = v21;
        v24[3] = v23;
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v0 = v18;
    }
  }

  else
  {
    sub_1D3142388();
    swift_allocError();
    *v9 = 0u;
    v9[1] = 0u;
    swift_willThrow();
  }

  return v0;
}

id MNTraceSelectStatementBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D3140DCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t MNTraceSelectStatementBuilder.Error.errorDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000039;
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  sub_1D32776F0();
  MEMORY[0x1D38B3FE0](0xD000000000000029, 0x80000001D328DAA0);
  MEMORY[0x1D38B3FE0](v4, v1);
  MEMORY[0x1D38B3FE0](0xD000000000000012, 0x80000001D328DAD0);
  MEMORY[0x1D38B3FE0](v3, v2);
  return 0;
}

char *sub_1D3140F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3F0, &qword_1D328B8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1D3141080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3D0, &qword_1D328AEB8);
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

char *sub_1D31411B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1D31412B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C388, &qword_1D328B8C0);
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

char *sub_1D31413B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C390, &qword_1D328AE90);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D31414D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C380, &unk_1D328AE80);
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

char *sub_1D31415D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3E8, &unk_1D328AED0);
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

unint64_t sub_1D31416C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D3277980();
  sub_1D3277100();
  v6 = sub_1D32779B0();

  return sub_1D3141A24(a1, a2, v6);
}

unint64_t sub_1D3141740(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D32775E0();

  return sub_1D3141ADC(a1, v5);
}

uint64_t sub_1D3141784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3A8, &qword_1D328AEA0);
  v38 = a2;
  result = sub_1D3277800();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D3277980();
      sub_1D3277100();
      result = sub_1D32779B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1D3141A24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D32778B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D3141ADC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D32775F0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1D3141BB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3A8, &qword_1D328AEA0);
  v2 = *v0;
  v3 = sub_1D32777F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1D3141D1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D3277660();
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
      result = sub_1D3277660();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D3124958(&qword_1EC75C3C8, &qword_1EC75C3C0, &qword_1D328AEB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3C0, &qword_1D328AEB0);
            v9 = sub_1D314A444(v13, i, a3);
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
        type metadata accessor for MNRouteRemainingTimeInfo(0);
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

uint64_t sub_1D3141EC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D3277660();
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
      result = sub_1D3277660();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D3124958(&qword_1EC75C3B8, &qword_1EC75C3B0, &qword_1D328AEA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3B0, &qword_1D328AEA8);
            v9 = sub_1D314A4CC(v13, i, a3);
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
        _s16NotificationInfoCMa();
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

unint64_t sub_1D3142064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3A8, &qword_1D328AEA0);
    v3 = sub_1D3277810();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D31416C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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

uint64_t sub_1D3142160(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3142218(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D3142160(a1, &a1[a2]);
  }

  v3 = sub_1D3276AB0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D3276A70();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D3276C60();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D31422C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_1D3142388()
{
  result = qword_1EC75C358;
  if (!qword_1EC75C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C358);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Navigation29MNTraceSelectStatementBuilderC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D3142560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D31425B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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

void *sub_1D3142608(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D314263C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1D3277660();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1D312ABA0(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1D3142750()
{
  result = qword_1EC75C3A0;
  if (!qword_1EC75C3A0)
  {
    sub_1D3126084(255, &qword_1EC75C970, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C3A0);
  }

  return result;
}

uint64_t sub_1D31427B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D31422C8(a1, a2);
  }

  return a1;
}

uint64_t sub_1D3142828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3E0, &qword_1D328AEC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MNNavigationServiceCallback_DidUpdateNavTrayGuidance.navTrayGuidanceEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent);
  v2 = v1;
  return v1;
}

id MNNavigationServiceCallback_DidUpdateNavTrayGuidance.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for MNNavTrayGuidanceEvent(0);
  *&v2[OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent] = sub_1D32775C0();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateNavTrayGuidance();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MNNavigationServiceCallback_DidUpdateTargetLegIndex.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MNNavigationServiceCallback_DidUpdateTargetLegIndex.init(coder:)(void *a1)
{
  v3 = sub_1D32770B0();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex_targetLegIndex] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTargetLegIndex();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MNNavigationServiceCallback_DidUpdateTargetLegIndex.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert.UpdateType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x657373696D736944;
    }

    if (a1 == 3)
    {
      return 0x6164696C61766E49;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x72656C412077654ELL;
    }

    if (a1 == 1)
    {
      return 0x64657461647055;
    }
  }

  result = sub_1D3277900();
  __break(1u);
  return result;
}

uint64_t sub_1D3143074()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t sub_1D31430E8()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

unint64_t sub_1D314312C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D3143C04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D3143160()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x72656C412077654ELL;
    }

    if (v1 == 1)
    {
      return 0x64657461647055;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x657373696D736944;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  return 0x6164696C61766E49;
}

uint64_t sub_1D3143334()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType);
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x72656C412077654ELL;
    }

    if (v1 == 1)
    {
      return 0x64657461647055;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x657373696D736944;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *(v0 + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType);
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  return 0x6164696C61766E49;
}

id MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert.__allocating_init(updateType:trafficIncidentAlert:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType] = a1;
  *&v5[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert.init(updateType:trafficIncidentAlert:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType] = a1;
  *&v2[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D32770B0();
  v5 = [a1 decodeIntegerForKey_];

  if (v5 <= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1D3143C38();
  v7 = sub_1D32775C0();
  v8 = v7;
  if (v5 >= 4)
  {

    a1 = v8;
LABEL_9:

    type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  *&v2[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType] = v6;
  *&v2[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert] = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {

    return v10;
  }

  return 0;
}

void sub_1D31436A0(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
  objc_msgSendSuper2(&v7, sel_encodeWithCoder_, a1);
  v3 = *&v1[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType];
  v4 = sub_1D32770B0();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *&v1[OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert];
  v6 = sub_1D32770B0();
  [a1 encodeObject:v5 forKey:v6];
}

id sub_1D3143898(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1D3143910(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D3143970(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  *&a1[*a4] = a3;
  v6.receiver = a1;
  v6.super_class = a5();
  return objc_msgSendSuper2(&v6, sel_init);
}

id MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex.init(coder:)(void *a1)
{
  v3 = sub_1D32770B0();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex_anchorPointIndex] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1D3143BCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D3143C04(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D3143C38()
{
  result = qword_1EC75C418;
  if (!qword_1EC75C418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C418);
  }

  return result;
}

unint64_t sub_1D3143CAC()
{
  result = qword_1EC75C428;
  if (!qword_1EC75C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C428);
  }

  return result;
}

void sub_1D3143E0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D3277580();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (!v10)
  {

    v34 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v36 = a1;
  v37 = a3;
  v38 = a1;
  v11 = (a2 + 44);
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v11 - 3);
    v14 = *(v11 - 2);
    v15 = *(v11 - 1);
    v16 = *v11;
    sub_1D32775A0();
    sub_1D3144134();
    v17 = sub_1D3277170();
    v18 = *(v17 + 16);
    v19 = *(v12 + 2);
    v20 = &v19[v18];
    if (__OFADD__(v19, v18))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= *(v12 + 3) >> 1)
    {
      if (!*(v21 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v23 = &v19[v18];
      }

      else
      {
        v23 = v19;
      }

      v12 = sub_1D314118C(isUniquelyReferenced_nonNull_native, v23, 1, v12);
      if (!*(v21 + 16))
      {
LABEL_3:

        if (v18)
        {
          goto LABEL_33;
        }

        goto LABEL_4;
      }
    }

    v24 = *(v12 + 2);
    if ((*(v12 + 3) >> 1) - v24 < v18)
    {
      goto LABEL_34;
    }

    memcpy(&v12[16 * v24 + 32], (v21 + 32), 16 * v18);

    if (v18)
    {
      v25 = *(v12 + 2);
      v26 = __OFADD__(v25, v18);
      v27 = (v25 + v18);
      if (v26)
      {
        goto LABEL_35;
      }

      *(v12 + 2) = v27;
    }

LABEL_4:
    v11 += 4;
    --v10;
  }

  while (v10);
  if (!*(a2 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v38;
  v9 = [v38 stepIndexForRouteCoordinate_];
  v18 = &selRef_setRouteIndex_;
  v28 = [v19 steps];
  if (!v28)
  {
    goto LABEL_40;
  }

  v29 = v28;
  sub_1D314418C();
  v30 = sub_1D32771A0();

  if (v30 >> 62)
  {
LABEL_37:
    v31 = sub_1D3277660();
    goto LABEL_22;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v31 <= 0 || v9 >= v31)
  {

    v34 = 0;
    a1 = v36;
    a3 = v37;
LABEL_31:
    *a3 = a1;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v34;
    return;
  }

  v32 = [v19 *(v18 + 2448)];

  if (v32)
  {

    v33 = sub_1D32771A0();

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1D38B45D0](v9, v33);
      a1 = v36;
      a3 = v37;
      goto LABEL_28;
    }

    a1 = v36;
    a3 = v37;
    if (v9 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v33 + 8 * v9 + 32);
LABEL_28:

      goto LABEL_31;
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D3144134()
{
  result = qword_1EC75C430;
  if (!qword_1EC75C430)
  {
    sub_1D3277580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C430);
  }

  return result;
}

unint64_t sub_1D314418C()
{
  result = qword_1EC75C438;
  if (!qword_1EC75C438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C438);
  }

  return result;
}

uint64_t sub_1D314420C(double *a1)
{
  v2 = v1;
  v4 = sub_1D3276D30();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = (*(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourse) + *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourse)) * 0.5;
  v13 = *(v2 + 120) + a1[15];
  v14 = v5[2];
  v14(&v19 - v10, v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v4);
  v14(v9, a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v4);
  sub_1D3276CC0();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  MEMORY[0x1D38B43F0](a1[8], a1[9], a1[10]);
  v16 = GEOCoordinate2DAlongBearing();
  v17 = (*(v2 + 56) + a1[10]) * 0.5;
  return GEOLocationCoordinate2DMakeWithCoordinate3D(v16);
}

uint64_t sub_1D31443D4()
{
  v1 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp;
  v2 = sub_1D3276D30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);

  v4 = *(v0 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s14RecentLocationCMa()
{
  result = qword_1EC75C440;
  if (!qword_1EC75C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3144514()
{
  result = sub_1D3276D30();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D31445FC()
{

  return swift_deallocClassInstance();
}

int64x2_t *sub_1D3144660(void *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a3;
  v5 = sub_1D3276D30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_floor;
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_floor) = 0;
  v11 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_sourceInformation;
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_sourceInformation) = 0;
  v12 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch) = 0;
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch) = 0;
  v13 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road;
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road) = 0;
  [a1 _navigation_geoCoordinate3D];
  v3[1].i64[0] = v14;
  v3[1].i64[1] = v15;
  v3[2].i64[0] = v16;
  [a1 horizontalAccuracy];
  v3[5].i64[1] = v17;
  [a1 verticalAccuracy];
  v3[6].i64[0] = v18;
  [a1 course];
  v3[6].i64[1] = v19;
  [a1 courseAccuracy];
  v3[7].i64[0] = v20;
  [a1 speed];
  v3[7].i64[1] = v21;
  [a1 speedAccuracy];
  v3[8].i64[0] = v22;
  v23 = [a1 timestamp];
  sub_1D3276D00();

  (*(v6 + 32))(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v9, v5);
  v24 = [a1 floor];
  v25 = *(v3->i64 + v10);
  *(v3->i64 + v10) = v24;

  v26 = [a1 sourceInformation];
  v27 = *(v3->i64 + v11);
  *(v3->i64 + v11) = v26;

  v28 = [a1 type];
  *(v3->i32 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_type) = v28;
  [a1 rawCoordinate];
  v30 = v29;
  [a1 rawCoordinate];
  v32 = v31;
  [a1 rawAltitude];
  v3[2].i64[1] = v30;
  v3[3].i64[0] = v32;
  v3[3].i64[1] = v33;
  [a1 rawHorizontalAccuracy];
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawHorizontalAccuracy) = v34;
  [a1 rawVerticalAccuracy];
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawVerticalAccuracy) = v35;
  [a1 rawCourse];
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourse) = v36;
  [a1 rawCourseAccuracy];
  *(v3->i64 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourseAccuracy) = v37;

  v3[4] = vdupq_n_s64(0xC066800000000000);
  v3[5].i64[0] = 0x7FEFFFFFFFFFFFFFLL;
  v3->i8[OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_isInterpolated] = 0;
  v38 = *(v3->i64 + v12);
  *(v3->i64 + v12) = v43;

  v39 = *(v3->i64 + v13);
  v40 = v44;
  *(v3->i64 + v13) = v44;
  v41 = v40;

  v3->i8[OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch] = 0;
  return v3;
}

id DispatchTimer.__allocating_init(time:repeating:queue:handler:)(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v66 = a4;
  v54 = a3;
  v56 = a1;
  v8 = sub_1D3276FF0();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - v12;
  v13 = sub_1D3276F90();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v63 = (&v51 - v19);
  v52 = sub_1D3276FB0();
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D3276FD0();
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D3277410();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v55 = objc_allocWithZone(v5);
  v55[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
  sub_1D3135294();
  sub_1D3277400();
  v33 = a2;
  v34 = sub_1D3277420();
  v53 = v33;

  (*(v29 + 8))(v32, v28);
  v35 = v66;
  ObjectType = swift_getObjectType();
  aBlock[4] = v54;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3122E0C;
  aBlock[3] = &block_descriptor_0;
  v37 = _Block_copy(aBlock);

  sub_1D3276FC0();
  sub_1D31352E0();
  v54 = ObjectType;
  sub_1D3277430();
  _Block_release(v37);
  (*(v20 + 8))(v23, v52);
  v38 = v63;
  (*(v24 + 8))(v27, v51);

  sub_1D3132404(v38, a5);
  if (v56)
  {
    (*(v64 + 16))(v67, v38, v65);
  }

  else
  {
    (*(v64 + 104))(v67, *MEMORY[0x1E69E7F40], v65);
  }

  v39 = v58;
  sub_1D3276FE0();
  v40 = v59;
  MEMORY[0x1D38B3ED0](v39, v38);
  v41 = v61;
  v42 = *(v60 + 8);
  v42(v39, v61);
  v43 = v57;
  *v57 = 0;
  v44 = v64;
  v45 = v65;
  (*(v64 + 104))(v43, *MEMORY[0x1E69E7F28], v65);
  v46 = v67;
  MEMORY[0x1D38B4420](v40, v67, v43, v54);
  v47 = *(v44 + 8);
  v47(v43, v45);
  v42(v40, v41);
  v47(v46, v45);
  v47(v63, v45);
  v48 = v55;
  *&v55[OBJC_IVAR___MNDispatchTimer__internalTimer] = v34;
  v68.receiver = v48;
  v68.super_class = v62;
  v49 = objc_msgSendSuper2(&v68, sel_init);

  return v49;
}

id DispatchTimer.init(time:repeating:queue:handler:)(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_1D3134C9C(a1, a2, a3, a4, a5);

  return v6;
}

id DispatchTimer.__allocating_init(time:queue:handler:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D3122E0C;
  v14[3] = &block_descriptor_3;
  v11 = _Block_copy(v14);

  v12 = [v10 initWithTime:0 repeating:a1 queue:v11 handler:a4];

  _Block_release(v11);
  return v12;
}

id DispatchTimer.init(time:queue:handler:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D3122E0C;
  v10[3] = &block_descriptor_6;
  v7 = _Block_copy(v10);

  v8 = [v4 initWithTime:0 repeating:a1 queue:v7 handler:a4];

  _Block_release(v7);
  return v8;
}

id DispatchTimer.__deallocating_deinit()
{
  v1 = v0;
  if (v0[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
  {
    v0[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
    v2 = *&v0[OBJC_IVAR___MNDispatchTimer__internalTimer];
    v3 = *&v1[OBJC_IVAR___MNDispatchTimer__internalTimer];
    swift_getObjectType();
    sub_1D3277440();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DispatchTimer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D3145268()
{
  if ((*(v0 + OBJC_IVAR___MNDispatchTimer__isRunning) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___MNDispatchTimer__isRunning) = 1;
    v1 = *(v0 + OBJC_IVAR___MNDispatchTimer__internalTimer);
    swift_getObjectType();
    return sub_1D3277450();
  }

  return result;
}

uint64_t sub_1D31452B4()
{
  if (*(v0 + OBJC_IVAR___MNDispatchTimer__isRunning) == 1)
  {
    *(v0 + OBJC_IVAR___MNDispatchTimer__isRunning) = 0;
    v1 = *(v0 + OBJC_IVAR___MNDispatchTimer__internalTimer);
    swift_getObjectType();
    return sub_1D3277440();
  }

  return result;
}

id DispatchTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapMatchingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapMatchingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MapMatchingResult()
{
  result = qword_1EC75C478;
  if (!qword_1EC75C478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3145718()
{
  result = sub_1D3276D70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapMatchingResult.MatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MapMatchingResult.MatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D3145954(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D3145970(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1D3145998()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3145A0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7365547472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x74736554646E65;
    }

    else
    {
      v5 = 0x7365547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6574756F526E6FLL;
  }

  else
  {
    v5 = 0x6574756F5266666FLL;
    if (v4 == 3)
    {
      v6 = 0xEE0064616F526E4FLL;
    }

    else
    {
      v6 = 0xEF64616F5266664FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6574756F526E6FLL;
  v9 = 0xEE0064616F526E4FLL;
  if (a2 != 3)
  {
    v9 = 0xEF64616F5266664FLL;
  }

  if (a2 != 2)
  {
    v8 = 0x6574756F5266666FLL;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x74736554646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D32778B0();
  }

  return v12 & 1;
}

uint64_t sub_1D3145BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MNTraceSelectStatementBuilder();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns] = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses] = 0;
  *&v9[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace] = a1;
  v10 = &v9[OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName];
  *v10 = a2;
  *(v10 + 1) = a3;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  swift_beginAccess();
  sub_1D31400F8(a4);
  swift_endAccess();
  v13 = sub_1D314068C();

  return v13;
}

uint64_t MNTrace.MapMatcherTestEvent.EventType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D3277840();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t MNTrace.MapMatcherTestEvent.EventType.rawValue.getter()
{
  v1 = 0x7365547472617473;
  v2 = 0x6574756F526E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574756F5266666FLL;
  }

  if (*v0)
  {
    v1 = 0x74736554646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D3145DF0()
{
  v1 = *v0;
  sub_1D3277980();
  sub_1D3277100();

  return sub_1D32779B0();
}

uint64_t sub_1D3145EF0()
{
  *v0;
  *v0;
  *v0;
  sub_1D3277100();
}

uint64_t sub_1D3145FDC()
{
  v1 = *v0;
  sub_1D3277980();
  sub_1D3277100();

  return sub_1D32779B0();
}

uint64_t sub_1D31460D8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MNTrace.MapMatcherTestEvent.EventType.init(rawValue:)(a1);
}

void sub_1D31460E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x7365547472617473;
  v5 = 0xE700000000000000;
  v6 = 0x6574756F526E6FLL;
  v7 = 0xEE0064616F526E4FLL;
  if (v2 != 3)
  {
    v7 = 0xEF64616F5266664FLL;
  }

  if (v2 != 2)
  {
    v6 = 0x6574756F5266666FLL;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74736554646E65;
    v3 = 0xE700000000000000;
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

uint64_t sub_1D31461B4()
{
  BYTE8(v6) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C488, &qword_1D328B300);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D328AC00;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_1D32770D0();
  MEMORY[0x1D38B3FE0](v4);

  MEMORY[0x1D38B3FE0](8250, 0xE200000000000000);
  *&v6 = *(v0 + 24);
  sub_1D32777A0();
  return *(&v6 + 1);
}

void MNTrace.insert(mapMatcherTestEvent:timestamp:)(unsigned __int8 *a1, double a2)
{
  v4 = *a1;
  v8 = [v2 mapMatcherTestEventInsertStatement];
  if (v8)
  {
    v5 = sub_1D32770B0();
    [v8 bindParameter:v5 double:a2];

    v6 = sub_1D32770B0();
    v7 = sub_1D32770B0();

    [v8 bindParameter:v6 string:v7];

    [v8 execute];
  }
}

void *MNTrace.mapMatcherTestEvents.getter()
{
  v2 = sub_1D3145BC0(v0, 0xD000000000000015, 0x80000001D328E600, &unk_1F4EB12A8);
  if (!v1)
  {
    v3 = v2;
    v0 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    if ([v2 stepRow])
    {
      do
      {
        v4 = sub_1D32770B0();
        [v3 doubleValue_];
        v6 = v5;

        v7 = sub_1D32770B0();
        v8 = [v3 stringValue_];

        if (v8)
        {
          sub_1D32770C0();

          v9 = sub_1D3277840();

          if (v9 < 5)
          {
            type metadata accessor for MNTrace.MapMatcherTestEvent();
            v10 = swift_allocObject();
            *(v10 + 16) = v6;
            *(v10 + 24) = v9;

            MEMORY[0x1D38B4040](v11);
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D32771B0();
            }

            sub_1D32771D0();

            v0 = v14;
          }
        }
      }

      while (([v3 stepRow] & 1) != 0);
    }

    [v3 finalize];
  }

  return v0;
}

MNTracePreparedStatement __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MNTrace.createMapMatcherTestEventInsertStatement()()
{
  v2 = v0;
  v3 = sub_1D31467C4();
  v4 = v2;
  v5 = sub_1D3146948(v4);

  if (!v1)
  {
    [v5 execute];
    [v5 finalize];
    v8 = v4;
    v3 = sub_1D3146948(v8);
  }

  v9 = v3;
  result._preparedStatement = v7;
  result._db = v6;
  result.super.isa = v9;
  return result;
}

unint64_t sub_1D31467C4()
{
  result = qword_1EC75C490;
  if (!qword_1EC75C490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C490);
  }

  return result;
}

id sub_1D3146948(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D32770B0();

  v8[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() preparedStatementForTrace:a1 statement:v2 outError:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1D3276BF0();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t sub_1D3146A3C()
{
  result = qword_1EC75C498;
  if (!qword_1EC75C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C498);
  }

  return result;
}

uint64_t _s19MapMatcherTestEventC9EventTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19MapMatcherTestEventC9EventTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D3146C24()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3146C80(void *a1, unsigned int a2, unsigned int a3, float a4, float a5, double a6)
{
  v7 = v6;
  *(v6 + 16) = a2;
  *(v6 + 20) = a4;
  *(v6 + 24) = a3;
  *(v6 + 28) = a5;
  v10 = a2 | (LODWORD(a4) << 32);
  [a1 distanceBetweenRouteCoordinate:v10 andRouteCoordinate:a3 | (LODWORD(a5) << 32)];
  v12 = v11 * 0.5;
  v13 = MEMORY[0x1D38B43F0]([a1 pointAtRouteCoordinate_]);
  *(v6 + 56) = &type metadata for RoutePartitionTree.CircleBounds;
  *(v6 + 64) = &off_1F4EB1D28;
  *(v6 + 32) = v13;
  *(v6 + 40) = v14;
  *(v6 + 48) = v12;
  if (v12 <= a6)
  {

    v23 = 0;
    v31 = 0;
  }

  else
  {
    v15 = a1;
    v16 = sub_1D32774D0();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    type metadata accessor for RoutePartitionTree.Partition();
    swift_allocObject();
    v23 = sub_1D3146C80(v15, v16, v20, v18, v22, a6);
    v24 = sub_1D32774D0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    swift_allocObject();
    v31 = sub_1D3146C80(v15, v24, v28, v26, v30, a6);
  }

  *(v7 + 72) = v23;
  *(v7 + 80) = v31;
  return v7;
}

uint64_t sub_1D3146E64(double a1, double a2, double a3)
{
  v7 = __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  v8 = v7[2];
  if (GEOCoordinateGetDistance(*v7, v7[1], a1, a2) >= v8 + a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 72))
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);

    v12 = sub_1D3146E64(v11, a1, a2, a3);
    v13 = sub_1D3146E64(v12, a1, a2, a3);
    sub_1D31401EC(v13);

    return v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C378, &qword_1D328AE78);
    result = swift_allocObject();
    *(result + 16) = xmmword_1D328AC00;
    v15 = *(v3 + 20);
    v16 = *(v3 + 24);
    v17 = *(v3 + 28);
    *(result + 32) = *(v3 + 16);
    *(result + 36) = v15;
    *(result + 40) = v16;
    *(result + 44) = v17;
  }

  return result;
}

uint64_t sub_1D3146F9C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v1 = v0[10];
  sub_1D314720C(v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3147000(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = result + 56;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = v2 + 1;
      if ((v2 + 1) < v1)
      {
        break;
      }

LABEL_12:
      if (v2 >= v1)
      {
        goto LABEL_26;
      }

      v13 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        goto LABEL_27;
      }

      if (v13 >= v1)
      {
        goto LABEL_28;
      }

      v14 = (v3 + 16 * v2);
      v15 = *v14;
      v16 = v14[1];
      v17 = v3 + 16 * v13;
      v18 = *(v17 + 8);
      v19 = *(v17 + 12);
      v20 = sub_1D32774D0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D31411A0(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v28 = *(v5 + 16);
      v27 = *(v5 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1D31411A0((v27 > 1), v28 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v28 + 1;
      v29 = (v5 + 16 * v28);
      v29[8] = v20;
      v29[9] = v22;
      v29[10] = v24;
      v29[11] = v26;
      v2 = v6;
      if (v6 >= v1)
      {
        return v5;
      }
    }

    v7 = (v4 + 16 * v2);
    while (v2 < v1)
    {
      if (v6 >= v1)
      {
        goto LABEL_24;
      }

      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v10 = *v7;
      result = GEOPolylineCoordinateRangeIntersectsRange();
      if ((result & 1) == 0)
      {
        result = GEOPolylineCoordinateEqualEps();
        if (!result)
        {
          goto LABEL_12;
        }
      }

      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      ++v6;
      v7 += 2;
      if (v12 >= v1)
      {
        v6 = v1;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D314720C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D314725C(uint64_t a1)
{
  v3 = OBJC_IVAR___MNMapMatcher__routeMatchedLocationHistory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v26 = *(v1 + v3);
    }

    v5 = sub_1D3277660();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &OBJC_IVAR___MNMapMatcher__route;
  v7 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (v5 < 1)
  {
    LODWORD(v14) = *MEMORY[0x1E69A1928];
    v15 = *(MEMORY[0x1E69A1928] + 4);
    goto LABEL_12;
  }

  v8 = *(v1 + OBJC_IVAR___MNMapMatcher__route);
  v9 = *(v1 + v3);
  if (v9 >> 62)
  {
    goto LABEL_49;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);

      goto LABEL_9;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_42;
  }

  while (1)
  {

    v10 = MEMORY[0x1D38B45D0](0, v9);

LABEL_9:
    v11 = *(v10 + *v7);

    if (!v11)
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 16);

    v14 = [v8 routeCoordinateForDistance:v13 beforeRouteCoordinate:100.0];
    v15 = HIDWORD(v14);
LABEL_12:
    v16 = v14 | (v15 << 32);
    v17 = [*(v1 + *v6) routeCoordinateForDistance:v16 afterRouteCoordinate:200.0];
    v18 = sub_1D318011C();
    v19 = [v18 matchedSegmentsFromStart:v16 toEnd:v17];

    if (v19)
    {
      sub_1D3126084(0, &qword_1EC75C4A0, 0x1E69A2238);
      v20 = sub_1D32771A0();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute;
    v22 = *(v1 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute);
    *(v1 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute) = v20;

    v23 = *(v1 + v3);
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v27 = *(v1 + v3);
      }

      if (!sub_1D3277660())
      {
        goto LABEL_27;
      }
    }

    else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {

      v24 = MEMORY[0x1D38B45D0](0, v23);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v24 = *(v23 + 32);
    }

    v25 = *(v24 + *v7);

LABEL_27:
    sub_1D31476F8(a1);
    a1 = v28;

    if (!a1)
    {
      break;
    }

    v8 = *(a1 + 16);
    v29 = *(a1 + 20);
    v1 = *(v1 + v21);
    if (v1 >> 62)
    {
      v9 = sub_1D3277660();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
LABEL_40:

      v7 = 0;
LABEL_45:
      v35 = *(a1 + 72);
      *(a1 + 72) = v7;
      goto LABEL_46;
    }

    v30 = 0;
    v3 = v1 & 0xC000000000000001;
    v6 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v31 = MEMORY[0x1D38B45D0](v30, v1);
      }

      else
      {
        if (v30 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v31 = *(v1 + 8 * v30 + 32);
      }

      v7 = v31;
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      [v31 range];
      if (sub_1D3277590())
      {

        goto LABEL_45;
      }

      ++v30;
      if (v32 == v9)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    if (sub_1D3277660())
    {
      goto LABEL_6;
    }

LABEL_50:
    __break(1u);
  }

  if (qword_1EC75C008 != -1)
  {
    goto LABEL_56;
  }

LABEL_42:
  v33 = sub_1D3276F80();
  __swift_project_value_buffer(v33, qword_1EC760888);
  v34 = sub_1D3277390();
  v35 = sub_1D3276F60();
  if (os_log_type_enabled(v35, v34))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D311E000, v35, v34, "Closest route match is nil", v36, 2u);
    MEMORY[0x1D38B6000](v36, -1, -1);
  }

LABEL_46:

  return a1;
}

void sub_1D31476F8(double *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4A8, &qword_1D328B508);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v103 - v10;
  v12 = *MEMORY[0x1E69A1918];
  v13 = *(MEMORY[0x1E69A1918] + 4);
  _s10RouteMatchCMa();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 20) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = xmmword_1D328B4F0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v112 = v14;
  *(v14 + 72) = 0;
  v15 = MEMORY[0x1D38B43F0](a1[2], a1[3], a1[4]);
  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:1 isUserLocation:{v15, v16}];
  v19 = objc_opt_self();
  v20 = [v19 miles];
  sub_1D3126084(0, &qword_1EC75C4B0, 0x1E696B058);
  sub_1D32769E0();
  v21 = sub_1D317FD78();
  v22 = [v19 meters];
  v108 = v11;
  v23 = v18;
  sub_1D3276A00();

  sub_1D32769F0();
  v25 = v24;
  v26 = *(v5 + 8);
  v110 = v4;
  v109 = v5 + 8;
  v107 = v26;
  v26(v9, v4);
  v27 = *(v21 + 16);
  v124 = v15;
  v123 = v17;
  v28 = sub_1D3146E64(v15, v17, v25);
  v29 = sub_1D3147000(v28);

  v30 = *(v2 + OBJC_IVAR___MNMapMatcher__route);

  v106 = v29;
  sub_1D3143E0C(v30, v29, &v130);
  v31 = v131;
  v135 = v131;
  v33 = v133;
  v32 = v134;
  v128 = v132;
  v126 = *(v131 + 16);
  v34 = OBJC_IVAR___MNMapMatcher__locationHistory;
  v105 = v130;
  sub_1D3148134(&v135, v129);
  v104 = v32;
  v116 = v2;
  v115 = v34;
  v35 = *&v32;
  v36 = v30;
  swift_beginAccess();
  v37 = 0;
  v125 = v31;
  v122 = v31 + 32;
  Distance = 1.79769313e308;
  v39 = 0.5;
  v40 = &selRef_dateWithTimeInterval_sinceDate_;
  v41 = -1.0;
  v114 = a1;
  v113 = v23;
  v117 = v30;
  v118 = 0x3EA0C6F7A0B5ED8DLL;
LABEL_2:
  v111 = v37;
  v120 = v41;
  v121 = Distance;
  v119 = Distance * v39;
  while ((v128 & 1) == 0 || !__OFADD__(v33++, 1))
  {
    if (v33 >= v126)
    {
      v107(v108, v110);
      v102 = v105;

      sub_1D31481A4(&v135);

      sub_1D31481A4(&v135);
      return;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if (v33 >= *(v125 + 16))
    {
LABEL_63:
      __break(1u);
      break;
    }

    v43 = (v122 + 16 * v33);
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = v43[2];
    v47 = v43[3];
    if (v35 == 0.0)
    {
      v37 = 0;
      v128 = 1;
    }

    else
    {
      v37 = *&v35;
      [v37 endRouteCoordinate];
      if (sub_1D3277490())
      {
        while (1)
        {
          v48 = [v37 v40[281]];
          v49 = v37;

          v37 = v48;
          if (!v37)
          {
            break;
          }

          [v37 endRouteCoordinate];
          if ((sub_1D3277490() & 1) == 0)
          {
            v50 = *&v37;
            v36 = v117;
            goto LABEL_17;
          }
        }

        v35 = 0.0;
        v128 = 1;
        v36 = v117;
      }

      else
      {
        v50 = v35;
LABEL_17:
        [v37 startRouteCoordinate];
        [v37 endRouteCoordinate];
        v51 = sub_1D32774D0();
        v53 = v52;
        v55 = v54;
        v57 = v56;
        if (sub_1D32774B0())
        {
          v128 = sub_1D32774A0();
          v35 = COERCE_DOUBLE([v37 getNextStep]);

          v40 = &selRef_dateWithTimeInterval_sinceDate_;
          v46 = v55;
          v47 = v57;
        }

        else
        {
          if (sub_1D32774C0())
          {
            v44 = v51;
            v45 = v53;
          }

          v128 = 1;
          v35 = v50;
          v40 = &selRef_dateWithTimeInterval_sinceDate_;
        }
      }
    }

    [v36 pointAtRouteCoordinate_];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = [v36 pointAtRouteCoordinate_];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v127 = v61;
    MEMORY[0x1D38B43F0](v64, v59, v61, v63);
    MEMORY[0x1D38B43F0](v66, v68, v70);
    GEOClosestCoordinateOnLineSegmentFromCoordinate();
    v72 = v71;
    v74 = v73;
    if ((sub_1D32774A0() & 1) == 0)
    {
      if (!v23)
      {
        goto LABEL_65;
      }

      [v23 coordinate];
      Distance = GEOCoordinateGetDistance(v75, v76, v72, v74);
      sub_1D32775B0();
      v77 = sub_1D3277570();
      v79 = v78;
      [v36 courseAtRouteCoordinateIndex_];
      v41 = v80;
      v81 = a1[14];
      if (a1[13] < 0.0)
      {
LABEL_26:
        v82 = v121;
        goto LABEL_29;
      }

      v82 = v121;
      if (v81 < 0.0 || v81 == 180.0)
      {
        v127 = v35;
        v90 = *(v116 + v115);
        if (v90 >> 62)
        {
          if (v90 < 0)
          {
            v97 = *(v116 + v115);
          }

          v91 = sub_1D3277660();
        }

        else
        {
          v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v91)
        {
          v92 = 0;
          do
          {
            if ((v90 & 0xC000000000000001) != 0)
            {
              v93 = MEMORY[0x1D38B45D0](v92, v90);
              v94 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v92 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v93 = *(v90 + 8 * v92 + 32);

              v94 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }
            }

            v95 = *(v93 + 112);
            v96 = v95 < 0.0 || v95 == 180.0;
            if (!v96)
            {

              v81 = *(v93 + 112);

              a1 = v114;
              v23 = v113;
              v36 = v117;
              v35 = v127;
              v40 = &selRef_dateWithTimeInterval_sinceDate_;
              goto LABEL_26;
            }

            ++v92;
            v96 = v94 == v91;
            v40 = &selRef_dateWithTimeInterval_sinceDate_;
          }

          while (!v96);
        }

        a1 = v114;
        v23 = v113;
        v36 = v117;
        v35 = v127;
        if (Distance < v121)
        {
          if (v120 == -1.0)
          {
            goto LABEL_58;
          }

          v81 = 180.0;
LABEL_31:
          v83 = *(a1 + 13);
          GEOAngleDifferenceDegrees();
          if (fabs(v84) <= v81 || (v85 = *(a1 + 13), GEOAngleDifferenceDegrees(), v87 = fabs(v86), v88 = *(a1 + 13), GEOAngleDifferenceDegrees(), v87 <= fabs(v89)))
          {
LABEL_58:
            v98 = v112;
            *(v112 + 16) = v77;
            *(v98 + 20) = v79;
            sub_1D3277500();
            *(v98 + 32) = v99;
            *(v98 + 40) = v100;
            *(v98 + 48) = v101;
            *(v98 + 56) = v41;
            *(v98 + 64) = Distance;
            *(v98 + 24) = v37;

            v39 = 0.5;
            goto LABEL_2;
          }
        }
      }

      else
      {
LABEL_29:
        if (Distance < v82)
        {
          if (v120 == -1.0)
          {
            goto LABEL_58;
          }

          goto LABEL_31;
        }
      }

      if (Distance < v119)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1D3148134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4B8, &unk_1D328B510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D31481A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4B8, &unk_1D328B510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3148240(unsigned __int8 a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4A8, &qword_1D328B508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = objc_opt_self();
  if (((a3 > 0.0) & a1) != 0)
  {
    v14 = &selRef_miles;
  }

  else
  {
    v14 = &selRef_kilometers;
  }

  v15 = [v13 *v14];
  sub_1D314843C();
  v16 = v15;
  sub_1D32769E0();
  v17 = [objc_opt_self() meters];
  sub_1D3276A00();

  sub_1D32769F0();
  v18 = *(v6 + 8);
  v18(v10, v5);
  return (v18)(v12, v5);
}

unint64_t sub_1D314843C()
{
  result = qword_1EC75C4B0;
  if (!qword_1EC75C4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C4B0);
  }

  return result;
}

uint64_t MNRemainingTimeUpdateReason.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6863206574756F52;
      case 3:
        return 0x63206574756E694DLL;
      case 4:
        return 0xD000000000000011;
    }
  }

  result = sub_1D3277900();
  __break(1u);
  return result;
}

unint64_t sub_1D31485A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D314A54C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MNRemainingTimeUpdater.init(navigationSessionState:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute] = 0;
  v3 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  v4 = sub_1D3276D30();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__stabilizeETA] = GEOConfigGetBOOL();
  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  swift_dynamicCast();
  *&v1[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState] = v8;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MNRemainingTimeUpdater(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1D31295E0();
  sub_1D3124D50(a1, 0);

  return v5;
}

id MNRemainingTimeUpdater.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MNRemainingTimeUpdater(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3148A2C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D3148A8C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D3148B24;
}

void sub_1D3148B24(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D3148CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  return sub_1D312601C(v1 + v3, a1, &qword_1EC75C4F0, &qword_1D328B580);
}

uint64_t sub_1D3148EA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D3128E74(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D3148F00(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1D312601C(a1, &v11 - v6, &qword_1EC75C4F0, &qword_1D328B580);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D3128E74(v7, v8 + v9);
  return swift_endAccess();
}

id MNRemainingTimeUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D31490EC(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
  v8 = sub_1D3276D30();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher) = 0;
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter) = 0;
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatter) = 0;
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatterWithSeconds) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__stabilizeETA) = a3;
  *(v3 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__enableLogging) = GEOConfigGetBOOL();
  return v3;
}

void sub_1D31491D4(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v134 = a3;
  v135 = a5;
  v137 = a1;
  v138 = a2;
  v9 = sub_1D3276DC0();
  v143 = *(v9 - 8);
  v144 = v9;
  v10 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C560, &qword_1D328B710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v136 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C568, &qword_1D328B718);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v122 - v17;
  v139 = sub_1D3276B00();
  v141 = *(v139 - 8);
  v19 = *(v141 + 64);
  v20 = MEMORY[0x1EEE9AC00](v139);
  v133 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v122 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v140 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v122 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v122 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v122 - v34;
  v146 = v6;
  v36 = [*(v6 + 16) route];
  v147 = 34;
  v148 = 0xE100000000000000;
  v145 = v36;
  v37 = [v36 name];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1D32770C0();
    v41 = v40;
  }

  else
  {
    v41 = 0xE900000000000029;
    v39 = 0x656D616E206F6E28;
  }

  MEMORY[0x1D38B3FE0](v39, v41);

  MEMORY[0x1D38B3FE0](2629666, 0xE300000000000000);
  v42 = [v145 uniqueRouteID];
  if (v42)
  {
    v43 = v42;
    sub_1D3276D60();

    v44 = sub_1D3276D70();
    (*(*(v44 - 8) + 56))(v35, 0, 1, v44);
  }

  else
  {
    v45 = sub_1D3276D70();
    (*(*(v45 - 8) + 56))(v35, 1, 1, v45);
  }

  v46 = v146;
  v47 = sub_1D32770E0();
  MEMORY[0x1D38B3FE0](v47);

  v126 = v147;
  v131 = v148;
  v147 = 0;
  v148 = 0xE000000000000000;
  v48 = sub_1D314A2C4();
  v49 = sub_1D3276AC0();
  v50 = [v48 stringFromDateComponents_];

  if (!v50)
  {
    __break(1u);
    goto LABEL_26;
  }

  v51 = sub_1D32770C0();
  v53 = v52;

  MEMORY[0x1D38B3FE0](v51, v53);

  MEMORY[0x1D38B3FE0](2128928, 0xE300000000000000);
  v54 = sub_1D312B9CC();
  v55 = sub_1D3276CD0();
  v56 = [v54 stringFromDate_];

  v57 = sub_1D32770C0();
  v58 = v46;
  v60 = v59;

  MEMORY[0x1D38B3FE0](v57, v60);

  v125 = v147;
  v138 = v148;
  v61 = sub_1D3276D30();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(a4, 1, v61) == 1)
  {
    v64 = 0xE400000000000000;
    v65 = 1701736302;
  }

  else
  {
    v66 = v27;
    v67 = *(v58 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
    sub_1D312601C(a4, v31, &qword_1EC75C4F0, &qword_1D328B580);
    if (v63(v31, 1, v61) == 1)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v68 = v67;
    v69 = sub_1D3276CD0();
    (*(v62 + 8))(v31, v61);
    v70 = [v68 stringFromDate_];

    v65 = sub_1D32770C0();
    v64 = v71;

    v27 = v66;
  }

  (*(v143 + 56))(v18, 1, 1, v144);
  v72 = sub_1D3276E00();
  (*(*(v72 - 8) + 56))(v136, 1, 1, v72);
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a6 < 9.22337204e18)
  {
    v124 = v65;
    v130 = v64;
    sub_1D3276AF0();
    v147 = 0;
    v148 = 0xE000000000000000;
    v73 = sub_1D314A2D4();
    v137 = v27;
    v74 = sub_1D3276AC0();
    v75 = [v73 stringFromDateComponents_];

    if (v75)
    {
      v76 = sub_1D32770C0();
      v78 = v77;

      MEMORY[0x1D38B3FE0](v76, v78);

      v123 = v147;
      v127 = v148;
      sub_1D3276DA0();
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C578, &qword_1D328B728);
      v79 = sub_1D3276DB0();
      v80 = *(v79 - 8);
      v81 = *(v80 + 72);
      v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1D328B560;
      v129 = *MEMORY[0x1E6969A58];
      v84 = *(v80 + 104);
      v84(v83 + v82);
      v85 = *MEMORY[0x1E6969A88];
      (v84)(v83 + v82 + v81, v85, v79);
      v136 = sub_1D31277D8(v83);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1D328B570;
      (v84)(v86 + v82, *MEMORY[0x1E6969A68], v79);
      (v84)(v86 + v82 + v81, *MEMORY[0x1E6969A78], v79);
      (v84)(v86 + v82 + 2 * v81, *MEMORY[0x1E6969A48], v79);
      (v84)(v86 + v82 + 3 * v81, v129, v79);
      (v84)(v86 + v82 + 4 * v81, v85, v79);
      sub_1D31277D8(v86);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v87 = v132;
      v88 = v142;
      sub_1D3276D90();
      v89 = v133;
      sub_1D3276D90();

      sub_1D3276D80();

      a4 = v141 + 8;
      v58 = *(v141 + 8);
      v90 = v89;
      v18 = v139;
      v58(v90, v139);
      v58(v87, v18);
      (*(v143 + 8))(v88, v144);
      v147 = 0;
      v148 = 0xE000000000000000;
      v91 = v146;
      v92 = *(v146 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatter);
      v93 = sub_1D3276AC0();
      v94 = [v92 stringFromDateComponents_];

      if (v94)
      {
        v95 = sub_1D32770C0();
        v97 = v96;

        MEMORY[0x1D38B3FE0](v95, v97);

        MEMORY[0x1D38B3FE0](2128928, 0xE300000000000000);
        v98 = *(v91 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
        v99 = sub_1D3276CD0();
        v100 = [v98 stringFromDate_];

        v101 = sub_1D32770C0();
        v103 = v102;

        MEMORY[0x1D38B3FE0](v101, v103);

        v65 = v148;
        v146 = v147;
        if (qword_1EC75BE40 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_18:
  v104 = sub_1D3276F80();
  __swift_project_value_buffer(v104, qword_1EC760710);
  v105 = v138;

  v106 = v131;

  v107 = v130;

  sub_1D314BF44();
  sub_1D314BF44();
  v108 = v127;

  v109 = sub_1D3276F60();
  v110 = sub_1D3277370();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v144 = v58;
    v112 = v111;
    v113 = swift_slowAlloc();
    v141 = a4;
    v114 = v113;
    v147 = v113;
    *v112 = 136316674;
    v115 = sub_1D312BA30(v125, v105, &v147);

    *(v112 + 4) = v115;
    *(v112 + 12) = 2080;
    v116 = sub_1D312BA30(v126, v106, &v147);

    *(v112 + 14) = v116;
    *(v112 + 22) = 2080;
    v117 = sub_1D312BA30(v124, v107, &v147);

    *(v112 + 24) = v117;
    *(v112 + 32) = 1040;
    *(v112 + 34) = 1;
    *(v112 + 38) = 2048;
    *(v112 + 40) = a6;
    *(v112 + 48) = 2080;
    v118 = sub_1D312BA30(v123, v108, &v147);

    *(v112 + 50) = v118;
    *(v112 + 58) = 2080;
    v119 = sub_1D312BA30(v146, v65, &v147);

    *(v112 + 60) = v119;
    _os_log_impl(&dword_1D311E000, v109, v110, "Showing [%s] for route %s\n    Target: %s, raw remaining time: %.*f seconds (%s) => [%s]", v112, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v114, -1, -1);
    MEMORY[0x1D38B6000](v112, -1, -1);

    v120 = v139;
    v121 = v144;
    v144(v140, v139);
    v121(v137, v120);
  }

  else
  {

    v58(v140, v18);
    v58(v137, v18);
  }
}

void sub_1D314A110(uint64_t a1)
{
  v2 = sub_1D3276E00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1D32770B0();
  [v7 setDateFormat_];

  v9 = [*(a1 + 16) route];
  v10 = [v9 destination];

  if (v10)
  {
    v11 = [v10 timezone];

    if (v11)
    {
      sub_1D3276DE0();

      v12 = sub_1D3276DD0();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v12 = 0;
    }

    [v7 setTimeZone_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D314A2E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v7 setAllowedUnits_];
    [v7 setUnitsStyle_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

uint64_t sub_1D314A388()
{
  sub_1D3125FBC(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate, &qword_1EC75C4F0, &qword_1D328B580);

  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D314A444(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D38B45D0](a2, a3);
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
    *v3 = v5;
    return sub_1D314A4C4;
  }

  __break(1u);
  return result;
}

void (*sub_1D314A4CC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B45D0](a2, a3);
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
    return sub_1D314A9D8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D314A54C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D314A580()
{
  result = qword_1EC75C4F8;
  if (!qword_1EC75C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C4F8);
  }

  return result;
}

void sub_1D314A5F8()
{
  sub_1D314A874();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D314A874()
{
  if (!qword_1EC75BFC0)
  {
    sub_1D3276D30();
    v0 = sub_1D3277600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC75BFC0);
    }
  }
}

void sub_1D314A8F4()
{
  sub_1D314A874();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D314A9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    if (v2 >= 4)
    {
      v4 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v6 = (v1 + 48);
      v5 = 0.0;
      v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v8 = *v6;
        v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
        v6 += 4;
        v7 -= 4;
      }

      while (v7);
      if (v2 == v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0.0;
    }

    v9 = v2 - v4;
    v10 = (v1 + 8 * v4 + 32);
    do
    {
      v11 = *v10++;
      v5 = v5 + v11;
      --v9;
    }

    while (v9);
LABEL_10:
    v12 = v5 / v2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D314B424(0, v2, 0);
    v13 = v30;
    v14 = *(v30 + 16);
    v15 = v2;
    v16 = v14;
    do
    {
      v17 = *v3;
      v31 = v13;
      v18 = *(v13 + 24);
      v19 = v16 + 1;
      if (v16 >= v18 >> 1)
      {
        sub_1D314B424((v18 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v19;
      *(v13 + 8 * v16 + 32) = (v17 - v12) * (v17 - v12);
      ++v3;
      ++v16;
      --v15;
    }

    while (v15);
    v20 = v2 + v14;
    if (v2 + v14 > 3)
    {
      v21 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = (v13 + 48);
      v22 = 0.0;
      v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v25 = *v23;
        v22 = v22 + *(v23 - 2) + *(v23 - 1) + *v23 + v23[1];
        v23 += 4;
        v24 -= 4;
      }

      while (v24);
      if (v20 == v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v26 = v19 - v21;
    v27 = (v13 + 8 * v21 + 32);
    do
    {
      v28 = *v27++;
      v22 = v22 + v28;
      --v26;
    }

    while (v26);
LABEL_21:

    v29 = v22 / v2 + v0[1];
  }
}

_OWORD *sub_1D314ABD4()
{
  v0[3] = 0u;
  v1 = MEMORY[0x1E69A1918];
  v0[1] = 0u;
  v0[2] = 0u;
  v2 = *v1;
  v3 = v1[1];
  v8 = MEMORY[0x1E69E7CC0];
  *v9 = MEMORY[0x1E69E7CC0];
  *&v9[8] = vdupq_n_s64(0xC066800000000000);
  *&v9[24] = xmmword_1D328B760;
  *&v9[40] = v2;
  *&v9[44] = v3;
  v10[0] = MEMORY[0x1E69E7CC0];
  v10[1] = 0;
  v10[2] = MEMORY[0x1E69E7CC0];
  v11 = *&v9[8];
  v12 = xmmword_1D328B760;
  v13 = v2;
  v14 = v3;
  sub_1D314B39C(&v8, &v7);
  sub_1D314B3D4(v10);
  v4 = *v9;
  v0[4] = v8;
  v0[5] = v4;
  v5 = *&v9[32];
  v0[6] = *&v9[16];
  v0[7] = v5;
  return v0;
}

void sub_1D314AC84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1D38B4860]([v1 muid]);
  }

  else
  {
    if (qword_1EC75C000 != -1)
    {
      swift_once();
    }

    v2 = sub_1D3276F80();
    __swift_project_value_buffer(v2, qword_1EC760870);
    oslog = sub_1D3276F60();
    v3 = sub_1D3277390();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D311E000, oslog, v3, "Tried to hash a MapMatcherConnectivityNode with no road", v4, 2u);
      MEMORY[0x1D38B6000](v4, -1, -1);
    }
  }
}

uint64_t sub_1D314AD9C()
{
  v1 = v0;
  v2 = 0x656D616E206F4ELL;
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1D32776F0();
  v22 = v23[0];
  v3 = *(v0 + 16);
  if (v3 && (v4 = [v3 internalRoadName]) != 0)
  {
    v5 = v4;
    v2 = sub_1D32770C0();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x1D38B3FE0](v2, v7);

  MEMORY[0x1D38B3FE0](10272, 0xE200000000000000);
  v8 = *(v1 + 16);
  if (v8)
  {
    v8 = [v8 featureIndex];
  }

  *&v23[0] = v8;
  v9 = sub_1D3277890();
  MEMORY[0x1D38B3FE0](v9);

  MEMORY[0x1D38B3FE0](0x4449554D207C2029, 0xE900000000000020);
  v10 = *(v1 + 16);
  if (v10)
  {
    v10 = [v10 muid];
  }

  *&v23[0] = v10;
  v11 = sub_1D3277890();
  MEMORY[0x1D38B3FE0](v11);

  MEMORY[0x1D38B3FE0](0x205044207C20, 0xE600000000000000);
  *&v23[0] = *(v1 + 40);
  v12 = sub_1D3277890();
  MEMORY[0x1D38B3FE0](v12);

  MEMORY[0x1D38B3FE0](0x204454207C20, 0xE600000000000000);
  v13 = *(v1 + 48);
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](0x205454207C20, 0xE600000000000000);
  v14 = *(v1 + 56);
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](0x204D53207C20, 0xE600000000000000);
  v15 = *(v1 + 80);
  v23[0] = *(v1 + 64);
  v23[1] = v15;
  v16 = *(v1 + 112);
  v23[2] = *(v1 + 96);
  v23[3] = v16;
  sub_1D314B39C(v23, &v21);
  sub_1D314A9DC();
  sub_1D314B3D4(v23);
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](0x204443207C20, 0xE600000000000000);
  v17 = *(v1 + 80);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 8 * v18 + 24);
  }

  sub_1D3277310();
  return v22;
}

uint64_t sub_1D314B06C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);
  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
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

uint64_t sub_1D314B108(uint64_t *a1, int a2)
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

uint64_t sub_1D314B150(uint64_t result, int a2, int a3)
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

uint64_t sub_1D314B1B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D314B20C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D314B26C()
{
  v1 = *v0;
  sub_1D3277980();
  sub_1D314AC84();
  return sub_1D32779B0();
}

uint64_t sub_1D314B2D4()
{
  v1 = *v0;
  sub_1D3277980();
  sub_1D314AC84();
  return sub_1D32779B0();
}

unint64_t sub_1D314B348()
{
  result = qword_1EC75C5B8;
  if (!qword_1EC75C5B8)
  {
    type metadata accessor for ConnectedSearchNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C5B8);
  }

  return result;
}

char *sub_1D314B404(char *a1, int64_t a2, char a3)
{
  result = sub_1D314B4A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D314B424(char *a1, int64_t a2, char a3)
{
  result = sub_1D314B5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D314B444(char *a1, int64_t a2, char a3)
{
  result = sub_1D314B6C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D314B464(char *a1, int64_t a2, char a3)
{
  result = sub_1D314B7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D314B484(char *a1, int64_t a2, char a3)
{
  result = sub_1D314B8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D314B4A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3F0, &qword_1D328B8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1D314B5C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C388, &qword_1D328B8C0);
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

char *sub_1D314B6C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5C0, &qword_1D328B8C8);
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

char *sub_1D314B7D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C2F8, &unk_1D328B8D0);
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

char *sub_1D314B8E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3D0, &qword_1D328AEB8);
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

uint64_t sub_1D314B9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = [*(a1 + 16) muid];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = [v5 muid];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v3)
  {
    return v8;
  }

  else
  {
    return v5 == 0;
  }
}

double *sub_1D314BA78(double *a1, char a2)
{
  type metadata accessor for ConnectedSearchNode();
  v5 = swift_allocObject();
  sub_1D314ABD4();
  v6 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  if (*(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v7 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v7 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v8 = *(a1 + *v7);
  if (!v8 || (v9 = *(v8 + 72)) == 0)
  {

LABEL_9:
    v10 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
    v11 = v10;
    goto LABEL_10;
  }

  v10 = [v9 road];
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (a2 != 2 && (a2 & 1) != 0)
  {
    v13 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
    v14 = v13;
    if (!v13)
    {
      if (*(a1 + v6))
      {
        v58 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      else
      {
        v58 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
      }

      v59 = *(a1 + *v58);
      if (v59)
      {
        v14 = *(v59 + 72);
        if (v14)
        {
          v14 = [v14 road];
        }
      }

      else
      {
        v14 = 0;
      }
    }

    v15 = *(v5 + 16);
    *(v5 + 16) = v14;
    v16 = v13;
  }

  v17 = *(v5 + 16);
  if (!v17)
  {

LABEL_36:

    return v5;
  }

  v18 = v17;
  if ([v18 coordinateCount] != 1)
  {
    goto LABEL_19;
  }

  v2 = MEMORY[0x1D38B43F0](a1[2], a1[3], a1[4]);
  v20 = v19;
  result = [v18 coordinates3d];
  if (result)
  {
    v22 = MEMORY[0x1D38B43F0](*result, result[1], result[2]);
    Distance = GEOCoordinateGetDistance(v2, v20, v22, v23);
    v61 = Distance;
    if (Distance < INFINITY || Distance > INFINITY)
    {
LABEL_20:
      v25 = 0;
      v26 = 1;
      v63 = 0.0;
      for (i = [v18 coordinateCount]; v26 < i; i = objc_msgSend(v18, sel_coordinateCount, *&v60))
      {
        v33 = [v18 coordinates3d];
        if (v33)
        {
          v34 = *&v33[v25];
          v35 = *&v33[v25 + 8];
          v36 = *&v33[v25 + 16];
          v37 = [v18 coordinates3d];
          if (v37)
          {
            v38 = *&v37[v25 + 24];
            v39 = *&v37[v25 + 32];
            v40 = *&v37[v25 + 40];
            MEMORY[0x1D38B43F0](v34, v35, v36);
            v62 = v39;
            MEMORY[0x1D38B43F0](v38, v39, v40);
            MEMORY[0x1D38B43F0](a1[2], a1[3], a1[4]);
            v41 = GEOClosestCoordinateOnLineSegmentFromCoordinate();
            v43 = v42;
            v45 = v44;
            v46 = MEMORY[0x1D38B43F0](v41, a1[2], a1[3], a1[4]);
            v48 = GEOCoordinateGetDistance(v46, v47, v43, v45);
            if (v48 < v61)
            {
              v49 = MEMORY[0x1D38B43F0](v34, v35, v36);
              v60 = v63 + GEOCoordinateGetDistance(v43, v45, v49, v50);
              v61 = v48;
            }

            v2 = MEMORY[0x1D38B43F0](v34, v35, v36);
            v29 = v28;
            v30 = MEMORY[0x1D38B43F0](v38, v62, v40);
            v63 = v63 + GEOCoordinateGetDistance(v2, v29, v30, v31);
          }
        }

        v25 += 24;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_46:
          swift_once();
          goto LABEL_31;
        }
      }

      [v18 length];
      v2 = v51 - v60;
      if (v51 - v60 >= 0.0)
      {
        goto LABEL_34;
      }

      if (qword_1EC75C000 != -1)
      {
        goto LABEL_46;
      }

LABEL_31:
      v52 = sub_1D3276F80();
      __swift_project_value_buffer(v52, qword_1EC760870);
      v53 = sub_1D3276F60();
      v54 = sub_1D3277390();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1D311E000, v53, v54, "Finding distance from recent location for a road is less than zero.", v55, 2u);
        MEMORY[0x1D38B6000](v55, -1, -1);
      }

LABEL_34:
      *(v5 + 48) = v2;
      sub_1D3148240([v18 speedLimitIsMPH], v2, objc_msgSend(v18, sel_speedLimit, *&v60));
      v57 = v56;

      *(v5 + 56) = v57;
      goto LABEL_36;
    }

LABEL_19:
    v61 = INFINITY;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D314BFF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5C8, &unk_1D328B900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EC75C030 != -1)
  {
    swift_once();
  }

  v13 = sub_1D3276F80();
  __swift_project_value_buffer(v13, qword_1EC7608E8);
  v14 = a1;
  sub_1D314BF44();
  sub_1D314BF44();
  v15 = sub_1D3276F60();
  v16 = sub_1D32773B0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 68157952;
    *(v17 + 4) = 1;
    *(v17 + 8) = 2048;
    [v14 requestTimestamp];
    *(v17 + 10) = v18;
    _os_log_impl(&dword_1D311E000, v15, v16, "Triggering ETA update at time %.*fs.", v17, 0x12u);
    MEMORY[0x1D38B6000](v17, -1, -1);
  }

  sub_1D314C728(v14, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D3125FBC(v7, &qword_1EC75C5C8, &unk_1D328B900);
  }

  sub_1D314CDF0(v7, v12);
  v20 = sub_1D312F05C(v12);
  v21 = v2 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(v2, v20, ObjectType, v22);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1D312EB88(v12);
}

void sub_1D314C334()
{
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC760740);
  v1 = sub_1D3276F60();
  v2 = sub_1D32773B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D311E000, v1, v2, "Starting trace player ETA update requester.", v3, 2u);
    MEMORY[0x1D38B6000](v3, -1, -1);
  }

  if (qword_1EC75C030 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7608E8);
  oslog = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v4, "Starting trace player ETA update requester.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }
}

void sub_1D314C4D8()
{
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC760740);
  oslog = sub_1D3276F60();
  v1 = sub_1D32773B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v1, "Stopping trace player ETA update requester.", v2, 2u);
    MEMORY[0x1D38B6000](v2, -1, -1);
  }
}

uint64_t sub_1D314C5C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1D3276D30() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_1D3276A60() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D314C67C, 0, 0);
}

uint64_t sub_1D314C67C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1D3276D10();
  sub_1D3276A30();
  v4 = sub_1D317EA60(v3, 4, 3u, v2);

  v5 = v0[1];

  return v5(v4);
}

void sub_1D314C728(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D3276D30();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D3276A60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 request];
  v13 = [a1 response];
  if (!v12)
  {
    goto LABEL_16;
  }

  if (!v13)
  {
    v13 = v12;
LABEL_16:

    v33 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
    v34 = *(*(v33 - 8) + 56);

    v34(a2, 1, 1, v33);
    return;
  }

  v64 = v13;
  v14 = v2 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = v8;
    v62 = v7;
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v63 = v12;
    v17(&v66, v2, 6, ObjectType, v15);
    swift_unknownObjectRelease();
    v18 = v67;
    if (v67)
    {
      v19 = v66;
      v20 = v69;
      v21 = v68;
      v22 = [v18 route];
      v23 = [objc_allocWithZone(MEMORY[0x1E69A1C50]) init];
      v24 = [v21 routeMatch];
      if (!v24)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = v24;
        v60 = v23;
        [v23 prepareForRequest:v63 route:v22 routeMatch:v24 targetLegIndex:v20 state:v19];

        v27 = [v21 _navigation_geoLocation];
        v19 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v27 isCurrentLocation:1];

        if (!v19)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v59 = v22;
        v28 = [v22 waypoints];
        if (!v28)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          return;
        }

        v29 = v28;
        v58 = v19;
        sub_1D313D1D4();
        v18 = sub_1D32771A0();

        if (!__OFADD__(v20++, 1))
        {
          v25 = v18 & 0xFFFFFFFFFFFFFF8;
          v19 = (v18 >> 62);
          if (!(v18 >> 62))
          {
            v31 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31 >= v20)
            {
              goto LABEL_12;
            }

            goto LABEL_45;
          }

LABEL_39:
          if (v18 < 0)
          {
            v54 = v18;
          }

          else
          {
            v54 = v25;
          }

          v57 = v54;
          v55 = sub_1D3277660();
          if (v55 < v20)
          {
            goto LABEL_53;
          }

          v31 = v55;
          if (sub_1D3277660() >= v20)
          {
LABEL_12:
            if ((v20 & 0x8000000000000000) == 0)
            {
              if (v19)
              {
                v32 = sub_1D3277660();
              }

              else
              {
                v32 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v32 >= v31)
              {
                v57 = v21;
                if ((v31 & 0x8000000000000000) == 0)
                {
                  if ((v18 & 0xC000000000000001) == 0 || v20 == v31)
                  {

                    goto LABEL_33;
                  }

                  if (v20 < v31)
                  {

                    v38 = v20;
                    do
                    {
                      v39 = v38 + 1;
                      sub_1D3277700();
                      v38 = v39;
                    }

                    while (v31 != v39);
LABEL_33:

                    if (v19)
                    {
                      sub_1D32777E0();
                      v56 = v41;
                      v20 = v42;
                      v40 = v43;
                    }

                    else
                    {
                      v56 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
                      v40 = (2 * v31) | 1;
                    }

                    v44 = v57;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
                    v45 = swift_allocObject();
                    *(v45 + 16) = xmmword_1D328B8F0;
                    v46 = v58;
                    *(v45 + 32) = v58;
                    v65 = v45;
                    v47 = v46;
                    v48 = swift_unknownObjectRetain();
                    sub_1D314263C(v48, v56, v20, v40);
                    swift_unknownObjectRelease();
                    v49 = v65;
                    v50 = v63;
                    v51 = v60;
                    sub_1D3276D10();
                    sub_1D3276A30();

                    swift_unknownObjectRelease();
                    sub_1D3125FBC(&v66, &qword_1EC75C5D8, &qword_1D328B950);

                    *a2 = 6;
                    v52 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
                    (*(v61 + 32))(&a2[v52[5]], v11, v62);
                    v53 = &a2[v52[6]];
                    *v53 = 6;
                    *(v53 + 1) = v51;
                    *(v53 + 2) = v49;
                    *(v53 + 3) = v12;
                    *&a2[v52[7]] = v64;
                    *&a2[v52[8]] = 0;
                    (*(*(v52 - 1) + 56))(a2, 0, 1, v52);
                    return;
                  }

                  goto LABEL_49;
                }

LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      __break(1u);
      goto LABEL_39;
    }
  }

  else
  {
    v35 = v12;
  }

  v36 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v36 - 8) + 56))(a2, 1, 1, v36);

  v37 = v64;
}

id TracePlayerETAUpdateRequester.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TracePlayerETAUpdateRequester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D314CDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D314CEE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC75C010 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  v3 = __swift_project_value_buffer(v2, qword_1EC7608A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D314CF88(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1D3276D70();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D314D048, 0, 0);
}

id sub_1D314D048()
{
  receiver = v0[2].receiver;
  v2 = *(v0[2].super_class + OBJC_IVAR___MNMapMatcher__route);
  v3 = type metadata accessor for MapMatchingResult();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___MNMapMatchingResult_route] = v2;
  v5 = v2;
  v6 = receiver;
  result = [v5 uniqueRouteID];
  if (result)
  {
    v8 = result;
    super_class = v0[3].super_class;
    v9 = v0[4].receiver;
    v11 = v0[3].receiver;
    v12 = v0[2].receiver;
    sub_1D3276D60();

    (*(super_class + 4))(&v4[OBJC_IVAR___MNMapMatchingResult_routeID], v9, v11);
    *&v4[OBJC_IVAR___MNMapMatchingResult_location] = v12;
    v4[OBJC_IVAR___MNMapMatchingResult_matchType] = 0;
    v0[1].receiver = v4;
    v0[1].super_class = v3;
    v13 = objc_msgSendSuper2(v0 + 1, sel_init);

    v14 = v0->super_class;

    return v14(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D314D1B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapMatcher_Cycling();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D314D22C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v191 = a4;
  v10 = sub_1D3276D30();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v183 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v170 - v14;
  v196 = a2;
  v15 = *MEMORY[0x1E69A1918];
  LODWORD(v6) = *(MEMORY[0x1E69A1918] + 4);
  v16 = *(a1 + 120);
  v185 = *(a1 + 124);
  v171 = a3 + 32;
  v181 = (v17 + 16);
  v180 = (v17 + 8);

  v184 = 0;
  v192 = a3;
  v172 = a3 + 40;
  v19 = 0.0;
  v20 = 1;
  v21 = 1.79769313e308;
  v22 = -180.0;
  v193 = -180.0;
  v194 = 1.79769313e308;
  v23 = -180.0;
  v24 = -180.0;
  v25 = 1;
  v173 = 1;
  v26 = 1;
  v187 = a1;
  while (1)
  {
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v28 = *&a2;
    }

    else
    {
      *&v28 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v179 = v28;
    v29 = (a2 >> 62);
    if (a2 >> 62)
    {
      v116 = v26;
      v30 = sub_1D3277660();
      v26 = v116;
      if (v30 < 1)
      {
LABEL_225:
        LODWORD(v37) = v15;
        v45 = LODWORD(v6);
        goto LABEL_150;
      }
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 < 1)
      {
        goto LABEL_225;
      }
    }

    v31 = *(v192 + 16);
    if (v26 >= v31)
    {
      LODWORD(v37) = v15;
      v45 = LODWORD(v6);
      v25 = v26;
LABEL_150:
      v117 = *(v192 + 16);
      v6 = v193;
      LODWORD(v190) = v45;
      if (v25 < v117)
      {
LABEL_211:
        if (v29)
        {
          v153 = sub_1D3277660();
        }

        else
        {
          v153 = *(v27 + 16);
        }

        v144 = v184;
        if (!v153)
        {
          v4 = v23;
          v154 = v23;
          v23 = v21;
          v21 = GEOCoordinateGet3DDistance(v154, v24, v194, v22, v6, v21);
          if (qword_1EC75C000 != -1)
          {
            goto LABEL_257;
          }

          goto LABEL_217;
        }

        goto LABEL_224;
      }

      v175 = v16;
      if (v29)
      {
        v30 = sub_1D3277660();
        v118 = v30;
      }

      else
      {
        v118 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v188 = v19;
      LODWORD(v189) = v37;
      if (v118)
      {
        if (v118 < 1)
        {
          __break(1u);
          goto LABEL_259;
        }

        v119 = v6;
        v120 = v23;
        v121 = 0;
        if (v191)
        {
          v122 = 64;
        }

        else
        {
          v122 = 40;
        }

        if (v191)
        {
          v123 = 72;
        }

        else
        {
          v123 = 48;
        }

        if (v191)
        {
          v124 = 80;
        }

        else
        {
          v124 = 56;
        }

        v125 = 0.0;
        v126 = v21;
        v127 = v22;
        v19 = v126;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v128 = MEMORY[0x1D38B45D0](v121, a2);
          }

          else
          {
            v128 = *(a2 + 8 * v121 + 32);
          }

          ++v121;
          v125 = v125 + GEOCoordinateGet3DDistance(v127, v119, v126, *(v128 + v122), *(v128 + v123), *(v128 + v124));
          v127 = *(v128 + v122);
          v119 = *(v128 + v123);
          v126 = *(v128 + v124);
        }

        while (v118 != v121);
      }

      else
      {
        v120 = v23;
        v19 = v21;
        v125 = 0.0;
      }

      a1 = v187;
      *(v187 + 72) = v125;
      v129 = v22;
      v130 = v193;
      v18.n128_f64[0] = v194;
      v131 = v19;
      v23 = v120;
      v132 = v175;
      if (v191)
      {
        if (!v184)
        {
LABEL_270:
          __break(1u);
          goto LABEL_271;
        }

        v129 = v184[8];
        v130 = v184[9];
        v131 = v184[10];
      }

      *(a1 + 88) = v129;
      *(a1 + 96) = v130;
      *(a1 + 104) = v131;
      MEMORY[0x1D38B43F0](v120, v24, v18);
      v6 = v193;
      MEMORY[0x1D38B43F0](v22, v193, v19);
      GEOBearingFromCoordinateToCoordinate();
      *(a1 + 112) = v133;
      *(a1 + 120) = v132;
      *(a1 + 124) = v185;
      if ((v191 & 1) == 0)
      {
        if (v29)
        {
          v30 = sub_1D3277660();
        }

        else
        {
          v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v30)
        {
          v85 = __OFSUB__(v30--, 1);
          if (!v85)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v140 = MEMORY[0x1D38B45D0](v30, a2);
            }

            else
            {
              if (v30 < 0)
              {
                goto LABEL_266;
              }

              if (v30 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_268;
              }

              v139 = *(a2 + 8 * v30 + 32);
            }

            v136 = (v140 + 40);
            v137 = (v140 + 48);
            v138 = (v140 + 56);
LABEL_195:
            v4 = *v137;
            v141 = *v136;
            v5 = *v138;

            v21 = GEOCoordinateGet3DDistance(v141, v4, v5, v22, v6, v19);
            v20 = *(a1 + 64);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a1 + 64) = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_250;
            }

            goto LABEL_196;
          }

          goto LABEL_262;
        }

        goto LABEL_260;
      }

      if (v29)
      {
        v30 = sub_1D3277660();
      }

      else
      {
        v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30)
      {
        v85 = __OFSUB__(v30--, 1);
        if (!v85)
        {
          if ((a2 & 0xC000000000000001) == 0)
          {
            if ((v30 & 0x8000000000000000) == 0)
            {
              if (v30 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v134 = *(a2 + 8 * v30 + 32);

LABEL_186:
                v136 = (v135 + 64);
                v137 = (v135 + 72);
                v138 = (v135 + 80);
                goto LABEL_195;
              }

              goto LABEL_267;
            }

            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
            goto LABEL_270;
          }

LABEL_263:
          v135 = MEMORY[0x1D38B45D0](v30, a2);
          goto LABEL_186;
        }

        goto LABEL_261;
      }

LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

    v174 = v26;
    if ((v20 & 1) == 0)
    {
      *&v4 = v185;
      v20 = v16;
      v37 = v15;
      v25 = v26;
      v38 = v193;
      v39 = v194;
      goto LABEL_23;
    }

    v32 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_238;
    }

    if (v32 >= v31)
    {
      break;
    }

    v25 = v173;
    if (v173 >= v31)
    {
      goto LABEL_239;
    }

    v33 = (v171 + 24 * v32);
    v23 = *v33;
    v24 = v33[1];
    v34 = v33[2];
    v35 = (v171 + 24 * v173);
    v22 = *v35;
    v36 = v35[1];
    v21 = v35[2];
    *&v6 = v185;
    if (v185 == 0.0)
    {
      v20 = (v16 + 1);
      if (v16 == -1)
      {
        goto LABEL_228;
      }

      *&v4 = v185;
      v37 = v16;
      v38 = v35[1];
      v39 = v34;
    }

    else
    {
      v194 = v34;
      v40 = v36;
      if (GEOPolylineCoordinateIsInvalid())
      {
        LODWORD(v4) = LODWORD(v6);
        v20 = v16;
      }

      else
      {
        v195[0] = 0.0;
        v41 = modff(*&v6, v195);
        v42 = v195[0];
        if (v41 > 0.0)
        {
          v20 = (v16 + 1);
        }

        else
        {
          v42 = *&v6;
          v20 = v16;
        }

        *&v4 = v42;
      }

      v37 = v16;
      v38 = v40;
      v39 = v194;
    }

LABEL_23:
    v193 = v38;
    v194 = v39;
    v43 = GEOCoordinateGet3DDistance(v23, v24, v39, v22, v38, v21);
    v5 = v43;
    if (v43 < v19)
    {
      v19 = v19 - v43;
      for (i = (v172 + 24 * v25); ; i += 3)
      {
        v45 = LODWORD(v6);
        v15 = v20;
        LODWORD(v6) = LODWORD(v4);
        *(a1 + 48) = v5 + *(a1 + 48);
        if (v29)
        {
          LODWORD(v4) = v45;
          v30 = sub_1D3277660();
          v45 = LODWORD(v4);
          if (v30 < 1)
          {
LABEL_149:
            ++v25;
            v185 = *&v6;
            LODWORD(v16) = v20;
            goto LABEL_150;
          }
        }

        else
        {
          v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 < 1)
          {
            goto LABEL_149;
          }
        }

        v46 = *(v192 + 16);
        if (v25 + 1 >= v46)
        {
          goto LABEL_149;
        }

        if (v25 >= v46)
        {
          goto LABEL_227;
        }

        v23 = *(i - 1);
        v24 = *i;
        v47 = i[1];
        v22 = i[2];
        v21 = i[4];
        v193 = i[3];
        v194 = v47;
        if (*&v6 == 0.0)
        {
          v20 = (v20 + 1);
          if (v15 == -1)
          {
            goto LABEL_228;
          }

          LODWORD(v4) = LODWORD(v6);
        }

        else
        {
          LODWORD(v4) = LODWORD(v6);
          if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
          {
            v195[0] = 0.0;
            v48 = modff(*&v6, v195);
            v49 = v195[0];
            if (v48 > 0.0)
            {
              v20 = (v20 + 1);
            }

            else
            {
              v49 = *&v6;
              v20 = v20;
            }

            *&v4 = v49;
          }
        }

        v50 = GEOCoordinateGet3DDistance(v23, v24, v194, v22, v193, v21);
        v5 = v50;
        if (v50 >= v19)
        {
          ++v25;
          v185 = *&v4;
          v173 = v25;
          v174 = v25;
          goto LABEL_43;
        }

        v19 = v19 - v50;
        ++v25;
        LODWORD(v37) = v15;
      }
    }

    v185 = *&v4;
    v15 = v37;
LABEL_43:
    v189 = v24;
    v190 = v23;
    v186 = v21;
    v175 = v20;
    if ((v191 & 1) != 0 && v184)
    {
      swift_beginAccess();
      if (v29)
      {
        if (!sub_1D3277660())
        {
          goto LABEL_272;
        }
      }

      else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_272;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v29 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        *&a2 = COERCE_DOUBLE(sub_1D3180EE8(a2));
        v27 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v52 = *(v27 + 16);
      v53 = v184;
      if (!v52)
      {
        goto LABEL_240;
      }

      v54 = v52 - 1;
      a1 = *(v27 + 8 * v54 + 32);
      *(v27 + 16) = v54;
      v196 = a2;
      swift_endAccess();
      sub_1D314420C(v53);
      v56 = v55;
      v58 = v57;
      v60 = v59;

      goto LABEL_64;
    }

    swift_beginAccess();
    if (v29)
    {
      if (!sub_1D3277660())
      {
LABEL_60:
        a1 = 0;
        goto LABEL_61;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    v61 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v29 || (v61 & 1) == 0)
    {
      *&a2 = COERCE_DOUBLE(sub_1D3180EE8(a2));
      v27 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v62 = *(v27 + 16);
    if (!v62)
    {
      goto LABEL_241;
    }

    v63 = v62 - 1;
    a1 = *(v27 + 8 * v63 + 32);
    *(v27 + 16) = v63;
    v196 = a2;
LABEL_61:
    swift_endAccess();

    if (v191)
    {
      if (!a1)
      {
        goto LABEL_269;
      }

      v56 = *(a1 + 40);
      v58 = *(a1 + 48);
      v60 = *(a1 + 56);
LABEL_64:
      *(a1 + 64) = v56;
      *(a1 + 72) = v58;
      v64 = a1;
      *(a1 + 80) = v60;
      goto LABEL_67;
    }

    if (!a1)
    {
      goto LABEL_273;
    }

    v56 = *(a1 + 40);
    v58 = *(a1 + 48);
    v64 = a1;
    v60 = *(a1 + 56);
LABEL_67:
    v188 = v19;
    v65 = v19 / v5;
    v66 = v190 + (v22 - v190) * (v19 / v5);
    v67 = v189 + (v193 - v189) * (v19 / v5);
    v68 = v194 + (v186 - v194) * v65;

    v69 = GEOCoordinateGet3DDistance(v56, v58, v60, v66, v67, v68);
    v70 = v187;
    v71 = *(v187 + 64);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(v70 + 64) = v71;
    if ((v72 & 1) == 0)
    {
      v71 = sub_1D31412B0(0, *(v71 + 2) + 1, 1, v71);
      *(v187 + 64) = v71;
    }

    v74 = *(v71 + 2);
    v73 = *(v71 + 3);
    v19 = v188;
    v24 = v189;
    v23 = v190;
    if (v74 >= v73 >> 1)
    {
      v71 = sub_1D31412B0((v73 > 1), v74 + 1, 1, v71);
    }

    *(v71 + 2) = v74 + 1;
    *&v71[8 * v74 + 32] = v69;
    v75 = v187;
    *(v187 + 64) = v71;
    v5 = *(a1 + 104);
    v4 = MEMORY[0x1D38B43F0](v23, v24, v194);
    MEMORY[0x1D38B43F0](v22, v193, v186);
    GEOBearingFromCoordinateToCoordinate();
    v77 = v76;
    v27 = *(v75 + 80);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v75 + 80) = v27;
    if ((v78 & 1) == 0)
    {
      v27 = sub_1D31412B0(0, *(v27 + 16) + 1, 1, v27);
      *(v187 + 80) = v27;
    }

    v80 = *(v27 + 16);
    v79 = *(v27 + 24);
    v20 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      v27 = sub_1D31412B0((v79 > 1), v80 + 1, 1, v27);
    }

    *(v27 + 16) = v20;
    *(v27 + 8 * v80 + 32) = v5 - v77;
    *(v187 + 80) = v27;
    v81 = a2 >> 62;
    if (a2 >> 62)
    {
      v82 = sub_1D3277660();
    }

    else
    {
      v82 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v186;
    v184 = v64;
    if (v82 < 1)
    {

      v20 = 0;
      a1 = v187;
    }

    else
    {
      if (v191)
      {
        v24 = *(a1 + 64);
        v4 = *(a1 + 72);
        v21 = *(a1 + 80);
        if (v81)
        {
          v83 = sub_1D3277660();
        }

        else
        {
          v83 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v83)
        {
          goto LABEL_243;
        }

        v85 = __OFSUB__(v83, 1);
        v86 = v83 - 1;
        if (v85)
        {
          goto LABEL_245;
        }

        v179 = v21;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1D38B45D0](v86, a2);
        }

        else
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_247;
          }

          if (v86 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_248;
          }

          v27 = *(a2 + 8 * v86 + 32);
        }

        sub_1D314420C(a1);
        v88 = v87;
        v90 = v89;
        v5 = v91;
      }

      else
      {
        v24 = *(a1 + 40);
        v4 = *(a1 + 48);
        v21 = *(a1 + 56);
        if (v81)
        {
          v84 = sub_1D3277660();
        }

        else
        {
          v84 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v84)
        {
          goto LABEL_242;
        }

        v85 = __OFSUB__(v84, 1);
        v92 = v84 - 1;
        if (v85)
        {
          goto LABEL_244;
        }

        v179 = v21;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v94 = MEMORY[0x1D38B45D0](v92, a2);
        }

        else
        {
          if ((v92 & 0x8000000000000000) != 0)
          {
            goto LABEL_246;
          }

          if (v92 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v93 = *(a2 + 8 * v92 + 32);
        }

        v88 = *(v94 + 40);
        v90 = *(v94 + 48);
        v5 = *(v94 + 56);
      }

      v21 = GEOCoordinateGet3DDistance(v24, v4, v179, v88, v90, v5);
      if (v21 == 0.0)
      {
        v177 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourse;
        v176 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp;
        v179 = v22;
        v24 = v189;
        v23 = v190;
        v178 = LODWORD(v6);
        while (1)
        {
          swift_beginAccess();
          if (a2 >> 62)
          {
            if (!sub_1D3277660())
            {
              goto LABEL_115;
            }
          }

          else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v98 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (a2 >> 62 || (v98 & 1) == 0)
          {
            *&a2 = COERCE_DOUBLE(sub_1D3180EE8(a2));
          }

          v99 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v99)
          {
            goto LABEL_229;
          }

          v100 = v99 - 1;
          v101 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * v100 + 0x20);
          *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v100;

          v196 = a2;
LABEL_115:
          swift_endAccess();
          if (a2 >> 62)
          {
            if (sub_1D3277660() < 1)
            {
              goto LABEL_103;
            }
          }

          else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
          {
            goto LABEL_103;
          }

          if (v191)
          {
            v5 = *(a1 + 64);
            v24 = *(a1 + 72);
            v21 = *(a1 + 80);
            if (a2 >> 62)
            {
              v102 = sub_1D3277660();
              if (!v102)
              {
                goto LABEL_231;
              }
            }

            else
            {
              v102 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v102)
              {
                goto LABEL_231;
              }
            }

            v85 = __OFSUB__(v102, 1);
            v103 = v102 - 1;
            if (v85)
            {
              goto LABEL_232;
            }

            if ((a2 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1D38B45D0](v103, a2);
            }

            else
            {
              if ((v103 & 0x8000000000000000) != 0)
              {
                goto LABEL_234;
              }

              if (v103 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_237;
              }

              v20 = *(a2 + 8 * v103 + 32);
            }

            v6 = 0.5;
            v104 = (*(v20 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_rawCourse) + *(a1 + v177)) * 0.5;
            v105 = *(v20 + 120) + *(a1 + 120);
            v106 = *v181;
            v27 = v182;
            (*v181)(v182, v20 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v10);
            v29 = v183;
            v106(v183, a1 + v176, v10);
            sub_1D3276CC0();
            v107 = *v180;
            (*v180)(v29, v10);
            v107(v27, v10);
            MEMORY[0x1D38B43F0](*(a1 + 64), *(a1 + 72), *(a1 + 80));
            GEOCoordinate2DAlongBearing();
            v108 = *(v20 + 56);
            v109 = *(a1 + 80);

            v96 = GEOLocationCoordinate2DMakeWithCoordinate3D(v110);
            v97 = v111;
            v4 = v112;
            v22 = v179;
            LODWORD(v6) = v178;
          }

          else
          {
            v5 = *(a1 + 40);
            v24 = *(a1 + 48);
            v21 = *(a1 + 56);
            if (a2 >> 62)
            {
              v113 = sub_1D3277660();
              if (!v113)
              {
                goto LABEL_230;
              }
            }

            else
            {
              v113 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v113)
              {
                goto LABEL_230;
              }
            }

            v85 = __OFSUB__(v113, 1);
            v114 = v113 - 1;
            if (v85)
            {
              goto LABEL_233;
            }

            if ((a2 & 0xC000000000000001) != 0)
            {
              v95 = MEMORY[0x1D38B45D0]();
            }

            else
            {
              if ((v114 & 0x8000000000000000) != 0)
              {
                goto LABEL_235;
              }

              if (v114 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_236;
              }

              v115 = *(a2 + 8 * v114 + 32);
            }

            v96 = *(v95 + 40);
            v97 = *(v95 + 48);
            v4 = *(v95 + 56);
          }

          v21 = GEOCoordinateGet3DDistance(v5, v24, v21, v96, v97, v4);
          v19 = v188;
          v24 = v189;
          v23 = v190;
          if (v21 != 0.0)
          {
            goto LABEL_103;
          }
        }
      }

      v24 = v189;
      v23 = v190;
LABEL_103:

      v20 = 0;
      v19 = v19 + v21;
      a1 = v187;
      v21 = v186;
    }

    v16 = v175;
    v26 = v174;
  }

LABEL_227:
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
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  v20 = sub_1D31412B0(0, *(v20 + 16) + 1, 1, v20);
  *(a1 + 64) = v20;
LABEL_196:
  v144 = *(v20 + 16);
  v143 = *(v20 + 24);
  if (v144 >= v143 >> 1)
  {
    v20 = sub_1D31412B0((v143 > 1), v144 + 1, 1, v20);
  }

  *(v20 + 16) = v144 + 1;
  *(v20 + 8 * v144 + 32) = v21;
  *(a1 + 64) = v20;
  if (v29)
  {
    v145 = sub_1D3277660();
  }

  else
  {
    v145 = *(v27 + 16);
  }

  if (!v145)
  {
    __break(1u);
    goto LABEL_252;
  }

  v85 = __OFSUB__(v145--, 1);
  if (v85)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_253:
    v147 = MEMORY[0x1D38B45D0](v145, a2);
LABEL_207:
    v5 = *(v147 + 104);

    MEMORY[0x1D38B43F0](v148, v23, v24, v194);
    MEMORY[0x1D38B43F0](v22, v6, v19);
    GEOBearingFromCoordinateToCoordinate();
    v21 = v149;
    v20 = *(a1 + 80);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 80) = v20;
    if (v150)
    {
      goto LABEL_208;
    }

    goto LABEL_255;
  }

  if ((v145 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_255:
    v20 = sub_1D31412B0(0, *(v20 + 16) + 1, 1, v20);
    *(a1 + 80) = v20;
LABEL_208:
    v152 = *(v20 + 16);
    v151 = *(v20 + 24);
    if (v152 >= v151 >> 1)
    {
      v20 = sub_1D31412B0((v151 > 1), v152 + 1, 1, v20);
    }

    *(v20 + 16) = v152 + 1;
    *(v20 + 8 * v152 + 32) = v5 - v21;
    *(a1 + 80) = v20;
    v21 = v19;
    v19 = v188;
    goto LABEL_211;
  }

  if (v145 < *(v27 + 16))
  {
    v146 = *(a2 + 8 * v145 + 32);

    goto LABEL_207;
  }

  __break(1u);
LABEL_257:
  swift_once();
LABEL_217:
  v155 = v19 / v21;
  v156 = sub_1D3276F80();
  __swift_project_value_buffer(v156, qword_1EC760870);
  v157 = sub_1D3276F60();
  v158 = sub_1D3277370();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 134218496;
    *(v159 + 4) = v155;
    *(v159 + 12) = 2048;
    *(v159 + 14) = v19;
    *(v159 + 22) = 2048;
    *(v159 + 24) = v21;
    _os_log_impl(&dword_1D311E000, v157, v158, "RSS: interpolation offset %f %f %f", v159, 0x20u);
    MEMORY[0x1D38B6000](v159, -1, -1);
  }

  *(a1 + 48) = v19 + *(a1 + 48);
  *(a1 + 72) = 0;
  if ((v191 & 1) == 0)
  {
    v161.n128_f64[0] = v194;
    v164 = v161.n128_f64[0] + (v23 - v161.n128_f64[0]) * v155;
    v162 = v24 + (v6 - v24) * v155;
    v160.n128_f64[0] = v4;
    v163 = v4 + (v22 - v4) * v155;
LABEL_223:
    *(a1 + 88) = v163;
    *(a1 + 96) = v162;
    *(a1 + 104) = v164;
    MEMORY[0x1D38B43F0](v160, v24, v161);
    MEMORY[0x1D38B43F0](v22, v6, v23);
    GEOBearingFromCoordinateToCoordinate();
    *(a1 + 112) = v165;
    sub_1D32775B0();
    v166 = sub_1D3277570();
    v168 = v167;

    *(a1 + 120) = v166;
    *(a1 + 124) = v168;
LABEL_224:

    return a1;
  }

  if (v144)
  {
    v163 = *(v144 + 64);
    v162 = *(v144 + 72);
    v164 = *(v144 + 80);
    v160.n128_f64[0] = v4;
    v161.n128_f64[0] = v194;
    goto LABEL_223;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  swift_endAccess();
LABEL_273:
  result = sub_1D32777B0();
  __break(1u);
  return result;
}

id sub_1D314E6E8(unint64_t a1, void *a2)
{
  v51[8] = *MEMORY[0x1E69E9840];
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = sub_1D3277660();
  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (__OFSUB__(v7--, 1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(a1 + 8 * v7 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_22;
  }

LABEL_35:
  v9 = MEMORY[0x1D38B45D0](v7, a1);
LABEL_8:
  if (*(v9 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v10 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v10 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v11 = *(v9 + *v10);

  if (v11)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 20);

    v14 = *MEMORY[0x1E69A1918];
    v15 = *(MEMORY[0x1E69A1918] + 4);
  }

  else
  {
    v12 = *MEMORY[0x1E69A1918];
    v13 = *(MEMORY[0x1E69A1918] + 4);
  }

  if (sub_1D32774A0())
  {
    result = 0;
LABEL_31:
    v48 = *MEMORY[0x1E69E9840];
    return result;
  }

  [a2 endRouteCoordinate];
  v17 = sub_1D32775B0();
  result = [objc_allocWithZone(MEMORY[0x1E69A23A0]) initWithRange_];
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = result;
  v49 = a1;
  [result advance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C390, &qword_1D328AE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D328AC00;
  v50 = v12;
  [a2 pointAtRouteCoordinate_];
  *(inited + 32) = v21;
  *(inited + 40) = v22;
  *(inited + 48) = v23;
  if ([v2 isCurrentValid])
  {
    do
    {
      [a2 pointAtRouteCoordinate_];
      v28 = *(inited + 16);
      v27 = *(inited + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = v24;
        v31 = v25;
        v32 = v26;
        v33 = sub_1D31413B4((v27 > 1), v28 + 1, 1, inited);
        v26 = v32;
        v25 = v31;
        v24 = v30;
        inited = v33;
      }

      *(inited + 16) = v28 + 1;
      v29 = (inited + 24 * v28);
      v29[4] = v24;
      v29[5] = v25;
      v29[6] = v26;
      [v2 advance];
    }

    while (([v2 isCurrentValid] & 1) != 0);
  }

  type metadata accessor for ConnectedSearchNode();
  swift_allocObject();
  v4 = sub_1D314ABD4();
  *(v4 + 30) = v50;
  *(v4 + 31) = v13;
  if (qword_1EC75C000 != -1)
  {
    goto LABEL_38;
  }

LABEL_22:
  v34 = sub_1D3276F80();
  __swift_project_value_buffer(v34, qword_1EC760870);
  swift_bridgeObjectRetain_n();
  v35 = sub_1D3276F60();
  v36 = sub_1D3277370();
  if (!os_log_type_enabled(v35, v36))
  {

    swift_bridgeObjectRelease_n();
LABEL_30:
    BOOL = GEOConfigGetBOOL();
    v47 = sub_1D314D22C(v4, v49, inited, BOOL);

    result = v47;
    goto LABEL_31;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v51[0] = v38;
  *v37 = 136315650;
  v39 = GEOPolylineCoordinateAsFullString();

  if (v39)
  {
    v40 = sub_1D32770C0();
    v42 = v41;

    v43 = sub_1D312BA30(v40, v42, v51);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2048;
    v44 = -1.0;
    v45 = -1.0;
    if (*(inited + 16))
    {
      v45 = *(inited + 32);
    }

    *(v37 + 14) = v45;
    *(v37 + 22) = 2048;
    if (*(inited + 16))
    {
      v44 = *(inited + 40);
    }

    *(v37 + 24) = v44;

    _os_log_impl(&dword_1D311E000, v35, v36, "RSS: start search at %s %f, %f", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1D38B6000](v38, -1, -1);
    MEMORY[0x1D38B6000](v37, -1, -1);

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

double GEOCoordinateGet3DDistance(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a6;
  GEOCalculateDistance();
  return sqrt(v6 * v6 + v7 * v7);
}

id sub_1D314EC54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = &v0[OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__isolater;
  *&v0[v6] = geo_isolater_create();
  v7 = OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__semaphore;
  *&v0[v7] = dispatch_semaphore_create(0);
  v13.receiver = v0;
  v13.super_class = MNFamiliarRouteAuthorizationChecker;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = sub_1D3277280();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v11 = v8;
  sub_1D314F750(0, 0, v4, &unk_1D328BAE0, v10);

  return v11;
}

uint64_t sub_1D314EDC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D3125778;

  return sub_1D314EE50();
}

uint64_t sub_1D314EE50()
{
  v1[17] = v0;
  v2 = sub_1D3276EA0();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C668, &qword_1D328BAF0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = sub_1D3276EB0();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D314EFA4, 0, 0);
}

uint64_t sub_1D314EFA4()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  global_queue = geo_get_global_queue();
  *(v0 + 200) = global_queue;
  v6 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:@"com.apple.Maps" delegate:v4 onQueue:global_queue];
  *(v0 + 208) = v6;
  v7 = *MEMORY[0x1E69E7E60];
  v8 = sub_1D3276ED0();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E7E58], v3);
  v9 = sub_1D3276EF0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v6;
  *(v0 + 216) = sub_1D3276EC0();
  sub_1D3276EE0();
  if (*(v0 + 80))
  {
    sub_1D3152AD0((v0 + 56), v0 + 16);
    v13 = *(v0 + 40);
    v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64) + 15;
    v17 = swift_task_alloc();
    (*(v15 + 16))(v17, v14, v13);
    *(v0 + 120) = swift_getAssociatedTypeWitness();
    *(v0 + 128) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_1D3277300();

    *(v0 + 224) = OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus;
    v18 = *(v0 + 128);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
    v19 = *(MEMORY[0x1E69E85B0] + 4);
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v20[1] = sub_1D314F390;
    v21 = *(v0 + 168);

    return MEMORY[0x1EEE6D8D0](v21, 0, 0);
  }

  else
  {
    if (qword_1EDBE0428 != -1)
    {
      swift_once();
    }

    v22 = sub_1D3276F80();
    __swift_project_value_buffer(v22, qword_1EDBE0438);
    v23 = sub_1D3276F60();
    v24 = sub_1D3277390();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D311E000, v23, v24, "No _locationIntelligenceDiagnostics on CLServiceSession. Unable to check for authorization.", v25, 2u);
      MEMORY[0x1D38B6000](v25, -1, -1);
    }

    v26 = *(v0 + 192);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1D314F390()
{
  v2 = *(*v1 + 232);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D314F4A0, 0, 0);
  }

  return result;
}

uint64_t sub_1D314F4A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v6 = *(v0 + 192);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);

    v9 = *(v0 + 8);

    return v9();
  }

  (*(v3 + 32))(*(v0 + 160), v1, v2);
  if (sub_1D3276E10() & 1) != 0 || (v11 = *(v0 + 160), (sub_1D3276E90()) || (v12 = *(v0 + 160), (sub_1D3276E60()))
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0xD000000000000014;
    v26 = *(v0 + 160);
    v27 = "authorization denied";
    if (sub_1D3276E20())
    {
      v13 = 0xD00000000000001ELL;
      v14 = 0x80000001D328EF20;
    }

    else
    {
      v28 = *(v0 + 160);
      if (sub_1D3276E30())
      {
        v13 = 0xD00000000000001ELL;
      }

      else
      {
        v29 = *(v0 + 160);
        v27 = "r.authorizationStatus";
        if ((sub_1D3276E40() & 1) == 0)
        {
          v30 = *(v0 + 160);
          if ((sub_1D3276E70() & 1) == 0)
          {
            v31 = *(v0 + 160);
            if ((sub_1D3276E50() & 1) == 0)
            {
              v32 = *(v0 + 160);
              if ((sub_1D3276E80() & 1) == 0)
              {
                v13 = 0;
                v14 = 1;
                goto LABEL_9;
              }
            }
          }
        }
      }

      v14 = v27 | 0x8000000000000000;
    }
  }

LABEL_9:
  v15 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = &v16[*(v0 + 224)];
  v18 = *v17;
  v19 = v17[1];
  *v17 = v13;
  v17[1] = v14;
  sub_1D31526CC(v18, v19);
  sub_1D3151D64(v15);
  v20 = [v16 _semaphore];
  if (v20)
  {
    v21 = v20;
    sub_1D32774F0();
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v22 = *(v0 + 128);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v23 = *(MEMORY[0x1E69E85B0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 232) = v24;
  *v24 = v0;
  v24[1] = sub_1D314F390;
  v25 = *(v0 + 168);

  return MEMORY[0x1EEE6D8D0](v25, 0, 0);
}

uint64_t sub_1D314F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D31528F4(a3, v27 - v11);
  v13 = sub_1D3277280();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D3125FBC(v12, &qword_1EC75C5F0, &qword_1D328C5F0);
  }

  else
  {
    sub_1D3277270();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D3277200();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D32770F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D3125FBC(a3, &qword_1EC75C5F0, &qword_1D328C5F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D3125FBC(a3, &qword_1EC75C5F0, &qword_1D328C5F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D314FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D31528F4(a3, v27 - v11);
  v13 = sub_1D3277280();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D3125FBC(v12, &qword_1EC75C5F0, &qword_1D328C5F0);
  }

  else
  {
    sub_1D3277270();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D3277200();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D32770F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D3125FBC(a3, &qword_1EC75C5F0, &qword_1D328C5F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D3125FBC(a3, &qword_1EC75C5F0, &qword_1D328C5F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D314FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D31528F4(a3, v27 - v11);
  v13 = sub_1D3277280();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D3125FBC(v12, &qword_1EC75C5F0, &qword_1D328C5F0);
  }

  else
  {
    sub_1D3277270();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D3277200();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D32770F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      type metadata accessor for ETAUpdateRequester.ResponseInfo(0);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D3125FBC(v27[0], &qword_1EC75C5F0, &qword_1D328C5F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D3125FBC(a3, &qword_1EC75C5F0, &qword_1D328C5F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  type metadata accessor for ETAUpdateRequester.ResponseInfo(0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static MNFamiliarRouteAuthorizationChecker.isEligible.getter()
{
  if (qword_1EDBE0410 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return _sSo35MNFamiliarRouteAuthorizationCheckerC10NavigationE10isEligibleSbvg_0();
}

BOOL static MNFamiliarRouteAuthorizationChecker.tccPrompted.getter()
{
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  return *(qword_1EDBE0420 + OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus + 8) != 0;
}

BOOL static MNFamiliarRouteAuthorizationChecker.isAuthorized(for:)(uint64_t a1)
{
  if (qword_1EDBE0410 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MNFamiliarRouteAuthorizationChecker.authorizationStatus(for:)(a1, &v4);
  v1 = v5 == 1;
  sub_1D31526CC(v4, v5);
  return v1;
}

uint64_t MNFamiliarRouteAuthorizationChecker.authorizationStatus(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D3277000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D3126084(0, &unk_1EDBE0458, 0x1E69E9610);
  *v11 = sub_1D32773E0();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8018], v7);
  v12 = sub_1D3277020();
  v14 = *(v8 + 8);
  v13 = (v8 + 8);
  v14(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v13 = &v3[OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus];
  if (*&v3[OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus + 8] == 1)
  {
    if (qword_1EDBE0428 == -1)
    {
LABEL_4:
      v15 = sub_1D3276F80();
      __swift_project_value_buffer(v15, qword_1EDBE0438);
      v16 = v3;
      v17 = sub_1D3276F60();
      v18 = sub_1D32773B0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62[0] = v61;
        *v19 = 136315394;
        v20 = a2;
        v22 = v13[1];
        *&aBlock = *v13;
        v21 = aBlock;
        *(&aBlock + 1) = v22;
        sub_1D3152714(aBlock, v22);
        v23 = MNFamiliarRouteAuthorizationChecker.AuthorizationStatus.description.getter();
        v25 = v24;
        v26 = v21;
        a2 = v20;
        sub_1D31526CC(v26, v22);
        v27 = sub_1D312BA30(v23, v25, v62);

        *(v19 + 4) = v27;
        *(v19 + 12) = 2080;
        v28 = 0xE600000000000000;
        v29 = 0x746567646957;
        v30 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E55;
        if (a1 == 1)
        {
          v31 = 0x53206D6574737953;
          v30 = 0xEE00656369767265;
        }

        if (a1 != 2)
        {
          v29 = v31;
          v28 = v30;
        }

        if (a1)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0x7261696C696D6146;
        }

        if (a1)
        {
          v33 = v28;
        }

        else
        {
          v33 = 0xEF736574756F5220;
        }

        v34 = sub_1D312BA30(v32, v33, v62);

        *(v19 + 14) = v34;
        _os_log_impl(&dword_1D311E000, v17, v18, "Returning early authorization status: %s, purpose: %s", v19, 0x16u);
        v35 = v61;
        swift_arrayDestroy();
        MEMORY[0x1D38B6000](v35, -1, -1);
        MEMORY[0x1D38B6000](v19, -1, -1);
      }

      v36 = *v13;
      v37 = v13[1];
      *a2 = *v13;
      a2[1] = v37;
      return sub_1D3152714(v36, v37);
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v69 = xmmword_1D328B9B0;
  v39 = [v3 _isolater];
  v40 = swift_allocObject();
  v40[2] = v3;
  v40[3] = a1;
  v40[4] = &v69;
  v40[5] = ObjectType;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1D31526E0;
  *(v41 + 24) = v40;
  v67 = sub_1D31526EC;
  v68 = v41;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v65 = sub_1D3151774;
  v66 = &block_descriptor_3;
  v42 = _Block_copy(&aBlock);
  v43 = v3;

  geo_isolate_sync();
  _Block_release(v42);

  if (qword_1EDBE0428 != -1)
  {
    swift_once();
  }

  v44 = sub_1D3276F80();
  __swift_project_value_buffer(v44, qword_1EDBE0438);
  v45 = sub_1D3276F60();
  v46 = sub_1D32773B0();
  if (os_log_type_enabled(v45, v46))
  {
    v61 = a2;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63 = v48;
    *v47 = 136315394;
    swift_beginAccess();
    v49 = v69;
    aBlock = v69;
    sub_1D3152714(v69, *(&v69 + 1));
    v50 = MNFamiliarRouteAuthorizationChecker.AuthorizationStatus.description.getter();
    v52 = v51;
    sub_1D31526CC(v49, *(&v49 + 1));
    v53 = sub_1D312BA30(v50, v52, &v63);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    if (a1 == 2)
    {
      v57 = 0xE600000000000000;
      v56 = 0x746567646957;
    }

    else
    {
      v54 = 0x6E776F6E6B6E55;
      v55 = 0xE700000000000000;
      if (!a1)
      {
        v54 = 0x7261696C696D6146;
        v55 = 0xEF736574756F5220;
      }

      if (a1 == 1)
      {
        v56 = 0x53206D6574737953;
      }

      else
      {
        v56 = v54;
      }

      if (a1 == 1)
      {
        v57 = 0xEE00656369767265;
      }

      else
      {
        v57 = v55;
      }
    }

    v58 = sub_1D312BA30(v56, v57, &v63);

    *(v47 + 14) = v58;
    _os_log_impl(&dword_1D311E000, v45, v46, "Returning authorization status: %s, purpose: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v48, -1, -1);
    MEMORY[0x1D38B6000](v47, -1, -1);

    a2 = v61;
  }

  else
  {
  }

  swift_beginAccess();
  v59 = v69;
  *a2 = v69;
  sub_1D3152714(v59, *(&v59 + 1));
  sub_1D31526CC(v59, *(&v59 + 1));
}

uint64_t static MNFamiliarRouteAuthorizationChecker.isAuthorized(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3150A38, 0, 0);
}

uint64_t sub_1D3150A38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1D3277280();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;
  v6 = sub_1D314FA40(0, 0, v2, &unk_1D328B9E8, v5);
  v0[5] = v6;
  v7 = *(MEMORY[0x1E69E86C0] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1D3150B78;
  v9 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DA40](v0 + 7, v6, v9);
}

uint64_t sub_1D3150B78()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D3150C90, 0, 0);
}

uint64_t sub_1D3150C90()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D3150CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D3150D18, 0, 0);
}

uint64_t sub_1D3150D18()
{
  v7 = v0;
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  MNFamiliarRouteAuthorizationChecker.authorizationStatus(for:)(v0[3], &v5);
  v2 = v6 == 1;
  sub_1D31526CC(v5, v6);
  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D3150F4C(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D3150FFC;

  return static MNFamiliarRouteAuthorizationChecker.isAuthorized(for:)(a1);
}

uint64_t sub_1D3150FFC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v5)
  {
    v7 = *(v3 + 16);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_1D3151200()
{
  result = [objc_allocWithZone(MNFamiliarRouteAuthorizationChecker) init];
  qword_1EDBE0420 = result;
  return result;
}

id static MNFamiliarRouteAuthorizationChecker.shared.getter()
{
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBE0420;

  return v1;
}

uint64_t MNFamiliarRouteAuthorizationChecker.AuthorizationStatus.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000011;
  }

  if (v1 == 1)
  {
    return 0x7A69726F68747541;
  }

  v3 = *v0;
  sub_1D32776F0();

  MEMORY[0x1D38B3FE0](v3, v1);
  MEMORY[0x1D38B3FE0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1D31513C8(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1D3276F90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D3276FF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = [a1 _semaphore];
  if (v18)
  {
    v19 = v18;
    GEOConfigGetDouble();
    if (v20 <= 0.0)
    {
      if (qword_1EDBE0428 != -1)
      {
        swift_once();
      }

      v28 = sub_1D3276F80();
      __swift_project_value_buffer(v28, qword_1EDBE0438);
      v24 = sub_1D3276F60();
      v25 = sub_1D32773B0();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_13;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Not waiting for initial authorization status - actual status might be different.";
    }

    else
    {
      v21 = v20;
      sub_1D3276FE0();
      sub_1D3132404(v9, v21);
      MEMORY[0x1D38B3ED0](v15, v9);
      (*(v6 + 8))(v9, v5);
      v22 = *(v11 + 8);
      v22(v15, v10);
      sub_1D32774E0();
      v22(v17, v10);
      if ((sub_1D3276FA0() & 1) == 0)
      {
LABEL_14:
        [a1 set:0 semaphore:?];

        goto LABEL_15;
      }

      if (qword_1EDBE0428 != -1)
      {
        swift_once();
      }

      v23 = sub_1D3276F80();
      __swift_project_value_buffer(v23, qword_1EDBE0438);
      v24 = sub_1D3276F60();
      v25 = sub_1D3277390();
      if (!os_log_type_enabled(v24, v25))
      {
LABEL_13:

        goto LABEL_14;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Timed out waiting for initial authorization status - actual status might be different.";
    }

    _os_log_impl(&dword_1D311E000, v24, v25, v27, v26, 2u);
    MEMORY[0x1D38B6000](v26, -1, -1);
    goto LABEL_13;
  }

LABEL_15:
  v29 = *&a1[OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus];
  v30 = *&a1[OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus + 8];
  v31 = *a3;
  v32 = a3[1];
  *a3 = v29;
  a3[1] = v30;
  sub_1D3152714(v29, v30);
  return sub_1D31526CC(v31, v32);
}

uint64_t MNFamiliarRouteAuthorizationPurpose.description.getter(uint64_t a1)
{
  v1 = 0x746567646957;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x53206D6574737953;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x7261696C696D6146;
  }
}

uint64_t sub_1D3151828()
{
  v1 = *v0;
  v2 = 0x746567646957;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x53206D6574737953;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x7261696C696D6146;
  }
}

uint64_t sub_1D31518B8()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EDBE0438);
  __swift_project_value_buffer(v0, qword_1EDBE0438);
  return sub_1D3276F70();
}

uint64_t sub_1D3151938(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D3151A2C;

  return v6(v2 + 32);
}

uint64_t sub_1D3151A2C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D3151B40(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D3151C34;

  return v6(v2 + 16);
}

uint64_t sub_1D3151C34()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

void sub_1D3151D64(uint64_t a1)
{
  v2 = sub_1D3276EA0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v53 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v47[-v8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v47[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v47[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v47[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47[-v24];
  if (qword_1EDBE0428 != -1)
  {
    swift_once();
  }

  v26 = sub_1D3276F80();
  __swift_project_value_buffer(v26, qword_1EDBE0438);
  v27 = v3[2];
  v27(v25, a1, v2);
  v27(v23, a1, v2);
  v27(v20, a1, v2);
  v27(v17, a1, v2);
  v27(v49, a1, v2);
  v27(v50, a1, v2);
  v27(v51, a1, v2);
  v27(v52, a1, v2);
  v27(v53, a1, v2);
  v28 = sub_1D3276F60();
  v29 = sub_1D32773B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67111168;
    v48 = v29;
    v31 = sub_1D3276E10() & 1;
    v32 = v3[1];
    v32(v25, v2);
    *(v30 + 4) = v31;
    *(v30 + 8) = 1024;
    v33 = sub_1D3276E20() & 1;
    v32(v23, v2);
    *(v30 + 10) = v33;
    *(v30 + 14) = 1024;
    v34 = sub_1D3276E40() & 1;
    v32(v20, v2);
    *(v30 + 16) = v34;
    *(v30 + 20) = 1024;
    v35 = sub_1D3276E70() & 1;
    v32(v17, v2);
    *(v30 + 22) = v35;
    *(v30 + 26) = 1024;
    v36 = v49;
    v37 = sub_1D3276E90() & 1;
    v32(v36, v2);
    *(v30 + 28) = v37;
    *(v30 + 32) = 1024;
    v38 = v50;
    v39 = sub_1D3276E30() & 1;
    v32(v38, v2);
    *(v30 + 34) = v39;
    *(v30 + 38) = 1024;
    v40 = v51;
    v41 = sub_1D3276E80() & 1;
    v32(v40, v2);
    *(v30 + 40) = v41;
    *(v30 + 44) = 1024;
    v42 = v52;
    v43 = sub_1D3276E50() & 1;
    v32(v42, v2);
    *(v30 + 46) = v43;
    *(v30 + 50) = 1024;
    v44 = v53;
    v45 = sub_1D3276E60() & 1;
    v32(v44, v2);
    *(v30 + 52) = v45;
    _os_log_impl(&dword_1D311E000, v28, v48, "Service session updated:\n    required: %{BOOL}d\n    accuracyLimited: %{BOOL}d\n    authorizationDenied: %{BOOL}d\n    authorizationDeniedGlobally: %{BOOL}d\n    authorizationRequestInProgress: %{BOOL}d\n    fullAccuracyDenied: %{BOOL}d\n    learnedRoutesDeniedGlobally: %{BOOL}d\n    learnedRoutesDenied: %{BOOL}d\n    learnedRoutesUnsupported: %{BOOL}d", v30, 0x38u);
    MEMORY[0x1D38B6000](v30, -1, -1);
  }

  else
  {
    v46 = v3[1];
    v46(v53, v2);
    v46(v52, v2);
    v46(v51, v2);
    v46(v50, v2);
    v46(v49, v2);
    v46(v17, v2);
    v46(v20, v2);
    v46(v23, v2);
    v46(v25, v2);
  }
}

uint64_t _sSo35MNFamiliarRouteAuthorizationCheckerC10NavigationE10isEligibleSbvg_0()
{
  v0 = sub_1D3276F50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75C670, qword_1D328BB48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - v7;
  v9 = sub_1D3276F20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B7CA8], v9);
  sub_1D3276F40();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 56))(v8, 0, 1, v0);
  (*(v1 + 32))(v4, v8, v0);
  v14 = sub_1D3276F10();
  v21[0] = v21;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = sub_1D3276F30();
  MEMORY[0x1EEE9AC00](v17);
  v18 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E69B7C88], v14);
  LOBYTE(v16) = sub_1D3276F00();
  v19 = *(v15 + 8);
  v19(v18, v14);
  v19(v18, v14);
  (*(v1 + 8))(v4, v0);
  return v16 & 1;
}

uint64_t sub_1D31526CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D31526EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D3152714(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}
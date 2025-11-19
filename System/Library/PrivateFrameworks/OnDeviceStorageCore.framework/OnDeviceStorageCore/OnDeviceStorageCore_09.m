void *sub_1DB252A70()
{
  result = sub_1DB252B90(&unk_1F56DED80);
  off_1EE13E868 = result;
  return result;
}

const char *sub_1DB252A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    result = sqlite3_errmsg(v2);
    if (result)
    {
      v4 = sub_1DB2BAF04();
      os_unfair_lock_unlock((v1 + 24));
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB135B68();
    v5 = swift_allocError();
    *v6 = 0xD00000000000001CLL;
    *(v6 + 8) = 0x80000001DB2D14C0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v1 + 24));
    swift_getErrorValue();
    v7 = sub_1DB2BB994();
    MEMORY[0x1E1284A10](v5);
    return v7;
  }

  return result;
}

uint64_t sub_1DB252B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C58, &unk_1DB2CC310);
    v3 = sub_1DB2BB4B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1E1283F90](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

const char *sub_1DB252CB8(unsigned int a1, uint64_t a2)
{
  if (qword_1EE13E860 != -1)
  {
    swift_once();
  }

  v4 = off_1EE13E868;
  if (*(off_1EE13E868 + 2) && (v5 = MEMORY[0x1E1283F90](*(off_1EE13E868 + 5), a1, 4), v6 = -1 << *(v4 + 32), v7 = v5 & ~v6, ((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (*(v4[6] + 4 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    v9 = sub_1DB252A98(a2);
    v10 = *(a2 + 48);
    os_unfair_lock_lock((v10 + 20));
    v11 = *(v10 + 16);
    os_unfair_lock_unlock((v10 + 20));
    if (v11 == 1)
    {
      v12 = *(a2 + 16);
      os_unfair_lock_lock((v12 + 24));
      v13 = *(v12 + 16);
      if (v13)
      {
        sqlite3_extended_errcode(v13);
      }

      os_unfair_lock_unlock((v12 + 24));
    }

    else
    {
    }
  }

  return v9;
}

uint64_t SQLiteVersion.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v7 = *v0;
  v3 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v3);

  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v4 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v5 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v5);

  return 0x206574694C5153;
}

BOOL static SQLiteVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

unint64_t sub_1DB253008()
{
  result = qword_1ECC28C60;
  if (!qword_1ECC28C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C60);
  }

  return result;
}

void sub_1DB25305C()
{
  qword_1ECC41F38 = 0;
  unk_1ECC41F40 = 0;
  qword_1ECC41F48 = 0;
}

BOOL sub_1DB253070(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_1DB2530A8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_1DB2530E4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_1DB253120(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  sub_1DB255E8C(a1);
}

{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sqlite3_reset(v4);
  sqlite3_clear_bindings(v4);
  os_unfair_lock_unlock((v3 + 24));
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1DB1609EC(*(a1 + 56) + 40 * v12, &v23);
      v19 = v23;
      v20 = v24;
      v16 = v25;

      if (!v14)
      {
        break;
      }

      v23 = v19;
      v24 = v20;
      v25 = v16;
      MEMORY[0x1EEE9AC00](v17);
      os_unfair_lock_lock((v3 + 24));
      sub_1DB256024((v3 + 16), &v21);
      os_unfair_lock_unlock((v3 + 24));
      v18 = v21;
      if (v21 < 1)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v21 = 0xD000000000000015;
        v22 = 0x80000001DB2D6790;
        MEMORY[0x1E1283490](v15, v14);

        sub_1DB15B09C(v21, v22);

        sub_1DB145A68(&v23);
      }

      v7 &= v7 - 1;

      sub_1DB253CF8(&v23, v18);
      result = sub_1DB145A68(&v23);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  sub_1DB255E8C(a1);
}

uint64_t Statement.run(_:)(uint64_t a1)
{
  sub_1DB255E8C(a1);

  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  return v1;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  return v1;
}

{
  v3 = v1;
  if (*(a1 + 16))
  {
    sub_1DB255E8C(a1);

    v3 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock((v4 + 24));
    sqlite3_reset(*(v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    sub_1DB143044();
    v5 = *(v1 + 24);
    do
    {
      while (1)
      {
        if (qword_1EE13F098 != -1)
        {
          swift_once();
        }

        sub_1DB2BB294();
        if ((v9 & 1) != 0 || v8 != v5)
        {
          break;
        }

        os_unfair_lock_lock((v4 + 24));
        sub_1DB14A424((v4 + 16), v10);
        os_unfair_lock_unlock((v4 + 24));
        if (v2)
        {
          return v3;
        }

        if (!v10[0])
        {
          goto LABEL_14;
        }
      }

      v6 = *(v5 + 120);
      sub_1DB2BB2C4();
      if (v2)
      {
        return v3;
      }
    }

    while (v10[1]);
LABEL_14:
  }

  return v3;
}

uint64_t Statement.scalar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB255E8C(a1);

  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

{
  if (*(a1 + 16))
  {
    sub_1DB255E8C(a1);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    sqlite3_reset(*(v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
    result = Statement.step()();
    if (!v6)
    {
      Statement.row.getter(&v7);
      Cursor.subscript.getter(0, a2);
    }
  }

  return result;
}

uint64_t sub_1DB253534(uint64_t a1)
{
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EC0, &qword_1DB2BD060);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v1 + 16) = v4;

  os_unfair_lock_lock((v4 + 24));
  sub_1DB256220((v4 + 16), &v18);
  os_unfair_lock_unlock((v4 + 24));
  if (v2)
  {
  }

  else
  {

    v5 = v18;

    v6 = sub_1DB252CB8(v5, a1);
    if (v8 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_1DB1365E0();
      v14 = swift_allocError();
      *v15 = v10;
      v15[1] = v11;
      v15[2] = v12;
      v15[3] = v13;
      sub_1DB1434F4(v10, v11, v12);
      sub_1DB15B294();
      MEMORY[0x1E1284A10](v14);
      swift_allocError();
      *v16 = v10;
      v16[1] = v11;
      v16[2] = v12;
      v16[3] = v13;
      swift_willThrow();
    }
  }

  return v1;
}

void sub_1DB253718(sqlite3_stmt **a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v5 = *(a2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1DB2BAE24();
    v8 = sqlite3_prepare_v2(v6, (v7 + 32), -1, a1, 0);

    os_unfair_lock_unlock((v5 + 24));
    *a3 = v8;
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v9 = 0xD00000000000001CLL;
    *(v9 + 8) = 0x80000001DB2D14C0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v5 + 24));
  }
}

void *Statement.deinit()
{
  v1 = v0[2];

  os_unfair_lock_lock((v1 + 24));
  sqlite3_finalize(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return swift_deallocClassInstance();
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = sqlite3_column_count(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  result = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  return result;
}

uint64_t Statement.columnCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

void *(*Statement.columnCount.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = Statement.columnCount.getter();
  return sub_1DB25396C;
}

void *sub_1DB25396C(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

void Statement.columnNames.getter()
{
  v1 = v0;
  if (*(v0 + 48))
  {

    return;
  }

  v2 = Statement.columnCount.getter();
  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_13:
    v13 = *(v1 + 48);
    *(v1 + 48) = v4;

    return;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v2, 0);
  v5 = 0;
  v4 = v14;
  v6 = *(v1 + 16);
  while (1)
  {
    os_unfair_lock_lock((v6 + 24));
    if (!sqlite3_column_name(*(v6 + 16), v5))
    {
      break;
    }

    v7 = sub_1DB2BAF04();
    v9 = v8;
    os_unfair_lock_unlock((v6 + 24));
    v11 = *(v14 + 16);
    v10 = *(v14 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1DB138470((v10 > 1), v11 + 1, 1);
    }

    *(v14 + 16) = v11 + 1;
    v12 = v14 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    if (v3 == v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

uint64_t Statement.columnNames.setter(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t (*Statement.columnNames.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  Statement.columnNames.getter();
  *a1 = v3;
  return sub_1DB253B3C;
}

uint64_t sub_1DB253B3C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
}

void Statement.row.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  if (v2)
  {
    v3 = v1[8];
    v4 = v1[7];
  }

  else
  {
    v5 = a1;
    v6 = v1[2];
    os_unfair_lock_lock((v6 + 24));
    v7 = *(v6 + 16);
    if (!v7)
    {
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v6 + 24));
    v3 = Statement.columnCount.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C68, &qword_1DB2CC3F8);
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 16) = v7;
    v8 = v1[7];
    v1[7] = v2;
    v1[8] = v3;

    a1 = v5;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Statement.row.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 56);
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

uint64_t (*Statement.row.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Statement.row.getter(a1);
  return sub_1DB253C6C;
}

uint64_t sub_1DB253C6C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v1 + 56);
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
}

Swift::Void __swiftcall Statement.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  sqlite3_reset(v2);
  sqlite3_clear_bindings(v2);

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1DB253CF8(uint64_t a1, uint64_t a2)
{
  sub_1DB1609EC(a1, &v19);
  if (!v20)
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_bind_null(*(v2 + 16), a2);
      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    __break(1u);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  if (swift_dynamicCast())
  {
    v3 = v16;
    if (*(*&v16 + 16))
    {
      v4 = *(v2 + 16);
      os_unfair_lock_lock((v4 + 24));
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = *(*&v16 + 16);
          if (!(v2 >> 31))
          {
            v7 = *(v4 + 16);
            if (qword_1EE13E998 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v7, a2, (*&v3 + 32), v2, qword_1EE14C858);
              v8 = (v4 + 24);
LABEL_9:
              os_unfair_lock_unlock(v8);

              goto LABEL_25;
            }

LABEL_43:
            v14 = v7;
            swift_once();
            v7 = v14;
            goto LABEL_8;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        sqlite3_bind_zeroblob(*(v2 + 16), a2, 0);
        goto LABEL_24;
      }

      goto LABEL_47;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (swift_dynamicCast())
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_bind_double(*(v2 + 16), a2, v16);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_46;
  }

  v9 = MEMORY[0x1E69E7360];
  if (swift_dynamicCast())
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (a2 > 0x7FFFFFFF)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sqlite3_bind_int64(*(v2 + 16), a2, *&v16);
LABEL_24:
    os_unfair_lock_unlock((v2 + 24));
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v2 = *(v5 + 16);
        if (qword_1EE13E998 == -1)
        {
LABEL_31:
          v11 = qword_1EE14C858;
          v12 = sub_1DB2BAE24();
          sqlite3_bind_text(v2, a2, (v12 + 32), -1, v11);

          v8 = (v5 + 24);
          goto LABEL_9;
        }

LABEL_52:
        swift_once();
        goto LABEL_31;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (swift_dynamicCast())
  {
    v13 = v15;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1DB1355D0(&v19, &v16);
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D6840);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      sub_1DB2BB914();
      sub_1DB15B09C(0, 0xE000000000000000);

      v10 = &v16;
      goto LABEL_26;
    }

    *&v13 = LOBYTE(v15);
  }

  v17 = v9;
  v18 = &protocol witness table for Int64;
  v16 = v13;
  sub_1DB253CF8(&v16, a2);
  sub_1DB145A68(&v16);
LABEL_25:
  v10 = &v19;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v10);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v2 = *(v0 + 24);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v9 & 1) != 0 || v8 != v2)
  {
    v5 = *(v2 + 120);
    sub_1DB2BB2C4();
    if (!v1)
    {
      return v10;
    }
  }

  else
  {
    v3 = *(v0 + 16);
    os_unfair_lock_lock((v3 + 24));
    sub_1DB256240((v3 + 16), &v7);
    os_unfair_lock_unlock((v3 + 24));
    if (!v1)
    {
      return v7;
    }
  }

  return v4;
}

void Cursor.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v6 = sqlite3_column_type(*&v5[4]._os_unfair_lock_opaque, a1);
  os_unfair_lock_unlock(v5 + 6);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      os_unfair_lock_lock(v5 + 6);
      v15 = sqlite3_column_int64(*&v5[4]._os_unfair_lock_opaque, a1);
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E7360];
      *(a2 + 32) = &protocol witness table for Int64;
      *a2 = v15;
      return;
    }

    if (v6 == 2)
    {
      os_unfair_lock_lock(v5 + 6);
      v11 = sqlite3_column_double(*&v5[4]._os_unfair_lock_opaque, a1);
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E63B0];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v11;
      return;
    }

    goto LABEL_15;
  }

  if (v6 == 3)
  {
    os_unfair_lock_lock(v5 + 6);
    if (sqlite3_column_text(*&v5[4]._os_unfair_lock_opaque, a1))
    {
      v12 = sub_1DB2BAF14();
      v14 = v13;
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E6158];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v12;
      *(a2 + 8) = v14;
      return;
    }

    goto LABEL_23;
  }

  if (v6 == 5)
  {
LABEL_16:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v6 != 4)
  {
LABEL_15:
    sub_1DB2BB4F4();

    v16 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v16);

    sub_1DB15B09C(0xD000000000000019, 0x80000001DB2D1D60);

    goto LABEL_16;
  }

  *(a2 + 24) = &type metadata for Blob;
  *(a2 + 32) = sub_1DB138CA8();
  os_unfair_lock_lock(v5 + 6);
  v7 = *&v5[4]._os_unfair_lock_opaque;
  v8 = sqlite3_column_blob(v7, a1);
  if (v8)
  {
    v9 = v8;
    v10 = sqlite3_column_bytes(v7, a1);
    Blob.init(bytes:length:)(v9, v10, a2);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v5 + 6);
}

void sub_1DB254768(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB256240((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    *a2 = v5;
  }
}

const char *sub_1DB2547D8@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sqlite3_step(*a1);

  result = sub_1DB252CB8(v5, v4);
  if (v8 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v10 = result;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    sub_1DB1365E0();
    v14 = swift_allocError();
    *v15 = v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    sub_1DB1434F4(v10, v11, v12);
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v14);
    swift_allocError();
    *v16 = v10;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    return swift_willThrow();
  }

  else
  {
    *a3 = v5 == 100;
  }

  return result;
}

uint64_t Statement.makeIterator()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sqlite3_reset(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1DB254934(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 24));
  sqlite3_reset(*(v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v3;
}

uint64_t sub_1DB254988()
{
  sub_1DB2555D0(*v0);
  v2 = v1;

  return v2;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB2BB364();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v31 = *(a2 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v34 = sub_1DB2BACA4();
  v19 = *(a4 + 16);
  v20 = v33;
  v32 = a1;
  v33 = a3;
  v19(a3, a4);
  if (v20)
  {
    (*(*(v33 - 8) + 8))(v32);
  }

  else
  {
    v28 = v19;
    v29 = a4 + 16;
    v22 = *(v31 + 48);
    v21 = v31 + 48;
    v30 = a4;
    v31 = v22;
    v27 = (v21 - 16);
    while ((v31)(v12, 1, a2) != 1)
    {
      (*v27)(v18, v12, a2);
      (*(v21 - 32))(v16, v18, a2);
      sub_1DB2BB154();
      sub_1DB2BB134();
      (*(v21 - 40))(v18, a2);
      v28(v33, v30);
    }

    (*(*(v33 - 8) + 8))(v32);
    (*(v25 + 8))(v12, v26);
    return v34;
  }
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v1 = Statement.step()();
  v2 = 0;
  if (!v3 && v1)
  {
    Statement.row.getter(v6);
    sub_1DB255C80(v6[0], v6[1]);
    v5 = v4;

    v2 = v5;
  }

  result.value._rawValue = v2;
  result.is_nil = v0;
  return result;
}

uint64_t sub_1DB254E5C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = Statement.step()();
  if (!v5)
  {
    if (result)
    {
      Statement.row.getter(v8);
      sub_1DB255C80(v8[0], v8[1]);
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DB254ED0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = Statement.step()();
  if (v5)
  {
    sub_1DB15B294();
    result = MEMORY[0x1E1284A10](v5);
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  Statement.row.getter(v8);
  sub_1DB255C80(v8[0], v8[1]);
  v7 = v6;

LABEL_6:
  *a1 = v7;
  return result;
}

void sub_1DB254F54()
{
  Statement.columnNames.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 40);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v7 = sub_1DB2B995C(34, 0xE100000000000000);
      v9 = v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DB142A70(v3, v7, v9, isUniquelyReferenced_nonNull_native);

      v4 += 2;
      if (v2 == ++v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

const char *Statement.description.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_sql(*(v1 + 16));
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1DB2550B0()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_sql(*(v1 + 16));
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Cursor.subscript.getter(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (sqlite3_column_text(*&v3[4]._os_unfair_lock_opaque, a1))
  {
    sub_1DB2BAF14();
    os_unfair_lock_unlock(v3 + 6);
    return;
  }

LABEL_7:
  __break(1u);
}

{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_int64(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

void Cursor.subscript.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = *(v5 + 16);
  v7 = sqlite3_column_blob(v6, a1);
  if (v7)
  {
    v8 = v7;
    v9 = sqlite3_column_bytes(v6, a1);
    Blob.init(bytes:length:)(v8, v9, a2);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v5 + 24));
}

void sub_1DB25532C(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_int64(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

uint64_t Cursor.makeIterator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F98, &qword_1DB2CC400);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DB14A23C;
  *(v5 + 24) = v4;

  return v5;
}

double sub_1DB25543C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_1DB2C77D0;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v6 + 1;
    Cursor.subscript.getter(v6, a3);
  }

  return result;
}

uint64_t sub_1DB2554E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F98, &qword_1DB2CC400);
  result = swift_allocObject();
  *(result + 16) = sub_1DB256258;
  *(result + 24) = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1DB255590()
{
  sub_1DB255C80(*v0, v0[1]);
  v2 = v1;

  return v2;
}

void sub_1DB2555D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v57 = (v3 + 16);
  sqlite3_reset(*(v3 + 16));
  v58 = v3;
  os_unfair_lock_unlock((v3 + 24));
  sub_1DB143044();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v59 = *(a1 + 24);
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i = (v7 + 1))
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v67 & 1) != 0 || v66 != v59)
    {
      break;
    }

    os_unfair_lock_lock(v58 + 6);
    sub_1DB256240(v57, &v66);
    os_unfair_lock_unlock(v58 + 6);
    if ((v66 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_12:
    v60 = i;
    v61 = v5;
    v62 = v4;
    Statement.row.getter(&v66);
    v10 = v66;
    v9 = v67;
    swift_retain_n();
    v64 = v9;
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = MEMORY[0x1E69E7CC0];
      v14 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        os_unfair_lock_lock((v10 + 24));
        if (v11 == 0x80000000)
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v15 = sqlite3_column_type(*(v10 + 16), v11);
        os_unfair_lock_unlock((v10 + 24));
        if (v15 > 2)
        {
          break;
        }

        if (v15 == 1)
        {
          os_unfair_lock_lock((v10 + 24));
          v23 = COERCE_DOUBLE(sqlite3_column_int64(*(v10 + 16), v11));
          os_unfair_lock_unlock((v10 + 24));
          v26 = MEMORY[0x1E69E7360];
          v16 = &protocol witness table for Int64;
          if (v12)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_32;
          }

          os_unfair_lock_lock((v10 + 24));
          v25 = sqlite3_column_double(*(v10 + 16), v11);
          os_unfair_lock_unlock((v10 + 24));
          v23 = v25;
          v26 = MEMORY[0x1E69E63B0];
          v16 = &protocol witness table for Double;
          if (v12)
          {
            goto LABEL_49;
          }
        }

LABEL_39:
        v29 = v13[3];
        if (((v29 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_77;
        }

        v63 = v1;
        v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v32 = swift_allocObject();
        v33 = (_swift_stdlib_malloc_size(v32) - 32) / 40;
        v32[2] = v31;
        v32[3] = 2 * v33;
        v34 = v13;
        v35 = (v32 + 4);
        v36 = v13[2];
        v37 = v13[3] >> 1;
        if (v36)
        {
          v38 = v34 + 4;
          if (v32 != v34 || v35 >= v38 + 40 * v37)
          {
            memmove(v32 + 4, v38, 40 * v37);
          }

          v34[2] = 0;
        }

        v14 = (v35 + 40 * v37);
        v12 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v13 = v32;
        v1 = v63;
LABEL_49:
        v39 = __OFSUB__(v12--, 1);
        if (v39)
        {
          goto LABEL_76;
        }

        ++v11;
        *v14 = v23;
        *(v14 + 1) = v1;
        v14[2] = 0.0;
        *(v14 + 3) = v26;
        *(v14 + 4) = v16;
        v14 += 5;
        if (v64 == v11)
        {
          goto LABEL_53;
        }
      }

      if (v15 == 3)
      {
        os_unfair_lock_lock((v10 + 24));
        if (!sqlite3_column_text(*(v10 + 16), v11))
        {
          goto LABEL_82;
        }

        v23 = COERCE_DOUBLE(sub_1DB2BAF14());
        v1 = v27;
        os_unfair_lock_unlock((v10 + 24));
        v26 = MEMORY[0x1E69E6158];
        v16 = &protocol witness table for String;
        if (v12)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      if (v15 != 5)
      {
        if (v15 == 4)
        {
          v16 = sub_1DB138CA8();
          os_unfair_lock_lock((v10 + 24));
          v17 = *(v10 + 16);
          v18 = sqlite3_column_blob(v17, v11);
          if (v18 && (v19 = v18, (v20 = sqlite3_column_bytes(v17, v11)) != 0))
          {
            v21 = v1;
            v22 = v20;
            if (v20 <= 0)
            {
              v23 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v23 = COERCE_DOUBLE(swift_allocObject());
              v24 = _swift_stdlib_malloc_size(*&v23);
              *(*&v23 + 16) = v22;
              *(*&v23 + 24) = 2 * v24 - 64;
            }

            memcpy((*&v23 + 32), v19, v22);
            v1 = v21;
          }

          else
          {
            v23 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v10 + 24));
          v26 = &type metadata for Blob;
          if (v12)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_32:
        sub_1DB2BB4F4();

        v65 = 25;
        v28 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v28);

        sub_1DB15B09C(0xD000000000000019, 0x80000001DB2D1D60);
      }

      v1 = 0;
      v23 = 0.0;
      v26 = 0;
      v16 = 0;
      if (v12)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_53:

    v40 = v13[3];
    if (v40 >= 2)
    {
      v41 = v40 >> 1;
      v39 = __OFSUB__(v41, v12);
      v42 = v41 - v12;
      if (v39)
      {
        goto LABEL_79;
      }

      v13[2] = v42;
    }

    if (v62)
    {
      v5 = v61;
      v7 = v60;
      v4 = v62 - 1;
      if (__OFSUB__(v62, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v43 = v61[3];
      if (((v43 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_80;
      }

      v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
      if (v44 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C88, &unk_1DB2CC5F0);
      v46 = swift_allocObject();
      v47 = _swift_stdlib_malloc_size(v46);
      v48 = v47 - 32;
      if (v47 < 32)
      {
        v48 = v47 - 25;
      }

      v49 = v48 >> 3;
      v46[2] = v45;
      v46[3] = 2 * (v48 >> 3);
      v50 = (v46 + 4);
      v51 = v61[3] >> 1;
      if (v61[2])
      {
        v52 = v61 + 4;
        if (v46 != v61 || v50 >= v52 + 8 * v51)
        {
          memmove(v46 + 4, v52, 8 * v51);
        }

        v61[2] = 0;
      }

      v7 = (v50 + 8 * v51);
      v53 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - v51;

      v5 = v46;
      v39 = __OFSUB__(v53, 1);
      v4 = v53 - 1;
      if (v39)
      {
        goto LABEL_78;
      }
    }

    *v7 = v13;
  }

  v8 = *(v59 + 120);
  sub_1DB2BB2C4();
  if (v65 == 1)
  {
    goto LABEL_12;
  }

LABEL_71:
  v54 = v5[3];
  if (v54 >= 2)
  {
    v55 = v54 >> 1;
    v39 = __OFSUB__(v55, v4);
    v56 = v55 - v4;
    if (v39)
    {
      goto LABEL_81;
    }

    v5[2] = v56;
  }
}

void sub_1DB255C80(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  swift_retain_n();

  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC0];
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v9 = v6 + 1;
      *v4 = v6 + 1;
      Cursor.subscript.getter(v6, v24);
      if (!v7)
      {
        v10 = v5[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 40;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = (v13 + 4);
        v16 = v5[3] >> 1;
        if (v5[2])
        {
          if (v13 != v5 || v15 >= &v5[5 * v16 + 4])
          {
            memmove(v13 + 4, v5 + 4, 40 * v16);
          }

          v5[2] = 0;
        }

        v8 = v15 + 40 * v16;
        v7 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v5 = v13;
      }

      v18 = __OFSUB__(v7--, 1);
      if (v18)
      {
        break;
      }

      v19 = v24[0];
      v20 = v24[1];
      *(v8 + 32) = v25;
      *v8 = v19;
      *(v8 + 16) = v20;
      v8 += 40;
      v6 = v9;
      if (a2 == v9)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = 0;
LABEL_21:

  v21 = v5[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v18 = __OFSUB__(v22, v7);
    v23 = v22 - v7;
    if (v18)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v5[2] = v23;
  }
}

uint64_t sub_1DB255E8C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);
    sqlite3_reset(v6);
    sqlite3_clear_bindings(v6);
    os_unfair_lock_unlock((v5 + 24));
    os_unfair_lock_lock((v5 + 24));
    v7 = sqlite3_bind_parameter_count(*(v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
    if (v3 == v7)
    {
      v8 = a1 + 32;
      v9 = 1;
      do
      {
        sub_1DB253CF8(v8, v9++);
        v8 += 40;
      }

      while (v9 - v3 != 1);
    }

    else
    {
      sub_1DB2BB4F4();
      v10 = sub_1DB2BB8F4();
      v12 = v11;

      MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D6860);
      v13 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v13);

      MEMORY[0x1E1283490](0x64657373617020, 0xE700000000000000);
      sub_1DB15B09C(v10, v12);
    }
  }

  return v2;
}

uint64_t sub_1DB256024@<X0>(sqlite3_stmt **a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  v7 = sub_1DB2BAE24();
  LODWORD(v6) = sqlite3_bind_parameter_index(v6, (v7 + 32));

  *a2 = v6;
  return result;
}

unint64_t sub_1DB256088()
{
  result = qword_1ECC28C70;
  if (!qword_1ECC28C70)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C70);
  }

  return result;
}

unint64_t sub_1DB256100(uint64_t a1)
{
  result = sub_1DB256088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB25612C()
{
  result = qword_1ECC28C78;
  if (!qword_1ECC28C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28C80, &qword_1DB2CC4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C78);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DB256220(sqlite3_stmt **a1@<X0>, int *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_1DB253718(a1, v2[2], a2);
}

uint64_t sub_1DB256278()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  if (v2 <= 2)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v0 + 16) <= 4u)
    {
      if (v2 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v2 == 5)
    {
LABEL_12:
      v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v4 = [v3 description];

      sub_1DB2BAD94();
LABEL_13:
      sub_1DB2BA634();
    }
  }

  v6 = *v0;

  return sub_1DB2BA634();
}

OnDeviceStorageCore::URIQueryParameter::FileMode_optional __swiftcall URIQueryParameter.FileMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URIQueryParameter.FileMode.rawValue.getter()
{
  v1 = 28530;
  v2 = 6518642;
  if (*v0 != 2)
  {
    v2 = 0x79726F6D656DLL;
  }

  if (*v0)
  {
    v1 = 30578;
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

uint64_t sub_1DB2565EC()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25668C()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB256718()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2567C0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 28530;
  v4 = 0xE300000000000000;
  v5 = 6518642;
  if (*v1 != 2)
  {
    v5 = 0x79726F6D656DLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 30578;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

OnDeviceStorageCore::URIQueryParameter::CacheMode_optional __swiftcall URIQueryParameter.CacheMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t URIQueryParameter.CacheMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65746176697270;
  }

  else
  {
    result = 0x646572616873;
  }

  *v0;
  return result;
}

uint64_t sub_1DB2568B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65746176697270;
  }

  else
  {
    v4 = 0x646572616873;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x65746176697270;
  }

  else
  {
    v6 = 0x646572616873;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB25695C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2569DC()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB256A48()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB256AC4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB256B24(uint64_t *a1@<X8>)
{
  v2 = 0x646572616873;
  if (*v1)
  {
    v2 = 0x65746176697270;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t URIQueryParameter.description.getter()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(v0 + 16);
  v9 = *v0;
  v10 = v4;
  v6 = sub_1DB256278();
  v7 = MEMORY[0x1E1282BD0](v6);
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t sub_1DB256C5C()
{
  result = qword_1ECC28C90;
  if (!qword_1ECC28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C90);
  }

  return result;
}

unint64_t sub_1DB256CB4()
{
  result = qword_1ECC28C98;
  if (!qword_1ECC28C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C98);
  }

  return result;
}

uint64_t sub_1DB256D08()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(v0 + 16);
  v9 = *v0;
  v10 = v4;
  v6 = sub_1DB256278();
  v7 = MEMORY[0x1E1282BD0](v6);
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1DB256E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB256E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

double sub_1DB256F2C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1DB256F38@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1DB256FD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1DB256FF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Connection.cipherVersion.getter()
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v0);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v1, &v4);

  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DB145A68(&v4);
    return 0;
  }
}

void Connection.key(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  sub_1DB2BAE24();
  sqlite3_activate_see();
  v9 = *(v6 + 16);
  os_unfair_lock_lock((v9 + 24));
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = *(v9 + 16);
  if (a4)
  {
    sub_1DB2BAE24();
  }

  v11 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v9 + 24));

  v12 = sub_1DB252CB8(v11, v6);
  if (v14 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    sub_1DB1365E0();
    v22 = swift_allocError();
    *v23 = v18;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
    sub_1DB1434F4(v18, v19, v20);
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v22);
    swift_allocError();
    *v24 = v18;
    v24[1] = v19;
    v24[2] = v20;
    v24[3] = v21;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v16);
    if (!v5)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.scalar(_:)(v17, v25);

      sub_1DB145A68(v25);
    }
  }
}

void Connection.key(_:db:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *(*a1 + 16);
  sqlite3_activate_see();
  v8 = *(v5 + 16);
  os_unfair_lock_lock((v8 + 24));
  if (v7 >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v8 + 16);
    if (a3)
    {
      sub_1DB2BAE24();
    }

    v10 = sqlite3_key_v2();
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v8 + 24));

    v11 = sub_1DB252CB8(v10, v5);
    if (v13 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v17 = v11;
      v18 = v12;
      v19 = v13;
      v20 = v14;
      sub_1DB1365E0();
      v21 = swift_allocError();
      *v22 = v17;
      v22[1] = v18;
      v22[2] = v19;
      v22[3] = v20;
      sub_1DB1434F4(v17, v18, v19);
      sub_1DB15B294();
      MEMORY[0x1E1284A10](v21);
      swift_allocError();
      *v23 = v17;
      v23[1] = v18;
      v23[2] = v19;
      v23[3] = v20;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v15);
      if (!v4)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.scalar(_:)(v16, v24);

        sub_1DB145A68(v24);
      }
    }
  }
}

void sub_1DB257708(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  if (!a1)
  {
    sub_1DB135B68();
    swift_allocError();
    *v12 = 0xD000000000000025;
    *(v12 + 8) = 0x80000001DB2D68F0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0;
LABEL_11:
    swift_willThrow();
    return;
  }

  v9 = a2 - a1;
  sqlite3_activate_see();
  v10 = *(a4 + 16);
  os_unfair_lock_lock((v10 + 24));
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = *(v10 + 16);
  if (a3)
  {
    sub_1DB2BAE24();
  }

  v13 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v10 + 24));

  v14 = sub_1DB252CB8(v13, a4);
  if (v16 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    sub_1DB1365E0();
    v24 = swift_allocError();
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    sub_1DB1434F4(v20, v21, v22);
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v24);
    swift_allocError();
    *v26 = v20;
    v26[1] = v21;
    v26[2] = v22;
    v26[3] = v23;
    goto LABEL_11;
  }

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v18);
  if (!v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    Statement.scalar(_:)(v19, v27);

    sub_1DB145A68(v27);
    *a5 = a4;
  }
}

uint64_t Connection.keyAndMigrate(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1DB2BAE24();
  sub_1DB258078(a3, a4, v8 + 32, v7, 1);
  v10 = v9;
  if (!v4)
  {
  }

  return v10;
}

void Connection.keyAndMigrate(_:db:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB258078(a2, a3, *a1 + 32, *(*a1 + 16), 1);
  if (!v3)
  {
  }
}

void sub_1DB257AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    sub_1DB258078(a3, a4, a1, a2 - a1, 1);
    if (!v5)
    {
      *a5 = v7;
    }
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v8 = 0xD000000000000025;
    *(v8 + 8) = 0x80000001DB2D68F0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t Connection.rekey(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1DB2BAE24();
  sub_1DB2584A4(a3, a4, v8 + 32, v7);
  v10 = v9;
  if (!v4)
  {
  }

  return v10;
}

void Connection.rekey(_:db:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB2584A4(a2, a3, *a1 + 32, *(*a1 + 16));
  if (!v3)
  {
  }
}

uint64_t sub_1DB257C78()
{
  v2 = *v0;
  result = sub_1DB2BA7A4();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1DB257CF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    sub_1DB2584A4(a3, a4, a1, a2 - a1);
    if (!v5)
    {
      *a5 = v7;
    }
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v8 = 0xD000000000000025;
    *(v8 + 8) = 0x80000001DB2D68F0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t Connection.cipherExport(_:key:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v16 = *a1;
  v17 = v5;
  Connection.attach(_:as:key:)(&v16, 0x655F726568706963, 0xED000074726F7078, a2, a3);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    inited = swift_initStackObject();
    strcpy((inited + 32), "cipher_export");
    v7 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 46) = -4864;
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v8);
    v18 = 0;
    v9 = MEMORY[0x1E69E6158];
    sub_1DB255E8C(inited);

    v10 = v18;
    Statement.run(_:)(MEMORY[0x1E69E7CC0]);
    v18 = v10;
    if (v10)
    {
LABEL_5:

      return v3;
    }

    swift_setDeallocating();
    sub_1DB145A68(inited + 32);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    strcpy((v12 + 32), "cipher_export");
    *(v12 + 56) = v9;
    *(v12 + 64) = &protocol witness table for String;
    *(v12 + 46) = -4864;
    swift_allocObject();

    v14 = v18;
    sub_1DB253534(v13);
    v18 = v14;
    if (!v14)
    {
      sub_1DB255E8C(v12);

      v15 = v18;
      Statement.run(_:)(MEMORY[0x1E69E7CC0]);
      v18 = v15;
      if (!v15)
      {

        swift_setDeallocating();
        sub_1DB145A68(v12 + 32);

        return v3;
      }

      goto LABEL_5;
    }
  }

  return v3;
}

void sub_1DB258078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5;
  sqlite3_activate_see();
  v11 = *(v7 + 16);
  os_unfair_lock_lock((v11 + 24));
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v12 = *(v11 + 16);
  if (a2)
  {
    sub_1DB2BAE24();
  }

  v13 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v11 + 24));

  v14 = sub_1DB252CB8(v13, v7);
  if (v16 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    sub_1DB1365E0();
    v24 = swift_allocError();
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    sub_1DB136634();
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v24);
    swift_allocError();
    *v26 = v20;
    v26[1] = v21;
    v26[2] = v22;
    v26[3] = v23;
    swift_willThrow();
    return;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v18);
  if (v6)
  {
    return;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v19, v39);

  sub_1DB1609EC(v39, &v36);
  if (!v38)
  {
    sub_1DB145A68(&v36);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1DB2BB4F4();

    v36 = 0xD000000000000022;
    v37 = 0x80000001DB2D6940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v27 = sub_1DB2BB354();
    MEMORY[0x1E1283490](v27);

    v28 = v36;
    v29 = v37;
    sub_1DB1365E0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = xmmword_1DB2C77D0;
    swift_willThrow();
    goto LABEL_20;
  }

  if (v34 != 48 || v35 != 0xE100000000000000)
  {
    v31 = sub_1DB2BB924();

    if (v31)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_17:
  sub_1DB145A68(v39);
LABEL_18:
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v32);
  if (v6)
  {
    return;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v33, v39);

LABEL_20:
  sub_1DB145A68(v39);
}

void sub_1DB2584A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  os_unfair_lock_lock((v7 + 24));
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = *(v7 + 16);
  if (a2)
  {
    sub_1DB2BAE24();
  }

  v9 = sqlite3_rekey_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v7 + 24));

  v10 = sub_1DB252CB8(v9, v4);
  if (v12 < 0xFFFFFFFF00000000)
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    sub_1DB1365E0();
    v18 = swift_allocError();
    *v19 = v14;
    v19[1] = v15;
    v19[2] = v16;
    v19[3] = v17;
    sub_1DB136634();
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v18);
    swift_allocError();
    *v20 = v14;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    swift_willThrow();
  }
}

uint64_t sub_1DB258638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1DB2BB464();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1DB138470((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DB25CF78(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DB25CF78(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static Module.FTS4(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, inited + 32);

  sub_1DB1414E8(v5);
  type metadata accessor for FTS4Config();
  v6 = swift_initStackObject();
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 513;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = v7;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 81) = 0u;
  v8 = sub_1DB25CA00(inited);

  v9 = v8[3];
  v10 = v8[4];
  v11 = v8[5];
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = 0;
  sub_1DB1718E4(v9, v10);
  v12 = sub_1DB25B130();

  *a2 = 879981670;
  a2[1] = 0xE400000000000000;
  a2[2] = v12;
  return result;
}

uint64_t static Module.FTS4(_:tokenize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  type metadata accessor for FTS4Config();
  inited = swift_initStackObject();
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0u;
  *(inited + 152) = 513;
  v9 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v9;
  *(inited + 56) = 0u;
  *(inited + 72) = 0u;
  *(inited + 81) = 0u;
  v10 = sub_1DB25CA00(a1);

  v11 = v10[3];
  v12 = v10[4];
  v13 = v10[5];
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  sub_1DB1757B0(v5, v6);
  sub_1DB1718E4(v11, v12);
  v14 = sub_1DB25B130();

  *a3 = 879981670;
  a3[1] = 0xE400000000000000;
  a3[2] = v14;
  return result;
}

double FTS4Config.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 513;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t static Module.FTS4(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1DB25B130();
  *a1 = 879981670;
  a1[1] = 0xE400000000000000;
  a1[2] = result;
  return result;
}

uint64_t VirtualTable.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[9];
  v24 = v3[8];
  v25 = v7;
  v26 = v3[10];
  v27 = *(v3 + 22);
  v8 = v3[5];
  v20 = v3[4];
  v21 = v8;
  v9 = v3[7];
  v22 = v3[6];
  v23 = v9;
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v11 = v3[3];
  v18 = v3[2];
  v19 = v11;
  sub_1DB258C78(0, v15);
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = &protocol witness table for String;
  v14[0] = a1;
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, 0x484354414DLL, 0xE500000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

{
  v7 = v3[9];
  v29 = v3[8];
  v30 = v7;
  v31 = v3[10];
  v32 = *(v3 + 22);
  v8 = v3[5];
  v25 = v3[4];
  v26 = v8;
  v9 = v3[7];
  v27 = v3[6];
  v28 = v9;
  v10 = v3[1];
  v21 = *v3;
  v22 = v10;
  v11 = v3[3];
  v23 = v3[2];
  v24 = v11;
  sub_1DB258C78(0, v19);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a1;
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  sub_1DB2B57D4(inited, 1, 0x484354414DLL, 0xE500000000000000, v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v13 = v20[0];
  v14 = v20[1];
  v15 = v20[2];
  a3[3] = &type metadata for VirtualTable;
  a3[4] = sub_1DB25CB30();
  v16 = swift_allocObject();
  *a3 = v16;

  sub_1DB259694(v13, v14, v15, v16 + 16);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DB258C78@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[6];
  v7 = v2[7];
  if (v2[5])
  {
    v8 = v2[4];
    if (a1)
    {
      v33 = v2[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD590;
      v10 = sub_1DB2B995C(34, 0xE100000000000000);
      v32 = v11;
      v12 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_1DB2BD5A0;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v13 + 56) = v14;
        v15 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(v13 + 64) = v15;
        *(v13 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
        *(v13 + 40) = v16;
        *(v13 + 48) = MEMORY[0x1E69E7CC0];
        *(v13 + 96) = v14;
        *(v13 + 104) = v15;
        *(v13 + 72) = v10;
        *(v13 + 80) = v32;
        v12 = MEMORY[0x1E69E7CC0];
        *(v13 + 88) = MEMORY[0x1E69E7CC0];
        sub_1DB2B9A70(v13, (inited + 32));
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 32) = v10;
        *(inited + 40) = v32;
        *(inited + 48) = v12;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 96) = v29;
      v30 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 104) = v30;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      *(inited + 88) = v12;
      *(inited + 136) = v29;
      *(inited + 144) = v30;
      *(inited + 112) = sub_1DB2B995C(34, 0xE100000000000000);
      *(inited + 120) = v31;
      *(inited + 128) = v12;
      sub_1DB2B9A70(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      return swift_arrayDestroy();
    }

    v18 = v2[4];
    v19 = v2[5];
  }

  else
  {
    v17 = v2[3];
  }

  v20 = sub_1DB2B995C(34, 0xE100000000000000);
  v22 = v21;

  if (!v7)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    result = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    a2[4] = result;
    *a2 = v20;
    a2[1] = v22;
    a2[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1DB2BD5A0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v23 + 56) = v24;
  v25 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(v23 + 64) = v25;
  *(v23 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
  v26 = MEMORY[0x1E69E7CC0];
  *(v23 + 40) = v27;
  *(v23 + 48) = v26;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 72) = v20;
  *(v23 + 80) = v22;
  *(v23 + 88) = v26;
  sub_1DB2B9A70(v23, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t VirtualTable.match(_:)(uint64_t *a1)
{
  return sub_1DB25913C(a1, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B57D4);
}

{
  return sub_1DB25913C(a1, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B594C);
}

uint64_t sub_1DB25913C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = v5[9];
  v30 = v5[8];
  v31 = v13;
  v32 = v5[10];
  v33 = *(v5 + 22);
  v14 = v5[5];
  v26 = v5[4];
  v27 = v14;
  v15 = v5[7];
  v28 = v5[6];
  v29 = v15;
  v16 = v5[1];
  v22 = *v5;
  v23 = v16;
  v17 = v5[3];
  v24 = v5[2];
  v25 = v17;
  sub_1DB258C78(0, v21);
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20[0] = v11;
  v20[1] = v10;
  v20[4] = sub_1DB1688F0(a4, a2, a3);
  v20[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v21, inited + 32);
  sub_1DB164980(v20, inited + 72);

  a5(inited, 1, 0x484354414DLL, 0xE500000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t VirtualTable.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[9];
  v28 = v2[8];
  v29 = v5;
  v30 = v2[10];
  v31 = *(v2 + 22);
  v6 = v2[5];
  v24 = v2[4];
  v25 = v6;
  v7 = v2[7];
  v26 = v2[6];
  v27 = v7;
  v8 = v2[1];
  v20 = *v2;
  v21 = v8;
  v9 = v2[3];
  v22 = v2[2];
  v23 = v9;
  v15 = v4;
  v16 = *(a1 + 8);
  VirtualTable.match(_:)(&v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  a2[3] = &type metadata for VirtualTable;
  a2[4] = sub_1DB25CB30();
  v13 = swift_allocObject();
  *a2 = v13;

  sub_1DB259694(v10, v11, v12, v13 + 16);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

{
  v4 = *a1;
  v5 = v2[9];
  v28 = v2[8];
  v29 = v5;
  v30 = v2[10];
  v31 = *(v2 + 22);
  v6 = v2[5];
  v24 = v2[4];
  v25 = v6;
  v7 = v2[7];
  v26 = v2[6];
  v27 = v7;
  v8 = v2[1];
  v20 = *v2;
  v21 = v8;
  v9 = v2[3];
  v22 = v2[2];
  v23 = v9;
  v15 = v4;
  v16 = *(a1 + 8);
  VirtualTable.match(_:)(&v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  a2[3] = &type metadata for VirtualTable;
  a2[4] = sub_1DB25CB30();
  v13 = swift_allocObject();
  *a2 = v13;
  sub_1DB259694(v10, v11, v12, v13 + 16);
}

double sub_1DB259694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 48);
  v38 = *(v4 + 32);
  v39 = v9;
  v10 = *(v4 + 72);
  v40 = *(v4 + 64);
  v11 = *(v4 + 16);
  v36 = *v4;
  v37 = v11;
  v13 = *(v4 + 80);
  v12 = *(v4 + 88);
  v14 = *(v4 + 112);
  v30 = *(v4 + 96);
  v31 = v14;
  v15 = *(v4 + 128);
  v16 = *(v4 + 144);
  v17 = *(v4 + 160);
  v35 = *(v4 + 176);
  v33 = v16;
  v34 = v17;
  v32 = v15;
  if (v13)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v26[0] = v10;
    v26[1] = v13;
    v28 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    v26[2] = v12;
    v25[3] = v27;
    v25[4] = v28;
    v25[0] = a1;
    v25[1] = a2;
    v25[2] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v26, inited + 32);
    sub_1DB164980(v25, inited + 72);
    sub_1DB1757F4(v4, v29);
    sub_1DB1757B0(v10, v13);

    sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, v29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    a1 = v29[0];
    a2 = v29[1];
    a3 = v29[2];
  }

  else
  {
    sub_1DB1757F4(v4, v29);
  }

  sub_1DB1718E4(v10, v13);
  v19 = v39;
  *(a4 + 32) = v38;
  *(a4 + 48) = v19;
  v20 = v40;
  v21 = v37;
  *a4 = v36;
  *(a4 + 16) = v21;
  *(a4 + 64) = v20;
  *(a4 + 72) = a1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  v22 = v33;
  *(a4 + 128) = v32;
  *(a4 + 144) = v22;
  *(a4 + 160) = v34;
  *(a4 + 176) = v35;
  result = *&v30;
  v24 = v31;
  *(a4 + 96) = v30;
  *(a4 + 112) = v24;
  return result;
}

void sub_1DB2598D0()
{
  qword_1ECC28CA0 = 0x656C706D6973;
  *algn_1ECC28CA8 = 0xE600000000000000;
  qword_1ECC28CB0 = MEMORY[0x1E69E7CC0];
}

uint64_t static Tokenizer.Simple.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26C08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1ECC28CA8;
  v2 = qword_1ECC28CB0;
  *a1 = qword_1ECC28CA0;
  a1[1] = v1;
  a1[2] = v2;
}

void sub_1DB259980()
{
  qword_1ECC28CB8 = 0x726574726F70;
  unk_1ECC28CC0 = 0xE600000000000000;
  qword_1ECC28CC8 = MEMORY[0x1E69E7CC0];
}

uint64_t static Tokenizer.Porter.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26C10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ECC28CC0;
  v2 = qword_1ECC28CC8;
  *a1 = qword_1ECC28CB8;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t static Tokenizer.Unicode61(removeDiacritics:tokenchars:separators:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result == 2)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB2BB4F4();

    v8 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v8);

    v9 = sub_1DB2B995C(34, 0xE100000000000000);
    v11 = v10;

    result = sub_1DB1572F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = result;
    v13 = *(result + 16);
    v12 = *(result + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_1DB1572F0((v12 > 1), v13 + 1, 1, result);
      v7 = result;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
  }

  if (!*(a2 + 16))
  {
    if (!*(a3 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_1DB258638(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v15 = sub_1DB2BAD24();
  v17 = v16;

  MEMORY[0x1E1283490](v15, v17);

  v18 = sub_1DB2B995C(34, 0xE100000000000000);
  v20 = v19;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB1572F0(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v22 = *(v7 + 16);
  v21 = *(v7 + 24);
  if (v22 >= v21 >> 1)
  {
    result = sub_1DB1572F0((v21 > 1), v22 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v22 + 1;
  v23 = v7 + 16 * v22;
  *(v23 + 32) = v18;
  *(v23 + 40) = v20;
  if (*(a3 + 16))
  {
LABEL_14:
    sub_1DB258638(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v24 = sub_1DB2BAD24();
    v26 = v25;

    MEMORY[0x1E1283490](v24, v26);

    v27 = sub_1DB2B995C(34, 0xE100000000000000);
    v29 = v28;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1572F0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v31 = *(v7 + 16);
    v30 = *(v7 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1DB1572F0((v30 > 1), v31 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v31 + 1;
    v32 = v7 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
  }

LABEL_19:
  *a4 = 0x3665646F63696E75;
  a4[1] = 0xE900000000000031;
  a4[2] = v7;
  return result;
}

uint64_t static Tokenizer.Trigram(caseSensitive:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  result = swift_allocObject();
  *(result + 16) = xmmword_1DB2BD5A0;
  strcpy((result + 32), "case_sensitive");
  *(result + 47) = -18;
  v5 = 48;
  if (a1)
  {
    v5 = 49;
  }

  *(result + 48) = v5;
  *(result + 56) = 0xE100000000000000;
  *a2 = 0x6D617267697274;
  a2[1] = 0xE700000000000000;
  a2[2] = result;
  return result;
}

uint64_t static Tokenizer.Custom(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DB2B995C(34, 0xE100000000000000);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB2BCC40;
  result = sub_1DB2B995C(34, 0xE100000000000000);
  *(v5 + 32) = result;
  *(v5 + 40) = v7;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t Tokenizer.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Tokenizer.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB2BCC40;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  sub_1DB1413F4(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v6 = sub_1DB2BAD24();

  return v6;
}

uint64_t FTSConfig.ColumnOption.hashValue.getter()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](0);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25A150(uint64_t a1, uint64_t a2)
{
  sub_1DB164980(a1, v12);
  *(&v13 + 1) = a2;
  swift_beginAccess();
  v4 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB157D60(0, v4[2] + 1, 1, v4);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB157D60((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[6 * v7];
  v9 = v12[0];
  v10 = v13;
  v8[3] = v12[1];
  v8[4] = v10;
  v8[2] = v9;
  *(v2 + 16) = v4;
  swift_endAccess();
}

uint64_t sub_1DB25A240(uint64_t a1)
{
  sub_1DB25CA00(a1);
}

uint64_t sub_1DB25A268(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v1[3] = *a1;
  v1[4] = v2;
  v1[5] = v4;
  sub_1DB1757B0(v3, v2);
  sub_1DB1718E4(v5, v6);
}

uint64_t sub_1DB25A2D0()
{

  sub_1DB141858(v0);
}

uint64_t sub_1DB25A310(uint64_t a1)
{
  sub_1DB164980(a1, v3);
  swift_beginAccess();
  sub_1DB25CB84(v3, v1 + 56);
  swift_endAccess();
}

uint64_t sub_1DB25A374()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];

    sub_1DB1384B0(0, v2, 0);
    v3 = v24;
    v4 = v1 + 32;
    do
    {
      sub_1DB1446A4(v4, v20, &qword_1ECC26DD8, &qword_1DB2BCF40);
      sub_1DB1446A4(v20, v18, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v5 = v19;
      sub_1DB1355D0(v18, v16);
      v17 = v5;
      sub_1DB164980(v16, v21);
      sub_1DB1445E0(v16, &qword_1ECC26DD8, &qword_1DB2BCF40);
      sub_1DB1445E0(v20, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v24 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB1384B0((v6 > 1), v7 + 1, 1);
      }

      v8 = v22;
      v9 = v23;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v11 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v10);
      v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v14 + 16))(v13);
      sub_1DB16412C(v7, v13, &v24, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v3 = v24;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DB25A590()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v3 = (*(*v0 + 36))();
  sub_1DB1414E8(v3);
  v4 = v0[4];
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB2BCC40;
    *(v7 + 32) = v6;
    *(v7 + 40) = v4;
    v36[0] = v7;

    sub_1DB1757B0(v6, v4);
    sub_1DB1413F4(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v8 = sub_1DB2BAD24();
    v10 = v9;
    sub_1DB1718E4(v6, v4);

    sub_1DB25C1AC(0x657A696E656B6F74, 0xE800000000000000, v8, v10, MEMORY[0x1E69E7CC0], &v39);
  }

  v36[0] = v1[6];
  swift_bridgeObjectRetain_n();
  sub_1DB25B820(v36);

  v11 = v36[0];
  v12 = *(v36[0] + 2);
  if (v12)
  {
    v36[0] = v2;
    sub_1DB138470(0, v12, 0);
    v13 = 32;
    v14 = v36[0];
    do
    {
      *&v33 = *&v11[v13];
      v15 = sub_1DB2BB8F4();
      v36[0] = v14;
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v32 = v15;
        v20 = v16;
        sub_1DB138470((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v32;
        v14 = v36[0];
      }

      *(v14 + 2) = v18 + 1;
      v19 = &v14[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (*(v14 + 2))
  {
    v36[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB2BAD24();

    v21 = sub_1DB2B995C(34, 0xE100000000000000);
    v23 = v22;

    sub_1DB25C488(0x786966657270, 0xE600000000000000, v21, v23, MEMORY[0x1E69E7CC0], &v39, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
  }

  if (*(v1 + 96) == 1)
  {
    v24 = sub_1DB2B995C(34, 0xE100000000000000);
    sub_1DB25C488(0x746E65746E6F63, 0xE700000000000000, v24, v25, MEMORY[0x1E69E7CC0], &v39, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
  }

  else
  {
    swift_beginAccess();
    sub_1DB1446A4((v1 + 7), &v33, &qword_1ECC28CD8, &qword_1DB2CCA00);
    if (v34)
    {
      sub_1DB1355D0(&v33, v36);
      v26 = v37;
      v27 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_1DB288D3C(0, v26, *(v27 + 8), &v33);
      v28 = v34;
      v29 = v35;
      v30 = __swift_project_boxed_opaque_existential_1(&v33, v34);
      sub_1DB25C754(0x746E65746E6F63, 0xE700000000000000, v30, &v39, v28, v29);

      __swift_destroy_boxed_opaque_existential_1(&v33);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      sub_1DB1445E0(&v33, &qword_1ECC28CD8, &qword_1DB2CCA00);
    }
  }

  return v39;
}

void *FTSConfig.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  return v0;
}

uint64_t FTSConfig.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);

  return swift_deallocClassInstance();
}

uint64_t FTS4Config.MatchInfo.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB2BB6F4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB25ABF4()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AC50()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AC98@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

  *a2 = v5 != 0;
  return result;
}

OnDeviceStorageCore::FTS4Config::Order_optional __swiftcall FTS4Config.Order.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FTS4Config.Order.rawValue.getter()
{
  if (*v0)
  {
    result = 1668506980;
  }

  else
  {
    result = 6517601;
  }

  *v0;
  return result;
}

uint64_t sub_1DB25AD90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1668506980;
  }

  else
  {
    v4 = 6517601;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1668506980;
  }

  else
  {
    v6 = 6517601;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB25AE28()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AE9C()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB25AEFC()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AF6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB25AFCC(uint64_t *a1@<X8>)
{
  v2 = 6517601;
  if (*v1)
  {
    v2 = 1668506980;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double FTS4Config.init()()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 152) = 513;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t sub_1DB25B03C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1DB25B084(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_1DB25B0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t sub_1DB25B130()
{
  v45[0] = sub_1DB25A590();
  swift_beginAccess();
  v37 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      sub_1DB1446A4(v6, &v41, &qword_1ECC26DD8, &qword_1DB2BCF40);
      if (*(*(&v43 + 1) + 16))
      {
        i = v41;
        v39 = v42;
        v40 = v43;
        result = swift_isUniquelyReferenced_nonNull_native();
        v44 = v5;
        if ((result & 1) == 0)
        {
          result = sub_1DB138760(0, *(v5 + 16) + 1, 1);
          v5 = v44;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_1DB138760((v7 > 1), v8 + 1, 1);
          v5 = v44;
        }

        *(v5 + 16) = v8 + 1;
        v9 = (v5 + 48 * v8);
        v10 = i;
        v11 = v40;
        v9[3] = v39;
        v9[4] = v11;
        v9[2] = v10;
      }

      else
      {
        result = sub_1DB1445E0(&v41, &qword_1ECC26DD8, &qword_1DB2BCF40);
      }

      ++v4;
      v6 += 48;
      if (v2 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v12 = 0;
    v13 = *(v5 + 16);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_14:
    v39 = 0u;
    v40 = 0u;
    v12 = v13;
    for (i = 0u; ; sub_1DB1446A4(v5 + 32 + 48 * v12++, &i, &qword_1ECC26DD8, &qword_1DB2BCF40))
    {
      v41 = i;
      v42 = v39;
      v43 = v40;
      if (!*(&v39 + 1))
      {
        break;
      }

      sub_1DB1355D0(&v41, &i);
      v14 = *(&v39 + 1);
      v15 = v40;
      v16 = __swift_project_boxed_opaque_existential_1(&i, *(&v39 + 1));
      sub_1DB25C754(0x7865646E69746F6ELL, 0xEA00000000006465, v16, v45, v14, v15);

      result = __swift_destroy_boxed_opaque_existential_1(&i);
      if (v12 == v13)
      {
        goto LABEL_14;
      }

LABEL_15:
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v12 >= *(v5 + 16))
      {
        goto LABEL_34;
      }
    }

    if (*(v37 + 144))
    {
      v17 = *(v37 + 136);
      v18 = *(v37 + 144);

      v19 = sub_1DB2B995C(34, 0xE100000000000000);
      v21 = v20;

      sub_1DB25C488(0x65676175676E616CLL, 0xEA00000000006469, v19, v21, MEMORY[0x1E69E7CC0], v45, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    if (*(v37 + 112))
    {
      v22 = *(v37 + 104);
      v23 = *(v37 + 112);

      v24 = sub_1DB2B995C(34, 0xE100000000000000);
      v26 = v25;

      sub_1DB25C488(0x73736572706D6F63, 0xE800000000000000, v24, v26, MEMORY[0x1E69E7CC0], v45, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    if (*(v37 + 128))
    {
      v27 = *(v37 + 120);
      v28 = *(v37 + 128);

      v29 = sub_1DB2B995C(34, 0xE100000000000000);
      v31 = v30;

      sub_1DB25C488(0x6572706D6F636E75, 0xEA00000000007373, v29, v31, MEMORY[0x1E69E7CC0], v45, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    if ((*(v37 + 152) & 1) == 0)
    {
      v32 = sub_1DB2B995C(34, 0xE100000000000000);
      sub_1DB25C488(0x666E69686374616DLL, 0xE90000000000006FLL, v32, v33, MEMORY[0x1E69E7CC0], v45, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    if (*(v37 + 153) != 2)
    {
      v34 = sub_1DB2B995C(34, 0xE100000000000000);
      v36 = v35;

      sub_1DB25C488(0x726564726FLL, 0xE500000000000000, v34, v36, MEMORY[0x1E69E7CC0], v45, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    return v45[0];
  }

  return result;
}

uint64_t sub_1DB25B6C4()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[18];
}

void *FTS4Config.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  return v0;
}

uint64_t FTS4Config.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  return swift_deallocClassInstance();
}

uint64_t sub_1DB25B820(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C15C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1DB2BB8E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1DB2BB104();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1DB25B954(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1DB25B954(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1DB25C120(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1DB25BEA0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1571EC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1DB1571EC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1DB25BEA0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1DB25BEA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1DB25C094(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB25C120(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1DB25C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v32[3] = v12;
  v13 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v32[0] = a3;
  v32[1] = a4;
  v32[4] = v13;
  v32[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  *(inited + 32) = a1;
  v15 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v15;
  sub_1DB164980(v32, inited + 72);

  sub_1DB2B9A70(inited, v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v16 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1DB1573FC(0, v16[2] + 1, 1, v16);
    *a6 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1DB1573FC((v18 > 1), v19 + 1, 1, v16);
    *a6 = v16;
  }

  v20 = v30;
  v21 = v31;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v28[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v26 + 16))(v25);
  sub_1DB200A54(v19, v25, a6, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v29);
  *a6 = v16;

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v16;
}

void *sub_1DB25C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v35[0] = a3;
  v35[1] = a4;
  v35[4] = sub_1DB1688F0(a9, a7, a8);
  v35[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 32) = a1;
  v18 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v18;
  sub_1DB164980(v35, inited + 72);

  sub_1DB2B9A70(inited, v32);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v19 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1DB1573FC(0, v19[2] + 1, 1, v19);
    *a6 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1DB1573FC((v21 > 1), v22 + 1, 1, v19);
    *a6 = v19;
  }

  v23 = v33;
  v24 = v34;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  (*(v29 + 16))(v28);
  sub_1DB200A54(v22, v28, a6, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v32);
  *a6 = v19;

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v19;
}

void *sub_1DB25C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30[3] = a5;
  v30[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 32) = a1;
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v13;
  sub_1DB164980(v30, inited + 72);

  sub_1DB2B9A70(inited, v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1DB1573FC(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1DB1573FC((v16 > 1), v17 + 1, 1, v14);
    *a4 = v14;
  }

  v18 = v28;
  v19 = v29;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v21 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23);
  sub_1DB200A54(v17, v23, a4, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v27);
  *a4 = v14;

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v14;
}

uint64_t sub_1DB25CA00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB164980(v3, v15);
      sub_1DB164980(v15, v13);
      *(&v14 + 1) = v4;
      swift_beginAccess();
      v5 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1DB157D60(0, v5[2] + 1, 1, v5);
        *(v1 + 16) = v5;
      }

      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1DB157D60((v7 > 1), v8 + 1, 1, v5);
      }

      v5[2] = v8 + 1;
      v9 = &v5[6 * v8];
      v10 = v13[0];
      v11 = v14;
      v9[3] = v13[1];
      v9[4] = v11;
      v9[2] = v10;
      *(v1 + 16) = v5;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v15);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return v1;
}

unint64_t sub_1DB25CB30()
{
  result = qword_1ECC28CD0;
  if (!qword_1ECC28CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CD0);
  }

  return result;
}

uint64_t sub_1DB25CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28CD8, &qword_1DB2CCA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB25CBF8()
{
  result = qword_1ECC28CE0;
  if (!qword_1ECC28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CE0);
  }

  return result;
}

unint64_t sub_1DB25CC50()
{
  result = qword_1ECC28CE8;
  if (!qword_1ECC28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CE8);
  }

  return result;
}

unint64_t sub_1DB25CCA8()
{
  result = qword_1ECC28CF0;
  if (!qword_1ECC28CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CF0);
  }

  return result;
}

uint64_t sub_1DB25CF78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t static Module.FTS5(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1DB25D45C();
  *a1 = 896758886;
  a1[1] = 0xE400000000000000;
  a1[2] = result;
  return result;
}

OnDeviceStorageCore::FTS5Config::Detail_optional __swiftcall FTS5Config.Detail.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FTS5Config.Detail.rawValue.getter()
{
  v1 = 0x6E6D756C6F63;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_1DB25D068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6D756C6F63;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB25D14C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25D1DC()
{
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB25D258()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB25D2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double FTS5Config.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 97) = 3;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

double FTS5Config.init()()
{
  *(v0 + 97) = 3;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t sub_1DB25D3E8(uint64_t a1)
{
  sub_1DB164980(a1, v3);
  swift_beginAccess();
  sub_1DB25D69C(v3, v1 + 104);
  swift_endAccess();
}

uint64_t sub_1DB25D43C(uint64_t a1)
{
  *(v1 + 144) = a1;
  *(v1 + 152) = 0;
}

uint64_t sub_1DB25D45C()
{
  v16 = sub_1DB25A590();
  swift_beginAccess();
  sub_1DB1446A4(v0 + 104, &v11, &qword_1ECC27898, &unk_1DB2CCD00);
  if (v12)
  {
    sub_1DB1355D0(&v11, v13);
    v1 = v14;
    v2 = v15;
    v3 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB25C754(0x5F746E65746E6F63, 0xED00006469776F72, v3, &v16, v1, v2);

    __swift_destroy_boxed_opaque_existential_1(v13);
    if (*(v0 + 152))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1DB1445E0(&v11, &qword_1ECC27898, &unk_1DB2CCD00);
  if ((*(v0 + 152) & 1) == 0)
  {
LABEL_3:
    v4 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E7360];
    *(v5 + 16) = xmmword_1DB2BCC40;
    *(v5 + 56) = v6;
    *(v5 + 64) = &protocol witness table for Int64;
    *(v5 + 32) = v4;
    sub_1DB25C44C(0x69736E6D756C6F63, 0xEA0000000000657ALL, 63, 0xE100000000000000, v5, &v16);
  }

LABEL_4:
  if (*(v0 + 97) <= 2u)
  {
    v7 = sub_1DB2B995C(34, 0xE100000000000000);
    v9 = v8;

    sub_1DB25C170(0x6C6961746564, 0xE600000000000000, v7, v9, MEMORY[0x1E69E7CC0], &v16);
  }

  return v16;
}

uint64_t sub_1DB25D69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB25D70C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];

    sub_1DB1384B0(0, v2, 0);
    v3 = v24;
    v16[1] = v1;
    v4 = v1 + 32;
    v17 = xmmword_1DB2BD5A0;
    do
    {
      sub_1DB1446A4(v4, v22, &qword_1ECC26DD8, &qword_1DB2BCF40);
      if (*(v23 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        inited = swift_initStackObject();
        *(inited + 16) = v17;
        sub_1DB1446A4(v22, &v18, &qword_1ECC26DD8, &qword_1DB2BCF40);

        sub_1DB1355D0(&v18, inited + 32);
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 104) = sub_1DB219960();
        *(inited + 72) = 0x455845444E494E55;
        *(inited + 80) = 0xE900000000000044;
        *(inited + 88) = MEMORY[0x1E69E7CC0];
        sub_1DB2B9A70(inited, v21);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        sub_1DB1446A4(v22, &v18, &qword_1ECC26DD8, &qword_1DB2BCF40);

        sub_1DB1355D0(&v18, v21);
      }

      sub_1DB1355D0(v21, &v18);
      sub_1DB1445E0(v22, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v24 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB1384B0((v6 > 1), v7 + 1, 1);
      }

      v8 = v19;
      v9 = v20;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(&v18, v19);
      v11 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v10);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      sub_1DB16412C(v7, v13, &v24, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v3 = v24;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *FTS5Config.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  sub_1DB1445E0((v0 + 13), &qword_1ECC27898, &unk_1DB2CCD00);
  return v0;
}

uint64_t FTS5Config.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1DB1718E4(v0[3], v0[4]);
  v3 = v0[6];

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  sub_1DB1445E0((v0 + 13), &qword_1ECC27898, &unk_1DB2CCD00);

  return swift_deallocClassInstance();
}

unint64_t sub_1DB25DB24()
{
  result = qword_1ECC28D00;
  if (!qword_1ECC28D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D00);
  }

  return result;
}

uint64_t static Module.RTree<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB2BCC40;
  *(v7 + 56) = type metadata accessor for Expression();
  *(v7 + 64) = swift_getWitnessTable();
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  v8 = type metadata accessor for Expression();

  v29 = v8;
  swift_getTupleTypeMetadata2();
  result = sub_1DB2BB124();
  if (result)
  {
    v10 = 0;
    v11 = (a2 + 72);
    while (1)
    {
      v12 = sub_1DB2BB114();
      result = sub_1DB2BB0E4();
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

      v30 = v10;
      v31 = v10 + 1;
      v14 = *(v11 - 1);
      v13 = *v11;
      v15 = *(v11 - 3);
      v32 = *(v11 - 2);
      v33 = v7;
      v17 = *(v11 - 5);
      v16 = *(v11 - 4);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;

      *(inited + 56) = v29;

      v19 = v13;

      WitnessTable = swift_getWitnessTable();
      *(inited + 64) = WitnessTable;

      *(inited + 32) = v17;
      v7 = v33;
      *(inited + 40) = v16;
      *(inited + 48) = v15;
      *(inited + 96) = v29;
      *(inited + 104) = WitnessTable;
      *(inited + 72) = v32;
      *(inited + 80) = v14;
      *(inited + 88) = v19;
      v21 = v33[2];
      v22 = v21 + 2;
      if (__OFADD__(v21, 2))
      {
        goto LABEL_18;
      }

      v23 = v33[3] >> 1;
      if (v23 < v22)
      {
        if (v21 <= v22)
        {
          v27 = v21 + 2;
        }

        else
        {
          v27 = v33[2];
        }

        result = sub_1DB1573FC(1, v27, 1, v33);
        v7 = result;
        v21 = *(result + 16);
        v23 = *(result + 24) >> 1;
      }

      if ((v23 - v21) < 2)
      {
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayInitWithCopy();

      v24 = *(v7 + 16);
      v25 = __OFADD__(v24, 2);
      v26 = v24 + 2;
      if (v25)
      {
        goto LABEL_20;
      }

      *(v7 + 16) = v26;
      result = sub_1DB2BB124();
      v10 = v30 + 1;
      v11 += 6;
      if (v31 == result)
      {
        goto LABEL_15;
      }
    }

    result = sub_1DB2BB514();
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    *a3 = 0x6565727472;
    a3[1] = 0xE500000000000000;
    a3[2] = v7;
  }

  return result;
}

uint64_t Connection.schema.getter()
{
  type metadata accessor for SchemaReader();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  return v1;
}

void Connection.foreignKeyCheck(table:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1DB2B995C(34, 0xE100000000000000);
    MEMORY[0x1E1283490](v4);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v5 = 40;
    v6 = 0xE100000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v65 = 0xD000000000000018;
  v66 = 0x80000001DB2D6AF0;
  MEMORY[0x1E1283490](v5, v6);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v7);
  if (v2)
  {

    return;
  }

  v8 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v9 = Statement.run(_:)(v8);

  v10 = *(v9 + 16);
  os_unfair_lock_lock((v10 + 24));
  v55 = (v10 + 16);
  sqlite3_reset(*(v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  sub_1DB143044();
  v57 = *(v9 + 24);
  v58 = v8;
  v56 = v10;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v66 & 1) != 0 || v65 != v57)
    {
      v11 = *(v57 + 120);
      sub_1DB2BB2C4();
      if ((v63 & 1) == 0)
      {
LABEL_69:

        return;
      }
    }

    else
    {
      os_unfair_lock_lock((v10 + 24));
      sub_1DB14A424(v55, &v65);
      os_unfair_lock_unlock((v10 + 24));
      if (v65 != 1)
      {
        goto LABEL_69;
      }
    }

    Statement.row.getter(&v65);
    v12 = v66;
    v62 = v65;
    swift_retain_n();
    if (v12 >= 1)
    {
      v13 = v8;
      v14 = 0;
      v15 = 0;
      v16 = (v8 + 32);
      v17 = v3;
      while (1)
      {
        os_unfair_lock_lock((v62 + 24));
        if (v14 == 0x80000000)
        {
          __break(1u);
LABEL_68:
          __break(1u);
          os_unfair_lock_unlock(v18);
          sub_1DB15B294();
          MEMORY[0x1E1284A10](v15);
          goto LABEL_69;
        }

        v19 = sqlite3_column_type(*(v62 + 16), v14);
        os_unfair_lock_unlock((v62 + 24));
        if (v19 > 2)
        {
          break;
        }

        if (v19 == 1)
        {
          os_unfair_lock_lock((v62 + 24));
          v25 = COERCE_DOUBLE(sqlite3_column_int64(*(v62 + 16), v14));
          os_unfair_lock_unlock((v62 + 24));
          v28 = MEMORY[0x1E69E7360];
          v29 = &protocol witness table for Int64;
          v30 = v13;
          if (v15)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_36;
          }

          os_unfair_lock_lock((v62 + 24));
          v27 = sqlite3_column_double(*(v62 + 16), v14);
          os_unfair_lock_unlock((v62 + 24));
          v25 = v27;
          v28 = MEMORY[0x1E69E63B0];
          v29 = &protocol witness table for Double;
          v30 = v13;
          if (v15)
          {
            goto LABEL_53;
          }
        }

LABEL_43:
        v33 = v30[3];
        if (((v33 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_71;
        }

        v61 = v29;
        v59 = v17;
        v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
        if (v34 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v30 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v30) - 32;
        v37 = v13;
        v38 = v36 / 40;
        v30[2] = v35;
        v30[3] = 2 * (v36 / 40);
        v39 = (v30 + 4);
        v40 = *(v13 + 24) >> 1;
        if (*(v13 + 16))
        {
          v41 = (v13 + 32);
          if (v30 != v13 || v39 >= v41 + 40 * v40)
          {
            memmove(v30 + 4, v41, 40 * v40);
            v37 = v13;
          }

          *(v37 + 16) = 0;
        }

        v16 = (v39 + 40 * v40);
        v15 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

        v17 = v59;
        v29 = v61;
LABEL_53:
        v42 = __OFSUB__(v15--, 1);
        if (v42)
        {
          goto LABEL_68;
        }

        v13 = v30;
        ++v14;
        *v16 = v25;
        *(v16 + 1) = v17;
        v16[2] = 0.0;
        *(v16 + 3) = v28;
        *(v16 + 4) = v29;
        v16 += 5;
        if (v12 == v14)
        {
          goto LABEL_57;
        }
      }

      if (v19 == 3)
      {
        os_unfair_lock_lock((v62 + 24));
        if (!sqlite3_column_text(*(v62 + 16), v14))
        {
          goto LABEL_72;
        }

        v25 = COERCE_DOUBLE(sub_1DB2BAF14());
        v17 = v31;
        os_unfair_lock_unlock((v62 + 24));
        v28 = MEMORY[0x1E69E6158];
        v29 = &protocol witness table for String;
        v30 = v13;
        if (v15)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      if (v19 != 5)
      {
        if (v19 == 4)
        {
          v60 = sub_1DB138CA8();
          os_unfair_lock_lock((v62 + 24));
          v20 = *(v62 + 16);
          v21 = sqlite3_column_blob(v20, v14);
          if (v21 && (v22 = v21, (v23 = sqlite3_column_bytes(v20, v14)) != 0))
          {
            v24 = v23;
            if (v23 <= 0)
            {
              v25 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v25 = COERCE_DOUBLE(swift_allocObject());
              v26 = _swift_stdlib_malloc_size(*&v25);
              *(*&v25 + 16) = v24;
              *(*&v25 + 24) = 2 * v26 - 64;
            }

            memcpy((*&v25 + 32), v22, v24);
          }

          else
          {
            v25 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v62 + 24));
          v28 = &type metadata for Blob;
          v29 = v60;
          v30 = v13;
          if (v15)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

LABEL_36:
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v63 = 0xD000000000000019;
        v64 = 0x80000001DB2D1D60;
        v32 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v32);

        sub_1DB15B09C(v63, v64);
      }

      v17 = 0;
      v25 = 0.0;
      v28 = 0;
      v29 = 0;
      v30 = v13;
      if (v15)
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v15 = 0;
    v13 = v8;
    v17 = v3;
LABEL_57:

    v43 = *(v13 + 24);
    if (v43 >= 2)
    {
      break;
    }

LABEL_60:
    v3 = v17;

    v63 = v13;
    sub_1DB25E77C(&v63, &v65);

    v47 = v65;
    v46 = v66;
    v49 = v67;
    v48 = v68;
    v50 = v69;
    if (v66)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v51 = v58;
      }

      else
      {
        v51 = sub_1DB157FAC(0, *(v58 + 16) + 1, 1, v58);
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1DB157FAC((v52 > 1), v53 + 1, 1, v51);
      }

      *(v51 + 2) = v53 + 1;
      v58 = v51;
      v54 = &v51[40 * v53];
      *(v54 + 4) = v47;
      *(v54 + 5) = v46;
      *(v54 + 6) = v49;
      *(v54 + 7) = v48;
      *(v54 + 8) = v50;
    }

    else
    {
      sub_1DB25F298(v65, 0);
    }

    v10 = v56;
    v8 = MEMORY[0x1E69E7CC0];
  }

  v44 = v43 >> 1;
  v42 = __OFSUB__(v44, v15);
  v45 = v44 - v15;
  if (!v42)
  {
    *(v13 + 16) = v45;
    goto LABEL_60;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_1DB25E77C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (!*(*result + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1DB1609EC(v3 + 32, v6);
  if (!v7)
  {
LABEL_12:
    result = sub_1DB145A68(v6);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v3 + 16) >= 2uLL)
    {
      sub_1DB1609EC(v3 + 72, v6);
      if (!v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
LABEL_15:

        goto LABEL_13;
      }

      if (*(v3 + 16) >= 3uLL)
      {
        sub_1DB1609EC(v3 + 112, v6);
        if (v7)
        {
          result = swift_dynamicCast();
          if (result)
          {
            *a2 = v4;
            a2[1] = v5;
            a2[2] = v4;
            a2[3] = v4;
            a2[4] = v5;
            return result;
          }

          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void Connection.integrityCheck(table:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_10;
  }

  Connection.sqliteVersion.getter(&v80);
  v3 = v80 < 3;
  if (v80 != 3 || (v3 = v81 < 33, v81 != 33))
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1DB135B68();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 10;
    swift_willThrow();
    return;
  }

  if (v82 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v80 = 40;
  v81 = 0xE100000000000000;
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v5 = v80;
  v6 = v81;
LABEL_10:
  v80 = 0xD000000000000016;
  v81 = 0x80000001DB2D6B10;
  MEMORY[0x1E1283490](v5, v6);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v8);
  v9 = v2;
  if (v2)
  {
LABEL_11:

    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v12 = Statement.run(_:)(v10);

  v13 = *(v12 + 16);
  os_unfair_lock_lock((v13 + 24));
  v71 = (v13 + 16);
  sqlite3_reset(*(v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  sub_1DB143044();
  v74 = *(v12 + 24);
  v72 = v10;
  v73 = v13;
  while (1)
  {
    v15 = v11;
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v81 & 1) == 0 && v80 == v74)
    {
      os_unfair_lock_lock((v13 + 24));
      sub_1DB256240(v71, &v80);
      os_unfair_lock_unlock((v13 + 24));
      if (v80 != 1)
      {
        break;
      }

      goto LABEL_21;
    }

    v16 = *(v74 + 120);
    sub_1DB2BB2C4();
    if ((v84 & 1) == 0)
    {
      break;
    }

LABEL_21:
    Statement.row.getter(&v80);
    v18 = v80;
    v17 = v81;
    swift_retain_n();
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = (MEMORY[0x1E69E7CC0] + 32);
      v79 = MEMORY[0x1E69E7CC0];
      v11 = v15;
      while (1)
      {
        os_unfair_lock_lock(v18 + 6);
        if (v19 == 0x80000000)
        {
          __break(1u);
LABEL_76:
          __break(1u);
          os_unfair_lock_unlock(v22);
          v53 = v20;
          v9 = 0;
          sub_1DB15B294();
          MEMORY[0x1E1284A10](v53);
          goto LABEL_77;
        }

        v23 = sqlite3_column_type(*(v18 + 2), v19);
        os_unfair_lock_unlock(v18 + 6);
        if (v23 > 2)
        {
          break;
        }

        if (v23 == 1)
        {
          os_unfair_lock_lock(v18 + 6);
          v29 = COERCE_DOUBLE(sqlite3_column_int64(*(v18 + 2), v19));
          os_unfair_lock_unlock(v18 + 6);
          v32 = MEMORY[0x1E69E7360];
          v33 = &protocol witness table for Int64;
          if (v20)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_41;
          }

          os_unfair_lock_lock(v18 + 6);
          v31 = sqlite3_column_double(*(v18 + 2), v19);
          os_unfair_lock_unlock(v18 + 6);
          v29 = v31;
          v32 = MEMORY[0x1E69E63B0];
          v33 = &protocol witness table for Double;
          if (v20)
          {
            goto LABEL_58;
          }
        }

LABEL_48:
        v36 = v79[3];
        if (((v36 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_95;
        }

        v78 = v33;
        v76 = v11;
        v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
        if (v37 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v39 = swift_allocObject();
        v40 = (_swift_stdlib_malloc_size(v39) - 32) / 40;
        v39[2] = v38;
        v39[3] = 2 * v40;
        v41 = (v39 + 4);
        v42 = v79[3] >> 1;
        if (v79[2])
        {
          v43 = v79 + 4;
          if (v39 != v79 || v41 >= v43 + 40 * v42)
          {
            memmove(v39 + 4, v43, 40 * v42);
          }

          v79[2] = 0;
        }

        v21 = (v41 + 40 * v42);
        v20 = (v40 & 0x7FFFFFFFFFFFFFFFLL) - v42;

        v79 = v39;
        v11 = v76;
        v33 = v78;
LABEL_58:
        v44 = __OFSUB__(v20--, 1);
        if (v44)
        {
          goto LABEL_76;
        }

        ++v19;
        *v21 = v29;
        *(v21 + 1) = v11;
        v21[2] = 0.0;
        *(v21 + 3) = v32;
        *(v21 + 4) = v33;
        v21 += 5;
        if (v17 == v19)
        {
          goto LABEL_62;
        }
      }

      if (v23 == 3)
      {
        os_unfair_lock_lock(v18 + 6);
        if (!sqlite3_column_text(*(v18 + 2), v19))
        {
          goto LABEL_98;
        }

        v29 = COERCE_DOUBLE(sub_1DB2BAF14());
        v11 = v34;
        os_unfair_lock_unlock(v18 + 6);
        v32 = MEMORY[0x1E69E6158];
        v33 = &protocol witness table for String;
        if (v20)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      if (v23 != 5)
      {
        if (v23 == 4)
        {
          v77 = sub_1DB138CA8();
          os_unfair_lock_lock(v18 + 6);
          v24 = *(v18 + 2);
          v25 = sqlite3_column_blob(v24, v19);
          if (v25 && (v26 = v25, (v27 = sqlite3_column_bytes(v24, v19)) != 0))
          {
            v28 = v27;
            if (v27 <= 0)
            {
              v29 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v29 = COERCE_DOUBLE(swift_allocObject());
              v30 = _swift_stdlib_malloc_size(*&v29);
              *(*&v29 + 16) = v28;
              *(*&v29 + 24) = 2 * v30 - 64;
            }

            memcpy((*&v29 + 32), v26, v28);
          }

          else
          {
            v29 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock(v18 + 6);
          v32 = &type metadata for Blob;
          v33 = v77;
          if (v20)
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }

LABEL_41:
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v84 = 0xD000000000000019;
        v85 = 0x80000001DB2D1D60;
        v35 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v35);

        sub_1DB15B09C(v84, v85);
      }

      v11 = 0;
      v29 = 0.0;
      v32 = 0;
      v33 = 0;
      if (v20)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

    v20 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    v11 = v15;
LABEL_62:

    v45 = v79[3];
    if (v45 >= 2)
    {
      v46 = v45 >> 1;
      v44 = __OFSUB__(v46, v20);
      v47 = v46 - v20;
      if (v44)
      {
        goto LABEL_97;
      }

      v79[2] = v47;
    }

    if (!v79[2])
    {
      goto LABEL_96;
    }

    sub_1DB1609EC((v79 + 4), &v80);
    if (v83)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
      v9 = 0;
      v13 = v73;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v84 = 0;
        v85 = 0;
      }

      v14 = v85;
      if (v85)
      {
LABEL_70:
        v48 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1DB1572F0(0, *(v72 + 2) + 1, 1, v72);
        }

        v49 = v72;
        v51 = *(v72 + 2);
        v50 = *(v72 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1DB1572F0((v50 > 1), v51 + 1, 1, v72);
        }

        *(v49 + 2) = v51 + 1;
        v72 = v49;
        v52 = &v49[16 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v14;
        v13 = v73;
      }
    }

    else
    {
      sub_1DB145A68(&v80);
      v84 = 0;
      v85 = 0;

      v9 = 0;
      v13 = v73;
      v14 = v85;
      if (v85)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_77:

  v54 = v72;
  v55 = *(v72 + 2);
  if (!v55)
  {
    goto LABEL_11;
  }

  v56 = 0;
  v57 = v72 + 40;
  v58 = MEMORY[0x1E69E7CC0];
LABEL_79:
  v59 = &v57[16 * v56];
  v60 = v56;
  while (v60 < *(v54 + 2))
  {
    v61 = *(v59 - 1);
    v62 = *v59;
    if (v61 != 27503 || v62 != 0xE200000000000000)
    {
      v64 = *(v59 - 1);
      v65 = *v59;
      v66 = sub_1DB2BB924();
      v54 = v72;
      if ((v66 & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v58;
        v75 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DB138470(0, *(v58 + 2) + 1, 1);
          v58 = v80;
        }

        v69 = *(v58 + 2);
        v68 = *(v58 + 3);
        if (v69 >= v68 >> 1)
        {
          sub_1DB138470((v68 > 1), v69 + 1, 1);
          v58 = v80;
        }

        v56 = v60 + 1;
        *(v58 + 2) = v69 + 1;
        v70 = &v58[16 * v69];
        *(v70 + 4) = v61;
        *(v70 + 5) = v62;
        v57 = v72 + 40;
        v9 = v75;
        v54 = v72;
        if (v55 - 1 != v60)
        {
          goto LABEL_79;
        }

        goto LABEL_11;
      }
    }

    ++v60;
    v59 += 16;
    if (v55 == v60)
    {
      goto LABEL_11;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_1DB25F298(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DB25F2DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DB25F388(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_1DB262884(v13, v9, v10);
      v11 = a1(&v13);
      sub_1DB26289C(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t SchemaChanger.Error.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_1DB2BB4F4();

    v5 = 0xD000000000000014;
    v2 = MEMORY[0x1E1283680](v1, &type metadata for ForeignKeyError);
    MEMORY[0x1E1283490](v2);
  }

  else
  {
    v3 = v0[1];
    sub_1DB2BB4F4();

    v5 = 0xD00000000000001BLL;
    MEMORY[0x1E1283490](v1, v3);
  }

  return v5;
}

uint64_t sub_1DB25F52C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = a3[2];
  v7 = v3[5];
  v33[4] = v3[4];
  v33[5] = v7;
  v8 = v3[7];
  v33[6] = v3[6];
  v33[7] = v8;
  v9 = v3[1];
  v33[0] = *v3;
  v33[1] = v9;
  v10 = v3[3];
  v33[2] = v3[2];
  v33[3] = v10;
  v11 = sub_1DB262758(v33);
  v12 = sub_1DB134EA8(v33);
  if (v11 <= 1)
  {
    if (!v11)
    {
      *&v31[0] = 0;
      *(&v31[0] + 1) = 0xE000000000000000;
      v13 = v12;
      sub_1DB2BB4F4();

      strcpy(v32, "ALTER TABLE ");
      BYTE5(v32[1]) = 0;
      HIWORD(v32[1]) = -5120;
      v14 = sub_1DB2B995C(34, 0xE100000000000000);
      MEMORY[0x1E1283490](v14);

      MEMORY[0x1E1283490](0x4C4F432044444120, 0xEC000000204E4D55);
      v31[4] = v13[4];
      v31[5] = v13[5];
      v31[6] = v13[6];
      v31[7] = v13[7];
      v31[0] = *v13;
      v31[1] = v13[1];
      v31[2] = v13[2];
      v31[3] = v13[3];
      v15 = sub_1DB262F30();
      MEMORY[0x1E1283490](v15);

      return v32[0];
    }

    v22 = *v12;
    v23 = v12[1];
    v24 = v5 < 3;
    if (v5 == 3)
    {
      v24 = v4 < 35;
      if (v4 == 35)
      {
        if (v6 < 0)
        {
          return 0;
        }

        goto LABEL_18;
      }
    }

    if (!v24)
    {
LABEL_18:
      sub_1DB2BB4F4();

      strcpy(v31, "ALTER TABLE ");
      BYTE13(v31[0]) = 0;
      HIWORD(v31[0]) = -5120;
      v29 = sub_1DB2B995C(34, 0xE100000000000000);
      MEMORY[0x1E1283490](v29);

      v27 = 0x4F4320504F524420;
      v28 = 0xED0000204E4D554CLL;
      goto LABEL_19;
    }

    return 0;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v17 = *v12;
  v18 = v12[1];
  v19 = v12[2];
  v20 = v12[3];
  v21 = v5 < 3;
  if (v5 == 3 && (v21 = v4 < 25, v4 == 25))
  {
    if (v6 < 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  sub_1DB2BB4F4();

  strcpy(v31, "ALTER TABLE ");
  BYTE13(v31[0]) = 0;
  HIWORD(v31[0]) = -5120;
  v25 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v25);

  MEMORY[0x1E1283490](0x20454D414E455220, 0xEF204E4D554C4F43);
  v26 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v26);

  v27 = 542069792;
  v28 = 0xE400000000000000;
LABEL_19:
  MEMORY[0x1E1283490](v27, v28);
  v30 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v30);

  return *&v31[0];
}

uint64_t sub_1DB25F868(__int128 *a1)
{
  v2 = a1[5];
  v30 = a1[4];
  v31 = v2;
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  swift_beginAccess();
  v6 = *(v1 + 16);
  sub_1DB13AC2C(&v26, &v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DB1580CC(0, *(v6 + 2) + 1, 1, v6);
    *(v1 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DB1580CC((v8 > 1), v9 + 1, 1, v6);
  }

  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  sub_1DB2626D8(&v18);
  *(v6 + 2) = v9 + 1;
  v10 = &v6[128 * v9];
  v11 = v18;
  v12 = v19;
  v13 = v21;
  *(v10 + 4) = v20;
  *(v10 + 5) = v13;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v14 = v22;
  v15 = v23;
  v16 = v25;
  *(v10 + 8) = v24;
  *(v10 + 9) = v16;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  *(v1 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_1DB25F998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DB1580CC(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DB1580CC((v7 > 1), v8 + 1, 1, v5);
  }

  *&v17[0] = a1;
  *(&v17[0] + 1) = a2;
  sub_1DB2626E8(v17);
  *(v5 + 2) = v8 + 1;
  v9 = &v5[128 * v8];
  v10 = v17[0];
  v11 = v17[1];
  v12 = v17[3];
  *(v9 + 4) = v17[2];
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = v17[4];
  v14 = v17[5];
  v15 = v17[7];
  *(v9 + 8) = v17[6];
  *(v9 + 9) = v15;
  *(v9 + 6) = v13;
  *(v9 + 7) = v14;
  *(v2 + 16) = v5;
  return swift_endAccess();
}

uint64_t sub_1DB25FAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1DB1580CC(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DB1580CC((v11 > 1), v12 + 1, 1, v9);
  }

  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  sub_1DB2626FC(&v21);
  *(v9 + 2) = v12 + 1;
  v13 = &v9[128 * v12];
  v14 = v21;
  v15 = v22;
  v16 = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = v16;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v17 = v25;
  v18 = v26;
  v19 = v28;
  *(v13 + 8) = v27;
  *(v13 + 9) = v19;
  *(v13 + 6) = v17;
  *(v13 + 7) = v18;
  *(v4 + 16) = v9;
  return swift_endAccess();
}

uint64_t SchemaChanger.AlterTableDefinition.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SchemaChanger.AlterTableDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t SchemaChanger.__allocating_init(connection:)(uint64_t a1)
{
  Connection.sqliteVersion.getter(&v7);
  v6 = v7;
  v2 = v8;
  type metadata accessor for SchemaChanger();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  type metadata accessor for SchemaReader();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2;

  return v3;
}

uint64_t sub_1DB25FCCC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = v4;
  v6 = v3;
  type metadata accessor for SchemaChanger.AlterTableDefinition();
  v10 = swift_allocObject();
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = a1;
  v10[4] = a2;

  v47[1] = v10;
  a3(v10);
  swift_beginAccess();
  v11 = v10[2];
  v12 = *(v11 + 16);

  v53 = v12;
  if (!v12)
  {
LABEL_28:
  }

  v51 = a2;
  v52 = a1;
  v14 = 0;
  v15 = 32;
  v50 = v3;
  v66 = v11;
  while (v14 < *(v11 + 16))
  {
    v17 = *(v11 + v15);
    v18 = *(v11 + v15 + 16);
    v19 = *(v11 + v15 + 48);
    v59 = *(v11 + v15 + 32);
    v60 = v19;
    v57 = v17;
    v58 = v18;
    v20 = *(v11 + v15 + 64);
    v21 = *(v11 + v15 + 80);
    v22 = *(v11 + v15 + 112);
    v63 = *(v11 + v15 + 96);
    v64 = v22;
    v61 = v20;
    v62 = v21;
    memmove(__dst, (v11 + v15), 0x80uLL);
    v23 = sub_1DB262758(__dst);
    if (v23 == 1)
    {
      sub_1DB134EA8(__dst);
LABEL_15:
      sub_1DB262764(&v57, v56);
      goto LABEL_21;
    }

    if (v23)
    {
      goto LABEL_15;
    }

    v24 = sub_1DB134EA8(__dst);
    if (*(v24 + 16) != 2)
    {
      sub_1DB2628B4();
      swift_allocError();
      *v44 = 0xD00000000000001ELL;
      *(v44 + 8) = 0x80000001DB2D6BD0;
      *(v44 + 16) = 0;
      sub_1DB262764(&v57, v56);
      goto LABEL_33;
    }

    v25 = v15;
    v48 = v14;
    v49 = v47;
    v26 = *(v24 + 18);
    v27 = *(v24 + 32);
    v28 = *(v24 + 40);
    *&v54 = *(v24 + 24);
    v6 = v54;
    *(&v54 + 1) = v27;
    LOBYTE(v55) = v28;
    MEMORY[0x1EEE9AC00](v24);
    v47[-2] = &v54;
    sub_1DB262764(&v57, v56);
    v29 = v27;
    sub_1DB262884(v6, v27, v28);
    v30 = sub_1DB25F388(sub_1DB262824, &v47[-4], &unk_1F56DFE70);
    swift_arrayDestroy();
    if (v30)
    {
      sub_1DB26289C(v6, v27, v28);
      sub_1DB2628B4();
      swift_allocError();
      *v45 = 0xD000000000000015;
      *(v45 + 8) = 0x80000001DB2D6BB0;
      *(v45 + 16) = 0;
      goto LABEL_33;
    }

    v15 = v25;
    if ((v26 & 0x100) != 0)
    {
      v34 = v6;
      v35 = v29;
      v36 = v28;
LABEL_20:
      sub_1DB26289C(v34, v35, v36);
      v6 = v50;
      a2 = v51;
      v14 = v48;
      goto LABEL_21;
    }

    if (v28 <= 1)
    {
      v31 = v6;
      v32 = v29;
      v33 = v28 != 0;
LABEL_19:
      sub_1DB26289C(v31, v32, v33);
      v34 = 0;
      v35 = 0;
      v36 = 3;
      goto LABEL_20;
    }

    if (v28 == 2)
    {
      v31 = v6;
      v32 = v29;
      v33 = 2;
      goto LABEL_19;
    }

    v13 = v29;
    v14 = v48;
    if (v6 <= 2 && v6 ^ 1 | v13 && v6 ^ 2 | v13)
    {
      goto LABEL_36;
    }

    sub_1DB26289C(v6, v13, 3u);
    sub_1DB26289C(0, 0, 3u);
    v6 = v50;
    a2 = v51;
LABEL_21:
    v56[4] = v61;
    v56[5] = v62;
    v56[6] = v63;
    v56[7] = v64;
    v56[0] = v57;
    v56[1] = v58;
    v56[2] = v59;
    v56[3] = v60;
    v37 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v37;
    v38 = v52;
    sub_1DB25F52C(v52, a2, &v54);
    if (v39)
    {
      v40 = *(v6 + 16);
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v41);
      if (v5)
      {

        sub_1DB2627F4(&v57);
      }

      v42 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v42);
      v11 = v66;

      sub_1DB2627F4(&v57);
      v6 = v50;
      a2 = v51;
    }

    else
    {
      v16 = *(v6 + 16);
      LOBYTE(v54) = 0;

      sub_1DB262764(&v57, v56);

      sub_1DB143ED0(&v54, v16, v6, v38, a2, &v57);
      sub_1DB2627F4(&v57);
      if (v5)
      {

        goto LABEL_34;
      }

      sub_1DB2627F4(&v57);
      v11 = v66;
    }

    ++v14;
    v15 += 128;
    if (v53 == v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_36:
  sub_1DB26289C(v6, v13, 3u);
  sub_1DB26289C(0, 0, 3u);
  sub_1DB2628B4();
  swift_allocError();
  *v46 = 0xD00000000000003ALL;
  *(v46 + 8) = 0x80000001DB2D6B70;
  *(v46 + 16) = 0;
LABEL_33:
  swift_willThrow();

LABEL_34:

  return sub_1DB2627F4(&v57);
}

uint64_t sub_1DB2602F0()
{
  v2 = *(v0 + 16);
  sub_1DB2BB4F4();

  v3 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v3);

  MEMORY[0x1E1283490](0x20454D414E455220, 0xEB00000000204F54);
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v4);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v5);
  if (v1)
  {
  }

  v7 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v7);
}

uint64_t sub_1DB2604A4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = *(a1 + 16);
  v11 = sub_1DB146634();
  v9 = sub_1DB146634();
  sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, 1);
  sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, 0);
  sub_1DB2605C8(a2, a3, a1, a4);
  sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, v9);
  return sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, v11);
}

void sub_1DB2605C8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = &v73;
  *&v73 = 1601203572;
  *(&v73 + 1) = 0xE400000000000000;
  MEMORY[0x1E1283490]();
  v10 = v73;
  v11 = a4[5];
  v85 = a4[4];
  v86 = v11;
  v12 = a4[7];
  v87 = a4[6];
  v88 = v12;
  v13 = a4[1];
  v81 = *a4;
  v82 = v13;
  v14 = a4[3];
  v83 = a4[2];
  v84 = v14;
  nullsub_1(&v81);
  v77 = v85;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v73 = v81;
  v74 = v82;
  v75 = v83;
  v76 = v84;
  sub_1DB260E40(a1, a2, v10, *(&v10 + 1), 1, &v73);
  if (v4)
  {
    goto LABEL_3;
  }

  sub_1DB2623E4(a1, a2, 1);
  sub_1DB2602F0();

  v15 = *(a3 + 16);
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v16);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v18 = Statement.run(_:)(v17);

  v19 = *(v18 + 16);
  os_unfair_lock_lock((v19 + 24));
  v63 = (v19 + 16);
  sqlite3_reset(*(v19 + 16));
  os_unfair_lock_unlock((v19 + 24));
  sub_1DB143044();
  v65 = *(v18 + 24);
  v20 = v17;
  v64 = v19;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v73) & 1) != 0 || v73 != v65)
    {
      v21 = *(v65 + 120);
      sub_1DB2BB2C4();
      if (v71)
      {
        goto LABEL_12;
      }

LABEL_64:

      if (*(v20 + 16))
      {
        sub_1DB2628B4();
        swift_allocError();
        *v62 = v20;
        *(v62 + 8) = 0;
        *(v62 + 16) = 1;
        swift_willThrow();
        return;
      }

LABEL_3:

      return;
    }

    os_unfair_lock_lock((v19 + 24));
    sub_1DB14A424(v63, &v73);
    os_unfair_lock_unlock((v19 + 24));
    if (v73 != 1)
    {
      goto LABEL_64;
    }

LABEL_12:
    v66 = v20;
    Statement.row.getter(&v73);
    v22 = *(&v73 + 1);
    v20 = v73;
    swift_retain_n();
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = (v17 + 32);
      v70 = v17;
      v26 = v9;
      while (1)
      {
        os_unfair_lock_lock((v20 + 24));
        if (v23 == 0x80000000)
        {
          __break(1u);
LABEL_63:
          __break(1u);
          os_unfair_lock_unlock(v27);
          sub_1DB15B294();
          MEMORY[0x1E1284A10](0x80000000);
          goto LABEL_64;
        }

        v28 = sqlite3_column_type(*(v20 + 16), v23);
        os_unfair_lock_unlock((v20 + 24));
        if (v28 > 2)
        {
          break;
        }

        if (v28 == 1)
        {
          os_unfair_lock_lock((v20 + 24));
          v34 = COERCE_DOUBLE(sqlite3_column_int64(*(v20 + 16), v23));
          os_unfair_lock_unlock((v20 + 24));
          v37 = MEMORY[0x1E69E7360];
          v38 = &protocol witness table for Int64;
          if (v24)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v28 != 2)
          {
            goto LABEL_32;
          }

          os_unfair_lock_lock((v20 + 24));
          v36 = sqlite3_column_double(*(v20 + 16), v23);
          os_unfair_lock_unlock((v20 + 24));
          v34 = v36;
          v37 = MEMORY[0x1E69E63B0];
          v38 = &protocol witness table for Double;
          if (v24)
          {
            goto LABEL_49;
          }
        }

LABEL_39:
        v41 = v70[3];
        if (((v41 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v69 = v38;
        v67 = v26;
        v42 = v41 & 0xFFFFFFFFFFFFFFFELL;
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v44 = swift_allocObject();
        v45 = (_swift_stdlib_malloc_size(v44) - 32) / 40;
        v44[2] = v43;
        v44[3] = 2 * v45;
        v46 = (v44 + 4);
        v47 = v70[3] >> 1;
        if (v70[2])
        {
          v48 = v70 + 4;
          if (v44 != v70 || v46 >= v48 + 40 * v47)
          {
            memmove(v44 + 4, v48, 40 * v47);
          }

          v70[2] = 0;
        }

        v25 = (v46 + 40 * v47);
        v24 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - v47;

        v70 = v44;
        v26 = v67;
        v38 = v69;
LABEL_49:
        v49 = __OFSUB__(v24--, 1);
        if (v49)
        {
          goto LABEL_63;
        }

        ++v23;
        *v25 = v34;
        *(v25 + 1) = v26;
        v25[2] = 0.0;
        *(v25 + 3) = v37;
        *(v25 + 4) = v38;
        v25 += 5;
        if (v22 == v23)
        {
          goto LABEL_53;
        }
      }

      if (v28 == 3)
      {
        os_unfair_lock_lock((v20 + 24));
        if (!sqlite3_column_text(*(v20 + 16), v23))
        {
          goto LABEL_69;
        }

        v34 = COERCE_DOUBLE(sub_1DB2BAF14());
        v26 = v39;
        os_unfair_lock_unlock((v20 + 24));
        v37 = MEMORY[0x1E69E6158];
        v38 = &protocol witness table for String;
        if (v24)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      if (v28 != 5)
      {
        if (v28 == 4)
        {
          v68 = sub_1DB138CA8();
          os_unfair_lock_lock((v20 + 24));
          v29 = *(v20 + 16);
          v30 = sqlite3_column_blob(v29, v23);
          if (v30 && (v31 = v30, (v32 = sqlite3_column_bytes(v29, v23)) != 0))
          {
            v33 = v32;
            if (v32 <= 0)
            {
              v34 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v34 = COERCE_DOUBLE(swift_allocObject());
              v35 = _swift_stdlib_malloc_size(*&v34);
              *(*&v34 + 16) = v33;
              *(*&v34 + 24) = 2 * v35 - 64;
            }

            memcpy((*&v34 + 32), v31, v33);
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v20 + 24));
          v37 = &type metadata for Blob;
          v38 = v68;
          if (v24)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_32:
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v71 = 0xD000000000000019;
        v72 = 0x80000001DB2D1D60;
        v40 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v40);

        sub_1DB15B09C(v71, v72);
      }

      v26 = 0;
      v34 = 0.0;
      v37 = 0;
      v38 = 0;
      if (v24)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    v24 = 0;
    v70 = v17;
    v26 = v9;
LABEL_53:

    v50 = v70;
    v51 = v70[3];
    if (v51 >= 2)
    {
      break;
    }

LABEL_56:
    v9 = v26;

    v71 = v50;
    sub_1DB25E77C(&v71, &v73);

    v54 = v73;
    v55 = v74;
    v56 = v75;
    if (*(&v73 + 1))
    {
      v57 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1DB157FAC(0, *(v66 + 16) + 1, 1, v66);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      v60 = v57;
      if (v59 >= v58 >> 1)
      {
        v60 = sub_1DB157FAC((v58 > 1), v59 + 1, 1, v57);
      }

      *(v60 + 2) = v59 + 1;
      v20 = v60;
      v61 = &v60[40 * v59];
      *(v61 + 2) = v54;
      *(v61 + 3) = v55;
      *(v61 + 8) = v56;
      v19 = v64;
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1DB25F298(v73, 0);
      v19 = v64;
      v17 = MEMORY[0x1E69E7CC0];
      v20 = v66;
    }
  }

  v52 = v51 >> 1;
  v49 = __OFSUB__(v52, v24);
  v53 = v52 - v24;
  if (!v49)
  {
    v50 = v70;
    v70[2] = v53;
    goto LABEL_56;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_1DB260E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  v8 = v6;
  v15 = a6[5];
  v74 = a6[4];
  v75 = v15;
  v16 = a6[7];
  v76 = a6[6];
  v77 = v16;
  v17 = a6[1];
  v70 = *a6;
  v71 = v17;
  v18 = a6[3];
  v72 = a6[2];
  v73 = v18;
  v19 = *(v6 + 24);
  result = sub_1DB26B520(a1, a2);
  if (!v7)
  {
    v21 = result;
    sub_1DB26C774(a1, a2);
    v78 = 0;
    *&v58 = a1;
    *(&v58 + 1) = a2;
    *&v36 = v21;
    *(&v36 + 1) = v22;
    *&v59 = v21;
    *(&v59 + 1) = v22;
    *&v60[0] = a3;
    *(&v60[0] + 1) = a4;
    sub_1DB262CE4(v60);
    v65 = v60[4];
    v66 = v60[5];
    v67 = v60[6];
    v68 = v60[7];
    v61 = v60[0];
    v62 = v60[1];
    v63 = v60[2];
    v64 = v60[3];
    nullsub_1(&v61);
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    v53 = v64;

    sub_1DB261510(&v50, &v38);
    v69[4] = v54;
    v69[5] = v55;
    v69[6] = v56;
    v69[7] = v57;
    v69[0] = v50;
    v69[1] = v51;
    v69[2] = v52;
    v69[3] = v53;
    sub_1DB262CF8(v69);
    v58 = v38;
    v59 = v39;
    sub_1DB261510(a6, &v50);

    v23 = *(&v50 + 1);
    v24 = *(v8 + 16);
    v33 = v50;
    v34 = *(&v51 + 1);
    v35 = v51;
    sub_1DB263264(a5 & 1);
    type metadata accessor for Statement();
    swift_allocObject();

    v26 = v78;
    sub_1DB253534(v25);
    v78 = v26;
    if (v26)
    {

LABEL_6:
    }

    v32 = v23;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    v28 = v78;
    Statement.run(_:)(v27);
    v78 = v28;
    if (v28)
    {

      goto LABEL_6;
    }

    *&v58 = v33;
    *(&v58 + 1) = v32;
    *&v59 = v35;
    *(&v59 + 1) = v34;
    v29 = v78;
    sub_1DB2621CC(&v58);
    if (v29)
    {
    }

    else
    {
      v54 = v74;
      v55 = v75;
      v56 = v76;
      v57 = v77;
      v50 = v70;
      v51 = v71;
      v52 = v72;
      v53 = v73;
      if (sub_1DB262D60(&v50) == 1)
      {
        goto LABEL_13;
      }

      v42 = v54;
      v43 = v55;
      v44 = v56;
      v45 = v57;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      if (sub_1DB262758(&v38) != 1)
      {
LABEL_13:
        *&v38 = a1;
        *(&v38 + 1) = a2;
        v39 = v36;
        v46 = v33;
        v47 = v32;
        v48 = v35;
        v49 = v34;
        sub_1DB263A3C(&v46);
        swift_allocObject();

        sub_1DB253534(v24);
        v30 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.run(_:)(v30);
      }

      else
      {
        sub_1DB134EA8(&v38);
        sub_1DB261510(&v70, &v46);

        v37[4] = v46;
        v37[5] = v47;
        v37[6] = v48;
        v37[7] = v49;
        v37[0] = v33;
        v37[1] = v32;
        v37[2] = v35;
        v37[3] = v34;
        sub_1DB263A3C(v37);
        swift_allocObject();

        sub_1DB253534(v24);
        v31 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.run(_:)(v31);
      }
    }
  }

  return result;
}

uint64_t sub_1DB261510@<X0>(_OWORD *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v189 = a1[4];
  v190 = v4;
  v6 = a1[7];
  v7 = a1[5];
  v191 = a1[6];
  v192 = v6;
  v8 = a1[1];
  v186[0] = *a1;
  v186[1] = v8;
  v9 = a1[3];
  v187 = a1[2];
  v188 = v9;
  v10 = a1[7];
  v199 = v191;
  v200 = v10;
  v197 = v189;
  v198 = v7;
  v195 = v187;
  v196 = v5;
  v12 = *v2;
  v11 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  v193 = v186[0];
  v194 = v8;
  if (sub_1DB262D60(&v193) == 1)
  {
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;

LABEL_3:
  }

  v163 = v13;
  v185[4] = v197;
  v185[5] = v198;
  v185[6] = v199;
  v185[7] = v200;
  v185[0] = v193;
  v185[1] = v194;
  v185[2] = v195;
  v185[3] = v196;
  v16 = sub_1DB262758(v185);
  v17 = sub_1DB134EA8(v185);
  v156 = v14;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v151 = v12;
      v152 = v11;
      v153 = a2;
      v18 = *v17;
      v157 = v17[1];
      v19 = v17[2];
      v167 = v17[3];
      v168 = v19;
      v20 = *(v163 + 16);
      if (v20)
      {
        v179 = MEMORY[0x1E69E7CC0];

        sub_1DB1387A0(0, v20, 0);
        v21 = v179;
        v22 = (v163 + 32);
        v161 = &v174 + 7;
        do
        {
          v166 = v21;
          v23 = v22[3];
          v25 = *v22;
          v24 = v22[1];
          *v183 = v22[2];
          *&v183[16] = v23;
          v181 = v25;
          v182 = v24;
          v26 = v22[4];
          v27 = v22[5];
          v28 = v22[7];
          *&v183[64] = v22[6];
          *&v183[80] = v28;
          *&v183[32] = v26;
          *&v183[48] = v27;
          if (__PAIR128__(v157, v18) == v181 || (sub_1DB2BB924() & 1) != 0)
          {
            v30 = *(&v182 + 1);
            v29 = *v183;
            v31 = v183[8];
            LODWORD(v163) = BYTE3(v182);
            LODWORD(v164) = BYTE2(v182);
            DWORD2(v162) = v182;
            v32 = *&v183[64];
            v33 = v161;
            *(v161 + 2) = *&v183[48];
            v33[3] = v32;
            v33[4] = *&v183[80];
            v34 = *&v183[32];
            *v33 = *&v183[16];
            v33[1] = v34;
            v35 = v167;

            v165 = v30;
            sub_1DB262884(v30, v29, v31);
            result = sub_1DB1446A4(&v183[16], &v169, &unk_1ECC28D20, &unk_1DB2CD150);
            v36 = v168;
          }

          else
          {
            v35 = *(&v181 + 1);
            v36 = v181;
            DWORD2(v162) = v182;
            LODWORD(v164) = BYTE2(v182);
            LODWORD(v163) = BYTE3(v182);
            LODWORD(v162) = DWORD1(v182);
            v29 = *v183;
            v165 = *(&v182 + 1);
            v31 = v183[8];
            v176 = *&v183[41];
            v177 = *&v183[57];
            v178[0] = *&v183[73];
            *(v178 + 15) = *&v183[88];
            v174 = *&v183[9];
            v175 = *&v183[25];
            result = sub_1DB13AC2C(&v181, &v169);
          }

          v37 = v35;
          *(v173 + 15) = *(v178 + 15);
          v172 = v177;
          v173[0] = v178[0];
          v170 = v175;
          v171 = v176;
          v169 = v174;
          v21 = v166;
          v179 = v166;
          v39 = *(v166 + 16);
          v38 = *(v166 + 24);
          if (v39 >= v38 >> 1)
          {
            v166 = v36;
            v160 = v37;
            result = sub_1DB1387A0((v38 > 1), v39 + 1, 1);
            v37 = v160;
            v21 = v179;
          }

          *(v21 + 16) = v39 + 1;
          v40 = v21 + (v39 << 7);
          *(v40 + 32) = v36;
          *(v40 + 40) = v37;
          *(v40 + 48) = WORD4(v162);
          *(v40 + 50) = v164;
          *(v40 + 51) = v163;
          *(v40 + 52) = v162;
          *(v40 + 56) = v165;
          *(v40 + 64) = v29;
          *(v40 + 72) = v31;
          v41 = v169;
          *(v40 + 89) = v170;
          *(v40 + 73) = v41;
          v42 = v171;
          v43 = v172;
          v44 = v173[0];
          *(v40 + 152) = *(v173 + 15);
          *(v40 + 137) = v44;
          *(v40 + 121) = v43;
          *(v40 + 105) = v42;
          v22 += 8;
          --v20;
        }

        while (v20);
        v14 = v156;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v93 = *(v14 + 16);
      v94 = MEMORY[0x1E69E7CC0];
      if (v93)
      {
        v166 = v21;
        *&v174 = MEMORY[0x1E69E7CC0];
        v154 = v93;
        result = sub_1DB138780(0, v93, 0);
        v95 = v154;
        if (!*(v14 + 16))
        {
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          return result;
        }

        v96 = 0;
        v97 = v174;
        v155 = v14 + 32;
        v98 = 1;
        while (1)
        {
          v164 = v97;
          v165 = v98;
          v99 = v155 + 72 * v96;
          v100 = *(v99 + 64);
          v101 = *(v99 + 16);
          v102 = *(v99 + 48);
          *v183 = *(v99 + 32);
          *&v183[16] = v102;
          v182 = v101;
          v181 = *v99;
          *&v183[32] = v100;
          v103 = *&v183[8];
          v161 = v101;
          v162 = v102;
          v159 = v181;
          v160 = *(&v101 + 1);
          v104 = *(*&v183[8] + 16);
          v163 = v100;
          v158 = *(&v181 + 1);
          if (v104)
          {

            sub_1DB262BE0(&v181, &v169);
            *&v169 = v94;
            sub_1DB138470(0, v104, 0);
            v105 = v157;
            v106 = v169;
            v107 = (v103 + 40);
            do
            {
              v109 = *(v107 - 1);
              v108 = *v107;
              v110 = v109 == v18 && v108 == v105;
              if (v110 || (v111 = *(v107 - 1), v112 = *v107, (sub_1DB2BB924() & 1) != 0))
              {
                v108 = v167;
                v109 = v168;
              }

              *&v169 = v106;
              v114 = *(v106 + 16);
              v113 = *(v106 + 24);
              if (v114 >= v113 >> 1)
              {
                sub_1DB138470((v113 > 1), v114 + 1, 1);
                v105 = v157;
                v106 = v169;
              }

              *(v106 + 16) = v114 + 1;
              v115 = v106 + 16 * v114;
              *(v115 + 32) = v109;
              *(v115 + 40) = v108;
              v107 += 2;
              --v104;
            }

            while (v104);
            result = sub_1DB262C3C(&v181);
            v14 = v156;
            v94 = MEMORY[0x1E69E7CC0];
            v95 = v154;
          }

          else
          {
            v116 = v95;

            v95 = v116;
            v106 = v94;
          }

          v117 = v183[0];
          v97 = v164;
          *&v174 = v164;
          v119 = *(v164 + 16);
          v118 = *(v164 + 24);
          if (v119 >= v118 >> 1)
          {
            result = sub_1DB138780((v118 > 1), v119 + 1, 1);
            v95 = v154;
            v97 = v174;
          }

          *(v97 + 16) = v119 + 1;
          v120 = v97 + 72 * v119;
          v121 = v158;
          *(v120 + 32) = v159;
          *(v120 + 40) = v121;
          v122 = v160;
          *(v120 + 48) = v161;
          *(v120 + 56) = v122;
          *(v120 + 64) = v117;
          LODWORD(v122) = *(&v169 + 3);
          *(v120 + 65) = v169;
          *(v120 + 68) = v122;
          v123 = *(&v162 + 1);
          v124 = v162;
          *(v120 + 72) = v106;
          *(v120 + 80) = __PAIR128__(v123, v124);
          *(v120 + 96) = v163;
          v96 = v165;
          if (v165 == v95)
          {
            break;
          }

          v98 = v165 + 1;
          if (v165 >= *(v14 + 16))
          {
            goto LABEL_88;
          }
        }

        v21 = v166;
      }

      else
      {
        v97 = MEMORY[0x1E69E7CC0];
      }

      v144 = v153;
      *v153 = v151;
      v144[1] = v152;
      v144[2] = v21;
      v144[3] = v97;
      return result;
    }

    v71 = *v17;
    v72 = v17[1];
    v73 = *(v14 + 16);
    if (v73)
    {
      v153 = a2;
      sub_1DB1446A4(v186, &v181, &unk_1ECC28D18, &unk_1DB2CD148);
      v184 = MEMORY[0x1E69E7CC0];

      v164 = v71;
      sub_1DB138780(0, v73, 0);
      v74 = v184;
      v75 = (v14 + 32);
      v165 = v72;
      do
      {
        v76 = v74;
        v168 = v73;
        v78 = v75[2];
        v77 = v75[3];
        v79 = *(v75 + 8);
        v170 = v75[1];
        v80 = *v75;
        *&v173[0] = v79;
        v171 = v78;
        v172 = v77;
        v169 = v80;
        v82 = *(&v170 + 1);
        v81 = v170;
        sub_1DB1446A4(v186, &v181, &unk_1ECC28D18, &unk_1DB2CD148);
        sub_1DB262BE0(&v169, &v181);
        if (sub_1DB23D950())
        {
          *&v181 = 1601203572;
          *(&v181 + 1) = 0xE400000000000000;
          MEMORY[0x1E1283490](v81, v82);
          v71 = v164;
          v82 = *(&v181 + 1);
          v167 = v181;
        }

        else if (sub_1DB23D950())
        {
          v181 = __PAIR128__(v82, v81);
          *&v174 = 1601203572;
          *(&v174 + 1) = 0xE400000000000000;
          v179 = 0;
          v180 = 0xE000000000000000;
          v149 = sub_1DB143508();
          v150 = v149;
          v148[1] = v149;
          v148[0] = MEMORY[0x1E69E6158];
          v71 = v164;
          v167 = sub_1DB2BB3D4();
          v82 = v83;
        }

        else
        {
          v167 = v81;
        }

        v85 = *(&v172 + 1);
        v84 = *&v173[0];
        v86 = *(&v171 + 1);
        v166 = v172;
        v87 = v171;

        sub_1DB262C3C(&v169);
        v74 = v76;
        v184 = v76;
        v89 = *(v76 + 16);
        v88 = *(v76 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_1DB138780((v88 > 1), v89 + 1, 1);
          v71 = v164;
          v74 = v184;
        }

        *(v74 + 16) = v89 + 1;
        v90 = v74 + 72 * v89;
        v72 = v165;
        *(v90 + 32) = v71;
        *(v90 + 40) = v72;
        *(v90 + 48) = v167;
        *(v90 + 56) = v82;
        *(v90 + 64) = v87;
        v91 = *(&v181 + 3);
        *(v90 + 65) = v181;
        *(v90 + 68) = v91;
        v92 = v166;
        *(v90 + 72) = v86;
        *(v90 + 80) = v92;
        *(v90 + 88) = v85;
        *(v90 + 96) = v84;
        v75 = (v75 + 72);
        v73 = v168 - 1;
      }

      while (v168 != 1);
      a2 = v153;
      result = v163;
    }

    else
    {
      sub_1DB1446A4(v186, &v181, &unk_1ECC28D18, &unk_1DB2CD148);

      v74 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v71;
    a2[1] = v72;
    a2[2] = result;
    a2[3] = v74;
  }

  else
  {
    if (!v16)
    {
      *&v181 = 0xD000000000000022;
      *(&v181 + 1) = 0x80000001DB2D6CB0;
      v182 = 0u;
      *v183 = 0u;
      v183[16] = 9;
      sub_1DB158B68();
      *a2 = v12;
      a2[1] = v11;
      a2[2] = v163;
      a2[3] = v14;

      goto LABEL_3;
    }

    v153 = a2;
    v45 = v11;
    v46 = *v17;
    v47 = v17[1];
    v48 = v163;
    v49 = *(v163 + 16);
    v151 = v12;
    v152 = v45;

    if (v49)
    {
      v50 = 0;
      v51 = v163 + 32;
      v52 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v53 = (v51 + (v50 << 7));
      v54 = v50;
      while (v54 < *(v48 + 16))
      {
        v55 = v53[3];
        v57 = *v53;
        v56 = v53[1];
        *v183 = v53[2];
        *&v183[16] = v55;
        v181 = v57;
        v182 = v56;
        v58 = v53[4];
        v59 = v53[5];
        v60 = v53[7];
        *&v183[64] = v53[6];
        *&v183[80] = v60;
        *&v183[32] = v58;
        *&v183[48] = v59;
        result = v181;
        if (v181 != __PAIR128__(v47, v46))
        {
          result = sub_1DB2BB924();
          if ((result & 1) == 0)
          {
            sub_1DB13AC2C(&v181, &v169);
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v174 = v52;
            if ((result & 1) == 0)
            {
              result = sub_1DB1387A0(0, *(v52 + 16) + 1, 1);
              v52 = v174;
            }

            v61 = v52;
            v62 = *(v52 + 16);
            v63 = *(v61 + 24);
            if (v62 >= v63 >> 1)
            {
              result = sub_1DB1387A0((v63 > 1), v62 + 1, 1);
              v61 = v174;
            }

            v50 = v54 + 1;
            *(v61 + 16) = v62 + 1;
            v64 = (v61 + (v62 << 7));
            v65 = v181;
            v66 = v182;
            v67 = *&v183[16];
            v64[4] = *v183;
            v64[5] = v67;
            v64[2] = v65;
            v64[3] = v66;
            v68 = *&v183[32];
            v69 = *&v183[48];
            v70 = *&v183[80];
            v64[8] = *&v183[64];
            v64[9] = v70;
            v64[6] = v68;
            v64[7] = v69;
            v110 = v49 - 1 == v54;
            v14 = v156;
            v48 = v163;
            v52 = v61;
            if (v110)
            {
              goto LABEL_69;
            }

            goto LABEL_20;
          }
        }

        ++v54;
        v53 += 8;
        if (v49 == v54)
        {
          v14 = v156;
          goto LABEL_69;
        }
      }

      goto LABEL_89;
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v166 = v52;
    v125 = *(v14 + 16);
    if (v125)
    {
      v126 = 0;
      v127 = v14 + 32;
      v168 = *(v14 + 16);
      v164 = v125 - 1;
      v167 = MEMORY[0x1E69E7CC0];
      v165 = v14 + 32;
LABEL_71:
      v128 = v127 + 72 * v126;
      v129 = v126;
      while (v129 < *(v156 + 16))
      {
        v130 = *(v128 + 48);
        v131 = *(v128 + 64);
        v132 = *(v128 + 16);
        *v183 = *(v128 + 32);
        v133 = *v128;
        *&v183[32] = v131;
        *&v183[16] = v130;
        v181 = v133;
        v182 = v132;
        v126 = v129 + 1;
        v134 = *&v183[8];
        *&v174 = v46;
        *(&v174 + 1) = v47;
        MEMORY[0x1EEE9AC00](result);
        v149 = &v174;
        sub_1DB262BE0(&v181, &v169);

        v135 = sub_1DB25F2DC(sub_1DB1474D8, v148, v134);

        if ((v135 & 1) == 0)
        {
          v136 = v167;
          result = swift_isUniquelyReferenced_nonNull_native();
          v179 = v136;
          if ((result & 1) == 0)
          {
            result = sub_1DB138780(0, *(v167 + 16) + 1, 1);
            v167 = v179;
          }

          v138 = *(v167 + 16);
          v137 = *(v167 + 24);
          if (v138 >= v137 >> 1)
          {
            result = sub_1DB138780((v137 > 1), v138 + 1, 1);
            v167 = v179;
          }

          v139 = v167;
          *(v167 + 16) = v138 + 1;
          v140 = v139 + 72 * v138;
          *(v140 + 32) = v181;
          v141 = v182;
          v142 = *v183;
          v143 = *&v183[16];
          *(v140 + 96) = *&v183[32];
          *(v140 + 64) = v142;
          *(v140 + 80) = v143;
          *(v140 + 48) = v141;
          v127 = v165;
          if (v164 != v129)
          {
            goto LABEL_71;
          }

          goto LABEL_87;
        }

        result = sub_1DB262C3C(&v181);
        v128 += 72;
        ++v129;
        if (v168 == v126)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_90;
    }

    v167 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v145 = v153;
    v146 = v152;
    *v153 = v151;
    v145[1] = v146;
    v147 = v167;
    v145[2] = v166;
    v145[3] = v147;
  }

  return result;
}

uint64_t sub_1DB2621CC(uint64_t result)
{
  v2 = *(result + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (v4 < *(v2 + 16))
    {
      v7 = v5[2];
      v6 = v5[3];
      v8 = *(v5 + 8);
      v19 = v5[1];
      v9 = *v5;
      v22 = v8;
      v20 = v7;
      v21 = v6;
      v18 = v9;
      v10 = v19;
      v11 = v9;
      sub_1DB262BE0(&v18, v16);
      if (sub_1DB2BAE94() >= 65)
      {
        sub_1DB262C90();
        swift_allocError();
        *v15 = v10;
        v15[1] = v11;
        swift_willThrow();

        return sub_1DB262C3C(&v18);
      }

      v12 = *(v23 + 16);
      v16[2] = v20;
      v16[3] = v21;
      v17 = v22;
      v16[0] = v18;
      v16[1] = v19;
      IndexDefinition.toSQL(ifNotExists:)(0);
      sub_1DB262C3C(&v18);
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v13);
      if (v1)
      {
      }

      v14 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v14);
      ++v4;

      v5 = (v5 + 72);
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB2623E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + 16);
  sub_1DB2BB4F4();

  if (a3)
  {
    v7 = 0x5453495845204649;
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = 0xE900000000000053;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1E1283490](v7, v8);

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  v9 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v9);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v10);
  if (v4)
  {
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v12);
}

const char *sub_1DB262590()
{
  sub_1DB2BB4F4();

  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_db_filename(*(v1 + 16), 0);
  if (result)
  {
    v3 = sub_1DB2BAF04();
    v5 = v4;
    os_unfair_lock_unlock((v1 + 24));
    MEMORY[0x1E1283490](v3, v5);

    return 0xD000000000000015;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SchemaChanger.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SchemaChanger.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB26279C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB2BB924() & 1;
  }
}

uint64_t sub_1DB262824(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v8 = *a1;
  v9 = v3;
  v6 = *v2;
  v7 = v4;
  return _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1;
}

uint64_t sub_1DB262884(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DB26289C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1DB2628B4()
{
  result = qword_1ECC28D08;
  if (!qword_1ECC28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore12LiteralValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DB262A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1DB262AC0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB262C90()
{
  result = qword_1ECC28D10;
  if (!qword_1ECC28D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D10);
  }

  return result;
}

uint64_t sub_1DB262CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D18, &qword_1DB2CD148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB262D60(uint64_t a1)
{
  if ((*(a1 + 40) >> 2) > 0x80000000)
  {
    return -(*(a1 + 40) >> 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB262D78(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v6 = sub_1DB2B995C(39, 0xE100000000000000);
      MEMORY[0x1E1283490](v6);

      v5 = 88;
      v3 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
      v9 = 1280070990;
      v10 = a1 > 2;
      v11 = a1 ^ 3 | a2;
      v12 = 0xEC000000454D4954;
      v13 = a1 ^ 4 | a2;
      v14 = 0xEC00000045544144;
      v15 = v13 == 0;
      if (v13)
      {
        v16 = 0xD000000000000011;
      }

      else
      {
        v16 = 0x5F544E4552525543;
      }

      if (!v15)
      {
        v14 = 0x80000001DB2D46C0;
      }

      v17 = v11 == 0;
      if (v11)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x5F544E4552525543;
      }

      if (!v17)
      {
        v12 = v14;
      }

      v19 = a1 ^ 1 | a2;
      v20 = 0xE400000000000000;
      v21 = v19 == 0;
      if (v19)
      {
        v22 = 0x45534C4146;
      }

      else
      {
        v22 = 1163219540;
      }

      if (!v21)
      {
        v20 = 0xE500000000000000;
      }

      if (a1 | a2)
      {
        v9 = v22;
        v8 = v20;
      }

      if (a1 <= 2)
      {
        v5 = v9;
      }

      else
      {
        v5 = v18;
      }

      if (v10)
      {
        v3 = v12;
      }

      else
      {
        v3 = v8;
      }
    }
  }

  else if (a3)
  {
    v5 = sub_1DB2B995C(39, 0xE100000000000000);
    v3 = v7;
  }

  else
  {

    v5 = a1;
  }

  MEMORY[0x1E1283490](v5, v3);
}
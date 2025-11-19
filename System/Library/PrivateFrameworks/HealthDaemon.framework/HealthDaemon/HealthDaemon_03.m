HealthDaemon::HDClinicalHealthLinkEntity::Property_optional __swiftcall HDClinicalHealthLinkEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CAFC();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289D9C58()
{
  v1 = *v0;
  sub_22911CB7C();
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289D9CC0()
{
  v2 = *v0;
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();
}

uint64_t sub_2289D9D24()
{
  v1 = *v0;
  sub_22911CB7C();
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();

  return sub_22911CB9C();
}

unint64_t sub_2289D9D94@<X0>(unint64_t *a1@<X8>)
{
  result = HDClinicalHealthLinkEntity.Property.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2289D9DCC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HDClinicalHealthLinkEntity.Property.rawValue.getter();
  v4 = v3;
  if (v2 == HDClinicalHealthLinkEntity.Property.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22911CADC();
  }

  return v7 & 1;
}

uint64_t HDClinicalHealthLinkEntity.JoinedProperty.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22911CA9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2289D9EE8()
{
  sub_22911CB7C();
  sub_22911C3DC();
  return sub_22911CB9C();
}

uint64_t sub_2289D9F5C()
{
  sub_22911CB7C();
  sub_22911C3DC();
  return sub_22911CB9C();
}

uint64_t sub_2289D9FB0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22911CA9C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2289DA03C()
{
  v0 = sub_22911C66C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_22911C68C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 17, 0);
  v9 = 0;
  v10 = v16;
  v14[2] = 0x8000000229181C30;
  v14[3] = 0x8000000229181C50;
  v14[1] = 0x8000000229181BE0;
  do
  {
    byte_283BE3AA8[v9 + 32];
    v15 = byte_283BE3AA8[v9 + 32];
    sub_2289D95FC(v3);
    sub_22911C67C();
    v16 = v10;
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2289FD438(v11 > 1, v12 + 1, 1);
      v10 = v16;
    }

    ++v9;
    *(v10 + 16) = v12 + 1;
    result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  }

  while (v9 != 17);
  qword_27D863228 = v10;
  return result;
}

uint64_t static HDClinicalHealthLinkEntity.columns.getter()
{
  if (qword_27D862788 != -1)
  {
    swift_once();
  }
}

unint64_t static HDClinicalHealthLinkEntity.foreignKeys()()
{
  sub_2289BF380();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = 0x5F746E756F636361;
  *(inited + 40) = 0xEA00000000006469;
  sub_2289B3D00(0, &qword_27D863230, off_27860DA90);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v1 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v1;
}

uint64_t static HDClinicalHealthLinkEntity.joinClauses(forProperty:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000229181CA0 == a2 || (sub_22911CADC() & 1) != 0)
  {
    sub_2289DD328(0, &qword_280D679C0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2291640E0;
    v3 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
    if (!v3)
    {
      sub_22911C35C();
      v3 = sub_22911C34C();
    }

    v4 = objc_opt_self();
    sub_2289B3D00(0, &qword_27D863230, off_27860DA90);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_22911C34C();
    v7 = [v4 leftJoinClauseFromTable:v3 toTargetEntity:ObjCClassFromMetadata as:0 localReference:v6 targetKey:*MEMORY[0x277D10A40]];

    *(inited + 32) = v7;
    v8 = sub_2289DD048(inited, &qword_27D863238, 0x277D10B50, &qword_27D863240, &qword_27D863290);
    swift_setDeallocating();
    v9 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_22911C34C();
    v14.receiver = v11;
    v14.super_class = &OBJC_METACLASS____TtC12HealthDaemon26HDClinicalHealthLinkEntity;
    v13 = objc_msgSendSuper2(&v14, sel_joinClausesForProperty_, v12);

    if (v13)
    {
      sub_2289B3D00(0, &qword_27D863238, 0x277D10B50);
      sub_2289B33F8(&qword_27D863240, &qword_27D863238, 0x277D10B50);
      v8 = sub_22911C51C();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

id HDClinicalHealthLinkEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDClinicalHealthLinkEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDClinicalHealthLinkEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDClinicalHealthLinkEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDClinicalHealthLinkEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289DAD44()
{
  if (qword_27D862788 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2289DADA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22911BE7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2289DD5D4(&qword_27D862D58);
  v36 = a2;
  v13 = sub_22911C2FC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2289DD5D4(&qword_27D863278);
      v23 = sub_22911C33C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2289DBDC0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2289DB058(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22911C79C();

    if (v17)
    {

      sub_2289B3D00(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22911C78C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2289DB3B4(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2289DB908(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_2289DBD3C(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_2289B3D00(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22911C6AC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22911C6BC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_2289DC03C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2289DB2D4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_22911CB6C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2289DC1E4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2289DB3B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2289DD764(0, a3, a4, a5, a6);
    v10 = sub_22911C80C();
    v24 = v10;
    sub_22911C74C();
    if (sub_22911C7BC())
    {
      sub_2289B3D00(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2289DB908(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22911C6AC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22911C7BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2289DB5CC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22911BE7C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_2289DD618();
  result = sub_22911C7FC();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2289DD5D4(&qword_27D862D58);
      result = sub_22911C2FC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2289DB908(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2289DD764(0, a2, a3, a4, a5);
  result = sub_22911C7FC();
  v10 = result;
  if (*(v7 + 16))
  {
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_22911C6AC();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_2289DBB24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2289DD70C();
  result = sub_22911C7FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_22911CB6C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2289DBD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22911C6AC();
  v5 = -1 << *(a2 + 32);
  result = sub_22911C72C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2289DBDC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22911BE7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2289DB5CC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2289DC304();
      goto LABEL_12;
    }

    sub_2289DC7B4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2289DD5D4(&qword_27D862D58);
  v15 = sub_22911C2FC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2289DD5D4(&qword_27D863278);
      v23 = sub_22911C33C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22911CB0C();
  __break(1u);
  return result;
}

void sub_2289DC03C(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2289DB908(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2289DC52C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2289DCAB0(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22911C6AC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2289B3D00(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22911C6BC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22911CB0C();
  __break(1u);
}

uint64_t sub_2289DC1E4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2289DBB24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2289DC680();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2289DCCB8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_22911CB6C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22911CB0C();
  __break(1u);
  return result;
}

void *sub_2289DC304()
{
  v1 = v0;
  v2 = sub_22911BE7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289DD618();
  v7 = *v0;
  v8 = sub_22911C7EC();
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

id sub_2289DC52C(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2289DD764(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22911C7EC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
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

      v20 = *(v6 + 56 + 8 * v12);
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
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_2289DC680()
{
  v1 = v0;
  sub_2289DD70C();
  v2 = *v0;
  v3 = sub_22911C7EC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_2289DC7B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22911BE7C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_2289DD618();
  v10 = sub_22911C7FC();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2289DD5D4(&qword_27D862D58);
      result = sub_22911C2FC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2289DCAB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2289DD764(0, a2, a3, a4, a5);
  result = sub_22911C7FC();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_22911C6AC();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_2289DCCB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2289DD70C();
  result = sub_22911C7FC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_22911CB6C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2289DCE9C(uint64_t a1)
{
  v2 = sub_22911BE7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2289DD5D4(&qword_27D862D58);
  result = MEMORY[0x22AAC60F0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2289DADA0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2289DD048(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v11 = sub_2289B3D00(0, a2, a3);
    v12 = sub_2289B33F8(a4, a2, a3);
    result = MEMORY[0x22AAC60F0](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAC6410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2289DB058(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_22911C78C();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2289DD1B8()
{
  result = qword_27D863248;
  if (!qword_27D863248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863248);
  }

  return result;
}

uint64_t sub_2289DD23C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2289DD328(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2289DD2A4()
{
  result = qword_27D863260;
  if (!qword_27D863260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863260);
  }

  return result;
}

void sub_2289DD328(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for HDClinicalHealthLinkEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDClinicalHealthLinkEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HDClinicalHealthLinkEntity.JoinedProperty(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HDClinicalHealthLinkEntity.JoinedProperty(_WORD *result, int a2, int a3)
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

uint64_t sub_2289DD5D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22911BE7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289DD618()
{
  if (!qword_27D863280)
  {
    sub_22911BE7C();
    sub_2289DD5D4(&qword_27D862D58);
    v0 = sub_22911C81C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863280);
    }
  }
}

uint64_t sub_2289DD698(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAC60F0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2289DB2D4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_2289DD70C()
{
  if (!qword_27D863288)
  {
    v0 = sub_22911C81C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863288);
    }
  }
}

void sub_2289DD764(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    sub_2289B33F8(a5, a3, a4);
    v9 = sub_22911C81C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_2289DD7F0@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRIndicatorSnapshotEntity() defaultForeignKey];
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000229183740;
  a1[2] = 0xD000000000000015;
  a1[3] = 0x8000000229183370;
  a1[4] = result;
  return result;
}

id HDHRIndicatorSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIndicatorSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2289DDA64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CC9578];
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_2289DF21C(a1 + *a3, &v16 - v8, &qword_27D862B48, v5);
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_22911B84C();
    (*(v11 + 8))(v9, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_2289DDD6C(SEL *a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if (![v4 *a1])
  {
    return 0;
  }

  [v4 *a2];
  return v5;
}

uint64_t sub_2289DDE04()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data) strokeType];
  if ((v1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_229164EC8[(v1 - 1)];
  }
}

uint64_t sub_2289DDF14()
{
  v1 = MEMORY[0x277CC9578];
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0x6164207472617453, 0xEC000000203A6574);
  sub_2289DF21C(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v5, &qword_27D862B48, v1);
  v6 = sub_22911C3AC();
  MEMORY[0x22AAC5FC0](v6);

  MEMORY[0x22AAC5FC0](0x616420646E65202CLL, 0xEC000000203A6574);
  sub_2289DF21C(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v5, &qword_27D862B48, v1);
  v7 = sub_22911C3AC();
  MEMORY[0x22AAC5FC0](v7);

  MEMORY[0x22AAC5FC0](0x756F4370616C202CLL, 0xEC000000203A746ELL);
  v14 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v8 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v8);

  MEMORY[0x22AAC5FC0](0x6E656D676553202CLL, 0xEB00000000203A74);
  v14 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v9 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v9);

  MEMORY[0x22AAC5FC0](0x6E6174736944202CLL, 0xEC000000203A6563);
  v10 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance);
  sub_22911C4FC();
  MEMORY[0x22AAC5FC0](0x656B6F727453202CLL, 0xEF203A746E756F43);
  v14 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v11 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v11);

  return v15;
}

id HDCMSwimData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for HDCMSwimData()
{
  result = qword_27D8632B0;
  if (!qword_27D8632B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2289DE420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2289DF2E4();
    v4 = sub_22911C45C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289DE500(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for HDCMSwimData();
    v5 = sub_22911C44C();
  }

  if (a2)
  {
    v6 = sub_22911B7EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_2289DE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *(v7 + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker);
  if (v8)
  {
    if (a1)
    {
      v14 = *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
    }

    else
    {
      v14 = 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v18[4] = a5;
    v18[5] = v15;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2289DE420;
    v18[3] = a6;
    v16 = _Block_copy(v18);
    v17 = v8;

    [v17 *a7];
    _Block_release(v16);
  }
}

uint64_t sub_2289DE720(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    v6 = 0;
LABEL_13:
    a3(v6);
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v5 = sub_22911C78C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_13;
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_22911C8BC();
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAC6410](v8, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [objc_allocWithZone(HDSafeCMSwimData) initWithSwimData_];
    v12 = objc_allocWithZone(type metadata accessor for HDCMSwimData());
    sub_2289DEE2C(v10, v11);

    sub_22911C88C();
    v13 = *(v14 + 16);
    sub_22911C8CC();
    sub_22911C8DC();
    sub_22911C89C();
  }

  while (v5 != v8);
  a3(v14);
LABEL_14:
}

uint64_t sub_2289DE8E8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(a3, a6, v12);
}

id HDCMSwimTracker.init()()
{
  *&v0[OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDCMSwimTracker();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2289DEAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2289DEAF0()
{
  sub_2289DED0C(319, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2289DED0C(319, &qword_27D8630C0, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2289DED0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2289DEE2C(void *a1, void *a2)
{
  sub_2289DED0C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data;
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data] = a1;
  v17 = a1;
  v18 = [a2 startDate];
  if (v18)
  {
    v19 = v18;
    sub_22911B86C();

    v20 = sub_22911B88C();
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  }

  else
  {
    v21 = sub_22911B88C();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  }

  sub_2289DF330(v15, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate], &qword_27D862B48, MEMORY[0x277CC9578]);
  v22 = [a2 endDate];
  if (v22)
  {
    v23 = v22;
    sub_22911B86C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_22911B88C();
  v26 = 1;
  (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
  sub_2289DF330(v13, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate], &qword_27D862B48, MEMORY[0x277CC9578]);
  v27 = [*&v2[v16] recordId];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_recordId] = v27;
  v28 = [a2 sourceId];
  if (v28)
  {
    v29 = v28;
    sub_22911B8CC();

    v26 = 0;
  }

  v30 = sub_22911B8DC();
  (*(*(v30 - 8) + 56))(v8, v26, 1, v30);
  sub_2289DF330(v8, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId], &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v31 = [*&v2[v16] lapCount];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount] = v31;
  v32 = [*&v2[v16] segment];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment] = v32;
  [*&v2[v16] distance];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance] = v33;
  v34 = [*&v2[v16] strokeCount];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount] = v34;
  v35 = type metadata accessor for HDCMSwimData();
  v37.receiver = v2;
  v37.super_class = v35;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_2289DF21C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2289DED0C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289DF288(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2289DED0C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2289DF2E4()
{
  result = qword_27D8632C0;
  if (!qword_27D8632C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8632C0);
  }

  return result;
}

uint64_t sub_2289DF330(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2289DED0C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289DF3B0@<X0>(uint64_t a1@<X8>)
{
  sub_2289DF604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 record];
  v8 = [v7 recordID];

  v9 = [v8 recordName];
  sub_22911C35C();

  sub_22911C06C();
  v10 = [v1 record];
  v11 = [v10 modificationDate];

  if (v11)
  {
    sub_22911B86C();

    v12 = sub_22911B88C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v13 = sub_22911B88C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_2289DF65C();
  v15 = *(v14 + 64);
  sub_2289BE454(v6, a1 + *(v14 + 48));
  *(a1 + v15) = [v1 schemaVersion];
  v16 = *MEMORY[0x277CCB478];
  v17 = sub_22911BF0C();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

void sub_2289DF604()
{
  if (!qword_27D862B48)
  {
    sub_22911B88C();
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B48);
    }
  }
}

void sub_2289DF65C()
{
  if (!qword_27D8632C8)
  {
    sub_22911C07C();
    sub_2289DF604();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8632C8);
    }
  }
}

BOOL static HDDaemon.isUnitTesting()()
{
  v0 = sub_22911C34C();
  v1 = NSClassFromString(v0);

  return v1 != 0;
}

uint64_t sub_2289DF830(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id HDDatabaseAvailabilityCondition.init(_:loggingCategory:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase:a1 loggingCategory:a2];

  return v4;
}

{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_callback];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_waitingStartTime] = 0;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_loggingCategory] = a2;
  v9.receiver = v2;
  v9.super_class = HDDatabaseAvailabilityCondition;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [a1 addProtectedDataObserver_];

  return v7;
}

void HDDatabaseAvailabilityCondition.setReadyCallback(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = [v2 db];
  if (v5 && (v6 = v5, v7 = [v5 isProtectedDataAvailable], v6, v7))
  {
    a1(1);
  }

  else
  {
    v8 = [objc_opt_self() now];
    if (v8)
    {
      v9 = v8;
      [v2 setWaitingStartTime_];

      v11[4] = a1;
      v11[5] = a2;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_2289DF830;
      v11[3] = &block_descriptor_8;
      v10 = _Block_copy(v11);

      [v2 setCallback_];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Bool __swiftcall HDDatabaseAvailabilityCondition.isConditionMet()()
{
  v1 = [v0 db];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isProtectedDataAvailable];

  return v3;
}

id HDDatabaseAvailabilityCondition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2289DFF5C(char a1)
{
  v2 = v1;
  v4 = sub_22911B95C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22911B88C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  if (a1)
  {
    v18 = [v2 callback];
    if (v18)
    {
      v19 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_2289E057C;
      *(v21 + 24) = v20;
      [v2 setCallback_];
      sub_22911B87C();
      v22 = [v2 waitingStartTime];
      [v2 setWaitingStartTime_];
      if (v22)
      {
        sub_22911B86C();

        sub_22911B82C();
        v24 = v23;
        v25 = *(v10 + 8);
        v25(v14, v9);
        v25(v17, v9);
        v26 = [v2 loggingCategory];
        sub_22911B96C();
        v27 = sub_22911B94C();
        v28 = sub_22911C5DC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134349056;
          *(v29 + 4) = v24;
          _os_log_impl(&dword_228986000, v27, v28, "Database became available, took %{public}f", v29, 0xCu);
          MEMORY[0x22AAC9830](v29, -1, -1);
        }

        (*(v5 + 8))(v8, v4);
        v30 = *(v21 + 24);
        (*(v21 + 16))(1);
        return sub_2289ACBE4(sub_2289E0540);
      }

      else
      {
        result = sub_2289ACBE4(sub_2289E0540);
        __break(1u);
      }
    }

    else
    {

      return [v2 setCallback_];
    }
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for HDDatabaseAvailabilityCondition()
{
  result = qword_27D8633B8;
  if (!qword_27D8633B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8633B8);
  }

  return result;
}

void sub_2289E0368(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 db];
  if (v5 && (v6 = v5, v7 = [v5 isProtectedDataAvailable], v6, (v7 & 1) != 0))
  {
    a2[2](a2, 1);
  }

  else
  {
    v8 = [objc_opt_self() now];
    if (v8)
    {
      v9 = v8;
      [a1 setWaitingStartTime_];

      v11[4] = sub_2289E0528;
      v11[5] = v4;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_2289DF830;
      v11[3] = &block_descriptor_5_0;
      v10 = _Block_copy(v11);

      [a1 setCallback_];
      _Block_release(v10);
    }

    else
    {
      _Block_release(a2);
      __break(1u);
    }
  }
}

uint64_t sub_2289E0540(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t static QueryTaskServer.taskIdentifier.getter()
{
  sub_22911BE1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_22911C35C();

  return v2;
}

void QueryTaskServer.remote_query(encodedQueryDescriptor:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  sub_2289E09FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 profile];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22911C4EC();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v13;
    v15[6] = a2;
    v15[7] = a3;
    v16 = a1;

    sub_2289E126C(0, 0, v11, &unk_229164F48, v15);
  }

  else
  {
    v17 = sub_22911C0CC();
    sub_2289E1BCC(&qword_27D8633C0, MEMORY[0x277CCB548]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277CCB538], v17);
    a2(0, v18);
  }
}

void sub_2289E09FC()
{
  if (!qword_27D8630E8)
  {
    sub_22911C4EC();
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8630E8);
    }
  }
}

uint64_t sub_2289E0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_22911C1AC();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E0B18, 0, 0);
}

uint64_t sub_2289E0B18()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  v4 = MEMORY[0x277CCB5E0];
  sub_2289E1BCC(&qword_27D8633C8, MEMORY[0x277CCB5E0]);
  sub_2289E1BCC(&qword_27D8633D0, v4);
  sub_22911C0FC();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2289E0CBC;
  v6 = v0[12];
  v7 = v0[7];

  return sub_2289E2214((v0 + 2), v7);
}

uint64_t sub_2289E0CBC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2289E0F78, 0, 0);
  }

  else
  {
    *(v3 + 32) = *(v3 + 16);
    v4 = swift_task_alloc();
    *(v3 + 120) = v4;
    *v4 = v3;
    v4[1] = sub_2289E0E34;
    v5 = *(v3 + 96);

    return sub_2289E4550((v3 + 32));
  }
}

uint64_t sub_2289E0E34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v12 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v6 = v4[4];
    v7 = v4[5];

    v8 = sub_2289E10E8;
  }

  else
  {
    v4[17] = a1;
    v9 = v4[4];
    v10 = v4[5];

    v8 = sub_2289E1028;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2289E0F78()
{
  v1 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v3 = v0[8];
  v2 = v0[9];
  v4 = v1;
  v3(0, v1);

  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2289E1028()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v1;
  v6(v1, 0);

  (*(v3 + 8))(v2, v5);
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2289E10E8()
{
  v1 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v3 = v0[8];
  v2 = v0[9];
  v4 = v1;
  v3(0, v1);

  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2289E1198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2289D0EDC;

  return sub_2289E0A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2289E126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2289E09FC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289E199C(a3, v12);
  v13 = sub_22911C4EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2289E1A00(v12);
  }

  else
  {
    sub_22911C4DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22911C4CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22911C3BC() + 32;
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

      sub_2289E1A00(a3);

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

  sub_2289E1A00(a3);
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

id QueryTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289E160C(void *a1, void *a2, void (**a3)(void, void, void))
{
  sub_2289E09FC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  v11 = [a2 profile];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22911C4EC();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = v12;
    v14[6] = sub_2289CBE08;
    v14[7] = v10;
    v15 = a1;

    sub_2289E126C(0, 0, v9, &unk_229164F78, v14);
  }

  else
  {
    v17 = sub_22911C0CC();
    sub_2289E1BCC(&qword_27D8633C0, MEMORY[0x277CCB548]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277CCB538], v17);
    v20 = sub_22911B7EC();
    (a3)[2](a3, 0, v20);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2289E18C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2289CFF80;

  return sub_2289E0A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2289E199C(uint64_t a1, uint64_t a2)
{
  sub_2289E09FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2289E1A00(uint64_t a1)
{
  sub_2289E09FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2289E1A5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2289D0EDC;

  return sub_2289D03A4(a1, v5);
}

uint64_t sub_2289E1B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2289CFF80;

  return sub_2289D03A4(a1, v5);
}

uint64_t sub_2289E1BCC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2289E1C14@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRIntroSnapshotEntity() defaultForeignKey];
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000229183BA0;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x8000000229183420;
  a1[4] = result;
  return result;
}

id HDHRIntroSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIntroSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIntroSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIntroSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIntroSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EncodedQueryDescriptor.evaluate(in:)(uint64_t a1)
{
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v2;
  v4[1] = sub_2289E1F00;

  return sub_2289E2214(v2 + 16, a1);
}

uint64_t sub_2289E1F00()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2289E21E4, 0, 0);
  }

  else
  {
    *(v3 + 32) = *(v3 + 16);
    v4 = swift_task_alloc();
    *(v3 + 72) = v4;
    *v4 = v3;
    v4[1] = sub_2289E2078;
    v5 = *(v3 + 48);

    return sub_2289E4550((v3 + 32));
  }
}

uint64_t sub_2289E2078(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    v6 = v5[4];
    v7 = v5[5];

    return MEMORY[0x2822009F8](sub_2289E21FC, 0, 0);
  }

  else
  {
    v8 = v5[4];
    v9 = v5[5];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_2289E2214(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_22911B9CC();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_22911C0DC();
  v3[32] = v7;
  v8 = *(v7 - 8);
  v3[33] = v8;
  v9 = *(v8 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v10 = sub_22911C1AC();
  v3[40] = v10;
  v11 = *(v10 - 8);
  v3[41] = v11;
  v12 = *(v11 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E23FC, 0, 0);
}

uint64_t sub_2289E23FC()
{
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[41];
  v4 = *(v3 + 16);
  v4(v1, v0[28], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277CCB5D0])
  {
    v6 = v0[46];
    v7 = v0[39];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    (*(v0[41] + 96))(v6, v0[40]);
    sub_2289E4F54();
    v14 = *(v13 + 48);
    v15 = *(v9 + 32);
    v0[47] = v15;
    v0[48] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v7, v6, v8);
    (*(v11 + 32))(v10, v6 + v14, v12);
    EvaluatableType(for:)(v7, (v0 + 12));
    v40 = v0[15];
    v39 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v40);
    v41 = swift_task_alloc();
    v0[49] = v41;
    *v41 = v0;
    v41[1] = sub_2289E2964;
    v42 = v0[31];
    v43 = v0[27];

    return TypeEvaluatableInProfile.tryEvaluateErased(configuration:in:)((v0 + 25), v42, v43, v40, v39);
  }

  if (v5 == *MEMORY[0x277CCB5C8])
  {
    v16 = v0[45];
    v17 = v0[46];
    v18 = v0[44];
    v19 = v0[40];
    (*(v0[41] + 96))(v17, v19);
    v0[51] = *v17;
    sub_2289E4FC4();
    v21 = v20;
    v22 = swift_projectBox();
    v23 = *(v21 + 48);
    v4(v16, v22, v19);
    v4(v18, v22 + v23, v19);
    v24 = swift_task_alloc();
    v0[52] = v24;
    *v24 = v0;
    v24[1] = sub_2289E2C3C;
    v25 = v0[45];
    v26 = v0[27];
    v27 = v0 + 21;
LABEL_7:

    return sub_2289E2214(v27, v26);
  }

  if (v5 == *MEMORY[0x277CCB5D8])
  {
    v28 = v0[46];
    v30 = v0[42];
    v29 = v0[43];
    v31 = v0[40];
    (*(v0[41] + 96))(v28, v31);
    v0[58] = *v28;
    sub_2289E4FC4();
    v33 = v32;
    v34 = swift_projectBox();
    v35 = *(v33 + 48);
    v4(v29, v34, v31);
    v4(v30, v34 + v35, v31);
    v36 = swift_task_alloc();
    v0[59] = v36;
    *v36 = v0;
    v36[1] = sub_2289E360C;
    v37 = v0[43];
    v26 = v0[27];
    v27 = v0 + 17;
    goto LABEL_7;
  }

  v44 = v0[46];
  v46 = v0[40];
  v45 = v0[41];
  v47 = sub_22911C0CC();
  sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
  swift_allocError();
  (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277CCB538], v47);
  swift_willThrow();
  (*(v45 + 8))(v44, v46);
  v50 = v0[45];
  v49 = v0[46];
  v52 = v0[43];
  v51 = v0[44];
  v53 = v0[42];
  v55 = v0[38];
  v54 = v0[39];
  v57 = v0[36];
  v56 = v0[37];
  v58 = v0[35];
  v60 = v0[34];
  v61 = v0[31];

  v59 = v0[1];

  return v59();
}

uint64_t sub_2289E2964()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_2289E3EF8;
  }

  else
  {
    v3 = sub_2289E2A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2289E2A78()
{
  v24 = v0[47];
  v25 = v0[48];
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v23 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  v27 = v0[25];
  (*(v4 + 16))(v1, v2, v3);
  sub_2289E523C();
  v8 = *(v4 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_229163C40;
  v24(v10 + v9, v1, v3);
  (*(v5 + 8))(v23, v6);
  (*(v4 + 8))(v2, v3);
  *v7 = v27;
  v7[1] = v10;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v17 = v0[38];
  v16 = v0[39];
  v19 = v0[36];
  v18 = v0[37];
  v20 = v0[35];
  v26 = v0[34];
  v28 = v0[31];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2289E2C3C()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_2289E4038;
  }

  else
  {
    v3 = sub_2289E2D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2289E2D50()
{
  *(v0 + 432) = *(v0 + 168);
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_2289E2DF4;
  v2 = *(v0 + 352);
  v3 = *(v0 + 216);

  return sub_2289E2214(v0 + 184, v3);
}

uint64_t sub_2289E2DF4()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_2289E4174;
  }

  else
  {
    v3 = sub_2289E2F08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2289E2F08()
{
  v90 = v0;
  v1 = v0[55];
  v3 = v0[23];
  v2 = v0[24];
  if (*(v1 + 16) != 1)
  {
    v75 = v0[54];
    v80 = v0[51];
    v17 = v0[44];
    v18 = v0[45];
    v20 = v0[40];
    v19 = v0[41];
    v21 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CCB540], v21);
    swift_willThrow();

    v23 = *(v19 + 8);
    v23(v17, v20);
    v23(v18, v20);

LABEL_10:

    goto LABEL_11;
  }

  if ((sub_2289E5028(v0[55], v0[24]) & 1) == 0)
  {
    v24 = v0[54];
    v76 = v0[55];
    v81 = v0[51];
    v26 = v0[44];
    v25 = v0[45];
    v28 = v0[40];
    v27 = v0[41];
    v29 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CCB540], v29);
    swift_willThrow();
    v31 = *(v27 + 8);
    v31(v26, v28);
    v31(v25, v28);

LABEL_9:

    goto LABEL_10;
  }

  if (!*(v1 + 16))
  {
    v32 = v0[54];
    v77 = v0[55];
    v82 = v0[51];
    v33 = v0[44];
    v34 = v0[45];
    v36 = v0[40];
    v35 = v0[41];
    v37 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277CCB540], v37);
    swift_willThrow();

    v39 = *(v35 + 8);
    v39(v33, v36);
    v39(v34, v36);
    goto LABEL_9;
  }

  v4 = v0[57];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[32];
  v8 = v0[33];
  (*(v8 + 16))(v5, v0[55] + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
  (*(v8 + 32))(v6, v5, v7);
  EvaluatableType(for:)(v6, (v0 + 7));
  if (v4)
  {
    v10 = v0[54];
    v9 = v0[55];
    v74 = v0[45];
    v79 = v0[51];
    v73 = v0[44];
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[37];
    v14 = v0[32];
    v15 = v0[33];

    (*(v15 + 8))(v13, v14);
    v16 = *(v11 + 8);
    v16(v73, v12);
    v16(v74, v12);
LABEL_11:

    v41 = v0[45];
    v40 = v0[46];
    v43 = v0[43];
    v42 = v0[44];
    v44 = v0[42];
    v46 = v0[38];
    v45 = v0[39];
    v48 = v0[36];
    v47 = v0[37];
    v49 = v0[35];
    v78 = v0[34];
    v83 = v0[31];

    v50 = v0[1];
    goto LABEL_12;
  }

  v52 = v0[54];
  (*(v0[33] + 8))(v0[37], v0[32]);
  v53 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v88 = v52;
  v89 = v3;

  TypeEvaluatableInProfile.concatenate(m1:m2:)(&v88, &v89, v53, &v87);
  v55 = v0[54];
  v54 = v0[55];
  v85 = v0[51];
  v57 = v0[44];
  v56 = v0[45];
  v58 = v0[40];
  v59 = (v0[41] + 8);
  v60 = v0[26];

  v61 = *v59;
  (*v59)(v57, v58);
  v61(v56, v58);
  v62 = v87;

  *v60 = v62;
  v60[1] = v54;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v64 = v0[45];
  v63 = v0[46];
  v66 = v0[43];
  v65 = v0[44];
  v67 = v0[42];
  v69 = v0[38];
  v68 = v0[39];
  v71 = v0[36];
  v70 = v0[37];
  v72 = v0[35];
  v84 = v0[34];
  v86 = v0[31];

  v50 = v0[1];
LABEL_12:

  return v50();
}

uint64_t sub_2289E360C()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_2289E42C4;
  }

  else
  {
    v3 = sub_2289E3720;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2289E3720()
{
  *(v0 + 488) = *(v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_2289E37C8;
  v2 = *(v0 + 336);
  v3 = *(v0 + 216);

  return sub_2289E2214(v0 + 152, v3);
}

uint64_t sub_2289E37C8()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_2289E4400;
  }

  else
  {
    v3 = sub_2289E38DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2289E38DC()
{
  v82 = v0;
  v2 = v0[19];
  v1 = v0[20];
  if (*(v0[62] + 16) != 1)
  {
    v67 = v0[61];
    v72 = v0[58];
    v17 = v0[42];
    v18 = v0[43];
    v20 = v0[40];
    v19 = v0[41];
    v21 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CCB540], v21);
    swift_willThrow();

    v23 = *(v19 + 8);
    v23(v17, v20);
    v23(v18, v20);

LABEL_7:

    goto LABEL_8;
  }

  if (*(v1 + 16) != 1)
  {
    v24 = v0[61];
    v68 = v0[19];
    v73 = v0[58];
    v25 = v0[42];
    v26 = v0[43];
    v28 = v0[40];
    v27 = v0[41];
    v29 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CCB540], v29);
    swift_willThrow();

    v31 = *(v27 + 8);
    v31(v25, v28);
    v31(v26, v28);

    goto LABEL_7;
  }

  v3 = v0[64];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  (*(v7 + 16))(v4, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  (*(v7 + 32))(v5, v4, v6);
  EvaluatableType(for:)(v5, (v0 + 2));
  if (v3)
  {
    v8 = v0[61];
    v9 = v0[62];
    v10 = v0[42];
    v66 = v0[43];
    v71 = v0[58];
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[35];
    v15 = v0[32];
    v14 = v0[33];

    (*(v14 + 8))(v13, v15);
    v16 = *(v11 + 8);
    v16(v10, v12);
    v16(v66, v12);
LABEL_8:

    v33 = v0[45];
    v32 = v0[46];
    v35 = v0[43];
    v34 = v0[44];
    v36 = v0[42];
    v38 = v0[38];
    v37 = v0[39];
    v40 = v0[36];
    v39 = v0[37];
    v41 = v0[35];
    v69 = v0[34];
    v74 = v0[31];

    v42 = v0[1];
    goto LABEL_9;
  }

  v44 = v0[61];
  (*(v0[33] + 8))(v0[35], v0[32]);
  v45 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v80 = v2;
  v81 = v44;

  TypeEvaluatableInProfile.merge(mine:other:)(&v80, &v81, v45, &v79);
  v46 = v0[61];
  v47 = v0[62];
  v48 = v0[43];
  v75 = v48;
  v77 = v0[58];
  v70 = v0[42];
  v50 = v0[40];
  v49 = v0[41];
  v51 = v0[26];

  v52 = v79;
  v81 = v47;

  sub_228A100D4(v53);

  v54 = *(v49 + 8);
  v54(v70, v50);
  v54(v75, v50);
  v55 = v81;
  *v51 = v52;
  v51[1] = v55;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v57 = v0[45];
  v56 = v0[46];
  v59 = v0[43];
  v58 = v0[44];
  v60 = v0[42];
  v62 = v0[38];
  v61 = v0[39];
  v64 = v0[36];
  v63 = v0[37];
  v65 = v0[35];
  v76 = v0[34];
  v78 = v0[31];

  v42 = v0[1];
LABEL_9:

  return v42();
}

uint64_t sub_2289E3EF8()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[50];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2289E4038()
{
  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[40];
  v4 = *(v0[41] + 8);
  v4(v0[44], v3);
  v4(v2, v3);

  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[53];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2289E4174()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[51];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v7 = v0[41];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);

  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v13 = v0[42];
  v15 = v0[38];
  v14 = v0[39];
  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[35];
  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[57];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2289E42C4()
{
  v1 = v0[58];
  v2 = v0[43];
  v3 = v0[40];
  v4 = *(v0[41] + 8);
  v4(v0[42], v3);
  v4(v2, v3);

  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[60];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2289E4400()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[58];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[41];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);

  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v13 = v0[42];
  v15 = v0[38];
  v14 = v0[39];
  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[35];
  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[64];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2289E4550(_OWORD *a1)
{
  *(v2 + 136) = v1;
  v4 = sub_22911C0DC();
  *(v2 + 144) = v4;
  v5 = *(v4 - 8);
  *(v2 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v7 = sub_22911C1AC();
  *(v2 + 200) = v7;
  v8 = *(v7 - 8);
  *(v2 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;

  return MEMORY[0x2822009F8](sub_2289E46A8, 0, 0);
}

uint64_t sub_2289E46A8()
{
  v63 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0 + 25;
  v3 = v0[25];
  (*(v2 + 16))(v1, v0[17], v3);
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277CCB5D0])
  {
    v6 = v0[27];
    (*(v0[26] + 96))(v6, v0[25]);
    sub_2289E4F54();
    v8 = *(v7 + 48);
    v9 = sub_22911B9CC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = v0 + 19;
    v4 = v0 + 18;
    goto LABEL_5;
  }

  if (v5 == *MEMORY[0x277CCB5C8])
  {
    v10 = v0 + 26;
LABEL_5:
    v11 = v0[29];
    (*(*v10 + 8))(v0[27], *v4);
    if (*(v11 + 16) == 1)
    {
      v12 = v0 + 12;
      v13 = v0[23];
      v14 = v0[24];
      v15 = v0[18];
      v16 = v0[19];
      (*(v16 + 16))(v13, v0[29] + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);
      (*(v16 + 32))(v14, v13, v15);
      SerializableModelType(for:)(v14, v0 + 12);
      v24 = v0[28];
      (*(v0[19] + 8))(v0[24], v0[18]);
      v25 = v0[15];
      v26 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v25);
      *&v59 = v24;
      v27 = *(v26 + 16);

      v27(v62, &v59, v25, v26);

      v34 = (*(*v62[0] + 96))(v28);

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v5 != *MEMORY[0x277CCB5D8])
  {
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[25];
    v32 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CCB538], v32);
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    goto LABEL_13;
  }

  v17 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  if (*(v17 + 16) == 2)
  {
    v12 = v0 + 2;
    v18 = v0[21];
    v19 = v0[22];
    v20 = v0[18];
    v21 = v0[19];
    (*(v21 + 16))(v18, v0[29] + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);
    (*(v21 + 32))(v19, v18, v20);
    SerializableModelType(for:)(v19, v0 + 2);
    v43 = v0[20];
    v44 = *(v0[19] + 8);
    v58 = *(v0 + 14);
    v44(v0[22], v0[18]);
    v59 = v58;
    sub_2289E4E24(v43);
    SerializableModelType(for:)(v0[20], v0 + 7);
    v52 = v0[28];
    v44(v0[20], v0[18]);
    v57 = v0[11];
    *&v58 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v58);
    v61 = v52;
    v54 = v0[5];
    v53 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v54);
    *&v59 = v52;
    v55 = *(v53 + 16);
    swift_retain_n();
    v55(v62, &v59, v54, v53);

    *&v59 = v62[0];
    (*(v57 + 24))(&v60, &v61, &v59, v58);

    v34 = (*(*v60 + 96))(v56);

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v12);
    v45 = v0[27];
    v47 = v0[23];
    v46 = v0[24];
    v49 = v0[21];
    v48 = v0[22];
    v50 = v0[20];

    v51 = v0[1];

    return v51(v34);
  }

LABEL_10:
  v22 = sub_22911C0CC();
  sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CCB540], v22);
  swift_willThrow();
LABEL_13:
  v35 = v0[27];
  v37 = v0[23];
  v36 = v0[24];
  v39 = v0[21];
  v38 = v0[22];
  v40 = v0[20];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2289E4E24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v3 + 16) >= 2uLL)
  {
    v7 = sub_22911C0DC();
    return (*(*(v7 - 8) + 16))(a1, v3 + *(*(v7 - 8) + 72) + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v7);
  }

  else
  {
    v4 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CCB540], v4);
    return swift_willThrow();
  }
}

void sub_2289E4F54()
{
  if (!qword_27D8633D8)
  {
    sub_22911C0DC();
    sub_22911B9CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8633D8);
    }
  }
}

void sub_2289E4FC4()
{
  if (!qword_27D8633E0)
  {
    sub_22911C1AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8633E0);
    }
  }
}

uint64_t sub_2289E5028(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911C0DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_2289E5294(&qword_27D862AA0, MEMORY[0x277CCB558]);
    v22 = sub_22911C33C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_2289E523C()
{
  if (!qword_27D8633E8)
  {
    sub_22911C0DC();
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8633E8);
    }
  }
}

uint64_t sub_2289E5294(unint64_t *a1, void (*a2)(uint64_t))
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

__CFString *sub_2289E52DC()
{
  v1 = v0;
  sub_2289DF604();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = [v1 type];
  if (v9 == 2)
  {
    v10 = @"Staging";
    v13 = @"Staging";
  }

  else if (v9 == 1)
  {
    v10 = @"DateRange";
    v12 = @"DateRange";
  }

  else if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = @"Initial";
    v11 = @"Initial";
  }

  result = v10;
  if (result)
  {
    v15 = result;
    sub_22911C35C();

    v16 = [v1 startDate];
    if (v16)
    {
      v17 = v16;
      sub_22911B86C();

      v18 = sub_22911B88C();
      (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    }

    else
    {
      v19 = sub_22911B88C();
      (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    }

    v20 = [v1 endDate];
    if (v20)
    {
      v21 = v20;
      sub_22911B86C();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_22911B88C();
    (*(*(v23 - 8) + 56))(v6, v22, 1, v23);
    return sub_22911BF2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HDHealthEntity.withReadTransaction<A>(in:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22911C6CC();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = *(a4 - 8);
  (*(v16 + 56))(&v28 - v14, 1, 1, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = v5;
  v18[4] = v15;
  v18[5] = a2;
  v18[6] = a3;
  v19 = swift_allocObject();
  v19[2] = sub_2289E58D8;
  v19[3] = v18;
  aBlock[4] = sub_2289E5A64;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289E5A90;
  aBlock[3] = &block_descriptor_9;
  v20 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v21 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:a1 error:aBlock block:v20];
  _Block_release(v20);
  v22 = aBlock[0];
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  if (!v21)
  {
    sub_22911B7FC();

    swift_willThrow();
    (*(v30 + 8))(v15, v31);

    goto LABEL_6;
  }

  v24 = v29;
  v23 = v30;
  v25 = v31;
  (*(v30 + 16))(v29, v15, v31);
  result = (*(v16 + 48))(v24, 1, a4);
  if (result != 1)
  {
    (*(v16 + 32))(v28, v24, a4);
    (*(v23 + 8))(v15, v25);

LABEL_6:
    v27 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

id static HDHealthEntity.database(from:)(void *a1)
{
  result = [a1 databaseForEntityClass_];
  if (!result)
  {
    v3 = objc_opt_self();
    sub_22911C83C();

    v4 = sub_22911CBAC();
    MEMORY[0x22AAC5FC0](v4);

    MEMORY[0x22AAC5FC0](0xD000000000000023, 0x8000000229183C40);
    v5 = [a1 description];
    v6 = sub_22911C35C();
    v8 = v7;

    MEMORY[0x22AAC5FC0](v6, v8);

    v9 = sub_22911C34C();

    [v3 hk:3 error:v9 description:?];

    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_2289E5A64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_2289E5A90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static HDHealthEntity.withWriteTransaction<A>(in:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22911C6CC();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = *(a4 - 8);
  (*(v16 + 56))(&v28 - v14, 1, 1, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = v5;
  v18[4] = v15;
  v18[5] = a2;
  v18[6] = a3;
  v19 = swift_allocObject();
  v19[2] = sub_2289E6030;
  v19[3] = v18;
  aBlock[4] = sub_2289E6028;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289E5A90;
  aBlock[3] = &block_descriptor_13;
  v20 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v21 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:a1 error:aBlock block:v20];
  _Block_release(v20);
  v22 = aBlock[0];
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  if (!v21)
  {
    sub_22911B7FC();

    swift_willThrow();
    (*(v30 + 8))(v15, v31);

    goto LABEL_6;
  }

  v24 = v29;
  v23 = v30;
  v25 = v31;
  (*(v30 + 16))(v29, v15, v31);
  result = (*(v16 + 48))(v24, 1, a4);
  if (result != 1)
  {
    (*(v16 + 32))(v28, v24, a4);
    (*(v23 + 8))(v15, v25);

LABEL_6:
    v27 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2289E5E78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v11 = sub_22911C6CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = static HDHealthEntity.database(from:)(a1);
  v19 = a4;
  v17 = v16;
  a5();

  (*(*(a7 - 8) + 56))(v15, 0, 1, a7);
  (*(v12 + 40))(v19, v15, v11);
  return 1;
}

void sub_2289E6034(uint64_t *a1@<X8>)
{
  v3 = [v1 codableDeviceKeyValueEntry];
  v4 = [v3 key];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_22911C35C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  v8 = [v1 codableDeviceKeyValueEntry];
  v9 = [v8 value];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_2289E61F0();
  v11 = *(v10 + 64);
  v12 = sub_22911B81C();
  v14 = v13;

  a1[2] = v12;
  a1[3] = v14;
  v15 = [v1 codableDeviceKeyValueEntry];
  [v15 modificationDate];

  v16 = HDDecodeDateForValue();
  sub_22911B86C();

  v17 = *MEMORY[0x277CCB470];
  v18 = sub_22911BF0C();
  v19 = *(*(v18 - 8) + 104);

  v19(a1, v17, v18);
}

void sub_2289E61F0()
{
  if (!qword_27D8633F0)
  {
    sub_22911B88C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8633F0);
    }
  }
}

uint64_t sub_2289E6264(uint64_t a1)
{
  v3 = sub_22911B8DC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v46 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v37 - v7;
  v44 = sub_22911BE7C();
  v47 = *(v44 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_22911C78C();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v56 = MEMORY[0x277D84F90];
  sub_2289FD348(0, v11 & ~(v11 >> 63), 0);
  v12 = v56;
  if (v48)
  {
    result = sub_22911C73C();
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    result = sub_22911C6FC();
    v14 = *(a1 + 36);
  }

  v53 = result;
  v54 = v14;
  v55 = v48 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37[1] = v1;
    v16 = 0;
    v42 = v47 + 32;
    v43 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v39 = a1 + 56;
    v40 = v17;
    v38 = a1 + 64;
    v41 = v11;
    while (v16 < v11)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_37;
      }

      v51 = v53;
      v49 = v54;
      v50 = v55;
      sub_2289E6938(v53, v54, v55, a1, &qword_27D862A08, off_27860F5C8);
      v21 = v20;
      v22 = [v20 hardwareIdentifier];
      sub_22911B8CC();

      v23 = [v21 databaseIdentifier];
      sub_22911B8CC();

      v24 = [v21 instanceDiscriminator];
      sub_22911C35C();

      sub_22911BE6C();
      v56 = v12;
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2289FD348(v25 > 1, v26 + 1, 1);
        v12 = v56;
      }

      *(v12 + 16) = v26 + 1;
      (*(v47 + 32))(v12 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26, v10, v44);
      if (v48)
      {
        a1 = v43;
        result = v51;
        if (!v50)
        {
          goto LABEL_42;
        }

        if (sub_22911C75C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v11 = v41;
        sub_2289BE620();
        v18 = sub_22911C53C();
        sub_22911C7DC();
        result = v18(v52, 0);
        if (v16 == v11)
        {
LABEL_34:
          sub_2289ACBF4(v53, v54, v55);
          return v12;
        }
      }

      else
      {
        a1 = v43;
        result = v51;
        if (v50)
        {
          goto LABEL_43;
        }

        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v27 = 1 << *(v43 + 32);
        if (v51 >= v27)
        {
          goto LABEL_38;
        }

        v28 = v51 >> 6;
        v29 = *(v39 + 8 * (v51 >> 6));
        if (((v29 >> v51) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v43 + 36) != v49)
        {
          goto LABEL_40;
        }

        v30 = v29 & (-2 << (v51 & 0x3F));
        if (v30)
        {
          v27 = __clz(__rbit64(v30)) | v51 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v28 << 6;
          v32 = v28 + 1;
          v33 = (v38 + 8 * v28);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_2289ACBF4(v51, v49, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_33;
            }
          }

          result = sub_2289ACBF4(v51, v49, 0);
        }

LABEL_33:
        v36 = *(a1 + 36);
        v53 = v27;
        v54 = v36;
        v55 = 0;
        v11 = v41;
        if (v16 == v41)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2289E6764@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 disabledOwnerIdentifiers];
  v5 = sub_22911C51C();

  v6 = [v3 disabledSyncIdentities];
  sub_2289B3D00(0, &qword_27D862A08, off_27860F5C8);
  sub_2289E68A8();
  v7 = sub_22911C51C();

  v8 = sub_2289E6264(v7);

  v9 = sub_2289DCE9C(v8);

  *a1 = v5;
  a1[1] = v9;
  v10 = *MEMORY[0x277CCB4C8];
  v11 = sub_22911BF0C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

unint64_t sub_2289E68A8()
{
  result = qword_27D862A18;
  if (!qword_27D862A18)
  {
    sub_2289B3D00(255, &qword_27D862A08, off_27860F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862A18);
  }

  return result;
}

void sub_2289E6938(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAC6370](a1, a2, v11);
      sub_2289B3D00(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2289B3D00(0, a5, a6);
    if (sub_22911C76C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22911C77C();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_22911C6AC();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_22911C6BC();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

void *sub_2289E6B50(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22911C6FC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2289FEE24(&v5, v3, *(a1 + 36), 0, a1);
  }
}

id HDHealthStoreClientAssertions.__deallocating_deinit()
{
  sub_2289E6C60();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2289E6C60()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = [*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) invalidate])
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      swift_beginAccess();
      os_unfair_lock_unlock((v0 + v1));
      return swift_endAccess();
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2289E6E20()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v3 = *(v0 + v2);

  sub_2289E6B50(v4);
  v6 = v5;
  v8 = v7;

  if (v6)
  {
  }

  else
  {
    v8 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v8;
}

unint64_t sub_2289E6F3C()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2289E7894(*(v3 + 16), 0);
  v7 = sub_2289E8364(&v8, (v5 + 32), v4, v3);

  sub_2289C8624();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (sub_22911C78C())
    {
      return v5;
    }

    goto LABEL_8;
  }

  if (!*(v5 + 16))
  {
LABEL_8:

    return 0;
  }

  return v5;
}

void *sub_2289E7114(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v9));
  swift_endAccess();
  v10 = [a1 UUID];
  sub_22911B8CC();

  v11 = sub_22911B8AC();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v14 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16) && (, v16 = sub_2289AD318(v11, v13), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v16);
    v20 = v19;
  }

  else
  {

    v19 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v9));
  swift_endAccess();
  return v19;
}

uint64_t sub_2289E7350(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v9));
  swift_endAccess();
  v10 = [a1 UUID];
  sub_22911B8CC();

  v11 = sub_22911B8AC();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v14 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v15 = a1;
  v16 = *(v2 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  sub_2289B03F0(v15, v11, v13, isUniquelyReferenced_nonNull_native);

  *(v2 + v14) = v19;
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v9));
  return swift_endAccess();
}

uint64_t sub_2289E757C(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v9));
  swift_endAccess();
  v10 = [a1 UUID];
  sub_22911B8CC();

  v11 = sub_22911B8AC();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v14 = sub_2289E7940(v11, v13, sub_2289B1368);
  swift_endAccess();

  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v9));
  return swift_endAccess();
}

id HDHealthStoreClientAssertions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHealthStoreClientAssertions.init()()
{
  *&v0[OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock] = 0;
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  *&v0[v1] = sub_2289B2A1C(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_2289E7894(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2289C4ACC();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2289E7940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = *v3;
  v7 = sub_2289AD318(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v16 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v12 = v16;
  }

  v13 = *(*(v12 + 48) + 16 * v9 + 8);

  v14 = *(*(v12 + 56) + 8 * v9);
  sub_2289E7CEC(v9, v12);
  *v5 = v12;
  return v14;
}

uint64_t sub_2289E79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2289AD774(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2289B1A44();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_22911C00C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_2289E7E9C(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22911C00C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2289E7B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2289AD6A0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2289B1CA0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22911B8DC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_22911C00C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2289E8064(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22911C00C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2289E7CEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22911C70C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22911CB7C();

      sub_22911C3DC();
      v13 = sub_22911CB9C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2289E7E9C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22911C70C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22911C6AC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_22911C00C() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_2289E8064(int64_t a1, uint64_t a2)
{
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_22911C70C();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v44 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = v17;
    do
    {
      v18 = v10;
      v19 = v44 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v44 * v12, v4);
      v22 = *(a2 + 40);
      sub_2289E8804();
      v23 = sub_22911C2FC();
      result = (*v41)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v19 + v44;
          v30 = v44 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = *(a2 + 56);
          v32 = *(*(sub_22911C00C() - 8) + 72);
          v33 = v32 * a1;
          result = v31 + v32 * a1;
          v34 = v32 * v12;
          v35 = v31 + v32 * v12 + v32;
          if (v33 < v34 || result >= v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v18;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v37 = v33 == v34;
            v10 = v18;
            v15 = v20;
            if (!v37)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2289E8364(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2289E84B8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_22911C96C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_22911CA0C())
      {
        goto LABEL_31;
      }

      sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_2289E8804()
{
  result = qword_27D8629D8;
  if (!qword_27D8629D8)
  {
    sub_22911B8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8629D8);
  }

  return result;
}

uint64_t sub_2289E885C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22911C58C();
  if (!v26)
  {
    return sub_22911C49C();
  }

  v48 = v26;
  v52 = sub_22911C8FC();
  v39 = sub_22911C90C();
  sub_22911C8AC();
  result = sub_22911C57C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22911C5AC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22911C8EC();
      result = sub_22911C59C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t EvaluatableType(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27D862790 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v3 = off_27D863410;
  if (*(off_27D863410 + 2) && (v4 = sub_2289AD464(a1), (v5 & 1) != 0))
  {
    sub_2289ED528(v3[7] + 48 * v4, v14);
    sub_2289B3B00(v14, v15);
    v13 = v16;
    v6 = v16;
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    *(a2 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v10 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CCB538], v10);
    return swift_willThrow();
  }
}

uint64_t TypeEvaluatableInProfile.tryEvaluateErased(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E8F14, 0, 0);
}

uint64_t sub_2289E8F14()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[3];
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_22911B9BC();
  v14 = (v0[6] + 16);
  v15 = (*v14 + **v14);
  v6 = (*v14)[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2289E90F8;
  v8 = v0[11];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  return v15(v8, v11, v12, v9);
}

uint64_t sub_2289E90F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2289E92F8;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_2289E9220;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2289E9220()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyModel.ArrayBox();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *v7 = v8;
  (*(v3 + 8))(v2, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2289E92F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t TypeEvaluatableInProfile.concatenate(m1:m2:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*v6 + 88))();
  if (!v4)
  {
    (*(*v7 + 88))(AssociatedTypeWitness);
    v11 = sub_22911C48C();

    type metadata accessor for AnyModel.ArrayBox();
    result = swift_allocObject();
    *(result + 16) = v11;
    *a4 = result;
  }

  return result;
}

uint64_t TypeEvaluatableInProfile.merge(mine:other:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  result = (*(*v6 + 88))();
  if (!v4)
  {
    *a4 = (*(*v7 + 80))();
  }

  return result;
}

uint64_t SerializableModelType(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27D862790 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v3 = off_27D863410;
  if (*(off_27D863410 + 2) && (v4 = sub_2289AD464(a1), (v5 & 1) != 0))
  {
    sub_2289ED528(v3[7] + 48 * v4, v14);
    sub_2289B3B00(v14, &v15);
    v6 = v16;
    v7 = v17;
    v8 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    a2[3] = v6;
    a2[4] = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    return __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    v11 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CCB538], v11);
    return swift_willThrow();
  }
}

void *sub_2289E9750()
{
  result = sub_2289B27F8(MEMORY[0x277D84F90]);
  off_27D863410 = result;
  return result;
}

uint64_t TypeCast<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_22911C6CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  v14 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v17 = swift_dynamicCast();
  v18 = *(*(a3 - 8) + 56);
  if (v17)
  {
    v19 = *(a3 - 8);
    v18(v13, 0, 1, a3);
    return (*(v19 + 32))(a4, v13, a3);
  }

  else
  {
    v18(v13, 1, 1, a3);
    (*(v9 + 8))(v13, v8);
    v21 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CCB540], v21);
    return swift_willThrow();
  }
}

uint64_t TypeEvaluatableInProfile<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E9B0C, 0, 0);
}

uint64_t sub_2289E9B0C()
{
  v1 = v0[9];
  v2 = v0[5];
  v14 = v0[4];
  v3 = v0[7];
  sub_22911C0EC();
  v4 = *(v14 + 16);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_2289E9C38;
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v7, v11, v9, v10);
}

uint64_t sub_2289E9C38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  (*(v4[8] + 8))(v4[9], v4[7]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2289E9DE8, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_2289E9DE8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t TypeEvaluatableInProfile.tryEvaluateTyped<A, B>(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v7[11] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[12] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E9F30, 0, 0);
}

uint64_t sub_2289E9F30()
{
  TypeCast<A, B>(_:_:)(v0[4], v0[7], v0[12], v0[14]);
  v9 = (v0[9] + 16);
  v10 = (*v9 + **v9);
  v1 = (*v9)[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2289EA0A4;
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[5];
  v7 = v0[6];

  return v10(v3, v6, v7, v4);
}

uint64_t sub_2289EA0A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2289EA324;
  }

  else
  {
    v5 = sub_2289EA1B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289EA1B8()
{
  v0[3] = v0[16];
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = sub_22911C4BC();
  swift_getAssociatedTypeWitness();
  v6 = sub_22911C4BC();
  TypeCast<A, B>(_:_:)((v0 + 3), v6, v5, (v0 + 2));
  v7 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);

  if (v1)
  {
    v8 = v0[14];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_2289EA324()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t AnyModel.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2289EA44C()
{
  v0 = sub_22911C0CC();
  sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x277CCB538], v0);
  return swift_willThrow();
}

uint64_t sub_2289EA534()
{
  v2 = *v0;
  v7 = v0[2];
  v3 = sub_22911C4BC();
  v4 = *(v2 + 112);
  v5 = sub_22911C4BC();
  result = TypeCast<A, B>(_:_:)(&v7, v5, v3, &v8);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2289EA5BC()
{
  v2 = *v0;
  v7 = v0[3];
  v3 = sub_22911C4BC();
  v4 = *(v2 + 120);
  v5 = sub_22911C4BC();
  result = TypeCast<A, B>(_:_:)(&v7, v5, v3, &v8);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t TypeWithSerializableModel<>.wrap(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  result = (*(*v5 + 88))();
  if (!v3)
  {
    v8 = result;
    type metadata accessor for AnyCodableModel.ArrayCodableBox();
    result = swift_allocObject();
    *(result + 16) = v8;
    *a3 = result;
  }

  return result;
}

{
  v5 = *a1;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  result = (*(*v5 + 88))();
  if (!v3)
  {
    v8 = result;
    type metadata accessor for AnyCodableModel.ArrayCodingBox();
    result = swift_allocObject();
    *(result + 16) = v8;
    *a3 = result;
  }

  return result;
}

uint64_t AnyCodableModel.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnyCodableModel.ArrayCodableBox();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

{
  return sub_2289EA990(a1, type metadata accessor for AnyCodableModel.ArrayCodingBox, a2);
}

uint64_t TypeWithSerializableModel<>.wrap(_:partialModel:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  result = (*(*v6 + 96))();
  if (!v4)
  {
    *a4 = (*(*v7 + 80))();
  }

  return result;
}

{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  result = (*(*v6 + 96))();
  if (!v4)
  {
    *a4 = (*(*v7 + 88))();
  }

  return result;
}

uint64_t AnyCodableModel.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

{
  result = (*(**v1 + 88))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2289EA990@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = result;
  return result;
}

uint64_t sub_2289EAB40(uint64_t a1)
{
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 120);
  type metadata accessor for AnyCodableModel.PairCodableCodableBox();
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t sub_2289EAC00(uint64_t a1)
{
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 120);
  type metadata accessor for AnyCodableModel.PairCodableCodingBox();
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t sub_2289EACBC()
{
  v1 = *v0;
  sub_22911C10C();
  v6 = v0[2];
  v2 = v1[14];
  sub_22911C4BC();
  v5 = v1[15];

  swift_getWitnessTable();
  v4 = v1[16];
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EADC4(uint64_t a1)
{
  v6 = *(*v1 + 112);
  type metadata accessor for AnyCodableModel.PairCodingCodableBox();
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t sub_2289EAE7C(uint64_t a1, uint64_t a2, void (*a3)(void, void, uint64_t))
{
  a3(0, *(*v3 + 112), a2);
  v5 = v3[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  return v6;
}

uint64_t sub_2289EAF00()
{
  v2 = *v0;
  v12 = v0[2];
  v10[2] = *(v2 + 112);
  v3 = sub_22911C4BC();
  v4 = sub_22911B9CC();
  v5 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_2289E885C(sub_2289EE06C, v10, v3, v4, v5, WitnessTable, MEMORY[0x277D84950], &v11);

  if (!v1)
  {
    v12 = v7;
    v9 = objc_allocWithZone(sub_22911C10C());
    sub_2289EE08C();
    sub_2289EE0E4(&qword_27D863858, &qword_27D863838);
    sub_2289EE0E4(&unk_27D863860, &qword_27D863840);
    return sub_22911C12C();
  }

  return result;
}

uint64_t sub_2289EB0B4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_2289EB104()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 120);
  v4 = sub_22911C2AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_22911C10C();
  v6 = v0[2];
  v7 = v0[3];

  sub_22911C29C();
  v9 = v1[16];
  v10 = v1[17];
  v11 = v1[18];
  v12 = v1[19];
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EB2C0()
{
  v2 = *v0;
  v3 = sub_22911B9CC();
  v4 = *(v2 + 120);
  v5 = sub_22911C2AC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v17[1] = v17 - v7;
  v28[2] = v0[2];
  *&v8 = *(v2 + 112);
  *(&v8 + 1) = v4;
  v18 = *(v2 + 128);
  v20 = v8;
  v21 = v18;
  v9 = sub_22911C4BC();
  v10 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  sub_2289E885C(sub_2289EE01C, v19, v9, v3, v10, WitnessTable, MEMORY[0x277D84950], v28);

  if (!v1)
  {
    sub_22911C10C();
    v13 = v0[3];

    sub_22911C29C();
    v14 = MEMORY[0x277CCB2B0];
    v15 = sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0]);
    v16 = sub_2289EDEB8(&qword_27D863840, v14);
    v25 = v15;
    v26 = v16;
    v27 = v18;
    swift_getWitnessTable();
    v22 = v15;
    v23 = v16;
    v24 = v18;
    swift_getWitnessTable();
    return sub_22911C11C();
  }

  return result;
}

uint64_t sub_2289EB584()
{
  v2 = *v0;
  v3 = *v0;
  v4 = sub_22911B9CC();
  v5 = *(v2 + 112);
  v6 = sub_22911C2AC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v19[1] = v19 - v8;
  v9 = v2;
  v10 = v0[2];
  v30[2] = v0[3];
  *&v11 = v5;
  *(&v11 + 1) = *(v9 + 120);
  v20 = *(v3 + 128);
  v22 = v11;
  v23 = v20;
  v12 = sub_22911C4BC();
  v13 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  sub_2289E885C(sub_2289EDFCC, v21, v12, v4, v13, WitnessTable, MEMORY[0x277D84950], v30);

  if (v1)
  {
  }

  sub_22911C10C();
  sub_22911C29C();
  v16 = MEMORY[0x277CCB2B0];
  v17 = sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0]);
  v18 = sub_2289EDEB8(&qword_27D863840, v16);
  v27 = v20;
  v28 = v17;
  v29 = v18;
  swift_getWitnessTable();
  v24 = v20;
  v25 = v17;
  v26 = v18;
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EB850()
{
  v1 = *v0;
  sub_2289EDE1C();
  v17 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0[2];
  v6 = *(v1 + 112);
  v22 = v6;
  v7 = *(v1 + 120);
  v23 = v7;
  v8 = sub_22911C4BC();
  v9 = sub_22911B9CC();
  v10 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  v18 = v10;
  v19 = v9;
  v12 = v20;
  sub_2289E885C(sub_2289EDE78, v21, v8, v9, v10, WitnessTable, MEMORY[0x277D84950], &v24);

  if (!v12)
  {
    v20 = v5;
    v25 = v0[3];
    MEMORY[0x28223BE20](result);
    *(&v17 - 2) = v6;
    *(&v17 - 1) = v7;
    v14 = sub_22911C4BC();

    v15 = swift_getWitnessTable();
    sub_2289E885C(sub_2289EDE98, (&v17 - 4), v14, v19, v18, v15, MEMORY[0x277D84950], &v24);

    sub_22911C29C();
    v16 = objc_allocWithZone(sub_22911C10C());
    sub_2289EDF00(&qword_27D863830);
    sub_2289EDF00(&qword_27D863848);
    return sub_22911C12C();
  }

  return result;
}

uint64_t sub_2289EBB34(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2289EBB84(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2289EBBD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
}

uint64_t sub_2289EBC04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t BaseQueryDescriptor.evaluate(in:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(a2 + 16);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22911C0DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289EBD60, 0, 0);
}

uint64_t sub_2289EBD60()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];
  sub_22911C16C();
  EvaluatableType(for:)(v1, (v0 + 2));
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_22911C15C();
  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = *(v6 + 24);
  *v9 = v0;
  v9[1] = sub_2289EBEEC;
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[7];

  return TypeEvaluatableInProfile.tryEvaluateTyped<A, B>(configuration:in:)(v11, v13, v7, v12, v10, v8);
}

uint64_t sub_2289EBEEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 88);
  v7 = *v2;
  v4[17] = v1;

  v8 = (v6 + 8);
  v9 = v4[12];
  v10 = v4[10];
  if (v1)
  {
    (*v8)(v9, v10);
    v11 = sub_2289EC0F8;
  }

  else
  {
    v4[18] = a1;
    (*v8)(v9, v10);
    v11 = sub_2289EC078;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2289EC078()
{
  v1 = v0[15];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[18];

  return v3(v4);
}

uint64_t sub_2289EC0F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289EC170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2289EC218;

  return BaseQueryDescriptor.evaluate(in:)(a2, a3);
}

uint64_t sub_2289EC218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t ConcatenateQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v7 = *(a2 + 24);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(a2 + 16);
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289EC448, 0, 0);
}

uint64_t sub_2289EC448()
{
  v1 = v0[14];
  v2 = v0[8];
  v12 = v0[6];
  MEMORY[0x22AAC5DA0](v0[5]);
  v3 = *(v12 + 16);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2289EC574;
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[6];
  v9 = v0[4];

  return (v11)(v0 + 2, v9, v7, v8);
}

uint64_t sub_2289EC574()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2289ECA70;
  }

  else
  {
    v6 = sub_2289EC6E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2289EC6E4()
{
  v1 = v0[11];
  v2 = v0[8];
  v13 = v0[7];
  v3 = v0[5];
  v0[17] = v0[2];
  MEMORY[0x22AAC5DB0](v3);
  v4 = *(v13 + 16);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_2289EC818;
  v7 = v0[11];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[4];

  return (v12)(v0 + 3, v10, v8, v9);
}

uint64_t sub_2289EC818()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 136);

    v8 = sub_2289ECAE0;
  }

  else
  {
    v8 = sub_2289EC998;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2289EC998()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[3];
  v6 = *(*(v0[5] + 32) + 8);
  swift_getAssociatedTypeWitness();
  v7 = sub_22911C48C();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2289ECA70()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289ECAE0()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289ECB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = *(a4 - 16);
  v7 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_2289EE1A8;

  return ConcatenateQueryDescriptor<>.evaluate(in:)(a2, a3, v7, v8);
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v8 = *(a3 + 24);
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = *(a3 + 16);
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289ECD2C, 0, 0);
}

uint64_t sub_2289ECD2C()
{
  v1 = v0[15];
  v2 = v0[9];
  v12 = v0[7];
  MEMORY[0x22AAC5D40](v0[6]);
  v3 = *(v12 + 16);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2289ECE58;
  v6 = v0[15];
  v7 = v0[13];
  v8 = v0[7];
  v9 = v0[5];

  return (v11)(v0 + 2, v9, v7, v8);
}

uint64_t sub_2289ECE58()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2289ED384;
  }

  else
  {
    v6 = sub_2289ECFC8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2289ECFC8()
{
  v1 = v0[12];
  v2 = v0[9];
  v13 = v0[8];
  v3 = v0[6];
  v0[18] = v0[2];
  MEMORY[0x22AAC5D50](v3);
  v4 = *(v13 + 16);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2289ED0FC;
  v7 = v0[12];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[5];

  return (v12)(v0 + 3, v10, v8, v9);
}

uint64_t sub_2289ED0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 144);

    v8 = sub_2289ED3F4;
  }

  else
  {
    v8 = sub_2289ED27C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2289ED27C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v12 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = *(*(v5 + 32) + 8);
  swift_getAssociatedTypeWitness();
  v9 = *(*(v5 + 40) + 8);
  swift_getAssociatedTypeWitness();
  sub_22911C29C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_2289ED384()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289ED3F4()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289ED464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 - 16);
  v8 = *(a4 - 8);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2289CFF80;

  return MergeQueryDescriptor<>.evaluate(in:)(a1, a2, a3, v8, v9);
}

uint64_t sub_2289ED528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2289ED638(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2289ED674(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2289ED6B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of TypeEvaluatableInProfile.evaluate(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2289ED81C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2289ED81C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_2289EDA68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2289EDAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of QueryEvaluatableInProfile.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2289CFF80;

  return v13(a1, a2, a3, a4);
}

void sub_2289EDE1C()
{
  if (!qword_27D863820)
  {
    sub_22911B9CC();
    v0 = sub_22911C2AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863820);
    }
  }
}

uint64_t sub_2289EDEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2289EDF00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2289EDE1C();
    v3 = MEMORY[0x277CCB2B0];
    sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0]);
    sub_2289EDEB8(&qword_27D863840, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2289EDFCC(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2289EE01C(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_2289EE08C()
{
  if (!qword_27D863850)
  {
    sub_22911B9CC();
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863850);
    }
  }
}

uint64_t sub_2289EE0E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2289EE08C();
    sub_2289EDEB8(a2, MEMORY[0x277CCB2B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HealthDaemonUUIDSupport.allZeroes.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2289B4304();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B89C();
  v6 = sub_22911B8DC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

id sub_2289EE2F8@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRConstellationSnapshotEntity() defaultForeignKey];
  *a1 = 0xD00000000000001ELL;
  a1[1] = 0x8000000229183E20;
  a1[2] = 0xD000000000000019;
  a1[3] = 0x8000000229183650;
  a1[4] = result;
  return result;
}

id HDHRConstellationSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRConstellationSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRConstellationSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRConstellationSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRConstellationSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HDHRDomainSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDomainSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDomainSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDomainSnapshotEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRDomainSnapshotEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon24HDHRDomainSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v24 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = 2 * *(v5 + 72);
  v7 = swift_allocObject();
  v25 = v7;
  *(v7 + 16) = xmmword_229163C60;
  v23 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x80000002291833C0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = v24;
  v9(v4, *MEMORY[0x277D109C8], v24);
  sub_22911C67C();
  v19 = sub_22911C65C();
  v20 = swift_allocBox();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D109D8], v19);
  *v4 = v20;
  v9(v4, *MEMORY[0x277D109F8], v18);
  sub_22911C67C();
  return v25;
}

id HDHRICCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRICCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRICCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRICCollectionEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRICCollectionEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon22HDHRICCollectionEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289BF1C0();
  v5 = *(sub_22911C68C() - 8);
  v30 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_229164690;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000002291820F0;
  *v4 = v7;
  v8 = *(v1 + 104);
  v9 = v0;
  v8(v4, *MEMORY[0x277D109D0], v0);
  v10 = v1 + 104;
  sub_22911C67C();
  sub_2289EF46C(0, &qword_27D862B90, MEMORY[0x277D109C0]);
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  strcpy(v14, "BLOB NOT NULL");
  *(v14 + 14) = -4864;
  v17 = *MEMORY[0x277D109B0];
  v18 = sub_22911C64C();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v4 = v13;
  v8(v4, *MEMORY[0x277D109C8], v9);
  v28[0] = v10;
  v19 = v30;
  sub_22911C67C();
  v28[1] = 2 * v19;
  v20 = sub_22911C65C();
  v21 = swift_allocBox();
  v22 = *MEMORY[0x277D109D8];
  v23 = *(*(v20 - 8) + 104);
  v23(v24, v22, v20);
  *v4 = v21;
  v8(v4, *MEMORY[0x277D109F8], v9);
  sub_22911C67C();
  v25 = swift_allocBox();
  v23(v26, v22, v20);
  *v4 = v25;
  v8(v4, *MEMORY[0x277D109E8], v9);
  sub_22911C67C();
  return v29;
}

void sub_2289EF46C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id HDHRPreviousContentEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRPreviousContentEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRPreviousContentEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRPreviousContentEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRPreviousContentEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon25HDHRPreviousContentEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v24 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = 2 * *(v5 + 72);
  v7 = swift_allocObject();
  v25 = v7;
  *(v7 + 16) = xmmword_229163C60;
  v23 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000021;
  *(v8 + 24) = 0x80000002291820F0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = v24;
  v9(v4, *MEMORY[0x277D109C8], v24);
  sub_22911C67C();
  v19 = sub_22911C65C();
  v20 = swift_allocBox();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D109D8], v19);
  *v4 = v20;
  v9(v4, *MEMORY[0x277D109F0], v18);
  sub_22911C67C();
  return v25;
}

uint64_t static HDHRISnapshotCollectionEntity.properties.getter()
{
  sub_2289B5AD4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229163C60;
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x8000000229183F10;
  *(v0 + 48) = sub_22911C35C();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0xD000000000000012;
  *(v0 + 72) = 0x8000000229182750;
  return v0;
}

id HDHRISnapshotCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRISnapshotCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRISnapshotCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRISnapshotCollectionEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRISnapshotCollectionEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRISnapshotCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v24 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = 2 * *(v5 + 72);
  v7 = swift_allocObject();
  v25 = v7;
  *(v7 + 16) = xmmword_229163C60;
  v23 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x80000002291833C0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = v24;
  v9(v4, *MEMORY[0x277D109C8], v24);
  sub_22911C67C();
  v19 = sub_22911C65C();
  v20 = swift_allocBox();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D109D8], v19);
  *v4 = v20;
  v9(v4, *MEMORY[0x277D109F8], v18);
  sub_22911C67C();
  return v25;
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__allocating_init(systemColorName:systemImageName:preventAutomaticDismissal:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = objc_allocWithZone(sub_22911B8FC());
  sub_22911B8EC();
  v3 = objc_allocWithZone(sub_22911B91C());
  *&v1[OBJC_IVAR____TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper_contentDefinition] = sub_22911B90C();
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.init(systemColorName:systemImageName:preventAutomaticDismissal:)()
{
  v1 = objc_allocWithZone(sub_22911B8FC());
  sub_22911B8EC();
  v2 = objc_allocWithZone(sub_22911B91C());
  *&v0[OBJC_IVAR____TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper_contentDefinition] = sub_22911B90C();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinitionWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinitionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289F0830@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v21[1] = a2;
  v22 = a1;
  v7 = sub_22911BCBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CCB3B0];
  sub_228A009B8(0, &qword_27D863A08, MEMORY[0x277CCB3B0], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v21 - v15;
  sub_228A03E38(v5, v21 - v15, &qword_27D863A08, v12);
  v17 = 1;
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v18 = a3;
LABEL_5:
    v19 = sub_22911BC5C();
    return (*(*(v19 - 8) + 56))(v18, v17, 1, v19);
  }

  (*(v8 + 32))(v11, v16, v7);
  v18 = a3;
  v22(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v17 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

void sub_2289F0A84(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22911C78C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2289FD578(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_22911C73C();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_22911C6FC();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_2289E6924(v32, v33, v34, a1);
        v13 = v12;
        v14 = [v12 integerValue];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2289FD578((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_22911C75C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_228A039C8();
          v7 = sub_22911C53C();
          sub_22911C7DC();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_2289ACBF4(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_2289ACBF4(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_2289ACBF4(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2289F0DC8(uint64_t a1)
{
  v2 = v1;
  sub_2289B3808();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v49 = MEMORY[0x277D84F90];
  sub_2289FD598(0, v8, 0);
  v9 = v49;
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  v12 = sub_22911C6FC();
  v13 = 0;
  v47 = *(a1 + 36);
  v37 = a1 + 72;
  v38 = v8;
  v39 = a1 + 64;
  v40 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_28;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v43 = v13;
    v44 = 1 << v12;
    v45 = v9;
    v46 = v2;
    v16 = v7;
    v17 = *(*(a1 + 48) + 8 * v12);
    v18 = *(*(a1 + 56) + 8 * v12);
    v19 = v17;

    [v19 entityIdentifier];
    v20 = [v19 schemaIdentifier];
    if (v20)
    {
      v21 = v20;
      sub_22911C35C();
    }

    v7 = v16;
    sub_22911BD3C();

    v22 = v46;
    sub_2289F11FC(v18);
    if (*(v23 + 16))
    {
      sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
      v24 = sub_22911CA7C();
    }

    else
    {
      v24 = MEMORY[0x277D84F98];
    }

    v48 = v24;

    sub_2289FE324(v25, 1, &v48);
    v2 = v22;
    if (v22)
    {
      goto LABEL_33;
    }

    v26 = *(v42 + 48);

    *&v16[v26] = v48;
    v9 = v45;
    v49 = v45;
    v28 = *(v45 + 16);
    v27 = *(v45 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2289FD598(v27 > 1, v28 + 1, 1);
      v9 = v49;
    }

    *(v9 + 16) = v28 + 1;
    sub_228A03864(v7, v9 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v28, sub_2289B3808);
    v10 = v39;
    a1 = v40;
    v14 = 1 << *(v40 + 32);
    if (v12 >= v14)
    {
      goto LABEL_30;
    }

    v29 = *(v39 + 8 * v15);
    if ((v29 & v44) == 0)
    {
      goto LABEL_31;
    }

    if (v47 != *(v40 + 36))
    {
      goto LABEL_32;
    }

    v30 = v29 & (-2 << (v12 & 0x3F));
    if (v30)
    {
      v14 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v15 << 6;
      v32 = v15 + 1;
      v33 = (v37 + 8 * v15);
      while (v32 < (v14 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_2289ACBF4(v12, v47, 0);
          v14 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      sub_2289ACBF4(v12, v47, 0);
    }

LABEL_4:
    v13 = v43 + 1;
    v12 = v14;
    if (v43 + 1 == v38)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_2289F11FC(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22911C78C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2289FD5E8(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_22911C95C();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22911C6FC();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v2;
      v28 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v15 = v32;
        v14 = v33;
        v16 = v34;
        sub_2289FEEB4(v31, v32, v33, v34, v1);
        v18 = v17;
        v19 = v31[0];
        v20 = [v17 integerValue];
        v21 = [v19 integerValue];

        v22 = v30;
        v35 = v30;
        v24 = *(v30 + 16);
        v23 = *(v30 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2289FD5E8((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v16)
          {
            goto LABEL_26;
          }

          if (sub_22911C98C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v13 = v6 + 1;
          sub_228A038CC(0, &qword_27D863960, MEMORY[0x277D834A0]);
          v26 = sub_22911C2DC();
          sub_22911CA1C();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_2289FECC0(v15, v14, v16, v28);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_2289ACBF4(v15, v14, v16);
          v32 = v8;
          v33 = v10;
          v34 = v12 & 1;
          v2 = v27;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_2289ACBF4(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_2289F14CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22911B8DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0]), v9 = sub_22911C2FC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_228A03F88(&qword_27D8629E0, MEMORY[0x277CC95F0]);
      v17 = sub_22911C33C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_2289F16E4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_22911CB6C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)@<X0>(void *a1@<X0>, id *p_aBlock@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v113 = a3;
  v109 = a4;
  v136 = *MEMORY[0x277D85DE8];
  v6 = sub_22911BDDC();
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v107 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22911BD8C();
  v120 = *(v111 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22911B8DC();
  v12 = *(*(v124 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v124);
  v128 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v127 = v102 - v15;
  v126 = sub_22911BCDC();
  v129 = *(v126 - 8);
  v16 = *(v129 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22911BD0C();
  v18 = *(v117 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v117);
  v21 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v23 = [v22 deletedSampleSyncEntityClassName];
  v108 = sub_22911C35C();
  v116 = v24;

  v25 = [v22 deletedSampleSyncEntityIdentifier];
  v26 = a1;
  HKDatabase.Pruning.Show.Configuration.init(profile:)(v26);
  v27 = sub_22911B84C();
  aBlock = 0;
  v28 = [v22 activeStoresForMaxAnchorWithProfile:v26 referenceDate:v27 error:&aBlock];

  v29 = aBlock;
  if (!v28)
  {
    v33 = p_aBlock;
    v56 = *(v18 + 8);
    v57 = aBlock;
    v56(v21, v117);

    sub_22911B7FC();

    swift_willThrow();
LABEL_59:

    v98 = sub_22911B88C();
    result = (*(*(v98 - 8) + 8))(v33, v98);
    goto LABEL_60;
  }

  v114 = v18;
  v112 = v21;
  v115 = v25;
  sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0]);
  v30 = sub_22911C51C();
  v31 = v29;

  v32 = sub_22911B84C();
  aBlock = 0;
  v33 = [v22 activeStoresForRestrictionPredicatesWithProfile:v26 referenceDate:v32 error:&aBlock];

  v34 = aBlock;
  if (!v33)
  {
    v33 = p_aBlock;
    v58 = *(v114 + 8);
    v59 = aBlock;
    v58(v112, v117);

LABEL_19:
    sub_22911B7FC();

    swift_willThrow();
    v25 = v115;
    goto LABEL_59;
  }

  v105 = v30;
  v35 = sub_22911C51C();
  v36 = v34;

  aBlock = 0;
  v104 = v22;
  v37 = [v22 syncIdentitiesInProfile:v26 error:&aBlock];
  v38 = aBlock;
  if (!v37)
  {
    v33 = p_aBlock;
    v60 = *(v114 + 8);
    v59 = aBlock;
    v60(v112, v117);

    goto LABEL_19;
  }

  v39 = v37;
  v102[1] = v35;
  sub_2289B3D00(0, &qword_27D863878, off_27860E8D8);
  v40 = sub_22911C45C();
  v41 = v38;

  v42 = v117;
  v43 = v114;
  if (v40 >> 62)
  {
    v44 = sub_22911C78C();
  }

  else
  {
    v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = p_aBlock;
  v25 = v115;
  v106 = v26;
  if (v44)
  {
    aBlock = MEMORY[0x277D84F90];
    p_aBlock = &aBlock;
    v45 = sub_2289FD528(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v46 = 0;
    v47 = v40;
    v48 = aBlock;
    v121 = v129 + 32;
    v122 = v40 & 0xC000000000000001;
    v123 = v44;
    v124 = v40;
    do
    {
      if (v122)
      {
        v49 = MEMORY[0x22AAC6410](v46, v47);
      }

      else
      {
        v49 = *(v47 + 8 * v46 + 32);
      }

      v50 = v49;
      [v49 persitentID];
      v51 = [v50 hardwareIdentifier];
      sub_22911B8CC();

      v52 = [v50 databaseIdentifier];
      sub_22911B8CC();

      v53 = [v50 instanceDiscriminator];
      sub_22911C35C();

      v26 = v125;
      sub_22911BCCC();

      aBlock = v48;
      v55 = v48[2];
      v54 = v48[3];
      v33 = (v55 + 1);
      if (v55 >= v54 >> 1)
      {
        sub_2289FD528(v54 > 1, v55 + 1, 1);
        v48 = aBlock;
      }

      ++v46;
      v48[2] = v33;
      (*(v129 + 32))(v48 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v55, v26, v126);
      v47 = v124;
    }

    while (v123 != v46);

    p_aBlock = v103;
    v25 = v115;
    v42 = v117;
    v43 = v114;
  }

  else
  {
  }

  if (v113)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v25;
    v134 = sub_2289FF61C;
    v135 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_2289F93A0;
    v133 = &block_descriptor_6_1;
    v62 = _Block_copy(&aBlock);
    v63 = v25;
  }

  else
  {
    v62 = 0;
  }

  aBlock = 0;
  v64 = [v104 syncStoresInProfile:v106 shouldIncludeEntityIdentifier:v62 error:&aBlock];
  _Block_release(v62);
  v65 = aBlock;
  if (!v64)
  {
    v33 = p_aBlock;
    v79 = *(v43 + 8);
    v80 = aBlock;
    v79(v112, v42);

    sub_22911B7FC();

    swift_willThrow();
LABEL_58:
    v26 = v106;
    goto LABEL_59;
  }

  sub_2289B3D00(0, &qword_27D863880, off_27860E8E0);
  v66 = sub_22911C45C();
  v67 = v65;

  v45 = v66;
  if (v66 >> 62)
  {
LABEL_39:
    v81 = v45;
    v68 = sub_22911C78C();
    v45 = v81;
    if (v68)
    {
      goto LABEL_27;
    }

LABEL_40:

    goto LABEL_41;
  }

  v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
    goto LABEL_40;
  }

LABEL_27:
  v69 = v45;
  aBlock = MEMORY[0x277D84F90];
  sub_2289FD4D8(0, v68 & ~(v68 >> 63), 0);
  v129 = v68;
  if (v68 < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v70 = 0;
  v71 = aBlock;
  v72 = v69;
  v128 = (v69 & 0xC000000000000001);
  v73 = v111;
  v74 = v110;
  v75 = v69;
  do
  {
    if (v128)
    {
      v76 = MEMORY[0x22AAC6410](v70, v72);
    }

    else
    {
      v76 = *(v72 + 8 * v70 + 32);
    }

    HKDatabase.Pruning.Show.Store.init(store:)(v76);
    aBlock = v71;
    v78 = v71[2];
    v77 = v71[3];
    if (v78 >= v77 >> 1)
    {
      sub_2289FD4D8(v77 > 1, v78 + 1, 1);
      v73 = v111;
      v71 = aBlock;
    }

    ++v70;
    v71[2] = v78 + 1;
    (*(v120 + 32))(v71 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v78, v74, v73);
    v72 = v75;
  }

  while (v129 != v70);

  p_aBlock = v103;
  v42 = v117;
  v43 = v114;
LABEL_41:
  v33 = p_aBlock;
  v82 = sub_22911B84C();
  v83 = v116;
  if (v113)
  {
    v84 = swift_allocObject();
    *(v84 + 16) = v108;
    *(v84 + 24) = v83;
    v134 = sub_2289FF5E4;
    v135 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_2289F93F8;
    v133 = &block_descriptor_10;
    v85 = _Block_copy(&aBlock);
  }

  else
  {

    v85 = 0;
  }

  aBlock = 0;
  v86 = [v104 entitiesInProfile:v106 referenceDate:v82 shouldIncludeEntity:v85 error:&aBlock];
  _Block_release(v85);

  v87 = aBlock;
  if (!v86)
  {
    v96 = *(v43 + 8);
    v97 = aBlock;
    v96(v112, v42);

    sub_22911B7FC();

    swift_willThrow();
    v25 = v115;
    goto LABEL_58;
  }

  sub_2289B3D00(0, &qword_27D863888, off_27860E8C8);
  v26 = sub_22911C45C();
  v88 = v87;

  if (v26 >> 62)
  {
LABEL_64:
    v89 = sub_22911C78C();
    goto LABEL_47;
  }

  v89 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
  if (v89)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_2289FD488(0, v89 & ~(v89 >> 63), 0);
    v129 = v89;
    if (v89 < 0)
    {
      __break(1u);
    }

    v90 = 0;
    v91 = aBlock;
    v128 = (v26 & 0xC000000000000001);
    v92 = v107;
    do
    {
      if (v128)
      {
        v93 = MEMORY[0x22AAC6410](v90, v26);
      }

      else
      {
        v93 = *(v26 + 8 * v90 + 32);
      }

      HKDatabase.Pruning.Show.Entity.init(entity:)(v93, v92);
      aBlock = v91;
      v95 = v91[2];
      v94 = v91[3];
      if (v95 >= v94 >> 1)
      {
        sub_2289FD488(v94 > 1, v95 + 1, 1);
        v91 = aBlock;
      }

      ++v90;
      v91[2] = v95 + 1;
      (*(v119 + 32))(v91 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v95, v92, v118);
    }

    while (v129 != v90);

    v33 = v103;
  }

  else
  {
  }

  sub_22911BD1C();

  v101 = sub_22911B88C();
  result = (*(*(v101 - 8) + 8))(v33, v101);
LABEL_60:
  v100 = *MEMORY[0x277D85DE8];
  return result;
}

void HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(profile:referenceDate:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v24 = a3;
  v4 = sub_22911BB3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22911B88C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v26 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = sub_22911BE0C();
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 16);
  v29 = v7;
  v18(v13, a2, v7);
  v19 = v28;
  v20 = v30;
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v19, v13, 1, v17);
  if (v20)
  {
    (*(v8 + 8))(a2, v29);
  }

  else
  {
    v30 = v14;
    v21 = v26;
    v22 = v29;
    v18(v26, a2, v29);
    v23 = v19;
    HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(v23, v21, v27);
    sub_22911BBCC();

    (*(v8 + 8))(a2, v22);
  }
}

void HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98[7] = a3;
  v104 = a2;
  v102 = a1;
  v105[4] = *MEMORY[0x277D85DE8];
  v3 = sub_22911B88C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = _s28DateClassificationBoundariesVMa();
  v8 = *(*(v99 - 1) + 64);
  MEMORY[0x28223BE20](v99);
  v103 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911C35C();
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  v105[3] = v11;
  v105[0] = v10;
  v12 = sub_22911C34C();

  v101 = v4;
  if (v11)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v105, v11);
    v14 = *(v11 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v17 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    v18 = sub_22911CACC();
    (*(v14 + 8))(v17, v11);
    v4 = v101;
    __swift_destroy_boxed_opaque_existential_0(v105);
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_opt_self() predicateWithProperty:v12 equalToValue:v18];

  swift_unknownObjectRelease();
  v20 = v103;
  if (!v19)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  (*(v4 + 16))(v7, v104, v3);
  sub_2289F9460(v7, v20);
  sub_2289B3D00(0, &qword_27D863890, 0x277D10B20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = sub_22911B84C();
  v23 = HDDataEntityPredicateForCreationDate(6);

  v100 = ObjCClassFromMetadata;
  v24 = [ObjCClassFromMetadata compoundPredicateWithPredicate:v19 otherPredicate:v23];

  v25 = v102;
  if (!v24)
  {
    goto LABEL_32;
  }

  sub_2289B3D00(0, &qword_27D863898, off_27860E7C8);
  v26 = swift_getObjCClassFromMetadata();
  v27 = [v25 database];
  v105[0] = 0;
  v28 = [v26 countOfObjectsWithPredicate:v24 healthDatabase:v27 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    swift_willThrow();
    goto LABEL_25;
  }

  v98[6] = v28;
  v30 = sub_22911B84C();
  v31 = HDDataEntityPredicateForCreationDate(3);

  v32 = v99[5];
  v33 = sub_22911B84C();
  v34 = HDDataEntityPredicateForCreationDate(6);

  v35 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v31 otherPredicate:v34];
  if (!v35)
  {
    __break(1u);
    goto LABEL_34;
  }

  v36 = [v25 database];
  v105[0] = 0;
  [v26 countOfObjectsWithPredicate:v35 healthDatabase:v36 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
LABEL_24:
    swift_willThrow();
    v4 = v101;
    v20 = v103;
    goto LABEL_25;
  }

  v37 = sub_22911B84C();
  v38 = HDDataEntityPredicateForCreationDate(3);

  v39 = v99[6];
  v40 = sub_22911B84C();
  v41 = HDDataEntityPredicateForCreationDate(6);

  v42 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v38 otherPredicate:v41];
  if (!v42)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v43 = [v25 database];
  v105[0] = 0;
  v44 = [v26 countOfObjectsWithPredicate:v42 healthDatabase:v43 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[5] = v44;
  v45 = sub_22911B84C();
  v46 = HDDataEntityPredicateForCreationDate(3);

  v47 = v99[7];
  v48 = sub_22911B84C();
  v49 = HDDataEntityPredicateForCreationDate(6);

  v50 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v46 otherPredicate:v49];
  if (!v50)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = [v25 database];
  v105[0] = 0;
  v52 = [v26 countOfObjectsWithPredicate:v50 healthDatabase:v51 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[4] = v52;
  v53 = sub_22911B84C();
  v54 = HDDataEntityPredicateForCreationDate(3);

  v55 = v99[8];
  v56 = sub_22911B84C();
  v57 = HDDataEntityPredicateForCreationDate(6);

  v58 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v54 otherPredicate:v57];
  if (!v58)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v59 = [v25 database];
  v105[0] = 0;
  v60 = [v26 countOfObjectsWithPredicate:v58 healthDatabase:v59 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[3] = v60;
  v61 = sub_22911B84C();
  v62 = HDDataEntityPredicateForCreationDate(3);

  v63 = v99[9];
  v64 = sub_22911B84C();
  v65 = HDDataEntityPredicateForCreationDate(6);

  v66 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v62 otherPredicate:v65];
  if (!v66)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v67 = [v25 database];
  v105[0] = 0;
  v68 = [v26 countOfObjectsWithPredicate:v66 healthDatabase:v67 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[2] = v68;
  v69 = sub_22911B84C();
  v70 = HDDataEntityPredicateForCreationDate(3);

  v71 = v99[10];
  v72 = sub_22911B84C();
  v73 = HDDataEntityPredicateForCreationDate(6);

  v74 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v70 otherPredicate:v73];
  if (!v74)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v75 = [v25 database];
  v105[0] = 0;
  v76 = [v26 countOfObjectsWithPredicate:v74 healthDatabase:v75 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[1] = v76;
  v77 = sub_22911B84C();
  v78 = HDDataEntityPredicateForCreationDate(3);

  v79 = v99[11];
  v80 = sub_22911B84C();
  v81 = HDDataEntityPredicateForCreationDate(6);

  v82 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v78 otherPredicate:v81];
  if (!v82)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v83 = [v25 database];
  v105[0] = 0;
  v84 = [v26 countOfObjectsWithPredicate:v82 healthDatabase:v83 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v98[0] = v84;
  v85 = sub_22911B84C();
  v86 = HDDataEntityPredicateForCreationDate(3);

  v87 = v99[12];
  v88 = sub_22911B84C();
  v89 = HDDataEntityPredicateForCreationDate(6);

  v90 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v86 otherPredicate:v89];
  if (!v90)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v91 = [v25 database];
  v105[0] = 0;
  [v26 countOfObjectsWithPredicate:v90 healthDatabase:v91 error:v105];

  v29 = v105[0];
  if (v105[0])
  {
    goto LABEL_24;
  }

  v20 = v103;
  v94 = sub_22911B84C();
  v95 = HDDataEntityPredicateForCreationDate(3);

  v96 = [v100 compoundPredicateWithPredicate:v19 otherPredicate:v95];
  if (v96)
  {
    v97 = [v25 database];
    v105[0] = 0;
    [v26 countOfObjectsWithPredicate:v96 healthDatabase:v97 error:v105];

    v29 = v105[0];
    if (!v105[0])
    {
      sub_22911BACC();

      (*(v101 + 8))(v104, v3);
      sub_228A03F28(v20, _s28DateClassificationBoundariesVMa);
      goto LABEL_26;
    }

    swift_willThrow();
    v4 = v101;
LABEL_25:
    v92 = v29;

    (*(v4 + 8))(v104, v3);
    sub_228A03F28(v20, _s28DateClassificationBoundariesVMa);

LABEL_26:
    v93 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_41:
  __break(1u);
}
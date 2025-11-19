uint64_t sub_1A87F9FA4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1ED8CA4C0);
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Time sensitive expiration timer fired", v6, 2u);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  v7 = [objc_opt_self() defaultCenter];
  [v7 postNotificationName:IMUnreadCountControllerDetectedExpiredTimeSensitiveMessagesNotification object:0];

  result = swift_beginAccess();
  v9 = *(a2 + 24);
  if (*(v9 + 16))
  {
    result = sub_1A8717F68(0);
    if (v10)
    {
      v11 = *(*(v9 + 56) + 16 * result);

      v11(v12);
    }
  }

  return result;
}

BOOL sub_1A87FA11C(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isPriorityMessagesEnabled];

  return v3 && [a1 timeSensitiveMessageCount] >= 1 && objc_msgSend(a1, sel_isFiltered) != 2;
}

void sub_1A87FA220()
{
  sub_1A87FA31C(319, &qword_1ED8C8FB8, sub_1A87FA2D0);
  if (v0 <= 0x3F)
  {
    sub_1A87FA31C(319, &qword_1ED8C9178, MEMORY[0x1EEE78860]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A87FA2D0()
{
  result = qword_1ED8C8FC0;
  if (!qword_1ED8C8FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C8FC0);
  }

  return result;
}

void sub_1A87FA31C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A88C8BE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A87FA370(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A87FA3D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(sub_1A870CCE0(&qword_1EB306658) + 36));
  if (*v5)
  {
    v6 = qword_1ED8C8B18;
    v7 = *v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_1A88C7E58();
    sub_1A85EF0E4(v8, qword_1ED8CA4C0);

    v9 = sub_1A88C7E38();
    v10 = sub_1A88C89A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1A85F0394(a1, a2, &v17);
      _os_log_impl(&dword_1A85E5000, v9, v10, "Cancelling timer for time sensitive message expiration due to %{public}s", v11, 0xCu);
      sub_1A85F1084(v12);
      MEMORY[0x1AC571F20](v12, -1, -1);
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    [v7 invalidate];
  }

  *v5 = 0;
  v13 = *(type metadata accessor for UnreadCountTimeSensitiveIndex.ExtraState(0) + 20);
  sub_1A871DF50(v5 + v13);
  v14 = sub_1A88C7478();
  v15 = *(*(v14 - 8) + 56);

  return v15(v5 + v13, 1, 1, v14);
}

uint64_t sub_1A87FA5DC()
{
  v1 = *(v0 + 24);
  v2 = sub_1A88C73E8();
  if ((v2 & 1) == 0)
  {
    *v1 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1A87FA678(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1A85FAE14(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A85FAE14((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87FA7A4()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A87FA7D4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = sub_1A87FB504;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  swift_beginAccess();
  sub_1A87FB4F4(a2);
  sub_1A87F3DD0(v7, v6, a1 & 1);
  return swift_endAccess();
}

uint64_t sub_1A87FA890()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v2));
  sub_1A87FB4B4(&v4);
  os_unfair_lock_unlock((v1 + v2));

  return v4;
}

uint64_t sub_1A87FA9A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1A870C278(a3, a3[3])[1];
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_1A85F5F40(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_8:
    v17 = sub_1A88BF2D8(a1, a2);
    if (!v17)
    {
      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_10;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (((*(*v4 + 208))(v11, a4) & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1A88034D0(v12, a1, a2);
  if (!v13)
  {

LABEL_10:
    v16 = 1;
    return v16 & 1;
  }

  v14 = v13;
  sub_1A8783C24();
  v15 = sub_1A88C8BA8();

  v16 = v15 ^ 1;
  return v16 & 1;
}

uint64_t sub_1A87FAAF4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  if (*(v2 + 16))
  {
    result = sub_1A8717F68(1);
    if (v3)
    {
      v4 = *(*(v2 + 56) + 16 * result);

      v4(v5);
    }
  }

  return result;
}

uint64_t sub_1A87FAB68(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1A87FB418(v3 + v4, v15);
  os_unfair_lock_unlock((v3 + v5));
  if (LOBYTE(v15[0]) != 1)
  {
    return 0;
  }

  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v6 = sub_1A88C7E58();
  sub_1A85EF0E4(v6, qword_1ED8CA4C0);

  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v15[0] = v10;
    type metadata accessor for UnreadCountIndex();
    swift_getMetatypeMetadata();
    v11 = sub_1A88C8338();
    v13 = sub_1A85F0394(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A85E5000, v7, v8, "Updated index %{public}s", v9, 0xCu);
    sub_1A85F1084(v10);
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }

  (*(*v2 + 232))();
  return 1;
}

uint64_t sub_1A87FAE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v16[2] = a2;
  v16[3] = a4;
  v16[4] = a1;
  v8 = sub_1A87FA678(sub_1A87FB438, v16, a3);
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  do
  {
    v11 = v9;
    if (v9-- == 0)
    {
      break;
    }

    v13 = *v10++;
  }

  while (v13 != 1);
  v14 = v11 != 0;

  *a5 = v14;
  return (*(*a2 + 240))(a1);
}

uint64_t sub_1A87FAED0()
{
  sub_1A87FA7A4();

  return swift_deallocClassInstance();
}

void sub_1A87FAF2C()
{
  sub_1A85ED684();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A87FAFB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1A87FB138(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
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
        a1[2] = BYTE2(v18);
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
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1A87FB3A4()
{
  result = qword_1EB3005E0;
  if (!qword_1EB3005E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3005E0);
  }

  return result;
}

uint64_t sub_1A87FB438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87FA9A4(*a1, a1[1], *(v2 + 24), *(v2 + 32));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A87FB4B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_1A87FB4F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A87FB52C(uint64_t result, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v3 = *(result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = result + 40;
    v16 = result + 40;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      for (i = v5; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }

        v9 = *(a2 + 8);
        if (*(v9 + 16))
        {
          break;
        }

LABEL_4:
        v7 += 2;
        if (v5 == v3)
        {
          return v2;
        }
      }

      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = sub_1A85F5F40(v10, v11);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = *(*(v9 + 56) + 8 * v12);

      MEMORY[0x1AC56EEA0](v15);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A88C8638();
      }

      result = sub_1A88C8678();
      v2 = v17;
      v6 = v16;
      if (v5 == v3)
      {
        return v2;
      }
    }

    goto LABEL_4;
  }

  return v2;
}

id sub_1A87FB69C(id result, unint64_t a2, uint64_t a3, char **a4)
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC56F710](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      sub_1A88032E0(&v14, &v13, a3, a4);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = sub_1A88C8D38();
  }

  return result;
}

uint64_t sub_1A87FB7C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1A85FB018(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1A87FB85C()
{
  v1 = *(v0 + OBJC_IVAR___IMUnreadCountController_filteringControllerLock);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_1A85EECB8((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

void sub_1A87FB8F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___IMUnreadCountController_state);

    os_unfair_lock_lock((v2 + 80));
    v3 = *(v2 + 32);
    v11 = *(v2 + 16);
    v12 = v3;
    v4 = *(v2 + 64);
    v13 = *(v2 + 48);
    v14 = v4;
    v15 = *(&v11 + 1);
    v5 = *(*(&v11 + 1) + 16);
    if (v5)
    {
      v6 = sub_1A87365FC(*(*(&v11 + 1) + 16), 0);
      v7 = sub_1A8739EC4(&v10, v6 + 4, v5, *(&v11 + 1));
      sub_1A8801F54(&v15, v9);
      sub_1A85EF290();
      if (v7 == v5)
      {
LABEL_6:
        sub_1A8803140(v6);

        os_unfair_lock_unlock((v2 + 80));

        v8 = [objc_opt_self() defaultCenter];
        [v8 postNotificationName:IMUnreadCountControllerDidUpdateNotification object:v1 userInfo:0];

        return;
      }

      __break(1u);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }
}

char *sub_1A87FBAA8()
{
  v0 = sub_1A87FBBA4(MEMORY[0x1E69E7CC0], 0);
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1ED8CA4C0);
  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v0;
    _os_log_impl(&dword_1A85E5000, v2, v3, "Current overall pending review count: %ld", v4, 0xCu);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }

  return v0;
}

char *sub_1A87FBBA4(void *a1, int a2)
{
  LODWORD(v152) = a2;
  v3 = sub_1A88C7DA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v118 - v8;
  if (qword_1ED8C8AD8 != -1)
  {
LABEL_119:
    swift_once();
  }

  v10 = qword_1ED8C8AE0;
  type metadata accessor for IMConversationListFilterMode(0);
  v11 = v10;
  sub_1A88C85E8();
  sub_1A88C7D88();
  if (qword_1ED8C8AF0 != -1)
  {
    swift_once();
  }

  v12 = sub_1A88C7DD8();
  sub_1A85EF0E4(v12, qword_1ED8C8AF8);

  v13 = sub_1A88C7DC8();
  LODWORD(v150) = sub_1A88C8B28();

  v14 = sub_1A88C8BC8();
  v154 = v3;
  v155 = v9;
  v153 = v4;
  if (v14)
  {
    v149 = v7;
    v15 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v157 = v147;
    v148 = v15;
    *v15 = 136315394;
    v16 = a1[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v156 = MEMORY[0x1E69E7CC0];
      sub_1A871CE50(0, v16, 0);
      v134 = a1;
      v18 = a1 + 4;
      v17 = v156;
      v19 = 0x80000001A891C920;
      v20 = 0x80000001A891C950;
      v21 = 0x80000001A891C980;
      v22 = 0x80000001A891C9B0;
      v23 = 0x80000001A891C9E0;
      v24 = 0x80000001A891CA10;
      v25 = 0x80000001A891CA40;
      v26 = 0x80000001A891CA70;
      v27 = 0x80000001A891CAA0;
      v28 = 0x80000001A891CAD0;
      v29 = 0x80000001A891CB00;
      v30 = 0x80000001A891CB30;
      v31 = 0x80000001A891CB60;
      v32 = 0x80000001A891CB90;
      v33 = 0x80000001A891CBC0;
      v34 = 0x80000001A891CBF0;
      v146 = 0x80000001A891CC20;
      v145 = 0x80000001A891CC50;
      v144 = 0x80000001A891CC80;
      v143 = 0x80000001A891CCB0;
      v142 = 0x80000001A891CCE0;
      v141 = 0x80000001A891CD10;
      v140 = 0x80000001A891CD40;
      v139 = 0x80000001A891CD70;
      v138 = 0x80000001A891CDA0;
      v137 = 0x80000001A891CDD0;
      v136 = 0x80000001A891CE00;
      v135 = 0x80000001A891CE30;
      v35 = v13;
      do
      {
        v36 = *v18++;
        switch(v36)
        {
          case 0:
            v37 = 0xD000000000000020;
            v38 = v135;
            break;
          case 1:
            v37 = 0xD000000000000022;
            v38 = v136;
            break;
          case 2:
            v37 = 0xD000000000000027;
            v38 = v137;
            break;
          case 3:
            v37 = 0xD000000000000029;
            v38 = v138;
            break;
          case 4:
            v37 = 0xD00000000000002CLL;
            v38 = v139;
            break;
          case 5:
            v37 = 0xD00000000000002ALL;
            v38 = v140;
            break;
          case 6:
            v37 = 0xD000000000000023;
            v38 = v141;
            break;
          case 7:
            v37 = 0xD00000000000002BLL;
            v38 = v142;
            break;
          case 8:
            v37 = 0xD000000000000022;
            v38 = v143;
            break;
          case 9:
            v37 = 0xD000000000000021;
            v38 = v144;
            break;
          case 10:
            v37 = 0xD000000000000025;
            v38 = v145;
            break;
          case 11:
            v37 = 0xD000000000000022;
            v38 = v146;
            break;
          case 12:
            v37 = 0xD000000000000022;
            v38 = v34;
            break;
          case 13:
            v37 = 0xD000000000000022;
            v38 = v33;
            break;
          case 14:
            v37 = 0xD000000000000021;
            v38 = v32;
            break;
          case 15:
            v37 = 0xD000000000000021;
            v38 = v31;
            break;
          case 16:
            v37 = 0xD000000000000023;
            v38 = v30;
            break;
          case 17:
            v37 = 0xD000000000000022;
            v38 = v29;
            break;
          case 18:
            v37 = 0xD000000000000022;
            v38 = v28;
            break;
          case 19:
            v37 = 0xD000000000000022;
            v38 = v27;
            break;
          case 20:
            v37 = 0xD000000000000029;
            v38 = v26;
            break;
          case 21:
            v37 = 0xD00000000000002ELL;
            v38 = v25;
            break;
          case 22:
            v37 = 0xD000000000000021;
            v38 = v24;
            break;
          case 23:
            v37 = 0xD000000000000022;
            v38 = v23;
            break;
          case 24:
            v37 = 0xD00000000000002CLL;
            v38 = v22;
            break;
          case 25:
            v37 = 0xD000000000000023;
            v38 = v21;
            break;
          case 26:
            v37 = 0xD000000000000022;
            v38 = v20;
            break;
          case 27:
            v37 = 0xD00000000000002FLL;
            v38 = v19;
            break;
          default:
            v37 = 0;
            v38 = 0xE000000000000000;
            break;
        }

        v156 = v17;
        v40 = *(v17 + 16);
        v39 = *(v17 + 24);
        if (v40 >= v39 >> 1)
        {
          v128 = v25;
          v120 = v33;
          v127 = v26;
          v126 = v27;
          v42 = v19;
          v133 = v20;
          v132 = v21;
          v131 = v22;
          v130 = v23;
          v129 = v24;
          v125 = v28;
          v124 = v29;
          v123 = v30;
          v122 = v31;
          v121 = v32;
          v119 = v34;
          sub_1A871CE50((v39 > 1), v40 + 1, 1);
          v34 = v119;
          v33 = v120;
          v32 = v121;
          v31 = v122;
          v30 = v123;
          v29 = v124;
          v28 = v125;
          v27 = v126;
          v26 = v127;
          v25 = v128;
          v24 = v129;
          v23 = v130;
          v22 = v131;
          v21 = v132;
          v20 = v133;
          v19 = v42;
          v17 = v156;
        }

        *(v17 + 16) = v40 + 1;
        v41 = v17 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
        --v16;
      }

      while (v16);
      v13 = v35;
      v9 = v155;
      a1 = v134;
    }

    v156 = v17;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A85FB520(&qword_1ED8C8B10, &qword_1EB303100);
    v43 = sub_1A88C8278();
    v45 = v44;

    v46 = sub_1A85F0394(v43, v45, &v157);

    v47 = v148;
    *(v148 + 1) = v46;
    *(v47 + 6) = 2080;
    if (v152)
    {
      v48 = 0x6F43646165726E75;
    }

    else
    {
      v48 = 0x52676E69646E6570;
    }

    if (v152)
    {
      v49 = 0xEB00000000746E75;
    }

    else
    {
      v49 = 0xED00007765697665;
    }

    v50 = sub_1A85F0394(v48, v49, &v157);

    *(v47 + 14) = v50;
    v51 = sub_1A88C7D98();
    _os_signpost_emit_with_name_impl(&dword_1A85E5000, v13, v150, v51, "aggregateCountForChats(with:aggregateType:)", "aggregate count for chats with filter modes %s countType %s", v47, 0x16u);
    v52 = v147;
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v52, -1, -1);
    MEMORY[0x1AC571F20](v47, -1, -1);

    v4 = v153;
    v3 = v154;
    v7 = v149;
  }

  else
  {
  }

  v4[2](v7, v9, v3);
  sub_1A88C7E18();
  swift_allocObject();
  v150 = sub_1A88C7E08();
  v3 = a1[2];
  if (v3)
  {
    v53 = a1 + 4;
    a1 = MEMORY[0x1E69E7CC0];
    do
    {
      v57 = *v53++;
      v56 = v57;
      if (v57 != 8)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A871D7A8(0, a1[2] + 1, 1);
          a1 = v157;
        }

        v55 = a1[2];
        v54 = a1[3];
        if (v55 >= v54 >> 1)
        {
          sub_1A871D7A8((v54 > 1), v55 + 1, 1);
          a1 = v157;
        }

        a1[2] = v55 + 1;
        a1[v55 + 4] = v56;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

  v59 = a1[2];
  v4 = v151;
  v60 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v7 = &unk_1F1BB1C88;
LABEL_60:
  v9 = v155;
  while (v59 != v60)
  {
    if (v60 >= a1[2])
    {
      __break(1u);
      goto LABEL_119;
    }

    sub_1A87FD01C(a1[v60++ + 4]);
    if (v62)
    {
      v64 = v62;
      v65 = v63;
      v66 = swift_allocObject();
      *(v66 + 16) = v64;
      *(v66 + 24) = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1A8735DB8(0, v61[2] + 1, 1, v61);
      }

      v68 = v61[2];
      v67 = v61[3];
      v3 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v61 = sub_1A8735DB8((v67 > 1), v68 + 1, 1, v61);
      }

      v61[2] = v3;
      v69 = &v61[2 * v68];
      v69[4] = sub_1A8801FC4;
      v69[5] = v66;
      goto LABEL_60;
    }
  }

  v70 = *(v4 + OBJC_IVAR___IMUnreadCountController_filteringControllerLock);
  KeyPath = swift_getKeyPath();
  v72 = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v118 - 2) = sub_1A88022AC;
  *(&v118 - 1) = v72;

  os_unfair_lock_lock((v70 + 24));
  sub_1A8802254((v70 + 16), &v157);
  os_unfair_lock_unlock((v70 + 24));

  [v157 willBeginCalculatingUnreadCount];
  swift_unknownObjectRelease();
  v73 = sub_1A87FD844(a1);
  v74 = v4;

  v75 = sub_1A8800E80(v73, v152 & 1, v74, v74, v61);

  swift_bridgeObjectRelease_n();
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v76 = sub_1A88C7E58();
  sub_1A85EF0E4(v76, qword_1ED8CA4C0);

  v77 = sub_1A88C7E38();
  v78 = sub_1A88C89A8();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v155;
  if (v79)
  {
    LODWORD(v148) = v78;
    v149 = v77;
    v151 = v75;
    v81 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v157 = v147;
    *v81 = 136446722;
    if (v152)
    {
      v82 = 0x6F43646165726E75;
    }

    else
    {
      v82 = 0x52676E69646E6570;
    }

    if (v152)
    {
      v83 = 0xEB00000000746E75;
    }

    else
    {
      v83 = 0xED00007765697665;
    }

    v84 = sub_1A85F0394(v82, v83, &v157);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v85 = a1[2];
    if (v85)
    {
      v156 = MEMORY[0x1E69E7CC0];
      sub_1A871CE50(0, v85, 0);
      v86 = v156;
      v87 = 0x80000001A891C920;
      v88 = 0x80000001A891C950;
      v89 = 0x80000001A891C980;
      v90 = 0x80000001A891C9B0;
      v91 = 0x80000001A891C9E0;
      v92 = 0x80000001A891CA10;
      v93 = 0x80000001A891CA40;
      v94 = 0x80000001A891CA70;
      v95 = 0x80000001A891CAA0;
      v96 = 0x80000001A891CAD0;
      v97 = 0x80000001A891CB00;
      v98 = 0x80000001A891CB30;
      v99 = 0x80000001A891CB60;
      v100 = 0x80000001A891CB90;
      v101 = 0x80000001A891CBC0;
      v102 = 0x80000001A891CBF0;
      v152 = 0x80000001A891CC20;
      v146 = 0x80000001A891CC50;
      v145 = 0x80000001A891CC80;
      v143 = 0x80000001A891CCE0;
      v144 = 0x80000001A891CCB0;
      v142 = 0x80000001A891CD10;
      v140 = 0x80000001A891CD70;
      v141 = 0x80000001A891CD40;
      v139 = 0x80000001A891CDA0;
      v138 = 0x80000001A891CDD0;
      v137 = 0x80000001A891CE00;
      v136 = 0x80000001A891CE30;
      v103 = 4;
      do
      {
        switch(a1[v103])
        {
          case 0:
            v104 = 0xD000000000000020;
            v105 = v136;
            break;
          case 1:
            v104 = 0xD000000000000022;
            v105 = v137;
            break;
          case 2:
            v104 = 0xD000000000000027;
            v105 = v138;
            break;
          case 3:
            v104 = 0xD000000000000029;
            v105 = v139;
            break;
          case 4:
            v104 = 0xD00000000000002CLL;
            v105 = v140;
            break;
          case 5:
            v104 = 0xD00000000000002ALL;
            v105 = v141;
            break;
          case 6:
            v104 = 0xD000000000000023;
            v105 = v142;
            break;
          case 7:
            v104 = 0xD00000000000002BLL;
            v105 = v143;
            break;
          case 8:
            v104 = 0xD000000000000022;
            v105 = v144;
            break;
          case 9:
            v104 = 0xD000000000000021;
            v105 = v145;
            break;
          case 0xALL:
            v104 = 0xD000000000000025;
            v105 = v146;
            break;
          case 0xBLL:
            v104 = 0xD000000000000022;
            v105 = v152;
            break;
          case 0xCLL:
            v104 = 0xD000000000000022;
            v105 = v102;
            break;
          case 0xDLL:
            v104 = 0xD000000000000022;
            v105 = v101;
            break;
          case 0xELL:
            v104 = 0xD000000000000021;
            v105 = v100;
            break;
          case 0xFLL:
            v104 = 0xD000000000000021;
            v105 = v99;
            break;
          case 0x10:
            v104 = 0xD000000000000023;
            v105 = v98;
            break;
          case 0x11:
            v104 = 0xD000000000000022;
            v105 = v97;
            break;
          case 0x12:
            v104 = 0xD000000000000022;
            v105 = v96;
            break;
          case 0x13:
            v104 = 0xD000000000000022;
            v105 = v95;
            break;
          case 0x14:
            v104 = 0xD000000000000029;
            v105 = v94;
            break;
          case 0x15:
            v104 = 0xD00000000000002ELL;
            v105 = v93;
            break;
          case 0x16:
            v104 = 0xD000000000000021;
            v105 = v92;
            break;
          case 0x17:
            v104 = 0xD000000000000022;
            v105 = v91;
            break;
          case 0x18:
            v104 = 0xD00000000000002CLL;
            v105 = v90;
            break;
          case 0x19:
            v104 = 0xD000000000000023;
            v105 = v89;
            break;
          case 0x1ALL:
            v104 = 0xD000000000000022;
            v105 = v88;
            break;
          case 0x1BLL:
            v104 = 0xD00000000000002FLL;
            v105 = v87;
            break;
          default:
            v104 = 0;
            v105 = 0xE000000000000000;
            break;
        }

        v156 = v86;
        v107 = *(v86 + 16);
        v106 = *(v86 + 24);
        if (v107 >= v106 >> 1)
        {
          v130 = v93;
          v122 = v101;
          v129 = v94;
          v128 = v95;
          v109 = v87;
          v135 = v88;
          v134 = v89;
          v133 = v90;
          v132 = v91;
          v131 = v92;
          v127 = v96;
          v126 = v97;
          v125 = v98;
          v124 = v99;
          v123 = v100;
          v121 = v102;
          sub_1A871CE50((v106 > 1), v107 + 1, 1);
          v102 = v121;
          v101 = v122;
          v100 = v123;
          v99 = v124;
          v98 = v125;
          v97 = v126;
          v96 = v127;
          v95 = v128;
          v94 = v129;
          v93 = v130;
          v92 = v131;
          v91 = v132;
          v90 = v133;
          v89 = v134;
          v88 = v135;
          v87 = v109;
          v86 = v156;
        }

        *(v86 + 16) = v107 + 1;
        v108 = v86 + 16 * v107;
        *(v108 + 32) = v104;
        *(v108 + 40) = v105;
        ++v103;
        --v85;
      }

      while (v85);

      v80 = v155;
    }

    else
    {

      v86 = MEMORY[0x1E69E7CC0];
    }

    v156 = v86;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A85FB520(&qword_1ED8C8B10, &qword_1EB303100);
    v110 = sub_1A88C8278();
    v112 = v111;

    v113 = sub_1A85F0394(v110, v112, &v157);

    *(v81 + 14) = v113;
    *(v81 + 22) = 2048;
    v75 = v151;
    *(v81 + 24) = v151;
    v114 = v149;
    _os_log_impl(&dword_1A85E5000, v149, v148, "Current aggregate count %{public}s for filter modes %s: %ld", v81, 0x20u);
    v115 = v147;
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v115, -1, -1);
    MEMORY[0x1AC571F20](v81, -1, -1);
  }

  else
  {
  }

  v116 = v154;
  sub_1A88012F4();

  (v153[1])(v80, v116);
  return v75;
}

void sub_1A87FD01C(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR___IMUnreadCountController_filteringControllerLock);
  swift_getKeyPath();

  os_unfair_lock_lock((v4 + 24));
  sub_1A8802254((v4 + 16), v18);
  if (v2)
  {
LABEL_33:
    os_unfair_lock_unlock((v4 + 24));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v4 + 24));

  v5 = v18[0];
  if ([v18[0] respondsToSelector_])
  {
    v6 = [v5 implementsFilterMode_];
    swift_unknownObjectRelease();
    if (!v6)
    {
      goto LABEL_7;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);

    os_unfair_lock_lock((v4 + 24));
    sub_1A8802254((v4 + 16), v18);
    os_unfair_lock_unlock((v4 + 24));

    v8 = v18[0];
    if ([v18[0] respondsToSelector_])
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1A8802158;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      v11[2] = sub_1A8802184;
      v11[3] = v10;
      v11[4] = a1;
      return;
    }
  }

  swift_unknownObjectRelease();
LABEL_7:
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  if (v12 == a1)
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);

    os_unfair_lock_lock((v4 + 24));
    sub_1A8802254((v4 + 16), v18);
    os_unfair_lock_unlock((v4 + 24));

    v14 = v18[0];
    *(swift_allocObject() + 16) = v14;
    return;
  }

  if (a1 > 8)
  {
    if ((a1 - 13) < 0xC)
    {
      v15 = IMConversationListFilterMode.action.getter(a1);
      v16 = IMConversationListFilterMode.subAction.getter(a1);
      v17 = IMAppendedFilterMode(v15, v16);
      if ((v17 & 0x8000000000000000) == 0)
      {
        *(swift_allocObject() + 16) = v17;
        return;
      }

      __break(1u);
      goto LABEL_33;
    }

    if ((a1 - 11) < 2)
    {
LABEL_26:
      *(swift_allocObject() + 16) = a1;
      return;
    }

    if (a1 == 9)
    {
      return;
    }

LABEL_31:
    sub_1A8802058();
    swift_allocError();
    swift_willThrow();
    return;
  }

  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      goto LABEL_26;
    }

    if (a1 != 6 && a1 != 8)
    {
      goto LABEL_31;
    }
  }

  else if (a1 > 1)
  {
    if (a1 != 2)
    {
      [objc_opt_self() isTextMessageExtensionEnabled];
    }
  }

  else if (a1 > 1)
  {
    goto LABEL_31;
  }
}

unint64_t sub_1A87FD60C(void *a1)
{
  result = [a1 isFiltered];
  if (result != 1)
  {
    return IMFilterAction([a1 isFiltered]) == 4 || IMFilterAction(objc_msgSend(a1, sel_isFiltered)) == 3;
  }

  return result;
}

BOOL sub_1A87FD6C8(void *a1)
{
  v2 = [a1 lastAddressedHandleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A88C82E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [a1 lastAddressedSIMID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A88C82E8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12.value._countAndFlagsBits = v4;
  v12.value._object = v6;
  v13.value._countAndFlagsBits = v9;
  v13.value._object = v11;
  v14 = IMConversationListFilterMode.subscriptionMatches(lastAddressedHandle:lastAddressedSIMID:)(v12, v13);

  return v14;
}

uint64_t sub_1A87FD7D8(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_1A8801E50(a1, v7);
  swift_getAtKeyPath();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  sub_1A8801EAC(v7);
  return v2;
}

unint64_t sub_1A87FD844(uint64_t a1)
{
  sub_1A870CCE0(&qword_1EB303498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  *(inited + 32) = v4;
  v5 = sub_1A87F79F0(inited, a1);
  swift_setDeallocating();
  result = 0;
  if (v5)
  {
    v7 = *(v1 + OBJC_IVAR___IMUnreadCountController_state);
    os_unfair_lock_lock((v7 + 80));
    v8 = *(v7 + 72);
    if (*(v8 + 16) && (v9 = sub_1A8717F68(1), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 16 * v9 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 8);
      swift_unknownObjectRetain();
      v14 = v13(ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = sub_1A85ED7A4(MEMORY[0x1E69E7CC0]);
    }

    os_unfair_lock_unlock((v7 + 80));
    return v14;
  }

  return result;
}

uint64_t sub_1A87FD9C0()
{
  sub_1A85E9718(0, &qword_1ED8C8AA0);
  result = sub_1A88C8BD8();
  qword_1ED8C8AE0 = result;
  return result;
}

uint64_t sub_1A87FDA38()
{
  v0 = sub_1A88C7E58();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A88C7DD8();
  sub_1A85EFC04(v1, qword_1ED8C8AF8);
  sub_1A85EF0E4(v1, qword_1ED8C8AF8);
  if (qword_1ED8C8AD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8C8AE0;
  sub_1A88C7E68();
  return sub_1A88C7DB8();
}

char *sub_1A87FDB40(unint64_t a1, int a2)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56F710](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A85FD07C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1A85FD07C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v12 = sub_1A87FBBA4(v5, a2);

  return v12;
}

char *sub_1A87FDCD0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1A85E9718(0, &qword_1ED8C9450);
  v6 = sub_1A88C85F8();
  v7 = a1;
  v8 = sub_1A87FDB40(v6, a4);

  return v8;
}

char *sub_1A87FDD58(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1A870CCE0(&qword_1EB303498);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A88E14F0;
  *(v7 + 32) = a3;
  v8 = a1;
  v9 = sub_1A87FBBA4(v7, a4);

  return v9;
}

void __swiftcall IMUnreadCountController.init()(IMUnreadCountController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1A87FDEDC(void *a1)
{
  v2 = v1;
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1ED8CA4C0);
  v5 = a1;
  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89A8();
  if (!os_log_type_enabled(v6, v7))
  {

    v6 = v5;
    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  v9 = [v5 updatedReports];
  sub_1A85E9718(0, &qword_1ED8C9210);
  v10 = sub_1A88C85F8();

  if (v10 >> 62)
  {
    v11 = sub_1A88C8D38();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = [v5 deletedGUIDs];
  v13 = sub_1A88C85F8();

  v14 = *(v13 + 16);

  if (!__OFADD__(v11, v14))
  {
    *(v8 + 4) = v11 + v14;

    _os_log_impl(&dword_1A85E5000, v6, v7, "Posting notification that %ld GUID(s) have changed in a way that alters unread counts", v8, 0xCu);
    MEMORY[0x1AC571F20](v8, -1, -1);
LABEL_9:

    v15 = [objc_opt_self() defaultCenter];
    v16 = IMUnreadCountControllerDidUpdateNotification;
    sub_1A870CCE0(&qword_1EB306678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A88E14F0;
    sub_1A88C82E8();
    sub_1A88C8D88();
    *(inited + 96) = sub_1A85E9718(0, &qword_1ED8C92F8);
    *(inited + 72) = v5;
    v18 = v5;
    sub_1A8602DD4(inited);
    swift_setDeallocating();
    sub_1A8801A78(inited + 32);
    v19 = sub_1A88C8188();

    [v15 postNotificationName:v16 object:v2 userInfo:v19];

    return;
  }

  __break(1u);
}

uint64_t sub_1A87FE1DC(uint64_t result, char a2)
{
  v3 = result;
  if (*(result + 16))
  {

    v4 = v3;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }

    v4 = &unk_1F1BA9DA0;
  }

  v5 = *&v2[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v5 + 20);
  sub_1A87FE298(&v5[4], v4, v3, v2);
  os_unfair_lock_unlock(v5 + 20);
}

void sub_1A87FE298(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a4;
  v43 = a3;
  v7 = sub_1A88C7EC8();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A88C7EF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a1 + 48) + 16);
  sub_1A87FB7C4(a2);
  if (v14)
  {
    if (qword_1ED8C8B18 != -1)
    {
      swift_once();
    }

    v15 = sub_1A88C7E58();
    sub_1A85EF0E4(v15, qword_1ED8CA4C0);
    v16 = v43;

    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v16 + 16);

      _os_log_impl(&dword_1A85E5000, v17, v18, "Queued %ld additional GUIDs to be posted in the next update", v19, 0xCu);
      MEMORY[0x1AC571F20](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v20 = v40;
    v37 = v9;
    v38 = v10;
    v39 = v4;
    if (qword_1ED8C8B18 != -1)
    {
      swift_once();
    }

    v21 = sub_1A88C7E58();
    sub_1A85EF0E4(v21, qword_1ED8CA4C0);
    v22 = v43;

    v23 = sub_1A88C7E38();
    v24 = sub_1A88C89A8();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v7;
    v35 = v13;
    v36 = v11;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v22 + 16);

      _os_log_impl(&dword_1A85E5000, v23, v24, "Queuing %ld GUIDs to be posted with updates", v27, 0xCu);
      MEMORY[0x1AC571F20](v27, -1, -1);
    }

    else
    {
    }

    v28 = v37;
    sub_1A85E9718(0, &qword_1ED8C95A0);
    v29 = sub_1A88C8A38();
    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    aBlock[4] = sub_1A8801A70;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A85EB8C0;
    aBlock[3] = &unk_1F1BB1B88;
    v31 = _Block_copy(aBlock);
    v32 = v20;

    v33 = v35;
    _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A85EBBD0();
    sub_1A870CCE0(&unk_1EB3081F0);
    sub_1A85FB520(&qword_1ED8C9470, &unk_1EB3081F0);
    sub_1A88C8CE8();
    MEMORY[0x1AC56F330](0, v33, v28, v31);
    _Block_release(v31);

    (*(v41 + 8))(v28, v26);
    (*(v36 + 8))(v33, v38);
  }
}

void sub_1A87FE780(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___IMUnreadCountController_state);
  os_unfair_lock_lock((v1 + 80));
  sub_1A8801580((v1 + 16));
  v3 = v2;
  os_unfair_lock_unlock((v1 + 80));
  sub_1A87FDEDC(v3);
}

uint64_t sub_1A87FE820()
{
  v1 = *(v0 + OBJC_IVAR___IMUnreadCountController_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 80));
  sub_1A8801DF4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 80));

  return v3;
}

void sub_1A87FE930(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  if (v4 && (v5 = sub_1A85F2008(v4, 0), v6 = sub_1A85F2010(&v13, v5 + 32, v4, v3), , sub_1A85EF290(), v6 != v4))
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 24);
    sub_1A85E9718(0, &qword_1ED8C9210);
    v8 = sub_1A88C85E8();

    if (v7)
    {
      v9 = sub_1A88C82A8();
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_allocWithZone(IMUnreadCountReportDelta);
    v11 = sub_1A88C82A8();
    v12 = [v10 initWithDeletedGUIDs:0 updatedReports:v8 isReplacement:1 fromStamp:v9 toStamp:v11];

    *v14 = v12;
  }
}

uint64_t sub_1A87FEAB0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 8);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_1A85F2008(*(v3 + 16), 0);
  v6 = sub_1A85F2010(&v7, v5 + 32, v4, v3);

  result = sub_1A85EF290();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87FEB7C(uint64_t result)
{
  if (*result == 1)
  {
    v14 = v1;
    v15 = v2;
    v3 = result;
    v4 = *(result + 40);
    v13 = *(result + 32);
    v5 = sub_1A88C74B8();
    v6 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_1A88C6C38();
    v9 = sub_1A88C7488();
    v11 = v10;
    (*(v6 + 8))(v8, v5);

    v3[4] = v9;
    v3[5] = v11;
    if (*(v3[6] + 16))
    {
    }

    else
    {

      v3[2] = v13;
      v3[3] = v4;
    }
  }

  return result;
}

uint64_t sub_1A87FED4C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v2 + 20);
  sub_1A8801DA0(v7);
  os_unfair_lock_unlock(v2 + 20);
  v3 = v7[0];
  v4 = v8;
  if (v7[0] == 1)
  {
    if (*(v8 + 16))
    {

      v5 = v4;
    }

    else
    {
      v5 = &unk_1F1BA9DD0;
    }

    os_unfair_lock_lock(v2 + 20);
    sub_1A87FE298(&v2[4], v5, v4, v1);
    os_unfair_lock_unlock(v2 + 20);
  }

  return v3;
}

uint64_t sub_1A87FEE74(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v15 = v1;

  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v15 + 56) + ((v9 << 10) | (16 * v10)) + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 24);
    swift_unknownObjectRetain();
    v14 = swift_unknownObjectRetain();
    v13(v14, ObjectType, v11);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1A87FEFA4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:IMUnreadCountControllerDidUpdateNotification object:a1 userInfo:0];
}

uint64_t sub_1A87FF024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v16 = v4;

  v11 = 0;
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (a2)
    {
      v14 = *(*(v16 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))) + 8);
      ObjectType = swift_getObjectType();
      v17 = *(v14 + 48);
      swift_unknownObjectRetain();
      sub_1A87FB4F4(a2);
      v17(0, a2, a3, ObjectType, v14);
      sub_1A8801D80(a2);
      result = swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
    }

    v12 = *(v5 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87FF27C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v17 = MEMORY[0x1E69E7CC0];
  v6 = sub_1A85ED7A4(MEMORY[0x1E69E7CC0]);
  v7 = sub_1A87FB69C(v6, a2, a1, &v17);

  v9 = sub_1A85F11E0(v8);

  v11 = sub_1A85F1304(v10, v9);

  sub_1A85F1874(v11);
  sub_1A8802464(v7);
  v12 = a1[1];
  v18 = *a1;
  v19 = v12;
  v13 = a1[3];
  v20 = a1[2];
  v21 = v13;
  v14 = v17;

  sub_1A8803140(v15);

  *a3 = v14;
  return result;
}

BOOL sub_1A87FF364()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v2 + 20);
  sub_1A8801D04(&v6);
  os_unfair_lock_unlock(v2 + 20);
  v3 = v6;
  v4 = *(v6 + 16);
  if (v4)
  {
    os_unfair_lock_lock(v2 + 20);
    sub_1A87FE298(&v2[4], v3, v3, v1);
    os_unfair_lock_unlock(v2 + 20);
  }

  return v4 != 0;
}

BOOL sub_1A87FF48C(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v4 + 20);
  sub_1A8801CC0(&v13, v5);
  os_unfair_lock_unlock(v4 + 20);
  v6 = v13;
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1ED8CA4C0);

  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1A85E5000, v8, v9, "Cleared %ld unread chats", v10, 0xCu);
    MEMORY[0x1AC571F20](v10, -1, -1);

    v11 = *(v6 + 16);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = *(v6 + 16);
  if (v11)
  {
LABEL_7:
    os_unfair_lock_lock(v4 + 20);
    sub_1A87FE298(&v4[4], v6, v6, v2);
    os_unfair_lock_unlock(v4 + 20);
  }

LABEL_8:

  return v11 != 0;
}

uint64_t sub_1A87FF694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = *(v4 + 1);
  if (!*(v6 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A85F5F40(a1, a2);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *&v35 = *(*(v6 + 56) + 8 * v10);
  v12 = v35;
  swift_getAtKeyPath();
  v13 = a4 & 1;
  if (v34 == v13)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    [v12 copy];
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85E9718(0, &qword_1ED8C9210);
    swift_dynamicCast();
    v14 = v34;
    LOBYTE(v34) = v13;
    *&v35 = v14;
    v15 = v14;
    swift_setAtReferenceWritableKeyPath();

    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = *(v5 + 1);
    sub_1A85FA9D4(v16, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v5 + 1) = v35;
    if (*v5 == 1)
    {
      *&v33 = v16;
      v18 = *(v5 + 5);
      v32[0] = *(v5 + 4);
      v19 = sub_1A88C74B8();
      v32[1] = v32;
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_1A88C6C38();
      v23 = sub_1A88C7488();
      v25 = v24;
      (*(v20 + 8))(v22, v19);

      *(v5 + 4) = v23;
      *(v5 + 5) = v25;
      if (*(*(v5 + 6) + 16))
      {
      }

      else
      {

        *(v5 + 2) = v32[0];
        *(v5 + 3) = v18;
      }

      v16 = v33;
    }

    v28 = v5[1];
    v35 = *v5;
    v36 = v28;
    v29 = v5[3];
    v37 = v5[2];
    v38 = v29;
    sub_1A870CCE0(&unk_1EB306530);
    inited = swift_initStackObject();
    v33 = xmmword_1A88E14F0;
    *(inited + 16) = xmmword_1A88E14F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1A8803140(inited);
    swift_setDeallocating();
    sub_1A87EBE14(inited + 32);
    v31 = swift_allocObject();
    *(v31 + 16) = v33;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    v27 = v31;

    v12 = v16;
  }

  return v27;
}

uint64_t sub_1A87FF9D0(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  v6 = *(v4 + 1);
  if (!*(v6 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A85F5F40(a1, a2);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *&v33 = *(*(v6 + 56) + 8 * v10);
  v12 = v33;
  swift_getAtKeyPath();
  if (v32 == a4)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    [v12 copy];
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85E9718(0, &qword_1ED8C9210);
    swift_dynamicCast();
    *&v33 = a4;
    v15 = v32;
    swift_setAtReferenceWritableKeyPath();

    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33 = *(v5 + 1);
    sub_1A85FA9D4(v16, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v5 + 1) = v33;
    if (*v5 == 1)
    {
      *&v31 = v16;
      v18 = *(v5 + 5);
      v30[0] = *(v5 + 4);
      v19 = sub_1A88C74B8();
      v30[1] = v30;
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_1A88C6C38();
      v23 = sub_1A88C7488();
      v25 = v24;
      (*(v20 + 8))(v22, v19);

      *(v5 + 4) = v23;
      *(v5 + 5) = v25;
      if (*(*(v5 + 6) + 16))
      {
      }

      else
      {

        *(v5 + 2) = v30[0];
        *(v5 + 3) = v18;
      }

      v16 = v31;
    }

    v26 = v5[1];
    v33 = *v5;
    v34 = v26;
    v27 = v5[3];
    v35 = v5[2];
    v36 = v27;
    sub_1A870CCE0(&unk_1EB306530);
    inited = swift_initStackObject();
    v31 = xmmword_1A88E14F0;
    *(inited + 16) = xmmword_1A88E14F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1A8803140(inited);
    swift_setDeallocating();
    sub_1A87EBE14(inited + 32);
    v29 = swift_allocObject();
    *(v29 + 16) = v31;
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;
    v13 = v29;

    v12 = v16;
  }

  return v13;
}

uint64_t sub_1A87FFD04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  v7 = *(v5 + 1);
  if (!*(v7 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1A85F5F40(a1, a2);
  if ((v13 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35 = *(*(v7 + 56) + 8 * v12);
  v14 = v35;
  swift_getAtKeyPath();
  if (!*(&v36 + 1))
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!a5)
  {

    goto LABEL_13;
  }

  if (v36 != __PAIR128__(a5, a4))
  {
    v16 = sub_1A88C9398();

    if (v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    [v14 copy];
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85E9718(0, &qword_1ED8C9210);
    swift_dynamicCast();
    *&v36 = a4;
    *(&v36 + 1) = a5;
    v18 = v35;

    swift_setAtReferenceWritableKeyPath();

    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36 = *(v6 + 1);
    sub_1A85FA9D4(v19, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 1) = v36;
    if (*v6 == 1)
    {
      *&v34 = v19;
      v21 = *(v6 + 5);
      v33[0] = *(v6 + 4);
      v22 = sub_1A88C74B8();
      v33[1] = v33;
      v23 = *(v22 - 8);
      MEMORY[0x1EEE9AC00](v22);
      v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_1A88C6C38();
      v26 = sub_1A88C7488();
      v28 = v27;
      (*(v23 + 8))(v25, v22);

      *(v6 + 4) = v26;
      *(v6 + 5) = v28;
      if (*(*(v6 + 6) + 16))
      {
      }

      else
      {

        *(v6 + 2) = v33[0];
        *(v6 + 3) = v21;
      }

      v19 = v34;
    }

    v29 = v6[1];
    v36 = *v6;
    v37 = v29;
    v30 = v6[3];
    v38 = v6[2];
    v39 = v30;
    sub_1A870CCE0(&unk_1EB306530);
    inited = swift_initStackObject();
    v34 = xmmword_1A88E14F0;
    *(inited + 16) = xmmword_1A88E14F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1A8803140(inited);
    swift_setDeallocating();
    sub_1A87EBE14(inited + 32);
    v32 = swift_allocObject();
    *(v32 + 16) = v34;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    v17 = v32;

    v14 = v19;
    goto LABEL_19;
  }

LABEL_12:
  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v17;
}

uint64_t sub_1A88000A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 1);
  if (!*(v6 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A85F5F40(a1, a2);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *&v34 = *(*(v6 + 56) + 8 * v10);
  v12 = v34;
  swift_getAtKeyPath();
  v13 = sub_1A87F7778(v33, a4);

  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    [v12 copy];
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85E9718(0, &qword_1ED8C9210);
    swift_dynamicCast();
    *&v34 = a4;
    v16 = v33;

    swift_setAtReferenceWritableKeyPath();

    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34 = *(v5 + 1);
    sub_1A85FA9D4(v17, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v5 + 1) = v34;
    if (*v5 == 1)
    {
      *&v32 = v17;
      v19 = *(v5 + 5);
      v31[0] = *(v5 + 4);
      v20 = sub_1A88C74B8();
      v31[1] = v31;
      v21 = *(v20 - 8);
      MEMORY[0x1EEE9AC00](v20);
      v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_1A88C6C38();
      v24 = sub_1A88C7488();
      v26 = v25;
      (*(v21 + 8))(v23, v20);

      *(v5 + 4) = v24;
      *(v5 + 5) = v26;
      if (*(*(v5 + 6) + 16))
      {
      }

      else
      {

        *(v5 + 2) = v31[0];
        *(v5 + 3) = v19;
      }

      v17 = v32;
    }

    v27 = v5[1];
    v34 = *v5;
    v35 = v27;
    v28 = v5[3];
    v36 = v5[2];
    v37 = v28;
    sub_1A870CCE0(&unk_1EB306530);
    inited = swift_initStackObject();
    v32 = xmmword_1A88E14F0;
    *(inited + 16) = xmmword_1A88E14F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1A8803140(inited);
    swift_setDeallocating();
    sub_1A87EBE14(inited + 32);
    v30 = swift_allocObject();
    *(v30 + 16) = v32;
    *(v30 + 32) = a1;
    *(v30 + 40) = a2;
    v14 = v30;

    v12 = v17;
  }

  return v14;
}

uint64_t sub_1A8800578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(os_unfair_lock_s *))
{
  sub_1A88C82E8();
  if (a4)
  {
    sub_1A88C82E8();
  }

  v9 = a1;
  v10 = [sub_1A87FB85C() filtersMutedChats];
  swift_unknownObjectRelease();
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A8801B10(a6);
  }

  else
  {
  }
}

void sub_1A88006EC(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A88C82E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1A8800750(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_1A88C82A8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1A88007E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(os_unfair_lock_s *))
{
  sub_1A88C82E8();
  if (a4)
  {
    sub_1A88C82E8();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v10 = a1;
  sub_1A8801B10(a6);
}

void *sub_1A88008D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  KeyPath = swift_getKeyPath();
  v14 = sub_1A87FFD04(a2, a3, KeyPath, a4, a5);

  v15 = swift_getKeyPath();
  v16 = sub_1A87FFD04(a2, a3, v15, a6, a7);

  v22 = v14;
  sub_1A8734A68(v16);
  v17 = sub_1A8737F40(v14);

  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = sub_1A87365FC(*(v17 + 16), 0);
  v20 = sub_1A85F1C3C(&v22, v19 + 4, v18, v17);
  sub_1A85EF290();
  if (v20 != v18)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

void sub_1A8800AFC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 participants];
  v4 = sub_1A88C85F8();

  *a2 = v4;
}

char *sub_1A8800C24(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v5 - 1);
    v8 = *v5;
    KeyPath = swift_getKeyPath();

    v11 = sub_1A87FF694(v9, v8, KeyPath, a3 & 1);

    v12 = *(v11 + 16);
    v13 = *(v6 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v6 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_1A85F1B30(result, v15, 1, v6);
      v6 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v6 + 2);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_23;
          }

          *(v6 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v5 += 2;
    if (!--v3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_1A8800E80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v7 = *(a3 + OBJC_IVAR___IMUnreadCountController_state);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);

    os_unfair_lock_lock((v7 + 80));
    sub_1A8801FFC((v7 + 16), &v49);
    os_unfair_lock_unlock((v7 + 80));

    v6 = v49;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v9 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v43 = OBJC_IVAR___IMUnreadCountController_filteringControllerLock;
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  for (i = v6; v12; v6 = i)
  {
LABEL_13:
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = *(*(v6 + 56) + ((v14 << 9) | (8 * v16)));
      v18 = *(a4 + v43);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      v20 = v17;

      os_unfair_lock_lock((v18 + 24));
      sub_1A8802254((v18 + 16), v48);
      os_unfair_lock_unlock((v18 + 24));

      v21 = [v48[0] allowUnreadCountReport_];
      swift_unknownObjectRelease();
      if (v21)
      {
        break;
      }

LABEL_8:

      v6 = i;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v22 = *(a5 + 16);
    if (v22)
    {
      v23 = v22 + 1;
      v24 = a5 + 40;
      while (--v23)
      {
        v25 = v24 + 16;
        v26 = *(v24 - 8);
        v48[0] = v20;

        v26(&v47, v48);

        v24 = v25;
        if ((v47 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    sub_1A88C8ED8();
    sub_1A88C8F18();
    sub_1A88C8F28();
    sub_1A88C8EE8();
  }

  while (1)
  {
LABEL_9:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  v5 = v49;
  if (v49 < 0 || (v49 & 0x4000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v27 = *(v49 + 16);
  if (!v27)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v49 = MEMORY[0x1E69E7CC0];
    result = sub_1A85F31E8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = v6;
    v30 = 0;
    v31 = v49;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1AC56F710](v30, v5);
      }

      else
      {
        v32 = *(v5 + 8 * v30 + 32);
      }

      v33 = v32;
      if (a2)
      {
        v34 = [v32 unreadCount];
      }

      else
      {
        LODWORD(v34) = [v32 isPendingReview];

        v34 = v34;
      }

      v49 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1A85F31E8((v35 > 1), v36 + 1, 1);
        v31 = v49;
      }

      ++v30;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v27 != v30);

    v6 = v29;
    v37 = *(v31 + 16);
    if (!v37)
    {
      break;
    }

    while (1)
    {
      v38 = 0;
      v39 = (v31 + 32);
      while (1)
      {
        v40 = *v39++;
        v41 = __OFADD__(v38, v40);
        v38 += v40;
        if (v41)
        {
          break;
        }

        if (!--v37)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      v27 = sub_1A88C8D38();
      if (v27)
      {
        break;
      }

LABEL_43:

      v31 = MEMORY[0x1E69E7CC0];
      v37 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v37)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_44:
  v38 = 0;
LABEL_45:

  return v38;
}

uint64_t sub_1A88012F4()
{
  v0 = sub_1A88C7DE8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A88C7DA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8C8AF0 != -1)
  {
    swift_once();
  }

  v8 = sub_1A88C7DD8();
  sub_1A85EF0E4(v8, qword_1ED8C8AF8);
  v9 = sub_1A88C7DC8();
  sub_1A88C7DF8();
  v10 = sub_1A88C8B18();
  if (sub_1A88C8BC8())
  {

    sub_1A88C7E28();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1A88C7D98();
    _os_signpost_emit_with_name_impl(&dword_1A85E5000, v9, v10, v13, "aggregateCountForChats(with:aggregateType:)", v11, v12, 2u);
    MEMORY[0x1AC571F20](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1A8801580(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v3 = a1[6];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0x214543524F462121;
  v9 = 0;
  v35 = v2;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v9 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];
    if (*v12 != v8 || v13 != 0xE900000000000021)
    {
      v16 = v8;
      v17 = sub_1A88C9398();
      v8 = v16;
      if ((v17 & 1) == 0)
      {
        v18 = a1[1];
        v34 = *(v18 + 16);

        if (v34 && (v19 = sub_1A85F5F40(v14, v13), (v20 & 1) != 0))
        {
          v21 = v19;

          v22 = *(*(v18 + 56) + 8 * v21);
          MEMORY[0x1AC56EEA0]();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A88C8638();
          }

          sub_1A88C8678();

          v8 = v16;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1A85F1B30(0, *(v35 + 2) + 1, 1, v35);
          }

          v8 = v16;
          v24 = *(v35 + 2);
          v23 = *(v35 + 3);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v27 = sub_1A85F1B30((v23 > 1), v24 + 1, 1, v35);
            v25 = v24 + 1;
            v8 = v16;
            v35 = v27;
          }

          *(v35 + 2) = v25;
          v26 = &v35[16 * v24];
          *(v26 + 4) = v14;
          *(v26 + 5) = v13;
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  a1[6] = MEMORY[0x1E69E7CD0];
  v28 = a1[3];
  v29 = sub_1A88C85E8();

  sub_1A85E9718(0, &qword_1ED8C9210);
  v30 = sub_1A88C85E8();

  if (v28)
  {
    v31 = sub_1A88C82A8();
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(IMUnreadCountReportDelta);
  v33 = sub_1A88C82A8();
  [v32 initWithDeletedGUIDs:v29 updatedReports:v30 isReplacement:0 fromStamp:v31 toStamp:v33];
}

uint64_t sub_1A88018E8(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v14 = *&a1[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v14 + 20);
  v15 = sub_1A88008D0(&v14[4], a2, a3, a4, a5, a6, a7);
  os_unfair_lock_unlock(v14 + 20);
  if (v15[2])
  {
    os_unfair_lock_lock(v14 + 20);
    sub_1A87FE298(&v14[4], v15, v15, a1);
    os_unfair_lock_unlock(v14 + 20);
  }
}

uint64_t sub_1A88019C4(char *a1, uint64_t a2, char a3)
{
  v6 = *&a1[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v6 + 20);
  v7 = sub_1A8800C24(a2, &v6[4], a3);
  os_unfair_lock_unlock(v6 + 20);
  if (*(v7 + 2))
  {
    os_unfair_lock_lock(v6 + 20);
    sub_1A87FE298(&v6[4], v7, v7, a1);
    os_unfair_lock_unlock(v6 + 20);
  }
}

uint64_t sub_1A8801A78(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB303CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8801B10(uint64_t (*a1)(os_unfair_lock_s *))
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___IMUnreadCountController_state];
  os_unfair_lock_lock(v4 + 20);
  v5 = a1(v4 + 4);
  os_unfair_lock_unlock(v4 + 20);
  if (*(v5 + 16))
  {
    os_unfair_lock_lock(v4 + 20);
    sub_1A87FE298(&v4[4], v5, v5, v2);
    os_unfair_lock_unlock(v4 + 20);
  }
}

void *sub_1A8801CC0@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1A8802D64(*(v2 + 16), a2);
  *a1 = result;
  return result;
}

uint64_t sub_1A8801D04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A8802948(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1A8801D80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A8801DA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A88025AC(*(v1 + 16));
  *a1 = result & 1;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A8801DF4@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  result = v4(v8);
  *a2 = result;
  return result;
}

uint64_t sub_1A8801F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A87FB52C(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A8801F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8801FC4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A8801FFC@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  result = v4(v8);
  *a2 = result;
  return result;
}

unint64_t sub_1A8802058()
{
  result = qword_1EB306698;
  if (!qword_1EB306698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306698);
  }

  return result;
}

BOOL sub_1A88020B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 isFiltered];
  return v3 >= 0 && v3 == v2;
}

BOOL sub_1A88020EC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = IMFilterAction([a1 isFiltered]);
  return v3 == IMConversationListFilterMode.action.getter(v2);
}

unint64_t sub_1A88021F8()
{
  result = qword_1EB3066A0;
  if (!qword_1EB3066A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3066A0);
  }

  return result;
}

void *sub_1A88022B0()
{
  v1 = sub_1A870CCE0(&qword_1EB306658) - 8;
  MEMORY[0x1EEE9AC00]();
  v3 = (&v10 - v2);
  v4 = MEMORY[0x1E69E7CC0];
  *v3 = sub_1A85ED7A4(MEMORY[0x1E69E7CC0]);
  v5 = v3 + *(v1 + 44);
  *v5 = 0;
  v6 = *(type metadata accessor for UnreadCountTimeSensitiveIndex.ExtraState(0) + 20);
  v7 = sub_1A88C7478();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  sub_1A870CCE0(&qword_1EB3066C0);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1A880381C(v3, v8 + *(*v8 + *MEMORY[0x1E69E6B68] + 16));
  v0[2] = v8;
  v0[3] = sub_1A87395D4(v4);
  v0[4] = 0;
  return v0;
}

uint64_t sub_1A8802464(uint64_t a1)
{
  v2 = v1;

  *(v2 + 8) = a1;
  if (*v2 == 1)
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);
    v7 = sub_1A88C74B8();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_1A88C6C38();
    v11 = sub_1A88C7488();
    v13 = v12;
    (*(v8 + 8))(v10, v7);

    *(v2 + 32) = v11;
    *(v2 + 40) = v13;
    if (*(*(v2 + 48) + 16))
    {
    }

    else
    {

      *(v2 + 16) = v6;
      *(v2 + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1A88025AC(void *a1)
{
  v3 = [a1 toStamp];
  if (!v3)
  {
LABEL_19:
    v24 = MEMORY[0x1E69E7CC0];
    v46[1] = MEMORY[0x1E69E7CC0];
    if ([a1 isReplacement])
    {
      v25 = [a1 updatedReports];
      sub_1A8783C24();
      v26 = sub_1A88C85F8();

      v46[0] = v24;
      v27 = sub_1A85ED7A4(v24);
      v28 = sub_1A87FB69C(v27, v26, v1, v46);

      v30 = sub_1A85F11E0(v29);

      v32 = sub_1A85F1304(v31, v30);

      sub_1A85F1874(v32);
      sub_1A8802464(v28);
      v33 = *(v1 + 16);
      v47 = *v1;
      v48 = v33;
      v34 = *(v1 + 48);
      v49 = *(v1 + 32);
      v50 = v34;
      v35 = v46[0];

      sub_1A8803140(v36);
    }

    else
    {
      v37 = [a1 deletedGUIDs];
      v38 = sub_1A88C85F8();

      v40 = sub_1A8802D64(v38, v39);

      sub_1A8734A68(v40);
      v41 = [a1 updatedReports];
      sub_1A8783C24();
      v42 = sub_1A88C85F8();

      v43 = sub_1A8880C74(v42);
      v35 = sub_1A8802948(v43);
    }

    sub_1A8734A68(v35);
    goto LABEL_26;
  }

  v4 = v3;
  v5 = sub_1A88C82E8();
  v7 = v6;

  if (([a1 isReplacement] & 1) != 0 || (*(v1 + 32) == v5 ? (v17 = *(v1 + 40) == v7) : (v17 = 0), !v17 && (sub_1A88C9398() & 1) == 0))
  {
    v8 = [a1 isReplacement];
    v9 = &selRef_filename;
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 32);
      v11 = *(v1 + 40);
      v12 = [a1 fromStamp];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1A88C82E8();
        v16 = v15;

        if (v10 == v14 && v11 == v16)
        {

          v9 = &selRef_filename;
          goto LABEL_15;
        }

        v18 = sub_1A88C9398();

        v9 = &selRef_filename;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      if (v10 != v5 || v11 != v7)
      {
        v44 = sub_1A88C9398();

        return v44 & 1;
      }

      goto LABEL_25;
    }

LABEL_15:
    v19 = [a1 v9[45]];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1A88C82E8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    *(v1 + 16) = v21;
    *(v1 + 24) = v23;

    *(v1 + 32) = v5;
    *(v1 + 40) = v7;
    goto LABEL_19;
  }

LABEL_25:

LABEL_26:
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_1A8802948(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_38:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }

    v5 = 0;
    v53 = *v2;
    v55 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v50 = v3;
    v54 = i;
    while (1)
    {
      v56 = v6;
      v7 = v55 ? MEMORY[0x1AC56F710](v5, v3) : *(v3 + 8 * v5 + 32);
      v8 = v7;
      v9 = [v8 guid];
      v10 = sub_1A88C82E8();
      v12 = v11;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v57 = *(v2 + 1);
      v14 = v57;
      v15 = sub_1A85F5F40(v10, v12);
      v17 = *(v14 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        break;
      }

      v21 = v16;
      if (*(v14 + 24) < v20)
      {
        sub_1A85FAB18(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_1A85F5F40(v10, v12);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_38;
        }

LABEL_15:
        v23 = v57;
        if (v21)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v26 = v15;
      sub_1A87B219C();
      v15 = v26;
      v23 = v57;
      if (v21)
      {
LABEL_16:
        v24 = v23[7];
        v25 = *(v24 + 8 * v15);
        *(v24 + 8 * v15) = v8;

        goto LABEL_20;
      }

LABEL_18:
      v23[(v15 >> 6) + 8] |= 1 << v15;
      v27 = (v23[6] + 16 * v15);
      *v27 = v10;
      v27[1] = v12;
      *(v23[7] + 8 * v15) = v8;
      v28 = v23[2];
      v19 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v25 = 0;
      v23[2] = v29;
LABEL_20:
      *(v2 + 1) = v23;
      if (v53)
      {
        v30 = *(v2 + 5);
        v51 = *(v2 + 4);
        v31 = sub_1A88C74B8();
        v52 = &v49;
        v32 = *(v31 - 8);
        MEMORY[0x1EEE9AC00](v31);
        v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);

        sub_1A88C6C38();
        v35 = sub_1A88C7488();
        v37 = v36;
        (*(v32 + 8))(v34, v31);

        *(v2 + 4) = v35;
        *(v2 + 5) = v37;
        if (*(*(v2 + 6) + 16))
        {
        }

        else
        {

          *(v2 + 2) = v51;
          *(v2 + 3) = v30;
        }

        v3 = v50;
      }

      v6 = v56;
      if (v25 && (sub_1A8783C24(), v38 = sub_1A88C8BA8(), v25, (v38 & 1) != 0))
      {
      }

      else
      {
        v39 = [v8 guid];
        v40 = sub_1A88C82E8();
        v42 = v41;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A85F1B30(0, *(v6 + 2) + 1, 1, v6);
        }

        v44 = *(v6 + 2);
        v43 = *(v6 + 3);
        if (v44 >= v43 >> 1)
        {
          v6 = sub_1A85F1B30((v43 > 1), v44 + 1, 1, v6);
        }

        *(v6 + 2) = v44 + 1;
        v45 = &v6[16 * v44];
        *(v45 + 4) = v40;
        *(v45 + 5) = v42;
      }

      if (v54 == ++v5)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v46 = *(v2 + 1);
  v57 = *v2;
  v58 = v46;
  v47 = *(v2 + 3);
  v59 = *(v2 + 2);
  v60 = v47;
  sub_1A8803140(v6);
  return v6;
}

void *sub_1A8802D64(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CD0];
  v46 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *v2;
    v38 = a1;
    v7 = (a1 + 40);
    a2.n128_u64[0] = 136315138;
    v39 = a2;
    v41 = v2;
    v40 = v6;
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_1A85F5F40(v8, v9);
      v44 = v8;
      if (v11)
      {
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *(v3 + 1);
        *&v47[0] = v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A87B219C();
          v14 = *&v47[0];
        }

        v15 = *(*(v14 + 56) + 8 * v12);
        sub_1A87B32C4(v12, v14);
        *(v3 + 1) = v14;
        if (!v6)
        {
LABEL_9:
          if (v15)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v15 = 0;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v23 = *(v3 + 5);
      v42 = *(v3 + 4);
      v24 = sub_1A88C74B8();
      v43 = &v37;
      v25 = *(v24 - 8);
      MEMORY[0x1EEE9AC00](v24);
      v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_1A88C6C38();
      v28 = sub_1A88C7488();
      v30 = v29;
      (*(v25 + 8))(v27, v24);
      v3 = v41;

      *(v3 + 4) = v28;
      *(v3 + 5) = v30;
      if (*(*(v3 + 6) + 16))
      {
      }

      else
      {

        *(v3 + 2) = v42;
        *(v3 + 3) = v23;
      }

      v6 = v40;
      if (v15)
      {
LABEL_10:

        if (qword_1ED8C8B18 != -1)
        {
          swift_once();
        }

        v16 = sub_1A88C7E58();
        sub_1A85EF0E4(v16, qword_1ED8CA4C0);

        v17 = sub_1A88C7E38();
        v18 = sub_1A88C89B8();

        v19 = os_log_type_enabled(v17, v18);
        v20 = v44;
        if (v19)
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v47[0] = v22;
          *v21 = v39.n128_u32[0];
          *(v21 + 4) = sub_1A85F0394(v20, v9, v47);
          _os_log_impl(&dword_1A85E5000, v17, v18, "Cleared %s from reports", v21, 0xCu);
          sub_1A85F1084(v22);
          MEMORY[0x1AC571F20](v22, -1, -1);
          MEMORY[0x1AC571F20](v21, -1, -1);
        }

        sub_1A85FB018(v47, v20, v9);
      }

LABEL_4:

      v7 += 2;
      if (!--v5)
      {
        v4 = v46;
        a1 = v38;
        break;
      }
    }
  }

  v31 = *(v3 + 1);
  v47[0] = *v3;
  v47[1] = v31;
  v32 = *(v3 + 3);
  v47[2] = *(v3 + 2);
  v47[3] = v32;
  sub_1A8803140(a1);
  v33 = *(v4 + 16);
  if (!v33)
  {
    goto LABEL_24;
  }

  v34 = sub_1A87365FC(*(v4 + 16), 0);
  v35 = sub_1A85F1C3C(&v45, v34 + 4, v33, v4);
  sub_1A8739EC8();
  if (v35 != v33)
  {
    __break(1u);
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

  return v34;
}

uint64_t sub_1A8803140(uint64_t a1)
{
  v2 = *(v1 + 56);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 56) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v23 = *(v1 + 56);

  v11 = 0;
  for (i = 0; v8; v11 = v21 | v24)
  {
    v24 = v11;
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(*(v23 + 56) + ((v13 << 10) | (16 * v14)) + 8);
    ObjectType = swift_getObjectType();
    v26[3] = &type metadata for UnreadCountState;
    v26[4] = &off_1F1BB1F90;
    v17 = swift_allocObject();
    v26[0] = v17;
    v18 = *(v1 + 16);
    v17[1] = *v1;
    v17[2] = v18;
    v19 = *(v1 + 48);
    v17[3] = *(v1 + 32);
    v17[4] = v19;
    v20 = *(v15 + 40);
    swift_unknownObjectRetain();
    sub_1A8801E50(v1, v25);
    v21 = v20(a1, v26, ObjectType, v15);
    swift_unknownObjectRelease();
    result = sub_1A85F1084(v26);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v11 & 1;
    }

    v8 = *(v4 + 8 * v13);
    ++i;
    if (v8)
    {
      v24 = v11;
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88032E0(uint64_t *a1, id *a2, uint64_t a3, char **a4)
{
  v7 = *a2;
  v8 = [*a2 guid];
  v9 = sub_1A88C82E8();
  v11 = v10;

  v12 = *(a3 + 8);
  if (*(v12 + 16))
  {
    v13 = sub_1A85F5F40(v9, v11);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v13);
      sub_1A8783C24();
      v17 = v16;
      v18 = sub_1A88C8BA8();

      if (v18)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v19 = [v7 guid];
  v20 = sub_1A88C82E8();
  v22 = v21;

  v23 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1A85F1B30(0, *(v23 + 2) + 1, 1, v23);
    *a4 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_1A85F1B30((v25 > 1), v26 + 1, 1, v23);
    *a4 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v20;
  *(v27 + 5) = v22;
LABEL_11:
  v28 = [v7 guid];
  v29 = sub_1A88C82E8();
  v31 = v30;

  v32 = v7;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  sub_1A85FA9D4(v32, v29, v31, v33);

  *a1 = v35;
  return result;
}

uint64_t sub_1A88034D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1A85F5F40(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_1A85FAB18(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1A85F5F40(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1A88C9488();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_1A87B219C();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1A85FADC8(v11, a2, a3, a1, v10);

    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7];
  v19 = *(v18 + 8 * v11);
  *(v18 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v19;
}

uint64_t sub_1A8803600@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1A85ED7A4(MEMORY[0x1E69E7CC0]);
  v4 = sub_1A88C74B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A88C6C38();
  v8 = sub_1A88C7488();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_1A870CCE0(&qword_1EB3066A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 0;
  type metadata accessor for UnreadCountTimeSensitiveIndex(0);
  swift_allocObject();
  *(inited + 40) = sub_1A88022B0();
  *(inited + 48) = &off_1F1BB1B00;
  *(inited + 56) = 1;
  type metadata accessor for UnreadCountDefaultFilterModeIndex();
  v12 = swift_allocObject();
  v13 = sub_1A85ED7A4(v2);
  sub_1A870CCE0(&qword_1EB3066B0);
  v14 = swift_allocObject();
  *(v14 + 28) = 0;
  *(v14 + 16) = v13;
  *(v14 + 24) = 0;
  v12[2] = v14;
  v12[3] = sub_1A87395D4(v2);
  v12[4] = 0;
  *(inited + 64) = v12;
  *(inited + 72) = &off_1F1BB1B00;
  v15 = sub_1A87396E4(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB3066B8);
  result = swift_arrayDestroy();
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  v17 = MEMORY[0x1E69E7CD0];
  *(a1 + 40) = v10;
  *(a1 + 48) = v17;
  *(a1 + 56) = v15;
  return result;
}

uint64_t sub_1A880381C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1A880389C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A88038B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A88038F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A880395C()
{
  result = qword_1ED8C8E80[0];
  if (!qword_1ED8C8E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8C8E80);
  }

  return result;
}

__n128 sub_1A88039B0(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A88039DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A8803A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A8803ABC(char a1)
{
  result = 0x61487265646E6573;
  switch(a1)
  {
    case 1:
      result = 0x69537265646E6573;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 14:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
    case 9:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 15:
      result = 0xD000000000000020;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8803C80(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3066C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8804CF8();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C91C8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  sub_1A88C91C8();
  LOBYTE(v11) = 2;
  sub_1A88C91E8();
  LOBYTE(v11) = 3;
  sub_1A88C91E8();
  LOBYTE(v11) = 4;
  sub_1A88C91E8();
  LOBYTE(v11) = 5;
  sub_1A88C91C8();
  v10 = *(v3 + 96);
  v12 = 6;
  if (v10)
  {
    v11 = v10;

    sub_1A870CCE0(&qword_1EB304660);
    sub_1A8806454(&qword_1EB3046A0);
    sub_1A88C9228();
  }

  LOBYTE(v11) = 7;
  sub_1A88C91D8();
  LOBYTE(v11) = 8;
  sub_1A88C91D8();
  LOBYTE(v11) = 9;
  sub_1A88C91D8();
  LOBYTE(v11) = 10;
  sub_1A88C91D8();
  LOBYTE(v11) = 11;
  sub_1A88C91D8();
  LOBYTE(v11) = 12;
  sub_1A88C91D8();
  LOBYTE(v11) = 13;
  sub_1A88C91D8();
  LOBYTE(v11) = 14;
  sub_1A88C91D8();
  LOBYTE(v11) = 15;
  sub_1A88C91D8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A880408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8805874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88040C0(uint64_t a1)
{
  v2 = sub_1A8804CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88040FC(uint64_t a1)
{
  v2 = sub_1A8804CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A8804138@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A8805D70(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_1A88041B8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v77 = MEMORY[0x1E69E7CC8];
  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v3;
  v4 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v75 = v4;
    *&v74 = v6;
    *(&v74 + 1) = v5;
    sub_1A85E99B0(&v74, v73);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v76);
    v77 = v2;
  }

  else
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v8;
  v9 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v10 = v1[3];
  if (v10)
  {
    v11 = v1[2];
    v75 = v9;
    *&v74 = v11;
    *(&v74 + 1) = v10;
    sub_1A85E99B0(&v74, v73);

    v12 = v77;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v13);
    sub_1A8717360(v76);
    v77 = v12;
  }

  else
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v14;
  sub_1A88C8D88();
  v15 = MEMORY[0x1E69E63B0];
  if (v1[5])
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v16 = v1[4];
    v75 = MEMORY[0x1E69E63B0];
    *&v74 = v16;
    sub_1A85E99B0(&v74, v73);
    v17 = v77;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v18);
    sub_1A8717360(v76);
    v77 = v17;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v19;
  sub_1A88C8D88();
  if (v1[7])
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v20 = v1[6];
    v75 = v15;
    *&v74 = v20;
    sub_1A85E99B0(&v74, v73);
    v21 = v77;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v22);
    sub_1A8717360(v76);
    v77 = v21;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v23;
  sub_1A88C8D88();
  if (v1[9])
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v24 = v1[8];
    v75 = v15;
    *&v74 = v24;
    sub_1A85E99B0(&v74, v73);
    v25 = v77;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v26);
    sub_1A8717360(v76);
    v77 = v25;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v27;
  v28 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v29 = v1[11];
  if (v29)
  {
    v30 = v1[10];
    v75 = v28;
    *&v74 = v30;
    *(&v74 + 1) = v29;
    sub_1A85E99B0(&v74, v73);

    v31 = v77;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v32);
    sub_1A8717360(v76);
    v77 = v31;
  }

  else
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
    v31 = v77;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v33;
  sub_1A88C8D88();
  v34 = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  v75 = sub_1A870CCE0(&qword_1EB303320);
  *&v74 = v34;
  sub_1A85E99B0(&v74, v73);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC424(v73, v76, v35);
  sub_1A8717360(v76);
  v77 = v31;
  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v36;
  sub_1A88C8D88();
  v37 = *(v1 + 104);
  v38 = MEMORY[0x1E69E6370];
  if (v37 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = MEMORY[0x1E69E6370];
    LOBYTE(v74) = v37;
    sub_1A85E99B0(&v74, v73);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v39);
    sub_1A8717360(v76);
    v77 = v31;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v40;
  sub_1A88C8D88();
  v41 = *(v1 + 105);
  if (v41 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v41;
    sub_1A85E99B0(&v74, v73);
    v42 = v77;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v43);
    sub_1A8717360(v76);
    v77 = v42;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v44;
  sub_1A88C8D88();
  v45 = *(v1 + 106);
  if (v45 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v45;
    sub_1A85E99B0(&v74, v73);
    v46 = v77;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v47);
    sub_1A8717360(v76);
    v77 = v46;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v48;
  sub_1A88C8D88();
  v49 = *(v1 + 107);
  if (v49 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v49;
    sub_1A85E99B0(&v74, v73);
    v50 = v77;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v51);
    sub_1A8717360(v76);
    v77 = v50;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v52;
  sub_1A88C8D88();
  v53 = *(v1 + 108);
  if (v53 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v53;
    sub_1A85E99B0(&v74, v73);
    v54 = v77;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v55);
    sub_1A8717360(v76);
    v77 = v54;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v56;
  sub_1A88C8D88();
  v57 = *(v1 + 109);
  if (v57 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v57;
    sub_1A85E99B0(&v74, v73);
    v58 = v77;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v59);
    sub_1A8717360(v76);
    v77 = v58;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v60;
  sub_1A88C8D88();
  v61 = *(v1 + 110);
  if (v61 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v61;
    sub_1A85E99B0(&v74, v73);
    v62 = v77;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v63);
    sub_1A8717360(v76);
    v77 = v62;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v64;
  sub_1A88C8D88();
  v65 = *(v1 + 111);
  if (v65 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v65;
    sub_1A85E99B0(&v74, v73);
    v66 = v77;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v67);
    sub_1A8717360(v76);
    v77 = v66;
  }

  *&v74 = sub_1A88C82E8();
  *(&v74 + 1) = v68;
  sub_1A88C8D88();
  v69 = *(v1 + 112);
  if (v69 == 2)
  {
    sub_1A88BEFF8(v76, &v74);
    sub_1A860169C(&v74);
    sub_1A8717360(v76);
    return v77;
  }

  else
  {
    v75 = v38;
    LOBYTE(v74) = v69;
    sub_1A85E99B0(&v74, v73);
    v71 = v77;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v73, v76, v72);
    sub_1A8717360(v76);
    return v71;
  }
}

double sub_1A8804C94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A8804D4C(a1, v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

unint64_t sub_1A8804CF8()
{
  result = qword_1EB3066D0;
  if (!qword_1EB3066D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3066D0);
  }

  return result;
}

uint64_t sub_1A8804D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = sub_1A88C82E8();
  v100 = v4;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v5 = sub_1A8602F10(v98), (v6 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v5, &v99);
    sub_1A8717360(v98);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v96;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v97;
    }

    else
    {
      v9 = 0;
    }

    v94 = v9;
    v95 = v8;
  }

  else
  {
    sub_1A8717360(v98);
    v94 = 0;
    v95 = 0;
  }

  v99 = sub_1A88C82E8();
  v100 = v10;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v11 = sub_1A8602F10(v98), (v12 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, &v99);
    sub_1A8717360(v98);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v96;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v97;
    }

    else
    {
      v15 = 0;
    }

    v92 = v15;
    v93 = v14;
  }

  else
  {
    sub_1A8717360(v98);
    v92 = 0;
    v93 = 0;
  }

  v99 = sub_1A88C82E8();
  v100 = v16;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v17 = sub_1A8602F10(v98), (v18 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v17, &v99);
    sub_1A8717360(v98);
    v19 = swift_dynamicCast();
    v20 = v96;
    if (!v19)
    {
      v20 = 0;
    }

    v91 = v20;
    v21 = v19 ^ 1;
  }

  else
  {
    sub_1A8717360(v98);
    v91 = 0;
    v21 = 1;
  }

  v90 = v21;
  v99 = sub_1A88C82E8();
  v100 = v22;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v23 = sub_1A8602F10(v98), (v24 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v23, &v99);
    sub_1A8717360(v98);
    v25 = swift_dynamicCast();
    v26 = v96;
    if (!v25)
    {
      v26 = 0;
    }

    v89 = v26;
    v27 = v25 ^ 1;
  }

  else
  {
    sub_1A8717360(v98);
    v89 = 0;
    v27 = 1;
  }

  v88 = v27;
  v99 = sub_1A88C82E8();
  v100 = v28;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v29 = sub_1A8602F10(v98), (v30 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v29, &v99);
    sub_1A8717360(v98);
    v31 = swift_dynamicCast();
    v32 = v96;
    if (!v31)
    {
      v32 = 0;
    }

    v87 = v32;
    v33 = v31 ^ 1;
  }

  else
  {
    sub_1A8717360(v98);
    v87 = 0;
    v33 = 1;
  }

  v99 = sub_1A88C82E8();
  v100 = v34;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v35 = sub_1A8602F10(v98), (v36 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v35, &v99);
    sub_1A8717360(v98);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v96;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v97;
    }

    else
    {
      v39 = 0;
    }

    v85 = v39;
    v86 = v38;
  }

  else
  {
    sub_1A8717360(v98);
    v85 = 0;
    v86 = 0;
  }

  v99 = sub_1A88C82E8();
  v100 = v40;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v41 = sub_1A8602F10(v98), (v42 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v41, &v99);
    sub_1A8717360(v98);
    sub_1A870CCE0(&qword_1EB303320);
    v43 = swift_dynamicCast();
    v44 = v96;
    if (!v43)
    {
      v44 = 0;
    }

    v84 = v44;
  }

  else
  {
    sub_1A8717360(v98);
    v84 = 0;
  }

  v99 = sub_1A88C82E8();
  v100 = v45;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v46 = sub_1A8602F10(v98), (v47 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v46, &v99);
    sub_1A8717360(v98);
    v48 = swift_dynamicCast();
    v49 = v96;
    if (!v48)
    {
      v49 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v49 = 2;
  }

  v83 = v49;
  v99 = sub_1A88C82E8();
  v100 = v50;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v51 = sub_1A8602F10(v98), (v52 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v51, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v53 = v96;
    }

    else
    {
      v53 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v53 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v54;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v55 = sub_1A8602F10(v98), (v56 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v55, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v57 = v96;
    }

    else
    {
      v57 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v57 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v58;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v59 = sub_1A8602F10(v98), (v60 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v59, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v61 = v96;
    }

    else
    {
      v61 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v61 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v62;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v63 = sub_1A8602F10(v98), (v64 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v63, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v65 = v96;
    }

    else
    {
      v65 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v65 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v66;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v67 = sub_1A8602F10(v98), (v68 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v67, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v69 = v96;
    }

    else
    {
      v69 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v69 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v70;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v71 = sub_1A8602F10(v98), (v72 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v71, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v73 = v96;
    }

    else
    {
      v73 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v73 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v74;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v75 = sub_1A8602F10(v98), (v76 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v75, &v99);
    sub_1A8717360(v98);
    if (swift_dynamicCast())
    {
      v77 = v96;
    }

    else
    {
      v77 = 2;
    }
  }

  else
  {
    sub_1A8717360(v98);
    v77 = 2;
  }

  v99 = sub_1A88C82E8();
  v100 = v78;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v79 = sub_1A8602F10(v98), (v80 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v79, &v99);
    sub_1A8717360(v98);

    result = swift_dynamicCast();
    v82 = v96;
    if (!result)
    {
      v82 = 2;
    }
  }

  else
  {

    result = sub_1A8717360(v98);
    v82 = 2;
  }

  *a2 = v95;
  *(a2 + 8) = v94;
  *(a2 + 16) = v93;
  *(a2 + 24) = v92;
  *(a2 + 32) = v91;
  *(a2 + 40) = v90;
  *(a2 + 48) = v89;
  *(a2 + 56) = v88;
  *(a2 + 64) = v87;
  *(a2 + 72) = v33;
  *(a2 + 80) = v86;
  *(a2 + 88) = v85;
  *(a2 + 96) = v84;
  *(a2 + 104) = v83;
  *(a2 + 105) = v53;
  *(a2 + 106) = v57;
  *(a2 + 107) = v61;
  *(a2 + 108) = v65;
  *(a2 + 109) = v69;
  *(a2 + 110) = v73;
  *(a2 + 111) = v77;
  *(a2 + 112) = v82;
  return result;
}

uint64_t sub_1A8805874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69537265646E6573 && a2 == 0xEB0000000044496DLL || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891CEB0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891CED0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891CEF0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891CF10 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A891CF30 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A891CF60 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A891CF80 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A891CFA0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A891CFD0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D000 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D020 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A891D040 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891D060 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A891D080 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1A8805D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = sub_1A870CCE0(&qword_1EB3066D8);
  v5 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v7 = &v29 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A8804CF8();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    v8 = v5;
    v47 = a2;
    LOBYTE(v56[0]) = 0;
    v10 = sub_1A88C9058();
    v46 = v11;
    LOBYTE(v56[0]) = 1;
    v12 = sub_1A88C9058();
    v45 = v13;
    v43 = v12;
    LOBYTE(v56[0]) = 2;
    v42 = sub_1A88C9078();
    v83 = v14 & 1;
    LOBYTE(v56[0]) = 3;
    v41 = sub_1A88C9078();
    v81 = v15 & 1;
    LOBYTE(v56[0]) = 4;
    v16 = sub_1A88C9078();
    v39 = v10;
    v40 = v16;
    v79 = v17 & 1;
    LOBYTE(v56[0]) = 5;
    v38 = sub_1A88C9058();
    v44 = v18;
    sub_1A870CCE0(&qword_1EB304660);
    LOBYTE(v48) = 6;
    sub_1A8806454(&qword_1EB304668);
    sub_1A88C90B8();
    if (v56[0] == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v56[0];
    }

    LOBYTE(v56[0]) = 7;
    v37 = sub_1A88C9068();
    LOBYTE(v56[0]) = 8;
    v36 = sub_1A88C9068();
    LOBYTE(v56[0]) = 9;
    v20 = sub_1A88C9068();
    LOBYTE(v56[0]) = 10;
    v21 = sub_1A88C9068();
    LOBYTE(v56[0]) = 11;
    v35 = sub_1A88C9068();
    LOBYTE(v56[0]) = 12;
    v34 = sub_1A88C9068();
    LOBYTE(v56[0]) = 13;
    v33 = sub_1A88C9068();
    LOBYTE(v56[0]) = 14;
    v32 = sub_1A88C9068();
    v77 = 15;
    v31 = sub_1A88C9068();
    (*(v8 + 8))(v7, v84);
    v22 = v39;
    v23 = v45;
    *&v48 = v39;
    *(&v48 + 1) = v46;
    v24 = v43;
    *&v49 = v43;
    *(&v49 + 1) = v45;
    *&v50 = v42;
    HIDWORD(v29) = v83;
    BYTE8(v50) = v83;
    *&v51 = v41;
    v30 = v81;
    BYTE8(v51) = v81;
    *&v52 = v40;
    LODWORD(v84) = v79;
    BYTE8(v52) = v79;
    *&v53 = v38;
    *(&v53 + 1) = v44;
    *&v54 = v19;
    BYTE8(v54) = v37;
    BYTE9(v54) = v36;
    BYTE10(v54) = v20;
    BYTE11(v54) = v21;
    BYTE12(v54) = v35;
    BYTE13(v54) = v34;
    BYTE14(v54) = v33;
    HIBYTE(v54) = v32;
    v55 = v31;
    sub_1A88064A4(&v48, v56);
    sub_1A85F1084(a1);
    v56[0] = v22;
    v56[1] = v46;
    v56[2] = v24;
    v56[3] = v23;
    v56[4] = v42;
    v57 = BYTE4(v29);
    *v58 = *v82;
    *&v58[3] = *&v82[3];
    v59 = v41;
    v60 = v30;
    *v61 = *v80;
    *&v61[3] = *&v80[3];
    v62 = v40;
    v63 = v84;
    *&v64[3] = *&v78[3];
    *v64 = *v78;
    v65 = v38;
    v66 = v44;
    v67 = v19;
    v68 = v37;
    v69 = v36;
    v70 = v20;
    v71 = v21;
    v72 = v35;
    v73 = v34;
    v74 = v33;
    v75 = v32;
    v76 = v31;
    result = sub_1A88064DC(v56);
    v25 = v53;
    v26 = v47;
    *(v47 + 64) = v52;
    *(v26 + 80) = v25;
    *(v26 + 96) = v54;
    *(v26 + 112) = v55;
    v27 = v49;
    *v26 = v48;
    *(v26 + 16) = v27;
    v28 = v51;
    *(v26 + 32) = v50;
    *(v26 + 48) = v28;
  }

  return result;
}

uint64_t sub_1A8806454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB304660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentTranscoderUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentTranscoderUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A8806660()
{
  result = qword_1EB3066E0;
  if (!qword_1EB3066E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3066E0);
  }

  return result;
}

unint64_t sub_1A88066B8()
{
  result = qword_1EB3066E8;
  if (!qword_1EB3066E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3066E8);
  }

  return result;
}

unint64_t sub_1A8806710()
{
  result = qword_1EB3066F0;
  if (!qword_1EB3066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3066F0);
  }

  return result;
}

void Date.init(nanosecondTimeIntervalSinceReferenceDate:)(double a1)
{
  v1 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
  if (v1)
  {
    v2 = v1;
    sub_1A88C7448();
  }

  else
  {
    __break(1u);
  }
}

id Date.nanosecondTimeIntervalSinceReferenceDate.getter()
{
  v0 = sub_1A88C73D8();
  v1 = [v0 __im_nanosecondTimeInterval];

  return v1;
}

id Date.nanosecondTimeIntervalSinceEpochTime.getter()
{
  v0 = sub_1A88C73D8();
  v1 = [v0 __im_nanosecondTimeIntervalSinceEpochTime];

  return v1;
}

uint64_t sub_1A8806880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x706D617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A8806904(uint64_t a1)
{
  v2 = sub_1A8806DF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8806940(uint64_t a1)
{
  v2 = sub_1A8806DF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880697C()
{
  v0 = qword_1EB3066F8;

  return v0;
}

void sub_1A88069B4(void *a1)
{
  v2 = sub_1A88C82A8();
  [a1 databaseUpdated_];
}

uint64_t sub_1A8806A10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8806DF0();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9108();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A8806B8C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB306728);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8806DF0();
  sub_1A88C95C8();
  sub_1A88C9278();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A8806CC8(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B228();
  result = sub_1A877B1D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8806CF8(uint64_t a1)
{
  result = sub_1A8806D20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8806D20()
{
  result = qword_1EB306708;
  if (!qword_1EB306708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306708);
  }

  return result;
}

unint64_t sub_1A8806D74(uint64_t a1)
{
  result = sub_1A8806D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8806D9C()
{
  result = qword_1EB306710;
  if (!qword_1EB306710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306710);
  }

  return result;
}

unint64_t sub_1A8806DF0()
{
  result = qword_1EB306720;
  if (!qword_1EB306720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306720);
  }

  return result;
}

unint64_t sub_1A8806E58()
{
  result = qword_1EB306730;
  if (!qword_1EB306730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306730);
  }

  return result;
}

unint64_t sub_1A8806EB0()
{
  result = qword_1EB306738;
  if (!qword_1EB306738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306738);
  }

  return result;
}

unint64_t sub_1A8806F08()
{
  result = qword_1EB306740;
  if (!qword_1EB306740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306740);
  }

  return result;
}

uint64_t sub_1A8806F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_1A870CCE0(&qword_1EB306788);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1A870C278(a1, a1[3]);
  sub_1A88078B4();
  sub_1A88C95C8();
  v15 = a2;
  v14 = 0;
  sub_1A870CCE0(&qword_1EB306778);
  sub_1A8807908(&qword_1EB306790);
  sub_1A88C92C8();
  if (v4)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v13;
  v14 = 1;
  sub_1A88C92C8();
  v15 = a4;
  v14 = 2;
  sub_1A88C92C8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A8807180()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (v2 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1A88071D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8807500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88071FC(uint64_t a1)
{
  v2 = sub_1A88078B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8807238(uint64_t a1)
{
  v2 = sub_1A88078B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8807274()
{
  v0 = qword_1EB306748;

  return v0;
}

void sub_1A88072AC(void *a1)
{
  v2 = sub_1A88C8188();
  v3 = sub_1A88C8188();
  v4 = sub_1A88C8188();
  [a1 updatePendingNicknameUpdates:v2 handledNicknames:v3 archivedNicknames:v4];
}

uint64_t sub_1A8807388@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8807624(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A88073D8(uint64_t a1)
{
  *(a1 + 8) = sub_1A877C530();
  result = sub_1A877C4DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8807408(uint64_t a1)
{
  result = sub_1A8807430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8807430()
{
  result = qword_1EB306758;
  if (!qword_1EB306758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306758);
  }

  return result;
}

unint64_t sub_1A8807484(uint64_t a1)
{
  result = sub_1A88074AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88074AC()
{
  result = qword_1EB306760;
  if (!qword_1EB306760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306760);
  }

  return result;
}

uint64_t sub_1A8807500(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001A891D0F0 == a2;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891D110 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891D130 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8807624(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306768);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1A870C278(a1, a1[3]);
  sub_1A88078B4();
  sub_1A88C95A8();
  if (v1)
  {
    return sub_1A85F1084(a1);
  }

  sub_1A870CCE0(&qword_1EB306778);
  v9 = 0;
  sub_1A8807908(&qword_1EB306780);
  sub_1A88C9158();
  v8 = v10;
  v9 = 1;
  sub_1A88C9158();
  v9 = 2;
  sub_1A88C9158();
  (*(v4 + 8))(v6, v3);
  sub_1A85F1084(a1);
  return v8;
}

unint64_t sub_1A88078B4()
{
  result = qword_1EB306770;
  if (!qword_1EB306770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306770);
  }

  return result;
}

uint64_t sub_1A8807908(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB306778);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A880796C()
{
  result = qword_1EB306798;
  if (!qword_1EB306798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306798);
  }

  return result;
}

unint64_t sub_1A88079C4()
{
  result = qword_1EB3067A0;
  if (!qword_1EB3067A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067A0);
  }

  return result;
}

unint64_t sub_1A8807A1C()
{
  result = qword_1EB3067A8;
  if (!qword_1EB3067A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067A8);
  }

  return result;
}

uint64_t sub_1A8807A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614464656C696166 && a2 == 0xEA00000000006574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A8807B2C(uint64_t a1)
{
  v2 = sub_1A8807F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8807B68(uint64_t a1)
{
  v2 = sub_1A8807F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8807BA4()
{
  v0 = qword_1EB3067B0;

  return v0;
}

uint64_t sub_1A8807BDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3067D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8807F9C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9178();
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1A8807D3C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3067E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8807F9C();
  sub_1A88C95C8();
  sub_1A88C92E8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A8807E74(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B618();
  result = sub_1A877B5C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8807EA4(uint64_t a1)
{
  result = sub_1A8807ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8807ECC()
{
  result = qword_1EB3067C0;
  if (!qword_1EB3067C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067C0);
  }

  return result;
}

unint64_t sub_1A8807F20(uint64_t a1)
{
  result = sub_1A8807F48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8807F48()
{
  result = qword_1EB3067C8;
  if (!qword_1EB3067C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067C8);
  }

  return result;
}

unint64_t sub_1A8807F9C()
{
  result = qword_1EB3067D8;
  if (!qword_1EB3067D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067D8);
  }

  return result;
}

unint64_t sub_1A8808004()
{
  result = qword_1EB3067E8;
  if (!qword_1EB3067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067E8);
  }

  return result;
}

unint64_t sub_1A880805C()
{
  result = qword_1EB3067F0;
  if (!qword_1EB3067F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067F0);
  }

  return result;
}

unint64_t sub_1A88080B4()
{
  result = qword_1EB3067F8;
  if (!qword_1EB3067F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3067F8);
  }

  return result;
}

uint64_t type metadata accessor for MoveMessagesInChatsWithGUIDsRequest()
{
  result = qword_1EB306840;
  if (!qword_1EB306840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A880819C()
{
  sub_1A8808228();
  if (v0 <= 0x3F)
  {
    sub_1A88C7478();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A8808228()
{
  if (!qword_1EB303530)
  {
    v0 = sub_1A88C86B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB303530);
    }
  }
}

uint64_t sub_1A8808288(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A88082A8, 0, 0);
}

uint64_t sub_1A88082A8()
{
  v1 = v0;
  v2 = v0[21];
  v14 = *(v2 + 24);
  v13 = sub_1A88C82A8();
  v0[22] = v13;
  v12 = sub_1A88C85E8();
  v0[23] = v12;
  v3 = sub_1A88C85E8();
  v0[24] = v3;
  if (*(v2 + 56))
  {
    v4 = sub_1A88C82A8();
  }

  else
  {
    v4 = 0;
  }

  v0[25] = v4;
  v5 = v0[21];
  if (v5[9])
  {
    v6 = sub_1A88C82A8();
    v5 = v0[21];
  }

  else
  {
    v6 = 0;
  }

  v0[26] = v6;
  if (v5[11])
  {
    v7 = sub_1A88C82A8();
    v5 = v0[21];
  }

  else
  {
    v7 = 0;
  }

  v0[27] = v7;
  v8 = v0[20];
  v9 = v5[5];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A88084B4;
  v10 = swift_continuation_init();
  v1[17] = sub_1A870CCE0(&qword_1EB306978);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A8808638;
  v1[13] = &unk_1F1BB27E0;
  v1[14] = v10;
  [v8 loadHistoryForChatWithGUID:v13 chatIdentifiers:v12 style:v14 services:v3 limit:v9 beforeGUID:v4 afterGUID:v6 threadIdentifier:v7 reply:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1A88084B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8808594, 0, 0);
}

uint64_t sub_1A8808594()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

uint64_t sub_1A8808638(uint64_t a1)
{
  v1 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  sub_1A870CCE0(&qword_1EB303320);
  v2 = sub_1A88C85F8();
  v3 = sub_1A88C85F8();
  v4 = *(*(v1 + 64) + 40);
  *v4 = v2;
  v4[1] = v3;

  return swift_continuation_resume();
}

uint64_t sub_1A88086D8(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB306A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D6E8();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C92C8();
    LOBYTE(v11) = 2;
    sub_1A88C92F8();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_1A88C92C8();
    LOBYTE(v11) = 4;
    sub_1A88C92A8();
    LOBYTE(v11) = 5;
    sub_1A88C91C8();
    LOBYTE(v11) = 6;
    sub_1A88C91C8();
    LOBYTE(v11) = 7;
    sub_1A88C91C8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A8808990()
{
  v1 = *v0;
  v2 = 1684632935;
  v3 = 0x4955477265746661;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x74696D696CLL;
  if (v1 != 4)
  {
    v4 = 0x554765726F666562;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C797473;
  if (v1 != 2)
  {
    v5 = 0x7365636976726573;
  }

  if (*v0)
  {
    v2 = 0x6E65644974616863;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8808A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A880BA6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8808ABC(uint64_t a1)
{
  v2 = sub_1A880D6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8808AF8(uint64_t a1)
{
  v2 = sub_1A880D6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8808B34()
{
  v0 = qword_1EB306800;

  return v0;
}

double sub_1A8808B6C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A880BD18(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_1A8808BFC(uint64_t a1)
{
  result = sub_1A8808C24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8808C24()
{
  result = qword_1EB306850;
  if (!qword_1EB306850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306850);
  }

  return result;
}

uint64_t sub_1A8808C78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A870CCE0(&qword_1EB306960);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A880C4E8();
  sub_1A88C95C8();
  v14 = a2;
  v13 = 0;
  sub_1A870CCE0(&qword_1EB306940);
  sub_1A85FB520(&qword_1EB306968, &qword_1EB306940);
  sub_1A88C92C8();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1A870CCE0(&qword_1EB306950);
    sub_1A85FB520(&qword_1EB306970, &qword_1EB306950);
    sub_1A88C92C8();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1A8808E90()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1A8808ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001A891D240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D260 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A8808FB0(uint64_t a1)
{
  v2 = sub_1A880C4E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8808FEC(uint64_t a1)
{
  v2 = sub_1A880C4E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8809028@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1A8809064@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303458);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A88E14F0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A88E14F0;
  result = sub_1A8602DD4(v3);
  *(v4 + 32) = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A880910C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A880C278(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A8809154(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB306A00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A880D5D4();
  sub_1A88C95C8();
  v11 = *v3;
  v10[7] = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v2)
  {
    type metadata accessor for MoveMessagesInChatsWithGUIDsRequest();
    v10[6] = 1;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C92C8();
    v10[5] = 2;
    sub_1A88C9278();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8809370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1A870CCE0(&qword_1EB3069F0);
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v22 - v5;
  v7 = type metadata accessor for MoveMessagesInChatsWithGUIDsRequest();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A870C278(a1, a1[3]);
  sub_1A880D5D4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v25 = v7;
  v26 = v4;
  v10 = v9;
  sub_1A870CCE0(&qword_1EB303100);
  v31 = 0;
  sub_1A8716048(&qword_1EB303108);
  v11 = v28;
  sub_1A88C9158();
  v22[1] = v32;
  v24 = v10;
  *v10 = v32;
  v12 = sub_1A88C7478();
  v22[2] = v22;
  v23 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 1;
  sub_1A8720F18(&qword_1EB303510);
  sub_1A88C9158();
  v15 = v26;
  (*(v23 + 32))(&v24[*(v25 + 20)], v14, v12);
  v29 = 2;
  v16 = sub_1A88C9108();
  v18 = v17;
  (*(v15 + 8))(v6, v11);
  v19 = v24;
  v20 = &v24[*(v25 + 24)];
  *v20 = v16;
  v20[1] = v18;
  sub_1A880D628(v19, v27);
  sub_1A85F1084(a1);
  return sub_1A880D68C(v19);
}

uint64_t sub_1A8809780()
{
  v1 = 0x61446574656C6564;
  if (*v0 != 1)
  {
    v1 = 0x44497972657571;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A88097E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A880C5E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A880980C(uint64_t a1)
{
  v2 = sub_1A880D5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8809848(uint64_t a1)
{
  v2 = sub_1A880D5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8809884()
{
  v0 = qword_1EB306810;

  return v0;
}

uint64_t sub_1A88098BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A88098E0, 0, 0);
}

uint64_t sub_1A88098E0()
{
  v1 = *(v0 + 16);
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C73D8();
  v4 = sub_1A88C82A8();
  [v1 moveMessagesInChatsWithGUIDsToRecentlyDeleted:v2 deleteDate:v3 queryID:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A88099E4(uint64_t a1)
{
  *(a1 + 8) = sub_1A880D538(&qword_1EB3050B8, type metadata accessor for MoveMessagesInChatsWithGUIDsRequest);
  result = sub_1A880D538(&qword_1EB3050B0, type metadata accessor for MoveMessagesInChatsWithGUIDsRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A8809A68(uint64_t a1)
{
  result = sub_1A880D538(&qword_1EB306858, type metadata accessor for MoveMessagesInChatsWithGUIDsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8809AC0(uint64_t a1)
{
  v2 = sub_1A880C53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8809AFC(uint64_t a1)
{
  v2 = sub_1A880C53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8809B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44497972657571 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A8809C1C(uint64_t a1)
{
  v2 = sub_1A880D580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8809C58(uint64_t a1)
{
  v2 = sub_1A880D580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8809C94()
{
  v0 = qword_1EB306820;

  return v0;
}

uint64_t sub_1A8809CCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3069D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D580();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9108();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A8809E48(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3069E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D580();
  sub_1A88C95C8();
  sub_1A88C9278();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A8809FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8809FEC(uint64_t a1)
{
  result = sub_1A880A014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880A014()
{
  result = qword_1EB306860;
  if (!qword_1EB306860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306860);
  }

  return result;
}

uint64_t sub_1A880A068(uint64_t a1)
{
  v2 = sub_1A880C590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A880A0A4(uint64_t a1)
{
  v2 = sub_1A880C590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880A124(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_1A870CCE0(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1A870C278(a1, a1[3]);
  a6();
  sub_1A88C95C8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A880A244(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A880A264, 0, 0);
}

uint64_t sub_1A880A264()
{
  v1 = v0[22];
  v13 = sub_1A88C82A8();
  v0[23] = v13;
  v12 = sub_1A88C82A8();
  v0[24] = v12;
  v2 = sub_1A88C85E8();
  v0[25] = v2;
  v3 = sub_1A88C85E8();
  v0[26] = v3;
  if (*(v1 + 80))
  {
    v4 = sub_1A88C82A8();
  }

  else
  {
    v4 = 0;
  }

  v0[27] = v4;
  v6 = v0[21];
  v5 = v0[22];
  v7 = *(v5 + 40);
  v8 = *(v5 + 64);
  v11 = *(v5 + 56);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A880A430;
  v9 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB3069B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A880A5C8;
  v0[13] = &unk_1F1BB2808;
  v0[14] = v9;
  [v6 loadPagedHistoryAroundMessageWithGUID:v13 chatGUID:v12 chatIdentifiers:v2 style:v7 services:v3 numberOfMessagesBefore:v11 numberOfMessagesAfter:v8 threadIdentifier:v4 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A880A430()
{

  return MEMORY[0x1EEE6DFA0](sub_1A880A510, 0, 0);
}

uint64_t sub_1A880A510()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 161);

  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v6, v5, v9 | v7);
}

uint64_t sub_1A880A5C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v7 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  sub_1A870CCE0(&qword_1EB303320);
  v8 = sub_1A88C85F8();
  v9 = sub_1A88C85F8();
  v10 = *(*(v7 + 64) + 40);
  *v10 = v8;
  *(v10 + 8) = v9;
  *(v10 + 16) = a4;
  *(v10 + 17) = a5;

  return swift_continuation_resume();
}

uint64_t sub_1A880A680(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3069D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D4B4();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1A88C9278();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C92C8();
    LOBYTE(v11) = *(v3 + 40);
    HIBYTE(v10) = 3;
    type metadata accessor for IMChatStyle(0);
    sub_1A880D538(&qword_1EB305B10, type metadata accessor for IMChatStyle);
    sub_1A88C92C8();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 4;
    sub_1A88C92C8();
    LOBYTE(v11) = 5;
    sub_1A88C92A8();
    LOBYTE(v11) = 6;
    sub_1A88C92A8();
    LOBYTE(v11) = 7;
    sub_1A88C91C8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A880A9A4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000016;
    if (v1 == 4)
    {
      v6 = 0x7365636976726573;
    }

    if (*v0 <= 5u)
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
    v2 = 0x476567617373656DLL;
    v3 = 0x6E65644974616863;
    if (v1 != 2)
    {
      v3 = 0x6C79745374616863;
    }

    if (*v0)
    {
      v2 = 0x4449554774616863;
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
}

uint64_t sub_1A880AAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A880C70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A880AAE8(uint64_t a1)
{
  v2 = sub_1A880D4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A880AB24(uint64_t a1)
{
  v2 = sub_1A880D4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880AB60()
{
  v0 = qword_1EB306830;

  return v0;
}

double sub_1A880AB98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A880C9C0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1A880AC38(uint64_t a1)
{
  result = sub_1A880AC60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880AC60()
{
  result = qword_1EB306868;
  if (!qword_1EB306868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306868);
  }

  return result;
}

unint64_t sub_1A880ACFC()
{
  result = qword_1EB306880;
  if (!qword_1EB306880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306880);
  }

  return result;
}

unint64_t sub_1A880AD50(uint64_t a1)
{
  result = sub_1A880AD78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880AD78()
{
  result = qword_1EB306888;
  if (!qword_1EB306888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306888);
  }

  return result;
}

uint64_t sub_1A880ADCC(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3069B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D460();
  sub_1A88C95C8();
  v13 = a2;
  v12 = 0;
  sub_1A870CCE0(&qword_1EB306940);
  sub_1A85FB520(&qword_1EB306968, &qword_1EB306940);
  sub_1A88C92C8();
  if (!v3)
  {
    v13 = v11;
    v12 = 1;
    sub_1A870CCE0(&qword_1EB306950);
    sub_1A85FB520(&qword_1EB306970, &qword_1EB306950);
    sub_1A88C92C8();
    LOBYTE(v13) = 2;
    sub_1A88C9288();
    LOBYTE(v13) = 3;
    sub_1A88C9288();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A880B040()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD00000000000001ALL;
  if (!*v0)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A880B0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A880CFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A880B0D8(uint64_t a1)
{
  v2 = sub_1A880D460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A880B114(uint64_t a1)
{
  v2 = sub_1A880D460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880B150@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

unint64_t sub_1A880B19C@<X0>(uint64_t a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303458);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A88E14F0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A88E14F0;
  result = sub_1A8602DD4(v3);
  *(v4 + 32) = result;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_1A880B248(uint64_t a1)
{
  result = sub_1A880B270();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B270()
{
  result = qword_1EB306890;
  if (!qword_1EB306890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306890);
  }

  return result;
}

unint64_t sub_1A880B2C4(uint64_t a1)
{
  result = sub_1A880B2EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B2EC()
{
  result = qword_1EB306898;
  if (!qword_1EB306898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306898);
  }

  return result;
}

uint64_t sub_1A880B36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A880D144(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

unint64_t sub_1A880B424()
{
  result = qword_1EB3068B0;
  if (!qword_1EB3068B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068B0);
  }

  return result;
}

unint64_t sub_1A880B478(uint64_t a1)
{
  result = sub_1A880B4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B4A0()
{
  result = qword_1EB3068B8;
  if (!qword_1EB3068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068B8);
  }

  return result;
}

unint64_t sub_1A880B4F4(uint64_t a1)
{
  result = sub_1A880B51C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B51C()
{
  result = qword_1EB3068C0;
  if (!qword_1EB3068C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068C0);
  }

  return result;
}

unint64_t sub_1A880B570(uint64_t a1)
{
  result = sub_1A880B598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B598()
{
  result = qword_1EB3068C8;
  if (!qword_1EB3068C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068C8);
  }

  return result;
}

unint64_t sub_1A880B660()
{
  result = qword_1EB3068E0;
  if (!qword_1EB3068E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068E0);
  }

  return result;
}

uint64_t sub_1A880B6B4(uint64_t a1)
{
  result = sub_1A880D538(&qword_1EB3068E8, type metadata accessor for MoveMessagesInChatsWithGUIDsRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B70C(uint64_t a1)
{
  result = sub_1A880B734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B734()
{
  result = qword_1EB3068F0;
  if (!qword_1EB3068F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068F0);
  }

  return result;
}

unint64_t sub_1A880B788(uint64_t a1)
{
  result = sub_1A880B7B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B7B0()
{
  result = qword_1EB3068F8;
  if (!qword_1EB3068F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3068F8);
  }

  return result;
}

unint64_t sub_1A880B878()
{
  result = qword_1EB306910;
  if (!qword_1EB306910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306910);
  }

  return result;
}

unint64_t sub_1A880B8CC(uint64_t a1)
{
  result = sub_1A880B8F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B8F4()
{
  result = qword_1EB306918;
  if (!qword_1EB306918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306918);
  }

  return result;
}

unint64_t sub_1A880B948(uint64_t a1)
{
  result = sub_1A880B970();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B970()
{
  result = qword_1EB306920;
  if (!qword_1EB306920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306920);
  }

  return result;
}

unint64_t sub_1A880B9C4(uint64_t a1)
{
  result = sub_1A880B9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880B9EC()
{
  result = qword_1EB306928;
  if (!qword_1EB306928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306928);
  }

  return result;
}

uint64_t sub_1A880BA6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEF73726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x554765726F666562 && a2 == 0xEA00000000004449 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4955477265746661 && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891D300 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A880BD18@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306A08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D6E8();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v9 = sub_1A88C9108();
    v36 = a2;
    *(&v37 + 1) = v10;
    *&v37 = v9;
    sub_1A870CCE0(&qword_1EB303100);
    LOBYTE(v38) = 1;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v35 = v44[0];
    LOBYTE(v44[0]) = 2;
    v54 = sub_1A88C9188();
    LOBYTE(v38) = 3;
    sub_1A88C9158();
    v11 = v44[0];
    LOBYTE(v44[0]) = 4;
    v12 = sub_1A88C9138();
    LOBYTE(v44[0]) = 5;
    v13 = sub_1A88C9058();
    v15 = v14;
    v34 = v13;
    LOBYTE(v44[0]) = 6;
    v31 = sub_1A88C9058();
    v33 = v16;
    v32 = v12;
    v55 = 7;
    v17 = sub_1A88C9058();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = v11;
    v30 = v11;
    v21 = v37;
    v38 = v37;
    v22 = *(&v37 + 1);
    v23 = v35;
    *&v39 = v35;
    v24 = v54;
    BYTE8(v39) = v54;
    *&v40 = v20;
    *(&v40 + 1) = v32;
    *&v41 = v34;
    *(&v41 + 1) = v15;
    *&v42 = v31;
    *(&v42 + 1) = v33;
    *&v43 = v17;
    *(&v43 + 1) = v19;
    sub_1A87E6730(&v38, v44);
    sub_1A85F1084(a1);
    v44[0] = v21;
    v44[1] = v22;
    v44[2] = v23;
    v45 = v24;
    v46 = v30;
    v47 = v32;
    v48 = v34;
    v49 = v15;
    v50 = v31;
    v51 = v33;
    v52 = v17;
    v53 = v19;
    result = sub_1A880D73C(v44);
    v26 = v41;
    v27 = v36;
    v36[2] = v40;
    v27[3] = v26;
    v28 = v43;
    v27[4] = v42;
    v27[5] = v28;
    v29 = v39;
    *v27 = v38;
    v27[1] = v29;
  }

  return result;
}

uint64_t sub_1A880C278(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB306930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A880C4E8();
  sub_1A88C95A8();
  sub_1A870CCE0(&qword_1EB306940);
  v9 = 0;
  sub_1A85FB520(&qword_1EB306948, &qword_1EB306940);
  sub_1A88C9158();
  v7 = v10;
  sub_1A870CCE0(&qword_1EB306950);
  v9 = 1;
  sub_1A85FB520(&qword_1EB306958, &qword_1EB306950);
  sub_1A88C9158();
  (*(v3 + 8))(v5, v2);
  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A880C4E8()
{
  result = qword_1EB306938;
  if (!qword_1EB306938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306938);
  }

  return result;
}

unint64_t sub_1A880C53C()
{
  result = qword_1EB306988;
  if (!qword_1EB306988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306988);
  }

  return result;
}

unint64_t sub_1A880C590()
{
  result = qword_1EB306998;
  if (!qword_1EB306998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306998);
  }

  return result;
}

uint64_t sub_1A880C5E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449554774616863 && a2 == 0xE900000000000073;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446574656C6564 && a2 == 0xEA00000000006574 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A880C70C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476567617373656DLL && a2 == 0xEB00000000444955;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449554774616863 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEF73726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891D2C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891D2E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891D300 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A880C9C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3069C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D4B4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v42[0]) = 0;
  v9 = sub_1A88C9108();
  v11 = v10;
  v35 = v9;
  LOBYTE(v42[0]) = 1;
  v12 = sub_1A88C9108();
  v52 = v13;
  v32 = a2;
  v33 = v12;
  v34 = v11;
  sub_1A870CCE0(&qword_1EB303100);
  LOBYTE(v36) = 2;
  v14 = sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v30 = v14;
  v31 = v42[0];
  type metadata accessor for IMChatStyle(0);
  LOBYTE(v36) = 3;
  sub_1A880D538(&qword_1EB305B00, type metadata accessor for IMChatStyle);
  sub_1A88C9158();
  v15 = LOBYTE(v42[0]);
  LOBYTE(v36) = 4;
  sub_1A88C9158();
  v29 = v15;
  v30 = v42[0];
  LOBYTE(v42[0]) = 5;
  v28 = sub_1A88C9138();
  LOBYTE(v42[0]) = 6;
  v27 = sub_1A88C9138();
  v50 = 7;
  v16 = sub_1A88C9058();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  *&v36 = v35;
  v19 = v34;
  *(&v36 + 1) = v34;
  v20 = v52;
  *&v37 = v33;
  *(&v37 + 1) = v52;
  *&v38 = v31;
  BYTE8(v38) = v29;
  *(&v38 + 9) = *v51;
  HIDWORD(v38) = *&v51[3];
  *&v39 = v30;
  *(&v39 + 1) = v28;
  v21 = v27;
  *&v40 = v27;
  *(&v40 + 1) = v16;
  v41 = v18;
  sub_1A87E8448(&v36, v42);
  sub_1A85F1084(a1);
  v42[0] = v35;
  v42[1] = v19;
  v42[2] = v33;
  v42[3] = v20;
  v42[4] = v31;
  v43 = v29;
  *v44 = *v51;
  *&v44[3] = *&v51[3];
  v45 = v30;
  v46 = v28;
  v47 = v21;
  v48 = v16;
  v49 = v18;
  result = sub_1A880D508(v42);
  v23 = v39;
  v24 = v32;
  *(v32 + 32) = v38;
  *(v24 + 48) = v23;
  *(v24 + 64) = v40;
  *(v24 + 80) = v41;
  v25 = v37;
  *v24 = v36;
  *(v24 + 16) = v25;
  return result;
}

uint64_t sub_1A880CFD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001A891D240 == a2;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D260 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891D280 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891D2A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A880D144(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3069A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A880D460();
  sub_1A88C95A8();
  sub_1A870CCE0(&qword_1EB306940);
  v9 = 0;
  sub_1A85FB520(&qword_1EB306948, &qword_1EB306940);
  sub_1A88C9158();
  v7 = v10;
  sub_1A870CCE0(&qword_1EB306950);
  v9 = 1;
  sub_1A85FB520(&qword_1EB306958, &qword_1EB306950);
  sub_1A88C9158();
  LOBYTE(v10) = 2;
  v8[2] = sub_1A88C9118();
  LOBYTE(v10) = 3;
  sub_1A88C9118();
  (*(v3 + 8))(v5, v2);
  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A880D460()
{
  result = qword_1EB3069A8;
  if (!qword_1EB3069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3069A8);
  }

  return result;
}

unint64_t sub_1A880D4B4()
{
  result = qword_1EB3069C8;
  if (!qword_1EB3069C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3069C8);
  }

  return result;
}

uint64_t sub_1A880D538(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A880D580()
{
  result = qword_1EB3069E0;
  if (!qword_1EB3069E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3069E0);
  }

  return result;
}

unint64_t sub_1A880D5D4()
{
  result = qword_1EB3069F8;
  if (!qword_1EB3069F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3069F8);
  }

  return result;
}

uint64_t sub_1A880D628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveMessagesInChatsWithGUIDsRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A880D68C(uint64_t a1)
{
  v2 = type metadata accessor for MoveMessagesInChatsWithGUIDsRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A880D6E8()
{
  result = qword_1EB306A10;
  if (!qword_1EB306A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A10);
  }

  return result;
}

__n128 sub_1A880D81C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A880D830(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1A880D878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A880D8CC()
{
  result = qword_1EB306A20;
  if (!qword_1EB306A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A20);
  }

  return result;
}

unint64_t sub_1A880D924()
{
  result = qword_1EB306A28;
  if (!qword_1EB306A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A28);
  }

  return result;
}

unint64_t sub_1A880D97C()
{
  result = qword_1EB306A30;
  if (!qword_1EB306A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A30);
  }

  return result;
}

unint64_t sub_1A880D9D4()
{
  result = qword_1EB306A38;
  if (!qword_1EB306A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A38);
  }

  return result;
}

unint64_t sub_1A880DA2C()
{
  result = qword_1EB306A40;
  if (!qword_1EB306A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A40);
  }

  return result;
}

unint64_t sub_1A880DA84()
{
  result = qword_1EB306A48;
  if (!qword_1EB306A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A48);
  }

  return result;
}

unint64_t sub_1A880DADC()
{
  result = qword_1EB306A50;
  if (!qword_1EB306A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A50);
  }

  return result;
}

unint64_t sub_1A880DB34()
{
  result = qword_1EB306A58;
  if (!qword_1EB306A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A58);
  }

  return result;
}

unint64_t sub_1A880DB8C()
{
  result = qword_1EB306A60;
  if (!qword_1EB306A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A60);
  }

  return result;
}

unint64_t sub_1A880DBE4()
{
  result = qword_1EB306A68;
  if (!qword_1EB306A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A68);
  }

  return result;
}

unint64_t sub_1A880DC3C()
{
  result = qword_1EB306A70;
  if (!qword_1EB306A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A70);
  }

  return result;
}

unint64_t sub_1A880DC94()
{
  result = qword_1EB306A78;
  if (!qword_1EB306A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A78);
  }

  return result;
}

unint64_t sub_1A880DCEC()
{
  result = qword_1EB306A80;
  if (!qword_1EB306A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A80);
  }

  return result;
}

unint64_t sub_1A880DD44()
{
  result = qword_1EB306A88;
  if (!qword_1EB306A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A88);
  }

  return result;
}

unint64_t sub_1A880DD9C()
{
  result = qword_1EB306A90;
  if (!qword_1EB306A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A90);
  }

  return result;
}

unint64_t sub_1A880DDF4()
{
  result = qword_1EB306A98;
  if (!qword_1EB306A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306A98);
  }

  return result;
}

unint64_t sub_1A880DE4C()
{
  result = qword_1EB306AA0;
  if (!qword_1EB306AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AA0);
  }

  return result;
}

unint64_t sub_1A880DEA4()
{
  result = qword_1EB306AA8;
  if (!qword_1EB306AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AA8);
  }

  return result;
}

unint64_t sub_1A880DEFC()
{
  result = qword_1EB306AB0;
  if (!qword_1EB306AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AB0);
  }

  return result;
}

unint64_t sub_1A880DF54()
{
  result = qword_1EB306AB8;
  if (!qword_1EB306AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AB8);
  }

  return result;
}

unint64_t sub_1A880DFAC()
{
  result = qword_1EB306AC0;
  if (!qword_1EB306AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AC0);
  }

  return result;
}

unint64_t sub_1A880E004()
{
  result = qword_1EB306AC8;
  if (!qword_1EB306AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AC8);
  }

  return result;
}

uint64_t sub_1A880E07C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_1A870CCE0(&qword_1EB306B10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A880E840();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C9278();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1A870CCE0(&qword_1EB306B00);
    sub_1A880E894(&qword_1EB306B18);
    sub_1A88C92C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A880E23C()
{
  if (*v0)
  {
    return 0x69747265706F7270;
  }

  else
  {
    return 1684632935;
  }
}

uint64_t sub_1A880E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEE00617461447365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

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

uint64_t sub_1A880E360(uint64_t a1)
{
  v2 = sub_1A880E840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A880E39C(uint64_t a1)
{
  v2 = sub_1A880E840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880E3D8()
{
  v0 = qword_1EB306AD0;

  return v0;
}

void sub_1A880E410(void *a1)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C8188();
  [a1 fileTransfer:v2 updatedWithProperties:v3];
}

uint64_t sub_1A880E4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A880E620(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A880E4F8(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B570();
  result = sub_1A877B51C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A880E528(uint64_t a1)
{
  result = sub_1A880E550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880E550()
{
  result = qword_1EB306AE0;
  if (!qword_1EB306AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AE0);
  }

  return result;
}

unint64_t sub_1A880E5A4(uint64_t a1)
{
  result = sub_1A880E5CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A880E5CC()
{
  result = qword_1EB306AE8;
  if (!qword_1EB306AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AE8);
  }

  return result;
}

uint64_t sub_1A880E620(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306AF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A880E840();
  sub_1A88C95A8();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1A88C9108();
    sub_1A870CCE0(&qword_1EB306B00);
    v9[15] = 1;
    sub_1A880E894(&qword_1EB306B08);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A880E840()
{
  result = qword_1EB306AF8;
  if (!qword_1EB306AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306AF8);
  }

  return result;
}

uint64_t sub_1A880E894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB306B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A880E8F8()
{
  result = qword_1EB306B20;
  if (!qword_1EB306B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306B20);
  }

  return result;
}

unint64_t sub_1A880E950()
{
  result = qword_1EB306B28;
  if (!qword_1EB306B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306B28);
  }

  return result;
}

unint64_t sub_1A880E9A8()
{
  result = qword_1EB306B30;
  if (!qword_1EB306B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306B30);
  }

  return result;
}

double sub_1A880E9FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1A8602F10(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1A85F1028(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t IMEmojiTapback.associatedMessageEmoji.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMEmojiTapback_emoji);

  return v1;
}

id IMEmojiTapback.counterpart.getter()
{
  v1 = [v0 isRemoved];
  v2 = &selRef_visibleTapbackCounterpart;
  if (!v1)
  {
    v2 = &selRef_removedTapbackCounterpart;
  }

  v3 = [v0 *v2];

  return v3;
}

id IMEmojiTapback.removedTapbackCounterpart.getter()
{
  if ([v0 isRemoved])
  {
    return v0;
  }

  v2 = objc_allocWithZone(IMEmojiTapback);
  v3 = sub_1A88C82A8();
  v4 = [v2 initWithEmoji:v3 isRemoved:1];

  return v4;
}

id IMEmojiTapback.visibleTapbackCounterpart.getter()
{
  if (![v0 isRemoved])
  {
    return v0;
  }

  v1 = objc_allocWithZone(IMEmojiTapback);
  v2 = sub_1A88C82A8();
  v3 = [v1 initWithEmoji:v2 isRemoved:0];

  return v3;
}

void __swiftcall IMEmojiTapback.init(emoji:isRemoved:)(IMEmojiTapback_optional *__return_ptr retstr, Swift::String emoji, Swift::Bool isRemoved)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1A88C82A8();

  [v4 initWithEmoji:v5 isRemoved:isRemoved];
}

id IMEmojiTapback.init(emoji:isRemoved:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (v3 + OBJC_IVAR___IMEmojiTapback_emoji);
  *v4 = a1;
  v4[1] = a2;
  if (a3)
  {
    v5 = 3006;
  }

  else
  {
    v5 = 2006;
  }

  v7.super_class = IMEmojiTapback;
  return objc_msgSendSuper2(&v7, sel_initWithAssociatedMessageType_, v5);
}

id IMEmojiTapback.init(coder:)(void *a1)
{
  v3 = sub_1A88C82A8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_1A860169C(v14);
LABEL_10:
    type metadata accessor for IMEmojiTapback();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v5 = v11;
  v6 = &v1[OBJC_IVAR___IMEmojiTapback_emoji];
  *v6 = v10;
  *(v6 + 1) = v5;
  v9.receiver = v1;
  v9.super_class = IMEmojiTapback;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {

    return v7;
  }

  return 0;
}

unint64_t type metadata accessor for IMEmojiTapback()
{
  result = qword_1EB306B40;
  if (!qword_1EB306B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB306B40);
  }

  return result;
}

void __swiftcall IMEmojiTapback.init(imRemoteObjectSerializedDictionary:)(IMEmojiTapback_optional *__return_ptr retstr, Swift::OpaquePointer_optional imRemoteObjectSerializedDictionary)
{
  if (imRemoteObjectSerializedDictionary.value._rawValue)
  {
    v2 = sub_1A88C8188();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIMRemoteObjectSerializedDictionary_];
}

id IMEmojiTapback.init(imRemoteObjectSerializedDictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_11;
  }

  v12 = 0xD000000000000016;
  v13 = 0x80000001A891D350;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v4 = sub_1A8602F10(v14), (v5 & 1) == 0))
  {
    sub_1A8717360(v14);
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v4, &v15);
  sub_1A8717360(v14);
  if (!*(&v16 + 1))
  {
LABEL_9:

LABEL_11:
    sub_1A860169C(&v15);
LABEL_12:
    type metadata accessor for IMEmojiTapback();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v6 = v14[1];
  v7 = &v2[OBJC_IVAR___IMEmojiTapback_emoji];
  *v7 = v14[0];
  *(v7 + 1) = v6;
  v8 = sub_1A88C8188();

  v11.receiver = v2;
  v11.super_class = IMEmojiTapback;
  v9 = objc_msgSendSuper2(&v11, sel_initWithIMRemoteObjectSerializedDictionary_, v8);

  if (v9)
  {

    return v9;
  }

  return 0;
}

id IMEmojiTapback.reactionString(with:isCommSafetySensitiveProvider:)()
{
  v1 = [v0 associatedMessageEmoji];
  if (!v1)
  {
    sub_1A88C82E8();
    v1 = sub_1A88C82A8();
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  return v2;
}

uint64_t IMEmojiTapback.description.getter()
{
  v8.super_class = IMEmojiTapback;
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_1A88C82E8();

  v3 = [v0 associatedMessageEmoji];
  v4 = sub_1A88C82E8();
  v6 = v5;

  MEMORY[0x1AC56ECB0](v4, v6);

  MEMORY[0x1AC56ECB0](0x203A696A6F6D6520, 0xE800000000000000);

  return v2;
}

uint64_t IMEmojiTapback.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1A87303E8(a1, v16);
  if (!v17)
  {
    sub_1A860169C(v16);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  v3 = v15;
  v14.receiver = v1;
  v14.super_class = IMEmojiTapback;
  if (!objc_msgSendSuper2(&v14, sel_isEqual_, v15))
  {

    goto LABEL_9;
  }

  v4 = [v1 associatedMessageEmoji];
  v5 = sub_1A88C82E8();
  v7 = v6;

  v8 = [v3 associatedMessageEmoji];
  v9 = sub_1A88C82E8();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A88C9398();
  }

  return v12 & 1;
}

id IMEmojiTapback.init(associatedMessageType:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithAssociatedMessageType_];
}

id _sSo14IMEmojiTapbackC17IMSharedUtilitiesE18actionStringFormat31withAdaptiveImageGlyphAvailableSo022IMTapbackSummaryActionfG0CSgSb_tF_0()
{
  v1 = [v0 associatedMessageType];
  if (v1 != 3006 && v1 != 2006)
  {
    return 0;
  }

  v2 = objc_allocWithZone(IMTapbackSummaryActionStringFormat);
  v3 = sub_1A88C82A8();
  v4 = [v2 initWithActionStringFormat:v3 requiresReactionReplacment:1];

  return v4;
}

uint64_t sub_1A880FA94(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB306DC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A88163D4();
  sub_1A88C95C8();
  v14 = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v13 = 1;
    sub_1A88C91C8();
    v12 = 2;
    sub_1A88C92F8();
    v11 = *(v3 + 40);
    v10[15] = 3;
    sub_1A870CCE0(&qword_1EB306940);
    sub_1A85FB520(&qword_1EB306968, &qword_1EB306940);
    sub_1A88C92C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A880FCD4()
{
  v1 = 0x65636976726573;
  v2 = 0x6C79745374616863;
  if (*v0 != 2)
  {
    v2 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6E65644974616863;
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
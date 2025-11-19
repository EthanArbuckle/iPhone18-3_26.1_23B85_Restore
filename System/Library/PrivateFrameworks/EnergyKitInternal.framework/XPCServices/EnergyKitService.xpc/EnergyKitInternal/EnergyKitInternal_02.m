uint64_t sub_10003E114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E184(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003E1EC(char **a1, uint64_t a2, unint64_t a3)
{
  v8 = sub_1000A3128();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A32F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(*(v13 + 64));
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000A3378();
  v61 = a1;
  v17 = *a1;
  if (v16 <= 1)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          if (*(v17 + 2) > a3)
          {
            v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
            v21 = *(v13 + 16);
            v60 = *(v13 + 72) * a3;
            v21(v15, &v17[v59 + v60], v12);
            sub_1000A32A8();
            (*(v13 + 8))(v15, v12);
            sub_1000A3038();
            v23 = v22;
            (*(v9 + 8))(v11, v8);
            if (v23 >= 0.0)
            {
              goto LABEL_55;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_17;
          }

          goto LABEL_72;
        }

        goto LABEL_66;
      }

LABEL_37:
      if ((a3 & 0x8000000000000000) == 0)
      {
        if (*(v17 + 2) > a3)
        {
          v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v37 = *(v13 + 16);
          v60 = *(v13 + 72) * a3;
          v37(v15, &v17[v59 + v60], v12);
          sub_1000A32A8();
          (*(v13 + 8))(v15, v12);
          sub_1000A30F8();
          v39 = v38;
          (*(v9 + 8))(v11, v8);
          if (v39 >= 0.0)
          {
            goto LABEL_58;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_41;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v33 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v33(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A30C8();
        v35 = v34;
        (*(v9 + 8))(v11, v8);
        if (v35 >= 0.0)
        {
          goto LABEL_49;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v16 == 2)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v25 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v25(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A3068();
        v27 = v26;
        (*(v9 + 8))(v11, v8);
        if (v27 >= 0.0)
        {
          goto LABEL_43;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_23;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v16 == 3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*(v17 + 2) > a3)
      {
        v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v29 = *(v13 + 16);
        v60 = *(v13 + 72) * a3;
        v29(v15, &v17[v59 + v60], v12);
        sub_1000A32A8();
        (*(v13 + 8))(v15, v12);
        sub_1000A3008();
        v31 = v30;
        (*(v9 + 8))(v11, v8);
        if (v31 >= 0.0)
        {
          goto LABEL_46;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_29;
      }

      goto LABEL_69;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v16 != 4)
  {
    goto LABEL_37;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v60 = a2;
  if (*(v17 + 2) <= a3)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  (*(v13 + 16))(v15, &v17[v59 + *(v13 + 72) * a3], v12);
  sub_1000A32A8();
  (*(v13 + 8))(v15, v12);
  sub_1000A3098();
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  if (v19 >= 0.0)
  {
    goto LABEL_52;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_9:
  if (*(v17 + 2) > a3)
  {
    v20 = sub_1000A3298();
    sub_1000A30A8();
    v20(v63, 0);
LABEL_52:
    sub_1000A3398();
    v3 = v52;
    sub_1000A2D08();
    v4 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_94:
  v17 = sub_1000322E0(v17);
LABEL_17:
  if (*(v17 + 2) > a3)
  {
    v24 = sub_1000A3298();
    sub_1000A3048();
    v24(v63, 0);
LABEL_55:
    sub_1000A3398();
    v3 = v54;
    sub_1000A2D08();
    v4 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_96:
  result = sub_1000322E0(v17);
  v17 = result;
LABEL_41:
  if (*(v17 + 2) > a3)
  {
    v41 = sub_1000A3298();
    sub_1000A3108();
    v41(v63, 0);
LABEL_58:
    sub_1000A3398();
    v3 = v56;
    sub_1000A2D08();
    v4 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_84;
    }

    while (1)
    {
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A30E8();
        goto LABEL_61;
      }

      __break(1u);
LABEL_86:
      v17 = sub_1000322E0(v17);
LABEL_23:
      if (*(v17 + 2) > a3)
      {
        break;
      }

      __break(1u);
LABEL_88:
      v17 = sub_1000322E0(v17);
LABEL_29:
      if (*(v17 + 2) > a3)
      {
        v32 = sub_1000A3298();
        sub_1000A3018();
        v32(v63, 0);
LABEL_46:
        sub_1000A3398();
        v3 = v48;
        sub_1000A2D08();
        v4 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_47;
        }

        goto LABEL_76;
      }

      __break(1u);
LABEL_90:
      v17 = sub_1000322E0(v17);
LABEL_35:
      if (*(v17 + 2) <= a3)
      {
        __break(1u);
LABEL_92:
        v17 = sub_1000322E0(v17);
        goto LABEL_9;
      }

      v36 = sub_1000A3298();
      sub_1000A30D8();
      v36(v63, 0);
LABEL_49:
      sub_1000A3398();
      v3 = v50;
      sub_1000A2D08();
      v4 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_50:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A30B8();
        goto LABEL_61;
      }

      __break(1u);
LABEL_80:
      v17 = sub_1000322E0(v17);
LABEL_53:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A3088();
        goto LABEL_61;
      }

      __break(1u);
LABEL_82:
      v17 = sub_1000322E0(v17);
LABEL_56:
      if (*(v17 + 2) > a3)
      {
        v44 = v3 * v4;
        v45 = sub_1000A3298();
        v46 = sub_1000A3028();
        goto LABEL_61;
      }

      __break(1u);
LABEL_84:
      v17 = sub_1000322E0(v17);
    }

    v28 = sub_1000A3298();
    sub_1000A3078();
    v28(v63, 0);
LABEL_43:
    sub_1000A3398();
    v3 = v42;
    sub_1000A2D08();
    v4 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_74:
      v17 = sub_1000322E0(v17);
    }

    if (*(v17 + 2) > a3)
    {
      v44 = v3 * v4;
      v45 = sub_1000A3298();
      v46 = sub_1000A3058();
LABEL_61:
      *v47 = v44 + *v47;
      v46(v62, 0);
      result = v45(v63, 0);
      *v61 = v17;
      return result;
    }

    __break(1u);
LABEL_76:
    v17 = sub_1000322E0(v17);
LABEL_47:
    if (*(v17 + 2) > a3)
    {
      v44 = v3 * v4;
      v45 = sub_1000A3298();
      v46 = sub_1000A2FF8();
      goto LABEL_61;
    }

    __break(1u);
LABEL_78:
    v17 = sub_1000322E0(v17);
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003ECE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10003EDE8;

  return sub_10003F7D0(a5, a6, a7);
}

uint64_t sub_10003EDE8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10003EEE8, 0, 0);
}

uint64_t sub_10003EEE8()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003F244()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F27C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10003F380(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000A2508() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = v1[4];
  v12 = v1[5];
  v14 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014898;

  return sub_10003ED30(a1, v8, v9, v11, v12, v1 + v5, v10, v14);
}

void sub_10003F4DC()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v0 = sub_1000A3538();
  sub_100001E38(v0, qword_1000C96B8);
  v1 = sub_1000A3518();
  v2 = sub_1000A3CB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[LoadEventOperations] Taking extended lifetime", v3, 2u);
  }
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10003F5E0, 0, 0);
}

uint64_t sub_10003F5E0()
{
  if (qword_1000C7598 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10003F6AC;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1000834F0(v3, v2);
}

uint64_t sub_10003F6AC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10003F7AC, 0, 0);
}

uint64_t sub_10003F7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10003F7F4, 0, 0);
}

uint64_t sub_10003F7F4()
{
  sub_1000A3AA8();
  v0[6] = os_transaction_create();

  sub_10003F4DC();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[7] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  v0[8] = qword_1000C95F0;

  return _swift_task_switch(sub_10003F9B0, v5, 0);
}

uint64_t sub_10003F9B0()
{
  *(v0 + 72) = *(*(v0 + 64) + 120);

  return _swift_task_switch(sub_10003FA28, 0, 0);
}

uint64_t sub_10003FA28()
{
  if (v0[9])
  {
    v1 = v0[3];

    v2 = sub_1000A39C8();
    v3 = qword_1000C95F0;
    v0[10] = v2;
    v0[11] = v3;

    return _swift_task_switch(sub_10003FB70, v3, 0);
  }

  else
  {
    v4 = v0[7];
    v5 = sub_1000A3518();
    v6 = sub_1000A3CC8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[6];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[LoadEventOperations] Invalid application-identifier", v9, 2u);
    }

    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_10003FB70()
{
  *(v0 + 144) = *(*(v0 + 88) + 144);

  return _swift_task_switch(sub_10003FBE0, 0, 0);
}

uint64_t sub_10003FBE0()
{
  if (*(v0 + 144) == 1)
  {
    if (*(v0 + 40))
    {
      v1 = *(v0 + 80);
      v2 = *(v0 + 32);
      v3 = sub_1000A39B8();
      *(v0 + 96) = v3;
      sub_1000A35D8();
      v4 = swift_task_alloc();
      *(v0 + 104) = v4;
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
      v6 = swift_task_alloc();
      *(v0 + 112) = v6;
      *v6 = v0;
      v6[1] = sub_10003FEE4;

      return static SandboxExtension.withResources<A>(resources:_:)(v0 + 16, v3, &unk_1000AC008, v4, &type metadata for Int);
    }

    else
    {
      if (qword_1000C7598 != -1)
      {
        swift_once();
      }

      v19 = swift_task_alloc();
      *(v0 + 128) = v19;
      *v19 = v0;
      v19[1] = sub_10004016C;
      v20 = *(v0 + 80);
      v21 = *(v0 + 32);

      return sub_1000834F0(v20, v21);
    }
  }

  else
  {
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);

    v9 = sub_1000A3518();
    v10 = sub_1000A3CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[LoadEventOperations] Unauthorized", v11, 2u);
    }

    v12 = *(v0 + 56);
    v13 = sub_1000A3518();
    v14 = sub_1000A3CB8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 48);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "[LoadEventOperations] Submitted %ld load event records", v17, 0xCu);
    }

    swift_unknownObjectRelease();

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_10003FEE4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[10];

  if (v0)
  {
    v8 = sub_100040384;
  }

  else
  {
    v8 = sub_100040074;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100040074()
{
  v1 = v0[2];
  v2 = v0[7];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Submitted %ld load event records", v7, 0xCu);
  }

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10004016C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10004028C, 0, 0);
}

uint64_t sub_10004028C()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Submitted %ld load event records", v7, 0xCu);
  }

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_100040384()
{
  v1 = v0[15];
  v2 = v0[7];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Event submission failed: %@", v7, 0xCu);
    sub_10000343C(v8);
  }

  else
  {
  }

  v10 = v0[7];
  v11 = sub_1000A3518();
  v12 = sub_1000A3CB8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[6];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[LoadEventOperations] Submitted %ld load event records", v15, 0xCu);
  }

  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100040560(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_10003F5BC(a1, v5, v4);
}

id sub_10004060C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[10];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_10004068C(v0, &v8);
    objc_autoreleasePoolPop(v3);
    v4 = v8;
    v5 = v0[10];
    v0[10] = v8;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_10004068C(void *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1000A2388();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(*(v64 + 64));
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = v59 - v6;
  v7 = sub_1000A2D38();
  if (!v7)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = sub_1000A3A78();
  v12 = sub_1000A3A78();
  v13 = [v8 URLForResource:v11 withExtension:v12];

  if (!v13)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000A2378();

  (*(v64 + 32))(v63, v5, v65);
  v14 = objc_allocWithZone(NSManagedObjectModel);
  sub_1000A2368(v15);
  v17 = v16;
  v18 = [v14 initWithContentsOfURL:v16];

  if (!v18)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v19 = objc_allocWithZone(NSPersistentContainer);
  v20 = v18;
  v21 = sub_1000A3A78();
  v22 = [v19 initWithName:v21 managedObjectModel:v20];

  v23 = v22;
  v24 = [v23 persistentStoreDescriptions];
  v25 = sub_100032224(0, &qword_1000C8548, NSPersistentStoreDescription_ptr);
  v26 = sub_1000A3B68();

  if (v26 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
  {
    v60 = v23;
    v61 = v20;
    v59[1] = v25;
    if (i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = sub_1000A3EA8();
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v28 = *(v26 + 32);
      }

      v29 = v28;
    }

    else
    {

      v29 = [objc_allocWithZone(NSPersistentStoreDescription) init];
    }

    v74 = v29;
    v30 = a1[8];
    v31 = a1[9];
    v32 = sub_1000A3A78();
    [v29 setConfiguration:v32];

    [v29 setType:NSXPCStoreType];
    sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
    isa = sub_1000A3D88(0).super.super.isa;
    [v29 setOption:isa forKey:NSMigratePersistentStoresAutomaticallyOption];

    sub_10000275C(&qword_1000C8550, &qword_1000AC0A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AC010;
    *(inited + 32) = sub_1000A3A88();
    v25 = (inited + 32);
    *(inited + 40) = v35;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = sub_1000A3A88();
    *(inited + 88) = v36;
    v38 = a1[6];
    v37 = a1[7];
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v38;
    *(inited + 104) = v37;

    v26 = sub_100089D44(inited);
    swift_setDeallocating();
    sub_10000275C(&qword_1000C8558, &qword_1000AC0A8);
    swift_arrayDestroy();
    v39 = 0;
    v41 = v26 + 64;
    v40 = *(v26 + 64);
    v66 = v26;
    v42 = 1 << *(v26 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v23 = v43 & v40;
    a1 = ((v42 + 63) >> 6);
    if ((v43 & v40) != 0)
    {
      break;
    }

LABEL_16:
    if (a1 <= (v39 + 1))
    {
      v44 = v39 + 1;
    }

    else
    {
      v44 = a1;
    }

    v45 = v44 - 1;
    while (1)
    {
      v20 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v20 >= a1)
      {
        v23 = 0;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        goto LABEL_24;
      }

      v23 = *(v41 + 8 * v20);
      ++v39;
      if (v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

  while (1)
  {
    v20 = v39;
LABEL_23:
    v46 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v47 = v46 | (v20 << 6);
    v48 = (*(v66 + 48) + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    sub_10000F814(*(v66 + 56) + 32 * v47, v67);
    *&v68 = v49;
    *(&v68 + 1) = v50;
    sub_1000413C4(v67, &v69);

    v45 = v20;
LABEL_24:
    v71 = v68;
    v72 = v69;
    v73 = v70;
    if (!*(&v68 + 1))
    {
      break;
    }

    sub_1000413C4(&v72, &v68);
    sub_100032224(0, &qword_1000C8560, NSObject_ptr);
    v51 = swift_dynamicCast();
    v26 = *&v67[0];
    v25 = sub_1000A3A78();

    if (v51)
    {
      v52 = v26;
    }

    else
    {
      v52 = 0;
    }

    [v74 setOption:v52 forKey:v25];

    v39 = v45;
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1000ABC60;
  v54 = v74;
  *(v53 + 32) = v74;
  v55 = v54;
  v56 = sub_1000A3B48().super.isa;

  v57 = v60;
  [v60 setPersistentStoreDescriptions:v56];

  *&v73 = sub_100040D8C;
  *(&v73 + 1) = 0;
  *&v71 = _NSConcreteStackBlock;
  *(&v71 + 1) = 1107296256;
  *&v72 = sub_100040F30;
  *(&v72 + 1) = &unk_1000BF5F0;
  v58 = _Block_copy(&v71);
  [v57 loadPersistentStoresWithCompletionHandler:v58];

  _Block_release(v58);
  (*(v64 + 8))(v63, v65);
  *v62 = v57;
}

void sub_100040D8C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1000A2348();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = a1;
    v6 = v3;
    oslog = sub_1000A3518();
    v7 = sub_1000A3CC8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2114;
      *(v8 + 14) = v6;
      *v9 = v5;
      v9[1] = v6;
      v10 = v5;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to load persistent stores(%@):%{public}@", v8, 0x16u);
      sub_10000275C(&unk_1000C7740, &qword_1000AB610);
      swift_arrayDestroy();

      v6 = oslog;
      oslog = v11;
    }
  }
}

void sub_100040F30(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_100040FBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return _swift_deallocClassInstance(v0, 88, 7);
}

id sub_100041038(char a1)
{
  result = [v1 hasChanges];
  if (result)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = sub_1000A3518();
    v6 = sub_1000A3CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      if (a1)
      {
        v9 = 0x6144657461647075;
      }

      else
      {
        v9 = 0xD000000000000012;
      }

      v10 = a1;
      if (a1)
      {
        v11 = 0xEA00000000006174;
      }

      else
      {
        v11 = 0x80000001000A6D30;
      }

      v12 = sub_1000954AC(v9, v11, &v23);
      a1 = v10;

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "[CoreDataStack] Saving changes for %s", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v23 = 0;
    if ([v1 save:&v23])
    {
      return v23;
    }

    else
    {
      v13 = v23;
      sub_1000A2358();

      swift_willThrow();
      swift_errorRetain();
      v14 = sub_1000A3518();
      v15 = sub_1000A3CC8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v16 = 136315394;
        if (a1)
        {
          v19 = 0x6144657461647075;
        }

        else
        {
          v19 = 0xD000000000000012;
        }

        if (a1)
        {
          v20 = 0xEA00000000006174;
        }

        else
        {
          v20 = 0x80000001000A6D30;
        }

        v21 = sub_1000954AC(v19, v20, &v23);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v22;
        *v17 = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "[CoreDataStack] Error saving changes for %s. %@", v16, 0x16u);
        sub_10000343C(v17);

        sub_10000F7B8(v18);
      }

      return swift_willThrow();
    }
  }

  return result;
}

_OWORD *sub_1000413C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000413D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000413EC()
{
  v0 = sub_1000A3538();
  sub_100015578(v0, qword_1000C96B8);
  sub_100001E38(v0, qword_1000C96B8);
  return sub_1000A3528();
}

Class sub_10004146C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000417E4();
    v5.super.isa = sub_1000A3A08().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_10004151C(uint64_t a1)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);

  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_1000954AC(0x65766528646E6573, 0xEC000000293A746ELL, v15);
    *(v5 + 12) = 2080;
    v6 = sub_100047FE8(*(a1 + 16));
    v8 = sub_1000954AC(v6, v7, v15);

    *(v5 + 14) = v8;
    *(v5 + 22) = 2080;
    sub_100048104();
    sub_1000417E4();
    v9 = sub_1000A3A28();
    v11 = v10;

    v12 = sub_1000954AC(v9, v11, v15);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Sending analytics event for [%s]: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  sub_100047FE8(*(a1 + 16));
  v13 = sub_1000A3A78();

  v15[4] = sub_1000417C8;
  v15[5] = a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10004146C;
  v15[3] = &unk_1000BF618;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_1000417CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000417E4()
{
  result = qword_1000C8560;
  if (!qword_1000C8560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C8560);
  }

  return result;
}

uint64_t sub_100041830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1000A3F88();
  sub_1000A3AC8();
  v7 = sub_1000A3F98();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1000A3F48() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_100041928(uint64_t a1)
{
  v2 = v1;
  sub_1000A2E28();
  v4 = sub_1000A2E18();
  [v4 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AC0E0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0x73676E6964616572;
  *(v5 + 40) = 0xE800000000000000;
  isa = sub_1000A3B48().super.isa;

  [v4 setPropertiesToFetch:isa];

  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1000A3A78();
  v9 = [v7 initWithKey:v8 ascending:1];

  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = sub_1000A3A78();
  v12 = [v10 initWithKey:v11 ascending:0];

  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1000A3A78();
  v15 = [v13 initWithKey:v14 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AC0F0;
  *(v16 + 32) = v9;
  *(v16 + 40) = v12;
  *(v16 + 48) = v15;
  sub_100047238();
  v17 = v9;
  v18 = v12;
  v19 = v15;
  v20 = sub_1000A3B48().super.isa;

  [v4 setSortDescriptors:v20];

  v21 = sub_1000478F4(*(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID + 8), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID + 8), *(v2 + 112), a1, *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude));
  [v4 setPredicate:v21];
  [v4 setFetchBatchSize:30];
  [v4 setReturnsObjectsAsFaults:0];

  return v4;
}

unint64_t sub_100041C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = &_swiftEmptySetSingleton;
  v11 = *(v5 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context);
  sub_1000A2E28();
  result = sub_1000A3D68();
  if (!v6)
  {
    if (result >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v35)
    {
      v14 = 0;
      v45 = i;
      v46 = result & 0xC000000000000001;
      v41 = result & 0xFFFFFFFFFFFFFF8;
      v40 = result + 32;
      v43 = a3;
      v44 = a4;
      v42 = a2;
      while (1)
      {
        if (v46)
        {
          result = sub_1000A3EA8();
        }

        else
        {
          if (v14 >= *(v41 + 16))
          {
            goto LABEL_25;
          }

          result = *(v40 + 8 * v14);
        }

        v23 = result;
        if (__OFADD__(v14++, 1))
        {
          break;
        }

        a4 = a5;
        v47 = objc_autoreleasePoolPush();
        v25 = v49;
        v26 = [v23 recordID];
        v27 = sub_1000A3A88();
        a3 = v28;

        if (v25[2] && (v29 = v25[5], sub_1000A3F88(), sub_1000A3AC8(), v30 = sub_1000A3F98(), v31 = -1 << *(v25 + 32), a2 = v30 & ~v31, ((*(v25 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a2) & 1) != 0))
        {
          v32 = ~v31;
          while (1)
          {
            v33 = (v25[6] + 16 * a2);
            v34 = *v33 == v27 && v33[1] == a3;
            if (v34 || (sub_1000A3F48() & 1) != 0)
            {
              break;
            }

            a2 = (a2 + 1) & v32;
            if (((*(v25 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a2) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          a5 = a4;
        }

        else
        {
LABEL_5:

          v15 = [v23 recordID];
          v16 = sub_1000A3A88();
          v18 = v17;

          sub_100095D34(&v48, v16, v18);

          sub_1000A3358();
          v19 = [v23 readings];
          v20 = sub_1000A23B8();
          v22 = v21;

          a3 = sub_1000A3348();
          sub_10003228C(v20, v22);
          a5 = a4;
          sub_1000394B4(v42, a3, v43, v44, a4);
        }

        objc_autoreleasePoolPop(v47);

        if (v14 == v45)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v35 = result;
      i = sub_1000A3EC8();
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v36 = sub_1000A3538();
    sub_100001E38(v36, qword_1000C96B8);
    v37 = sub_1000A3518();
    v38 = sub_1000A3CA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "[AMIQueryEngine] No blocks found", v39, 2u);
    }
  }

  return result;
}

uint64_t sub_100041FF0(char a1)
{
  *(v2 + 408) = v1;
  *(v2 + 1100) = a1;
  v3 = sub_1000A2C08();
  *(v2 + 416) = v3;
  v4 = *(v3 - 8);
  *(v2 + 424) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 432) = swift_task_alloc();
  v6 = sub_1000A3538();
  *(v2 + 440) = v6;
  v7 = *(v6 - 8);
  *(v2 + 448) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  v9 = sub_1000A3938();
  *(v2 + 472) = v9;
  v10 = *(v9 - 8);
  *(v2 + 480) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  v12 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  *(v2 + 504) = v12;
  v13 = *(v12 - 8);
  *(v2 + 512) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 520) = swift_task_alloc();
  v15 = *(*(sub_10000275C(&qword_1000C7D58, &qword_1000ABB20) - 8) + 64) + 15;
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  v16 = *(*(sub_10000275C(&qword_1000C7EB8, &qword_1000ABD48) - 8) + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  v17 = sub_1000A32F8();
  *(v2 + 560) = v17;
  v18 = *(v17 - 8);
  *(v2 + 568) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  v20 = sub_1000A25A8();
  *(v2 + 592) = v20;
  v21 = *(v20 - 8);
  *(v2 + 600) = v21;
  v22 = *(v21 + 64) + 15;
  *(v2 + 608) = swift_task_alloc();
  v23 = sub_1000A23F8();
  *(v2 + 616) = v23;
  v24 = *(v23 - 8);
  *(v2 + 624) = v24;
  v25 = *(v24 + 64) + 15;
  *(v2 + 632) = swift_task_alloc();
  v26 = *(*(sub_10000275C(&qword_1000C7F58, &qword_1000AC770) - 8) + 64) + 15;
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  v27 = sub_1000A2568();
  *(v2 + 656) = v27;
  v28 = *(v27 - 8);
  *(v2 + 664) = v28;
  v29 = *(v28 + 64) + 15;
  *(v2 + 672) = swift_task_alloc();
  v30 = sub_1000A2498();
  *(v2 + 680) = v30;
  v31 = *(v30 - 8);
  *(v2 + 688) = v31;
  v32 = *(v31 + 64) + 15;
  *(v2 + 696) = swift_task_alloc();
  *(v2 + 704) = swift_task_alloc();
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = swift_task_alloc();
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  *(v2 + 776) = swift_task_alloc();
  v33 = sub_1000A22A8();
  *(v2 + 784) = v33;
  v34 = *(v33 - 8);
  *(v2 + 792) = v34;
  v35 = *(v34 + 64) + 15;
  *(v2 + 800) = swift_task_alloc();
  *(v2 + 808) = swift_task_alloc();
  *(v2 + 816) = swift_task_alloc();
  *(v2 + 824) = swift_task_alloc();
  *(v2 + 832) = swift_task_alloc();
  *(v2 + 840) = swift_task_alloc();
  *(v2 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_1000425AC, v1, 0);
}

uint64_t sub_1000425AC()
{
  v280 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 792);
  v237 = *(v0 + 776);
  v253 = *(v0 + 784);
  v257 = *(v0 + 768);
  v239 = *(v0 + 760);
  v243 = *(v0 + 752);
  v245 = *(v0 + 744);
  v249 = *(v0 + 736);
  v275 = *(v0 + 688);
  v241 = *(v0 + 680);
  v4 = *(v0 + 664);
  v262 = *(v0 + 656);
  v268 = *(v0 + 672);
  v5 = *(v0 + 408);
  *(v0 + 376) = &_swiftEmptyArrayStorage;
  v6 = *(v5 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query);
  sub_1000A3868();
  sub_1000A2288();
  v7 = *(v3 + 8);
  *(v0 + 856) = v7;
  *(v0 + 864) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = v1;
  v9 = v253;
  v7(v8, v253);
  sub_1000A3868();
  sub_1000A2248();
  v254 = v7;
  v7(v2, v9);
  sub_1000A2478();
  v10 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  *(v0 + 872) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v11 = *(v275 + 16);
  *(v0 + 880) = v11;
  *(v0 + 888) = (v275 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v243, v237, v241);
  (*(v4 + 104))(v268, enum case for Calendar.Component.year(_:), v262);
  sub_1000A2ED8();
  (*(v4 + 8))(v268, v262);
  v263 = v5;
  v269 = v10;
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    sub_100001E38(*(v0 + 440), qword_1000C96B8);
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[AMIQueryEngine] Client requested query start date is before five years ago.", v14, 2u);
    }

    v15 = *(v0 + 752);
    v16 = *(v0 + 736);
    v17 = *(v0 + 688);
    v18 = *(v0 + 680);

    (*(v17 + 8))(v15, v18);
    v11(v15, v16, v18);
  }

  v19 = *(v0 + 760);
  v11(*(v0 + 728), *(v0 + 768), *(v0 + 680));
  if (sub_1000A2428())
  {
    v20 = *(v0 + 760);
    v21 = *(v0 + 728);
    v22 = *(v0 + 680);
    (*(*(v0 + 688) + 8))(v21, v22);
    v11(v21, v20, v22);
  }

  v23 = *(v0 + 848);
  v242 = *(v0 + 824);
  v240 = *(v0 + 776);
  v236 = *(v0 + 760);
  v238 = *(v0 + 768);
  v24 = *(v0 + 752);
  v234 = *(v0 + 736);
  v235 = *(v0 + 744);
  v25 = *(v0 + 728);
  v26 = *(v0 + 720);
  v27 = *(v0 + 712);
  v28 = *(v0 + 704);
  v29 = *(v0 + 688);
  v30 = *(v0 + 680);
  v246 = *(v0 + 408);
  v250 = *(v0 + 1100);
  v11(v26, v24, v30);
  v11(v27, v25, v30);
  sub_1000A2268();
  v31 = *(v29 + 8);
  *(v0 + 896) = v31;
  *(v0 + 904) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v25, v30);
  v31(v234, v30);
  v31(v235, v30);
  v31(v24, v30);
  v31(v236, v30);
  v31(v238, v30);
  v31(v240, v30);
  *(v0 + 912) = type metadata accessor for InsightBucketBoundaries();
  sub_1000A2288();
  v32 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  *(v0 + 920) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  sub_10004C5C8(v26, v246 + v32, v263 + v269, v250, v242);
  v247 = v31;
  v31(v26, v30);
  sub_1000A2288();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v276 = (v0 + 376);
  v33 = *(v0 + 848);
  v34 = *(v0 + 816);
  v35 = *(v0 + 792);
  v36 = *(v0 + 784);
  *(v0 + 928) = sub_100001E38(*(v0 + 440), qword_1000C96B8);
  v37 = *(v35 + 16);
  *(v0 + 936) = v37;
  *(v0 + 944) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v34, v33, v36);
  v38 = sub_1000A3518();
  v39 = sub_1000A3CA8();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 816);
  v42 = *(v0 + 784);
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v279[0] = v44;
    *v43 = 136315138;
    sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
    v45 = sub_1000A3F28();
    v47 = v46;
    v254(v41, v42);
    v48 = sub_1000954AC(v45, v47, v279);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "[AMIQueryEngine] Query Range: %s", v43, 0xCu);
    sub_10000F7B8(v44);
  }

  else
  {

    v254(v41, v42);
  }

  v49 = *(v0 + 648);
  v50 = *(v0 + 632);
  v51 = *(v0 + 608);
  v52 = *(v0 + 600);
  v53 = *(v0 + 592);
  sub_1000A2548();
  sub_1000A2EB8();
  (*(v52 + 8))(v51, v53);
  sub_1000A23E8();
  v54 = *(v0 + 848);
  v55 = *(v0 + 824);
  v56 = *(v0 + 720);
  v57 = *(v0 + 704);
  v58 = *(v0 + 688);
  v59 = *(v0 + 680);
  v60 = *(v0 + 648);
  v61 = *(v0 + 408);
  (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  (*(v58 + 56))(v60, 0, 1, v59);
  *(v0 + 952) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream;
  *(v0 + 960) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID;
  *(v0 + 968) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  *(v0 + 976) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_1000A2248();
  LOBYTE(v54) = sub_1000A2438();
  v62 = v247(v56, v59);
  v65 = 0;
  v66 = 0;
  if ((v54 & 1) == 0)
  {
LABEL_55:
    v203 = *(v0 + 376);
    *(v0 + 1056) = v203;
    v204 = *(v203 + 16);
    if (!v204)
    {
      v223 = *(v0 + 928);
      v224 = sub_1000A3518();
      v225 = sub_1000A3CA8();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 134217984;
        *(v226 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v224, v225, "[AMIQueryEngine] Total Yielded %ld", v226, 0xCu);
      }

      v227 = *(v0 + 952);
      v228 = *(v0 + 408);

      v63 = *(v228 + v227);
      *(v0 + 1088) = v63;
      v229 = sub_100046B08;
      goto LABEL_75;
    }

    *(v0 + 1064) = v66 + v204;
    if (!__OFADD__(v66, v204))
    {
      v205 = *(v0 + 928);
      v206 = sub_1000A3518();
      v207 = sub_1000A3CA8();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        *v208 = 134217984;
        *(v208 + 4) = *(v203 + 16);
        _os_log_impl(&_mh_execute_header, v206, v207, "[AMIQueryEngine] Yield %ld", v208, 0xCu);
      }

      v209 = *(v0 + 952);
      v210 = *(v0 + 408);

      v63 = *(v210 + v209);
      *(v0 + 1072) = v63;
      v211 = *(v203 + 16);
      if (v211)
      {
        v261 = v63;
        v212 = *(v0 + 568);
        v214 = *(v212 + 16);
        v213 = v212 + 16;
        v215 = v203 + ((*(v213 + 64) + 32) & ~*(v213 + 64));
        v274 = *(v213 + 56);
        v278 = v214;

        v216 = &_swiftEmptyArrayStorage;
        do
        {
          v278(*(v0 + 576), v215, *(v0 + 560));
          sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
          v217 = sub_1000A3458();
          v219 = v218;
          (*(v213 - 8))(*(v0 + 576), *(v0 + 560));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v216 = sub_100095044(0, *(v216 + 2) + 1, 1, v216);
          }

          v221 = *(v216 + 2);
          v220 = *(v216 + 3);
          if (v221 >= v220 >> 1)
          {
            v216 = sub_100095044((v220 > 1), v221 + 1, 1, v216);
          }

          *(v216 + 2) = v221 + 1;
          v222 = &v216[16 * v221];
          *(v222 + 4) = v217;
          *(v222 + 5) = v219;
          v215 += v274;
          --v211;
        }

        while (v211);

        v63 = v261;
      }

      else
      {
        v216 = &_swiftEmptyArrayStorage;
      }

      *(v0 + 1080) = v216;
      v229 = sub_100046828;
      goto LABEL_75;
    }

LABEL_82:
    __break(1u);
    return _swift_task_switch(v62, v63, v64);
  }

  *(v0 + 1096) = enum case for Logging.framework(_:);
  v67 = *(v0 + 376);
  v68 = *(v67 + 16);
  if (v68)
  {
    v66 = 0;
LABEL_17:
    *(v0 + 984) = v66 + v68;
    if (!__OFADD__(v66, v68))
    {
      v69 = *(v0 + 928);
      v70 = sub_1000A3518();
      v71 = sub_1000A3CA8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        *(v72 + 4) = *(v67 + 16);
        _os_log_impl(&_mh_execute_header, v70, v71, "[AMIQueryEngine] Yield %ld", v72, 0xCu);
      }

      v73 = *(v0 + 952);
      v74 = *(v0 + 408);

      v63 = *(v74 + v73);
      *(v0 + 992) = v63;
      v75 = *(v67 + 16);
      if (v75)
      {
        v76 = *(v0 + 568);
        v77 = v67 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
        v277 = *(v76 + 72);
        v264 = v63;
        v270 = *(v76 + 16);

        v78 = &_swiftEmptyArrayStorage;
        do
        {
          v79 = *(v0 + 568) + 16;
          v270(*(v0 + 584), v77, *(v0 + 560));
          sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
          v80 = sub_1000A3458();
          v82 = v81;
          (*(*(v0 + 568) + 8))(*(v0 + 584), *(v0 + 560));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_100095044(0, *(v78 + 2) + 1, 1, v78);
          }

          v84 = *(v78 + 2);
          v83 = *(v78 + 3);
          if (v84 >= v83 >> 1)
          {
            v78 = sub_100095044((v83 > 1), v84 + 1, 1, v78);
          }

          *(v78 + 2) = v84 + 1;
          v85 = &v78[16 * v84];
          *(v85 + 4) = v80;
          *(v85 + 5) = v82;
          v77 += v277;
          --v75;
        }

        while (v75);

        v63 = v264;
      }

      else
      {
        v78 = &_swiftEmptyArrayStorage;
      }

      *(v0 + 1008) = v78;
      *(v0 + 1000) = 0;
      v229 = sub_100043FD0;
LABEL_75:
      v62 = v229;
      v64 = 0;

      return _swift_task_switch(v62, v63, v64);
    }

    __break(1u);
    goto LABEL_82;
  }

  v65 = 0;
  v66 = 0;
  v244 = (v0 + 392);
  while (1)
  {
    *(v0 + 1032) = v66;
    *(v0 + 1024) = v65;
    *(v0 + 1016) = 0;
    v86 = *(v0 + 408);
    v87 = (v86 + *(v0 + 960));
    *(v0 + 392) = &_swiftEmptyArrayStorage;
    v88 = v87[1];
    if (!v88)
    {
      goto LABEL_44;
    }

    v89 = *v87;
    v91 = *(v0 + 488);
    v90 = *(v0 + 496);
    v93 = *(v0 + 472);
    v92 = *(v0 + 480);
    (*(v92 + 16))(v90, v86 + *(v0 + 968), v93);
    sub_1000A3908();
    sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
    v94 = sub_1000A3DF8();
    v95 = *(v92 + 8);
    v95(v91, v93);
    v95(v90, v93);
    if ((v94 & 1) == 0)
    {
      goto LABEL_44;
    }

    v96 = *(v0 + 944);
    v97 = *(v0 + 688);
    v98 = *(v0 + 680);
    v99 = *(v0 + 648);
    v100 = *(v0 + 640);
    (*(v0 + 936))(*(v0 + 808), *(v0 + 824), *(v0 + 784));
    sub_100047188(v99, v100, &qword_1000C7F58, &qword_1000AC770);
    v101 = (*(v97 + 48))(v100, 1, v98);
    v102 = *(v0 + 808);
    if (v101 == 1)
    {
      v103 = *(v0 + 864);
      v104 = *(v0 + 856);
      v105 = *(v0 + 784);
      sub_100022154(*(v0 + 640), &qword_1000C7F58, &qword_1000AC770);
      v104(v102, v105);
      goto LABEL_44;
    }

    v106 = *(v0 + 904);
    v107 = *(v0 + 896);
    v108 = *(v0 + 720);
    v109 = *(v0 + 680);
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 640), v109);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date);
    v110 = sub_1000A3A48();
    v107(v108, v109);
    if (v110)
    {
      v111 = *(v0 + 904);
      v112 = *(v0 + 896);
      v113 = *(v0 + 808);
      v114 = *(v0 + 720);
      v115 = *(v0 + 696);
      v116 = *(v0 + 680);
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      LOBYTE(v113) = sub_1000A2438();
      v112(v114, v116);
      if (v113)
      {
        v117 = *(v0 + 904);
        v118 = *(v0 + 896);
        v119 = *(v0 + 808);
        v120 = *(v0 + 720);
        v121 = *(v0 + 696);
        v122 = *(v0 + 680);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        LOBYTE(v119) = sub_1000A3A48();
        v118(v120, v122);
        if ((v119 & 1) == 0)
        {
          v271 = *(v0 + 1096);
          v123 = *(v0 + 888);
          v124 = *(v0 + 824);
          v125 = *(v0 + 808);
          v265 = *(v0 + 456);
          v126 = *(v0 + 424);
          v127 = *(v0 + 432);
          v258 = *(v0 + 416);
          (*(v0 + 880))(*(v0 + 720), *(v0 + 696), *(v0 + 680));
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v126 + 104))(v127, v271, v258);
          sub_1000A2B68();
          (*(v126 + 8))(v127, v258);
          v128 = sub_1000A3518();
          v129 = sub_1000A3CA8();
          if (os_log_type_enabled(v128, v129))
          {
            v259 = v129;
            v130 = *(v0 + 824);
            v251 = *(v0 + 808);
            v131 = *(v0 + 784);
            v272 = *(v0 + 456);
            v255 = *(v0 + 448);
            v266 = *(v0 + 440);
            v132 = swift_slowAlloc();
            v279[0] = swift_slowAlloc();
            *v132 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
            v133 = sub_1000A3F28();
            v135 = sub_1000954AC(v133, v134, v279);

            *(v132 + 4) = v135;
            *(v132 + 12) = 2080;
            v136 = sub_1000A3F28();
            v138 = sub_1000954AC(v136, v137, v279);

            *(v132 + 14) = v138;
            _os_log_impl(&_mh_execute_header, v128, v259, "Corrected historical interval from %s to %s", v132, 0x16u);
            swift_arrayDestroy();

            (*(v255 + 8))(v272, v266);
          }

          else
          {
            v200 = *(v0 + 448);
            v201 = *(v0 + 456);
            v202 = *(v0 + 440);

            (*(v200 + 8))(v201, v202);
          }
        }
      }
    }

    else
    {
      v139 = *(v0 + 464);
      v140 = *(v0 + 424);
      v141 = *(v0 + 432);
      v142 = *(v0 + 416);
      (*(v140 + 104))(v141, *(v0 + 1096), v142);
      sub_1000A2B68();
      (*(v140 + 8))(v141, v142);
      v143 = sub_1000A3518();
      v144 = sub_1000A3CB8();
      v145 = os_log_type_enabled(v143, v144);
      v146 = *(v0 + 464);
      v148 = *(v0 + 440);
      v147 = *(v0 + 448);
      if (v145)
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&_mh_execute_header, v143, v144, "Skip interval", v149, 2u);
      }

      (*(v147 + 8))(v146, v148);
    }

    v150 = *(v0 + 904);
    v151 = *(v0 + 896);
    v152 = *(v0 + 808);
    v153 = *(v0 + 720);
    v154 = *(v0 + 696);
    v155 = *(v0 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    LOBYTE(v154) = sub_1000A3A48();
    v151(v153, v155);
    v156 = *(v0 + 784);
    if ((v154 & 1) == 0)
    {
      break;
    }

    v157 = *(v0 + 904);
    v158 = *(v0 + 864);
    v159 = *(v0 + 856);
    v160 = *(v0 + 808);
    (*(v0 + 896))(*(v0 + 696), *(v0 + 680));
    v159(v160, v156);
LABEL_44:
    v161 = *(v0 + 1016);
    v162 = *(v0 + 824);
    v163 = *(v0 + 648);
    v164 = *(v0 + 408);
    v165 = *(v164 + *(v0 + 976));
    v166 = swift_task_alloc();
    v166[2] = v164;
    v166[3] = v162;
    v166[4] = v276;
    v166[5] = v244;
    v166[6] = v163;
    sub_1000A3D58();
    if (v161)
    {
      v167 = *(v0 + 928);

      v168 = *(v0 + 392);

      swift_errorRetain();
      v169 = sub_1000A3518();
      v170 = sub_1000A3CC8();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v171 = 138412290;
        swift_errorRetain();
        v173 = _swift_stdlib_bridgeErrorToNSError();
        *(v171 + 4) = v173;
        *v172 = v173;
        _os_log_impl(&_mh_execute_header, v169, v170, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v171, 0xCu);
        sub_100022154(v172, &unk_1000C7740, &qword_1000AB610);
      }

      else
      {
      }
    }

    else
    {

      v174 = *v244;
    }

    v273 = *(v0 + 928);
    v248 = *(v0 + 920);
    v252 = *(v0 + 912);
    v256 = *(v0 + 896);
    v260 = *(v0 + 904);
    v175 = *(v0 + 872);
    v176 = *(v0 + 824);
    v177 = *(v0 + 800);
    v178 = *(v0 + 792);
    v267 = *(v0 + 784);
    v179 = *(v0 + 720);
    v180 = *(v0 + 680);
    v181 = *(v0 + 408);
    v182 = *(v0 + 1100);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_10004C5C8(v179, v181 + v248, v181 + v175, v182, v177);
    v256(v179, v180);
    (*(v178 + 40))(v176, v177, v267);
    v183 = sub_1000A3518();
    v184 = sub_1000A3CA8();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = *(v0 + 824);
      v186 = *(v0 + 784);
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v279[0] = v188;
      *v187 = 136315138;
      sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
      v189 = sub_1000A3F28();
      v191 = sub_1000954AC(v189, v190, v279);

      *(v187 + 4) = v191;
      _os_log_impl(&_mh_execute_header, v183, v184, "[AMIQueryEngine] Next rack: %s", v187, 0xCu);
      sub_10000F7B8(v188);
    }

    v192 = *(v0 + 904);
    v193 = *(v0 + 896);
    v194 = *(v0 + 848);
    v195 = *(v0 + 824);
    v196 = *(v0 + 720);
    v197 = *(v0 + 704);
    v198 = *(v0 + 688);
    v199 = *(v0 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v193(v197, v199);
    (*(v198 + 32))(v197, v196, v199);
    sub_1000A2248();
    LOBYTE(v195) = sub_1000A2438();
    v62 = (v193)(v196, v199);
    v66 = *(v0 + 1032);
    v65 = *(v0 + 1024);
    if ((v195 & 1) == 0)
    {
      goto LABEL_55;
    }

    v67 = *v276;
    v68 = *(*v276 + 16);
    if (v68)
    {
      goto LABEL_17;
    }
  }

  v230 = *(v0 + 944);
  (*(v0 + 936))(*(v0 + 800), *(v0 + 808), *(v0 + 784));
  v231 = swift_task_alloc();
  *(v0 + 1040) = v231;
  *v231 = v0;
  v231[1] = sub_1000454DC;
  v232 = *(v0 + 800);

  return (sub_10005409C)(v89, v88, v232);
}

uint64_t sub_100043FD0()
{
  v1 = v0[124];
  v2 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_100047188(v1 + v5, v2, &qword_1000C7D58, &qword_1000ABB20);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[126];
    v7 = v0[67];

    sub_100022154(v7, &qword_1000C7D58, &qword_1000ABB20);
    v8 = 1;
  }

  else
  {
    v9 = v0[126];
    v10 = v0[69];
    v11 = v0[67];
    v12 = v0[65];
    v13 = v0[63];
    v14 = v0[64];
    (*(v14 + 16))(v12, v11, v13);
    sub_100022154(v11, &qword_1000C7D58, &qword_1000ABB20);
    v0[50] = v9;
    sub_1000A3BF8();
    (*(v14 + 8))(v12, v13);
    v8 = 0;
  }

  v15 = v0[69];
  v16 = v0[51];
  v17 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v17 - 8) + 56))(v15, v8, 1, v17);
  sub_100022154(v15, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_1000441BC, v16, 0);
}

uint64_t sub_1000441BC()
{
  v218 = v0;
  v196 = v0 + 47;
  swift_beginAccess();
  v1 = v0[47];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[47];
  if (isUniquelyReferenced_nonNull_native)
  {
    v4 = v3[2];
    v5 = v0[47];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10009501C(0, v4, 1, v3);
    }

    v6 = v0[70];
    v7 = *(v0[71] + 80);
    v8 = v3 + ((v7 + 32) & ~v7);
    swift_arrayDestroy();
    if (v4)
    {
      v9 = *(v0[71] + 72);
      if (v9 * v4 > 0 || v8 >= &v8[v9 * v4 + (v3[2] - v4) * v9])
      {
        v11 = v0[70];
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v9)
      {
        v21 = v0[70];
        swift_arrayInitWithTakeBackToFront();
      }

      v3[2] -= v4;
    }

    goto LABEL_22;
  }

  if (v3[3] > 1uLL)
  {
    v13 = v0[71];
    sub_10000275C(&qword_1000C7ED0, &unk_1000ABD58);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    if (v14)
    {
      if (v17 - v15 != 0x8000000000000000 || v14 != -1)
      {
        v16[2] = 0;
        v16[3] = 2 * ((v17 - v15) / v14);

        v3 = v16;
        goto LABEL_22;
      }
    }

    else
    {
LABEL_88:
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

  v12 = v0[47];

  v3 = &_swiftEmptyArrayStorage;
LABEL_22:
  v195 = v0 + 49;
  v0[47] = v3;
  swift_endAccess();
  v22 = v0[125];
  v23 = v0[123];
  v24 = v23;
  while (1)
  {
    v0[129] = v24;
    v0[128] = v23;
    v0[127] = v22;
    v25 = v0[51];
    v26 = (v25 + v0[120]);
    v0[49] = &_swiftEmptyArrayStorage;
    v27 = v26[1];
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *v26;
    v30 = v0[61];
    v29 = v0[62];
    v32 = v0[59];
    v31 = v0[60];
    (*(v31 + 16))(v29, v25 + v0[121], v32);
    sub_1000A3908();
    sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
    v33 = sub_1000A3DF8();
    v34 = *(v31 + 8);
    v34(v30, v32);
    v34(v29, v32);
    if ((v33 & 1) == 0)
    {
      goto LABEL_37;
    }

    v35 = v0[118];
    v36 = v0[86];
    v37 = v0[85];
    v38 = v0[81];
    v39 = v0[80];
    (v0[117])(v0[101], v0[103], v0[98]);
    sub_100047188(v38, v39, &qword_1000C7F58, &qword_1000AC770);
    v40 = (*(v36 + 48))(v39, 1, v37);
    v41 = v0[101];
    if (v40 == 1)
    {
      v42 = v0[108];
      v43 = v0[107];
      v44 = v0[98];
      sub_100022154(v0[80], &qword_1000C7F58, &qword_1000AC770);
      v43(v41, v44);
      goto LABEL_37;
    }

    v45 = v0[113];
    v46 = v0[112];
    v47 = v0[90];
    v48 = v0[85];
    (*(v0[86] + 32))(v0[87], v0[80], v48);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date);
    v49 = sub_1000A3A48();
    v46(v47, v48);
    if (v49)
    {
      v50 = v0[113];
      v51 = v0[112];
      v52 = v0[101];
      v53 = v0[90];
      v54 = v0[87];
      v55 = v0[85];
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      LOBYTE(v52) = sub_1000A2438();
      v51(v53, v55);
      if (v52)
      {
        v56 = v0[113];
        v57 = v0[112];
        v58 = v0[101];
        v59 = v0[90];
        v60 = v0[87];
        v61 = v0[85];
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        LOBYTE(v58) = sub_1000A3A48();
        v57(v59, v61);
        if ((v58 & 1) == 0)
        {
          v213 = *(v0 + 274);
          v62 = v0[111];
          v63 = v0[103];
          v64 = v0[101];
          v65 = v0[53];
          v66 = v0[54];
          v67 = v0[52];
          v203 = v67;
          v208 = v0[57];
          (v0[110])(v0[90], v0[87], v0[85]);
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v65 + 104))(v66, v213, v203);
          sub_1000A2B68();
          (*(v65 + 8))(v66, v203);
          v68 = sub_1000A3518();
          v69 = sub_1000A3CA8();
          if (os_log_type_enabled(v68, v69))
          {
            v204 = v69;
            v70 = v0[103];
            v198 = v0[101];
            v71 = v0[98];
            v214 = v0[57];
            v200 = v0[56];
            v209 = v0[55];
            v72 = swift_slowAlloc();
            v217[0] = swift_slowAlloc();
            *v72 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
            v73 = sub_1000A3F28();
            v75 = sub_1000954AC(v73, v74, v217);

            *(v72 + 4) = v75;
            *(v72 + 12) = 2080;
            v76 = sub_1000A3F28();
            v78 = sub_1000954AC(v76, v77, v217);

            *(v72 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v68, v204, "Corrected historical interval from %s to %s", v72, 0x16u);
            swift_arrayDestroy();

            (*(v200 + 8))(v214, v209);
          }

          else
          {
            v144 = v0[56];
            v145 = v0[57];
            v146 = v0[55];

            (*(v144 + 8))(v145, v146);
          }
        }
      }
    }

    else
    {
      v79 = v0[58];
      v80 = v0[53];
      v81 = v0[54];
      v82 = v0[52];
      (*(v80 + 104))(v81, *(v0 + 274), v82);
      sub_1000A2B68();
      (*(v80 + 8))(v81, v82);
      v83 = sub_1000A3518();
      v84 = sub_1000A3CB8();
      v85 = os_log_type_enabled(v83, v84);
      v86 = v0[58];
      v88 = v0[55];
      v87 = v0[56];
      if (v85)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Skip interval", v89, 2u);
      }

      (*(v87 + 8))(v86, v88);
    }

    v90 = v0[113];
    v91 = v0[112];
    v92 = v0[101];
    v93 = v0[90];
    v94 = v0[87];
    v95 = v0[85];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    LOBYTE(v94) = sub_1000A3A48();
    v91(v93, v95);
    v96 = v0[98];
    if ((v94 & 1) == 0)
    {
      break;
    }

    v97 = v0[113];
    v98 = v0[108];
    v99 = v0[107];
    v100 = v0[101];
    (v0[112])(v0[87], v0[85]);
    v99(v100, v96);
LABEL_37:
    v101 = v0[127];
    v102 = v0[103];
    v103 = v0[81];
    v104 = v0[51];
    v105 = *(v104 + v0[122]);
    v106 = swift_task_alloc();
    v106[2] = v104;
    v106[3] = v102;
    v106[4] = v196;
    v106[5] = v195;
    v106[6] = v103;
    sub_1000A3D58();
    if (v101)
    {
      v107 = v0[116];

      v108 = v0[49];

      swift_errorRetain();
      v109 = sub_1000A3518();
      v110 = sub_1000A3CC8();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v111 = 138412290;
        swift_errorRetain();
        v113 = _swift_stdlib_bridgeErrorToNSError();
        *(v111 + 4) = v113;
        *v112 = v113;
        _os_log_impl(&_mh_execute_header, v109, v110, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v111, 0xCu);
        sub_100022154(v112, &unk_1000C7740, &qword_1000AB610);
      }

      else
      {
      }
    }

    else
    {

      v114 = *v195;
    }

    v215 = v0[116];
    v197 = v0[115];
    v199 = v0[114];
    v201 = v0[112];
    v205 = v0[113];
    v115 = v0[109];
    v116 = v0[103];
    v117 = v0[100];
    v118 = v0[99];
    v210 = v0[98];
    v119 = v0[90];
    v120 = v0[85];
    v121 = v0;
    v122 = v0[51];
    v123 = *(v121 + 1100);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_10004C5C8(v119, v122 + v197, v122 + v115, v123, v117);
    v201(v119, v120);
    (*(v118 + 40))(v116, v117, v210);
    v124 = sub_1000A3518();
    v125 = sub_1000A3CA8();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = v121[103];
      v127 = v121[98];
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v217[0] = v129;
      *v128 = 136315138;
      sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
      v130 = sub_1000A3F28();
      v132 = sub_1000954AC(v130, v131, v217);

      *(v128 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v124, v125, "[AMIQueryEngine] Next rack: %s", v128, 0xCu);
      sub_10000F7B8(v129);
    }

    v133 = v121;
    v134 = v121[113];
    v135 = v121[112];
    v136 = v121[106];
    v137 = v121[103];
    v138 = v121[90];
    v139 = v133[88];
    v140 = v133[86];
    v141 = v133[85];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v135(v139, v141);
    (*(v140 + 32))(v139, v138, v141);
    v0 = v133;
    sub_1000A2248();
    LOBYTE(v137) = sub_1000A2438();
    v17 = (v135)(v138, v141);
    v24 = v133[129];
    v23 = v133[128];
    v142 = v133[47];
    if ((v137 & 1) == 0)
    {
      v133[132] = v142;
      v147 = *(v142 + 16);
      if (!v147)
      {
        v184 = v133[116];
        v185 = sub_1000A3518();
        v186 = sub_1000A3CA8();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          *v187 = 134217984;
          *(v187 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v185, v186, "[AMIQueryEngine] Total Yielded %ld", v187, 0xCu);
        }

        v188 = v133[119];
        v189 = v133[51];

        v18 = *(v189 + v188);
        v133[136] = v18;
        v190 = sub_100046B08;
        goto LABEL_80;
      }

      v133[133] = v24 + v147;
      if (!__OFADD__(v24, v147))
      {
        v148 = v133[116];
        v149 = sub_1000A3518();
        v150 = sub_1000A3CA8();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 134217984;
          *(v151 + 4) = *(v142 + 16);
          _os_log_impl(&_mh_execute_header, v149, v150, "[AMIQueryEngine] Yield %ld", v151, 0xCu);
        }

        v152 = v133[119];
        v153 = v133[51];

        v18 = *(v153 + v152);
        v154 = v133;
        v133[134] = v18;
        v155 = *(v142 + 16);
        if (v155)
        {
          v156 = v133[71];
          v157 = *(v156 + 16);
          v156 += 16;
          v211 = v157;
          v158 = v142 + ((*(v156 + 64) + 32) & ~*(v156 + 64));
          v202 = v18;
          v206 = *(v156 + 56);
          v159 = (v156 - 8);

          v160 = &_swiftEmptyArrayStorage;
          do
          {
            v211(v154[72], v158, v154[70]);
            sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
            v161 = sub_1000A3458();
            v163 = v162;
            (*v159)(v154[72], v154[70]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = sub_100095044(0, *(v160 + 2) + 1, 1, v160);
            }

            v165 = *(v160 + 2);
            v164 = *(v160 + 3);
            if (v165 >= v164 >> 1)
            {
              v160 = sub_100095044((v164 > 1), v165 + 1, 1, v160);
            }

            *(v160 + 2) = v165 + 1;
            v166 = &v160[16 * v165];
            *(v166 + 4) = v161;
            *(v166 + 5) = v163;
            v158 += v206;
            --v155;
          }

          while (v155);

          v18 = v202;
        }

        else
        {
          v160 = &_swiftEmptyArrayStorage;
        }

        v154[135] = v160;
        v190 = sub_100046828;
        goto LABEL_80;
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v22 = 0;
    v143 = *(v142 + 16);
    if (v143)
    {
      v133[123] = v24 + v143;
      if (!__OFADD__(v24, v143))
      {
        v167 = v133[116];
        v168 = sub_1000A3518();
        v169 = sub_1000A3CA8();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 134217984;
          *(v170 + 4) = *(v142 + 16);
          _os_log_impl(&_mh_execute_header, v168, v169, "[AMIQueryEngine] Yield %ld", v170, 0xCu);
        }

        v171 = v133[119];
        v172 = v133[51];

        v18 = *(v172 + v171);
        v133[124] = v18;
        v173 = *(v142 + 16);
        if (v173)
        {
          v207 = v18;
          v174 = v133[71];
          v175 = v142 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
          v216 = *(v174 + 72);
          v212 = *(v174 + 16);

          v176 = &_swiftEmptyArrayStorage;
          do
          {
            v177 = v0[71] + 16;
            v212(v0[73], v175, v0[70]);
            sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
            v178 = sub_1000A3458();
            v180 = v179;
            (*(v0[71] + 8))(v0[73], v0[70]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = sub_100095044(0, *(v176 + 2) + 1, 1, v176);
            }

            v182 = *(v176 + 2);
            v181 = *(v176 + 3);
            if (v182 >= v181 >> 1)
            {
              v176 = sub_100095044((v181 > 1), v182 + 1, 1, v176);
            }

            *(v176 + 2) = v182 + 1;
            v183 = &v176[16 * v182];
            *(v183 + 4) = v178;
            *(v183 + 5) = v180;
            v175 += v216;
            --v173;
          }

          while (v173);

          v18 = v207;
        }

        else
        {
          v176 = &_swiftEmptyArrayStorage;
        }

        v0[126] = v176;
        v0[125] = 0;
        v190 = sub_100043FD0;
LABEL_80:
        v17 = v190;
        v19 = 0;

        return _swift_task_switch(v17, v18, v19);
      }

      __break(1u);
      goto LABEL_87;
    }
  }

  v191 = v0[118];
  (v0[117])(v0[100], v0[101], v0[98]);
  v192 = swift_task_alloc();
  v0[130] = v192;
  *v192 = v0;
  v192[1] = sub_1000454DC;
  v193 = v0[100];

  return (sub_10005409C)(v28, v27, v193);
}

uint64_t sub_1000454DC(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 864);
  v4 = *(*v1 + 856);
  v5 = *(*v1 + 800);
  v6 = *(*v1 + 784);
  v7 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 1048) = a1;

  v4(v5, v6);

  return _swift_task_switch(sub_100045660, v7, 0);
}

uint64_t sub_100045660()
{
  v206 = v0;
  v1 = *(v0 + 1048);
  v202 = (v0 + 376);
  v183 = (v0 + 392);
  v2 = *(v0 + 904);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 808);
  v6 = *(v0 + 784);
  (*(v0 + 896))(*(v0 + 696), *(v0 + 680));
  v4(v5, v6);
  *(v0 + 392) = v1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = *(v0 + 1016);
        v11 = *(v0 + 824);
        v12 = *(v0 + 648);
        v13 = *(v0 + 408);
        v14 = *(v13 + *(v0 + 976));
        v15 = swift_task_alloc();
        v15[2] = v13;
        v15[3] = v11;
        v15[4] = v202;
        v15[5] = v183;
        v15[6] = v12;
        sub_1000A3D58();
        if (v10)
        {
          v16 = *(v0 + 928);

          v17 = *(v0 + 392);

          swift_errorRetain();
          v18 = sub_1000A3518();
          v19 = sub_1000A3CC8();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            *v20 = 138412290;
            swift_errorRetain();
            v22 = _swift_stdlib_bridgeErrorToNSError();
            *(v20 + 4) = v22;
            *v21 = v22;
            _os_log_impl(&_mh_execute_header, v18, v19, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v20, 0xCu);
            sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
          }

          else
          {
          }
        }

        else
        {

          v23 = *v183;
        }

        v184 = *(v0 + 920);
        v186 = *(v0 + 912);
        v188 = *(v0 + 896);
        v189 = *(v0 + 904);
        v24 = *(v0 + 872);
        v25 = *(v0 + 824);
        v26 = *(v0 + 800);
        v27 = *(v0 + 792);
        v193 = *(v0 + 784);
        v197 = *(v0 + 928);
        v28 = *(v0 + 720);
        v29 = *(v0 + 680);
        v30 = v0;
        v31 = *(v0 + 408);
        v32 = *(v30 + 1100);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        sub_10004C5C8(v28, v31 + v184, v31 + v24, v32, v26);
        v188(v28, v29);
        (*(v27 + 40))(v25, v26, v193);
        v33 = sub_1000A3518();
        v34 = sub_1000A3CA8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = *(v30 + 824);
          v36 = *(v30 + 784);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v205[0] = v38;
          *v37 = 136315138;
          sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
          v39 = sub_1000A3F28();
          v41 = sub_1000954AC(v39, v40, v205);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v33, v34, "[AMIQueryEngine] Next rack: %s", v37, 0xCu);
          sub_10000F7B8(v38);
        }

        v42 = *(v30 + 904);
        v43 = v30;
        v44 = *(v30 + 896);
        v45 = *(v30 + 848);
        v46 = *(v43 + 824);
        v47 = *(v43 + 720);
        v48 = *(v43 + 704);
        v49 = *(v43 + 688);
        v50 = *(v43 + 680);
        swift_beginAccess();
        sub_1000A2288();
        swift_endAccess();
        v44(v48, v50);
        (*(v49 + 32))(v48, v47, v50);
        sub_1000A2248();
        LOBYTE(v46) = sub_1000A2438();
        v51 = (v44)(v47, v50);
        v0 = v43;
        v54 = *(v43 + 1032);
        if ((v46 & 1) == 0)
        {
          v133 = *(v43 + 1024);
          v134 = *(v43 + 376);
          *(v43 + 1056) = v134;
          v135 = *(v134 + 16);
          if (!v135)
          {
            v172 = *(v43 + 928);
            v173 = sub_1000A3518();
            v174 = sub_1000A3CA8();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              *v175 = 134217984;
              *(v175 + 4) = v133;
              _os_log_impl(&_mh_execute_header, v173, v174, "[AMIQueryEngine] Total Yielded %ld", v175, 0xCu);
            }

            v176 = *(v43 + 952);
            v177 = *(v43 + 408);

            v52 = *(v177 + v176);
            *(v43 + 1088) = v52;
            v178 = sub_100046B08;
            goto LABEL_58;
          }

          *(v43 + 1064) = v54 + v135;
          if (!__OFADD__(v54, v135))
          {
            v136 = *(v43 + 928);
            v137 = sub_1000A3518();
            v138 = sub_1000A3CA8();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              *v139 = 134217984;
              *(v139 + 4) = *(v134 + 16);
              _os_log_impl(&_mh_execute_header, v137, v138, "[AMIQueryEngine] Yield %ld", v139, 0xCu);
            }

            v140 = *(v43 + 952);
            v141 = *(v43 + 408);

            v52 = *(v141 + v140);
            v142 = v43;
            *(v43 + 1072) = v52;
            v143 = *(v134 + 16);
            if (v143)
            {
              v192 = v52;
              v144 = *(v43 + 568);
              v146 = *(v144 + 16);
              v145 = v144 + 16;
              v203 = v146;
              v147 = v134 + ((*(v145 + 64) + 32) & ~*(v145 + 64));
              v200 = *(v145 + 56);

              v148 = &_swiftEmptyArrayStorage;
              do
              {
                v203(v142[72], v147, v142[70]);
                sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
                v149 = sub_1000A3458();
                v151 = v150;
                (*(v145 - 8))(v142[72], v142[70]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v148 = sub_100095044(0, *(v148 + 2) + 1, 1, v148);
                }

                v153 = *(v148 + 2);
                v152 = *(v148 + 3);
                if (v153 >= v152 >> 1)
                {
                  v148 = sub_100095044((v152 > 1), v153 + 1, 1, v148);
                }

                *(v148 + 2) = v153 + 1;
                v154 = &v148[16 * v153];
                *(v154 + 4) = v149;
                *(v154 + 5) = v151;
                v147 += v200;
                --v143;
              }

              while (v143);

              v52 = v192;
            }

            else
            {
              v148 = &_swiftEmptyArrayStorage;
            }

            v142[135] = v148;
            v178 = sub_100046828;
            goto LABEL_58;
          }

LABEL_65:
          __break(1u);
          return _swift_task_switch(v51, v52, v53);
        }

        v55 = *v202;
        v56 = *(*v202 + 16);
        if (v56)
        {
          *(v43 + 984) = v54 + v56;
          if (!__OFADD__(v54, v56))
          {
            v155 = *(v43 + 928);
            v156 = sub_1000A3518();
            v157 = sub_1000A3CA8();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              *v158 = 134217984;
              *(v158 + 4) = *(v55 + 16);
              _os_log_impl(&_mh_execute_header, v156, v157, "[AMIQueryEngine] Yield %ld", v158, 0xCu);
            }

            v159 = *(v43 + 952);
            v160 = *(v43 + 408);

            v52 = *(v160 + v159);
            *(v43 + 992) = v52;
            v161 = *(v55 + 16);
            if (v161)
            {
              v196 = v52;
              v162 = *(v43 + 568);
              v163 = v55 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
              v204 = *(v162 + 72);
              v201 = *(v162 + 16);

              v164 = &_swiftEmptyArrayStorage;
              do
              {
                v165 = *(v0 + 568) + 16;
                v201(*(v0 + 584), v163, *(v0 + 560));
                sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
                v166 = sub_1000A3458();
                v168 = v167;
                (*(*(v0 + 568) + 8))(*(v0 + 584), *(v0 + 560));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v164 = sub_100095044(0, *(v164 + 2) + 1, 1, v164);
                }

                v170 = *(v164 + 2);
                v169 = *(v164 + 3);
                if (v170 >= v169 >> 1)
                {
                  v164 = sub_100095044((v169 > 1), v170 + 1, 1, v164);
                }

                *(v164 + 2) = v170 + 1;
                v171 = &v164[16 * v170];
                *(v171 + 4) = v166;
                *(v171 + 5) = v168;
                v163 += v204;
                --v161;
              }

              while (v161);

              v52 = v196;
            }

            else
            {
              v164 = &_swiftEmptyArrayStorage;
            }

            *(v0 + 1008) = v164;
            *(v0 + 1000) = 0;
            v178 = sub_100043FD0;
LABEL_58:
            v51 = v178;
            v53 = 0;

            return _swift_task_switch(v51, v52, v53);
          }

          __break(1u);
          goto LABEL_65;
        }

        *(v43 + 1016) = 0;
        v57 = *(v43 + 408);
        v58 = (v57 + *(v43 + 960));
        *(v43 + 392) = &_swiftEmptyArrayStorage;
        v59 = v58[1];
        if (v59)
        {
          v60 = *v58;
          v61 = *(v43 + 488);
          v62 = *(v43 + 496);
          v64 = *(v43 + 472);
          v63 = *(v43 + 480);
          (*(v63 + 16))(v62, v57 + *(v43 + 968), v64);
          sub_1000A3908();
          sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
          v65 = sub_1000A3DF8();
          v66 = *(v63 + 8);
          v66(v61, v64);
          v66(v62, v64);
          if (v65)
          {
            break;
          }
        }
      }

      v67 = *(v43 + 944);
      v68 = *(v43 + 688);
      v69 = *(v43 + 680);
      v70 = *(v43 + 648);
      v71 = *(v43 + 640);
      (*(v43 + 936))(*(v43 + 808), *(v43 + 824), *(v43 + 784));
      sub_100047188(v70, v71, &qword_1000C7F58, &qword_1000AC770);
      v72 = (*(v68 + 48))(v71, 1, v69);
      v73 = *(v43 + 808);
      if (v72 != 1)
      {
        break;
      }

      v7 = *(v43 + 864);
      v8 = *(v43 + 856);
      v9 = *(v43 + 784);
      sub_100022154(*(v43 + 640), &qword_1000C7F58, &qword_1000AC770);
      v8(v73, v9);
    }

    v74 = *(v43 + 904);
    v75 = *(v43 + 896);
    v76 = *(v0 + 720);
    v77 = *(v0 + 680);
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 640), v77);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date);
    v78 = sub_1000A3A48();
    v75(v76, v77);
    if (v78)
    {
      v79 = *(v0 + 904);
      v80 = *(v0 + 896);
      v81 = *(v0 + 808);
      v82 = *(v0 + 720);
      v83 = *(v0 + 696);
      v84 = *(v0 + 680);
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      LOBYTE(v81) = sub_1000A2438();
      v80(v82, v84);
      if (v81)
      {
        v85 = *(v0 + 904);
        v86 = *(v0 + 896);
        v87 = *(v0 + 808);
        v88 = *(v0 + 720);
        v89 = *(v0 + 696);
        v90 = *(v0 + 680);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        LOBYTE(v87) = sub_1000A3A48();
        v86(v88, v90);
        if ((v87 & 1) == 0)
        {
          v198 = *(v0 + 1096);
          v91 = *(v0 + 888);
          v92 = *(v0 + 824);
          v93 = *(v0 + 808);
          v95 = *(v0 + 424);
          v94 = *(v0 + 432);
          v96 = *(v0 + 416);
          v190 = v96;
          v194 = *(v0 + 456);
          (*(v0 + 880))(*(v0 + 720), *(v0 + 696), *(v0 + 680));
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v95 + 104))(v94, v198, v190);
          sub_1000A2B68();
          (*(v95 + 8))(v94, v190);
          v97 = sub_1000A3518();
          v98 = sub_1000A3CA8();
          if (os_log_type_enabled(v97, v98))
          {
            v185 = v98;
            v99 = *(v0 + 824);
            v187 = *(v0 + 808);
            v100 = *(v0 + 784);
            v191 = *(v0 + 448);
            v195 = *(v0 + 440);
            v199 = *(v0 + 456);
            v101 = swift_slowAlloc();
            v205[0] = swift_slowAlloc();
            *v101 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval);
            v102 = sub_1000A3F28();
            v104 = sub_1000954AC(v102, v103, v205);

            *(v101 + 4) = v104;
            *(v101 + 12) = 2080;
            v105 = sub_1000A3F28();
            v107 = sub_1000954AC(v105, v106, v205);

            *(v101 + 14) = v107;
            _os_log_impl(&_mh_execute_header, v97, v185, "Corrected historical interval from %s to %s", v101, 0x16u);
            swift_arrayDestroy();

            (*(v191 + 8))(v199, v195);
          }

          else
          {
            v131 = *(v0 + 448);
            v130 = *(v0 + 456);
            v132 = *(v0 + 440);

            (*(v131 + 8))(v130, v132);
          }
        }
      }
    }

    else
    {
      v108 = *(v0 + 464);
      v110 = *(v0 + 424);
      v109 = *(v0 + 432);
      v111 = *(v0 + 416);
      (*(v110 + 104))(v109, *(v0 + 1096), v111);
      sub_1000A2B68();
      (*(v110 + 8))(v109, v111);
      v112 = sub_1000A3518();
      v113 = sub_1000A3CB8();
      v114 = os_log_type_enabled(v112, v113);
      v115 = *(v0 + 464);
      v117 = *(v0 + 440);
      v116 = *(v0 + 448);
      if (v114)
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "Skip interval", v118, 2u);
      }

      (*(v116 + 8))(v115, v117);
    }

    v119 = *(v0 + 904);
    v120 = *(v0 + 896);
    v121 = *(v0 + 808);
    v122 = *(v0 + 720);
    v123 = *(v0 + 696);
    v124 = *(v0 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    LOBYTE(v123) = sub_1000A3A48();
    v120(v122, v124);
    v125 = *(v0 + 784);
    if ((v123 & 1) == 0)
    {
      break;
    }

    v126 = *(v0 + 904);
    v127 = *(v0 + 864);
    v128 = *(v0 + 856);
    v129 = *(v0 + 808);
    (*(v0 + 896))(*(v0 + 696), *(v0 + 680));
    v128(v129, v125);
  }

  v179 = *(v0 + 944);
  (*(v0 + 936))(*(v0 + 800), *(v0 + 808), *(v0 + 784));
  v180 = swift_task_alloc();
  *(v0 + 1040) = v180;
  *v180 = v0;
  v180[1] = sub_1000454DC;
  v181 = *(v0 + 800);

  return (sub_10005409C)(v60, v59, v181);
}

uint64_t sub_100046828()
{
  v1 = v0[134];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[64];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_100047188(v1 + v5, v2, &qword_1000C7D58, &qword_1000ABB20);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[135];
    v7 = v0[66];

    sub_100022154(v7, &qword_1000C7D58, &qword_1000ABB20);
    v8 = 1;
  }

  else
  {
    v9 = v0[135];
    v10 = v0[68];
    v11 = v0[66];
    v12 = v0[65];
    v13 = v0[63];
    v14 = v0[64];
    (*(v14 + 16))(v12, v11, v13);
    sub_100022154(v11, &qword_1000C7D58, &qword_1000ABB20);
    v0[48] = v9;
    sub_1000A3BF8();
    (*(v14 + 8))(v12, v13);
    v8 = 0;
  }

  v15 = v0[68];
  v16 = v0[51];
  v17 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v17 - 8) + 56))(v15, v8, 1, v17);
  sub_100022154(v15, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100046A14, v16, 0);
}

uint64_t sub_100046A14()
{
  v1 = v0[133];
  v2 = v0[116];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[AMIQueryEngine] Total Yielded %ld", v5, 0xCu);
  }

  v6 = v0[119];
  v7 = v0[51];

  v8 = *(v7 + v6);
  v0[136] = v8;

  return _swift_task_switch(sub_100046B08, v8, 0);
}

uint64_t sub_100046B08()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 408);
  sub_10001833C();

  return _swift_task_switch(sub_100046B74, v2, 0);
}

uint64_t sub_100046B74()
{
  v12 = v0[113];
  v13 = v0[132];
  v1 = v0[112];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v14 = v0[105];
  v15 = v0[104];
  v5 = v0[103];
  v16 = v0[102];
  v17 = v0[101];
  v6 = v0[98];
  v18 = v0[100];
  v19 = v0[97];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v28 = v0[89];
  v7 = v0[88];
  v31 = v0[87];
  v8 = v0[85];
  v33 = v0[84];
  v9 = v0[81];
  v36 = v0[80];
  v27 = v0[79];
  v29 = v0[76];
  v30 = v0[73];
  v32 = v0[72];
  v34 = v0[69];
  v35 = v0[68];
  v37 = v0[67];
  v38 = v0[66];
  v39 = v0[65];
  v40 = v0[62];
  v41 = v0[61];
  v42 = v0[58];
  v43 = v0[57];
  v44 = v0[54];
  [*(v0[51] + v0[122]) reset];
  v1(v7, v8);
  v3(v4, v6);
  sub_100022154(v9, &qword_1000C7F58, &qword_1000AC770);
  v3(v5, v6);

  v10 = v0[1];

  return v10();
}

void sub_100046E58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v24 = a4;
  v22 = a1;
  v7 = sub_1000A2508();
  __chkstk_darwin(*(*(v7 - 8) + 64));
  v8 = sub_1000A22A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v9 + 16);
  v12(v11, a2, v8);
  v23 = sub_100041928(v11);
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v12(v11, a2, v8);
  v13 = *(a1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query);
  v21[1] = sub_1000A3888();
  sub_1000A3858();
  sub_1000A3838();
  sub_1000A3848();
  sub_1000A3898();
  sub_1000A38A8();
  sub_1000A3828();
  v14 = objc_allocWithZone(sub_1000A38B8());
  v15 = v23;
  v16 = v22;
  v17 = sub_1000A3878();
  v18 = v25;
  v19 = *v24;
  swift_beginAccess();

  v20 = v27;
  sub_100041C10(v15, v18, v17, v19, v26);
  swift_endAccess();
  if (v20)
  {
  }

  else
  {

    *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
    *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
    *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
    [*(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) reset];
  }
}

uint64_t sub_100047188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000471F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100047238()
{
  result = qword_1000C7EF0;
  if (!qword_1000C7EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C7EF0);
  }

  return result;
}

uint64_t sub_1000472A8(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1000A2AD8();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100047374, 0, 0);
}

uint64_t sub_100047374()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_10004741C, v1, 0);
}

uint64_t sub_10004741C()
{
  if ((*(v0 + 80) & 1) != 0 || (sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  sub_1000A2AA8();
  sub_100047878();
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 72);
  }

  else
  {
LABEL_7:
    v7 = *(*(v0 + 72) + 145);
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t sub_100047590(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1000A2AD8();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10004765C, 0, 0);
}

uint64_t sub_10004765C()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_100047704, v1, 0);
}

uint64_t sub_100047704()
{
  if ((*(v0 + 80) & 1) != 0 || (sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  sub_1000A2AA8();
  sub_100047878();
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 72);
  }

  else
  {
LABEL_7:
    v7 = *(*(v0 + 72) + 146);
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v7);
}

unint64_t sub_100047878()
{
  result = qword_1000C7D78;
  if (!qword_1000C7D78)
  {
    sub_1000A2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7D78);
  }

  return result;
}

uint64_t sub_1000478F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48[1] = a5;
  v49 = sub_1000A2498();
  v12 = *(v49 - 8);
  __chkstk_darwin(*(v12 + 64));
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  v16 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v51 = "ervice23IntervalBlocksPredicate";
  v52 = v16;
  v48[0] = sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000ABC70;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1000321D0();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;

  isa = sub_1000A3C88().super.super.isa;
  *(v17 + 136) = sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
  *(v17 + 144) = sub_100032180(&qword_1000C7F38, &qword_1000C7F28, NSNumber_ptr);
  *(v17 + 112) = isa;
  sub_1000A2248();
  v20 = sub_1000A2418().super.isa;
  v21 = *(v12 + 8);
  v22 = v15;
  v23 = v49;
  v21(v22, v49);
  v24 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v17 + 176) = v24;
  v25 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v17 + 184) = v25;
  *(v17 + 152) = v20;
  v26 = v50;
  sub_1000A2288();
  v27 = v26;
  v28 = sub_1000A2418().super.isa;
  v21(v27, v23);
  *(v17 + 216) = v24;
  *(v17 + 224) = v25;
  *(v17 + 192) = v28;
  result = sub_1000A3C98();
  if (a7)
  {
    v30 = a7;
    if (*(a7 + 16))
    {
      v54 = &_swiftEmptyArrayStorage;
      v31 = result;

      v32 = v31;
      sub_1000A3B38();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000A3B88();
      }

      sub_1000A3B98();
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v33 = sub_1000A3538();
      sub_100001E38(v33, qword_1000C96B8);

      v34 = sub_1000A3518();
      v35 = sub_1000A3CD8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53 = v37;
        *v36 = 136315138;
        v38 = sub_1000A3B78();
        v40 = sub_1000954AC(v38, v39, &v53);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v35, "[IntervalBlocksPredicate] Excluding meters %s", v36, 0xCu);
        sub_10000F7B8(v37);
      }

      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1000AC0E0;
      *(v41 + 56) = sub_10000275C(&qword_1000C8738, &unk_1000AC180);
      *(v41 + 64) = sub_100047E60();
      *(v41 + 32) = v30;
      v42 = sub_1000A3C98();
      sub_1000A3B38();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000A3B88();
      }

      sub_1000A3B98();
      v43 = objc_allocWithZone(NSCompoundPredicate);
      v44 = sub_1000A3B48().super.isa;

      v45 = [v43 initWithType:1 subpredicates:v44];

      return v45;
    }
  }

  return result;
}

unint64_t sub_100047E60()
{
  result = qword_1000C8740;
  if (!qword_1000C8740)
  {
    sub_100018734(&qword_1000C8738, &unk_1000AC180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8740);
  }

  return result;
}

uint64_t sub_100047EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "validateTCCAccess";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "idanceForLocation";
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = "eksElectricityGuidanceForSite";
      v4 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3)
    {
      v5 = "eksSiteNearLocation";
    }

    else
    {
      v5 = "validateTCCAccess";
    }
  }

  if (a2 > 1u)
  {
    v2 = "idanceForLocation";
    v6 = "eksElectricityGuidanceForSite";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  else
  {
    v6 = "eksSiteNearLocation";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD000000000000013;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A3F48();
  }

  return v10 & 1;
}

unint64_t sub_100047FE8(unsigned __int8 a1)
{
  v1 = 0xD000000000000013;
  v2 = "validateTCCAccess";
  v3 = "idanceForLocation";
  v4 = 0xD00000000000001DLL;
  if (a1 != 2)
  {
    v4 = 0xD000000000000016;
    v3 = "eksElectricityGuidanceForSite";
  }

  if (a1)
  {
    v1 = 0xD000000000000021;
    v2 = "eksSiteNearLocation";
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_100048B64(3, v5, v6 | 0x8000000000000000);

  v7 = sub_1000A3AB8();
  v9 = v8;

  v11._countAndFlagsBits = v7;
  v11._object = v9;
  sub_1000A3AE8(v11);

  return 0xD00000000000001BLL;
}

uint64_t sub_100048104()
{
  v1 = v0;
  v2 = sub_1000A2498();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2488();
  sub_1000A2448();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = &swift_dynamicCast_ptr;
  v9 = [objc_allocWithZone(NSNumber) initWithDouble:v7 * 1000.0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = &_swiftEmptyDictionarySingleton;
  sub_10007BBC4(v9, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v11 = *(v1 + 24);
  v40 = *(v1 + 40);
  v12 = *(v1 + 88);
  v42 = *(v1 + 72);
  v43 = v12;
  v13 = *(v1 + 56);
  v14 = v39;
  v39 = v11;
  v41 = v13;
  v44 = *(v1 + 104);
  v15 = *(&v40 + 1);
  v16 = v13;
  v17 = *(&v13 + 1);
  v18 = v42;
  v19 = v12;
  if (*(&v11 + 1))
  {
    if (*(&v11 + 1) == 1)
    {
      return v14;
    }

    v37 = *(&v42 + 1);
    v20 = objc_allocWithZone(NSString);
    sub_100048CC8(&v39, v38);

    v21 = sub_1000A3A78();

    v22 = v20;
    v8 = &swift_dynamicCast_ptr;
    v23 = [v22 initWithString:v21];

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v23, 0x746163696C707061, 0xED000044496E6F69, v24);
    v14 = v38[0];
  }

  else
  {
    v37 = *(&v42 + 1);
  }

  if (v15)
  {
    v25 = objc_allocWithZone(NSString);

    v26 = sub_1000A3A78();

    v27 = [v25 initWithString:v26];

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v27, 0x65636E6164697567, 0xEA00000000004449, v28);
    v14 = v38[0];
  }

  if (v16 != 2)
  {
    v29 = [objc_allocWithZone(v8[217]) initWithBool:v16 & 1];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v29, 0x7275746552646964, 0xED0000657469536ELL, v30);
    v14 = v38[0];
  }

  if (v18)
  {
    sub_100048C60(&v39);
    if (v19)
    {
      return v14;
    }

    goto LABEL_13;
  }

  v31 = [objc_allocWithZone(v8[217]) initWithInteger:v17];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v14;
  sub_10007BBC4(v31, 0x65636E6164697567, 0xEC00000065707954, v32);
  sub_100048C60(&v39);
  v14 = v38[0];
  if ((v19 & 1) == 0)
  {
LABEL_13:
    v33 = objc_allocWithZone(v8[217]);
    v34 = [v33 initWithInteger:v37];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v34, 0x65636E6164697567, 0xEF736E6F6974704FLL, v35);
    return v38[0];
  }

  return v14;
}

uint64_t sub_100048550()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v10 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  sub_100048D38(*(v0 + 24), *(v0 + 32));

  return _swift_deallocClassInstance(v0, 105, 7);
}

__n128 sub_1000485D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000485F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_100048650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EKSAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EKSAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_10004884C()
{
  v1 = *v0;
  sub_1000A3F88();
  sub_1000A3AC8();

  return sub_1000A3F98();
}

uint64_t sub_100048904()
{
  *v0;
  *v0;
  *v0;
  sub_1000A3AC8();
}

Swift::Int sub_1000489A8()
{
  v1 = *v0;
  sub_1000A3F88();
  sub_1000A3AC8();

  return sub_1000A3F98();
}

uint64_t sub_100048A5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100048C14(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100048A8C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "validateTCCAccess";
  v4 = "idanceForLocation";
  v5 = 0xD00000000000001DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = "eksElectricityGuidanceForSite";
  }

  if (*v1)
  {
    v2 = 0xD000000000000021;
    v3 = "eksSiteNearLocation";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_100048B10()
{
  result = qword_1000C8828;
  if (!qword_1000C8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8828);
  }

  return result;
}

uint64_t sub_100048B64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1000A3AD8();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100048C14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BDDD0;
  v6._object = a2;
  v4 = sub_1000A3F18(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100048C60(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C8830, &unk_1000AC300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100048CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C8830, &unk_1000AC300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048D38(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_100048D80(char **a1@<X8>)
{
  v38 = a1;
  v2 = sub_1000A3438();
  __chkstk_darwin(*(*(v2 - 8) + 64));
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000A2F68();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v34 - v9;
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  sub_100032224(0, &qword_1000C88E8, NSArray_ptr);
  v14 = sub_1000A3D78();
  if (v1)
  {
LABEL_2:
    v15 = v38;
    if (qword_1000C7570 == -1)
    {
LABEL_3:
      v16 = sub_1000A3538();
      sub_100001E38(v16, qword_1000C96B8);
      swift_errorRetain();
      v17 = sub_1000A3518();
      v18 = sub_1000A3CC8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to unarchive TariffProfile %@", v19, 0xCu);
        sub_10000343C(v20);
      }

      else
      {
      }

      v25 = &_swiftEmptyArrayStorage;
      goto LABEL_19;
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  v37 = v13;
  if (!v14)
  {
    v25 = &_swiftEmptyArrayStorage;
    v15 = v38;
    goto LABEL_19;
  }

  v44 = 0;
  *&v41 = 0;
  v22 = v14;
  sub_1000A3B58();

  v15 = v41;
  if (!v41)
  {
    v25 = &_swiftEmptyArrayStorage;
    v15 = v38;
    goto LABEL_19;
  }

  v36 = *(v41 + 16);
  if (v36)
  {
    v35 = v10;
    v40 = v8;
    v23 = 0;
    v34[0] = v6;
    v39 = (v6 + 32);
    v24 = (v41 + 40);
    v25 = &_swiftEmptyArrayStorage;
    v34[1] = v4;
    while (v23 < v15[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      sub_10004AABC(v27, v26);
      sub_1000A3428();
      sub_10004AB10();
      v28 = v35;
      v29 = v44;
      sub_1000A3448();
      v44 = v29;
      if (v29)
      {

        goto LABEL_2;
      }

      v30 = *v39;
      v31 = v37;
      (*v39)(v37, v28, v5);
      v30(v40, v31, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100095178(0, *(v25 + 2) + 1, 1, v25);
      }

      v33 = *(v25 + 2);
      v32 = *(v25 + 3);
      if (v33 >= v32 >> 1)
      {
        v25 = sub_100095178(v32 > 1, v33 + 1, 1, v25);
      }

      ++v23;
      *(v25 + 2) = v33 + 1;
      v30(&v25[((*(v34[0] + 80) + 32) & ~*(v34[0] + 80)) + *(v34[0] + 72) * v33], v40, v5);
      v24 += 2;
      if (v36 == v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_23:

  v15 = v38;
LABEL_19:
  *v15 = v25;
}

uint64_t sub_100049258()
{
  v0 = sub_1000A2498();
  v1 = *(v0 - 8);
  __chkstk_darwin(*(v1 + 64));
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000A3408();
  v5 = *(v4 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2F48();
  sub_1000A33E8();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1000A2428();
  (*(v1 + 8))(v3, v0);
  return v8 & 1;
}

void *sub_1000493F0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_1000A2F68();
  __chkstk_darwin(*(*(v38 - 8) + 64));
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v37 = &v27 - v10;
  v34 = *(a3 + 16);
  if (v34)
  {
    v11 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = &_swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v11 < *(a3 + 16))
    {
      v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v13 = *(v9 + 72);
      v14 = a3;
      v15 = a3 + v12 + v13 * v11;
      v16 = v9;
      v17 = a1;
      v18 = v37;
      (*(v9 + 16))(v37, v15, v38);
      v19 = v18;
      a1 = v17;
      v20 = v17(v19);
      if (v3)
      {
        (*v31)(v37, v38);
        v26 = v36;

        return v26;
      }

      if (v20)
      {
        v21 = *v32;
        (*v32)(v35, v37, v38);
        v22 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004A298(0, v22[2] + 1, 1);
          v22 = v39;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_10004A298(v24 > 1, v25 + 1, 1);
          v22 = v39;
        }

        v22[2] = v25 + 1;
        v36 = v22;
        result = (v21)(v22 + v12 + v25 * v13, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        result = (*v31)(v37, v38);
        a3 = v14;
      }

      ++v11;
      v9 = v16;
      if (v34 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v36;
  }

  return result;
}

void sub_1000496C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_autoreleasePoolPush();
  sub_100049770(a5, a1, a2, a3, a4, v5, v5, &v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_100049770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_10000275C(&qword_1000C88D8, &unk_1000AC370);
  result = sub_1000A3D58();
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

void sub_100049804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a1;
  v50 = a3;
  v47 = a6;
  v9 = sub_1000A2498();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(*(v45 + 64));
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000A2F88();
  v11 = sub_1000A2F78();
  [v11 setResultType:0];
  v12 = objc_allocWithZone(NSSortDescriptor);
  v13 = sub_1000A3A78();
  v14 = [v12 initWithKey:v13 ascending:0];

  v15 = objc_allocWithZone(NSSortDescriptor);
  v16 = sub_1000A3A78();
  v17 = [v15 initWithKey:v16 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000AC310;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v53 = v14;
  v19 = v17;
  isa = sub_1000A3B48().super.isa;

  [v11 setSortDescriptors:isa];

  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AC010;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1000321D0();
  v23 = v50;
  *(v21 + 32) = v49;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = a4;

  v24 = sub_1000A3C98();
  [v11 setPredicate:v24];
  [v11 setFetchLimit:1];
  v25 = v52;
  v51 = a5;
  v26 = sub_1000A3D68();
  if (v25)
  {

    return;
  }

  v27 = v48;
  if (!(v26 >> 62))
  {
    v28 = v53;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    v40 = v19;

    v37 = 0;
    v39 = 0;
LABEL_12:
    [v51 reset];

    v43 = v47;
    *v47 = v37;
    v43[1] = v39;
    return;
  }

  v41 = v26;
  v42 = sub_1000A3EC8();
  v26 = v41;
  v28 = v53;
  if (!v42)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = sub_1000A3EA8();
LABEL_8:
    v30 = v29;

    v31 = [v30 tariffProfiles];
    v32 = sub_1000A23B8();
    v34 = v33;

    v35 = objc_autoreleasePoolPush();
    sub_100048D80(&v54);
    objc_autoreleasePoolPop(v35);
    sub_10003228C(v32, v34);
    v36 = v54;
    sub_1000A2478();
    v37 = sub_10004A5BC(v36, v27);
    v39 = v38;

    (*(v45 + 8))(v27, v46);
    v28 = v53;
    v40 = v19;
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
    goto LABEL_8;
  }

  __break(1u);
  objc_autoreleasePoolPop(v28);
  __break(1u);
}

uint64_t sub_100049CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100049CD8, 0, 0);
}

uint64_t sub_100049CD8()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 56) = qword_1000C9648;

  return _swift_task_switch(sub_100049D70, v1, 0);
}

uint64_t sub_100049D70()
{
  v1 = *(*(v0 + 56) + 112);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 64) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100049EAC, 0, 0);
}

uint64_t sub_100049EAC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 64);
  sub_1000496C0(v5, v4, v3, v1, v6);
  v8 = v7;
  v10 = v9;
  *(v0 + 72) = 0;

  if (v10)
  {

    v11 = *(v0 + 8);

    return v11(v8, v10);
  }

  else
  {
    v13 = *(v0 + 56);

    return _swift_task_switch(sub_10004A008, v13, 0);
  }
}

uint64_t sub_10004A008()
{
  v1 = *(*(v0 + 56) + 120);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 80) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10004A144, 0, 0);
}

uint64_t sub_10004A144()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  v8 = v2;
  sub_1000496C0(v7, v6, v5, v3, v8);
  v10 = v9;
  v12 = v11;

  if (v1)
  {
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 8);

    return v15(v10, v12);
  }
}

void sub_10004A270(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  sub_100049804(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

size_t sub_10004A298(size_t a1, int64_t a2, char a3)
{
  result = sub_10004A2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A2B8(char *a1, int64_t a2, char a3)
{
  result = sub_10004A4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004A2D8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000275C(&qword_1000C88E0, &qword_1000AC388);
  v10 = *(sub_1000A2F68() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000A2F68() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10004A4B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C88F8, &unk_1000AC790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10004A5BC(uint64_t a1, uint64_t a2)
{
  v59 = sub_1000A2498();
  v4 = *(v59 - 8);
  __chkstk_darwin(*(v4 + 64));
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v42 - v6;
  v57 = sub_1000A3408();
  v7 = *(v57 - 8);
  __chkstk_darwin(*(v7 + 64));
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v42 - v9;
  v10 = sub_1000A2F68();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v61 = a2;

  v19 = sub_1000493F0(sub_10004AA9C, v60, a1);
  v20 = v19[2];
  if (!v20)
  {

    return 0;
  }

  v42 = v18;
  v21 = *(v11 + 16);
  v22 = v19;
  v51 = v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v52 = v21;
  v53 = v11 + 16;
  (v21)(v15);
  result = v22;
  if (v20 == 1)
  {
LABEL_3:

    v24 = v42;
    (*(v11 + 32))(v42, v15, v10);
    v25 = sub_1000A2F38();
    (*(v11 + 8))(v24, v10);
    return v25;
  }

  v47 = (v4 + 8);
  v48 = (v7 + 8);
  v46 = v11 + 8;
  v43 = (v11 + 32);
  v26 = 1;
  v49 = v20;
  v50 = v22;
  v44 = v15;
  v45 = v13;
  v27 = v56;
  while (v26 < *(result + 16))
  {
    v52(v13, &v51[*(v11 + 72) * v26], v10);
    v28 = v54;
    sub_1000A2F58();
    sub_1000A33E8();
    v29 = *v48;
    v30 = v28;
    v31 = v11;
    v32 = v57;
    (*v48)(v30, v57);
    v33 = v55;
    sub_1000A2F58();
    v34 = v10;
    v35 = v58;
    sub_1000A33E8();
    v36 = v32;
    v11 = v31;
    v29(v33, v36);
    v37 = sub_1000A2438();
    v38 = *v47;
    v39 = v35;
    v40 = v59;
    (*v47)(v39, v59);
    v38(v27, v40);
    v41 = *(v31 + 8);
    if (v37)
    {
      v15 = v44;
      v41(v44, v34);
      v13 = v45;
      (*v43)(v15, v45, v34);
      v10 = v34;
    }

    else
    {
      v13 = v45;
      v41(v45, v34);
      v10 = v34;
      v15 = v44;
    }

    ++v26;
    result = v50;
    if (v49 == v26)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10004AB10()
{
  result = qword_1000C88F0;
  if (!qword_1000C88F0)
  {
    sub_1000A2F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C88F0);
  }

  return result;
}

uint64_t sub_10004AB68()
{
  v0 = objc_autoreleasePoolPush();
  sub_10004ACF0(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_10004ABB8()
{
  type metadata accessor for ServiceSandbox();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1000C96D0 = v0;
  return result;
}

uint64_t sub_10004ABF8()
{
  result = _set_user_dir_suffix();
  if (!result)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "_set_user_dir_suffix() failed!", v4, 2u);
    }

    exit(0);
  }

  return result;
}

void sub_10004ACF0(uint64_t *a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1000A2308();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v18 = 0x40000000000;
  v19 = sub_1000A22D8();
  sub_10004B384(&v18, 0);
  v19 |= 0x4000000000000000uLL;
  sub_10004AF68(&v18, 65537);
  v7 = v6;
  sub_10003228C(v18, v19);
  objc_autoreleasePoolPop(v2);
  if (!v7)
  {
LABEL_6:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);
    v15 = sub_1000A3518();
    v16 = sub_1000A3CC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v17, 2u);
    }

    exit(1);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = sub_1000A3AA8();

  v10 = realpath_DARWIN_EXTSN((v9 + 32), 0);

  if (!v10)
  {
    objc_autoreleasePoolPop(v8);
    goto LABEL_6;
  }

  v11 = sub_1000A3AF8();
  v13 = v12;

  objc_autoreleasePoolPop(v8);
  if (!v13)
  {
    goto LABEL_6;
  }

  *a1 = v11;
  a1[1] = v13;
}

uint64_t sub_10004AEE0@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1000A3AF8();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_10004AF68(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_10003228C(v6, v5);
      *v20 = v6;
      *&v20[8] = v5;
      v20[10] = BYTE2(v5);
      v20[11] = BYTE3(v5);
      v20[12] = BYTE4(v5);
      v20[13] = BYTE5(v5);
      v20[14] = BYTE6(v5);
      result = sub_10004AEE0(v20, a2, &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = *&v20[8] | ((*&v20[12] | (v20[14] << 16)) << 32);
      *a1 = *v20;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10003228C(v6, v5);
    *a1 = xmmword_1000AC3A0;
    sub_10003228C(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1000A22C8() && __OFSUB__(v6, sub_1000A22F8()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = sub_1000A2308();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1000A22B8();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_10004B2D8(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_10003228C(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000AC3A0;
    sub_10003228C(0, 0xC000000000000000);
    sub_1000A2398();
    v6 = v21;
    result = sub_10004B2D8(*(v21 + 16), *(v21 + 24), v22, a2);
    v11 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  memset(v20, 0, 15);
  result = sub_10004AEE0(v20, a2, &v21);
  if (!v2)
  {
    return v21;
  }

  return result;
}

uint64_t sub_10004B2D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1000A22C8();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1000A22F8();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1000A22E8();
  result = sub_10004AEE0((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_10004B384(int *a1, int a2)
{
  sub_1000A23A8();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_1000A22C8();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_1000A22F8();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_1000A22E8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_10004B42C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v139 = a3;
  v145 = a2;
  v138 = a1;
  v110 = a4;
  v140 = sub_1000A38F8();
  v116 = *(v140 - 8);
  __chkstk_darwin(*(v116 + 64));
  v119 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &v108 - v5;
  v126 = sub_1000A2568();
  v127 = *(v126 - 8);
  __chkstk_darwin(*(v127 + 64));
  v125 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2498();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v136 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v135 = &v108 - v10;
  __chkstk_darwin(v11);
  v147 = &v108 - v12;
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  __chkstk_darwin(v15);
  v142 = &v108 - v16;
  __chkstk_darwin(v17);
  v113 = &v108 - v18;
  __chkstk_darwin(v19);
  v143 = &v108 - v20;
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  __chkstk_darwin(v24);
  v132 = (&v108 - v25);
  __chkstk_darwin(v26);
  v148 = &v108 - v27;
  __chkstk_darwin(v28);
  v30 = &v108 - v29;
  __chkstk_darwin(v31);
  v33 = &v108 - v32;
  v128 = (&v108 - v32);
  __chkstk_darwin(v34);
  v36 = (&v108 - v35);
  __chkstk_darwin(v37);
  v39 = &v108 - v38;
  __chkstk_darwin(v40);
  v42 = (&v108 - v41);
  v146 = sub_1000A22A8();
  v111 = *(v146 - 8);
  __chkstk_darwin(*(v111 + 64));
  v134 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v137 = &v108 - v44;
  __chkstk_darwin(v45);
  v141 = &v108 - v46;
  sub_1000A2288();
  v133 = v39;
  sub_1000A2248();
  sub_1000A2478();
  v48 = (v8 + 16);
  v47 = *(v8 + 16);
  v129 = v42;
  v47(v33, v42, v7);
  v49 = v127;
  v50 = *(v127 + 104);
  v51 = v125;
  v118 = enum case for Calendar.Component.year(_:);
  v52 = v126;
  v123 = v127 + 104;
  v122 = v50;
  v50(v125);
  v130 = v36;
  sub_1000A2ED8();
  v54 = v49 + 8;
  v53 = *(v49 + 8);
  v55 = v8;
  v127 = v54;
  v121 = v53;
  v53(v51, v52);
  v131 = v30;
  v56 = v128;
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v57 = sub_1000A3538();
    sub_100001E38(v57, qword_1000C96B8);
    v58 = sub_1000A3518();
    v59 = sub_1000A3CC8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "[AMIQueryEngine] Client requested query start date is before five years ago.", v60, 2u);
    }

    (*(v55 + 8))(v56, v7);
    v47(v56, v148, v7);
  }

  v61 = v132;
  v47(v132, v133, v7);
  v62 = v130;
  if (sub_1000A2428())
  {
    (*(v55 + 8))(v61, v7);
    v47(v61, v62, v7);
  }

  v47(v23, v56, v7);
  v112 = v47;
  v47(v143, v61, v7);
  sub_1000A2268();
  v108 = v55;
  v63 = *(v55 + 8);
  v63(v61, v7);
  v63(v148, v7);
  v63(v131, v7);
  v63(v56, v7);
  v63(v62, v7);
  v63(v133, v7);
  v63(v129, v7);
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A2288();
  v64 = v137;
  sub_10004C5C8(v23, v138, v145, v139 & 1, v137);
  v63(v23, v7);
  sub_1000A2288();
  sub_1000A2288();
  sub_1000A2248();
  sub_1000A2248();
  v65 = v112;
  v66 = sub_1000A2438();
  v63(v23, v7);
  if (v66)
  {
    v67 = (v116 + 16);
    v132 = (v116 + 88);
    LODWORD(v131) = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
    v124 = enum case for ElectricityInsightQuery.Granularity.daily(_:);
    v117 = enum case for ElectricityInsightQuery.Granularity.weekly(_:);
    v115 = enum case for ElectricityInsightQuery.Granularity.monthly(_:);
    v114 = enum case for ElectricityInsightQuery.Granularity.yearly(_:);
    v130 = (v111 + 8);
    v109 = (v116 + 8);
    LODWORD(v116) = enum case for Calendar.Component.day(_:);
    v129 = (v111 + 32);
    v128 = (v108 + 32);
    v148 = v48;
    v133 = v67;
    while (1)
    {
      sub_1000A2248();
      v68 = *v67;
      if ((v139 & 1) == 0)
      {
        break;
      }

      v69 = v120;
      v70 = v140;
      v68(v120, v138, v140);
      v71 = (*v132)(v69, v70);
      if (v71 == v131 || v71 == v124)
      {
        goto LABEL_17;
      }

      if (v71 != v117)
      {
        if (v71 != v115 && v71 != v114)
        {
          sub_1000A2E88();
          v87 = v125;
          v88 = v126;
          v122(v125, v118, v126);
          v89 = v143;
          sub_1000A2ED8();
          v121(v87, v88);
          v65(v135, v23, v7);
          v65(v136, v89, v7);
          v80 = v134;
          sub_1000A2268();
          v63(v89, v7);
          v63(v23, v7);
          v63(v147, v7);
          v90 = v137;
          (*v130)(v137, v146);
          v91 = *v109;
          v92 = &v150;
LABEL_40:
          v94 = *(v92 - 32);
          v95 = v140;
          goto LABEL_35;
        }

        goto LABEL_17;
      }

      v82 = v147;
      sub_1000A2EA8();
      v83 = v143;
      sub_1000A2E58();
      v65(v135, v23, v7);
      v65(v136, v83, v7);
      v80 = v134;
      sub_1000A2268();
      v63(v83, v7);
      v63(v23, v7);
      v84 = v82;
LABEL_34:
      v63(v84, v7);
      v91 = *v130;
      v90 = v137;
      v94 = v137;
      v95 = v146;
LABEL_35:
      v91(v94, v95);
      (*v129)(v90, v80, v146);
      v64 = v90;
      sub_1000A2288();
      v96 = v144;
      v63(v144, v7);
      v97 = v142;
      v63(v142, v7);
      (*v128)(v97, v23, v7);
      v65(v96, v97, v7);
      sub_1000A2248();
      v98 = sub_1000A2438();
      v63(v23, v7);
      v67 = v133;
      if ((v98 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v77 = v119;
    v78 = v140;
    v68(v119, v138, v140);
    v79 = (*v132)(v77, v78);
    if (v79 == v131)
    {
      v73 = v147;
      sub_1000A2E78();
      v74 = v125;
      v75 = v126;
      v122(v125, v116, v126);
      v76 = v143;
LABEL_20:
      sub_1000A2ED8();
      v121(v74, v75);
      v65(v135, v23, v7);
      v65(v136, v76, v7);
      v80 = v134;
      sub_1000A2268();
      v81 = v76;
LABEL_33:
      v63(v81, v7);
      v63(v23, v7);
      v84 = v73;
      goto LABEL_34;
    }

    if (v79 == v124)
    {
      v73 = v147;
      sub_1000A2E98();
      v85 = v143;
      sub_1000A2E38();
    }

    else
    {
      if (v79 != v117)
      {
        if (v79 != v115 && v79 != v114)
        {
          v99 = v147;
          sub_1000A2E48();
          v100 = v143;
          sub_1000A2EE8();
          v65(v135, v23, v7);
          v65(v136, v100, v7);
          v101 = v134;
          sub_1000A2268();
          v102 = v100;
          v80 = v101;
          v63(v102, v7);
          v63(v23, v7);
          v63(v99, v7);
          v90 = v137;
          (*v130)(v137, v146);
          v91 = *v109;
          v92 = &v149;
          goto LABEL_40;
        }

LABEL_17:
        v73 = v147;
        sub_1000A2E88();
        v74 = v125;
        v75 = v126;
        v122(v125, v118, v126);
        v76 = v143;
        goto LABEL_20;
      }

      v73 = v147;
      sub_1000A2EA8();
      v85 = v143;
      sub_1000A2E58();
    }

    v65(v135, v23, v7);
    v65(v136, v85, v7);
    v93 = v134;
    sub_1000A2268();
    v81 = v85;
    v80 = v93;
    goto LABEL_33;
  }

LABEL_41:
  v103 = v113;
  v65(v23, v113, v7);
  v104 = v144;
  v65(v143, v144, v7);
  sub_1000A2268();
  v63(v104, v7);
  v63(v142, v7);
  v63(v103, v7);
  v105 = *(v111 + 8);
  v106 = v146;
  v105(v64, v146);
  return (v105)(v141, v106);
}

uint64_t sub_10004C5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v51 = a3;
  v54 = a5;
  v49 = sub_1000A2568();
  v7 = *(v49 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A2498();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  __chkstk_darwin(*(v11 + 64));
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v48 - v13;
  __chkstk_darwin(v14);
  v57 = &v48 - v15;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_1000A38F8();
  v20 = *(v19 - 8);
  __chkstk_darwin(*(v20 + 64));
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  v25 = (v20 + 88);
  v26 = *(v20 + 16);
  if (a4)
  {
    v26(v22, a2, v19);
    v27 = (*v25)(v22, v19);
    if (v27 != enum case for ElectricityInsightQuery.Granularity.hourly(_:) && v27 != enum case for ElectricityInsightQuery.Granularity.daily(_:))
    {
      if (v27 != enum case for ElectricityInsightQuery.Granularity.weekly(_:))
      {
        if (v27 != enum case for ElectricityInsightQuery.Granularity.monthly(_:) && v27 != enum case for ElectricityInsightQuery.Granularity.yearly(_:))
        {
          sub_1000A2E88();
          v33 = v49;
          (*(v7 + 104))(v9, enum case for Calendar.Component.year(_:), v49);
          sub_1000A2ED8();
          (*(v7 + 8))(v9, v33);
          v35 = v55;
          v34 = v56;
          v36 = *(v56 + 16);
          v36(v52, v18, v55);
          v36(v53, v57, v35);
          sub_1000A2268();
          v37 = *(v34 + 8);
          v37(v57, v35);
          v37(v18, v35);
          return (*(v20 + 8))(v22, v19);
        }

        goto LABEL_7;
      }

LABEL_20:
      sub_1000A2EA8();
      v30 = v57;
      sub_1000A2E58();
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v26(&v48 - v23, a2, v19);
  v31 = (*v25)(v24, v19);
  if (v31 == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    sub_1000A2E78();
    v29 = v49;
    (*(v7 + 104))(v9, enum case for Calendar.Component.day(_:), v49);
    v30 = v57;
    goto LABEL_10;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    sub_1000A2E98();
    v30 = v57;
    sub_1000A2E38();
    goto LABEL_21;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    goto LABEL_20;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.monthly(_:) || v31 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
  {
LABEL_7:
    sub_1000A2E88();
    v29 = v49;
    (*(v7 + 104))(v9, enum case for Calendar.Component.year(_:), v49);
    v30 = v57;
LABEL_10:
    sub_1000A2ED8();
    (*(v7 + 8))(v9, v29);
LABEL_21:
    v40 = v55;
    v39 = v56;
    v41 = *(v56 + 16);
    v41(v52, v18, v55);
    v41(v53, v30, v40);
    sub_1000A2268();
    v42 = *(v39 + 8);
    v42(v30, v40);
    return (v42)(v18, v40);
  }

  sub_1000A2E48();
  sub_1000A2EE8();
  v45 = v55;
  v44 = v56;
  v46 = *(v56 + 16);
  v46(v52, v18, v55);
  v46(v53, v57, v45);
  sub_1000A2268();
  v47 = *(v44 + 8);
  v47(v57, v45);
  v47(v18, v45);
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_10004CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v35 = a1;
  v37 = a4;
  v34 = sub_1000A2568();
  v5 = *(v34 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000A2498();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_1000A38F8();
  v19 = *(v18 - 8);
  __chkstk_darwin(*(v19 + 64));
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a2, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    if (qword_1000C7580 != -1)
    {
      swift_once();
    }

    v23 = sub_1000A2578();
    sub_100001E38(v23, qword_1000C96D8);
    sub_1000A2E68();
    v24 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v34);
    sub_1000A2ED8();
    (*(v5 + 8))(v7, v24);
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    sub_1000A2E48();
    sub_1000A2EE8();
LABEL_10:
    v26 = *(v9 + 16);
    v26(v38, v17, v8);
    v26(v36, v14, v8);
    sub_1000A2268();
    v27 = *(v9 + 8);
    v27(v14, v8);
    return (v27)(v17, v8);
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    sub_1000A2EC8();
    v25 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v34);
LABEL_9:
    sub_1000A2ED8();
    (*(v5 + 8))(v7, v25);
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.monthly(_:))
  {
    sub_1000A2E98();
    sub_1000A2E38();
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
  {
    sub_1000A2E88();
    v25 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.year(_:), v34);
    goto LABEL_9;
  }

  if (qword_1000C7580 != -1)
  {
    swift_once();
  }

  v29 = sub_1000A2578();
  v33 = sub_100001E38(v29, qword_1000C96D8);
  sub_1000A2E68();
  v30 = v34;
  (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v34);
  sub_1000A2ED8();
  (*(v5 + 8))(v7, v30);
  v31 = *(v9 + 16);
  v31(v38, v17, v8);
  v31(v36, v14, v8);
  sub_1000A2268();
  v32 = *(v9 + 8);
  v32(v14, v8);
  v32(v17, v8);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_10004D2D0()
{
  v0 = sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0);
  __chkstk_darwin(((*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = &v13 - v1;
  v3 = sub_1000A25A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(*(v4 + 64));
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2518();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A2578();
  sub_100015578(v11, qword_1000C96D8);
  sub_100001E38(v11, qword_1000C96D8);
  (*(v8 + 104))(v10, enum case for Calendar.Identifier.gregorian(_:), v7);
  sub_1000A2528();
  (*(v8 + 8))(v10, v7);
  sub_1000A2598();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    return sub_1000A2558();
  }

  return result;
}

uint64_t sub_10004D548()
{
  type metadata accessor for EnergyKitAppTrackerQuery();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1000C96F0 = v0;
  return result;
}

uint64_t sub_10004D5A8()
{
  v1 = *(v0[2] + 112);
  if (v1)
  {
    v5 = v0[1];
    v2 = v1;

    return v5(v2);
  }

  else
  {
    if (qword_1000C7568 != -1)
    {
      swift_once();
    }

    v4 = qword_1000C9648;
    v0[3] = qword_1000C9648;

    return _swift_task_switch(sub_10004D688, v4, 0);
  }
}

uint64_t sub_10004D688()
{
  v1 = v0[2];
  v2 = *(v0[3] + 128);
  v3 = sub_10004060C();
  v4 = [v3 newBackgroundContext];
  v0[4] = v4;
  v5 = sub_1000A3A78();
  [v4 setTransactionAuthor:v5];

  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v4 setUndoManager:0];
  [v4 setShouldRefreshAfterSave:1];
  [v4 setStalenessInterval:0.0];
  [v4 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10004D7C4, v1, 0);
}

uint64_t sub_10004D7C4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;

  v5 = v0[4];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10004D838(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10004D900, v1, 0);
}

uint64_t sub_10004D900()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_10004D9A8, v1, 0);
}

uint64_t sub_10004D9A8()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10004DA9C;
    v4 = v0[9];

    return sub_10004D588();
  }

  else
  {
    v6 = v0[13];

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_10004DA9C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10004DBB4, v3, 0);
}

uint64_t sub_10004DBB4()
{
  *(v0 + 152) = 1;
  v1 = v0 + 152;
  aBlock = (v0 + 16);
  v20 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v1 - 56);
  v5 = *(v1 - 48);
  v6 = *(v1 - 72);
  v7 = *(v1 - 64);
  (*(v7 + 16))(v5, *(v1 - 88), v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  (*(v7 + 32))(v10 + v8, v5, v6);
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10005271C;
  *(v11 + 24) = v10;
  *(v1 - 104) = sub_1000527D8;
  *(v1 - 96) = v11;
  *(v1 - 136) = _NSConcreteStackBlock;
  *(v1 - 128) = 1107296256;
  *(v1 - 120) = sub_1000636D8;
  *(v1 - 112) = &unk_1000BF990;
  v12 = _Block_copy(aBlock);
  v13 = *(v1 - 96);
  v14 = v20;

  [v14 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v19 + 152);

    v17 = *(v19 + 104);

    v18 = *(v19 + 8);

    return v18(v16);
  }

  return result;
}

void sub_10004DDF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v24 = a4;
  v8 = sub_1000A2508();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(*(v26 + 64));
  v25 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2CD8();
  v28 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AC010;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000321D0();
  v23[2] = a1;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v10 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v10 + 104) = sub_100051BB4();
  *(v10 + 72) = isa;
  v12 = sub_1000A3C98();
  [v28 setPredicate:v12];

  [v28 setReturnsObjectsAsFaults:0];
  [v28 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000AC0E0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x436564756C636E69;
  *(v13 + 40) = 0xEB0000000074736FLL;
  v14 = sub_1000A3B48().super.isa;

  [v28 setPropertiesToFetch:v14];

  [v28 setFetchBatchSize:1];
  v15 = sub_1000A3D68();
  v16 = v24;
  if (v15 >> 62)
  {
    v20 = v15;
    v21 = sub_1000A3EC8();
    v15 = v20;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_8:

    v19 = 1;
    goto LABEL_9;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = [v18 includeCost];

LABEL_9:
  *v16 = v19;
  [a5 reset];
  v22 = v28;
}

uint64_t sub_10004E3E0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_1000A2508();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10004E4D0, v1, 0);
}

uint64_t sub_10004E4D0()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 128) = qword_1000C95F0;

  return _swift_task_switch(sub_10004E578, v1, 0);
}

uint64_t sub_10004E578()
{
  v1 = v0[16];
  v2 = v0[10];
  v0[17] = *(v1 + 112);
  v0[18] = *(v1 + 120);

  return _swift_task_switch(sub_10004E5FC, v2, 0);
}

uint64_t sub_10004E5FC()
{
  if (v0[18])
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_10004E6E0;
    v2 = v0[10];

    return sub_10004D588();
  }

  else
  {
    v4 = sub_100089E74(&_swiftEmptyArrayStorage);
    v5 = v0[15];

    v6 = v0[1];

    return v6(v4);
  }
}

uint64_t sub_10004E6E0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10004E7F8, v3, 0);
}

uint64_t sub_10004E7F8()
{
  v0[8] = &_swiftEmptyDictionarySingleton;
  v1 = v0 + 8;
  v22 = v0[20];
  aBlock = v0 + 2;
  v20 = v0[18];
  v2 = v0[17];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[4];
  v6 = v1[5];
  v21 = v1[3];
  (*(v6 + 16))(v4, v1[1], v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v20;
  (*(v6 + 32))(v10 + v7, v4, v5);
  *(v10 + v8) = v22;
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100052594;
  *(v11 + 24) = v10;
  *(v1 - 2) = sub_1000527D8;
  *(v1 - 1) = v11;
  *(v1 - 6) = _NSConcreteStackBlock;
  *(v1 - 5) = 1107296256;
  *(v1 - 4) = sub_1000636D8;
  *(v1 - 3) = &unk_1000BF918;
  v12 = _Block_copy(aBlock);
  v13 = *(v1 - 1);
  v14 = v22;

  [v14 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v16 = v19[8];

    v17 = v19[15];

    v18 = v19[1];

    return v18(v16);
  }

  return result;
}

void sub_10004EA54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v76 = a5;
  v84 = a4;
  v8 = sub_1000A2508();
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin(*(v79 + 64));
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A2498();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(*(v81 + 64));
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v73 - v12;
  sub_1000A2CD8();
  v13 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v14 = swift_allocObject();
  v83 = xmmword_1000AC010;
  *(v14 + 16) = xmmword_1000AC010;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000321D0();
  v73 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v77 = a3;
  isa = sub_1000A24D8().super.isa;
  *(v14 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v14 + 104) = sub_100051BB4();
  *(v14 + 72) = isa;
  v16 = sub_1000A3C98();
  [v13 setPredicate:v16];

  [v13 setReturnsObjectsAsFaults:0];
  [v13 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v17 = swift_allocObject();
  *(v17 + 16) = v83;
  *(v17 + 32) = 0x73444964697267;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 88) = &type metadata for String;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 0x616470557473616CLL;
  v18 = v84;
  *(v17 + 72) = 0xEB00000000646574;
  v19 = sub_1000A3B48().super.isa;

  [v13 setPropertiesToFetch:v19];

  [v13 setFetchBatchSize:1];
  *&v83 = v13;
  v20 = sub_1000A3D68();
  if (v20 >> 62)
  {
LABEL_38:
    v72 = v20;
    v34 = sub_1000A3EC8();
    v20 = v72;
  }

  else
  {
    v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v76;
  v37 = v81;
  v36 = v82;
  if (!v34)
  {
    goto LABEL_35;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v38 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_42:
      sub_1000A3F78();
      __break(1u);
      return;
    }

    v38 = *(v20 + 32);
  }

  v39 = v38;

  v40 = [v39 gridIDs];
  v80 = sub_1000A3A18();

  v41 = [v39 lastUpdated];
  if (!v41)
  {

LABEL_34:
    v70 = *v35;
    *v35 = v80;
LABEL_35:

    v71 = v83;
    [v18 reset];

    return;
  }

  v42 = v41;
  sub_1000A2468();

  sub_1000A2488();
  sub_1000A23D8();
  v44 = pow(0.95, v43 / 86400.0);
  v35 = (v80 + 64);
  v45 = 1 << *(v80 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v80 + 64);
  v18 = ((v45 + 63) >> 6);

  v49 = 0;
  v50 = v48;
  while (v47)
  {
    v52 = v49;
LABEL_23:
    v53 = __clz(__rbit64(v47)) | (v52 << 6);
    v54 = (*(v80 + 48) + 16 * v53);
    v37 = *v54;
    v36 = v54[1];
    v55 = *(*(v80 + 56) + 8 * v53);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = v50;
    v20 = sub_100079BDC(v37, v36);
    v58 = v50[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      __break(1u);
      goto LABEL_38;
    }

    v62 = v57;
    if (v50[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v20;
        sub_10007CB30();
        v20 = v68;
      }
    }

    else
    {
      sub_10007AFB0(v61, isUniquelyReferenced_nonNull_native);
      v20 = sub_100079BDC(v37, v36);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_42;
      }
    }

    v47 &= v47 - 1;
    v64 = v44 * v55;
    if (v62)
    {
      v51 = v20;

      v50 = v85[0];
      *(*(v85[0] + 56) + 8 * v51) = v64;
    }

    else
    {
      v50 = v85[0];
      *(v85[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v65 = (v50[6] + 16 * v20);
      *v65 = v37;
      v65[1] = v36;
      *(v50[7] + 8 * v20) = v64;
      v66 = v50[2];
      v60 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v60)
      {
        __break(1u);
        goto LABEL_40;
      }

      v50[2] = v67;
    }

    v49 = v52;
    v37 = v81;
    v36 = v82;
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v52 >= v18)
    {

      v69 = *(v37 + 8);
      v69(v75, v36);
      v69(v74, v36);

      v80 = v50;
      v18 = v84;
      v35 = v76;
      goto LABEL_34;
    }

    v47 = v35[v52];
    ++v49;
    if (v47)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  swift_once();
  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);
  v22 = v78;
  v23 = v79;
  v24 = v80;
  (*(v79 + 16))(v78, v77, v80);

  swift_errorRetain();
  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v85[0] = v82;
    *v27 = 136315651;
    *(v27 + 4) = sub_1000954AC(v73, v36, v85);
    *(v27 + 12) = 2081;
    sub_100051C1C();
    v29 = sub_1000A3F28();
    v31 = v30;
    (*(v23 + 8))(v22, v24);
    v32 = sub_1000954AC(v29, v31, v85);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2112;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 24) = v33;
    *v28 = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch gridIDs for %s at site %{private}s: %@", v27, 0x20u);
    sub_100022154(v28, &unk_1000C7740, &qword_1000AB610);

    swift_arrayDestroy();

    v18 = v84;
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  [v18 reset];
}

uint64_t sub_10004F370(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_1000A2508();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10004F43C, v2, 0);
}

uint64_t sub_10004F43C()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_10004F4E4, v1, 0);
}

uint64_t sub_10004F4E4()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10004F5D4;
    v4 = v0[9];

    return sub_10004D588();
  }

  else
  {
    v6 = v0[13];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10004F5D4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10004F6EC, v3, 0);
}

uint64_t sub_10004F6EC()
{
  v19 = v0[18];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = *(v0 + 152);
  (*(v6 + 16))(v4, v0[8], v5);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  (*(v6 + 32))(v10 + v8, v4, v5);
  v11 = v10 + v9;
  *v11 = v19;
  *(v11 + 8) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10005240C;
  *(v12 + 24) = v10;
  v0[6] = sub_1000527D8;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000636D8;
  v0[5] = &unk_1000BF8A0;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];
  v15 = v19;

  [v15 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[13];

    v18 = v0[1];

    return v18();
  }

  return result;
}

void sub_10004F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1000A2CD8();
  v8 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AC010;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000321D0();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v9 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v9 + 104) = sub_100051BB4();
  *(v9 + 72) = isa;
  v11 = sub_1000A3C98();
  [v8 setPredicate:v11];

  v12 = sub_1000A3D68();
  if (v12 >> 62)
  {
    v19 = v12;
    v20 = sub_1000A3EC8();
    v12 = v19;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_11:

    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
    [v22 setIncludeCost:a5 & 1];
    v13 = sub_1000A24D8().super.isa;
    [v22 setSiteID:v13];

    v14 = sub_1000A3A78();
    [v22 setAppID:v14];

    sub_100089E74(&_swiftEmptyArrayStorage);
    v15 = sub_1000A3A08().super.isa;

    [v22 setGridIDs:v15];

    sub_100041038(1);
    v18 = v22;
    goto LABEL_7;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v12 + 32);
  }

  v17 = v16;

  [v17 setIncludeCost:a5 & 1];

  sub_100041038(1);
  v18 = v8;
LABEL_7:
}

uint64_t sub_10004FC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  v5 = sub_1000A2508();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v4[15] = *(v6 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10004FD34, v3, 0);
}

uint64_t sub_10004FD34()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 136) = qword_1000C95F0;

  return _swift_task_switch(sub_10004FDDC, v1, 0);
}

uint64_t sub_10004FDDC()
{
  v1 = v0[17];
  v0[18] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[19] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10004FECC;
    v4 = v0[11];

    return sub_10004D588();
  }

  else
  {
    v6 = v0[16];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10004FECC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_10004FFE4, v3, 0);
}

uint64_t sub_10004FFE4()
{
  v22 = v0[21];
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v20 = v0[9];
  v21 = v0[12];
  v18 = v0[19];
  v19 = v0[8];
  (*(v5 + 16))(v3, v0[10], v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v18;
  (*(v5 + 32))(v9 + v6, v3, v4);
  *(v9 + v7) = v22;
  v10 = (v9 + v8);
  *v10 = v19;
  v10[1] = v20;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100051D70;
  *(v11 + 24) = v9;
  v0[6] = sub_1000527D8;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000636D8;
  v0[5] = &unk_1000BF828;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];
  v14 = v22;

  [v14 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[16];

    v17 = v0[1];

    return v17();
  }

  return result;
}

void sub_100050238(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v82 = a4;
  v8 = sub_1000A2498();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(*(v80 + 64));
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v73 - v10;
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  sub_1000A2CD8();
  v14 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AC010;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000321D0();
  v76 = a1;
  v77 = a2;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v15 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v15 + 104) = sub_100051BB4();
  *(v15 + 72) = isa;
  v17 = v14;
  v18 = v82;
  v19 = sub_1000A3C98();
  [v14 setPredicate:v19];

  v20 = sub_1000A3D68();
  v21 = 0;
  v73 = v13;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_41:

    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v18];
    sub_10000275C(&qword_1000C8BB0, &qword_1000AC510);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AC0E0;
    v24 = v79;
    *(inited + 32) = v78;
    *(inited + 40) = v24;
    *(inited + 48) = 0x3FF0000000000000;

    sub_100089E74(inited);
    swift_setDeallocating();
    sub_100022154(inited + 32, &qword_1000C8BB8, &qword_1000AC518);
    v25 = sub_1000A3A08().super.isa;

    [v22 setGridIDs:v25];

    v26 = v75;
    sub_1000A2488();
    v27 = sub_1000A2418().super.isa;
    (*(v80 + 8))(v26, v81);
    [v22 setLastUpdated:v27];

    v28 = sub_1000A24D8().super.isa;
    [v22 setSiteID:v28];

    v29 = sub_1000A3A78();
    [v22 setAppID:v29];

    [v22 setIncludeCost:1];
    sub_100041038(1);
    if (v21)
    {
    }

    goto LABEL_4;
  }

LABEL_40:
  v71 = v20;
  v72 = sub_1000A3EC8();
  v20 = v71;
  if (!v72)
  {
    goto LABEL_41;
  }

LABEL_7:
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v20 + 32); ; i = sub_1000A3EA8())
    {
      v22 = i;

      v31 = [v22 gridIDs];
      v32 = sub_1000A3A18();

      sub_1000A2488();
      v33 = [v22 lastUpdated];
      if (!v33)
      {
        v42 = v32;
LABEL_32:
        v62 = 1.0;
        v64 = v78;
        v63 = v79;
        if (v42[2])
        {
          v65 = sub_100079BDC(v78, v79);
          if (v66)
          {
            v62 = *(v42[7] + 8 * v65) + 1.0;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v42;
        sub_10007BD3C(v64, v63, isUniquelyReferenced_nonNull_native, v62);
        sub_100051E2C(v83);

        v68 = sub_1000A3A08().super.isa;

        [v22 setGridIDs:v68];

        v69 = v73;
        v70 = sub_1000A2418().super.isa;
        [v22 setLastUpdated:v70];

        sub_100041038(1);
        if (v21)
        {

          (*(v80 + 8))(v69, v81);

          return;
        }

        (*(v80 + 8))(v69, v81);

LABEL_4:

        return;
      }

      v75 = v22;
      v76 = v17;
      v34 = v33;
      sub_1000A2468();

      sub_1000A23D8();
      v36 = pow(0.95, v35 / 86400.0);
      v37 = v32 + 64;
      v38 = 1 << *(v32 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v17 = v39 & *(v32 + 64);
      v40 = (v38 + 63) >> 6;

      v41 = 0;
      v42 = v32;
      v77 = v21;
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v44 >= v40)
            {
              (*(v80 + 8))(v74, v81);

              v22 = v75;
              v17 = v76;
              goto LABEL_32;
            }

            v17 = *(v37 + 8 * v44);
            ++v41;
            if (v17)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v44 = v41;
LABEL_21:
        v45 = __clz(__rbit64(v17)) | (v44 << 6);
        v46 = *(v32 + 56);
        v47 = v32;
        v48 = (*(v32 + 48) + 16 * v45);
        v21 = *v48;
        v49 = v48[1];
        v50 = *(v46 + 8 * v45);

        v18 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v42;
        v20 = sub_100079BDC(v21, v49);
        v52 = v42[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_39;
        }

        v56 = v51;
        if (v42[3] >= v55)
        {
          if ((v18 & 1) == 0)
          {
            v18 = v20;
            sub_10007CB30();
            v20 = v18;
          }
        }

        else
        {
          sub_10007AFB0(v55, v18);
          v20 = sub_100079BDC(v21, v49);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_45;
          }
        }

        v17 &= v17 - 1;
        v58 = v36 * v50;
        if (v56)
        {
          v43 = v20;

          v42 = v83;
          *(v83[7] + 8 * v43) = v58;
          goto LABEL_15;
        }

        v42 = v83;
        v83[(v20 >> 6) + 8] |= 1 << v20;
        v59 = (v42[6] + 16 * v20);
        *v59 = v21;
        v59[1] = v49;
        *(v42[7] + 8 * v20) = v58;
        v60 = v42[2];
        v54 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v54)
        {
          break;
        }

        v42[2] = v61;
LABEL_15:
        v41 = v44;
        v21 = v77;
        v32 = v47;
      }

      __break(1u);
LABEL_43:
      ;
    }
  }

  __break(1u);
LABEL_45:
  sub_1000A3F78();
  __break(1u);
}

uint64_t sub_100050A90(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100050B28;

  return sub_10004E3E0(a1);
}

uint64_t sub_100050B28(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100050C40, v3, 0);
}

uint64_t sub_100050C40()
{
  v1 = *(v0 + 32);

  v3 = COERCE_DOUBLE(sub_100050E04(v2));
  v5 = v4;

  result = *(v0 + 32);
  if ((v5 & 1) != 0 || !*(result + 16))
  {

LABEL_25:
    v23 = 0;
    v22 = 0;
LABEL_26:
    v24 = *(v0 + 8);

    return v24(v23, v22);
  }

  else
  {
    v7 = result + 64;
    v8 = -1 << *(result + 32);
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(result + 64);
    v11 = (63 - v8) >> 6;
    v12 = 0;
    if (v3 >= 7.5)
    {
      while (v10)
      {
        v16 = v12;
LABEL_21:
        v17 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = v17 | (v16 << 6);
        if (*(*(result + 56) + 8 * v15) == v3)
        {
LABEL_22:
          v18 = (*(result + 48) + 16 * v15);
          v20 = *v18;
          v19 = v18[1];
          v21 = *(v0 + 32);

          v22 = v19;
          v23 = v20;
          goto LABEL_26;
        }
      }

      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v16 >= v11)
        {
LABEL_24:

          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v16);
        ++v12;
        if (v10)
        {
          v12 = v16;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      while (v10)
      {
        v13 = v12;
LABEL_13:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = v14 | (v13 << 6);
        if (*(*(result + 56) + 8 * v15) == v3)
        {
          goto LABEL_22;
        }
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          goto LABEL_24;
        }

        v10 = *(v7 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100050E04(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100050F14(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100050FDC, v1, 0);
}

uint64_t sub_100050FDC()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_100051084, v1, 0);
}

uint64_t sub_100051084()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_100051174;
    v4 = v0[9];

    return sub_10004D588();
  }

  else
  {
    v6 = v0[13];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100051174(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10005128C, v3, 0);
}

uint64_t sub_10005128C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  (*(v7 + 16))(v5, v0[8], v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  (*(v7 + 32))(v10 + v8, v5, v6);
  v11 = v1;
  *(v10 + v9) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100051B04;
  *(v12 + 24) = v10;
  v0[6] = sub_100051B94;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000636D8;
  v0[5] = &unk_1000BF7B0;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];
  v15 = v11;

  [v15 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[13];

    v18 = v0[1];

    return v18();
  }

  return result;
}

void sub_1000514A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a3;
  v20 = *(sub_1000A2508() - 8);
  __chkstk_darwin(*(v20 + 64));
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2CD8();
  v22 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AC010;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000321D0();
  v19[2] = a1;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v9 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v9 + 104) = sub_100051BB4();
  *(v9 + 72) = isa;
  v11 = sub_1000A3C98();
  [v22 setPredicate:v11];

  v12 = sub_1000A3D68();
  v13 = v12;
  v19[1] = v8;
  if (v12 >> 62)
  {
    v14 = sub_1000A3EC8();
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_1000A3EA8();
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    [a4 deleteObject:v16];
  }

LABEL_10:

  sub_100041038(1);
  v18 = v22;
}

uint64_t sub_1000519D0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100051A2C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100051B04()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000514A0(v3, v4, v0 + v2, v5);
}

uint64_t sub_100051B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100051BB4()
{
  result = qword_1000C7F08;
  if (!qword_1000C7F08)
  {
    sub_100032224(255, &qword_1000C7F00, NSUUID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F08);
  }

  return result;
}

unint64_t sub_100051C1C()
{
  result = qword_1000C9340;
  if (!qword_1000C9340)
  {
    sub_1000A2508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9340);
  }

  return result;
}

uint64_t sub_100051C74()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100051D70()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_100050238(v5, v6, v0 + v2, v7, v8, v9);
}

uint64_t sub_100051E2C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = (1 << v3) + 63;
  v6 = v5 >> 6;
  if (v4 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v5);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100051F8C(v8, v6, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100052080(v10, v6, a1);

  if (!v1)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_100051F8C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 0.1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000520F8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000520F8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100052080(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100051F8C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000520F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  result = sub_1000A3F08();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1000A3F88();

    sub_1000A3AC8();
    result = sub_1000A3F98();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100052334()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

void sub_10005240C()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_10004F90C(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1000524A4()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100052594()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10004EA54(v5, v6, v0 + v2, v7, v8);
}

uint64_t sub_10005263C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10005271C()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_10004DDF0(v6, v7, v0 + v2, v4, v5);
}

void sub_1000527EC(unint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v73 = a4;
  v82 = a1;
  v83 = a3;
  v76 = a2;
  v71 = a5;
  v5 = sub_10000275C(&qword_1000C8C68, &qword_1000AC5D8);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = &v69 - v6;
  v7 = sub_1000A26C8();
  v78 = *(v7 - 8);
  __chkstk_darwin(*(v78 + 64));
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v69 - v9;
  v79 = sub_1000A2498();
  v10 = *(v79 - 1);
  __chkstk_darwin(*(v10 + 64));
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v69 - v13;
  v81 = sub_1000A3338();
  v15 = sub_1000A3328();
  [v15 setReturnsObjectsAsFaults:0];
  [v15 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AC0E0;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = 0x80000001000A70F0;
  isa = sub_1000A3B48().super.isa;

  v74 = v15;
  [v15 setPropertiesToFetch:isa];

  v18 = objc_allocWithZone(NSSortDescriptor);
  v19 = sub_1000A3A78();
  v20 = [v18 initWithKey:v19 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000ABC60;
  *(v21 + 32) = v20;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v70 = v20;
  v22 = sub_1000A3B48().super.isa;

  [v15 setSortDescriptors:v22];

  v75 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v72 = "historicalGuidance";
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AC530;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000321D0();
  v24 = v76;
  *(v23 + 32) = v82;
  *(v23 + 40) = v24;

  sub_1000A2248();
  v25 = sub_1000A2418().super.isa;
  v26 = *(v10 + 8);
  v82 = v10 + 8;
  v27 = v79;
  v26(v14, v79);
  v28 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v23 + 96) = v28;
  v29 = sub_1000548D8();
  *(v23 + 104) = v29;
  *(v23 + 72) = v25;
  sub_1000A2288();
  v30 = sub_1000A2418().super.isa;
  v31 = v12;
  v32 = v73;
  v26(v31, v27);
  *(v23 + 136) = v28;
  *(v23 + 144) = v29;
  *(v23 + 112) = v30;
  v33 = sub_1000A3C98();
  v34 = v74;
  [v74 setPredicate:v33];
  [v34 setFetchBatchSize:1];
  v35 = v85;
  v36 = sub_1000A3D68();
  if (v35)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v37 = sub_1000A3538();
    sub_100001E38(v37, qword_1000C96B8);
    swift_errorRetain();
    v38 = sub_1000A3518();
    v39 = sub_1000A3CC8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v33;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to fetch historical guidance from cache: %@", v41, 0xCu);
      sub_100022154(v42, &unk_1000C7740, &qword_1000AB610);

      v33 = v40;
    }

    else
    {
    }

    goto LABEL_20;
  }

  v44 = v36;
  if (!(v36 >> 62))
  {
    v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v78;
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_24:

LABEL_20:
    v67 = &_swiftEmptyArrayStorage;
LABEL_22:
    [v32 reset];

    *v71 = v67;
    return;
  }

  v68 = v36;
  v45 = sub_1000A3EC8();
  v44 = v68;
  v46 = v78;
  if (!v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v72 = v33;
  if (v45 >= 1)
  {
    v47 = 0;
    v81 = (v46 + 56);
    v82 = v44 & 0xC000000000000001;
    v79 = (v46 + 32);
    v75 = v46 + 8;
    v76 = (v46 + 16);
    v85 = &_swiftEmptyArrayStorage;
    v83 = v44;
    do
    {
      v48 = v45;
      if (v82)
      {
        v49 = sub_1000A3EA8();
      }

      else
      {
        v49 = *(v44 + 8 * v47 + 32);
      }

      v50 = v49;
      v51 = sub_1000A2208();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      sub_1000A21F8();
      v54 = [v50 historicalGuidance];
      v55 = sub_1000A23B8();
      v57 = v56;

      sub_100054940(&qword_1000C8C70, &type metadata accessor for HSHistoricalGuidance);
      v58 = v84;
      sub_1000A21E8();
      sub_10003228C(v55, v57);

      (*v81)(v58, 0, 1, v7);
      v59 = v58;
      v60 = v80;
      v61 = *v79;
      (*v79)(v80, v59, v7);
      v62 = v77;
      (*v76)(v77, v60, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1000951A0(0, v85[2] + 1, 1, v85);
      }

      v64 = v85[2];
      v63 = v85[3];
      if (v64 >= v63 >> 1)
      {
        v85 = sub_1000951A0(v63 > 1, v64 + 1, 1, v85);
      }

      v65 = v78;
      (*(v78 + 8))(v80, v7);
      v66 = v85;
      v85[2] = v64 + 1;
      v61(&v66[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64], v62, v7);
      ++v47;
      v45 = v48;
      v44 = v83;
    }

    while (v48 != v47);

    v33 = v72;
    v32 = v73;
    v67 = v85;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t sub_1000531A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a4;
  v45 = sub_1000A2C08();
  v6 = *(v45 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A3538();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(*(v47 + 64));
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = &v42 - v12;
  sub_1000A3338();
  v13 = sub_1000A3328();
  [v13 setResultType:0];
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AC0E0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000321D0();
  v43 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_1000A3C98();
  [v13 setPredicate:v15];
  [v13 setFetchLimit:1];
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithKey:v17 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000ABC60;
  *(v19 + 32) = v18;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v20 = v18;
  isa = sub_1000A3B48().super.isa;
  v22 = v50;

  [v13 setSortDescriptors:isa];

  v23 = v51;
  result = sub_1000A3D68();
  if (!v23)
  {
    v33 = v44;
    if (result >> 62)
    {
      v39 = result;
      v40 = sub_1000A3EC8();
      result = v39;
      v34 = v15;
      if (v40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v34 = v15;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((result & 0xC000000000000001) != 0)
        {
          v35 = sub_1000A3EA8();
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = *(result + 32);
        }

        v36 = v35;

        v37 = [v36 intervalEnd];

        sub_1000A2468();
        v38 = sub_1000A2498();
        (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
        goto LABEL_13;
      }
    }

    v41 = sub_1000A2498();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
LABEL_13:
    [v22 reset];

    return sub_1000549A8(v33, v49);
  }

  v25 = v45;
  (*(v6 + 104))(v8, enum case for Logging.daemon(_:), v45);
  v26 = v46;
  sub_1000A2B68();
  (*(v6 + 8))(v8, v25);

  v27 = sub_1000A3518();
  v28 = sub_1000A3CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v22;
    v31 = swift_slowAlloc();
    v52 = v31;
    *v29 = 136380675;
    *(v29 + 4) = sub_1000954AC(v43, a2, &v52);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch latest hist guidance entry for %{private}s", v29, 0xCu);
    sub_10000F7B8(v31);
    v22 = v30;
  }

  (*(v47 + 8))(v26, v48);
  [v22 reset];

  v32 = sub_1000A2498();
  return (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
}

uint64_t sub_100053844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000A2498();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100053950, 0, 0);
}

uint64_t sub_100053950()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v24 = v0[6];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = objc_autoreleasePoolPush();
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v5;
  sub_1000A3D58();

  objc_autoreleasePoolPop(v8);
  sub_10003E114(v1, v2);
  v10 = (*(v4 + 48))(v2, 1, v24);
  v12 = v0[10];
  v11 = v0[11];
  if (v10 == 1)
  {
    sub_100022154(v0[11], &qword_1000C7F58, &qword_1000AC770);
    sub_100022154(v12, &qword_1000C7F58, &qword_1000AC770);
    v13 = 1;
  }

  else
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    v17 = v0[4];
    (*(v15 + 32))(v14, v0[10], v16);
    sub_100054940(&qword_1000C7F50, &type metadata accessor for Date);
    v18 = sub_1000A3A48();
    (*(v15 + 8))(v14, v16);
    sub_100022154(v11, &qword_1000C7F58, &qword_1000AC770);
    v13 = v18 ^ 1;
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[8];

  v22 = v0[1];

  return v22(v13 & 1);
}

uint64_t sub_100053B70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000A2498();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100053C30, 0, 0);
}

uint64_t sub_100053C30()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_1000A2A38();
  v0[7] = sub_1000A2A28();
  sub_1000A2478();
  v3 = *(&async function pointer to dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:) + 1);
  v8 = &async function pointer to dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:) + async function pointer to dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100053D18;
  v5 = v0[6];
  v6 = v0[2];

  return (v8)(v6, v2, v5, 0, 0);
}

uint64_t sub_100053D18()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_100053EF0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_100053EF0()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to refresh historical guidance: %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10005409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000A2498();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100054160, 0, 0);
}

uint64_t sub_100054160()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 72) = qword_1000C9648;

  return _swift_task_switch(sub_1000541F8, v1, 0);
}

uint64_t sub_1000541F8()
{
  v1 = *(*(v0 + 72) + 128);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 80) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100054334, 0, 0);
}

uint64_t sub_100054334()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_1000A2288();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1000543DC;
  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[3];
  v6 = v0[4];

  return sub_100053844(v7, v6, v5, v4);
}

uint64_t sub_1000543DC(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10005453C, 0, 0);
}

uint64_t sub_10005453C()
{
  if (*(v0 + 104) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1000546BC;
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    return sub_100053B70(v3, v2);
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = *(v0 + 24);
    v12 = *(v0 + 32);
    v8 = objc_autoreleasePoolPush();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v12;
    *(v9 + 40) = v5;
    sub_10000275C(&qword_1000C8C60, &qword_1000AC5C0);
    sub_1000A3D58();

    objc_autoreleasePoolPop(v8);

    v10 = *(v0 + 16);

    v11 = *(v0 + 8);

    return v11(v10);
  }
}

uint64_t sub_1000546BC()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_1000547B8, 0, 0);
}

uint64_t sub_1000547B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v9 = *(v0 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v9;
  *(v5 + 40) = v1;
  sub_10000275C(&qword_1000C8C60, &qword_1000AC5C0);
  sub_1000A3D58();

  objc_autoreleasePoolPop(v4);

  v6 = *(v0 + 16);

  v7 = *(v0 + 8);

  return v7(v6);
}

unint64_t sub_1000548D8()
{
  result = qword_1000C7F20;
  if (!qword_1000C7F20)
  {
    sub_100032224(255, &qword_1000C7F18, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F20);
  }

  return result;
}

uint64_t sub_100054940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000549A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100054A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1000A3A78();
    if (a3)
    {
LABEL_3:
      v7 = sub_1000A2348();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100054AA8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000A2AD8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100054B74, 0, 0);
}

uint64_t sub_100054B74()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A58();
  sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5 & 1) != 0 && (sub_1000A2D18())
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_100054DFC;

    return sub_1000683FC();
  }

  else
  {
    [*(v0 + 48) coordinate];
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() sharedSession];
    *(v0 + 112) = v13;
    v14 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_100054F68;
    v16.n128_u64[0] = v10;
    v17.n128_u64[0] = v12;

    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v13, v16, v17);
  }
}

uint64_t sub_100054DFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;

  if (v2)
  {
    v10 = v6[9];
    v9 = v6[10];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;

    return _swift_task_switch(sub_100060660, 0, 0);
  }
}

uint64_t sub_100054F68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_100060640;
  }

  else
  {

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v9 = sub_100060660;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100055234(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = a2;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10005531C;

  return sub_1000569A0(v8, a2);
}

uint64_t sub_10005531C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (a2)
  {
    v10 = sub_1000A3A78();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v4 + 40);
  (v11)[2](v11, v10);

  _Block_release(v11);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000554B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100055558;

  return sub_100057BC4(a5, a6);
}

uint64_t sub_100055558(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_100060648;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_10006065C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000557F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100055890;

  return sub_100059998(a5, a6);
}

uint64_t sub_100055890(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_100055A3C;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_1000559C4;
  }

  return _swift_task_switch(v9, 0, 0);
}
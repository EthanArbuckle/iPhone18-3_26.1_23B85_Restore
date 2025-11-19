id sub_252129CE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[11];
  [v6 lock];
  sub_252129DB0(v2, a1, a2);

  return [v6 unlock];
}

void sub_252129DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v65 = a1;
  v5 = *(a1 + 104);

  v7 = sub_252112AD8(v6);

  v72 = v7;
  if (qword_27F4CD708 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v8 = sub_25214198C();
    __swift_project_value_buffer(v8, qword_27F4CDE68);
    v9 = sub_25214196C();
    v10 = sub_252141FBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v71[0] = v12;
      *v11 = 136446466;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, v71);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;

      v17 = MEMORY[0x253098E80](v16, MEMORY[0x277D837D0]);
      v19 = v18;

      v20 = sub_2520A5448(v17, v19, v71);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] observers before remove are %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);
    }

    ObjectType = swift_getObjectType();
    a3 = (*(a3 + 16))(ObjectType, a3);
    v23 = v22;
    v24 = *(v65 + 104);
    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 56);
    v28 = (v25 + 63) >> 6;
    v29 = *(v65 + 104);
    swift_bridgeObjectRetain_n();
    v30 = 0;
    if (v27)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v28)
      {

        v70[0] = xmmword_252143AF0;
        memset(&v70[1], 0, 32);
        goto LABEL_18;
      }

      v27 = *(v24 + 56 + 8 * v31);
      ++v30;
      if (v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v31 = v30;
LABEL_11:
    sub_25212CB84(*(v24 + 48) + 48 * (__clz(__rbit64(v27)) | (v31 << 6)), v69);
    sub_25212CBBC(v69, v66);
    if (v67 == a3 && v68 == v23)
    {
      break;
    }

    if (sub_25214247C())
    {
      break;
    }

    v27 &= v27 - 1;
    sub_25212CBF4(v66);
    v30 = v31;
    if (!v27)
    {
      goto LABEL_8;
    }
  }

  sub_25212CBBC(v66, v70);
LABEL_18:

  if (v70[0] == __PAIR128__(1, 0))
  {
    sub_2520A2584(v70, &qword_27F4CE940, &qword_252147B60);

    v32 = sub_25214196C();
    v33 = sub_252141FAC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v71[0] = v35;
      *v34 = 136446466;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, v71);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = sub_2520A5448(a3, v23, v71);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] Cannot remove observer %s because it was not in queue.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v35, -1, -1);
      MEMORY[0x253099FD0](v34, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_25212CBBC(v70, v71);
    swift_beginAccess();
    sub_25212B580(v71, v70);
    sub_2520A2584(v70, &qword_27F4CE940, &qword_252147B60);
    swift_endAccess();
    v40 = *(*(v65 + 104) + 16);

    v41 = sub_25214196C();
    v42 = sub_252141FBC();

    if (os_log_type_enabled(v41, v42))
    {
      v64 = v40;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v70[0] = v44;
      *v43 = 136446722;
      v45 = sub_2521425DC();
      v47 = sub_2520A5448(v45, v46, v70);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = sub_2520A5448(a3, v23, v70);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v64;
      _os_log_impl(&dword_25207E000, v41, v42, "[%{public}s] Removed observer %s; number of observers remaining in queue is %ld.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v44, -1, -1);
      MEMORY[0x253099FD0](v43, -1, -1);
    }

    else
    {
    }

    v49 = *(v65 + 104);

    v51 = sub_252112AD8(v50);

    swift_beginAccess();
    v72 = v51;

    v52 = sub_25214196C();
    v53 = sub_252141FBC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69[0] = v55;
      *v54 = 136446466;
      v56 = sub_2521425DC();
      v58 = sub_2520A5448(v56, v57, v69);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;

      v60 = MEMORY[0x253098E80](v59, MEMORY[0x277D837D0]);
      v62 = v61;

      v63 = sub_2520A5448(v60, v62, v69);

      *(v54 + 14) = v63;
      _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] observers after remove are %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v55, -1, -1);
      MEMORY[0x253099FD0](v54, -1, -1);
    }

    sub_25212CBF4(v71);
  }
}

uint64_t sub_25212A59C(uint64_t *a1)
{
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = *(v1 + 248);
  v5 = sub_2520F8B10(a1);

  if (v5)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  v6 = a1[1];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_9:
    v12 = 1;
  }

  else
  {
    v9 = *(v3 + 96);
    [v9 lock];
    swift_beginAccess();
    v10 = *(v3 + 112);

    v11 = sub_252112E30(v7, v6, v10);

    [v9 unlock];
    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

void sub_25212A6B4(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 248);
  v6 = sub_2520F8B10(a1);

  if ((v6 & 1) == 0)
  {
    v7 = a1[1];
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v7 & 0xF00000000000000) == 0)
      {
        return;
      }
    }

    else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return;
    }

    v8 = *(v2 + 96);
    [v8 lock];
    sub_25212A7D0(v2, a1);

    [v8 unlock];
  }
}

uint64_t sub_25212A7D0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v5 = *(a1 + 112);
  v7 = *a2;
  v6 = a2[1];

  v8 = sub_252112E30(v7, v6, v5);

  if ((v8 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v9 = sub_25214198C();
    __swift_project_value_buffer(v9, qword_27F4CDE68);
    sub_25210AC9C(a2, v20);
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20[14] = v2;
      v13 = v12;
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v13 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, v20);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2520A5448(a2[2], a2[3], v20);
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] discovery events for %s will no longer be logged 🙈", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    swift_beginAccess();
    sub_25213ECFC(&v19, v7, v6);
    swift_endAccess();
  }
}

uint64_t *sub_25212AA10(uint64_t *result)
{
  v2 = result;
  v3 = *v1;
  v4 = result[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0xF00000000000000) == 0)
    {
      return result;
    }
  }

  else if ((*result & 0xFFFFFFFFFFFFLL) == 0)
  {
    return result;
  }

  v5 = v1[12];
  [v5 lock];
  sub_25212AAFC(v1, v2);

  return [v5 unlock];
}

uint64_t sub_25212AAFC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v5 = *(a1 + 112);
  v6 = *a2;
  v7 = a2[1];

  v8 = sub_252112E30(v6, v7, v5);

  if (v8)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    sub_25210AC9C(a2, v19);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19[14] = v2;
      v14 = v13;
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v14 = 136446466;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(a2[2], a2[3], v19);
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] discovery events for %s will resume logging 💡", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    swift_beginAccess();
    sub_25212B444(v6, v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25212AD24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2520DA018;

  return sub_25212466C(a1);
}

uint64_t sub_25212ADC0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2520F203C(16, 0);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_25212AEF0(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(*v1 + 264);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v6 = v5;
  sub_2520C8C70(&v10);
  v8 = v7;

  return v8 & 1;
}

uint64_t sub_25212AF70()
{
  if (qword_27F4CD7D0 != -1)
  {
    swift_once();
  }

  qword_27F4CE8B8 = qword_27F4CE8B0;
}

uint64_t static HTRequirementStatusManagerInstance.shared.getter()
{
  if (qword_27F4CD7D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25212B030(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25212B128;

  return v7(a1);
}

uint64_t sub_25212B128()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25212B274@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25212B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_25214255C();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_252141BEC();
  result = sub_25214258C();
  v11 = -1 << *(v6 + 32);
  v12 = result & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      sub_2520CB768(*(v6 + 48) + 40 * v12, v19);
      if (v19[3] == v8 && v19[4] == v9)
      {
        break;
      }

      v15 = sub_25214247C();
      result = sub_2520CB7D8(v19);
      if (v15)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2520CB7D8(v19);
LABEL_11:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v19[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252140094();
      v18 = v19[0];
    }

    sub_2520CB7A0(*(v18 + 48) + 40 * v12, a2);
    result = sub_25212B700(v12);
    *v3 = v19[0];
  }

  else
  {
LABEL_9:
    *a2 = xmmword_252143AF0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_25212B444(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25214255C();
  sub_252141BEC();
  v7 = sub_25214258C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25214247C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252140200();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_25212B8EC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_25212B580@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_25214255C();
  v8 = a1[4];
  v9 = a1[5];
  sub_252141BEC();
  MEMORY[0x253099700](a1[2]);
  result = sub_25214258C();
  v11 = -1 << *(v6 + 32);
  v12 = result & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      sub_25212CB84(*(v6 + 48) + 48 * v12, v19);
      if (v19[4] == v8 && v19[5] == v9)
      {
        break;
      }

      v15 = sub_25214247C();
      result = sub_25212CBF4(v19);
      if (v15)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_25212CBF4(v19);
LABEL_11:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v19[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25214035C();
      v18 = v19[0];
    }

    sub_25212CBBC(*(v18 + 48) + 48 * v12, a2);
    result = sub_25212BAB0(v12);
    *v3 = v19[0];
  }

  else
  {
LABEL_9:
    *a2 = xmmword_252143AF0;
    a2[1] = 0u;
    a2[2] = 0u;
  }

  return result;
}

unint64_t sub_25212B700(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      while (1)
      {
        sub_2520CB768(*(v3 + 48) + 40 * v6, v17);
        v11 = *(v3 + 40);
        sub_25214255C();
        sub_252141BEC();
        v12 = sub_25214258C();
        sub_2520CB7D8(v17);
        v13 = v12 & v7;
        if (v2 >= v10)
        {
          break;
        }

        if (v13 < v10)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 40 * v2 >= *(v3 + 48) + 40 * v6 + 40)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v13 < v10)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25212B8EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_25214255C();

        sub_252141BEC();
        v15 = sub_25214258C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25212BAB0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      while (1)
      {
        sub_25212CB84(*(v3 + 48) + 48 * v6, v17);
        v11 = *(v3 + 40);
        sub_25214255C();
        sub_252141BEC();
        MEMORY[0x253099700](v18);
        v12 = sub_25214258C();
        sub_25212CBF4(v17);
        v13 = v12 & v7;
        if (v2 >= v10)
        {
          break;
        }

        if (v13 < v10)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 48 * v2 >= *(v3 + 48) + 48 * v6 + 48)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v13 < v10)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

id sub_25212BCA8(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *&a2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue];
  if (v6)
  {
    v7 = ObjectType;
    swift_unknownObjectWeakInit();
    v33 = &off_286457070;
    swift_unknownObjectWeakAssign();
    v34 = v6;
    v8 = a1[3];
    v30[4] = a1[2];
    v30[5] = v8;
    v9 = v6;

    v35 = sub_252141C4C();
    v36 = v10;
    v31 = &unk_28644E688;
    v11 = *&a2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock];
    [v11 lock];
    sub_2520C96A4(&v31, a2, v32, a1, &off_286457070);
    [v11 unlock];
    [v11 lock];
    v12 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
    swift_beginAccess();
    v13 = *&a2[v12];

    v15 = sub_2520ADAD8(v14);

    swift_beginAccess();
    v31 = v15;

    [v11 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    v17 = sub_25214196C();
    v18 = sub_252141FBC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136446466;
      nullsub_1(v7);
      v21 = sub_2521425DC();
      v23 = sub_2520A5448(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;

      v25 = MEMORY[0x253098E80](v24, MEMORY[0x277D837D0]);
      v27 = v26;

      v28 = sub_2520A5448(v25, v27, v30);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] observers after add are %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v20, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    sub_2520CB7D8(v32);
  }

  else
  {
    __break(1u);

    result = [v2 unlock];
    __break(1u);
  }

  return result;
}

id sub_25212BFE0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = *(a2 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
  [v4 lock];
  sub_2520C9C88(a2, a1, &off_286457070);

  return [v4 unlock];
}

BOOL sub_25212C094(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_25214247C()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_25214247C()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && ((*(a1 + 51) ^ *(a2 + 51)) & 1) == 0 && ((*(a1 + 52) ^ *(a2 + 52)) & 1) == 0 && (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) || (sub_25214247C())))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

BOOL _s11HearingTest19HTAudioDeviceStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        sub_25212D8A8(v6, *(a2 + 8));
        sub_25212D8A8(v2, 2u);
        v7 = v2;
        v8 = 2;
        goto LABEL_18;
      }

      sub_25212D8A8(v6, 2u);
      sub_25212D8A8(v2, 2u);
      v9 = [v2 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_252141B9C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v29 = [v4 identifier];
      if (v29)
      {
        v30 = v29;
        v31 = sub_252141B9C();
        v33 = v32;

        if (v13)
        {
          if (v33)
          {
            if (v11 == v31 && v13 == v33)
            {
              sub_25212C9F0(v2, 2u);
              v34 = v4;
              v35 = 2;
LABEL_55:
              sub_25212C9F0(v34, v35);

              return 1;
            }

            v54 = sub_25214247C();
            sub_25212C9F0(v2, 2u);
            v55 = v4;
            v56 = 2;
LABEL_77:
            sub_25212C9F0(v55, v56);

            return (v54 & 1) != 0;
          }

LABEL_43:
          sub_25212C9F0(v2, 2u);
          v46 = v4;
          v47 = 2;
LABEL_58:
          sub_25212C9F0(v46, v47);
LABEL_74:

          return 0;
        }
      }

      else
      {
        if (v13)
        {
          goto LABEL_43;
        }

        v33 = 0;
      }

      sub_25212C9F0(v2, 2u);
      sub_25212C9F0(v4, 2u);
      if (v33)
      {
        goto LABEL_74;
      }

      return 1;
    }

    if (v5 != 3)
    {
      sub_25212D8A8(v6, *(a2 + 8));
      sub_25212D8A8(v2, 3u);
      v7 = v2;
      v8 = 3;
      goto LABEL_18;
    }

    sub_25212D8A8(v6, 3u);
    sub_25212D8A8(v2, 3u);
    v19 = [v2 identifier];
    if (v19)
    {
      v20 = v19;
      v21 = sub_252141B9C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v41 = [v4 identifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_252141B9C();
      v45 = v44;

      if (v23)
      {
        if (v45)
        {
          if (v21 == v43 && v23 == v45)
          {
            sub_25212C9F0(v2, 3u);
            v34 = v4;
            v35 = 3;
            goto LABEL_55;
          }

          v54 = sub_25214247C();
          sub_25212C9F0(v2, 3u);
          v55 = v4;
          v56 = 3;
          goto LABEL_77;
        }

LABEL_47:
        sub_25212C9F0(v2, 3u);
        v46 = v4;
        v47 = 3;
        goto LABEL_58;
      }
    }

    else
    {
      if (v23)
      {
        goto LABEL_47;
      }

      v45 = 0;
    }

    sub_25212C9F0(v2, 3u);
    sub_25212C9F0(v4, 3u);
    if (v45)
    {
      goto LABEL_74;
    }

    return 1;
  }

  if (!v3)
  {
    if (*(a2 + 8))
    {
      sub_25212D8A8(v6, *(a2 + 8));
      sub_25212D8A8(v2, 0);
      v7 = v2;
      v8 = 0;
LABEL_18:
      sub_25212C9F0(v7, v8);
      sub_25212C9F0(v4, v5);
      return 0;
    }

    sub_25212D8A8(v6, 0);
    sub_25212D8A8(v2, 0);
    v24 = [v2 identifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_252141B9C();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v48 = [v4 identifier];
    if (v48)
    {
      v49 = v48;
      v50 = sub_252141B9C();
      v52 = v51;

      if (v28)
      {
        if (v52)
        {
          if (v26 == v50 && v28 == v52)
          {
            sub_25212C9F0(v2, 0);
            v34 = v4;
            v35 = 0;
            goto LABEL_55;
          }

          v54 = sub_25214247C();
          sub_25212C9F0(v2, 0);
          v55 = v4;
          v56 = 0;
          goto LABEL_77;
        }

        goto LABEL_57;
      }
    }

    else
    {
      if (v28)
      {
LABEL_57:
        sub_25212C9F0(v2, 0);
        v46 = v4;
        v47 = 0;
        goto LABEL_58;
      }

      v52 = 0;
    }

    sub_25212C9F0(v2, 0);
    sub_25212C9F0(v4, 0);
    if (v52)
    {
      goto LABEL_74;
    }

    return 1;
  }

  if (v5 != 1)
  {
    sub_25212D8A8(v6, *(a2 + 8));
    sub_25212D8A8(v2, 1u);
    v7 = v2;
    v8 = 1;
    goto LABEL_18;
  }

  sub_25212D8A8(v6, 1u);
  sub_25212D8A8(v2, 1u);
  v14 = [v2 identifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252141B9C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v36 = [v4 identifier];
  if (!v36)
  {
    if (v18)
    {
      goto LABEL_45;
    }

    v40 = 0;
LABEL_63:
    sub_25212C9F0(v2, 1u);
    sub_25212C9F0(v4, 1u);
    if (v40)
    {
      goto LABEL_74;
    }

    return 1;
  }

  v37 = v36;
  v38 = sub_252141B9C();
  v40 = v39;

  if (!v18)
  {
    goto LABEL_63;
  }

  if (!v40)
  {
LABEL_45:
    sub_25212C9F0(v2, 1u);
    v46 = v4;
    v47 = 1;
    goto LABEL_58;
  }

  if (v16 == v38 && v18 == v40)
  {
    sub_25212C9F0(v2, 1u);
    v34 = v4;
    v35 = 1;
    goto LABEL_55;
  }

  v57 = sub_25214247C();
  sub_25212C9F0(v2, 1u);
  sub_25212C9F0(v4, 1u);

  result = 1;
  if ((v57 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _s11HearingTest29HTFaultCheckStatusWithReasonsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        LOBYTE(v3) = 1;
        sub_2521305F8(*a2, 1u);
        v6 = v2;
        v7 = 1;
LABEL_9:
        sub_2521305F8(v6, v7);
        v8 = sub_252113760(v2, v4);
        goto LABEL_11;
      }
    }

    else if (v5 == 2)
    {
      LOBYTE(v3) = 2;
      sub_2521305F8(*a2, 2u);
      v6 = v2;
      v7 = 2;
      goto LABEL_9;
    }

LABEL_10:
    sub_2521305F8(*a2, *(a2 + 8));
    sub_2521305F8(v2, v3);
    v8 = 0;
    goto LABEL_11;
  }

  if (*(a2 + 8))
  {
    goto LABEL_10;
  }

  sub_2521305F8(*a2, 0);
  sub_2521305F8(v2, 0);
  v8 = sub_252113760(v2, v4);
  LOBYTE(v3) = 0;
LABEL_11:
  sub_25213060C(v2, v3);
  sub_25213060C(v4, v5);
  return v8 & 1;
}

uint64_t sub_25212C8C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25212C900()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25212C97C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25212C9DC(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_25212C9F0(a1, a2);
  }
}

void sub_25212C9F0(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

uint64_t sub_25212CA04(uint64_t a1, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_25212CA18(a1, a2);
  }

  return a1;
}

uint64_t sub_25212CA18(uint64_t a1, unsigned __int16 a2)
{
  if ((a2 >> 14) <= 2u)
  {
  }

  return result;
}

uint64_t sub_25212CA2C(uint64_t a1, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return j__swift_bridgeObjectRelease();
  }

  return result;
}

uint64_t sub_25212CA44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFEFEFEFEFEFELL) != 0x1EFEFEFEFELL)
  {
    return sub_25212CA68(a1, a2);
  }

  return a1;
}

uint64_t sub_25212CA68(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 46) & 3) != 3)
  {
  }

  return result;
}

uint64_t sub_25212CA7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return j__swift_bridgeObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_31Tm(void (*a1)(void, void))
{
  a1(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 26, 7);
}

uint64_t sub_25212CB04()
{
  sub_25212CA68(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32));

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_25212CB48()
{
  j__swift_bridgeObjectRelease(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25212CC54(uint64_t a1, unsigned __int16 a2)
{
  if ((a2 >> 14) <= 2u)
  {
  }

  return result;
}

uint64_t sub_25212CC68(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 46) & 3) != 3)
  {
  }

  return result;
}

uint64_t sub_25212CC7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v44 = &v33 - v7;
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252141B9C();
    v42 = v11;
    v43 = v10;
  }

  else
  {
    v42 = 0xE000000000000000;
    v43 = 0;
  }

  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v41[0] = sub_252141B9C();
    v41[1] = v14;
  }

  else
  {
    HIBYTE(v41[1]) = -18;
    strcpy(v41, "(missing name)");
  }

  v40 = [a1 proximityPairingPrimaryPlacement];
  v39 = [a1 proximityPairingSecondaryPlacement];
  v38 = [a1 primaryPlacement];
  v37 = [a1 secondaryPlacement];
  v15 = [a1 deviceFlags];
  v36 = [a1 deviceType];
  v35 = [a1 hearingTestSupport];
  v34 = [a1 respondsToSelector_];
  v16 = [a1 accessoryStatusFlags];
  v17 = [a1 btAddressData];
  if (v17)
  {
    v18 = v17;
    v19 = sub_25214184C();
    v21 = v20;

    sub_2520CBC7C(v19, v21);
    v22 = sub_2520F79EC(v19, v21);
    sub_2520CB598(v19, v21);
    v45 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
    sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530);
    v33 = sub_252141B3C();
    v24 = v23;
  }

  else
  {
    v33 = 0;
    v19 = 0;
    v21 = 0xF000000000000000;
    v24 = 0xE000000000000000;
  }

  v25 = [a1 productID];
  v26 = sub_252141E3C();
  v27 = v44;
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a1;
  v29 = a1;
  sub_252113050(0, 0, v27, &unk_252147B58, v28);
  sub_25210B134(v19, v21);

  v31 = v42;
  *a2 = v43;
  *(a2 + 8) = v31;
  v32 = v41[1];
  *(a2 + 16) = v41[0];
  *(a2 + 24) = v32;
  LODWORD(v32) = v39;
  *(a2 + 32) = v40;
  *(a2 + 36) = v32;
  LODWORD(v32) = v37;
  *(a2 + 40) = v38;
  *(a2 + 44) = v32;
  *(a2 + 48) = (v15 & 0x40) != 0;
  LOBYTE(v32) = v35;
  *(a2 + 49) = v36;
  *(a2 + 50) = v32;
  *(a2 + 51) = v34;
  *(a2 + 52) = v16 & 1;
  *(a2 + 56) = v33;
  *(a2 + 64) = v24;
  *(a2 + 72) = v25;
  return result;
}

void sub_25212D06C(char a1)
{
  v42 = objc_opt_self();
  v2 = [v42 processInfo];
  v3 = [v2 processName];

  v4 = sub_252141B9C();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_252141B6C();
  v9 = [v7 initWithSuiteName_];

  if (!v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = sub_252141B6C();
  v11 = [v9 stringForKey_];

  if (!v11)
  {

    goto LABEL_14;
  }

  v12 = sub_252141B9C();
  v14 = v13;

  if (v4 == v12 && v6 == v14)
  {

    goto LABEL_8;
  }

  v15 = sub_25214247C();

  if ((v15 & 1) == 0)
  {
LABEL_14:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v30 = sub_25214198C();
    __swift_project_value_buffer(v30, qword_27F4CDE68);
    v43 = sub_25214196C();
    v31 = sub_252141FAC();
    if (os_log_type_enabled(v43, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25207E000, v43, v31, "This process should not update a different process state!", v32, 2u);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    v33 = v43;
    goto LABEL_26;
  }

LABEL_8:
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = sub_252141B6C();
  v18 = [v16 initWithSuiteName_];

  if ((a1 & 1) == 0)
  {
    if (v18)
    {
      sub_2520DBD08(0);

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v34 = sub_25214198C();
      __swift_project_value_buffer(v34, qword_27F4CDF10);
      oslog = sub_25214196C();
      v20 = sub_252141FBC();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136315138;
        v35 = [v42 processInfo];
        v36 = [v35 processName];

        v37 = sub_252141B9C();
        v39 = v38;

        v40 = sub_2520A5448(v37, v39, &v44);

        *(v21 + 4) = v40;
        v29 = "%s resumed";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (!v18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_2520DBD08(1);

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v19 = sub_25214198C();
  __swift_project_value_buffer(v19, qword_27F4CDF10);
  oslog = sub_25214196C();
  v20 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315138;
    v23 = [v42 processInfo];
    v24 = [v23 processName];

    v25 = sub_252141B9C();
    v27 = v26;

    v28 = sub_2520A5448(v25, v27, &v44);

    *(v21 + 4) = v28;
    v29 = "%s suspended";
LABEL_24:
    _os_log_impl(&dword_25207E000, oslog, v20, v29, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);

    return;
  }

LABEL_25:
  v33 = oslog;
LABEL_26:
}

void sub_25212D5F0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  sub_252141B9C();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_252141B6C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_252141B6C();
    v6 = [v4 stringForKey_];

    if (v6)
    {

      sub_252141B9C();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25212D740()
{
  sub_2520DC654();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_252141B6C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_252141B6C();
    v4 = [v2 stringForKey_];

    if (v4)
    {

      sub_252141B9C();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_25212D894(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_25212D8A8(result, a2);
  }

  return result;
}

id sub_25212D8A8(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

uint64_t sub_25212D8BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 180);
  v4 = *(v10 + 12);
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 60) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2520A2D9C(v8, &v7, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_25212D93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252118A4C(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_25212DA10()
{
  result = qword_27F4CE8C0;
  if (!qword_27F4CE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8C0);
  }

  return result;
}

unint64_t sub_25212DAAC()
{
  result = qword_27F4CE8D8;
  if (!qword_27F4CE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8D8);
  }

  return result;
}

unint64_t sub_25212DB48()
{
  result = qword_27F4CE8F0;
  if (!qword_27F4CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8F0);
  }

  return result;
}

unint64_t sub_25212DBE4()
{
  result = qword_27F4CE908;
  if (!qword_27F4CE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE908);
  }

  return result;
}

unint64_t sub_25212DC3C()
{
  result = qword_27F4CE910;
  if (!qword_27F4CE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE910);
  }

  return result;
}

unint64_t sub_25212DC94()
{
  result = qword_27F4CE918;
  if (!qword_27F4CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE918);
  }

  return result;
}

unint64_t sub_25212DCEC()
{
  result = qword_27F4CE920;
  if (!qword_27F4CE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE920);
  }

  return result;
}

unint64_t sub_25212DD44()
{
  result = qword_27F4CE928;
  if (!qword_27F4CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE928);
  }

  return result;
}

unint64_t sub_25212DD9C()
{
  result = qword_27F4CE930;
  if (!qword_27F4CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE930);
  }

  return result;
}

__n128 sub_25212DDF0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_25212DE40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestFaultState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTHearingTestFaultState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HTFaultStatusWithReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTFaultStatusWithReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTFaultCheckFailReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTFaultCheckFailReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25212E298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25212E2E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTFaultCheckStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for HTFaultCheckStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_25212E4F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_25212E538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_memcpy14_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_25212E59C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
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

uint64_t sub_25212E5E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212E638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25212E680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212E6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25212E724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25212E78C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212E7F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212E8A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212E904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212E9A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 10))
  {
    return (*a1 + 16381);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212EA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 8) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212EA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 8);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_252146AC0), xmmword_252146AD0);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 12) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_25212EB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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
      *result = 0;
      *(result + 12) = (-a2 >> 27) & 0x1E;
      *(result + 8) = (-4 * a2) & 0xFE00 | (2 * (-a2 & 0x7F)) | (((-a2 >> 14) & 0x7F) << 17) & 0x1FFFFFF | ((-a2 >> 21) << 25);
      return result;
    }

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212EB88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x3FFF;
  return result;
}

uint64_t sub_25212EBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 4) << 32)) & 0x101010101010101 | (a2 << 46);
  *result = v3 & 0x1010101;
  *(result + 4) = WORD2(v4);
  return result;
}

uint64_t sub_25212EBE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212EC38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of HTRequirementStatusObserver.faultCheckStatusChanged(status:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 48))();
}

uint64_t getEnumTagSinglePayload for HTRequirementCheckType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTRequirementCheckType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of HTRequirementStatusProviding.hearingTestFaultCheckStatusWithReasonFetchOnDemand()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2520DB0A4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HTRequirementStatusManager.isDiscoveryActivated(timeOutInSeconds:)(uint64_t a1)
{
  v4 = *(*v1 + 1000);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DA234;

  return v8(a1);
}

uint64_t dispatch thunk of HTRequirementStatusManager.hearingTestFaultCheckStatusWithReasonFetchOnDemand()(uint64_t a1)
{
  v4 = *(*v1 + 1120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return v8(a1);
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25212F6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_25212F704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212F768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25212F7B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25212F818()
{
  result = qword_27F4CE938;
  if (!qword_27F4CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE938);
  }

  return result;
}

uint64_t sub_25212F86C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25212F8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_25211F760(a1, v4, v5, v7, v6);
}

uint64_t sub_25212F96C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_43Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25212FA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_25211A194(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FB24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25212FB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_2521195F8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FC78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252117854(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FD5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25212FD9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2520DA018;

  return sub_252114064(a1, v4, v5, v6);
}

uint64_t sub_25212FE58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2520DB0A4;

  return sub_252116564(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_67Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[12];

  v7 = v1[14];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25212FF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252116D3C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_252130060()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252130098(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return sub_25212B030(a1, v5);
}

uint64_t sub_252130150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DA018;

  return sub_25212B030(a1, v5);
}

uint64_t objectdestroy_46Tm()
{
  MEMORY[0x25309A090](v0 + 16);

  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_71Tm()
{
  v1 = v0[2];

  if (v0[4])
  {

    v2 = v0[6];

    v3 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 100, 7);
}

uint64_t sub_2521302D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_252130310()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 200);
  *(v1 + 200) = v2;
  v3 = v2;
}

id sub_252130354@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = v2;
  return v2;
}

uint64_t sub_252130384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_252130434(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_25212597C(a1, a2, v2 + v6, v8);
}

uint64_t sub_2521304F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252130548()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_252130580()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2521148C0();
}

uint64_t sub_2521305F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_25213060C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_252130838()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2521308CC()
{
  sub_25214255C();
  sub_252141D8C();
  return sub_25214258C();
}

uint64_t sub_25213092C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_2521308CC();
}

uint64_t sub_252130954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25214255C();
  sub_2521308C8(v7, *v3, *(a2 + 16), v5);
  return sub_25214258C();
}

void *sub_2521309DC(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v6 = *(a3 + 16);
  sub_252141D7C();
  sub_252141D1C();
  v7 = *v4;
  if (_swift_isClassOrObjCExistentialType())
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v7;
  }

  v13[0] = v10 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v11 = v13[0];
  v13[1] = v9;
  a1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  return sub_25211229C(v13, v11, v9);
}

uint64_t sub_252130BD4()
{
  swift_getWitnessTable();

  return sub_252141ECC();
}

uint64_t sub_252130C44(uint64_t *a1)
{
  v2 = *a1;
  swift_getWitnessTable();
  return sub_252141ECC();
}

void *sub_252130CB4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_252130CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25213167C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_252130D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_252130D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_252130BC4(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

void (*sub_252130DAC(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_252130E80(v7, *a2, *v3, *(a3 + 16));
  return sub_252130E38;
}

void sub_252130E38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_252130E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_252141DCC();
  return sub_252130F54;
}

void sub_252130F54(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_252130FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void *sub_2521310A8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2521310C0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2521310E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_252131140()
{
  swift_getWitnessTable();
  v1 = sub_2521315AC();
  v2 = *v0;

  return v1;
}

uint64_t sub_252131340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
    sub_252112220();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252131444(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2521314C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521315B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_252141F7C() + 36);
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25213167C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t HTHearingTestSession.__allocating_init(on:with:frequencies:initialLevel:minLevel:maxLevel:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  v14 = *a2;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v12 + 112) = 0;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_252141B6C();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    v18 = sub_2520DC160();

    *(v12 + 136) = v18;
    if (qword_27F4CD7C0 != -1)
    {
      swift_once();
    }

    v19 = qword_27F4D3498;
    *(v12 + 144) = qword_27F4D3498;
    v20 = qword_27F4CD6F8;
    v21 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    *(v12 + 152) = qword_27F4D3428;
    v31[0] = v13;
    v22 = type metadata accessor for HTAudiometry();
    objc_allocWithZone(v22);

    HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v31, a3, a4, a5, a6, 4.0);
    *(v12 + 16) = v23;
    *(v12 + 40) = v22;
    *(v12 + 48) = &off_28644FCD8;
    if (v14)
    {
      v24 = sub_252131CC4(v14);

      if (*(v24 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
        v25 = sub_25214235C();
      }

      else
      {
        v25 = MEMORY[0x277D84F98];
      }

      *v31 = v25;

      sub_25209BFC4(v26, 1, v31);

      v27 = *v31;
      swift_beginAccess();
      v28 = *(v12 + 40);
      v29 = *(v12 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v12 + 16, v28);
      (*(v29 + 64))(v27, v28, v29);
      swift_endAccess();
    }

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t HTHearingTestSession.init(on:with:frequencies:initialLevel:minLevel:maxLevel:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = *a1;
  v13 = *a2;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 0;
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_252141B6C();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    v17 = sub_2520DC160();

    v7[17] = v17;
    if (qword_27F4CD7C0 != -1)
    {
      swift_once();
    }

    v18 = qword_27F4D3498;
    v7[18] = qword_27F4D3498;
    v19 = qword_27F4CD6F8;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v7[19] = qword_27F4D3428;
    v30[0] = v12;
    v21 = type metadata accessor for HTAudiometry();
    objc_allocWithZone(v21);

    HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v30, a3, a4, a5, a6, 4.0);
    v7[2] = v22;
    v7[5] = v21;
    v7[6] = &off_28644FCD8;
    if (v13)
    {
      v23 = sub_252131CC4(v13);

      if (*(v23 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
        v24 = sub_25214235C();
      }

      else
      {
        v24 = MEMORY[0x277D84F98];
      }

      *v30 = v24;

      sub_25209BFC4(v25, 1, v30);

      v26 = *v30;
      swift_beginAccess();
      v27 = v7[5];
      v28 = v7[6];
      __swift_mutable_project_boxed_opaque_existential_1((v7 + 2), v27);
      (*(v28 + 64))(v26, v27, v28);
      swift_endAccess();
    }

    return v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_252131CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25209B214(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v9 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA20, &qword_2521480E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE148, &unk_2521480F0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25209B214((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 16 * v7 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t HTHearingTestSession.__allocating_init(on:with:statusManager:frequencies:initialLevel:minLevel:maxLevel:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  swift_allocObject();
  v14 = sub_252138AC0(a1, a2, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t HTHearingTestSession.init(on:with:statusManager:frequencies:initialLevel:minLevel:maxLevel:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = sub_252138AC0(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t sub_252131EC8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v4;
  *(v3 + 224) = *v4;
  v6 = sub_25214195C();
  *(v3 + 232) = v6;
  v7 = *(v6 - 8);
  *(v3 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v9 = *(a2 + 16);
  *(v3 + 256) = *a2;
  *(v3 + 272) = v9;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_252131FC4, 0, 0);
}

uint64_t sub_252131FC4()
{
  v109 = v0;
  if (!os_variant_has_internal_content() || (v1 = *(v0 + 216), swift_beginAccess(), !*(v1 + 136)))
  {
    if (*(v0 + 272) == 2)
    {
      goto LABEL_45;
    }

    v8 = *(v0 + 129);
    sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v104 = v8;
    v9 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 129);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    v16 = *(v0 + 216);
    v17 = __swift_project_value_buffer(v15, qword_27F4CDF30);
    (*(v14 + 16))(v13, v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_252143AD0;
    v19 = sub_252138FA0();
    v20 = 20302;
    if (v104)
    {
      v20 = 5457241;
    }

    v21 = 0xE200000000000000;
    if (v104)
    {
      v21 = 0xE300000000000000;
    }

    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    *(v18 + 40) = v21;
    v22 = MEMORY[0x277D839F8];
    v23 = MEMORY[0x277D83A80];
    *(v18 + 96) = MEMORY[0x277D839F8];
    *(v18 + 104) = v23;
    *(v18 + 72) = v11;
    *(v18 + 136) = v22;
    *(v18 + 144) = v23;
    *(v18 + 112) = v12;
    LOBYTE(v91) = 2;
    sub_25214193C();

    (*(v14 + 8))(v13, v15);
    v24 = v10 & 1;
    v25 = *(v16 + 112);
    v26 = __OFADD__(v25, v10 & 1);
    v27 = v25 + (v10 & 1);
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 216);
      *(v16 + 112) = v27;
      swift_beginAccess();
      sub_2520A2D9C(v28 + 56, v0 + 16, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 40))
      {
        v29 = *(v0 + 280);
        v12 = *(v0 + 272);
        v30 = *(v0 + 256);
        v16 = *(v0 + 264);
        v31 = *(v0 + 216);
        sub_252139A10(v0 + 16, v0 + 56);
        sub_252138FF4(v0 + 16);
        v9 = *(v0 + 80);
        v32 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
        v105[0] = v30;
        v105[1] = v16;
        v106 = v12 & 1;
        v107 = v29;
        v108 = v24;
        v33 = (*(v32 + 8))(v105, v9, v32);
        v13 = v34;
        v35 = __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v43 = *(v31 + 120);
        if (__OFADD__(v43, v33 & 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v31 + 120) = v43 + (v33 & 1);
        v12 = *(v0 + 216);
        if (v33)
        {
          v44 = *(v12 + 96);
          v26 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v26)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v9 = 1;
        }

        else
        {
          v9 = 0;
          v45 = 0;
        }
      }

      else
      {
        sub_252138FF4(v0 + 16);
        v46 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v47 = sub_252141B6C();
        v48 = [v46 initWithSuiteName_];

        if (!v48)
        {
LABEL_54:
          __break(1u);
          return MEMORY[0x2822007B8](v35, v36, v37, v38, v39, v40, v41, v42);
        }

        v49 = sub_252141B6C();
        v13 = [v48 integerForKey_];

        v9 = 0;
        v45 = 0;
        v12 = *(v0 + 216);
      }

      *(v12 + 96) = v45;
      if (v45 >= v13)
      {
        LODWORD(v16) = 1;
      }

      else
      {
        LODWORD(v16) = v9 ^ 1;
      }

      if (qword_27F4CD7B8 == -1)
      {
LABEL_28:
        v30 = 0x27F4CD000uLL;
        if (byte_27F4D3493 != 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v64 = sub_25214198C();
          __swift_project_value_buffer(v64, qword_27F4CDE68);
          v51 = sub_25214196C();
          v65 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v65))
          {
            goto LABEL_37;
          }

          v98 = *(v0 + 280);
          v100 = *(v0 + 272);
          v94 = *(v0 + 256);
          v96 = *(v0 + 264);
          v102 = v13;
          v66 = v16;
          v16 = *(v0 + 224);
          v53 = swift_slowAlloc();
          v103 = v12;
          v54 = swift_slowAlloc();
          v105[0] = v54;
          *v53 = 136447746;
          v67 = sub_2521425DC();
          v69 = sub_2520A5448(v67, v68, v105);
          LODWORD(v16) = v66;

          *(v53 + 4) = v69;
          v30 = 0x27F4CD000uLL;
          *(v53 + 12) = 2048;
          *(v53 + 14) = v94;
          *(v53 + 22) = 2048;
          *(v53 + 24) = v96;
          *(v53 + 32) = 2048;
          *(v53 + 34) = v98;
          *(v53 + 42) = 2048;
          *(v53 + 44) = v100 & 1;
          *(v53 + 52) = 1024;
          *(v53 + 54) = v9;
          *(v53 + 58) = 2048;
          *(v53 + 60) = v102;
          v59 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v60 = v65;
          v61 = v51;
          v62 = v53;
          v63 = 68;
          goto LABEL_36;
        }

        if (qword_27F4CD708 == -1)
        {
LABEL_30:
          v50 = sub_25214198C();
          __swift_project_value_buffer(v50, qword_27F4CDE68);
          v51 = sub_25214196C();
          v52 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v52))
          {
LABEL_37:

            if ((v16 | v104))
            {
              v71 = *(v0 + 216);
              *(v71 + 104) = 0;
              *(v12 + 96) = 0;
              swift_beginAccess();
              v72 = *(v71 + 40);
              v73 = *(v71 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v71 + 16, v72);
              (*(v73 + 80))(v104 & 1, v9, v72, v73);
              swift_endAccess();
              goto LABEL_45;
            }

            if (*(v30 + 1800) != -1)
            {
              swift_once();
            }

            v74 = sub_25214198C();
            __swift_project_value_buffer(v74, qword_27F4CDE68);
            v75 = sub_25214196C();
            v76 = sub_252141FBC();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = *(v0 + 224);
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v105[0] = v79;
              *v78 = 136446466;
              v80 = sub_2521425DC();
              v82 = sub_2520A5448(v80, v81, v105);

              *(v78 + 4) = v82;
              *(v78 + 12) = 1024;
              *(v78 + 14) = 1;
              _os_log_impl(&dword_25207E000, v75, v76, "[%{public}s] Repeat Tone Flag %{BOOL}d", v78, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v79);
              MEMORY[0x253099FD0](v79, -1, -1);
              MEMORY[0x253099FD0](v78, -1, -1);
            }

            v83 = *(v0 + 216);
            v84 = *(v83 + 128);
            v26 = __OFADD__(v84, 1);
            v85 = v84 + 1;
            if (!v26)
            {
              *(v83 + 128) = v85;
LABEL_45:
              v87 = *(v0 + 216);
              v86 = *(v0 + 224);
              v88 = swift_task_alloc();
              *(v0 + 296) = v88;
              *(v88 + 16) = v87;
              *(v88 + 24) = v86;
              v89 = *(MEMORY[0x277D859E0] + 4);
              v90 = swift_task_alloc();
              *(v0 + 304) = v90;
              *v90 = v0;
              v90[1] = sub_252139D8C;
              v35 = *(v0 + 208);
              v42 = &type metadata for HTHearingTestSessionStatus;
              v40 = sub_252138F98;
              v39 = 0x800000025214BB30;
              v36 = 0;
              v37 = 0;
              v38 = 0xD000000000000017;
              v41 = v88;

              return MEMORY[0x2822007B8](v35, v36, v37, v38, v39, v40, v41, v42);
            }

            __break(1u);
            goto LABEL_53;
          }

          v95 = *(v0 + 280);
          v97 = *(v0 + 272);
          v92 = *(v0 + 256);
          v93 = *(v0 + 264);
          v101 = v13;
          v99 = v16;
          v16 = *(v0 + 224);
          v53 = swift_slowAlloc();
          v103 = v12;
          v54 = swift_slowAlloc();
          v105[0] = v54;
          *v53 = 136448002;
          v55 = sub_2521425DC();
          v57 = v30;
          v58 = sub_2520A5448(v55, v56, v105);
          LODWORD(v16) = v99;

          *(v53 + 4) = v58;
          v30 = v57;
          *(v53 + 12) = 2048;
          *(v53 + 14) = v92;
          *(v53 + 22) = 2048;
          *(v53 + 24) = v93;
          *(v53 + 32) = 2048;
          *(v53 + 34) = v95;
          *(v53 + 42) = 2048;
          *(v53 + 44) = v97 & 1;
          *(v53 + 52) = 1024;
          *(v53 + 54) = v24;
          *(v53 + 58) = 1024;
          *(v53 + 60) = v9;
          *(v53 + 64) = 2048;
          *(v53 + 66) = v101;
          v59 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v60 = v52;
          v61 = v51;
          v62 = v53;
          v63 = 74;
LABEL_36:
          _os_log_impl(&dword_25207E000, v61, v60, v59, v62, v63);
          __swift_destroy_boxed_opaque_existential_0(v54);
          v70 = v54;
          v12 = v103;
          MEMORY[0x253099FD0](v70, -1, -1);
          MEMORY[0x253099FD0](v53, -1, -1);
          goto LABEL_37;
        }

LABEL_51:
        swift_once();
        goto LABEL_30;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  v2 = *(v0 + 129);
  v3 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v3;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_252139D94;
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);

  return sub_252136D48(v5, v0 + 96);
}

uint64_t sub_2521329F0(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v8;
  swift_beginAccess();
  v9 = *__swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v38);
  sub_252139A10((a2 + 2), v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v10 = off_28644FCE0;
  type metadata accessor for HTAudiometry();
  v11 = v10();
  __swift_destroy_boxed_opaque_existential_0(v37);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v12 = sub_25214198C();
  __swift_project_value_buffer(v12, qword_27F4CDE68);
  v13 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v5;
    v17 = a3;
    v18 = v16;
    v37[0] = v16;
    *v15 = 136446466;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, v37);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] HT session progress %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v22 = v18;
    a3 = v17;
    v5 = v34;
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  v23 = v36;
  (*(v6 + 16))(v36, v35, v5);
  v24 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = v38[3];
  *(v25 + 48) = v38[2];
  *(v25 + 64) = v26;
  v27 = v39;
  v28 = v38[1];
  *(v25 + 16) = v38[0];
  *(v25 + 32) = v28;
  *(v25 + 80) = v27;
  *(v25 + 88) = a2;
  (*(v6 + 32))(v25 + v24, v23, v5);
  *(v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  swift_beginAccess();
  v29 = a2[5];
  v30 = a2[6];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 2), v29);
  v31 = *(v30 + 96);

  v31(sub_252139C6C, v25, v29, v30);
  swift_endAccess();
}

uint64_t sub_252132D80(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  v154 = *(a2 + 48);
  v6 = *a2;
  v152 = *(a2 + 16);
  v153 = v5;
  v151 = v6;
  v7 = a1[11];
  v8 = a1[13];
  v168 = a1[12];
  v169[0] = v8;
  *(v169 + 9) = *(a1 + 217);
  v9 = a1[7];
  v10 = a1[9];
  v164 = a1[8];
  v165 = v10;
  v12 = a1[9];
  v11 = a1[10];
  v13 = v11;
  v167 = a1[11];
  v166 = v11;
  v14 = a1[3];
  v15 = a1[5];
  v160 = a1[4];
  v161 = v15;
  v17 = a1[5];
  v16 = a1[6];
  v18 = v16;
  v163 = a1[7];
  v162 = v16;
  v19 = a1[1];
  v156 = *a1;
  v157 = v19;
  v20 = a1[2];
  v22 = *a1;
  v21 = a1[1];
  v23 = v20;
  v159 = a1[3];
  v158 = v20;
  v24 = a1[13];
  v170[12] = v168;
  v171[0] = v24;
  *(v171 + 9) = *(a1 + 217);
  v170[8] = v164;
  v170[9] = v12;
  v170[11] = v7;
  v170[10] = v13;
  v170[4] = v160;
  v170[5] = v17;
  v170[7] = v9;
  v170[6] = v18;
  v170[0] = v22;
  v170[1] = v21;
  v155 = *(a2 + 64);
  v170[3] = v14;
  v170[2] = v23;
  if (sub_252139064(v170) == 1)
  {
    v25 = nullsub_1(v170);
    v26 = v25;
    if (*(v25 + 8) == 1)
    {
      v27 = *(v25 + 192);
      v147 = *(v25 + 176);
      v148 = v27;
      v149 = *(v25 + 208);
      *&v150[0] = *(v25 + 224);
      v28 = *(v25 + 128);
      v143 = *(v25 + 112);
      v144 = v28;
      v29 = *(v25 + 160);
      v145 = *(v25 + 144);
      v146 = v29;
      v30 = *(v25 + 64);
      v139 = *(v25 + 48);
      v140 = v30;
      v31 = *(v25 + 96);
      v141 = *(v25 + 80);
      v142 = v31;
      v32 = *(v25 + 32);
      v137 = *(v25 + 16);
      v138 = v32;
      sub_252136930(&v137, &v123);
      *&v121[166] = v133;
      *&v121[182] = v134;
      *&v121[198] = v135;
      *&v121[214] = v136;
      *&v121[102] = v129;
      *&v121[118] = v130;
      *&v121[134] = v131;
      *&v121[150] = v132;
      *&v121[38] = v125;
      *&v121[54] = v126;
      *&v121[70] = v127;
      *&v121[86] = v128;
      *&v121[6] = v123;
      *&v121[22] = v124;
      *&v122[170] = *&v121[160];
      *&v122[186] = *&v121[176];
      *&v122[202] = *&v121[192];
      *&v122[216] = *&v121[206];
      *&v122[106] = *&v121[96];
      *&v122[122] = *&v121[112];
      *&v122[138] = *&v121[128];
      *&v122[154] = *&v121[144];
      *&v122[42] = *&v121[32];
      *&v122[58] = *&v121[48];
      *&v122[74] = *&v121[64];
      *&v122[90] = *&v121[80];
      *&v122[10] = *v121;
      *v122 = 0;
      *&v122[8] = 256;
      *&v122[26] = *&v121[16];
      sub_25209D9A8(v122);
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD738 != -1)
        {
          swift_once();
        }

        v33 = sub_25214198C();
        __swift_project_value_buffer(v33, qword_27F4CDEF8);
        v34 = sub_25214196C();
        v35 = sub_252141FBC();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = a3;
          v38 = swift_slowAlloc();
          *&v137 = v38;
          *v36 = 136446210;
          v39 = sub_2521425DC();
          v41 = sub_2520A5448(v39, v40, &v137);

          *(v36 + 4) = v41;
          _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] reset noise counter", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          v42 = v38;
          a3 = v37;
          MEMORY[0x253099FD0](v42, -1, -1);
          MEMORY[0x253099FD0](v36, -1, -1);
        }
      }

      v43 = *(a3 + 152);
      sub_2520AAFA4();
      sub_2520AB414();
      sub_2521420BC();
      if (qword_27F4CD748 != -1)
      {
        swift_once();
      }

      if (qword_27F4CD750 != -1)
      {
        swift_once();
      }

      v44 = sub_25214195C();
      __swift_project_value_buffer(v44, qword_27F4CDF30);
      sub_25214193C();
      goto LABEL_55;
    }

    v119 = *(v25 + 8);
    v120 = *v25;
    if (qword_27F4CD7B8 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3493 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v64 = sub_25214198C();
      __swift_project_value_buffer(v64, qword_27F4CDE68);
      v149 = v168;
      v150[0] = v169[0];
      *(v150 + 9) = *(v169 + 9);
      v145 = v164;
      v146 = v165;
      v147 = v166;
      v148 = v167;
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v65 = nullsub_1(&v137);
      sub_2520A2D9C(v65, v122, &qword_27F4CEA18, &qword_2521480E0);
      v66 = sub_25214196C();
      v67 = sub_252141FBC();
      sub_25209D9BC(&v156);
      if (!os_log_type_enabled(v66, v67))
      {
        goto LABEL_36;
      }

      v68 = a3;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v122 = v70;
      *v69 = 136446466;
      v71 = sub_2521425DC();
      v73 = sub_2520A5448(v71, v72, v122);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v74 = MEMORY[0x253098E80](v120, &type metadata for HTHearingTestThreshold);
      v76 = sub_2520A5448(v74, v75, v122);

      *(v69 + 14) = v76;
      _os_log_impl(&dword_25207E000, v66, v67, "[%{public}s] Test completed, result %s", v69, 0x16u);
      swift_arrayDestroy();
      v77 = v70;
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v78 = sub_25214198C();
      __swift_project_value_buffer(v78, qword_27F4CDE68);
      v66 = sub_25214196C();
      v79 = sub_252141FBC();
      if (!os_log_type_enabled(v66, v79))
      {
        goto LABEL_36;
      }

      v68 = a3;
      v69 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v137 = v80;
      *v69 = 136446210;
      v81 = sub_2521425DC();
      v83 = sub_2520A5448(v81, v82, &v137);

      *(v69 + 4) = v83;
      _os_log_impl(&dword_25207E000, v66, v79, "[%{public}s] Test completed", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      v77 = v80;
    }

    MEMORY[0x253099FD0](v77, -1, -1);
    v84 = v69;
    a3 = v68;
    MEMORY[0x253099FD0](v84, -1, -1);
LABEL_36:

    v85 = *(v26 + 192);
    v147 = *(v26 + 176);
    v148 = v85;
    v149 = *(v26 + 208);
    *&v150[0] = *(v26 + 224);
    v86 = *(v26 + 128);
    v143 = *(v26 + 112);
    v144 = v86;
    v87 = *(v26 + 160);
    v145 = *(v26 + 144);
    v146 = v87;
    v88 = *(v26 + 64);
    v139 = *(v26 + 48);
    v140 = v88;
    v89 = *(v26 + 96);
    v141 = *(v26 + 80);
    v142 = v89;
    v90 = *(v26 + 32);
    v137 = *(v26 + 16);
    v138 = v90;
    sub_252136930(&v137, &v123);
    v91 = *(a3 + 152);
    v92 = *(v91 + 80);
    sub_25214200C();
    v93 = v137;
    v94 = *(v91 + 80);
    sub_25214200C();
    v95 = *(&v137 + 1);

    v96 = *(v91 + 80);
    sub_25214200C();
    v97 = *v122;

    if (qword_27F4CD7B0 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3492 != 1)
    {
      goto LABEL_49;
    }

    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v98 = sub_25214198C();
    __swift_project_value_buffer(v98, qword_27F4CDEF8);
    v99 = sub_25214196C();
    v100 = sub_252141FBC();
    if (os_log_type_enabled(v99, v100))
    {
      v118 = v98;
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v137 = v102;
      *v101 = 136446978;
      v103 = sub_2521425DC();
      v105 = sub_2520A5448(v103, v104, &v137);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2048;
      *(v101 + 14) = v93;
      *(v101 + 22) = 2048;
      *(v101 + 24) = v95;
      *(v101 + 32) = 2048;
      *(v101 + 34) = v97;
      _os_log_impl(&dword_25207E000, v99, v100, "[%{public}s] current session inst noise mean %f, noise meta data inst %f, stat %f", v101, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x253099FD0](v102, -1, -1);
      v106 = v101;
      v98 = v118;
      MEMORY[0x253099FD0](v106, -1, -1);
    }

    if (byte_27F4D3492 == 1)
    {
      v149 = v168;
      v150[0] = v169[0];
      *(v150 + 9) = *(v169 + 9);
      v145 = v164;
      v146 = v165;
      v147 = v166;
      v148 = v167;
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v107 = nullsub_1(&v137);
      sub_2520A2D9C(v107, v122, &qword_27F4CEA18, &qword_2521480E0);
      if (qword_27F4CD738 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v98, qword_27F4CDEF8);
      v108 = sub_25214196C();
      v109 = sub_252141FBC();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v122 = v111;
        *v110 = 136446210;
        v112 = sub_2521425DC();
        v114 = sub_2520A5448(v112, v113, v122);

        *(v110 + 4) = v114;
        _os_log_impl(&dword_25207E000, v108, v109, "[%{public}s] reset noise counter", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x253099FD0](v111, -1, -1);
        MEMORY[0x253099FD0](v110, -1, -1);
      }
    }

    else
    {
LABEL_49:
      v149 = v168;
      v150[0] = v169[0];
      *(v150 + 9) = *(v169 + 9);
      v145 = v164;
      v146 = v165;
      v147 = v166;
      v148 = v167;
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v115 = nullsub_1(&v137);
      sub_2520A2D9C(v115, v122, &qword_27F4CEA18, &qword_2521480E0);
    }

    *&v121[166] = v133;
    *&v121[182] = v134;
    *&v121[198] = v135;
    *&v121[102] = v129;
    *&v121[118] = v130;
    *&v121[134] = v131;
    *&v121[150] = v132;
    *&v121[38] = v125;
    *&v121[54] = v126;
    *&v121[70] = v127;
    *&v121[86] = v128;
    *&v121[6] = v123;
    *&v121[214] = v136;
    *&v121[22] = v124;
    sub_2520AAFA4();
    sub_2520AB414();
    sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v116 = sub_25214195C();
    __swift_project_value_buffer(v116, qword_27F4CDF30);
    sub_25214193C();
    *&v122[170] = *&v121[160];
    *&v122[186] = *&v121[176];
    *&v122[202] = *&v121[192];
    *&v122[216] = *&v121[206];
    *&v122[106] = *&v121[96];
    *&v122[122] = *&v121[112];
    *&v122[138] = *&v121[128];
    *&v122[154] = *&v121[144];
    *&v122[42] = *&v121[32];
    *&v122[58] = *&v121[48];
    *&v122[74] = *&v121[64];
    *&v122[90] = *&v121[80];
    *&v122[10] = *v121;
    *v122 = v120;
    *&v122[8] = v119;
    *&v122[26] = *&v121[16];
    sub_25209D9A8(v122);
    goto LABEL_55;
  }

  v45 = a3;
  v46 = nullsub_1(v170);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  v51 = *(v46 + 32);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v52 = sub_25214198C();
  __swift_project_value_buffer(v52, qword_27F4CDE68);
  v53 = sub_25214196C();
  v54 = sub_252141FBC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v137 = v56;
    *v55 = 136447234;
    v57 = sub_2521425DC();
    v59 = sub_2520A5448(v57, v58, &v137);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v47;
    *(v55 + 22) = 2048;
    *(v55 + 24) = v48;
    *(v55 + 32) = 2048;
    *(v55 + 34) = v50;
    *(v55 + 42) = 2048;
    *(v55 + 44) = v49;
    _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] Continue test, next stimulus freq %f, level %f, duration %f, ch %ld", v55, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x253099FD0](v56, -1, -1);
    MEMORY[0x253099FD0](v55, -1, -1);
  }

  *&v121[4] = v151;
  *&v121[20] = v152;
  *&v121[36] = v153;
  *&v121[52] = v154;
  *&v121[68] = v155;
  *v122 = v47;
  *&v122[8] = v48;
  v122[16] = v49;
  *&v122[24] = v50;
  *&v122[32] = v51;
  *&v122[36] = *v121;
  *&v122[96] = *&v121[60];
  *&v122[84] = *&v121[48];
  *&v122[68] = *&v121[32];
  *&v122[52] = *&v121[16];
  sub_25209D9B0(v122);
  v60 = *(v45 + 144);
  v61 = v47;
  v62 = v48;
  if (v49)
  {
    v63 = 2;
  }

  else
  {
    v63 = 1;
  }

  sub_25209D3B0(a2, &v137);
  sub_252108394(v63, v61, v62);
LABEL_55:
  v149 = *&v122[192];
  v150[0] = *&v122[208];
  *(v150 + 9) = *&v122[217];
  v145 = *&v122[128];
  v146 = *&v122[144];
  v147 = *&v122[160];
  v148 = *&v122[176];
  v141 = *&v122[64];
  v142 = *&v122[80];
  v143 = *&v122[96];
  v144 = *&v122[112];
  v137 = *v122;
  v138 = *&v122[16];
  v139 = *&v122[32];
  v140 = *&v122[48];
  *&v122[208] = v150[0];
  *&v122[217] = *(v150 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8);
  return sub_252141DFC();
}

uint64_t sub_252133EB8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v4;
  *(v3 + 224) = *v4;
  v6 = sub_25214195C();
  *(v3 + 232) = v6;
  v7 = *(v6 - 8);
  *(v3 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v9 = *(a2 + 16);
  *(v3 + 256) = *a2;
  *(v3 + 272) = v9;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_252133FB4, 0, 0);
}

uint64_t sub_252133FB4()
{
  v109 = v0;
  if (!os_variant_has_internal_content() || (v1 = *(v0 + 216), swift_beginAccess(), !*(v1 + 136)))
  {
    if (*(v0 + 272) == 2)
    {
      goto LABEL_45;
    }

    v8 = *(v0 + 129);
    v103 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v104 = v8;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 129);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = __swift_project_value_buffer(v14, qword_27F4CDF30);
    (*(v13 + 16))(v12, v16, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252143AD0;
    v18 = sub_252138FA0();
    v19 = 20302;
    if (v104)
    {
      v19 = 5457241;
    }

    v20 = 0xE200000000000000;
    if (v104)
    {
      v20 = 0xE300000000000000;
    }

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v18;
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    v21 = MEMORY[0x277D839F8];
    v22 = MEMORY[0x277D83A80];
    *(v17 + 96) = MEMORY[0x277D839F8];
    *(v17 + 104) = v22;
    *(v17 + 72) = v10;
    *(v17 + 136) = v21;
    *(v17 + 144) = v22;
    *(v17 + 112) = v11;
    LOBYTE(v94) = 2;
    sub_25214193C();

    v23 = *(v13 + 8);
    LODWORD(v13) = v13 + 8;
    v23(v12, v14);
    v24 = v9 & 1;
    v25 = *(v15 + 112);
    v26 = __OFADD__(v25, v9 & 1);
    v27 = v25 + (v9 & 1);
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 216);
      *(v15 + 112) = v27;
      swift_beginAccess();
      sub_2520A2D9C(v28 + 56, v0 + 16, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 40))
      {
        v29 = *(v0 + 280);
        v15 = *(v0 + 272);
        v13 = *(v0 + 256);
        v30 = *(v0 + 264);
        v31 = *(v0 + 216);
        sub_252139A10(v0 + 16, v0 + 56);
        sub_252138FF4(v0 + 16);
        v32 = *(v0 + 80);
        v33 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v32);
        v105[0] = v13;
        v105[1] = v30;
        v106 = v15 & 1;
        v107 = v29;
        v108 = v24;
        v34 = (*(v33 + 8))(v105, v32, v33);
        v12 = v35;
        v36 = __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v44 = *(v31 + 120);
        if (__OFADD__(v44, v34 & 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v31 + 120) = v44 + (v34 & 1);
        v15 = *(v0 + 216);
        if (v34)
        {
          v45 = *(v15 + 96);
          v26 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v26)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          LODWORD(v10) = 1;
        }

        else
        {
          LODWORD(v10) = 0;
          v46 = 0;
        }
      }

      else
      {
        sub_252138FF4(v0 + 16);
        v47 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v48 = sub_252141B6C();
        v10 = [v47 initWithSuiteName_];

        if (!v10)
        {
LABEL_54:
          __break(1u);
          return MEMORY[0x2822007B8](v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v49 = sub_252141B6C();
        v12 = [v10 integerForKey_];

        LODWORD(v10) = 0;
        v46 = 0;
        v15 = *(v0 + 216);
      }

      *(v15 + 96) = v46;
      if (v46 >= v12)
      {
        LODWORD(v13) = 1;
      }

      else
      {
        LODWORD(v13) = v10 ^ 1;
      }

      if (qword_27F4CD7B8 == -1)
      {
LABEL_28:
        v32 = 0x27F4CD000uLL;
        v103 = v10;
        if (byte_27F4D3493 != 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v65 = sub_25214198C();
          __swift_project_value_buffer(v65, qword_27F4CDE68);
          v51 = sub_25214196C();
          v66 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v66))
          {
            goto LABEL_37;
          }

          v99 = *(v0 + 280);
          v101 = *(v0 + 272);
          v67 = *(v0 + 256);
          v97 = *(v0 + 264);
          v68 = *(v0 + 224);
          v54 = swift_slowAlloc();
          v102 = v15;
          v55 = swift_slowAlloc();
          v105[0] = v55;
          *v54 = 136447746;
          v69 = sub_2521425DC();
          v71 = v12;
          v72 = v13;
          v13 = sub_2520A5448(v69, v70, v105);

          *(v54 + 4) = v13;
          LODWORD(v13) = v72;
          *(v54 + 12) = 2048;
          *(v54 + 14) = v67;
          *(v54 + 22) = 2048;
          *(v54 + 24) = v97;
          *(v54 + 32) = 2048;
          *(v54 + 34) = v99;
          *(v54 + 42) = 2048;
          *(v54 + 44) = v101 & 1;
          *(v54 + 52) = 1024;
          *(v54 + 54) = v103;
          *(v54 + 58) = 2048;
          *(v54 + 60) = v71;
          v32 = 0x27F4CD000uLL;
          v60 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v61 = v66;
          v62 = v51;
          v63 = v54;
          v64 = 68;
          goto LABEL_36;
        }

        if (qword_27F4CD708 == -1)
        {
LABEL_30:
          v50 = sub_25214198C();
          __swift_project_value_buffer(v50, qword_27F4CDE68);
          v51 = sub_25214196C();
          v52 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v52))
          {
LABEL_37:

            if ((v13 | v104))
            {
              v74 = *(v0 + 216);
              *(v74 + 104) = 0;
              *(v15 + 96) = 0;
              swift_beginAccess();
              v75 = *(v74 + 40);
              v76 = *(v74 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v74 + 16, v75);
              (*(v76 + 80))(v104 & 1, v103, v75, v76);
              swift_endAccess();
              goto LABEL_45;
            }

            if (*(v32 + 1800) != -1)
            {
              swift_once();
            }

            v77 = sub_25214198C();
            __swift_project_value_buffer(v77, qword_27F4CDE68);
            v78 = sub_25214196C();
            v79 = sub_252141FBC();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = *(v0 + 224);
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v105[0] = v82;
              *v81 = 136446466;
              v83 = sub_2521425DC();
              v85 = sub_2520A5448(v83, v84, v105);

              *(v81 + 4) = v85;
              *(v81 + 12) = 1024;
              *(v81 + 14) = 1;
              _os_log_impl(&dword_25207E000, v78, v79, "[%{public}s] Repeat Tone Flag %{BOOL}d", v81, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v82);
              MEMORY[0x253099FD0](v82, -1, -1);
              MEMORY[0x253099FD0](v81, -1, -1);
            }

            v86 = *(v0 + 216);
            v87 = *(v86 + 128);
            v26 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (!v26)
            {
              *(v86 + 128) = v88;
LABEL_45:
              v90 = *(v0 + 216);
              v89 = *(v0 + 224);
              v91 = swift_task_alloc();
              *(v0 + 296) = v91;
              *(v91 + 16) = v90;
              *(v91 + 24) = v89;
              v92 = *(MEMORY[0x277D859E0] + 4);
              v93 = swift_task_alloc();
              *(v0 + 304) = v93;
              *v93 = v0;
              v93[1] = sub_252134AF4;
              v36 = *(v0 + 208);
              v43 = &type metadata for HTHearingTestSessionStatusWithAverageNoise;
              v41 = sub_25213905C;
              v39 = 0xD000000000000027;
              v40 = 0x800000025214BB80;
              v37 = 0;
              v38 = 0;
              v42 = v91;

              return MEMORY[0x2822007B8](v36, v37, v38, v39, v40, v41, v42, v43);
            }

            __break(1u);
            goto LABEL_53;
          }

          v98 = *(v0 + 280);
          v100 = *(v0 + 272);
          v95 = *(v0 + 256);
          v96 = *(v0 + 264);
          v53 = *(v0 + 224);
          v54 = swift_slowAlloc();
          v102 = v15;
          v55 = swift_slowAlloc();
          v105[0] = v55;
          *v54 = 136448002;
          v56 = sub_2521425DC();
          v58 = v12;
          v59 = v13;
          v13 = sub_2520A5448(v56, v57, v105);

          *(v54 + 4) = v13;
          LODWORD(v13) = v59;
          *(v54 + 12) = 2048;
          *(v54 + 14) = v95;
          *(v54 + 22) = 2048;
          *(v54 + 24) = v96;
          *(v54 + 32) = 2048;
          *(v54 + 34) = v98;
          *(v54 + 42) = 2048;
          *(v54 + 44) = v100 & 1;
          *(v54 + 52) = 1024;
          *(v54 + 54) = v24;
          *(v54 + 58) = 1024;
          *(v54 + 60) = v103;
          *(v54 + 64) = 2048;
          *(v54 + 66) = v58;
          v32 = 0x27F4CD000;
          v60 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v61 = v52;
          v62 = v51;
          v63 = v54;
          v64 = 74;
LABEL_36:
          _os_log_impl(&dword_25207E000, v62, v61, v60, v63, v64);
          __swift_destroy_boxed_opaque_existential_0(v55);
          v73 = v55;
          v15 = v102;
          MEMORY[0x253099FD0](v73, -1, -1);
          MEMORY[0x253099FD0](v54, -1, -1);
          goto LABEL_37;
        }

LABEL_51:
        swift_once();
        goto LABEL_30;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  v2 = *(v0 + 129);
  v3 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v3;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_2521349E4;
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);

  return sub_252137A68(v5, v0 + 96);
}

uint64_t sub_2521349E4()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 248);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_252134AF4()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v7 = *v0;

  v4 = *(v1 + 248);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_252134C28(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v8;
  swift_beginAccess();
  v9 = *__swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v38);
  sub_252139A10((a2 + 2), v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v10 = off_28644FCE0;
  type metadata accessor for HTAudiometry();
  v11 = v10();
  __swift_destroy_boxed_opaque_existential_0(v37);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v12 = sub_25214198C();
  __swift_project_value_buffer(v12, qword_27F4CDE68);
  v13 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v5;
    v17 = a3;
    v18 = v16;
    v37[0] = v16;
    *v15 = 136446466;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, v37);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] HT session progress %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v22 = v18;
    a3 = v17;
    v5 = v34;
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  v23 = v36;
  (*(v6 + 16))(v36, v35, v5);
  v24 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = v38[3];
  *(v25 + 48) = v38[2];
  *(v25 + 64) = v26;
  v27 = v39;
  v28 = v38[1];
  *(v25 + 16) = v38[0];
  *(v25 + 32) = v28;
  *(v25 + 80) = v27;
  *(v25 + 88) = a2;
  (*(v6 + 32))(v25 + v24, v23, v5);
  *(v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  swift_beginAccess();
  v29 = a2[5];
  v30 = a2[6];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 2), v29);
  v31 = *(v30 + 104);

  v31(sub_252139A88, v25, v29, v30);
  swift_endAccess();
}

uint64_t sub_252134FB8(void *__src, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  v121 = *(a2 + 32);
  v122 = v5;
  v123 = *(a2 + 64);
  v6 = *a2;
  v120 = *(a2 + 16);
  v119 = v6;
  memcpy(__dst, __src, 0x110uLL);
  enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0 = get_enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0(__dst);
  v8 = sub_2520F63DC(__dst);
  if (enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0 == 1)
  {
    if (*(v8 + 16) == 1)
    {
      v9 = *(v8 + 232);
      v118[12] = *(v8 + 216);
      v118[13] = v9;
      v118[14] = *(v8 + 248);
      *&v118[15] = *(v8 + 264);
      v10 = *(v8 + 168);
      v118[8] = *(v8 + 152);
      v118[9] = v10;
      v11 = *(v8 + 200);
      v118[10] = *(v8 + 184);
      v118[11] = v11;
      v12 = *(v8 + 104);
      v118[4] = *(v8 + 88);
      v118[5] = v12;
      v13 = *(v8 + 136);
      v118[6] = *(v8 + 120);
      v118[7] = v13;
      v14 = *(v8 + 40);
      v118[0] = *(v8 + 24);
      v118[1] = v14;
      v15 = *(v8 + 72);
      v118[2] = *(v8 + 56);
      v118[3] = v15;
      sub_252136AD4(v118, &v102);
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD738 != -1)
        {
          swift_once();
        }

        v16 = sub_25214198C();
        __swift_project_value_buffer(v16, qword_27F4CDEF8);
        v17 = sub_25214196C();
        v18 = sub_252141FBC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v118[0] = v20;
          *v19 = 136446210;
          v21 = sub_2521425DC();
          v23 = sub_2520A5448(v21, v22, v118);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] reset noise counter", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x253099FD0](v20, -1, -1);
          MEMORY[0x253099FD0](v19, -1, -1);
        }
      }

      *&v99[198] = v114;
      *&v99[214] = v115;
      *&v99[230] = v116;
      *&v99[134] = v110;
      *&v99[150] = v111;
      *&v99[166] = v112;
      *&v99[182] = v113;
      *&v99[70] = v106;
      *&v99[86] = v107;
      *&v99[102] = v108;
      *&v99[118] = v109;
      *&v99[6] = v102;
      *&v99[22] = v103;
      *&v99[38] = v104;
      v100 = 1;
      *&v99[246] = v117;
      *&v99[54] = v105;
      v24 = *(a3 + 152);
      sub_2520AAFA4();
      sub_2520AB414();
      sub_2521420BC();
      if (qword_27F4CD748 != -1)
      {
        swift_once();
      }

      if (qword_27F4CD750 != -1)
      {
        swift_once();
      }

      v25 = sub_25214195C();
      __swift_project_value_buffer(v25, qword_27F4CDF30);
      sub_25214193C();
      *(&__srca[13] + 2) = *&v99[192];
      *(&__srca[14] + 2) = *&v99[208];
      *(&__srca[15] + 2) = *&v99[224];
      __srca[16] = *&v99[238];
      *(&__srca[9] + 2) = *&v99[128];
      *(&__srca[10] + 2) = *&v99[144];
      *(&__srca[11] + 2) = *&v99[160];
      *(&__srca[12] + 2) = *&v99[176];
      *(&__srca[5] + 2) = *&v99[64];
      *(&__srca[6] + 2) = *&v99[80];
      *(&__srca[7] + 2) = *&v99[96];
      *(&__srca[8] + 2) = *&v99[112];
      *(&__srca[1] + 2) = *v99;
      *(&__srca[2] + 2) = *&v99[16];
      v26 = *&v99[48];
      *(&__srca[3] + 2) = *&v99[32];
      memset(__srca, 0, 17);
LABEL_55:
      BYTE1(__srca[1]) = v100;
      *(&__srca[4] + 2) = v26;
      sub_252139B54(__srca);
      goto LABEL_56;
    }

    v98 = *(v8 + 16);
    v44 = *(v8 + 8);
    if (qword_27F4CD7B8 != -1)
    {
      v95 = v8;
      swift_once();
      v8 = v95;
    }

    v96 = v8;
    if (byte_27F4D3493 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v45 = sub_25214198C();
      __swift_project_value_buffer(v45, qword_27F4CDE68);

      v46 = sub_25214196C();
      v47 = sub_252141FBC();

      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_36;
      }

      v48 = swift_slowAlloc();
      v49 = v44;
      v50 = swift_slowAlloc();
      *&v118[0] = v50;
      *v48 = 136446466;
      v51 = sub_2521425DC();
      v53 = sub_2520A5448(v51, v52, v118);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = MEMORY[0x253098E80](v49, &type metadata for HTHearingTestThreshold);
      v56 = sub_2520A5448(v54, v55, v118);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_25207E000, v46, v47, "[%{public}s] Test completed, result %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v57 = sub_25214198C();
      __swift_project_value_buffer(v57, qword_27F4CDE68);
      v46 = sub_25214196C();
      v58 = sub_252141FBC();
      if (!os_log_type_enabled(v46, v58))
      {
        goto LABEL_36;
      }

      v48 = swift_slowAlloc();
      v49 = v44;
      v50 = swift_slowAlloc();
      *&v118[0] = v50;
      *v48 = 136446210;
      v59 = sub_2521425DC();
      v61 = sub_2520A5448(v59, v60, v118);

      *(v48 + 4) = v61;
      _os_log_impl(&dword_25207E000, v46, v58, "[%{public}s] Test completed", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    v62 = v50;
    v44 = v49;
    MEMORY[0x253099FD0](v62, -1, -1);
    MEMORY[0x253099FD0](v48, -1, -1);
LABEL_36:

    v63 = *(v96 + 232);
    v118[12] = *(v96 + 216);
    v118[13] = v63;
    v118[14] = *(v96 + 248);
    *&v118[15] = *(v96 + 264);
    v64 = *(v96 + 168);
    v118[8] = *(v96 + 152);
    v118[9] = v64;
    v65 = *(v96 + 200);
    v118[10] = *(v96 + 184);
    v118[11] = v65;
    v66 = *(v96 + 104);
    v118[4] = *(v96 + 88);
    v118[5] = v66;
    v67 = *(v96 + 136);
    v118[6] = *(v96 + 120);
    v118[7] = v67;
    v68 = *(v96 + 40);
    v118[0] = *(v96 + 24);
    v118[1] = v68;
    v69 = *(v96 + 72);
    v118[2] = *(v96 + 56);
    v118[3] = v69;
    sub_252136AD4(v118, &v102);
    v70 = *(a3 + 152);
    v71 = *(v70 + 80);
    sub_25214200C();
    v72 = *&v118[0];
    v73 = *(v70 + 80);
    sub_25214200C();
    v74 = *(&v118[0] + 1);

    v75 = *(v70 + 80);
    sub_25214200C();
    v76 = *&__srca[0];

    if (qword_27F4CD7B0 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3492 != 1)
    {
      goto LABEL_49;
    }

    v97 = v44;
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v77 = sub_25214198C();
    __swift_project_value_buffer(v77, qword_27F4CDEF8);
    v78 = sub_25214196C();
    v79 = sub_252141FBC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v118[0] = v81;
      *v80 = 136446978;
      v82 = sub_2521425DC();
      v84 = sub_2520A5448(v82, v83, v118);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v72;
      *(v80 + 22) = 2048;
      *(v80 + 24) = v74;
      *(v80 + 32) = 2048;
      *(v80 + 34) = v76;
      _os_log_impl(&dword_25207E000, v78, v79, "[%{public}s] current session inst noise mean %f, noise meta data inst %f, stat %f", v80, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x253099FD0](v81, -1, -1);
      MEMORY[0x253099FD0](v80, -1, -1);
    }

    v44 = v97;
    if (byte_27F4D3492 == 1)
    {
      v85 = qword_27F4CD738;

      if (v85 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v77, qword_27F4CDEF8);
      v86 = sub_25214196C();
      v87 = sub_252141FBC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v118[0] = v89;
        *v88 = 136446210;
        v90 = sub_2521425DC();
        v92 = sub_2520A5448(v90, v91, v118);

        *(v88 + 4) = v92;
        v44 = v97;
        _os_log_impl(&dword_25207E000, v86, v87, "[%{public}s] reset noise counter", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x253099FD0](v89, -1, -1);
        MEMORY[0x253099FD0](v88, -1, -1);
      }
    }

    else
    {
LABEL_49:
    }

    *&v99[198] = v114;
    *&v99[214] = v115;
    *&v99[230] = v116;
    *&v99[134] = v110;
    *&v99[150] = v111;
    *&v99[166] = v112;
    *&v99[182] = v113;
    *&v99[70] = v106;
    *&v99[86] = v107;
    *&v99[102] = v108;
    *&v99[118] = v109;
    *&v99[6] = v102;
    *&v99[22] = v103;
    *&v99[38] = v104;
    v100 = 0;
    *&v99[246] = v117;
    *&v99[54] = v105;
    sub_2520AAFA4();
    sub_2520AB414();
    sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v93 = sub_25214195C();
    __swift_project_value_buffer(v93, qword_27F4CDF30);
    sub_25214193C();
    *&__srca[0] = v72;
    *(&__srca[13] + 2) = *&v99[192];
    *(&__srca[14] + 2) = *&v99[208];
    *(&__srca[15] + 2) = *&v99[224];
    __srca[16] = *&v99[238];
    *(&__srca[9] + 2) = *&v99[128];
    *(&__srca[10] + 2) = *&v99[144];
    *(&__srca[11] + 2) = *&v99[160];
    *(&__srca[12] + 2) = *&v99[176];
    *(&__srca[5] + 2) = *&v99[64];
    *(&__srca[6] + 2) = *&v99[80];
    *(&__srca[7] + 2) = *&v99[96];
    *(&__srca[8] + 2) = *&v99[112];
    *(&__srca[1] + 2) = *v99;
    *(&__srca[2] + 2) = *&v99[16];
    v26 = *&v99[48];
    *(&__srca[3] + 2) = *&v99[32];
    *(&__srca[0] + 1) = v44;
    LOBYTE(__srca[1]) = v98;
    goto LABEL_55;
  }

  v27 = *v8;
  v28 = *(v8 + 8);
  v29 = *(v8 + 16);
  v30 = *(v8 + 24);
  v31 = *(v8 + 32);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v32 = sub_25214198C();
  __swift_project_value_buffer(v32, qword_27F4CDE68);
  v33 = sub_25214196C();
  v34 = sub_252141FBC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v118[0] = v36;
    *v35 = 136447234;
    v37 = sub_2521425DC();
    v39 = sub_2520A5448(v37, v38, v118);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2048;
    *(v35 + 14) = v27;
    *(v35 + 22) = 2048;
    *(v35 + 24) = v28;
    *(v35 + 32) = 2048;
    *(v35 + 34) = v30;
    *(v35 + 42) = 2048;
    *(v35 + 44) = v29;
    _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] Continue test, next stimulus freq %f, level %f, duration %f, ch %ld", v35, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x253099FD0](v36, -1, -1);
    MEMORY[0x253099FD0](v35, -1, -1);
  }

  *&v99[4] = v119;
  *&v99[20] = v120;
  *&v99[36] = v121;
  *&v99[52] = v122;
  *&v99[68] = v123;
  *__srca = v27;
  *(__srca + 1) = v28;
  LOBYTE(__srca[1]) = v29;
  *(&__srca[1] + 1) = v30;
  LODWORD(__srca[2]) = v31;
  *(&__srca[2] + 4) = *v99;
  __srca[6] = *&v99[60];
  *(&__srca[5] + 4) = *&v99[48];
  *(&__srca[4] + 4) = *&v99[32];
  *(&__srca[3] + 4) = *&v99[16];
  sub_2521399FC(__srca);
  v40 = *(a3 + 144);
  v41 = v27;
  v42 = v28;
  if (v29)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  sub_25209D3B0(a2, v118);
  sub_252108394(v43, v41, v42);
LABEL_56:
  memcpy(v118, __srca, sizeof(v118));
  memcpy(__srca, v118, sizeof(__srca));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0);
  return sub_252141DFC();
}

uint64_t sub_252135EB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 776) = a1;
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  *(v2 + 736) = *a2;
  *(v2 + 752) = v4;
  *(v2 + 768) = v3;
  v5 = swift_task_alloc();
  *(v2 + 784) = v5;
  *v5 = v2;
  v5[1] = sub_252135F64;

  return sub_252131EC8(v2 + 496, v2 + 736);
}

uint64_t sub_252135F64()
{
  v1 = *(*v0 + 784);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252136060, 0, 0);
}

uint64_t sub_252136060()
{
  v1 = *(v0 + 704);
  *(v0 + 448) = *(v0 + 688);
  *(v0 + 464) = v1;
  v2 = *(v0 + 640);
  *(v0 + 384) = *(v0 + 624);
  *(v0 + 400) = v2;
  v3 = *(v0 + 672);
  *(v0 + 416) = *(v0 + 656);
  *(v0 + 432) = v3;
  v4 = *(v0 + 576);
  *(v0 + 320) = *(v0 + 560);
  *(v0 + 336) = v4;
  v5 = *(v0 + 608);
  *(v0 + 352) = *(v0 + 592);
  *(v0 + 368) = v5;
  v6 = *(v0 + 512);
  *(v0 + 256) = *(v0 + 496);
  *(v0 + 272) = v6;
  v7 = *(v0 + 544);
  *(v0 + 288) = *(v0 + 528);
  *(v0 + 304) = v7;
  *(v0 + 473) = *(v0 + 713);
  v8 = *(v0 + 464);
  *(v0 + 208) = *(v0 + 448);
  *(v0 + 224) = v8;
  *(v0 + 233) = *(v0 + 473);
  v9 = *(v0 + 400);
  *(v0 + 144) = *(v0 + 384);
  *(v0 + 160) = v9;
  v10 = *(v0 + 432);
  *(v0 + 176) = *(v0 + 416);
  *(v0 + 192) = v10;
  v11 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 320);
  *(v0 + 96) = v11;
  v12 = *(v0 + 368);
  *(v0 + 112) = *(v0 + 352);
  *(v0 + 128) = v12;
  v13 = *(v0 + 272);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 32) = v13;
  v14 = *(v0 + 304);
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 64) = v14;
  if (sub_252139064(v0 + 16) == 1)
  {
    v15 = *(v0 + 776);
    v16 = nullsub_1(v0 + 16);
    v17 = *(v16 + 24);
    v18 = *(v16 + 104);
    v19 = *(v16 + 16) & 1;
    v20 = *(v16 + 32) | 0x8000000000000000;
    v21 = *(v16 + 40);
    v22 = *(v16 + 56);
    v23 = *(v16 + 72);
    v24 = *(v16 + 88);
    *v15 = *v16;
    *(v15 + 16) = v19;
    *(v15 + 24) = v17;
    *(v15 + 32) = v20;
    *(v15 + 40) = v21;
    *(v15 + 56) = v22;
    *(v15 + 72) = v23;
    *(v15 + 88) = v24;
    *(v15 + 104) = v18;
  }

  else
  {
    v25 = nullsub_1(v0 + 16);
    v26 = *(v0 + 776);
    if (*(v25 + 9))
    {
      sub_25213906C();
      v27 = swift_allocError();
      sub_2521390C0(v0 + 256);
      *v26 = v27;
      *(v26 + 8) = 256;
    }

    else
    {
      v28 = *(v25 + 8);
      *v26 = *v25;
      *(v26 + 8) = v28;
    }

    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_25213621C(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  v9 = sub_25214196C();
  v10 = sub_252141FBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136447234;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v5;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v4;
    *(v11 + 32) = 2048;
    *(v11 + 34) = v7;
    *(v11 + 42) = 2048;
    *(v11 + 44) = v6;
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] HT session received playback confirmation for Tone freq %f, level %f, duration %f, ch %ld", v11, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  swift_beginAccess();
  v16 = v2[5];
  v17 = v2[6];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 2), v16);
  (*(v17 + 88))(v16, v17);
  return swift_endAccess();
}

uint64_t sub_252136420()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_252136468, 0, 0);
}

uint64_t sub_252136468()
{
  v26 = v0;
  v1 = v0[5];
  if (*(v1 + 104) == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[6];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Evaluation paused, already rolled back samples", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] Evaluation paused, rolling back 2 samples", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    v20 = v0[5];
    *(v1 + 104) = 1;
    swift_beginAccess();
    v21 = *(v20 + 40);
    v22 = *(v20 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v20 + 16, v21);
    (*(v22 + 112))(2, v21, v22);
    swift_endAccess();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2521367AC()
{
  v13 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Evaluation resumed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

__n128 sub_252136930@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v38 = a1[2];
  v39 = v4;
  v40 = *(a1 + 8);
  v5 = a1[1];
  v36 = *a1;
  v37 = v5;
  v6 = a1[11];
  v32 = a1[10];
  v33 = v6;
  v34 = a1[12];
  v35 = *(a1 + 26);
  v7 = a1[7];
  v28 = a1[6];
  v29 = v7;
  v8 = a1[9];
  v30 = a1[8];
  v31 = v8;
  v9 = v2[14];
  v10 = v2[15];
  v11 = v2[16];
  swift_beginAccess();
  sub_2520A2D9C((v2 + 7), v26, &qword_27F4CE9F0, &qword_252147FB8);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA00, &unk_2521480C0);
    type metadata accessor for HTRequirementStatusManager();
    if (swift_dynamicCast())
    {
      v12 = *(v25 + 264);

      v13 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 80];
      v32 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 64];
      v33 = v13;
      v34 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 96];
      v35 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 112];
      v14 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
      v28 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
      v29 = v14;
      v15 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 48];
      v30 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
      v31 = v15;
    }
  }

  else
  {
    sub_252138FF4(v26);
  }

  v16 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v16;
  v17 = v40;
  v18 = v37;
  *a2 = v36;
  *(a2 + 16) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v19 = v28;
  v20 = v29;
  v21 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v21;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  result = v32;
  v23 = v33;
  v24 = v34;
  *(a2 + 208) = v35;
  *(a2 + 176) = v23;
  *(a2 + 192) = v24;
  *(a2 + 160) = result;
  return result;
}

__n128 sub_252136AD4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  v5 = a1[13];
  v66 = a1[12];
  v67 = v5;
  v68 = a1[14];
  v6 = a1[7];
  v7 = a1[9];
  v62 = a1[8];
  v63 = v7;
  v8 = a1[11];
  v9 = a1[9];
  v64 = a1[10];
  v65 = v8;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[3];
  v58 = a1[4];
  v59 = v10;
  v14 = a1[6];
  v13 = a1[7];
  v60 = v11;
  v61 = v13;
  v15 = a1[1];
  v55[0] = *a1;
  v55[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v56 = a1[2];
  v57 = v16;
  v52 = v56;
  v53 = v12;
  v50 = v18;
  v51 = v17;
  v46 = v64;
  v47 = v4;
  v48 = v66;
  v42 = v14;
  v43 = v6;
  v69 = *(a1 + 30);
  v54 = *(a1 + 8);
  v49 = *(a1 + 26);
  v44 = v62;
  v45 = v9;
  v19 = v2[14];
  v20 = v2[15];
  v21 = v2[16];
  swift_beginAccess();
  sub_2520A2D9C((v2 + 7), v40, &qword_27F4CE9F0, &qword_252147FB8);
  if (v41)
  {
    sub_2520A2A98(v55, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA00, &unk_2521480C0);
    type metadata accessor for HTRequirementStatusManager();
    if (swift_dynamicCast())
    {
      v22 = *(v37 + 264);

      v23 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 80];
      v46 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 64];
      v47 = v23;
      v48 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 96];
      v49 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 112];
      v24 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
      v42 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
      v43 = v24;
      v25 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 48];
      v44 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
      v45 = v25;
    }
  }

  else
  {
    sub_2520A2A98(v55, v38);
    sub_252138FF4(v40);
  }

  v26 = *(v2[19] + 80);
  sub_25214200C();
  v27 = v38[0];
  v28 = v38[1];
  v36 = v39;

  v29 = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v29;
  v30 = v54;
  v31 = v51;
  *a2 = v50;
  *(a2 + 16) = v31;
  *(a2 + 64) = v30;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  v32 = v45;
  *(a2 + 128) = v44;
  *(a2 + 144) = v32;
  v33 = v43;
  *(a2 + 96) = v42;
  *(a2 + 112) = v33;
  *(a2 + 208) = v49;
  v34 = v48;
  *(a2 + 176) = v47;
  *(a2 + 192) = v34;
  *(a2 + 160) = v46;
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  result = v36;
  *(a2 + 232) = v36;
  return result;
}

uint64_t sub_252136D48(uint64_t a1, uint64_t a2)
{
  *(v3 + 504) = a1;
  *(v3 + 512) = v2;
  *(v3 + 520) = *v2;
  v4 = *(a2 + 16);
  *(v3 + 528) = *a2;
  *(v3 + 544) = v4;
  *(v3 + 249) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_252136DA0, 0, 0);
}

void sub_252136DA0()
{
  v117 = v0;
  v4 = *(v0 + 512);
  swift_beginAccess();
  v5 = *(v4 + 136);
  if (v5 && *(v5 + 16))
  {
    v6 = *(v0 + 512);
    v8 = sub_252131714();
    v9 = *v7;
    if (*v7)
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v6 = v7;
      v10 = *(v9 + 32);

      sub_2521389E8(0, 1, sub_252099C08, sub_252138918);
      (v8)(v0 + 376, 0);
      if (v10[2] <= 3uLL)
      {

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v11 = sub_25214198C();
        __swift_project_value_buffer(v11, qword_27F4CDE68);
        v6 = sub_25214196C();
        v12 = sub_252141FBC();
        if (os_log_type_enabled(v6, v12))
        {
          v13 = *(v0 + 520);
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v114 = v15;
          *v14 = 136446210;
          v16 = sub_2521425DC();
          v18 = sub_2520A5448(v16, v17, v114);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_25207E000, v6, v12, "[%{public}s] On demand tones should have 4 parameters: frequency, soundLevel, channel(L:0, R:1) and toneDuration. Ex: '(1000, 50, 0, 1)' '(2000, 40, 1, 1)'", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x253099FD0](v15, -1, -1);
          MEMORY[0x253099FD0](v14, -1, -1);
        }

        v10 = &unk_28644E738;
      }

      if (*(v0 + 544) == 2)
      {
LABEL_38:
        v77 = v10[2];
        if (v77)
        {
          if (v77 != 1)
          {
            if (v77 >= 3)
            {
              if (v77 != 3)
              {
                v1 = v10[4];
                v2 = v10[5];
                v6 = v10[6];
                v3 = v10[7];

                if (qword_27F4CD708 == -1)
                {
LABEL_43:
                  v78 = v6 & 0x7FFFFFFFFFFFFFFFLL;
                  v79 = sub_25214198C();
                  __swift_project_value_buffer(v79, qword_27F4CDE68);
                  v80 = sub_25214196C();
                  v81 = sub_252141FBC();
                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = *(v0 + 520);
                    v83 = swift_slowAlloc();
                    v84 = swift_slowAlloc();
                    *v114 = v84;
                    *v83 = 136447234;
                    v85 = sub_2521425DC();
                    v87 = sub_2520A5448(v85, v86, v114);

                    *(v83 + 4) = v87;
                    *(v83 + 12) = 2048;
                    *(v83 + 14) = v1;
                    *(v83 + 22) = 2048;
                    *(v83 + 24) = v2;
                    *(v83 + 32) = 2048;
                    *(v83 + 34) = v3;
                    *(v83 + 42) = 2048;
                    *(v83 + 44) = v78 != 0;
                    _os_log_impl(&dword_25207E000, v80, v81, "[%{public}s] Continue test, next on demand tone freq %f, level %f, duration %f, ch %ld", v83, 0x34u);
                    __swift_destroy_boxed_opaque_existential_0(v84);
                    MEMORY[0x253099FD0](v84, -1, -1);
                    MEMORY[0x253099FD0](v83, -1, -1);
                  }

                  v88 = *(v0 + 504);
                  v89 = *(v0 + 512);
                  swift_beginAccess();
                  v90 = *__swift_project_boxed_opaque_existential_1((v89 + 16), *(v89 + 40));
                  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v115);
                  *&v114[4] = v115[0];
                  *&v114[20] = v115[1];
                  *&v114[36] = v115[2];
                  *&v114[52] = v115[3];
                  *&v114[68] = v116;
                  *(v0 + 16) = v1;
                  *(v0 + 24) = v2;
                  *(v0 + 32) = v78 != 0;
                  *(v0 + 40) = v3;
                  *(v0 + 48) = 0;
                  v91 = *&v114[16];
                  *(v0 + 52) = *v114;
                  v92 = *&v114[32];
                  v93 = *&v114[48];
                  *(v0 + 112) = *&v114[60];
                  *(v0 + 100) = v93;
                  *(v0 + 84) = v92;
                  *(v0 + 68) = v91;
                  sub_25209D9B0(v0 + 16);
                  v94 = *(v0 + 16);
                  v95 = *(v0 + 48);
                  v88[1] = *(v0 + 32);
                  v88[2] = v95;
                  *v88 = v94;
                  v96 = *(v0 + 64);
                  v97 = *(v0 + 80);
                  v98 = *(v0 + 112);
                  v88[5] = *(v0 + 96);
                  v88[6] = v98;
                  v88[3] = v96;
                  v88[4] = v97;
                  v99 = *(v0 + 128);
                  v100 = *(v0 + 144);
                  v101 = *(v0 + 176);
                  v88[9] = *(v0 + 160);
                  v88[10] = v101;
                  v88[7] = v99;
                  v88[8] = v100;
                  v102 = *(v0 + 192);
                  v103 = *(v0 + 208);
                  v104 = *(v0 + 224);
                  *(v88 + 217) = *(v0 + 233);
                  v88[12] = v103;
                  v88[13] = v104;
                  v88[11] = v102;
                  v105 = *(v0 + 8);

                  v105();
                  return;
                }

LABEL_53:
                swift_once();
                goto LABEL_43;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v19 = *(v0 + 249);
      if (qword_27F4CD7B8 != -1)
      {
        swift_once();
      }

      v112 = v19;
      if (byte_27F4D3493 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v20 = sub_25214198C();
        __swift_project_value_buffer(v20, qword_27F4CDE68);
        v21 = sub_25214196C();
        v22 = sub_252141FBC();
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_29;
        }

        v109 = *(v0 + 249);
        v106 = *(v0 + 552);
        v107 = *(v0 + 544);
        v23 = *(v0 + 536);
        v24 = *(v0 + 528);
        v25 = *(v0 + 520);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v114 = v27;
        *v26 = 136447490;
        v28 = sub_2521425DC();
        v30 = sub_2520A5448(v28, v29, v114);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v24;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v23;
        *(v26 + 32) = 2048;
        *(v26 + 34) = v106;
        *(v26 + 42) = 2048;
        *(v26 + 44) = v107 & 1;
        *(v26 + 52) = 1024;
        *(v26 + 54) = v109 & 1;
        _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d", v26, 0x3Au);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v31 = v27;
      }

      else
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v41 = sub_25214198C();
        __swift_project_value_buffer(v41, qword_27F4CDE68);
        v21 = sub_25214196C();
        v42 = sub_252141FBC();
        if (!os_log_type_enabled(v21, v42))
        {
          goto LABEL_29;
        }

        v108 = *(v0 + 552);
        v111 = *(v0 + 544);
        v43 = *(v0 + 536);
        v44 = *(v0 + 528);
        v45 = *(v0 + 520);
        v26 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v114 = v46;
        *v26 = 136447234;
        v47 = sub_2521425DC();
        v49 = sub_2520A5448(v47, v48, v114);

        *(v26 + 4) = v49;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v44;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v43;
        *(v26 + 32) = 2048;
        *(v26 + 34) = v108;
        *(v26 + 42) = 2048;
        *(v26 + 44) = v111 & 1;
        _os_log_impl(&dword_25207E000, v21, v42, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld", v26, 0x34u);
        __swift_destroy_boxed_opaque_existential_0(v46);
        v31 = v46;
      }

      MEMORY[0x253099FD0](v31, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
LABEL_29:

      v50 = *(v0 + 512);
      swift_beginAccess();
      sub_2520A2D9C(v50 + 56, v0 + 256, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 280))
      {
        v51 = *(v0 + 249);
        v52 = *(v0 + 552);
        v53 = *(v0 + 544);
        v54 = *(v0 + 536);
        v55 = *(v0 + 528);
        sub_252139A10(v0 + 256, v0 + 296);
        sub_252138FF4(v0 + 256);
        v56 = *(v0 + 320);
        v57 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v56);
        *v114 = v55;
        *&v114[8] = v54;
        v114[16] = v53 & 1;
        *&v114[24] = v52;
        v114[32] = v51 & 1;
        v58 = (*(v57 + 8))(v114, v56, v57);
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
LABEL_33:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v65 = sub_25214198C();
        __swift_project_value_buffer(v65, qword_27F4CDE68);
        v66 = sub_25214196C();
        v67 = sub_252141FBC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = *(v0 + 520);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v114 = v70;
          *v69 = 136446722;
          v71 = sub_2521425DC();
          v73 = sub_2520A5448(v71, v72, v114);

          *(v69 + 4) = v73;
          *(v69 + 12) = 1024;
          *(v69 + 14) = v58 & 1;
          *(v69 + 18) = 2048;
          *(v69 + 20) = v60;
          _os_log_impl(&dword_25207E000, v66, v67, "[%{public}s] Current Tone interferenceFlag %{BOOL}d, repeat the previous tone for up to %ld times", v69, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x253099FD0](v70, -1, -1);
          MEMORY[0x253099FD0](v69, -1, -1);
        }

        v74 = *(v0 + 512);
        swift_beginAccess();
        v75 = *(v74 + 40);
        v76 = *(v74 + 48);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v74 + 16, v75);
        (*(v76 + 80))(v112 & 1, v58 & 1, v75, v76);
        swift_endAccess();
        goto LABEL_38;
      }

      sub_252138FF4(v0 + 256);
      v61 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v62 = sub_252141B6C();
      v63 = [v61 initWithSuiteName_];

      if (v63)
      {
        v64 = sub_252141B6C();
        v60 = [v63 integerForKey_];

        v58 = 0;
        goto LABEL_33;
      }

LABEL_55:
      __break(1u);
      return;
    }

    (v8)(v0 + 376, 0);
  }

  v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v33 = sub_252141B6C();
  v34 = [v32 initWithSuiteName_];

  if (!v34)
  {
    __break(1u);
    goto LABEL_55;
  }

  v35 = *(v0 + 249);
  v110 = *(v0 + 544);
  v113 = *(v0 + 528);
  v36 = sub_2520DC160();

  v37 = *(v4 + 136);
  *(v4 + 136) = v36;

  *(v0 + 336) = v113;
  *(v0 + 352) = v110;
  *(v0 + 368) = v35;
  v38 = swift_task_alloc();
  *(v0 + 560) = v38;
  *v38 = v0;
  v38[1] = sub_252137974;
  v39 = *(v0 + 504);
  v40 = *(v0 + 512);

  sub_252131EC8(v39, v0 + 336);
}

uint64_t sub_252137974()
{
  v1 = *(*v0 + 560);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_252137A68(uint64_t a1, uint64_t a2)
{
  *(v3 + 536) = a1;
  *(v3 + 544) = v2;
  *(v3 + 552) = *v2;
  v4 = *(a2 + 16);
  *(v3 + 560) = *a2;
  *(v3 + 576) = v4;
  *(v3 + 401) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_252137AC4, 0, 0);
}

void sub_252137AC4()
{
  v106 = v0;
  v4 = *(v0 + 544);
  swift_beginAccess();
  v5 = *(v4 + 136);
  if (v5 && *(v5 + 16))
  {
    v6 = *(v0 + 544);
    v8 = sub_252131714();
    v9 = *v7;
    if (*v7)
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v6 = v7;
      v10 = *(v9 + 32);

      sub_2521389E8(0, 1, sub_252099C08, sub_252138918);
      (v8)(v0 + 408, 0);
      if (v10[2] <= 3uLL)
      {

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v11 = sub_25214198C();
        __swift_project_value_buffer(v11, qword_27F4CDE68);
        v6 = sub_25214196C();
        v12 = sub_252141FBC();
        if (os_log_type_enabled(v6, v12))
        {
          v13 = *(v0 + 552);
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v103 = v15;
          *v14 = 136446210;
          v16 = sub_2521425DC();
          v18 = sub_2520A5448(v16, v17, v103);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_25207E000, v6, v12, "[%{public}s] On demand tones should have 4 parameters: frequency, soundLevel, channel(L:0, R:1) and toneDuration. Ex: '(1000, 50, 0, 1)' '(2000, 40, 1, 1)'", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x253099FD0](v15, -1, -1);
          MEMORY[0x253099FD0](v14, -1, -1);
        }

        v10 = &unk_28644E778;
      }

      if (*(v0 + 576) == 2)
      {
LABEL_38:
        v77 = v10[2];
        if (v77)
        {
          if (v77 != 1)
          {
            if (v77 >= 3)
            {
              if (v77 != 3)
              {
                v1 = v10[4];
                v2 = v10[5];
                v6 = v10[6];
                v3 = v10[7];

                if (qword_27F4CD708 == -1)
                {
LABEL_43:
                  v78 = v6 & 0x7FFFFFFFFFFFFFFFLL;
                  v79 = sub_25214198C();
                  __swift_project_value_buffer(v79, qword_27F4CDE68);
                  v80 = sub_25214196C();
                  v81 = sub_252141FBC();
                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = *(v0 + 552);
                    v83 = swift_slowAlloc();
                    v84 = swift_slowAlloc();
                    *v103 = v84;
                    *v83 = 136447234;
                    v85 = sub_2521425DC();
                    v87 = sub_2520A5448(v85, v86, v103);

                    *(v83 + 4) = v87;
                    *(v83 + 12) = 2048;
                    *(v83 + 14) = v1;
                    *(v83 + 22) = 2048;
                    *(v83 + 24) = v2;
                    *(v83 + 32) = 2048;
                    *(v83 + 34) = v3;
                    *(v83 + 42) = 2048;
                    *(v83 + 44) = v78 != 0;
                    _os_log_impl(&dword_25207E000, v80, v81, "[%{public}s] Continue test, next on demand tone freq %f, level %f, duration %f, ch %ld", v83, 0x34u);
                    __swift_destroy_boxed_opaque_existential_0(v84);
                    MEMORY[0x253099FD0](v84, -1, -1);
                    MEMORY[0x253099FD0](v83, -1, -1);
                  }

                  v88 = *(v0 + 544);
                  v89 = *(v0 + 536);
                  swift_beginAccess();
                  v90 = *__swift_project_boxed_opaque_existential_1((v88 + 16), *(v88 + 40));
                  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v104);
                  *&v103[4] = v104[0];
                  *&v103[20] = v104[1];
                  *&v103[36] = v104[2];
                  *&v103[52] = v104[3];
                  *&v103[68] = v105;
                  *(v0 + 16) = v1;
                  *(v0 + 24) = v2;
                  *(v0 + 32) = v78 != 0;
                  *(v0 + 40) = v3;
                  *(v0 + 48) = 0;
                  v91 = *&v103[16];
                  *(v0 + 52) = *v103;
                  v92 = *&v103[32];
                  v93 = *&v103[48];
                  *(v0 + 112) = *&v103[60];
                  *(v0 + 100) = v93;
                  *(v0 + 84) = v92;
                  *(v0 + 68) = v91;
                  sub_2521399FC(v0 + 16);
                  memcpy(v89, (v0 + 16), 0x110uLL);
                  v94 = *(v0 + 8);

                  v94();
                  return;
                }

LABEL_53:
                swift_once();
                goto LABEL_43;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v19 = *(v0 + 401);
      if (qword_27F4CD7B8 != -1)
      {
        swift_once();
      }

      v101 = v19;
      if (byte_27F4D3493 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v20 = sub_25214198C();
        __swift_project_value_buffer(v20, qword_27F4CDE68);
        v21 = sub_25214196C();
        v22 = sub_252141FBC();
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_29;
        }

        v98 = *(v0 + 401);
        v95 = *(v0 + 584);
        v96 = *(v0 + 576);
        v23 = *(v0 + 568);
        v24 = *(v0 + 560);
        v25 = *(v0 + 552);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v103 = v27;
        *v26 = 136447490;
        v28 = sub_2521425DC();
        v30 = sub_2520A5448(v28, v29, v103);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v24;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v23;
        *(v26 + 32) = 2048;
        *(v26 + 34) = v95;
        *(v26 + 42) = 2048;
        *(v26 + 44) = v96 & 1;
        *(v26 + 52) = 1024;
        *(v26 + 54) = v98 & 1;
        _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d", v26, 0x3Au);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v31 = v27;
      }

      else
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v41 = sub_25214198C();
        __swift_project_value_buffer(v41, qword_27F4CDE68);
        v21 = sub_25214196C();
        v42 = sub_252141FBC();
        if (!os_log_type_enabled(v21, v42))
        {
          goto LABEL_29;
        }

        v97 = *(v0 + 584);
        v100 = *(v0 + 576);
        v43 = *(v0 + 568);
        v44 = *(v0 + 560);
        v45 = *(v0 + 552);
        v26 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v103 = v46;
        *v26 = 136447234;
        v47 = sub_2521425DC();
        v49 = sub_2520A5448(v47, v48, v103);

        *(v26 + 4) = v49;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v44;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v43;
        *(v26 + 32) = 2048;
        *(v26 + 34) = v97;
        *(v26 + 42) = 2048;
        *(v26 + 44) = v100 & 1;
        _os_log_impl(&dword_25207E000, v21, v42, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld", v26, 0x34u);
        __swift_destroy_boxed_opaque_existential_0(v46);
        v31 = v46;
      }

      MEMORY[0x253099FD0](v31, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
LABEL_29:

      v50 = *(v0 + 544);
      swift_beginAccess();
      sub_2520A2D9C(v50 + 56, v0 + 288, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 312))
      {
        v51 = *(v0 + 401);
        v52 = *(v0 + 584);
        v53 = *(v0 + 576);
        v54 = *(v0 + 568);
        v55 = *(v0 + 560);
        sub_252139A10(v0 + 288, v0 + 328);
        sub_252138FF4(v0 + 288);
        v56 = *(v0 + 352);
        v57 = *(v0 + 360);
        __swift_project_boxed_opaque_existential_1((v0 + 328), v56);
        *v103 = v55;
        *&v103[8] = v54;
        v103[16] = v53 & 1;
        *&v103[24] = v52;
        v103[32] = v51 & 1;
        v58 = (*(v57 + 8))(v103, v56, v57);
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
LABEL_33:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v65 = sub_25214198C();
        __swift_project_value_buffer(v65, qword_27F4CDE68);
        v66 = sub_25214196C();
        v67 = sub_252141FBC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = *(v0 + 552);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v103 = v70;
          *v69 = 136446722;
          v71 = sub_2521425DC();
          v73 = sub_2520A5448(v71, v72, v103);

          *(v69 + 4) = v73;
          *(v69 + 12) = 1024;
          *(v69 + 14) = v58 & 1;
          *(v69 + 18) = 2048;
          *(v69 + 20) = v60;
          _os_log_impl(&dword_25207E000, v66, v67, "[%{public}s] Current Tone interferenceFlag %{BOOL}d, repeat the previous tone for up to %ld times", v69, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x253099FD0](v70, -1, -1);
          MEMORY[0x253099FD0](v69, -1, -1);
        }

        v74 = *(v0 + 544);
        swift_beginAccess();
        v75 = *(v74 + 40);
        v76 = *(v74 + 48);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v74 + 16, v75);
        (*(v76 + 80))(v101 & 1, v58 & 1, v75, v76);
        swift_endAccess();
        goto LABEL_38;
      }

      sub_252138FF4(v0 + 288);
      v61 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v62 = sub_252141B6C();
      v63 = [v61 initWithSuiteName_];

      if (v63)
      {
        v64 = sub_252141B6C();
        v60 = [v63 integerForKey_];

        v58 = 0;
        goto LABEL_33;
      }

LABEL_55:
      __break(1u);
      return;
    }

    (v8)(v0 + 408, 0);
  }

  v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v33 = sub_252141B6C();
  v34 = [v32 initWithSuiteName_];

  if (!v34)
  {
    __break(1u);
    goto LABEL_55;
  }

  v35 = *(v0 + 401);
  v99 = *(v0 + 576);
  v102 = *(v0 + 560);
  v36 = sub_2520DC160();

  v37 = *(v4 + 136);
  *(v4 + 136) = v36;

  *(v0 + 368) = v102;
  *(v0 + 384) = v99;
  *(v0 + 400) = v35;
  v38 = swift_task_alloc();
  *(v0 + 592) = v38;
  *v38 = v0;
  v38[1] = sub_252138668;
  v39 = *(v0 + 544);
  v40 = *(v0 + 536);

  sub_252133EB8(v40, v0 + 368);
}

uint64_t sub_252138668()
{
  v1 = *(*v0 + 592);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t HTHearingTestSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_252138FF4(v0 + 56);
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);

  return v0;
}

uint64_t HTHearingTestSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_252138FF4(v0 + 56);
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);

  return swift_deallocClassInstance();
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

unint64_t sub_252138844(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_252138918(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521389E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_252138AC0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v14 = *v7;
  v15 = *a1;
  v16 = *a2;
  *(v7 + 7) = 0u;
  v17 = (v7 + 7);
  *(v7 + 9) = 0u;
  *(v7 + 11) = 0u;
  *(v7 + 104) = 0;
  v7[15] = 0;
  v7[16] = 0;
  v7[14] = 0;
  v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v19 = sub_252141B6C();
  v20 = [v18 initWithSuiteName_];

  if (!v20)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v21 = sub_2520DC160();

  v8[17] = v21;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v22 = qword_27F4D3498;
  v8[18] = qword_27F4D3498;
  v23 = qword_27F4CD6F8;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v8[19] = qword_27F4D3428;
  LOBYTE(v47[0]) = v15;
  v25 = type metadata accessor for HTAudiometry();
  objc_allocWithZone(v25);

  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v47, a4, a5, a6, a7, 4.0);
  v8[2] = v26;
  v8[5] = v25;
  v8[6] = &off_28644FCD8;
  if (v16)
  {

    v28 = sub_252131CC4(v27);

    if (*(v28 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
      v29 = sub_25214235C();
    }

    else
    {
      v29 = MEMORY[0x277D84F98];
    }

    v47[0] = v29;

    sub_25209BFC4(v33, 1, v47);

    v34 = v47[0];
    swift_beginAccess();
    v35 = v8[5];
    v36 = v8[6];
    __swift_mutable_project_boxed_opaque_existential_1((v8 + 2), v35);
    (*(v36 + 64))(v34, v35, v36);
    swift_endAccess();
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a3)
    {
LABEL_13:
      v31 = type metadata accessor for HTRequirementStatusManager();
      v32 = &protocol witness table for HTRequirementStatusManager;
      v30 = a3;
      goto LABEL_14;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v47[1] = 0;
  v47[2] = 0;
LABEL_14:
  v47[0] = v30;
  v47[3] = v31;
  v47[4] = v32;
  swift_beginAccess();

  sub_252139D1C(v47, v17);
  swift_endAccess();
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v37 = sub_25214198C();
    __swift_project_value_buffer(v37, qword_27F4CDEF8);
    v38 = sub_25214196C();
    v39 = sub_252141FBC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v40 = 136446210;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, v47);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25207E000, v38, v39, "[%{public}s] reset noise counter at session init", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x253099FD0](v41, -1, -1);
      MEMORY[0x253099FD0](v40, -1, -1);
    }
  }

  v45 = v8[19];

  sub_2520AAFA4();

  return v8;
}

unint64_t sub_252138FA0()
{
  result = qword_27F4CE9E8;
  if (!qword_27F4CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE9E8);
  }

  return result;
}

uint64_t sub_252138FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE9F0, &qword_252147FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25213906C()
{
  result = qword_27F4CE9F8;
  if (!qword_27F4CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE9F8);
  }

  return result;
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatus(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2520DB0A4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 376);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2520DA018;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatus(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 384);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2520DB0A4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.beginEvaluation(channel:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return v8(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.endEvaluation(channel:)(uint64_t a1)
{
  v4 = *(*v1 + 408);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return v8(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.pauseEvaluation(channel:)(uint64_t a1)
{
  v4 = *(*v1 + 416);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return v8(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.resumeEvaluation(channel:)(uint64_t a1)
{
  v4 = *(*v1 + 424);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0A4;

  return v8(a1);
}

uint64_t sub_252139A10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_252139A88(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 96) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 88);

  return sub_252134FB8(a1, v1 + 16, v5);
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 96) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 6);

  v9 = *(v2 + 7);

  v10 = *(v2 + 8);

  v11 = *(v2 + 9);

  v12 = *(v2 + 10);

  v13 = *(v2 + 11);

  (*(v4 + 8))(&v2[v6], v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_252139C6C(__int128 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 96) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 88);

  return sub_252132D80(a1, v1 + 16, v5);
}

uint64_t sub_252139D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE9F0, &qword_252147FB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_252139DC8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice;
  v3 = *(v0 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
  if (v4 >> 62)
  {
    if (sub_25214232C())
    {
      goto LABEL_4;
    }

LABEL_12:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v12 = sub_25214198C();
    __swift_project_value_buffer(v12, qword_27F4CDE68);
    v13 = sub_25214196C();
    v14 = sub_252141F8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &v36);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] no current captured output ports - attempting to capture session BT A2DP output ports", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    v20 = [objc_allocWithZone(type metadata accessor for CapturedDevice()) init];
    v21 = *(v1 + v2);
    *(v1 + v2) = v20;

    v22 = *(v1 + v2);
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
      if (v23 >> 62)
      {
        if (sub_25214232C() >= 1)
        {
          goto LABEL_19;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_19:
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_25214222C();

        v36 = 0x6465727574706143;
        v37 = 0xE900000000000020;
        v24 = sub_25214244C();
        MEMORY[0x253098DA0](v24);

        MEMORY[0x253098DA0](0x7374726F5020, 0xE600000000000000);
        v26 = v36;
        v25 = v37;
LABEL_22:

        v27 = sub_25214196C();
        v28 = sub_252141F8C();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36 = v30;
          *v29 = 136446466;
          v31 = sub_2521425DC();
          v33 = sub_2520A5448(v31, v32, &v36);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2080;
          v34 = sub_2520A5448(v26, v25, &v36);

          *(v29 + 14) = v34;
          _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] status: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v30, -1, -1);
          MEMORY[0x253099FD0](v29, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    v25 = 0x800000025214BE00;
    v26 = 0xD000000000000011;
    goto LABEL_22;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  oslog = sub_25214196C();
  v6 = sub_252141F8C();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v36);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] already captured output ports", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25213A2EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_25213A350()
{
  v25 = [v0 currentRoute];
  v1 = [v25 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v2 = sub_252141CDC();

  if (!(v2 >> 62))
  {
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_27:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_26:
  v27 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_25214232C();
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v4 = 0;
  v5 = *MEMORY[0x277CB8158];
  v26 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530993D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = [v7 portType];
      v10 = sub_252141B9C();
      v12 = v11;
      if (v10 == sub_252141B9C() && v12 == v13)
      {
        break;
      }

      v15 = sub_25214247C();

      if (v15)
      {
        goto LABEL_18;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_28;
      }
    }

LABEL_18:
    v16 = [v8 portName];
    v17 = sub_252141B9C();
    v19 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_252099D60(0, *(v26 + 2) + 1, 1, v26);
    }

    v21 = *(v26 + 2);
    v20 = *(v26 + 3);
    if (v21 >= v20 >> 1)
    {
      v26 = sub_252099D60((v20 > 1), v21 + 1, 1, v26);
    }

    *(v26 + 2) = v21 + 1;
    v22 = &v26[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
  }

  while (v4 != v3);
LABEL_28:

  v23 = sub_2520A1EE4(v26);

  return v23;
}

uint64_t sub_25213A618()
{
  v27 = [v0 currentRoute];
  v1 = [v27 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v2 = sub_252141CDC();

  v30 = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v29 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_25214232C();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  v28 = *MEMORY[0x277CB8158];
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530993D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v29 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = [v7 portType];
      v10 = sub_252141B9C();
      v12 = v11;
      if (v10 == sub_252141B9C() && v12 == v13)
      {
        break;
      }

      v15 = sub_25214247C();

      if (v15)
      {
        goto LABEL_18;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    v16 = [v8 UID];
    v17 = sub_252141B9C();
    v19 = v18;

    v20 = [v8 portName];
    v21 = sub_252141B9C();
    v23 = v22;

    type metadata accessor for CapturedPort();
    v24 = swift_allocObject();
    v24[2] = v17;
    v24[3] = v19;
    v24[4] = v21;
    v24[5] = v23;
    MEMORY[0x253098E50]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252141CFC();
    }

    sub_252141D4C();
    v5 = v30;
  }

  while (v4 != v3);
LABEL_26:

  return v5;
}

char *sub_25213A900()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() sharedInstance];
  v4 = sub_25213A618();

  *&v1[OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts] = v4;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v37, sel_init);
  v6 = qword_27F4CD708;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  v9 = sub_25214196C();
  v10 = sub_252141F8C();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_17;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v36 = v12;
  *v11 = 136446466;
  v13 = sub_2521425DC();
  v15 = sub_2520A5448(v13, v14, &v36);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v16 = *&v7[OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts];
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v31 = *&v7[OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts];
    }

    v17 = sub_25214232C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_16:
    sub_2520A1EE4(v18);

    v27 = sub_252141E9C();
    v29 = v28;

    v30 = sub_2520A5448(v27, v29, &v36);

    *(v11 + 14) = v30;
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] capture device ports %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
LABEL_17:

    return v7;
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_25209B354(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v32 = v12;
    v33 = v9;
    v34 = v7;
    v20 = 0;
    v18 = v35;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530993D0](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = *(v21 + 32);
      v23 = *(v21 + 40);

      v25 = *(v35 + 16);
      v24 = *(v35 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25209B354((v24 > 1), v25 + 1, 1);
      }

      ++v20;
      *(v35 + 16) = v25 + 1;
      v26 = v35 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
    }

    while (v17 != v20);
    v9 = v33;
    v7 = v34;
    v12 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_25213AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = *(v0 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
    }

    v2 = sub_25214232C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_15;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_25209B354(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v20;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2530993D0](v5, v1);
        v8 = *(v6 + 32);
        v7 = *(v6 + 40);

        swift_unknownObjectRelease();
        v10 = *(v20 + 16);
        v9 = *(v20 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_25209B354((v9 > 1), v10 + 1, 1);
        }

        ++v5;
        *(v20 + 16) = v10 + 1;
        v11 = v20 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
      }

      while (v2 != v5);
    }

    else
    {
      v12 = v1 + 32;
      do
      {
        v14 = *(*v12 + 32);
        v13 = *(*v12 + 40);
        v15 = *(v20 + 16);
        v16 = *(v20 + 24);

        if (v15 >= v16 >> 1)
        {
          sub_25209B354((v16 > 1), v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        v17 = v20 + 16 * v15;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        v12 += 8;
        --v2;
      }

      while (v2);
    }

LABEL_15:
    v18 = sub_2520A1EE4(v3);

    return v18;
  }

  __break(1u);
  return result;
}

id sub_25213AE38()
{
  type metadata accessor for HTAudioRouteRequirementManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4CEA28 = result;
  return result;
}

id sub_25213AE8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player] = 0;
  v6 = &v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler];
  *v6 = a1;
  v6[1] = a2;
  v22.receiver = v2;
  v22.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = qword_27F4CD708;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);
  v11 = sub_25214196C();
  v12 = sub_252141F8C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] init", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253099FD0](v14, -1, -1);
    MEMORY[0x253099FD0](v13, -1, -1);
  }

  sub_25213B23C();
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  v19 = v9;
  sub_25213B790(sub_252140E10, v18);

  return v19;
}

void sub_25213B23C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] setup notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 addObserver:v1 selector:sel_audioSessionRouteChangeHander_ name:*MEMORY[0x277CB8210] object:v11];
}

uint64_t sub_25213B424(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CapturedDevice()) init];
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice) = v2;

  return sub_25213B474();
}

uint64_t sub_25213B474()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
    if (v3 >> 62)
    {
      v4 = sub_25214232C();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        sub_25214222C();

        v25[0] = 0x6465727574706143;
        v25[1] = 0xE900000000000020;
        v5 = sub_25214244C();
        MEMORY[0x253098DA0](v5);

        MEMORY[0x253098DA0](0x7374726F5020, 0xE600000000000000);
        v6 = 0;
        v8 = 0x6465727574706143;
        v7 = 0xE900000000000020;
        v9 = v4 > 0;
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
  v7 = 0x800000025214BE00;
  v8 = 0xD000000000000011;
  v6 = 1;
LABEL_7:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);

  v11 = sub_25214196C();
  v12 = sub_252141F8C();

  if (os_log_type_enabled(v11, v12))
  {
    v24 = v9;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v13 = 136446466;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_2520A5448(v8, v7, v25);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] update interruptions based on capture count - status: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v14, -1, -1);
    v19 = v13;
    v9 = v24;
    MEMORY[0x253099FD0](v19, -1, -1);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted) = v9;
  if (v6)
  {
    v20 = &unk_286458660;
    v21 = &block_descriptor_13;
    v22 = sub_252140D74;
  }

  else
  {
    v20 = &unk_286458610;
    v21 = &block_descriptor_10;
    v22 = sub_25213E7D0;
  }

  return sub_25213C0AC(v20, v22, v21);
}

uint64_t sub_25213B790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_252141A4C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141A8C();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252141A5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D851B8], v12);
  v17 = sub_25214203C();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  v19 = v27;
  v20 = v28;
  v18[2] = v3;
  v18[3] = v19;
  v21 = ObjectType;
  v18[4] = v20;
  v18[5] = v21;
  aBlock[4] = sub_252140E60;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_28_0;
  v22 = _Block_copy(aBlock);
  v23 = v3;

  sub_252141A6C();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v11, v7, v22);
  _Block_release(v22);

  (*(v31 + 8))(v7, v4);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_25213BB38()
{
  ObjectType = swift_getObjectType();
  v1 = sub_252141A4C();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252141A8C();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252141A5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851B8], v9);
  v14 = sub_25214203C();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  v16 = ObjectType;
  *(v15 + 16) = v0;
  *(v15 + 24) = v16;
  aBlock[4] = sub_252140E18;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_22;
  v17 = _Block_copy(aBlock);
  v18 = v0;
  sub_252141A6C();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v8, v4, v17);
  _Block_release(v17);

  (*(v24 + 8))(v4, v1);
  (*(v22 + 8))(v8, v23);
}

void sub_25213BECC()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] cleanup notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 removeObserver:v1 name:*MEMORY[0x277CB8210] object:v11];
}

uint64_t sub_25213C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_252141A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252141A8C();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v14 = sub_252141FFC();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = ObjectType;
  aBlock[4] = v20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v22);
}

id sub_25213C370()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141F8C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] deinit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  sub_25213BECC();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void sub_25213C570(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_25214171C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  v10 = __swift_project_value_buffer(v9, qword_27F4CDE68);
  (*(v5 + 16))(v8, a1, v4);
  v11 = sub_25214196C();
  v12 = sub_252141F8C();
  v13 = os_log_type_enabled(v11, v12);
  v57[2] = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v57[1] = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v57[0] = v10;
    v17 = v16;
    v60[0] = v16;
    *v15 = 136446466;
    v18 = sub_2521425DC();
    v20 = sub_2520A5448(v18, v19, v60);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_25213E7F0(&qword_27F4CEA58, MEMORY[0x277CC8900]);
    v21 = sub_25214244C();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_2520A5448(v21, v23, v60);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] audio session route change %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v17, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v25 = sub_25214170C();
  if (!v25)
  {
    v46 = sub_25214196C();
    v47 = sub_252141F8C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v60[0] = v49;
      *v48 = 136446210;
      v54 = sub_2521425DC();
      v56 = sub_2520A5448(v54, v55, v60);

      *(v48 + 4) = v56;
      v53 = "[%{public}s] audio session route change  - no userInfo";
      goto LABEL_23;
    }

LABEL_24:

    return;
  }

  v26 = v25;
  v27 = *MEMORY[0x277CB8220];
  v58 = sub_252141B9C();
  v59 = v28;
  sub_2521421DC();
  if (!*(v26 + 16) || (v29 = sub_25213E754(v60), (v30 & 1) == 0))
  {

    sub_2520E42D8(v60);
LABEL_19:
    v46 = sub_25214196C();
    v47 = sub_252141F8C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v60[0] = v49;
      *v48 = 136446210;
      v50 = sub_2521425DC();
      v52 = sub_2520A5448(v50, v51, v60);

      *(v48 + 4) = v52;
      v53 = "[%{public}s] audio session route change  - no reason";
LABEL_23:
      _os_log_impl(&dword_25207E000, v46, v47, v53, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x253099FD0](v49, -1, -1);
      MEMORY[0x253099FD0](v48, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  sub_2520A5FC4(*(v26 + 56) + 32 * v29, v61);
  sub_2520E42D8(v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = v58;
  v32 = sub_25214196C();
  v33 = sub_252141F8C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60[0] = v35;
    *v34 = 136446210;
    v36 = sub_2521425DC();
    v38 = sub_2520A5448(v36, v37, v60);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] audio session route change  - capture route BT ports if none", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x253099FD0](v35, -1, -1);
    MEMORY[0x253099FD0](v34, -1, -1);
  }

  sub_252139DC8();
  v39 = sub_25214196C();
  v40 = sub_252141F8C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60[0] = v42;
    *v41 = 136446466;
    v43 = sub_2521425DC();
    v45 = sub_2520A5448(v43, v44, v60);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v31;
    _os_log_impl(&dword_25207E000, v39, v40, "[%{public}s] audio session route change reason: %lu", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x253099FD0](v42, -1, -1);
    MEMORY[0x253099FD0](v41, -1, -1);
  }

  if (v31 == 1)
  {
    sub_25213CC54();
  }

  else if (v31 == 2 || v31 == 4)
  {
    sub_25213C0AC(&unk_286458660, sub_252140D74, &block_descriptor_13);
  }
}

void sub_25213CC54()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v64);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] searching for expected audio route", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v63 = [objc_opt_self() sharedInstance];
  v10 = [v63 currentRoute];
  v11 = [v10 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v12 = sub_252141CDC();

  if (v12 >> 62)
  {
    v13 = sub_25214232C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 < 1)
  {
    v26 = sub_25214196C();
    v27 = sub_252141F8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136446210;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, &v64);

      *(v28 + 4) = v32;
      v33 = "[%{public}s] searching - session has no outputs";
LABEL_19:
      _os_log_impl(&dword_25207E000, v26, v27, v33, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v28, -1, -1);
    }

LABEL_20:

    goto LABEL_21;
  }

  v14 = sub_25213A350();
  if (!*(v14 + 16))
  {

    v26 = sub_25214196C();
    v27 = sub_252141F8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136446210;
      v34 = sub_2521425DC();
      v36 = sub_2520A5448(v34, v35, &v64);

      *(v28 + 4) = v36;
      v33 = "[%{public}s] searching - session has no output names";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v15 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice;
  v16 = *(v1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (v16)
  {
    v17 = v16;
    v18 = sub_25213AC44();

    if (*(v18 + 2))
    {

      v20 = *(sub_25213DA14(v19, v14) + 16);
      v21 = *(v14 + 16);

      v22 = *(v1 + v15);
      if (v22)
      {
        v23 = *(v22 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
        if (v23 >> 62)
        {
          v24 = sub_25214232C();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v20 == v24;
      }

      else
      {
        v25 = v20 == 0;
      }

      v47 = v25;
      if (v20 == v21 && (v47 & 1) != 0)
      {
        v48 = 1;
        v49 = 0xE800000000000000;
        v50 = 0x676E69686374616DLL;
      }

      else
      {
        v48 = 0;
        v49 = 0xEC000000474E4948;
        v50 = 0x4354414D20544F4ELL;
      }

      v51 = sub_25214196C();
      v52 = sub_252141F8C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v64 = v62;
        *v53 = 136446978;
        v54 = sub_2521425DC();
        v61 = v50;
        v56 = v48;
        v57 = sub_2520A5448(v54, v55, &v64);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2048;
        v58 = *(v18 + 2);

        *(v53 + 14) = v58;

        *(v53 + 22) = 2048;
        v59 = *(v14 + 16);

        *(v53 + 24) = v59;

        *(v53 + 32) = 2080;
        v60 = sub_2520A5448(v61, v49, &v64);

        *(v53 + 34) = v60;
        _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] searching - expected %ld ports, session port count: %ld - port name sets are %s", v53, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v62, -1, -1);
        MEMORY[0x253099FD0](v53, -1, -1);

        if (v56)
        {
          goto LABEL_42;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if (v48)
        {
LABEL_42:
          v37 = &unk_286458610;
          v38 = &block_descriptor_10;
          v39 = sub_25213E7D0;
          goto LABEL_22;
        }
      }

LABEL_21:
      v37 = &unk_286458660;
      v38 = &block_descriptor_13;
      v39 = sub_252140D74;
LABEL_22:
      sub_25213C0AC(v37, v39, v38);
      goto LABEL_27;
    }
  }

  v40 = sub_25214196C();
  v41 = sub_252141F8C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v64 = v43;
    *v42 = 136446210;
    v44 = sub_2521425DC();
    v46 = sub_2520A5448(v44, v45, &v64);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] searching - expected port name list is empty", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v42, -1, -1);
  }

LABEL_27:
}

void sub_25213D49C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted;
  if (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    oslog = sub_25214196C();
    v3 = sub_252141F8C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136446210;
      v6 = sub_2521425DC();
      v8 = sub_2520A5448(v6, v7, &v20);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25207E000, oslog, v3, "[%{public}s] lost route - but it was already lost previously", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x253099FD0](v5, -1, -1);
      MEMORY[0x253099FD0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    v11 = sub_25214196C();
    v12 = sub_252141F8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] lost route", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x253099FD0](v14, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    *(a1 + v1) = 1;
    v18 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler + 8);
    (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler))(1);
  }
}

void sub_25213D758(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted;
  if (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted) == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    v4 = sub_25214196C();
    v5 = sub_252141F8C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] found route", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

    *(a1 + v1) = 0;
    v11 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler + 8);
    (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler))(0);
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v12 = sub_25214198C();
    __swift_project_value_buffer(v12, qword_27F4CDE68);
    oslog = sub_25214196C();
    v13 = sub_252141F8C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25207E000, oslog, v13, "[%{public}s] found route - but it was already found previously", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }
  }
}

uint64_t sub_25213DA14(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_25213ECFC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_25213DB18(uint64_t a1, void (*a2)(void))
{
  v64 = a2;
  v66[1] = *MEMORY[0x277D85DE8];
  v65 = sub_2521417FC();
  isa = v65[-1].isa;
  v4 = *(isa + 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  if (qword_27F4CD7E0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F4CEA28;
  v11 = sub_252141B6C();
  v12 = sub_252141B6C();
  v13 = [v10 pathForResource:v11 ofType:v12];

  if (v13)
  {
    sub_252141B9C();

    sub_2521417CC();

    v14 = [objc_opt_self() sharedInstance];
    v66[0] = 0;
    v15 = [v14 setActive:1 error:v66];
    v16 = v66[0];
    if (!v15)
    {
      goto LABEL_8;
    }

    v17 = *MEMORY[0x277CB8030];
    v66[0] = 0;
    v18 = v16;
    v19 = [v14 setCategory:v17 error:v66];
    v16 = v66[0];
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = *MEMORY[0x277CB80C0];
    v66[0] = 0;
    v21 = v16;
    v22 = [v14 setMode:v20 error:v66];
    v16 = v66[0];
    if (v22)
    {
      (*(isa + 2))(v6, v9, v65);
      objc_allocWithZone(MEMORY[0x277CB83D0]);
      v23 = v16;
      v24 = sub_25213E4CC(v6);
      v49 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player;
      v50 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player);
      *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player) = v24;

      v51 = *(a1 + v49);
      if (v51)
      {
        [v51 setVolume_];
        v52 = *(a1 + v49);
        if (v52)
        {
          [v52 setNumberOfLoops_];
          v53 = *(a1 + v49);
          if (v53)
          {
            [v53 prepareToPlay];
            v54 = *(a1 + v49);
            if (v54)
            {
              [v54 play];
            }
          }
        }
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v55 = sub_25214198C();
      __swift_project_value_buffer(v55, qword_27F4CDE68);
      v56 = sub_25214196C();
      v57 = sub_252141F8C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66[0] = v59;
        *v58 = 136446210;
        v60 = sub_2521425DC();
        v62 = sub_2520A5448(v60, v61, v66);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_25207E000, v56, v57, "[%{public}s] player playing", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x253099FD0](v59, -1, -1);
        MEMORY[0x253099FD0](v58, -1, -1);
      }

      v64();
    }

    else
    {
LABEL_8:
      v25 = v16;
      v26 = sub_25214178C();

      swift_willThrow();
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v27 = sub_25214198C();
      __swift_project_value_buffer(v27, qword_27F4CDE68);
      v28 = v26;
      v29 = sub_25214196C();
      v30 = sub_252141FAC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v66[0] = v32;
        *v31 = 136446466;
        v33 = sub_2521425DC();
        v35 = sub_2520A5448(v33, v34, v66);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2080;
        swift_getErrorValue();
        v36 = sub_2521424DC();
        v38 = sub_2520A5448(v36, v37, v66);

        *(v31 + 14) = v38;
        _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] setupPlayer failed to start player! %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v32, -1, -1);
        MEMORY[0x253099FD0](v31, -1, -1);
      }

      else
      {
      }
    }

    (*(isa + 1))(v9, v65);
    goto LABEL_18;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v39 = sub_25214198C();
  __swift_project_value_buffer(v39, qword_27F4CDE68);
  v65 = sub_25214196C();
  v40 = sub_252141FAC();
  if (os_log_type_enabled(v65, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v66[0] = v42;
    *v41 = 136446210;
    v43 = sub_2521425DC();
    v45 = sub_2520A5448(v43, v44, v66);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_25207E000, v65, v40, "[%{public}s] no file found to play", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x253099FD0](v42, -1, -1);
    MEMORY[0x253099FD0](v41, -1, -1);

LABEL_18:
    v46 = *MEMORY[0x277D85DE8];
    return;
  }

  v47 = v65;
  v48 = *MEMORY[0x277D85DE8];
}

id sub_25213E2C8(uint64_t a1)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] stop playing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player;
  result = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player);
  if (result)
  {
    result = [result isPlaying];
    if (result)
    {
      result = *(a1 + v10);
      if (result)
      {

        return [result stop];
      }
    }
  }

  return result;
}

id sub_25213E4CC(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2521417DC();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_2521417FC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_25214178C();

    swift_willThrow();
    v11 = sub_2521417FC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_25213E618@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25213E648(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25214255C();
  sub_252141BEC();
  v6 = sub_25214258C();

  return sub_25213E838(a1, a2, v6);
}

unint64_t sub_25213E6C0(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25214254C();

  return sub_25213E8F0(v4, a1);
}

unint64_t sub_25213E70C(unsigned int a1)
{
  v3 = MEMORY[0x2530996D0](*(v1 + 40), a1, 4);

  return sub_25213E958(a1, v3);
}

unint64_t sub_25213E754(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2521421BC();

  return sub_25213E9C4(a1, v5);
}

uint64_t sub_25213E798()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25213E7F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25213E838(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25214247C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25213E8F0(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25213E958(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25213E9C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252140D7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253099360](v9, a1);
      sub_2520E42D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25213EA8C(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_25214254C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_25213F93C(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25213EB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25214255C();
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_252141BEC();
  v9 = sub_25214258C();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      sub_2520CB768(*(v5 + 48) + 40 * v11, v20);
      if (v21 == v7 && v22 == v8)
      {
        break;
      }

      v14 = sub_25214247C();
      sub_2520CB7D8(v20);
      if (v14)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2520CB7D8(v20);
LABEL_11:
    sub_2520CB7D8(a2);
    sub_2520CB768(*(v5 + 48) + 40 * v11, a1);
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2520CB768(a2, v20);
    v19 = *v3;
    sub_25213FA68(v20, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    sub_2520CB7A0(a2, a1);
    return 1;
  }
}

uint64_t sub_25213ECFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25214255C();
  sub_252141BEC();
  v9 = sub_25214258C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25214247C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25213FC18(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25213EE4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25214255C();
  v7 = a2[4];
  v8 = a2[5];
  sub_252141BEC();
  MEMORY[0x253099700](a2[2]);
  v9 = sub_25214258C();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      sub_25212CB84(*(v5 + 48) + 48 * v11, v20);
      if (v20[4] == v7 && v20[5] == v8)
      {
        break;
      }

      v14 = sub_25214247C();
      sub_25212CBF4(v20);
      if (v14)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_25212CBF4(v20);
LABEL_11:
    sub_25212CBF4(a2);
    sub_25212CB84(*(v5 + 48) + 48 * v11, a1);
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25212CB84(a2, v20);
    v19 = *v3;
    sub_25213FD98(v20, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    sub_25212CBBC(a2, a1);
    return 1;
  }
}

uint64_t sub_25213EFD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 8 * v18);
      v21 = *(v6 + 40);
      if (v20 != 0.0)
      {
        v22 = *(v19 + 8 * v18);
      }

      result = sub_25214254C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25213F208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      sub_2520CB7A0(*(v3 + 48) + 40 * (v15 | (v7 << 6)), v28);
      v18 = *(v6 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_2520CB7A0(v28, *(v6 + 48) + 40 * v14);
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25213F46C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25213F6CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      sub_25212CBBC(*(v3 + 48) + 48 * (v15 | (v7 << 6)), v28);
      v18 = *(v6 + 40);
      sub_25214255C();
      sub_252141BEC();
      MEMORY[0x253099700](v29);
      result = sub_25214258C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_25212CBBC(v28, *(v6 + 48) + 48 * v14);
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_25213F93C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_25213EFD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_25213FF54();
      result = v7;
      goto LABEL_12;
    }

    sub_2521404C8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_25214254C();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

uint64_t sub_25213FA68(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25213F208(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_252140094();
      goto LABEL_16;
    }

    sub_2521406C8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_25214255C();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_252141BEC();
  v13 = sub_25214258C();
  v14 = -1 << *(v9 + 32);
  a2 = v13 & ~v14;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      sub_2520CB768(*(v9 + 48) + 40 * a2, v23);
      if (v24 == v11 && v25 == v12)
      {
        goto LABEL_19;
      }

      v17 = sub_25214247C();
      sub_2520CB7D8(v23);
      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2520CB7A0(a1, *(v18 + 48) + 40 * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_2520CB7D8(v23);
LABEL_20:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

uint64_t sub_25213FC18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25213F46C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_252140200();
      goto LABEL_16;
    }

    sub_2521408FC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25214255C();
  sub_252141BEC();
  result = sub_25214258C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25214247C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

uint64_t sub_25213FD98(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25213F6CC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_25214035C();
      goto LABEL_16;
    }

    sub_252140B34(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_25214255C();
  v11 = a1[4];
  v12 = a1[5];
  sub_252141BEC();
  MEMORY[0x253099700](a1[2]);
  v13 = sub_25214258C();
  v14 = -1 << *(v9 + 32);
  a2 = v13 & ~v14;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      sub_25212CB84(*(v9 + 48) + 48 * a2, v23);
      if (v24 == v11 && v25 == v12)
      {
        goto LABEL_19;
      }

      v17 = sub_25214247C();
      sub_25212CBF4(v23);
      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25212CBBC(a1, *(v18 + 48) + 48 * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_25212CBF4(v23);
LABEL_20:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

void *sub_25213FF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  v2 = *v0;
  v3 = sub_2521421EC();
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

void *sub_252140094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  v2 = *v0;
  v3 = sub_2521421EC();
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_2520CB768(*(v2 + 48) + v17, v18);
        result = sub_2520CB7A0(v18, *(v4 + 48) + v17);
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

void *sub_252140200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  v2 = *v0;
  v3 = sub_2521421EC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

void *sub_25214035C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  v2 = *v0;
  v3 = sub_2521421EC();
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
        v17 = 48 * (v14 | (v8 << 6));
        sub_25212CB84(*(v2 + 48) + v17, v18);
        result = sub_25212CBBC(v18, *(v4 + 48) + v17);
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

uint64_t sub_2521404C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  result = sub_2521421FC();
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
      v17 = v14 | (v7 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 8 * v17);
      v20 = *(v6 + 40);
      if (v19 != 0.0)
      {
        v21 = *(v18 + 8 * v17);
      }

      result = sub_25214254C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_28:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2521406C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
      sub_2520CB768(*(v3 + 48) + 40 * (v14 | (v7 << 6)), v26);
      v17 = *(v6 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = sub_2520CB7A0(v26, *(v6 + 48) + 40 * v13);
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

        v2 = v25;
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2521408FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  result = sub_2521421FC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25214255C();

      sub_252141BEC();
      result = sub_25214258C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252140B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  result = sub_2521421FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
      sub_25212CB84(*(v3 + 48) + 48 * (v14 | (v7 << 6)), v26);
      v17 = *(v6 + 40);
      sub_25214255C();
      sub_252141BEC();
      MEMORY[0x253099700](v27);
      result = sub_25214258C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = sub_25212CBBC(v26, *(v6 + 48) + 48 * v13);
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

        v2 = v25;
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252140DD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252140E20()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_252140E60()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25213DB18(*(v0 + 16), *(v0 + 24));
}

uint64_t MockHTRequirementStatusEventType.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

unint64_t sub_252140FCC()
{
  result = qword_27F4CEA80;
  if (!qword_27F4CEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CEA80);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MockHTRequirementStatusEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[12])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MockHTRequirementStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_252141120(void *a1)
{
  swift_allocObject();
  sub_252141220(a1);
  v3 = v2;

  return v3;
}

uint64_t sub_252141168()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 400);

  return swift_unknownObjectRelease();
}

uint64_t sub_252141198()
{
  v0 = HTRequirementStatusManager.deinit();
  v1 = v0[49];

  v2 = v0[50];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_252141220(void *a1)
{
  v2 = v1;
  v4 = sub_252141A1C();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - v8);
  v10 = sub_252141ABC();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25214205C();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252141A5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  *(v1 + 392) = MEMORY[0x277D84F90];
  if (a1)
  {
    v23 = a1;
  }

  else
  {
    sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
    (*(v18 + 104))(v21, *MEMORY[0x277D851C8], v17);
    v24 = sub_25214203C();
    (*(v18 + 8))(v21, v17);
    v23 = v24;
  }

  *(v2 + 408) = 0;
  *(v2 + 416) = 1;
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  v40 = v22;
  sub_2521416A4();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520A2F1C(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98);
  sub_25214218C();
  v26 = sub_25214206C();

  (*(v33 + 8))(v16, v13);
  *(v2 + 400) = v26;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v28 = v34;
  sub_252141AAC();
  *v9 = 1000;
  v30 = v38;
  v29 = v39;
  (*(v38 + 104))(v9, *MEMORY[0x277D85178], v39);
  v31 = v37;
  sub_2520A4C7C(v37);
  MEMORY[0x253099290](v28, v9, v31, ObjectType);

  swift_unknownObjectRelease();
  v32 = *(v30 + 8);
  v32(v31, v29);
  v32(v9, v29);
  (*(v35 + 8))(v28, v36);
  HTRequirementStatusManager.init(_:)(0);
}

unint64_t sub_2521416A4()
{
  result = qword_27F4CEB00;
  if (!qword_27F4CEB00)
  {
    sub_25214205C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CEB00);
  }

  return result;
}
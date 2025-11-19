uint64_t sub_1A87336F0(uint64_t a1)
{
  result = MEMORY[0x1AC56F1E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A85FB018(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A873380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_1A870CCE0(&unk_1EB3090D0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB309050;
  v4[16] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A87338F0, v5, 0);
}

uint64_t sub_1A87338F0()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v30 = **(v0 + 88);
    v3 = (v1 + 32);
    v4 = sub_1A88C87A8();
    v5 = *(v4 - 8);
    v29 = *(v5 + 56);
    v27 = v4;
    v28 = (v5 + 48);
    v26 = (v5 + 8);
    do
    {
      v31 = v3;
      v32 = v2;
      v8 = *(v0 + 112);
      v7 = *(v0 + 120);
      v9 = *(v0 + 104);
      v10 = *v3;
      v29(v7, 1, 1, v4);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v9;
      v11[5] = v10;
      sub_1A8728D80(v7, v8, &unk_1EB3090D0);
      LODWORD(v8) = (*v28)(v8, 1, v4);

      v13 = *(v0 + 112);
      if (v8 == 1)
      {
        sub_1A85EF638(*(v0 + 112), &unk_1EB3090D0);
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1A88C8798();
        (*v26)(v13, v4);
        if (*v12)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1A88C86D8();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_9:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1A88E5528;
      *(v17 + 24) = v11;

      sub_1A870CCE0(&unk_1EB309080);
      v18 = v15 | v14;
      if (v15 | v14)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      v6 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_1A85EF638(v6, &unk_1EB3090D0);
      v3 = v31 + 1;
      v2 = v32 - 1;
      v4 = v27;
    }

    while (v32 != 1);
  }

  v19 = sub_1A870CCE0(&qword_1EB303EA0);
  *(v0 + 136) = v19;
  *(v0 + 144) = *(v19 - 8);
  *(v0 + 152) = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB309080);
  sub_1A88C8718();
  v20 = sub_1A85FC56C(&qword_1EB303CB0, type metadata accessor for RemoteIntentFileDownloadActor);
  v21 = MEMORY[0x1E69E7CC0];
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  v22 = *(v0 + 128);
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *v23 = v0;
  v23[1] = sub_1A8733D20;
  v24 = *(v0 + 136);

  return MEMORY[0x1EEE6D8A8](v0 + 72, v22, v20, v24);
}

uint64_t sub_1A8733D20()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1A8733E30, v1, 0);
}

uint64_t sub_1A8733E30()
{
  v2 = (v0 + 9);
  v1 = v0[9];
  v3 = v0[21];
  if (!v1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v75 = *(v3 + 16);
    if (!v75)
    {
      v16 = MEMORY[0x1E69E7CC8];
LABEL_49:
      v71 = v0[10];
      v72 = v16;

      *v71 = v72;

      v73 = v0[1];

      return v73();
    }

    v15 = 0;
    v76 = v0[21] + 32;
    v16 = MEMORY[0x1E69E7CC8];
    v74 = v3;
LABEL_11:
    if (v15 >= *(v3 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v12, v13, v14, v11);
    }

    v17 = *(v76 + 8 * v15);
    v77 = v15 + 1;
    v18 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v18;
    v90 = v18;
    v80 = v17 + 64;
    v20 = -1 << *(v17 + 32);
    if (-v20 < 64)
    {
      v21 = ~(-1 << -v20);
    }

    else
    {
      v21 = -1;
    }

    v2 = v21 & *(v17 + 64);
    sub_1A870CCE0(&qword_1EB303E98);
    v81 = v17;
    v82 = swift_task_alloc();
    v79 = (63 - v20) >> 6;

    v22 = 0;
    while (1)
    {
      v1 = *(*(sub_1A870CCE0(&qword_1EB303EA8) - 8) + 64) + 15;
      v25 = swift_task_alloc();
      v86 = isUniquelyReferenced_nonNull_native;
      v88 = v25;
      if (!v2)
      {
        v27 = v25;
        if (v79 <= v22 + 1)
        {
          v28 = v22 + 1;
        }

        else
        {
          v28 = v79;
        }

        v29 = v28 - 1;
        while (1)
        {
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v26 >= v79)
          {
            v69 = sub_1A870CCE0(&qword_1EB309110);
            (*(*(v69 - 8) + 56))(v27, 1, 1, v69);
            v2 = 0;
            v22 = v29;
            goto LABEL_29;
          }

          v2 = *(v80 + 8 * v26);
          ++v22;
          if (v2)
          {
            v22 = v26;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v26 = v22;
LABEL_28:
      v30 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v31 = v30 | (v26 << 6);
      v32 = (*(v81 + 48) + 16 * v31);
      v33 = v32[1];
      v83 = *v32;
      v34 = sub_1A88C72E8();
      v35 = *(v34 - 8);
      v36 = v35;
      v37 = swift_task_alloc();
      (*(v35 + 16))(v37, *(v81 + 56) + *(v35 + 72) * v31, v34);
      v38 = sub_1A870CCE0(&qword_1EB309110);
      v39 = *(v38 + 48);
      v27 = v88;
      *v88 = v83;
      *(v88 + 1) = v33;
      (*(v36 + 32))(&v88[v39], v37, v34);
      (*(*(v38 - 8) + 56))(v88, 0, 1, v38);

LABEL_29:
      v40 = swift_task_alloc();
      sub_1A8739E54(v27, v40);
      v41 = sub_1A870CCE0(&qword_1EB309110);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v42 = sub_1A870CCE0(&unk_1EB309100);
        v43 = v82;
        (*(*(v42 - 8) + 56))(v82, 1, 1, v42);
      }

      else
      {
        v44 = *(v41 + 48);
        v45 = sub_1A870CCE0(&unk_1EB309100);
        v46 = *(v45 + 48);
        v47 = *v40;
        v48 = *(v40 + 1);
        v49 = sub_1A88C72E8();
        v43 = v82;
        (*(*(v49 - 8) + 16))(v82 + v46, &v40[v44], v49);
        *v82 = v47;
        v82[1] = v48;

        sub_1A85EF638(v40, &qword_1EB309110);
        (*(*(v45 - 8) + 56))(v82, 0, 1, v45);
      }

      v50 = sub_1A870CCE0(&unk_1EB309100);
      if ((*(*(v50 - 8) + 48))(v43, 1, v50) == 1)
      {

        v3 = v74;
        v15 = v77;
        v0 = v78;
        v16 = v87;
        if (v77 == v75)
        {
          goto LABEL_49;
        }

        goto LABEL_11;
      }

      v51 = sub_1A88C72E8();
      v52 = *(v51 - 8);
      v53 = swift_task_alloc();
      v54 = *(v50 + 48);
      v55 = *v43;
      v56 = v43[1];
      v89 = v53;
      v84 = *(v52 + 32);
      v85 = v51;
      v84(v53, v43 + v54, v51);
      v1 = v87;
      v58 = sub_1A85F5F40(v55, v56);
      v59 = v87[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        goto LABEL_53;
      }

      v62 = v57;
      if (v87[3] >= v61)
      {
        if (v86)
        {
          if (v57)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1A87B0D88();
          if (v62)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_1A88786D4(v61, v86 & 1);
        v63 = sub_1A85F5F40(v55, v56);
        if ((v62 & 1) != (v64 & 1))
        {

          return sub_1A88C9488();
        }

        v58 = v63;
        if (v62)
        {
LABEL_16:
          v23 = swift_task_alloc();
          v24 = *(v52 + 72) * v58;
          (*(v52 + 16))(v23, v90[7] + v24, v85);
          (*(v52 + 8))(v89, v85);

          v87 = v90;
          (*(v52 + 40))(v90[7] + v24, v23, v85);

          goto LABEL_17;
        }
      }

      v1 = v90;
      v90[(v58 >> 6) + 8] |= 1 << v58;
      v65 = (v90[6] + 16 * v58);
      *v65 = v55;
      v65[1] = v56;
      v84(v90[7] + *(v52 + 72) * v58, v89, v85);
      v66 = v90[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_54;
      }

      v87 = v90;
      v90[2] = v68;
LABEL_17:

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[21];
  if ((v4 & 1) == 0)
  {
LABEL_55:
    v5 = sub_1A87364C8(0, v5[2] + 1, 1, v5, &qword_1EB303EB0, &unk_1A88E5548, &unk_1EB309080);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1A87364C8((v6 > 1), v7 + 1, 1, v5, &qword_1EB303EB0, &unk_1A88E5548, &unk_1EB309080);
  }

  v5[2] = v7 + 1;
  v5[v7 + 4] = v1;
  v78[21] = v5;
  v8 = v78[20];
  v9 = v78[16];
  v10 = swift_task_alloc();
  v78[22] = v10;
  *v10 = v78;
  v10[1] = sub_1A8733D20;
  v11 = v78[17];
  v12 = v2;
  v13 = v9;
  v14 = v8;

  return MEMORY[0x1EEE6D8A8](v12, v13, v14, v11);
}

uint64_t sub_1A8734810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1A87348B0;

  return sub_1A88AA4FC(a5);
}

uint64_t sub_1A87348B0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1A87349DC;
  }

  else
  {
    *(v4 + 32) = a1;
    v5 = sub_1A8734A48;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A87349DC()
{
  **(v0 + 16) = sub_1A87386D4(MEMORY[0x1E69E7CC0]);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8734A68(uint64_t result)
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

  result = sub_1A85F1B30(result, v10, 1, v3);
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

uint64_t sub_1A8734B5C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1A8735BDC(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1EB303E10, &unk_1A88E54A8, MEMORY[0x1EEE77C28]);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1A88C6F18();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A8734CA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A88C8D38();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A88C8D38();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A8736B7C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A8885AA4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A8734DA4(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 <= *(v4 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v5 <= v6)
  {
    v13 = v5 + v3;
  }

  else
  {
    v13 = v5;
  }

  result = sub_1A85FCF80(result, v13, 1, v4, a2);
  v4 = result;
  if (!*(v8 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v4 + 8 * v9 + 32), (v8 + 32), 8 * v3);

  if (!v3)
  {
LABEL_14:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1A8734EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A8734FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A87350D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A87351E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A8735344(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A87354E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_1A870CCE0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A870CCE0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1A8735654(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A8735760(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303E50);
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

char *sub_1A873586C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303D38);
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

char *sub_1A8735984(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303D88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A8735ACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303D80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_1A8735BDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1A870CCE0(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_1A8735DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303D58);
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

void *sub_1A8735F10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A870CCE0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303DE8);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1A8736060(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A8736194(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303DC0);
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

size_t sub_1A87362BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_1A870CCE0(a5);
  v14 = *(sub_1A870CCE0(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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
  v19 = *(sub_1A870CCE0(a7) - 8);
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

void *sub_1A87364C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_1A870CCE0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
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
    sub_1A870CCE0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1A8736624(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A870CCE0(a3);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_1A87366A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A870CCE0(&qword_1EB3034B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

size_t sub_1A8736724(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A870CCE0(&qword_1EB303E18);
  v4 = *(sub_1A88C72E8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8736820(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A873686C(a1, a2);
  sub_1A873699C(&unk_1F1BA8D08);
  return v3;
}

uint64_t sub_1A873686C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A87EA11C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A88C8EB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A88C8408();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A87EA11C(v10, 0);
        result = sub_1A88C8DF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A873699C(uint64_t result)
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

  result = sub_1A8736A88(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

char *sub_1A8736A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A870CCE0(&qword_1EB303EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_1A8736B7C(uint64_t a1)
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

  sub_1A88C8D38();
LABEL_9:
  result = sub_1A88C8E58();
  *v1 = result;
  return result;
}

uint64_t sub_1A8736C1C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1A88999A8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1A8736D48(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1A88C9528();

    sub_1A88C8268();
    v23 = sub_1A88C9578();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1A88C9398() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1A88BA9DC(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1A88C9528();

            sub_1A88C8268();
            v41 = sub_1A88C9578();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1A88C9398() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1A8737374(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1AC571F20](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1A85EF290();
    return v5;
  }

  result = MEMORY[0x1AC571F20](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1A87372B8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(sub_1A870CCE0(&qword_1EB309110) + 48);
  v5 = *(sub_1A870CCE0(&unk_1EB309100) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_1A88C72E8();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_1A8737374(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1A88BA9DC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1A88C9528();

        sub_1A88C8268();
        v19 = sub_1A88C9578();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1A88C9398() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

void *sub_1A87375AC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A8737700(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1A8737800(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1A8737900(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v27 = 0;
    v9 = 0;
LABEL_25:
    *result = v4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v27;
    result[4] = v8;
    return v9;
  }

  v9 = a3;
  if (!a3)
  {
    v27 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v38 = result;
    v39 = a4 + 56;
    v37 = v6;
    v11 = (63 - v6) >> 6;
    v12 = sub_1A88C72E8();
    result = 0;
    v43 = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v44 = v9;
    v45 = v14;
    v41 = v13 + 16;
    v42 = v13;
    v40 = v13 + 32;
    v15 = 1;
    while (1)
    {
      v49 = v10;
      v16 = MEMORY[0x1EEE9AC00](result);
      v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = MEMORY[0x1EEE9AC00](v16);
      v23 = &v36 - v21;
      if (!v8)
      {
        break;
      }

      v46 = v20;
      v47 = v15;
      v48 = v19;
LABEL_15:
      v26 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v27 = v22;
      v28 = v4;
      v29 = *(v4 + 48);
      v30 = v42;
      v31 = v43;
      v32 = *(v42 + 72);
      (*(v42 + 16))(&v36 - v21, v29 + v32 * (v26 | (v22 << 6)), v43);
      v33 = *(v30 + 32);
      v33(v18, v23, v31);
      v34 = v49;
      v33(v49, v18, v31);
      v9 = v44;
      if (v47 == v44)
      {
        v6 = v37;
        result = v38;
        v4 = v28;
        v5 = v39;
        goto LABEL_25;
      }

      v10 = &v34[v32];
      result = v47;
      v15 = v47 + 1;
      v4 = v28;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v24 = v22;
    v5 = v39;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v11)
      {
        break;
      }

      v8 = *(v39 + 8 * v25);
      ++v24;
      if (v8)
      {
        v46 = v20;
        v47 = v15;
        v48 = v19;
        v22 = v25;
        goto LABEL_15;
      }
    }

    if (v11 <= v22 + 1)
    {
      v35 = v22 + 1;
    }

    else
    {
      v35 = v11;
    }

    v27 = v35 - 1;
    v8 = 0;
    v9 = result;
    v6 = v37;
    result = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1A8737BC4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A8737D1C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1A8737E10;

  return v5(v2 + 16);
}

uint64_t sub_1A8737E10()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A8737F40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC56F1E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A85FB018(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A8737FD8(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1A871D5AC(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_1A870CCE0(&unk_1EB306530);
            v20 = swift_allocObject();
            v23 = j__malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1A871D5AC((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v28 < v27)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            sub_1A870CCE0(&unk_1EB306530);
            v30 = swift_allocObject();
            v34 = j__malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1A871D5AC((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1A8738358(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;
  v12 = sub_1A870CCE0(&qword_1EB303E98);
  v40[0] = v40;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v40 - v13);

  v40[1] = a3;

  for (i = v14; ; v14 = i)
  {
    sub_1A88B27DC(v14);
    v15 = sub_1A870CCE0(&unk_1EB309100);
    if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
    {
      sub_1A85EF290();
    }

    v16 = sub_1A88C72E8();
    v43 = v40;
    v17 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *v14;
    v20 = v14[1];
    v22 = v14 + *(v15 + 48);
    v24 = v23;
    v42 = *(v17 + 32);
    v42(v19, v22);
    v25 = *v52;
    v44 = v21;
    v27 = sub_1A85F5F40(v21, v20);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_1A87B0D88();
      }
    }

    else
    {
      sub_1A88786D4(v30, a4 & 1);
      v32 = sub_1A85F5F40(v44, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_20;
      }

      v27 = v32;
    }

    v34 = *v52;
    if (v31)
    {

      (*(v17 + 40))(v34[7] + *(v17 + 72) * v27, v19, v24);
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v44;
      v35[1] = v20;
      (v42)(v34[7] + *(v17 + 72) * v27, v19, v24);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_19;
      }

      v34[2] = v38;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

unint64_t sub_1A87386D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A870CCE0(&qword_1EB303EB8);
    v3 = sub_1A88C9008();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = sub_1A870CCE0(&unk_1EB309100);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v23 - v7);
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_1A8728D80(v10, v8, &unk_1EB309100);
    v12 = *v8;
    v13 = v8[1];
    result = sub_1A85F5F40(*v8, v13);
    if (v15)
    {
      break;
    }

    v16 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = v3[7];
    v19 = sub_1A88C72E8();
    result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v8 + v9, v19);
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_12;
    }

    v3[2] = v22;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A87388C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A8716570;

  return sub_1A873380C(a1, a2, v7, v6);
}

unint64_t sub_1A873898C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303CC0);
    v3 = sub_1A88C9008();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1A85F5F40(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1A8738AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&unk_1EB3052F0);
    v3 = sub_1A88C9008();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8728D80(v4, &v13, &qword_1EB303720);
      v5 = v13;
      v6 = v14;
      result = sub_1A85F5F40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A85E99B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1A8738BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303E40);
    v3 = sub_1A88C9008();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A85F5F40(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1A8738CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303D18);
    v3 = sub_1A88C9008();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8728D80(v4, &v15, &qword_1EB304A50);
      v5 = v15;
      v6 = v16;
      result = sub_1A85F5F40(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1A8738E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303D90);
    v3 = sub_1A88C9008();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8728D80(v4, &v11, &qword_1EB303D98);
      v5 = v11;
      result = sub_1A8716C10(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A85E99B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1A8738F98(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB303E68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A870CCE0(&qword_1EB303E70);
    v7 = sub_1A88C9008();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A8728D80(v9, v5, &qword_1EB303E68);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A85F5F40(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for TranslationLanguage();
      result = sub_1A8739C78(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1A8739180(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A870CCE0(a2);
    v4 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1A85F5F40(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1A8739288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303E20);
    v3 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A85F5F40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

void *sub_1A8739398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A870CCE0(&qword_1EB303E00);
  v3 = sub_1A88C9008();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1A8716CC4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1A8716CC4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A87394AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&unk_1EB3052D0);
    v3 = sub_1A88C9008();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8728D80(v4, &v11, &qword_1EB303DF8);
      v5 = v11;
      result = sub_1A8717F6C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A85E99B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1A87395D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A870CCE0(&qword_1EB303D70);
  v3 = sub_1A88C9008();
  LOBYTE(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1A8717F68(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 8);
    v13 = *v7;

    result = sub_1A8717F68(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A87396E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A870CCE0(&qword_1EB303D68);
  v3 = sub_1A88C9008();
  LOBYTE(v4) = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1A8717F68(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 8);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_1A8717F68(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A87397FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303DD8);
    v3 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A85F5F40(v5, v6);
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

unint64_t sub_1A8739928(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1A870CCE0(a2);
    v7 = sub_1A88C9008();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1A8739A34(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A870CCE0(a2);
    v4 = sub_1A88C9008();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1A85F5F40(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1A8739B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A870CCE0(&qword_1EB303D40);
    v3 = sub_1A88C9008();

    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v8 = *(i + 8);
      v7 = *(i + 16);
      v17 = *(i + 24);
      v9 = *(i + 40);

      result = sub_1A85F5F40(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 40 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v17;
      *(v13 + 32) = v9;
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

uint64_t sub_1A8739C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationLanguage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8739CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8714B6C;

  return sub_1A8734810(a1, v4, v5, v7, v6);
}

uint64_t sub_1A8739D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return sub_1A8737D1C(a1, v4);
}

uint64_t sub_1A8739E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A8739ECC()
{
  v0 = sub_1A88C82A8();
  v1 = sub_1A88C82A8();
  v2 = PPSCreateTelemetryIdentifier();

  qword_1EB338DD0 = v2;
}

uint64_t sub_1A8739F6C()
{
  if (qword_1EB3020E8 != -1)
  {
    swift_once();
  }

  if (qword_1EB338DD0)
  {
    v1 = *(v0 + 72);
    sub_1A870CCE0(&qword_1EB303EC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A88E14F0;
    *(inited + 32) = 0x73736563637573;
    v3 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v1;
    v4 = sub_1A8738E34(inited);
    swift_setDeallocating();
    sub_1A873A0C4(v3);
    sub_1A878C544(v4);

    v5 = sub_1A88C8188();

    PPSSendTelemetry();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A873A0C4(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB303ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IMActionComposeAudio.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionComposeAudio.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v9);

    if (swift_dynamicCast())
    {
      v6 = sub_1A88C82A8();

      v7 = [v2 initWithPhoneNumber_];

      return v7;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id IMActionComposeAudio.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionComposeAudio()
{
  result = qword_1EB303EF0;
  if (!qword_1EB303EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303EF0);
  }

  return result;
}

uint64_t sub_1A873A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A873C504(a3, v22 - v9);
  v11 = sub_1A88C87A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A873C574(v10);
  }

  else
  {
    sub_1A88C8798();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A88C86D8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A88C8358() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A873C574(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A873C574(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A873A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A873C504(a3, v22 - v9);
  v11 = sub_1A88C87A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A873C574(v10);
  }

  else
  {
    sub_1A88C8798();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A88C86D8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A88C8358() + 32;

      sub_1A870CCE0(&unk_1EB3090C0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A873C574(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A873C574(a3);
  sub_1A870CCE0(&unk_1EB3090C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A873AACC()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB303EF8);
  sub_1A85EF0E4(v0, qword_1EB303EF8);
  return sub_1A88C7E48();
}

uint64_t sub_1A873AB4C()
{
  type metadata accessor for DowntimeConversationListRemoteNotifierActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EB303F10 = v0;
  return result;
}

uint64_t sub_1A873AB8C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A873ABC8()
{
  if (qword_1EB3020F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A873AC24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DowntimeConversationListRemoteNotifierActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1A873AC60()
{
  v0 = sub_1A88C7478();
  sub_1A85EFC04(v0, qword_1EB303F18);
  sub_1A85EF0E4(v0, qword_1EB303F18);
  return sub_1A88C73B8();
}

id sub_1A873ACAC()
{
  result = [objc_allocWithZone(IMDowntimeConversationListRemoteNotifier) init];
  qword_1EB303F30 = result;
  return result;
}

void __swiftcall IMDowntimeConversationListRemoteNotifier.init()(IMDowntimeConversationListRemoteNotifier *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static IMDowntimeConversationListRemoteNotifier.shared.getter()
{
  if (qword_1EB302108 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB303F30;

  return v0;
}

void static IMDowntimeConversationListRemoteNotifier.shared.setter(uint64_t a1)
{
  if (qword_1EB302108 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB303F30;
  qword_1EB303F30 = a1;
}

uint64_t (*static IMDowntimeConversationListRemoteNotifier.shared.modify())()
{
  if (qword_1EB302108 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id static IMDowntimeConversationListRemoteNotifier.__sharedInstance()()
{
  if (qword_1EB302108 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = swift_dynamicCastUnknownClassUnconditional();

  return v0;
}

Swift::Void __swiftcall IMDowntimeConversationListRemoteNotifier.notifyListChanged()()
{
  v1 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1A88C87A8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1A873A5E4(0, 0, v3, &unk_1A88E5580, v5);
}

uint64_t sub_1A873B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  sub_1A8718478();
  *v5 = v4;
  v5[1] = sub_1A873B124;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1A873B124(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1A873B274, 0, 0);
  }
}

uint64_t sub_1A873B274()
{
  if (*(v0 + 32) == 1)
  {
    if (qword_1EB3020F8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EB303F10;

    return MEMORY[0x1EEE6DFA0](sub_1A873B408, v1, 0);
  }

  else
  {
    if (qword_1EB3020F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A88C7E58();
    sub_1A85EF0E4(v2, qword_1EB303EF8);
    v3 = sub_1A88C7E38();
    v4 = sub_1A88C89D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A85E5000, v3, v4, "DowntimeConversationEntity is not being observed, skipping posting .updated", v5, 2u);
      MEMORY[0x1AC571F20](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A873B408()
{
  [*(v0 + 16) setNeedsUpdate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A873B474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A873B078(a1, v4, v5, v6);
}

uint64_t sub_1A873B630()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v24 - v3;
  if (qword_1EB3020F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  v24 = sub_1A85EF0E4(v4, qword_1EB303EF8);
  v5 = sub_1A88C7E38();
  v6 = sub_1A88C89D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A85E5000, v5, v6, "DowntimeConversationEntity has updates, scheduling .updated event", v7, 2u);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  v28 = v1;
  v25 = OBJC_IVAR___IMDowntimeConversationListRemoteNotifier_debounceTask;
  if (*(v1 + OBJC_IVAR___IMDowntimeConversationListRemoteNotifier_debounceTask))
  {

    sub_1A88C8848();
  }

  v8 = sub_1A88C7478();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (qword_1EB302100 != -1)
  {
    swift_once();
  }

  v12 = sub_1A85EF0E4(v8, qword_1EB303F18);
  v13 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v13);
  (*(v9 + 16))(&v24 - v11, v12, v8);
  sub_1A88C73F8();
  v14 = *(v9 + 8);
  v15 = v14(&v24 - v11, v8);
  MEMORY[0x1EEE9AC00](v15);
  sub_1A88C7458();
  sub_1A873C5DC();
  LOBYTE(v12) = sub_1A88C8288();
  v14(&v24 - v11, v8);
  v14(&v24 - v11, v8);
  if ((v12 & 1) == 0)
  {
    return sub_1A873BAD0();
  }

  v16 = sub_1A88C7E38();
  v17 = sub_1A88C89D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A85E5000, v16, v17, "Delaying .updated event for DowntimeConversationEntity", v18, 2u);
    MEMORY[0x1AC571F20](v18, -1, -1);
  }

  v19 = v26;
  sub_1A88C8778();
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = sub_1A873BAD0;
  v21[5] = 0;
  v21[6] = ObjectType;
  v22 = sub_1A886595C(0, 0, v19, &unk_1A88E5638, v21);
  sub_1A873C574(v19);
  *(v28 + v25) = v22;
}

uint64_t sub_1A873BAD0()
{
  v0 = sub_1A88C6C48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A88C6C68();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB3020F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1EB303EF8);
  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A85E5000, v8, v9, "Posting .updated event for DowntimeConversationEntity", v10, 2u);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  if (qword_1EB302100 != -1)
  {
    swift_once();
  }

  v11 = sub_1A88C7478();
  v12 = sub_1A85EF0E4(v11, qword_1EB303F18);
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7458();
  swift_beginAccess();
  (*(v13 + 40))(v12, v15, v11);
  swift_endAccess();
  (*(v1 + 104))(v3, *MEMORY[0x1E6959DC8], v0);
  sub_1A8718478();
  sub_1A88C6C88();
  (*(v1 + 8))(v3, v0);
  sub_1A88C6C58();
  return (*(v4 + 8))(v6, v17);
}

uint64_t sub_1A873BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A88C8F98();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A873BEF8, 0, 0);
}

uint64_t sub_1A873BEF8()
{
  v1 = sub_1A88C9698();
  v3 = v2;
  sub_1A88C94B8();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1A873BFD4;

  return sub_1A873C6F0(v1, v3, 0, 0, 1);
}

uint64_t sub_1A873BFD4()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A873CCA4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A873C16C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A873C16C()
{
  if (sub_1A88C8858())
  {
    if (qword_1EB3020F0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A88C7E58();
    sub_1A85EF0E4(v1, qword_1EB303EF8);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v2, v3, "Task is cancelled, skipping posting .updated event for DowntimeConversationEntity", v4, 2u);
      MEMORY[0x1AC571F20](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_1EB3020F8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB303F10;

    return MEMORY[0x1EEE6DFA0](sub_1A873C300, v7, 0);
  }
}

uint64_t sub_1A873C300()
{
  (*(v0 + 16))();

  v1 = *(v0 + 8);

  return v1();
}

id IMDowntimeConversationListRemoteNotifier.init()()
{
  *(v0 + OBJC_IVAR___IMDowntimeConversationListRemoteNotifier_debounceTask) = 0;
  v2.super_class = IMDowntimeConversationListRemoteNotifier;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for IMDowntimeConversationListRemoteNotifier()
{
  result = qword_1EB303F40;
  if (!qword_1EB303F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303F40);
  }

  return result;
}

uint64_t sub_1A873C504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A873C574(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A873C5DC()
{
  result = qword_1EB303F50;
  if (!qword_1EB303F50)
  {
    sub_1A88C7478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303F50);
  }

  return result;
}

uint64_t sub_1A873C628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8714B6C;

  return sub_1A873BE38(a1, v4, v5, v6, v7);
}

uint64_t sub_1A873C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A88C8F88();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A873C7F0, 0, 0);
}

uint64_t sub_1A873C7F0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A88C8F98();
  v5 = sub_1A873CBA8(&qword_1EB303F58, MEMORY[0x1E69E8820]);
  sub_1A88C9498();
  sub_1A873CBA8(&qword_1EB303F60, MEMORY[0x1E69E87E8]);
  sub_1A88C8FA8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A873C980;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A873C980()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A873CB3C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A873CB3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A873CBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A873CBF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8714B6C;

  return sub_1A873B078(a1, v4, v5, v6);
}

Swift::String __swiftcall IMCommSafetyLocString(_:)(Swift::String a1)
{
  sub_1A873CDA8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1A88C82A8();
  v4 = sub_1A88C82A8();
  v5 = sub_1A88C82A8();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1A88C82E8();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

unint64_t sub_1A873CDA8()
{
  result = qword_1EB303F68;
  if (!qword_1EB303F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB303F68);
  }

  return result;
}

uint64_t IMCommSafetyLocString(format:_:)(uint64_t a1, uint64_t a2)
{
  IMCommSafetyLocString(_:)(*&a1);
  v2 = sub_1A88C82B8();

  return v2;
}

uint64_t sub_1A873CE5C()
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](0);
  return sub_1A88C9578();
}

uint64_t sub_1A873CEA0()
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](0);
  return sub_1A88C9578();
}

uint64_t sub_1A873CEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365746F76 && a2 == 0xE500000000000000)
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

uint64_t sub_1A873CF78(uint64_t a1)
{
  v2 = sub_1A873D1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A873CFB4(uint64_t a1)
{
  v2 = sub_1A873D1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB303F70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A873D1D4();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A870CCE0(&qword_1EB303F80);
    sub_1A873D420(&qword_1EB303F88, &qword_1EB303F90);
    sub_1A88C90B8();
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A873D1D4()
{
  result = qword_1EB303F78;
  if (!qword_1EB303F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303F78);
  }

  return result;
}

uint64_t type metadata accessor for PollVote()
{
  result = qword_1EB303FC8;
  if (!qword_1EB303FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PollResponse.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB303F98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1A870C278(a1, a1[3]);
  sub_1A873D1D4();

  sub_1A88C95C8();
  v9[1] = v7;
  sub_1A870CCE0(&qword_1EB303F80);
  sub_1A873D420(&qword_1EB303FA0, &qword_1EB303FA8);
  sub_1A88C92C8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A873D420(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB303F80);
    sub_1A873D4A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A873D4A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PollVote();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PollVote.voteOptionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PollVote.participantHandle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PollVote.serverVoteTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PollVote() + 24);

  return sub_1A8721348(v3, a1);
}

uint64_t PollVote.init(voteOptionIdentifier:participantHandle:serverVoteTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for PollVote() + 24);

  return sub_1A8720F5C(a5, v7);
}

unint64_t sub_1A873D610()
{
  v1 = 0x6F56726576726573;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A873D684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A873E0F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A873D6AC(uint64_t a1)
{
  v2 = sub_1A873DA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A873D6E8(uint64_t a1)
{
  v2 = sub_1A873DA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollVote.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1A870CCE0(&qword_1EB303FB0);
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v25 - v5;
  v7 = type metadata accessor for PollVote();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A870C278(a1, a1[3]);
  sub_1A873DA6C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v26 = v7;
  v31 = 0;
  v10 = sub_1A88C9058();
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *v9 = v13;
  v9[1] = v14;
  v30 = 1;
  v15 = sub_1A88C9058();
  v17 = v4;
  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v9[2] = v18;
  v9[3] = v19;
  v20 = sub_1A870CCE0(&unk_1EB3052E0);
  v25 = &v25;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v25 - v21;
  sub_1A88C7478();
  v29 = 2;
  sub_1A8720F18(&qword_1EB303510);
  v23 = v22;
  v24 = v28;
  sub_1A88C90B8();
  (*(v17 + 8))(v6, v24);
  sub_1A8720F5C(v23, v9 + *(v26 + 24));
  sub_1A873DAC0(v9, v27);
  sub_1A85F1084(a1);
  return sub_1A873DB24(v9);
}

unint64_t sub_1A873DA6C()
{
  result = qword_1EB303FB8;
  if (!qword_1EB303FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FB8);
  }

  return result;
}

uint64_t sub_1A873DAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PollVote();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A873DB24(uint64_t a1)
{
  v2 = type metadata accessor for PollVote();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PollVote.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB303FC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A870C278(a1, a1[3]);
  sub_1A873DA6C();
  sub_1A88C95C8();
  v8[15] = 0;
  sub_1A88C91C8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A88C91C8();
    type metadata accessor for PollVote();
    v8[13] = 2;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C9228();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1A873DDEC()
{
  sub_1A873DE70();
  if (v0 <= 0x3F)
  {
    sub_1A85ED6EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A873DE70()
{
  if (!qword_1EB303528)
  {
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB303528);
    }
  }
}

unint64_t sub_1A873DEE4()
{
  result = qword_1EB303FD8;
  if (!qword_1EB303FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FD8);
  }

  return result;
}

unint64_t sub_1A873DF3C()
{
  result = qword_1EB303FE0;
  if (!qword_1EB303FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FE0);
  }

  return result;
}

unint64_t sub_1A873DF94()
{
  result = qword_1EB303FE8;
  if (!qword_1EB303FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FE8);
  }

  return result;
}

unint64_t sub_1A873DFEC()
{
  result = qword_1EB303FF0;
  if (!qword_1EB303FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FF0);
  }

  return result;
}

unint64_t sub_1A873E044()
{
  result = qword_1EB303FF8;
  if (!qword_1EB303FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303FF8);
  }

  return result;
}

unint64_t sub_1A873E09C()
{
  result = qword_1EB304000;
  if (!qword_1EB304000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304000);
  }

  return result;
}

uint64_t sub_1A873E0F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001A8917910 == a2;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8917930 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F56726576726573 && a2 == 0xEE00656D69546574)
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

uint64_t PollDefinition.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PollDefinition.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PollDefinition.orderedPollOptions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PollDefinition.creatorHandle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall PollDefinition.init(title:creatorHandle:options:)(IMSharedUtilities::PollDefinition *__return_ptr retstr, Swift::String_optional title, Swift::String_optional creatorHandle, Swift::OpaquePointer options)
{
  retstr->title = title;
  retstr->creatorHandle = creatorHandle;
  retstr->orderedPollOptions = options;
}

uint64_t sub_1A873E338()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x48726F7461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1A873E3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8740660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A873E3C8(uint64_t a1)
{
  v2 = sub_1A873E738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A873E404(uint64_t a1)
{
  v2 = sub_1A873E738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A873E738();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_1A88C9058();
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    sub_1A870CCE0(&qword_1EB304018);
    v25 = 1;
    sub_1A873E9F0(&qword_1EB304020, &qword_1EB304028);
    sub_1A88C90B8();
    v22 = v12;
    if (v23)
    {
      v14 = v23;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v24 = 2;
    v15 = sub_1A88C9058();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v21 = v17;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    (*(v6 + 8))(v8, v5);
    v19 = v21;
    *a2 = v22;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v19;
    a2[4] = v18;

    sub_1A85F1084(a1);
  }
}

unint64_t sub_1A873E738()
{
  result = qword_1EB304010;
  if (!qword_1EB304010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304010);
  }

  return result;
}

uint64_t type metadata accessor for PollOption()
{
  result = qword_1EB304098;
  if (!qword_1EB304098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PollDefinition.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304030);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A873E738();
  sub_1A88C95C8();
  v16 = 0;
  v8 = v12;
  sub_1A88C91C8();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    sub_1A870CCE0(&qword_1EB304018);
    sub_1A873E9F0(&qword_1EB304038, &qword_1EB304040);
    sub_1A88C92C8();
    v14 = 2;
    sub_1A88C91C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A873E9F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB304018);
    sub_1A87401FC(a2, type metadata accessor for PollOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PollOption.optionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PollOption.creatorHandle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PollOption.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PollOption.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PollOption.attributedText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PollOption() + 28);

  return sub_1A873EBE8(v3, a1);
}

uint64_t sub_1A873EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PollOption.attributedText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PollOption() + 28);

  return sub_1A873EC9C(a1, v3);
}

uint64_t sub_1A873EC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

IMSharedUtilities::PollOption::CodingKeys_optional __swiftcall PollOption.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A88C9028();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IMSharedUtilities::PollOption::CodingKeys_optional __swiftcall PollOption.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = PollOption.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t PollOption.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x48726F7461657263;
  v3 = 1954047348;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x69644565426E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A873EEE8()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A873EFE8()
{
  sub_1A88C8268();
}

uint64_t sub_1A873F0D4()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

void sub_1A873F1DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C646E61;
  v4 = 0x48726F7461657263;
  v5 = 0xE400000000000000;
  v6 = 1954047348;
  v7 = 0xEE00747865546465;
  v8 = 0x7475626972747461;
  if (v2 != 3)
  {
    v8 = 0x69644565426E6163;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001A8916AF0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1A873F298()
{
  v1 = *v0;
  v2 = 0x48726F7461657263;
  v3 = 1954047348;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x69644565426E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

IMSharedUtilities::PollOption::CodingKeys_optional sub_1A873F350@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = PollOption.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1A873F388(uint64_t a1)
{
  v2 = sub_1A873FCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A873F3C4(uint64_t a1)
{
  v2 = sub_1A873FCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollOption.init(optionIdentifier:creatorHandle:text:attributedText:canBeEdited:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>)
{
  v17 = type metadata accessor for PollOption();
  v18 = *(v17 + 28);
  v19 = sub_1A88C7098();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1A873EC9C(a7, &a9[v18]);
  a9[*(v17 + 32)] = a8;
  return result;
}

uint64_t PollOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v69 = sub_1A870CCE0(&qword_1EB304050);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v4 = v57 - v3;
  v5 = type metadata accessor for PollOption();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 4) = 0;
  v9 = v8 + 32;
  *(v8 + 5) = 0;
  v66 = v6;
  v10 = *(v6 + 28);
  v11 = sub_1A88C7098();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v71 = v8;
  v72 = v10;
  v13(&v8[v10], 1, 1, v11);
  v14 = a1[3];
  v73 = a1;
  sub_1A870C278(a1, v14);
  sub_1A873FCA4();
  v68 = v4;
  v15 = v70;
  sub_1A88C95A8();
  if (v15)
  {
    v18 = v71;
    sub_1A85F1084(v73);
    return sub_1A873FCF8(v18 + v72);
  }

  else
  {
    v62 = v9;
    v63 = v13;
    v64 = v12 + 56;
    v70 = v11;
    v79 = 0;
    v16 = sub_1A88C9058();
    v61 = v57;
    if (v17)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v21 = 0xE000000000000000;
    if (v17)
    {
      v21 = v17;
    }

    v22 = v71;
    *v71 = v20;
    *(v22 + 1) = v21;
    v58 = v12;
    v59 = v21;
    MEMORY[0x1EEE9AC00](v16);
    v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = sub_1A870CCE0(&qword_1EB304048);
    v60 = v57;
    v26 = *(*(v25 - 8) + 64);
    MEMORY[0x1EEE9AC00](v25 - 8);
    v28 = v57 - v27;
    v78 = 3;
    type metadata accessor for AttributeScopes.IMTextStyleAttributes();
    sub_1A87401FC(&qword_1EB302440, type metadata accessor for AttributeScopes.IMTextStyleAttributes);
    v29 = v70;
    sub_1A88C9048();
    v57[1] = v26;
    v30 = v58;
    if ((*(v58 + 48))(v28, 1, v29) == 1)
    {
      sub_1A873FCF8(v28);
      v77 = 2;
      v31 = v69;
      v32 = sub_1A88C9058();
      if (v33)
      {
        v37 = MEMORY[0x1EEE9AC00](v32);
        v39 = v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = v37;
        v42 = v41;
        v43 = sub_1A88C70D8();
        MEMORY[0x1EEE9AC00](v43 - 8);

        sub_1A88C70C8();
        v31 = v69;
        sub_1A88C70A8();
        v63(v39, 0, 1, v70);
        sub_1A873EC9C(v39, &v22[v72]);
        *(v22 + 4) = v40;
        *(v22 + 5) = v42;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v32);
        v49 = v57 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1A88C7088();
        v63(v49, 0, 1, v70);
        sub_1A873EC9C(v49, &v22[v72]);
        *v62 = xmmword_1A88E59B0;
      }

      v47 = v67;
    }

    else
    {
      v34 = v24;
      (*(v30 + 32))(v24, v28, v29);
      v35 = v72;
      sub_1A873FCF8(&v22[v72]);
      (*(v30 + 16))(&v22[v35], v24, v29);
      v63(&v22[v35], 0, 1, v29);
      v74 = 2;
      v31 = v69;
      v36 = sub_1A88C9058();
      v45 = v44;
      v46 = v36;
      (*(v30 + 8))(v34, v29);
      v47 = v67;
      if (v45)
      {
        *(v22 + 4) = v46;
        *(v22 + 5) = v45;
      }
    }

    v50 = v66;
    v76 = 1;
    v51 = v68;
    v52 = sub_1A88C9058();
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    v55 = 0xE000000000000000;
    if (v53)
    {
      v55 = v53;
    }

    *(v22 + 2) = v54;
    *(v22 + 3) = v55;
    v75 = 4;
    v56 = sub_1A88C9068();
    (*(v47 + 8))(v51, v31);
    v22[*(v50 + 32)] = (v56 == 2) | v56 & 1;
    sub_1A873FD60(v22, v65);
    sub_1A85F1084(v73);
    return sub_1A873FDC4(v22);
  }
}

unint64_t sub_1A873FCA4()
{
  result = qword_1EB304058;
  if (!qword_1EB304058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304058);
  }

  return result;
}

uint64_t sub_1A873FCF8(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A873FD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PollOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A873FDC4(uint64_t a1)
{
  v2 = type metadata accessor for PollOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PollOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB304060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A873FCA4();
  sub_1A88C95C8();
  v10 = *v3;
  v11 = 0;
  sub_1A870CCE0(&qword_1EB304068);
  sub_1A8740110();
  sub_1A88C92C8();
  if (!v2)
  {
    v10 = v3[1];
    v11 = 1;
    sub_1A88C92C8();
    v10 = v3[2];
    v11 = 2;
    sub_1A88C92C8();
    type metadata accessor for PollOption();
    LOBYTE(v10) = 4;
    sub_1A88C9288();
    LOBYTE(v10) = 3;
    type metadata accessor for AttributeScopes.IMTextStyleAttributes();
    sub_1A870CCE0(&qword_1EB304048);
    sub_1A874018C();
    sub_1A87401FC(&unk_1EB302448, type metadata accessor for AttributeScopes.IMTextStyleAttributes);
    sub_1A88C91B8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A8740110()
{
  result = qword_1EB304070;
  if (!qword_1EB304070)
  {
    sub_1A870CD28(&qword_1EB304068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304070);
  }

  return result;
}

unint64_t sub_1A874018C()
{
  result = qword_1EB304078;
  if (!qword_1EB304078)
  {
    sub_1A870CD28(&qword_1EB304048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304078);
  }

  return result;
}

uint64_t sub_1A87401FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A8740280()
{
  result = qword_1EB304080;
  if (!qword_1EB304080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304080);
  }

  return result;
}

unint64_t sub_1A87402D8()
{
  result = qword_1EB304088;
  if (!qword_1EB304088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304088);
  }

  return result;
}

unint64_t sub_1A8740330()
{
  result = qword_1EB304090;
  if (!qword_1EB304090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304090);
  }

  return result;
}

uint64_t sub_1A8740384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A87403CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A874044C()
{
  sub_1A873DE70();
  if (v0 <= 0x3F)
  {
    sub_1A87404E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A87404E0()
{
  if (!qword_1EB3040A8)
  {
    sub_1A88C7098();
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3040A8);
    }
  }
}

unint64_t sub_1A874055C()
{
  result = qword_1EB3040B0;
  if (!qword_1EB3040B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3040B0);
  }

  return result;
}

unint64_t sub_1A87405B4()
{
  result = qword_1EB3040B8;
  if (!qword_1EB3040B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3040B8);
  }

  return result;
}

unint64_t sub_1A874060C()
{
  result = qword_1EB3040C0;
  if (!qword_1EB3040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3040C0);
  }

  return result;
}

uint64_t sub_1A8740660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917950 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x48726F7461657263 && a2 == 0xED0000656C646E61)
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

uint64_t sub_1A87407C0(char a1)
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a1 & 1);
  return sub_1A88C9578();
}

uint64_t sub_1A8740824()
{
  sub_1A88C9528();
  sub_1A8740798(v2, *v0);
  return sub_1A88C9578();
}

uint64_t PollCodableHelper.url(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = *(a2 + 16);
  v6 = sub_1A88C8BE8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = *(a2 + 24);
  *&v10 = v5;
  *(&v10 + 1) = v9;
  v27 = *(a2 + 32);
  v25 = v27;
  v26 = v10;
  v11 = type metadata accessor for VersionedItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = (*(v9 + 8))(v5, v9);
  v16 = *(v5 - 8);
  (*(v16 + 16))(v8, a1, v5);
  (*(v16 + 56))(v8, 0, 1, v5);
  VersionedItem.init(version:item:)(v15, v8, v14);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  swift_getWitnessTable();
  v17 = v28;
  v18 = sub_1A88C6E78();
  if (v17)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v21 = v18;
    v22 = v19;

    v23 = sub_1A88C7348();
    *&v26 = 0x2C3A61746164;
    *(&v26 + 1) = 0xE600000000000000;
    MEMORY[0x1AC56ECB0](v23);

    sub_1A88C72B8();
    sub_1A871CD60(v21, v22);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t VersionedItem.init(version:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for VersionedItem() + 52);
  v6 = sub_1A88C8BE8();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t PollCodableHelper.item(fromURL:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v29 = v3;
  v30 = v2;
  v31 = v4;
  v32 = v5;
  v28 = type metadata accessor for VersionedItem();
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v25 - v6;
  v7 = sub_1A88C6FB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A870CCE0(&qword_1EB3040C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  sub_1A88C7208();
  sub_1A88C6F88();

  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1A8740FEC(v13);
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v32 = v5;
    type metadata accessor for PollCodableHelper.HelperError();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v25 = v3;
    (*(v8 + 32))(v10, v13, v7);
    sub_1A88C6F58();
    v16 = sub_1A88C7318();
    v18 = v17;

    if (v18 >> 60 == 15)
    {
      v29 = v25;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      type metadata accessor for PollCodableHelper.HelperError();
      swift_getWitnessTable();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1A88C6E48();
      swift_allocObject();
      sub_1A88C6E38();
      v20 = v28;
      swift_getWitnessTable();
      v21 = v33;
      v22 = v27;
      sub_1A88C6E28();
      (*(v8 + 8))(v10, v7);

      if (v22)
      {
        return sub_1A871CD4C(v16, v18);
      }

      else
      {
        sub_1A871CD4C(v16, v18);
        v23 = *(v20 + 52);
        v24 = sub_1A88C8BE8();
        return (*(*(v24 - 8) + 32))(v26, &v21[v23], v24);
      }
    }
  }
}

uint64_t sub_1A8740FEC(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3040C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VersionedItem.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1A88C8BE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t VersionedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_1A88C8BE8();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v23 - v12;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  type metadata accessor for VersionedItem.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_1A88C91A8();
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v23 - v13;
  v28 = a2;
  v33 = a2;
  v34 = a3;
  v30 = a4;
  v35 = a4;
  v36 = a5;
  v15 = type metadata accessor for VersionedItem();
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v23 - v16);
  sub_1A870C278(a1, a1[3]);
  v31 = v14;
  v18 = v37;
  sub_1A88C95A8();
  if (v18)
  {
    v22 = a1;
  }

  else
  {
    v19 = v27;
    v37 = a1;
    v20 = v29;
    LOBYTE(v33) = 0;
    *v17 = sub_1A88C9138();
    LOBYTE(v33) = 1;
    sub_1A88C90B8();
    (*(v19 + 8))(v31, v32);
    (*(v24 + 32))(v17 + *(v15 + 52), v20, v25);
    (*(v23 + 32))(v26, v17, v15);
    v22 = v37;
  }

  return sub_1A85F1084(v22);
}

uint64_t sub_1A8741438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A8741504(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1A8741574()
{
  sub_1A88C9528();
  sub_1A8740798(v2, *v0);
  return sub_1A88C9578();
}

uint64_t sub_1A87415D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8741438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8741608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A871DF48();
  *a1 = result;
  return result;
}

uint64_t sub_1A874163C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A8741690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t VersionedItem.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v11 = *(a2 + 16);
  v13 = v11;
  v14 = v3;
  v15 = v4;
  v12 = v4;
  type metadata accessor for VersionedItem.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1A88C9318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88C95C8();
  LOBYTE(v13) = 0;
  v9 = v16;
  sub_1A88C92A8();
  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static VersionedItem.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A88C7D78();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for VersionedItem();
  v17 = sub_1A88C6E98();
  v16 = sub_1A88C6E48();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v15 = sub_1A8741BB8(&qword_1EB3040D0, MEMORY[0x1EEE77B18]);
  v19 = v2;
  v20 = v17;
  v21 = v16;
  v22 = WitnessTable;
  v23 = v4;
  v24 = v5;
  v25 = v15;
  v26 = sub_1A8741BB8(qword_1EB3040D8, MEMORY[0x1EEE77AE0]);
  v6 = sub_1A88C78E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1A88C7CF8();
  sub_1A88C78D8();
  sub_1A88C78F8();
  v13 = *(v7 + 8);
  v13(v12, v6);
  swift_getWitnessTable();
  (*(v7 + 16))(v18, v10, v6);
  return (v13)(v10, v6);
}

uint64_t sub_1A8741BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8741C80()
{
  result = sub_1A88C8BE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A8741D00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 8) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 8) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1A8741E98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 8] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t sub_1A8742154()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3042E0);
  sub_1A85EF0E4(v0, qword_1EB3042E0);
  return sub_1A88C7E48();
}

uint64_t sub_1A874225C(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_1A87422C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1A8742378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_1A874240C()
{
  *(v0 + 128) = sub_1A88C8768();
  *(v0 + 136) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A87424A4, v2, v1);
}

uint64_t sub_1A87424A4()
{

  if (qword_1EB300460 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1A874253C, 0, 0);
}

uint64_t sub_1A874253C()
{
  *(v0 + 144) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A87425C8, v2, v1);
}

uint64_t sub_1A87425C8()
{

  *(v0 + 152) = qword_1EB300468;

  return MEMORY[0x1EEE6DFA0](sub_1A874263C, 0, 0);
}

uint64_t sub_1A874263C()
{
  swift_beginAccess();
  v1 = off_1EB304300;
  v0[20] = qword_1EB3042F8;
  v0[21] = v1;

  v0[22] = sub_1A88C8758();
  v3 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A87426F0, v3, v2);
}

uint64_t sub_1A87426F0()
{
  v1 = v0[21];
  v2 = v0[20];

  v0[23] = sub_1A87277D0(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A874277C, 0, 0);
}

uint64_t sub_1A874277C()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A86061B4(v3, v0 + 16);
      sub_1A860D56C((v0 + 16), v0 + 56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1A8735344(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1A8735344((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      v7 = &v4[40 * v6];
      v8 = *(v0 + 56);
      v9 = *(v0 + 72);
      *(v7 + 8) = *(v0 + 88);
      *(v7 + 2) = v8;
      *(v7 + 3) = v9;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 120) = v4;
  v10 = *(v0 + 8);

  return v10();
}

void RemoteIntentRequestBroadcasts.route(response:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = *a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A87436C8(v4, &v37);
      sub_1A860D56C(&v37, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A8735320(0, v5[2] + 1, 1, v5);
      }

      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        v5 = sub_1A8735320((v6 > 1), v7 + 1, 1, v5);
      }

      v5[2] = v7 + 1;
      sub_1A860D56C(v36, &v5[5 * v7 + 4]);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = v5[2];
  if (v8)
  {
    v35 = a2;
    v9 = (v5 + 4);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = (v5 + 4);
    v12 = v8;
    do
    {
      sub_1A86061B4(v11, &v37);
      sub_1A870C278(&v37, v38);
      *&v36[0] = swift_getDynamicType();
      *(&v36[0] + 1) = v39;
      sub_1A870CCE0(&qword_1EB304318);
      v13 = sub_1A88C8338();
      v15 = v14;
      sub_1A85F1084(&v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A85F1B30(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_1A85F1B30((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v11 += 40;
      --v12;
    }

    while (v12);
    sub_1A8737F40(v10);

    if (qword_1EB302110 != -1)
    {
      swift_once();
    }

    v19 = sub_1A88C7E58();
    sub_1A85EF0E4(v19, qword_1EB3042E0);

    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v37 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1A85F0394(0xD000000000000013, 0x80000001A8917990, &v37);
      *(v22 + 12) = 2080;
      v24 = sub_1A88C8908();
      v26 = v25;

      v27 = sub_1A85F0394(v24, v26, &v37);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1A85E5000, v20, v21, "%s Routing invocation for the following broadcast types: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    else
    {
    }

    do
    {
      sub_1A86061B4(v9, &v37);
      v33 = v38;
      v34 = v39;
      sub_1A870C278(&v37, v38);
      (*(v34 + 64))(v35, v33, v34);
      sub_1A85F1084(&v37);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    if (qword_1EB302110 != -1)
    {
      swift_once();
    }

    v28 = sub_1A88C7E58();
    sub_1A85EF0E4(v28, qword_1EB3042E0);
    v29 = sub_1A88C7E38();
    v30 = sub_1A88C89D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1A85F0394(0xD000000000000013, 0x80000001A8917990, &v37);
      _os_log_impl(&dword_1A85E5000, v29, v30, "%s Remote request did not return any broadcasts to process.", v31, 0xCu);
      sub_1A85F1084(v32);
      MEMORY[0x1AC571F20](v32, -1, -1);
      MEMORY[0x1AC571F20](v31, -1, -1);
    }
  }
}

uint64_t sub_1A8742DD8(uint64_t a1)
{
  v2 = sub_1A8743724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8742E14(uint64_t a1)
{
  v2 = sub_1A8743724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestBroadcasts.encode(to:)(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8743724();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A8742FC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v4 = *a3;

  return v4;
}

uint64_t sub_1A874301C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8714B6C;

  return RemoteIntentRequestBroadcasts.perform(using:)(a1);
}

uint64_t sub_1A87430B4(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8743724();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RemoteIntentRequestBroadcastsResponse.broadcastEncodings.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A8743238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A89179B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A87432CC(uint64_t a1)
{
  v2 = sub_1A8743778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8743308(uint64_t a1)
{
  v2 = sub_1A8743778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestBroadcastsResponse.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304330);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1A870C278(a1, a1[3]);
  sub_1A8743778();

  sub_1A88C95C8();
  v9[1] = v7;
  sub_1A870CCE0(&qword_1EB304340);
  sub_1A8743820(&qword_1EB304348, sub_1A87437CC);
  sub_1A88C92C8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RemoteIntentRequestBroadcastsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304358);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8743778();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A870CCE0(&qword_1EB304340);
    sub_1A8743820(&qword_1EB304360, sub_1A8743898);
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A8743724()
{
  result = qword_1EB304328;
  if (!qword_1EB304328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304328);
  }

  return result;
}

unint64_t sub_1A8743778()
{
  result = qword_1EB304338;
  if (!qword_1EB304338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304338);
  }

  return result;
}

unint64_t sub_1A87437CC()
{
  result = qword_1EB304350;
  if (!qword_1EB304350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304350);
  }

  return result;
}

uint64_t sub_1A8743820(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB304340);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8743898()
{
  result = qword_1EB304368;
  if (!qword_1EB304368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304368);
  }

  return result;
}

unint64_t sub_1A87438EC(uint64_t a1)
{
  result = sub_1A8743914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8743914()
{
  result = qword_1EB304370;
  if (!qword_1EB304370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304370);
  }

  return result;
}

unint64_t sub_1A874396C()
{
  result = qword_1EB304378;
  if (!qword_1EB304378)
  {
    sub_1A870CD28(&qword_1EB304380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304378);
  }

  return result;
}

unint64_t sub_1A87439D4()
{
  result = qword_1EB304388;
  if (!qword_1EB304388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304388);
  }

  return result;
}

unint64_t sub_1A8743A28(uint64_t a1)
{
  result = sub_1A8743A50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8743A50()
{
  result = qword_1EB304390;
  if (!qword_1EB304390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304390);
  }

  return result;
}

unint64_t sub_1A8743AA4(uint64_t a1)
{
  result = sub_1A8743ACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8743ACC()
{
  result = qword_1EB304398;
  if (!qword_1EB304398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304398);
  }

  return result;
}

unint64_t sub_1A8743B4C()
{
  result = qword_1EB3043A0;
  if (!qword_1EB3043A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043A0);
  }

  return result;
}

unint64_t sub_1A8743BA0()
{
  result = qword_1EB3043A8;
  if (!qword_1EB3043A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043A8);
  }

  return result;
}

unint64_t sub_1A8743BF4(uint64_t a1)
{
  result = sub_1A8743C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8743C1C()
{
  result = qword_1EB3043B0;
  if (!qword_1EB3043B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043B0);
  }

  return result;
}

unint64_t sub_1A8743C70(uint64_t a1)
{
  result = sub_1A8743C98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8743C98()
{
  result = qword_1EB3043B8;
  if (!qword_1EB3043B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043B8);
  }

  return result;
}

uint64_t sub_1A8743D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8743D54()
{
  result = qword_1EB3043C0;
  if (!qword_1EB3043C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043C0);
  }

  return result;
}

unint64_t sub_1A8743DA8()
{
  result = qword_1EB3043C8;
  if (!qword_1EB3043C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043C8);
  }

  return result;
}

uint64_t sub_1A8743DFC@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

unint64_t sub_1A8743E9C()
{
  result = qword_1EB3043D0;
  if (!qword_1EB3043D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043D0);
  }

  return result;
}

unint64_t sub_1A8743EF4()
{
  result = qword_1EB3043D8;
  if (!qword_1EB3043D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043D8);
  }

  return result;
}

unint64_t sub_1A8743F4C()
{
  result = qword_1EB3043E0;
  if (!qword_1EB3043E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043E0);
  }

  return result;
}

unint64_t sub_1A8743FA4()
{
  result = qword_1EB3043E8;
  if (!qword_1EB3043E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043E8);
  }

  return result;
}

unint64_t sub_1A8743FFC()
{
  result = qword_1EB3043F0;
  if (!qword_1EB3043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043F0);
  }

  return result;
}

uint64_t IMPersistentTaskLane.description.getter(uint64_t a1)
{
  v1 = NSStringFromIMPersistentTaskLane(a1);
  v2 = sub_1A88C82E8();

  return v2;
}

uint64_t IMPersistentTaskRunResult.description.getter(uint64_t a1)
{
  v1 = NSStringFromIMPersistentTaskRunResult(a1);
  v2 = sub_1A88C82E8();

  return v2;
}

uint64_t IMPersistentTaskExecutorStatus.description.getter(uint64_t a1)
{
  v1 = NSStringFromIMPersistentTaskExecutorStatus(a1);
  v2 = sub_1A88C82E8();

  return v2;
}

unint64_t sub_1A8744158()
{
  result = qword_1EB3043F8;
  if (!qword_1EB3043F8)
  {
    sub_1A870CD28(&qword_1EB304400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3043F8);
  }

  return result;
}

unint64_t sub_1A87441C0()
{
  result = qword_1EB300730;
  if (!qword_1EB300730)
  {
    type metadata accessor for IMPersistentTaskFlag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB300730);
  }

  return result;
}

void sub_1A8744218()
{
  LOBYTE(xmmword_1EB304408) = 1;
  *(&xmmword_1EB304408 + 1) = 0xD000000000000012;
  unk_1EB304418 = 0x80000001A89179F0;
  word_1EB304420 = 0;
  *&xmmword_1EB304428 = sub_1A874635C;
  *(&xmmword_1EB304428 + 1) = 0;
}

void sub_1A8744260()
{
  LOBYTE(xmmword_1EB304438) = 1;
  *(&xmmword_1EB304438 + 1) = 0xD000000000000014;
  unk_1EB304448 = 0x80000001A89179D0;
  word_1EB304450 = 0;
  *&xmmword_1EB304458 = sub_1A874635C;
  *(&xmmword_1EB304458 + 1) = 0;
}

uint64_t sub_1A87442D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001A8917A40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A8744368(uint64_t a1)
{
  v2 = sub_1A87448FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87443A4(uint64_t a1)
{
  v2 = sub_1A87448FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87443E0()
{
  v0 = qword_1EB304468;

  return v0;
}

void sub_1A8744418(void *a1)
{
  v2 = sub_1A88C82A8();
  [a1 leftChat_];
}

uint64_t sub_1A8744474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87448FC();
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

uint64_t sub_1A87445F0(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3044A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87448FC();
  sub_1A88C95C8();
  sub_1A88C9278();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A874472C(uint64_t a1)
{
  *(a1 + 8) = sub_1A874475C();
  result = sub_1A87447B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A874475C()
{
  result = qword_1EB304478;
  if (!qword_1EB304478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304478);
  }

  return result;
}

unint64_t sub_1A87447B0()
{
  result = qword_1EB304480;
  if (!qword_1EB304480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304480);
  }

  return result;
}

unint64_t sub_1A8744804(uint64_t a1)
{
  result = sub_1A874482C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A874482C()
{
  result = qword_1EB304488;
  if (!qword_1EB304488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304488);
  }

  return result;
}

unint64_t sub_1A8744880(uint64_t a1)
{
  result = sub_1A87448A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87448A8()
{
  result = qword_1EB304490;
  if (!qword_1EB304490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304490);
  }

  return result;
}

unint64_t sub_1A87448FC()
{
  result = qword_1EB3044A0;
  if (!qword_1EB3044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3044A0);
  }

  return result;
}

unint64_t sub_1A8744964()
{
  result = qword_1EB3044B0;
  if (!qword_1EB3044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3044B0);
  }

  return result;
}

unint64_t sub_1A87449BC()
{
  result = qword_1EB3044B8;
  if (!qword_1EB3044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3044B8);
  }

  return result;
}

unint64_t sub_1A8744A14()
{
  result = qword_1EB3044C0;
  if (!qword_1EB3044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3044C0);
  }

  return result;
}

uint64_t sub_1A8744A68()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3044C8);
  sub_1A85EF0E4(v0, qword_1EB3044C8);
  return sub_1A88C7E48();
}

uint64_t sub_1A8744AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = sub_1A88C72E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = sub_1A88C7288();
  MEMORY[0x1EEE9AC00](v10);
  sub_1A88C7288();
  sub_1A8744C94(&v13[-v9], &v13[-v9], a5);
  v11 = *(v7 + 8);
  v11(&v13[-v9], v6);
  v11(&v13[-v9], v6);
  return 1;
}

uint64_t sub_1A8744C94(uint64_t a1, char *a2, int a3)
{
  LODWORD(v139) = a3;
  v4 = sub_1A870CCE0(&qword_1EB3044E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v133 = v124 - v5;
  v138 = sub_1A88C76B8();
  v142 = *(v138 - 8);
  v6 = MEMORY[0x1EEE9AC00](v138);
  v131 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v137 = v124 - v8;
  v9 = sub_1A88C76A8();
  v135 = *(v9 - 8);
  v136 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v134 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1A88C7E88();
  v11 = *(v148 - 8);
  v12 = MEMORY[0x1EEE9AC00](v148);
  v129 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v124 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v124 - v17;
  v19 = sub_1A88C7298();
  v146 = v18;
  MEMORY[0x1AC56E760](v19);
  v20 = sub_1A88C72E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v21;
  v26 = *(v21 + 16);
  v25 = v21 + 16;
  v24 = v26;
  v26(v124 - v23, a2, v20);
  v27 = sub_1A88C7298();
  v147 = v16;
  MEMORY[0x1AC56E760](v27);
  if (qword_1EB302128 != -1)
  {
    swift_once();
  }

  v28 = sub_1A88C7E58();
  v29 = sub_1A85EF0E4(v28, qword_1EB3044C8);
  v141 = v124;
  v128 = v22;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v124 - v23;
  v145 = v124 - v23;
  v130 = v25;
  v24(v124 - v23, v124 - v23, v20);
  v143 = v29;
  v31 = sub_1A88C7E38();
  v32 = sub_1A88C89D8();
  v33 = os_log_type_enabled(v31, v32);
  v127 = v24;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v140 = v11;
    v35 = v34;
    v36 = swift_slowAlloc();
    v150 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
    *(v35 + 12) = 2080;
    sub_1A8746020();
    v37 = sub_1A88C9348();
    v39 = v38;
    v144 = *(v149 + 8);
    v144(v30, v20);
    v40 = sub_1A85F0394(v37, v39, &v150);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_1A85E5000, v31, v32, "%s: compression destination is %s", v35, 0x16u);
    swift_arrayDestroy();
    v41 = v36;
    v42 = v147;
    MEMORY[0x1AC571F20](v41, -1, -1);
    v43 = v148;
    v44 = v140;
    MEMORY[0x1AC571F20](v35, -1, -1);

    v45 = v20;
  }

  else
  {

    v144 = *(v149 + 8);
    v144(v124 - v23, v20);
    v45 = v20;
    v42 = v147;
    v43 = v148;
    v44 = v11;
  }

  sub_1A88C76C8();
  swift_allocObject();
  v46 = sub_1A88C76D8();
  if (!v46)
  {
    v71 = sub_1A88C7E38();
    v72 = sub_1A88C89C8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v43;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v150 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
      _os_log_impl(&dword_1A85E5000, v71, v72, "%s: failed to create archive keyset", v74, 0xCu);
      sub_1A85F1084(v75);
      MEMORY[0x1AC571F20](v75, -1, -1);
      v76 = v74;
      v43 = v73;
      MEMORY[0x1AC571F20](v76, -1, -1);
    }

    sub_1A8745F00();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
    goto LABEL_31;
  }

  v47 = v46;
  sub_1A88C7688();
  v48 = sub_1A88C7668();
  if (!v48)
  {
    v78 = sub_1A88C7E38();
    v79 = sub_1A88C89C8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = v44;
      v81 = v43;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v150 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
      _os_log_impl(&dword_1A85E5000, v78, v79, "%s: failed to get filestream", v82, 0xCu);
      sub_1A85F1084(v83);
      MEMORY[0x1AC571F20](v83, -1, -1);
      v84 = v82;
      v43 = v81;
      v44 = v80;
      MEMORY[0x1AC571F20](v84, -1, -1);
    }

    sub_1A8745F00();
    swift_allocError();
    *v85 = 1;
    swift_willThrow();

    goto LABEL_31;
  }

  v49 = v48;
  v126 = v47;
  v139 = v45;
  v140 = v44;
  v50 = v134;
  sub_1A88C7698();
  v150 = MEMORY[0x1E69E7CC0];
  v51 = sub_1A874606C(&qword_1EB3044F0, MEMORY[0x1E69E5BA8]);
  v52 = sub_1A870CCE0(&qword_1EB3044F8);
  v53 = sub_1A8745F54();
  v55 = v137;
  v54 = v138;
  sub_1A88C8CE8();
  v141 = v49;
  v56 = sub_1A88C7648();
  v57 = v142 + 8;
  v58 = *(v142 + 8);
  v58(v55, v54);
  (*(v135 + 8))(v50, v136);
  if (!v56)
  {
    v86 = sub_1A88C7E38();
    v87 = sub_1A88C89C8();
    v88 = os_log_type_enabled(v86, v87);
    v45 = v139;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v150 = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
      _os_log_impl(&dword_1A85E5000, v86, v87, "%s: failed to get compression stream", v89, 0xCu);
      sub_1A85F1084(v90);
      MEMORY[0x1AC571F20](v90, -1, -1);
      v91 = v89;
      v43 = v148;
      v44 = v140;
      MEMORY[0x1AC571F20](v91, -1, -1);

      v42 = v147;
    }

    else
    {

      v42 = v147;
      v43 = v148;
      v44 = v140;
    }

    sub_1A8745F00();
    swift_allocError();
    *v103 = 2;
    swift_willThrow();
    sub_1A88C7678();

    goto LABEL_31;
  }

  sub_1A88C7748();
  v142 = v57;
  v150 = MEMORY[0x1E69E7CC0];
  v135 = v52;
  sub_1A88C8CE8();
  v136 = v56;
  v59 = sub_1A88C76F8();
  v58(v55, v54);
  if (!v59)
  {
    v92 = sub_1A88C7E38();
    v93 = sub_1A88C89C8();
    v94 = os_log_type_enabled(v92, v93);
    v45 = v139;
    v43 = v148;
    if (v94)
    {
      v95 = v148;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v150 = v97;
      *v96 = 136315138;
      *(v96 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
      _os_log_impl(&dword_1A85E5000, v92, v93, "%s: failed to get encode stream", v96, 0xCu);
      sub_1A85F1084(v97);
      MEMORY[0x1AC571F20](v97, -1, -1);
      v98 = v96;
      v43 = v95;
      MEMORY[0x1AC571F20](v98, -1, -1);
    }

    v42 = v147;
    sub_1A8745F00();
    swift_allocError();
    *v117 = 3;
    swift_willThrow();
    sub_1A88C7678();

    sub_1A88C7678();
    goto LABEL_30;
  }

  v124[1] = v53;
  v125 = v58;
  v134 = v51;
  v137 = v59;
  v60 = v140;
  v61 = v129;
  v62 = v148;
  (*(v140 + 16))(v129, v146, v148);
  v63 = sub_1A88C7E38();
  v64 = sub_1A88C89D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v150 = v66;
    *v65 = 136315394;
    *(v65 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
    *(v65 + 12) = 2080;
    sub_1A874606C(&qword_1EB304510, MEMORY[0x1E69E83A8]);
    v67 = sub_1A88C9348();
    v69 = v68;
    v129 = *(v60 + 8);
    (v129)(v61, v62);
    v70 = sub_1A85F0394(v67, v69, &v150);

    *(v65 + 14) = v70;
    _os_log_impl(&dword_1A85E5000, v63, v64, "%s: write directory contents: %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v66, -1, -1);
    MEMORY[0x1AC571F20](v65, -1, -1);
  }

  else
  {

    v129 = *(v60 + 8);
    (v129)(v61, v62);
  }

  v43 = v62;
  v99 = v133;
  v100 = v131;
  (*(v60 + 56))(v133, 1, 1, v62);
  v150 = MEMORY[0x1E69E7CC0];
  v101 = v138;
  sub_1A88C8CE8();
  v102 = v132;
  sub_1A88C7718();
  if (v102)
  {
    v125(v100, v101);
    sub_1A8745FB8(v99);
    sub_1A88C7728();
    v42 = v147;
    v45 = v139;

    sub_1A88C7678();

    sub_1A88C7678();
LABEL_30:

    v44 = v140;
LABEL_31:
    v118 = *(v44 + 8);
    v118(v42, v43);
    v144(v145, v45);
    return (v118)(v146, v43);
  }

  v125(v100, v101);
  v104 = sub_1A8745FB8(v99);
  MEMORY[0x1EEE9AC00](v104);
  v106 = v124 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v139;
  v127(v106, v145, v139);
  v108 = sub_1A88C7E38();
  v109 = sub_1A88C89D8();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v143 = v124;
    v111 = v110;
    v112 = swift_slowAlloc();
    v150 = v112;
    *v111 = 136315394;
    *(v111 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8917AD0, &v150);
    *(v111 + 12) = 2080;
    sub_1A8746020();
    v113 = sub_1A88C9348();
    v115 = v114;
    v144(v106, v107);
    v116 = sub_1A85F0394(v113, v115, &v150);

    *(v111 + 14) = v116;
    _os_log_impl(&dword_1A85E5000, v108, v109, "%s generated archive at path: %s", v111, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v112, -1, -1);
    MEMORY[0x1AC571F20](v111, -1, -1);
  }

  else
  {

    v144(v106, v107);
  }

  v120 = v147;
  sub_1A88C7728();
  v121 = v148;
  v122 = v139;

  sub_1A88C7678();

  sub_1A88C7678();

  v123 = v129;
  (v129)(v120, v121);
  v144(v145, v122);
  return (v123)(v146, v121);
}

unint64_t sub_1A8745F00()
{
  result = qword_1EB3044E8;
  if (!qword_1EB3044E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3044E8);
  }

  return result;
}

unint64_t sub_1A8745F54()
{
  result = qword_1EB304500;
  if (!qword_1EB304500)
  {
    sub_1A870CD28(&qword_1EB3044F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304500);
  }

  return result;
}

uint64_t sub_1A8745FB8(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3044E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8746020()
{
  result = qword_1EB304508;
  if (!qword_1EB304508)
  {
    sub_1A88C72E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304508);
  }

  return result;
}

uint64_t sub_1A874606C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A87460C8()
{
  result = qword_1EB304518;
  if (!qword_1EB304518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304518);
  }

  return result;
}

id PrototypingSetting.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [result isInternalInstall];

    if (v7)
    {
      v8 = "com.apple.Messages";
      v9 = 0xD000000000000013;
      if (*v2 != 1)
      {
        v9 = 0xD000000000000011;
        v8 = "com.apple.MobileSMS";
      }

      if (*v2)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0xD000000000000012;
      }

      if (*v2)
      {
        v11 = v8;
      }

      else
      {
        v11 = "";
      }

      (*(v2 + *(a1 + 40)))(v10, v11 | 0x8000000000000000, *(v2 + 8), *(v2 + 16), v2 + *(a1 + 36));
    }

    else
    {
      v12 = *(*(*(a1 + 16) - 8) + 16);
      v13 = v2 + *(a1 + 32);

      return v12(a2, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PrototypingSetting.init<A>(_:domain:default:internalDefault:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  if (v6 == 3)
  {
    LOBYTE(v6) = 0;
  }

  if (a5 == 2)
  {
    v7 = a4;
  }

  else
  {
    v7 = a5;
  }

  *a6 = v6;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a4;
  *(a6 + 25) = v7 & 1;
  *(a6 + 32) = sub_1A874635C;
  *(a6 + 40) = 0;
  return result;
}

void sub_1A87462BC(uint64_t *a1@<X8>)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetCachedDomainIntForKeyWithDefaultValue();

  *a1 = v4;
}
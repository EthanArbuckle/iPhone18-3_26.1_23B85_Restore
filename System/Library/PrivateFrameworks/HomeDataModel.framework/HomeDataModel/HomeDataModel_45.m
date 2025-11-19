uint64_t sub_1D1A99368(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  v7 = v3[25];
  if (v1)
  {
    if (v7)
    {
      v8 = v4[58];
      swift_getObjectType();
      v9 = sub_1D1E67D4C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = sub_1D1A99B10;
    v13 = v9;
  }

  else
  {
    v12 = sub_1D1A994DC;
    v13 = v7;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v13, v11);
}

void sub_1D1A994DC()
{
  v59 = v0;
  v1 = *(v0 + 488);
  if (!v1)
  {
    v15 = *(v0 + 456);
    v16 = *(v0 + 184);

    v17 = *(v0 + 472);
    *(v0 + 544) = v17;
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    swift_beginAccess();
    sub_1D1A9D59C(v18);
    swift_endAccess();
    v20 = *(v0 + 400);
    if ((v16 & 4) == 0)
    {
      v21 = *(v0 + 544);
      v22 = *(v0 + 376);
      v24 = *(v0 + 360);
      v23 = *(v0 + 368);
      v25 = *(v0 + 352);
      v26 = *(v0 + 328);
      v27 = *(v0 + 336);
      v53 = *(v0 + 304);
      v54 = *(v0 + 280);
      v55 = *(v0 + 264);
      v56 = *(v0 + 256);
      v57 = *(v0 + 248);
      sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

      v28 = *(v0 + 8);

      v28();
      return;
    }

    v45 = *(v0 + 392);
    *(v0 + 552) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v17, v0 + 88);
    v46 = *(v0 + 104);
    *v20 = *(v0 + 88);
    *(v20 + 16) = v46;
    swift_storeEnumTagMultiPayload();
    v47 = swift_task_alloc();
    *(v0 + 560) = v47;
    *v47 = v0;
    v47[1] = sub_1D1A9A5C8;
    v48 = *(v0 + 400);
    goto LABEL_39;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_43;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = v4[2];
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_44;
      }

      v9 = *(v1 + 32 + 8 * v3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v8 <= v4[3] >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v11 = v7 + v6;
        }

        else
        {
          v11 = v7;
        }

        v4 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        if (!*(v5 + 16))
        {
LABEL_4:

          if (v6)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      if ((v4[3] >> 1) - v4[2] < v6)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
      swift_arrayInitWithCopy();

      if (v6)
      {
        v12 = v4[2];
        v13 = __OFADD__(v12, v6);
        v14 = v12 + v6;
        if (v13)
        {
          goto LABEL_47;
        }

        v4[2] = v14;
      }

LABEL_5:
      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v29 = v4[2];
  v30 = MEMORY[0x1E69E7CC0];
  if (!v29)
  {
LABEL_30:
    v36 = *(v0 + 200);
    v37 = *(v0 + 184);
    swift_beginAccess();
    sub_1D1A9D59C(v30);
    swift_endAccess();

    if (!v37)
    {

      goto LABEL_34;
    }

    v38 = *(v0 + 496);
    v39 = *(v0 + 472);
    v40 = *(v0 + 184);
    v41 = sub_1D1A9D6A4(v4);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v39;
    sub_1D1AA47E0(v41, sub_1D1B327B4, 0, v42, &v58);

    *(v0 + 512) = v58;
    if ((v40 & 2) == 0)
    {

      *(v0 + 472) = *(v0 + 512);
LABEL_34:
      v43 = swift_task_alloc();
      *(v0 + 480) = v43;
      *v43 = v0;
      v43[1] = sub_1D1A99368;
      v44 = *(v0 + 456);

      sub_1D1ACDA64();
      return;
    }

    v50 = *(v0 + 392);
    v49 = *(v0 + 400);
    *(v0 + 520) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v41, v0 + 112);

    v51 = *(v0 + 128);
    *v49 = *(v0 + 112);
    *(v49 + 16) = v51;
    swift_storeEnumTagMultiPayload();
    v52 = swift_task_alloc();
    *(v0 + 528) = v52;
    *v52 = v0;
    v52[1] = sub_1D1A9A218;
    v48 = *(v0 + 400);
LABEL_39:

    sub_1D1AB6894(v48, 0, 0, 0, 0);
    return;
  }

  *(v0 + 168) = MEMORY[0x1E69E7CC0];
  sub_1D1E6899C();
  v31 = 0;
  v32 = (v4 + 4);
  while (v31 < v4[2])
  {
    ++v31;
    v33 = *v32;
    v32 += 2;
    v34 = v33;
    sub_1D1E6896C();
    v35 = *(*(v0 + 168) + 16);
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (v29 == v31)
    {
      v30 = *(v0 + 168);
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1D1A99B10()
{
  v1 = v0[25];
  v0[20] = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D1A99BA8, v1, 0);
}

int64_t sub_1D1A99BA8()
{
  v1 = *(v0 + 62);
  v2 = *(v0 + 57);
  v3 = *(v0 + 28);

  v4 = v1;
  v5 = sub_1D1E6655C();
  v66 = [v5 code];
  v6 = [v5 domain];
  v65 = sub_1D1E6781C();
  v8 = v7;

  if (v3 >> 62)
  {
LABEL_51:
    v68 = v3 & 0xFFFFFFFFFFFFFF8;
    *(v0 + 28);
    v9 = sub_1D1E6873C();
  }

  else
  {
    v68 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(v0 + 28);
  v11 = *(v0 + 59);
  *(v0 + 63) = v11;
  if (!v9)
  {
    v67 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v49 = *(v0 + 23);

    if ((v49 & 4) != 0)
    {
      v55 = *(v0 + 62);

      *(v0 + 68) = v11;
      v56 = *(v0 + 28);
      v57 = *(v0 + 25);
      swift_beginAccess();
      sub_1D1A9D59C(v56);
      swift_endAccess();
      v58 = *(v0 + 49);
      v59 = *(v0 + 50);
      *(v0 + 69) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v11, (v0 + 88));
      v60 = v0[104];
      *v59 = *(v0 + 88);
      *(v59 + 16) = v60;
      swift_storeEnumTagMultiPayload();
      v61 = swift_task_alloc();
      *(v0 + 70) = v61;
      *v61 = v0;
      v61[1] = sub_1D1A9A5C8;
    }

    else
    {
      v51 = *(v0 + 49);
      v50 = *(v0 + 50);
      *(v0 + 72) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v67, (v0 + 64));

      v52 = v0[80];
      *v50 = *(v0 + 4);
      *(v50 + 16) = v52;
      swift_storeEnumTagMultiPayload();
      v53 = swift_task_alloc();
      *(v0 + 73) = v53;
      *v53 = v0;
      v53[1] = sub_1D1A9AA04;
    }

    v54 = *(v0 + 50);

    return sub_1D1AB6894(v54, 0, 0, 0, 0);
  }

  v12 = 0;
  v13 = v3 & 0xC000000000000001;
  v14 = v10 + 32;
  v67 = MEMORY[0x1E69E7CC8];
  v62 = v0;
  v63 = v3 & 0xC000000000000001;
  v64 = v8;
  while (2)
  {
    v15 = v12;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1D3891EF0](v15, *(v0 + 28));
      }

      else
      {
        if (v15 >= *(v68 + 16))
        {
          goto LABEL_48;
        }

        v16 = *(v14 + 8 * v15);
      }

      v3 = v16;
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (!v11[2])
      {
        break;
      }

      sub_1D171D368(v16);
      if ((v17 & 1) == 0)
      {
        break;
      }

      ++v15;
      if (v12 == v9)
      {
        goto LABEL_38;
      }
    }

    v0 = v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1D171D368(v0);
    v21 = v67[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v8 = v20;
    if (v67[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_1D1737AA0();
        v19 = v30;
        if (v8)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

LABEL_20:
      if (v8)
      {
LABEL_21:
        v26 = v67[7] + 32 * v19;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        *v26 = v66;
        *(v26 + 8) = v65;
        *(v26 + 16) = v64;
        v8 = *(v26 + 24);
        *(v26 + 24) = 2;

        sub_1D1757A60(v28, v27, v29, v8);

        goto LABEL_25;
      }

LABEL_23:
      v67[(v19 >> 6) + 8] |= 1 << v19;
      *(v67[6] + 8 * v19) = v0;
      v31 = v67[7] + 32 * v19;
      *v31 = v66;
      *(v31 + 8) = v65;
      result = v64;
      *(v31 + 16) = v64;
      *(v31 + 24) = 2;
      v33 = v67[2];
      v23 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v23)
      {
        __break(1u);
        goto LABEL_53;
      }

      v67[2] = v34;

LABEL_25:
      v3 = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_1D171D368(v0);
      v37 = v11[2];
      v38 = (v35 & 1) == 0;
      result = v37 + v38;
      if (!__OFADD__(v37, v38))
      {
        v39 = v35;
        if (v11[3] >= result)
        {
          if ((v3 & 1) == 0)
          {
            result = sub_1D1737AA0();
          }

          v3 = v0;
          v13 = v63;
          if ((v39 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1D172629C(result, v3);
          v3 = v0;
          result = sub_1D171D368(v0);
          v13 = v63;
          if ((v39 & 1) != (v40 & 1))
          {
            goto LABEL_44;
          }

          v36 = result;
          if ((v39 & 1) == 0)
          {
LABEL_29:
            v11[(v36 >> 6) + 8] |= 1 << v36;
            *(v11[6] + 8 * v36) = v3;
            v41 = v11[7] + 32 * v36;
            *v41 = v66;
            *(v41 + 8) = v65;
            v8 = v64;
            *(v41 + 16) = v64;
            *(v41 + 24) = 2;
            v42 = v11[2];
            v23 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (!v23)
            {
              v11[2] = v43;
              goto LABEL_35;
            }

LABEL_53:
            __break(1u);
            return result;
          }
        }

        v44 = v11[7] + 32 * v36;
        v45 = *v44;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        *v44 = v66;
        *(v44 + 8) = v65;
        v8 = v64;
        *(v44 + 16) = v64;
        v48 = *(v44 + 24);
        *(v44 + 24) = 2;
        sub_1D1757A60(v45, v46, v47, v48);

LABEL_35:
        v0 = v62;
        *(v62 + 63) = v11;
        if (v12 != v9)
        {
          continue;
        }

        goto LABEL_38;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    break;
  }

  sub_1D172629C(v24, isUniquelyReferenced_nonNull_native);
  v19 = sub_1D171D368(v0);
  if ((v8 & 1) == (v25 & 1))
  {
    goto LABEL_20;
  }

LABEL_44:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9A218(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 536) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9A384, v5, 0);
}

uint64_t sub_1D1A9A384()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 264);
  v3 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 264));
    if (v5)
    {
      v6 = *(v0 + 384);
      v7 = *(v0 + 264);
      v8 = *(v0 + 232);
      v9 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 536) + 56) + *(*(v0 + 432) + 72) * v4, *(v0 + 376), type metadata accessor for StateSnapshot);
      (*(v9 + 8))(v7, v8);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 264);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);

    (*(v20 + 8))(v18, v19);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 384);
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 536);

    (*(v14 + 8))(v12, v13);
    v16 = v11;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 448);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  (*(v0 + 440))(v22, v10, 1, *(v0 + 424));
  sub_1D1741A90(v22, v23, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 472) = *(v0 + 512);
  v24 = swift_task_alloc();
  *(v0 + 480) = v24;
  *v24 = v0;
  v24[1] = sub_1D1A99368;
  v25 = *(v0 + 456);

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9A5C8(uint64_t a1)
{
  v2 = *(*v1 + 560);
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 568) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9A734, v5, 0);
}

uint64_t sub_1D1A9A734()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 256);
  v3 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 256));
    if (v5)
    {
      v6 = *(v0 + 384);
      v7 = *(v0 + 256);
      v8 = *(v0 + 232);
      v9 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 568) + 56) + *(*(v0 + 432) + 72) * v4, *(v0 + 368), type metadata accessor for StateSnapshot);
      (*(v9 + 8))(v7, v8);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);

    (*(v20 + 8))(v18, v19);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 384);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 568);

    (*(v14 + 8))(v12, v13);
    v16 = v11;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 448);
  v22 = *(v0 + 384);
  v23 = *(v0 + 368);
  (*(v0 + 440))(v23, v10, 1, *(v0 + 424));
  sub_1D1741A90(v23, v22, &unk_1EC649E30, &unk_1D1E91250);
  v24 = *(v0 + 544);
  v25 = *(v0 + 400);
  v26 = *(v0 + 376);
  v27 = *(v0 + 360);
  v28 = *(v0 + 368);
  v29 = *(v0 + 352);
  v32 = *(v0 + 336);
  v33 = *(v0 + 328);
  v34 = *(v0 + 304);
  v35 = *(v0 + 280);
  v36 = *(v0 + 264);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);
  sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D1A9AA04(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 592) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9AB70, v5, 0);
}

uint64_t sub_1D1A9AB70()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 248);
  v3 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 248));
    v5 = *(v0 + 496);
    if (v6)
    {
      v7 = *(v0 + 384);
      v9 = *(v0 + 240);
      v8 = *(v0 + 248);
      v10 = *(v0 + 232);
      sub_1D1AA43E0(*(*(v0 + 592) + 56) + *(*(v0 + 432) + 72) * v4, *(v0 + 360), type metadata accessor for StateSnapshot);

      (*(v9 + 8))(v8, v10);
      sub_1D1741A30(v7, &unk_1EC649E30, &unk_1D1E91250);

      v11 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 384);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);

    (*(v21 + 8))(v20, v22);
    v18 = v19;
  }

  else
  {
    v12 = *(v0 + 496);
    v13 = *(v0 + 384);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v0 + 592);

    (*(v15 + 8))(v14, v16);
    v18 = v13;
  }

  sub_1D1741A30(v18, &unk_1EC649E30, &unk_1D1E91250);
  v11 = 1;
LABEL_7:
  v23 = *(v0 + 448);
  v24 = *(v0 + 384);
  v25 = *(v0 + 360);
  (*(v0 + 440))(v25, v11, 1, *(v0 + 424));
  sub_1D1741A90(v25, v24, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 544) = *(v0 + 504);
  v26 = *(v0 + 224);
  v27 = *(v0 + 200);
  swift_beginAccess();
  sub_1D1A9D59C(v26);
  swift_endAccess();
  v28 = *(v0 + 544);
  v29 = *(v0 + 400);
  v30 = *(v0 + 376);
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  v33 = *(v0 + 352);
  v34 = *(v0 + 328);
  v35 = *(v0 + 336);
  v38 = *(v0 + 304);
  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  v41 = *(v0 + 256);
  v42 = *(v0 + 248);
  sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1D1A9AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v26;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v10 = sub_1D1E66A7C();
  v8[29] = v10;
  v11 = *(v10 - 8);
  v8[30] = v11;
  v12 = *(v11 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
  v8[34] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  v8[36] = v15;
  v8[37] = *(*(v15 - 8) + 64);
  v8[38] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v8[39] = v16;
  v17 = *(v16 - 8);
  v8[40] = v17;
  v18 = *(v17 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD8, &qword_1D1E961C8);
  v8[43] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[44] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[49] = updated;
  v23 = *(*(updated - 8) + 64) + 15;
  v8[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9B13C, a6, 0);
}

uint64_t sub_1D1A9B13C()
{
  if (*(v0 + 184))
  {
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);
    v26 = *(v0 + 200);
    v27 = sub_1D1A9D220(*(v0 + 192), 0, 0, 0, 0);
    *(v0 + 408) = *(v26 + 112);

    sub_1D1A97080(v27, v0 + 136);

    v28 = *(v0 + 152);
    *v24 = *(v0 + 136);
    *(v24 + 16) = v28;
    swift_storeEnumTagMultiPayload();
    v29 = swift_task_alloc();
    *(v0 + 416) = v29;
    *v29 = v0;
    v29[1] = sub_1D1A9B5A4;
    v30 = *(v0 + 400);

    return sub_1D1AB6894(v30, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 352);
    v31 = *(v0 + 344);
    v32 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    __n = *(v0 + 296);
    v6 = *(v0 + 280);
    v33 = *(v0 + 328);
    v34 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 208);
    v9 = type metadata accessor for StateSnapshot(0);
    *(v0 + 424) = v9;
    v10 = *(v9 - 8);
    *(v0 + 432) = v10;
    v11 = *(v10 + 56);
    *(v0 + 440) = v11;
    *(v0 + 448) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v1, 1, 1, v9);
    v12 = *(v4 + 16);
    v12(v2, v8, v3);
    *(v2 + *(v31 + 36)) = 1;
    v12(v32, v2, v3);
    v12(v33, v32, v3);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    *(v0 + 456) = v16;
    *(v6 + *(v7 + 36)) = 0;
    *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
    *v5 = 0;
    v17 = *(v34 + 28);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
    bzero(v5 + v17, *(*(v18 - 8) + 64));
    sub_1D1741A90(v6, v5 + v17, &qword_1EC649CC8, &qword_1D1E961B8);
    memcpy((v16 + *(*v16 + 96)), v5, __n);
    (*(v4 + 32))(v16 + *(*v16 + 104), v33, v3);
    (*(v4 + 8))(v32, v3);
    sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
    v19 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
    v20 = MEMORY[0x1E69E7CC8];
    *(v0 + 464) = v19;
    *(v0 + 472) = v20;
    v21 = swift_task_alloc();
    *(v0 + 480) = v21;
    *v21 = v0;
    v21[1] = sub_1D1A9BA70;
    v22 = *(v0 + 456);

    return sub_1D1ACDA64();
  }
}

uint64_t sub_1D1A9B5A4()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 200);
  v6 = *v0;

  sub_1D1AA3F34(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9B714, v4, 0);
}

uint64_t sub_1D1A9B714()
{
  v1 = v0[48];
  v2 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  __n = v0[37];
  v6 = v0[35];
  v26 = v0[41];
  v27 = v0[36];
  v7 = v0[34];
  v8 = v0[26];
  v9 = type metadata accessor for StateSnapshot(0);
  v0[53] = v9;
  v10 = *(v9 - 8);
  v0[54] = v10;
  v11 = *(v10 + 56);
  v0[55] = v11;
  v0[56] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v12 = *(v4 + 16);
  v12(v2, v8, v3);
  *(v2 + *(v24 + 36)) = 1;
  v12(v25, v2, v3);
  v12(v26, v25, v3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v0[57] = v16;
  *(v6 + *(v7 + 36)) = 0;
  *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
  *v5 = 0;
  v17 = *(v27 + 28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
  bzero(v5 + v17, *(*(v18 - 8) + 64));
  sub_1D1741A90(v6, v5 + v17, &qword_1EC649CC8, &qword_1D1E961B8);
  memcpy((v16 + *(*v16 + 96)), v5, __n);
  (*(v4 + 32))(v16 + *(*v16 + 104), v26, v3);
  (*(v4 + 8))(v25, v3);
  sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
  v19 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48);
  v20 = MEMORY[0x1E69E7CC8];
  v0[58] = v19;
  v0[59] = v20;
  v21 = swift_task_alloc();
  v0[60] = v21;
  *v21 = v0;
  v21[1] = sub_1D1A9BA70;
  v22 = v0[57];

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9BA70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  v7 = v3[25];
  if (v1)
  {
    if (v7)
    {
      v8 = v4[58];
      swift_getObjectType();
      v9 = sub_1D1E67D4C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = sub_1D1A9C218;
    v13 = v9;
  }

  else
  {
    v12 = sub_1D1A9BBE4;
    v13 = v7;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v13, v11);
}

void sub_1D1A9BBE4()
{
  v59 = v0;
  v1 = *(v0 + 488);
  if (!v1)
  {
    v15 = *(v0 + 456);
    v16 = *(v0 + 184);

    v17 = *(v0 + 472);
    *(v0 + 544) = v17;
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    swift_beginAccess();
    sub_1D1A9D59C(v18);
    swift_endAccess();
    v20 = *(v0 + 400);
    if ((v16 & 4) == 0)
    {
      v21 = *(v0 + 544);
      v22 = *(v0 + 376);
      v24 = *(v0 + 360);
      v23 = *(v0 + 368);
      v25 = *(v0 + 352);
      v26 = *(v0 + 328);
      v27 = *(v0 + 336);
      v53 = *(v0 + 304);
      v54 = *(v0 + 280);
      v55 = *(v0 + 264);
      v56 = *(v0 + 256);
      v57 = *(v0 + 248);
      sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

      v28 = *(v0 + 8);

      v28();
      return;
    }

    v45 = *(v0 + 392);
    *(v0 + 552) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v17, v0 + 88);
    v46 = *(v0 + 104);
    *v20 = *(v0 + 88);
    *(v20 + 16) = v46;
    swift_storeEnumTagMultiPayload();
    v47 = swift_task_alloc();
    *(v0 + 560) = v47;
    *v47 = v0;
    v47[1] = sub_1D1A9CCD0;
    v48 = *(v0 + 400);
    goto LABEL_39;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_43;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = v4[2];
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_44;
      }

      v9 = *(v1 + 32 + 8 * v3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v8 <= v4[3] >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v11 = v7 + v6;
        }

        else
        {
          v11 = v7;
        }

        v4 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        if (!*(v5 + 16))
        {
LABEL_4:

          if (v6)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      if ((v4[3] >> 1) - v4[2] < v6)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
      swift_arrayInitWithCopy();

      if (v6)
      {
        v12 = v4[2];
        v13 = __OFADD__(v12, v6);
        v14 = v12 + v6;
        if (v13)
        {
          goto LABEL_47;
        }

        v4[2] = v14;
      }

LABEL_5:
      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v29 = v4[2];
  v30 = MEMORY[0x1E69E7CC0];
  if (!v29)
  {
LABEL_30:
    v36 = *(v0 + 200);
    v37 = *(v0 + 184);
    swift_beginAccess();
    sub_1D1A9D59C(v30);
    swift_endAccess();

    if (!v37)
    {

      goto LABEL_34;
    }

    v38 = *(v0 + 496);
    v39 = *(v0 + 472);
    v40 = *(v0 + 184);
    v41 = sub_1D1A9D6A4(v4);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v39;
    sub_1D1AA47E0(v41, sub_1D1B327B4, 0, v42, &v58);

    *(v0 + 512) = v58;
    if ((v40 & 2) == 0)
    {

      *(v0 + 472) = *(v0 + 512);
LABEL_34:
      v43 = swift_task_alloc();
      *(v0 + 480) = v43;
      *v43 = v0;
      v43[1] = sub_1D1A9BA70;
      v44 = *(v0 + 456);

      sub_1D1ACDA64();
      return;
    }

    v50 = *(v0 + 392);
    v49 = *(v0 + 400);
    *(v0 + 520) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v41, v0 + 112);

    v51 = *(v0 + 128);
    *v49 = *(v0 + 112);
    *(v49 + 16) = v51;
    swift_storeEnumTagMultiPayload();
    v52 = swift_task_alloc();
    *(v0 + 528) = v52;
    *v52 = v0;
    v52[1] = sub_1D1A9C920;
    v48 = *(v0 + 400);
LABEL_39:

    sub_1D1AB6894(v48, 0, 0, 0, 0);
    return;
  }

  *(v0 + 168) = MEMORY[0x1E69E7CC0];
  sub_1D1E6899C();
  v31 = 0;
  v32 = (v4 + 4);
  while (v31 < v4[2])
  {
    ++v31;
    v33 = *v32;
    v32 += 2;
    v34 = v33;
    sub_1D1E6896C();
    v35 = *(*(v0 + 168) + 16);
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (v29 == v31)
    {
      v30 = *(v0 + 168);
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1D1A9C218()
{
  v1 = v0[25];
  v0[20] = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9C2B0, v1, 0);
}

int64_t sub_1D1A9C2B0()
{
  v1 = *(v0 + 62);
  v2 = *(v0 + 57);
  v3 = *(v0 + 28);

  v4 = v1;
  v5 = sub_1D1E6655C();
  v66 = [v5 code];
  v6 = [v5 domain];
  v65 = sub_1D1E6781C();
  v8 = v7;

  if (v3 >> 62)
  {
LABEL_51:
    v68 = v3 & 0xFFFFFFFFFFFFFF8;
    *(v0 + 28);
    v9 = sub_1D1E6873C();
  }

  else
  {
    v68 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(v0 + 28);
  v11 = *(v0 + 59);
  *(v0 + 63) = v11;
  if (!v9)
  {
    v67 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v49 = *(v0 + 23);

    if ((v49 & 4) != 0)
    {
      v55 = *(v0 + 62);

      *(v0 + 68) = v11;
      v56 = *(v0 + 28);
      v57 = *(v0 + 25);
      swift_beginAccess();
      sub_1D1A9D59C(v56);
      swift_endAccess();
      v58 = *(v0 + 49);
      v59 = *(v0 + 50);
      *(v0 + 69) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v11, (v0 + 88));
      v60 = v0[104];
      *v59 = *(v0 + 88);
      *(v59 + 16) = v60;
      swift_storeEnumTagMultiPayload();
      v61 = swift_task_alloc();
      *(v0 + 70) = v61;
      *v61 = v0;
      v61[1] = sub_1D1A9CCD0;
    }

    else
    {
      v51 = *(v0 + 49);
      v50 = *(v0 + 50);
      *(v0 + 72) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v67, (v0 + 64));

      v52 = v0[80];
      *v50 = *(v0 + 4);
      *(v50 + 16) = v52;
      swift_storeEnumTagMultiPayload();
      v53 = swift_task_alloc();
      *(v0 + 73) = v53;
      *v53 = v0;
      v53[1] = sub_1D1A9CE3C;
    }

    v54 = *(v0 + 50);

    return sub_1D1AB6894(v54, 0, 0, 0, 0);
  }

  v12 = 0;
  v13 = v3 & 0xC000000000000001;
  v14 = v10 + 32;
  v67 = MEMORY[0x1E69E7CC8];
  v62 = v0;
  v63 = v3 & 0xC000000000000001;
  v64 = v8;
  while (2)
  {
    v15 = v12;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1D3891EF0](v15, *(v0 + 28));
      }

      else
      {
        if (v15 >= *(v68 + 16))
        {
          goto LABEL_48;
        }

        v16 = *(v14 + 8 * v15);
      }

      v3 = v16;
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (!v11[2])
      {
        break;
      }

      sub_1D171D368(v16);
      if ((v17 & 1) == 0)
      {
        break;
      }

      ++v15;
      if (v12 == v9)
      {
        goto LABEL_38;
      }
    }

    v0 = v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1D171D368(v0);
    v21 = v67[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v8 = v20;
    if (v67[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_1D1737AA0();
        v19 = v30;
        if (v8)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

LABEL_20:
      if (v8)
      {
LABEL_21:
        v26 = v67[7] + 32 * v19;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        *v26 = v66;
        *(v26 + 8) = v65;
        *(v26 + 16) = v64;
        v8 = *(v26 + 24);
        *(v26 + 24) = 2;

        sub_1D1757A60(v28, v27, v29, v8);

        goto LABEL_25;
      }

LABEL_23:
      v67[(v19 >> 6) + 8] |= 1 << v19;
      *(v67[6] + 8 * v19) = v0;
      v31 = v67[7] + 32 * v19;
      *v31 = v66;
      *(v31 + 8) = v65;
      result = v64;
      *(v31 + 16) = v64;
      *(v31 + 24) = 2;
      v33 = v67[2];
      v23 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v23)
      {
        __break(1u);
        goto LABEL_53;
      }

      v67[2] = v34;

LABEL_25:
      v3 = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_1D171D368(v0);
      v37 = v11[2];
      v38 = (v35 & 1) == 0;
      result = v37 + v38;
      if (!__OFADD__(v37, v38))
      {
        v39 = v35;
        if (v11[3] >= result)
        {
          if ((v3 & 1) == 0)
          {
            result = sub_1D1737AA0();
          }

          v3 = v0;
          v13 = v63;
          if ((v39 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1D172629C(result, v3);
          v3 = v0;
          result = sub_1D171D368(v0);
          v13 = v63;
          if ((v39 & 1) != (v40 & 1))
          {
            goto LABEL_44;
          }

          v36 = result;
          if ((v39 & 1) == 0)
          {
LABEL_29:
            v11[(v36 >> 6) + 8] |= 1 << v36;
            *(v11[6] + 8 * v36) = v3;
            v41 = v11[7] + 32 * v36;
            *v41 = v66;
            *(v41 + 8) = v65;
            v8 = v64;
            *(v41 + 16) = v64;
            *(v41 + 24) = 2;
            v42 = v11[2];
            v23 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (!v23)
            {
              v11[2] = v43;
              goto LABEL_35;
            }

LABEL_53:
            __break(1u);
            return result;
          }
        }

        v44 = v11[7] + 32 * v36;
        v45 = *v44;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        *v44 = v66;
        *(v44 + 8) = v65;
        v8 = v64;
        *(v44 + 16) = v64;
        v48 = *(v44 + 24);
        *(v44 + 24) = 2;
        sub_1D1757A60(v45, v46, v47, v48);

LABEL_35:
        v0 = v62;
        *(v62 + 63) = v11;
        if (v12 != v9)
        {
          continue;
        }

        goto LABEL_38;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    break;
  }

  sub_1D172629C(v24, isUniquelyReferenced_nonNull_native);
  v19 = sub_1D171D368(v0);
  if ((v8 & 1) == (v25 & 1))
  {
    goto LABEL_20;
  }

LABEL_44:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9C920(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 536) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9CA8C, v5, 0);
}

uint64_t sub_1D1A9CA8C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 264);
  v3 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 264));
    if (v5)
    {
      v6 = *(v0 + 384);
      v7 = *(v0 + 264);
      v8 = *(v0 + 232);
      v9 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 536) + 56) + *(*(v0 + 432) + 72) * v4, *(v0 + 376), type metadata accessor for StateSnapshot);
      (*(v9 + 8))(v7, v8);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 264);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);

    (*(v20 + 8))(v18, v19);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 384);
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 536);

    (*(v14 + 8))(v12, v13);
    v16 = v11;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 448);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  (*(v0 + 440))(v22, v10, 1, *(v0 + 424));
  sub_1D1741A90(v22, v23, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 472) = *(v0 + 512);
  v24 = swift_task_alloc();
  *(v0 + 480) = v24;
  *v24 = v0;
  v24[1] = sub_1D1A9BA70;
  v25 = *(v0 + 456);

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9CCD0(uint64_t a1)
{
  v2 = *(*v1 + 560);
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 568) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA558C, v5, 0);
}

uint64_t sub_1D1A9CE3C(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 592) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5588, v5, 0);
}

uint64_t sub_1D1A9CFA8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t isUniquelyReferenced_nonNull_native)
{
  v10 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
LABEL_24:
    v11 = sub_1D1E6873C();
    if (v11)
    {
      goto LABEL_3;
    }

    return v10;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return v10;
  }

LABEL_3:
  v12 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v33 = a1;
  while (1)
  {
    if (v35)
    {
      v18 = MEMORY[0x1D3891EF0](v12, a1);
    }

    else
    {
      if (v12 >= *(v34 + 16))
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 8 * v12 + 32);
    }

    v37 = v18;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v36 = v12 + 1;
    v19 = a2;
    v20 = a3;
    a1 = a4;
    v21 = a4;
    a4 = isUniquelyReferenced_nonNull_native;
    sub_1D17418FC(a2, a3, v21, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a3 = sub_1D171D368(v37);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    a2 = v22;
    if (v10[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737AA0();
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = a4;
    if (a2)
    {
      v13 = v10[7] + 32 * a3;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      a2 = v19;
      *v13 = v19;
      *(v13 + 8) = v20;
      a3 = v20;
      a4 = a1;
      *(v13 + 16) = a1;
      v17 = *(v13 + 24);
      *(v13 + 24) = isUniquelyReferenced_nonNull_native;
      sub_1D1757A60(v14, v15, v16, v17);
    }

    else
    {
      v10[(a3 >> 6) + 8] |= 1 << a3;
      *(v10[6] + 8 * a3) = v37;
      v28 = v10[7] + 32 * a3;
      *v28 = v19;
      *(v28 + 8) = v20;
      *(v28 + 16) = a1;
      *(v28 + 24) = a4;
      v29 = v10[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_23;
      }

      a2 = v19;
      a3 = v20;
      a4 = a1;
      v10[2] = v31;
    }

    ++v12;
    a1 = v33;
    if (v36 == v11)
    {
      return v10;
    }
  }

  sub_1D172629C(v25, isUniquelyReferenced_nonNull_native);
  v26 = sub_1D171D368(v37);
  if ((a2 & 1) == (v27 & 1))
  {
    a3 = v26;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A9D220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    a1 = v44;
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38), swift_dynamicCast(), v24 = v43, v22 = v9, v23 = v10, !v43))
    {
LABEL_29:
      sub_1D1716918();
      return v6;
    }

LABEL_19:
    sub_1D17418FC(a2, a3, a4, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v6;
    v26 = sub_1D171D368(v24);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_1D172629C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D171D368(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v37 = v26;
    sub_1D1737AA0();
    v26 = v37;
    v6 = v43;
    if (v32)
    {
LABEL_8:
      v15 = v6[7] + 32 * v26;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      *v15 = a2;
      *(v15 + 8) = a3;
      *(v15 + 16) = a4;
      v19 = *(v15 + 24);
      *(v15 + 24) = a5;
      sub_1D1757A60(v16, v17, v18, v19);

      goto LABEL_9;
    }

LABEL_25:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    *(v6[6] + 8 * v26) = v24;
    v34 = v6[7] + 32 * v26;
    *v34 = a2;
    *(v34 + 8) = a3;
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    v35 = v6[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v36;
LABEL_9:
    v9 = v22;
    v10 = v23;
  }

  v20 = v9;
  v21 = v10;
  v22 = v9;
  if (v10)
  {
LABEL_15:
    v23 = (v21 - 1) & v21;
    v24 = *(*(a1 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v14)
    {
      goto LABEL_29;
    }

    v21 = *(v7 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void sub_1D1A9D59C(unint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1D1E6873C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = sub_1D1AE0760(v7);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_1D1A9D6A4(uint64_t a1)
{
  v2 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    if (!*i)
    {
      v32 = v11;
      v33 = 0;
      v34 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_1D171D368(v34);
      v38 = v2[2];
      v39 = (v37 & 1) == 0;
      v28 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v28)
      {
        goto LABEL_29;
      }

      v41 = v37;
      if (v2[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v36;
          sub_1D1737AA0();
          v36 = v52;
          if ((v41 & 1) == 0)
          {
LABEL_25:
            v2[(v36 >> 6) + 8] |= 1 << v36;
            *(v2[6] + 8 * v36) = v34;
            v53 = v2[7] + 32 * v36;
            *(v53 + 8) = 0;
            *(v53 + 16) = 0;
            *v53 = 1;
            *(v53 + 24) = 3;

            v54 = v2[2];
            v28 = __OFADD__(v54, 1);
            v45 = v54 + 1;
            if (v28)
            {
              goto LABEL_31;
            }

LABEL_26:
            v2[2] = v45;
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }

      else
      {
        sub_1D172629C(v40, isUniquelyReferenced_nonNull_native);
        v36 = sub_1D171D368(v34);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_32;
        }
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_21:
      v46 = v2[7] + 32 * v36;
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      *v46 = 1;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      v50 = *(v46 + 24);
      *(v46 + 24) = 3;
      sub_1D1757A60(v47, v48, v49, v50);

      goto LABEL_4;
    }

    v12 = v10;
    v13 = v10;
    v14 = v11;
    v15 = v10;
    v16 = sub_1D1E6655C();
    v17 = [v16 code];
    v18 = [v16 domain];
    v19 = sub_1D1E6781C();
    v21 = v20;

    v22 = v14;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1D171D368(v22);
    v26 = v2[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v2[3] >= v29)
    {
      if ((v23 & 1) == 0)
      {
        v51 = v24;
        sub_1D1737AA0();
        v24 = v51;
        if ((v30 & 1) == 0)
        {
LABEL_16:
          v2[(v24 >> 6) + 8] |= 1 << v24;
          *(v2[6] + 8 * v24) = v22;
          v43 = v2[7] + 32 * v24;
          *v43 = v17;
          *(v43 + 8) = v19;
          *(v43 + 16) = v21;
          *(v43 + 24) = 2;

          v44 = v2[2];
          v28 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v28)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1D172629C(v29, v23);
      v24 = sub_1D171D368(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_32;
      }
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_3:
    v5 = v2[7] + 32 * v24;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    *v5 = v17;
    *(v5 + 8) = v19;
    *(v5 + 16) = v21;
    v9 = *(v5 + 24);
    *(v5 + 24) = 2;
    sub_1D1757A60(v6, v7, v8, v9);

LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A9DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = v5;
  *(v6 + 136) = a2;
  *(v6 + 144) = a4;
  *(v6 + 296) = a3;
  *(v6 + 128) = a1;
  v7 = sub_1D1E66A7C();
  *(v6 + 168) = v7;
  v8 = *(v7 - 8);
  *(v6 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 200) = updated;
  v11 = *(*(updated - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9DB50, 0, 0);
}

uint64_t sub_1D1A9DB50()
{
  v60 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 296);
  v56 = *(v0 + 136);
  LOBYTE(v57) = v3;
  v58 = v2;
  v4 = CharacteristicValueSet.characteristicsAndValues(in:)(v1);
  v5 = sub_1D18D8770(MEMORY[0x1E69E7CC0]);
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v55 = v4;

  v11 = 0;
  v52 = v10;
  v53 = v4 + 64;
  v54 = v0;
  while (1)
  {
    *(v0 + 216) = v5;
    if (!v9)
    {
      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v17 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v17);
        ++v11;
        if (v9)
        {
          v16 = v5;
          v11 = v17;
          goto LABEL_12;
        }
      }

      v40 = *(v0 + 296);

      if (v40)
      {
        if (qword_1EC642348 != -1)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v49 = qword_1EC64ABE8;
      *(v0 + 224) = qword_1EC64ABE8;
      v50 = sub_1D1A9E0BC;
LABEL_31:

      return MEMORY[0x1EEE6DFA0](v50, v49, 0);
    }

    v16 = v5;
LABEL_12:
    v18 = __clz(__rbit64(v9)) | (v11 << 6);
    v19 = *(*(v55 + 48) + 8 * v18);
    sub_1D1741970(*(v55 + 56) + 32 * v18, v0 + 24);
    *(v0 + 16) = v19;
    sub_1D1741C08(v0 + 16, v0 + 56, &qword_1EC6460A8, &qword_1D1E7E4F0);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = __swift_project_boxed_opaque_existential_1((v0 + 24), v20);
    *(v0 + 120) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
    v24 = v19;
    StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)((v0 + 96), &v56);
    v25 = v56;
    v26 = v57;
    v27 = v58;
    v5 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    v29 = sub_1D171D368(v21);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
LABEL_25:
      v41 = sub_1D1E6709C();
      __swift_project_value_buffer(v41, qword_1EC6BE180);

      v42 = sub_1D1E6707C();
      v43 = sub_1D1E6835C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v56 = v45;
        *v44 = 136446210;
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
        v46 = sub_1D1E6760C();
        v48 = sub_1D1B1312C(v46, v47, &v56);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1D16EC000, v42, v43, "Starting local override writing: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D3893640](v45, -1, -1);
        MEMORY[0x1D3893640](v44, -1, -1);
      }

      v49 = *(v0 + 160);
      v50 = sub_1D1A9E74C;
      goto LABEL_31;
    }

    v35 = v30;
    if (v5[3] < v34)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v30)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = v29;
      sub_1D1737914();
      v29 = v0;
      v5 = v59;
      if (v35)
      {
LABEL_4:
        v12 = v5[7] + 24 * v29;
        v13 = *v12;
        v14 = *(v12 + 8);
        *v12 = v25;
        *(v12 + 8) = v26;
        v15 = *(v12 + 16);
        *(v12 + 16) = v27;
        sub_1D1778940(v13, v14, v15);

        goto LABEL_5;
      }
    }

LABEL_19:
    v5[(v29 >> 6) + 8] |= 1 << v29;
    *(v5[6] + 8 * v29) = v21;
    v37 = v5[7] + 24 * v29;
    *v37 = v25;
    *(v37 + 8) = v26;
    *(v37 + 16) = v27;
    v38 = v5[2];
    v33 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v33)
    {
      goto LABEL_39;
    }

    v5[2] = v39;
LABEL_5:
    v9 &= v9 - 1;
    v0 = v54;
    __swift_destroy_boxed_opaque_existential_1((v54 + 64));
    sub_1D1741A30(v54 + 16, &qword_1EC6460A8, &qword_1D1E7E4F0);
    v10 = v52;
    v6 = v53;
  }

  sub_1D1725FFC(v34, isUniquelyReferenced_nonNull_native);
  v0 = v59;
  v29 = sub_1D171D368(v21);
  if ((v35 & 1) == (v36 & 1))
  {
    v5 = v0;
    if (v35)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9E0BC()
{
  if (qword_1EC642500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E14C, v1, 0);
}

uint64_t sub_1D1A9E174()
{
  v1 = v0[28];
  v2 = sub_1D1A8D2B8(v0[17]);
  v0[30] = sub_1D1784EEC(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E200, v1, 0);
}

uint64_t sub_1D1A9E200()
{
  v1 = v0[29];
  v2 = v0[20];
  sub_1D1E633F4(v0[30]);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E280, v2, 0);
}

uint64_t sub_1D1A9E280()
{
  *(v0 + 248) = *(*(v0 + 160) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E2F4, 0, 0);
}

uint64_t sub_1D1A9E2F4()
{
  v1 = v0[26];
  v2 = v0[25];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_1D1A9E3CC;
  v4 = v0[31];
  v5 = v0[26];

  return sub_1D1AB6894(v5, 0, 0, 0, 0);
}

uint64_t sub_1D1A9E3CC(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 264) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E51C, 0, 0);
}

uint64_t sub_1D1A9E51C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 192);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 192));
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 128);
      v12 = *(*(v0 + 264) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1AA43E0(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 264);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *(v0 + 264);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 208);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  (*(v14 + 56))(*(v0 + 128), v15, 1, v13);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1A9E74C()
{
  *(v0 + 272) = *(*(v0 + 160) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E7C0, 0, 0);
}

uint64_t sub_1D1A9E7C0()
{
  v1 = v0[26];
  v2 = v0[25];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1D1A9E898;
  v4 = v0[34];
  v5 = v0[26];

  return sub_1D1AB6894(v5, 0, 0, 0, 0);
}

uint64_t sub_1D1A9E898(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 288) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E9E8, 0, 0);
}

uint64_t sub_1D1A9E9E8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 184);
  v3 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 184);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 184));
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 128);
      v12 = *(*(v0 + 288) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1AA43E0(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v6, v8);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 288);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *(v0 + 288);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 208);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  (*(v14 + 56))(*(v0 + 128), v15, 1, v13);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1A9EC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC0, &qword_1D1E96188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v10 - v8;
  LOBYTE(v8) = atomic_load((a2 + 16));
  if ((v8 & 1) == 0)
  {
    v10[1] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    sub_1D1E6809C();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void *sub_1D1A9ED2C(void *result, uint64_t a2)
{
  v2 = atomic_load((a2 + 16));
  if ((v2 & 1) == 0)
  {
    atomic_store(1u, (a2 + 16));
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    return sub_1D1E680AC();
  }

  return result;
}

uint64_t sub_1D1A9ED94(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a1;
  v7 = sub_1D1E68A4C();
  *(v6 + 48) = v7;
  v8 = *(v7 - 8);
  *(v6 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9EE58, 0, 0);
}

uint64_t sub_1D1A9EE58()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1D1A9EF34;
  v7 = v0[8];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1A9EF34()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1D1AA5584;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D1A9F0CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D1A9F0CC()
{
  v1 = atomic_load((v0[4] + 16));
  if ((v1 & 1) == 0)
  {
    v2 = v0[5];
    atomic_store(1u, (v0[4] + 16));
    sub_1D1E67D8C();
    sub_1D1AA3AF8(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    v3 = swift_allocError();
    sub_1D1E6759C();
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    sub_1D1E680AC();
  }

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1A9F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a7;
  v7[31] = v20;
  v7[28] = a5;
  v7[29] = a6;
  v7[26] = a1;
  v7[27] = a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[32] = updated;
  v10 = *(*(updated - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v7[36] = v12;
  v13 = *(v12 - 8);
  v7[37] = v13;
  v14 = *(v13 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v7[45] = v15;
  v16 = *(v15 - 8);
  v7[46] = v16;
  v17 = *(v16 + 64) + 15;
  v7[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9F3D4, a6, 0);
}

uint64_t sub_1D1A9F3D4()
{
  (*(v0[46] + 16))(v0[47], v0[27], v0[45]);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_1D1A9F49C;
  v2 = v0[47];

  return sub_1D1AA0B60((v0 + 25));
}

uint64_t sub_1D1A9F49C(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 392) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A9F5B4, v3, 0);
}

uint64_t sub_1D1A9F5B4()
{
  v2 = v1;
  v3 = v1[49];
  v176 = v1[25];
  v1[50] = v176;
  v4 = *(v3 + 16);
  v172 = v2;
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v5 >= *(v3 + 16))
    {
      goto LABEL_152;
    }

    v7 = *(v3 + 32 + 8 * v5);
    v8 = *(v7 + 16);
    v9 = v6[2];
    v0 = (v9 + v8);
    if (__OFADD__(v9, v8))
    {
      goto LABEL_153;
    }

    v10 = *(v3 + 32 + 8 * v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v0 <= v6[3] >> 1)
    {
      if (!*(v7 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v9 <= v0)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (!*(v7 + 16))
      {
LABEL_3:

        if (v8)
        {
          goto LABEL_154;
        }

        goto LABEL_4;
      }
    }

    v13 = v6[2];
    if ((v6[3] >> 1) - v13 < v8)
    {
      goto LABEL_156;
    }

    v0 = &v6[2 * v13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
    swift_arrayInitWithCopy();

    if (v8)
    {
      v14 = v6[2];
      v15 = __OFADD__(v14, v8);
      v16 = v14 + v8;
      if (v15)
      {
        goto LABEL_158;
      }

      v6[2] = v16;
    }

LABEL_4:
    ++v5;
  }

  while (v4 != v5);
  v17 = *(v2 + 392);
LABEL_21:
  v18 = *(v2 + 232);

  v3 = v6[2];
  swift_beginAccess();
  if (!v3)
  {
    v179 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v19 = 0;
  v20 = (*(v2 + 296) + 8);
  v181 = -v3;
  v179 = MEMORY[0x1E69E7CC0];
  do
  {
    v0 = &v6[2 * v19++ + 5];
    while (1)
    {
      if ((v19 - 1) >= v6[2])
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v21 = *(v2 + 352);
      v22 = *v0;
      v23 = *(v0 - 1);
      v24 = v22;
      v25 = [v23 uniqueIdentifier];
      sub_1D1E66A5C();

      v3 = *(v18 + 136);
      if (!*(v3 + 16))
      {
        goto LABEL_32;
      }

      v26 = *(v2 + 352);
      v27 = *(v18 + 136);

      v28 = sub_1D1742188(v26);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v30 = *(v2 + 352);
      v31 = *(v2 + 288);
      v4 = *(v2 + 224);
      v32 = *(*(v3 + 56) + 8 * v28);
      (*v20)(v30, v31);

      v33 = v32 > v4;
      v2 = v172;
      if (!v33)
      {
        goto LABEL_33;
      }

      ++v19;
      v0 = (v0 + 16);
      if (v181 + v19 == 1)
      {
        goto LABEL_40;
      }
    }

LABEL_32:
    (*v20)(*(v2 + 352), *(v2 + 288));
LABEL_33:
    v3 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D178D6E4(0, *(v179 + 16) + 1, 1);
      v3 = v179;
    }

    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v4 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_1D178D6E4((v34 > 1), v35 + 1, 1);
      v3 = v179;
    }

    *(v3 + 16) = v4;
    v179 = v3;
    v36 = v3 + 16 * v35;
    *(v36 + 32) = v23;
    *(v36 + 40) = v22;
  }

  while (v181 + v19);
LABEL_40:

  v37 = *(v179 + 16);
  if (v37)
  {
    v38 = 0;
    v182 = *(v2 + 296);
    v0 = (v179 + 40);
    while (v38 < *(v179 + 16))
    {
      v39 = *v0;
      v40 = *(v0 - 1);
      v41 = v39;
      if (v40)
      {
        v42 = *(v2 + 344);

        v4 = [v40 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v3 = *(v18 + 136);
        v43 = sub_1D1742188(v42);
        if (v44)
        {
          v45 = v43;
          v46 = *(v18 + 136);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v3 = *(v18 + 136);
          *(v18 + 136) = 0x8000000000000000;
          if (!v47)
          {
            sub_1D1739E3C();
          }

          v4 = *(v2 + 344);
          v48 = *(v2 + 288);
          v49 = *(v182 + 8);
          v49(*(v3 + 48) + *(v182 + 72) * v45, v48);
          sub_1D1750CA4(v45, v3);
          v49(v4, v48);
          v2 = v172;
          *(v18 + 136) = v3;
        }

        else
        {
          (*(v182 + 8))(*(v2 + 344), *(v2 + 288));
        }

        ++v38;
        swift_endAccess();
        v0 = (v0 + 16);
        if (v37 != v38)
        {
          continue;
        }
      }

      goto LABEL_50;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    result = (v0)(v3, v4);
    __break(1u);
    return result;
  }

LABEL_50:
  if (v176)
  {
    v50 = v176;
    v51 = sub_1D1E6655C();
    v155 = [v51 code];
    v52 = [v51 domain];
    v53 = sub_1D1E6781C();
    v153 = v54;
    v154 = v53;

    v152 = 2;
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v152 = 3;
    v155 = 1;
  }

  v4 = *(v2 + 296);
  v55 = *(v2 + 240);
  v56 = sub_1D1A9D6A4(v179);

  v151 = v55 + 64;
  v57 = -1 << *(v55 + 32);
  if (-v57 < 64)
  {
    v58 = ~(-1 << -v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(v55 + 64);
  v150 = (63 - v57) >> 6;
  v160 = (v4 + 32);
  v156 = v55;
  v157 = v4;
  v165 = (v4 + 16);
  v166 = (v4 + 8);

  v0 = 0;
  v60 = 0;
  while (1)
  {
    *(v2 + 408) = v56;
    v161 = v56;
    if (v59)
    {
      v61 = v59;
      v180 = v0;
      v3 = v60;
LABEL_67:
      v63 = *(v2 + 336);
      v64 = *(v2 + 288);
      v65 = *(v2 + 272);
      v159 = (v61 - 1) & v61;
      v66 = __clz(__rbit64(v61)) | (v3 << 6);
      (*(v157 + 16))(v63, *(v156 + 48) + *(v157 + 72) * v66, v64);
      v67 = *(*(v156 + 56) + 8 * v66);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
      v69 = *(v68 + 48);
      (*(v157 + 32))(v65, v63, v64);
      *(v65 + v69) = v67;
      (*(*(v68 - 8) + 56))(v65, 0, 1, v68);

      v158 = v3;
    }

    else
    {
      if (v150 <= v60 + 1)
      {
        v62 = v60 + 1;
      }

      else
      {
        v62 = v150;
      }

      while (1)
      {
        v3 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_155;
        }

        if (v3 >= v150)
        {
          break;
        }

        v61 = *(v151 + 8 * v3);
        ++v60;
        if (v61)
        {
          v180 = v0;
          goto LABEL_67;
        }
      }

      v158 = v62 - 1;
      v180 = v0;
      v140 = *(v2 + 272);
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
      (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
      v159 = 0;
    }

    v70 = *(v2 + 280);
    sub_1D1741A90(*(v2 + 272), v70, &qword_1EC649C90, &qword_1D1E96120);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
    {
      goto LABEL_143;
    }

    v72 = *(v2 + 288);
    v73 = *(*(v2 + 280) + *(v71 + 48));
    (*v160)(*(v2 + 328));
    v74 = 0;
    v75 = v73 + 64;
    v162 = v73;
    v76 = -1 << *(v73 + 32);
    if (-v76 < 64)
    {
      v77 = ~(-1 << -v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v73 + 64);
    v4 = (63 - v76) >> 6;
    v0 = v180;
    v163 = v4;
    v164 = v73 + 64;
LABEL_73:
    if (!v78)
    {
      if (v4 <= v74 + 1)
      {
        v80 = v74 + 1;
      }

      else
      {
        v80 = v4;
      }

      v81 = v80 - 1;
      while (1)
      {
        v79 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v79 >= v4)
        {
          v169 = 0;
          *(v2 + 88) = 0;
          *(v2 + 72) = 0u;
          *(v2 + 56) = 0u;
          goto LABEL_83;
        }

        v78 = *(v75 + 8 * v79);
        ++v74;
        if (v78)
        {
          goto LABEL_82;
        }
      }

LABEL_142:
      __break(1u);
LABEL_143:
      v143 = *(v2 + 256);
      v142 = *(v2 + 264);
      v145 = *(v2 + 232);
      v144 = *(v2 + 240);

      sub_1D1757A60(v155, v154, v153, v152);
      *(v2 + 416) = *(v145 + 112);

      sub_1D1A97080(v161, v2 + 176);
      v146 = *(v2 + 192);
      *v142 = *(v2 + 176);
      *(v142 + 16) = v146;
      swift_storeEnumTagMultiPayload();
      v147 = swift_task_alloc();
      *(v2 + 424) = v147;
      *v147 = v2;
      v147[1] = sub_1D1AA06A8;
      v148 = *(v2 + 264);

      return sub_1D1AB6894(v148, 0, 0, 0, 0);
    }

    v79 = v74;
LABEL_82:
    v169 = (v78 - 1) & v78;
    v82 = __clz(__rbit64(v78)) | (v79 << 6);
    v4 = *(*(v162 + 48) + v82);
    sub_1D1741970(*(v162 + 56) + 32 * v82, v2 + 96);
    *(v2 + 56) = v4;
    sub_1D1742194((v2 + 96), (v2 + 64));
    v81 = v79;
LABEL_83:
    *(v2 + 48) = *(v2 + 88);
    v83 = *(v2 + 72);
    *(v2 + 16) = *(v2 + 56);
    *(v2 + 32) = v83;
    v84 = *(v2 + 328);
    if (*(v2 + 48))
    {
      break;
    }

    (*v166)(*(v2 + 328), *(v2 + 288));

    v60 = v158;
    v59 = v159;
    v56 = v161;
  }

  v167 = v81;
  v85 = *(v2 + 312);
  v4 = *(v2 + 320);
  v86 = *(v2 + 288);
  v87 = *(v2 + 248);
  v183 = *(v2 + 16);
  v88 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  v89 = *(v88 + 168);
  v90 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v91 = v89(v90, v88);
  v92 = *v165;
  (*v165)(v4, v84, v86);
  v92(v85, v84, v86);
  v168 = v91 >> 62;
  v93 = v91 & 0xFFFFFFFFFFFFFF8;
  if (v91 >> 62)
  {
    v178 = sub_1D1E6873C();
  }

  else
  {
    v178 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = 0;
  v177 = v91 & 0xC000000000000001;
  v170 = v91;
  v175 = v91 + 32;
  v2 = v172;
  v171 = v91 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v94 == v178)
    {
      v3 = v178;
      if (!v168)
      {
        goto LABEL_112;
      }

LABEL_115:
      v115 = sub_1D1E6873C();
LABEL_116:
      if (v3 == v115)
      {
        v116 = *(v2 + 312);
        v117 = *(v2 + 288);
        v118 = *v166;
        (*v166)(*(v2 + 320), v117);

        v118(v116, v117);
        __swift_destroy_boxed_opaque_existential_1((v2 + 24));
        v74 = v167;
        v4 = v163;
        v75 = v164;
        v78 = v169;
        goto LABEL_73;
      }

      if (v177)
      {
        v119 = v0;
        v120 = MEMORY[0x1D3891EF0](v3, v170);
      }

      else
      {
        if (v3 >= *(v93 + 16))
        {
          goto LABEL_159;
        }

        v119 = v0;
        v120 = *(v175 + 8 * v3);
      }

      v121 = v120;
      v122 = *(v2 + 320);
      v123 = *(v2 + 288);
      v124 = sub_1D1A8F820(v120, v122, v183);
      v0 = *v166;
      (*v166)(v122, v123);

      v3 = *(v2 + 312);
      v4 = *(v2 + 288);
      if (!v124)
      {
        goto LABEL_161;
      }

      v0(v3, v4);
      v125 = v161;
      if (*(v161 + 16))
      {
        sub_1D171D368(v124);
        v125 = v161;
        if (v126)
        {

LABEL_138:
          v0 = v119;
          v4 = v163;
          v75 = v164;
          __swift_destroy_boxed_opaque_existential_1((v2 + 24));
          v74 = v167;
          v78 = v169;
          goto LABEL_73;
        }
      }

      sub_1D17418FC(v155, v154, v153, v152);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v125;
      v127 = sub_1D171D368(v124);
      v3 = v161;
      v129 = *(v161 + 16);
      v130 = (v128 & 1) == 0;
      v15 = __OFADD__(v129, v130);
      v131 = v129 + v130;
      if (v15)
      {
        goto LABEL_160;
      }

      v132 = v128;
      if (*(v161 + 24) < v131)
      {
        sub_1D172629C(v131, v4);
        v127 = sub_1D171D368(v124);
        if ((v132 & 1) != (v133 & 1))
        {
          goto LABEL_148;
        }

        v3 = v184;
        if ((v132 & 1) == 0)
        {
          goto LABEL_136;
        }

LABEL_132:
        v134 = *(v3 + 56) + 32 * v127;
        v135 = *v134;
        v136 = *(v134 + 8);
        v137 = *(v134 + 16);
        *v134 = v155;
        *(v134 + 8) = v154;
        *(v134 + 16) = v153;
        v138 = *(v134 + 24);
        *(v134 + 24) = v152;
        sub_1D1757A60(v135, v136, v137, v138);

LABEL_137:
        v161 = v3;
        goto LABEL_138;
      }

      if (v4)
      {
        if (v128)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v139 = v127;
        sub_1D1737AA0();
        v127 = v139;
        v3 = v184;
        if (v132)
        {
          goto LABEL_132;
        }
      }

LABEL_136:
      sub_1D19DB4F8(v127, v124, v155, v154, v153, v152, v3);
      goto LABEL_137;
    }

    if (v177)
    {
      v96 = MEMORY[0x1D3891EF0](v94, v170);
      goto LABEL_93;
    }

    if (v94 < *(v93 + 16))
    {
      v96 = *(v175 + 8 * v94);
LABEL_93:
      v95 = v96;
      v97 = *(v2 + 312);
      v98 = [v96 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v4 = sub_1D1E67C1C();

      v99 = swift_task_alloc();
      *(v99 + 16) = v97;
      v100 = sub_1D174A6C4(sub_1D1AA5568, v99, v4);

      if (v100)
      {
        v4 = [v100 characteristics];
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v101 = sub_1D1E67C1C();

        v173 = v95;
        v174 = v94;
        if (v101 >> 62)
        {
          v102 = sub_1D1E6873C();
          if (v102)
          {
LABEL_96:
            v103 = 0;
            v2 = v101 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v101 & 0xC000000000000001) != 0)
              {
                v104 = MEMORY[0x1D3891EF0](v103, v101);
              }

              else
              {
                if (v103 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_141;
                }

                v104 = *(v101 + 8 * v103 + 32);
              }

              v105 = v104;
              v106 = v103 + 1;
              if (__OFADD__(v103, 1))
              {
                __break(1u);
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

              v107 = [v104 characteristicType];
              v108 = sub_1D1E6781C();
              v110 = v109;

              v111._countAndFlagsBits = v108;
              v111._object = v110;
              CharacteristicKind.init(rawValue:)(v111);
              v4 = CharacteristicKind.rawValue.getter();
              v113 = v112;
              if (v4 == CharacteristicKind.rawValue.getter() && v113 == v114)
              {
                break;
              }

              v4 = sub_1D1E6904C();

              if (v4)
              {
                goto LABEL_111;
              }

              ++v103;
              if (v106 == v102)
              {
                goto LABEL_87;
              }
            }

LABEL_111:

            v2 = v172;
            v93 = v171;
            v3 = v174;
            if (v168)
            {
              goto LABEL_115;
            }

LABEL_112:
            v115 = *(v93 + 16);
            goto LABEL_116;
          }
        }

        else
        {
          v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v102)
          {
            goto LABEL_96;
          }
        }

LABEL_87:

        v2 = v172;
        v95 = v173;
        v93 = v171;
        v94 = v174;
      }

      v15 = __OFADD__(v94++, 1);
      if (v15)
      {
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1AA06A8(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 432) = a1;

  sub_1D1AA3F34(v4, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA0814, v5, 0);
}

uint64_t sub_1D1AA0814()
{
  v1 = *(v0 + 432);
  if (*(v0 + 400))
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 376);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v39 = *(v0 + 320);
    v40 = *(v0 + 312);
    v41 = *(v0 + 304);
    v42 = *(v0 + 280);
    v44 = *(v0 + 272);
    v46 = *(v0 + 264);

    swift_willThrow();

    v8 = *(v0 + 8);
    goto LABEL_10;
  }

  v9 = *(v0 + 304);
  v10 = [*(v0 + 248) uniqueIdentifier];
  sub_1D1E66A5C();

  v11 = *(v1 + 16);
  v12 = *(v0 + 304);
  if (!v11)
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 432);

    (*(v26 + 8))(v12, v25);
LABEL_8:
    v23 = type metadata accessor for StateSnapshot(0);
    v22 = *(v23 - 8);
    v24 = 1;
    goto LABEL_9;
  }

  v13 = sub_1D1742188(*(v0 + 304));
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 288);
  if ((v17 & 1) == 0)
  {
    v28 = *(v0 + 432);

    (*(v15 + 8))(v14, v16);
    goto LABEL_8;
  }

  v18 = v13;
  v19 = *(v0 + 208);
  v20 = *(*(v0 + 432) + 56);
  v21 = type metadata accessor for StateSnapshot(0);
  v22 = *(v21 - 8);
  sub_1D1AA43E0(v20 + *(v22 + 72) * v18, v19, type metadata accessor for StateSnapshot);
  (*(v15 + 8))(v14, v16);

  v23 = v21;
  v24 = 0;
LABEL_9:
  v29 = *(v0 + 408);
  v30 = *(v0 + 376);
  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v34 = *(v0 + 328);
  v33 = *(v0 + 336);
  v36 = *(v0 + 312);
  v35 = *(v0 + 320);
  v37 = *(v0 + 304);
  v43 = *(v0 + 280);
  v45 = *(v0 + 272);
  v47 = *(v0 + 264);
  (*(v22 + 56))(*(v0 + 208), v24, 1, v23);

  v8 = *(v0 + 8);
LABEL_10:

  return v8();
}

uint64_t sub_1D1AA0B60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA8, &qword_1D1E96180);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA0C2C, 0, 0);
}

uint64_t sub_1D1AA0C2C()
{
  v1 = v0[8];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  sub_1D17D8EA8(&qword_1EC649CB0, &qword_1EC649C68, &qword_1D1E960B0);
  sub_1D1E6801C();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180);
  v3 = *(MEMORY[0x1E69E85B0] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AA0D8C;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t sub_1D1AA0D8C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D1AA105C;
  }

  else
  {
    v3 = sub_1D1AA0E9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AA0E9C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1D177E664(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D177E664((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = v1;
    *(v0 + 72) = v4;
    sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180);
    v7 = *(MEMORY[0x1E69E85B0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1D1AA0D8C;
    v9 = *(v0 + 64);
    v10 = *(v0 + 48);

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v11 = *(v0 + 64);
    **(v0 + 32) = 0;

    v12 = *(v0 + 8);
    v13 = *(v0 + 72);

    return v12(v13);
  }
}

uint64_t sub_1D1AA105C()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 64);
  **(v0 + 32) = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2(v3);
}

void sub_1D1AA10E0(void *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 service];
  if (v7)
  {
    v46 = v7;
    v8 = a1;
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6832C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v11 = 136315906;
      v12 = [v8 characteristicType];
      v44 = v10;
      v13 = v12;
      v14 = sub_1D1E6781C();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      CharacteristicKind.init(rawValue:)(v17);
      v18 = v50;
      if (v50 == 174)
      {
        v18 = 0;
      }

      v49 = v18;
      v19 = sub_1D1E6789C();
      v21 = sub_1D1B1312C(v19, v20, &v51);

      *(v11 + 4) = v21;
      *(v11 + 12) = 2080;
      v22 = [v8 characteristicType];
      v23 = sub_1D1E6781C();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      CharacteristicKind.init(rawValue:)(v26);
      v27 = v48;
      if (v48 == 174)
      {
        v27 = 0;
      }

      v47 = v27;
      v28 = sub_1D1D8227C();
      v30 = sub_1D1B1312C(v28, v29, &v51);

      *(v11 + 14) = v30;
      *(v11 + 22) = 2080;
      v31 = [v46 name];
      v32 = sub_1D1E6781C();
      v34 = v33;

      v35 = sub_1D1B1312C(v32, v34, &v51);

      *(v11 + 24) = v35;
      *(v11 + 32) = 2082;
      v36 = [v46 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v37 = sub_1D1E68FAC();
      v39 = v38;

      (*(v3 + 8))(v6, v2);
      v40 = sub_1D1B1312C(v37, v39, &v51);

      *(v11 + 34) = v40;
      _os_log_impl(&dword_1D16EC000, v9, v44, "\t %s/%s - %s (%{public}s)", v11, 0x2Au);
      v41 = v45;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v41, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {

      v42 = v46;
    }
  }
}

uint64_t sub_1D1AA14F8(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v131 = a5;
  v132 = a8;
  v128 = a3;
  v129 = a4;
  v127 = a2;
  v123 = a7;
  v124 = sub_1D1E6702C();
  v130 = *(v124 - 8);
  v9 = *(v130 + 64);
  v10 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v116 = &v115 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v115 - v16;
  v17 = sub_1D1E66FDC();
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = *(v125 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v120 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v115 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v119 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v115 - v25;
  v26 = sub_1D1E66A7C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v115 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v115 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v115 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D00, &qword_1D1E96228);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = (&v115 - v43);
  (*(v41 + 16))(&v115 - v43, a1, v40);
  v45 = (*(v41 + 88))(v44, v40);
  if (v45 != *MEMORY[0x1E69E8758])
  {
    v60 = *(v27 + 16);
    if (v45 == *MEMORY[0x1E69E8760])
    {
      v61 = v26;
      v60(v39, v127, v26);
      v62 = sub_1D1E6707C();
      v44 = sub_1D1E6833C();
      v63 = os_log_type_enabled(v62, v44);
      v64 = v130;
      v40 = v132;
      if (v63)
      {
        v26 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v136 = v65;
        *v26 = 136446210;
        sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v66 = sub_1D1E68FAC();
        v68 = v67;
        (*(v27 + 8))(v39, v61);
        v69 = sub_1D1B1312C(v66, v68, &v136);

        *(v26 + 4) = v69;
        _os_log_impl(&dword_1D16EC000, v62, v44, "Batch read operation cancelled (ID: %{public}s)", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        v70 = v65;
        v40 = v132;
        MEMORY[0x1D3893640](v70, -1, -1);
        MEMORY[0x1D3893640](v26, -1, -1);
      }

      else
      {

        (*(v27 + 8))(v39, v26);
      }

      v27 = v131;
      v46 = sub_1D1E66FFC();
      v41 = v121;
      sub_1D1E6703C();
      v37 = sub_1D1E683DC();
      result = sub_1D1E6855C();
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v123)
      {
        v93 = v124;
        if (HIDWORD(v27))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((v27 & 0xFFFFF800) == 0xD800)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v27 >> 16 > 0x10)
        {
          goto LABEL_74;
        }

        v27 = &v135;
      }

      else
      {
        v93 = v124;
        if (!v27)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v103 = v116;
      sub_1D1E6706C();

      if ((*(v64 + 88))(v103, v93) == *MEMORY[0x1E69E93E8])
      {
        v104 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v103, v93);
        v104 = "Batch read canceled";
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v46, v37, v108, v27, v104, v107, 2u);
      MEMORY[0x1D3893640](v107, -1, -1);
      goto LABEL_56;
    }

    v60(v37, v127, v26);
    v46 = sub_1D1E6707C();
    v71 = sub_1D1E6833C();
    if (os_log_type_enabled(v46, v71))
    {
      v72 = swift_slowAlloc();
      v127 = v72;
      v128 = swift_slowAlloc();
      v136 = v128;
      *v72 = 136446210;
      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v73 = sub_1D1E68FAC();
      v75 = v74;
      (*(v27 + 8))(v37, v26);
      v76 = sub_1D1B1312C(v73, v75, &v136);

      v77 = v127;
      *(v127 + 1) = v76;
      v78 = v77;
      _os_log_impl(&dword_1D16EC000, v46, v71, "Batch read operation terminated with unknown reason (ID: %{public}s)", v77, 0xCu);
      v79 = v128;
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x1D3893640](v79, -1, -1);
      MEMORY[0x1D3893640](v78, -1, -1);

      goto LABEL_24;
    }

LABEL_23:

    (*(v27 + 8))(v37, v26);
LABEL_24:
    v94 = v130;
    v31 = v131;
    v95 = v120;
    v80 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v27 = sub_1D1E683DC();
    result = sub_1D1E6855C();
    if (result)
    {
      LODWORD(v131) = v27;
      if (v123)
      {
        v96 = v124;
        if (v31 >> 32)
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if ((v31 & 0xFFFFF800) == 0xD800)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v31 >> 16 > 0x10)
        {
          goto LABEL_75;
        }

        v31 = &v137;
      }

      else
      {
        v96 = v124;
        if (!v31)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      v105 = v117;
      sub_1D1E6706C();

      if ((*(v94 + 88))(v105, v96) == *MEMORY[0x1E69E93E8])
      {
        v106 = "[Error] Interval already ended";
      }

      else
      {
        (*(v94 + 8))(v105, v96);
        v106 = "Batch read canceled";
      }

      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v80, v131, v110, v31, v106, v109, 2u);
      MEMORY[0x1D3893640](v109, -1, -1);
    }

    (*(v125 + 8))(v95, v126);
    return (*(v41 + 8))(v44, v40);
  }

  (*(v41 + 96))(v44, v40);
  v46 = *v44;
  if (*v44)
  {
    v47 = v26;
    (*(v27 + 16))(v34, v127, v26);
    v48 = v46;
    v49 = sub_1D1E6707C();
    v50 = sub_1D1E6833C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v136 = v52;
      *v51 = 136446466;
      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v53 = sub_1D1E68FAC();
      v55 = v54;
      (*(v27 + 8))(v34, v47);
      v56 = sub_1D1B1312C(v53, v55, &v136);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      swift_getErrorValue();
      v57 = sub_1D1E6915C();
      v59 = sub_1D1B1312C(v57, v58, &v136);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_1D16EC000, v49, v50, "Batch read operation failed (ID: %{public}s): %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v52, -1, -1);
      MEMORY[0x1D3893640](v51, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v34, v26);
    }

    v41 = v131;
    v31 = v122;
    v88 = sub_1D1E66FFC();
    sub_1D1E6703C();
    LOBYTE(v89) = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v91 = v130;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }

    if ((v123 & 1) == 0)
    {
      v92 = v124;
      if (!v41)
      {
        __break(1u);
LABEL_17:

        return (*(v125 + 8))(v31, v126);
      }

LABEL_37:

      v99 = v118;
      sub_1D1E6706C();

      if ((*(v91 + 88))(v99, v92) == *MEMORY[0x1E69E93E8])
      {
        v100 = "[Error] Interval already ended";
      }

      else
      {
        (*(v91 + 8))(v99, v92);
        v100 = "Batch read terminated successfully";
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v88, v89, v102, v41, v100, v101, 2u);
      MEMORY[0x1D3893640](v101, -1, -1);

      return (*(v125 + 8))(v31, v126);
    }

    goto LABEL_33;
  }

  v41 = v26;
  (*(v27 + 16))(v31, v127, v26);
  v80 = sub_1D1E6707C();
  v81 = sub_1D1E6835C();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v136 = v83;
    *v82 = 136446210;
    sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v84 = sub_1D1E68FAC();
    v86 = v85;
    (*(v27 + 8))(v31, v41);
    v87 = sub_1D1B1312C(v84, v86, &v136);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_1D16EC000, v80, v81, "Batch read operation completed successfully (ID: %{public}s)", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1D3893640](v83, -1, -1);
    MEMORY[0x1D3893640](v82, -1, -1);

    goto LABEL_29;
  }

LABEL_28:

  (*(v27 + 8))(v31, v41);
LABEL_29:
  v89 = v130;
  v91 = v132;
  v46 = sub_1D1E66FFC();
  v41 = v119;
  sub_1D1E6703C();
  v88 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  v97 = v131;
  if ((result & 1) == 0)
  {
LABEL_56:

    return (*(v125 + 8))(v41, v126);
  }

  if (v123)
  {
    v98 = v124;
    if (HIDWORD(v131))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ((v131 & 0xFFFFF800) == 0xD800)
    {
LABEL_81:
      __break(1u);
      return result;
    }

    if (v131 >> 16 > 0x10)
    {
      goto LABEL_77;
    }

    v97 = &v134;
  }

  else
  {
    v98 = v124;
    if (!v131)
    {
      __break(1u);
LABEL_33:
      v92 = v124;
      if (HIDWORD(v41))
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 0xFFFFF800) == 0xD800)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v41 >> 16 <= 0x10)
        {
          v41 = &v133;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v111 = v115;
  sub_1D1E6706C();

  if ((*(v89 + 88))(v111, v98) == *MEMORY[0x1E69E93E8])
  {
    v112 = "[Error] Interval already ended";
  }

  else
  {
    (*(v89 + 8))(v111, v98);
    v112 = "Batch read terminated successfully";
  }

  v113 = swift_slowAlloc();
  *v113 = 0;
  v114 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v46, v88, v114, v97, v112, v113, 2u);
  MEMORY[0x1D3893640](v113, -1, -1);

  return (*(v125 + 8))(v41, v126);
}

uint64_t sub_1D1AA2524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC0, &qword_1D1E96188);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8;
      v10 = *(v8 - 1);
      v11 = v9;
      sub_1D1AA2684(v10, v9);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v13[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  sub_1D1E6809C();
  return (*(v3 + 8))(v6, v2);
}

void sub_1D1AA2684(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = a2;
    v5 = a2;
    v6 = v3;
    v7 = a2;
    v8 = a2;
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v11 = 136315650;
      v14 = [v6 characteristicType];
      v15 = sub_1D1E6781C();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      CharacteristicKind.init(rawValue:)(v18);
      v19 = sub_1D1E6789C();
      v21 = v20;

      v22 = sub_1D1B1312C(v19, v21, &v61);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2080;
      v23 = [v6 characteristicType];
      v24 = sub_1D1E6781C();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      CharacteristicKind.init(rawValue:)(v27);
      v28 = sub_1D1D8227C();
      v30 = v29;

      v31 = sub_1D1B1312C(v28, v30, &v61);

      *(v11 + 14) = v31;
      *(v11 + 22) = 2114;
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v33;
      *v12 = v33;
      _os_log_impl(&dword_1D16EC000, v9, v10, "\t❌ Failed to read characteristic: %s/%s with error: %{public}@", v11, 0x20u);
      sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);

      return;
    }

    v60 = a2;
  }

  else
  {
    v34 = a1;
    v35 = 0;
    v36 = v34;
    v37 = 0;
    v38 = sub_1D1E6707C();
    v39 = sub_1D1E6832C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136315394;
      v42 = [v36 characteristicType];
      v43 = sub_1D1E6781C();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      CharacteristicKind.init(rawValue:)(v46);
      v47 = sub_1D1E6789C();
      v49 = v48;

      v50 = sub_1D1B1312C(v47, v49, &v61);

      *(v40 + 4) = v50;
      *(v40 + 12) = 2080;
      v51 = [v36 characteristicType];
      v52 = sub_1D1E6781C();
      v54 = v53;

      v55._countAndFlagsBits = v52;
      v55._object = v54;
      CharacteristicKind.init(rawValue:)(v55);
      v56 = sub_1D1D8227C();
      v58 = v57;

      v59 = sub_1D1B1312C(v56, v58, &v61);

      *(v40 + 14) = v59;
      _os_log_impl(&dword_1D16EC000, v38, v39, "\t✅ Successfully read characteristic: %s/%s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v41, -1, -1);
      MEMORY[0x1D3893640](v40, -1, -1);

      return;
    }

    v60 = 0;
  }
}

uint64_t sub_1D1AA2B98(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  return sub_1D1E680AC();
}

uint64_t sub_1D1AA2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v17;
  *(v8 + 104) = v18;
  *(v8 + 64) = v15;
  *(v8 + 80) = v16;
  *(v8 + 48) = v14;
  *(v8 + 32) = a5;
  *(v8 + 40) = a8;
  *(v8 + 136) = a7;
  *(v8 + 24) = a4;
  v9 = sub_1D1E66A7C();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA2CCC, 0, 0);
}

uint64_t sub_1D1AA2CCC()
{
  v28 = v0;
  v1 = *(v0 + 24);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683FC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 136) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 40);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v8, v5, "Starting HomeKit batch operation", v7, 2u);
        MEMORY[0x1D3893640](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:

  v9 = *(v0 + 48);
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 56), *(v0 + 112));
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6831C();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 112);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v27[0] = v17;
    *v16 = 136446210;
    sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v18 = sub_1D1E68FAC();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_1D1B1312C(v18, v20, v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1D16EC000, v10, v11, "Starting HomeKit batch operation (ID: %{public}s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 64);
  v26 = *(v0 + 72);
  v24 = *(v0 + 96);
  v27[0] = *(v0 + 80);
  v27[1] = v24;
  HMHome.perform(batchReadRequest:handlers:)(&v26, v27);

  v25 = *(v0 + 8);

  return v25();
}

void sub_1D1AA2F94(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v57 - v9;
  v66 = sub_1D1E66A7C();
  v64 = *(v66 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_23;
  }

  v57 = v3;
  if (!*(a1 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v15 + 48);
  v19 = *(v63 + 80);
  v62 = a1;
  v20 = (v64 + 32);
  v58 = a1 + ((v19 + 32) & ~v19);
  sub_1D1741C08(v58, v17, &unk_1EC649E20, &unk_1D1E717B0);
  v21 = *v20;
  (*v20)(v12, v17, v66);
  v59 = v18;
  sub_1D1741A90(&v17[v18], v65, &qword_1EC642B60, &qword_1D1E7E800);
  v22 = *a3;
  v23 = sub_1D1742188(v12);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    sub_1D172CEA4(v28, a2 & 1);
    v30 = *a3;
    v23 = sub_1D1742188(v12);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_6:
      sub_1D1E690FC();
      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    if (v29)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v34 = v23;
  sub_1D173B84C();
  v23 = v34;
  if (v29)
  {
LABEL_10:
    v32 = swift_allocError();
    swift_willThrow();

    v69 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1741A30(v65, &qword_1EC642B60, &qword_1D1E7E800);
      (*(v64 + 8))(v12, v66);

      return;
    }

    goto LABEL_27;
  }

LABEL_13:
  v35 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  v36 = v23;
  v21((v35[6] + *(v64 + 72) * v23), v12, v66);
  sub_1D1741A90(v65, v35[7] + *(v61 + 72) * v36, &qword_1EC642B60, &qword_1D1E7E800);
  v37 = v35[2];
  v27 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v27)
  {
    v35[2] = v38;
    if (v60 == 1)
    {
LABEL_23:

      return;
    }

    v39 = &qword_1EC642B60;
    v40 = 1;
    while (v40 < *(v62 + 16))
    {
      sub_1D1741C08(v58 + *(v63 + 72) * v40, v17, &unk_1EC649E20, &unk_1D1E717B0);
      v41 = *v20;
      (*v20)(v12, v17, v66);
      v42 = v39;
      sub_1D1741A90(&v17[v59], v65, v39, &qword_1D1E7E800);
      v43 = *a3;
      v44 = sub_1D1742188(v12);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v27 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v27)
      {
        goto LABEL_25;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_1D172CEA4(v48, 1);
        v50 = *a3;
        v44 = sub_1D1742188(v12);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v49)
      {
        goto LABEL_10;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      v41((v52[6] + *(v64 + 72) * v44), v12, v66);
      v54 = v52[7] + *(v61 + 72) * v53;
      v39 = v42;
      sub_1D1741A90(v65, v54, v42, &qword_1D1E7E800);
      v55 = v52[2];
      v27 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      ++v40;
      v52[2] = v56;
      if (v60 == v40)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC3EC0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  sub_1D1E68AFC();
  __break(1u);
}

uint64_t sub_1D1AA35F0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v2, v14);
  sub_1D1E66E1C();
  (*(v10 + 8))(v13, v3);
  return sub_1D1E6858C();
}

uint64_t sub_1D1AA3748(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1D1AA3854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D17C4BFC;

  return sub_1D1A9878C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1D1AA394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D17C4CF0;

  return sub_1D1A9AE94(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1D1AA3A44(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A90060(a1, a2, v7, v6);
}

uint64_t sub_1D1AA3AF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1AA3B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    if (a2)
    {
      v14 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v9 << 6)));
      v12 = HMService.subscript.getter(&v14);
      if (v12)
      {
        sub_1D1764A98(&v13, v12);
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D1AA3C58()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0[6];
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1D17C4CF0;

  JUMPOUT(0x1D1AA3854);
}

uint64_t sub_1D1AA3DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1B0AAFC(a1, v4, v5, v6);
}

uint64_t sub_1D1AA3E80(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A93948(a1, a2, v7, v6);
}

uint64_t sub_1D1AA3F34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1AA4094(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1D1AA4128(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v18 = *(v1 + 16);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + v8 + 16);
  v15 = *(v1 + ((v8 + 31) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D17C4CF0;

  return sub_1D1A9F1DC(a1, v18, v9, v1 + v5, v10, v11, v12);
}

uint64_t sub_1D1AA42AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1A9ED94(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_1D1AA43E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AA4448(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B076BC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D1AA4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1AA45A0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0[6];
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1D17C4CF0;

  JUMPOUT(0x1D1AA394CLL);
}

uint64_t sub_1D1AA4714(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B0AC54(a1, v7, v4, v5, v6, v8);
}

uint64_t sub_1D1AA47E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v65 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v51 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v52 = v9;
  for (i = v5; ; v5 = i)
  {
    v17 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v19 = __clz(__rbit64(v8)) | (v17 << 6);
    v20 = *(*(a1 + 48) + 8 * v19);
    v21 = *(a1 + 56) + 32 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v58 = v20;
    v59 = v22;
    v60 = v23;
    v61 = v24;
    v62 = v25;
    v26 = v20;
    sub_1D17418FC(v22, v23, v24, v25);
    a2(v63, &v58);
    v27 = v59;
    v28 = v60;
    v29 = v61;
    LOBYTE(v23) = v62;

    sub_1D1757A60(v27, v28, v29, v23);
    v30 = v63[0];
    if (!v63[0])
    {
LABEL_22:
      sub_1D1716918();
    }

    v32 = v63[1];
    v31 = v63[2];
    v33 = v63[3];
    v34 = v64;
    v35 = *v65;
    v36 = sub_1D171D368(v63[0]);
    v38 = *(v35 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_24;
    }

    v42 = v37;
    if (*(v35 + 24) >= v41)
    {
      if ((a4 & 1) == 0)
      {
        v57 = v36;
        sub_1D1737AA0();
        v36 = v57;
      }
    }

    else
    {
      v43 = v65;
      sub_1D172629C(v41, a4 & 1);
      v44 = *v43;
      v36 = sub_1D171D368(v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }
    }

    v8 &= v8 - 1;
    v46 = *v65;
    if (v42)
    {
      v11 = v36;

      v12 = v46[7] + 32 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      *v12 = v32;
      *(v12 + 8) = v31;
      *(v12 + 16) = v33;
      v16 = *(v12 + 24);
      *(v12 + 24) = v34;
      sub_1D1757A60(v13, v14, v15, v16);
    }

    else
    {
      v46[(v36 >> 6) + 8] |= 1 << v36;
      *(v46[6] + 8 * v36) = v30;
      v47 = v46[7] + 32 * v36;
      *v47 = v32;
      *(v47 + 8) = v31;
      *(v47 + 16) = v33;
      *(v47 + 24) = v34;
      v48 = v46[2];
      v40 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v46[2] = v49;
    }

    a4 = 1;
    v10 = v17;
    v9 = v52;
  }

  v18 = v10;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(v5 + 8 * v17);
    ++v18;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1AA4AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A9407C(a1, v4, v5, v6, v7, v8);
}

void *sub_1D1AA4B90()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D1AA4BF4(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D1E6709C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1D1E6701C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = v1 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + ((v11 + 31) & 0xFFFFFFFFFFFFFFF8));
  v16 = *(v12 + 16);

  return sub_1D1AA14F8(a1, (v1 + v4), (v1 + v7), v1 + v10, v13, v14, v16, v15);
}

uint64_t sub_1D1AA4D6C(uint64_t a1)
{
  v2 = *(sub_1D1E6709C() - 8);
  v3 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8) + 80);

  return sub_1D1AA2524(a1);
}

uint64_t sub_1D1AA4E4C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8) + 80);

  return sub_1D1AA2B98(a1);
}

uint64_t sub_1D1AA4EC8(uint64_t a1)
{
  v2 = *(sub_1D1E6701C() - 8);
  v28 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D1E66FDC() - 8);
  v5 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1D1E6709C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1D1E66A7C() - 8);
  v11 = (*(v10 + 64) + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v1 + 24);
  v26 = *(v1 + 16);
  v14 = v1 + v3;
  v15 = *(v1 + v3);
  v16 = *(v14 + 8);
  v17 = *(v1 + v11);
  v18 = *(v1 + v12);
  v24 = *(v1 + v13);
  v19 = *(v1 + v13 + 16);
  v20 = *(v1 + v13 + 24);
  v21 = *(v14 + 16);
  v22 = swift_task_alloc();
  *(v27 + 16) = v22;
  *v22 = v27;
  v22[1] = sub_1D17C4CF0;

  return sub_1D1AA2BE8(a1, v26, v25, v1 + v28, v15, v16, v21, v1 + v5);
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1AA51CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1A904E4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  v10 = *&v0[v6];

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

void sub_1D1AA53A0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0[6];
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1D17C4BFC;

  JUMPOUT(0x1D1AA3854);
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

double HomeState.Stream.Config.init()@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842752;
  *a1 = 16842752;
  return result;
}

uint64_t HomeState.Stream.Config.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t HomeState.Stream.Config.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1AA5758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1AA582C()
{
  result = qword_1EC649D08[0];
  if (!qword_1EC649D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC649D08);
  }

  return result;
}

uint64_t _s6ConfigVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6ConfigVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D1AA59DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_1D1742188(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = sub_1D1E66A7C();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

uint64_t sub_1D1AA5B10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1D1742188(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_1D1E66A7C();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_1D1AAE3F4(v23 + *(v31 + 72) * v22, a6, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1D1AA5CD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D1742188(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D173E908();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1D1E66A7C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1D1757DE0(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1D1AA5D98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[5] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5E34, v3, 0);
}

uint64_t sub_1D1AA5E34()
{
  v22 = v0;
  v1 = v0[3];
  v20 = MEMORY[0x1E69E7CC8];
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[3] + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1D3891EF0](v3, v0[3]);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_12;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v21 = v7;
      v1 = 0;
      sub_1D1A93630(&v20, &v21);

      ++v3;
      if (v9 == i)
      {
        v10 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_15:
  v0[6] = v10;
  v12 = v0[4];
  v11 = v0[5];
  v13 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v14 = swift_task_alloc();
  v0[7] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
  v17 = *(MEMORY[0x1E69E87D8] + 4);
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_1D1AA60AC;
  v24 = v16;

  return MEMORY[0x1EEE6DBF8](v0 + 2, v15, v16, v11, v13, &unk_1D1E960E8, v14, v15);
}

uint64_t sub_1D1AA60AC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA61FC, v4, 0);
}

uint64_t sub_1D1AA6214()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  os_unfair_lock_unlock((v0 + 16));
  return Strong;
}

uint64_t sub_1D1AA6268(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(**(v1 + 32) + 120);
  sub_1D1AAE2C4(a1, v7, type metadata accessor for StateSnapshot.UpdateType);
  v14 = *(v4 + 52);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D1AA643C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v19[1] = *(**(v1 + 40) + 120);
  v15 = *(v4 + 52);
  v16 = *(a1 + 16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
  (*(*(v17 - 8) + 56))(&v7[v15], 1, 1, v17);
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = v16;
  sub_1D1A28388(v13, v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  sub_1D1E67ECC();
  return (*(v9 + 8))(v12, v8);
}

void sub_1D1AA6624(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29[-1] - v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 88);
  sub_1D1AB5660(a1, a3, v29);
  v18 = v30;
  if (v30 == 255)
  {
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6709C();
    __swift_project_value_buffer(v24, qword_1EC649730);
    v28 = sub_1D1E6707C();
    v25 = sub_1D1E6834C();
    if (os_log_type_enabled(v28, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D16EC000, v28, v25, "Received update for type that isnt an HM object! Haven't handled that case yet", v26, 2u);
      MEMORY[0x1D3893640](v26, -1, -1);
    }

    v27 = v28;
  }

  else
  {
    v20 = v29[0];
    v19 = v29[1];
    v21 = *(*v3[5] + 120);
    v22 = *(v7 + 44);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
    *v10 = v20;
    *(v10 + 1) = v19;
    v10[16] = v18;
    sub_1D1A28388(v20, v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    sub_1D1E67ECC();
    sub_1D1AADE88(v20, v19, v18);
    (*(v12 + 8))(v15, v11);
  }
}

void *sub_1D1AA694C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_1D1AA6984()
{
  sub_1D1AA694C();

  return swift_deallocClassInstance();
}

os_unfair_lock_s *sub_1D1AA69D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34[-1] - v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1AA6214();
  if (!v12 || (v13 = v12, swift_beginAccess(), v14 = *(v13 + 64), v15 = v14, , !v14))
  {
    v16 = sub_1D1AA6214();
    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = v16;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      swift_unknownObjectRetain();
    }

    swift_beginAccess();
    v15 = *(v17 + 64);
    *(v17 + 64) = v18;
  }

LABEL_8:
  if (sub_1D1AA6214())
  {
    sub_1D1A81190();
  }

  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v11);
  sub_1D1AAE264(v11, type metadata accessor for StateSnapshot.UpdateType);
  v34[0] = 0;
  v34[1] = 0;
  v35 = 4;
  sub_1D1AA643C(v34);
  v19 = sub_1D1AA6214();
  if (v19)
  {
    v20 = *(v19 + 24);

    LOBYTE(v34[0]) = 3;
    sub_1D1AFCA44(v34);
  }

  v21 = sub_1D1AA6214();
  if (v21)
  {
    v22 = v21;
    swift_beginAccess();
    if (*(*(v22 + 32) + 16))
    {
      sub_1D1ADB844();
    }
  }

  v23 = sub_1D1E67E7C();
  v24 = *(*(v23 - 8) + 56);
  v24(v7, 1, 1, v23);
  v25 = qword_1EC642358;
  swift_unknownObjectRetain();

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC64ABE8;
  v27 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = a1;
  v28[5] = a2;

  sub_1D17C6EF0(0, 0, v7, &unk_1D1E96528, v28);

  result = sub_1D1AA6214();
  if (result)
  {
    v30 = result;
    os_unfair_lock_lock(result + 4);
    os_unfair_lock_opaque_low = LOBYTE(v30[5]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v30 + 4);

    if (os_unfair_lock_opaque_low == 1)
    {
      v24(v7, 1, 1, v23);
      v32 = swift_allocObject();
      v32[2] = v26;
      v32[3] = v27;
      v32[4] = a1;

      sub_1D17C7E40(0, 0, v7, &unk_1D1E96538, v32);
    }
  }

  return result;
}

uint64_t sub_1D1AA6DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA6E88, v6, 0);
}

uint64_t sub_1D1AA6E88()
{
  v1 = *(v0[2] + 48);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D1AAE478;
  v3 = v0[3];

  return sub_1D1B10594(v3);
}

uint64_t sub_1D1AA6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[4] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA6FC0, v5, 0);
}

uint64_t sub_1D1AA6FC0()
{
  v1 = *(v0 + 24);
  v2 = sub_1D1AA6214();
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1D1AA70A0;

    return HomeState.Stream.fetchAllCharacteristics(in:)(0);
  }

  else
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D1AA70A0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA71D4, v4, 0);
}

uint64_t sub_1D1AA71F4()
{
  result = sub_1D1AA6214();
  if (result)
  {
    sub_1D1A81190();
  }

  return result;
}

uint64_t sub_1D1AA7244(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = sub_1D1E67E7C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  sub_1D1741C08(v9, v7, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = qword_1EC642358;
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC64ABE8;
  v14 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = sub_1D1AADBBC;
  v15[5] = v1;

  sub_1D17C6EF0(0, 0, v7, &unk_1D1E964E0, v15);

  sub_1D1741A30(v9, &unk_1EC6442C0, &qword_1D1E741A0);
  v11(v9, 1, 1, v10);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v16[5] = a1;

  swift_unknownObjectRetain();
  sub_1D17C6EF0(0, 0, v9, &unk_1D1E964F0, v16);
}

uint64_t sub_1D1AA74D8()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v1 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1AA6214())
  {
    sub_1D1A81190();
  }

  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v3);
  return sub_1D1AAE264(v3, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AA75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1AA6E88, 0, 0);
}

uint64_t sub_1D1AA75C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(v2 + 32);
  swift_unknownObjectRetain();
  v20 = a2;
  v21 = 0;
  sub_1D1AB8D74(&v20);
  sub_1D1AAE004(a2, 0);
  v11 = sub_1D1E67E7C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;

  swift_unknownObjectRetain();
  sub_1D17C6EF0(0, 0, v9, &unk_1D1E964C8, v13);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v15 = result;
    v12(v9, 1, 1, v11);
    v16 = qword_1EC642358;
    swift_unknownObjectRetain_n();

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EC64ABE8;
    v18 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v3;
    v19[5] = v15;

    sub_1D17C6EF0(0, 0, v9, &unk_1D1E964D8, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1AA783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1AA785C, 0, 0);
}

uint64_t sub_1D1AA785C()
{
  v1 = *(v0[2] + 48);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D17D0740;
  v3 = v0[3];

  return sub_1D1B10594(v3);
}

uint64_t sub_1D1AA78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA7990, v6, 0);
}

uint64_t sub_1D1AA7990()
{
  v1 = v0[2];
  v2 = sub_1D1AA6214();
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 4);
  os_unfair_lock_opaque_low = LOBYTE(v3[5]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 4);

  if (os_unfair_lock_opaque_low != 1)
  {
    goto LABEL_7;
  }

  v5 = v0[2];
  v6 = sub_1D1AA6214();
  v0[4] = v6;
  if (v6)
  {
    v7 = v0[3];
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1D1AA7AA0;

    return HomeState.Stream.fetchAllCharacteristics(in:)(v7);
  }

  else
  {
LABEL_7:
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D1AA7AA0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1AA7BBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1D1AA6214();
  if (v11)
  {
    v12 = *(v11 + 24);

    (*(*(*(v1 + 88) + 16) + 128))(*(v1 + 80));
    swift_getKeyPath();
    v16 = v12;
    sub_1D1AAE21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66CAC();

    v16 = v12;
    swift_getKeyPath();
    sub_1D1E66CCC();

    swift_beginAccess();
    sub_1D1AA5B10(v6, type metadata accessor for HomeState, type metadata accessor for HomeState, sub_1D1751C7C, sub_1D173BC84, v10);
    (*(v3 + 8))(v6, v2);
    sub_1D1741A30(v10, &qword_1EC649148, &qword_1D1E96490);
    swift_endAccess();
    v16 = v12;
    swift_getKeyPath();
    sub_1D1E66CBC();
  }

  else
  {
    v14 = type metadata accessor for HomeState();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    return sub_1D1741A30(v10, &qword_1EC649148, &qword_1D1E96490);
  }
}

uint64_t sub_1D1AA7FC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(v1 + 32);
  swift_unknownObjectRetain();
  v21 = a1;
  v22 = 0;
  sub_1D1AB8D74(&v21);
  sub_1D1AAE004(a1, 0);
  sub_1D1AA6624(a1, 0, 0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v14 = result;
      v15 = sub_1D1E67E7C();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = v13;
      v16[4] = v14;
      sub_1D1741C08(v10, v8, &unk_1EC6442C0, &qword_1D1E741A0);
      v17 = qword_1EC642358;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC64ABE8;
      v19 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = v19;
      v20[4] = sub_1D1AADEF0;
      v20[5] = v16;

      sub_1D17C6EF0(0, 0, v8, &unk_1D1E96568, v20);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    }
  }

  return result;
}

uint64_t sub_1D1AA82AC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  result = sub_1D1AA6214();
  if (result)
  {
    v9 = result;
    sub_1D1E682DC();
    if ((v10 & 1) == 0)
    {
      v11 = *(v9 + 128);
      sub_1D1AB3E34(a2);
    }

    os_unfair_lock_lock((v9 + 16));
    v12 = *(v9 + 22);
    os_unfair_lock_unlock((v9 + 16));
    if (v12 == 1)
    {
      swift_beginAccess();
      if (*(*(v9 + 32) + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D1E73FA0;
        *(v13 + 32) = a2;
        v14 = qword_1EC642328;
        v15 = a2;
        if (v14 != -1)
        {
          swift_once();
        }

        v16 = sub_1D1E6709C();
        __swift_project_value_buffer(v16, qword_1EC64A290);

        v17 = sub_1D1E6707C();
        v18 = sub_1D1E6835C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v35;
          *v19 = 136315138;
          v20 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
          v21 = MEMORY[0x1D3891260](v13, v20);
          v23 = sub_1D1B1312C(v21, v22, &v36);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_1D16EC000, v17, v18, "registerForAccessories() called on %s", v19, 0xCu);
          v24 = v35;
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x1D3893640](v24, -1, -1);
          MEMORY[0x1D3893640](v19, -1, -1);
        }

        sub_1D1ADD3A8(v13, 1);
      }
    }

    v25 = sub_1D1AA6214();
    if (v25)
    {
      v26 = v25;
      os_unfair_lock_lock(v25 + 4);
      v27 = BYTE1(v26[5]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 4);

      if (v27)
      {
        v28 = sub_1D1E67E7C();
        (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
        v29 = qword_1EC642358;
        v30 = a2;

        if (v29 != -1)
        {
          swift_once();
        }

        v31 = qword_1EC64ABE8;
        v32 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
        v33 = swift_allocObject();
        v33[2] = v31;
        v33[3] = v32;
        v33[4] = a1;
        v33[5] = v30;

        sub_1D17C7E40(0, 0, v7, &unk_1D1E96578, v33);
      }
    }
  }

  return result;
}

uint64_t sub_1D1AA8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v5[10] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA8738, v6, 0);
}

uint64_t sub_1D1AA8738()
{
  v1 = *(v0 + 64);
  v2 = sub_1D1AA6214();
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 96) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_1D1AA887C;

    return sub_1D1AA5D98(inited);
  }

  else
  {
    **(v0 + 56) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D1AA887C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = a1;

  swift_setDeallocating();
  v6 = *(v3 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA89EC, v5, 0);
}

uint64_t sub_1D1AA8A0C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(v1 + 32);
  swift_unknownObjectRetain();
  v21 = a1;
  v22 = 0;
  sub_1D1AB8D74(&v21);
  sub_1D1AAE004(a1, 0);
  sub_1D1AA6624(a1, 0, 0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v14 = result;
      v15 = sub_1D1E67E7C();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = v14;
      v16[4] = v13;
      sub_1D1741C08(v10, v8, &unk_1EC6442C0, &qword_1D1E741A0);
      v17 = qword_1EC642358;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC64ABE8;
      v19 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = v19;
      v20[4] = sub_1D1AADE9C;
      v20[5] = v16;

      sub_1D17C6EF0(0, 0, v8, &unk_1D1E96558, v20);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    }
  }

  return result;
}

uint64_t sub_1D1AA8CF0(uint64_t a1, void *a2)
{
  result = sub_1D1AA6214();
  if (result)
  {
    v4 = result;
    v5 = *(result + 128);
    sub_1D1AB40FC(a2);

    os_unfair_lock_lock((v4 + 16));
    LODWORD(v5) = *(v4 + 22);
    os_unfair_lock_unlock((v4 + 16));
    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D1E73FA0;
      *(v6 + 32) = a2;
      v7 = qword_1EC642328;
      v8 = a2;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = sub_1D1E6709C();
      __swift_project_value_buffer(v9, qword_1EC64A290);

      v10 = sub_1D1E6707C();
      v11 = sub_1D1E6835C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315138;
        v14 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v15 = MEMORY[0x1D3891260](v6, v14);
        v17 = sub_1D1B1312C(v15, v16, &v18);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1D16EC000, v10, v11, "unregisterForAccessories() called on %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1D3893640](v13, -1, -1);
        MEMORY[0x1D3893640](v12, -1, -1);
      }

      sub_1D1ADD3A8(v6, 0);
    }
  }

  return result;
}

uint64_t sub_1D1AA8F2C(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  v6 = *(v3 + 32);
  v8 = a2();
  v9 = a3;
  sub_1D1AB8D74(&v8);
  return sub_1D1AAE004(a1, a3);
}

uint64_t sub_1D1AA8FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1D1E67E2C();
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  swift_unknownObjectRetain();

  sub_1D17C6EF0(0, 0, v9, &unk_1D1E965B0, v11);
}

uint64_t sub_1D1AA90DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = *a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA91A4, 0, 0);
}

uint64_t sub_1D1AA91A4()
{
  v1 = v0[10];
  v2 = sub_1D1AA6214();
  v0[15] = v2;
  if (v2)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC64ABE8;
    v0[16] = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AA9284, v3, 0);
  }

  else
  {
    v4 = v0[14];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1AA9284()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 136) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA930C, 0, 0);
}

uint64_t sub_1D1AA930C()
{
  v1 = v0[17];
  v2 = v0[15];

  if (v1 && (v3 = v0[13], v0[8] = v0[17], sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0), v5 = *(v3 + 80), v4 = *(v3 + 88), swift_getAssociatedTypeWitness(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v0[10];
    v0[18] = v0[9];
    v7 = sub_1D1AA6214();
    v0[19] = v7;
    if (v7)
    {
      v8 = v0[16];

      return MEMORY[0x1EEE6DFA0](sub_1D1AA94E8, v8, 0);
    }

    else
    {
      v11 = v0[14];
      v12 = v0[10];
      v13 = sub_1D1E66A7C();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      v14 = *(v12 + 48);
      v15 = swift_task_alloc();
      v0[21] = v15;
      *v15 = v0;
      v15[1] = sub_1D1AA97AC;
      v16 = v0[18];
      v17 = v0[14];
      v18 = v0[11];
      v19 = v0[12];

      return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v16, v17, v18, v19);
    }
  }

  else
  {
    v9 = v0[14];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D1AA94E8()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D1AA967C;
  }

  else
  {
    v4 = sub_1D1AA9588;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AA9588()
{
  v1 = v0[19];

  v2 = v0[14];
  v3 = v0[10];
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = *(v3 + 48);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1D1AA97AC;
  v7 = v0[18];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];

  return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v7, v8, v9, v10);
}

uint64_t sub_1D1AA967C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[14];

  v4 = [v2 uniqueIdentifier];

  sub_1D1E66A5C();
  v5 = v0[14];
  v6 = v0[10];
  v7 = sub_1D1E66A7C();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = *(v6 + 48);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_1D1AA97AC;
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];

  return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v10, v11, v12, v13);
}

uint64_t sub_1D1AA97AC()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA98A8, 0, 0);
}

uint64_t sub_1D1AA98A8()
{
  v1 = v0[18];
  v2 = v0[14];
  swift_unknownObjectRelease();
  sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1AA9960()
{
  v1 = *(*(*v0 + 88) + 16);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 184);
  v5 = swift_checkMetadataState();
  result = v4(v5, AssociatedConformanceWitness);
  if (result)
  {
    v7 = v0[4];
    v8 = result;
    v9 = swift_unknownObjectRetain();
    v10 = 0;
    sub_1D1AB8D74(&v9);
    swift_unknownObjectRelease();
    return sub_1D1AAE004(v8, 0);
  }

  return result;
}

uint64_t sub_1D1AA9A6C(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v5 = *(*(*v3 + 88) + 16);
  v6 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v44 = v5;
  v55 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v43 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v41 - v13;
  v54 = sub_1D1E66A7C();
  v45 = *(v54 - 8);
  v14 = *(v45 + 64);
  v15 = MEMORY[0x1EEE9AC00](v54);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v41 - v19;
  v20 = swift_checkMetadataState();
  v21 = ServiceProtocol.supportedCharacteristicKinds.getter(v20, v8);
  v22 = swift_getAssociatedConformanceWitness();
  v23 = *(v22 + 128);
  v48 = a3;
  v23(&v56, AssociatedTypeWitness, v22);
  LOBYTE(v6) = sub_1D171974C(v56, v21);

  if (v6)
  {
    v25 = *(AssociatedConformanceWitness + 184);
    v26 = swift_checkMetadataState();
    result = v25(v26, AssociatedConformanceWitness);
    if (result)
    {
      (*(v44 + 128))(v55);
      swift_unknownObjectRelease();
      v27 = v45;
      v51 = *(v45 + 32);
      v28 = v52;
      v29 = v54;
      v51(v52, v18, v54);
      v30 = sub_1D1E67E7C();
      (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
      v31 = v42;
      (*(v27 + 16))(v42, v28, v29);
      v33 = v46;
      v32 = v47;
      (*(v47 + 16))(v46, v48, AssociatedTypeWitness);
      v34 = (*(v27 + 80) + 56) & ~*(v27 + 80);
      v35 = (v14 + v34 + *(v32 + 80)) & ~*(v32 + 80);
      v36 = swift_allocObject();
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      v37 = v49;
      v38 = v50;
      *(v36 + 4) = v55;
      *(v36 + 5) = v37;
      *(v36 + 6) = v38;
      v39 = &v36[v34];
      v40 = v54;
      v51(v39, v31, v54);
      (*(v32 + 32))(&v36[v35], v33, AssociatedTypeWitness);

      sub_1D17C6EF0(0, 0, v53, &unk_1D1E96598, v36);

      return (*(v27 + 8))(v52, v40);
    }
  }

  return result;
}

uint64_t sub_1D1AA9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  v7 = *a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[29] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v10 = *(*(v7 + 88) + 16);
  v11 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[31] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v6[32] = v13;
  v14 = *(v13 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v15 = sub_1D1E669FC();
  v6[39] = v15;
  v16 = *(v15 - 8);
  v6[40] = v16;
  v17 = *(v16 + 64) + 15;
  v6[41] = swift_task_alloc();
  v18 = type metadata accessor for StaticCharacteristic();
  v6[42] = v18;
  v19 = *(v18 - 8);
  v6[43] = v19;
  v20 = *(v19 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v21 = sub_1D1E66A7C();
  v6[46] = v21;
  v22 = *(v21 - 8);
  v6[47] = v22;
  v23 = *(v22 + 64) + 15;
  v6[48] = swift_task_alloc();
  v24 = type metadata accessor for StaticService(0);
  v6[49] = v24;
  v25 = *(v24 - 8);
  v6[50] = v25;
  v26 = *(v25 + 64) + 15;
  v6[51] = swift_task_alloc();
  v6[52] = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v6[53] = v27;
  v28 = sub_1D1E685AC();
  v6[54] = v28;
  v29 = *(v28 - 8);
  v6[55] = v29;
  v30 = *(v29 + 64) + 15;
  v6[56] = swift_task_alloc();
  v31 = *(v27 - 8);
  v6[57] = v31;
  v32 = *(v31 + 64) + 15;
  v6[58] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AAA4B0, 0, 0);
}

uint64_t sub_1D1AAA4B0()
{
  v208 = v0;
  v1 = v0;
  v2 = v0[26];
  v3 = sub_1D1AA6214();
  if (v3)
  {
    v0[62] = *(v3 + 24);

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v4 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AAB518, v4, 0);
  }

  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[57];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[31];
  v11 = v0[28];
  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v5, 1, 1, v12);
  (*(v9 + 88))(v10, v9);
  v14 = (*(v7 + 48))(v6, 1, v8);
  v15 = v1[61];
  if (v14 != 1)
  {
    v19 = v1[60];
    (*(v1[57] + 32))(v1[58], v1[56], v1[53]);
    sub_1D1741C08(v15, v19, &unk_1EC649E30, &unk_1D1E91250);
    if ((*(v13 + 48))(v19, 1, v12) == 1)
    {
      v20 = v1[60];
      v21 = v1[61];
      (*(v1[57] + 8))(v1[58], v1[53]);
      sub_1D1741A30(v21, &unk_1EC649E30, &unk_1D1E91250);
      v22 = v20;
LABEL_17:
      sub_1D1741A30(v22, &unk_1EC649E30, &unk_1D1E91250);
      goto LABEL_18;
    }

    v23 = v1[60];
    v24 = v1[58];
    v26 = v1[52];
    v25 = v1[53];
    v27 = v1[48];
    v28 = v1[31];
    v29 = *(v23 + *(v12 + 60));

    sub_1D1AAE264(v23, type metadata accessor for StateSnapshot);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v25, AssociatedConformanceWitness);
    if (!*(v29 + 16) || (v31 = sub_1D1742188(v1[48]), (v32 & 1) == 0))
    {
      v43 = v1[61];
      v45 = v1[57];
      v44 = v1[58];
      v46 = v1[53];
      v48 = v1[47];
      v47 = v1[48];
      v49 = v1[46];

      (*(v48 + 8))(v47, v49);
      goto LABEL_16;
    }

    v34 = v1[51];
    v33 = v1[52];
    v35 = v1[49];
    v37 = v1[47];
    v36 = v1[48];
    v38 = v1[46];
    v39 = v1[31];
    v40 = v1[28];
    sub_1D1AAE2C4(*(v29 + 56) + *(v1[50] + 72) * v31, v34, type metadata accessor for StaticService);
    (*(v37 + 8))(v36, v38);

    v41 = *(v34 + *(v35 + 128));

    sub_1D1AAE264(v34, type metadata accessor for StaticService);
    v42._countAndFlagsBits = (*(v33 + 56))(v39, v33);
    CharacteristicKind.init(rawValue:)(v42);
    if (v207 == 174)
    {
      v43 = v1[61];
      v45 = v1[57];
      v44 = v1[58];
      v46 = v1[53];

LABEL_16:
      (*(v45 + 8))(v44, v46);
      v22 = v43;
      goto LABEL_17;
    }

    if (!*(v41 + 16) || (v62 = sub_1D171D140(v207), (v63 & 1) == 0))
    {

      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v100 = v1[34];
      v101 = v1[31];
      v102 = v1[32];
      v103 = v1[28];
      v104 = sub_1D1E6709C();
      __swift_project_value_buffer(v104, qword_1EC64A290);
      v105 = *(v102 + 16);
      v105(v100, v103, v101);
      v106 = sub_1D1E6707C();
      v107 = sub_1D1E6835C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = v1[52];
        v109 = v1[34];
        v206 = v105;
        v110 = v1;
        v111 = v1[32];
        v112 = v110[31];
        v113 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v207 = v200;
        *v113 = 136315138;
        v114 = *(v108 + 8);
        v115 = sub_1D1E68FAC();
        v117 = v116;
        (*(v111 + 8))(v109, v112);
        v1 = v110;
        v105 = v206;
        v118 = sub_1D1B1312C(v115, v117, &v207);

        *(v113 + 4) = v118;
        _os_log_impl(&dword_1D16EC000, v106, v107, "update for:  %s", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v200);
        MEMORY[0x1D3893640](v200, -1, -1);
        MEMORY[0x1D3893640](v113, -1, -1);
      }

      else
      {
        v119 = v1[34];
        v120 = v1[31];
        v121 = v1[32];

        (*(v121 + 8))(v119, v120);
      }

      v105(v1[33], v1[28], v1[31]);
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      v122 = swift_dynamicCast();
      v43 = v1[61];
      v45 = v1[57];
      v44 = v1[58];
      v46 = v1[53];
      if (v122)
      {
        v123 = v1[30];
        v195 = v1[29];
        v201 = v1[26];
        v124 = v1[24];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = v124;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        *(inited + 40) = 1;
        *(inited + 64) = 3;
        v126 = v1;
        v127 = v124;
        v128 = sub_1D18D8A70(inited);
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
        *v123 = v128;
        *(v123 + 8) = 0;
        *(v123 + 16) = 1;
        swift_storeEnumTagMultiPayload();
        sub_1D1AA6268(v123);

        v1 = v126;
        sub_1D1AAE264(v123, type metadata accessor for StateSnapshot.UpdateType);
        (*(v45 + 8))(v44, v46);
        v22 = v43;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v64 = v1[52];
    v65 = v1[44];
    v66 = v1[45];
    v67 = v1[42];
    v69 = v1[40];
    v68 = v1[41];
    v70 = v1[39];
    v198 = v1[31];
    v205 = v1;
    v193 = v1[28];
    sub_1D1AAE2C4(*(v41 + 56) + *(v1[43] + 72) * v62, v65, type metadata accessor for StaticCharacteristic);

    sub_1D1AAE3F4(v65, v66, type metadata accessor for StaticCharacteristic);
    v71 = v66 + *(v67 + 32);
    v72 = *(v71 + 24);
    v73 = *(v64 + 80);
    v188 = *(v71 + 8);
    v190 = *v71;
    v186 = *(v71 + 16);
    sub_1D17418FC(*v71, v188, v186, *(v71 + 24));
    v73(v198, v64);
    v74 = *(v67 + 28);
    sub_1D1AAE21C(&unk_1EC649E50, MEMORY[0x1E6969530]);
    v75 = sub_1D1E6771C();
    (*(v69 + 8))(v68, v70);
    if (v72 == 1)
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v76 = v1[38];
      v77 = v1[31];
      v78 = v1[32];
      v79 = v1[28];
      v80 = sub_1D1E6709C();
      __swift_project_value_buffer(v80, qword_1EC64A290);
      (*(v78 + 16))(v76, v79, v77);
      v81 = sub_1D1E6707C();
      v82 = sub_1D1E6835C();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v1[61];
      v85 = v1[57];
      v86 = v1[58];
      v87 = v1[53];
      if (v83)
      {
        v88 = v1[52];
        v89 = v1[38];
        v194 = v1[53];
        v199 = v1[61];
        v91 = v1[31];
        v90 = v1[32];
        v191 = v1[58];
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v207 = v93;
        *v92 = 136315138;
        v94 = *(v88 + 8);
        v95 = sub_1D1E68FAC();
        v97 = v96;
        (*(v90 + 8))(v89, v91);
        v98 = sub_1D1B1312C(v95, v97, &v207);

        *(v92 + 4) = v98;
        v99 = "skip update for: %s";
LABEL_45:
        _os_log_impl(&dword_1D16EC000, v81, v82, v99, v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        v165 = v93;
        v1 = v205;
        MEMORY[0x1D3893640](v165, -1, -1);
        MEMORY[0x1D3893640](v92, -1, -1);

        (*(v85 + 8))(v191, v194);
        v166 = v199;
LABEL_52:
        sub_1D1741A30(v166, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1AAE264(v1[45], type metadata accessor for StaticCharacteristic);
        goto LABEL_18;
      }

      v149 = v1[38];
    }

    else
    {
      sub_1D1757A60(v190, v188, v186, v72);
      if (v75)
      {
        if (qword_1EC642328 != -1)
        {
          swift_once();
        }

        v129 = v1[36];
        v130 = v1[31];
        v131 = v1[32];
        v132 = v1[28];
        v133 = sub_1D1E6709C();
        __swift_project_value_buffer(v133, qword_1EC64A290);
        v134 = *(v131 + 16);
        v134(v129, v132, v130);
        v135 = sub_1D1E6707C();
        v136 = sub_1D1E6835C();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = v1[52];
          v138 = v1[36];
          v139 = v1[32];
          v202 = v134;
          v140 = v205[31];
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v207 = v142;
          *v141 = 136315138;
          v143 = *(v137 + 8);
          v144 = sub_1D1E68FAC();
          v146 = v145;
          v147 = v140;
          v134 = v202;
          (*(v139 + 8))(v138, v147);
          v1 = v205;
          v148 = sub_1D1B1312C(v144, v146, &v207);

          *(v141 + 4) = v148;
          _os_log_impl(&dword_1D16EC000, v135, v136, "update for:  %s", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v142);
          MEMORY[0x1D3893640](v142, -1, -1);
          MEMORY[0x1D3893640](v141, -1, -1);
        }

        else
        {
          v167 = v1[36];
          v168 = v1[31];
          v169 = v1[32];

          (*(v169 + 8))(v167, v168);
        }

        v134(v1[35], v1[28], v1[31]);
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v170 = swift_dynamicCast();
        v171 = v1[61];
        v172 = v1[57];
        v173 = v1[58];
        v174 = v1[53];
        v175 = v1[45];
        if (v170)
        {
          v176 = v1[30];
          v177 = v1[25];
          v196 = v1[29];
          v203 = v1[26];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
          v178 = swift_initStackObject();
          *(v178 + 16) = xmmword_1D1E739C0;
          *(v178 + 32) = v177;
          *(v178 + 48) = 0;
          *(v178 + 56) = 0;
          *(v178 + 40) = 1;
          *(v178 + 64) = 3;
          v179 = v177;
          v180 = sub_1D18D8A70(v178);
          swift_setDeallocating();
          v1 = v205;
          sub_1D1741A30(v178 + 32, &qword_1EC645D20, qword_1D1E7C4F0);
          *v176 = v180;
          *(v176 + 8) = 0;
          *(v176 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          sub_1D1AA6268(v176);

          sub_1D1AAE264(v176, type metadata accessor for StateSnapshot.UpdateType);
        }

        (*(v172 + 8))(v173, v174);
        sub_1D1741A30(v171, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1AAE264(v175, type metadata accessor for StaticCharacteristic);
        goto LABEL_18;
      }

      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v150 = v1[37];
      v151 = v1[31];
      v152 = v1[32];
      v153 = v1[28];
      v154 = sub_1D1E6709C();
      __swift_project_value_buffer(v154, qword_1EC64A290);
      (*(v152 + 16))(v150, v153, v151);
      v81 = sub_1D1E6707C();
      v82 = sub_1D1E6835C();
      v155 = os_log_type_enabled(v81, v82);
      v84 = v1[61];
      v85 = v1[57];
      v86 = v1[58];
      v87 = v1[53];
      if (v155)
      {
        v156 = v1[52];
        v157 = v1[37];
        v194 = v1[53];
        v199 = v1[61];
        v159 = v1[31];
        v158 = v1[32];
        v191 = v1[58];
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v207 = v93;
        *v92 = 136315138;
        v160 = *(v156 + 8);
        v161 = sub_1D1E68FAC();
        v163 = v162;
        (*(v158 + 8))(v157, v159);
        v164 = sub_1D1B1312C(v161, v163, &v207);

        *(v92 + 4) = v164;
        v99 = "out of date update for: %s";
        goto LABEL_45;
      }

      v149 = v1[37];
    }

    v181 = v1[31];
    v182 = v1[32];

    (*(v182 + 8))(v149, v181);
    (*(v85 + 8))(v86, v87);
    v166 = v84;
    goto LABEL_52;
  }

  v17 = v1[55];
  v16 = v1[56];
  v18 = v1[54];
  sub_1D1741A30(v1[61], &unk_1EC649E30, &unk_1D1E91250);
  (*(v17 + 8))(v16, v18);
LABEL_18:
  v51 = v1[60];
  v50 = v1[61];
  v53 = v1[58];
  v52 = v1[59];
  v54 = v1[56];
  v55 = v1[51];
  v56 = v1;
  v57 = v1[48];
  v58 = v56[44];
  v59 = v56[45];
  v60 = v56[41];
  v184 = v56[38];
  v185 = v56[37];
  v187 = v56[36];
  v189 = v56[35];
  v192 = v56[34];
  v197 = v56[33];
  v204 = v56[30];

  v61 = v56[1];

  return v61();
}

uint64_t sub_1D1AAB518()
{
  v1 = v0[62];
  swift_getKeyPath();
  v0[23] = v1;
  sub_1D1AAE21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v0[63] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1AAB624, 0, 0);
}

uint64_t sub_1D1AAB624()
{
  v219 = v0;
  if (*(v0[63] + 16))
  {
    v1 = sub_1D1742188(v0[27]);
    v2 = v0[59];
    if (v3)
    {
      v4 = v1;
      v5 = *(v0[63] + 56);
      v6 = type metadata accessor for HomeState();
      v7 = *(v6 - 8);
      sub_1D1AAE2C4(v5 + *(v7 + 72) * v4, v2, type metadata accessor for HomeState);

      (*(v7 + 56))(v2, 0, 1, v6);
      goto LABEL_7;
    }

    v9 = v0[63];
  }

  else
  {
    v2 = v0[59];
    v8 = v0[63];
  }

  v6 = type metadata accessor for HomeState();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
LABEL_7:
  v10 = v0[59];
  type metadata accessor for HomeState();
  v11 = 1;
  if (!(*(*(v6 - 8) + 48))(v10, 1, v6))
  {
    sub_1D1AAE2C4(v10, v0[61], type metadata accessor for StateSnapshot);
    v11 = 0;
    v10 = v0[59];
  }

  sub_1D1741A30(v10, &qword_1EC649148, &qword_1D1E96490);
  v12 = v0[61];
  v216 = v0;
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[31];
  v18 = v0[28];
  v19 = type metadata accessor for StateSnapshot(0);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v12, v11, 1, v19);
  (*(v16 + 88))(v17, v16);
  v21 = (*(v13 + 48))(v14, 1, v15);
  v22 = v216;
  v23 = v216[61];
  if (v21 == 1)
  {
    v25 = v216[55];
    v24 = v216[56];
    v26 = v216[54];
    sub_1D1741A30(v216[61], &unk_1EC649E30, &unk_1D1E91250);
    (*(v25 + 8))(v24, v26);
    goto LABEL_20;
  }

  v27 = v216[60];
  (*(v216[57] + 32))(v216[58], v216[56], v216[53]);
  sub_1D1741C08(v23, v27, &unk_1EC649E30, &unk_1D1E91250);
  if ((*(v20 + 48))(v27, 1, v19) == 1)
  {
    v28 = v216[60];
    v29 = v216[61];
    (*(v216[57] + 8))(v216[58], v216[53]);
    sub_1D1741A30(v29, &unk_1EC649E30, &unk_1D1E91250);
    v30 = v28;
LABEL_19:
    sub_1D1741A30(v30, &unk_1EC649E30, &unk_1D1E91250);
    goto LABEL_20;
  }

  v31 = v216[60];
  v32 = v216[58];
  v34 = v216[52];
  v33 = v216[53];
  v35 = v216[48];
  v36 = v216[31];
  v37 = *(v31 + *(v19 + 60));

  sub_1D1AAE264(v31, type metadata accessor for StateSnapshot);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 56))(v33, AssociatedConformanceWitness);
  if (!*(v37 + 16) || (v39 = sub_1D1742188(v216[48]), (v40 & 1) == 0))
  {
    v51 = v216[61];
    v53 = v216[57];
    v52 = v216[58];
    v54 = v216[53];
    v56 = v216[47];
    v55 = v216[48];
    v57 = v216[46];

    (*(v56 + 8))(v55, v57);
    goto LABEL_18;
  }

  v42 = v216[51];
  v41 = v216[52];
  v43 = v216[49];
  v45 = v216[47];
  v44 = v216[48];
  v46 = v216[46];
  v47 = v216[31];
  v48 = v216[28];
  sub_1D1AAE2C4(*(v37 + 56) + *(v216[50] + 72) * v39, v42, type metadata accessor for StaticService);
  (*(v45 + 8))(v44, v46);

  v49 = *(v42 + *(v43 + 128));

  sub_1D1AAE264(v42, type metadata accessor for StaticService);
  v50._countAndFlagsBits = (*(v41 + 56))(v47, v41);
  CharacteristicKind.init(rawValue:)(v50);
  if (v218 == 174)
  {
    v51 = v216[61];
    v53 = v216[57];
    v52 = v216[58];
    v54 = v216[53];

LABEL_18:
    (*(v53 + 8))(v52, v54);
    v30 = v51;
    goto LABEL_19;
  }

  if (!*(v49 + 16) || (v71 = sub_1D171D140(v218), (v72 & 1) == 0))
  {

    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v109 = v216[34];
    v110 = v216[31];
    v111 = v216[32];
    v112 = v216[28];
    v113 = sub_1D1E6709C();
    __swift_project_value_buffer(v113, qword_1EC64A290);
    v114 = *(v111 + 16);
    v114(v109, v112, v110);
    v115 = sub_1D1E6707C();
    v116 = sub_1D1E6835C();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = v216[52];
      v118 = v216[34];
      v119 = v216[32];
      v212 = v114;
      v120 = v216[31];
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v218 = v122;
      *v121 = 136315138;
      v123 = *(v117 + 8);
      v124 = sub_1D1E68FAC();
      v126 = v125;
      v127 = v120;
      v114 = v212;
      (*(v119 + 8))(v118, v127);
      v22 = v216;
      v128 = sub_1D1B1312C(v124, v126, &v218);

      *(v121 + 4) = v128;
      _os_log_impl(&dword_1D16EC000, v115, v116, "update for:  %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x1D3893640](v122, -1, -1);
      MEMORY[0x1D3893640](v121, -1, -1);
    }

    else
    {
      v129 = v216[34];
      v130 = v216[31];
      v131 = v216[32];

      (*(v131 + 8))(v129, v130);
    }

    v114(v22[33], v22[28], v22[31]);
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v132 = swift_dynamicCast();
    v133 = v22[61];
    v135 = v22[57];
    v134 = v22[58];
    v136 = v22[53];
    if (v132)
    {
      v137 = v22[30];
      v207 = v22[29];
      v213 = v22[26];
      v138 = v22[24];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v138;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      *(inited + 40) = 1;
      *(inited + 64) = 3;
      v140 = v138;
      v141 = sub_1D18D8A70(inited);
      swift_setDeallocating();
      sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
      *v137 = v141;
      *(v137 + 8) = 0;
      *(v137 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1D1AA6268(v137);

      v22 = v216;
      sub_1D1AAE264(v137, type metadata accessor for StateSnapshot.UpdateType);
    }

    (*(v135 + 8))(v134, v136);
    v30 = v133;
    goto LABEL_19;
  }

  v73 = v216[52];
  v74 = v216[44];
  v75 = v216[45];
  v76 = v216[42];
  v78 = v216[40];
  v77 = v216[41];
  v79 = v216[39];
  v205 = v216[28];
  v210 = v216[31];
  sub_1D1AAE2C4(*(v49 + 56) + *(v216[43] + 72) * v71, v74, type metadata accessor for StaticCharacteristic);

  sub_1D1AAE3F4(v74, v75, type metadata accessor for StaticCharacteristic);
  v80 = v75 + *(v76 + 32);
  v81 = *(v80 + 24);
  v82 = *(v73 + 80);
  v200 = *(v80 + 8);
  v202 = *v80;
  v198 = *(v80 + 16);
  sub_1D17418FC(*v80, v200, v198, *(v80 + 24));
  v82(v210, v73);
  v83 = *(v76 + 28);
  sub_1D1AAE21C(&unk_1EC649E50, MEMORY[0x1E6969530]);
  v84 = sub_1D1E6771C();
  (*(v78 + 8))(v77, v79);
  if (v81 == 1)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v22 = v216;
    v85 = v216[38];
    v86 = v216[31];
    v87 = v216[32];
    v88 = v216[28];
    v89 = sub_1D1E6709C();
    __swift_project_value_buffer(v89, qword_1EC64A290);
    (*(v87 + 16))(v85, v88, v86);
    v90 = sub_1D1E6707C();
    v91 = sub_1D1E6835C();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v216[61];
    v94 = v216[57];
    v95 = v216[58];
    v96 = v216[53];
    if (v92)
    {
      v97 = v216[52];
      v98 = v216[38];
      v206 = v216[53];
      v211 = v216[61];
      v100 = v216[31];
      v99 = v216[32];
      v203 = v216[58];
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v218 = v102;
      *v101 = 136315138;
      v103 = *(v97 + 8);
      v104 = sub_1D1E68FAC();
      v106 = v105;
      (*(v99 + 8))(v98, v100);
      v107 = sub_1D1B1312C(v104, v106, &v218);

      *(v101 + 4) = v107;
      v108 = "skip update for: %s";
LABEL_48:
      _os_log_impl(&dword_1D16EC000, v90, v91, v108, v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      v178 = v102;
      v22 = v216;
      MEMORY[0x1D3893640](v178, -1, -1);
      MEMORY[0x1D3893640](v101, -1, -1);

      (*(v94 + 8))(v203, v206);
      v179 = v211;
LABEL_55:
      sub_1D1741A30(v179, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1AAE264(v22[45], type metadata accessor for StaticCharacteristic);
      goto LABEL_20;
    }

    v162 = v216[38];
    goto LABEL_54;
  }

  sub_1D1757A60(v202, v200, v198, v81);
  if ((v84 & 1) == 0)
  {
    v22 = v216;
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v163 = v216[37];
    v164 = v216[31];
    v165 = v216[32];
    v166 = v216[28];
    v167 = sub_1D1E6709C();
    __swift_project_value_buffer(v167, qword_1EC64A290);
    (*(v165 + 16))(v163, v166, v164);
    v90 = sub_1D1E6707C();
    v91 = sub_1D1E6835C();
    v168 = os_log_type_enabled(v90, v91);
    v93 = v216[61];
    v94 = v216[57];
    v95 = v216[58];
    v96 = v216[53];
    if (v168)
    {
      v169 = v216[52];
      v170 = v216[37];
      v206 = v216[53];
      v211 = v216[61];
      v172 = v216[31];
      v171 = v216[32];
      v203 = v216[58];
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v218 = v102;
      *v101 = 136315138;
      v173 = *(v169 + 8);
      v174 = sub_1D1E68FAC();
      v176 = v175;
      (*(v171 + 8))(v170, v172);
      v177 = sub_1D1B1312C(v174, v176, &v218);

      *(v101 + 4) = v177;
      v108 = "out of date update for: %s";
      goto LABEL_48;
    }

    v162 = v216[37];
LABEL_54:
    v194 = v22[31];
    v195 = v22[32];

    (*(v195 + 8))(v162, v194);
    (*(v94 + 8))(v95, v96);
    v179 = v93;
    goto LABEL_55;
  }

  v22 = v216;
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v142 = v216[36];
  v143 = v216[31];
  v144 = v216[32];
  v145 = v216[28];
  v146 = sub_1D1E6709C();
  __swift_project_value_buffer(v146, qword_1EC64A290);
  v147 = *(v144 + 16);
  v147(v142, v145, v143);
  v148 = sub_1D1E6707C();
  v149 = sub_1D1E6835C();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = v216[52];
    v151 = v216[36];
    v152 = v216[32];
    v214 = v147;
    v153 = v216[31];
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v218 = v155;
    *v154 = 136315138;
    v156 = *(v150 + 8);
    v157 = sub_1D1E68FAC();
    v159 = v158;
    v160 = v153;
    v147 = v214;
    (*(v152 + 8))(v151, v160);
    v22 = v216;
    v161 = sub_1D1B1312C(v157, v159, &v218);

    *(v154 + 4) = v161;
    _os_log_impl(&dword_1D16EC000, v148, v149, "update for:  %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v155);
    MEMORY[0x1D3893640](v155, -1, -1);
    MEMORY[0x1D3893640](v154, -1, -1);
  }

  else
  {
    v180 = v216[36];
    v181 = v216[31];
    v182 = v216[32];

    (*(v182 + 8))(v180, v181);
  }

  v147(v22[35], v22[28], v22[31]);
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v183 = swift_dynamicCast();
  v184 = v22[61];
  v185 = v22[57];
  v186 = v22[58];
  v187 = v22[53];
  v188 = v22[45];
  if (v183)
  {
    v189 = v22[30];
    v190 = v22[25];
    v208 = v22[29];
    v215 = v22[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
    v191 = swift_initStackObject();
    *(v191 + 16) = xmmword_1D1E739C0;
    *(v191 + 32) = v190;
    *(v191 + 48) = 0;
    *(v191 + 56) = 0;
    *(v191 + 40) = 1;
    *(v191 + 64) = 3;
    v192 = v190;
    v193 = sub_1D18D8A70(v191);
    swift_setDeallocating();
    v22 = v216;
    sub_1D1741A30(v191 + 32, &qword_1EC645D20, qword_1D1E7C4F0);
    *v189 = v193;
    *(v189 + 8) = 0;
    *(v189 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D1AA6268(v189);

    sub_1D1AAE264(v189, type metadata accessor for StateSnapshot.UpdateType);
  }

  (*(v185 + 8))(v186, v187);
  sub_1D1741A30(v184, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1AAE264(v188, type metadata accessor for StaticCharacteristic);
LABEL_20:
  v59 = v22[60];
  v58 = v22[61];
  v61 = v22[58];
  v60 = v22[59];
  v62 = v22[56];
  v63 = v22[51];
  v64 = v22;
  v65 = v22[48];
  v66 = v64[44];
  v67 = v64[45];
  v68 = v64[41];
  v196 = v64[38];
  v197 = v64[37];
  v199 = v64[36];
  v201 = v64[35];
  v204 = v64[34];
  v209 = v64[33];
  v217 = v64[30];

  v69 = v64[1];

  return v69();
}

uint64_t sub_1D1AAC7A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 88) + 16);
  v4 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 184);
  v7 = swift_checkMetadataState();
  result = v6(v7, AssociatedConformanceWitness);
  if (result)
  {
    v9 = result;
    v10 = v1[4];
    v17 = swift_unknownObjectRetain();
    v18 = 0;
    sub_1D1AB8D74(&v17);
    sub_1D1AAE004(v9, 0);
    v11 = (*(AssociatedConformanceWitness + 320))(v7, AssociatedConformanceWitness);
    if (v12)
    {
      v13 = swift_unknownObjectRetain();
      sub_1D1AA6624(v13, 0, 0);
    }

    else
    {
      v14 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v14;
      v16 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      swift_unknownObjectRetain();
      sub_1D1AA6624(v16, v9, 1);
    }

    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_1D1AAC9E0(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v16 = *(**&a1[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController] + 120);
  sub_1D1AAE2C4(v15, v6, type metadata accessor for StateSnapshot.UpdateType);
  v17 = *(v3 + 52);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v8 + 8))(v11, v7);
  sub_1D1AAE264(v15, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AACCAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v14 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = [a1 home];
  swift_storeEnumTagMultiPayload();
  v17 = *(**(v1 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController) + 120);
  sub_1D1AAE2C4(v16, v7, type metadata accessor for StateSnapshot.UpdateType);
  v18 = *(v4 + 52);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v9 + 8))(v12, v8);
  return sub_1D1AAE264(v16, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AACF8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1AACFC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(*(a2 + 88) + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD10C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 80;
  v2 = *(a2 + 80);
  v4 = *(*(v3 + 8) + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD12C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 80;
  v2 = *(a2 + 80);
  v4 = *(*(v3 + 8) + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD154(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD170()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v1 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v3);
  return sub_1D1AAE264(v3, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AAD20C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v5 = swift_unknownObjectRetain();
  v6 = 0;
  sub_1D1AB8D74(&v5);
  return sub_1D1AAE004(a1, 0);
}

void sub_1D1AAD258(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[4];
  v15 = swift_unknownObjectRetain();
  v16 = 0;
  sub_1D1AB8D74(&v15);
  sub_1D1AAE004(a1, 0);
  v5 = *(*(v3 + 88) + 16);
  v6 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 320);
  v9 = swift_checkMetadataState();
  v10 = v8(v9, AssociatedConformanceWitness);
  if (v11)
  {

    sub_1D1AA6624(a1, 0, 0);
  }

  else
  {
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v12;
    v14 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    swift_unknownObjectRetain();
    sub_1D1AA6624(v14, a1, 1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAD410(uint64_t a1, char a2)
{
  v4 = *v2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*(v4 + 88) + 8);
  v10 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  sub_1D1E6903C();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v12;
    *(inited + 40) = a2 & 1 | 0x4000;
    swift_unknownObjectRetain();
    v14 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v8 = v14;
    swift_storeEnumTagMultiPayload();
    sub_1D1AA6268(v8);
    swift_unknownObjectRelease();
    return sub_1D1AAE264(v8, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAD5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = a1;
  sub_1D1741C08(v16, v14, &unk_1EC6442C0, &qword_1D1E741A0);
  v19 = qword_1EC642358;

  swift_unknownObjectRetain();

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EC64ABE8;
  v21 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a4;
  v22[5] = v18;

  sub_1D17C6EF0(0, 0, v14, a5, v22);

  return sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1AAD828()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D1741C08(v7, v5, &unk_1EC6442C0, &qword_1D1E741A0);
  v9 = qword_1EC642358;
  swift_retain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC64ABE8;
  v11 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = sub_1D1AADA2C;
  v12[5] = v0;

  sub_1D17C6EF0(0, 0, v5, &unk_1D1E96480, v12);

  return sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1AADA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA783C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA78F8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADBC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA75A4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1AADD14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA6DF0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADDD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AA6F24(a1, v4, v5, v6);
}

void sub_1D1AADE88(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D1A283E8(a1, a2, a3);
  }
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1AADF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA8698(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AAE004(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAE010(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_1D1E66A7C() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(v6 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[6];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D17C4CF0;

  return sub_1D1AA9F98(a1, v13, v14, v15, v1 + v8, v1 + v12);
}

uint64_t sub_1D1AAE21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1AAE264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AAE2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AAE32C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1AA90DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AAE3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id HomeState.Stream.delegatePackage()()
{
  v1 = *(v0 + 120);
  v2 = sub_1D1A830C0(&unk_1EC649E70);
  v3 = _s15DelegateAdapterCMa_2();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v2;
  swift_unknownObjectWeakAssign();
  v38.receiver = v4;
  v38.super_class = v3;
  v31 = objc_msgSendSuper2(&v38, sel_init);
  v5 = sub_1D1A830C0(&qword_1EC649E80);
  v6 = _s15DelegateAdapterCMa_1();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v5;
  swift_unknownObjectWeakAssign();
  v37.receiver = v7;
  v37.super_class = v6;
  v8 = objc_msgSendSuper2(&v37, sel_init);
  v9 = sub_1D1A830C0(&qword_1EC649E88);
  v10 = _s15DelegateAdapterCMa();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v9;
  swift_unknownObjectWeakAssign();
  v36.receiver = v11;
  v36.super_class = v10;
  v12 = objc_msgSendSuper2(&v36, sel_init);
  v13 = sub_1D1A830C0(&qword_1EC649E90);
  v14 = _s15DelegateAdapterCMa_4();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v13;
  swift_unknownObjectWeakAssign();
  v35.receiver = v15;
  v35.super_class = v14;
  v16 = objc_msgSendSuper2(&v35, sel_init);
  v17 = sub_1D1A830C0(&qword_1EC649E98);
  v18 = _s15DelegateAdapterCMa_3();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v17;
  swift_unknownObjectWeakAssign();
  v34.receiver = v19;
  v34.super_class = v18;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  v21 = sub_1D1A830C0(&qword_1EC649EA0);
  v22 = _s15DelegateAdapterCMa_0();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v21;
  swift_unknownObjectWeakAssign();
  v33.receiver = v23;
  v33.super_class = v22;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = *(v0 + 136);
  v26 = type metadata accessor for HomeState.Stream.DelegatePackage();
  v27 = v25;
  v28 = objc_allocWithZone(v26);
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_homeManagerDelegate] = v31;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_homeDelegate] = v8;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_accessoryDelegate] = v12;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_userActionPredictionControllerDelegate] = v16;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_mediaSessionDelegate] = v20;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_accessorySettingsDataSourceDelegate] = v24;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_mediaObjectDelegate] = v27;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_lightProfileDelegate] = v27;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_symptomHandlerDelegate] = v27;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_residentDeviceDelegate] = v27;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_softwareUpdateDelegate] = v27;
  *&v28[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_softwareUpdateControllerV2Delegate] = v27;
  v32.receiver = v28;
  v32.super_class = v26;
  v29 = v27;
  return objc_msgSendSuper2(&v32, sel_init);
}

id HomeState.Stream.DelegatePackage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeState.Stream.DelegatePackage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeState.Stream.DelegatePackage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1AAED50(uint64_t a1, void *a2)
{
  v81 = a1;
  v76 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v69 - v4;
  v5 = sub_1D1E66A7C();
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v71 = v8;
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v18 = &v69 - v17;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v20 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
  v24 = v23[12];
  v25 = v23[16];
  v26 = v23[20];
  v27 = *(v79 + 16);
  v73 = v5;
  v77 = v27;
  v78 = v79 + 16;
  v27(v22, v81, v5);
  v28 = v76;
  *&v22[v24] = v76;
  *&v22[v25] = 0;
  *&v22[v26] = 0;
  swift_storeEnumTagMultiPayload();
  v29 = *(**&v80[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController] + 120);
  sub_1D1AB10C0(v22, v14);
  v30 = *(v11 + 52);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v31 - 8) + 56))(&v14[v30], 1, 1, v31);
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v15 + 8))(v18, v75);
  sub_1D1AB1124(v22);
  result = [v32 documentationMetadata];
  if (result)
  {
    v34 = result;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D1E6709C();
    __swift_project_value_buffer(v35, qword_1EE07B5D8);
    v36 = v70;
    v37 = v73;
    v77(v70, v81, v73);
    v38 = v32;
    v39 = v34;
    v40 = sub_1D1E6707C();
    v41 = sub_1D1E6835C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82 = v75;
      *v42 = 136315650;
      v43 = [v39 description];
      v44 = sub_1D1E6781C();
      v76 = v39;
      v45 = v44;
      v47 = v46;

      v48 = sub_1D1B1312C(v45, v47, &v82);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = [v38 description];
      v50 = sub_1D1E6781C();
      v52 = v51;

      v53 = sub_1D1B1312C(v50, v52, &v82);

      *(v42 + 14) = v53;
      *(v42 + 22) = 2080;
      sub_1D1886B8C();
      v54 = sub_1D1E68FAC();
      v56 = v55;
      v57 = v79;
      (*(v79 + 8))(v36, v37);
      v58 = sub_1D1B1312C(v54, v56, &v82);
      v39 = v76;

      *(v42 + 24) = v58;
      _os_log_impl(&dword_1D16EC000, v40, v41, "Start documentation fetch with metadata: %s softwareUpdate: %s for: %s", v42, 0x20u);
      v59 = v75;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v59, -1, -1);
      MEMORY[0x1D3893640](v42, -1, -1);
    }

    else
    {

      v57 = v79;
      (*(v79 + 8))(v36, v37);
    }

    v60 = sub_1D1E67E7C();
    v61 = v74;
    (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
    v62 = v72;
    v77(v72, v81, v37);
    v63 = (*(v57 + 80) + 48) & ~*(v57 + 80);
    v64 = (v71 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 2) = 0;
    *(v65 + 3) = 0;
    *(v65 + 4) = v39;
    *(v65 + 5) = v38;
    (*(v57 + 32))(&v65[v63], v62, v37);
    v66 = v80;
    *&v65[v64] = v80;
    v67 = v38;
    v68 = v66;
    sub_1D17C6EF0(0, 0, v61, &unk_1D1E96638, v65);
  }

  return result;
}

uint64_t sub_1D1AAF674(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  v15 = a3;
  v16 = a5;
  v17 = a1;
  a6(v14, v16);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D1AAF790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v12 = *(v11 + 64) + 15;
  v7[14] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[15] = updated;
  v14 = *(*(updated - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v15 = sub_1D1E66A7C();
  v7[17] = v15;
  v16 = *(v15 - 8);
  v7[18] = v16;
  v17 = *(v16 + 64) + 15;
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AAF928, 0, 0);
}

uint64_t sub_1D1AAF928()
{
  *(v0 + 160) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AAF9C4, v1, 0);
}

uint64_t sub_1D1AAF9C4()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 168) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AAFA4C, 0, 0);
}

uint64_t sub_1D1AAFA4C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[6];

  v4 = swift_task_alloc();
  v0[22] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500D0, &unk_1D1EA2E00);
  *v6 = v0;
  v6[1] = sub_1D1AAFB5C;

  return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD00000000000001FLL, 0x80000001D1EC41E0, sub_1D1AB12B8, v4, v7);
}

uint64_t sub_1D1AAFB5C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1D1AB0128;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1D1AAFC78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AAFC78()
{
  v67 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = qword_1EE07B5D0;
    v65 = *(v0 + 40);
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 136);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07B5D8);
    v64 = *(v5 + 16);
    v64(v4, v7, v6);
    v10 = v3;
    v11 = v8;
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    v63 = v10;
    if (v14)
    {
      v59 = *(v0 + 56);
      v18 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66 = v61;
      *v18 = 136315650;
      v19 = [v10 description];
      v20 = sub_1D1E6781C();
      v22 = v21;

      v23 = sub_1D1B1312C(v20, v22, &v66);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = [v59 description];
      v25 = sub_1D1E6781C();
      v27 = v26;

      v28 = sub_1D1B1312C(v25, v27, &v66);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2080;
      sub_1D1886B8C();
      v29 = sub_1D1E68FAC();
      v31 = v30;
      (*(v16 + 8))(v15, v17);
      v32 = sub_1D1B1312C(v29, v31, &v66);

      *(v18 + 24) = v32;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Received documentation: %s softwareUpdate: %s for: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v61, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 120);
    v57 = *(v0 + 112);
    v58 = *(v0 + 168);
    v60 = *(v0 + 104);
    v62 = *(v0 + 96);
    v36 = *(v0 + 88);
    v37 = *(v0 + 64);
    v55 = *(v0 + 72);
    v56 = *(v0 + 80);
    v38 = *(v0 + 56);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
    v40 = v39[12];
    v41 = v39[16];
    v42 = v39[20];
    v64(v34, v37, v33);
    *(v34 + v40) = v38;
    v43 = v38;
    *(v34 + v41) = 0;
    *(v34 + v42) = v65;
    swift_storeEnumTagMultiPayload();
    v44 = *(**(v55 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController) + 120);
    sub_1D1AB10C0(v34, v36);
    v45 = *(v56 + 44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    (*(*(v46 - 8) + 56))(v36 + v45, 1, 1, v46);
    v47 = v63;
    v48 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
    sub_1D1E67ECC();

    v60[1](v57, v62);
    sub_1D1AB1124(v34);
  }

  else
  {
  }

  v49 = *(v0 + 152);
  v50 = *(v0 + 128);
  v51 = *(v0 + 112);
  v52 = *(v0 + 88);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1D1AB0128()
{
  v1 = *(v0 + 176);

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 192);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07B5D8);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Documentation fetch error: %@", v9, 0xCu);
    sub_1D179F28C(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1D1AB02F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (a2)
  {
    v11 = [a2 softwareUpdateController];
    if (v11)
    {
      v12 = v11;
      (*(v7 + 16))(v10, a1, v6);
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      (*(v7 + 32))(v14 + v13, v10, v6);
      aBlock[4] = sub_1D1AB12C0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1819E6C;
      aBlock[3] = &block_descriptor_41;
      v15 = _Block_copy(aBlock);

      [v12 fetchDocumentationFromMetadata:a3 completion:v15];
      _Block_release(v15);
    }
  }
}

uint64_t sub_1D1AB04D8(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
    return sub_1D1E67D5C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
    return sub_1D1E67D6C();
  }
}

id sub_1D1AB055C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A080);
  (*(v7 + 16))(v10, a1, v6);
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v15 = 136315394;
    v16 = [v12 description];
    HIDWORD(v30) = v14;
    v17 = v16;
    v18 = sub_1D1E6781C();
    v32 = v3;
    v19 = v18;
    v20 = a1;
    v22 = v21;

    v23 = sub_1D1B1312C(v19, v22, &v33);
    a1 = v20;

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    sub_1D1886B8C();
    v24 = sub_1D1E68FAC();
    v26 = v25;
    (*(v7 + 8))(v10, v6);
    v27 = sub_1D1B1312C(v24, v26, &v33);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v13, BYTE4(v30), "Received softwareUpdate: %s for: %s", v15, 0x16u);
    v28 = v31;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v28, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_1D1AAED50(a1, v12);
}

id sub_1D1AB0840(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A080);
  (*(v7 + 16))(v10, a1, v6);
  v12 = a3;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v16 = 136315650;
    swift_getErrorValue();
    v33 = v14;
    v17 = sub_1D1E6915C();
    v19 = sub_1D1B1312C(v17, v18, &v35);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = [v13 description];
    v21 = sub_1D1E6781C();
    HIDWORD(v32) = v15;
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v35);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    sub_1D1886B8C();
    v25 = sub_1D1E68FAC();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_1D1B1312C(v25, v27, &v35);

    *(v16 + 24) = v28;
    v29 = v33;
    _os_log_impl(&dword_1D16EC000, v33, BYTE4(v32), "Received error:%s softwareUpdate: %s for: %s", v16, 0x20u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_1D1AAED50(a1, v13);
}

uint64_t sub_1D1AB0B88(uint64_t a1, void *a2)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v50[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50[-v9];
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE07A080);
  v19 = *(v14 + 16);
  v57 = a1;
  v55 = v19;
  v19(v17, a1, v13);
  v20 = a2;
  v21 = sub_1D1E6707C();
  v22 = sub_1D1E6835C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = v6;
    v24 = v23;
    v53 = swift_slowAlloc();
    v63 = v53;
    *v24 = 136315394;
    v25 = [v20 description];
    v52 = v21;
    v26 = v25;
    v27 = v20;
    v28 = sub_1D1E6781C();
    v51 = v22;
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v63);
    v32 = v27;

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    sub_1D1886B8C();
    v33 = sub_1D1E68FAC();
    v35 = v34;
    (*(v14 + 8))(v17, v13);
    v36 = sub_1D1B1312C(v33, v35, &v63);

    *(v24 + 14) = v36;
    v37 = v52;
    _os_log_impl(&dword_1D16EC000, v52, v51, "Received softwareUpdateProgress: %s for: %s", v24, 0x16u);
    v38 = v53;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    v39 = v24;
    v6 = v54;
    MEMORY[0x1D3893640](v39, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
    v32 = v20;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
  v41 = v40[12];
  v42 = v40[16];
  v43 = v40[20];
  v55(v12, v57, v13);
  *&v12[v41] = 0;
  *&v12[v42] = v32;
  *&v12[v43] = 0;
  swift_storeEnumTagMultiPayload();
  v44 = *(**(v59 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController) + 120);
  sub_1D1AB10C0(v12, v6);
  v45 = *(v58 + 44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v46 - 8) + 56))(&v6[v45], 1, 1, v46);
  v47 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v48 = v60;
  sub_1D1E67ECC();
  (*(v61 + 8))(v48, v62);
  return sub_1D1AB1124(v12);
}

uint64_t sub_1D1AB10C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1D1AB1124(uint64_t a1)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1D1AB1180(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4BFC;

  return sub_1D1AAF790(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D1AB12C0(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640) - 8) + 80);

  return sub_1D1AB04D8(a1, a2);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1AB1364()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64A290);
  __swift_project_value_buffer(v0, qword_1EC64A290);
  return sub_1D1E6708C();
}

uint64_t sub_1D1AB1424()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v5, qword_1EC64A2A8);
  __swift_project_value_buffer(v5, qword_1EC64A2A8);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC64A290);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1AB1598(uint64_t *a1)
{
  v2 = sub_1D1909DC8();
  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315394;
    v9 = [v4 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v42);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v14 = sub_1D1E6765C();
    v16 = sub_1D1B1312C(v14, v15, &v42);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Setting up delegates for all devices in home: %s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (!*(v2 + 16))
  {
    v17 = v4;
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6832C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EC4300, &v42);
      *(v20 + 12) = 2082;
      v22 = HMHome.matterAccessories.getter();
      v23 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = MEMORY[0x1D3891260](v22, v23);
      v26 = v25;

      v27 = sub_1D1B1312C(v24, v26, &v42);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%s No eligible devices found: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  v28 = 1 << *(v2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v2 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  a1 = &qword_1EE07A000;
  while (v30)
  {
LABEL_18:
    v36 = (*(v2 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v37 = *v36;
    v38 = v36[1];
    v39 = qword_1EE07AE38;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC6BE138;
    }

    else
    {
      v33 = v41;
      swift_unknownObjectRetain();
    }

    v30 &= v30 - 1;
    ObjectType = swift_getObjectType();
    (*(v38 + 104))(v33, ObjectType, v38);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v2 + 64 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
      goto LABEL_18;
    }
  }
}
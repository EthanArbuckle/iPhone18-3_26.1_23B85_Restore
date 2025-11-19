uint64_t sub_1E658EE88(uint64_t a1)
{
  v2 = sub_1E65DAEB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
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
      sub_1E658C834(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E658F024(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_1E65DAEB8();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v42 = 0;
  v43 = v9 + 16;
  v50 = a4 + 56;
  v44 = v9;
  v45 = (v9 + 8);
  v46 = v11;
  v47 = result;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v49 + 48);
    v25 = *(v44 + 72);
    v48 = v23;
    (*(v44 + 16))(v11, v24 + v25 * v23, v6);
    v26 = sub_1E65DAE48();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, v30 = *(a4 + 40), sub_1E65E6D28(), sub_1E65E5D78(), v31 = sub_1E65E6D78(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v29 && v35[1] == v28;
        if (v36 || (sub_1E65E6C18() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_26:
        v38 = v49;

        return sub_1E658E5D0(v41, v40, v42, v38);
      }
    }

    else
    {
LABEL_5:

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E658F328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x1E69E9840];
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x1EEE9AC00](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_1E65DAE48();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_1E65E6D28();
      sub_1E65E5D78();
      v31 = sub_1E65E6D78();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_1E658E5D0(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_1E658E534(v41, v11, a1, v42);

  MEMORY[0x1E694F1C0](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t sub_1E658F778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BookmarkService.queryBookmarks.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BookmarkService.queryBookmarksByMediaTypes.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BookmarkService.filterBookmarks.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BookmarkService.queryBookmarksByReferenceTypes.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountByMediaTypes.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountWithFilter.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountByReferenceTypes.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t BookmarkService.insertBookmarks.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t BookmarkService.removeBookmarks.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t BookmarkService.makeBookmarkUpdatedStream.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t BookmarkService.queryAllPlaylists.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t BookmarkService.filterPlaylists.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t BookmarkService.queryPlaylistCount.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t BookmarkService.queryPlaylistCountWithFilter.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t BookmarkService.queryPlaylists.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t BookmarkService.insertPlaylists.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t BookmarkService.removePlaylists.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t BookmarkService.makePlaylistUpdatedStream.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t sub_1E658FB34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_1E658FB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E658FC08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B770, &qword_1E660CEC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658FCD4, v1, 0);
}

uint64_t sub_1E658FCD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_1E65DD318();

  return MEMORY[0x1EEE6DFA0](sub_1E658FD68, 0, 0);
}

uint64_t sub_1E658FD68()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 34;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D7A18();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65940C4, v2, v5);
}

uint64_t sub_1E658FE80(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_1E65D70A8();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6590058, v2, 0);
}

uint64_t sub_1E6590058()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[21];
  sub_1E65D70E8();
  sub_1E5DFD1CC(v2, v1, &qword_1ED07B730, &qword_1E65FCA88);
  v4 = sub_1E65D7158();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[32];
  if (v6 == 1)
  {
    sub_1E6327C08(v0[32]);
    goto LABEL_10;
  }

  v8 = sub_1E65D70C8();
  (*(v5 + 8))(v7, v4);
  if (!v8)
  {
LABEL_10:

    v8 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_11:

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_5:
  v10 = v0[30];
  v43 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v9, 0);
  v11 = v43;
  v12 = *(v10 + 16);
  v10 += 16;
  v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v41 = *(v10 + 56);
  v42 = v12;
  v40 = (v10 - 8);
  do
  {
    v14 = v0[31];
    v15 = v0[29];
    v42(v14, v13, v15);
    v16 = sub_1E65D7088();
    v18 = v17;
    (*v40)(v14, v15);
    v20 = *(v43 + 16);
    v19 = *(v43 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601C0B8((v19 > 1), v20 + 1, 1);
    }

    *(v43 + 16) = v20 + 1;
    v21 = v43 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v13 += v41;
    --v9;
  }

  while (v9);

LABEL_12:
  v22 = sub_1E600AA08(v11);
  v0[34] = v22;

  if (*(v22 + 16))
  {
    v24 = v0[27];
    v23 = v0[28];
    v25 = v0[26];
    v26 = *(v0[22] + 112);
    sub_1E65DE3D8();
    v27 = sub_1E65E5C48();

    v28 = [v26 arrayForKey_];
    v0[35] = v28;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1E6590540;
    swift_continuation_init();
    v0[17] = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B738, &unk_1E660CEA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    sub_1E65E5FD8();
    (*(v24 + 32))(boxed_opaque_existential_1, v23, v25);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1E6590D9C;
    v0[13] = &block_descriptor_24;
    [v28 valueWithCompletion_];
    (*(v24 + 8))(boxed_opaque_existential_1, v25);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v31 = v0[20];
    v30 = v0[21];
    sub_1E6327C08(v0[33]);

    v32 = sub_1E65D74E8();
    (*(*(v32 - 8) + 16))(v31, v30, v32);
    v34 = v0[32];
    v33 = v0[33];
    v35 = v0[31];
    v36 = v0[28];
    v37 = v0[25];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_1E6590540()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  if (v3)
  {
    v4 = *(v1 + 272);
    v5 = *(v1 + 176);

    v6 = sub_1E6590CE4;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 176);
    v6 = sub_1E6590668;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6590668()
{
  v1 = v0[35];
  v2 = v0[18];
  v0[37] = v2;

  sub_1E65E5F08();
  v3 = v0[34];
  v4 = v0[33];

  v5 = sub_1E65D8848();
  sub_1E6594104(&qword_1ED07B748, MEMORY[0x1E69CB5E8]);
  swift_allocError();
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CB5D8], v5);
  swift_willThrow();

  sub_1E6327C08(v4);
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6590890()
{
  v1 = v0[25];
  v2 = swift_task_alloc();
  v0[38] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 53;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = sub_1E65D74E8();
  *v4 = v0;
  v4[1] = sub_1E65909A8;
  v6 = v0[20];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65940AC, v2, v5);
}

uint64_t sub_1E65909A8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  if (v0)
  {

    v6 = sub_1E6590BB8;
    v7 = 0;
  }

  else
  {
    v9 = v2[24];
    v8 = v2[25];
    v12 = v2 + 22;
    v10 = v2[22];
    v11 = v12[1];

    (*(v9 + 8))(v8, v11);
    v6 = sub_1E6590B0C;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6590B0C()
{
  v1 = *(v0 + 264);

  sub_1E6327C08(v1);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E6590BB8()
{
  v1 = v0[22];
  (*(v0[24] + 8))(v0[25], v0[23]);

  return MEMORY[0x1EEE6DFA0](sub_1E6590C30, v1, 0);
}

uint64_t sub_1E6590C30()
{
  v1 = *(v0 + 264);

  sub_1E6327C08(v1);
  v2 = *(v0 + 320);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6590CE4()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  swift_willThrow();
  sub_1E6327C08(v3);

  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[25];

  v10 = v0[1];

  return v10();
}

void sub_1E6590D9C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
    sub_1E65E5FE8();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
    sub_1E65E5FF8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E6590E54(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B708, &qword_1E660CE70);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6590F20, v1, 0);
}

uint64_t sub_1E6590F20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_1E65DD2C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6590FB4, 0, 0);
}

uint64_t sub_1E6590FB4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65DA518();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593FD4, v2, v5);
}

uint64_t sub_1E65910CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F0, &qword_1E660CE58);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591198, v1, 0);
}

uint64_t sub_1E6591198()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_1E65DD2D8();

  return MEMORY[0x1EEE6DFA0](sub_1E659122C, 0, 0);
}

uint64_t sub_1E659122C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65DABE8();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593F7C, v2, v5);
}

uint64_t sub_1E6591344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591410, v1, 0);
}

uint64_t sub_1E6591410()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_1E65DD2E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65914AC, 0, 0);
}

uint64_t sub_1E65914AC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E654D1D0;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593F64, v2, v5);
}

uint64_t sub_1E65915BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658FC08(a1);
}

uint64_t sub_1E6591658(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E658FE80(a1, a2);
}

uint64_t sub_1E6591704(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 25) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591724, a2, 0);
}

uint64_t sub_1E6591724()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591748, v1, 0);
}

uint64_t sub_1E6591748()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 25);
  v3 = sub_1E6594104(&qword_1EE2D58A0, type metadata accessor for EngagementPlacementRegistry);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1E6591888;

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD000000000000012, 0x80000001E6619E50, sub_1E5E1B62C, v4, &type metadata for EngagementPlacement);
}

uint64_t sub_1E6591888()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1E63F9A00;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = sub_1E65919AC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E65919CC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65919EC, a2, 0);
}

uint64_t sub_1E65919EC()
{
  v1 = *(*(v0 + 16) + 160);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591A10, v1, 0);
}

uint64_t sub_1E6591A10()
{
  v1 = *(v0 + 24);
  sub_1E6595BE0(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6591A74(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591A94, a2, 0);
}

uint64_t sub_1E6591A94()
{
  v1 = *(*(v0 + 16) + 160);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E6591B30;
  v3 = *(v0 + 32);

  return sub_1E5E1ACF8(v3);
}

uint64_t sub_1E6591B30(uint64_t a1, char a2)
{
  v6 = *(*v3 + 24);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t sub_1E6591C74(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B798, &qword_1E660CEE8);
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591D48, a3, 0);
}

uint64_t sub_1E6591D48()
{
  v1 = *(*(v0 + 24) + 160);
  (*(*(v0 + 40) + 104))(*(v0 + 48), *MEMORY[0x1E69E8650], *(v0 + 32));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1E6591E0C;
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 64);

  return sub_1E65961E4(v4, v5, v3);
}

uint64_t sub_1E6591E0C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1E6591F64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6590E54(a1);
}

uint64_t sub_1E6592000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65910CC(a1);
}

uint64_t sub_1E659209C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6591344(a1);
}

uint64_t sub_1E6592134(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B770, &qword_1E660CEC0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65940DC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6592510(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B708, &qword_1E660CE70);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6593FEC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65928EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F0, &qword_1E660CE58);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6593FAC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6592CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D7A18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B780, &unk_1E660CED0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B780, &unk_1E660CED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E659303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DA518();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B718, &unk_1E660CE80);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B718, &unk_1E660CE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65933B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DABE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B700, &qword_1E660CE68);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B700, &qword_1E660CE68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6593724(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    sub_1E65E6D28();

    sub_1E65E5D78();
    v11 = sub_1E65E6D78();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (sub_1E65E6C18() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_1E6593870(void *a1, int64_t a2, char a3)
{
  result = sub_1E6593890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E6593890(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B788, &qword_1E660D580);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B790, &qword_1E660CEE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E65939D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65915BC(a1);
}

uint64_t sub_1E6593A74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6591658(a1, a2);
}

uint64_t sub_1E6593B20(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E621FCB8;

  return sub_1E6591704(a1, v1);
}

uint64_t sub_1E6593BB8(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65919CC(a1, v1);
}

uint64_t sub_1E6593C50(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E659414C;

  return sub_1E6591A74(a1, v1);
}

uint64_t sub_1E6593CE8(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6591C74(a1, a2, v2);
}

uint64_t sub_1E6593D94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6591F64(a1);
}

uint64_t sub_1E6593E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6592000(a1);
}

uint64_t sub_1E6593ECC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E659209C(a1);
}

uint64_t sub_1E6594014(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6594104(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E6594154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - v4;
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v11 = sub_1E65D76C8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v14 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v15 = sub_1E65E5C48();
  v16 = sub_1E65E5C48();
  v17 = sub_1E65E5AF8();

  v18 = [v14 initWithTitle:v15 message:v16 appearanceInfo:v17];

  v40 = v11;
  v39 = v13;
  v19 = sub_1E65E5C48();
  [v18 setIdentifier_];

  sub_1E65D74C8();
  v20 = sub_1E65D74E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = 0;
  if (v22(v5, 1, v20) != 1)
  {
    v23 = sub_1E65D7448();
    (*(v21 + 8))(v5, v20);
  }

  [v18 setIconURL_];

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:0 style:2];
  [v18 addButtonAction_];

  [v18 setStyle_];
  v26 = sub_1E65E5C48();
  v27 = [v24 actionWithTitle_];

  v28 = v38;
  sub_1E65D74C8();
  v29 = 0;
  if (v22(v28, 1, v20) != 1)
  {
    v29 = sub_1E65D7448();
    (*(v21 + 8))(v28, v20);
  }

  [v27 setDeepLink_];

  [v18 addButtonAction_];
  sub_1E65D7D88();
  sub_1E65D7D98();
  v30 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v31 = sub_1E65E5C48();

  v32 = [v30 initWithTopic_];

  [v18 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v41 = 0xD000000000000012;
  v42 = 0x80000001E6616710;
  v34 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v34;
  v35 = v39;
  *(inited + 72) = v40;
  *(inited + 80) = v35;
  v41 = 0x6E656D6563616C70;
  v42 = 0xE900000000000074;
  sub_1E65E6848();
  *(inited + 168) = v34;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x80000001E6619C90;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v36 = sub_1E65E5AF8();

  [v18 setClickstreamMetricsEvent_];

  return v18;
}

id sub_1E6594788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - v4;
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v11 = sub_1E65D76C8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v14 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v15 = sub_1E65E5C48();
  v16 = sub_1E65E5C48();
  v17 = sub_1E65E5AF8();

  v18 = [v14 initWithTitle:v15 message:v16 appearanceInfo:v17];

  v40 = v11;
  v39 = v13;
  v19 = sub_1E65E5C48();
  [v18 setIdentifier_];

  [v18 setStyle_];
  sub_1E65D74C8();
  v20 = sub_1E65D74E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = 0;
  if (v22(v5, 1, v20) != 1)
  {
    v23 = sub_1E65D7448();
    (*(v21 + 8))(v5, v20);
  }

  [v18 setIconURL_];

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:0 style:2];
  [v18 addButtonAction_];

  v26 = sub_1E65E5C48();
  v27 = [v24 actionWithTitle_];

  v28 = v38;
  sub_1E65D74C8();
  v29 = 0;
  if (v22(v28, 1, v20) != 1)
  {
    v29 = sub_1E65D7448();
    (*(v21 + 8))(v28, v20);
  }

  [v27 setDeepLink_];

  [v18 addButtonAction_];
  sub_1E65D7D88();
  sub_1E65D7D98();
  v30 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v31 = sub_1E65E5C48();

  v32 = [v30 initWithTopic_];

  [v18 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v41 = 0xD000000000000012;
  v42 = 0x80000001E6616710;
  v34 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v34;
  v35 = v39;
  *(inited + 72) = v40;
  *(inited + 80) = v35;
  v41 = 0x6E656D6563616C70;
  v42 = 0xE900000000000074;
  sub_1E65E6848();
  *(inited + 168) = v34;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x80000001E6618C50;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v36 = sub_1E65E5AF8();

  [v18 setClickstreamMetricsEvent_];

  return v18;
}

id sub_1E6594DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v33 = sub_1E65D76C8();
  v32 = v9;
  v10 = *(v5 + 8);
  v10(v8, v4);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v11 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v12 = sub_1E65E5C48();
  v13 = sub_1E65E5C48();
  v14 = sub_1E65E5AF8();

  v15 = [v11 initWithTitle:v12 message:v13 appearanceInfo:v14];

  [v15 setStyle_];
  sub_1E65D76E8();
  sub_1E65D76C8();
  v10(v8, v4);
  v16 = sub_1E65E5C48();

  [v15 setIdentifier_];

  sub_1E65D74C8();
  v17 = sub_1E65D74E8();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v3, 1, v17) != 1)
  {
    v19 = sub_1E65D7448();
    (*(v18 + 8))(v3, v17);
  }

  [v15 setIconURL_];

  v20 = [objc_opt_self() actionWithTitle:0 style:2];
  [v15 addButtonAction_];

  sub_1E65D7D88();
  sub_1E65D7D98();
  v21 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v22 = sub_1E65E5C48();

  v23 = [v21 initWithTopic_];

  [v15 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v34 = 0xD000000000000012;
  v35 = 0x80000001E6616710;
  v25 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v25;
  v26 = v32;
  *(inited + 72) = v33;
  *(inited + 80) = v26;
  v34 = 0x6E656D6563616C70;
  v35 = 0xE900000000000074;
  sub_1E65E6848();
  v27 = sub_1E65DB7F8();
  *(inited + 168) = v25;
  *(inited + 144) = v27;
  *(inited + 152) = v28;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v29 = sub_1E65E5AF8();

  [v15 setClickstreamMetricsEvent_];

  return v15;
}

id sub_1E65952F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v9 = sub_1E65D76C8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v12 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v13 = sub_1E65E5C48();
  v14 = sub_1E65E5C48();
  v15 = sub_1E65E5AF8();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v17 = sub_1E65E5C48();
  [v16 setIdentifier_];

  [v16 setStyle_];
  sub_1E65D74C8();
  v18 = sub_1E65D74E8();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v3, 1, v18) != 1)
  {
    v20 = sub_1E65D7448();
    (*(v19 + 8))(v3, v18);
  }

  [v16 setIconURL_];

  v21 = [objc_opt_self() actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  sub_1E65D7D88();
  sub_1E65D7D98();
  v22 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v23 = sub_1E65E5C48();

  v24 = [v22 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v32 = 0xD000000000000012;
  v33 = 0x80000001E6616710;
  v26 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v26;
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v32 = 0x6E656D6563616C70;
  v33 = 0xE900000000000074;
  sub_1E65E6848();
  v27 = sub_1E65DB7F8();
  *(inited + 168) = v26;
  *(inited + 144) = v27;
  *(inited + 152) = v28;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v29 = sub_1E65E5AF8();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id _sSo16AMSDialogRequestC24FitnessEngagementServiceE24makeSummaryPaletteBannerAByFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - v5;
  v7 = sub_1E65D76F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  sub_1E65D76C8();
  (*(v8 + 8))(v11, v7);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v12 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v13 = sub_1E65E5C48();
  v14 = sub_1E65E5C48();
  v15 = sub_1E65E5AF8();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v17 = sub_1E65E5C48();

  [v16 setIdentifier_];

  [v16 setStyle_];
  sub_1E65D74C8();
  v18 = sub_1E65D74E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v6, 1, v18) != 1)
  {
    v21 = sub_1E65D7448();
    (*(v19 + 8))(v6, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  v24 = [v22 actionWithTitle:0 style:0];
  sub_1E65D74C8();
  v25 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v25 = sub_1E65D7448();
    (*(v19 + 8))(v4, v18);
  }

  [v24 setDeepLink_];

  [v16 setDefaultAction_];
  return v16;
}

void sub_1E6595BE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - v11;
  swift_beginAccess();
  v13 = *(v1 + 176);
  if (*(v13 + 16) && (v14 = sub_1E5E1B97C(a1), (v15 & 1) != 0))
  {
    v16 = *(v13 + 56) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    swift_endAccess();
    if (v18 < 0)
    {
      swift_beginAccess();
      sub_1E6596778(0, 0xFEu, a1);
      swift_endAccess();
      v34 = sub_1E65E60A8();
      (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
      v35 = sub_1E5E1B028();
      v36 = swift_allocObject();
      *(v36 + 16) = v2;
      *(v36 + 24) = v35;
      *(v36 + 32) = v2;
      *(v36 + 40) = a1;
      swift_retain_n();
      sub_1E64B83F8(0, 0, v12, &unk_1E660D368, v36);
    }

    else
    {
      swift_beginAccess();

      sub_1E6596778(0, 0xFEu, a1);
      swift_endAccess();
      v19 = sub_1E65E60A8();
      (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
      v20 = sub_1E5E1B028();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v20;
      *(v21 + 32) = v2;
      *(v21 + 40) = a1;
      swift_retain_n();
      sub_1E64B83F8(0, 0, v12, &unk_1E660D358, v21);

      v22 = v17[2];
      if (v22)
      {
        v39 = v18;
        v25 = *(v5 + 16);
        v23 = v5 + 16;
        v24 = v25;
        v26 = (*(v23 + 64) + 32) & ~*(v23 + 64);
        v38 = v17;
        v27 = v17 + v26;
        v28 = *(v23 + 56);
        v29 = (v23 - 8);
        do
        {
          v24(v8, v27, v4);
          sub_1E6599984();
          v30 = swift_allocError();
          *v31 = 3;
          v40 = v30;
          sub_1E65E5FE8();
          (*v29)(v8, v4);
          v27 += v28;
          --v22;
        }

        while (v22);
        v32 = v38;
        v33 = v39;
      }

      else
      {
        v32 = v17;
        v33 = v18;
      }

      sub_1E659B884(v32, v33);
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1E6595FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1E6596160;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 32);

    v5 = sub_1E65960D4;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E65960D4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1E6597498(*(v0 + 26));

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1E6596160()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 26);

  sub_1E6597498(v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 80);

  return v5();
}

uint64_t sub_1E65961E4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 88) = a2;
  *(v4 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E659620C, v3, 0);
}

uint64_t sub_1E659620C()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16))
  {
    v3 = sub_1E5E1B97C(*(v0 + 88));
    if (v4)
    {
      *(v0 + 64) = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
      sub_1E659B6AC();
      v5 = sub_1E65E5FC8();
      v7 = v6;
      v8 = sub_1E6596438;
      goto LABEL_11;
    }
  }

  v9 = *(v0 + 56);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(v9 + 176);
  if (!*(v10 + 16) || (v11 = sub_1E5E1B97C(*(v0 + 88)), (v12 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_9;
  }

  v13 = *(v10 + 56) + 16 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  swift_endAccess();
  if ((v15 & 0x80000000) == 0)
  {
LABEL_9:
    v14 = 0;
    v16 = -1;
    goto LABEL_10;
  }

  v16 = v15 & 1;
  v17 = v14;
LABEL_10:
  *(v0 + 89) = v16;
  *(v0 + 72) = v14;
  v18 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
  *(v0 + 16) = v14;
  *(v0 + 24) = v16;
  sub_1E659B698(v14, v16);
  v19 = sub_1E65E1808();
  *(v0 + 80) = v19;
  swift_beginAccess();

  v20 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_1E659A5AC(v19, v18, isUniquelyReferenced_nonNull_native);
  *(v1 + 168) = v24;
  swift_endAccess();
  sub_1E659B6AC();
  v5 = sub_1E65E5FC8();
  v7 = v22;
  v8 = sub_1E6596504;
LABEL_11:

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1E6596438()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1E65E17F8();

  return MEMORY[0x1EEE6DFA0](sub_1E65964A4, v1, 0);
}

uint64_t sub_1E65964A4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6596504()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  sub_1E65E17F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6596574, v3, 0);
}

uint64_t sub_1E6596574()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 89);

  sub_1E659B710(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t EngagementPlacementError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6596670()
{
  result = qword_1ED07B7B0;
  if (!qword_1ED07B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B7B0);
  }

  return result;
}

uint64_t sub_1E65966D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E6596718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1E6596778(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2 <= 0xFDu)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1E5E1B714(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v4 = v17;
  }

  else
  {
    v6 = sub_1E5E1B97C(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v16 = *v4;
      if (!v10)
      {
        sub_1E659A6F8();
        v11 = v16;
      }

      sub_1E659B884(*(*(v11 + 56) + 16 * v8), *(*(v11 + 56) + 16 * v8 + 8));
      sub_1E659A2B0(v8, v11);
      *v4 = v11;
    }
  }
}

uint64_t sub_1E6596858(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v10 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_1E6596CA8;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[7];

    v6 = sub_1E6596980;
    v5 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6596980()
{
  v40 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  sub_1E65DE2D8();

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 72);
    v38 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = *(v0 + 121);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39[0] = v10;
    *v9 = 136315394;
    *(v0 + 120) = v8;
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B790, &qword_1E660CEE0);
    v15 = MEMORY[0x1E694D940](v5, v14);
    v17 = sub_1E5DFD4B0(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "%s requests: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v6 + 8))(v38, v7);
  }

  else
  {
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 104);
  if (*(v21 + 16))
  {
    v22 = *(v0 + 121);
    sub_1E5DF650C(v21 + 32, v0 + 16);

    v23 = sub_1E659BA88((v0 + 16), v22);
    if (v24 != -1)
    {
      v25 = v23;
      v26 = *(v0 + 56);
      v27 = v24;
      sub_1E6596D4C(*(v0 + 121), v23, v24 & 1);
      sub_1E659B710(v25, v27);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_10;
    }

    sub_1E6599984();
    v29 = swift_allocError();
    *v31 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v28 = *(v0 + 104);

    sub_1E6599984();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  v32 = *(v0 + 56);
  v33 = *(v0 + 121);
  v34 = v29;
  sub_1E6596D4C(v33, v29, 256);

LABEL_10:
  v35 = *(v0 + 80);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1E6596CA8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 121);
  v5 = v2;
  sub_1E6596D4C(v4, v2, 256);

  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1E6596D4C(uint64_t a1, void *a2, __int16 a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  if ((a3 & 0x100) != 0)
  {
    swift_beginAccess();
    v33 = *(v3 + 176);
    if (*(v33 + 16))
    {
      v34 = sub_1E5E1B97C(a1);
      if (v35)
      {
        v36 = *(v33 + 56) + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);
        swift_endAccess();
        if (v38 < 0)
        {
          return;
        }

        swift_beginAccess();

        sub_1E6596778(0, 0xFEu, a1);
        swift_endAccess();
        v39 = v37[2];
        if (v39)
        {
          LODWORD(v48) = v38;
          v41 = *(v9 + 16);
          v40 = v9 + 16;
          v49 = v41;
          v42 = *(v40 + 64);
          v47 = v37;
          v43 = v37 + ((v42 + 32) & ~v42);
          v44 = v40;
          v45 = *(v40 + 56);
          do
          {
            v49(v13, v43, v8);
            v51 = a2;
            sub_1E659B89C(a2);
            sub_1E65E5FE8();
            (*(v44 - 8))(v13, v8);
            v43 += v45;
            --v39;
          }

          while (v39);
          v31 = v47;
          v32 = v48;
        }

        else
        {
          v31 = v37;
          v32 = v38;
        }

        goto LABEL_19;
      }
    }

LABEL_16:
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  v16 = *(v3 + 176);
  if (!*(v16 + 16))
  {
    goto LABEL_16;
  }

  v17 = sub_1E5E1B97C(a1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(v16 + 56) + 16 * v17;
  v20 = *v19;
  v21 = *(v19 + 8);
  swift_endAccess();
  if (v21 < 0)
  {
    return;
  }

  swift_beginAccess();
  sub_1E659B890(v20, v21);
  sub_1E659B89C(a2);
  v22 = *(v4 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v4 + 176);
  *(v4 + 176) = 0x8000000000000000;
  v48 = v20;
  sub_1E5E1B714(a2, a3 & 1 | 0x80, a1, isUniquelyReferenced_nonNull_native);
  v24 = v48;
  *(v4 + 176) = v50;
  swift_endAccess();
  v25 = v24[2];
  if (v25)
  {
    LODWORD(v47) = v21;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v49 = v27;
    v28 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    v30 = (v26 - 8);
    do
    {
      v49(v15, v28, v8);
      v51 = a2;
      v52 = a3 & 1;
      sub_1E659B89C(a2);
      sub_1E65E5FF8();
      (*v30)(v15, v8);
      v28 += v29;
      --v25;
    }

    while (v25);
    v31 = v48;
    v32 = v47;
  }

  else
  {
    v31 = v24;
    v32 = v21;
  }

LABEL_19:
  sub_1E659B884(v31, v32);
}

uint64_t sub_1E65970F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E6597118, a4, 0);
}

uint64_t sub_1E6597118()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16) && (v3 = sub_1E5E1B97C(*(v0 + 64)), (v4 & 1) != 0))
  {
    *(v0 + 56) = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
    sub_1E659B6AC();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6597244, v6, v5);
  }

  else
  {
    swift_endAccess();
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E6597244()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659BA84, v1, 0);
}

uint64_t sub_1E65972B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E65972DC, a4, 0);
}

uint64_t sub_1E65972DC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16) && (v3 = sub_1E5E1B97C(*(v0 + 64)), (v4 & 1) != 0))
  {
    *(v0 + 56) = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
    sub_1E659B6AC();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6597408, v6, v5);
  }

  else
  {
    swift_endAccess();
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E6597408()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659747C, v1, 0);
}

void sub_1E6597498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1[23] + 16) && (sub_1E5E1B97C(a1), (v9 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1E65DE2D8();
    v10 = sub_1E65E3B48();
    v11 = sub_1E65E6338();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136315138;
      v14 = sub_1E65DB7F8();
      v33 = v4;
      v16 = sub_1E5DFD4B0(v14, v15, &v36);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1E5DE9000, v10, v11, "Observing placement: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E694F1C0](v13, -1, -1);
      MEMORY[0x1E694F1C0](v12, -1, -1);

      (*(v5 + 8))(v8, v33);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = type metadata accessor for MarketingPlacementObserver();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_placement] = a1;
    v21 = &v20[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForDialogPlacement];
    *v21 = &unk_1E660D2E8;
    v21[1] = v17;
    v22 = &v20[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForEngagementPlacement];
    *v22 = &unk_1E660D2F8;
    v22[1] = v18;
    v35.receiver = v20;
    v35.super_class = v19;
    v23 = objc_msgSendSuper2(&v35, sel_init);
    v24 = v2[17];
    v25 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v24);
    v26 = v23;
    v27 = sub_1E65DB7F8();
    (*(v25 + 16))(v26, v27, v28, v2[19], v2[20], v24, v25);

    swift_beginAccess();
    v29 = v26;
    v30 = v2[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v2[23];
    v2[23] = 0x8000000000000000;
    sub_1E659A464(v29, a1, isUniquelyReferenced_nonNull_native);
    v2[23] = v34;
    swift_endAccess();
  }
}

uint64_t sub_1E6597824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6597848, 0, 0);
}

uint64_t sub_1E6597848()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5 || (v4 = v3, v5 = v0[8], swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[9] = Strong) == 0))
  {
    v10 = v0[1];

    return v10();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1E6597964;
    v8 = v0[7];

    return sub_1E6597A74(v4, v8);
  }
}

uint64_t sub_1E6597964()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E6597A74(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 121) = a1;
  v4 = sub_1E65E3B68();
  *(v3 + 160) = v4;
  v5 = *(v4 - 8);
  *(v3 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6597B38, v2, 0);
}

uint64_t sub_1E6597B38()
{
  v50 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = v1;
    sub_1E65DE2D8();
    v4 = v3;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    if (v7)
    {
      v11 = *(v0 + 121);
      v48 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v12 = 136315394;
      v13 = sub_1E65DB7F8();
      v15 = sub_1E5DFD4B0(v13, v14, &v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v4;
      v17 = [v16 description];
      v18 = sub_1E65E5C78();
      v46 = v9;
      v20 = v19;

      v21 = sub_1E5DFD4B0(v18, v20, &v49);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Engagement Placement %s updated with dialog %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v47, -1, -1);
      MEMORY[0x1E694F1C0](v12, -1, -1);

      (*(v8 + 8))(v46, v48);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 152);
    v33 = *(v0 + 121);
    swift_beginAccess();
    v34 = v4;
    v35 = *(v32 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v32 + 176);
    *(v32 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v31, 128, v33, isUniquelyReferenced_nonNull_native);
    *(v32 + 176) = v49;
    swift_endAccess();
    swift_beginAccess();
    v37 = *(v32 + 168);
    if (*(v37 + 16))
    {
      v38 = sub_1E5E1B97C(*(v0 + 121));
      if (v39)
      {
        v40 = *(v0 + 144);
        *(v0 + 184) = *(*(v37 + 56) + 8 * v38);
        swift_endAccess();
        *(v0 + 128) = v40;
        *(v0 + 136) = 0;
        v41 = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v27 = sub_1E65E5FC8();
        v29 = v42;
        v30 = sub_1E6597F6C;
        goto LABEL_11;
      }
    }

    swift_endAccess();
  }

  else
  {
    v22 = *(v0 + 152);
    v23 = *(v0 + 121);
    swift_beginAccess();
    sub_1E6596778(0, 0xFEu, v23);
    swift_endAccess();
    swift_beginAccess();
    v24 = *(v22 + 168);
    if (*(v24 + 16))
    {
      v25 = sub_1E5E1B97C(*(v0 + 121));
      if (v26)
      {
        *(v0 + 192) = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        *(v0 + 112) = 0;
        *(v0 + 120) = -1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v27 = sub_1E65E5FC8();
        v29 = v28;
        v30 = sub_1E659BA74;
LABEL_11:

        return MEMORY[0x1EEE6DFA0](v30, v27, v29);
      }
    }

    swift_endAccess();
  }

  v43 = *(v0 + 176);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1E6597F6C()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659BA80, v2, 0);
}

uint64_t sub_1E6597FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6598014, 0, 0);
}

uint64_t sub_1E6598014()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5 || (v4 = v3, v5 = v0[8], swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[9] = Strong) == 0))
  {
    v10 = v0[1];

    return v10();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1E659BA70;
    v8 = v0[7];

    return sub_1E6598130(v4, v8);
  }
}

uint64_t sub_1E6598130(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 121) = a1;
  v4 = sub_1E65E3B68();
  *(v3 + 160) = v4;
  v5 = *(v4 - 8);
  *(v3 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65981F4, v2, 0);
}

uint64_t sub_1E65981F4()
{
  v50 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = v1;
    sub_1E65DE2D8();
    v4 = v3;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    if (v7)
    {
      v11 = *(v0 + 121);
      v48 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v12 = 136315394;
      v13 = sub_1E65DB7F8();
      v15 = sub_1E5DFD4B0(v13, v14, &v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v4;
      v17 = [v16 description];
      v18 = sub_1E65E5C78();
      v46 = v9;
      v20 = v19;

      v21 = sub_1E5DFD4B0(v18, v20, &v49);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Engagement Placement %s updated with request %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v47, -1, -1);
      MEMORY[0x1E694F1C0](v12, -1, -1);

      (*(v8 + 8))(v46, v48);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 152);
    v33 = *(v0 + 121);
    swift_beginAccess();
    v34 = v4;
    v35 = *(v32 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v32 + 176);
    *(v32 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v31, 129, v33, isUniquelyReferenced_nonNull_native);
    *(v32 + 176) = v49;
    swift_endAccess();
    swift_beginAccess();
    v37 = *(v32 + 168);
    if (*(v37 + 16))
    {
      v38 = sub_1E5E1B97C(*(v0 + 121));
      if (v39)
      {
        v40 = *(v0 + 144);
        *(v0 + 184) = *(*(v37 + 56) + 8 * v38);
        swift_endAccess();
        *(v0 + 128) = v40;
        *(v0 + 136) = 1;
        v41 = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v27 = sub_1E65E5FC8();
        v29 = v42;
        v30 = sub_1E659862C;
        goto LABEL_11;
      }
    }

    swift_endAccess();
  }

  else
  {
    v22 = *(v0 + 152);
    v23 = *(v0 + 121);
    swift_beginAccess();
    sub_1E6596778(0, 0xFEu, v23);
    swift_endAccess();
    swift_beginAccess();
    v24 = *(v22 + 168);
    if (*(v24 + 16))
    {
      v25 = sub_1E5E1B97C(*(v0 + 121));
      if (v26)
      {
        *(v0 + 192) = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        *(v0 + 112) = 0;
        *(v0 + 120) = -1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v27 = sub_1E65E5FC8();
        v29 = v28;
        v30 = sub_1E6598718;
LABEL_11:

        return MEMORY[0x1EEE6DFA0](v30, v27, v29);
      }
    }

    swift_endAccess();
  }

  v43 = *(v0 + 176);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1E659862C()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E65986B0, v2, 0);
}

uint64_t sub_1E65986B0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6598718()
{
  v1 = v0[24];
  sub_1E65E1818();

  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6598834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E659885C, 0, 0);
}

uint64_t sub_1E659885C()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForDialogPlacement;
  v2 = *v1;
  *(v0 + 56) = *v1;
  if (v2)
  {
    v3 = *(v1 + 8);
    v11 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_1E65989A8;
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);

    return v11(v8, v6, v7);
  }

  else
  {
    **(v0 + 16) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E65989A8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E657688C, 0, 0);
}

uint64_t sub_1E6598CE8(void *a1, void *a2, int a3, int a4, void *aBlock, void *a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v10 = sub_1E65E5C78();
  v12 = v11;
  v6[6] = v11;
  v13 = a1;
  v14 = a2;
  a6;
  v15 = swift_task_alloc();
  v6[7] = v15;
  *v15 = v6;
  v15[1] = sub_1E6598DE0;

  return sub_1E659AFD4(a2, v10, v12);
}

uint64_t sub_1E6598DE0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = sub_1E65D73A8();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1E6599164(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);

  return MEMORY[0x1EEE6DFA0](sub_1E65991D0, 0, 0);
}

uint64_t sub_1E65991D0()
{
  v1 = *(v0 + 16);
  sub_1E6599984();
  v2 = swift_allocError();
  *v3 = 0;
  swift_willThrow();
  v4 = sub_1E65D73A8();

  (v1)[2](v1, 0, v4);
  _Block_release(v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E6599434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E6599484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1E65994FC(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);

  return MEMORY[0x1EEE6DFA0](sub_1E659BA78, 0, 0);
}

uint64_t sub_1E6599568()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65994FC(v2, v3, v5);
}

uint64_t sub_1E6599628(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1E5DFE6BC;

  return v7();
}

uint64_t sub_1E6599710()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6599628(v2, v3, v5);
}

uint64_t sub_1E65997D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1E5DFA78C;

  return v8();
}

uint64_t sub_1E65998B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65997D0(a1, v4, v5, v7);
}

unint64_t sub_1E6599984()
{
  result = qword_1EE2D58A8;
  if (!qword_1EE2D58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D58A8);
  }

  return result;
}

uint64_t sub_1E65999D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6599164(v2, v3, v5);
}

uint64_t sub_1E6599A98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6598CE8(v2, v3, v4, v5, v7, v6);
}

size_t sub_1E6599B6C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328) - 8);
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

uint64_t sub_1E6599D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
  v34 = a2;
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E659A004(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B870, &qword_1E660D2D0);
  v33 = a2;
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E659A2B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E65E6758() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v16 >= v17 + 1))
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E659A464(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5E1B97C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E659A868();
    result = v17;
    goto LABEL_8;
  }

  sub_1E6599D5C(v14, a3 & 1);
  v18 = *v4;
  result = sub_1E5E1B97C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1E65E6C68();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1E659A5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5E1B97C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1E659A004(v14, a3 & 1);
      v18 = *v4;
      result = sub_1E5E1B97C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1E65E6C68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1E659A9C4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

void *sub_1E659A6F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
  v2 = *v0;
  v3 = sub_1E65E6A08();
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        result = sub_1E659B890(v19, v20);
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

id sub_1E659A868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
  v2 = *v0;
  v3 = sub_1E65E6A08();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1E659A9C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B870, &qword_1E660D2D0);
  v2 = *v0;
  v3 = sub_1E65E6A08();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1E659AB20(uint64_t result)
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1E6599B6C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E659AC58(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_1E65E3B68();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE2D8();
  v16 = a1;

  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  v38 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v11;
    v20 = v19;
    v36 = swift_slowAlloc();
    v42 = v36;
    *v20 = 136315394;
    *(v20 + 4) = sub_1E5DFD4B0(a2, a3, &v42);
    *(v20 + 12) = 2080;
    v41 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B850, &qword_1E660D2B8);
    v21 = sub_1E65E6638();
    v23 = sub_1E5DFD4B0(v21, v22, &v42);

    *(v20 + 14) = v23;
    v4 = v3;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Engagement Placement %s updated with dialog request %s", v20, 0x16u);
    v24 = v36;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v24, -1, -1);
    v25 = v20;
    v11 = v37;
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  (*(v39 + 8))(v15, v40);
  v26 = v4[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_placement];
  if (sub_1E65DB7F8() == a2 && v27 == a3)
  {

    goto LABEL_10;
  }

  v29 = sub_1E65E6C18();

  if (v29)
  {
LABEL_10:
    v31 = sub_1E65E60A8();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v4;
    v32[5] = a2;
    v32[6] = a3;
    v32[7] = a1;

    v33 = v38;
    v34 = v4;
    sub_1E64B83F8(0, 0, v11, &unk_1E660D2B0, v32);
  }

  return result;
}

uint64_t sub_1E659AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65E3B68();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659B098, 0, 0);
}

uint64_t sub_1E659B098()
{
  v45 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];
  sub_1E65DE2D8();
  v4 = v3;

  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v42 = v0[9];
    v8 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1E5DFD4B0(v10, v9, v44);
    *(v12 + 12) = 2080;
    v0[2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B840, &unk_1E660D298);
    v14 = sub_1E65E6638();
    v16 = sub_1E5DFD4B0(v14, v15, v44);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Engagement Placement %s updated with engagement request %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v13, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);

    (*(v7 + 8))(v42, v8);
  }

  else
  {
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[5];
  v21 = v0[4];
  v22 = *(v0[6] + OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_placement);
  if (sub_1E65DB7F8() == v21 && v23 == v20)
  {
  }

  else
  {
    v25 = v0[4];
    v26 = v0[5];
    v27 = sub_1E65E6C18();

    if ((v27 & 1) == 0)
    {
      v28 = 2;
LABEL_16:
      v39 = v0[9];
      sub_1E6599984();
      swift_allocError();
      *v40 = v28;
      swift_willThrow();

      v41 = v0[1];

      return v41();
    }
  }

  v29 = v0[6] + OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForEngagementPlacement;
  v30 = *v29;
  if (!*v29)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v31 = *(v29 + 8);
  v32 = *v29;
  v43 = (v30 + *v30);
  v33 = v30[1];
  v34 = swift_task_alloc();
  v0[10] = v34;
  *v34 = v0;
  v34[1] = sub_1E659B42C;
  v36 = v0[4];
  v35 = v0[5];
  v37 = v0[3];

  return v43(v36, v35, v37);
}

uint64_t sub_1E659B42C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E659B528, 0, 0);
}

uint64_t sub_1E659B528()
{
  v1 = *(v0 + 72);
  sub_1E6599984();
  swift_allocError();
  *v2 = 0;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E659B5C4(uint64_t a1)
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
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6598834(a1, v4, v5, v6, v7, v9, v8);
}

id sub_1E659B698(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E659B6AC()
{
  result = qword_1EE2D64A8;
  if (!qword_1EE2D64A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07B860, &qword_1E660D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D64A8);
  }

  return result;
}

void sub_1E659B710(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1E659B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6597824(a1, a2, a3, v3);
}

uint64_t sub_1E659B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6597FF0(a1, a2, a3, v3);
}

void sub_1E659B884(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

id sub_1E659B890(void *a1, char a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1E659B8A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65972B8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_94Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E659B9AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65970F4(a1, v4, v5, v6, v7);
}

uint64_t sub_1E659BA88(void *a1, unsigned __int8 a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (a2 > 1u && (a2 == 2 || a2 == 3))
  {
    return (*(v3 + 8))(v4, v3);
  }

  else
  {
    return (*(v3 + 16))(v4, v3);
  }
}

uint64_t sub_1E659BB30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1E659BD94;
  }

  else
  {
    v3 = sub_1E659BC40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E659BC40()
{
  v1 = v0[18];
  v2 = [v1 messageActions];

  v3 = v0[32];
  if (v2)
  {
    v5 = v0[19];
    v4 = v0[20];
    sub_1E5DEF738(0, &qword_1ED07B8A8, 0x1E698C8F0);
    v6 = sub_1E65E5F18();

    v7 = sub_1E659C304(v6, v5, v4);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v11 = v0[26];
  v12 = sub_1E659BEE8(v7);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_1E659BD94()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[33];

  return v7();
}

void sub_1E659BE38(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8A0, &qword_1E660D430);
    sub_1E65E5FE8();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8A0, &qword_1E660D430);
    sub_1E65E5FF8();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1E659BEE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E65E67C8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1E6593870(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E694E2D0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1E6593870((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1E5DEF738(0, &qword_1ED07B8B0, 0x1E698C8F8);
        v16 = &protocol witness table for AMSEngagementMessageRequest;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1E5DF599C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1E6593870((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1E5DEF738(0, &qword_1ED07B8B0, 0x1E698C8F8);
        v16 = &protocol witness table for AMSEngagementMessageRequest;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1E5DF599C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E659C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  if (a3)
  {
    v9 = sub_1E65E5C48();
    if (a5)
    {
LABEL_3:
      v10 = sub_1E65E5C48();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  [v8 addObserver:a1 placement:v9 serviceType:?];
}

id sub_1E659C178()
{
  v1 = [*v0 engagementRequest];

  return v1;
}

id sub_1E659C1B0()
{
  v1 = [*v0 makeDialogRequest];

  return v1;
}

unint64_t sub_1E659C210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B870, &qword_1E660D2D0);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1E5E1B97C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_1E659C304(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t a3)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v35 = isUniquelyReferenced_nonNull_bridgeObject;
    v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = &qword_1ED07B8B8;
    v38 = v3;
    while (1)
    {
      if (v42)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1E694E2D0](v4, v35);
      }

      else
      {
        if (v4 >= *(v41 + 16))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v40 + 8 * v4);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [isUniquelyReferenced_nonNull_bridgeObject placementsMap];
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(v6, &qword_1E660D438);
        v11 = sub_1E65E5B08();

        if (*(v11 + 16))
        {
          v12 = sub_1E6215038(a2, a3);
          if (v13)
          {
            v14 = *(*(v11 + 56) + 8 * v12);

            goto LABEL_17;
          }
        }
      }

      else
      {
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_17:
      v15 = v14 >> 62;
      if (v14 >> 62)
      {
        v16 = sub_1E65E67C8();
      }

      else
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1E65E67C8();
        v18 = isUniquelyReferenced_nonNull_bridgeObject + v16;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v16))
        {
LABEL_47:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = isUniquelyReferenced_nonNull_bridgeObject + v16;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v16))
        {
          goto LABEL_47;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v45 = v16;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v17)
        {
          goto LABEL_28;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v17)
        {
LABEL_28:
          sub_1E65E67C8();
          goto LABEL_29;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = *(v19 + 16);
LABEL_29:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1E65E68D8();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v19 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v15)
      {
        v24 = v19;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1E65E67C8();
        v19 = v24;
        v23 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_34:
          if (((v22 >> 1) - v21) < v45)
          {
            goto LABEL_51;
          }

          v43 = v4;
          v25 = v19 + 8 * v21 + 32;
          v39 = v19;
          if (v15)
          {
            if (v23 < 1)
            {
              goto LABEL_53;
            }

            sub_1E659C708();
            for (i = 0; i != v23; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v6, &qword_1E660D438);
              v27 = sub_1E5FAA980(v44, i, v14);
              v29 = v6;
              v30 = *v28;
              (v27)(v44, 0);
              *(v25 + 8 * i) = v30;
              v6 = v29;
            }
          }

          else
          {
            sub_1E5DEF738(0, &qword_1ED07B8B0, 0x1E698C8F8);
            swift_arrayInitWithCopy();
          }

          v3 = v38;
          v4 = v43;
          if (v45 >= 1)
          {
            v31 = *(v39 + 16);
            v8 = __OFADD__(v31, v45);
            v32 = v31 + v45;
            if (v8)
            {
              goto LABEL_52;
            }

            *(v39 + 16) = v32;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_34;
        }
      }

      if (v45 > 0)
      {
        goto LABEL_50;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v33 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_1E65E67C8();
    isUniquelyReferenced_nonNull_bridgeObject = v33;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1E659C708()
{
  result = qword_1ED07B8C0;
  if (!qword_1ED07B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B8B8, &qword_1E660D438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B8C0);
  }

  return result;
}

uint64_t sub_1E659C76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E659C7DC()
{
  v0 = sub_1E65E6A48();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t static EngagementService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorEngagementService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660D458;
  a1[1] = v2;
  a1[2] = &unk_1E660D468;
  a1[3] = v2;
  a1[4] = &unk_1E660D470;
  a1[5] = 0;
  a1[6] = &unk_1E660D478;
  a1[7] = 0;
  a1[8] = &unk_1E660D480;
  a1[9] = 0;
  a1[10] = &unk_1E660D488;
  a1[11] = 0;
  a1[12] = &unk_1E660D498;
  a1[13] = v2;
  a1[14] = &unk_1E660D4A8;
  a1[15] = v2;
  a1[16] = &unk_1E660D4B8;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E659C960()
{
  v1 = *(v0 + 16);
  sub_1E65D7A08();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659C9C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659C944(a1, v1);
}

uint64_t sub_1E659CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659CA80, a3, 0);
}

uint64_t sub_1E659CA80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65D74E8();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E659CB1C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E659CA60(a1, a2, v2);
}

uint64_t sub_1E659CC00()
{
  sub_1E6599984();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659CC90(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B798, &qword_1E660CEE8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659CD5C, 0, 0);
}

uint64_t sub_1E659CD5C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8C8, &unk_1E660D510);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659CE58()
{
  v1 = *(v0 + 16);
  sub_1E65DA4F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659CEBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659CE3C(a1, v1);
}

uint64_t sub_1E659CF74()
{
  v1 = *(v0 + 16);
  sub_1E65DABD8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659CFD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659CF58(a1, v1);
}

uint64_t sub_1E659D074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E659D110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E659D158(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_1E659D1B0()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1E659D1E8()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1E659D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1E65E3B68();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659D2EC, 0, 0);
}

uint64_t sub_1E659D2EC()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = sub_1E659C7DC();
  v4 = v3;
  if (v3 == 8)
  {
    v5 = v0[6];
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v7 + 8);
    v37 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_1E659D94C;
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = v0[2];
    v15 = v6;
    v16 = v7;
LABEL_36:

    return v37(v14, v13, v11, v12, v15, v16);
  }

  v17 = v3;
  v18 = 0xD000000000000014;
  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[7];
  sub_1E65DE2D8();
  sub_1E65E3B18();
  (*(v20 + 8))(v19, v21);
  if (v4 <= 3)
  {
    if (v4 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B788, &qword_1E660D580);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1E65EA670;
      if (v4 == 2)
      {
        v28 = _sSo16AMSDialogRequestC24FitnessEngagementServiceE24makeSummaryPaletteBannerAByFZ_0();
      }

      else
      {
        v28 = sub_1E6594154();
      }

      goto LABEL_21;
    }

LABEL_13:
    v22 = v0[6];
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    if (v17 <= 3u)
    {
      if (v17 <= 1u)
      {
        if (!v17)
        {
          v25 = "Collection_NewWorkouts";
LABEL_34:
          v32 = (v25 - 32) | 0x8000000000000000;
          v18 = 0xD000000000000016;
          goto LABEL_35;
        }

        v32 = 0x80000001E6619C90;
        v18 = 0xD000000000000013;
LABEL_35:
        v0[10] = v32;
        v34 = *(v24 + 8);
        v37 = (v34 + *v34);
        v35 = v34[1];
        v36 = swift_task_alloc();
        v0[11] = v36;
        *v36 = v0;
        v36[1] = sub_1E659D7EC;
        v11 = v0[4];
        v12 = v0[5];
        v14 = v18;
        v13 = v32;
        v15 = v23;
        v16 = v24;
        goto LABEL_36;
      }

      if (v17 == 2)
      {
        v32 = 0xEB00000000317265;
        v18 = 0x6E6E614274736574;
        goto LABEL_35;
      }

      v26 = "testBubbleTipInline1";
LABEL_32:
      v32 = (v26 - 32) | 0x8000000000000000;
      goto LABEL_35;
    }

    if (v17 > 5u)
    {
      if (v17 != 6)
      {
        v25 = "testEngagementRequest1";
        goto LABEL_34;
      }

      v33 = "testBubbleTipOverlay2";
    }

    else
    {
      if (v17 == 4)
      {
        v26 = "testBubbleTipInline2";
        goto LABEL_32;
      }

      v33 = "testBubbleTipOverlay1";
    }

    v32 = (v33 - 32) | 0x8000000000000000;
    v18 = 0xD000000000000015;
    goto LABEL_35;
  }

  if (v4 <= 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B788, &qword_1E660D580);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E65EA670;
    if (v4 == 4)
    {
      v28 = sub_1E6594788();
    }

    else
    {
      v28 = sub_1E6594DBC();
    }

    goto LABEL_21;
  }

  if (v4 != 6)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B788, &qword_1E660D580);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65EA670;
  v28 = sub_1E65952F0();
LABEL_21:
  *(v27 + 56) = &type metadata for TestEngagementMessageFetcher.TestEngagementMessage;
  *(v27 + 64) = &off_1F5FCBF20;
  *(v27 + 32) = v28;
  *(v27 + 40) = 1;
  v29 = v0[9];

  v30 = v0[1];

  return v30(v27);
}

uint64_t sub_1E659D7EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E659DA78, 0, 0);
  }

  else
  {
    v7 = *(v4 + 80);

    v8 = *(v4 + 72);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_1E659D94C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  v7 = *(v4 + 72);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_1E659DA78()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E659DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E60ABB70;

  return sub_1E659D224(a1, a2, a3, a4);
}

uint64_t sub_1E659DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  return (*(v12 + 16))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t EngagementService.queryIntroSheet.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EngagementService.fetchEngagementRedirectURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EngagementService.fetchPlacement.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t EngagementService.resetPlacement.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EngagementService.makeCurrentValuePlacementStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t EngagementService.fetchAudioLanguageEngagementSheet.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t EngagementService.queryAudioLanguageEngagementSheetAcknowledgment.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t EngagementService.updateAudioLanguageEngagementSheetAcknowledgment.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_1E659DDC8()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659DE94, v0, 0);
}

uint64_t sub_1E659DE94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD6F8();

  return MEMORY[0x1EEE6DFA0](sub_1E659DF28, 0, 0);
}

uint64_t sub_1E659DF28()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessContentAvailabilityService/LiveContentAvailabilityService.swift";
  *(v2 + 24) = 70;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A0E70, v2, v5);
}

uint64_t sub_1E659E04C()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8F8, &qword_1E660D858);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659E118, v0, 0);
}

uint64_t sub_1E659E118()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD6D8();

  return MEMORY[0x1EEE6DFA0](sub_1E659E1AC, 0, 0);
}

uint64_t sub_1E659E1AC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessContentAvailabilityService/LiveContentAvailabilityService.swift";
  *(v2 + 24) = 70;
  *(v2 + 32) = 2;
  *(v2 + 40) = 34;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A0E44, v2, v5);
}

uint64_t sub_1E659E2D0()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8E8, &qword_1E660D848);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659E39C, v0, 0);
}

uint64_t sub_1E659E39C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD6E8();

  return MEMORY[0x1EEE6DFA0](sub_1E659E430, 0, 0);
}

uint64_t sub_1E659E430()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessContentAvailabilityService/LiveContentAvailabilityService.swift";
  *(v2 + 24) = 70;
  *(v2 + 32) = 2;
  *(v2 + 40) = 38;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E659E544;
  v5 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A0D54, v2, v5);
}

uint64_t sub_1E659E544()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {
    v5 = v4[8];

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[5];
    v10 = v4[2];
    v9 = v4[3];

    (*(v3 + 8))(v7, v8);

    v11 = v4[1];

    return v11(v10, v9);
  }
}

uint64_t sub_1E659E6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659E708, 0, 0);
}

uint64_t sub_1E659E708()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DE058();
  v1[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E659E770(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659E790, 0, 0);
}

uint64_t sub_1E659E790()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DDFF8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E659E7F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659E818, 0, 0);
}

uint64_t sub_1E659E818()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DA498();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E659E880()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659E94C, v0, 0);
}

uint64_t sub_1E659E94C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD718();

  return MEMORY[0x1EEE6DFA0](sub_1E659E9E0, 0, 0);
}

uint64_t sub_1E659E9E0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessContentAvailabilityService/LiveContentAvailabilityService.swift";
  *(v2 + 24) = 70;
  *(v2 + 32) = 2;
  *(v2 + 40) = 66;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E659EAF4;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A0F24, v2, v5);
}

uint64_t sub_1E659EAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v13 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_1E659ED0C;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 40);
    v7 = *(v2 + 48);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v11 = *(v2 + 16);
    *(v2 + 73) = *(v2 + 72);

    (*(v10 + 8))(v8, v9);
    v5 = sub_1E659EC58;
    v6 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E659EC58()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    sub_1E65A0828();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659ED0C()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E65A0F20, v1, 0);
}

uint64_t sub_1E659ED84()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659EE50, v0, 0);
}

uint64_t sub_1E659EE50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD708();

  return MEMORY[0x1EEE6DFA0](sub_1E659EEE4, 0, 0);
}

uint64_t sub_1E659EEE4()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessContentAvailabilityService/LiveContentAvailabilityService.swift";
  *(v2 + 24) = 70;
  *(v2 + 32) = 2;
  *(v2 + 40) = 73;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E659EFF8;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A0810, v2, v5);
}

uint64_t sub_1E659EFF8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v13 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_1E653C338;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 40);
    v7 = *(v2 + 48);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v11 = *(v2 + 16);
    *(v2 + 73) = *(v2 + 72);

    (*(v10 + 8))(v8, v9);
    v5 = sub_1E659F15C;
    v6 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E659F15C()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    sub_1E65A0828();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659F214()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E659DDC8();
}

uint64_t sub_1E659F2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E659F214();
}

uint64_t sub_1E659F334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E659E04C();
}

uint64_t sub_1E659F3C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E659F334();
}

uint64_t sub_1E659F454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E656EAE4;

  return sub_1E659E2D0();
}

uint64_t sub_1E659F4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E621FCB8;

  return sub_1E659F454();
}

uint64_t sub_1E659F574(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659F590, a2, 0);
}

uint64_t sub_1E659F590()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE068();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659F64C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659F574(a1, v1);
}

uint64_t sub_1E659F708()
{
  v1 = *(v0 + 16);
  v2 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v1[24]);
  v3 = sub_1E65DDE88();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E659F790()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FE99E8;

  return sub_1E659F6E8(v0);
}

uint64_t sub_1E659F820(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659F83C, a2, 0);
}

uint64_t sub_1E659F83C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE008();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659F8F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E659F820(a1, v1);
}

uint64_t sub_1E659F994(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659F9B0, a2, 0);
}

uint64_t sub_1E659F9B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE098();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659FA70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659F994(a1, v1);
}

uint64_t sub_1E659FB0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659FB28, a2, 0);
}

uint64_t sub_1E659FB28()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DA4A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659FC04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659FB0C(a1, v1);
}

uint64_t sub_1E659FCA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E659FCBC, a2, 0);
}

uint64_t sub_1E659FCBC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DDF98();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E659FD7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E659FCA0(a1, v1);
}

uint64_t sub_1E659FE18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E659ED84();
}

uint64_t sub_1E659FEA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E659FE18();
}

uint64_t sub_1E659FF38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E659E880();
}

uint64_t sub_1E659FFC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E659FF38();
}

uint64_t sub_1E65A0058(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B900, &unk_1E660D868);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8F8, &qword_1E660D858);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65A0E5C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65A0434(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8F0, &qword_1E660D850);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8E8, &qword_1E660D848);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65A0D6C;
  *(v35 + 24) = v33;

  v34(sub_1E65A0DFC, v35);
}

unint64_t sub_1E65A0828()
{
  result = qword_1ED07B8E0;
  if (!qword_1ED07B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B8E0);
  }

  return result;
}

uint64_t sub_1E65A087C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65A0AD4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v31 = a3;
  v32 = a1;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a9;
    v21 = v20;
    v33[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, v33);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E694F1C0](v21, -1, -1);
    v25 = v19;
    a2 = v28[0];
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v33[0] = v32;
  if (v31)
  {
    v26 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8F0, &qword_1E660D850);
    return sub_1E65E5FE8();
  }

  else
  {
    v33[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8F0, &qword_1E660D850);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65A0DFC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t ContentAvailabilityError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E65A0FB8()
{
  result = qword_1ED07B908;
  if (!qword_1ED07B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B908);
  }

  return result;
}

uint64_t ContentAvailabilityService.fetchAvailableAudioLanguageCodes.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContentAvailabilityService.queryAllowedContentRatings.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContentAvailabilityService.queryStorefrontLanguageCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ContentAvailabilityService.queryNetworkConditions.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ContentAvailabilityService.makeSupportedDeviceChangedStream.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ContentAvailabilityService.requireSupportedWatch.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t ContentAvailabilityService.requireSupportedDevice.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1E65A1260(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1E65A12A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E65A1314()
{
  v2 = sub_1E65D7828();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = sub_1E65D7848();
  v1[5] = v5;
  v6 = *(v5 - 8);
  v1[6] = v6;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A1464, v0, 0);
}

uint64_t sub_1E65A1464()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_1E65D77C8();
  sub_1E65D7838();
  (*(v4 + 8))(v2, v3);
  sub_1E65D77F8();
  (*(v6 + 8))(v5, v7);
  v8 = sub_1E65D7768();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v1, 1, v8);
  v11 = v0[8];
  if (v10 == 1)
  {
    sub_1E65A262C(v0[8]);
    v12 = 0xE500000000000000;
    v13 = 0x53552D6E65;
  }

  else
  {
    v14 = v0[8];
    v13 = sub_1E65D7748();
    v12 = v15;
    (*(v9 + 8))(v11, v8);
  }

  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[4];

  v19 = v0[1];

  return v19(v13, v12);
}

uint64_t sub_1E65A15FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B938, &qword_1E660DB50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6[-v3];
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B940, &qword_1E660DB58);
  sub_1E65E60D8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E65A16EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B918, &qword_1E660DB38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v6 - v3;
  sub_1E65A2694();
  sub_1E5FC7848();
  v6[1] = sub_1E65E6238();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B928, &qword_1E660DB40);
  sub_1E65E60D8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static ContentAvailabilityService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorContentAvailabilityService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660DA28;
  a1[1] = v2;
  a1[2] = &unk_1E660DA38;
  a1[3] = v2;
  a1[4] = &unk_1E660DA48;
  a1[5] = v2;
  a1[6] = &unk_1E660DA58;
  a1[7] = v2;
  a1[8] = &unk_1E660DA68;
  a1[9] = v2;
  a1[10] = &unk_1E660DA78;
  a1[11] = v2;
  a1[12] = &unk_1E660DA88;
  a1[13] = v2;
  a1[14] = &unk_1E660DA98;
  a1[15] = v2;
  a1[16] = &unk_1E660DAA8;
  a1[17] = v2;
  a1[18] = &unk_1E660DAB8;
  a1[19] = v2;
  a1[20] = &unk_1E660DAC8;
  a1[21] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65A1964()
{
  v1 = sub_1E5F9B6E4(&unk_1F5FCBFD8);
  swift_arrayDestroy();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65A19EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65A1948(v0);
}

uint64_t sub_1E65A1A98()
{
  v1 = sub_1E65A26E8(&unk_1F5FCC028);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65A1B00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FE99E8;

  return sub_1E65A1A7C(v0);
}

uint64_t sub_1E65A1B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E656EAE4;

  return sub_1E65A1314();
}

uint64_t sub_1E65A1C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E621FCB8;

  return sub_1E65A1B90();
}

uint64_t sub_1E65A1CB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B948, &qword_1E660DB60);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A1D80, a2, 0);
}

uint64_t sub_1E65A1D80()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E65A1E38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65A1CB0(a1, v1);
}

uint64_t sub_1E65A1ED4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E653E964();
}

uint64_t sub_1E65A1F64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B930, &qword_1E660DB48);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A2034, a2, 0);
}

uint64_t sub_1E65A2034()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E65A20EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65A1F64(a1, v1);
}

uint64_t sub_1E65A2188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539D44(a1, v1);
}

uint64_t sub_1E65A2224(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B910, &unk_1E660DB28);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A22F4, a2, 0);
}

uint64_t sub_1E65A22F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65A23D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65A2224(a1, v1);
}

uint64_t sub_1E65A2470(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539D44(a1, v1);
}

uint64_t sub_1E65A250C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65A259C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65A262C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E65A2694()
{
  result = qword_1ED07B920;
  if (!qword_1ED07B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B920);
  }

  return result;
}

uint64_t sub_1E65A26E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B950, &qword_1E660DB68);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (2)
    {
      v6 = *(v23 + v4);
      v7 = *(v3 + 40);
      sub_1E65E6D28();
      sub_1E65D8308();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v12 = *(*(v3 + 48) + i);
        v13 = sub_1E65D8308();
        v15 = v14;
        if (v13 == sub_1E65D8308() && v15 == v16)
        {

          goto LABEL_4;
        }

        v18 = sub_1E65E6C18();

        if (v18)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (!v20)
      {
        *(v3 + 16) = v21;
LABEL_4:
        if (++v4 == v22)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t MarketingService.fetchMarketingItem.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MarketingService.makeMarketingMetricConfiguration.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MarketingService.makeServiceSubscriptionPurchasedStream.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MarketingService.publishMarketingOperationEnded.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MarketingService.publishServiceSubscriptionPurchased.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t MarketingService.parseMarketingURLType.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

void type metadata accessor for AMSParserURLType()
{
  if (!qword_1EE2D4660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE2D4660);
    }
  }
}

uint64_t sub_1E65A2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9D8, &qword_1E660DD38);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A2AE0, 0, 0);
}

uint64_t sub_1E65A2AE0()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  sub_1E65DB5B8();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *(v8 + 16) = "FitnessMarketingService/LiveMarketingService.swift";
  *(v8 + 24) = 50;
  *(v8 + 32) = 2;
  *(v8 + 40) = 23;
  *(v8 + 48) = v1;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = sub_1E65A5A34();
  *v10 = v0;
  v10[1] = sub_1E65A2C4C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A5A1C, v8, v11);
}

uint64_t sub_1E65A2C4C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65A2DE0, 0, 0);
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[8];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E65A2DE0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_1E65A2E60(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 26) = a3;
  *(v4 + 32) = a1;
  v5 = sub_1E65D9BA8();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v8 = sub_1E65DB7D8();
  *(v4 + 80) = v8;
  v9 = *(v8 - 8);
  *(v4 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v4 + 96) = v11;
  v12 = swift_task_alloc();
  *(v4 + 104) = v12;
  *v12 = v4;
  v12[1] = sub_1E65A2FBC;

  return sub_1E65A362C(v11);
}

uint64_t sub_1E65A2FBC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v3;
  v4[1] = sub_1E65A3114;
  v5 = v1[9];
  v6 = v1[6];

  return sub_1E65A3C8C(v5);
}

uint64_t sub_1E65A3114()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E65A3210, 0, 0);
}

uint64_t sub_1E65A3210()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 26);
  v4 = *(*(v0 + 48) + 104);
  sub_1E65DB7C8();
  *(v0 + 16) = sub_1E65D9B78();
  *(v0 + 24) = v5 & 1;
  *(v0 + 25) = 0;
  sub_1E65A592C();
  sub_1E65A5980();
  if (sub_1E65D7FE8())
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1E65D9918();
  }

  *(v0 + 27) = v6 & 1;
  v7 = *(v0 + 48);
  v8 = v7[11];
  v9 = v7[12];
  __swift_project_boxed_opaque_existential_1(v7 + 8, v8);
  v10 = *(MEMORY[0x1E69CD658] + 4);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1E65A3358;
  v12 = *(v0 + 96);
  v13 = *(v0 + 40);
  v14 = *(v0 + 26);

  return MEMORY[0x1EEE378C0](v13, v12, v14, v8, v9);
}

uint64_t sub_1E65A3358(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1E65A3544;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_1E65A3480;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E65A3480()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 27);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);
  sub_1E65DB808();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E65A3544()
{
  v1 = *(v0 + 128);
  sub_1E642764C(MEMORY[0x1E69E7CC0]);

  v2 = *(v0 + 27);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);
  sub_1E65DB808();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E65A362C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65D76A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B188, &qword_1E660B938);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_1E65D92D8();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A37B0, 0, 0);
}

uint64_t sub_1E65A37B0()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD728();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = "FitnessMarketingService/LiveMarketingService.swift";
  *(v4 + 24) = 50;
  *(v4 + 32) = 2;
  *(v4 + 40) = 98;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E65A38EC;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A59EC, v4, v8);
}

uint64_t sub_1E65A38EC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_1E65A3B74;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5 = sub_1E65A3A3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E65A3A3C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = sub_1E65DB7D8();
  v9 = MEMORY[0x1E69CD5F0];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E69CD5F8];
  }

  (*(*(v8 - 8) + 104))(v0[2], *v9, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E65A3B74()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  *(v0 + 128) = 4;
  sub_1E5FFF464();
  v2 = sub_1E65D97C8();

  v3 = sub_1E65DB7D8();
  v4 = MEMORY[0x1E69CD5F8];
  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x1E69CD600];
  }

  (*(*(v3 - 8) + 104))(*(v0 + 16), *v4, v3);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E65A3C8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B450, &unk_1E660BFC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A3D58, 0, 0);
}

uint64_t sub_1E65A3D58()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD618();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = "FitnessMarketingService/LiveMarketingService.swift";
  *(v4 + 24) = 50;
  *(v4 + 32) = 2;
  *(v4 + 40) = 110;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_1E65D9BA8();
  *v6 = v0;
  v6[1] = sub_1E65A3E9C;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A59D4, v4, v7);
}

uint64_t sub_1E65A3E9C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65A4018, 0, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E65A4018()
{
  v1 = v0[9];
  v2 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_1E65D9B88();
  sub_1E65D9B68();

  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

void sub_1E65A40C0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B980, &unk_1E660DCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];
  v10 = sub_1E65D7448();
  v11 = [v9 typeForURL_];

  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v8, v4);
  aBlock[4] = sub_1E65A5224;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E644471C;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock_];
  _Block_release(v14);
}

uint64_t sub_1E65A42CC(void *a1)
{
  if (a1)
  {
    [a1 integerValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B980, &unk_1E660DCE8);
    return sub_1E65E5FF8();
  }

  else
  {
    v2 = sub_1E65DB478();
    sub_1E65A58E4(&unk_1ED07B988, MEMORY[0x1E69CD528]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CD520], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B980, &unk_1E660DCE8);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E65A43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E60ABB70;

  return sub_1E65A2A0C(a1, a2, a3, a4);
}

uint64_t sub_1E65A44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5FE99E8;

  return sub_1E65A43E8(a1, a2, a3, a4);
}

uint64_t sub_1E65A45A0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E65A2E60(a1, a2, a3);
}

uint64_t sub_1E65A4654(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E65A45A0(a1, a2, a3);
}

uint64_t sub_1E65A4708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65A4728, 0, 0);
}

uint64_t sub_1E65A4728()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  swift_getObjectType();
  sub_1E65DB868();
  sub_1E65A58E4(&qword_1EE2D6D20, MEMORY[0x1E69CD638]);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65A482C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65A4708(a1, v1 + 16);
}

uint64_t sub_1E65A48C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DB628();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A4988, 0, 0);
}

uint64_t sub_1E65A4988()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  swift_getObjectType();
  v8 = v5;
  sub_1E65DB618();
  sub_1E65A58E4(&unk_1ED079C30, MEMORY[0x1E69CD580]);
  sub_1E65DDDE8();
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E65A4A98(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65A48C8(a1, v1 + 16);
}

uint64_t sub_1E65A4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65DB638();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65DB868();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A4C50, 0, 0);
}

uint64_t sub_1E65A4C50()
{
  v1 = v0[4];
  v2 = v0[3];
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  (*(v0[6] + 16))(v0[7], v0[2], v0[5]);
  if (v2)
  {
    sub_1E625B10C(v0[3]);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  swift_getObjectType();
  sub_1E65DB858();
  sub_1E65A58E4(&qword_1EE2D6D20, MEMORY[0x1E69CD638]);
  sub_1E65DDDE8();
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E65A4D88(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65A4B30(a1, a2, v2 + 16);
}

uint64_t sub_1E65A4E30(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65A4E50, 0, 0);
}

uint64_t sub_1E65A4E50()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  type metadata accessor for AMSParserURLType();
  *v3 = v0;
  v3[1] = sub_1E65A4F50;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000019, 0x80000001E661A7B0, sub_1E65A521C, v1, v4);
}

uint64_t sub_1E65A4F50()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1E5FCC4D4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1E65A506C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E65A5088(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E65A4E30(a1, v1 + 16);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1E65A5154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1E65A519C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E65A5224(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B980, &unk_1E660DCE8) - 8) + 80);

  return sub_1E65A42CC(a1);
}

uint64_t sub_1E65A52B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9E8, &qword_1E660DD40);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9D8, &qword_1E660DD38);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65A5A80;
  *(v35 + 24) = v33;

  v34(sub_1E5E20BC8, v35);
}

uint64_t sub_1E65A568C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9E8, &qword_1E660DD40);
  if (v10)
  {
    return sub_1E65E5FE8();
  }

  else
  {
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65A58E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E65A592C()
{
  result = qword_1ED07B998;
  if (!qword_1ED07B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B998);
  }

  return result;
}

unint64_t sub_1E65A5980()
{
  result = qword_1ED07B9A0;
  if (!qword_1ED07B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B9A0);
  }

  return result;
}

unint64_t sub_1E65A5A34()
{
  result = qword_1EE2D4670;
  if (!qword_1EE2D4670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4670);
  }

  return result;
}

uint64_t sub_1E65A5A80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9E8, &qword_1E660DD40) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E65A568C(v8, v9, v4, v5, v6, v10, v7, v11);
}

void static MarketingService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660DD48;
  a1[1] = 0;
  a1[2] = &unk_1E660DD58;
  a1[3] = 0;
  a1[4] = &unk_1E660DD68;
  a1[5] = 0;
  a1[6] = &unk_1E660DD70;
  a1[7] = 0;
  a1[8] = &unk_1E660DD78;
  a1[9] = 0;
  a1[10] = &unk_1E660DD80;
  a1[11] = 0;
}

uint64_t sub_1E65A5BAC()
{
  v1 = *(v0 + 16);
  sub_1E642764C(MEMORY[0x1E69E7CC0]);
  sub_1E65DB808();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65A5C44()
{
  v1 = *(v0 + 16);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65A5CF0()
{
  sub_1E65A5F34(MEMORY[0x1E69E7CC0]);
  v1 = objc_allocWithZone(MEMORY[0x1E698C988]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9F0, &qword_1E660DD90);
  v2 = sub_1E65E5AF8();

  v3 = [v1 initWithDictionary_];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E65A5DD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65A5B8C(a1);
}

uint64_t sub_1E65A5E80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65A5C24(a1);
}

unint64_t sub_1E65A5F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9F8, &qword_1E660DD98);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1E6215038(v5, v6);
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

uint64_t SharePlayService.joinActivity.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SharePlayService.makeMultiUserBeginActivityRequested.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SharePlayService.waitForSession.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SharePlayService.willBeginActivity.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E65A60F8(uint64_t *a1, int a2)
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

uint64_t sub_1E65A6140(uint64_t result, int a2, int a3)
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

uint64_t static SharePlayService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSharePlayService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660DE28;
  a1[1] = v2;
  a1[2] = &unk_1E660DE38;
  a1[3] = v2;
  a1[4] = &unk_1E660DE48;
  a1[5] = v2;
  a1[6] = &unk_1E660DE58;
  a1[7] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65A6248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65A62D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA00, &qword_1E660DEA8);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A63A8, a2, 0);
}

uint64_t sub_1E65A63A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D8D48();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65A6480(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65A62D8(a1, v1);
}

uint64_t sub_1E65A651C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65A65B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65A664C()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A6718, v0, 0);
}

uint64_t sub_1E65A6718()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBD8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A67AC, 0, 0);
}

uint64_t sub_1E65A67AC()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSharePlayService/LiveSharePlayService.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 24;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6523A50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A7350, v2, v5);
}

uint64_t sub_1E65A68BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65A68DC, 0, 0);
}

uint64_t sub_1E65A68DC()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DE208();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65A6940(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A6A0C, v1, 0);
}

uint64_t sub_1E65A6A0C()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBE8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A6AA8, 0, 0);
}

uint64_t sub_1E65A6AA8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSharePlayService/LiveSharePlayService.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A7350, v2, v5);
}

uint64_t sub_1E65A6BB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A6C84, v1, 0);
}

uint64_t sub_1E65A6C84()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBF8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A6D20, 0, 0);
}

uint64_t sub_1E65A6D20()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSharePlayService/LiveSharePlayService.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 36;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E656FF20;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65A733C, v2, v5);
}

uint64_t sub_1E65A6E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65A664C();
}

uint64_t sub_1E65A6EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65A6E30();
}

uint64_t sub_1E65A6F50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65A6F6C, a2, 0);
}

uint64_t sub_1E65A6F6C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE218();
  sub_1E65D8D48();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65A7040(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65A6F50(a1, v1);
}

uint64_t sub_1E65A70DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65A6940(a1);
}

uint64_t sub_1E65A7174(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65A70DC(a1);
}

uint64_t sub_1E65A720C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65A6BB8(a1);
}

uint64_t sub_1E65A72A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65A720C(a1);
}

double WindowSceneObserver.SceneUpdate.bounds.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

double WindowSceneObserver.SceneUpdate.safeAreaEdgeInsets.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  return result;
}

uint64_t WindowSceneObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA10, &qword_1E660DF80);
  *(v0 + 48) = sub_1E65E17A8();
  return v0;
}

uint64_t WindowSceneObserver.makeSceneUpdatedStream(bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E65E6058();
  v3[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E65A747C, v5, v4);
}

uint64_t sub_1E65A747C()
{
  *(v0 + 64) = *(*(v0 + 32) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA10, &qword_1E660DF80);
  sub_1E5FED46C(&qword_1EE2D64B8, &qword_1ED07BA10, &qword_1E660DF80);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A754C, v2, v1);
}

uint64_t sub_1E65A754C()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  sub_1E65E1788();
  v4 = v0[6];
  v5 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_1E61CCB88, v4, v5);
}

Swift::Void __swiftcall WindowSceneObserver.activate(with:)(UIWindowScene *with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - v5;
  if (!v1[2])
  {
    v7 = [(UIWindowScene *)with _FBSScene];
    v8 = type metadata accessor for FrontBoardSceneObserver();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_streamPublisher;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF0, &unk_1E660E350);
    v11 = v7;
    v12 = v1;
    *&v9[v10] = sub_1E65E17A8();
    *&v9[OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_scene] = v11;
    v35.receiver = v9;
    v35.super_class = v8;
    v13 = v11;
    v14 = [(UIWindowScene *)&v35 init];
    [v13 addObserver_];

    v15 = sub_1E65E60A8();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1E65E6058();
    v17 = v14;

    v18 = sub_1E65E6048();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = v16;

    v21 = sub_1E64B80F8(0, 0, v6, &unk_1E660DF98, v19);
    v22 = [objc_opt_self() defaultCenter];
    v23 = *MEMORY[0x1E69DDC48];
    v24 = [objc_opt_self() mainQueue];
    v25 = swift_allocObject();
    swift_weakInit();
    *&v39 = sub_1E65A890C;
    *(&v39 + 1) = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v38 = sub_1E65798D8;
    *(&v38 + 1) = &block_descriptor_27;
    v26 = _Block_copy(&aBlock);

    v27 = [v22 addObserverForName:v23 object:0 queue:v24 usingBlock:v26];
    _Block_release(v26);

    v28 = v12[2];
    v29 = v12[3];
    v30 = v12[4];
    v31 = v12[5];
    v12[2] = with;
    v12[3] = v17;
    v12[4] = v21;
    v12[5] = v27;
    v32 = v17;
    v33 = with;

    swift_unknownObjectRetain();
    sub_1E5E1A858(v28, v29);
    v36 = 1;
    aBlock = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    sub_1E65A851C(&aBlock);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E65A7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA58, &qword_1E660E2B0);
  v5[34] = v7;
  v8 = *(v7 - 8);
  v5[35] = v8;
  v9 = *(v8 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = sub_1E65E6058();
  v5[38] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E65A7AB8, 0, 0);
}

uint64_t sub_1E65A7AB8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v0[39] = *(v0[30] + OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_streamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07BA60, &qword_1E660E2B8);
  v0[22] = sub_1E5FED46C(&qword_1EE2D4770, &unk_1ED07BA60, &qword_1E660E2B8);
  v0[40] = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF0, &unk_1E660E350);
  sub_1E5FED46C(&qword_1EE2D64C0, &qword_1ED07BAF0, &unk_1E660E350);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A7C10, v5, v4);
}

uint64_t sub_1E65A7C10()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  sub_1E65E1788();
  (*(v6 + 8))(v5, v7);
  v9 = sub_1E65E5FC8();
  v0[41] = v9;
  v0[42] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E65A7CCC, v9, v8);
}

uint64_t sub_1E65A7CCC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 168);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 144), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  *(v0 + 128) = swift_getAssociatedTypeWitness();
  *(v0 + 136) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  sub_1E65E6198();

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  swift_beginAccess();
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 344) = *MEMORY[0x1E69DDCE0];
  *(v0 + 360) = v7;
  v8 = *(v0 + 296);
  v9 = sub_1E65E6048();
  *(v0 + 376) = v9;
  v10 = *(v0 + 136);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
  v11 = *(MEMORY[0x1E69E85B0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  *v12 = v0;
  v12[1] = sub_1E65A7ED8;
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 16, v9, v13);
}

uint64_t sub_1E65A7ED8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[47];

    v6 = v2[41];
    v7 = v2[42];

    return MEMORY[0x1EEE6DFA0](sub_1E65A7FEC, v6, v7);
  }

  return result;
}

uint64_t sub_1E65A7FEC()
{
  v1 = *(v0 + 16);
  if (*(v0 + 96))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 288);
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);

    __swift_destroy_boxed_opaque_existential_1((v0 + 104));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v50 = *(v0 + 16);
    v49 = *(v0 + 32);
    v51 = *(v0 + 64);
    v53 = *(v0 + 48);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 248);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(Strong + 16);
      if (v13)
      {
        v14 = v13;
        v15 = [v14 screen];
        [v15 scale];
        v17 = v16;

        if (v8)
        {
          v18 = [v14 keyWindow];
          if (v18)
          {
            v19 = v18;
            [v18 safeAreaInsets];
            v52 = v21;
            v54 = v20;
            v46 = v23;
            v47 = v22;

            *&v24 = v52;
            *(&v24 + 1) = v46;
            v51 = v24;
            *&v24 = v54;
            *(&v24 + 1) = v47;
            v53 = v24;
          }

          else
          {
            v51 = *(v0 + 360);
            v53 = *(v0 + 344);
          }
        }

        v48 = v14;
        v25 = *(v0 + 296);
        v26 = *(v0 + 256);
        v27 = *(v0 + 264);
        v28 = sub_1E65E60A8();
        v29 = *(v28 - 8);
        (*(v29 + 56))(v27, 1, 1, v28);

        v30 = sub_1E65E6048();
        v31 = swift_allocObject();
        v32 = MEMORY[0x1E69E85E0];
        *(v31 + 16) = v30;
        *(v31 + 24) = v32;
        *(v31 + 32) = v12;
        *(v31 + 56) = v49;
        *(v31 + 40) = v50;
        *(v31 + 88) = v51;
        *(v31 + 72) = v53;
        *(v31 + 104) = v9;
        *(v31 + 112) = v17;
        sub_1E5DF4C84(v27, v26);
        LODWORD(v26) = (*(v29 + 48))(v26, 1, v28);

        v33 = *(v0 + 256);
        if (v26 == 1)
        {
          sub_1E5DF4CF4(*(v0 + 256));
        }

        else
        {
          sub_1E65E6098();
          (*(v29 + 8))(v33, v28);
        }

        v35 = *(v31 + 16);
        v34 = *(v31 + 24);
        swift_unknownObjectRetain();

        if (v35)
        {
          swift_getObjectType();
          v36 = sub_1E65E5FC8();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        sub_1E5DF4CF4(*(v0 + 264));
        v39 = swift_allocObject();
        *(v39 + 16) = &unk_1E660E2C0;
        *(v39 + 24) = v31;
        if (v38 | v36)
        {
          *(v0 + 184) = 0;
          *(v0 + 192) = 0;
          *(v0 + 200) = v36;
          *(v0 + 208) = v38;
        }

        swift_task_create();
      }
    }

    v40 = *(v0 + 296);
    v41 = sub_1E65E6048();
    *(v0 + 376) = v41;
    v42 = *(v0 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
    v43 = *(MEMORY[0x1E69E85B0] + 4);
    v44 = swift_task_alloc();
    *(v0 + 384) = v44;
    *v44 = v0;
    v44[1] = sub_1E65A7ED8;
    v45 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v0 + 16, v41, v45);
  }
}

uint64_t sub_1E65A845C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65A7990(a1, v4, v5, v7, v6);
}

void sub_1E65A851C(uint64_t *a1)
{
  v3 = *(a1 + 2);
  v44 = *(a1 + 3);
  v45 = v3;
  v4 = *(a1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42 - v7;
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = *(a1 + 80);
    if (v12)
    {
      v13 = [v10 effectiveGeometry];
      v14 = [v13 coordinateSpace];

      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = *a1;
      v18 = a1[1];
      v20 = a1[2];
      v22 = a1[3];
    }

    v23 = [v11 screen];
    [v23 scale];
    v25 = v24;

    if (v12)
    {
      v26 = [v11 effectiveGeometry];
      v27 = [v26 interfaceOrientation];
    }

    else
    {
      v27 = a1[9];
      if ((v4 & 1) == 0)
      {
LABEL_12:
        v36 = sub_1E65E60A8();
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        sub_1E65E6058();

        v37 = v1;
        v38 = sub_1E65E6048();
        v39 = swift_allocObject();
        v40 = MEMORY[0x1E69E85E0];
        *(v39 + 16) = v38;
        *(v39 + 24) = v40;
        *(v39 + 32) = v37;
        *(v39 + 40) = v16;
        *(v39 + 48) = v18;
        *(v39 + 56) = v20;
        *(v39 + 64) = v22;
        v41 = v45;
        *(v39 + 88) = v44;
        *(v39 + 72) = v41;
        *(v39 + 104) = v27;
        *(v39 + 112) = v25;
        sub_1E64B80F8(0, 0, v8, &unk_1E660E280, v39);

        return;
      }
    }

    v28 = [v11 keyWindow];
    if (v28)
    {
      v29 = v28;
      [v28 safeAreaInsets];
      v44 = v31;
      v45 = v30;
      v42 = v33;
      v43 = v32;

      *&v34 = v44;
      *(&v34 + 1) = v42;
      v44 = v34;
      *&v35 = v45;
      *(&v35 + 1) = v43;
    }

    else
    {
      v35 = *MEMORY[0x1E69DDCE0];
      v44 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v45 = v35;
    goto LABEL_12;
  }
}

uint64_t sub_1E65A8800(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_1E64B83F8(0, 0, v6, &unk_1E660E290, v8);
}

uint64_t sub_1E65A8914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = a1;
  *(v4 + 136) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E65A8934, 0, 0);
}

uint64_t sub_1E65A8934()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    *(v0 + 160) = 1;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 1;
    sub_1E65E6058();
    *(v0 + 152) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E65A8A48, v4, v3);
  }

  else
  {
    **(v0 + 128) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E65A8A48()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1E65A851C(v0 + 2);

  return MEMORY[0x1EEE6DFA0](sub_1E65A8AC0, 0, 0);
}

uint64_t sub_1E65A8AE8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 272) = v18;
  *(v13 + 264) = a13;
  *(v13 + 248) = a7;
  *(v13 + 256) = a8;
  *(v13 + 232) = a5;
  *(v13 + 240) = a6;
  *(v13 + 216) = a3;
  *(v13 + 224) = a4;
  *(v13 + 200) = a1;
  *(v13 + 208) = a2;
  *(v13 + 192) = a12;
  sub_1E65E6058();
  *(v13 + 280) = sub_1E65E6048();
  v15 = sub_1E65E5FC8();
  *(v13 + 288) = v15;
  *(v13 + 296) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1E65A8BA0, v15, v14);
}

uint64_t sub_1E65A8BA0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  *(v0 + 304) = *(*(v0 + 192) + 48);
  v10 = *(v0 + 232);
  v11 = *(v0 + 200);
  v8 = *(v0 + 248);
  v9 = *(v0 + 216);
  v3 = [objc_opt_self() system];
  v4 = [v3 preferredContentSizeCategory];

  *(v0 + 120) = v9;
  *(v0 + 104) = v11;
  *(v0 + 152) = v8;
  *(v0 + 136) = v10;
  *(v0 + 168) = v4;
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA10, &qword_1E660DF80);
  sub_1E5FED46C(&qword_1EE2D64B8, &qword_1ED07BA10, &qword_1E660DF80);
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A8D08, v6, v5);
}

uint64_t sub_1E65A8D08()
{
  v1 = *(v0 + 304);
  sub_1E65E1798();
  v2 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v3 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v3;
  sub_1E65A941C(v0 + 16);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1E65A8DA0, v4, v5);
}

uint64_t sub_1E65A8DA0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WindowSceneObserver.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1E5E1A858(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 48);

  return v0;
}

void WindowSceneObserver.safeAreaEdgeInsets.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 keyWindow];
    if (v5)
    {
      v6 = v5;
      [v5 safeAreaInsets];
      v15 = v8;
      v17 = v7;
      v13 = v9;
      v14 = v10;

      *&v12 = v15;
      *&v11 = v17;
      *(&v11 + 1) = v13;
      *(&v12 + 1) = v14;
    }

    else
    {
      v16 = *(MEMORY[0x1E69DDCE0] + 16);
      v18 = *MEMORY[0x1E69DDCE0];

      v12 = v16;
      v11 = v18;
    }
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v3 == 0;
}

id WindowSceneObserver.interfaceOrientation.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 effectiveGeometry];

  v4 = [v3 interfaceOrientation];
  return v4;
}

void *WindowSceneObserver.scene.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t sub_1E65A8FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E65A9008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26FitnessWindowSceneObserver0bcD0C5State33_03FD6EEFDC9DDC2AF54349F023E69D62LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E65A909C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E65A90EC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1E65A9144(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1E65A9178(uint64_t a1)
{
  v2 = sub_1E65A9278(&qword_1ED07BA48);
  v3 = sub_1E65A9278(&qword_1ED07BA50);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E65A9278(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E65A92F0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[6];
  v18 = v1[5];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[12];
  v14 = *(v1 + 13);
  v15 = *(v1 + 14);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E65A8AE8(v18, v7, v8, v9, v10, v11, v12, v13, a1, v4, v5, v6, v14);
}

uint64_t sub_1E65A944C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65A8914(a1, v4, v5, v6);
}

uint64_t sub_1E65A9500(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[6];
  v18 = v1[5];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[12];
  v14 = *(v1 + 13);
  v15 = *(v1 + 14);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5DFA78C;

  return sub_1E65A8AE8(v18, v7, v8, v9, v10, v11, v12, v13, a1, v4, v5, v6, v14);
}

id sub_1E65A962C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_scene] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E65A97A0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a9 + 32) & 1;
  *(v10 + 104) = v11;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v12 = *(a9 + 16);
  *(v10 + 48) = *a9;
  *(v10 + 64) = v12;
  *(v10 + 80) = v11;
  *(v10 + 88) = a10;
  *(v10 + 96) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BAF0, &unk_1E660E350);
  sub_1E65A9D0C();
  v14 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65A9858, v14, v13);
}

uint64_t sub_1E65A9858()
{
  v1 = *(v0 + 96);
  sub_1E65E1798();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65A9934(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E65A9954(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void sub_1E65A99A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = [a1 settings];
  if (v7)
  {
    v36 = v7;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v9 ui_safeAreaSettings];
      v19 = v18;
      if (v18)
      {
        [v18 safeAreaEdgeInsets];
        v34 = v21;
        v35 = v20;
        v32 = v23;
        v33 = v22;
        swift_unknownObjectRelease();
        *&v24 = v34;
        *(&v24 + 1) = v32;
        v34 = v24;
        *&v24 = v35;
        *(&v24 + 1) = v33;
        v35 = v24;
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      v37 = v19 == 0;
      v26 = [v9 interfaceOrientation];
      if ((v26 - 1) >= 4)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      v28 = *(v1 + OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_streamPublisher);
      v29 = sub_1E65E60A8();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v28;
      *(v30 + 40) = v11;
      *(v30 + 48) = v13;
      *(v30 + 56) = v15;
      *(v30 + 64) = v17;
      v31 = v35;
      *(v30 + 88) = v34;
      *(v30 + 72) = v31;
      *(v30 + 104) = v37;
      *(v30 + 112) = v27;

      sub_1E64B80F8(0, 0, v6, &unk_1E660E348, v30);
    }

    else
    {
      v25 = v36;
    }
  }
}

uint64_t sub_1E65A9C1C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + 14);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFA78C;

  return sub_1E65A97A0(v7, v8, v9, v10, a1, v4, v5, v6, (v1 + 9), v11);
}

unint64_t sub_1E65A9D0C()
{
  result = qword_1EE2D64C0;
  if (!qword_1EE2D64C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07BAF0, &unk_1E660E350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D64C0);
  }

  return result;
}

uint64_t sub_1E65A9D70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB18, &qword_1E660E438);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65A9E40, v2, 0);
}

uint64_t sub_1E65A9E40()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD528();

  return MEMORY[0x1EEE6DFA0](sub_1E65A9EDC, 0, 0);
}

uint64_t sub_1E65A9EDC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "PersonalizationService/LivePersonalizationService.swift";
  *(v2 + 24) = 55;
  *(v2 + 32) = 2;
  *(v2 + 40) = 21;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65DA948();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65AB558, v2, v5);
}

uint64_t sub_1E65A9FF4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB00, &qword_1E660F920);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AA0C0, v0, 0);
}

uint64_t sub_1E65AA0C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD4E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65AA154, 0, 0);
}

uint64_t sub_1E65AA154()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "PersonalizationService/LivePersonalizationService.swift";
  *(v2 + 24) = 55;
  *(v2 + 32) = 2;
  *(v2 + 40) = 30;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB08, &qword_1E660E420);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65AAEF0, v2, v5);
}

uint64_t sub_1E65AA278(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65A9D70(a1, a2);
}

uint64_t sub_1E65AA324(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65AA278(a1, a2);
}

uint64_t sub_1E65AA3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65D76F8();
  v3[2] = v5;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AA490, a3, 0);
}

uint64_t sub_1E65AA490()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E65EA670;
  sub_1E65D76E8();
  v5 = sub_1E65D76C8();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_1E65AA570(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E65AA3D0(a1, a2, v2);
}

uint64_t sub_1E65AA618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E65A9FF4();
}

uint64_t sub_1E65AA6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65AA618();
}

uint64_t sub_1E65AA738(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB20, &qword_1E660E440);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB18, &qword_1E660E438);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65AB588;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E65AAB14(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB10, &unk_1E660E428);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB00, &qword_1E660F920);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65AB4C8;
  *(v35 + 24) = v33;

  v34(sub_1E5E20BC8, v35);
}

uint64_t sub_1E65AAF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DA948();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB28, &qword_1E660E448);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E65AB614(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB20, &qword_1E660E440);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB20, &qword_1E660E440);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65AB26C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  if (v10)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB10, &unk_1E660E428);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB10, &unk_1E660E428);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65AB4C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB10, &unk_1E660E428) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E65AB26C(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_1E65AB588(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB20, &qword_1E660E440) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E65AAF08(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E65AB614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB28, &qword_1E660E448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PersonalizationService.fetchPersonalizationInferenceResponse.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonalizationService.fetchSuggestedWorkoutIdentifiers.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PersonalizationService.queryAllRecommendations.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t static PersonalizationService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorPersonalizationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660E4B8;
  a1[1] = v2;
  a1[2] = &unk_1E660E4C8;
  a1[3] = v2;
  a1[4] = &unk_1E660E4D8;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65AB7D8()
{
  v1 = *(v0 + 16);
  sub_1E65DA928();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65AB83C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E65AB7B8(a1, a2, v2);
}

uint64_t sub_1E65AB8E8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E65AA3D0(a1, a2, v2);
}

uint64_t sub_1E65AB9AC()
{
  sub_1E65D86D8();
  sub_1E65ABAC0();
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65ABA30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65AB990(v0);
}

unint64_t sub_1E65ABAC0()
{
  result = qword_1ED07BB30;
  if (!qword_1ED07BB30)
  {
    sub_1E65D86D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07BB30);
  }

  return result;
}

uint64_t AwardsService.fetchSeymourAchievement.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardsService.fetchSeymourAchievementProgress.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AwardsService.fetchCurrentStreakNotification.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AwardsService.queryEligibleToPresentAwardToast.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AwardsService.journalAchievementNotificationRecord.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AwardsService.fetchSeymourAchievementImage.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AwardsService.fetchCoalescedSeymourAchievementImage.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_1E65ABC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB70, &qword_1E660E6E8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65ABD68, v3, 0);
}

uint64_t sub_1E65ABD68()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD328();

  return MEMORY[0x1EEE6DFA0](sub_1E65ABE14, 0, 0);
}

uint64_t sub_1E65ABE14()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "AwardsService/LiveAwardsService.swift";
  *(v2 + 24) = 37;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D79C8();
  *v4 = v0;
  v4[1] = sub_1E65ABF2C;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65B05F0, v2, v5);
}

uint64_t sub_1E65ABF2C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65AC0B0, 0, 0);
  }

  else
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E65AC0B0()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E6315780, v1, 0);
}

uint64_t sub_1E65AC128(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB58, &qword_1E660E6D0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC1F4, v1, 0);
}

uint64_t sub_1E65AC1F4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD338();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC290, 0, 0);
}

uint64_t sub_1E65AC290()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AwardsService/LiveAwardsService.swift";
  *(v2 + 24) = 37;
  *(v2 + 32) = 2;
  *(v2 + 40) = 33;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB60, &qword_1E660E6D8);
  *v4 = v0;
  v4[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65B0514, v2, v5);
}

uint64_t sub_1E65AC3B4()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB48, &qword_1E660E6C0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC480, v0, 0);
}

uint64_t sub_1E65AC480()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD358();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC514, 0, 0);
}

uint64_t sub_1E65AC514()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AwardsService/LiveAwardsService.swift";
  *(v2 + 24) = 37;
  *(v2 + 32) = 2;
  *(v2 + 40) = 37;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E65AC624;
  v5 = MEMORY[0x1E69CD180];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65B040C, v2, v5);
}

uint64_t sub_1E65AC624()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {
    v5 = *(v4 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    v8 = *(v4 + 40);
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);

    (*(v3 + 8))(v7, v8);

    v11 = *(v4 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_1E65AC7CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC89C, v2, 0);
}

uint64_t sub_1E65AC89C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD368();

  return MEMORY[0x1EEE6DFA0](sub_1E65AC948, 0, 0);
}

uint64_t sub_1E65AC948()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AwardsService/LiveAwardsService.swift";
  *(v2 + 24) = 37;
  *(v2 + 32) = 2;
  *(v2 + 40) = 41;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E65ACA5C;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 11, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65B03DC, v2, v5);
}

uint64_t sub_1E65ACA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v2 + 80) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65ACBF0, 0, 0);
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);
    v8 = *(v2 + 40);
    v9 = *(v2 + 88);

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E65ACBF0()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E65ACC68, v1, 0);
}

uint64_t sub_1E65ACC68()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2(0);
}

uint64_t sub_1E65ACCD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65ACD9C, v1, 0);
}

uint64_t sub_1E65ACD9C()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD348();

  return MEMORY[0x1EEE6DFA0](sub_1E65ACE38, 0, 0);
}

uint64_t sub_1E65ACE38()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AwardsService/LiveAwardsService.swift";
  *(v2 + 24) = 37;
  *(v2 + 32) = 2;
  *(v2 + 40) = 45;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65AFBA4, v2, v5);
}

uint64_t sub_1E65ACF48(uint64_t a1, double a2, double a3)
{
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1E65E3B68();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65AD010, v3, 0);
}

uint64_t sub_1E65AD010()
{
  v28 = v0;
  v1 = v0[3];
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v3 = v1[2];
  v0[10] = v3;
  v0[11] = v2;
  if (v3)
  {
    v4 = v1[5];
    v0[12] = v4;
    v0[13] = 1;
    v5 = v1[4];

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1E65AD290;
    v7 = v0[6];

    return sub_1E65AD9C0(v5, v4);
  }

  else
  {
    v9 = v0[9];
    sub_1E65DE2E8();
    v10 = sub_1E65E3B48();
    v11 = sub_1E65E6338();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[11];
      v13 = v0[8];
      v26 = v0[9];
      v14 = v0[7];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = sub_1E65AEFC4();

      v19 = MEMORY[0x1E694D940](v18, v17);
      v21 = v20;

      v22 = sub_1E5DFD4B0(v19, v21, &v27);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1E5DE9000, v10, v11, "fetchCoalescedSeymourAchievementImage for achievements: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E694F1C0](v16, -1, -1);
      MEMORY[0x1E694F1C0](v15, -1, -1);

      (*(v13 + 8))(v26, v14);
    }

    else
    {
      v24 = v0[8];
      v23 = v0[9];
      v25 = v0[7];

      (*(v24 + 8))(v23, v25);
    }

    return MEMORY[0x1EEE6DFA0](sub_1E65AD6E8, 0, 0);
  }
}

uint64_t sub_1E65AD290(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[12];
  v8 = v4[6];

  if (v1)
  {
    v9 = sub_1E65AD950;
  }

  else
  {
    v4[16] = a1;
    v9 = sub_1E65AD3E8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1E65AD3E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v34 = v3;
  v4 = v3[16];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x1E694D8F0]();
    if (*((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();

    v6 = v3[13];
    v3[11] = v3[2];
  }

  else
  {
    v6 = v3[13];
  }

  v7 = v3[10];
  if (v6 == v7)
  {
    v8 = v3[9];
    sub_1E65DE2E8();
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v3[11];
      v12 = v3[8];
      v32 = v3[9];
      v13 = v3[7];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136315138;
      v16 = sub_1E65AEFC4();

      v18 = MEMORY[0x1E694D940](v17, v16);
      v20 = v19;

      v21 = sub_1E5DFD4B0(v18, v20, &v33);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "fetchCoalescedSeymourAchievementImage for achievements: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E694F1C0](v15, -1, -1);
      MEMORY[0x1E694F1C0](v14, -1, -1);

      (*(v12 + 8))(v32, v13);
    }

    else
    {
      v29 = v3[8];
      v28 = v3[9];
      v30 = v3[7];

      (*(v29 + 8))(v28, v30);
    }

    a1 = sub_1E65AD6E8;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  if (v6 >= v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v3[3] + 16 * v6;
  v23 = *(v22 + 40);
  v3[12] = v23;
  v3[13] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v24 = *(v22 + 32);

  v25 = swift_task_alloc();
  v3[14] = v25;
  *v25 = v3;
  v25[1] = sub_1E65AD290;
  v26 = v3[6];

  return sub_1E65AD9C0(v24, v23);
}

uint64_t sub_1E65AD6E8()
{
  *(v0 + 136) = sub_1E65E6058();
  *(v0 + 144) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65AD780, v2, v1);
}

uint64_t sub_1E65AD780()
{
  v2 = *(v0 + 17);
  v1 = *(v0 + 18);

  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 11);
  v4 = *(v0 + 6);
  v6 = v0[4];
  v5 = v0[5];
  v7 = [objc_allocWithZone(MEMORY[0x1E6989AB0]) init];
  sub_1E65AEFC4();

  v8 = sub_1E65E5EF8();

  *(v0 + 19) = [v7 thumbnailImageForAchievements:v8 size:0 alignment:3 stackType:{v6, v5}];

  return MEMORY[0x1EEE6DFA0](sub_1E65AD8DC, v4, 0);
}

uint64_t sub_1E65AD8DC()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[19];

  return v3(v4);
}

uint64_t sub_1E65AD950()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E65AD9C0(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_1E65E3B68();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v9 = sub_1E65D79C8();
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[8] = v12;
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_1E65ADB2C;

  return sub_1E65ABC98(v12, a1, a2);
}

uint64_t sub_1E65ADB2C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E65ADE44;
  }

  else
  {
    v4 = sub_1E65ADC54;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65ADC54()
{
  v1 = v0[8];
  v2 = sub_1E65D79A8();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E6989928]);
  v6 = sub_1E65D7508();
  sub_1E600A068(v2, v4);
  v7 = [v5 initWithData_];

  if (v7)
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = [objc_allocWithZone(MEMORY[0x1E69898F8]) initWithCodable_];

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = v0[5];
    sub_1E65DE2E8();
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6328();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[3];
    v21 = v0[4];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "ACHCodableAchievement initialization failed, unable to fetch SeymourAchievement image", v22, 2u);
      MEMORY[0x1E694F1C0](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    v11 = 0;
  }

  v23 = v0[8];
  v24 = v0[5];

  v25 = v0[1];

  return v25(v11);
}

uint64_t sub_1E65ADE44()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1E65ADEB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65ADED4, 0, 0);
}

uint64_t sub_1E65ADED4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65DE238();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65ADF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E65ABC98(a1, a2, a3);
}

uint64_t sub_1E65AE024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E65ADF70(a1, a2, a3);
}

uint64_t sub_1E65AE0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E65AC128(a1);
}

uint64_t sub_1E65AE170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E65AE0D8(a1);
}

uint64_t sub_1E65AE208()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E65AE298;

  return sub_1E65AC3B4();
}

uint64_t sub_1E65AE298(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t sub_1E65AE3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E621FCB8;

  return sub_1E65AE208();
}

uint64_t sub_1E65AE46C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E65AE514;

  return sub_1E65AC7CC(a1, a2);
}

uint64_t sub_1E65AE514(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1E65AE61C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FE99E8;

  return sub_1E65AE46C(a1, a2);
}

uint64_t sub_1E65AE6C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65ACCD0(a1);
}

uint64_t sub_1E65AE75C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65AE6C4(a1);
}

uint64_t sub_1E65AE7F4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 32) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  *v8 = v5;
  v8[1] = sub_1E65AE8A4;

  return sub_1E65AD9C0(a1, a2);
}

uint64_t sub_1E65AE8A4(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else if (a1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65AEA18, 0, 0);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(0);
  }
}

uint64_t sub_1E65AEA18()
{
  *(v0 + 56) = sub_1E65E6058();
  *(v0 + 64) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65AEAB0, v2, v1);
}

uint64_t sub_1E65AEAB0()
{
  v2 = *(v0 + 7);
  v1 = *(v0 + 8);

  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 6);
  v4 = *(v0 + 4);
  v6 = v0[2];
  v5 = v0[3];
  v7 = [objc_allocWithZone(MEMORY[0x1E6989AB0]) init];
  *(v0 + 9) = [v7 thumbnailImageForAchievement:v3 size:{v6, v5}];

  return MEMORY[0x1EEE6DFA0](sub_1E65AEBCC, v4, 0);
}

uint64_t sub_1E65AEBCC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65AEC34(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E65AE7F4(a1, a2, v4, a3, a4);
}

uint64_t sub_1E65AECF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65AED10, a2, 0);
}

uint64_t sub_1E65AED10()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE238();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65AEDC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65AECF4(a1, v1);
}

uint64_t sub_1E65AEE64(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E60C34A4;

  return sub_1E65ACF48(a1, a2, a3);
}

uint64_t sub_1E65AEF14(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E65AEE64(a1, a2, a3);
}

unint64_t sub_1E65AEFC4()
{
  result = qword_1ED07BB40;
  if (!qword_1ED07BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED07BB40);
  }

  return result;
}

uint64_t sub_1E65AF010(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB78, &qword_1E660E6F0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB70, &qword_1E660E6E8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65B0608;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E65AF3EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB68, &qword_1E660E6E0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB58, &qword_1E660E6D0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65B052C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65AF7C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB50, &qword_1E660E6C8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB48, &qword_1E660E6C0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65B0424;
  *(v35 + 24) = v33;

  v34(sub_1E65B04C4, v35);
}

uint64_t sub_1E65AFBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D79C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB80, &qword_1E660E6F8);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E65B0694(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB78, &qword_1E660E6F0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB78, &qword_1E660E6F0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65AFF20(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  if (v10)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB68, &qword_1E660E6E0);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB68, &qword_1E660E6E0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65B017C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v33 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = a1;
    v21 = v20;
    v34 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v34);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v25 = v21;
    a1 = v29;
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v34 = a1;
  if ((v33 & 0x100) != 0)
  {
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB50, &qword_1E660E6C8);
    return sub_1E65E5FE8();
  }

  else
  {
    v35 = v33 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB50, &qword_1E660E6C8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65B0424(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB50, &qword_1E660E6C8) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(v1 + 40);
  v10 = *(a1 + 8) | (*(a1 + 9) << 8);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E65B017C(v8, v10, v4, v5, v6, v9, v7, v11);
}

uint64_t sub_1E65B04C4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *(result + 9);
  v6 = *result;
  v7 = v4;
  v8 = v5;
  if (v2)
  {
    return v2(&v6);
  }

  return result;
}

uint64_t sub_1E65B0554(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E65B0608(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB78, &qword_1E660E6F0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E65AFBBC(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E65B0694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB80, &qword_1E660E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AwardsService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorAwardsService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1E660E748;
  *(v3 + 24) = v2;
  *a1 = &unk_1E660E718;
  a1[1] = v2;
  a1[2] = &unk_1E660E728;
  a1[3] = v2;
  a1[4] = &unk_1E660E738;
  a1[5] = v2;
  a1[6] = &unk_1E660E758;
  a1[7] = v3;
  a1[8] = &unk_1E660E768;
  a1[9] = v2;
  a1[10] = &unk_1E660E778;
  a1[11] = v2;
  a1[12] = &unk_1E660E788;
  a1[13] = v2;
  a1[14] = &unk_1E660E798;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65B0854()
{
  v1 = *(v0 + 16);
  sub_1E65D79B8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65B08C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFA78C;

  return sub_1E65B0834(a1, a2, a3, v3);
}

uint64_t sub_1E65B098C()
{
  v1 = sub_1E65B1E98(&unk_1F5FCC9E0);
  sub_1E65B1F3C(&unk_1F5FCCA00);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65B0A08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E65B0974(a1, v1);
}

uint64_t sub_1E65B0ABC()
{
  v1 = sub_1E65D8958();
  sub_1E65B14E4();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CB6D8], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E65B0B8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E621FCB8;

  return sub_1E65B0AA0(v0);
}

uint64_t sub_1E65B0C34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E65B0CDC;

  return sub_1E65B0C1C();
}

uint64_t sub_1E65B0CDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1E65B0DD8(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E65B0ED8;

  return v9(a1, a2);
}

uint64_t sub_1E65B0ED8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1E65B0FD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E65B0DD8(a1, a2, v7);
}

uint64_t sub_1E65B109C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65B1134()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E658A628();
}

uint64_t sub_1E65B11F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB88, &qword_1E660E7E0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B12C4, a2, 0);
}

uint64_t sub_1E65B12C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DE238();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65B1398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65B11F4(a1, v1);
}

uint64_t sub_1E65B1434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E658A628();
}

unint64_t sub_1E65B14E4()
{
  result = qword_1ED07BB90;
  if (!qword_1ED07BB90)
  {
    sub_1E65D8958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07BB90);
  }

  return result;
}

uint64_t sub_1E65B153C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1E65E6D28();
  sub_1E65D79E8();
  v8 = sub_1E65E6D78();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48) + 40 * v10;
      v13 = *(v12 + 32);
      v14 = *(v12 + 16);
      v28[0] = *v12;
      v28[1] = v14;
      v29 = v13;
      sub_1E6060250(v28, v27);
      v15 = MEMORY[0x1E693F3E0](v28, a2);
      sub_1E65B1F3C(v28);
      if (v15)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E65B1F3C(a2);
    v20 = *(v6 + 48) + 40 * v10;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    *a1 = *v20;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    sub_1E61147EC(v21, v22, v23, v24, v25);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_1E6060250(a2, v27);
    sub_1E65B1938(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
    v18 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v18;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1E65B16C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBA0, &qword_1E660E7E8);
  result = sub_1E65E6868();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      sub_1E65E6D28();
      sub_1E65D79E8();
      result = sub_1E65E6D78();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E65B1938(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E65B16C4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E65B1AD8();
      goto LABEL_12;
    }

    sub_1E65B1C48(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1E65E6D28();
  sub_1E65D79E8();
  result = sub_1E65E6D78();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 40 * a2;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v24[0] = *v13;
      v24[1] = v15;
      v25 = v14;
      sub_1E6060250(v24, v23);
      v16 = MEMORY[0x1E693F3E0](v24, v6);
      result = sub_1E65B1F3C(v24);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = *(v6 + 16);
  *v18 = *v6;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(v6 + 32);
  v20 = *(v17 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v17 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E65B1AD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBA0, &qword_1E660E7E8);
  v2 = *v0;
  v3 = sub_1E65E6858();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        result = sub_1E61147EC(v19, v20, v21, v22, v23);
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

uint64_t sub_1E65B1C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBA0, &qword_1E660E7E8);
  result = sub_1E65E6868();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v20 = *(v3 + 48) + 40 * (v17 | (v7 << 6));
      v21 = *(v20 + 32);
      v22 = *(v20 + 16);
      v33 = *v20;
      v34 = v22;
      v35 = v21;
      v23 = *(v6 + 40);
      sub_1E65E6D28();
      sub_1E6060250(&v33, v32);
      sub_1E65D79E8();
      result = sub_1E65E6D78();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v33;
      v16 = v34;
      *(v14 + 32) = v35;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

uint64_t sub_1E65B1E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E65B1F90();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CAEB0], v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v11 = *(v5 + 32);
      sub_1E6060250(v10, v7);
      sub_1E65B153C(v7, v10);
      sub_1E6221040(v7[0], v7[1], v7[2], v7[3], v8);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_1E65B1F90()
{
  result = qword_1ED07BB98;
  if (!qword_1ED07BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07BB98);
  }

  return result;
}

uint64_t ServiceSubscriptionService.refreshServiceSubscription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServiceSubscriptionService.queryServiceSubscription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServiceSubscriptionService.fetchServiceSubscription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ServiceSubscriptionService.makeServiceSubscriptionPurchasedStream.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ServiceSubscriptionService.makeSubscriptionPurchaseRequest.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ServiceSubscriptionService.performPurchase.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void static ServiceSubscriptionService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660E870;
  a1[1] = 0;
  a1[2] = &unk_1E660E880;
  a1[3] = 0;
  a1[4] = &unk_1E660E890;
  a1[5] = 0;
  a1[6] = &unk_1E660E8A0;
  a1[7] = 0;
  a1[8] = &unk_1E660E8B0;
  a1[9] = 0;
  a1[10] = &unk_1E660E8C0;
  a1[11] = 0;
  a1[12] = &unk_1E660E8C8;
  a1[13] = 0;
}

uint64_t sub_1E65B21E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B21C4(a1);
}

uint64_t sub_1E65B227C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E656C918(a1);
}

uint64_t sub_1E65B231C(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBB8, &unk_1E660E8E0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B23E8, 0, 0);
}

uint64_t sub_1E65B23E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D92D8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65B24BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65B231C(a1);
}

uint64_t sub_1E65B2554(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBB0, &qword_1E660E8D8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B2620, 0, 0);
}

uint64_t sub_1E65B2620()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DB868();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65B26F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B2554(a1);
}

uint64_t sub_1E65B278C(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBD0, &unk_1E660EA30);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B2858, 0, 0);
}

uint64_t sub_1E65B2858()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for SubscriptionPurchaseRequest();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBA8, &qword_1E660E8D0);
  v4[4] = sub_1E65B2A98();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65B2954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B278C(a1);
}

uint64_t sub_1E65B2A08()
{
  sub_1E5FB7C50();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1E65B2A98()
{
  result = qword_1EE2D47E0;
  if (!qword_1EE2D47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07BBA8, &qword_1E660E8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D47E0);
  }

  return result;
}

uint64_t SubscriptionPurchaseRequest.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionPurchaseRequest() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E65B2B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E65B2BB0, 0, 0);
}

uint64_t sub_1E65B2BB0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69CD5E0] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E630DF80;
  v6 = v0[2];

  return MEMORY[0x1EEE37850](v6, v2, v3);
}

uint64_t sub_1E65B2C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for SubscriptionPurchaseRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - v16;
  v18 = *(v15 + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  (*(*(v19 - 8) + 16))(&v17[v18], a1, v19);
  *v17 = a2;
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_1E65B31DC(a3, v27);
  sub_1E65B4520(v17, v14);
  v21 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = v27[1];
  *(v22 + 32) = v27[0];
  *(v22 + 48) = v23;
  v24 = v27[3];
  *(v22 + 64) = v27[2];
  *(v22 + 80) = v24;
  sub_1E65B4584(v14, v22 + v21);
  v25 = a2;
  sub_1E64B80F8(0, 0, v9, &unk_1E660EA20, v22);

  return sub_1E65B46DC(v17);
}

uint64_t sub_1E65B2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E65B2EDC, 0, 0);
}

uint64_t sub_1E65B2EDC()
{
  *(v0 + 32) = *(*(v0 + 16) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC8, &qword_1E660E900);
  sub_1E5FED46C(&qword_1EE2D64C8, &qword_1ED07BBC8, &qword_1E660E900);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B2FAC, v2, v1);
}

uint64_t sub_1E65B2FAC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1E65E1798();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65B302C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x1E69CD5E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E65B30E4;

  return MEMORY[0x1EEE37858](v2, v3);
}

uint64_t sub_1E65B30E4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E65B3214()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E65B300C(v0 + 16);
}

uint64_t sub_1E65B32A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65B32C8, 0, 0);
}

uint64_t sub_1E65B32C8()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x1E69CD5E0] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E6531164;
  v6 = v0[2];

  return MEMORY[0x1EEE37850](v6, v2, v3);
}

uint64_t sub_1E65B3388(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65B32A8(a1, v1 + 16);
}

uint64_t sub_1E65B3424(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = sub_1E65DB878();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B34E8, 0, 0);
}

uint64_t sub_1E65B34E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 96);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  if (v2 == 1)
  {
    v5 = *(MEMORY[0x1E69CD5D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1E65B3630;
    v7 = *(v0 + 16);

    return MEMORY[0x1EEE37848](v7, v3, v4);
  }

  else
  {
    v8 = *(MEMORY[0x1E69CD5E0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_1E65B3748;
    v10 = *(v0 + 16);

    return MEMORY[0x1EEE37850](v10, v3, v4);
  }
}

uint64_t sub_1E65B3630()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E65B3748()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65B3884, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E65B3884()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  (*(v3 + 104))(v2, *MEMORY[0x1E69CD640], v4);
  sub_1E65B47E4(&qword_1EE2D6D18, MEMORY[0x1E69CD650]);
  LOBYTE(v1) = sub_1E65D97C8();
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    v5 = v0[3];
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    v8 = *(MEMORY[0x1E69CD5D8] + 4);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1E65B3A34;
    v10 = v0[2];

    return MEMORY[0x1EEE37848](v10, v6, v7);
  }

  else
  {
    v11 = v0[9];
    swift_willThrow();
    v12 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1E65B3A34()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E65B3BB4;
  }

  else
  {
    v3 = sub_1E65B3B48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E65B3B48()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65B3BB4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E65B3C20(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65B3424(a1, a2, v2 + 16);
}

uint64_t sub_1E65B3CCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65B3CEC, 0, 0);
}

uint64_t sub_1E65B3CEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *v2;
  v3 = v2[1];
  swift_getObjectType();
  sub_1E65DB8B8();
  sub_1E5DF650C((v2 + 2), v0 + 16);
  v5 = swift_allocObject();
  sub_1E5DF599C((v0 + 16), v5 + 16);
  sub_1E65D92D8();
  sub_1E65B47E4(&qword_1EE2D6D00, MEMORY[0x1E69CD678]);
  sub_1E65DDE28();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E65B3E2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65B3CCC(a1, v1 + 16);
}

uint64_t sub_1E65B3EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65B3EE8, 0, 0);
}

uint64_t sub_1E65B3EE8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *v1;
  v4 = v1[1];
  swift_getObjectType();
  sub_1E65DB868();
  sub_1E65B47E4(&qword_1EE2D6D20, MEMORY[0x1E69CD638]);
  sub_1E65DDE38();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65B3FC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65B3EC8(a1, v1 + 16);
}

uint64_t sub_1E65B4060(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBD0, &unk_1E660EA30);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B412C, 0, 0);
}

uint64_t sub_1E65B412C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + 56);
  *v1 = 1;
  v5 = *MEMORY[0x1E69E8648];
  (*(v2 + 104))();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBA8, &qword_1E660E8D0);
  v4[4] = sub_1E5FED46C(&qword_1EE2D47E0, &qword_1ED07BBA8, &qword_1E660E8D0);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC8, &qword_1E660E900);
  sub_1E5FED46C(&qword_1EE2D64C8, &qword_1ED07BBC8, &qword_1E660E900);
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5E275D8, v7, v6);
}

uint64_t sub_1E65B4280(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65B4060(a1, v1 + 16);
}

uint64_t sub_1E65B431C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65B433C, 0, 0);
}

uint64_t sub_1E65B433C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_1E5DEF738(0, &unk_1EE2D4618, 0x1E698CAF0);
  *v3 = v0;
  v3[1] = sub_1E65A4F50;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000018, 0x80000001E66172A0, sub_1E65B4518, v1, v4);
}

uint64_t sub_1E65B4448(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E65B431C(a1, v1 + 16);
}

uint64_t sub_1E65B4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionPurchaseRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65B4584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionPurchaseRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65B45E8(uint64_t a1)
{
  v4 = *(type metadata accessor for SubscriptionPurchaseRequest() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E65B2EBC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E65B46DC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionPurchaseRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E65B4738(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E65B2B90(a1, a2, v2 + 16);
}

uint64_t sub_1E65B47E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CatalogService.fetchRemoteCatalogEditorialCollectionDetail.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CatalogService.fetchRemoteCatalogLockups.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CatalogService.fetchRemoteCatalogModalityDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CatalogService.fetchRemoteCatalogProgramDetail.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CatalogService.fetchRemoteCatalogWorkoutDetail.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CatalogService.fetchRemoteCatalogWorkouts.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CatalogService.fetchRemoteSummaryShelfLockupDescriptors.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t CatalogService.fetchRemoteWorkoutShelfLockupDescriptors.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t CatalogService.fetchRemoteNavigationEditorialContent.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t CatalogService.fetchRemoteExploreShelfLockupDescriptors.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t CatalogService.fetchRemoteGalleryLockups.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t CatalogService.fetchRemoteLegacyShelfLockupDescriptors.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t CatalogService.fetchRemoteExploreTrainerTipShelfLockupDescriptor.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t CatalogService.fetchRemoteTrainerDetail.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t CatalogService.fetchRemoteTrainerTipGalleryDetail.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t CatalogService.filterCatalog.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t CatalogService.queryAllBodyFocuses.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t CatalogService.queryAllCatalogModalityReferences.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t CatalogService.queryAllCatalogThemeCategories.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t CatalogService.queryAllCatalogThemes.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t CatalogService.queryAllEquipment.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return v1;
}

uint64_t CatalogService.queryAllMusicGenres.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return v1;
}

uint64_t CatalogService.queryAllSkillLevels.getter()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return v1;
}

uint64_t CatalogService.queryAllTrainerReferences.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

uint64_t CatalogService.queryCachedCatalogWorkoutDetail.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return v1;
}

uint64_t CatalogService.queryCachedCatalogWorkoutLockups.getter()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return v1;
}

uint64_t CatalogService.queryCatalogFilterOptions.getter()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return v1;
}

uint64_t CatalogService.queryCatalogWorkoutReferences.getter()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  return v1;
}

uint64_t CatalogService.makeCatalogDeletedStream.getter()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return v1;
}

uint64_t CatalogService.makeCatalogUpdatedStream.getter()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return v1;
}

uint64_t CatalogService.makeSummaryShelfLockupDescriptorsCacheUpdatedStream.getter()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);

  return v1;
}

uint64_t CatalogService.makeTrainerTipJournalsUpdatedStream.getter()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);

  return v1;
}

uint64_t CatalogService.requestCatalogSync.getter()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 520);

  return v1;
}

uint64_t CatalogService.requestCatalogLockupPlaceholderBackfill.getter()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);

  return v1;
}

uint64_t CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);

  return v1;
}

uint64_t sub_1E65B4ED0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 560))
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

uint64_t sub_1E65B4F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 560) = 1;
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

    *(result + 560) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E65B4FEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDB8, &unk_1E660F150);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B50B8, v1, 0);
}

uint64_t sub_1E65B50B8()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD958();

  return MEMORY[0x1EEE6DFA0](sub_1E65B5154, 0, 0);
}

uint64_t sub_1E65B5154()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7244, v2, v5);
}

uint64_t sub_1E65B5278(uint64_t a1, char a2)
{
  *(v3 + 74) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = sub_1E65D9B08();
  *(v3 + 104) = v4;
  v5 = *(v4 - 8);
  *(v3 + 112) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_1E65DDF48();
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  *(v3 + 160) = v10;
  v11 = *(v10 - 8);
  *(v3 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B540C, v2, 0);
}

uint64_t sub_1E65B540C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[11];
  sub_1E65DD8D8();
  sub_1E61259CC();
  sub_1E65E63C8();
  (*(v3 + 104))(v2, *MEMORY[0x1E69CAC18], v4);
  v6 = sub_1E65DDF38();
  v7 = MEMORY[0x1E69CAC10];
  v0[5] = v6;
  v0[6] = v7;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65DDF28();
  v8 = sub_1E65DE408();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1E65DE3F8();
  sub_1E65E63C8();
  sub_1E65DD8C8();
  sub_1E65DD8B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B5568, 0, 0);
}

uint64_t sub_1E65B5568()
{
  v1 = v0[22];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 38;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[24] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD70, &unk_1E660EF30);
  *v4 = v0;
  v4[1] = sub_1E65B568C;

  return MEMORY[0x1EEE6DE38](v0 + 10, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7360, v2, v5);
}

uint64_t sub_1E65B568C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[23];
  if (v0)
  {

    v6 = sub_1E65B5ACC;
    v7 = 0;
  }

  else
  {
    v9 = v2[21];
    v8 = v2[22];
    v10 = v2[20];
    v11 = v2[12];
    v2[26] = v2[10];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E65B5804;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

void sub_1E65B5804()
{
  v1 = 0;
  v2 = *(v0 + 112);
  v3 = *(v0 + 208);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v36 = *(v0 + 208);
  v37 = v2;
  v7 = -1;
  v8 = -1 << *(v36 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v35 = (v2 + 8);
  v33 = (v2 + 32);
  v34 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v1;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v12 = *(v0 + 74);
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v37 + 72);
    (*(v37 + 16))(*(v0 + 128), *(v36 + 48) + v14 * (v13 | (v1 << 6)), *(v0 + 104));
    v15 = sub_1E65D9AF8();
    v17 = v16;
    *(v0 + 56) = v15;
    *(v0 + 64) = v16;
    v19 = v18 & 1;
    *(v0 + 72) = v18 & 1;
    *(v0 + 73) = v12;
    sub_1E628D918();
    sub_1E628D96C();
    v20 = sub_1E65D7FE8();
    sub_1E5F87058(v15, v17, v19);
    if (v20)
    {
      v21 = *v33;
      (*v33)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
      v22 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1E65C5094(0, *(v34 + 16) + 1, 1);
        v22 = v34;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E65C5094(v23 > 1, v24 + 1, 1);
        v22 = v34;
      }

      v25 = *(v0 + 120);
      v26 = *(v0 + 104);
      *(v22 + 16) = v24 + 1;
      v34 = v22;
      v21(v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + v24 * v14, v25, v26);
    }

    else
    {
      (*v35)(*(v0 + 128), *(v0 + 104));
    }
  }

  while (1)
  {
    v1 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v1 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v1);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v27 = *(v0 + 208);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);

  v32 = *(v0 + 8);

  v32(v34);
}

uint64_t sub_1E65B5ACC()
{
  v1 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);

  return MEMORY[0x1EEE6DFA0](sub_1E65B5B48, v1, 0);
}

uint64_t sub_1E65B5B48()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t sub_1E65B5BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD98, &qword_1E660F130);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B5CA4, v3, 0);
}

uint64_t sub_1E65B5CA4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD908();

  return MEMORY[0x1EEE6DFA0](sub_1E65B5D50, 0, 0);
}

uint64_t sub_1E65B5D50()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 45;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65DA8C8();
  *v4 = v0;
  v4[1] = sub_1E65B5E68;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7204, v2, v5);
}

uint64_t sub_1E65B5E68()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65B5FEC, 0, 0);
  }

  else
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E65B5FEC()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E65C7350, v1, 0);
}

uint64_t sub_1E65B6064(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 88) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBF8, &qword_1E660EF58);
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B6134, v2, 0);
}

uint64_t sub_1E65B6134()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = v2[18];
  v5 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD918();

  return MEMORY[0x1EEE6DFA0](sub_1E65B61E0, 0, 0);
}

uint64_t sub_1E65B61E0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  *v4 = v0;
  v4[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C735C, v2, v5);
}

uint64_t sub_1E65B6304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD80, &qword_1E660F118);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B63D4, v3, 0);
}

uint64_t sub_1E65B63D4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD8F8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B6480, 0, 0);
}

uint64_t sub_1E65B6480()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D9798();
  *v4 = v0;
  v4[1] = sub_1E65B5E68;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C71C4, v2, v5);
}

uint64_t sub_1E65B6598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD68, &qword_1E660F100);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B6668, v3, 0);
}

uint64_t sub_1E65B6668()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD8E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B6714, 0, 0);
}

uint64_t sub_1E65B6714()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 64;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D94D8();
  *v4 = v0;
  v4[1] = sub_1E65ABF2C;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7184, v2, v5);
}

uint64_t sub_1E65B682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B68FC, v3, 0);
}

uint64_t sub_1E65B68FC()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA88();

  return MEMORY[0x1EEE6DFA0](sub_1E65B69A8, 0, 0);
}

uint64_t sub_1E65B69A8()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D9658();
  *v4 = v0;
  v4[1] = sub_1E65B5E68;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7358, v2, v5);
}

uint64_t sub_1E65B6AC0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65DA348();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD38, &qword_1E660F0E0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B6BE8, v1, 0);
}

uint64_t sub_1E65B6BE8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v4[17]);

  sub_1E65DA338();
  sub_1E65DD928();
  (*(v3 + 8))(v2, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E65B6CC4, 0, 0);
}

uint64_t sub_1E65B6CC4()
{
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 74;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD40, &qword_1E660F0E8);
  *v4 = v0;
  v4[1] = sub_1E65B6DE8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6FBC, v2, v5);
}

uint64_t sub_1E65B6DE8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    v6 = sub_1E65B6FF8;
    v7 = 0;
  }

  else
  {
    v9 = v2[9];
    v8 = v2[10];
    v10 = v2[8];
    v11 = v2[4];
    v2[14] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E65B6F60;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E65B6F60()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = sub_1E65C6FD4(v0[14]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1E65B6FF8()
{
  v1 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FE0E84, v1, 0);
}

uint64_t sub_1E65B7074()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCF8, &qword_1E660F098);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B7140, v0, 0);
}

uint64_t sub_1E65B7140()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA68();

  return MEMORY[0x1EEE6DFA0](sub_1E65B71D4, 0, 0);
}

uint64_t sub_1E65B71D4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 83;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA8, &qword_1E660F0A0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7354, v2, v5);
}

uint64_t sub_1E65B72F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD20, &qword_1E660F0C8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B73C4, v1, 0);
}

uint64_t sub_1E65B73C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA48();

  return MEMORY[0x1EEE6DFA0](sub_1E65B7458, 0, 0);
}

uint64_t sub_1E65B7458()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 87;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65DA248();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6F7C, v2, v5);
}

uint64_t sub_1E65B7570()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCF8, &qword_1E660F098);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B763C, v0, 0);
}

uint64_t sub_1E65B763C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA58();

  return MEMORY[0x1EEE6DFA0](sub_1E65B76D0, 0, 0);
}

uint64_t sub_1E65B76D0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 91;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA8, &qword_1E660F0A0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C7354, v2, v5);
}

uint64_t sub_1E65B77F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 96) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD08, &qword_1E660F0B0);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B78C8, v3, 0);
}

uint64_t sub_1E65B78C8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = v2[18];
  v6 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA08();

  return MEMORY[0x1EEE6DFA0](sub_1E65B797C, 0, 0);
}

uint64_t sub_1E65B797C()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 101;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD10, &qword_1E660F0B8);
  *v4 = v0;
  v4[1] = sub_1E65B7AA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6F50, v2, v5);
}

uint64_t sub_1E65B7AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[9];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65AC0B0, 0, 0);
  }

  else
  {
    v7 = v2[7];
    v6 = v2[8];
    v8 = v2[6];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E65B7C34()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCF8, &qword_1E660F098);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B7D00, v0, 0);
}

uint64_t sub_1E65B7D00()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA28();

  return MEMORY[0x1EEE6DFA0](sub_1E65B7D94, 0, 0);
}

uint64_t sub_1E65B7D94()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 105;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA8, &qword_1E660F0A0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6F24, v2, v5);
}

uint64_t sub_1E65B7EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCE0, &qword_1E660F080);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B7F84, v1, 0);
}

uint64_t sub_1E65B7F84()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA78();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8018, 0, 0);
}

uint64_t sub_1E65B8018()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 109;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9898();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6EE4, v2, v5);
}

uint64_t sub_1E65B8130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCC8, &qword_1E660F068);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8200, v3, 0);
}

uint64_t sub_1E65B8200()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9F8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B82AC, 0, 0);
}

uint64_t sub_1E65B82AC()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 113;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D8418();
  *v4 = v0;
  v4[1] = sub_1E65B5E68;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6EA4, v2, v5);
}

uint64_t sub_1E65B83C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCB0, &qword_1E660F050);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8490, v1, 0);
}

uint64_t sub_1E65B8490()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA38();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8524, 0, 0);
}

uint64_t sub_1E65B8524()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 117;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9C68();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6E64, v2, v5);
}

uint64_t sub_1E65B863C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC98, &qword_1E660F038);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B870C, v2, 0);
}

uint64_t sub_1E65B870C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD948();

  return MEMORY[0x1EEE6DFA0](sub_1E65B87A8, 0, 0);
}

uint64_t sub_1E65B87A8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 123;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D9158();
  *v4 = v0;
  v4[1] = sub_1E65B88C0;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6E24, v2, v5);
}

uint64_t sub_1E65B88C0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6540F30, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E65B8A44()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC88, &unk_1E660F020);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8B10, v0, 0);
}

uint64_t sub_1E65B8B10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9C8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8BA4, 0, 0);
}

uint64_t sub_1E65B8BA4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 129;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E0, &qword_1E65EBFA8);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6DF8, v2, v5);
}

uint64_t sub_1E65B8CC8()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC78, &qword_1E660F008);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8D94, v0, 0);
}

uint64_t sub_1E65B8D94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD988();

  return MEMORY[0x1EEE6DFA0](sub_1E65B8E28, 0, 0);
}

uint64_t sub_1E65B8E28()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072908, &qword_1E660F010);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6DCC, v2, v5);
}

uint64_t sub_1E65B8F4C()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC60, &qword_1E660EFF0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9018, v0, 0);
}

uint64_t sub_1E65B9018()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD978();

  return MEMORY[0x1EEE6DFA0](sub_1E65B90AC, 0, 0);
}

uint64_t sub_1E65B90AC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 137;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC68, &qword_1E660EFF8);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6DA0, v2, v5);
}

uint64_t sub_1E65B91D0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC50, &qword_1E660EFD8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B929C, v0, 0);
}

uint64_t sub_1E65B929C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD998();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9330, 0, 0);
}

uint64_t sub_1E65B9330()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 141;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E8, &qword_1E660EFE0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6D74, v2, v5);
}

uint64_t sub_1E65B9454()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC38, &qword_1E660EFC0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9520, v0, 0);
}

uint64_t sub_1E65B9520()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9A8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B95B4, 0, 0);
}

uint64_t sub_1E65B95B4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 145;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC40, &qword_1E660EFC8);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6D48, v2, v5);
}

uint64_t sub_1E65B96D8()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC28, &qword_1E660EFA8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B97A4, v0, 0);
}

uint64_t sub_1E65B97A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9D8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9838, 0, 0);
}

uint64_t sub_1E65B9838()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 149;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F0, &qword_1E660EFB0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6D1C, v2, v5);
}

uint64_t sub_1E65B995C()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC18, &unk_1E660EF90);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9A28, v0, 0);
}

uint64_t sub_1E65B9A28()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9ABC, 0, 0);
}

uint64_t sub_1E65B9ABC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 153;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F8, &qword_1E65EBFE0);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6CF0, v2, v5);
}

uint64_t sub_1E65B9BE0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC08, &qword_1E660EF78);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9CAC, v0, 0);
}

uint64_t sub_1E65B9CAC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA18();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9D40, 0, 0);
}

uint64_t sub_1E65B9D40()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 157;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072900, &qword_1E660EF80);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6CC4, v2, v5);
}

uint64_t sub_1E65B9E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9F34, v3, 0);
}

uint64_t sub_1E65B9F34()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDA98();

  return MEMORY[0x1EEE6DFA0](sub_1E65B9FE0, 0, 0);
}

uint64_t sub_1E65B9FE0()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 161;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1E65D9658();
  *v4 = v0;
  v4[1] = sub_1E65B5E68;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6C14, v2, v5);
}

uint64_t sub_1E65BA0F8(uint64_t a1, char a2, char a3)
{
  *(v4 + 89) = a3;
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBF8, &qword_1E660EF58);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65BA1CC, v3, 0);
}

uint64_t sub_1E65BA1CC()
{
  v16 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v0 + 24);
    v6 = sub_1E65C5010(v4, 0);
    v7 = sub_1E6259778(&v15, v6 + 4, v4, v5);

    v8 = sub_1E5E24EE4();
    if (v7 != v4)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v8, v9, v10);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v15 = v6;
  sub_1E65C612C(&v15);
  v11 = *(v0 + 56);
  v12 = *(v0 + 88);
  v13 = *(v0 + 89);
  sub_1E65DDAA8();

  v8 = sub_1E65BA36C;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E65BA36C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 173;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6BE8, v2, v5);
}

uint64_t sub_1E65BA490(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBE0, &qword_1E660EF40);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65BA560, v2, 0);
}

uint64_t sub_1E65BA560()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD9B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65BA5FC, 0, 0);
}

uint64_t sub_1E65BA5FC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 179;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D9458();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6BA8, v2, v5);
}

uint64_t sub_1E65BA714(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65BA7E0, v1, 0);
}

uint64_t sub_1E65BA7E0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD938();

  return MEMORY[0x1EEE6DFA0](sub_1E65BA87C, 0, 0);
}

uint64_t sub_1E65BA87C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 183;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD70, &unk_1E660EF30);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C6B78, v2, v5);
}

uint64_t sub_1E65BA9A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65BA9C0, 0, 0);
}

uint64_t sub_1E65BA9C0()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_1E65DE038();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65BAA28(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65BAAF8, v1, 0);
}

uint64_t sub_1E65BAAF8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  v4 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD968();

  return MEMORY[0x1EEE6DFA0](sub_1E65BAB98, 0, 0);
}

uint64_t sub_1E65BAB98()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "CatalogService/LiveCatalogService.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 207;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6523A50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65C2E8C, v2, v5);
}

uint64_t sub_1E65BACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B5BD4(a1, a2, a3);
}

uint64_t sub_1E65BAD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BACA8(a1, a2, a3);
}

uint64_t sub_1E65BAE10(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E60C34A4;

  return sub_1E65B6064(a1, a2);
}

uint64_t sub_1E65BAEB8(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FEE4D4;

  return sub_1E65BAE10(a1, a2);
}

uint64_t sub_1E65BAF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B6304(a1, a2, a3);
}

uint64_t sub_1E65BB014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BAF60(a1, a2, a3);
}

uint64_t sub_1E65BB0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B6598(a1, a2, a3);
}

uint64_t sub_1E65BB17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BB0C8(a1, a2, a3);
}

uint64_t sub_1E65BB230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B682C(a1, a2, a3);
}

uint64_t sub_1E65BB2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BB230(a1, a2, a3);
}

uint64_t sub_1E65BB398(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65B6AC0(a1);
}

uint64_t sub_1E65BB430(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65BB398(a1);
}

uint64_t sub_1E65BB4E8()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAE10] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E651F35C;

  return MEMORY[0x1EEE348C0](v2, v3);
}

uint64_t sub_1E65BB5A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65BB4C8(v0);
}

uint64_t sub_1E65BB630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B7074();
}

uint64_t sub_1E65BB6C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BB630();
}

uint64_t sub_1E65BB750(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B72F8(a1);
}

uint64_t sub_1E65BB7EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65BB750(a1);
}

uint64_t sub_1E65BB888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B7570();
}

uint64_t sub_1E65BB918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BB888();
}

uint64_t sub_1E65BB9A8(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E60C34A4;

  return sub_1E65B77F4(a1, a2, a3);
}

uint64_t sub_1E65BBA58(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E65BB9A8(a1, a2, a3);
}

uint64_t sub_1E65BBB08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B7C34();
}

uint64_t sub_1E65BBB98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BBB08();
}

uint64_t sub_1E65BBC28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B7EB8(a1);
}

uint64_t sub_1E65BBCC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65BBC28(a1);
}

uint64_t sub_1E65BBD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B8130(a1, a2, a3);
}

uint64_t sub_1E65BBE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BBD60(a1, a2, a3);
}

uint64_t sub_1E65BBEC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65B83C4(a1);
}

uint64_t sub_1E65BBF64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65BBEC8(a1);
}

uint64_t sub_1E65BC000(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65B863C(a1, a2);
}

uint64_t sub_1E65BC0AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65BC000(a1, a2);
}

uint64_t sub_1E65BC158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B8A44();
}

uint64_t sub_1E65BC1E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC158();
}

uint64_t sub_1E65BC278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B8CC8();
}

uint64_t sub_1E65BC308()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC278();
}

uint64_t sub_1E65BC398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B8F4C();
}

uint64_t sub_1E65BC428()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC398();
}

uint64_t sub_1E65BC4B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B91D0();
}

uint64_t sub_1E65BC548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC4B8();
}

uint64_t sub_1E65BC5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B9454();
}

uint64_t sub_1E65BC668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC5D8();
}

uint64_t sub_1E65BC6F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B96D8();
}

uint64_t sub_1E65BC788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC6F8();
}

uint64_t sub_1E65BC818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B995C();
}

uint64_t sub_1E65BC8A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC818();
}

uint64_t sub_1E65BC938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65B9BE0();
}

uint64_t sub_1E65BC9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65BC938();
}

uint64_t sub_1E65BCA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65B9E64(a1, a2, a3);
}

uint64_t sub_1E65BCB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65BCA58(a1, a2, a3);
}

uint64_t sub_1E65BCBC0(uint64_t a1, char a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E60C34A4;

  return sub_1E65BA0F8(a1, a2, a3);
}

uint64_t sub_1E65BCC70(uint64_t a1, char a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E65BCBC0(a1, a2, a3);
}

uint64_t sub_1E65BCD20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65BA490(a1, a2);
}

uint64_t sub_1E65BCDCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65BCD20(a1, a2);
}

uint64_t sub_1E65BCE78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65BA714(a1);
}

uint64_t sub_1E65BCF10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65BCE78(a1);
}

uint64_t sub_1E65BCFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65BCFC4, a2, 0);
}

uint64_t sub_1E65BCFC4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DDD58();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65BD088(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65BCFA8(a1, v1);
}

uint64_t sub_1E65BD124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65BD140, a2, 0);
}

uint64_t sub_1E65BD140()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DDD68();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65BD204(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65BD124(a1, v1);
}

uint64_t sub_1E65BD2A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65BD2BC, a2, 0);
}

uint64_t sub_1E65BD2BC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65E39A8();
  sub_1E65C7308(&qword_1EE2D5C30, MEMORY[0x1E69CAE20]);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65BD3C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65BD2A0(a1, v1);
}

uint64_t sub_1E65BD45C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65BD478, a2, 0);
}

uint64_t sub_1E65BD478()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DE048();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65BD558(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65BD45C(a1, v1);
}

uint64_t sub_1E65BD5F4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65BAA28(a1);
}

uint64_t sub_1E65BD68C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65BD5F4(a1);
}

uint64_t sub_1E65BD724(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65B4FEC(a1);
}

uint64_t sub_1E65BD7BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65BD724(a1);
}

uint64_t sub_1E65BD854(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E60ABB70;

  return sub_1E65B5278(a1, a2);
}

uint64_t sub_1E65BD8FC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FE99E8;

  return sub_1E65BD854(a1, a2);
}

uint64_t sub_1E65BD9A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDC0, &qword_1E660F160);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDB8, &unk_1E660F150);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C725C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65BDD80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDA0, &qword_1E660F138);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD98, &qword_1E660F130);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C721C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65BE15C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC00, &qword_1E660EF68);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBF8, &qword_1E660EF58);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6C00;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E65BE538(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD88, &qword_1E660F120);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD80, &qword_1E660F118);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C71DC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65BE914(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD70, &qword_1E660F108);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD68, &qword_1E660F100);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C719C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65BECF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD60, &qword_1E660F0F8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD38, &qword_1E660F0E0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C7170;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65BF0CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD00, &qword_1E660F0A8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCF8, &qword_1E660F098);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6F3C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65BF4A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD28, &qword_1E660F0D0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD20, &qword_1E660F0C8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6F94;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65BF884(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD18, &qword_1E660F0C0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD08, &qword_1E660F0B0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6F68;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65BFC60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCE8, &qword_1E660F088);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCE0, &qword_1E660F080);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6EFC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65C003C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCD0, &qword_1E660F070);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCC8, &qword_1E660F068);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6EBC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65C0418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCB8, &qword_1E660F058);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCB0, &qword_1E660F050);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6E7C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65C07F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCA0, &qword_1E660F040);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC98, &qword_1E660F038);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6E3C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E65C0BD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC90, &qword_1E660F030);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC88, &unk_1E660F020);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6E10;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C0FAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC80, &qword_1E660F018);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC78, &qword_1E660F008);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6DE4;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C1388(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC70, &qword_1E660F000);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC60, &qword_1E660EFF0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6DB8;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C1764(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC58, &qword_1E660EFE8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC50, &qword_1E660EFD8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6D8C;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C1B40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC48, &qword_1E660EFD0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC38, &qword_1E660EFC0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6D60;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C1F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC30, &qword_1E660EFB8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC28, &qword_1E660EFA8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6D34;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C22F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC20, &qword_1E660EFA0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC18, &unk_1E660EF90);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6D08;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C26D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC10, &qword_1E660EF88);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BC08, &qword_1E660EF78);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6CDC;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E65C2AB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBE8, &qword_1E660EF48);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBE0, &qword_1E660EF40);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65C6BC0;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65C2EA4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C30FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DA8C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDA8, &qword_1E660F140);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BDA8, &qword_1E660F140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDA0, &qword_1E660F138);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDA0, &qword_1E660F138);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C3470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9798();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD90, &qword_1E660F128);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BD90, &qword_1E660F128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD88, &qword_1E660F120);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD88, &qword_1E660F120);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C37E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D94D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD78, &qword_1E660F110);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BD78, &qword_1E660F110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD70, &qword_1E660F108);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD70, &qword_1E660F108);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C3B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DA248();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD30, &qword_1E660F0D8);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BD30, &qword_1E660F0D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD28, &qword_1E660F0D0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD28, &qword_1E660F0D0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9898();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCF0, &qword_1E660F090);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BCF0, &qword_1E660F090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCE8, &qword_1E660F088);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCE8, &qword_1E660F088);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D8418();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCD8, &qword_1E660F078);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BCD8, &qword_1E660F078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCD0, &qword_1E660F070);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCD0, &qword_1E660F070);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C45B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9C68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCC0, &qword_1E660F060);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BCC0, &qword_1E660F060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCB8, &qword_1E660F058);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCB8, &qword_1E660F058);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9158();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCA8, &qword_1E660F048);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BCA8, &qword_1E660F048);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCA0, &qword_1E660F040);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BCA0, &qword_1E660F040);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65C4C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9458();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBF0, &qword_1E660EF50);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BBF0, &qword_1E660EF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBE8, &qword_1E660EF48);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBE8, &qword_1E660EF48);
    return sub_1E65E5FF8();
  }
}

void *sub_1E65C5010(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_1E65C5094(size_t a1, int64_t a2, char a3)
{
  result = sub_1E65C511C(a1, a2, a3, *v3, &qword_1ED07BDB0, &qword_1E660F148, MEMORY[0x1E69CC6C0]);
  *v3 = result;
  return result;
}

size_t sub_1E65C50D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E65C511C(a1, a2, a3, *v3, &qword_1ED07BDC8, &qword_1E660F168, MEMORY[0x1E69CB428]);
  *v3 = result;
  return result;
}

size_t sub_1E65C511C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1E65C52F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D8668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E65C7308(&qword_1ED07BD48, MEMORY[0x1E69CB428]);
  v36 = a2;
  v13 = sub_1E65E5B38();
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
      sub_1E65C7308(&qword_1ED07BD50, MEMORY[0x1E69CB428]);
      v23 = sub_1E65E5B98();
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
    sub_1E65C5934(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E65C55D8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65D8668();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD58, &qword_1E660F0F0);
  result = sub_1E65E6868();
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
      sub_1E65C7308(&qword_1ED07BD48, MEMORY[0x1E69CB428]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E65C5934(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65D8668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E65C55D8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E65C5BD8();
      goto LABEL_12;
    }

    sub_1E65C5E10(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E65C7308(&qword_1ED07BD48, MEMORY[0x1E69CB428]);
  v15 = sub_1E65E5B38();
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
      sub_1E65C7308(&qword_1ED07BD50, MEMORY[0x1E69CB428]);
      v23 = sub_1E65E5B98();
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
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E65C5BD8()
{
  v1 = v0;
  v2 = sub_1E65D8668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD58, &qword_1E660F0F0);
  v7 = *v0;
  v8 = sub_1E65E6858();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
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
LABEL_14:
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
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E65C5E10(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D8668();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BD58, &qword_1E660F0F0);
  v10 = sub_1E65E6868();
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
      sub_1E65C7308(&qword_1ED07BD48, MEMORY[0x1E69CB428]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E65C612C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E65C6B64(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E65C6198(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E65C6198(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E65E5F98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E65C6360(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E65C6290(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E65C6290(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1E65E6C18(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E65C6360(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E636AC44(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1E65C693C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1E65E6C18();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E65E6C18();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1E636ADD0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1E65C693C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E636AC44(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1E636ABB8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1E65E6C18(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E65C693C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1E65E6C18() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1E65E6C18() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1E65C6C2C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E65C6FD4(uint64_t a1)
{
  v2 = sub_1E65D8668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E65C7308(&qword_1ED07BD48, MEMORY[0x1E69CB428]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
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
      sub_1E65C52F8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E65C7308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E65C7364@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v75 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v59 - v19;
  v67 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  v68 = &v59 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE08, &qword_1E660F488);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v59 - v30;
  v69 = &v59 - v30;
  v32 = sub_1E65D8258();
  v71 = *(v32 - 8);
  v72 = v32;
  v33 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D8228();
  v35 = sub_1E65D8BB8();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  v36 = sub_1E65D76A8();
  v37 = *(*(v36 - 8) + 56);
  v37(v27, 1, 1, v36);
  v38 = sub_1E65D9098();
  (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
  v37(v25, 1, 1, v36);
  v39 = sub_1E65D9C98();
  v64 = v40;
  v65 = v39;
  v41 = sub_1E65D7BD8();
  v42 = *(*(v41 - 8) + 56);
  v62 = v16;
  v42(v16, 1, 1, v41);
  v61 = sub_1E65D9CA8();
  v59 = v43;
  v60 = v44;
  v45 = sub_1E65DAC98();
  v46 = *(*(v45 - 8) + 56);
  v63 = v12;
  v46(v12, 1, 1, v45);
  v47 = sub_1E65D74E8();
  (*(*(v47 - 8) + 56))(v73, 1, 1, v47);
  v48 = sub_1E65D83D8();
  v49 = *(*(v48 - 8) + 56);
  v49(v74, 1, 1, v48);
  v49(v75, 1, 1, v48);
  LOBYTE(v48) = v60 & 1;
  v50 = v61;
  v51 = v66;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  sub_1E65D8218();
  sub_1E5FEE4CC(v50, v59, v48);

  sub_1E5DFE50C(v75, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v74, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v73, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v63, &qword_1ED0734E0, &qword_1E66012E0);
  sub_1E5DFE50C(v62, &qword_1ED0758B8, &qword_1E65F1FC0);
  sub_1E5DFE50C(v51, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v52, &qword_1ED073D00, &unk_1E660F460);
  sub_1E5DFE50C(v53, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v54, &qword_1ED07BE08, &qword_1E660F488);
  v57 = v71;
  v56 = v72;
  (*(v71 + 8))(v55, v72);
  return (*(v57 + 56))(v76, 0, 1, v56);
}

uint64_t sub_1E65C7B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDF8, &qword_1E660F478) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE0, &qword_1E660F440) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_1E65D8518();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE00, &qword_1E660F480) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE08, &qword_1E660F488) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = sub_1E65D94D8();
  v4[13] = v13;
  v14 = *(v13 - 8);
  v4[14] = v14;
  v15 = *(v14 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65C7D40, v3, 0);
}

uint64_t sub_1E65C7D40()
{
  v1 = v0[15];
  v2 = v0[12];
  v19 = v0[14];
  v20 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v16 = v0[3];
  v17 = v0[8];
  v18 = v0[2];
  sub_1E65D94B8();
  v10 = sub_1E65D8BB8();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_1E65D8508();
  v11 = sub_1E65D71A8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1E65D84E8();
  sub_1E5DFE50C(v8, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v6, &qword_1ED07BDF8, &qword_1E660F478);
  sub_1E5DFE50C(v7, &qword_1ED07BDE0, &qword_1E660F440);
  (*(v5 + 8))(v3, v17);
  (*(v5 + 56))(v4, 0, 1, v17);
  sub_1E65D94A8();
  sub_1E5DFE50C(v4, &qword_1ED07BE00, &qword_1E660F480);
  sub_1E5DFE50C(v2, &qword_1ED07BE08, &qword_1E660F488);
  (*(v19 + 8))(v1, v20);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E65C8080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD0, &qword_1E660F430) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD8, &qword_1E660F438) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE0, &qword_1E660F440) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE8, &qword_1E660F448) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1E65D8668();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v21 = sub_1E65D9658();
  v4[23] = v21;
  v22 = *(v21 - 8);
  v4[24] = v22;
  v23 = *(v22 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65C8450, v3, 0);
}

uint64_t sub_1E65C8450()
{
  v25 = v0[25];
  v26 = v0[24];
  v1 = v0[22];
  v27 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v22 = v0[16];
  v23 = v0[15];
  v33 = v0[18];
  v34 = v0[14];
  v35 = v0[12];
  v36 = v0[13];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[17];
  v37 = v0[8];
  v5 = v0[6];
  v31 = v0[9];
  v32 = v0[7];
  v19 = v0[5];
  v20 = v0[3];
  v21 = v0[4];
  v24 = v0[2];
  sub_1E65D9638();
  v6 = sub_1E65D76A8();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = sub_1E65D9098();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v7(v2, 1, 1, v6);
  v9 = sub_1E65DAC98();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1E65D8648();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDF0, &qword_1E660F470);
  (*(*(v10 - 8) + 56))(v34, 1, 1, v10);
  v11 = sub_1E65D71A8();
  (*(*(v11 - 8) + 56))(v36, 1, 1, v11);
  v12 = sub_1E65D8818();
  (*(*(v12 - 8) + 56))(v35, 1, 1, v12);
  (*(v5 + 56))(v28, 1, 1, v19);
  v13 = sub_1E65D8478();
  (*(*(v13 - 8) + 56))(v29, 1, 1, v13);
  v14 = sub_1E65D9678();
  (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
  v15 = sub_1E65D74E8();
  v16 = *(*(v15 - 8) + 56);
  v16(v37, 1, 1, v15);
  v16(v32, 1, 1, v15);
  sub_1E65D8608();
  sub_1E5DFE50C(v32, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v37, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v31, &qword_1ED0752C8, &unk_1E65F8500);
  sub_1E5DFE50C(v29, &qword_1ED0752D0, &qword_1E65F1598);
  sub_1E5DFE50C(v28, &qword_1ED07BDD0, &qword_1E660F430);
  sub_1E5DFE50C(v35, &qword_1ED07BDD8, &qword_1E660F438);
  sub_1E5DFE50C(v36, &qword_1ED07BDE0, &qword_1E660F440);
  sub_1E5DFE50C(v34, &qword_1ED07BDE8, &qword_1E660F448);
  (*(v22 + 8))(v30, v23);
  (*(v22 + 56))(v33, 0, 1, v23);
  sub_1E65D9628();
  sub_1E5DFE50C(v33, &qword_1ED075FE0, &unk_1E660F450);
  sub_1E5DFE50C(v4, &qword_1ED0734E0, &qword_1E66012E0);
  sub_1E5DFE50C(v2, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v3, &qword_1ED073D00, &unk_1E660F460);
  sub_1E5DFE50C(v1, &qword_1ED0752D8, &qword_1E660CC30);
  (*(v26 + 8))(v25, v27);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E65C8B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD0, &qword_1E660F430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD8, &qword_1E660F438);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v53 - v22;
  v56 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE0, &qword_1E660F440);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v53 - v26;
  v57 = &v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE8, &qword_1E660F448);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v53 - v30;
  v58 = &v53 - v30;
  v64 = sub_1E65D8668();
  v62 = *(v64 - 8);
  v32 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v59 = a1[1];
  v60 = v35;
  sub_1E65D8648();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDF0, &qword_1E660F470);
  (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
  v37 = sub_1E65D71A8();
  (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
  v38 = sub_1E65D8818();
  (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
  v39 = *(v3 + 56);
  v55 = v19;
  v39(v19, 1, 1, v61);
  v40 = sub_1E65D8478();
  v41 = v15;
  (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
  v42 = sub_1E65D9678();
  v43 = *(*(v42 - 8) + 56);
  v54 = v11;
  v43(v11, 1, 1, v42);
  v44 = sub_1E65D74E8();
  v45 = *(*(v44 - 8) + 56);
  v46 = v63;
  v45(v63, 1, 1, v44);
  v47 = v65;
  v45(v65, 1, 1, v44);
  v48 = v41;
  v49 = v56;
  v50 = v57;
  v51 = v58;
  sub_1E65D8608();
  sub_1E5DFE50C(v47, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v46, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFE50C(v54, &qword_1ED0752C8, &unk_1E65F8500);
  sub_1E5DFE50C(v48, &qword_1ED0752D0, &qword_1E65F1598);
  sub_1E5DFE50C(v55, &qword_1ED07BDD0, &qword_1E660F430);
  sub_1E5DFE50C(v49, &qword_1ED07BDD8, &qword_1E660F438);
  sub_1E5DFE50C(v50, &qword_1ED07BDE0, &qword_1E660F440);
  sub_1E5DFE50C(v51, &qword_1ED07BDE8, &qword_1E660F448);
  return (*(v62 + 8))(v34, v64);
}

uint64_t sub_1E65C9244(uint64_t a1)
{
  v33 = sub_1E65D8668();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v34 = v4;
  v9 = v5;
  sub_1E65C50D8(0, v7, 0);
  v8 = v38;
  v10 = -1 << *(v34 + 32);
  v35 = v34 + 56;
  v11 = sub_1E65E6748();
  v12 = v34;
  v13 = 0;
  v31 = v9 + 32;
  v32 = v9;
  v29 = v34 + 64;
  v30 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v35 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v16 = *(v12 + 36);
    v17 = (*(v12 + 48) + 16 * v11);
    v18 = v17[1];
    v37[0] = *v17;
    v37[1] = v18;

    sub_1E65C8B58(v37, v36);
    if (v1)
    {
      goto LABEL_26;
    }

    v38 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E65C50D8(v19 > 1, v20 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v20 + 1;
    (*(v32 + 32))(v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, v36, v33);
    v12 = v34;
    v14 = 1 << *(v34 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v21 = *(v35 + 8 * v15);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v16 != *(v34 + 36))
    {
      goto LABEL_25;
    }

    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1E5F87098(v11, v16, 0);
          v12 = v34;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v11, v16, 0);
      v12 = v34;
    }

LABEL_4:
    ++v13;
    v11 = v14;
    v1 = 0;
    if (v13 == v30)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1E65C9574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD0, &qword_1E660F430) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDD8, &qword_1E660F438) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE0, &qword_1E660F440) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDE8, &qword_1E660F448) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1E65D8668();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v21 = sub_1E65D9658();
  v4[23] = v21;
  v22 = *(v21 - 8);
  v4[24] = v22;
  v23 = *(v22 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CCBE4, v3, 0);
}

uint64_t static CatalogService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorCatalogService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660F1A8;
  a1[1] = v2;
  a1[2] = &unk_1E660F1B8;
  a1[3] = v2;
  a1[4] = &unk_1E660F1C8;
  a1[5] = v2;
  a1[6] = &unk_1E660F1D8;
  a1[7] = v2;
  a1[8] = &unk_1E660F1E8;
  a1[9] = v2;
  a1[10] = &unk_1E660F1F8;
  a1[11] = v2;
  a1[12] = &unk_1E660F208;
  a1[13] = v2;
  a1[14] = &unk_1E660F218;
  a1[15] = v2;
  a1[16] = &unk_1E660F228;
  a1[17] = v2;
  a1[18] = &unk_1E660F238;
  a1[19] = v2;
  a1[20] = &unk_1E660F248;
  a1[21] = v2;
  a1[22] = &unk_1E660F258;
  a1[23] = v2;
  a1[24] = &unk_1E660F268;
  a1[25] = v2;
  a1[26] = &unk_1E660F278;
  a1[27] = v2;
  a1[28] = &unk_1E660F288;
  a1[29] = v2;
  a1[30] = &unk_1E660F298;
  a1[31] = v2;
  a1[32] = &unk_1E660F2A8;
  a1[33] = v2;
  a1[34] = &unk_1E660F2B8;
  a1[35] = v2;
  a1[36] = &unk_1E660F2C8;
  a1[37] = v2;
  a1[38] = &unk_1E660F2D8;
  a1[39] = v2;
  a1[40] = &unk_1E660F2E8;
  a1[41] = v2;
  a1[42] = &unk_1E660F2F8;
  a1[43] = v2;
  a1[44] = &unk_1E660F308;
  a1[45] = v2;
  a1[46] = &unk_1E660F318;
  a1[47] = v2;
  a1[48] = &unk_1E660F328;
  a1[49] = v2;
  a1[50] = &unk_1E660F338;
  a1[51] = v2;
  a1[52] = &unk_1E660F348;
  a1[53] = v2;
  a1[54] = &unk_1E660F358;
  a1[55] = v2;
  a1[56] = &unk_1E660F368;
  a1[57] = v2;
  a1[58] = &unk_1E660F378;
  a1[59] = v2;
  a1[60] = &unk_1E660F388;
  a1[61] = v2;
  a1[62] = &unk_1E660F398;
  a1[63] = v2;
  a1[64] = &unk_1E660F3A8;
  a1[65] = v2;
  a1[66] = &unk_1E660F3B8;
  a1[67] = v2;
  a1[68] = &unk_1E660F3C8;
  a1[69] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65C9CD8()
{
  v1 = *(v0 + 16);
  sub_1E65DA8B8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65C9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65C9CB8(a1, a2, a3, v3);
}

uint64_t sub_1E65C9DF0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E60ABB70;

  return sub_1E65CC870(a2);
}

uint64_t sub_1E65C9E88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FEE4D4;

  return sub_1E65C9DF0(a1, a2);
}

uint64_t sub_1E65C9F50()
{
  v1 = *(v0 + 16);
  sub_1E65D9788();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65C9FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65C9F30(a1, a2, a3, v3);
}

uint64_t sub_1E65CA068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E65C7B08(a1, a2, a3);
}

uint64_t sub_1E65CA11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65CA068(a1, a2, a3);
}

uint64_t sub_1E65CA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65C8080(a1, a2, a3);
}

uint64_t sub_1E65CA284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65CA1D0(a1, a2, a3);
}

uint64_t sub_1E65CA354()
{
  v1 = sub_1E65C9244(*(v0 + 16));
  v2 = sub_1E65C6FD4(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E65CA3DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E65CA338(a1, v1);
}

uint64_t sub_1E65CA490()
{
  sub_1E65D9898();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CA508()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CA474(v0);
}

uint64_t sub_1E65CA5B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CA598(v0);
}

uint64_t sub_1E65CA660()
{
  v1 = *(v0 + 16);
  sub_1E65DA238();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CA6C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CA644(a1, v1);
}

uint64_t sub_1E65CA77C()
{
  sub_1E65D9898();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CA7F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CA760(v0);
}

uint64_t sub_1E65CA8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE48, &qword_1E660F4B8);
  v1 = *(sub_1E65D88D8() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E65EA670;
  sub_1E65D8228();
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1E65CA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5FEE4D4;

  return sub_1E65CA884(a1, a2, a3, v3);
}

uint64_t sub_1E65CAA80()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CAA64(v0);
}

uint64_t sub_1E65CAB2C()
{
  v1 = *(v0 + 16);
  sub_1E65D9878();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CAB90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CAB10(a1, v1);
}

uint64_t sub_1E65CAC4C()
{
  v1 = *(v0 + 16);
  sub_1E65D8408();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65CAC2C(a1, a2, a3, v3);
}

uint64_t sub_1E65CAD80()
{
  v1 = *(v0 + 16);
  sub_1E65D9C58();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CADE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CAD64(a1, v1);
}

uint64_t sub_1E65CAEA0()
{
  v1 = *(v0 + 16);
  sub_1E65D9148();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CAF04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E65CAE80(a1, a2, v2);
}

uint64_t sub_1E65CAFCC()
{
  sub_1E65DAEF8();
  sub_1E65CC828(&qword_1ED07BE40, MEMORY[0x1E69CD3F8]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB080()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CAFB0(v0);
}

uint64_t sub_1E65CB12C()
{
  sub_1E65D9D28();
  sub_1E65CC828(&qword_1ED0741A0, MEMORY[0x1E69CC8D0]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB1E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB110(v0);
}

uint64_t sub_1E65CB28C()
{
  sub_1E65D9538();
  sub_1E65CC828(&qword_1ED07BE38, MEMORY[0x1E69CC188]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB340()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB270(v0);
}

uint64_t sub_1E65CB3EC()
{
  sub_1E65D7F08();
  sub_1E65CC828(&qword_1ED07BE30, MEMORY[0x1E69CB178]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB4A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB3D0(v0);
}

uint64_t sub_1E65CB54C()
{
  sub_1E65DAF28();
  sub_1E65CC828(&qword_1ED07BE28, MEMORY[0x1E69CD440]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB600()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB530(v0);
}

uint64_t sub_1E65CB6AC()
{
  sub_1E65D7A68();
  sub_1E65CC828(&qword_1ED07BE20, MEMORY[0x1E69CAF98]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB760()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB690(v0);
}

uint64_t sub_1E65CB80C()
{
  sub_1E65D7B18();
  sub_1E65CC828(&qword_1ED07BE18, MEMORY[0x1E69CAFE8]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CB8C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB7F0(v0);
}

uint64_t sub_1E65CB96C()
{
  sub_1E65D8B68();
  sub_1E65CC828(&qword_1ED07BE10, MEMORY[0x1E69CB8C0]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CBA20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CB950(v0);
}

uint64_t sub_1E65CBAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65C9574(a1, a2, a3);
}

uint64_t sub_1E65CBB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65CBAB0(a1, a2, a3);
}

uint64_t sub_1E65CBC34()
{
  sub_1E65D8258();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CBCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5FEE4D4;

  return sub_1E65CBC18(a1, a2, a3, v3);
}

uint64_t sub_1E65CBD7C()
{
  v1 = *(v0 + 16);
  sub_1E65D9428();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CBDE0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65CBD5C(a1, a2, v2);
}

uint64_t sub_1E65CBEA8()
{
  v1 = *(*(v0 + 16) + 16);
  sub_1E65D9B08();
  sub_1E65CC828(&qword_1EE2D7040, MEMORY[0x1E69CC6C0]);
  v2 = sub_1E65E6218();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E65CBF64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E65CBE8C(a1, v1);
}

uint64_t sub_1E65CC018()
{
  v1 = *(v0 + 16);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CC0A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CBFFC(a1, v1);
}

uint64_t sub_1E65CC160()
{
  v1 = *(v0 + 16);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CC1F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CC144(a1, v1);
}

uint64_t sub_1E65CC2A8()
{
  v1 = *(v0 + 16);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CC338(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CC28C(a1, v1);
}

uint64_t sub_1E65CC3F0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CC490(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CC3D4(a1, v1);
}

uint64_t sub_1E65CC52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65CC5DC()
{
  sub_1E65D9CC8();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CC654(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E65CC5C4(a1, v1);
}

uint64_t sub_1E65CC708()
{
  sub_1E65D9B08();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CC780(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E65CC6EC(a1, a2, v2);
}

uint64_t sub_1E65CC828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E65CC870(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B0, &qword_1E6601440) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = sub_1E65D8258();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CC974, v1, 0);
}

uint64_t sub_1E65CC974()
{
  v1 = *(v0[2] + 16);
  if (v1)
  {
    v2 = v0[5];
    v3 = (v2 + 48);
    v27 = v2;
    v29 = (v2 + 32);
    v4 = 0;
    v5 = *(sub_1E65D9CC8() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = MEMORY[0x1E69E7CC0];
    v26 = v3;
    do
    {
      v10 = v0[3];
      v9 = v0[4];
      v11 = v0[2] + v7;
      sub_1E65C7364(v10);
      if ((*v3)(v10, 1, v9) == 1)
      {
        sub_1E5DFE50C(v0[3], &qword_1ED0792B0, &qword_1E6601440);
      }

      else
      {
        v28 = v4;
        v12 = v6;
        v14 = v0[6];
        v13 = v0[7];
        v15 = v0[4];
        v16 = *v29;
        (*v29)(v13, v0[3], v15);
        v16(v14, v13, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E64F66F0(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        v6 = v12;
        v4 = v28;
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1E64F66F0(v17 > 1, v18 + 1, 1, v8);
        }

        v19 = v0[6];
        v20 = v0[4];
        *(v8 + 2) = v18 + 1;
        v16(&v8[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18], v19, v20);
        v3 = v26;
      }

      v7 += v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[3];

  v24 = v0[1];

  return v24(v8);
}

uint64_t RecommendationService.fetchOnboardingDetail.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecommendationService.fetchPersonalizedWorkoutPlans.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RecommendationService.makeOnboardingDetailCacheUpdatedStream.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RecommendationService.queryRelatedCatalogWorkoutPlaceholders.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t RecommendationService.queryRecommendations.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t RecommendationService.queryAllRecommendations.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t RecommendationService.queryOnboardingSurveyResult.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t RecommendationService.updateOnboardingSurveyResult.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t static RecommendationService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorRecommendationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660F578;
  a1[1] = v2;
  a1[2] = &unk_1E660F588;
  a1[3] = v2;
  a1[4] = &unk_1E660F598;
  a1[5] = v2;
  a1[6] = &unk_1E660F5A8;
  a1[7] = v2;
  a1[8] = &unk_1E660F5B8;
  a1[9] = v2;
  a1[10] = &unk_1E660F5C8;
  a1[11] = v2;
  a1[12] = &unk_1E660F5D8;
  a1[13] = v2;
  a1[14] = &unk_1E660F5E8;
  a1[15] = v2;
  a1[16] = &unk_1E660F5F8;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65CCEDC()
{
  v1 = *(v0 + 16);
  sub_1E65D8A68();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CCF40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65CCEC0(a1, v1);
}

uint64_t sub_1E65CCFFC()
{
  v1 = *(v0 + 16);
  sub_1E65D9E58();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CD060(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65CCFDC(a1, a2, v2);
}

uint64_t sub_1E65CD10C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE58, &unk_1E660F650);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CD1DC, a2, 0);
}

uint64_t sub_1E65CD1DC()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E65CD294(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CD10C(a1, v1);
}

uint64_t sub_1E65CD330(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE50, &qword_1E660F648);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CD400, a2, 0);
}

uint64_t sub_1E65CD400()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DE1C8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65CD4D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65CD330(a1, v1);
}

uint64_t sub_1E65CD58C()
{
  sub_1E65D9CC8();
  v1 = sub_1E65E5F28();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CD604(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E65CD570(a1, a2, v2);
}

uint64_t sub_1E65CD6C4()
{
  sub_1E65D86D8();
  sub_1E65ABAC0();
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E65CD748(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E65CD6AC(a1, v1);
}

uint64_t sub_1E65CD7FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65CD7E0(v0);
}

uint64_t sub_1E65CD8A8()
{
  v1 = *(v0 + 16);
  sub_1E65D9948();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65CD90C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CD88C(a1, v1);
}

uint64_t sub_1E65CD9A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t static OnboardingDetailCacheUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69CABD8];
  v3 = sub_1E65DDEE8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E65CDABC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69CABD8];
  v3 = sub_1E65DDEE8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E65CDB48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE68, &qword_1E660F930);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CDC18, v2, 0);
}

uint64_t sub_1E65CDC18()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD518();

  return MEMORY[0x1EEE6DFA0](sub_1E65CDCB4, 0, 0);
}

uint64_t sub_1E65CDCB4()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 39;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D9E68();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF63C, v2, v5);
}

uint64_t sub_1E65CDDCC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BDB8, &unk_1E660F150);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CDE9C, v2, 0);
}

uint64_t sub_1E65CDE9C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD4C8();

  return MEMORY[0x1EEE6DFA0](sub_1E65CDF48, 0, 0);
}

uint64_t sub_1E65CDF48()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 51;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  *v4 = v0;
  v4[1] = sub_1E65B7AA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF624, v2, v5);
}

uint64_t sub_1E65CE06C(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 80) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB00, &qword_1E660F920);
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE13C, v1, 0);
}

uint64_t sub_1E65CE13C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[25];
  v4 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD4B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE1DC, 0, 0);
}

uint64_t sub_1E65CE1DC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 55;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB08, &qword_1E660E420);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF6C0, v2, v5);
}

uint64_t sub_1E65CE300()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB00, &qword_1E660F920);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE3CC, v0, 0);
}

uint64_t sub_1E65CE3CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD4E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE460, 0, 0);
}

uint64_t sub_1E65CE460()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 59;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BB08, &qword_1E660E420);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF60C, v2, v5);
}

uint64_t sub_1E65CE584(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE60, &unk_1E660F7F0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE650, v1, 0);
}

uint64_t sub_1E65CE650()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD4F8();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE6E4, 0, 0);
}

uint64_t sub_1E65CE6E4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 63;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9958();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF5F4, v2, v5);
}

uint64_t sub_1E65CE7FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE8C8, v1, 0);
}

uint64_t sub_1E65CE8C8()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD508();

  return MEMORY[0x1EEE6DFA0](sub_1E65CE964, 0, 0);
}

uint64_t sub_1E65CE964()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "RecommendationService/LiveRecommendationService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 67;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E654D1D0;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65CF5DC, v2, v5);
}

uint64_t sub_1E65CEA74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65CEA90, a2, 0);
}

uint64_t sub_1E65CEA90()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + 128), *(v0[3] + 152));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1E630DF80;
  v3 = v0[2];

  return sub_1E65D1054(v3);
}

uint64_t sub_1E65CEB38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65CDB48(a1, a2);
}

uint64_t sub_1E65CEBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65CEC00, a2, 0);
}

uint64_t sub_1E65CEC00()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65CF66C();
  sub_1E65DDE38();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65CEC9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65CECB8, a2, 0);
}

uint64_t sub_1E65CECB8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DE1C8();
  sub_1E65DDE38();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65CED54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E60ABB70;

  return sub_1E65CDDCC(a1, a2);
}

uint64_t sub_1E65CEDFC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65CE06C(a1);
}

uint64_t sub_1E65CEE94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65CE300();
}

uint64_t sub_1E65CEF24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65CE584(a1);
}

uint64_t sub_1E65CEFC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65CE7FC(a1);
}

uint64_t sub_1E65CF058(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65CEA74(a1, v1);
}

uint64_t sub_1E65CF0F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65CEB38(a1, a2);
}

uint64_t sub_1E65CF1A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65CEBE4(a1, v1);
}

uint64_t sub_1E65CF23C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65CEC9C(a1, v1);
}

uint64_t sub_1E65CF2D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FE99E8;

  return sub_1E65CED54(a1, a2);
}

uint64_t sub_1E65CF380(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65CEDFC(a1);
}

uint64_t sub_1E65CF418()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65CEE94();
}

uint64_t sub_1E65CF4A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65CEF24(a1);
}

uint64_t sub_1E65CF544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65CEFC0(a1);
}

unint64_t sub_1E65CF66C()
{
  result = qword_1EE2D5C40;
  if (!qword_1EE2D5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D5C40);
  }

  return result;
}

uint64_t sub_1E65CF6C4(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = type metadata accessor for OnboardingDetailCache.State(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65CF758, 0, 0);
}

uint64_t sub_1E65CF758()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65CF81C, Strong, 0);
  }

  else
  {
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E65CF81C()
{
  v1 = (v0[11] + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_networkEvaluator);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E65DDE88();
  v3 = sub_1E65D8D58();
  v5 = v4;
  if (v3 == sub_1E65D8D58() && v5 == v6)
  {
    v18 = v0[11];

    goto LABEL_13;
  }

  v8 = sub_1E65E6C18();

  v9 = v0[11];
  if (v8)
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0E3C(v9 + v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E5E1A61C(v0[10]);
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = v0[10];
    v15 = *v14;

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8) + 48);
    v17 = sub_1E65D76F8();
    (*(*(v17 - 8) + 8))(&v14[v16], v17);
LABEL_12:
    v19 = v0[11];
    sub_1E65CFA00();
    goto LABEL_13;
  }

  v24 = v0[10];
  v23 = v0[11];

  sub_1E5E1A61C(v24);
LABEL_14:
  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1E65CFA00()
{
  v29 = sub_1E65D76F8();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OnboardingDetailCache.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v28 - v10);
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE348();
  sub_1E65E3B18();
  (*(v13 + 8))(v16, v12);
  v17 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0E3C(v0 + v17, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v11;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8);
      v21 = *(v20 + 48);
      sub_1E65D76E8();
      v22 = *(v20 + 48);
      *v9 = v19;
      v23 = v29;
      (*(v1 + 16))(&v9[v22], v4, v29);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1E65D0EA0(v9, v0 + v17);
      swift_endAccess();
      sub_1E65CFDC0(v4);
      v24 = *(v1 + 8);
      v24(v4, v23);
      return (v24)(v11 + v21, v23);
    }
  }

  else
  {
    sub_1E5E1A61C(v11);
  }

  sub_1E65D76E8();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8) + 48);
  *v9 = MEMORY[0x1E69E7CC0];
  v27 = v29;
  (*(v1 + 16))(&v9[v26], v4, v29);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1E65D0EA0(v9, v0 + v17);
  swift_endAccess();
  sub_1E65CFDC0(v4);
  return (*(v1 + 8))(v4, v27);
}

uint64_t sub_1E65CFDC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE348();
  sub_1E65E3B18();
  (*(v12 + 8))(v15, v11);
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v17 = sub_1E65D0F04();
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v2;
  *(v19 + 3) = v17;
  *(v19 + 4) = v2;
  (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_retain_n();
  sub_1E64B80F8(0, 0, v10, &unk_1E660F8E0, v19);
}

uint64_t sub_1E65D0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE80, &qword_1E660F8C0);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE90, &unk_1E660F8F0);
  v5[6] = v9;
  v10 = *(v9 - 8);
  v5[7] = v10;
  v11 = *(v10 + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_1E65D8A78();
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65D01EC, a4, 0);
}

uint64_t sub_1E65D01EC()
{
  v1 = *(v0 + 64);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_recommendationClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1E65DD4D8();

  return MEMORY[0x1EEE6DFA0](sub_1E65D0288, 0, 0);
}

uint64_t sub_1E65D0288()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = "RecommendationService/OnboardingDetailCache.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 83;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E65D0398;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65D2A20, v2, v6);
}

uint64_t sub_1E65D0398()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v5 = sub_1E65D0600;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_1E65D04F4;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E65D04F4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*(v2 + 16))(v4, v1, v3);
  swift_storeEnumTagMultiPayload();
  sub_1E65D074C(v4, v6);
  sub_1E5DFE50C(v4, &qword_1ED07BE80, &qword_1E660F8C0);
  (*(v2 + 8))(v1, v3);
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E65D0600()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E65D067C, v1, 0);
}

uint64_t sub_1E65D067C()
{
  v1 = v0[14];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1E65D074C(v3, v5);

  sub_1E5DFE50C(v3, &qword_1ED07BE80, &qword_1E660F8C0);
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E65D074C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v70 = a2;
  v73 = a1;
  v68 = sub_1E65D8A78();
  v65 = *(v68 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v74 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
  v66 = *(v72 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v57 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE80, &qword_1E660F8C0);
  v8 = *(*(v75 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v75);
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v57 - v11;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OnboardingDetailCache.State(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = sub_1E65D76F8();
  v67 = *(v24 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0E3C(v2 + v28, v23);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1E5E1A61C(v23);
  }

  v60 = v17;
  v30 = v69;
  v61 = v21;
  v62 = v2;
  v31 = *v23;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8);
  v33 = v67;
  (*(v67 + 32))(v27, &v23[*(v32 + 48)], v24);
  v34 = sub_1E65D76D8();
  v35 = v24;
  v36 = v33;
  if (v34)
  {
    v58 = v35;
    v59 = v31;
    v57 = v27;
    sub_1E65DE348();
    sub_1E65E3B18();
    (*(v64 + 8))(v16, v63);
    sub_1E5DFD1CC(v73, v30, &qword_1ED07BE80, &qword_1E660F8C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v61;
      *v61 = *v30;
      swift_storeEnumTagMultiPayload();
      v38 = v62;
      swift_beginAccess();
      sub_1E65D0EA0(v37, v38 + v28);
      swift_endAccess();
      v39 = v74;
      v40 = v65;
    }

    else
    {
      v40 = v65;
      v41 = v61;
      (*(v65 + 32))(v61, v30, v68);
      swift_storeEnumTagMultiPayload();
      v38 = v62;
      swift_beginAccess();
      sub_1E65D0EA0(v41, v38 + v28);
      swift_endAccess();
      v39 = v74;
    }

    v42 = *(v59 + 16);
    if (v42)
    {
      v44 = *(v66 + 16);
      v43 = v66 + 16;
      v45 = v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v69 = *(v66 + 72);
      v70 = v44;
      v46 = (v40 + 32);
      v47 = (v66 + 8);
      v49 = v71;
      v48 = v72;
      v50 = v7;
      do
      {
        v51 = v7;
        v52 = v7;
        v53 = v43;
        v70(v51, v45, v48);
        sub_1E5DFD1CC(v73, v49, &qword_1ED07BE80, &qword_1E660F8C0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v76 = *v49;
          sub_1E65E5FE8();
        }

        else
        {
          (*v46)(v39, v49, v68);
          sub_1E65E5FF8();
        }

        (*v47)(v52, v48);
        v45 += v69;
        --v42;
        v39 = v74;
        v48 = v72;
        v43 = v53;
        v7 = v50;
      }

      while (v42);

      v38 = v62;
      v54 = v58;
      v36 = v67;
    }

    else
    {

      v54 = v58;
    }

    v56 = *(v38 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub);
    v55 = *(v38 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub + 8);
    swift_getObjectType();
    sub_1E65CF66C();
    sub_1E65DDDE8();
    return (*(v36 + 8))(v57, v54);
  }

  else
  {
    (*(v33 + 8))(v27, v35);
  }
}

uint64_t sub_1E65D0E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingDetailCache.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65D0EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingDetailCache.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E65D0F04()
{
  result = qword_1EE2D5D60;
  if (!qword_1EE2D5D60)
  {
    type metadata accessor for OnboardingDetailCache(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D5D60);
  }

  return result;
}

uint64_t sub_1E65D0F5C(uint64_t a1)
{
  v4 = *(sub_1E65D76F8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E65D0084(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E65D1054(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65D76F8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for OnboardingDetailCache.State(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = sub_1E65E3B68();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65D11A0, v1, 0);
}

uint64_t sub_1E65D11A0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  sub_1E65DE348();
  sub_1E65E3B18();
  (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0E3C(v6 + v7, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v38 = v0[6];
      v39 = sub_1E65D0F04();
      v40 = *(MEMORY[0x1E69E8920] + 4);
      v41 = swift_task_alloc();
      v0[15] = v41;
      v20 = sub_1E65D8A78();
      *v41 = v0;
      v41[1] = sub_1E65D1508;
      v21 = v0[5];
      v25 = v0[6];
      v22 = sub_1E65D38D0;
      v23 = v38;
      v24 = v39;
      goto LABEL_11;
    }

    v26 = *v0[11];
    swift_willThrow();
    v27 = v0[14];
    v28 = v0[11];
    v29 = v0[9];

    v30 = v0[1];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = v0[11];
      v11 = v0[8];
      v10 = v0[9];
      v12 = v0[6];
      v13 = v0[7];
      v14 = *v9;
      v0[17] = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8);
      (*(v11 + 32))(v10, &v9[*(v15 + 48)], v13);
      v16 = sub_1E65D0F04();
      v17 = swift_task_alloc();
      v0[18] = v17;
      v17[2] = v12;
      v17[3] = v14;
      v17[4] = v10;
      v18 = *(MEMORY[0x1E69E8920] + 4);
      v19 = swift_task_alloc();
      v0[19] = v19;
      v20 = sub_1E65D8A78();
      *v19 = v0;
      v19[1] = sub_1E65D16B0;
      v21 = v0[5];
      v22 = sub_1E65D38C4;
      v23 = v12;
      v24 = v16;
      v25 = v17;
LABEL_11:

      return MEMORY[0x1EEE6DE38](v21, v23, v24, 0x29286863746566, 0xE700000000000000, v22, v25, v20);
    }

    v31 = v0[11];
    v32 = v0[5];
    v33 = sub_1E65D8A78();
    (*(*(v33 - 8) + 32))(v32, v31, v33);
    v34 = v0[14];
    v35 = v0[11];
    v36 = v0[9];

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_1E65D1508()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1E65D1874;
  }

  else
  {
    v6 = sub_1E65D1634;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E65D1634()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65D16B0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_1E65D18F8;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[18];
    v8 = v2[6];

    v5 = sub_1E65D17E0;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E65D17E0()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65D1874()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65D18F8()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  (*(v4 + 8))(v3, v5);
  v6 = v0[20];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E65D19AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = type metadata accessor for OnboardingDetailCache.State(0);
  v3 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E65D76E8();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEB8, &qword_1E660F948);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E65EA670;
  (*(v13 + 16))(v16 + v15, v20, v12);
  *v5 = v16;
  (*(v7 + 16))(v5 + v11, v10, v6);
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0EA0(v5, a2 + v17);
  swift_endAccess();
  sub_1E65CFDC0(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1E65D1C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = type metadata accessor for OnboardingDetailCache.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE88, &unk_1E660F8C8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEB8, &qword_1E660F948);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E65EA670;
  (*(v13 + 16))(v16 + v15, a1, v12);
  v21 = a3;

  sub_1E65D34B4(v16);
  *v10 = v21;
  v17 = sub_1E65D76F8();
  (*(*(v17 - 8) + 16))(&v10[v11], v20, v17);
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state;
  swift_beginAccess();
  sub_1E65D0EA0(v10, a2 + v18);
  return swift_endAccess();
}

uint64_t sub_1E65D1E8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEA8, &qword_1E660F928);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE68, &qword_1E660F930);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65D389C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65D2268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE98, &unk_1E660F900);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE60, &unk_1E660F7F0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65D37DC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E65D2644(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE90, &unk_1E660F8F0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65D348C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65D2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9E68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEB0, &qword_1E660F938);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BEB0, &qword_1E660F938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEA8, &qword_1E660F928);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEA8, &qword_1E660F928);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65D2DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9958();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEA0, &unk_1E660F910);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BEA0, &unk_1E660F910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE98, &unk_1E660F900);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE98, &unk_1E660F900);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65D3118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D8A78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE80, &qword_1E660F8C0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07BE80, &qword_1E660F8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65D34B4(uint64_t result)
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1E65D35EC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1E65D35EC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEB8, &qword_1E660F948);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BE78, &qword_1E660F8B8) - 8);
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

uint64_t sub_1E65D3804(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E65D38D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65CF6C4(a1, v1);
}

uint64_t sub_1E65D3970(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65D3990, 0, 0);
}

uint64_t sub_1E65D3990()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65E52F8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65D39F4()
{
  swift_getObjectType();
  sub_1E65E5308();
  sub_1E65E5288();
  sub_1E65D5F58();
  return sub_1E65DDE28();
}

uint64_t sub_1E65D3A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1E65D39F4();
}

uint64_t sub_1E65D3A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  else
  {
    sub_1E65E53C8();
    sub_1E5DF650C(a1, v7);

    return sub_1E65E53B8();
  }

  return result;
}

id sub_1E65D3B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  sub_1E5F9AF1C(a1, &v11 - v4);
  v6 = sub_1E65D74E8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v8 = sub_1E65D7448();
    (*(v7 + 8))(v5, v6);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E697BA60]) initWithAccountURL_];

  [v9 prepareWithCompletionBlock_];
  return v9;
}

id sub_1E65D3CAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1E65D3B6C(a1);
}

uint64_t sub_1E65D3CBC()
{
  v0 = objc_allocWithZone(sub_1E65E59C8());

  return sub_1E65E59B8();
}

uint64_t sub_1E65D3CF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1E65D3CBC();
}

uint64_t sub_1E65D3D08()
{
  v0 = sub_1E65E5328();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);

  sub_1E65E5318();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC8, &unk_1E660F9F8));
  return sub_1E65E4058();
}

uint64_t sub_1E65D3DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1E65D3D08();
}

uint64_t sub_1E65D3DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (a9 >= 2u)
  {
    if (a9 == 3)
    {
      sub_1E65E5AD8();
      sub_1E5DF650C(a3, v16);

      sub_1E5FA9D34(a4, a5);
      return sub_1E65E5AC8();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E65E3F98();
    sub_1E65E41B8();
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
    return sub_1E65E4058();
  }

  return result;
}

uint64_t sub_1E65D4044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t (*a10)(void), uint64_t (*a11)(uint64_t, _BYTE *, uint64_t, uint64_t, char *, char *, char *, char *, uint64_t, unint64_t))
{
  v50 = a5;
  v51 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E65D9458();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65D9158();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v45 - v26;
  v28 = sub_1E65D8048();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9 >= 2u)
  {
    v34 = a3;
    v47 = v20;
    v48 = a4;
    v36 = v50;
    v35 = v51;
    v49 = a1;
    if (a9 == 3)
    {
      v45 = a10;
      v46 = a11;
      sub_1E5DF650C(v34, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730B8, &qword_1E65ECF10);
      v37 = *(sub_1E65D9758() - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1E65EA670;
      v41 = v40 + v39;
      *v41 = xmmword_1E660F990;
      *(v41 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      v42 = v48;
      sub_1E5FA9D34(v48, v36);
      sub_1E65D5C70(v40);
      swift_setDeallocating();
      sub_1E65D5E98(v41);
      swift_deallocClassInstance();
      sub_1E65D8038();
      sub_1E65D90F8();
      sub_1E65D90F8();
      v43 = v47;
      sub_1E65D93C8();
      v44 = objc_allocWithZone(v45(0));
      return v46(v35, v52, v49, a2, v31, v27, v25, v43, v42, v36);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E65E3F98();
    sub_1E65E41B8();
    v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
    return sub_1E65E4058();
  }

  return result;
}

uint64_t sub_1E65D454C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 >= 2u)
  {
    if (a9 == 3)
    {
      sub_1E5DF650C(a5, v13);
      objc_allocWithZone(sub_1E65E5598());

      sub_1E5FA9D34(a3, a4);

      return sub_1E65E5588();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E65E57B8();
    sub_1E5DF650C(a5, v13);
    sub_1E5FA9D34(a3, a4);

    return sub_1E65E57A8();
  }

  return result;
}

uint64_t sub_1E65D4748(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 2u)
  {
    if (a7 == 3)
    {
      sub_1E5DF650C(a1, v12);
      v11 = objc_allocWithZone(sub_1E65E5728());

      sub_1E5FA9D34(a2, a3);
      return sub_1E65E5718();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a1, v12);
    v7 = objc_allocWithZone(sub_1E65E5688());

    return sub_1E65E5678();
  }

  return result;
}

uint64_t sub_1E65D4868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (a7 >= 2u)
  {
    if (a7 == 3)
    {
      sub_1E65E3F98();
      sub_1E65E41B8();
      v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
      return sub_1E65E4058();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a3, v15);
    objc_allocWithZone(sub_1E65E58F8());

    sub_1E5FA9D34(a1, a2);
    return sub_1E65E58E8();
  }

  return result;
}

uint64_t sub_1E65D4A3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 >= 2u)
  {
    if (a8 == 3)
    {
      sub_1E65E5968();
      sub_1E5DF650C(a4, v12);

      sub_1E5FA9D34(a2, a3);
      return sub_1E65E5958();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a4, v12);
    objc_allocWithZone(sub_1E65E5988());
    sub_1E5FA9D34(a2, a3);

    return sub_1E65E5978();
  }

  return result;
}

uint64_t sub_1E65D4B84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v25 = a6;
  v26 = a4;
  v27 = a2;
  v12 = sub_1E65E55E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65D7EB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9 >= 2u)
  {
    v24 = a3;
    if (a9 == 3)
    {
      v23 = sub_1E65E5AA8();
      sub_1E5DF650C(a5, v28);
      (*(v18 + 16))(v21, v27, v17);
      (*(v13 + 16))(v16, a1, v12);

      sub_1E5FA9D34(v24, v26);
      return sub_1E65E5A98();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a5, v28);
    (*(v13 + 16))(v16, a1, v12);
    (*(v18 + 16))(v21, v27, v17);
    objc_allocWithZone(sub_1E65E5A68());
    sub_1E5FA9D34(a3, v26);

    return sub_1E65E5A58();
  }

  return result;
}

uint64_t sub_1E65D4E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t (*a9)(void), uint64_t a10, void (*a11)(void), uint64_t (*a12)(uint64_t, uint64_t, unint64_t, _BYTE *, _BYTE *))
{
  v18 = a9(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28[-v21 - 8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  if (a8 >= 2u)
  {
    if (a8 == 3)
    {
      sub_1E65E3F98();
      sub_1E65E41B8();
      v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
      return sub_1E65E4058();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    a11(0);
    sub_1E5DF650C(a4, v28);
    (*(v19 + 16))(v22, a1, v18);

    sub_1E5FA9D34(a2, a3);
    return a12(a5, a2, a3, v28, v22);
  }

  return result;
}

uint64_t sub_1E65D516C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v23[1] = a5;
  v23[2] = a4;
  v14 = sub_1E65E56B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  if (a10 >= 2u)
  {
    if (a10 == 3)
    {
      sub_1E65E3F98();
      sub_1E65E41B8();
      v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
      return sub_1E65E4058();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a6, v24);
    (*(v15 + 16))(v18, a3, v14);
    objc_allocWithZone(sub_1E65E5A48());

    sub_1E5FA9D34(a1, a2);

    return sub_1E65E5A38();
  }

  return result;
}

uint64_t sub_1E65D5430(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v22 = a2;
  v13 = sub_1E65DA308();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  if (a9 >= 2u)
  {
    if (a9 == 3)
    {
      sub_1E65E3F98();
      sub_1E65E41B8();
      v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
      return sub_1E65E4058();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a5, v23);
    (*(v14 + 16))(v17, a1, v13);
    objc_allocWithZone(sub_1E65E58A8());

    sub_1E5FA9D34(a3, a4);

    return sub_1E65E5898();
  }

  return result;
}

uint64_t sub_1E65D56E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v23[1] = a3;
  v23[2] = a2;
  v14 = sub_1E65E58D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  if (a10 >= 2u)
  {
    if (a10 == 3)
    {
      sub_1E65E3F98();
      sub_1E65E41B8();
      v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BEC0, &unk_1E660F9E0));
      return sub_1E65E4058();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5DF650C(a6, v24);
    (*(v15 + 16))(v18, a1, v14);
    objc_allocWithZone(sub_1E65E5A88());

    sub_1E5FA9D34(a4, a5);

    return sub_1E65E5A78();
  }

  return result;
}

uint64_t sub_1E65D59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = sub_1E65D9048();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  if (a10 == 2)
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  else
  {
    (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    objc_allocWithZone(sub_1E65E5A28());

    sub_1E5FA9D34(a5, a6);
    return sub_1E65E5A18();
  }

  return result;
}

uint64_t sub_1E65D5B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E5C48();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v5 && (v6 = [v5 splashController]) != 0)
  {
    v7 = v6;

    return v7;
  }

  else
  {
    sub_1E65E68A8();

    MEMORY[0x1E694D7C0](a1, a2);
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E65D5C70(uint64_t a1)
{
  v2 = sub_1E65D9758();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754D8, &qword_1E660F9F0);
    v11 = sub_1E65E6888();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v31 = v10;
    v32 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    v16 = v10;
    while (1)
    {
      sub_1E65D5EF4(v32 + v15 * v12, v9);
      v17 = *(v11 + 40);
      sub_1E65E6D28();
      sub_1E65D9748();
      v18 = sub_1E65E6D78();
      v19 = -1 << *(v11 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        do
        {
          sub_1E65D5EF4(*(v11 + 48) + v20 * v15, v7);
          v25 = MEMORY[0x1E6941140](v7, v9);
          sub_1E65D5E98(v7);
          if (v25)
          {
            sub_1E65D5E98(v9);
            v16 = v31;
            goto LABEL_4;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
        }

        while (((1 << v20) & v22) != 0);
        v16 = v31;
      }

      *(v13 + 8 * v21) = v23 | v22;
      result = sub_1E601B720(v9, *(v11 + 48) + v20 * v15);
      v27 = *(v11 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v11 + 16) = v29;
LABEL_4:
      if (++v12 == v16)
      {
        return v11;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E65D5E98(uint64_t a1)
{
  v2 = sub_1E65D9758();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E65D5EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D9758();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E65D5F58()
{
  result = qword_1EE2D49C8;
  if (!qword_1EE2D49C8)
  {
    sub_1E65E5308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D49C8);
  }

  return result;
}

uint64_t InteropService.makeNavigationRequestStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InteropService.makeAccountSettingsViewController.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InteropService.makeAccountPageViewController.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t InteropService.makeNotificationViewController.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InteropService.makePrivacyLinkListViewController.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t InteropService.makePrivacySplashViewController.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t InteropService.makeEditorialCollectionViewControllerWithIdentifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t InteropService.makeModalityDetailViewControllerWithIdentifier.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t InteropService.makeTrainerDetailViewControllerWithIdentifier.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t InteropService.makePlaylistViewControllerWithIdentifier.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t InteropService.makePlaylistViewControllerWithPlaylist.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t InteropService.makeUpNextQueueViewController.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanSurveyViewController.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t InteropService.makeActiveWorkoutPlanViewController.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanAlternativeViewController.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanDetailViewController.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanPreferenceViewController.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanReviewViewController.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t InteropService.makeEditWorkoutPlanScheduleViewController.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t InteropService.makeWorkoutPlanSummaryViewController.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t static UpNextQueueService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorUpNextQueueService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660FAF8;
  a1[1] = v2;
  a1[2] = &unk_1E660FB08;
  a1[3] = v2;
  a1[4] = &unk_1E660FB18;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t sub_1E65D6414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E654A1E8();
}

uint64_t sub_1E65D64A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65D6558()
{
  v1 = *(v0 + 16);
  sub_1E65E6118();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65D65E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65D653C(a1, v1);
}

uint64_t sub_1E65D6684()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF48, &unk_1E660FC30);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65D6750, v0, 0);
}

uint64_t sub_1E65D6750()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD378();

  return MEMORY[0x1EEE6DFA0](sub_1E65D67E4, 0, 0);
}

uint64_t sub_1E65D67E4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "UpNextQueueService/LiveUpNextQueueClientService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 25;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF50, &unk_1E660AAE0);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65D6F64, v2, v5);
}

uint64_t sub_1E65D6908(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65D69D4, v1, 0);
}

uint64_t sub_1E65D69D4()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD388();

  return MEMORY[0x1EEE6DFA0](sub_1E65D6A70, 0, 0);
}

uint64_t sub_1E65D6A70()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "UpNextQueueService/LiveUpNextQueueClientService.swift";
  *(v2 + 24) = 53;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65D6F4C, v2, v5);
}

uint64_t sub_1E65D6B80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E65D6684();
}

uint64_t sub_1E65D6C10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E65D6B80();
}

uint64_t sub_1E65D6CA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65D6908(a1);
}

uint64_t sub_1E65D6D38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65D6CA0(a1);
}

uint64_t sub_1E65D6DD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65D6DEC, a2, 0);
}

uint64_t sub_1E65D6DEC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DDFD8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65D6EB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65D6DD0(a1, v1);
}

uint64_t UpNextQueueService.queryUpNextQueue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpNextQueueService.processUpNextQueueUpdates.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpNextQueueService.makeUpNextQueueUpdatedStream.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}
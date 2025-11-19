uint64_t ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v15, v5, 0x162uLL);
    v6 = *(v5 + 21);
    v16[8] = *(v5 + 20);
    v16[9] = v6;
    v17 = *(v5 + 176);
    v7 = *(v5 + 17);
    v16[4] = *(v5 + 16);
    v16[5] = v7;
    v8 = *(v5 + 19);
    v16[6] = *(v5 + 18);
    v16[7] = v8;
    v9 = *(v5 + 13);
    v16[0] = *(v5 + 12);
    v16[1] = v9;
    v10 = *(v5 + 15);
    v16[2] = *(v5 + 14);
    v16[3] = v10;
    v11 = sub_1B0BE2780(v16);
    sub_1B03DB9A4(v16);
    sub_1B0BE278C(v15);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    sub_1B038C704(v5, type metadata accessor for ConnectionState);
    v12 = 0;
  }

  return v12 & 1;
}

char *sub_1B04543AC(char *a1, int64_t a2, char a3)
{
  result = sub_1B04547DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B04543CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5628, &qword_1B0ED3860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B04544CC(char *a1, int64_t a2, char a3)
{
  result = sub_1B04543CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unsigned __int8 *sub_1B0454500(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B04544EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B045456C(v5);
  *a1 = v2;
  return result;
}

unsigned __int8 *sub_1B045456C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56E8, &qword_1B0ED5CD8);
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C0CAE8(v7, v8, a1, v4);
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
    return sub_1B0454674(0, v2, 1, a1);
  }

  return result;
}

unsigned __int8 *sub_1B0454674(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 24;
    v6 = &result[-a3];
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = v8 - 24;
      v10 = *(v8 - 3);
      v11 = *(v8 - 1);
      v12 = *v8;
      result = v8 - 56;
      v13 = *(v8 - 7);
      v14 = *(v8 - 5);
      v15 = *(v8 - 32);
      if (v12 == 1)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            if (v14 == 1)
            {
              v16 = *(v8 - 32);
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              goto LABEL_52;
            }

            v17 = 2;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v14 > 1)
            {
              v20 = *(v8 - 32);
            }

            else
            {
              v20 = 0;
            }

            if (v20 == 1)
            {
              goto LABEL_52;
            }

            v17 = 3;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (v14)
          {
            v19 = 0;
          }

          else
          {
            v19 = *(v8 - 32);
          }

          if (v19)
          {
            goto LABEL_52;
          }

          if (!*(v8 - 32))
          {
            goto LABEL_53;
          }

          v17 = 0;
        }
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (v11 >= v14 && (v11 != v14 || v10 >= v13))
          {
            goto LABEL_4;
          }

          goto LABEL_53;
        }

        v17 = 1;
      }

      if (v17 < qword_1B0ED5D40[v14])
      {
        goto LABEL_53;
      }

      if (!*v8)
      {
        goto LABEL_4;
      }

LABEL_19:
      if (v11)
      {
        if (v11 == 1)
        {
          if (v14 != 1)
          {
            v15 = 0;
          }
        }

        else if (v14 <= 1)
        {
          v15 = 0;
        }

        if (v15 != 1)
        {
          goto LABEL_4;
        }

LABEL_52:
        if (v10 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_53;
      }

      if (v14)
      {
        v15 = 0;
      }

      if (v15 != 1 || v10 >= v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_53:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v23 = *result;
      v22 = *(v8 - 40);
      *(v8 - 32) = v12;
      v8 -= 32;
      v24 = *(v8 + 4);
      *v9 = v23;
      *(v9 + 1) = v22;
      *(v8 - 3) = v10;
      *(v8 - 4) = v24;
      *(v8 - 1) = v11;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1B04547FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_1B0450DB0(v4, v76);
  if (!v79)
  {
    sub_1B0450C74(v76, v73);
    v10 = *(type metadata accessor for RunningTask() + 44);
    v11 = *(v4 + v10);
    *(v4 + v10) = v11 + 1;
    v12 = *(v4 + 48);
    v13 = *(v5 + 56);
    v14 = v74;
    v15 = v75;
    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v16 = (*(v15 + 48))(v11 & 0xFFFFFF, v12, v13, v14, v15);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1B0B7ABB4(v5);
      sub_1B03D2CA8(v73, v5);
      *(v5 + 45) = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      return 1;
    }

    v23 = v16;
    v72 = v11;
    v71 = a3();
    v24 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 40);
    if (v28 < 0)
    {
      v69 = *(v24 + 8);
      LODWORD(v70) = v30;
      swift_bridgeObjectRetain_n();
      v47 = v29;
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v23);
      v48 = sub_1B0E43988();
      v49 = sub_1B0E458C8();
      sub_1B0B7C1A0(v23);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v83[0] = v68;
        *v50 = 68159747;
        v67 = v48;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = v26;
        *(v50 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v51 = sub_1B0399D64(v69, v27, v83);
        LODWORD(v69) = v49;
        v52 = v51;

        *(v50 + 13) = v52;
        *(v50 + 21) = 1040;
        *(v50 + 23) = 2;
        *(v50 + 27) = 512;

        *(v50 + 29) = v28;

        *(v50 + 31) = 2160;
        *(v50 + 33) = 0x786F626C69616DLL;
        *(v50 + 41) = 2085;

        *&v80 = v47;
        DWORD2(v80) = v70;
        v53 = sub_1B0E44BA8();
        v55 = sub_1B0399D64(v53, v54, v83);

        *(v50 + 43) = v55;
        *(v50 + 51) = 2082;
        v56 = Action.kind.getter(v23);
        v57 = Action.Kind.description.getter(v56);
        v59 = sub_1B0399D64(v57, v58, v83);

        *(v50 + 53) = v59;
        *(v50 + 61) = 2080;
        v43 = v71;
        LODWORD(v80) = v71;
        sub_1B07467B8();
        v60 = sub_1B0E44E98();
        v62 = sub_1B0399D64(v60, v61, v83);

        *(v50 + 63) = v62;
        _os_log_impl(&dword_1B0389000, v67, v69, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v50, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v68, -1, -1);
        MEMORY[0x1B272C230](v50, -1, -1);

        goto LABEL_20;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v31 = *v24;
      v32 = *(v24 + 8);
      v33 = *(v24 + 16);
      v34 = *(v24 + 24);
      v70 = *(v24 + 32);
      sub_1B0A982D8(v31, v32, v33, v34);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v23);
      v35 = sub_1B0E43988();
      v36 = sub_1B0E458C8();
      sub_1B0B7C1A0(v23);
      if (os_log_type_enabled(v35, v36))
      {
        LODWORD(v68) = v36;
        v37 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v80 = v69;
        *v37 = 68158722;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        *(v37 + 10) = v26;
        *(v37 + 11) = 2082;
        v67 = v35;
        v38 = sub_1B0399D64(v25, v27, &v80);
        sub_1B0A92018(v26, v25, v27, v28);
        *(v37 + 13) = v38;
        *(v37 + 21) = 2082;
        v39 = Action.kind.getter(v23);
        v40 = Action.Kind.description.getter(v39);
        v42 = sub_1B0399D64(v40, v41, &v80);

        *(v37 + 23) = v42;
        *(v37 + 31) = 2080;
        v43 = v71;
        LODWORD(v83[0]) = v71;
        sub_1B07467B8();
        v44 = sub_1B0E44E98();
        v46 = sub_1B0399D64(v44, v45, &v80);

        *(v37 + 33) = v46;
        _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v37, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v69, -1, -1);
        MEMORY[0x1B272C230](v37, -1, -1);

LABEL_20:
        sub_1B0B7ABB4(v5);
        sub_1B03D2CA8(v73, v5);
        *(v5 + 45) = 0;
        sub_1B0BB0FA8(v23, v43, v72 & 0xFFFFFF);
        sub_1B0B7C1A0(v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        return 0;
      }

      sub_1B0A92018(v26, v25, v27, v28);
    }

    v43 = v71;
    goto LABEL_20;
  }

  if (v79 != 1)
  {
    return 1;
  }

  if (v78 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    return 2;
  }

  else
  {
    v17 = v77;
    sub_1B0450C74(v76, v73);
    v18 = v74;
    v19 = v75;
    __swift_project_boxed_opaque_existential_0(v73, v74);
    (*(v19 + 32))(&v80, v18, v19);
    v20 = v81;
    v21 = v82;
    *v83 = v80;
    v22 = sub_1B039E440(v83);
    MEMORY[0x1EEE9AC00](v22);
    v63[2] = v5;
    v63[3] = v73;
    v63[4] = a1;
    v64 = v17;
    v65 = a3;
    v66 = a4;
    LODWORD(v5) = sub_1B0B76610(v17, v20, v21, sub_1B0B7C178, v63);

    if (v5 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    return v5;
  }
}

void sub_1B0454F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *tracingLog.unsafeMutableAddressor();
  v12 = sub_1B0E45D38();

  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(a2 + 48);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    KeyPath = swift_getKeyPath();
    v16 = MEMORY[0x1EEE9AC00](KeyPath);
    MEMORY[0x1EEE9AC00](v16);
    v17 = sub_1B0450C8C();
    Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v14, KeyPath, sub_1B0B7C1EC, (&v29 - 4), sub_1B0B7C1F4, (&v29 - 4), __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1, 0, v13, v17);

    v19 = v29;
    v18 = v30;
    v20 = *(v29 + 16);
    if (v20)
    {
      v21 = *(v3 + *(type metadata accessor for RunningTask() + 32));
      v22 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v23 = *(v7 + 72);
      do
      {
        sub_1B0390340(v22, v10, type metadata accessor for TaskHistory.Running);
        sub_1B0B793EC(a1, v21);
        sub_1B0453E78(v10, type metadata accessor for TaskHistory.Running);
        v22 += v23;
        --v20;
      }

      while (v20);
    }

    v24 = *(v18 + 16);
    if (v24)
    {
      v25 = *(v3 + *(type metadata accessor for RunningTask() + 32));
      v26 = (v18 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 12;
        sub_1B0B7A1F4(a1, v25, v27, v28);
        --v24;
      }

      while (v24);
    }
  }
}

uint64_t sub_1B0455204(uint64_t a1, unsigned __int8 *a2)
{
  sub_1B0450DB0(a1, v28);
  if (!v31)
  {
    sub_1B0B7ABB4(v28);
    return 0;
  }

  if (v31 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    return 0;
  }

  v6 = *a2;
  v7 = a1 + *(type metadata accessor for RunningTask() + 28);
  v8 = v7 + *(type metadata accessor for Task.Logger(0) + 20);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v11 < 0)
  {
    v14 = *(v8 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v12 = *(v8 + 40);
    v13 = *(v8 + 32);
    sub_1B0A982D8(*v8, *(v8 + 8), *(v8 + 16), v11);
  }

  sub_1B0450DB0(a1, v28);
  if (v31)
  {
    if (v31 == 1)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    else if (v29 | (v30 << 32) || v28[3] | v28[4] | v28[0] | v28[2] | v28[1])
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = sub_1B0E43988();
      v16 = sub_1B0E458C8();
      if (os_log_type_enabled(v15, v16))
      {
        v26 = swift_slowAlloc();
        LODWORD(v32) = v6;
        v21 = v26;
        v22 = swift_slowAlloc();
        v28[0] = v22;
        *v21 = 68158210;
        *(v21 + 4) = 2;
        *(v21 + 8) = 256;
        *(v21 + 10) = v32;

        *(v21 + 11) = 2082;
        v27 = sub_1B0399D64(v10, v9, v28);

        *(v21 + 13) = v27;
        v25 = "[%.*hhx-%{public}s] Pruning failed task";
        goto LABEL_17;
      }

LABEL_20:

      swift_bridgeObjectRelease_n();
      goto LABEL_21;
    }
  }

  else
  {
    sub_1B0B7ABB4(v28);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v16 = sub_1B0E458C8();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_20;
  }

  v17 = swift_slowAlloc();
  v32 = v2;
  v18 = a2;
  v19 = v10;
  v20 = v6;
  v21 = v17;
  v22 = swift_slowAlloc();
  v28[0] = v22;
  *v21 = 68158210;
  *(v21 + 4) = 2;
  *(v21 + 8) = 256;
  *(v21 + 10) = v20;

  *(v21 + 11) = 2082;
  v23 = v19;
  a2 = v18;
  v24 = sub_1B0399D64(v23, v9, v28);

  *(v21 + 13) = v24;
  v25 = "[%.*hhx-%{public}s] Pruning completed task";
LABEL_17:
  _os_log_impl(&dword_1B0389000, v15, v16, v25, v21, 0x15u);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  MEMORY[0x1B272C230](v22, -1, -1);
  MEMORY[0x1B272C230](v21, -1, -1);

LABEL_21:
  sub_1B0B79C14(*a2);
  return 1;
}

uint64_t sub_1B0455560(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v78 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
    goto LABEL_55;
  }

  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v69 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v72 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = 0;
  do
  {
LABEL_6:
    if (v10)
    {
      v15 = v72;
    }

    else
    {
      v16 = v14;
      v15 = v72;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_59;
        }

        if (v17 >= v11)
        {
          goto LABEL_54;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v14 = v17;
    }

    v71 = v14;
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = *(v15 + 48) + ((v14 << 10) | (16 * v18));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v5 + 40);
    sub_1B0E46C28();
    v23 = v21 | (v21 << 32);
    MEMORY[0x1B2728D70](v23);
    v24 = sub_1B0E46CB8();
    v14 = v71;
    v25 = *(v5 + 32);
    v26 = -1 << v25;
    v2 = v24 & ~(-1 << v25);
    v4 = v2 >> 6;
    v3 = 1 << v2;
  }

  while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
  v27 = v25 & 0x3F;
  v28 = ~v26;
  while (1)
  {
    v29 = (*(v5 + 48) + 16 * v2);
    if ((v29[2] | (v29[2] << 32)) == v23)
    {
      v30 = *v29;
      v31 = *(*v29 + 16);
      if (v31 == *(v20 + 16))
      {
        break;
      }
    }

LABEL_15:
    v2 = (v2 + 1) & v28;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((*(v12 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v31)
  {
    v32 = v30 == v20;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = (v30 + 32);
    v34 = (v20 + 32);
    do
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      if (*v33 != *v34)
      {
        goto LABEL_15;
      }

      ++v33;
      ++v34;
    }

    while (--v31);
  }

  v75 = v69;
  v76 = v71;
  v77 = v10;
  v74[0] = v72;
  v74[1] = v7;
  v67 = ((1 << v27) + 63) >> 6;
  v13 = 8 * v67;
  if (v27 > 0xD)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v68 = &v66;
    MEMORY[0x1EEE9AC00](v24);
    v2 = &v66 - v35;
    memcpy(&v66 - v35, (v5 + 56), v36);
    v37 = *(v2 + 8 * v4) & ~v3;
    v38 = *(v5 + 16);
    v70 = v2;
    *(v2 + 8 * v4) = v37;
    v39 = v38 - 1;
    v40 = v71;
LABEL_28:
    v71 = v39;
LABEL_29:
    while (v10)
    {
LABEL_35:
      v43 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v44 = *(v72 + 48) + ((v40 << 10) | (16 * v43));
      v3 = *v44;
      v45 = *(v44 + 8);
      v46 = *(v5 + 40);
      v47 = v40;
      sub_1B0E46C28();
      v4 = v45 | (v45 << 32);
      v2 = &v73;
      MEMORY[0x1B2728D70](v4);
      v48 = sub_1B0E46CB8();
      v40 = v47;
      v49 = -1 << *(v5 + 32);
      v50 = v48 & ~v49;
      v51 = v50 >> 6;
      v52 = 1 << v50;
      if (((1 << v50) & *(v12 + 8 * (v50 >> 6))) != 0)
      {
        v53 = ~v49;
        while (1)
        {
          v54 = (*(v5 + 48) + 16 * v50);
          if ((v54[2] | (v54[2] << 32)) == v4)
          {
            v55 = *v54;
            v56 = *(*v54 + 16);
            if (v56 == *(v3 + 16))
            {
              break;
            }
          }

LABEL_37:
          v50 = (v50 + 1) & v53;
          v51 = v50 >> 6;
          v52 = 1 << v50;
          if ((*(v12 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
          {
            goto LABEL_29;
          }
        }

        if (v56)
        {
          v57 = v55 == v3;
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          v58 = (v55 + 32);
          v59 = (v3 + 32);
          while (v56)
          {
            if (*v58 != *v59)
            {
              goto LABEL_37;
            }

            ++v58;
            ++v59;
            if (!--v56)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
          goto LABEL_57;
        }

LABEL_48:
        v60 = v70[v51];
        v70[v51] = v60 & ~v52;
        if ((v60 & v52) != 0)
        {
          v39 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            v5 = MEMORY[0x1E69E7CD0];
            goto LABEL_54;
          }

          goto LABEL_28;
        }
      }
    }

    v41 = v40;
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v11)
      {
        v5 = sub_1B0455AB8(v70, v67, v71, v5);
        goto LABEL_54;
      }

      v10 = *(v7 + 8 * v42);
      ++v41;
      if (v10)
      {
        v40 = v42;
        goto LABEL_35;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v63 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v64 = swift_slowAlloc();
  memcpy(v64, (v5 + 56), v63);
  v65 = sub_1B0BAA4D0(v64, v67, v5, v2, v74);

  MEMORY[0x1B272C230](v64, -1, -1);
  v69 = v75;
  v5 = v65;
LABEL_54:
  sub_1B03D91F8();
LABEL_55:
  v61 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B0455AB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  result = sub_1B0E46228();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v9 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v18 | (v18 << 32));
    result = sub_1B0E46CB8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0455CE0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0455DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0455E60(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BECE50((a1 & 1) == 0);
  }

  return result;
}

uint64_t sub_1B0455ECC()
{
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  if (sub_1B0E43CA8())
  {
    sub_1B0E44008();
    if (swift_dynamicCastClass())
    {
      sub_1B0E44018();
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5688, &qword_1B0ED3910);
        if (swift_dynamicCast())
        {

          return v5;
        }
      }

      else
      {
        sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
      }

      sub_1B0E44018();
      if (v7)
      {

        sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
        return 0;
      }

      sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v1 = sub_1B0E439A8();
      __swift_project_value_buffer(v1, qword_1EB6DCD58);
      v2 = sub_1B0E43988();
      v3 = sub_1B0E458F8();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_1B0389000, v2, v3, "Received invalid message.", v4, 2u);
        MEMORY[0x1B272C230](v4, -1, -1);
      }
    }
  }

  return 1;
}

uint64_t sub_1B0456874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045690C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045694C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04569E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456A24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456ABC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456C14()
{
  v4 = *(_s6LoggerVMa() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v5);
  v2 = *(v0 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_1B0456D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456E50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0456FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04570D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457208()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457248()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04572E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04573B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04573F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04574D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04575A8()
{
  v7 = _s8ActivityVMa();
  v1 = *(*(v7 - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v10 = v2 + *(*(v7 - 8) + 64);
  v8 = v0 + v2;
  v3 = *(v0 + v2);

  v4 = *(v8 + 8);

  v9 = *(v7 + 24);
  v5 = sub_1B0E43108();
  (*(*(v5 - 8) + 8))(v8 + v9);
  return swift_deallocObject();
}

uint64_t sub_1B0457710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04577E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04578C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457900()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04579D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457BB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0457BF4()
{
  v15 = *(_s8ActivityV4DiffV4KindOMa() - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v17 = v16 + *(v15 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v0 = *(v14 + v16);

        break;
      case 2:
        v9 = sub_1B0E43108();
        v10 = *(v9 - 8);
        if (!(*(v10 + 48))(v14 + v16, 1))
        {
          (*(v10 + 8))(v14 + v16, v9);
        }

        break;
      case 3:
        v7 = v14 + v16 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v8 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1))
        {
          v6 = swift_getEnumCaseMultiPayload();
          if (v6)
          {
            if (v6 == 1)
            {
              v2 = *(v7 + 8);

              v3 = *(v7 + 24);
            }

            else if (v6 == 2 || v6 == 3)
            {
              v4 = *(v7 + 8);
            }
          }

          else
          {
            v1 = sub_1B0E441D8();
            (*(*(v1 - 8) + 8))(v7);
          }
        }

        break;
    }
  }

  else
  {
    v11 = v14 + v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v12 = sub_1B0E43108();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v11, 1))
    {
      (*(v13 + 8))(v11, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B0457FD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04580A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04580E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04581C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04584E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045854C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04585E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04586BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04586FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04587D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045886C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04588AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458A1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458E80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0458FDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045901C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04590B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04590F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045918C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04591CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04592A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045933C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045937C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04594D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04595B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04595F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459688()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04596C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04597A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04599D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459AEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459C5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459C9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459D34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459D74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459E0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459FA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0459FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A0C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A158()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A3CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A40C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A4A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A4E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A57C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A5BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A72C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A76C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A9A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045A9E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AAB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AB50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AB90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AC28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AC68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AD00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AD6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AE04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AEDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AFB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045AFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B08C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B0CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B1A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B23C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B2A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B3D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B470()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B6F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B8E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B980()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045B9EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BAB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BAF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BB88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BBC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BC60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BCA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BD38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BD78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BE50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BEE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BF28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045BFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C0C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C15C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C19C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C30C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C34C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C3E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C4BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C5C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C730()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C8E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045C960(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s8ActivityVMa();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B045CA78(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s8ActivityVMa();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B045CB68(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1B0E43108();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B045CC80(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1B0E43108();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B045CD70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  return (*(*(v3 - 8) + 48))(a1 + v5, a2);
}

uint64_t sub_1B045CDEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  return (*(*(v4 - 8) + 56))(a1 + v6, a2);
}

uint64_t sub_1B045CEAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1B045CF44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045CF84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045CFC4()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D0B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D0F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D18C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D290()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D2D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D3A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D46C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D4AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D61C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D65C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D6F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D7CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D80C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D8D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D9A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045D9E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DAF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DB34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DBCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DC0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DCA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DCE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DDF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DE30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DEC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DF08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DFA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045DFE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E020()
{
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B045E0F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E20C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E2A4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045E2E4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045E37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E454()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E494()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E558()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E598()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E670()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E708()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E748()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E7E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E8E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E9BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045E9FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EA94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EAD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EB6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EBAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EC44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EC84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045ED1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045ED5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EDF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EE34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EF0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045EFD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F0D8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F2F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F3C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F4A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F4E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F5B8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045F5F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045F638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F678()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045F6B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F6F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B045F738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F8E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F980()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045F9C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FA58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FA98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FB70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FC34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FCCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FD0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FDD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FE68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B045FF6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04600DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04601B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046024C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046028C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460324()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460364()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04603FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046043C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04604D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046056C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04605AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046071C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046075C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04607F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04608CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04609A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460A3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460A7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460BEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460CC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460D04()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0460D44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460DDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460E1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0460FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04610A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461168()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04612C0()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461400()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04614D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04615B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04615F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461688()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04616C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461824()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04618FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046193C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04619D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461AEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461C5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461CF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461D34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461DCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461E0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461EA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461EE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461F7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0461FBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462158()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04621F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04622C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04623A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04623E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462478()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04624B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04624F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0462590()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046272C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046276C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04628DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046291C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04629B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04629F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462A8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462B24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462B64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462BFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462C3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462CD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462D14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462DAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462DEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462E84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462F1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462F5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0462FF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463034()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04630CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046310C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04631A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04631E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046327C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046335C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046339C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046350C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046354C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04635E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04636BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04636FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463C38()
{
  MEMORY[0x1E69E5920](v0[2]);
  v1 = v0[3];

  MEMORY[0x1E69E5920](v0[4]);
  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B0463CA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0463D40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463D80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463E18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463E58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463F30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0463FC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04640A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04640E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04641B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04641F8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04642A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04644E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04645C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464730()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04648E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04649B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04649F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464A90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464C6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464D04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464D44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464DDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464E1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0464F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465024()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04650FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046513C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04651D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465214()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04652AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04652EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046532C()
{
  v4 = *(_s6LoggerVMa() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v5);
  v2 = *(v0 + v6 + 8);

  MEMORY[0x1E69E5920](*(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

uint64_t sub_1B04654C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04655C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046565C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046569C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046580C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046584C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04658E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04659BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465A54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465A94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465C04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465C44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465CDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465D1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465DB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465E4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465E8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465F24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465F64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0465FFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046603C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04660D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466114()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466154()
{
  v4 = *(_s6LoggerVMa() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v5);
  v2 = *(v0 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_1B04662B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466500()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04665D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466658()
{
  MEMORY[0x1E69E5920](v0[2]);
  v1 = v0[3];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B0466708()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04667A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04667E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04668B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466A28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466A68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466B00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466B98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466BD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466C70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466CB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466D48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466D88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466E20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466E60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466EF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466F90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0466FD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04670A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04672F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04673C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04674A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04676E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04677C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467C50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467D28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467ED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467F70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0467FB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468048()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468088()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04681F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468238()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04682D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04683B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04683F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04684C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04685A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04687E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04688C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468BE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468E28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0468F80()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0468FD0()
{
  v1 = *(v0 + 24);

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B0469020()
{
  v5 = sub_1B0E42A08();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_1B0469148()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469198()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B04692BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04692FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046933C()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B04694A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04694E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04695B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04695F8()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046971C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046975C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046979C()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B0469918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04699F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0469BD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0469C20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0469C68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0469CB0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s18MailboxPersistenceVMa();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B0469DC8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s18MailboxPersistenceVMa();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0469EB8()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B0469F84()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046A050()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B046A090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A0D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A110()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A150()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A228()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A268()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A300()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A3D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A418()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A4F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A5B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A64C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A68C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A764()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A7A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A7E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A824()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046A8A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B046A904()
{
  v9 = _s21UnfilteredFlagChangesVMa();
  v1 = *(*(v9 - 1) + 80);
  v2 = (v1 + 16) & ~v1;
  v11 = v2 + *(*(v9 - 1) + 64);
  v10 = v0 + v2;
  v3 = *(v0 + v2);

  v8 = v9[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v4 - 8) + 8))(v10 + v8);
  v5 = *(v10 + v9[6]);

  v6 = *(v10 + v9[7]);

  return swift_deallocObject();
}

uint64_t sub_1B046AAE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AB28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046ABC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AC00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AC98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046ACD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AD70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046ADB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AE74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AF0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AF4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046AFE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B024()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B0BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B0FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B194()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B1D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B26C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B2AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B2EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B32C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B36C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B3EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B046B44C()
{
  v9 = _s21UnfilteredFlagChangesVMa();
  v1 = *(*(v9 - 1) + 80);
  v2 = (v1 + 16) & ~v1;
  v11 = v2 + *(*(v9 - 1) + 64);
  v10 = v0 + v2;
  v3 = *(v0 + v2);

  v8 = v9[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v4 - 8) + 8))(v10 + v8);
  v5 = *(v10 + v9[6]);

  v6 = *(v10 + v9[7]);

  return swift_deallocObject();
}

uint64_t sub_1B046B604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B6DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B7B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B7F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B88C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B8CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046B990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BA28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BA68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BB00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BB40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BBD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BC18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BCB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BCF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BD30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BD70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BDB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BDF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BE30()
{
  v3 = *(sub_1B0E43108() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046BF54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046BF94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C02C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C06C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C1DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C21C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C3B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C6C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C700()
{
  v3 = *(sub_1B0E43108() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046C824()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C8FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C93C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046C9D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CA14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CAAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CAEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CBB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CC48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CC88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CD20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CD60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CDF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CE38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CF10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CF50()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B046CF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046CFD0()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046D09C()
{
  v3 = *(sub_1B0E42E68() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B046D168()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D1A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D1E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D228()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D268()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B046D360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D558()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D5F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D6C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D708()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D7CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D8A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D93C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046D97C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DA14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DA54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DA94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DAD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DB14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DB54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DB94()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B046DC8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DD6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DDAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DE84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046DFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E034()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E0F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E1D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E268()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E2A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E380()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E3EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E42C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E46C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E4AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E4EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E5C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E65C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E69C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E80C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E84C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E9A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046E9E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EA80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EAC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EBCC(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B046ECF0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B046EE70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EEB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EEF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EF30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046EF70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F048()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F0E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F1B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F1F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F290()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F2D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F42C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F46C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F504()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F5C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F684()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1B046F71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F75C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F7F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F8CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F90C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F9A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046F9E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FAA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FB40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FB80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FC18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FC58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FC98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FD18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FD58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FDD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FE58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FE98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FF18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B046FF58()
{
  v3 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0470098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04700D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04701B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470248()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04704BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04704FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04705D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047066C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04706AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04706EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047072C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047076C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04707AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04707EC()
{
  v3 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B047092C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047096C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470ADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470B1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470BB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470BF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470E28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0470F80(uint64_t a1, unsigned int a2)
{
  v2 = sub_1B0E443C8();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 1)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0470FF0(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = sub_1B0E443C8();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t sub_1B0471180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04711C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04714E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04715B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04715F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04716D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04717A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471840()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04719F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471BE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471E28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0471FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04720D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04721B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04721F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04722C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04723A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472438()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472478()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047253C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04725D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472654()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04726D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472714()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04727AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04727EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04728C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047295C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047299C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472B38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472BD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472C10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472C50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472D10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472DE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472E80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472EC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0472F98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473070()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04731CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047320C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047324C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047328C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04732CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047330C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04733A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04733E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047347C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04734BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473554()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047362C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047366C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473730()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04737C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04738C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04739A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04739E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473A78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473B50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473B90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473C28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473C68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473D2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473E04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473E44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473E84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473EC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473F04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473F9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0473FDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474074()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04740B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047414C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047418C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04743C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474400()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04744C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474500()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04745D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04746B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04746F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474788()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04747C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04748A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04749FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474A3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474AD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474C80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474CEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474D84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474E5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474E9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0474F74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047500C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047504C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475110()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04751A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04751E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04752C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475358()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04753D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475418()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475458()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04754D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0475518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04755A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0475614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04756AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04756EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475784()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04757C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047585C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047589C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475934()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475974()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475A38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475AD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475B10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475BE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475C80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475CC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475D58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475D98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475E30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475F30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475F70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0475FB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0475FF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476030()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0476078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B04760C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1B0476144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04761DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047621C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04762B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04762F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B047638C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04763CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04764A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04766D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04767B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04767F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04768C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476960()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04769A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476A38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476A78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476AF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476B38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476C50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476D28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0476E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}
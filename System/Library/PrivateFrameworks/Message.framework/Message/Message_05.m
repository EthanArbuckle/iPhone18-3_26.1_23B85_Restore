uint64_t sub_1B03E7330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E73B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E741C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E74B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E74F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E758C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E75CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E76A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E773C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E777C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E78EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E792C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E79C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7C60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7D38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7E50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E7FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E80D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E81DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E82B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E834C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E838C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E84FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E853C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E85D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03E8614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void clearMailboxUIDCache()
{
  v0 = +[MailAccount log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    clearMailboxUIDCache_cold_1();
  }

  v1 = cachedMailboxUIDs();
  [v1 removeAllObjects];
}

uint64_t __cachedMailboxUIDs_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = cachedMailboxUIDs_cache;
  cachedMailboxUIDs_cache = v0;

  [cachedMailboxUIDs_cache setName:@"MailAccount.cachedMailboxUIDs"];
  v2 = cachedMailboxUIDs_cache;

  return [v2 setCountLimit:21];
}

void sub_1B03E9280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t MFCompareMailboxUids(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 == v6)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [v5 mailboxType];
  v9 = [v7 mailboxType];
  if (v8 && !v9)
  {
    goto LABEL_6;
  }

  if (v9 && !v8)
  {
    goto LABEL_10;
  }

  if (v8 < v9)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_11;
  }

  if (v8 > v9)
  {
LABEL_10:
    v10 = -1;
    goto LABEL_11;
  }

  if (!a3 || (v5[136] & 0x10) != 0 || (v7[136] & 0x10) != 0)
  {
    v17 = [v5 account];
    if (v17)
    {
      [v5 displayName];
    }

    else
    {
      [(MFMailboxUid *)v5 pathComponent];
    }
    v14 = ;

    v12 = [v7 account];
    if (v12)
    {
      [v7 displayName];
    }

    else
    {
      [(MFMailboxUid *)v7 pathComponent];
    }
    v16 = ;
  }

  else
  {
    v12 = a3;
    v13 = [(MFMailboxUid *)v5 pathComponent];
    v14 = [v12 _pathComponentForUidName:v13];

    v15 = [(MFMailboxUid *)v7 pathComponent];
    v16 = [v12 _pathComponentForUidName:v15];
  }

  if (v14 == v16)
  {
    v10 = 0;
  }

  else if (v14)
  {
    if (v16)
    {
      v18 = [v14 length];
      v19 = [MEMORY[0x1E695DF58] currentLocale];
      v10 = [v14 compare:v16 options:65 range:0 locale:{v18, v19}];

      if (!v10)
      {
        v20 = [v14 length];
        v21 = [MEMORY[0x1E695DF58] currentLocale];
        v10 = [v14 compare:v16 options:64 range:0 locale:{v20, v21}];
      }
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_11:
  return v10;
}

void sub_1B03E96AC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id _MFChildWithPredicate(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [v5 mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5[6];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (a2(v10, a3))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v5 mf_unlock];
  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t mailboxHasName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(MFMailboxUid *)a1 pathComponent];
  v5 = [v4 isEqual:v3];

  return v5;
}

uint64_t mailboxHasExtraAttribute(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 extraAttributes];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_1B03E9BB4()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E44468();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + 16);
  *v11 = v12;
  v13 = *MEMORY[0x1E69E8020];
  v14 = v7[13];
  v14(v11, *MEMORY[0x1E69E8020], v6, v9);
  v36 = v12;
  LOBYTE(v12) = sub_1B0E44488();
  v37 = v7[1];
  result = v37(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v35 = v14;
  swift_beginAccess();
  v16 = StateWithTasks.failOldBackgroundSyncRequests()();
  swift_endAccess();
  if (!*(v16 + 16))
  {
  }

  v34 = v13;
  v17 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B0E43988();
  v19 = sub_1B0E439A8();
  (*(*(v19 - 8) + 8))(v5, v19);
  v20 = sub_1B0E45908();
  if (os_log_type_enabled(v18, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v7 + 13;
    v22 = v21;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v17 + *(v2 + 20));

    *(v22 + 11) = 2048;
    *(v22 + 13) = *(v16 + 16);

    *(v22 + 21) = 2082;
    v23 = sub_1B0B88A40(v16);
    v25 = v24;

    v26 = sub_1B0399D64(v23, v25, &v38);

    *(v22 + 23) = v26;
    _os_log_impl(&dword_1B0389000, v18, v20, "[%.*hhx] Connections stalled. Failed %ld background sync request(s): %{public}s.", v22, 0x1Fu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x1B272C230](v27, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v28 = v35;
  v29 = v36;
  *v11 = v36;
  v28(v11, v34, v6);
  v30 = v29;
  LOBYTE(v29) = sub_1B0E44488();
  result = v37(v11, v6);
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B038DED0();
  return sub_1B0425738(&unk_1F2721128);
}

uint64_t StateWithTasks.failOldBackgroundSyncRequests()()
{
  v0 = static MonotonicTime.now()();

  return sub_1B03EA86C(v0);
}

id _stringByAppendingPathComponentsUsingSpecialDisplayNames(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v37 = a5;
  v38 = a6;
  if (!v15)
  {
    v15 = [v13 topMailbox];
  }

  v17 = v13;
  v18 = v17;
  v19 = v15 == v17 || v17 == 0;
  v20 = v19;
  v21 = v17;
  if (v19)
  {
    goto LABEL_14;
  }

  v22 = v17;
  do
  {
    v21 = [v22 parent];

    if (v15 == v21)
    {
      break;
    }

    v22 = v21;
  }

  while (v21);
  if (v20)
  {
LABEL_14:
    v23 = v16;
    goto LABEL_48;
  }

  v35 = v13;
  if (v16)
  {
    v24 = [v16 mutableCopyWithZone:{0, v13}];
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v23 = v24;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v14)
  {
    v26 = [v18 mailboxType];
    if (v37)
    {
      if (v26 != 7 && [v37 length] && (objc_msgSend(v18, "isShared") & 1) == 0)
      {
        if (v16 && [v16 length])
        {
          [v23 appendString:@"/"];
        }

        [v23 appendString:{v37, v35}];
      }
    }
  }

  v27 = v18;

  v36 = v27;
  do
  {
    v28 = [v14 persistentNameForMailbox:{v27, v35}];
    if (v28)
    {
      if (v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (a7)
      {
        [v27 displayNameUsingSpecialNames];
      }

      else
      {
        [v27 name];
      }
      v28 = ;
      if (v14)
      {
LABEL_30:
        v29 = [v14 _pathComponentForUidName:v28];

        v28 = v29;
        if (!v29)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    if (!v28)
    {
LABEL_31:
      v30 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v30 = [v28 ef_sanitizedFileName];

    [v25 addObject:v30];
LABEL_38:

    v21 = [v27 parent];

    v27 = v21;
  }

  while (v21 != v15);
  v31 = [v25 count];
  if (v31)
  {
    v32 = v31 - 1;
    do
    {
      if ([v23 length])
      {
        [v23 appendString:@"/"];
      }

      v33 = [v25 objectAtIndexedSubscript:v32];
      [v23 appendString:v33];

      --v32;
    }

    while (v32 != -1);
  }

  if (v38 && [v36 isStore])
  {
    [v23 appendString:@"."];
    [v23 appendString:v38];
  }

LABEL_48:

  return v23;
}

uint64_t sub_1B03EA86C(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B0B94CF8;
  *(v5 + 24) = v4;
  swift_getKeyPath();
  v6 = sub_1B03ABAA0();
  swift_bridgeObjectRetain_n();

  result = MEMORY[0x1B2727570](0, &type metadata for SyncRequest.ID, v6);
  v8 = 0;
  v51 = result;
  v9 = v3;
  v11 = v3 + 64;
  v10 = *(v3 + 64);
  v12 = -1 << *(v3 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v46 = v9;
  while (v14)
  {
LABEL_11:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v8 << 6);
    v19 = *(v9 + 56) + 32 * v18;
    if ((*v19 & 0xFE) == 2)
    {
      v20 = *(*(v9 + 48) + 4 * v18);
      v21 = *(v19 + 24);
      if (v21 <= a1)
      {
        v22 = a1 - v21;
        if (__OFSUB__(a1, v21))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (__OFSUB__(v21, a1))
        {
          goto LABEL_48;
        }

        v22 = a1 - v21;
        if (__OFSUB__(0, v21 - a1))
        {
          goto LABEL_49;
        }
      }

      if (v22 / 1000000000.0 > 60.0)
      {
        result = sub_1B03FF318(&v50, v20);
        v9 = v46;
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v16 >= ((63 - v12) >> 6))
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v15;
    if (v14)
    {
      v8 = v16;
      goto LABEL_11;
    }
  }

  sub_1B03D91F8();

  v23 = v51;
  v24 = v51 + 56;
  v25 = 1 << *(v51 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v51 + 56);
  v28 = (v25 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = 0;
  v30 = v47;
  v45 = v23;
  while (v27)
  {
LABEL_30:
    v33 = *(*(v23 + 48) + ((v29 << 8) | (4 * __clz(__rbit64(v27)))));
    v34 = *(v30 + 168);
    v49 = *(v30 + 176);
    v35 = *(v30 + 184);
    v48 = *(v30 + 192);
    if (v48)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      if (result)
      {
        v37 = *(v34 + 16);
        if (v37)
        {
          goto LABEL_33;
        }
      }

      else
      {
        result = sub_1B03D0E54(v34);
        v36 = result;
        v37 = *(result + 16);
        if (v37)
        {
LABEL_33:
          v38 = 0;
          v39 = v36 + 168;
          while (v38 < v37)
          {
            result = sub_1B0B92A00(v33, sub_1B0B070B4);
            ++v38;
            v37 = *(v36 + 16);
            v39 += 176;
            if (v38 == v37)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_36:
      result = sub_1B03BB638(v34, v49, v35, 1);
      v31 = 0;
      v35 = 0;
      v34 = v36;
      v30 = v47;
      v23 = v45;
    }

    else
    {
      result = sub_1B03FE284(v33);
      if (v40)
      {
        v41 = result;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v34;
        v43 = v34;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B0B8E628();
          v43 = v51;
        }

        v44 = *(*(v43 + 56) + 24 * v41 + 8);

        sub_1B0B907A4(v41, v43);
        v31 = v49;
        result = sub_1B03BB638(v34, v49, v35, 0);
        v34 = v43;
      }

      else
      {
        v31 = v49;
      }
    }

    v27 &= v27 - 1;
    *(v30 + 168) = v34;
    *(v30 + 176) = v31;
    *(v30 + 184) = v35;
    *(v30 + 192) = v48;
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      return v23;
    }

    v27 = *(v24 + 8 * v32);
    ++v29;
    if (v27)
    {
      v29 = v32;
      goto LABEL_30;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1B03EACD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1B03EAE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFPersistenceDatabaseConnection_iOS;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _stringByAppendingPathComponents(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(a1, a2, a3, a4, a5, a6, 0);

  return v6;
}

void __receivingEmailAddressesCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699B7E0]);
  v1 = receivingEmailAddressesCache__receivingEmailAddressesCache;
  receivingEmailAddressesCache__receivingEmailAddressesCache = v0;
}

id MFCriterionExpressionForDate(void *a1)
{
  [a1 timeIntervalSince1970];
  v2 = v1;
  __y = NAN;
  modf(v1, &__y);
  if (__y == v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __y, __y];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", __y, *&v2];
  }
  v3 = ;

  return v3;
}

id MFMailDirectory()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = MFMailDirectory___MailDir;
  if (!MFMailDirectory___MailDir)
  {
    v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
    v2 = [v1 stringByAppendingPathComponent:@"Mail"];
    v3 = MFMailDirectory___MailDir;
    MFMailDirectory___MailDir = v2;

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v4 fileExistsAtPath:MFMailDirectory___MailDir] & 1) == 0 && objc_msgSend(v4, "mf_makeCompletePath:mode:", MFMailDirectory___MailDir, 448))
    {
      v5 = open([MFMailDirectory___MailDir fileSystemRepresentation], 0);
      v6 = v5;
      if (v5 < 0)
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = MFMailDirectory___MailDir;
          _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Could not open fd for %@", buf, 0xCu);
        }
      }

      else
      {
        if (fcntl(v5, 64, 4))
        {
          v7 = MFLogGeneral();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v12 = MFMailDirectory___MailDir;
            _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Could not set protection class on %@", buf, 0xCu);
          }
        }

        close(v6);
      }
    }

    v0 = MFMailDirectory___MailDir;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v0;
}

id MFLookupLocalizedString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Message";
  }

  v9 = MFMessageFrameworkBundle();
  v10 = [v9 localizedStringForKey:v5 value:v6 table:v8];

  return v10;
}

id MFMessageFrameworkBundle()
{
  v0 = sMessageFrameworkBundle;
  if (!sMessageFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Message"];
    v2 = sMessageFrameworkBundle;
    sMessageFrameworkBundle = v1;

    v0 = sMessageFrameworkBundle;
  }

  return v0;
}

uint64_t _storeOnServerForTuple(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = v3;
    v8 = v5;
    v9 = [v7 _objectForAccountInfoKey:v8];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = NSBOOLFromString();
LABEL_9:
        v6 = v10;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 BOOLValue];
        goto LABEL_9;
      }
    }

    else
    {
      [v7 mf_lock];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      [v7 setAccountProperty:v11 forKey:v8];

      [v7 mf_unlock];
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

BOOL _IsWiFiEnabled(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"AllowEnable");
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(Value)))
  {
    v4 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v4 = *MEMORY[0x1E695E4D0] == Value;
  }

  SCPreferencesSynchronize(a1);
  return v4;
}

id _MFDescendantWithPredicate(void *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v5 = a1;
  [v5 mf_lock];
  v6 = [v5 depthFirstEnumerator];
  v7 = 0;
  do
  {
    v8 = [v6 nextObject];

    if (!v8)
    {
      break;
    }

    v7 = v8;
  }

  while ((a2(v8, a3) & 1) == 0);
  [v5 mf_unlock];

  return v8;
}

uint64_t ECMailboxTypeFromMailboxUidType(uint64_t a1)
{
  result = -500;
  if (a1 > 6)
  {
    if (a1 > 101)
    {
      if (a1 > 103)
      {
        if (a1 != 104)
        {
          if (a1 != 105)
          {
            if (a1 != 106)
            {
              return result;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      if (a1 != 102)
      {
        return 3;
      }

      return 2;
    }

    if (a1 <= 99)
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          return 8;
        }

        return result;
      }

      return 7;
    }

    if (a1 == 100)
    {
      return 7;
    }

    return 1;
  }

  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        return 6;
      }

      return 5;
    }

    if (a1 != 3)
    {
      return 4;
    }

    return 3;
  }

  if (a1 > 0)
  {
    if (a1 != 1)
    {
      return 2;
    }

    return 1;
  }

  if (a1)
  {
    v3 = -500;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == -100)
  {
    return -100;
  }

  else
  {
    return v3;
  }
}

void _DisposeICUSQLiteContext(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    usearch_close();
    CPICUReleaseSearchCollator();
    v3 = a1[22];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[24];
    if (v4 && v4 != a1 + 25)
    {
      free(v4);
    }

    v5 = a1[20];
    if (v5 && v5 != a1 + 4)
    {
      free(v5);
    }

    free(a1);
  }
}

void sub_1B03EDD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_1B03EE50C()
{
  v2 = qword_1EB6DAC90;
  if (!qword_1EB6DAC90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAC90);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1B03EE580(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v46 = 0;
  v47 = 0;
  v36 = sub_1B0E439A8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v11 - v39;
  v53 = MEMORY[0x1EEE9AC00](v35);
  v51 = v3;
  v52 = v4;
  v41 = (v53 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  v42 = &v49;
  swift_beginAccess();
  v43 = *v41;
  v44 = v41[1];
  sub_1B03EEAD0(v43, v44);
  swift_endAccess();
  v48[0] = v43;
  v48[1] = v44;
  v32 = v44 == 0;
  v31 = v32;
  sub_1B03EEB18(v48);
  if (!v31)
  {
LABEL_8:
    v16 = v35 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
    swift_beginAccess();
    if (*(v16 + 8))
    {
      v14 = *(v16 + 8);

      swift_endAccess();
      v15 = v14;
    }

    else
    {
      swift_endAccess();
      v15 = 0;
    }

    v13 = v15;

    v50 = v13;
    v17 = v13;
    goto LABEL_12;
  }

  v27 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor);
  v26 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor + 8);

  v29 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_workloop);
  MEMORY[0x1E69E5928](v29);
  (*(v37 + 16))(v40, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v36);
  v28 = v27(v29, v40);
  v30 = v5;
  (*(v37 + 8))(v40, v36);
  MEMORY[0x1E69E5920](v29);
  if (!v30)
  {

    goto LABEL_8;
  }

  v24 = v28;
  v25 = v30;
  v22 = v30;
  v23 = v28;
  v46 = v28;
  v47 = v30;

  v20 = (v35 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  v21 = &v45;
  swift_beginAccess();
  v6 = v20;
  v7 = v22;
  v8 = *v20;
  v9 = v20[1];
  *v20 = v23;
  v6[1] = v7;
  sub_1B0A5E460(v8, v9);
  swift_endAccess();

  if (v23)
  {
    v19 = v23;
    v18 = v23;
    Engine.start()();
  }

  v50 = v22;

  v17 = v22;
LABEL_12:
  v12 = v17;

  v34(v12);

  return sub_1B0391AD4(&v50);
}

uint64_t sub_1B03EEAD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *sub_1B03EEB18(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;

    v2 = a1[1];
  }

  return a1;
}

uint64_t sub_1B03EEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v43 = a1;
  v37 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v25 = sub_1B03F0000;
  v26 = sub_1B0A5F3F0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v44 = 0;
  v27 = 0;
  v28 = sub_1B0E44238();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = v22 - v31;
  v38 = sub_1B0E44288();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v43);
  v42 = v22 - v41;
  v57 = v6;
  v56 = v7;
  v54 = v8;
  v55 = v9;
  v53 = v10;
  v52 = v11;

  if (v43)
  {
    v24 = v43;
    v22[1] = v43;
    v44 = v43;
    MEMORY[0x1E69E5928](v37);

    v15 = swift_allocObject();
    v16 = v33;
    v17 = v34;
    v18 = v36;
    v19 = v25;
    v20 = v15;
    LODWORD(v15) = v35;
    v22[0] = v20;
    v20[2] = v37;
    v20[3] = v16;
    v20[4] = v17;
    sub_1B03EEF98(v15, v18, v19, v20);
  }

  else
  {

    v12 = swift_allocObject();
    v13 = v34;
    v14 = v26;
    *(v12 + 16) = v33;
    *(v12 + 24) = v13;
    v50 = v14;
    v51 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = 0;
    v48 = sub_1B038C908;
    v49 = &block_descriptor_756;
    v23 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v42, v32, v23);
    (*(v29 + 8))(v32, v28);
    (*(v39 + 8))(v42, v38);
    _Block_release(v23);
  }
}

uint64_t sub_1B03EEF08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03EEF48()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B03EEF98(unsigned int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v58 = a1;
  v57 = a2;
  v54 = a3;
  v55 = a4;
  v56 = 0;
  v45 = sub_1B0A1AB44;
  v46 = sub_1B03F186C;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v77 = 0;
  v47 = 0;
  v48 = 0;
  v49 = sub_1B0E44238();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = v20 - v52;
  v59 = sub_1B0E44288();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v58);
  v63 = v20 - v62;
  v94 = v5;
  v93 = v6;
  v91 = v7;
  v92 = v8;
  v90 = v4;
  v64 = &v89;
  swift_beginAccess();
  v65 = *(v4 + 72);
  swift_endAccess();
  if (v65 & 1) != 0 || (v88[1] = v58, v43 = v88, v88[0] = 0x10000, v42 = type metadata accessor for EMFetchOption(), sub_1B03EFA1C(), (sub_1B0E46F78()))
  {
    sub_1B03F7C00(v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
    v20[0] = 0;
    v20[3] = sub_1B0E46A48();
    v20[1] = sub_1B03EE50C();
    v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    sub_1B03EFF80();
    v20[4] = sub_1B0E445D8();
    v54();
  }

  v41 = sub_1B03EFC84(v58);
  if (v41 == 5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
    v20[5] = 0;
    v20[8] = sub_1B0E46A48();
    v20[6] = sub_1B03EE50C();
    v20[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    sub_1B03EFF80();
    v20[9] = sub_1B0E445D8();
    v54();
  }

  v40 = v41;
  v38 = v41;
  v87 = v41;
  v39 = sub_1B03F1544();
  v86 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v57)
  {
    v37 = v57;
    v9 = v47;
    v66 = v57;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    sub_1B06E35CC();
    v36 = sub_1B0E44F58();
    if (v9)
    {

      __break(1u);
      return result;
    }

    v33 = v36;

    sub_1B039E440(&v66);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v30 = v34;
  v85 = v34;
  v84 = sub_1B03F150C(v58 & 0xF00000);
  v31 = v84;
  v32 = BYTE4(v84);
  v82 = v84;
  v83 = BYTE4(v84) & 1;
  v78 = v84;
  v79 = BYTE4(v84) & 1;
  v80 = 12582912;
  v81 = 0;
  if ((v84 & 0x100000000) != 0)
  {
    v29 = 0;
  }

  else
  {
    v68[1] = v31;
    v69 = v32 & 1;
    v28 = v68;
    v68[0] = v31;
    v26 = &v67;
    v67 = v80;
    v27 = type metadata accessor for EMFetchOptionType();
    sub_1B03F1720();
    v29 = sub_1B0E44A28();
  }

  v22 = v29;
  v21 = 1;
  v77 = v29 & 1;
  v25 = *(v44 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v25);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v39);

  v10 = swift_allocObject();
  v11 = v38;
  v12 = v21;
  v13 = v22;
  v14 = v54;
  v15 = v55;
  v16 = v46;
  v17 = v30;
  v18 = v39;
  v23 = v10;
  *(v10 + 16) = v44;
  *(v10 + 24) = v11;
  *(v10 + 25) = v13 & v12;
  *(v10 + 32) = v17;
  *(v10 + 40) = v18;
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  v75 = v16;
  v76 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = 0;
  v73 = sub_1B038C908;
  v74 = &block_descriptor_692;
  v24 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v63, v53, v24);
  (*(v50 + 8))(v53, v49);
  (*(v60 + 8))(v63, v59);
  _Block_release(v24);

  MEMORY[0x1E69E5920](v25);

  return MEMORY[0x1E69E5920](v39);
}

uint64_t sub_1B03EF924()
{
  v1 = v0[2];

  v2 = v0[4];

  MEMORY[0x1E69E5920](v0[5]);
  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t type metadata accessor for EMFetchOption()
{
  v4 = qword_1EB6DAC10;
  if (!qword_1EB6DAC10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAC10);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B03EFA1C()
{
  v2 = qword_1EB6DAC30;
  if (!qword_1EB6DAC30)
  {
    type metadata accessor for EMFetchOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03EFB14@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B03EFB44@<X0>(_DWORD *a1@<X8>)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B03EFB74()
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FB8();
}

unint64_t sub_1B03EFC04()
{
  v2 = qword_1EB6DAC40;
  if (!qword_1EB6DAC40)
  {
    type metadata accessor for EMFetchOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03EFC84(int a1)
{
  v7 = *MEMORY[0x1E699A738];
  type metadata accessor for EMFetchOption();
  sub_1B03EFF00();
  if (sub_1B0E44A28())
  {
    return 5;
  }

  sub_1B03EFA1C();
  if (sub_1B0E46F78())
  {
    return 4;
  }

  v1 = sub_1B03F150C(a1 & 0xF00000);
  if ((v1 & 0x100000000) == 0)
  {
    switch(v1)
    {
      case 0x100000:
      case 0x200000:
      case 0x300000:
        return 2;
      case 0x400000:
        return 0;
      case 0x500000:
      case 0x600000:
      case 0x700000:
        return 2;
      case 0x800000:
        return 1;
      case 0x900000:
        return 0;
    }

    if (v1 != 10485760)
    {
      if (v1 != 11534336)
      {
        if (v1 != 12582912)
        {
          return 0;
        }

        return 2;
      }

      return 0;
    }

    return 5;
  }

  return 0;
}

unint64_t sub_1B03EFF00()
{
  v2 = qword_1EB6DAC50;
  if (!qword_1EB6DAC50)
  {
    type metadata accessor for EMFetchOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03EFF80()
{
  v2 = qword_1EB6DAC80;
  if (!qword_1EB6DAC80)
  {
    sub_1B03EE50C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03F0010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v29 = a2;
  v27 = a3;
  v28 = a4;
  v41 = sub_1B0A5F460;
  v16 = sub_1B03F0980;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v35 = 0;
  v17 = sub_1B0E44238();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v13 - v20;
  v22 = sub_1B0E44288();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v26 = &v13 - v25;
  v30 = sub_1B0E43108();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v37);
  v34 = &v13 - v33;
  v57 = &v13 - v33;
  v56 = v4;
  v55 = v5;
  v53 = v6;
  v54 = v7;
  sub_1B0E43088();
  v36 = &v43;
  v44 = v34;
  v38 = sub_1B03EE50C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v40 = sub_1B039A494();
  sub_1B03EFF80();
  v42 = sub_1B0E446E8();
  v15 = v42;
  v52 = v42;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = swift_allocObject();
  v9 = v28;
  v10 = v16;
  v11 = v15;
  v8[2] = v27;
  v8[3] = v9;
  v8[4] = v11;
  v50 = v10;
  v51 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_1B038C908;
  v49 = &block_descriptor_765;
  v14 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v26, v21, v14);
  (*(v18 + 8))(v21, v17);
  (*(v23 + 8))(v26, v22);
  _Block_release(v14);

  return (*(v31 + 8))(v34, v30);
}

uint64_t sub_1B03F04AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B03F04F4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v13 = a2;
  v14 = sub_1B03EE570;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v16 = 0;
  v20 = sub_1B0E44238();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v11 - v11;
  v24 = sub_1B0E44288();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v23 = &v11 - v12;
  v36 = v3;
  v37 = v4;
  v35 = v2;
  v27 = *(v2 + OBJC_IVAR___MFSwiftIMAPTaskManager_queue);
  MEMORY[0x1E69E5928](v27);
  MEMORY[0x1E69E5928](v26);
  MEMORY[0x1E69E5928](v26);

  v5 = swift_allocObject();
  v6 = v13;
  v7 = v14;
  v8 = v5;
  v9 = v15;
  v8[2] = v26;
  v8[3] = v9;
  v8[4] = v6;
  v33 = v7;
  v34 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_1B038C908;
  v32 = &block_descriptor_261;
  v25 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v16, v23, v19, v25);
  (*(v17 + 8))(v19, v20);
  (*(v21 + 8))(v23, v24);
  _Block_release(v25);

  MEMORY[0x1E69E5920](v26);
  return MEMORY[0x1E69E5920](v27);
}

uint64_t sub_1B03F07C0()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B03F0810(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + OBJC_IVAR___MFSwiftIMAPTaskManager_callbackQueue);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v11);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v11;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  sub_1B03F04F4(sub_1B03EEB64, v10);

  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B03F0928()
{
  MEMORY[0x1E69E5920](v0[2]);
  v1 = v0[4];

  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B03F0990(uint64_t a1, uint64_t a2)
{
  sub_1B03EE50C();
  sub_1B039A494();
  sub_1B03EFF80();
  v4 = sub_1B0E44598();
  (*(a2 + 16))();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B03F0A1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

void _MFFlushCurrentInvocation()
{
  v0 = *MEMORY[0x1E695E8E0];
  if (CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], 0.0, 0) == kCFRunLoopRunTimedOut)
  {
    Current = CFRunLoopGetCurrent();
    if (CFRunLoopGetNextTimerFireDate(Current, v0) > 1.17549435e-38)
    {
      v2 = 0.001;
      do
      {
        if (CFRunLoopRunInMode(v0, v2, 0) != kCFRunLoopRunTimedOut)
        {
          break;
        }

        v2 = v2 + v2;
        v3 = CFRunLoopGetCurrent();
      }

      while (CFRunLoopGetNextTimerFireDate(v3, v0) > 1.17549435e-38 && v2 < 10.0);
    }
  }
}

uint64_t sub_1B03F150C(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

id sub_1B03F1544()
{
  v3 = *(v0 + 112);
  MEMORY[0x1E69E5928](v3);
  v4 = [v3 library];
  MEMORY[0x1E69E5920](v3);
  if (v4)
  {
    return v4;
  }

  sub_1B0E465A8();
  __break(1u);
  return v2;
}

uint64_t type metadata accessor for EMFetchOptionType()
{
  v4 = qword_1EB6DAB08;
  if (!qword_1EB6DAB08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB08);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B03F1720()
{
  v2 = qword_1EB6DAB18;
  if (!qword_1EB6DAB18)
  {
    type metadata accessor for EMFetchOptionType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03F17A0()
{
  v2 = qword_1EB6DAB10;
  if (!qword_1EB6DAB10)
  {
    type metadata accessor for EMFetchOptionType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03F1820@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B03F1850(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B03F1890(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a5);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 25) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a6;
  *(v15 + 56) = a7;
  sub_1B039A170(sub_1B03F1FA0, v15);
}

uint64_t sub_1B03F19C0()
{
  v1 = v0[2];

  v2 = v0[4];

  MEMORY[0x1E69E5920](v0[5]);
  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1B03F1A20@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v36 = v17 - v32;
  sub_1B039A874(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_1B03F1D5C(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4 & 1;
  v24[4] = a5;
  v24[3] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v23 = a5;
  v21 = sub_1B09C0614;
  v22 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3848, &qword_1B0EA2E58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  sub_1B03F1A20(sub_1B0A1F490, v20, v18, MEMORY[0x1E69E73E0], v8, v19, v24);
  v11 = v24[0];

  MEMORY[0x1E69E5928](a6);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  sub_1B03F1FC4(a3, a4 & 1, v11, sub_1B0A1F4C0, v10);
}

uint64_t sub_1B03F1F48()
{
  v1 = v0[2];

  MEMORY[0x1E69E5920](v0[3]);
  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B03F1FC4(unsigned int a1, int a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v344 = a1;
  v343 = a2;
  v340 = a3;
  v341 = a4;
  v342 = a5;
  v274 = sub_1B09C1CDC;
  v275 = sub_1B0A1AD28;
  v276 = sub_1B039BBE8;
  v277 = sub_1B03F7AE0;
  v278 = sub_1B03FB510;
  v279 = sub_1B03FB664;
  v280 = sub_1B0394C30;
  v281 = sub_1B0394C24;
  v282 = sub_1B039BA2C;
  v283 = sub_1B039BA88;
  v284 = sub_1B039BB94;
  v285 = sub_1B0394C24;
  v286 = sub_1B039BBA0;
  v287 = sub_1B039BC08;
  v288 = sub_1B03F7B10;
  v289 = sub_1B039BC08;
  v290 = sub_1B03FB4F4;
  v291 = sub_1B039BCF8;
  v292 = sub_1B03FB670;
  v293 = sub_1B03B0DF8;
  v294 = sub_1B03FB774;
  v295 = sub_1B03B0DF8;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0399178;
  v299 = sub_1B0398F5C;
  v300 = sub_1B0398F5C;
  v301 = sub_1B039BA94;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0399178;
  v305 = sub_1B0398F5C;
  v306 = sub_1B0398F5C;
  v307 = sub_1B03991EC;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0398F5C;
  v310 = sub_1B03991EC;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0398F5C;
  v313 = sub_1B039BCEC;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0399260;
  v317 = sub_1B0398F5C;
  v318 = sub_1B0398F5C;
  v319 = sub_1B0399260;
  v320 = "Fatal error";
  v321 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v322 = "Message/PersistenceAdaptor.swift";
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v373 = 0;
  v374 = 0;
  v372 = 0;
  v323 = 0;
  v368 = 0;
  v366 = 0;
  v363 = 0;
  v364 = 0;
  v365 = 0;
  v360 = 0;
  v359 = 0;
  v329 = 0;
  v324 = sub_1B0E439A8();
  v325 = *(v324 - 8);
  v326 = v324 - 8;
  v327 = (*(v325 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v328 = v139 - v327;
  v330 = _s6LoggerVMa();
  v331 = *(v330 - 8);
  v332 = v331;
  v333 = *(v331 + 64);
  v334 = (v333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v329);
  v335 = v139 - v334;
  v336 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v337 = v139 - v336;
  v338 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v339 = v139 - v338;
  v378 = v139 - v338;
  v349 = sub_1B0E44468();
  v347 = *(v349 - 8);
  v348 = v349 - 8;
  v345 = (*(v347 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v344);
  v350 = (v139 - v345);
  v377 = v10;
  v376 = v11 & 1;
  v375 = v12;
  v373 = v13;
  v374 = v14;
  v372 = v5;

  v346 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v346);
  v15 = v347;
  *v350 = v346;
  v16 = *MEMORY[0x1E69E8020];
  (*(v15 + 104))();
  v351 = sub_1B0E44488();
  (*(v347 + 8))(v350, v349);
  result = v351;
  if (v351)
  {

    v271 = &v371;
    swift_beginAccess();
    v272 = *(v273 + 72);
    swift_endAccess();
    if (v272)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
      v139[1] = sub_1B0E46A48();
      v139[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0417568();
      v139[2] = sub_1B0E445D8();
      v341();

      return SyncRequest.ID.init()();
    }

    v18 = v323;
    v369 = v340;
    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3518, &qword_1B0EA1FB0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
    result = sub_1B03F1A20(v274, 0, v268, MEMORY[0x1E69E73E0], v19, v269, &v370);
    v270 = v18;
    if (!v18)
    {
      v252 = v370;
      v368 = v370;
      v253 = sub_1B03F4C20();
      v258 = v20;
      sub_1B0394784(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v339);
      v257 = *(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
      MEMORY[0x1E69E5928](v257);
      v248 = 7;
      v256 = swift_allocObject();
      v246 = v256 + 16;

      v247 = v273;
      swift_weakInit();

      MEMORY[0x1E69E5928](v257);
      sub_1B0394784(v339, v337);

      v249 = (*(v332 + 80) + 24) & ~*(v332 + 80);
      v250 = (v249 + v333 + 7) & 0xFFFFFFFFFFFFFFF8;
      v251 = (v250 + 23) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = v249;
      v23 = v21;
      v24 = v337;
      v255 = v23;
      *(v23 + 16) = v257;
      sub_1B03F4FD0(v24, v23 + v22);
      v25 = v342;
      v26 = v251;
      v27 = v255;
      v28 = v256;
      v29 = (v255 + v250);
      *v29 = v341;
      v29[1] = v25;
      *(v27 + v26) = v28;
      v254 = &v367;
      v264 = 0;
      swift_beginAccess();
      v30 = sub_1B039AA00();
      v262 = 1;
      v259 = sub_1B03F5058(v30, v344, v343 & 1, v252, v253, v258, v275, v255);
      v260 = v31;
      v261 = v32;
      v263 = v33;
      swift_endAccess();

      MEMORY[0x1E69E5920](v257);
      sub_1B039480C(v339);

      v366 = v259;
      LOBYTE(v363) = v260;
      v364 = v261;
      v365 = v263 & v262;
      v265 = (v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
      v266 = &v362;
      swift_beginAccess();
      v267 = *v265;

      swift_endAccess();
      if (v267)
      {
        v245 = v267;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v178 = v245;
      RestartableTimer.start()();
      v34 = v328;

      v179 = (v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
      v180 = &v361;
      v211 = 32;
      swift_beginAccess();
      v182 = *v179;
      v181 = *(v179 + 2);
      v183 = v179[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v193 = sub_1B03F7A78();
      v360 = v193;

      v184 = &unk_1EB737000;
      sub_1B0394784(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v335);
      (*(v325 + 16))(v34, v335, v324);
      sub_1B039480C(v335);

      sub_1B0394784(v273 + v184[314], v339);
      v35 = (v339 + *(v330 + 20));
      v185 = *v35;
      v186 = *(v35 + 1);
      sub_1B039480C(v339);

      v215 = 24;
      v212 = 7;
      v36 = swift_allocObject();
      v37 = v186;
      v196 = v36;
      *(v36 + 16) = v185;
      *(v36 + 20) = v37;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v38 = swift_allocObject();
      v39 = v186;
      v187 = v38;
      *(v38 + 16) = v185;
      *(v38 + 20) = v39;

      v40 = swift_allocObject();
      v41 = v187;
      v200 = v40;
      *(v40 + 16) = v276;
      *(v40 + 24) = v41;
      sub_1B0394868();
      sub_1B0394868();

      v188 = swift_allocObject();
      *(v188 + 16) = v259;

      v42 = swift_allocObject();
      v43 = v188;
      v203 = v42;
      *(v42 + 16) = v277;
      *(v42 + 24) = v43;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v191 = 33;
      v44 = swift_allocObject();
      v45 = v261;
      v46 = v263;
      v190 = v44;
      *(v44 + 16) = v260;
      *(v44 + 24) = v45;
      v195 = 1;
      v192 = 1;
      *(v44 + 32) = v46 & 1;

      v47 = swift_allocObject();
      v48 = v190;
      v189 = v47;
      *(v47 + 16) = v278;
      *(v47 + 24) = v48;

      v49 = swift_allocObject();
      v50 = v189;
      v205 = v49;
      *(v49 + 16) = v279;
      *(v49 + 24) = v50;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = swift_allocObject();
      v52 = v261;
      v53 = v192;
      v54 = v263;
      v207 = v51;
      *(v51 + 16) = v260;
      *(v51 + 24) = v52;
      *(v51 + 32) = v54 & v53;
      v213 = swift_allocObject();
      *(v213 + 16) = v193;
      v243 = sub_1B0E43988();
      v244 = sub_1B0E45908();
      v209 = 17;
      v216 = swift_allocObject();
      v198 = 16;
      *(v216 + 16) = 16;
      v217 = swift_allocObject();
      v202 = 4;
      *(v217 + 16) = 4;
      v55 = swift_allocObject();
      v194 = v55;
      *(v55 + 16) = v280;
      *(v55 + 24) = 0;
      v56 = swift_allocObject();
      v57 = v194;
      v218 = v56;
      *(v56 + 16) = v281;
      *(v56 + 24) = v57;
      v219 = swift_allocObject();
      *(v219 + 16) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v195;
      v58 = swift_allocObject();
      v59 = v196;
      v197 = v58;
      *(v58 + 16) = v282;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v197;
      v221 = v60;
      *(v60 + 16) = v283;
      *(v60 + 24) = v61;
      v222 = swift_allocObject();
      *(v222 + 16) = v198;
      v223 = swift_allocObject();
      *(v223 + 16) = v202;
      v62 = swift_allocObject();
      v199 = v62;
      *(v62 + 16) = v284;
      *(v62 + 24) = 0;
      v63 = swift_allocObject();
      v64 = v199;
      v224 = v63;
      *(v63 + 16) = v285;
      *(v63 + 24) = v64;
      v225 = swift_allocObject();
      *(v225 + 16) = 0;
      v226 = swift_allocObject();
      *(v226 + 16) = v202;
      v65 = swift_allocObject();
      v66 = v200;
      v201 = v65;
      *(v65 + 16) = v286;
      *(v65 + 24) = v66;
      v67 = swift_allocObject();
      v68 = v201;
      v227 = v67;
      *(v67 + 16) = v287;
      *(v67 + 24) = v68;
      v228 = swift_allocObject();
      *(v228 + 16) = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = v202;
      v69 = swift_allocObject();
      v70 = v203;
      v204 = v69;
      *(v69 + 16) = v288;
      *(v69 + 24) = v70;
      v71 = swift_allocObject();
      v72 = v204;
      v230 = v71;
      *(v71 + 16) = v289;
      *(v71 + 24) = v72;
      v231 = swift_allocObject();
      *(v231 + 16) = 34;
      v232 = swift_allocObject();
      v210 = 8;
      *(v232 + 16) = 8;
      v73 = swift_allocObject();
      v74 = v205;
      v206 = v73;
      *(v73 + 16) = v290;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v206;
      v233 = v75;
      *(v75 + 16) = v291;
      *(v75 + 24) = v76;
      v234 = swift_allocObject();
      *(v234 + 16) = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = v210;
      v77 = swift_allocObject();
      v78 = v207;
      v208 = v77;
      *(v77 + 16) = v292;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v208;
      v236 = v79;
      *(v79 + 16) = v293;
      *(v79 + 24) = v80;
      v237 = swift_allocObject();
      *(v237 + 16) = 0;
      v238 = swift_allocObject();
      *(v238 + 16) = v210;
      v81 = swift_allocObject();
      v82 = v213;
      v214 = v81;
      *(v81 + 16) = v294;
      *(v81 + 24) = v82;
      v83 = swift_allocObject();
      v84 = v214;
      v240 = v83;
      *(v83 + 16) = v295;
      *(v83 + 24) = v84;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v239 = sub_1B0E46A48();
      v241 = v85;

      v86 = v216;
      v87 = v241;
      *v241 = v296;
      v87[1] = v86;

      v88 = v217;
      v89 = v241;
      v241[2] = v297;
      v89[3] = v88;

      v90 = v218;
      v91 = v241;
      v241[4] = v298;
      v91[5] = v90;

      v92 = v219;
      v93 = v241;
      v241[6] = v299;
      v93[7] = v92;

      v94 = v220;
      v95 = v241;
      v241[8] = v300;
      v95[9] = v94;

      v96 = v221;
      v97 = v241;
      v241[10] = v301;
      v97[11] = v96;

      v98 = v222;
      v99 = v241;
      v241[12] = v302;
      v99[13] = v98;

      v100 = v223;
      v101 = v241;
      v241[14] = v303;
      v101[15] = v100;

      v102 = v224;
      v103 = v241;
      v241[16] = v304;
      v103[17] = v102;

      v104 = v225;
      v105 = v241;
      v241[18] = v305;
      v105[19] = v104;

      v106 = v226;
      v107 = v241;
      v241[20] = v306;
      v107[21] = v106;

      v108 = v227;
      v109 = v241;
      v241[22] = v307;
      v109[23] = v108;

      v110 = v228;
      v111 = v241;
      v241[24] = v308;
      v111[25] = v110;

      v112 = v229;
      v113 = v241;
      v241[26] = v309;
      v113[27] = v112;

      v114 = v230;
      v115 = v241;
      v241[28] = v310;
      v115[29] = v114;

      v116 = v231;
      v117 = v241;
      v241[30] = v311;
      v117[31] = v116;

      v118 = v232;
      v119 = v241;
      v241[32] = v312;
      v119[33] = v118;

      v120 = v233;
      v121 = v241;
      v241[34] = v313;
      v121[35] = v120;

      v122 = v234;
      v123 = v241;
      v241[36] = v314;
      v123[37] = v122;

      v124 = v235;
      v125 = v241;
      v241[38] = v315;
      v125[39] = v124;

      v126 = v236;
      v127 = v241;
      v241[40] = v316;
      v127[41] = v126;

      v128 = v237;
      v129 = v241;
      v241[42] = v317;
      v129[43] = v128;

      v130 = v238;
      v131 = v241;
      v241[44] = v318;
      v131[45] = v130;

      v132 = v240;
      v133 = v241;
      v241[46] = v319;
      v133[47] = v132;
      sub_1B0394964();

      if (os_log_type_enabled(v243, v244))
      {
        v134 = v270;
        v171 = sub_1B0E45D78();
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v172 = sub_1B03949A8(0);
        v173 = sub_1B03949A8(1);
        v174 = &v356;
        v356 = v171;
        v175 = &v355;
        v355 = v172;
        v176 = &v354;
        v354 = v173;
        sub_1B0394A48(2, &v356);
        sub_1B0394A48(8, v174);
        v352 = v296;
        v353 = v216;
        sub_1B03949FC(&v352, v174, v175, v176);
        v177 = v134;
        if (v134)
        {

          __break(1u);
        }

        else
        {
          v352 = v297;
          v353 = v217;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v169 = 0;
          v352 = v298;
          v353 = v218;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v168 = 0;
          v352 = v299;
          v353 = v219;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v167 = 0;
          v352 = v300;
          v353 = v220;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v166 = 0;
          v352 = v301;
          v353 = v221;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v165 = 0;
          v352 = v302;
          v353 = v222;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v164 = 0;
          v352 = v303;
          v353 = v223;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v163 = 0;
          v352 = v304;
          v353 = v224;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v162 = 0;
          v352 = v305;
          v353 = v225;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v161 = 0;
          v352 = v306;
          v353 = v226;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v160 = 0;
          v352 = v307;
          v353 = v227;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v159 = 0;
          v352 = v308;
          v353 = v228;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v158 = 0;
          v352 = v309;
          v353 = v229;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v157 = 0;
          v352 = v310;
          v353 = v230;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v156 = 0;
          v352 = v311;
          v353 = v231;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v155 = 0;
          v352 = v312;
          v353 = v232;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v154 = 0;
          v352 = v313;
          v353 = v233;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v153 = 0;
          v352 = v314;
          v353 = v234;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v152 = 0;
          v352 = v315;
          v353 = v235;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v151 = 0;
          v352 = v316;
          v353 = v236;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v150 = 0;
          v352 = v317;
          v353 = v237;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v149 = 0;
          v352 = v318;
          v353 = v238;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v148 = 0;
          v352 = v319;
          v353 = v240;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] Requesting sync #%u, kind: %{public}s, mailbox count: %ld. Running syncs count: %ld", v171, 0x3Bu);
          sub_1B03998A8(v172);
          sub_1B03998A8(v173);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v243);
      (*(v325 + 8))(v328, v324);
      v146 = swift_allocObject();
      *(v146 + 16) = v259;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v135 = v146;
      v136 = v261;
      v137 = v263;
      *(v146 + 24) = v260;
      *(v135 + 32) = v136;
      *(v135 + 40) = v137 & 1;
      v147 = v135 | 0x1000000000000000;
      sub_1B039C1F8(v135 | 0x1000000000000000);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v340)
      {
        v145 = v340;
        v144 = v340;
        v359 = v340;
        v142 = &v358;
        v358 = v340;
        v143 = &v357;
        swift_beginAccess();
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
        v138 = sub_1B0417878();
        sub_1B06A1FF8(v142, v141, v138);
        swift_endAccess();
      }

      return v259;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03F41B0()
{
  v5 = *(_s6LoggerVMa() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v6);
  v2 = *(v0 + v7 + 8);

  v3 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1B03F4348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F43B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F43F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F44B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F45B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4728()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4800()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4840()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F48D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F49B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F49F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03F4BE0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B03F4C20()
{
  v13 = 0;
  v0 = _s18MailboxPersistenceVMa();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v1 = &v5 - v6;
  v9 = &v5 - v6;
  v13 = v2;
  v7 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v8 = &v12;
  swift_beginAccess();
  sub_1B03F4D78(v7, v1);
  swift_endAccess();
  v11 = sub_1B03F4EB8();
  v10 = v3;
  sub_1B03F4F08(v9);
  return v11;
}

uint64_t _s18MailboxPersistenceVMa()
{
  v1 = qword_1EB6DBF00;
  if (!qword_1EB6DBF00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B03F4D78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = _s18MailboxPersistenceVMa();
  v5 = *(v7 + 20);
  v6 = *(a1 + v5);
  MEMORY[0x1E69E5928](v6);
  *(a2 + v5) = v6;
  v3 = *(v7 + 24);
  v12 = (a1 + v3);
  v14 = (a2 + v3);
  *(a2 + v3) = *(a1 + v3);
  v9 = *(a1 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[1] = v9;
  v10 = v12[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[2] = v10;
  v11 = v12[3];

  v14[3] = v11;
  v15 = v12[4];

  result = a2;
  v14[4] = v15;
  return result;
}

uint64_t sub_1B03F4EB8()
{
  v1 = (v0 + *(_s18MailboxPersistenceVMa() + 24));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B03F4F08(uint64_t a1)
{
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(a1);
  v7 = _s18MailboxPersistenceVMa();
  MEMORY[0x1E69E5920](*(a1 + *(v7 + 20)));
  v8 = (a1 + *(v7 + 24));
  v2 = v8[1];

  v3 = v8[2];

  v4 = v8[3];

  v5 = v8[4];

  return a1;
}

uint64_t sub_1B03F4FD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B03F5058(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v39 = a2;
  v38 = a3 & 1;
  v37 = a4;
  v35 = a5;
  v36 = a6;
  v33 = a7;
  v34 = a8;
  v32 = v8;
  v24 = sub_1B03F525C();
  v31 = v24;
  sub_1B03F52C0(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  SyncRequest.init(kind:mailboxes:updateMailboxList:)();
  v25 = v9;
  v26 = v10;
  v23 = v11;
  v28 = v9;
  v29 = v10;
  v30 = v11 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B03F5398(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B03F5540(v24, a2, a5, a6);
  v17 = v12;

  sub_1B03F79D0(v24, v25, v26, v23 & 1, v20, a1, 0, v22, v41, v17, a7, a8);
  memcpy(__dst, v41, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0E452E8();
  return v24;
}

uint64_t sub_1B03F525C()
{
  v3 = *(v0 + 8);
  v1 = SyncRequest.ID.makeNext()(v3);
  result = v3;
  *(v0 + 8) = v1;
  return result;
}

uint64_t SyncRequest.ID.makeNext()(int a1)
{
  if ((a1 + 1) > 1)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B03F52C0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 3;
    }

    else if (a1 == 3)
    {
      return sub_1B03904C0() & 1;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 2;
  }
}

BOOL sub_1B03F53C8(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B03F5540(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v35 = 0;
  v36 = 0;
  v30 = 0.0;
  v34 = a1;
  v33 = a2;
  v31 = a3;
  v32 = a4;
  switch(a2)
  {
    case 0:
    case 1:
      goto LABEL_5;
    case 2:
      v30 = -1.0;
      break;
    case 3:
      v30 = -1.0;
      break;
    default:
LABEL_5:
      v30 = 330.0;
      break;
  }

  v29[0] = sub_1B0E46A28();
  v29[1] = v4;
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28[4] = a3;
  v28[5] = a4;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v28[0] = v28[6];
  v28[1] = v28[7];
  v28[2] = v28[8];
  v28[3] = v28[9];
  sub_1B0E46A08();
  sub_1B03F5C58(v28);
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  v27 = a2;
  sub_1B03F5C84();
  sub_1B0E469F8();
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  v26 = a1;
  sub_1B0E469F8();
  v8 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v29);
  sub_1B0E44C88();
  v18 = sub_1B0E44AC8();
  v19 = CPPowerAssertionCreate();
  MEMORY[0x1E69E5920](v18);

  if (v19)
  {
    v17 = v19;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v35 = v17;
  v25[0] = sub_1B0E46A28();
  v25[1] = v9;
  v10 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v10);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[4] = a3;
  v24[5] = a4;
  sub_1B0E45738();
  v24[0] = v24[6];
  v24[1] = v24[7];
  v24[2] = v24[8];
  v24[3] = v24[9];
  sub_1B0E46A08();
  sub_1B03F5C58(v24);
  v11 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v11);

  sub_1B0E469F8();
  v12 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v12);

  sub_1B0E469F8();
  v13 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v13);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v25);
  sub_1B0E44C88();
  sub_1B0E44BC8();

  v16 = os_transaction_create();
  swift_unknownObjectRelease();

  if (v16)
  {
    v15 = v16;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  swift_unknownObjectRetain();
  v36 = v15;

  sub_1B03F7998(&v35);
  return v17;
}

unint64_t sub_1B03F5BE0()
{
  v2 = qword_1EB6DB898;
  if (!qword_1EB6DB898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03F5C58(uint64_t a1)
{
  v1 = *(a1 + 24);

  return a1;
}

unint64_t sub_1B03F5C84()
{
  v2 = qword_1EB6DBFE0;
  if (!qword_1EB6DBFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFE0);
    return WitnessTable;
  }

  return v2;
}

void sub_1B03F5EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFTaskAssertion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t tablesForOptionsAndCriterion(unsigned int a1, void *a2, int a3)
{
  v5 = a2;
  v6 = addOptionsForCriterion(a1, v5);
  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 & 0xFFBFFFF0;
  }

  if ((v7 & 8) != 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        v8 = 36864;
      }

      else
      {
        v8 = 4096;
      }
    }

    else
    {
      v8 = 4096;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = _os_feature_enabled_impl();
  if (a3)
  {
    v10 = 1572864;
  }

  else
  {
    v10 = 0x80000;
  }

  if ((v9 & (v7 >> 5)) == 0)
  {
    v10 = 0;
  }

  v11 = (v7 >> 1) & 2 | (4 * (v7 & 3)) | (((v7 >> 4) & 1) << 10) & 0xFFFFBFFF | (v7 >> 5) & 0x8000 | (((v7 >> 6) & 1) << 14);
  v12 = (v7 >> 5) & 0x70000 | v8 | v10;

  return v11 | v12;
}

uint64_t addOptionsForCriterion(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = [v3 includesCriterionSatisfyingPredicate:isReadLaterCriterion restrictive:0];
  v5 = [v3 includesCriterionSatisfyingPredicate:isSendLaterCriterion restrictive:0];
  v6 = [v3 includesCriterionSatisfyingPredicate:isFollowUpCriterion restrictive:0];
  v7 = [v3 includesCriterionSatisfyingPredicate:isSenderBucketCriterion restrictive:0];
  v8 = a1 | 0x100000;
  if ((((v6 | v5) | v4) & 1) == 0)
  {
    v8 = a1;
  }

  if (v7)
  {
    v9 = v8 | 0x200000;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

BOOL isFollowUpCriterion(void *a1)
{
  v1 = a1;
  v2 = [v1 criterionType] == 47 || objc_msgSend(v1, "criterionType") == 48;

  return v2;
}

uint64_t _criterionCannotUseSearchableIndex(void *a1)
{
  v1 = a1;
  v2 = [v1 criterionType];
  v3 = 0;
  if (v2 <= 0x29)
  {
    if (((1 << v2) & 0x30A00000204) != 0)
    {
      v3 = 1;
    }

    else if (v2 == 1)
    {
      v5 = [v1 _attributesForHeaderCriterion];
      v3 = [v5 count] != 0;
    }

    else if (v2 == 11)
    {
      v3 = [v1 preferFullTextSearch];
    }
  }

  return v3 ^ 1u;
}

__CFString *expressionForOperator(unint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 >= 8)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "unsupported operator %d", v5, 8u);
    }

    result = @"=";
  }

  else
  {
    result = off_1E7AA2430[a1];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id tablesForBaseTableAndOtherTables(int a1, unsigned int a2)
{
  v2 = "messages %s";
  v3 = a2 & 0xFFFFFFBF;
  v4 = "attachments AS attachment JOIN messages ON attachment.message_id = messages.ROWID %s";
  v5 = a2 & 0xFFFEFFFF;
  v6 = "senders JOIN sender_addresses ON senders.ROWID = sender_addresses.sender JOIN messages ON senders_addresses.address = messages.sender %s";
  v7 = "brand_indicators JOIN messages ON brand_indicators.ROWID = messages.brand_indicator %s";
  v8 = a2 & 0xFFFDFFFF;
  if (a1 != 0x20000)
  {
    v8 = a2;
    v7 = "messages %s";
  }

  if (a1 != 0x10000)
  {
    v5 = v8;
    v6 = v7;
  }

  if (a1 != 64)
  {
    v3 = v5;
    v4 = v6;
  }

  v9 = a2 & 0xFFFFFFFD;
  v10 = a2 & 0xFFFFFFF7;
  v11 = a2 & 0xFFFFFFEF;
  if (a1 == 16)
  {
    v2 = "mailboxes JOIN messages ON mailboxes.ROWID = messages.mailbox %s";
  }

  else
  {
    v11 = a2;
  }

  if (a1 == 8)
  {
    v2 = "addresses AS sender JOIN messages ON sender.ROWID = messages.sender %s";
  }

  else
  {
    v10 = v11;
  }

  if (a1 == 2)
  {
    v2 = "addresses AS recipient JOIN recipients ON recipient.ROWID = recipients.address JOIN messages ON recipients.message = messages.ROWID %s";
  }

  else
  {
    v9 = v10;
  }

  v12 = a1 <= 63;
  if (a1 <= 63)
  {
    v13 = v9;
  }

  else
  {
    v13 = v3;
  }

  if (v12)
  {
    v14 = v2;
  }

  else
  {
    v14 = v4;
  }

  v15 = joinsForTables(v13);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  asprintf(&v18, v14, v15);
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  free(v18);
  free(v15);

  return v16;
}

char *joinsForTables(int a1)
{
  v2 = "";
  if (_os_feature_enabled_impl())
  {
    v3 = EMIsGreymatterSupported();
    v4 = " LEFT OUTER JOIN generated_summaries ON message_global_data.generated_summary = generated_summaries.ROWID";
    if ((a1 & 0x1000) == 0)
    {
      v4 = "";
    }

    if (v3)
    {
      v2 = v4;
    }
  }

  v5 = _os_feature_enabled_impl();
  v6 = "";
  v7 = "";
  v8 = "";
  if (v5)
  {
    v7 = " LEFT OUTER JOIN business_addresses ON messages.sender = business_addresses.address";
    if ((a1 & 0x80000) == 0)
    {
      v7 = "";
    }

    v8 = " LEFT OUTER JOIN businesses ON business_addresses.business = businesses.ROWID";
    if ((a1 & 0x100000) == 0)
    {
      v8 = "";
    }
  }

  v9 = " JOIN searchable_rebuild ON messages.rowid = searchable_rebuild.message_id";
  if ((a1 & 0x40000) == 0)
  {
    v9 = "";
  }

  v10 = " LEFT OUTER JOIN brand_indicators ON messages.brand_indicator = brand_indicators.ROWID";
  if ((a1 & 0x20000) == 0)
  {
    v10 = "";
  }

  v11 = " LEFT OUTER JOIN sender_addresses ON messages.sender = sender_addresses.address LEFT OUTER JOIN senders ON sender_addresses.sender = senders.ROWID";
  if ((a1 & 0x10000) == 0)
  {
    v11 = "";
  }

  v12 = " LEFT OUTER JOIN message_global_data ON messages.global_message_id = message_global_data.ROWID";
  if ((a1 & 0x8000) == 0)
  {
    v12 = "";
  }

  v13 = " JOIN conversations AS conversations ON messages.conversation_id = conversations.conversation_id";
  if ((a1 & 0x400) == 0)
  {
    v13 = "";
  }

  v14 = " LEFT OUTER JOIN summaries ON messages.summary = summaries.ROWID";
  if ((a1 & 0x1000) == 0)
  {
    v14 = "";
  }

  v15 = " JOIN mailboxes AS mailbox ON messages.mailbox = mailbox.ROWID";
  if ((a1 & 0x10) == 0)
  {
    v15 = "";
  }

  if ((a1 & 8) != 0)
  {
    v16 = " LEFT OUTER JOIN addresses AS sender ON messages.sender = sender.ROWID";
  }

  else
  {
    v16 = "";
  }

  if ((a1 & 4) != 0)
  {
    v6 = " LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID";
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  asprintf(&v18, "%s%s%s%s%s%s%s%s%s%s%s%s", v6, v16, v15, v14, v13, v12, v2, v11, v10, v9, v7, v8);
  return v18;
}

void sub_1B03F790C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

uint64_t *sub_1B03F7998(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  v2 = a1[1];
  swift_unknownObjectRelease();
  return a1;
}

void *sub_1B03F79D0@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(__src[0]) = a1;
  LOBYTE(__src[1]) = a2;
  __src[2] = a3;
  LOBYTE(__src[3]) = a4;
  BYTE1(__src[3]) = a5;
  __src[4] = a6;
  LOBYTE(__src[5]) = a7 & 1;
  __src[6] = a8;
  __src[7] = a10;
  __src[8] = a11;
  __src[9] = a12;
  return memcpy(a9, __src, 0x50uLL);
}

uint64_t sub_1B03F7A78()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E452A8();

  return v1;
}

uint64_t sub_1B03F7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1B0E469C8();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1B03F7C00(uint64_t a1)
{
  v308 = a1;
  v236 = sub_1B0A1AB70;
  v237 = sub_1B039BBE8;
  v238 = sub_1B0394C30;
  v239 = sub_1B0394C24;
  v240 = sub_1B039BA2C;
  v241 = sub_1B039BA88;
  v242 = sub_1B039BB94;
  v243 = sub_1B0394C24;
  v244 = sub_1B039BBA0;
  v245 = sub_1B039BC08;
  v246 = sub_1B0A1AB68;
  v247 = sub_1B06BCD8C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v250 = sub_1B0399178;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0398F5C;
  v253 = sub_1B039BA94;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B0399178;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B03991EC;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B03992D4;
  v263 = sub_1B039BBE8;
  v264 = sub_1B0394C24;
  v265 = sub_1B039BA2C;
  v266 = sub_1B039BA88;
  v267 = sub_1B0394C24;
  v268 = sub_1B039BBA0;
  v269 = sub_1B039BC08;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0398F5C;
  v272 = sub_1B0399178;
  v273 = sub_1B0398F5C;
  v274 = sub_1B0398F5C;
  v275 = sub_1B039BA94;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0398F5C;
  v278 = sub_1B0399178;
  v279 = sub_1B0398F5C;
  v280 = sub_1B0398F5C;
  v281 = sub_1B03991EC;
  v333 = 0;
  v332 = 0;
  v282 = 0;
  v326 = 0;
  v318 = 0;
  v297 = 0;
  v283 = sub_1B0E439A8();
  v284 = *(v283 - 8);
  v285 = v283 - 8;
  v286 = (*(v284 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v287 = v119 - v286;
  v288 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v289 = v119 - v288;
  v290 = _s6LoggerVMa();
  v291 = (*(*(v290 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v297);
  v292 = v119 - v291;
  v293 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v294 = v119 - v293;
  v295 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v296 = v119 - v295;
  v298 = sub_1B0E44238();
  v299 = *(v298 - 8);
  v300 = v298 - 8;
  v301 = (*(v299 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v297);
  v302 = v119 - v301;
  v303 = sub_1B0E44288();
  v304 = *(v303 - 8);
  v305 = v303 - 8;
  v306 = (*(v304 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v308);
  v307 = v119 - v306;
  v333 = v8;
  v332 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v308)
  {
    v234 = v308;
    v231 = v308;
    v310 = v308;
    v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    sub_1B06E3518();
    sub_1B0E45728();
    v232 = v309;

    v233 = v232;
  }

  else
  {
    v233 = 0;
  }

  v229 = v233;
  if (v233)
  {
    v228 = v229;
    v226 = v229;
    v326 = v229;
    MailboxRowID.init(_:)([v229 databaseID], &v324);
    v227 = v324;
    if (v325)
    {
      v13 = v289;
      v184 = &unk_1EB737000;
      sub_1B0394784(v235 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v296);
      (*(v284 + 16))(v13, v296, v283);
      sub_1B039480C(v296);

      sub_1B0394784(v235 + v184[314], v294);
      v14 = (v294 + *(v290 + 20));
      v185 = *v14;
      v186 = *(v14 + 1);
      sub_1B039480C(v294);

      v188 = 24;
      v199 = 7;
      v15 = swift_allocObject();
      v16 = v186;
      v190 = v15;
      *(v15 + 16) = v185;
      *(v15 + 20) = v16;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = swift_allocObject();
      v18 = v186;
      v187 = v17;
      *(v17 + 16) = v185;
      *(v17 + 20) = v18;

      v198 = 32;
      v19 = swift_allocObject();
      v20 = v187;
      v195 = v19;
      *(v19 + 16) = v237;
      *(v19 + 24) = v20;
      sub_1B0394868();
      sub_1B0394868();

      MEMORY[0x1E69E5928](v226);
      v200 = swift_allocObject();
      *(v200 + 16) = v226;
      v220 = sub_1B0E43988();
      v221 = sub_1B0E458E8();
      v197 = 17;
      v202 = swift_allocObject();
      v192 = 16;
      *(v202 + 16) = 16;
      v203 = swift_allocObject();
      v194 = 4;
      *(v203 + 16) = 4;
      v21 = swift_allocObject();
      v189 = v21;
      *(v21 + 16) = v238;
      *(v21 + 24) = 0;
      v22 = swift_allocObject();
      v23 = v189;
      v204 = v22;
      *(v22 + 16) = v239;
      *(v22 + 24) = v23;
      v205 = swift_allocObject();
      *(v205 + 16) = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = 1;
      v24 = swift_allocObject();
      v25 = v190;
      v191 = v24;
      *(v24 + 16) = v240;
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v191;
      v207 = v26;
      *(v26 + 16) = v241;
      *(v26 + 24) = v27;
      v208 = swift_allocObject();
      *(v208 + 16) = v192;
      v209 = swift_allocObject();
      *(v209 + 16) = v194;
      v28 = swift_allocObject();
      v193 = v28;
      *(v28 + 16) = v242;
      *(v28 + 24) = 0;
      v29 = swift_allocObject();
      v30 = v193;
      v210 = v29;
      *(v29 + 16) = v243;
      *(v29 + 24) = v30;
      v211 = swift_allocObject();
      *(v211 + 16) = 0;
      v212 = swift_allocObject();
      *(v212 + 16) = v194;
      v31 = swift_allocObject();
      v32 = v195;
      v196 = v31;
      *(v31 + 16) = v244;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v196;
      v213 = v33;
      *(v33 + 16) = v245;
      *(v33 + 24) = v34;
      v214 = swift_allocObject();
      *(v214 + 16) = 0;
      v215 = swift_allocObject();
      *(v215 + 16) = 8;
      v35 = swift_allocObject();
      v36 = v200;
      v201 = v35;
      *(v35 + 16) = v246;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v201;
      v217 = v37;
      *(v37 + 16) = v247;
      *(v37 + 24) = v38;
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v216 = sub_1B0E46A48();
      v218 = v39;

      v40 = v202;
      v41 = v218;
      *v218 = v248;
      v41[1] = v40;

      v42 = v203;
      v43 = v218;
      v218[2] = v249;
      v43[3] = v42;

      v44 = v204;
      v45 = v218;
      v218[4] = v250;
      v45[5] = v44;

      v46 = v205;
      v47 = v218;
      v218[6] = v251;
      v47[7] = v46;

      v48 = v206;
      v49 = v218;
      v218[8] = v252;
      v49[9] = v48;

      v50 = v207;
      v51 = v218;
      v218[10] = v253;
      v51[11] = v50;

      v52 = v208;
      v53 = v218;
      v218[12] = v254;
      v53[13] = v52;

      v54 = v209;
      v55 = v218;
      v218[14] = v255;
      v55[15] = v54;

      v56 = v210;
      v57 = v218;
      v218[16] = v256;
      v57[17] = v56;

      v58 = v211;
      v59 = v218;
      v218[18] = v257;
      v59[19] = v58;

      v60 = v212;
      v61 = v218;
      v218[20] = v258;
      v61[21] = v60;

      v62 = v213;
      v63 = v218;
      v218[22] = v259;
      v63[23] = v62;

      v64 = v214;
      v65 = v218;
      v218[24] = v260;
      v65[25] = v64;

      v66 = v215;
      v67 = v218;
      v218[26] = v261;
      v67[27] = v66;

      v68 = v217;
      v69 = v218;
      v218[28] = v262;
      v69[29] = v68;
      sub_1B0394964();

      if (os_log_type_enabled(v220, v221))
      {
        v70 = v282;
        v177 = sub_1B0E45D78();
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v176 = 0;
        v178 = sub_1B03949A8(0);
        v179 = sub_1B03949A8(v176);
        v180 = &v323;
        v323 = v177;
        v181 = &v322;
        v322 = v178;
        v182 = &v321;
        v321 = v179;
        sub_1B0394A48(0, &v323);
        sub_1B0394A48(5, v180);
        v319 = v248;
        v320 = v202;
        sub_1B03949FC(&v319, v180, v181, v182);
        v183 = v70;
        if (v70)
        {

          __break(1u);
        }

        else
        {
          v319 = v249;
          v320 = v203;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v174 = 0;
          v319 = v250;
          v320 = v204;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v173 = 0;
          v319 = v251;
          v320 = v205;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v172 = 0;
          v319 = v252;
          v320 = v206;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v171 = 0;
          v319 = v253;
          v320 = v207;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v170 = 0;
          v319 = v254;
          v320 = v208;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v169 = 0;
          v319 = v255;
          v320 = v209;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v168 = 0;
          v319 = v256;
          v320 = v210;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v167 = 0;
          v319 = v257;
          v320 = v211;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v166 = 0;
          v319 = v258;
          v320 = v212;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v165 = 0;
          v319 = v259;
          v320 = v213;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v164 = 0;
          v319 = v260;
          v320 = v214;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v163 = 0;
          v319 = v261;
          v320 = v215;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          v162 = 0;
          v319 = v262;
          v320 = v217;
          sub_1B03949FC(&v319, &v323, &v322, &v321);
          _os_log_impl(&dword_1B0389000, v220, v221, "[%.*hhx-%.*X] Not temporarily growing fetch window, invalid row ID %lld.", v177, 0x21u);
          v161 = 0;
          sub_1B03998A8(v178);
          sub_1B03998A8(v179);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v220);
      (*(v284 + 8))(v289, v283);
      return MEMORY[0x1E69E5920](v226);
    }

    else
    {
      v225 = v227;
      v222 = v227;
      v318 = v227;
      v224 = *(v235 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
      MEMORY[0x1E69E5928](v224);

      v9 = swift_allocObject();
      v10 = v222;
      v11 = v236;
      *(v9 + 16) = v235;
      *(v9 + 24) = v10;
      v316 = v11;
      v317 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v312 = 1107296256;
      v313 = 0;
      v314 = sub_1B038C908;
      v315 = &block_descriptor_868;
      v223 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v307, v302, v223);
      (*(v299 + 8))(v302, v298);
      (*(v304 + 8))(v307, v303);
      _Block_release(v223);

      MEMORY[0x1E69E5920](v224);
      return MEMORY[0x1E69E5920](v226);
    }
  }

  else
  {
    v71 = v287;
    v128 = &unk_1EB737000;
    sub_1B0394784(v235 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v292);
    (*(v284 + 16))(v71, v292, v283);
    sub_1B039480C(v292);

    sub_1B0394784(v235 + v128[314], v294);
    v72 = (v294 + *(v290 + 20));
    v130 = *v72;
    v131 = *(v72 + 1);
    sub_1B039480C(v294);

    v129 = 24;
    v141 = 7;
    v73 = swift_allocObject();
    v74 = v131;
    v134 = v73;
    *(v73 + 16) = v130;
    *(v73 + 20) = v74;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v75 = swift_allocObject();
    v76 = v131;
    v132 = v75;
    *(v75 + 16) = v130;
    *(v75 + 20) = v76;

    v140 = 32;
    v77 = swift_allocObject();
    v78 = v132;
    v142 = v77;
    *(v77 + 16) = v263;
    *(v77 + 24) = v78;
    sub_1B0394868();
    sub_1B0394868();

    v159 = sub_1B0E43988();
    v160 = sub_1B0E458E8();
    v138 = 17;
    v144 = swift_allocObject();
    v136 = 16;
    *(v144 + 16) = 16;
    v145 = swift_allocObject();
    v139 = 4;
    *(v145 + 16) = 4;
    v79 = swift_allocObject();
    v133 = v79;
    *(v79 + 16) = v238;
    *(v79 + 24) = 0;
    v80 = swift_allocObject();
    v81 = v133;
    v146 = v80;
    *(v80 + 16) = v264;
    *(v80 + 24) = v81;
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = 1;
    v82 = swift_allocObject();
    v83 = v134;
    v135 = v82;
    *(v82 + 16) = v265;
    *(v82 + 24) = v83;
    v84 = swift_allocObject();
    v85 = v135;
    v149 = v84;
    *(v84 + 16) = v266;
    *(v84 + 24) = v85;
    v150 = swift_allocObject();
    *(v150 + 16) = v136;
    v151 = swift_allocObject();
    *(v151 + 16) = v139;
    v86 = swift_allocObject();
    v137 = v86;
    *(v86 + 16) = v242;
    *(v86 + 24) = 0;
    v87 = swift_allocObject();
    v88 = v137;
    v152 = v87;
    *(v87 + 16) = v267;
    *(v87 + 24) = v88;
    v153 = swift_allocObject();
    *(v153 + 16) = 0;
    v154 = swift_allocObject();
    *(v154 + 16) = v139;
    v89 = swift_allocObject();
    v90 = v142;
    v143 = v89;
    *(v89 + 16) = v268;
    *(v89 + 24) = v90;
    v91 = swift_allocObject();
    v92 = v143;
    v156 = v91;
    *(v91 + 16) = v269;
    *(v91 + 24) = v92;
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v155 = sub_1B0E46A48();
    v157 = v93;

    v94 = v144;
    v95 = v157;
    *v157 = v270;
    v95[1] = v94;

    v96 = v145;
    v97 = v157;
    v157[2] = v271;
    v97[3] = v96;

    v98 = v146;
    v99 = v157;
    v157[4] = v272;
    v99[5] = v98;

    v100 = v147;
    v101 = v157;
    v157[6] = v273;
    v101[7] = v100;

    v102 = v148;
    v103 = v157;
    v157[8] = v274;
    v103[9] = v102;

    v104 = v149;
    v105 = v157;
    v157[10] = v275;
    v105[11] = v104;

    v106 = v150;
    v107 = v157;
    v157[12] = v276;
    v107[13] = v106;

    v108 = v151;
    v109 = v157;
    v157[14] = v277;
    v109[15] = v108;

    v110 = v152;
    v111 = v157;
    v157[16] = v278;
    v111[17] = v110;

    v112 = v153;
    v113 = v157;
    v157[18] = v279;
    v113[19] = v112;

    v114 = v154;
    v115 = v157;
    v157[20] = v280;
    v115[21] = v114;

    v116 = v156;
    v117 = v157;
    v157[22] = v281;
    v117[23] = v116;
    sub_1B0394964();

    if (os_log_type_enabled(v159, v160))
    {
      v118 = v282;
      v121 = sub_1B0E45D78();
      v119[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v120 = 0;
      v122 = sub_1B03949A8(0);
      v123 = sub_1B03949A8(v120);
      v124 = &v331;
      v331 = v121;
      v125 = &v330;
      v330 = v122;
      v126 = &v329;
      v329 = v123;
      sub_1B0394A48(0, &v331);
      sub_1B0394A48(4, v124);
      v327 = v270;
      v328 = v144;
      sub_1B03949FC(&v327, v124, v125, v126);
      v127 = v118;
      if (v118)
      {

        __break(1u);
      }

      else
      {
        v327 = v271;
        v328 = v145;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[10] = 0;
        v327 = v272;
        v328 = v146;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[9] = 0;
        v327 = v273;
        v328 = v147;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[8] = 0;
        v327 = v274;
        v328 = v148;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[7] = 0;
        v327 = v275;
        v328 = v149;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[6] = 0;
        v327 = v276;
        v328 = v150;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[5] = 0;
        v327 = v277;
        v328 = v151;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[4] = 0;
        v327 = v278;
        v328 = v152;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[3] = 0;
        v327 = v279;
        v328 = v153;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[2] = 0;
        v327 = v280;
        v328 = v154;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        v119[1] = 0;
        v327 = v281;
        v328 = v156;
        sub_1B03949FC(&v327, &v331, &v330, &v329);
        _os_log_impl(&dword_1B0389000, v159, v160, "[%.*hhx-%.*X] Not temporarily growing fetch window, no mailboxes.", v121, 0x17u);
        v119[0] = 0;
        sub_1B03998A8(v122);
        sub_1B03998A8(v123);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v159);
    return (*(v284 + 8))(v287, v283);
  }
}

uint64_t sub_1B03FA8D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FA96C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FA9AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAA44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAA84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAB1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAB5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FABF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAC34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FACCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FADAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FADEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAE84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAEC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FAF9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FB034()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FB074()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FB10C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FB14C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03FB18C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03FB1CC()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B03B1E80();

  return sub_1B03F7B1C(v4, v3, &type metadata for MailboxRowID, v1);
}

uint64_t sub_1B03FB220()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07AC98C();

  return sub_1B03F7B1C(v4, v3, &type metadata for ActionID, v1);
}

uint64_t sub_1B03FB274()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F1F94();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1E88, v1);
}

uint64_t sub_1B03FB2C8()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B08205D8();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C8A78, v1);
}

uint64_t sub_1B03FB320()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v1 = sub_1B0874B30();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB388()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E43788();
  v1 = sub_1B08CA234();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB3E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E43108();
  v1 = sub_1B0911708();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB440()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E42E68();
  v1 = sub_1B092A830();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB49C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B0874D98();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1C68, v1);
}

uint64_t sub_1B03FB510()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*(v0 + 16));
}

uint64_t sub_1B03FB524@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1();
  switch(result)
  {
    case 2u:
      v3 = "periodic";
      v4 = 8;
      break;
    case 3u:
      v3 = "push";
      v4 = 4;
      break;
    case 4u:
      v3 = "userInitiated";
      v4 = 13;
      break;
    default:
      v3 = "backFill";
      v4 = 8;
      break;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_1B03FB684(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    sub_1B03B8BD8();
    v4 = sub_1B0E454A8();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B03FB784(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B03FBBAC();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B03FB834()
{
  v35 = 0;
  v32 = 0;
  memset(__b, 0, sizeof(__b));
  v28 = 0;
  v25 = sub_1B0E44468();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v26 = (v5 - v21);
  v35 = v0;

  v22 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v22);
  v1 = v23;
  *v26 = v22;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v27 = sub_1B0E44488();
  (*(v23 + 8))(v26, v25);
  result = v27;
  if (v27)
  {

    v7 = v20 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
    v8 = &v34;
    v9 = 32;
    v10 = 0;
    swift_beginAccess();
    v16 = *v7;
    v14 = *(v7 + 8);
    v17 = *(v7 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v11 = v20 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
    v12 = &v33;
    swift_beginAccess();
    v15 = *v11;
    v13 = *(v11 + 8);
    swift_endAccess();
    v4 = sub_1B039AA00();
    v18 = sub_1B03FBBD8(v15, v13 & 1, v4, v16, v14, v17);

    v32 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03ABAA0();
    v19 = &v36;
    sub_1B0E45448();
    memcpy(__b, v19, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3530, &qword_1B0EA1FB8);
      sub_1B0E45508();
      v6 = v29;
      if (v30)
      {
        break;
      }

      v5[2] = v6;
      v28 = v6;
      sub_1B09C4544(v6, 2);
    }

    sub_1B06B91B0(__b);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B03FBBD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v27 = v35;
  v35[0] = 0;
  v35[5] = a1;
  v36 = a2 & 1;
  v35[4] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v35[3] = a6;
  v9[1] = &type metadata for SyncRequest.ID;
  v9[2] = sub_1B0E46A48();
  sub_1B03ABAA0();
  v35[0] = sub_1B0E45438();
  v17 = &v32;
  sub_1B03FBF38(v20, v10, v11 & 1, v21, v22, v23, &v32);
  v14 = v33;
  v15 = v34;
  v6 = __swift_project_boxed_opaque_existential_0(&v32, v33);
  v13 = *(v14 - 8);
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v16 = v9 - v12;
  (*(v13 + 16))(v7);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3540, &unk_1B0EA1FD0);
  sub_1B0E45568();
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_1B03FC29C(v21, v22, v23, &v31);
  v19 = &v30;
  v30 = v31;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
  sub_1B03FC214();
  sub_1B0E45568();
  sub_1B03FD38C(v20, v21, v22, v23);
  v26 = v29;
  v29[0] = v29[7];
  v29[1] = v29[8];
  v29[2] = v29[9];
  v29[3] = v29[10];
  v29[4] = v29[11];
  v29[5] = v29[12];
  v29[6] = v29[13];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3910, &unk_1B0EA31A0);
  sub_1B03FD638();
  sub_1B0E45568();
  v28 = v35[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v27);
  return v28;
}

uint64_t *sub_1B03FBF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v18 = a1;
  v16[5] = a2;
  v17 = a3 & 1;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  if (sub_1B03FC170(a1, a2, a3 & 1, 62.0))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16[1] = a4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    v7 = sub_1B03FC4DC();
    MEMORY[0x1B27270C0](v16, v11, v7);
    v12 = v16[0];

    v15 = v12;
    a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3910, &unk_1B0EA31A0);
    a7[4] = sub_1B03FD638();
    *a7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3958, &qword_1B0EA31D0);
    sub_1B03FD500();
    sub_1B0E46718();
    return sub_1B039E440(&v15);
  }

  else
  {
    v10 = sub_1B0E46A48();
    a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    v9 = sub_1B03FC214();
    result = v10;
    a7[4] = v9;
    *a7 = v10;
  }

  return result;
}

uint64_t sub_1B03FC118()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

BOOL sub_1B03FC170(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    MonotonicTime.seconds(since:)(a2, a1);
    return a4 < v4;
  }
}

unint64_t sub_1B03FC214()
{
  v2 = qword_1EB6DB408;
  if (!qword_1EB6DB408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB408);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B03FC29C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3968, &qword_1B0EA31D8);
  sub_1B03FC4DC();
  v9 = sub_1B0E44F58();
  sub_1B039E440(v15);
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3970, &qword_1B0EA31E0);
  sub_1B03FCAD8();
  v10 = sub_1B0E44FF8();
  sub_1B039E440(&v14);
  v13[4] = v10;
  sub_1B03FCB60();
  sub_1B0E45768();
  v13[0] = v15[1];
  v13[1] = v15[2];
  v13[2] = v15[3];
  v13[3] = v15[4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3978, &qword_1B0EA31E8);
  v4 = sub_1B03FD2D8();
  v8 = sub_1B039CA88(sub_1B0A240D4, 0, v6, &type metadata for SyncRequest.ID, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v7);
  result = sub_1B03FD360(v13);
  *a4 = v8;
  return result;
}

unint64_t sub_1B03FC4DC()
{
  v2 = qword_1EB6DB280;
  if (!qword_1EB6DB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB280);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_7Message12RunningSyncsV9AssertionVSg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B03FC6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B03FC888(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 64)))
      {
        v3 = *(a1 + 64);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

BOOL sub_1B03FC9A0@<W0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 2);
  v5 = *(a1 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = static SyncRequest.Kind.__derived_enum_equals(_:_:)(v7, 4u);
  if (result)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

BOOL static SyncRequest.Kind.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if (a2 - 2 < 3)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

unint64_t sub_1B03FCAD8()
{
  v2 = qword_1EB6DB3F8;
  if (!qword_1EB6DB3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3970, &qword_1B0EA31E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03FCB60()
{
  v2 = qword_1EB6DB3F0;
  if (!qword_1EB6DB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3970, &qword_1B0EA31E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3F0);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall CommandConnection.restart()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + 16);
    sub_1B03FCCF8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B03FCCF8()
{
  v1 = _s6LoggerVMa_0();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = sub_1B0E43DF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1B0E43E18();
  v14 = (*(v9 + 88))(v12, v8);
  if (v14 == *MEMORY[0x1E6977C18])
  {
    goto LABEL_2;
  }

  if (v14 == *MEMORY[0x1E6977C10])
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E6977C08] || v14 == *MEMORY[0x1E6977C28])
  {
    goto LABEL_3;
  }

  if (v14 == *MEMORY[0x1E6977C00] || v14 == *MEMORY[0x1E6977C20])
  {
LABEL_7:
    v25 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v7, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E439A8();
    (*(*(v27 - 8) + 8))(v7, v27);
    v28 = sub_1B0E458D8();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 68158210;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v31 = v25 + *(v1 + 20);
      *(v29 + 10) = *v31;

      *(v29 + 11) = 2082;
      v32 = ConnectionID.debugDescription.getter(*(v31 + 4));
      v34 = sub_1B0399D64(v32, v33, &v38);

      *(v29 + 13) = v34;
      _os_log_impl(&dword_1B0389000, v26, v28, "[%.*hhx-%{public}s] Ignoring restart", v29, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x1B272C230](v30, -1, -1);
      MEMORY[0x1B272C230](v29, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_2:
  (*(v9 + 8))(v12, v8);
LABEL_3:
  v15 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v5, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v16 = sub_1B0E43988();
  v17 = sub_1B0E439A8();
  (*(*(v17 - 8) + 8))(v5, v17);
  v18 = sub_1B0E45908();
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 68158210;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = v15 + *(v1 + 20);
    *(v19 + 10) = *v21;

    *(v19 + 11) = 2082;
    v22 = ConnectionID.debugDescription.getter(*(v21 + 4));
    v24 = sub_1B0399D64(v22, v23, &v38);

    *(v19 + 13) = v24;
    _os_log_impl(&dword_1B0389000, v16, v18, "[%.*hhx-%{public}s] Restart", v19, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1B272C230](v20, -1, -1);
    MEMORY[0x1B272C230](v19, -1, -1);
  }

  else
  {
  }

  sub_1B0E43E38();
}

uint64_t sub_1B03FD208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03FD270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B03FD2D8()
{
  v2 = qword_1EB6DA570;
  if (!qword_1EB6DA570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3978, &qword_1B0EA31E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA570);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B03FD360(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *sub_1B03FD38C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v4 = sub_1B03FC4DC();
  MEMORY[0x1B27270C0](v11, v6, v4);
  v8 = v11[0];

  v10 = v8;
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3958, &qword_1B0EA31D0);
  sub_1B03FD500();
  sub_1B0E46718();

  return sub_1B039E440(&v10);
}

unint64_t sub_1B03FD500()
{
  v2 = qword_1EB6DA510;
  if (!qword_1EB6DA510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3958, &qword_1B0EA31D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03FD58C(unsigned __int8 a1)
{
  MEMORY[0x1B2726D20](10);
  v2 = a1 + 1;
  do
  {
    v3 = (v2 - 1);
    v2 = (v2 - 1) / 0x1Au;
    sub_1B0E44C78();
    sub_1B0E44D78();
  }

  while (v3 > 0x19);
  return 0;
}

unint64_t sub_1B03FD638()
{
  v2 = qword_1EB6DA458;
  if (!qword_1EB6DA458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3910, &unk_1B0EA31A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03FD6C8@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v11 = *(a1 + 8);
  v10 = *(a1 + 2);
  v8 = *(a1 + 4);
  v9 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = SyncRequest.Kind.isBackgroundSync.getter(v11);
  if (result)
  {
    result = MonotonicTime.seconds(since:)(v8, a2);
    if (v9)
    {
      if (v4 > 300.0)
      {
        *a3 = v7;
        *(a3 + 4) = 0;
        return result;
      }
    }

    else if (v4 > 31.0)
    {
      *a3 = v7;
      *(a3 + 4) = 0;
      return result;
    }

    *a3 = 0;
    *(a3 + 4) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

  return result;
}

void __destructor_8_s0_s8_s16_s72(uint64_t a1)
{
  v2 = *(a1 + 72);
}

void *_CreateICUSQLiteContext(uint64_t a1, char a2)
{
  v3 = malloc_type_malloc(0x2D0uLL, 0x10B004031052BF7uLL);
  v3[3] = 0;
  *(v3 + 16) = 65;
  v3[20] = v3 + 4;
  v3[21] = 128;
  v3[22] = 0;
  *(v3 + 46) = 0;
  v3[24] = v3 + 25;
  *(v3 + 178) = 256;
  CPICUCreateSearchCollator();
  *v3 = v10;
  v3[2] = v11;
  if (a2)
  {
    v5 = *v3;
    ucol_setAttribute();
    if ((a2 & 2) != 0)
    {
      goto LABEL_7;
    }

    v6 = *v3;
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_7;
    }

    v4 = *v3;
  }

  ucol_setAttribute();
LABEL_7:
  if ((a2 & 4) != 0)
  {
    v7 = *v3;
    ucol_setAttribute();
  }

  v8 = *v3;
  v3[3] = usearch_openFromCollator();
  return v3;
}

uint64_t sqlite3_exec_retry(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (1)
  {
    result = sqlite3_exec(a1, a2, a3, a4, a5);
    if (result != 262 && result != 5)
    {
      break;
    }

    usleep(0x14u);
    a1 = v9;
    a2 = v8;
    a3 = v7;
    a4 = v6;
    a5 = v5;
  }

  return result;
}

uint64_t sub_1B03FDD40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v51 = type metadata accessor for State.Logger();
  v12 = *(*(v51 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v51);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - v18;
  v20 = *(v5 + 256);

  *(v5 + 256) = MEMORY[0x1E69E7CD0];
  v21 = static MonotonicTime.now()();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v53 = *(v5 + 64);
  sub_1B03FE28C(a2, a3, v8, v21, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 64) = v53;
  v24 = *(v5 + 184);
  v25 = *(v5 + 216);
  v55 = *(v5 + 200);
  v56[0] = v25;
  *(v56 + 12) = *(v5 + 228);
  v53 = *(v5 + 168);
  v54 = v24;
  v26 = sub_1B03AFF44();
  v52 = a1;
  LOBYTE(v21) = sub_1B03FE5D4(a1, v26);

  if (v21)
  {
    sub_1B03906B8(a5, v19, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v27 = sub_1B0E43988();
    v28 = sub_1B0E458E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = v8;
      v8 = v29;
      *v29 = 68158208;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = *(v51 + 20);
      v49 = a2;
      v31 = v19[v30];
      sub_1B0390514(v19, type metadata accessor for State.Logger);
      *(v8 + 10) = v31;
      a2 = v49;
      *(v8 + 11) = 1024;
      *(v8 + 13) = v52;
      _os_log_impl(&dword_1B0389000, v27, v28, "[%.*hhx] Requesting sync with ID that already exists: #%u", v8, 0x11u);
      v32 = v8;
      LOBYTE(v8) = v48;
      MEMORY[0x1B272C230](v32, -1, -1);
    }

    else
    {
      sub_1B0390514(v19, type metadata accessor for State.Logger);
    }
  }

  if (a2 != 3 || a3)
  {
    sub_1B03FE6A0(v52, a2, a3, v8 & 1, 0, a5);
  }

  else
  {
    v33 = v50;
    sub_1B03906B8(a5, v50, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = sub_1B0E43988();
    v35 = sub_1B0E458E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 68158208;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v37 = v8;
      v38 = *(v33 + *(v51 + 20));
      sub_1B0390514(v33, type metadata accessor for State.Logger);
      *(v36 + 10) = v38;
      LOBYTE(v8) = v37;
      *(v36 + 11) = 1024;
      *(v36 + 13) = v52;
      _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx] Ignoring push sync #%u without mailboxes.", v36, 0x11u);
      MEMORY[0x1B272C230](v36, -1, -1);
    }

    else
    {
      sub_1B0390514(v33, type metadata accessor for State.Logger);
    }
  }

  v39 = *(v6 + 128);
  v40 = *(v6 + 136);
  v41 = static MonotonicTime.now()();
  result = sub_1B03FF968(v39, v40, v41, a2, v8 & 1);
  if (result)
  {
    *(v6 + 137) = 1;
  }

  else
  {
    sub_1B03906B8(a5, v15, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v43 = sub_1B0E43988();
    v44 = sub_1B0E45908();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 68157952;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v15;
      v47 = v15[*(v51 + 20)];
      sub_1B0390514(v46, type metadata accessor for State.Logger);
      *(v45 + 10) = v47;
      _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx] Skipping update of mailbox list for sync.", v45, 0xBu);
      MEMORY[0x1B272C230](v45, -1, -1);
    }

    else
    {
      sub_1B0390514(v15, type metadata accessor for State.Logger);
    }

    return sub_1B0B86B3C(a5);
  }

  return result;
}

unint64_t sub_1B03FE28C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1B03FE284(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1B0B2FF84(v20, a6 & 1);
      v24 = *v7;
      result = sub_1B03FE284(a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1B03FE454();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 4 * result) = a5;
    v29 = v26[7] + 32 * result;
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3 & 1;
    *(v29 + 24) = a4;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 32 * result;
  v28 = *(v27 + 8);
  *v27 = a1;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3 & 1;
  *(v27 + 24) = a4;
}

void *sub_1B03FE454()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C0, &qword_1B0EC5EA0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

BOOL sub_1B03FE5D4(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  v5 = sub_1B0E46CB8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
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

uint64_t sub_1B03FE6A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, NSObject *a5, uint64_t a6)
{
  v7 = v6;
  v68 = a4;
  v13 = type metadata accessor for State.Logger();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v17;
  v21 = *v7;
  v20 = *(v7 + 8);
  v22 = *(v7 + 16);
  v67 = *(v7 + 24);
  v69 = v21;
  if (v67)
  {
    v65 = v22;
    v66 = v20;
    if (a3)
    {
      v23 = v69;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = v68;
    }

    else
    {
      v64 = v16;
      v45 = v18;
      sub_1B03B1BD0(a6, v18, type metadata accessor for State.Logger);
      v23 = v69;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v46 = sub_1B0E43988();
      v62 = sub_1B0E45908();
      v47 = os_log_type_enabled(v46, v62);
      v24 = v68;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v61 = v46;
        v49 = v48;
        v60 = swift_slowAlloc();
        v70[0] = v60;
        *v49 = 68158466;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v7;
        v51 = *(v45 + *(v64 + 20));
        sub_1B03B1DC0(v45, type metadata accessor for State.Logger);
        *(v49 + 10) = v51;
        v7 = v50;
        *(v49 + 11) = 2082;
        v52 = sub_1B0E462C8();
        v54 = sub_1B0399D64(v52, v53, v70);
        v23 = v69;

        *(v49 + 13) = v54;
        *(v49 + 21) = 1024;
        *(v49 + 23) = a1;
        _os_log_impl(&dword_1B0389000, v61, v62, "[%.*hhx] Adding %{public}s sync #%u.", v49, 0x1Bu);
        v55 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x1B272C230](v55, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);
      }

      else
      {
        sub_1B03B1DC0(v45, type metadata accessor for State.Logger);
      }
    }

    v63 = v7;
    v44 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

    for (i = *(v23 + 16); i; i = *(v44 + 2))
    {
      v57 = 0;
      v23 = 0;
      v58 = (v44 + 32);
      while (v57 < i)
      {
        sub_1B03FEC8C(v58, a2, a3, v24 & 1, a5, a6, a1);
        ++v57;
        i = *(v44 + 2);
        v58 += 22;
        if (v57 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v44 = sub_1B03D0E54(v23);
    }

LABEL_16:
    result = sub_1B03BB638(v69, v66, v65, 1);
    v27 = 0;
    v22 = 0;
    v7 = v63;
    v40 = v67;
  }

  else
  {
    v64 = v16;
    sub_1B03B1BD0(a6, &v59 - v17, type metadata accessor for State.Logger);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E45908();

    v27 = v20;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v66 = v20;
      v29 = v28;
      v30 = swift_slowAlloc();
      v65 = v22;
      v31 = v30;
      v70[0] = v30;
      *v29 = 68158466;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v32 = v7;
      v33 = v19[*(v64 + 20)];
      sub_1B03B1DC0(v19, type metadata accessor for State.Logger);
      *(v29 + 10) = v33;
      v7 = v32;
      *(v29 + 11) = 2082;
      v34 = sub_1B0E462C8();
      v36 = sub_1B0399D64(v34, v35, v70);

      *(v29 + 13) = v36;
      *(v29 + 21) = 1024;
      *(v29 + 23) = a1;
      _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx] Adding %{public}s sync #%u (while local mailboxes are unknown).", v29, 0x1Bu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v37 = v31;
      v22 = v65;
      MEMORY[0x1B272C230](v37, -1, -1);
      v38 = v29;
      v27 = v66;
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    else
    {
      sub_1B03B1DC0(v19, type metadata accessor for State.Logger);
    }

    v40 = v67;
    v39 = v68;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v41;
    sub_1B0A9C540(a2, a3, v39 & 1, a1, isUniquelyReferenced_nonNull_native);
    result = sub_1B03BB638(v41, v27, v22, 0);
    v44 = v70[0];
  }

  *v7 = v44;
  *(v7 + 8) = v27;
  *(v7 + 16) = v22;
  *(v7 + 24) = v40;
  return result;
}

uint64_t sub_1B03FEC8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, unsigned int a7)
{
  v69 = a5;
  v67 = a7;
  v60 = a6;
  v10 = sub_1B0E439A8();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for State.Logger();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s12LocalMailboxV6LoggerVMa();
  v18 = *(*(v64 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v64);
  v63 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v62 = v59 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v65 = v59 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v66 = v59 - v25;
  v68 = a1;
  v27 = *a1;
  v26 = a1[1];
  v28 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59[1] = a2;
  v29 = SyncRequest.includes(_:)(v28, v26, a2, a3);

  if (v29)
  {
    if (!v69 || (result = sub_1B0A93330(v27, v26, v69), (result & 1) != 0))
    {
      if (a3)
      {
        sub_1B03B1BD0(v60, v17, type metadata accessor for State.Logger);
        v31 = v68[2];
        v32 = *(v68 + 6);
        v33 = *(v68 + 43);
        v34 = v61;
        (*(v61 + 16))(v13, v17, v10);
        v35 = v17[*(v14 + 20)];
        sub_1B03B1DC0(v17, type metadata accessor for State.Logger);
        v36 = v66;
        (*(v34 + 32))();
        v37 = v64;
        v38 = v36 + *(v64 + 20);
        *v38 = v35;
        *(v38 + 2) = v33;
        *(v38 + 8) = v31;
        *(v38 + 16) = v32;
        v39 = v65;
        sub_1B03B1BD0(v36, v65, _s12LocalMailboxV6LoggerVMa);
        v40 = v62;
        sub_1B03B1BD0(v36, v62, _s12LocalMailboxV6LoggerVMa);
        v41 = v63;
        sub_1B03B1BD0(v36, v63, _s12LocalMailboxV6LoggerVMa);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42 = sub_1B0E43988();
        v43 = sub_1B0E45908();

        if (os_log_type_enabled(v42, v43))
        {
          LODWORD(v61) = v43;
          v69 = v42;
          v44 = v37;
          v45 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v72 = v60;
          *v45 = 68159491;
          *(v45 + 4) = 2;
          *(v45 + 8) = 256;
          v46 = *(v40 + *(v37 + 20));
          sub_1B03B1DC0(v40, _s12LocalMailboxV6LoggerVMa);
          *(v45 + 10) = v46;
          *(v45 + 11) = 1040;
          *(v45 + 13) = 2;
          *(v45 + 17) = 512;
          v47 = *(v41 + *(v44 + 20) + 2);
          sub_1B03B1DC0(v41, _s12LocalMailboxV6LoggerVMa);
          *(v45 + 19) = v47;
          *(v45 + 21) = 2160;
          *(v45 + 23) = 0x786F626C69616DLL;
          *(v45 + 31) = 2085;
          v48 = v39 + *(v44 + 20);
          v49 = *(v48 + 8);
          v50 = *(v48 + 16);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B1DC0(v39, _s12LocalMailboxV6LoggerVMa);
          v70 = v49;
          v71 = v50;
          v51 = sub_1B0E44BA8();
          v53 = sub_1B0399D64(v51, v52, &v72);

          *(v45 + 33) = v53;
          *(v45 + 41) = 2082;
          v54 = sub_1B0E462C8();
          v56 = sub_1B0399D64(v54, v55, &v72);

          *(v45 + 43) = v56;
          *(v45 + 51) = 1024;
          *(v45 + 53) = v67;
          v57 = v69;
          _os_log_impl(&dword_1B0389000, v69, v61, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s sync #%u.", v45, 0x39u);
          v58 = v60;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v58, -1, -1);
          MEMORY[0x1B272C230](v45, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v41, _s12LocalMailboxV6LoggerVMa);
          sub_1B03B1DC0(v40, _s12LocalMailboxV6LoggerVMa);

          sub_1B03B1DC0(v39, _s12LocalMailboxV6LoggerVMa);
        }

        sub_1B03B1DC0(v36, _s12LocalMailboxV6LoggerVMa);
      }

      return sub_1B03FF334(v67);
    }
  }

  return result;
}

uint64_t _s12LocalMailboxV6LoggerVMa()
{
  result = qword_1EB6DD218;
  if (!qword_1EB6DD218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SyncRequest.includes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return sub_1B0A93330(a1, a2, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B03FF334(uint64_t a1)
{
  v3 = type metadata accessor for MailboxSyncState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = *(v1 + 96);
  if (!v10)
  {
    return sub_1B03FF318(&v16, a1);
  }

  v11 = v10 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v12 = _s13SelectedStateV7WrappedVMa(0);
  sub_1B03D0E68(v11 + *(v12 + 20), v7, type metadata accessor for MailboxSyncState);
  sub_1B0B149EC(v7, v9, type metadata accessor for MailboxSyncState);
  if (*(v9[19] + 16) != 15 || *(v9[20] + 16))
  {
    sub_1B03D44D0(v9, type metadata accessor for MailboxSyncState);
    return sub_1B03FF318(&v16, a1);
  }

  v14 = *(v9[21] + 16);
  result = sub_1B03D44D0(v9, type metadata accessor for MailboxSyncState);
  if (v14)
  {
    return sub_1B03FF318(&v16, a1);
  }

  return result;
}

uint64_t sub_1B03FF4C0(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  v11 = sub_1B0E46CB8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 4 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1B03FF5E0(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B03FF5E0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B04009E8(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1B0B07B08(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1B03FF750(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 4 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B03FF750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 4 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 4 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1B03FF968(uint64_t result, char a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  if (a2)
  {
    return 1;
  }

  if ((a5 & 1) == 0 && a4 - 5 > 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 < result)
  {
    if (__OFSUB__(result, a3))
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = __OFSUB__(0, result - a3);
    v6 = a3 - result;
    if (!v5)
    {
LABEL_11:
      v7 = v6 / 1000000000.0;
      if (a4 == 4)
      {
        if (v7 <= 4.0)
        {
LABEL_13:
          sub_1B03904C0();
          sub_1B03904C0();
          v9 = sub_1B0E43988();
          v10 = sub_1B0E45908();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v19 = v12;
            *v11 = 68158466;
            *(v11 + 4) = 3;
            *(v11 + 8) = 2048;
            *(v11 + 10) = v7;
            *(v11 + 18) = 2082;
            v13 = sub_1B0E462C8();
            v15 = sub_1B0399D64(v13, v14, &v19);

            *(v11 + 20) = v15;
            *(v11 + 28) = 1024;
            *(v11 + 30) = a5 & 1;
            _os_log_impl(&dword_1B0389000, v9, v10, "Last mailbox list update was %.*g seconds ago. Not requesting update. (kind: %{public}s, update was requested: %{BOOL}d", v11, 0x22u);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x1B272C230](v12, -1, -1);
            MEMORY[0x1B272C230](v11, -1, -1);
          }

          return 0;
        }
      }

      else if (v7 <= 47.0)
      {
        goto LABEL_13;
      }

      sub_1B03904C0();
      sub_1B03904C0();
      v16 = sub_1B0E43988();
      v17 = sub_1B0E45908();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 3;
        *(v18 + 8) = 2048;
        *(v18 + 10) = v7;
        _os_log_impl(&dword_1B0389000, v16, v17, "Last mailbox list update was %.*g seconds ago. Requesting update.", v18, 0x12u);
        MEMORY[0x1B272C230](v18, -1, -1);
      }

      return 1;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B03FFC1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  v7 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v7 = a2 & 1;
  }

  MEMORY[0x1B2728D70](v7);
  v8 = sub_1B0E46CB8();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48);
      v13 = *(v12 + v10);
      switch(v13)
      {
        case 2:
          if (a2 == 2)
          {
            result = 0;
            LOBYTE(a2) = 2;
            goto LABEL_18;
          }

          break;
        case 3:
          if (a2 == 3)
          {
            result = 0;
            LOBYTE(a2) = 3;
            goto LABEL_18;
          }

          break;
        case 4:
          if (a2 == 4)
          {
            result = 0;
            LOBYTE(a2) = 4;
            goto LABEL_18;
          }

          break;
        default:
          if ((a2 - 2) >= 3u && ((v13 ^ a2) & 1) == 0)
          {
            result = 0;
            LOBYTE(a2) = *(v12 + v10);
            goto LABEL_18;
          }

          break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  sub_1B0B05888(a2, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v17;
  result = 1;
LABEL_18:
  *a1 = a2;
  return result;
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

uint64_t sub_1B03FFDF0(_OWORD *a1)
{
  v2 = type metadata accessor for MailboxSyncState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = a1[9];
  v23 = a1[8];
  v24 = v9;
  v25 = a1[10];
  v10 = a1[5];
  v20[4] = a1[4];
  v20[5] = v10;
  v11 = a1[7];
  v21 = a1[6];
  v22 = v11;
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  v13 = a1[3];
  v20[2] = a1[2];
  v20[3] = v13;
  if (v21)
  {
    v14 = v21 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v15 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B041C8AC(v14 + *(v15 + 20), v6, type metadata accessor for MailboxSyncState);
    sub_1B041CE94(v6, v8, type metadata accessor for MailboxSyncState);
    sub_1B03A35B8(v20, &v19);
    v16 = sub_1B041CA3C();
    sub_1B041CE34(v8, type metadata accessor for MailboxSyncState);
    sub_1B03A3614(v20);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B03FFF7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B03FFFC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B040013C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  v28 = result;
LABEL_4:
  while (v5)
  {
    v9 = v5;
LABEL_10:
    v5 = (v9 - 1) & v9;
    if (*(v1 + 24) == 1)
    {
      v11 = *v1;
      v12 = *(*v1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = *(result + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9))));
        v15 = *v14;
        v16 = *(v1 + 8);
        v29 = *(v1 + 16);
        v17 = *(v14 + 8) | (*(v14 + 8) << 32);
        while (1)
        {
          v18 = v11 + 32 + 176 * v13;
          if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
          {
            v19 = *(v18 + 16);
            v20 = *(v19 + 16);
            if (v20 == *(v15 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v13 == v12)
          {
            goto LABEL_4;
          }
        }

        if (v20)
        {
          v21 = v19 == v15;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v19 + 32);
          v23 = (v15 + 32);
          while (v20)
          {
            if (*v22 != *v23)
            {
              goto LABEL_13;
            }

            ++v22;
            ++v23;
            if (!--v20)
            {
              goto LABEL_24;
            }
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

LABEL_24:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = v16;
        sub_1B03B9A2C(v11, v16, v29, 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v11;
        if ((result & 1) == 0)
        {
          result = sub_1B03D0E54(v11);
          v25 = result;
        }

        if (v13 >= *(v25 + 16))
        {
          goto LABEL_33;
        }

        v26 = v25 + 176 * v13;
        v27 = *(v26 + 168);

        *(v26 + 168) = MEMORY[0x1E69E7CD0];
        sub_1B03BB638(v11, v24, v29, 1);

        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *v1 = v25;
        *(v1 + 24) = 1;
        result = v28;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v6)
    {
      break;
    }

    v9 = *(v2 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1B0400370(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxSyncState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43828();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E43868();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = tracingSignposter.unsafeMutableAddressor();
  (*(v14 + 16))(v17, v18, v13);
  v19 = (a1 << 59) | ((*(v2 + 172) & 0xFFFFFF) << 35) | 0x180;
  sub_1B0E43838();
  sub_1B03A35B8(v2, &v44);
  sub_1B03A35B8(v2, &v44);
  sub_1B03A35B8(v2, &v44);
  sub_1B03A35B8(v2, &v44);
  v20 = sub_1B0E43858();
  v42 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v39 = v7;
    v41 = v12;
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v21 = 141558787;
    *(v21 + 4) = 0x786F626C69616DLL;
    *(v21 + 12) = 2085;
    v22 = *(v2 + 24);
    v44 = *(v2 + 16);
    v45 = v22;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B0E44BA8();
    v25 = sub_1B0399D64(v23, v24, &v43);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2048;
    v26 = *(*(v2 + 136) + 16);
    sub_1B03A3614(v2);
    *(v21 + 24) = v26;
    sub_1B03A3614(v2);
    *(v21 + 32) = 1024;
    v27 = *(v2 + 96);
    if (v27)
    {
      v28 = v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v29 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
      v38 = v13;
      v30 = v28 + v29;
      v31 = v39;
      sub_1B03D0E68(v30, v39, type metadata accessor for MailboxSyncState);
      v32 = sub_1B0BAF1A4(*(v31 + 152));
      v13 = v38;
      sub_1B03D44D0(v31, type metadata accessor for MailboxSyncState);
    }

    else
    {
      v32 = 0;
    }

    sub_1B03A3614(v2);
    *(v21 + 34) = v32;
    sub_1B03A3614(v2);
    v33 = v41;
    v34 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v20, v42, v34, "LocalMailbox", "Mailbox %{sensitive,mask.mailbox}s syncs: %ld, steps: %u", v21, 0x26u);
    v35 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B272C230](v35, -1, -1);
    MEMORY[0x1B272C230](v21, -1, -1);

    (*(v9 + 8))(v33, v8);
  }

  else
  {
    sub_1B03A3614(v2);
    sub_1B03A3614(v2);

    sub_1B03A3614(v2);
    sub_1B03A3614(v2);
    (*(v9 + 8))(v12, v8);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1B04007E8()
{
  if (*(*(v0 + 16) + 16))
  {
    sub_1B03FE284();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1B0400828@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_1B0400864(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 2), *(a1 + 24), *(a1 + 4)) & 1;
}

char *sub_1B04008D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DE0, &qword_1B0EC9CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B04009C8(char *a1, int64_t a2, char a3)
{
  result = sub_1B04008D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B04009E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 4 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

void sub_1B0400C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFLibraryStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0400E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MFWeakObjectCacheRef;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0401434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SMTPAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void MFPersistenceAdaptorPowerLogDidCreateInstance(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = a1;
  if (MFPersistenceAdaptorPowerLogDidCreateInstance_onceToken != -1)
  {
    dispatch_once(&MFPersistenceAdaptorPowerLogDidCreateInstance_onceToken, block);
  }
}

void __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MFUserAgent();
  v3 = [v2 isMaild];

  if (v3)
  {
    if (powerLogIdentifier_onceToken != -1)
    {
      __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke_cold_1();
    }

    v7 = @"IMAPv4";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    PPSSendTelemetry();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B0401970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMonitoredInvocation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0401ACC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromMailboxUidType(uint64_t a1)
{
  if (a1 > 6)
  {
    v1 = @"SentMessagesSpecial";
    v11 = @"DraftsSpecial";
    v12 = @"OutboxSpecial";
    if (a1 != 106)
    {
      v12 = 0;
    }

    if (a1 != 105)
    {
      v11 = v12;
    }

    if (a1 != 104)
    {
      v1 = v11;
    }

    v13 = @"ArchiveSpecial";
    v14 = @"TrashSpecial";
    if (a1 != 103)
    {
      v14 = 0;
    }

    if (a1 != 102)
    {
      v13 = v14;
    }

    if (a1 <= 103)
    {
      v1 = v13;
    }

    v6 = @"InboxSpecial";
    v15 = @"JunkSpecial";
    if (a1 != 101)
    {
      v15 = 0;
    }

    if (a1 != 100)
    {
      v6 = v15;
    }

    v16 = @"Inbox";
    v17 = @"Root";
    if (a1 != 8)
    {
      v17 = 0;
    }

    if (a1 != 7)
    {
      v16 = v17;
    }

    if (a1 <= 99)
    {
      v6 = v16;
    }

    v10 = a1 <= 101;
  }

  else
  {
    v1 = @"Sent";
    v2 = @"Drafts";
    v3 = @"Outbox";
    if (a1 != 6)
    {
      v3 = 0;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v4 = @"Archive";
    v5 = @"Trash";
    if (a1 != 3)
    {
      v5 = 0;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 <= 3)
    {
      v1 = v4;
    }

    v6 = @"Generic";
    v7 = @"Junk";
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    v8 = @"Invalid";
    v9 = @"Rootless";
    if (a1 != -100)
    {
      v9 = 0;
    }

    if (a1 != -500)
    {
      v8 = v9;
    }

    if (a1 < 0)
    {
      v6 = v8;
    }

    v10 = a1 <= 1;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1B0401EF8(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v17 = 0;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v14 = &v18;
  swift_beginAccess();
  v15 = *(v13 + 72);
  result = swift_endAccess();
  if ((v15 & 1) == 0)
  {
    v7 = static MonotonicTime.now()();
    v17 = v7;
    sub_1B03E248C(v12, v11);

    sub_1B03E14B4(v12);
    v10 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v8 = v5;
    v5[2] = v4;
    v5[3] = v12;
    v9 = &v16;
    swift_beginAccess();
    sub_1B04196DC(v7, sub_1B0A1F55C);
    swift_endAccess();

    return sub_1B03E1BE8(v12);
  }

  return result;
}

uint64_t sub_1B04020B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0412250()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412290()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0412328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412400()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04124D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04125B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04125F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412688()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04126C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412708()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04127A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04127E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0412828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04128C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412900()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04129D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412C20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412C60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412CF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412D38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0412DD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412EA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412F80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0412FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04131B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04131F0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0413230()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0413278()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B04132C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0413360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04133A0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04133E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041344C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04134E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413524()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04135BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04135FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04136D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041376C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04137AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413870()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04139E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413A20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413A60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0413B00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413B40()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0413B80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413BC0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0413C58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413E08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413E48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413EE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413F20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413FB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0413FF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04140D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0414158()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0414198()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04141D8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  sub_1B03E1BE8(v0[9]);
  return swift_deallocObject();
}

uint64_t sub_1B0414230()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0414270()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1B04142C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04144F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04145D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04146A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04146E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B04147AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041491C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B041495C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B04149F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414ACC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414BA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414BE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414C7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414D54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0414DD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B0414E14()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t _s6UploadVMa()
{
  v1 = qword_1EB6DBB08;
  if (!qword_1EB6DBB08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for MessageHeader()
{
  result = qword_1EB6DCC70;
  if (!qword_1EB6DCC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MessagesBeingDownloaded.MessageHeader()
{
  v1 = qword_1EB6DBD00;
  if (!qword_1EB6DBD00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s31PreviouslyDownloadedMessageDataVMa()
{
  v1 = qword_1EB6DBC60;
  if (!qword_1EB6DBC60)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s18SectionsToDownloadVMa()
{
  v1 = qword_1EB6DBBC8;
  if (!qword_1EB6DBBC8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s6LoggerVMa_1()
{
  v1 = qword_1EB6DBB18;
  if (!qword_1EB6DBB18)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0415104()
{
  v18 = 0;
  v14 = sub_1B0E44468();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = (&v4 - v10);
  v18 = v0;

  v11 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v11);
  v1 = v12;
  *v15 = v11;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v16 = sub_1B0E44488();
  (*(v12 + 8))(v15, v14);
  result = v16;
  if (v16)
  {

    v8 = (v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
    swift_beginAccess();
    if (*v8)
    {
      v5 = *v8;
      swift_unknownObjectRetain();
      swift_endAccess();
      swift_getObjectType();
      v6 = [v5 shouldDefer];
      swift_unknownObjectRelease();
      result = v6;
      v7 = v6;
    }

    else
    {
      result = swift_endAccess();
      v7 = 2;
    }

    v17 = v7;
    if (v7 == 2)
    {
      HIDWORD(v4) = 0;
    }

    else
    {
      HIDWORD(v4) = v17;
    }

    if ((v4 & 0x100000000) != 0)
    {
      return sub_1B09CE0B4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1B0415358(uint64_t a1)
{
  v32 = &v55;
  v33 = a1;
  v34 = 0;
  memset(v70, 0, 32);
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v44 = 0;
  v39 = 0;
  v42 = 0;
  v70[4] = a1;
  v35 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v36 = v37;
  v2 = sub_1B03FC4DC();
  v38 = &v68;
  MEMORY[0x1B2727080](&v69, v37, v2);
  sub_1B039E440(&v68);
  v67 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3938, &qword_1B0EA31B8);
  sub_1B0E465F8();
  for (i = 0; ; i = v15)
  {
    v31 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3940, &unk_1B0EA31C0);
    sub_1B0E46608();
    v3 = *v32;
    v58 = v32[1];
    v57 = v3;
    v4 = v32[2];
    v5 = v32[3];
    v6 = v32[4];
    v62 = v56;
    v61 = v6;
    v60 = v5;
    v59 = v4;
    v64 = v58;
    v63 = v57;
    *&v66[32] = v56;
    *&v66[16] = v6;
    *v66 = v5;
    v65 = v4;
    if (!*(&v6 + 1))
    {
      return sub_1B039E440(v70);
    }

    v26 = v63;
    v27 = *(&v64 + 1);
    v28 = *&v66[8];
    v29 = *&v66[16];
    v30 = *&v66[32];
    v54 = v63;
    LODWORD(v49) = DWORD2(v63);
    BYTE8(v49) = v64;
    *&v50 = *(&v64 + 1);
    WORD4(v50) = v65;
    *&v51 = *(&v65 + 1);
    BYTE8(v51) = v66[0];
    v52 = *&v66[8];
    v53 = *&v66[24];
    if (v66[0])
    {

      sub_1B041589C(v28);

      v15 = v31;
      continue;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v47 = v27;
    if (v27)
    {
      v48 = v47;
    }

    else
    {
      Activity.allMailboxIDs.getter(&v46);
      v45 = v46;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
      v25 = sub_1B03B8BD8();
      sub_1B0415814();
      v48 = sub_1B0E45598();
      if (v47)
      {
        sub_1B039E440(&v47);
      }
    }

    v7 = v31;
    v17 = v48;
    v44 = v48;
    v43 = v48;
    v20 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v18 = &v14 - 4;
    *(&v14 - 2) = v8;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
    sub_1B0415814();
    v9 = sub_1B0E45028();
    v21 = v7;
    v22 = v9;
    v23 = v20;
    if (v7)
    {
      break;
    }

    v42 = v22 & 1;
    if (v22)
    {
      v16 = &v41;
      v10 = sub_1B0E45398();
      v11 = v16;
      *(v12 + 40) = 1;
      v10(v11, 0);
    }

    sub_1B041589C(v28);

    v15 = v21;
  }

  result = v23;
  __break(1u);
  return result;
}

uint64_t Activity.allMailboxIDs.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1;
  v3 = *v1;
  v4 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CBF290(v6, v4);
  *a1 = result;
  return result;
}

unint64_t sub_1B0415814()
{
  v2 = qword_1EB6DAD40;
  if (!qword_1EB6DAD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3520, &unk_1B0E9E030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B041589C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B04158DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s18MailboxPersistenceVMa();
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  memcpy((a2 + *(v3 + 24)), (a1 + *(v3 + 24)), 0x28uLL);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t Activity.accountStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ConnectionStatus.Error(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = type metadata accessor for Activity.MailboxStatus(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  else
  {
    v15 = type metadata accessor for Activity(0);
    sub_1B03B5C80(v1 + *(v15 + 24), v6, &qword_1EB6E35A0, &qword_1B0E99850);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1B0398EFC(v6, &qword_1EB6E35A0, &qword_1B0E99850);
    }

    else
    {
      sub_1B0CC0084(v6, v11, type metadata accessor for ConnectionStatus.Error);
      sub_1B0CC0084(v11, a1, type metadata accessor for ConnectionStatus.Error);
    }

    v16 = type metadata accessor for Activity.MailboxStatus(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
  }
}

uint64_t sub_1B0415C08(uint64_t a1)
{
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  if (!(*(*(v10 - 8) + 48))(a1, 1) && swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
    v8 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v2 = *(v7 + 8);

          v3 = *(v7 + 24);
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
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
  }

  return a1;
}

_BYTE *sub_1B0415DC0(_BYTE *a1, _BYTE *a2)
{
  v14 = type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v7 = type metadata accessor for ConnectionStatus.Error(0);
    __dst = &a2[*(v7 + 20)];
    __src = &a1[*(v7 + 20)];
    v10 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(__dst, __src, *(v11 + 64));
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 32))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      (*(v11 + 56))(__dst, 0, 1, v10);
    }

    v4 = &a2[*(v7 + 24)];
    v5 = &a1[*(v7 + 24)];
    *v4 = *v5;
    v4[8] = v5[8];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v14 - 8) + 64));
  }

  return a2;
}

_BYTE *sub_1B0416014(_BYTE *a1, _BYTE *a2)
{
  v19 = type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v12 = type metadata accessor for ConnectionStatus.Error(0);
    __dst = &a2[*(v12 + 20)];
    v14 = &a1[*(v12 + 20)];
    v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, v14, *(*(v3 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          *__dst = *v14;
          v9 = v14[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v9;
          __dst[2] = v14[2];
          v10 = v14[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[3] = v10;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          *__dst = *v14;
          if (EnumCaseMultiPayload == 2)
          {
            v8 = v14[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v8;
          }

          else
          {
            v7 = v14[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v7;
          }

          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 16))(__dst, v14);
        swift_storeEnumTagMultiPayload();
      }

      (*(v16 + 56))(__dst, 0, 1, v15);
    }

    v4 = &a2[*(v12 + 24)];
    v5 = &a1[*(v12 + 24)];
    *v4 = *v5;
    v4[8] = v5[8];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  return a2;
}

uint64_t Activity.MailboxStatus.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Activity.MailboxStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04166B0(v1, v12, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x697463656E6E6F63;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B0CC0084(v12, v8, type metadata accessor for ConnectionStatus.Error);
      sub_1B04166B0(v8, v6, type metadata accessor for ConnectionStatus.Error);
      v18 = sub_1B0E44BA8();
      sub_1B0416AA0(v8, type metadata accessor for ConnectionStatus.Error);
      return v18;
    }

    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = v12[24];
    if (*v12)
    {
      result = 0xD000000000000010;
      if (v12[24])
      {
        return result;
      }

      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1B0E46298();

      v25 = 0xD000000000000012;
      v26 = 0x80000001B0F2EFA0;
      v24 = v15;
      v19 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v19);

      MEMORY[0x1B2726E80](761687853, 0xE400000000000000);
      v20 = v14 + v15;
      if (!__OFADD__(v14, v15))
      {
LABEL_18:
        v24 = v20;
        v22 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v22);

        return v25;
      }

      __break(1u);
LABEL_17:
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1B0E46298();

      v25 = 0x676E696863746566;
      v26 = 0xE90000000000002DLL;
      v24 = v15;
      v21 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v21);

      result = MEMORY[0x1B2726E80](761687853, 0xE400000000000000);
      v20 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    if (!v12[24])
    {
      goto LABEL_17;
    }

    if (v12[25])
    {
      return 0x676E69636E7973;
    }

    else
    {
      return 0x636E79732D6E69;
    }
  }
}

uint64_t sub_1B04166B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s16IMAP2Persistence8ActivityV13MailboxStatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Activity.MailboxStatus(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E0, &qword_1B0EE1930);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = &v29 + *(v17 + 56) - v18;
  sub_1B04166B0(a1, &v29 - v18, type metadata accessor for Activity.MailboxStatus);
  sub_1B04166B0(a2, v20, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_14;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_1B0416AA0(v19, type metadata accessor for Activity.MailboxStatus);
    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B04166B0(v19, v14, type metadata accessor for Activity.MailboxStatus);
    v23 = *(v14 + 1);
    v22 = *(v14 + 2);
    v24 = v14[24];
    v25 = v14[25];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v14 != *v20)
      {
LABEL_5:
        sub_1B0416AA0(v19, type metadata accessor for Activity.MailboxStatus);
        return 0;
      }

      v28 = v20[24];
      if (v24)
      {
        if (!v20[24])
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v23 != *(v20 + 1))
        {
          v28 = 1;
        }

        if ((v28 & 1) != 0 || v22 != *(v20 + 2))
        {
          goto LABEL_5;
        }
      }

      if ((v25 ^ v20[25]))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

LABEL_14:
    sub_1B0398EFC(v19, &qword_1EB6E60E0, &qword_1B0EE1930);
    return 0;
  }

  sub_1B04166B0(v19, v12, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0416AA0(v12, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_14;
  }

  sub_1B0CC0084(v20, v7, type metadata accessor for ConnectionStatus.Error);
  v26 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v7);
  sub_1B0416AA0(v7, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v12, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v19, type metadata accessor for Activity.MailboxStatus);
  return v26;
}

uint64_t sub_1B0416AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0416B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0416B60(uint64_t a1)
{
  type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
    v8 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v2 = *(v7 + 8);

          v3 = *(v7 + 24);
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
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
  }

  return a1;
}

uint64_t Activity.isServerUnavailable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ConnectionStatus.Error(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Activity(0);
  sub_1B03B5C80(v0 + *(v10 + 24), v4, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B0398EFC(v4, &qword_1EB6E35A0, &qword_1B0E99850);
  }

  else
  {
    sub_1B0CC0084(v4, v9, type metadata accessor for ConnectionStatus.Error);
    v11 = *v9;
    sub_1B0416AA0(v9, type metadata accessor for ConnectionStatus.Error);
    if (v11 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0416E8C(uint64_t a1)
{
  v25 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v33 = 0;
  v29 = v32;
  v32[0] = 0;
  v32[1] = 0;
  v18 = 0;
  v11 = sub_1B0E42A08();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v6 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v14);
  v17 = &v6 - v16;
  v38 = &v6 - v16;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3490, &unk_1B0E9BF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v6 - v19;
  v21 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v25);
  v27 = &v6 - v21;
  v37 = v3;
  v36 = v1;
  v22 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v23 = &v35;
  v24 = 0;
  swift_beginAccess();
  sub_1B03F4D78(v22, v27);
  swift_endAccess();
  v26 = &v34;
  swift_beginAccess();
  v28 = sub_1B0417318(v25, v27);
  swift_endAccess();
  sub_1B03F4F08(v27);
  v33 = v28;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
  sub_1B0417958();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34C0, &qword_1B0E9BF20);
    sub_1B0E46518();
    if ((*(v12 + 48))(v20, 1, v11) == 1)
    {
      break;
    }

    v4 = v15;
    (*(v12 + 32))(v17, v20, v11);
    v8 = [objc_opt_self() defaultCenter];
    (*(v12 + 16))(v4, v17, v11);
    v7 = sub_1B0E429C8();
    v10 = *(v12 + 8);
    v9 = v12 + 8;
    v10(v15, v11);
    [v8 postNotification_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    v10(v17, v11);
  }

  sub_1B039E440(v32);
}

uint64_t sub_1B0417318(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v9 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = (*(*(type metadata accessor for Activity(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v5 - v7;
  v14 = MEMORY[0x1EEE9AC00](v6);
  v13 = v3;
  v12 = v2;
  sub_1B03DEB8C(v14, (&v5 - v7));
  v10 = sub_1B04173E8(v8);
  v11 = sub_1B04175E0(v10, v9);

  return v11;
}

uint64_t sub_1B04173E8(char *a1)
{
  v5[2] = a1;
  sub_1B0E46A48();
  sub_1B0417568();
  v6 = sub_1B0E45438();
  Activity.allMailboxIDs.getter(v5);
  v4 = v5[0];
  sub_1B0E46A48();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  sub_1B0415814();
  sub_1B0E44FD8();
  sub_1B039E440(&v4);
  v2 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v2;

  sub_1B03DC998(a1);
  sub_1B039E440(&v6);
  return v2;
}

unint64_t sub_1B0417568()
{
  v2 = qword_1EB6DC000;
  if (!qword_1EB6DC000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B04175E0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v13 = a1;
  v18 = 0;
  v30[1] = 0;
  v29 = 0;
  v27 = 0;
  v30[3] = a1;
  v30[2] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0417568();
  v16 = sub_1B0E45418();

  v30[0] = v16;
  v26 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  v19 = v21;
  v22 = sub_1B0E42A08();
  v20 = v22;
  v23 = sub_1B0417878();
  v24 = 0;
  v25 = sub_1B0E44F58();
  v7 = v25;
  sub_1B039E440(v30);
  v29 = v25;
  v8 = *v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E45418();

  v28 = v9;
  v10 = &v4;
  MEMORY[0x1EEE9AC00](&v4);
  v11 = sub_1B0E44F58();
  v5 = v11;
  sub_1B039E440(&v28);
  v27 = v5;
  v6 = sub_1B0E45238();

  sub_1B0417900(v12, v13);
  return v6;
}

unint64_t sub_1B0417878()
{
  v2 = qword_1EB6DAD20;
  if (!qword_1EB6DAD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16D8, &qword_1B0E998D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0417900(uint64_t *a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *a1;
  *a1 = a2;
}

unint64_t sub_1B0417958()
{
  v2 = qword_1EB6DB690;
  if (!qword_1EB6DB690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B04179E0(unsigned int a1)
{
  v171 = a1;
  v132 = sub_1B039BBE8;
  v133 = sub_1B07AC984;
  v134 = sub_1B0394C30;
  v135 = sub_1B0394C24;
  v136 = sub_1B039BA2C;
  v137 = sub_1B039BA88;
  v138 = sub_1B039BB94;
  v139 = sub_1B0394C24;
  v140 = sub_1B039BBA0;
  v141 = sub_1B039BC08;
  v142 = sub_1B03FB220;
  v143 = sub_1B039BCF8;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0399178;
  v147 = sub_1B0398F5C;
  v148 = sub_1B0398F5C;
  v149 = sub_1B039BA94;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0399178;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B03991EC;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B039BCEC;
  v185 = 0;
  v184 = 0;
  v159 = 0;
  v165 = 0;
  v160 = sub_1B0E439A8();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v164 = &v68 - v163;
  v166 = _s6LoggerVMa();
  v167 = (*(*(v166 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v165);
  v168 = &v68 - v167;
  v169 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v170 = &v68 - v169;
  v176 = sub_1B0E44468();
  v174 = *(v176 - 8);
  v175 = v176 - 8;
  v172 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v171);
  v177 = (&v68 - v172);
  v185 = v4;
  v184 = v1;

  v173 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v173);
  v5 = v174;
  *v177 = v173;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v178 = sub_1B0E44488();
  (*(v174 + 8))(v177, v176);
  result = v178;
  if (v178)
  {
    v8 = v164;

    v92 = &unk_1EB737000;
    sub_1B0394784(v131 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v170);
    (*(v161 + 16))(v8, v170, v160);
    sub_1B039480C(v170);

    sub_1B0394784(v131 + v92[314], v168);
    v9 = (v168 + *(v166 + 20));
    v94 = *v9;
    v95 = *(v9 + 1);
    sub_1B039480C(v168);

    v93 = 24;
    v108 = 7;
    v10 = swift_allocObject();
    v11 = v95;
    v99 = v10;
    *(v10 + 16) = v94;
    *(v10 + 20) = v11;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = swift_allocObject();
    v13 = v95;
    v96 = v12;
    *(v12 + 16) = v94;
    *(v12 + 20) = v13;

    v107 = 32;
    v14 = swift_allocObject();
    v15 = v96;
    v104 = v14;
    *(v14 + 16) = v132;
    *(v14 + 24) = v15;
    sub_1B0394868();
    sub_1B0394868();

    v97 = swift_allocObject();
    *(v97 + 16) = v171;

    v16 = swift_allocObject();
    v17 = v97;
    v109 = v16;
    *(v16 + 16) = v133;
    *(v16 + 24) = v17;

    v129 = sub_1B0E43988();
    v130 = sub_1B0E458D8();
    v106 = 17;
    v111 = swift_allocObject();
    v101 = 16;
    *(v111 + 16) = 16;
    v112 = swift_allocObject();
    v103 = 4;
    *(v112 + 16) = 4;
    v18 = swift_allocObject();
    v98 = v18;
    *(v18 + 16) = v134;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v98;
    v113 = v19;
    *(v19 + 16) = v135;
    *(v19 + 24) = v20;
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = 1;
    v21 = swift_allocObject();
    v22 = v99;
    v100 = v21;
    *(v21 + 16) = v136;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v100;
    v116 = v23;
    *(v23 + 16) = v137;
    *(v23 + 24) = v24;
    v117 = swift_allocObject();
    *(v117 + 16) = v101;
    v118 = swift_allocObject();
    *(v118 + 16) = v103;
    v25 = swift_allocObject();
    v102 = v25;
    *(v25 + 16) = v138;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v102;
    v119 = v26;
    *(v26 + 16) = v139;
    *(v26 + 24) = v27;
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v103;
    v28 = swift_allocObject();
    v29 = v104;
    v105 = v28;
    *(v28 + 16) = v140;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v105;
    v122 = v30;
    *(v30 + 16) = v141;
    *(v30 + 24) = v31;
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v32 = swift_allocObject();
    v33 = v109;
    v110 = v32;
    *(v32 + 16) = v142;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v110;
    v126 = v34;
    *(v34 + 16) = v143;
    *(v34 + 24) = v35;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v125 = sub_1B0E46A48();
    v127 = v36;

    v37 = v111;
    v38 = v127;
    *v127 = v144;
    v38[1] = v37;

    v39 = v112;
    v40 = v127;
    v127[2] = v145;
    v40[3] = v39;

    v41 = v113;
    v42 = v127;
    v127[4] = v146;
    v42[5] = v41;

    v43 = v114;
    v44 = v127;
    v127[6] = v147;
    v44[7] = v43;

    v45 = v115;
    v46 = v127;
    v127[8] = v148;
    v46[9] = v45;

    v47 = v116;
    v48 = v127;
    v127[10] = v149;
    v48[11] = v47;

    v49 = v117;
    v50 = v127;
    v127[12] = v150;
    v50[13] = v49;

    v51 = v118;
    v52 = v127;
    v127[14] = v151;
    v52[15] = v51;

    v53 = v119;
    v54 = v127;
    v127[16] = v152;
    v54[17] = v53;

    v55 = v120;
    v56 = v127;
    v127[18] = v153;
    v56[19] = v55;

    v57 = v121;
    v58 = v127;
    v127[20] = v154;
    v58[21] = v57;

    v59 = v122;
    v60 = v127;
    v127[22] = v155;
    v60[23] = v59;

    v61 = v123;
    v62 = v127;
    v127[24] = v156;
    v62[25] = v61;

    v63 = v124;
    v64 = v127;
    v127[26] = v157;
    v64[27] = v63;

    v65 = v126;
    v66 = v127;
    v127[28] = v158;
    v66[29] = v65;
    sub_1B0394964();

    if (os_log_type_enabled(v129, v130))
    {
      v67 = v159;
      v85 = sub_1B0E45D78();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v86 = sub_1B03949A8(0);
      v87 = sub_1B03949A8(1);
      v88 = &v183;
      v183 = v85;
      v89 = &v182;
      v182 = v86;
      v90 = &v181;
      v181 = v87;
      sub_1B0394A48(2, &v183);
      sub_1B0394A48(5, v88);
      v179 = v144;
      v180 = v111;
      sub_1B03949FC(&v179, v88, v89, v90);
      v91 = v67;
      if (v67)
      {

        __break(1u);
      }

      else
      {
        v179 = v145;
        v180 = v112;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v83 = 0;
        v179 = v146;
        v180 = v113;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v82 = 0;
        v179 = v147;
        v180 = v114;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v81 = 0;
        v179 = v148;
        v180 = v115;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v80 = 0;
        v179 = v149;
        v180 = v116;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v79 = 0;
        v179 = v150;
        v180 = v117;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v78 = 0;
        v179 = v151;
        v180 = v118;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v77 = 0;
        v179 = v152;
        v180 = v119;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v76 = 0;
        v179 = v153;
        v180 = v120;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v75 = 0;
        v179 = v154;
        v180 = v121;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v74 = 0;
        v179 = v155;
        v180 = v122;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v73 = 0;
        v179 = v156;
        v180 = v123;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v72 = 0;
        v179 = v157;
        v180 = v124;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v71 = 0;
        v179 = v158;
        v180 = v126;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        _os_log_impl(&dword_1B0389000, v129, v130, "[%.*hhx-%.*X] Action %s did complete.", v85, 0x21u);
        sub_1B03998A8(v86);
        sub_1B03998A8(v87);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v129);
    (*(v161 + 8))(v164, v160);
    v69 = *(v131 + 48);
    v70 = *(v131 + 56);

    v69(v171, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}
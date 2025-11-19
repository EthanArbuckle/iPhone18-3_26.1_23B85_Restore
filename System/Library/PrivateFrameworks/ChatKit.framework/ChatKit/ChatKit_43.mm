uint64_t CKConversation.cachedPrimaryFilterModes()()
{
  v1 = [v0 cachedCalculatedFilterModes];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  sub_19021DC70();
  sub_190218944();
  sub_190D57410();

  v3 = sub_190D574C0();

  return v3;
}

uint64_t CKConversation.containsCachedFilterMode(targetfilterMode:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a1;
  v4 = sub_19021E69C(inited);
  swift_setDeallocating();
  v5 = [v1 cachedCalculatedFilterModes];
  if (v5)
  {
    sub_19021DC70();
    sub_190218944();
    sub_190D57410();

    v6 = sub_190D574B0();

    LOBYTE(v5) = sub_1908A9438(v6, v4);
  }

  return v5 & 1;
}

Swift::Bool __swiftcall CKConversation.containsCachedFilterMode(targetFilterNumberModes:)(Swift::OpaquePointer targetFilterNumberModes)
{
  v2 = sub_190D52690();
  sub_190CAC6A8(v2);

  v3 = sub_190D574B0();

  v4 = [v1 cachedCalculatedFilterModes];
  if (v4)
  {
    sub_19021DC70();
    sub_190218944();
    sub_190D57410();

    v5 = sub_190D574B0();

    LOBYTE(v4) = sub_1908A9438(v5, v3);
  }

  return v4 & 1;
}

void CKConversation.satisfies(filterModes:)()
{
  v0 = sub_190D57450();
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = sub_1902291F4();
    v3 = sub_1908A9438(v2, v1);

    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v4 = sub_190D57470();
  v5 = v4;
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_190D52690();
  v11 = 0;
  while (v9)
  {
LABEL_14:
    v13 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    if (sub_190D57AF0())
    {
      goto LABEL_46;
    }

    v9 &= v9 - 1;
    if (v13 <= 10)
    {
      if (v13 != 8)
      {
        if (v13 != 10)
        {
          goto LABEL_46;
        }

        v28 = [v39 hasCancellableScheduledMessage];
        goto LABEL_41;
      }

      if (([v39 hasUnreadMessages] & 1) == 0)
      {
        v28 = [v39 shouldHoldInUnreadFilter];
LABEL_41:
        if ((v28 & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      if ((v13 - 11) < 2)
      {
        v35 = v13;
        if (IMSharedHelperMessageSIMFilteringEnabled())
        {
          v33 = v10;
          v34 = v6;
          v36 = v5;
          v14 = sub_190D57AC0();
          v15 = v14 + 56;
          v16 = 1 << *(v14 + 32);
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v18 = v17 & *(v14 + 56);
          v19 = (v16 + 63) >> 6;
          v37 = v14;
          sub_190D52690();
          v20 = 0;
          do
          {
            if (!v18)
            {
              while (1)
              {
                v22 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v22 >= v19)
                {

                  goto LABEL_46;
                }

                v18 = *(v15 + 8 * v22);
                ++v20;
                if (v18)
                {
                  v20 = v22;
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_49;
            }

LABEL_28:
            v23 = *(*(v37 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
            v24 = [v39 lastAddressedHandle];
            if (v24)
            {
              v25 = v24;
              sub_190D56F10();
            }

            v38 = v23;
            v26 = [v39 lastAddressedSIMID];
            if (v26)
            {
              v27 = v26;
              sub_190D56F10();
            }

            v18 &= v18 - 1;
            v21 = sub_190D57B70();
          }

          while ((v21 & 1) == 0);

          v5 = v36;
          v10 = v33;
          v6 = v34;
          if (v35 == v38)
          {
            continue;
          }
        }

LABEL_46:

        return;
      }

      if (v13 != 26)
      {
        goto LABEL_46;
      }

      v29 = v10;
      v30 = [objc_opt_self() sharedInstance];
      if (!v30)
      {
        goto LABEL_50;
      }

      v31 = v30;
      v32 = [v30 draftForConversation:v39 fetchPolicy:2];

      if (!v32)
      {
        goto LABEL_46;
      }

      v10 = v29;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_46;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void CKConversation.mergedThreadsFilterModes()()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernFilteringEnabled];

  if (!v2)
  {
    return;
  }

  v3 = [v0 chat];
  if (!v3)
  {
    return;
  }

  v4 = MEMORY[0x1E69E7CD0];
  v5 = [v3 mergedThreadFilterModes];

  sub_19021DC70();
  sub_190218944();
  v6 = sub_190D57410();

  v25[1] = v4;
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_190D581B0();
    sub_190D574D0();
    v6 = v25[2];
    v7 = v25[3];
    v8 = v25[4];
    v9 = v25[5];
    v10 = v25[6];
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
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

    v10 = v13 & *(v6 + 56);
  }

  v24 = v8;
  v14 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_190D581E0() || (swift_dynamicCast(), v19 = v25[0], v17 = v9, v18 = v10, !v25[0]))
    {
LABEL_25:
      sub_190219C78();
      return;
    }

LABEL_21:
    [v19 integerValue];
    IMFilterAction();
    v20 = sub_190D57BF0();
    if ((v21 & 1) == 0)
    {
      sub_19022C974(v25, v20);
    }

    [v19 integerValue];
    IMFilterSubAction();
    v22 = sub_190D57C20();
    if ((v23 & 1) == 0)
    {
      sub_19022C974(v25, v22);
    }

    v9 = v17;
    v10 = v18;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_17:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_25;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t CKConversation.calculateFilterModeNumbers()()
{
  CKConversation.calculateFilterModes()();
  v0 = sub_190D57440();

  return v0;
}

id CKConversation.chatPriorityLocalizedStringKey.getter()
{
  result = [v0 chat];
  if (result)
  {
    v2 = result;
    v3 = [result priorityClassification];
    if (v3 > 3)
    {
      if (v3 == 4)
      {

        return 0xD000000000000013;
      }

      if (v3 != 5)
      {
        if (v3 == 6)
        {

          v4 = 11;
          return (v4 | 0xD000000000000010);
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 1)
      {

        return 0xD000000000000017;
      }

      if (v3 != 2)
      {
        if (v3 == 3)
        {

          v4 = 5;
          return (v4 | 0xD000000000000010);
        }

LABEL_15:

        return 0;
      }
    }

    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_190BE4B50(uint64_t a1, uint64_t a2, unint64_t a3, os_log_t a4)
{
  v63 = a2;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3F8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = [a4 cachedCalculatedFilterModes];
  if (v9)
  {
    v10 = v9;
    sub_19021DC70();
    sub_190218944();
    sub_190D57410();

    v11 = sub_190D574C0();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  if ((sub_1902189F8(v11, a1) & 1) == 0)
  {
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D8E0);
    v13 = a4;
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    v14 = sub_190D53020();
    v15 = sub_190D576C0();

    if (os_log_type_enabled(v14, v15))
    {
      v61 = v15;
      v62 = a4;
      v16 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v16 = 136316162;
      v17 = [v13 chat];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 guid];

        v20 = sub_190D56F10();
        v22 = v21;
      }

      else
      {
        v20 = 0x616863206C696E5BLL;
        v22 = 0xEF5D646975672074;
      }

      v23 = sub_19021D9F8(v20, v22, &v65);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      v24 = sub_190D57460();
      v26 = sub_19021D9F8(v24, v25, &v65);

      *(v16 + 14) = v26;
      *(v16 + 22) = 2080;
      v27 = sub_190D57460();
      v29 = sub_19021D9F8(v27, v28, &v65);

      *(v16 + 24) = v29;
      *(v16 + 32) = 2080;
      *(v16 + 34) = sub_19021D9F8(v63, v64, &v65);
      *(v16 + 42) = 2080;
      v30 = sub_190C7B7A4();
      v32 = sub_19021D9F8(v30, v31, &v65);

      *(v16 + 44) = v32;
      _os_log_impl(&dword_19020E000, v14, v61, "chat: %s > changed primary filter modes from %s to %s for reason: %s.\n%s", v16, 0x34u);
      v33 = v60;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v33, -1, -1);
      MEMORY[0x193AF7A40](v16, -1, -1);

      a4 = v62;
    }

    else
    {
    }
  }

  if (qword_1EAD461B8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v6, qword_1EAD9D6B8);
  sub_190BE54B8(v34, v8);
  v35 = sub_190D53040();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {

    return sub_19022EEA4(v8, &qword_1EAD5D3F8);
  }

  else
  {
    v38 = a4;
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    v39 = sub_190D53020();
    v40 = sub_190D576C0();

    if (os_log_type_enabled(v39, v40))
    {
      v61 = v40;
      v62 = v39;
      v41 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v41 = 136316162;
      v42 = [v38 chat];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 guid];

        v45 = sub_190D56F10();
        v47 = v46;
      }

      else
      {
        v45 = 0x616863206C696E5BLL;
        v47 = 0xEF5D646975672074;
      }

      v48 = sub_19021D9F8(v45, v47, &v65);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = sub_190D57460();
      v51 = v50;

      v52 = sub_19021D9F8(v49, v51, &v65);

      *(v41 + 14) = v52;
      *(v41 + 22) = 2080;
      v53 = sub_190D57460();
      v55 = sub_19021D9F8(v53, v54, &v65);

      *(v41 + 24) = v55;
      *(v41 + 32) = 2080;
      *(v41 + 34) = sub_19021D9F8(v63, v64, &v65);
      *(v41 + 42) = 2080;
      v56 = sub_190C7B7A4();
      v58 = sub_19021D9F8(v56, v57, &v65);

      *(v41 + 44) = v58;
      v39 = v62;
      _os_log_impl(&dword_19020E000, v62, v61, "chat: %s > changed primary filter modes from %s to %s for reason: %s.\n%s", v41, 0x34u);
      v59 = v60;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v59, -1, -1);
      MEMORY[0x193AF7A40](v41, -1, -1);
    }

    else
    {
    }

    return (*(v36 + 8))(v8, v35);
  }
}

unint64_t *sub_190BE5210(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_190BE52A8(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_190BE52A8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          do
          {
            if (!v10)
            {
              v13 = v6;
              while (1)
              {
                v6 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                if (v6 >= v11)
                {
                  goto LABEL_30;
                }

                v14 = *(v7 + 8 * v6);
                ++v13;
                if (v14)
                {
                  v12 = __clz(__rbit64(v14));
                  v10 = (v14 - 1) & v14;
                  goto LABEL_11;
                }
              }

              __break(1u);
LABEL_32:
              __break(1u);
              return;
            }

            v12 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
LABEL_11:
            v15 = v12 | (v6 << 6);
            v16 = *(*(a3 + 48) + 8 * v15);
          }

          while ((sub_190D57AF0() & 1) != 0);
          if (v16 > 10)
          {
            break;
          }

          if (v16 == 8)
          {
            if ([a4 hasUnreadMessages])
            {
              goto LABEL_27;
            }

            v19 = [a4 shouldHoldInUnreadFilter];
            goto LABEL_26;
          }

          if (v16 == 10)
          {
            v19 = [a4 hasCancellableScheduledMessage];
LABEL_26:
            if (v19)
            {
              goto LABEL_27;
            }
          }
        }

        if ((v16 - 11) < 2)
        {
          break;
        }

        if (v16 == 26)
        {
          v20 = [objc_opt_self() sharedInstance];
          if (!v20)
          {
            goto LABEL_32;
          }

          v21 = v20;
          v22 = [v20 draftForConversation:a4 fetchPolicy:2];

          if (v22)
          {

            goto LABEL_27;
          }
        }
      }

      v17 = sub_19024FDA8();
    }

    while ((v18 & 1) != 0 || v16 != v17);
LABEL_27:
    *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
  }

  while (!__OFADD__(v26++, 1));
  __break(1u);
LABEL_30:
  sub_190D50920();
  sub_190219A70(a1, a2, v26, a3);
}

uint64_t sub_190BE54B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_190BE5600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKLinkPreviewTextAttachmentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190BE5668(void *a1)
{
  if (!a1)
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v25 = sub_190D53040();
    __swift_project_value_buffer(v25, qword_1EAD9D778);
    v26 = sub_190D53020();
    v27 = sub_190D57680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_19020E000, v26, v27, "ViewProvider attachmentBoundsForAttributes called, but nil NSTextContainer. Using fallback size.", v28, 2u);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }

    v29 = [objc_opt_self() sharedBehaviors];
    if (v29)
    {
      v12 = v29;
      [v29 entryViewLinkViewSize];
LABEL_17:

      return;
    }

    goto LABEL_19;
  }

  v3 = a1;
  [v3 size];
  v4 = &v1[OBJC_IVAR____TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider_previousTextContainerSize];
  if (v5 == *&v1[OBJC_IVAR____TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider_previousTextContainerSize])
  {
LABEL_5:
    [v3 size];
    *v4 = v8;
    *(v4 + 1) = v9;
    v10 = [v1 textAttachment];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for CKLinkPreviewTextAttachment();
      swift_dynamicCastClassUnconditional();
      v12 = v3;
      sub_190B9AF54(a1);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      if (qword_1EAD46240 != -1)
      {
        swift_once();
      }

      v19 = v14 * v18;
      v20 = v16 * v18;
      v21 = sub_190D53040();
      __swift_project_value_buffer(v21, qword_1EAD9D778);
      v22 = sub_190D53020();
      v23 = sub_190D57680();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134218240;
        *(v24 + 4) = v19;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v20;
        _os_log_impl(&dword_19020E000, v22, v23, "Returning attachmentBounds width=%f height=%f", v24, 0x16u);
        MEMORY[0x193AF7A40](v24, -1, -1);
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = [v1 textAttachment];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for CKLinkPreviewTextAttachment();
    *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated) = 1;

    goto LABEL_5;
  }

LABEL_20:
  __break(1u);
}

Swift::Void __swiftcall CKTranscriptCollectionViewController.setAppIntentsDataSource()()
{
  v1 = [v0 collectionView];
  sub_190BE5A00();
  swift_unknownObjectRetain();
  sub_190D577C0();
}

unint64_t sub_190BE5A00()
{
  result = qword_1EAD44F08;
  if (!qword_1EAD44F08)
  {
    sub_1902188FC(255, &qword_1EAD44F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD44F08);
  }

  return result;
}

void CKTranscriptCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = sub_190D51BB0();
  v43 = [v3 chatItemAtIndexPath_];

  if (v43)
  {
    sub_1902188FC(0, &qword_1EAD5F9E0);
    if ([v43 isKindOfClass_])
    {
      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v14 = sub_190D53040();
      __swift_project_value_buffer(v14, qword_1EAD9E840);
      (*(v7 + 16))(v12, a1, v6);
      v15 = sub_190D53020();
      v16 = sub_190D576C0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v44[0] = v18;
        *v17 = 136315138;
        sub_19089C534();
        v19 = sub_190D58720();
        v21 = v20;
        (*(v7 + 8))(v12, v6);
        v22 = sub_19021D9F8(v19, v21, v44);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_19020E000, v15, v16, "Returning EntityIdentifier for CKTranscriptCollectionViewController item at indexPath: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x193AF7A40](v18, -1, -1);
        MEMORY[0x193AF7A40](v17, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v12, v6);
      }

      v35 = [v43 IMChatItem];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 guid];

        if (v37)
        {
          v38 = sub_190D56F10();
          v40 = v39;

          v44[0] = v38;
          v44[1] = v40;
          sub_190888A1C();
          sub_190D50900();

          v41 = sub_190D50910();
          (*(*(v41 - 8) + 56))(a2, 0, 1, v41);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v32 = sub_190D50910();
      (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
      v33 = v43;
    }
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD9E840);
    (*(v7 + 16))(v9, a1, v6);
    v24 = sub_190D53020();
    v25 = sub_190D576C0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44[0] = v27;
      *v26 = 136315138;
      sub_19089C534();
      v28 = sub_190D58720();
      v30 = v29;
      (*(v7 + 8))(v9, v6);
      v31 = sub_19021D9F8(v28, v30, v44);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_19020E000, v24, v25, "Unable to determine EntityIdentifier for CKTranscriptCollectionViewController item at indexPath: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x193AF7A40](v27, -1, -1);
      MEMORY[0x193AF7A40](v26, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v34 = sub_190D50910();
    (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }
}

uint64_t sub_190BE60A4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_190D56D90();

  return MEMORY[0x1EEE6DED8](v1);
}

id sub_190BE6128(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_editToolbarItem] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_closeToolbarItem] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_screenSharingIdsStatuses;
  *&v2[v9] = sub_190821644(v8);
  v10 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  *&v2[v10] = sub_190821644(v8);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_notificationObserverTokens] = v8;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_contextMenuActionDelegates] = v8;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_quickLookDataSource] = 0;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation] = a1;
  *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_observableConfiguration] = a2;
  v11 = type metadata accessor for DetailsViewCoordinator();
  v17.receiver = v2;
  v17.super_class = v11;
  v12 = a1;
  sub_190D50920();
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_190BC4E18();
  v14 = sub_190D572E0();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_190857E08(0, 0, v7, &unk_190DFA7B0, v15);

  sub_190BE72B0();

  return v13;
}

uint64_t sub_190BE638C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_190BE6CC8();
}

id DetailsViewCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_notificationObserverTokens;
  swift_beginAccess();
  v9 = v1;
  v10 = v0;
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AF3B90](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      v7 = [objc_opt_self() defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();

      ++v4;
    }

    while (v6 != v3);
  }

  *&v10[v9] = MEMORY[0x1E69E7CC0];

  v11.receiver = v10;
  v11.super_class = type metadata accessor for DetailsViewCoordinator();
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void sub_190BE66F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_190D52930();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailsViewCoordinator.PresentationAction();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190BE7924(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_190BE7BE8();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_190BA23EC();
    }

    else
    {
      v21 = sub_190D572E0();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v1;
      v23 = v1;
      sub_190857E08(0, 0, v5, &unk_190DFA798, v22);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v12, v6);
      v14 = sub_190D528C0();
      [v14 setDelegate_];
      v15 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        [Strong presentViewController:v15 animated:1 completion:0];

        v14 = v17;
      }

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_190B74210(*v12);
    }
  }

  else
  {
    v18 = *v12;
    v19 = *&v1[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact];
    *&v1[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact] = *v12;
    v20 = v18;

    sub_19084D038();
  }
}

void sub_190BE6A1C()
{
  v1 = v0;
  v2 = sub_190D52880();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
    v9 = *&v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 sharedFeatureFlags];
    v13 = [v12 isTranscriptBackgroundsEnabled];

    if (v13)
    {
      v14 = [objc_opt_self() shouldSuppressTranscriptBackgroundEditingForConversation_];

      if ((v14 & 1) == 0)
      {
        v15 = *&v1[v8];
        v16 = swift_unknownObjectWeakLoadStrong();
        v17 = v15;
        v24 = v3;
        if (v16)
        {
          v18 = [v16 shouldPresentDetailsInInspector];
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
        }

        type metadata accessor for DetailsBackgroundsTab();
        swift_allocObject();
        sub_190A68A18();
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v1;
        *(v19 + 32) = v18;
        sub_190BE7880();
        v20 = v1;
        sub_190D528B0();
        sub_190D52810();
        (*(v24 + 8))(v5, v2);
      }
    }

    else
    {
    }

    type metadata accessor for CommunicationDetailsViewBuilder();
    v21 = *&v1[v8];
    sub_1909BBAD0(v7, v21, 0, v1);

    v22 = *&v1[v8];
    sub_1909BBC34(v7, v22, &unk_1F0403578, v1);
  }
}

uint64_t sub_190BE6CE8()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  v0[24] = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  if (*(*(v1 + v2) + 16))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_190D572A0();
    v0[25] = sub_190D57290();
    v6 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190BE6DC8, v6, v5);
  }
}

uint64_t sub_190BE6DC8()
{
  v1 = v0[23];

  v2 = [*(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) recipients];
  v3 = sub_190D57180();

  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v4 + 32;
    do
    {
      sub_19021834C(v7, (v0 + 10));
      sub_19021834C((v0 + 10), (v0 + 18));
      sub_1902188FC(0, &qword_1EAD44E80);
      if (swift_dynamicCast() && (v8 = v0[22], v9 = [v8 IDSCanonicalAddress], v8, v9))
      {
        v10 = sub_190D56F10();
        v12 = v11;

        __swift_destroy_boxed_opaque_existential_0((v0 + 10));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1908354D4(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_1908354D4((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v15 = &v6[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 10));
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v0[26] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190BE6FEC, 0, 0);
}

uint64_t sub_190BE6FEC()
{
  v1 = v0[26];
  v2 = objc_opt_self();
  sub_1908A2370(v1);

  v3 = sub_190D57160();
  v0[27] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_190BE715C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54520);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190BE60A4;
  v0[13] = &block_descriptor_66_2;
  v0[14] = v4;
  [v2 queryModernScreenSharingCapabilities:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190BE715C()
{

  return MEMORY[0x1EEE6DFA0](sub_190BE723C, 0, 0);
}

uint64_t sub_190BE723C()
{
  v1 = v0[27];
  *(v0[23] + v0[24]) = v0[18];

  v2 = v0[1];

  return v2();
}

void sub_190BE72B0()
{
  if (![objc_opt_self() stringGUIDForObject_])
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_190D56F40();
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = sub_190D56ED0();
  v25 = *MEMORY[0x1E69A4810];
  [v2 addListenerID:v3 forService:?];

  v4 = [*(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) recipients];
  v5 = sub_190D57180();

  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v9 = v6 + 32;
    do
    {
      sub_19021834C(v9, aBlock);
      sub_19021834C(aBlock, v28);
      sub_1902188FC(0, &qword_1EAD44E80);
      if (swift_dynamicCast() && (v10 = v27, v11 = [v27 IDSCanonicalAddress], v10, v11))
      {
        v12 = sub_190D56F10();
        v14 = v13;

        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1908354D4(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_1908354D4((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v17 = &v8[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(aBlock);
      }

      v9 += 32;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v18 = objc_opt_self();
  sub_1908A2370(v8);

  v19 = sub_190D57160();

  v20 = v25;
  v21 = sub_190D56ED0();

  sub_1902188FC(0, &qword_1EAD46670);
  v22 = sub_190D57870();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190BE7878;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190BE7718;
  aBlock[3] = &block_descriptor_103;
  v24 = _Block_copy(aBlock);

  [v18 refreshIDStatusForDestinations:v19 service:v20 listenerID:v21 queue:v22 completionBlock:v24];
  _Block_release(v24);
}

uint64_t sub_190BE7684(unint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = sub_190821644(MEMORY[0x1E69E7CC0]);
    }

    *&v3[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_screenSharingIdsStatuses] = v4;
    sub_190D52690();
  }

  return result;
}

uint64_t sub_190BE7718(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_190D56D90();
  }

  else
  {
    v3 = 0;
  }

  sub_190D50920();
  v2(v3);
}

id DetailsViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_190BE7880()
{
  result = qword_1EAD45A60;
  if (!qword_1EAD45A60)
  {
    type metadata accessor for DetailsBackgroundsTab();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A60);
  }

  return result;
}

uint64_t type metadata accessor for DetailsViewCoordinator.PresentationAction()
{
  result = qword_1EAD5FA70;
  if (!qword_1EAD5FA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190BE7924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewCoordinator.PresentationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BE7988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190BA25E0(a1, v4, v5, v6);
}

uint64_t sub_190BE7A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_190BE638C();
}

void sub_190BE7B08()
{
  sub_1902188FC(319, &qword_1EAD44E40);
  if (v0 <= 0x3F)
  {
    sub_190D52930();
    if (v1 <= 0x3F)
    {
      sub_190BE7BA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_190BE7BA0()
{
  if (!qword_1EAD5FA80)
  {
    sub_190AD3E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5FA80);
    }
  }
}

void sub_190BE7BE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v2 = objc_allocWithZone(CKGroupRecipientSelectionController);
  v17 = v1;
  v3 = [v2 initWithConversation_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setDelegate_];
  v5 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
  *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController) = v4;
  v6 = v4;

  v7 = [objc_allocWithZone(CKNavigationController) initWithRootViewController_];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedBehaviors];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 groupRecipientSelectionPresentationStyle];

  [v9 setModalPresentationStyle_];
  v13 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController);
  *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController) = v9;
  v14 = v9;

  sub_190BE7D94();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong presentViewController:v14 animated:1 completion:0];
  }
}

void sub_190BE7D94()
{
  v1 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
  if ([*&v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation] hasDisplayName])
  {
    v2 = [*&v0[v1] displayName];
    if (!v2)
    {
      v3 = &v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController];
      v4 = *&v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController];
      if (!v4)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = v4;
      v12 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = CKFrameworkBundle();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v2 = [v6 localizedStringForKey:v7 value:0 table:v8];
  }

  sub_190D56F10();
  v10 = v9;

  v3 = &v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController];
  v4 = *&v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController];
  if (!v4)
  {
LABEL_10:

    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v4;
  v12 = sub_190D56ED0();

LABEL_12:
  [v11 setTitle_];

LABEL_13:
  v13 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v14 = v0;
  v20 = [v13 initWithBarButtonSystemItem:24 target:v14 action:sel_handleCancelAction];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_handleDoneAction];

  if (*v3)
  {
    v16 = [*v3 navigationItem];
    [v16 setLeftBarButtonItem_];

    if (*v3)
    {
      v17 = [*v3 navigationItem];
      [v17 setRightBarButtonItem_];

      if (*v3)
      {
        [*v3 setCancelButton_];
        if (*v3)
        {
          v18 = *v3;
          v19 = v15;
          [v18 setDoneButton_];
        }
      }
    }
  }
}

void sub_190BE8070()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_190BE86F0;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_190C24C40;
    v7[3] = &block_descriptor_4_0;
    v4 = _Block_copy(v7);
    v5 = v1;
    v6 = v2;

    [v5 handleCancelAction:v6 completion:v4];
    _Block_release(v4);
  }
}

void sub_190BE818C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
    *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController) = 0;
    v2 = Strong;

    v3 = *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController];
    *&v2[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController] = 0;
  }
}

void sub_190BE8254()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController);
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
    if (!v2)
    {
      return;
    }

    v3 = v2;
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController);
LABEL_6:
    v4 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_190BE86E8;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_190C24C40;
    v11[3] = &block_descriptor_104;
    v6 = _Block_copy(v11);
    v7 = v1;
    v8 = v2;
    v9 = v4;

    [v8 handleDoneActionForConversation:v9 viewController:v3 completion:v6];

    _Block_release(v6);
    return;
  }

  v10 = v1;
}

void sub_190BE83E8(char a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      if (a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      if (a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      sub_190D52690();
      sub_190D52690();
      sub_190CDCCE8(v8, v9);
    }

    else
    {
      v10 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController);
      *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsController) = 0;

      v11 = *&v7[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController];
      *&v7[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_addRecipientsNavigationController] = 0;
    }
  }
}

UIEdgeInsets __swiftcall DetailsViewCoordinator.navigationBarInsets(for:)(CKRecipientSelectionController_optional *a1)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = [(CKRecipientSelectionController_optional *)a1 view];
  if (!v1)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v6 = v1;
  [v1 safeAreaInsets];
  v8 = v7;

  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v2 = v8;
LABEL_6:
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t sub_190BE86FC(double a1)
{
  v2 = sub_190D519C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v6 setNumberStyle_];
  sub_190D51980();
  v7 = sub_190D51940();
  (*(v3 + 8))(v5, v2);
  [v6 setLocale_];

  if (a1 == 1.25)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setMaximumFractionDigits_];
  v9 = sub_190D51C70();
  v10 = [v6 stringFromNumber_];

  if (v10)
  {
    v11 = sub_190D56F10();

    v6 = v10;
  }

  else
  {
    v11 = sub_190D573C0();
  }

  return v11;
}

void sub_190BE88B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe;
  v3 = v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe];
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  swift_beginAccess();
  v5 = v1[v4];
  v6 = [v1 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = [v1 waveformColorWithIsFromMe:v3 isPlayed:v5 idiom:v7];
  v9 = sub_190BE94C4();
  v10 = *&v9[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color];
  *&v9[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color] = v8;
  v11 = v8;

  [v9 setNeedsDisplay];
  v12 = sub_190BE905C();
  v13 = v1[v2];
  v14 = [v1 &selRef_testPerformSearch_];
  v15 = [v14 userInterfaceIdiom];

  v16 = [v1 transcriptionButtonColorWithIsFromMe:v13 idiom:v15];
  v17 = *(v12 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_collapsedButtonColor);
  *(v12 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_collapsedButtonColor) = v16;
  v18 = v16;

  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x160))(*(v12 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState));

  v20 = *&v1[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel];
  v21 = [v1 color];
  v22 = [v1 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  v24 = [v1 transcriptionLabelColorFor:v21 idiom:v23];
  v25 = *(v20 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expandedButtonColor);
  *(v20 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expandedButtonColor) = v24;
  v26 = v24;

  (*((*v19 & *v20) + 0x160))(*(v20 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState));
}

void *sub_190BE8BD4()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190BE8CC8(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = sub_190BE94C4();

    v7 = *&v6[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
    *&v6[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = a1;
  }
}

void sub_190BE8D58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  if (v2)
  {
    v7 = v6;
    v8 = sub_190BE94C4();
    v9 = *&v8[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
    *&v8[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = v2;
  }
}

void (*sub_190BE8DE4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190BE8E6C;
}

void sub_190BE8E6C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = sub_190BE94C4();
      v7 = *&v6[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
      *&v6[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = v4;
    }
  }

  free(v3);
}

id sub_190BE8F10(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_190BE8F70(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_190BE8F70(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 sharedBehaviors];
  if (result)
  {
    v6 = result;
    v7 = [result *a1];

    [v4 setFont_];
    LODWORD(v8) = 1144750080;
    [v4 setContentHuggingPriority:0 forAxis:v8];
    [v4 setAdjustsFontForContentSizeCategory_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_190BE907C()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v1) = 1132068864;
  [v0 setContentHuggingPriority:1 forAxis:v1];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = &v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didTapExpansionButton];
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didTapExpansionButton];
  *v5 = sub_190BEDFFC;
  v5[1] = v4;
  v7 = v0;
  sub_190D50920();
  sub_190D50920();
  sub_19022123C(v6);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = &v7[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didResize];
  v12 = *&v7[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didResize];
  *v11 = sub_190BEE044;
  v11[1] = v10;
  sub_190D50920();
  sub_190D50920();
  sub_19022123C(v12);

  return v7;
}

void sub_190BE9268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      if (*(v2 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState) == 1)
      {
        v3 = v2;
        v4 = v1;
        v5 = [v4 delegate];
        if (v5)
        {
          v6 = v5;
          if ([v5 respondsToSelector_])
          {
            [v6 launchReaderViewForBalloonView_];
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        v4 = v2;
      }
    }
  }
}

void sub_190BE9374()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v2[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState];
      [v2 setNeedsLayout];
      v5 = v1;
      v6 = [v5 delegate];
      if (v6)
      {
        v7 = v6;
        if ([v6 respondsToSelector_])
        {
          [v7 audioBalloonDidResize:v5 isExpanded:v4];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

id sub_190BE94C4()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView);
  }

  else
  {
    v4 = sub_190BE956C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_190BE956C()
{
  v0 = [objc_allocWithZone(type metadata accessor for AudioMessageWaveform()) initWithFrame_];
  LODWORD(v1) = 1132068864;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 heightAnchor];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v4 = result;
    [result waveformViewHeight];
    v6 = v5;

    v7 = [v2 constraintEqualToConstant_];
    v8 = v7;
    LODWORD(v9) = 1132068864;
    [v8 setPriority_];
    [v8 setActive_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_190BE96D8(void *a1)
{
  v2 = sub_190D57FB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  sub_190D57F70();
  v9 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC0] scale:3];
  sub_190D57DD0();
  sub_1902188FC(0, &qword_1EAD464E0);
  (*(v3 + 16))(v6, v8, v2);
  v10 = sub_190D57FC0();
  [v10 setTintAdjustmentMode_];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_190BEDFF4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_57;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  [v10 setConfigurationUpdateHandler_];
  _Block_release(v12);
  LODWORD(v14) = 1144750080;
  [v10 setContentHuggingPriority:0 forAxis:v14];
  (*(v3 + 8))(v8, v2);
  return v10;
}

void sub_190BE9934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  v6 = sub_190D57FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57FD0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_beginAccess();
    sub_190D57E60();
    v10 = sub_190D56ED0();
    v11 = [objc_opt_self() systemImageNamed_];

    if (v11)
    {

      sub_190D57F60();
      (*(v7 + 16))(v3, v9, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
      sub_190D57FE0();
      (*(v7 + 8))(v9, v6);
      return;
    }
  }

  __break(1u);
}

id sub_190BE9D10()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v0 setAxis_];
  [v0 setAlignment_];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    [result audioBalloonHorizontalSpacing];
    v4 = v3;

    [v0 setSpacing_];
    v5 = v0;
    [v5 setDistribution_];
    LODWORD(v6) = 1132068864;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    [v5 setSemanticContentAttribute_];

    v7 = sub_190BE96B8();
    [v5 addArrangedSubview_];

    v8 = sub_190BE8EFC();
    [v5 addArrangedSubview_];

    v9 = sub_190BE94C4();
    [v5 addArrangedSubview_];

    v10 = sub_190BE8EE8();
    [v5 addArrangedSubview_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190BE9EC4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_190BE9F28()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v0 setAxis_];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    [result audioBalloonVerticalSpacing];
    v4 = v3;

    [v0 setSpacing_];
    v5 = v0;
    [v5 setDistribution_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = sub_190BE9CF0();
    [v5 addArrangedSubview_];

    v7 = sub_190BE905C();
    [v5 addArrangedSubview_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190BEA0BC(double a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed;
  *&v1[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed] = a1;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_190B4D5C4;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_190840E6C;
  v7[3] = &block_descriptor_105;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v5);
  if (*&v1[v2] == 1.0)
  {
    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
  }
}

void sub_190BEA208(uint64_t a1)
{
  v2 = sub_190BE8EFC();
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed;
  [v2 setHidden_];

  v4 = sub_190BE86FC(*(a1 + v3));
  v6 = v5;
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___speedLabel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_19081EA10();
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  v9 = v7;
  v10 = CKFrameworkBundle();
  if (v10)
  {
    v11 = v10;
    v12 = sub_190D56ED0();
    v13 = sub_190D56ED0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    sub_190D56F10();
    sub_190D56EE0();

    v15 = sub_190D56ED0();

    [v9 setText_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190BEA42C()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190BEA4C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190BEA5BC()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190BEA640()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_panGestureRecognizer];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
    swift_beginAccess();
    [v1 setEnabled_];
  }

  result = [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_displayedTime;
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_displayedTime];
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  result = swift_beginAccess();
  v7 = *&v0[v6];
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v9 = __OFSUB__(0, v8);
    v8 = v7 - v5;
    if (v9)
    {
      goto LABEL_25;
    }
  }

  if (v8 >= 1)
  {
    *&v0[v4] = v7;
    if (v7 == 0.0)
    {
      v10 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
      swift_beginAccess();
      if ((v0[v10] & 1) == 0)
      {
        v11 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
        swift_beginAccess();
        v7 = *&v0[v11];
      }
    }

    v12 = sub_190BE8EE8();
    v13 = CKLocalizedStringForDuration(v7);
    [v12 setText_];

    return [v0 setNeedsLayout];
  }

  return result;
}

uint64_t (*sub_190BEA83C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190BEA8A0;
}

double sub_190BEA900()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190BEA998(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190BEAA90()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BEAAF4(char *a1, double a2, uint64_t a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  *&a1[v8] = a2;
  v9 = a1;
  a5();
}

uint64_t sub_190BEAB84(uint64_t *a1, uint64_t (*a2)(uint64_t), double a3)
{
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v3 + v6) = a3;
  return a2(v7);
}

id sub_190BEABE4()
{
  v1 = sub_190BE94C4();
  v2 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
  swift_beginAccess();
  *&v1[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_duration] = *&v0[v2];

  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 == 0.0)
  {
    v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
    swift_beginAccess();
    if ((v0[v5] & 1) == 0)
    {
      v4 = *&v0[v2];
    }
  }

  v6 = sub_190BE8EE8();
  v7 = CKLocalizedStringForDuration(v4);
  [v6 setText_];

  return [v0 setNeedsLayout];
}

uint64_t (*sub_190BEACEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190BEAD50;
}

uint64_t sub_190BEAD68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_190BEADF4()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190BEAEA4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_190BEAEFC(v4);
}

id sub_190BEAEFC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  result = swift_beginAccess();
  v7 = v2[v5];
  if (v7 != v4)
  {
    if (!(v7 & 1 | ((a1 & 1) == 0)))
    {
      v8 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
      swift_beginAccess();
      v9 = *&v2[v8];
      if (v9 == 0.0 || (v10 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration, swift_beginAccess(), v9 == *&v2[v10]))
      {
        v11 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed;
        *&v2[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed] = 0x3FF0000000000000;
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        aBlock[4] = sub_190BEE058;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_190840E6C;
        aBlock[3] = &block_descriptor_78;
        v14 = _Block_copy(aBlock);
        v15 = v2;

        [v12 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
        _Block_release(v14);
        if (*&v2[v11] == 1.0)
        {
          [v15 setNeedsLayout];
          [v15 layoutIfNeeded];
        }

        v16 = sub_190BE8EFC();
        [v16 setHidden_];
      }
    }

    v17 = sub_190BE94C4();
    v17[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_playing] = v2[v5];
    [v17 setNeedsDisplay];

    v18 = sub_190BE96B8();
    [v18 setNeedsUpdateConfiguration];

    return [v2 setNeedsPrepareForDisplay];
  }

  return result;
}

void (*sub_190BEB15C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190BEB1F0;
}

void sub_190BEB1F0(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_190BEAEFC(v5);

  free(v1);
}

uint64_t sub_190BEB280()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BEB318(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = v1[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe];
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    v9 = [v1 waveformColorWithIsFromMe:v6 isPlayed:v3 idiom:v8];
    v10 = sub_190BE94C4();
    v11 = *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color];
    *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color] = v9;
    v12 = v9;

    [v10 setNeedsDisplay];
  }
}

void (*sub_190BEB424(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190BEB4B8;
}

void sub_190BEB4B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    sub_190BEB318(*(*a1 + 40));
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      v8 = v7[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe];
      v9 = [v7 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      v11 = [v7 waveformColorWithIsFromMe:v8 isPlayed:v3 idiom:v10];
      v12 = sub_190BE94C4();
      v13 = *&v12[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color];
      *&v12[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color] = v11;
      v14 = v11;

      [v12 setNeedsDisplay];
    }
  }

  free(v2);
}

uint64_t sub_190BEB624()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190BEB6BC(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190BEB7B4()
{
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190BEB84C(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_190BEB9B0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_panGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___timeLabel] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___speedLabel] = 0;
  v9 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_transcriptionViewClass;
  *&v4[v9] = type metadata accessor for CKTranscriptionView();
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___horizontalStackView] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___verticalStackView] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode] = 7;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_displayedTime] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration] = 0;
  v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying] = 0;
  v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed] = 0;
  v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS] = 0;
  v4[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for CKAudioMessageBalloonView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190BEBB98();

  return v10;
}

void sub_190BEBB98()
{
  [v0 setClipsToBounds_];
  v1 = sub_190BE96B8();
  v2 = [v0 playbackSpeedMenu];
  [v1 setMenu_];

  [*&v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___playPauseButton] setNeedsUpdateConfiguration];
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 == 0.0)
  {
    v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
    swift_beginAccess();
    if ((v0[v5] & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
      swift_beginAccess();
      v4 = *&v0[v6];
    }
  }

  v7 = sub_190BE8EE8();
  v8 = CKLocalizedStringForDuration(v4);
  [v7 setText_];

  [v0 setNeedsLayout];
  v9 = sub_190BE8EFC();
  [v9 setHidden_];

  v10 = sub_190BE905C();
  [v10 setHidden_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v0 action:sel_waveformProgressViewPanning_];
  [v11 setAllowedScrollTypesMask_];
  [v11 _setCanPanVertically_];
  [v0 addGestureRecognizer_];
  v12 = *&v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_panGestureRecognizer];
  *&v0[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_panGestureRecognizer] = v11;

  v13 = sub_190BE9EA4();
  [v0 addSubview_];
}

void sub_190BEBDCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for CKAudioMessageBalloonView();
  v36.receiver = v0;
  v36.super_class = v7;
  objc_msgSendSuper2(&v36, sel_prepareForDisplay);
  v8 = sub_190BE905C();
  v9 = [v1 color];
  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = [v1 transcriptionLabelColorFor:v9 idiom:v11];
  v13 = *&v8[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textColor];
  *&v8[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textColor] = v12;
  v14 = v12;

  [*&v8[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView] setTextColor_];
  v15 = sub_190BE8EE8();
  v16 = [v1 color];
  v17 = [v1 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = [v1 timeLabelColorFor:v16 idiom:v18];
  [v15 setTextColor_];

  v20 = sub_190BE8EFC();
  v21 = [v1 color];
  v22 = [v1 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  v24 = [v1 speedLabelColorFor:v21 idiom:v23];
  [v20 setTextColor_];

  v25 = sub_190BE96B8();
  sub_190D57FD0();
  v26 = sub_190D57FB0();
  if ((*(*(v26 - 8) + 48))(v6, 1, v26))
  {
    sub_1908DD2DC(v6, v35);
    sub_190D57FE0();

    sub_1908F00B4(v6);
  }

  else
  {
    v27 = [v1 playPauseButtonColorFor_];
    sub_190D57F00();
    sub_190D57FE0();
  }

  v28 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29 == 0.0)
  {
    v30 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
    swift_beginAccess();
    if ((v1[v30] & 1) == 0)
    {
      v31 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
      swift_beginAccess();
      v29 = *&v1[v31];
    }
  }

  v32 = *&v1[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___timeLabel];
  v33 = CKLocalizedStringForDuration(v29);
  [v32 setText_];

  [v1 setNeedsLayout];
  v34 = sub_190BE94C4();
  *&v34[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime] = *&v1[v28];
  [v34 setNeedsDisplay];
}

void sub_190BEC284(unint64_t a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  if (a1 >> 62)
  {
    v2 = sub_190D581C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193AF3B90](i, a1);
    }

    else
    {
      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 setUserInteractionEnabled_];
  }
}

uint64_t sub_190BEC43C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DDA780;
  *(v0 + 32) = sub_190BE8EE8();
  *(v0 + 40) = sub_190BE94C4();
  *(v0 + 48) = sub_190BE96B8();
  return v0;
}

void sub_190BEC564(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CKAudioMessageBalloonView();
  objc_msgSendSuper2(&v17, sel_configureForComposition_, a1);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = [a1 mediaObjects];
  if (v3)
  {
    v4 = v3;
    sub_1902188FC(0, &qword_1EAD466C0);
    v5 = sub_190D57180();

    if (v5 >> 62)
    {
      v6 = sub_190D581C0();
      if (v6)
      {
LABEL_5:
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v7)
        {
          __break(1u);
        }

        else if ((v5 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v5 + 8 * v8 + 32);
            goto LABEL_10;
          }

          __break(1u);
          goto LABEL_18;
        }

        v9 = MEMORY[0x193AF3B90](v8, v5);
LABEL_10:
        v10 = v9;

        v11 = objc_opt_self();
        v12 = v10;
        v13 = [v11 sharedBehaviors];
        if (v13)
        {
          v14 = v13;
          [v13 previewMaxWidth];
          v16 = v15;

          [v1 configureForMediaObject:v12 previewWidth:1 orientation:v16];
          sub_190BEB318(0);

          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    return;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_190BEC780(void *a1, char a2, double a3)
{
  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v19.receiver = v3;
      v19.super_class = type metadata accessor for CKAudioMessageBalloonView();
      v9 = a1;
      objc_msgSendSuper2(&v19, sel_configureForMediaObject_previewWidth_orientation_, v8, a2, a3);
      [v8 duration];
      v11 = v10;
      v12 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
      swift_beginAccess();
      *&v3[v12] = v11;
      sub_190BEABE4();
      v13 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
      swift_beginAccess();
      v14 = *&v3[v13];
      *&v3[v13] = v8;
      v15 = v9;

      v16 = v15;
      v17 = sub_190BE94C4();

      v18 = *&v17[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
      *&v17[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = v8;
    }
  }
}

void sub_190BEC98C()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CKAudioMessageBalloonView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 alignmentRectInsets];
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ([v0 hasSuggestedActionsMenu])
  {
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    Width = CGRectGetWidth(v25);
    v26.origin.x = v11;
    v26.origin.y = v13;
    v26.size.width = v15;
    v26.size.height = v17;
    Height = CGRectGetHeight(v26);
    [v0 suggestedActionsMenuAdditionalHeight];
    v17 = Height - v20;
    v15 = Width;
  }

  v21 = sub_190BE9EA4();
  [v21 setFrame_];

  v22 = sub_190BE94C4();
  v23 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  *&v22[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime] = *&v0[v23];
  [v22 setNeedsDisplay];
}

void sub_190BECB64(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a1;
  v7 = [v5 serviceName];
  if (!v7)
  {
    sub_190D56F10();
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_190D56F10();
  v11 = v10;

  v12 = sub_190D56F10();
  if (!v11)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_13;
  }

  if (v9 == v12 && v11 == v13)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_190D58760();
  }

LABEL_13:

  v16 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  v2[v16] = v15 & 1;
  v17 = [v5 serviceName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_190D56F10();
    v21 = v20;

    v22 = sub_190D56F10();
    if (v21)
    {
      if (v19 == v22 && v21 == v23)
      {

        v24 = 1;
      }

      else
      {
        v24 = sub_190D58760();
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_190D56F10();
  }

  v24 = 0;
LABEL_21:

  v25 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  v2[v25] = v24 & 1;
  v50.receiver = v2;
  v50.super_class = type metadata accessor for CKAudioMessageBalloonView();
  objc_msgSendSuper2(&v50, sel_configureForMessagePart_, v5);
  v26 = [objc_opt_self() sharedBehaviors];
  if (v26)
  {
    v27 = v26;
    [v26 previewMaxWidth];
    v29 = v28;

    v30 = [v5 audioTranscriptionText];
    if (v30)
    {
      v31 = v30;
      v32 = sub_190D56F10();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = sub_190BE905C();
    v36 = &v35[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_text];
    *v36 = v32;
    v36[1] = v34;
    sub_190D52690();

    v37 = *&v35[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
    if (v34)
    {
      sub_190D52690();
      v38 = sub_190D56ED0();
    }

    else
    {
      v38 = 0;
    }

    [v37 setText_];

    [v35 layoutIfNeeded];
    v39 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel;
    v40 = *&v2[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel];

    [v40 setHidden_];

    v41 = *&v2[v39];
    v42 = [v5 isExpanded];
    v43 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState;
    *(v41 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState) = v42;
    v44 = [*(v41 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView) textContainer];
    v45 = v44;
    if (*(v41 + v43))
    {
      v46 = 6;
    }

    else
    {
      v46 = 2;
    }

    [v44 setMaximumNumberOfLines_];

    (*((*MEMORY[0x1E69E7D40] & *v41) + 0x160))(*(v41 + v43));
    v47 = [v5 mediaObject];
    [v2 configureForMediaObject:v47 previewWidth:objc_msgSend(v5 orientation:{sel_balloonOrientation), v29}];

    v48 = [v5 isFromMe];
    v2[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe] = v48;
    sub_190BE88B0();
    sub_190BEB318([v5 isPlayed]);
    v49 = [v5 suggestedActionsList];

    if (v49)
    {
      [v2 addSuggestedActionsMenuWithSuggestedActionsList_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_190BED0E8(id result)
{
  if (result)
  {
    v2 = result;
    [result location];
    v4 = v3;
    v5 = sub_190BE905C();
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    if (v4 < CGRectGetMinY(v15) || (result = [*&v1[OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel] isHidden], result))
    {
      v14.receiver = v1;
      v14.super_class = type metadata accessor for CKAudioMessageBalloonView();
      return objc_msgSendSuper2(&v14, sel_tapGestureRecognized_, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190BED230@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CKAudioMessageBalloonView();
  objc_msgSendSuper2(&v28, sel_balloonDescriptorForSnapshotRenderingUsingTraitCollection_, a1);
  v35 = v20;
  v36 = v21;
  v18 = v22;
  v19 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isBalloonMaterialsEnabled];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [a1 userInterfaceStyle];
  if (v7 == 2)
  {
    v14 = [v2 color] == -1;
    v29 = v35;
    v30 = v36;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v15 = vdup_n_s32(v14);
    v16.i64[0] = v15.u32[0];
    v16.i64[1] = v15.u32[1];
    v17 = vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL));
    v8 = vbslq_s8(v17, xmmword_190DFA7E0, v19);
    v9 = vbslq_s8(v17, vdupq_n_s64(0x3FC3333333333333uLL), v18);
    goto LABEL_6;
  }

  if (v7 == 1)
  {
LABEL_5:
    v29 = v35;
    v30 = v36;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v9 = v18;
    v8 = v19;
    v29 = v35;
    v30 = v36;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
  }

LABEL_6:
  v10 = v30;
  *a2 = v29;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v8;
  v11 = v21;
  a2[4] = v20;
  a2[5] = v11;
  result = *v22.i64;
  v13 = v23;
  a2[6] = v22;
  a2[7] = v13;
  return result;
}

id CKAudioMessageBalloonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAudioMessageBalloonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190BED588()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isFromMe) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___timeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___speedLabel) = 0;
  v1 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_transcriptionViewClass;
  *(v0 + v1) = type metadata accessor for CKTranscriptionView();
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___transcriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___playPauseButton) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___horizontalStackView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode) = 7;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_displayedTime) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS) = 0;
  sub_190D58510();
  __break(1u);
}

void sub_190BED6F4(double a1, double a2)
{
  v5 = [objc_opt_self() sharedBehaviors];
  if (v5)
  {
    v6 = v5;
    [v5 previewMaxWidth];
    v8 = v7;

    v9 = CGFloatMin(a1, v8);
    v10 = sub_190BE9EA4();
    LODWORD(v11) = 1148846080;
    LODWORD(v12) = 1112014848;
    [v10 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:a2 verticalFittingPriority:{v11, v12}];
    v14 = v13;
    v16 = v15;

    [v2 alignmentRectInsets];
    v21 = UIEdgeInsetsOutsetSize(v14, v16, v17, v18, v19, v20);
    v23 = v22;
    if ([v2 hasSuggestedActionsMenu])
    {
      [v2 suggestedActionsMenuAdditionalHeight];

      CGSizeAdd(v21, v23, 0.0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t keypath_set_9Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

uint64_t objectdestroy_65Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190BEE06C(uint64_t a1, unsigned int a2)
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

uint64_t sub_190BEE0B4(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_190BEE124(unsigned __int8 a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (result)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        if (result)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }

      if (result)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a1)
  {
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (result)
  {
LABEL_14:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_190BEE318(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    if (!v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return sub_1909B8C5C(v4, v5);
}

unint64_t sub_190BEE34C()
{
  result = qword_1EAD45C80;
  if (!qword_1EAD45C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45C80);
  }

  return result;
}

unint64_t sub_190BEE3B0()
{
  result = qword_1EAD5FBA0;
  if (!qword_1EAD5FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FBA0);
  }

  return result;
}

unint64_t sub_190BEE408()
{
  result = qword_1EAD5FBA8;
  if (!qword_1EAD5FBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FBA8);
  }

  return result;
}

void sub_190BEE5A4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView;
  v5 = *&v1[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v8 = v3;
    [v8 removeFromSuperview];
    [*&v2[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer] removeFromSuperview];

    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for TapbackPickerCollectionView();
    v6 = v5;
    v3 = v3;
    v7 = sub_190D57D90();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v9 = *&v2[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
  v10 = *&v2[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer];
  v11 = v5;
  [v9 addSubview_];
  v12 = v11;
  [v10 addSubview_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  [v15 setActive_];
  v16 = [v12 trailingAnchor];

  v17 = [v10 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  [v18 setActive_];
  v19 = [v12 bottomAnchor];

  v20 = [v10 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  [v21 setActive_];
  v22 = [v12 topAnchor];

  v23 = [v10 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  [v24 setActive_];
  *&v12[OBJC_IVAR___CKTapbackPickerCollectionView_scrollDelegate + 8] = &off_1F041E368;
  swift_unknownObjectWeakAssign();
  v41 = v12;
  v25 = sub_190D56ED0();
  [v41 setAccessibilityIdentifier_];

  [v9 setClipsToBounds_];
  v26 = sub_190BF420C();
  if (v26)
  {
    v27 = v26;
    v28 = [v27 superview];
    if (v28 && (v29 = v28, sub_190861700(), v30 = v2, v31 = sub_190D57D90(), v30, v29, (v31 & 1) != 0))
    {
      v32 = &selRef_bringSubviewToFront_;
    }

    else
    {
      v32 = &selRef_addSubview_;
    }

    [v2 *v32];
  }

  v33 = sub_190BF422C();
  if (v33)
  {
    v34 = v33;
    v35 = [v34 superview];
    if (v35 && (v36 = v35, sub_190861700(), v37 = v2, v38 = sub_190D57D90(), v37, v36, (v38 & 1) != 0))
    {
      v39 = &selRef_bringSubviewToFront_;
      v40 = v41;
      v41 = v34;
    }

    else
    {
      v39 = &selRef_addSubview_;
      v40 = v34;
    }

    [v2 *v39];
  }
}

void sub_190BEEA74()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 usesTapbackRefreshStyling];

    if (v3)
    {
      [v0 addSubview_];
      v4 = *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];

      [v0 addSubview_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190BEEB84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_initStackObject();
  v3 = sub_1909DBC0C(v2);
  v4 = sub_190BF420C();
  if (v4)
  {
    [v4 setFrame_];
  }

  v5 = sub_190BF422C();
  if (v5)
  {
    [v5 setFrame_];
  }

  v6 = *&v0[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer];
  [*&v1[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer] addTarget:v1 action:sel_hoverRecognized_];
  [v1 addGestureRecognizer_];
  [v6 setEnabled_];
  v7 = sub_190BF420C();
  if (v7)
  {
    [v7 setAlpha_];
  }

  v8 = sub_190BF422C();
  if (v8)
  {
    [v8 setAlpha_];
  }

  sub_190BF424C();
  v9 = [objc_opt_self() sharedBehaviors];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 usesTapbackRefreshStyling];

    if (v11 && (v12 = *(*&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail] + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView)) != 0)
    {
      v13 = *MEMORY[0x1E6979928];
      v14 = objc_allocWithZone(MEMORY[0x1E6979378]);
      v15 = v12;
      v16 = [v14 initWithType_];
      sub_190A86CA4(v16);
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

void sub_190BEED7C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v3 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v4 = *(v2 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v4)
  {
    [v4 setAlpha_];
    v5 = *(v2 + v3);
    if (v5)
    {
      [v5 setAlpha_];
      v6 = *(v2 + v3);
      if (v6)
      {
        v7 = v6;
        v8 = [v7 layer];
        v9 = sub_190D51C70();
        v10 = sub_190D56ED0();
        [v8 setValue:v9 forKeyPath:v10];
      }
    }
  }

  v11 = *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer);
  [v11 setAlpha_];
  v12 = [v11 layer];
  v13 = sub_190D51C70();
  v14 = sub_190D56ED0();
  [v12 setValue:v13 forKeyPath:v14];

  v15 = *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_initStackObject();
  v16 = sub_1909DBC0C(v15);
  swift_beginAccess();
  [v11 setFrame_];
  [*(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer) setEnabled_];
  v17 = sub_190BF420C();
  if (v17)
  {
    [v17 setAlpha_];
  }

  v18 = sub_190BF422C();
  if (v18)
  {
    [v18 setAlpha_];
  }

  sub_190BF3554();
  v19 = *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  [v19 setAlpha_];
  v20 = [v19 layer];
  v21 = sub_190D51C70();
  v22 = sub_190D56ED0();
  [v20 setValue:v21 forKeyPath:v22];

  v23 = [v19 layer];
  v24 = sub_190D51C70();
  v25 = sub_190D56ED0();
  [v23 setValue:v24 forKeyPath:v25];
}

id sub_190BEF098(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v6 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v6;
    v14 = v4;
    sub_190D52690();
    v7 = v6;
    sub_190CAA054(inited);
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193AF3B90](v9, v4);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v10;

            sub_190BEF528(v12);

            return [*(*(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
          }

LABEL_8:
          if (*(v10 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_17;
          }
        }

        if (v9 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v8 = sub_190D581C0();
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      v10 = *(v4 + 8 * v9 + 32);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  sub_190BEF24C();
  return [*(*(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
}

void sub_190BEF24C()
{
  v1 = v0;
  sub_190BEED7C();
  sub_190943C40();
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_initStackObject();
  v3 = sub_1909DBC0C(v2);
  v4 = *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail];
  swift_beginAccess();
  v5 = *(v3 + 104) * 0.5 * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  sub_190BF2898();
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:550.915 damping:35.6725 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v19 = sub_190BF49C0;
  v20 = v9;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_190840E6C;
  v18 = &block_descriptor_188_0;
  v10 = _Block_copy(&v15);
  v11 = v1;

  [v8 addAnimations_];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_190BF49E4;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_190893958;
  v18 = &block_descriptor_194;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [v8 addCompletion_];
  _Block_release(v13);
  [v8 startAnimationAfterDelay_];
}

void sub_190BEF528(void *a1)
{
  v2 = v1;
  sub_190BEED7C();
  sub_190944B80(a1);
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v5 = sub_1909DBC0C(v4);
  v6 = *(*&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail] + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 layer];
    v9 = sub_190D51C70();
    v10 = sub_190D56ED0();
    [v8 setValue:v9 forKeyPath:v10];
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:463.915 damping:35.1725 initialVelocity:{0.0, 0.0}];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v28 timingParameters:0.0];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v33 = sub_190BF49B0;
  v34 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_190840E6C;
  v32 = &block_descriptor_164;
  v13 = _Block_copy(&aBlock);
  v14 = v2;
  sub_190D50920();

  [v11 addAnimations_];
  _Block_release(v13);
  [v11 startAnimationAfterDelay_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:972.986 applicationActivities:{62.3854, 0.0, 0.0} + 3];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v27 timingParameters:0.0];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v33 = sub_190BF4C78;
  v34 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_190840E6C;
  v32 = &block_descriptor_170_0;
  v17 = _Block_copy(&aBlock);
  v18 = v14;

  [v15 addAnimations_];
  _Block_release(v17);
  [v15 startAnimationAfterDelay_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:1250.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v19 timingParameters:0.0];
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v33 = sub_190BF49B8;
  v34 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_190840E6C;
  v32 = &block_descriptor_176_0;
  v22 = _Block_copy(&aBlock);
  v23 = v18;

  [v20 addAnimations_];
  _Block_release(v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v33 = sub_190BF4C8C;
  v34 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_190893958;
  v32 = &block_descriptor_182_0;
  v25 = _Block_copy(&aBlock);
  v26 = v23;

  [v20 addCompletion_];
  _Block_release(v25);
  [v20 startAnimationAfterDelay_];
}

void sub_190BEFA74(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v8 = *(a2 + 104) * 0.5;
      [v7 setBounds_];
      v9 = [v7 layer];
      [v9 setCornerRadius_];
    }

    v10 = *(*(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail) + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 layer];
      v13 = sub_190D51C70();
      v14 = sub_190D56ED0();
      [v12 setValue:v13 forKeyPath:v14];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190BEFC08(uint64_t a1)
{
  v2 = [objc_opt_self() sharedBehaviors];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 usesTapbackRefreshStyling];

    v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
    if (v4)
    {
      v6 = *&v5[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
      if (v6)
      {
        v7 = v6;
        v8 = [v7 layer];
        v9 = sub_190D51C70();
        v10 = sub_190D56ED0();
        [v8 setValue:v9 forKeyPath:v10];
      }
    }

    else
    {
      v11 = [v5 layer];
      v12 = sub_190D51C70();
      v13 = sub_190D56ED0();
      [v11 setValue:v12 forKeyPath:v13];
    }

    v14 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer);
    [v14 setAlpha_];
    v15 = [v14 layer];
    v16 = sub_190D51C70();
    v17 = sub_190D56ED0();
    [v15 setValue:v16 forKeyPath:v17];
  }

  else
  {
    __break(1u);
  }
}

id sub_190BEFE2C(uint64_t a1, uint64_t a2)
{
  [*(a2 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer) setEnabled_];
  v2 = sub_190BF420C();
  if (v2)
  {
    [v2 setAlpha_];
  }

  result = sub_190BF422C();
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

id sub_190BEFEAC(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v6 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v6;
    sub_190D52690();
    v7 = v6;
    sub_190CAA054(inited);
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193AF3B90](v9, v4);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v10;

            sub_190BF0138(v12);

            return [*(*(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
          }

LABEL_8:
          if (*(v10 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_17;
          }
        }

        if (v9 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v8 = sub_190D581C0();
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      v10 = *(v4 + 8 * v9 + 32);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  sub_190BEED7C();
  sub_19094851C();
  v13 = *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_initStackObject();
  v14 = sub_1909DB588(v13);
  v15 = *(v2 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  v16 = *(v14 + 272);
  v17 = *(v14 + 280);
  v18 = *(v14 + 296);
  [v15 setBounds_];
  [v15 setCenter_];
  v19 = [v15 layer];
  [v19 setCornerRadius_];

  sub_190BF0370();

  return [*(*(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
}

uint64_t sub_190BF0138(void *a1)
{
  sub_190BEED7C();
  sub_1909471F4(a1);
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_initStackObject();
  v4 = v3;
  v5 = v1;
  v6 = sub_1909DCA94(v4, a1, 0, v5);
  v7 = *&v5[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton];
  v8 = *(v6 + 272);
  v9 = *(v6 + 280);
  v10 = *(v6 + 296);
  [v7 setBounds_];
  [v7 setCenter_];
  v11 = [v7 layer];
  [v11 setCornerRadius_];

  sub_190BF0370();
}

uint64_t sub_190BF026C()
{
  v1 = v0;
  sub_190BEED7C();
  sub_19094851C();
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_initStackObject();
  v3 = sub_1909DB588(v2);
  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  v5 = *(v3 + 272);
  v6 = *(v3 + 280);
  v7 = *(v3 + 296);
  [*(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton) setBounds_];
  [v4 setCenter_];
  v8 = [v4 layer];
  [v8 setCornerRadius_];

  sub_190BF0370();
}

void sub_190BF0370()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v3 = sub_1909DC4F8(v2);
  v4 = *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
  v5 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v6 = *(v4 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v6)
  {
    [v6 setAlpha_];
    v7 = *(v4 + v5);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 layer];
      v10 = sub_190D51C70();
      v11 = sub_190D56ED0();
      [v9 setValue:v10 forKeyPath:v11];
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:560.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v12 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v3;
  v17[4] = sub_190BF4B64;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_190840E6C;
  v17[3] = &block_descriptor_268_0;
  v15 = _Block_copy(v17);
  v16 = v1;
  sub_190D50920();

  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
}

void sub_190BF05C0(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  [v4 setAlpha_];
  v5 = [v4 layer];
  v6 = sub_190D51C70();
  v7 = sub_190D56ED0();
  [v5 setValue:v6 forKeyPath:v7];

  v8 = [v4 layer];
  v9 = sub_190D51C70();
  v10 = sub_190D56ED0();
  [v8 setValue:v9 forKeyPath:v10];

  v11 = a2[34];
  v12 = a2[35];
  v13 = a2[37];
  [v4 setBounds_];
  [v4 setCenter_];
  v14 = [v4 layer];
  [v14 setCornerRadius_];

  v15 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v16 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v17 = *(v15 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v17)
  {
    [v17 setAlpha_];
    v18 = *(v15 + v16);
    if (v18)
    {
      v19 = v18;
      v20 = [v19 layer];
      v21 = sub_190D51C70();
      v22 = sub_190D56ED0();
      [v20 setValue:v21 forKeyPath:v22];
    }
  }

  sub_190BF424C();
}

void sub_190BF0814(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v5 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v85 = sub_1909DC4F8(v5);
  [*&v1[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer] setEnabled_];
  v6 = sub_190BF420C();
  if (v6)
  {
    [v6 setAlpha_];
  }

  v7 = sub_190BF422C();
  if (v7)
  {
    [v7 setAlpha_];
  }

  v8 = *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
  [*(v8 + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
  if (a1)
  {
    v9 = *&v2[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton];
    [v9 setAlpha_];
    v10 = [v9 layer];
    v11 = sub_190D51C70();
    v12 = sub_190D56ED0();
    [v10 setValue:v11 forKeyPath:v12];

    v13 = [v9 layer];
    v14 = sub_190D51C70();
    v15 = sub_190D56ED0();
    [v13 setValue:v14 forKeyPath:v15];

    v16 = *&v2[v4];
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v84 = sub_1909DBC0C(v16);
    v17 = *(v84 + 272);
    v18 = *(v84 + 280);
    v19 = *(v84 + 296);
    [v9 setBounds_];
    [v9 setCenter_];
    v20 = [v9 layer];
    [v20 setCornerRadius_];

    sub_19094DD88(1);
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    v90 = sub_190BF4C1C;
    v91 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_116_1;
    v24 = _Block_copy(&aBlock);
    v25 = v2;

    [v22 addAnimations_];
    _Block_release(v24);
    [v22 startAnimationAfterDelay_];

    v83 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:360.0 damping:45.0 initialVelocity:{0.0, 0.0}];
    v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v83 timingParameters:0.0];
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    v90 = sub_190BF495C;
    v91 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_122;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    v82 = v26;
    [v26 &selRef_animatingIn];
    _Block_release(v28);
    [v26 startAnimationAfterDelay_];
    v81 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v81 timingParameters:0.0];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v85;
    v90 = sub_190BF4BF4;
    v91 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_128;
    v32 = _Block_copy(&aBlock);
    v33 = v29;
    sub_190D50920();

    v80 = v30;
    [v30 &selRef_animatingIn];
    _Block_release(v32);
    [v30 startAnimationAfterDelay_];
    v79 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:32.0 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v79 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v85;
    v90 = sub_190BF4BF0;
    v91 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_134;
    v36 = _Block_copy(&aBlock);
    v37 = v33;
    sub_190D50920();

    v78 = v34;
    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
    v77 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1449.78 damping:76.1519 initialVelocity:{0.0, 0.0}];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v77 timingParameters:0.0];
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    v90 = sub_190BF4964;
    v91 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_140;
    v40 = _Block_copy(&aBlock);
    v41 = v37;

    v76 = v38;
    [v38 addAnimations_];
    _Block_release(v40);
    [v38 startAnimationAfterDelay_];
    v75 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v75 timingParameters:0.0];
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v90 = sub_190BF496C;
    v91 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_146;
    v44 = _Block_copy(&aBlock);
    v45 = v41;

    v74 = v42;
    [v42 addAnimations_];
    _Block_release(v44);
    [v42 startAnimationAfterDelay_];
    v46 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v47 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.0];
    v48 = swift_allocObject();
    *(v48 + 16) = v45;
    *(v48 + 24) = v84;
    v90 = sub_190BF49A8;
    v91 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_152_0;
    v49 = _Block_copy(&aBlock);
    v50 = v45;
    sub_190D50920();

    [v47 addAnimations_];
    _Block_release(v49);
    [v47 startAnimationAfterDelay_];
    v51 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:850.915 damping:35.1725 initialVelocity:{0.0, 0.0}];
    v52 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v51 timingParameters:0.0];
    v53 = swift_allocObject();
    *(v53 + 16) = v50;
    v90 = sub_190BF4C14;
    v91 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_190840E6C;
    v89 = &block_descriptor_158;
    v54 = _Block_copy(&aBlock);
    v55 = v50;

    [v52 addAnimations_];
    _Block_release(v54);
    [v52 startAnimationAfterDelay_];
  }

  else
  {
    v56 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
    v57 = *(v8 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
    if (v57)
    {
      [v57 setAlpha_];
      v58 = *(v8 + v56);
      if (v58)
      {
        v59 = v58;
        v60 = [v59 layer];
        v61 = sub_190D51C70();
        v62 = sub_190D56ED0();
        [v60 setValue:v61 forKeyPath:v62];
      }
    }

    v63 = *&v2[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton];
    [v63 setAlpha_];
    v64 = [v63 layer];
    v65 = sub_190D51C70();
    v66 = sub_190D56ED0();
    [v64 setValue:v65 forKeyPath:v66];

    v67 = [v63 layer];
    v68 = sub_190D51C70();
    v69 = sub_190D56ED0();
    [v67 setValue:v68 forKeyPath:v69];

    v70 = *(v85 + 272);
    v71 = *(v85 + 280);
    v72 = *(v85 + 296);
    [v63 setBounds_];
    [v63 setCenter_];
    v73 = [v63 layer];
    [v73 setCornerRadius_];

    sub_190BF3554();
    [*&v2[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer] setAlpha_];
    sub_19094DD88(0);
  }
}

void sub_190BF162C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton) layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_190BF16D4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton) layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_190BF177C(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 layer];
    v4 = sub_190D51C70();
    v5 = sub_190D56ED0();
    [v3 setValue:v4 forKeyPath:v5];
  }

  sub_190BF424C();
}

id sub_190BF1848()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_190BF4C1C;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_190840E6C;
  v8[3] = &block_descriptor_262_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];

  sub_190BF3CE4();
  [*&v5[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer] setEnabled_];
  v6 = sub_190BF420C();
  if (v6)
  {
    [v6 setAlpha_];
  }

  result = sub_190BF422C();
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_190BF19F0(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_allocObject();
  v4 = v3;
  v5 = v1;
  v6 = a1;
  v7 = sub_1909DCA94(v4, v6, 0, v5);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:850.915 damping:65.1725 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v13[4] = sub_190BF4C14;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_190840E6C;
  v13[3] = &block_descriptor_109_0;
  v11 = _Block_copy(v13);
  v12 = v5;

  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
  sub_190BF1848();
  sub_190BF37F8(v7, 0.07, 575.0);
  sub_19094941C(v6);
}

void sub_190BF1BE0()
{
  sub_190BF1848();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1650.915 damping:65.1725 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_190BF4938;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_190840E6C;
  v8[3] = &block_descriptor_103;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];
  v6 = *&v5[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_allocObject();
  v7 = sub_1909DB588(v6);
  sub_190BF37F8(v7, 0.03, 475.0);
  sub_19094B260();
}

void sub_190BF1D98(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer);
  [v1 setAlpha_];
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_190BF1E60(char a1)
{
  v2 = v1;
  sub_19094E9C4(a1);
  [*(*&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill] + OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer) setEnabled_];
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  if (a1)
  {
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v5 = sub_1909DBC0C(v4);
  }

  else
  {
    type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
    swift_allocObject();
    v5 = sub_1909DD19C(v4);
  }

  v6 = v5;
  sub_190BF37F8(v5, 0.07, 375.0);
  sub_190BF3CE4();
  if (a1)
  {
    sub_190BF2898();
  }

  [*&v1[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer] setEnabled_];
  v7 = sub_190BF420C();
  if (v7)
  {
    [v7 setAlpha_];
  }

  v8 = sub_190BF422C();
  if (v8)
  {
    [v8 setAlpha_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:250.915 damping:35.1725 initialVelocity:{0.0, 0.0}];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v9 timingParameters:0.0];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v6;
  v14[4] = sub_190BF4930;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_190840E6C;
  v14[3] = &block_descriptor_97_1;
  v12 = _Block_copy(v14);
  v13 = v2;
  sub_190D50920();

  [v10 addAnimations_];
  _Block_release(v12);
  [v10 startAnimationAfterDelay_];
}

void sub_190BF20D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer);
  [v1 setAlpha_];
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];

  sub_190BF424C();
}

void sub_190BF218C()
{
  v1 = v0;
  sub_19094F9DC();
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
  swift_initStackObject();
  sub_1909DD19C(v2);
  sub_190BF424C();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v3 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  aBlock[4] = sub_190BF490C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_91;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
}

void sub_190BF2334()
{
  v1 = v0;
  sub_19094FFB0(*&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill], 0.15, 1.25);
  sub_19094FFB0(*&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail], 0.2, 1.35);
  sub_19094FFB0(*&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail], 0.25, 1.45);
  sub_19094FFB0(*&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail], 0.3, 1.55);
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v3 = sub_1909DC4F8(v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v9[4] = sub_190BF4BF8;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_190840E6C;
  v9[3] = &block_descriptor_85_1;
  v7 = _Block_copy(v9);
  v8 = v1;
  sub_190D50920();

  [v5 addAnimations_];
  _Block_release(v7);
  [v5 startAnimationAfterDelay_];
}

void sub_190BF2568()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerCancelTouchedDownLayout();
  swift_allocObject();
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_initStackObject();
  v3 = v2;
  v4 = sub_1909DC4F8(v3);
  v5 = sub_1909DDA5C(v4);

  if (qword_1EAD51B00 != -1)
  {
    swift_once();
  }

  if (qword_1EAD52110 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1EAD9E748;

  v5[18].f64[0] = v6 + v6;
  v5[18].f64[1] = v6 + v6;
  v5[19] = vsubq_f64(v5[17], vdupq_lane_s64(COERCE__INT64((v6 + v6) * 0.5), 0));
  v5[20].f64[0] = v6 + v6;
  v5[20].f64[1] = v6 + v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  aBlock[4] = sub_190BF48F0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_79_1;
  v10 = _Block_copy(aBlock);
  v11 = v1;
  sub_190D50920();

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
}

void sub_190BF27D8(uint64_t a1, double *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  v3 = a2[34];
  v4 = a2[35];
  v5 = a2[37];
  [v2 setBounds_];
  [v2 setCenter_];
  v6 = [v2 layer];
  [v6 setCornerRadius_];
}

void sub_190BF2898()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v3 = sub_1909DBC0C(v2);
  v33 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:463.915 damping:35.1725 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v33 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v38 = sub_190BF4AE8;
  v39 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_190840E6C;
  v37 = &block_descriptor_231;
  v6 = _Block_copy(&aBlock);
  v7 = v1;
  sub_190D50920();

  v32 = v4;
  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:320.0 applicationActivities:{28.6217, 0.0, 0.0} + 3];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v31 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v3;
  v38 = sub_190BF4AF0;
  v39 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_190840E6C;
  v37 = &block_descriptor_237;
  v10 = _Block_copy(&aBlock);
  v11 = v7;
  sub_190D50920();

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.05 initWithActivityItems:164.025 applicationActivities:{18.8227, 0.0, 0.0} + 3];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v30 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v3;
  v38 = sub_190BF4AF8;
  v39 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_190840E6C;
  v37 = &block_descriptor_243;
  v14 = _Block_copy(&aBlock);
  v15 = v11;
  sub_190D50920();

  v29 = v12;
  [v12 addAnimations_];
  _Block_release(v14);
  [v12 startAnimationAfterDelay_];
  v16 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hasPresentedEmojiTail;
  if (v15[OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hasPresentedEmojiTail])
  {
    v17 = 1242.98;
  }

  else
  {
    v17 = 972.986;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:v17 damping:62.3854 initialVelocity:{0.0, 0.0}];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v18 timingParameters:0.0];
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v38 = sub_190BF4B00;
  v39 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_190840E6C;
  v37 = &block_descriptor_249;
  v21 = _Block_copy(&aBlock);
  v22 = v15;

  [v19 addAnimations_];
  _Block_release(v21);
  v23 = 0.2223;
  if (v15[v16])
  {
    v23 = 0.33;
  }

  [v19 startAnimationAfterDelay_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v24 timingParameters:0.0];
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  v38 = sub_190BF4B1C;
  v39 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_190840E6C;
  v37 = &block_descriptor_255;
  v27 = _Block_copy(&aBlock);
  v28 = v22;

  [v25 addAnimations_];
  _Block_release(v27);
  [v25 startAnimationAfterDelay_];

  v15[v16] = 1;
}

void sub_190BF2F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  v4 = *&v3[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    v7 = sub_190D51C70();
    v8 = sub_190D56ED0();
    [v6 setValue:v7 forKeyPath:v8];
  }

  swift_beginAccess();
  v9 = *(a2 + 104) * 0.5;
  [v3 setBounds_];
  v10 = [v3 layer];
  [v10 setCornerRadius_];
}

id sub_190BF308C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v4 = *(a2 + 80);
  [v3 center];
  return [v3 setCenter_];
}

id sub_190BF3108(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v1 center];
  return [v1 setCenter_];
}

char *sub_190BF3184(uint64_t a1)
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v3 = result;
    v4 = [result usesTapbackRefreshStyling];

    result = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
    if (!v4 || (result = *&result[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView]) != 0)
    {

      return [result setAlpha_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190BF3240(uint64_t a1)
{
  v2 = [objc_opt_self() sharedBehaviors];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 usesTapbackRefreshStyling];

  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  if (v4)
  {
    v6 = *&v5[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [v7 layer];
    v9 = sub_190D51C70();
    v10 = sub_190D56ED0();
    [v8 setValue:v9 forKeyPath:?];
  }

  else
  {
    v8 = [v5 layer];
    v9 = sub_190D51C70();
    v10 = sub_190D56ED0();
    [v8 setValue:v9 forKeyPath:?];
  }
}

void sub_190BF33D0(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v2 timingParameters:0.0];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_190BF4C1C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_190840E6C;
    v7[3] = &block_descriptor_225;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 addAnimations_];
    _Block_release(v5);
    [v3 startAnimationAfterDelay_];
  }

  else
  {

    sub_190BF3554();
  }
}

void sub_190BF3554()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedBehaviors];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 usesTapbackRefreshStyling];

  v5 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  if (v4)
  {
    v6 = *&v5[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
    if (v6)
    {
      [v6 setAlpha_];
    }
  }

  else
  {
    [v5 setAlpha_];
  }

  v7 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v8 = *&v5[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 layer];
    v11 = sub_190D51C70();
    v12 = sub_190D56ED0();
    [v10 setValue:v11 forKeyPath:v12];
  }

  v13 = [v1 sharedBehaviors];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 usesTapbackRefreshStyling];

  if (v15)
  {
    v16 = *&v5[v7];
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = [v17 layer];
    v19 = sub_190D51C70();
    v20 = sub_190D56ED0();
    [v18 setValue:v19 forKeyPath:?];
  }

  else
  {
    v18 = [v5 layer];
    v19 = sub_190D51C70();
    v20 = sub_190D56ED0();
    [v18 setValue:v19 forKeyPath:?];
  }
}

void sub_190BF37F8(uint64_t a1, double a2, double a3)
{
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:100.0 damping:29.5469 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  v26 = sub_190BF4A08;
  v27 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_190840E6C;
  v25 = &block_descriptor_206;
  v9 = _Block_copy(&aBlock);
  v10 = v3;
  sub_190D50920();

  [v7 addAnimations_];
  _Block_release(v9);
  [v7 startAnimationAfterDelay_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:400.0 damping:29.5469 initialVelocity:{0.0, 0.0}];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v11 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  v26 = sub_190BF4A74;
  v27 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_190840E6C;
  v25 = &block_descriptor_212;
  v14 = _Block_copy(&aBlock);
  v15 = v10;
  sub_190D50920();

  [v12 addAnimations_];
  _Block_release(v14);
  [v12 startAnimationAfterDelay_];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:a3 damping:30.0 initialVelocity:{0.0, 0.0}];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v16 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v26 = sub_190BF4AE0;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_190840E6C;
  v25 = &block_descriptor_218;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  [v17 addAnimations_];
  _Block_release(v19);
  [v17 startAnimationAfterDelay_];
}

void sub_190BF3BA8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  [v1 setAlpha_];
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = [v1 layer];
  v6 = sub_190D51C70();
  v7 = sub_190D56ED0();
  [v5 setValue:v6 forKeyPath:v7];
}

void sub_190BF3CE4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:300.0 damping:29.5469 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_190BF4A00;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_190840E6C;
  v6[3] = &block_descriptor_200;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];
}

void sub_190BF3E3C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v2 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v3)
  {
    [v3 setAlpha_];
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 layer];
      v7 = sub_190D51C70();
      v8 = sub_190D56ED0();
      [v6 setValue:v7 forKeyPath:v8];
    }
  }
}

void sub_190BF3F3C()
{
  sub_1902905D8(*(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___backwardArrow));
  sub_1902905D8(*(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___forwardArrow));

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
}

id sub_190BF3FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerBalloonAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190BF4164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190BF420C();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    [v6 setAlpha_];
  }

  result = sub_190BF422C();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    return [v8 setAlpha_];
  }

  return result;
}

uint64_t sub_190BF420C()
{
  result = *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___backwardArrow);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___backwardArrow) = 0;
  }

  return result;
}

uint64_t sub_190BF422C()
{
  result = *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___forwardArrow);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___forwardArrow) = 0;
  }

  return result;
}

void sub_190BF424C()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 usesTapbackRefreshStyling];

    if (v3)
    {
      [*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) ck:0 applyTapbackGlassBackgroundUsingAdaptive:1 smoothness:5.0 flexible:?];
      [*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail) ck:0 applyTapbackGlassBackgroundUsingAdaptive:0 smoothness:5.0 flexible:?];
      [*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail) ck:0 applyTapbackGlassBackgroundUsingAdaptive:0 smoothness:5.0 flexible:?];
      v4 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);

      [v4 ck:0 applyTapbackGlassBackgroundUsingAdaptive:0 smoothness:5.0 flexible:?];
    }
  }

  else
  {
    __break(1u);
  }
}

_BYTE *sub_190BF4364(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hasPresentedEmojiTail) = 0;
  v4 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton;
  v5 = objc_allocWithZone(type metadata accessor for TapbackPickerCancelButtonView());
  *(v1 + v4) = sub_190C7FB94(0.0, 0.0, 0.0, 0.0);
  *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___backwardArrow) = 1;
  *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView____lazy_storage___forwardArrow) = 1;
  v6 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_collectionViewContainer;
  v7 = objc_allocWithZone(type metadata accessor for TapbackPickerCollectionViewContainer());
  *(v1 + v6) = sub_190CF06B0(1, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_hoverGestureRecognizer;
  *(v2 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) init];
  *(v2 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView) = 0;
  v9 = sub_1909429B4(a1);
  v9[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] = 0;
  v10 = *MEMORY[0x1E6979808];
  v11 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v12 = v9;
  v13 = [v11 initWithType_];
  sub_190A87064(v13);

  v12[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v14);

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v16 = result;
    v17 = [result usesTapbackRefreshStyling];

    if (v17)
    {
      [v12 ck_applyGlassGroup];
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190BF455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v6;
  v10[4] = v7;
  v13[4] = a2;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_190840E6C;
  v13[3] = a3;
  v11 = _Block_copy(v13);
  v12 = v3;
  sub_190D50920();
  sub_190D50920();

  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
}

void sub_190BF4708(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_arrowDirection);
  v3 = OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView;
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  if (v2 == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = [v4 semanticContentAttribute];
    v6 = *(v1 + v3);
    if (v5 != 3)
    {
LABEL_4:
      if (!v6)
      {
        return;
      }

      v16 = v6;
      [v16 bounds];
      v8 = *&v16[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
      if (v16[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8])
      {
        v8 = 0.0;
      }

      v9 = fmod(v8, v7);
      v10 = v16;
      v11 = (v9 + *&v16[OBJC_IVAR___CKTapbackPickerCollectionView_itemWidth] * -0.5) * 0.0;
      goto LABEL_14;
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v12 = [v4 semanticContentAttribute];
    v6 = *(v1 + v3);
    if (v12 == 3)
    {
      goto LABEL_4;
    }
  }

  if (!v6)
  {
    return;
  }

  v17 = v6;
  [v17 bounds];
  v14 = *&v17[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  if (v17[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8])
  {
    v14 = 0.0;
  }

  v15 = fmod(v14, v13);
  v10 = v17;
  v11 = v15 + *&v17[OBJC_IVAR___CKTapbackPickerCollectionView_itemWidth] * -0.5;
LABEL_14:
  v18 = v10;
  [v10 setContentOffset:1 animated:{v11, 0.0}];
}

uint64_t objectdestroy_63Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_190BF496C()
{
  result = *(*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

id sub_190BF4A0C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  [v1 center];

  return [v1 setCenter_];
}

id sub_190BF4A78()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  v2 = *(*(v0 + 24) + 272);
  [v1 center];

  return [v1 setCenter_];
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t static PollDetailsViewControllerBuilder.buildViewController(options:responses:chat:)(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for PollDetailsViewController(0));
  sub_190D52690();
  sub_190D52690();
  v7 = a3;
  v8 = sub_190BF5440(a1, a2, v7);
  v10 = v9;

  if (qword_1EAD51B88 != -1)
  {
    swift_once();
  }

  sub_1909E4040(&unk_1EAD9DD40, &v15);
  v14[0] = v8;
  v14[1] = v10;
  sub_1909E3A70(v14, &v13);
  v11 = sub_190D54B60();
  sub_190BF6768(v14);

  return v11;
}

id PollDetailsViewControllerBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PollDetailsViewControllerBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PollDetailsViewControllerBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_190BF4FDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190BF4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_190D57630();
  v6 = sub_190D57180();
  sub_19086E9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190BF6828();
  v7 = sub_190D56D90();
  v8 = a5;
  v9 = sub_190BF5440(v6, v7, v8);
  v11 = v10;

  if (qword_1EAD51B88 != -1)
  {
    swift_once();
  }

  sub_1909E4040(&unk_1EAD9DD40, &v16);
  v15[0] = v9;
  v15[1] = v11;
  sub_1909E3A70(v15, &v14);
  v12 = sub_190D54B60();

  sub_190BF6768(v15);
  return v12;
}

id sub_190BF520C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_190BF5244(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_27:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_190D581C0();
  }

  else
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v27 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AF3B90](v5, a1);
    }

    else
    {
      if (v5 >= *(v25 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 ID];
    v10 = sub_190D56F10();
    v12 = v11;

    v13 = [a2 ID];
    v14 = sub_190D56F10();
    v16 = v15;

    if (v10 == v14 && v12 == v16)
    {

      return v5;
    }

    v18 = sub_190D58760();

    if (v18)
    {
      break;
    }

    if (*(a3 + 16))
    {
      v19 = v8;
      v20 = sub_190875FB8(v19);
      if (v21)
      {
        v22 = *(*(a3 + 56) + 8 * v20);
        sub_190D52690();

        v23 = *(v22 + 16);

        if (v23)
        {
          return v5;
        }

        goto LABEL_6;
      }
    }

LABEL_6:
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_26;
    }
  }

  return v5;
}

uint64_t sub_190BF5440(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_190D51290();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v149 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_190D511C0();
  v8 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for PollDetailsViewController.DetailsPollOption(0);
  v154 = *(v155 - 8);
  v10 = MEMORY[0x1EEE9AC00](v155);
  v160 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_190;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  v163 = a2;
  v157 = a3;
  if (v12)
  {
    a3 = 0;
    v165 = 0;
    v14 = a2 + 64;
    v153 = a1 & 0xC000000000000001;
    v148 = a1 & 0xFFFFFFFFFFFFFF8;
    v150 = a1;
    v147 = a1 + 32;
    v151 = (v8 + 32);
    v152 = v12;
    while (1)
    {
      if (v153)
      {
        v15 = MEMORY[0x193AF3B90](a3, v150, v10);
      }

      else
      {
        if (a3 >= *(v148 + 16))
        {
          goto LABEL_184;
        }

        v15 = *(v147 + 8 * a3);
      }

      v164 = v15;
      v16 = __OFADD__(a3++, 1);
      if (v16)
      {
        break;
      }

      v158 = a3;
      v162 = v13;
      v17 = MEMORY[0x1E69E7CC0];
      *&v166 = MEMORY[0x1E69E7CC0];
      v18 = 1 << *(a2 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(a2 + 64);
      v21 = (v18 + 63) >> 6;
      sub_190D52690();
      v22 = 0;
      v161 = v17;
LABEL_14:
      v23 = v22;
      if (!v20)
      {
        goto LABEL_16;
      }

      do
      {
        v22 = v23;
LABEL_19:
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = (v22 << 9) | (8 * v24);
        v26 = *(*(a2 + 56) + v25);
        v27 = *(*(a2 + 48) + v25);
        sub_190D52690();
        v28 = [v164 optionIdentifier];
        v29 = sub_190D56F10();
        v31 = v30;

        *&v168 = v29;
        *(&v168 + 1) = v31;
        MEMORY[0x1EEE9AC00](v32);
        *(&v146 - 2) = &v168;
        v33 = v165;
        LOBYTE(v29) = sub_190CA8558(sub_1909F5BC8, (&v146 - 4), v26);
        v165 = v33;

        if (v29)
        {
          v34 = v27;
          MEMORY[0x193AF29E0]();
          if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();

          v161 = v166;
          a2 = v163;
          goto LABEL_14;
        }

        v23 = v22;
        a2 = v163;
      }

      while (v20);
      while (1)
      {
LABEL_16:
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_128:

          goto LABEL_178;
        }

        if (v22 >= v21)
        {
          break;
        }

        v20 = *(v14 + 8 * v22);
        ++v23;
        if (v20)
        {
          goto LABEL_19;
        }
      }

      v35 = v164;
      v36 = [v164 pollText];
      v37 = sub_190D56F10();
      v39 = v38;

      v40 = [v35 attributedPollText];
      v41 = [v40 mutableCopy];
      if (v41)
      {
        v42 = v41;
        [v41 ck_addDisplayableAttributesForIMTextStyleAttributes];
        v43 = v42;
        sub_190D51200();
      }

      else
      {
        v44 = [v40 string];
        sub_190D56F10();

        sub_190D51280();
        sub_190D511D0();
      }

      v13 = v162;
      v45 = v157;

      v46 = [v164 optionIdentifier];
      v47 = sub_190D56F10();
      v49 = v48;

      v50 = [v45 chatIdentifier];
      if (v50)
      {
        v51 = v50;
        v52 = sub_190D56F10();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v55 = v159;
      v56 = v160;
      *v160 = v37;
      *(v56 + 1) = v39;
      v57 = v155;
      (*v151)(&v56[*(v155 + 20)], v55, v156);
      v58 = &v56[v57[6]];
      *v58 = v47;
      v58[1] = v49;
      *&v56[v57[7]] = v161;
      v59 = &v56[v57[8]];
      *v59 = v52;
      v59[1] = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_190836EB0(0, v13[2] + 1, 1, v13);
      }

      a2 = v163;
      v60 = v152;
      a3 = v158;
      a1 = v13[2];
      v61 = v13[3];
      v8 = (a1 + 1);
      if (a1 >= v61 >> 1)
      {
        v13 = sub_190836EB0(v61 > 1, a1 + 1, 1, v13);
      }

      v13[2] = v8;
      sub_1909E42A4(v160, v13 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * a1);
      if (a3 == v60)
      {
        goto LABEL_38;
      }
    }

LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v165 = 0;
LABEL_38:
  v162 = v13;
  v62 = [v157 participants];
  v155 = sub_19086E9EC();
  a1 = sub_190D57180();

  v170 = a1;
  v63 = *(a2 + 64);
  v158 = a2 + 64;
  v64 = 1 << *(a2 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v8 = ((v64 + 63) >> 6);
  sub_190D52690();
  v67 = 0;
  v156 = v8;
  v68 = v158;
  if (!v66)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v22 = v67;
LABEL_45:
    v159 = v66;
    v69 = *(*(a2 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v66)))));
    v70 = v170;
    sub_190D52690();
    v164 = v69;
    v71 = v165;
    a1 = sub_190BF5244(v70, v164, a2);
    LOBYTE(v69) = v72;
    v165 = v71;

    if (v69)
    {
      if (v70 >> 62)
      {
        v161 = sub_190D581C0();
      }

      else
      {
        v161 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_95;
    }

    v161 = a1;
    v8 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
LABEL_189:
      __break(1u);
LABEL_190:
      v12 = sub_190D581C0();
      goto LABEL_3;
    }

    if (!(v70 >> 62))
    {
      break;
    }

    if (v8 != sub_190D581C0())
    {
      goto LABEL_51;
    }

LABEL_95:
    if (v70 >> 62)
    {
      v92 = sub_190D581C0();
    }

    else
    {
      v92 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v156;
    if (v92 < v161)
    {
      goto LABEL_186;
    }

    v66 = (v159 - 1) & v159;
    a1 = &v170;
    sub_190A10010(v161, v92);

    v67 = v22;
    v68 = v158;
    if (!v66)
    {
      while (1)
      {
LABEL_42:
        v22 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          __break(1u);
          goto LABEL_181;
        }

        if (v22 >= v8)
        {
          break;
        }

        v66 = *(v68 + 8 * v22);
        ++v67;
        if (v66)
        {
          goto LABEL_45;
        }
      }

      v8 = [objc_opt_self() sharedInstance];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_190DDA780;
      v94 = *MEMORY[0x1E695C330];
      v95 = *MEMORY[0x1E695C208];
      *(v93 + 32) = *MEMORY[0x1E695C330];
      *(v93 + 40) = v95;
      v96 = *MEMORY[0x1E695C258];
      *(v93 + 48) = *MEMORY[0x1E695C258];
      v97 = v94;
      v98 = v95;
      v99 = v96;
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
      a3 = sub_190D57160();

      v21 = [v8 fetchMeContactWithKeys_];

      v22 = v162;
      if (v21)
      {
        v100 = 1 << *(a2 + 32);
        v101 = -1;
        if (v100 < 64)
        {
          v101 = ~(-1 << v100);
        }

        a2 = v101 & *(a2 + 64);
        v102 = (v100 + 63) >> 6;
        sub_190D52690();
        v103 = 0;
        a1 = &selRef_green_chevronImage;
        while (a2)
        {
LABEL_114:
          v105 = *(*(v163 + 48) + ((v103 << 9) | (8 * __clz(__rbit64(a2)))));
          v106 = sub_190D57160();
          v164 = v105;
          v107 = [v105 cnContactWithKeys_];

          if (v107)
          {
            v108 = [v107 *(a1 + 2880)];

            v109 = sub_190D56F10();
            v111 = v110;
          }

          else
          {
            v109 = 0;
            v111 = 0;
          }

          a2 &= a2 - 1;
          v8 = a1;
          v112 = *(a1 + 2880);
          v113 = v21;
          v114 = [v21 v112];
          a3 = sub_190D56F10();
          v116 = v115;

          if (v111)
          {
            if (v109 == a3 && v111 == v116)
            {

              v21 = v164;
              v22 = v162;
              goto LABEL_178;
            }

            v117 = sub_190D58760();

            v22 = v162;
            v21 = v113;
            a1 = v8;
            if (v117)
            {
              goto LABEL_177;
            }
          }

          else
          {

            v22 = v162;
            v21 = v113;
            a1 = v8;
          }
        }

        while (1)
        {
          v104 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_182;
          }

          if (v104 >= v102)
          {

            v118 = [v21 handles];
            v119 = sub_190D57180();

            if (!*(v119 + 16))
            {
              goto LABEL_128;
            }

            sub_190D52690();

            v120 = [v157 account];
            v121 = objc_allocWithZone(MEMORY[0x1E69A5B90]);
            v122 = sub_190D56ED0();

            [v121 initWithAccount:v120 ID:v122 alreadyCanonical:1];

            MEMORY[0x193AF29E0]();
            if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_194;
            }

            goto LABEL_124;
          }

          a2 = *(v158 + 8 * v104);
          ++v103;
          if (a2)
          {
            v103 = v104;
            goto LABEL_114;
          }
        }
      }

      a1 = v157;
      v123 = [v157 lastAddressedHandleID];
      if (v123)
      {
        v8 = v123;
        a1 = [a1 account];
        v124 = [objc_allocWithZone(MEMORY[0x1E69A5B90]) initWithAccount:a1 ID:v8 alreadyCanonical:0];

        v164 = v124;
        v125 = v124;
        goto LABEL_140;
      }

      v126 = [a1 account];
      if (v126)
      {
        a1 = v126;
        v8 = [v126 loginIMHandle];

        if (v8)
        {
          sub_190D58140();
          swift_unknownObjectRelease();
        }

        else
        {
          v166 = 0u;
          v167 = 0u;
        }

        v168 = v166;
        v169 = v167;
        if (*(&v167 + 1))
        {
          if (swift_dynamicCast())
          {
            v164 = v166;
            v127 = v166;
            goto LABEL_140;
          }

LABEL_139:
          v164 = 0;
LABEL_140:
          v128 = 1 << *(a2 + 32);
          v129 = -1;
          if (v128 < 64)
          {
            v129 = ~(-1 << v128);
          }

          v130 = v129 & *(a2 + 64);
          v131 = (v128 + 63) >> 6;
          sub_190D52690();
          v132 = 0;
          while (1)
          {
            if (!v130)
            {
              while (1)
              {
                v133 = v132 + 1;
                if (__OFADD__(v132, 1))
                {
                  break;
                }

                if (v133 >= v131)
                {
                  v144 = v164;

                  if (!v144)
                  {
                    return v22;
                  }

                  v21 = v144;
                  MEMORY[0x193AF29E0]();
                  if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_190D571A0();
                  }

                  goto LABEL_124;
                }

                v130 = *(v158 + 8 * v133);
                ++v132;
                if (v130)
                {
                  v132 = v133;
                  goto LABEL_148;
                }
              }

LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

LABEL_148:
            a1 = *(*(a2 + 48) + ((v132 << 9) | (8 * __clz(__rbit64(v130)))));
            v134 = [a1 ID];
            if (!v134)
            {
              sub_190D56F10();
              v134 = sub_190D56ED0();
            }

            v135 = [v134 _stripFZIDPrefix];

            if (v135)
            {
              v136 = sub_190D56F10();
              v8 = v137;

              v138 = v164;
              if (!v164)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v136 = 0;
              v8 = 0;
              v138 = v164;
              if (!v164)
              {
LABEL_157:
                a3 = 0;
                v142 = 0;
                goto LABEL_160;
              }
            }

            v139 = [v138 ID];
            if (!v139)
            {
              sub_190D56F10();
              v139 = sub_190D56ED0();
            }

            v140 = [v139 _stripFZIDPrefix];

            if (v140)
            {
              a3 = sub_190D56F10();
              v142 = v141;
            }

            else
            {
              a3 = 0;
              v142 = 0;
            }

            v22 = v162;
LABEL_160:
            v130 &= v130 - 1;
            if (!v8)
            {
              if (!v142)
              {
                goto LABEL_176;
              }

LABEL_167:

              a2 = v163;
              continue;
            }

            if (!v142)
            {
              goto LABEL_167;
            }

            if (v136 == a3 && v8 == v142)
            {
              v21 = v164;

              goto LABEL_177;
            }

            v143 = sub_190D58760();

            a2 = v163;
            if (v143)
            {
              v21 = v164;

              goto LABEL_177;
            }
          }
        }
      }

      else
      {
        v168 = 0u;
        v169 = 0u;
      }

      sub_19021E7D8(&v168);
      goto LABEL_139;
    }
  }

  if (v8 == *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_95;
  }

LABEL_51:
  a2 = v161 + 5;
  while (1)
  {
    v21 = a2 - 4;
    v160 = (v70 & 0xC000000000000001);
    if ((v70 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x193AF3B90](a2 - 4, v70);
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        v21 = v164;

LABEL_177:

        goto LABEL_178;
      }

      if (v21 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_174;
      }

      v73 = *(v70 + 8 * a2);
    }

    v8 = v73;
    v74 = [v73 ID];
    v75 = sub_190D56F10();
    a1 = v76;

    v77 = [v164 ID];
    v78 = sub_190D56F10();
    a3 = v79;

    if (v75 == v78 && a1 == a3)
    {

      goto LABEL_86;
    }

    v81 = sub_190D58760();

    if (v81)
    {

      goto LABEL_86;
    }

    a1 = v163;
    if (!*(v163 + 16))
    {
      break;
    }

    v82 = sub_190875FB8(v8);
    if ((v83 & 1) == 0)
    {
      break;
    }

    a1 = *(*(a1 + 56) + 8 * v82);
    sub_190D52690();

    v8 = *(a1 + 16);

    if (!v8)
    {
      goto LABEL_68;
    }

LABEL_86:
    v90 = a2 - 3;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_175;
    }

    if (v70 >> 62)
    {
      v91 = sub_190D581C0();
    }

    else
    {
      v91 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++a2;
    if (v90 == v91)
    {
      a2 = v163;
      goto LABEL_95;
    }
  }

LABEL_68:
  if (v21 == v161)
  {
    goto LABEL_85;
  }

  if (v160)
  {
    v8 = MEMORY[0x193AF3B90](v161, v70);
    v84 = MEMORY[0x193AF3B90](a2 - 4, v70);
    goto LABEL_75;
  }

  if ((v161 & 0x8000000000000000) == 0)
  {
    v85 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v161 >= v85)
    {
      goto LABEL_192;
    }

    if (v21 >= v85)
    {
      goto LABEL_193;
    }

    v86 = *(v70 + 8 * a2);
    v8 = *(v70 + 8 * v161 + 32);
    v84 = v86;
LABEL_75:
    a1 = v84;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v70 & 0x8000000000000000) != 0 || (v70 & 0x4000000000000000) != 0)
    {
      v70 = sub_190A5E100(v70);
      a3 = (v70 >> 62) & 1;
    }

    else
    {
      a3 = 0;
    }

    v87 = v70 & 0xFFFFFFFFFFFFFF8;
    v88 = *((v70 & 0xFFFFFFFFFFFFFF8) + 8 * v161 + 0x20);
    *((v70 & 0xFFFFFFFFFFFFFF8) + 8 * v161 + 0x20) = a1;

    if ((v70 & 0x8000000000000000) != 0 || a3)
    {
      v70 = sub_190A5E100(v70);
      v87 = v70 & 0xFFFFFFFFFFFFFF8;
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_187;
      }
    }

    else if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_187;
    }

    if (v21 >= *(v87 + 16))
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v89 = *(v87 + 8 * a2);
    *(v87 + 8 * a2) = v8;

    v170 = v70;
LABEL_85:
    v16 = __OFADD__(v161++, 1);
    if (v16)
    {
      goto LABEL_185;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  sub_190D571A0();
LABEL_124:
  sub_190D571E0();
LABEL_178:

  return v22;
}

unint64_t sub_190BF6828()
{
  result = qword_1EAD5FC08;
  if (!qword_1EAD5FC08)
  {
    sub_19086E9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC08);
  }

  return result;
}

void sub_190BF68C8()
{
  sub_190D511C0();
  if (v0 <= 0x3F)
  {
    sub_190BF695C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190BF695C()
{
  if (!qword_1EAD5FC20)
  {
    sub_19086E9EC();
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5FC20);
    }
  }
}

uint64_t sub_190BF69B4(char a1)
{
  v2 = sub_190D51D20();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56890();
  (*(v3 + 104))(v5, **(&unk_1E72FA0E0 + a1), v2);
  v6 = MEMORY[0x193AF20F0](v5, 1);
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_190BF6AE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656B696C736944;
  v5 = 0x8000000190E5B020;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000190E5B020;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701538124;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x656B696C736944;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701538124;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

uint64_t sub_190BF6BD4()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190BF6C74()
{
  sub_190D56FC0();
}

uint64_t sub_190BF6D00()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190BF6D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190BF6E80();
  *a1 = result;
  return result;
}

void sub_190BF6DCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656B696C736944;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000190E5B020;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701538124;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_190BF6E2C()
{
  result = qword_1EAD5FC28;
  if (!qword_1EAD5FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC28);
  }

  return result;
}

uint64_t sub_190BF6E80()
{
  v0 = sub_190D585F0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_190BF6EF8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC30);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190BF815C(&qword_1EAD45C98, _s9ViewModelCMa_4);
  sub_190D51C20();

  sub_190D52690();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_190D50920();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC40);
  sub_190233640(&qword_1EAD5FC48, &qword_1EAD5FC38);
  sub_190BF7DA8();
  sub_190BF81A4();
  return sub_190D56290();
}

uint64_t sub_190BF70C8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC68);
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FCA8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v33 - v10;
  v12 = _s18TranslationSectionVMa();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FCB0);
  v15 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v18 = &v33 - v17;
  if (*(a1 + 8) == 1)
  {
    v39 = a2;
    v40 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC30);
    sub_190D55FD0();
    _s9ViewModelCMa_4();
    sub_190BF815C(&qword_1EAD45C98, _s9ViewModelCMa_4);
    sub_190D56340();
    v19 = &v14[v12[5]];
    LOBYTE(v38) = 0;
    sub_190D55FC0();
    v20 = v40;
    *v19 = v39;
    *(v19 + 1) = v20;
    v21 = &v14[v12[6]];
    LOBYTE(v38) = 0;
    sub_190D55FC0();
    v22 = v40;
    *v21 = v39;
    *(v21 + 1) = v22;
    v23 = &v14[v12[7]];
    LOBYTE(v38) = 0;
    sub_190D55FC0();
    v24 = v40;
    *v23 = v39;
    *(v23 + 1) = v24;
    v25 = &v14[v12[8]];
    LOBYTE(v38) = 0;
    sub_190D55FC0();
    v26 = v40;
    *v25 = v39;
    *(v25 + 1) = v26;
    v27 = sub_190BF815C(&qword_1EAD5FC58, _s18TranslationSectionVMa);
    sub_190D55650();
    sub_190BF8208(v14);
    v28 = v35;
    (*(v15 + 16))(v11, v18, v35);
    swift_storeEnumTagMultiPayload();
    v39 = v12;
    v40 = v27;
    swift_getOpaqueTypeConformance2();
    sub_190BF7E94();
    sub_190D54C50();
    return (*(v15 + 8))(v18, v28);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v33 - 4) = v30;
    *(&v33 - 24) = 0;
    *(&v33 - 2) = a2;
    *(&v33 - 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC78);
    sub_190BF7F24();
    sub_190D562E0();
    v31 = v37;
    (*(v7 + 16))(v11, v9, v37);
    swift_storeEnumTagMultiPayload();
    v32 = sub_190BF815C(&qword_1EAD5FC58, _s18TranslationSectionVMa);
    v39 = v12;
    v40 = v32;
    swift_getOpaqueTypeConformance2();
    sub_190BF7E94();
    sub_190D54C50();
    return (*(v7 + 8))(v9, v31);
  }
}

uint64_t sub_190BF7624(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_19086D6EC(a1);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_190BF8264;
  *(v9 + 24) = v8;
  sub_190D50920();
  sub_190D52690();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FCC0);
  sub_190233640(&qword_1EAD5FCC8, &qword_1EAD5FCB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC80);
  sub_190BF7FE4();
  swift_getOpaqueTypeConformance2();
  return sub_190D56280();
}

uint64_t sub_190BF77DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v35 = a1;
  v9 = sub_190D548A0();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90);
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC80);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v28 - v15;
  sub_190D572A0();
  sub_190D50920();
  sub_190D50920();
  v17 = sub_190D57290();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a2;
  sub_190D50920();
  sub_190D50920();
  v20 = sub_190D57290();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a2;
  sub_190D56230();
  v36 = a2;
  sub_190D56180();
  sub_190D54890();
  sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
  sub_190BF815C(&qword_1EAD61270, MEMORY[0x1E697C480]);
  v22 = v28;
  v23 = v31;
  sub_190D557B0();
  (*(v32 + 8))(v12, v23);
  (*(v30 + 8))(v14, v22);
  v24 = sub_190D55DB0();
  KeyPath = swift_getKeyPath();
  v26 = &v16[*(v29 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_190BF7FE4();
  sub_190D55640();
  return sub_190285504(v16);
}

uint64_t sub_190BF7BA0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  v9[0] = a1;
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC30);
  sub_190D55FD0();
  v6 = swift_readAtKeyPath();
  LOBYTE(a1) = *v7;
  v6(v9, 0);

  *a3 = a1;
  return result;
}

uint64_t sub_190BF7C68()
{
  swift_getKeyPath();
  sub_190D50920();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC30);
  sub_190D55FD0();
  swift_setAtWritableKeyPath();

  sub_190D55FE0();
}

uint64_t sub_190BF7D40@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_190BEE124(a1);
  sub_19081E484();
  result = sub_190D555F0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_190BF7DA8()
{
  result = qword_1EAD5FC50;
  if (!qword_1EAD5FC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC40);
    _s18TranslationSectionVMa();
    sub_190BF815C(&qword_1EAD5FC58, _s18TranslationSectionVMa);
    swift_getOpaqueTypeConformance2();
    sub_190BF7E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC50);
  }

  return result;
}

unint64_t sub_190BF7E94()
{
  result = qword_1EAD5FC60;
  if (!qword_1EAD5FC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC68);
    sub_190BF7F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC60);
  }

  return result;
}

unint64_t sub_190BF7F24()
{
  result = qword_1EAD5FC70;
  if (!qword_1EAD5FC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC80);
    sub_190BF7FE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC70);
  }

  return result;
}

unint64_t sub_190BF7FE4()
{
  result = qword_1EAD5FC88;
  if (!qword_1EAD5FC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC90);
    sub_190D548A0();
    sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
    sub_190BF815C(&qword_1EAD61270, MEMORY[0x1E697C480]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FC88);
  }

  return result;
}

uint64_t sub_190BF815C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190BF81A4()
{
  result = qword_1EAD5FCA0;
  if (!qword_1EAD5FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FCA0);
  }

  return result;
}

uint64_t sub_190BF8208(uint64_t a1)
{
  v2 = _s18TranslationSectionVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_13Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

unint64_t sub_190BF8318()
{
  result = qword_1EAD5FCD0;
  if (!qword_1EAD5FCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FCD8);
    sub_190BF7DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FCD0);
  }

  return result;
}

Swift::Void __swiftcall TapbackPickerViewController.updateVisibleCellsForScrollPosition()()
{
  v0 = sub_19098B380();
  v1 = [v0 visibleCells];

  sub_190BA12F4();
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AF3B90](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for TapbackPickerCollectionViewCell();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      TapbackPickerViewController.updateScrollViewEdgeEffects(forCell:)(v7);
      TapbackPickerViewController.updateSectionVisiblity(forCell:)(v8);
    }
  }

LABEL_12:
}

void TapbackPickerViewController.updateScrollViewEdgeEffects(forCell:)(char *a1)
{
  v2 = [objc_opt_self() sharedBehaviors];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 usesTapbackRefreshStyling];

  if ((v4 & 1) == 0)
  {
    v5 = sub_19098B380();
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [a1 center];
    v15 = v14;
    v32.origin.x = v7;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    v16 = CGRectGetMinX(v32) + 10.0;
    v33.origin.x = v7;
    v33.origin.y = v9;
    v33.size.width = v11;
    v33.size.height = v13;
    MaxX = CGRectGetMaxX(v33);
    if (v15 >= v16)
    {
      v19 = MaxX + -10.0;
      v20 = 0.0;
      if (v19 >= v15)
      {
LABEL_8:
        v21 = v20 * 1.35;
        v22 = v20 * -0.5 + 1.0;
        v23 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
        swift_beginAccess();
        *&a1[v23] = v21;
        v24 = 0.0;
        if (!UIAccessibilityIsReduceTransparencyEnabled())
        {
          v25 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
          swift_beginAccess();
          if (*&a1[v25] > *&a1[v23])
          {
            v24 = *&a1[v25];
          }

          else
          {
            v24 = *&a1[v23];
          }
        }

        sub_190BD4AF4(v24);
        v26 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
        swift_beginAccess();
        *&a1[v26] = v22;
        v27 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
        swift_beginAccess();
        v28 = *&a1[v27];
        v29 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
        swift_beginAccess();
        v30 = *&a1[v29];
        if (v30)
        {
          if (v22 >= v28)
          {
            v31 = v28;
          }

          else
          {
            v31 = v22;
          }

          [v30 setAlpha_];
        }

        sub_190BF92CC(a1);
        return;
      }

      v18 = (v15 - v19) / 10.0;
    }

    else
    {
      v18 = (v16 - v15) / 10.0;
    }

    v20 = fmin(v18, 1.0);
    goto LABEL_8;
  }
}

void TapbackPickerViewController.updateSectionVisiblity(forCell:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 88);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v46 - v9 + 88);
  v11 = [objc_opt_self() sharedBehaviors];
  if (!v11)
  {
    __break(1u);
    goto LABEL_27;
  }

  v12 = v11;
  v13 = [v11 usesTapbackRefreshStyling];

  if ((v13 & 1) == 0)
  {
    v14 = sub_19098B380();
    v15 = [v14 indexPathForCell_];

    if (v15)
    {
      sub_190D51BC0();

      (*(v5 + 32))(v10, v8, v4);
      v16 = sub_190D51BF0();
      if (v16)
      {
        if (v16 != 1)
        {
LABEL_24:
          (*(v5 + 8))(v10, v4);
          return;
        }

        v21 = 1.0;
        if (sub_190D51BE0() < 2)
        {
          goto LABEL_14;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v2 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView);
      v24 = *&v23[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
      v25 = v23[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8];
      v26 = v23;
      v27 = [v26 collectionViewLayout];
      type metadata accessor for TapbackPickerCollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        v28 = 0.0;
        if (!v25)
        {
          v28 = v24;
        }

        v46[0] = v22;
        v21 = sub_190CA70AC(v46, v28);
      }

      else
      {

        v21 = 0.0;
      }

LABEL_14:
      v29 = _CKGetAnimationCurveSpline(1, v17, v18, v19, v20);
      if (v29)
      {
        v30 = v29;
        v31 = 1.0 - v21;
        *&v31 = 1.0 - v21;
        [v29 _solveForInput_];
        v33 = v32;
        v34 = v33 * 1.25;
        v35 = v33 * -0.7 + 1.0;
        v36 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
        swift_beginAccess();
        *(a1 + v36) = v34;
        v37 = 0.0;
        if (!UIAccessibilityIsReduceTransparencyEnabled())
        {
          v37 = *(a1 + v36);
          v38 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
          swift_beginAccess();
          if (v37 <= *(a1 + v38))
          {
            v37 = *(a1 + v38);
          }
        }

        sub_190BD4AF4(v37);
        v39 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
        swift_beginAccess();
        *(a1 + v39) = v35;
        v40 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
        swift_beginAccess();
        v41 = *(a1 + v40);
        v42 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
        swift_beginAccess();
        v43 = *(a1 + v42);
        if (v43)
        {
          if (v41 >= v35)
          {
            v44 = v35;
          }

          else
          {
            v44 = v41;
          }

          [v43 setAlpha_];
        }

        goto LABEL_24;
      }

LABEL_27:
      __break(1u);
    }
  }
}

void TapbackPickerViewController.collectionView(_:didSelectItemAt:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_190D51C00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19098B4C0();
  sub_190D533E0();

  v12 = v35;
  if (v35)
  {
    v13 = v34;
    if (v34 == 0xD00000000000001BLL && v35 == 0x8000000190E5AC10 || (sub_190D58760() & 1) != 0)
    {

      v14 = sub_190D51BB0();
      [a1 deselectItemAtIndexPath:v14 animated:0];

      v15 = (v2 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier);
      v16 = *(v2 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier + 8);
      if (v16)
      {
        v17 = *(v2 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource);
        v34 = *v15;
        v35 = v16;
        sub_190D52690();
        v18 = v17;
        sub_190D53440();

        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_19098D840(v6);
          v19 = v15[1];
          if (!v19)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        (*(v8 + 32))(v10, v6, v7);
        v27 = sub_19098B380();
        v28 = sub_190D51BB0();
        [v27 selectItemAtIndexPath:v28 animated:0 scrollPosition:0];

        (*(v8 + 8))(v10, v7);
        v19 = v15[1];
        if (v19)
        {
LABEL_19:
          v29 = *v15;
          sub_190D52690();
          sub_1908286F0(v29, v19);
        }
      }

LABEL_20:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v31 = Strong;
      sub_19092D7A0(1);
      [v31 showEmojiKeyboard];
      goto LABEL_22;
    }

    v20 = sub_19082772C(v13, v12);
    if (!v20)
    {

      return;
    }

    v21 = v20;
    v22 = (v2 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier);
    v23 = *(v2 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier + 8);
    if (v23 && (*v22 == v13 ? (v24 = v23 == v12) : (v24 = 0), v24 || (sub_190D58760() & 1) != 0))
    {

      v25 = sub_190D51BB0();
      [a1 deselectItemAtIndexPath:v25 animated:0];

      *v22 = 0;
      v22[1] = 0;

      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        [v26 tapbackPickerViewController:v2 didDeselectTapback:v21];
LABEL_27:

LABEL_22:
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      *v22 = v13;
      v22[1] = v12;

      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        [v32 tapbackPickerViewController:v2 didSelectTapback:v21];
        goto LABEL_27;
      }
    }
  }
}

uint64_t sub_190BF907C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(char *))
{
  v10 = sub_190D51C00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v13);

  return (*(v11 + 8))(v13, v10);
}

Swift::Void __swiftcall TapbackPickerViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  TapbackPickerViewController.updateVisibleCellsForScrollPosition()();
  sub_19098C7B0();

  sub_19098C20C();
}

void TapbackPickerViewController.calculatePercentEdgeEffected(forCenterPoint:inCollectionViewBounds:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10.origin.x = a3;
  v10.origin.y = a4;
  v10.size.width = a5;
  v10.size.height = a6;
  CGRectGetMinX(v10);
  v11.origin.x = a3;
  v11.origin.y = a4;
  v11.size.width = a5;
  v11.size.height = a6;
  CGRectGetMaxX(v11);
}

void sub_190BF92CC(char *a1)
{
  v2 = v1;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  v11 = sub_19098B380();
  v12 = [v11 indexPathForCell_];

  if (v12)
  {
    sub_190D51BC0();

    (*(v5 + 32))(v10, v8, v4);
    v13 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
    v14 = *(v2 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView);
    v15 = *&v14[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
    v16 = v14[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8];
    v17 = v14;
    v18 = [v17 collectionViewLayout];
    type metadata accessor for TapbackPickerCollectionViewLayout();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = [v19 collectionView];
      if (v20)
      {
        v71 = v5;
        v21 = v13;
        v22 = v4;
        v23 = v15 + 0.0;
        v24 = v20;
        [v20 contentOffset];
        v26 = v25;
        [v24 bounds];
        v28 = v27;

        v29 = 0.0;
        if (!v16)
        {
          v29 = v23;
        }

        if (v29 <= v26)
        {
          v31 = 0.8;
        }

        else if (v28 > 0.0 && v26 > v29 - v28)
        {
          v31 = 1.0 - (v29 - v26) / v28 + -0.2;
        }

        else
        {
          v31 = -0.2;
        }

        v4 = v22;
        v13 = v21;
        v5 = v71;
LABEL_18:
        v32 = v31 / 0.6;
        if (v32 > 1.0)
        {
          v32 = 1.0;
        }

        v33 = 0.0;
        if (v32 > 0.0)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0.0;
        }

        v35 = *(v2 + v13);
        v36 = *&v35[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
        v37 = v35[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8];
        v38 = v35;
        v39 = [v38 collectionViewLayout];
        if (swift_dynamicCastClass())
        {
          if (v37)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v36;
          }

          LOBYTE(v73.a) = 0;
          v33 = sub_190CA70AC(&v73, v40);
        }

        else
        {
        }

        v41 = 1.0;
        if ((1.0 - v33) / 0.8 <= 1.0)
        {
          v41 = (1.0 - v33) / 0.8;
        }

        if (v41 > 0.0)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0.0;
        }

        v43 = objc_opt_self();
        v44 = [v43 sharedBehaviors];
        if (v44)
        {
          v45 = v44;
          [v44 messageAcknowledgmentPickerBarItemSectionScaleFactor];
          v47 = v46;

          v48 = [v43 sharedBehaviors];
          if (v48)
          {
            v49 = v48;
            [v48 messageAcknowledgmentPickerBarItemSectionPush];
            v51 = v50;

            if (sub_190D51BF0())
            {
              v52 = 1.0;
              v53 = 0.0;
              if (sub_190D51BF0() != 1)
              {
                goto LABEL_46;
              }

              if (sub_190D51BE0())
              {
                v54 = 0;
              }

              else
              {
                [a1 frame];
                MaxX = CGRectGetMaxX(v74);
                [a1 frame];
                v59 = MaxX + CGRectGetWidth(v75) * -0.25;
                [*(v2 + v13) frame];
                v54 = CGRectGetMaxX(v76) < v59;
              }

              if (sub_190D51BE0() <= 0 && !v54)
              {
                goto LABEL_46;
              }

              v52 = _UILerp_1(v34, v47, 1.0);
              v55 = -v51;
              v57 = 0.0;
              v56 = v34;
            }

            else
            {
              v52 = _UILerp_1(v42, 1.0, v47 + 0.1);
              v55 = 0.0;
              v56 = v34;
              v57 = v51;
            }

            v53 = _UILerp_1(v56, v55, v57);
LABEL_46:
            CGAffineTransformMakeScale(&v73, v52, v52);
            CGAffineTransformTranslate(&v72, &v73, v53, 0.0);
            a = v72.a;
            b = v72.b;
            c = v72.c;
            d = v72.d;
            tx = v72.tx;
            ty = v72.ty;
            v66 = &a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform];
            swift_beginAccess();
            *v66 = a;
            v66[1] = b;
            v66[2] = c;
            v66[3] = d;
            v66[4] = tx;
            v66[5] = ty;
            v67 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
            swift_beginAccess();
            v68 = *&a1[v67];
            v73.a = a;
            v73.b = b;
            v73.c = c;
            v73.d = d;
            v73.tx = tx;
            v73.ty = ty;
            CGAffineTransformScale(&v72, &v73, v68, v68);
            v69 = *&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView];
            v73 = v72;
            [v69 setTransform_];
            (*(v5 + 8))(v10, v4);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else
    {
    }

    v31 = -0.2;
    goto LABEL_18;
  }
}

void sub_190BF9888()
{
  v0 = sub_19098B4C0();
  sub_190D533E0();

  if (v12)
  {
    if (v11 == 0xD00000000000001BLL && v12 == 0x8000000190E5AC10)
    {
    }

    else
    {
      v2 = sub_190D58760();

      if ((v2 & 1) == 0)
      {
        return;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = sub_1909297E8();
      v4 = v3[2];
      if (v4)
      {
        v5 = v3 + 5;
        do
        {
          v6 = *(v5 - 1);
          v7 = *v5;
          ObjectType = swift_getObjectType();
          v9 = *(v7 + 192);
          v10 = v6;
          v9(ObjectType, v7);

          v5 += 2;
          --v4;
        }

        while (v4);
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_190BF99D4()
{
  v0 = sub_19098B4C0();
  sub_190D533E0();

  if (v4)
  {
    if (v3 == 0xD00000000000001BLL && v4 == 0x8000000190E5AC10)
    {
    }

    else
    {
      v2 = sub_190D58760();

      if ((v2 & 1) == 0)
      {
        return;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_19092D4D0();
      swift_unknownObjectRelease();
    }
  }
}

void sub_190BF9B04()
{
  _s14descr1F03EACB9V10AttachmentVMa(319);
  if (v0 <= 0x3F)
  {
    sub_190D52BC0();
    if (v1 <= 0x3F)
    {
      sub_190BF9BC4();
      if (v2 <= 0x3F)
      {
        sub_1908B90C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190BF9BC4()
{
  if (!qword_1EAD5FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD590B0);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5FD50);
    }
  }
}

uint64_t sub_190BF9C44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s14descr1F03EACB9V8CellViewVMa(0);
  sub_19022FD14(v1 + *(v10 + 40), v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190BF9E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = _s14descr1F03EACB9V8CellViewVMa(0);
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  v4 = v3 - 8;
  v56 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD58);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD68);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD70);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD78);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v50 - v19;
  v54 = *(v4 + 28);
  sub_190D52AD0();
  v21 = v20;
  *v7 = sub_190D54AC0();
  *(v7 + 1) = v21;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD80);
  sub_190BFA3D8(v2, &v7[*(v22 + 44)]);
  _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_190233640(&qword_1EAD5FD88, &qword_1EAD5FD58);
  sub_190D55AA0();
  sub_19022EEA4(v7, &qword_1EAD5FD58);
  sub_190D56500();
  sub_190D54430();
  v23 = v51;
  sub_19081E40C(v10, v51, &qword_1EAD5FD60);
  v24 = (v23 + *(v12 + 44));
  v25 = v23;
  v26 = v66;
  v24[4] = v65;
  v24[5] = v26;
  v24[6] = v67;
  v27 = v62;
  *v24 = v61;
  v24[1] = v27;
  v28 = v64;
  v24[2] = v63;
  v24[3] = v28;
  v29 = v57;
  sub_190BFC75C(v2, v57);
  v30 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v31 = swift_allocObject();
  sub_190BFCC94(v29, v31 + v30, _s14descr1F03EACB9V8CellViewVMa);
  v32 = v53;
  v33 = &v53[*(v15 + 44)];
  sub_190D53E20();
  sub_190D572C0();
  *v33 = &unk_190DFB000;
  *(v33 + 1) = v31;
  sub_19081E40C(v25, v32, &qword_1EAD5FD68);
  sub_190D52AE0();
  v35 = v34;
  sub_190D52AB0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v32;
  v45 = v55;
  sub_19081E40C(v44, v55, &qword_1EAD5FD70);
  v46 = (v45 + *(v18 + 44));
  *v46 = v35;
  v46[1] = v37;
  v46[2] = v39;
  v46[3] = v41;
  v46[4] = v43;
  LOBYTE(v33) = *(v2 + *(v56 + 32));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD90);
  v48 = v60;
  *(v60 + *(v47 + 36)) = v33;
  _s14descr1F03EACB9V19CellSelectionEffectVMa(0);
  sub_190D52B70();
  return sub_19081E40C(v45, v48, &qword_1EAD5FD78);
}

uint64_t sub_190BFA3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = sub_190D514A0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v163 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D51BA0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v162 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D51B00();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v161 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v160 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v158 = &v131 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v131 - v14;
  v159 = sub_190D51710();
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_190D51840();
  v153 = *(v16 - 8);
  v154 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_190D54040();
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v166);
  v147 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDB0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v131 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDB8);
  MEMORY[0x1EEE9AC00](v144);
  v22 = &v131 - v21;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDC0);
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v131 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDC8);
  MEMORY[0x1EEE9AC00](v149);
  v168 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v131 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v170 = &v131 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDD0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = (&v131 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDD8);
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v131 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v169 = &v131 - v38;
  v39 = _s14descr1F03EACB9V8CellViewVMa(0);
  if (*(a1 + v39[7]) == 1)
  {
    v40 = sub_190D564F0();
  }

  else
  {
    v40 = sub_190D564D0();
  }

  *v31 = v40;
  v31[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDE0);
  sub_190BFB3B4(a1, v31 + *(v42 + 44));
  v43 = sub_190D552D0();
  v44 = v39[5];
  sub_190D52AF0();
  sub_190D539C0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_19081E40C(v31, v36, &qword_1EAD5FDD0);
  v53 = &v36[*(v32 + 36)];
  *v53 = v43;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_19081E40C(v36, v169, &qword_1EAD5FDD8);
  v143 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v54 = (a1 + *(v143 + 36));
  v55 = v54[1];
  v191 = *v54;
  v192 = v55;
  sub_19081E484();
  sub_190D52690();
  v56 = sub_190D555F0();
  v140 = v57;
  v141 = v56;
  v59 = v58;
  v139 = v60;
  KeyPath = swift_getKeyPath();
  v142 = sub_190D52BB0();
  v137 = swift_getKeyPath();
  v135 = v59 & 1;
  LOBYTE(v191) = v59 & 1;
  LOBYTE(v178) = 0;
  v136 = swift_getKeyPath();
  v61 = *(a1 + v39[6]);
  v164 = a1;
  v152 = v44;
  if (v61 == 1)
  {
    v134 = sub_190D55DC0();
  }

  else
  {
    v134 = sub_190D52AA0();
  }

  v133 = sub_190D552A0();
  sub_190D539C0();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v219 = 0;
  v70 = *(v166 + 20);
  v71 = *MEMORY[0x1E697F468];
  v72 = sub_190D54A20();
  v73 = *(*(v72 - 8) + 104);
  v74 = &v147[v70];
  v75 = v147;
  v73(v74, v71, v72);
  __asm { FMOV            V0.2D, #5.0 }

  *v75 = _Q0;
  if (v61)
  {
    sub_190D54030();
    v81 = sub_190D53C70();
    v82 = 2.0;
  }

  else
  {
    v191 = sub_190D55DA0();
    v81 = sub_190D53C70();
    v82 = 0.0;
  }

  v83 = v146;
  sub_190BFCC94(v75, v146, MEMORY[0x1E697EAF0]);
  v84 = v145;
  *(v83 + *(v145 + 52)) = v81;
  *(v83 + *(v84 + 56)) = 256;
  v85 = sub_190D56500();
  v87 = v86;
  v88 = &v22[*(v144 + 36)];
  sub_19081E40C(v83, v88, &qword_1EAD5FDB0);
  v89 = (v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDE8) + 36));
  *v89 = v85;
  v89[1] = v87;
  v90 = v140;
  *v22 = v141;
  *(v22 + 1) = v90;
  v22[16] = v135;
  v91 = KeyPath;
  *(v22 + 3) = v139;
  *(v22 + 4) = v91;
  *(v22 + 5) = 2;
  v22[48] = 0;
  *(v22 + 13) = *&v218[3];
  *(v22 + 49) = *v218;
  v92 = v142;
  *(v22 + 7) = v137;
  *(v22 + 8) = v92;
  *(v22 + 9) = v136;
  v22[80] = 1;
  LODWORD(v92) = *v217;
  *(v22 + 21) = *&v217[3];
  *(v22 + 81) = v92;
  *(v22 + 11) = v134;
  v22[96] = v133;
  LODWORD(v92) = *v216;
  *(v22 + 25) = *&v216[3];
  *(v22 + 97) = v92;
  *(v22 + 13) = v63;
  *(v22 + 14) = v65;
  *(v22 + 15) = v67;
  *(v22 + 16) = v69;
  v22[136] = 0;
  v93 = v150;
  v94 = &v150[*(v148 + 36)];
  v73(v94 + *(v166 + 20), v71, v72);
  *v94 = v82;
  v94[1] = v82;
  *(v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)) = 256;
  sub_19081E40C(v22, v93, &qword_1EAD5FDB8);
  sub_190D56500();
  sub_190D54430();
  v95 = v151;
  sub_19081E40C(v93, v151, &qword_1EAD5FDC0);
  v96 = (v95 + *(v149 + 36));
  v97 = v225;
  v96[4] = v224;
  v96[5] = v97;
  v96[6] = v226;
  v98 = v221;
  *v96 = v220;
  v96[1] = v98;
  v99 = v223;
  v96[2] = v222;
  v96[3] = v99;
  sub_19081E40C(v95, v170, &qword_1EAD5FDC8);
  (*(v153 + 16))(v155, v164 + *(v143 + 44), v154);
  v100 = v156;
  sub_190D516C0();
  v101 = sub_190D516F0();
  (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
  v102 = v158;
  sub_190D516C0();
  v103 = sub_190D516D0();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  sub_190D51950();
  sub_190D51A60();
  sub_190D51B90();
  sub_190D51490();
  sub_190D51700();
  sub_190BFCCFC(&qword_1EAD5FDF0, MEMORY[0x1E6969328]);
  sub_190BFCCFC(&qword_1EAD54D90, MEMORY[0x1E6969530]);
  v104 = sub_190D555C0();
  v161 = v105;
  v162 = v104;
  LOBYTE(v93) = v106;
  v166 = v107;
  v160 = swift_getKeyPath();
  v163 = sub_190D52B80();
  v159 = swift_getKeyPath();
  LOBYTE(v191) = v93 & 1;
  LOBYTE(v102) = v93 & 1;
  LODWORD(v158) = v93 & 1;
  LOBYTE(v178) = 0;
  v108 = swift_getKeyPath();
  v157 = v108;
  v109 = sub_190D52B90();
  v164 = v109;
  sub_190D56500();
  sub_190D54430();
  v110 = v167;
  sub_19022FD14(v169, v167, &qword_1EAD5FDD8);
  v111 = v168;
  sub_19022FD14(v170, v168, &qword_1EAD5FDC8);
  v112 = v110;
  v113 = v165;
  sub_19022FD14(v112, v165, &qword_1EAD5FDD8);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDF8);
  sub_19022FD14(v111, v113 + *(v114 + 48), &qword_1EAD5FDC8);
  v115 = (v113 + *(v114 + 64));
  v117 = v161;
  v116 = v162;
  *&v178 = v162;
  *(&v178 + 1) = v161;
  LOBYTE(v179) = v102;
  *(&v179 + 1) = *v214;
  DWORD1(v179) = *&v214[3];
  v118 = v166;
  v119 = v159;
  v120 = v160;
  *(&v179 + 1) = v166;
  *&v180 = v160;
  *(&v180 + 1) = 2;
  LOBYTE(v181) = 0;
  *(&v181 + 1) = *v213;
  DWORD1(v181) = *&v213[3];
  v121 = v163;
  *(&v181 + 1) = v159;
  *&v182 = v163;
  *(&v182 + 1) = v108;
  LOBYTE(v183) = 1;
  *(&v183 + 1) = *v215;
  DWORD1(v183) = *&v215[3];
  *(&v183 + 1) = v109;
  v188 = v175;
  v189 = v176;
  v190 = v177;
  v122 = v171;
  v184 = v171;
  v185 = v172;
  v123 = v174;
  v186 = v173;
  v187 = v174;
  v124 = v176;
  v115[10] = v175;
  v115[11] = v124;
  v115[12] = v190;
  v125 = v181;
  v115[2] = v180;
  v115[3] = v125;
  v126 = v179;
  *v115 = v178;
  v115[1] = v126;
  v127 = v183;
  v115[4] = v182;
  v115[5] = v127;
  v128 = v185;
  v129 = v186;
  v115[6] = v122;
  v115[7] = v128;
  v115[8] = v129;
  v115[9] = v123;
  sub_19022FD14(&v178, &v191, &qword_1EAD5FE00);
  sub_19022EEA4(v170, &qword_1EAD5FDC8);
  sub_19022EEA4(v169, &qword_1EAD5FDD8);
  v191 = v116;
  v192 = v117;
  v193 = v158;
  *v194 = *v214;
  *&v194[3] = *&v214[3];
  v195 = v118;
  v196 = v120;
  v197 = 2;
  v198 = 0;
  *v199 = *v213;
  *&v199[3] = *&v213[3];
  v200 = v119;
  v201 = v121;
  v202 = v157;
  v203 = 1;
  *v204 = *v215;
  *&v204[3] = *&v215[3];
  v205 = v164;
  v210 = v175;
  v211 = v176;
  v212 = v177;
  v206 = v171;
  v207 = v172;
  v208 = v173;
  v209 = v174;
  sub_19022EEA4(&v191, &qword_1EAD5FE00);
  sub_19022EEA4(v168, &qword_1EAD5FDC8);
  return sub_19022EEA4(v167, &qword_1EAD5FDD8);
}

uint64_t sub_190BFB3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B150);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE08);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  sub_190BFB884(&v41 - v18);
  v20 = _s14descr1F03EACB9V8CellViewVMa(0);
  if (*(a1 + v20[7]) == 1)
  {
    v21 = *(a1 + v20[6]);
    sub_190D52AC0();
    v22 = sub_190D552B0();
    sub_190D539C0();
    *v7 = v21;
    v7[8] = v22;
    *(v7 + 2) = v23;
    *(v7 + 3) = v24;
    *(v7 + 4) = v25;
    *(v7 + 5) = v26;
    v7[48] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE30);
    sub_190BFCD44();
    sub_190BFCE24();
    sub_190D54C50();
  }

  else
  {
    v41 = v5;
    v42 = v3;
    if (*(a1 + v20[8]) != 1)
    {
      v36 = 1;
      goto LABEL_7;
    }

    v27 = *(a1 + *(_s14descr1F03EACB9V10AttachmentVMa(0) + 32));
    sub_190D52BD0();
    swift_allocObject();
    v28 = v27;
    sub_190D52BE0();
    v29 = v43;
    sub_190D52BF0();
    sub_190D52AC0();
    v30 = sub_190D552B0();
    sub_190D539C0();
    v31 = v29 + *(v42 + 36);
    *v31 = v30;
    *(v31 + 8) = v32;
    *(v31 + 16) = v33;
    *(v31 + 24) = v34;
    *(v31 + 32) = v35;
    *(v31 + 40) = 0;
    sub_19022FD14(v29, v7, &qword_1EAD5B150);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE30);
    sub_190BFCD44();
    sub_190BFCE24();
    sub_190D54C50();
    sub_19022EEA4(v29, &qword_1EAD5B150);
  }

  v36 = 0;
LABEL_7:
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE20);
  (*(*(v37 - 8) + 56))(v13, v36, 1, v37);
  sub_19022FD14(v19, v16, &qword_1EAD5FE18);
  sub_19022FD14(v13, v10, &qword_1EAD5FE10);
  v38 = v44;
  sub_19022FD14(v16, v44, &qword_1EAD5FE18);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE28);
  sub_19022FD14(v10, v38 + *(v39 + 48), &qword_1EAD5FE10);
  sub_19022EEA4(v13, &qword_1EAD5FE10);
  sub_19022EEA4(v19, &qword_1EAD5FE18);
  sub_19022EEA4(v10, &qword_1EAD5FE10);
  return sub_19022EEA4(v16, &qword_1EAD5FE18);
}

void sub_190BFB884(uint64_t a1@<X8>)
{
  v94 = a1;
  v81 = sub_190D52990();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE58);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v73 - v4;
  v5 = sub_190D53A60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_190D54800();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDB0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v73 - v8;
  v97 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v13 = sub_190D543C0();
  v82 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_190D55EB0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE60);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v96 = &v73 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE68);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v73 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE70);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v73 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE78);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v73 - v23;
  v24 = _s14descr1F03EACB9V8CellViewVMa(0);
  v25 = *(v24 + 36);
  v93 = v1;
  v26 = (v1 + v25);
  v27 = *v26;
  v100 = v26[1];
  v101 = v27;
  v105 = v27;
  v106 = v100;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD98);
  sub_190D55FD0();
  v28 = v103;
  if (v103 || (v29 = sub_190D56ED0(), v28 = [objc_opt_self() systemImageNamed_], v29, v28))
  {
    v95 = v28;
    sub_190D55E90();
    (*(v17 + 104))(v19, *MEMORY[0x1E6981630], v16);
    v30 = sub_190D55F10();

    (*(v17 + 8))(v19, v16);
    v105 = v30;
    v106 = 0;
    v107 = 1;
    v103 = v101;
    v104 = v100;
    sub_190D55FD0();
    if (v102)
    {

      v103 = MEMORY[0x1E69E7CC0];
      sub_190BFCCFC(&qword_1EAD5FE80, MEMORY[0x1E697EA58]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE88);
      sub_190233640(&qword_1EAD5FE90, &qword_1EAD5FE88);
      sub_190D58170();
    }

    else
    {
      sub_190D543B0();
    }

    v73 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56598);
    sub_1908E6408();
    sub_190D55C40();
    (*(v82 + 8))(v15, v13);

    v105 = v101;
    v106 = v100;
    sub_190D55FD0();
    if (v103)
    {

      v31 = v93;
      if (*(v93 + *(v24 + 24)))
      {
        sub_190D52B50();
      }

      else
      {
        sub_190D52B30();
      }
    }

    else
    {
      v31 = v93;
      sub_190D52B40();
    }

    v33 = v32;
    v34 = *(v97 + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_190D54A20();
    v37 = *(*(v36 - 8) + 104);
    v37(&v12[v34], v35, v36);
    *v12 = v33;
    *(v12 + 1) = v33;
    v38 = v83;
    v39 = &v83[*(v84 + 36)];
    sub_190BFCC94(v12, v39, MEMORY[0x1E697EAF0]);
    *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)) = 256;
    (*(v88 + 32))(v38, v96, v89);
    v40 = [v95 CGImage];
    sub_190D52BA0();
    v42 = v41;
    v43 = v38;
    v44 = v87;
    sub_19081E40C(v43, v87, &qword_1EAD5FE68);
    v45 = (v44 + *(v85 + 36));
    *v45 = v40;
    v45[1] = v42;
    LOBYTE(v39) = sub_190D552B0();
    sub_190D539C0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v98;
    sub_19081E40C(v44, v98, &qword_1EAD5FE70);
    v55 = v54 + *(v86 + 36);
    *v55 = v39;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    v105 = v101;
    v106 = v100;
    sub_190D55FD0();
    if (v103)
    {

      v56 = v90;
      if (*(v31 + *(v24 + 24)))
      {
        sub_190D52B50();
      }

      else
      {
        sub_190D52B30();
      }

      v59 = v57;
    }

    else
    {
      sub_190D52B40();
      v59 = v58;
      v56 = v90;
    }

    v37(&v56[*(v97 + 20)], v35, v36);
    *v56 = v59;
    *(v56 + 1) = v59;
    if (*(v31 + *(v24 + 24)) == 1)
    {
      v60 = v75;
      sub_190D547F0();
      sub_190BF9C44(v74);
      sub_190D54560();
      v61 = v79;
      sub_190D52B60();
      sub_190D52980();
      (*(v80 + 8))(v61, v81);
      swift_getOpaqueTypeConformance2();
      v62 = sub_190D53C70();
      (*(v76 + 8))(v60, v77);
    }

    else
    {
      v105 = sub_190D55DA0();
      v62 = sub_190D53C70();
    }

    v63 = v56;
    v64 = v92;
    sub_190BFCC94(v63, v92, MEMORY[0x1E697EAF0]);
    v65 = v91;
    *(v64 + *(v91 + 52)) = v62;
    *(v64 + *(v65 + 56)) = 256;
    v66 = sub_190D56500();
    v68 = v67;

    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FE18);
    v70 = v94;
    v71 = v94 + *(v69 + 36);
    sub_19081E40C(v64, v71, &qword_1EAD5FDB0);
    v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FDE8) + 36));
    *v72 = v66;
    v72[1] = v68;
    sub_19081E40C(v98, v70, &qword_1EAD5FE78);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190BFC4B4(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_190BFC564;

  return sub_1908431F8();
}

uint64_t sub_190BFC564(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BFC6A8, v3, v2);
}

uint64_t sub_190BFC6A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(_s14descr1F03EACB9V8CellViewVMa(0) + 36));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD98);
  sub_190D55FE0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190BFC75C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EACB9V8CellViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BFC7C0()
{
  v2 = *(_s14descr1F03EACB9V8CellViewVMa(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA4;

  return sub_190BFC4B4(v0 + v3);
}

uint64_t sub_190BFC8AC(uint64_t a1, CGImage *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FEF8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF00);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  if (a2)
  {
    CGImageGetWidth(a2);
    CGImageGetHeight(a2);
  }

  sub_190D56500();
  sub_190D53C60();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF08);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = &v9[*(v7 + 36)];
  v12 = v14[1];
  *v11 = v14[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v14[2];
  sub_19022FD14(v9, v6, &qword_1EAD5FF00);
  swift_storeEnumTagMultiPayload();
  sub_190BFD398();
  sub_190D54C50();
  return sub_19022EEA4(v9, &qword_1EAD5FF00);
}

uint64_t sub_190BFCAFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FEE0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FEE8);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_190233640(&qword_1EAD5FEF0, &qword_1EAD5FEE8);
  return sub_190D54C50();
}

uint64_t sub_190BFCC40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D546C0();
  *a1 = result;
  return result;
}

uint64_t sub_190BFCC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190BFCCFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190BFCD44()
{
  result = qword_1EAD5FE38;
  if (!qword_1EAD5FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FE30);
    sub_190BFCDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FE38);
  }

  return result;
}

unint64_t sub_190BFCDD0()
{
  result = qword_1EAD5FE40;
  if (!qword_1EAD5FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FE40);
  }

  return result;
}

unint64_t sub_190BFCE24()
{
  result = qword_1EAD5FE48;
  if (!qword_1EAD5FE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B150);
    sub_190BFCCFC(&qword_1EAD5FE50, MEMORY[0x1E6995860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FE48);
  }

  return result;
}

uint64_t sub_190BFCF08()
{
  result = sub_190D52BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_190BFCF94()
{
  result = qword_1EAD5FEA8;
  if (!qword_1EAD5FEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FD90);
    sub_190BFD050();
    sub_190BFCCFC(&qword_1EAD5FED8, _s14descr1F03EACB9V19CellSelectionEffectVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FEA8);
  }

  return result;
}

unint64_t sub_190BFD050()
{
  result = qword_1EAD5FEB0;
  if (!qword_1EAD5FEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FD78);
    sub_190BFD0DC();
    sub_190BFD30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FEB0);
  }

  return result;
}

unint64_t sub_190BFD0DC()
{
  result = qword_1EAD5FEB8;
  if (!qword_1EAD5FEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FD70);
    sub_190BFD198();
    sub_190BFCCFC(&qword_1EAD52288, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FEB8);
  }

  return result;
}

unint64_t sub_190BFD198()
{
  result = qword_1EAD5FEC0;
  if (!qword_1EAD5FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FD68);
    sub_190BFD224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FEC0);
  }

  return result;
}

unint64_t sub_190BFD224()
{
  result = qword_1EAD5FEC8;
  if (!qword_1EAD5FEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FD60);
    sub_190233640(&qword_1EAD5FD88, &qword_1EAD5FD58);
    sub_190BFCCFC(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FEC8);
  }

  return result;
}

unint64_t sub_190BFD30C()
{
  result = qword_1EAD5FED0;
  if (!qword_1EAD5FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FED0);
  }

  return result;
}

unint64_t sub_190BFD398()
{
  result = qword_1EAD5FF10;
  if (!qword_1EAD5FF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF00);
    sub_190233640(&qword_1EAD5FF18, &qword_1EAD5FF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FF10);
  }

  return result;
}

unint64_t sub_190BFD450()
{
  result = qword_1EAD5FF20;
  if (!qword_1EAD5FF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF28);
    sub_190233640(&qword_1EAD5FEF0, &qword_1EAD5FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FF20);
  }

  return result;
}

unint64_t sub_190BFD500()
{
  result = qword_1EAD5FF30;
  if (!qword_1EAD5FF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF38);
    sub_190BFD398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FF30);
  }

  return result;
}

double CKLanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:eventHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *a6 = CKFrameworkBundle();
  *(a6 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18);
  sub_190D55FC0();
  *(a6 + 56) = v13;
  sub_190D55FC0();
  result = *&v13;
  *(a6 + 72) = v13;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

uint64_t sub_190BFD64C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C007C4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__excludedLocale;
  swift_beginAccess();
  return sub_19022FD14(v3 + v4, a2, &qword_1EAD54C10);
}

uint64_t sub_190BFD724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_19022FD14(a1, &v6 - v3, &qword_1EAD54C10);
  return sub_190A69E18(v4);
}
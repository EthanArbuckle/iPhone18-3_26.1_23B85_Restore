char *sub_190B6A000()
{
  v1 = v0;
  v39 = sub_190D51840();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539C0);
  v3 = *v0;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 24 * v18;
        v20 = *(v3 + 56);
        v21 = *(v3 + 48) + 24 * v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = v41;
        v25 = *(v41 + 72) * v18;
        v26 = *(v21 + 16);
        v28 = v38;
        v27 = v39;
        (*(v41 + 16))(v38, v20 + v25, v39);
        v29 = v40;
        v30 = *(v40 + 48) + v19;
        *v30 = v22;
        *(v30 + 8) = v23;
        *(v30 + 16) = v26;
        v31 = *(v29 + 56);
        v32 = *(v24 + 32);
        v3 = v37;
        v32(v31 + v25, v28, v27);
        result = sub_190824730(v22, v23, v26);
        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v33;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v34 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_190B6A2B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E270);
  v2 = *v0;
  v3 = sub_190D58570();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_190B6A3FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E200);
  v2 = *v0;
  v3 = sub_190D58570();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

id sub_190B6A560()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD539A0);
  v2 = *v0;
  v3 = sub_190D58570();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_190B6A6BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A78);
  v2 = *v0;
  v3 = sub_190D58570();
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
        result = sub_19087862C(*(v2 + 48) + 40 * v17, v22);
        v18 = *(v4 + 48) + 40 * v17;
        v19 = *(*(v2 + 56) + 16 * v17);
        v20 = v22[0];
        v21 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v20;
        *(v18 + 16) = v21;
        *(*(v4 + 56) + 16 * v17) = v19;
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

void *sub_190B6A864(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
        sub_190D52690();
        result = sub_190D52690();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_190B6AA20(unint64_t *a1, void (*a2)(uint64_t))
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

id CKInlineMediaTextAttachment.__allocating_init(delegate:mediaObject:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  *&v5[OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_viewProvider] = 0;
  v6 = OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaView;
  type metadata accessor for CKInlineMediaView();
  *&v5[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaObject] = a2;
  v10.receiver = v5;
  v10.super_class = v3;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithData_ofType_, 0, 0);
  [v8 setAllowsTextAttachmentView_];
  sub_190B6AD8C();

  swift_unknownObjectRelease();
  return v8;
}

id CKInlineMediaTextAttachment.init(delegate:mediaObject:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_viewProvider] = 0;
  v4 = OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaView;
  type metadata accessor for CKInlineMediaView();
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaObject] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CKInlineMediaTextAttachment();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithData_ofType_, 0, 0);
  [v6 setAllowsTextAttachmentView_];
  sub_190B6AD8C();

  swift_unknownObjectRelease();
  return v6;
}

void sub_190B6AD8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaView);
  *(v1 + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_delegate + 8) = &off_1F041B0E0;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaObject);
  v3 = [v2 generativePlaygroundRecipeData];
  if (v3)
  {
    v4 = sub_190D51670();
    v6 = v5;

    sub_19083B6D4(v4, v6);
  }

  *(v1 + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance) = v3 != 0;
  sub_190A0A144(v3 != 0);
  v7 = [v2 UTIType];
  IsAnimatedImage = IMUTITypeIsAnimatedImage();

  v9 = [v2 UTIType];
  IsPhoto = IMUTITypeIsPhoto();

  *(v1 + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton) = IsPhoto & (IsAnimatedImage ^ 1);
  sub_190AE2918();
}

void sub_190B6AFF0(uint64_t a1, uint64_t a2, id a3)
{
  v7 = OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_viewProvider;
  v8 = *(v3 + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_viewProvider);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v9 location)];
    swift_unknownObjectRelease();

    if (!v10)
    {
      return;
    }
  }

  if (a3)
  {
    v11 = *(v3 + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaView);
    v12 = [a3 textLayoutManager];
    v13 = type metadata accessor for CKInlineMediaTextAttachmentViewProvider();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC7ChatKit39CKInlineMediaTextAttachmentViewProvider_providedView] = v11;
    v19.receiver = v14;
    v19.super_class = v13;
    v15 = v11;
    v16 = objc_msgSendSuper2(&v19, sel_initWithTextAttachment_parentView_textLayoutManager_location_, v3, a1, v12, a2);
    [v16 setTracksTextAttachmentViewBounds_];

    v17 = *(v3 + v7);
    *(v3 + v7) = v16;
    v18 = v16;
  }

  else
  {
    __break(1u);
  }
}

id CKInlineMediaTextAttachment.__allocating_init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v6 = sub_190D51660();
    sub_19029064C(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_190D56ED0();

LABEL_6:
  v10 = [objc_allocWithZone(v4) initWithData:v6 ofType:v7];

  return v10;
}

id CKInlineMediaTextAttachment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKInlineMediaTextAttachment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190B6B4B4(uint64_t a1)
{
  if (sub_190D57AD0())
  {
    v2 = sub_190D57B60();
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    v4 = CKLocalizedShortNameForContext(v2);
    v5 = [objc_opt_self() __ck_actionImageForSubscriptionShortName_isFilled_];
  }

  else
  {
    sub_190B6B58C(a1);
    v3 = sub_190D56ED0();

    v5 = [objc_opt_self() _systemImageNamed_];
  }

  return v5;
}

unint64_t sub_190B6B58C(uint64_t a1)
{
  result = 6775156;
  switch(a1)
  {
    case 0:
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      v3 = [objc_opt_self() sharedFeatureFlags];
      v4 = [v3 isModernFilteringEnabled];

      if (v4)
      {
        result = 0xD000000000000013;
      }

      else
      {
        result = 0xD000000000000012;
      }

      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
    case 22:
      return result;
    case 5:
      result = 0x6E6F68706167656DLL;
      break;
    case 6:
    case 9:
      result = 0x69622E6B72616D78;
      break;
    case 7:
      result = 0x6873617274;
      break;
    case 8:
      result = 0x2E6567617373656DLL;
      break;
    case 10:
      result = 0x6B636F6C63;
      break;
    case 11:
    case 12:
    case 27:
      goto LABEL_28;
    case 13:
      result = 0x6163746964657263;
      break;
    case 14:
      result = 0x676E697070696873;
      break;
    case 15:
      result = 0x7472616568;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x75732E64756F6C63;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 1918989427;
      break;
    case 20:
      result = 0x676E69646C697562;
      break;
    case 21:
    case 24:
      result = 0x73697370696C6C65;
      break;
    case 23:
      result = 0x702E74656C6C6177;
      break;
    case 25:
      result = 0x6E6769736F6ELL;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    default:
      if (qword_1EAD46BA0 != -1)
      {
        swift_once();
      }

      v5 = sub_190D53040();
      __swift_project_value_buffer(v5, qword_1EAD9D8E0);
      v6 = sub_190D53020();
      v7 = sub_190D576C0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136315394;
        *(v8 + 4) = sub_19021D9F8(0x6D614E6567616D69, 0xE900000000000065, &v13);
        *(v8 + 12) = 2080;
        type metadata accessor for IMConversationListFilterMode(0);
        v10 = sub_190D56F50();
        v12 = sub_19021D9F8(v10, v11, &v13);

        *(v8 + 14) = v12;
        _os_log_impl(&dword_19020E000, v6, v7, "Missing %s for %s. Expected?", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v9, -1, -1);
        MEMORY[0x193AF7A40](v8, -1, -1);
      }

LABEL_28:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_190B6B9E4(uint64_t result)
{
  if (result <= 3)
  {
    if (result < 3)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (result > 6)
  {
    if (result == 7)
    {
      v7 = sub_190B6B9E4(9);
      v4 = __OFADD__(v7, 1);
      result = v7 + 1;
      if (!v4)
      {
        return result;
      }

      __break(1u);
      return -1;
    }

    if (result != 9)
    {
      return -1;
    }

    v3 = sub_190B6B9E4(5);
    v4 = __OFADD__(v3, 1);
    result = v3 + 1;
    if (!v4)
    {
      return result;
    }

    __break(1u);
LABEL_14:
    if (result == 3)
    {
      if (CKMessageUnknownFilteringEnabled())
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return -1;
  }

  if (result == 4)
  {
    if (CKMessageUnknownFilteringEnabled())
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (CKMessageSpamFilteringEnabled())
    {
      v6 = sub_190B6CB50(MEMORY[0x1E69A67D8]);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v8 = *(v6 + 16);

    if (v8)
    {
      return v5 + 1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (result != 5)
    {
      return -1;
    }

    v1 = sub_190B6B9E4(4);
    if (CKMessageSpamFilteringEnabled())
    {
      v2 = sub_190B6CB50(MEMORY[0x1E69A67D0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v9 = *(v2 + 16);

    v10 = v9 != 0;
    result = v1 + v10;
    if (__OFADD__(v1, v10))
    {
      __break(1u);
    }
  }

  return result;
}

void sub_190B6BB2C()
{
  v0 = sub_190D57B60();
  if (!v0)
  {
    v7 = CKFrameworkBundle();
    if (v7)
    {
      v8 = v7;
      v9 = sub_190D56ED0();
      v10 = sub_190D56ED0();
      v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

      sub_190D56F10();
LABEL_10:

      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = [v0 label];
  v3 = CKFrameworkBundle();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      v5 = sub_190D56ED0();
      v6 = [v4 localizedStringForKey:v2 value:0 table:v5];
LABEL_9:
      v11 = v6;

      sub_190D56F10();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    v2 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v4 localizedStringForKey:v2 value:0 table:v5];
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_190B6BD08(uint64_t a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 13:
    case 17:
    case 18:
    case 19:
    case 23:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      if (CKIsBlackholeEnabled())
      {
        result = 0xD000000000000020;
      }

      else
      {
        result = 0xD00000000000001CLL;
      }

      break;
    case 7:
      result = 0xD000000000000028;
      break;
    case 8:
      v3 = [objc_opt_self() sharedFeatureFlags];
      v4 = [v3 isModernFilteringEnabled];

      if (v4)
      {
        result = 0xD000000000000017;
      }

      else
      {
        result = 0xD00000000000001ELL;
      }

      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 14:
    case 15:
    case 21:
    case 22:
    case 24:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000021;
      break;
    case 20:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_190B6BF24(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        CKMessageSpamFilteringEnabled();
        sub_1902188FC(0, &unk_1EAD450A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_190DD1DA0;
        v36 = sub_190D56F10();
        v38 = v37;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_19081EA10();
        *(v35 + 32) = v36;
        *(v35 + 40) = v38;
        v39 = sub_190D57B90();
        v40 = MEMORY[0x1E69E65A8];
        *(v35 + 96) = MEMORY[0x1E69E6530];
        *(v35 + 104) = v40;
        *(v35 + 72) = v39;
        return sub_190D575E0();
      }
    }

    else
    {
      if (!a1)
      {
        return v1;
      }

      if (a1 != 1)
      {
        goto LABEL_49;
      }
    }

    sub_1902188FC(0, &unk_1EAD450A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD1DA0;
    v14 = sub_190D56F10();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_19081EA10();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v17 = sub_190D57B90();
    v18 = MEMORY[0x1E69E65A8];
    *(v13 + 96) = MEMORY[0x1E69E6530];
    *(v13 + 104) = v18;
    *(v13 + 72) = v17;
    return sub_190D575E0();
  }

  if (a1 <= 0x1A)
  {
    if (((1 << a1) & 0x1FFE000) != 0)
    {
      sub_1902188FC(0, &unk_1EAD450A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_190DD1DA0;
      v3 = sub_190D56F10();
      v5 = v4;
      *(v2 + 56) = MEMORY[0x1E69E6158];
      *(v2 + 64) = sub_19081EA10();
      *(v2 + 32) = v3;
      *(v2 + 40) = v5;
      v6 = sub_190D57B10();
      v7 = MEMORY[0x1E69E6810];
      v8 = MEMORY[0x1E69E6870];
LABEL_5:
      *(v2 + 96) = v7;
      *(v2 + 104) = v8;
      *(v2 + 72) = v6;
      return sub_190D575E0();
    }

    if (((1 << a1) & 0x6000580) != 0)
    {
      return v1;
    }

    if (((1 << a1) & 0x240) != 0)
    {
      sub_1902188FC(0, &unk_1EAD450A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_190DD1DA0;
      v10 = sub_190D56F10();
      v12 = v11;
      *(v2 + 56) = MEMORY[0x1E69E6158];
      *(v2 + 64) = sub_19081EA10();
      *(v2 + 32) = v10;
      *(v2 + 40) = v12;
      v6 = sub_190D57B90();
      v7 = MEMORY[0x1E69E6530];
      v8 = MEMORY[0x1E69E65A8];
      goto LABEL_5;
    }
  }

  if (a1 == 4)
  {
    v19 = sub_190D57B80();
    v20 = v19 + 56;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v19 + 56);
    v24 = (v21 + 63) >> 6;
    sub_190D52690();
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_46;
      }

      v23 = *(v20 + 8 * v27);
      ++v25;
      if (v23)
      {
        v25 = v27;
        do
        {
LABEL_25:
          v28 = sub_190D57B10();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_190836C48(0, *(v26 + 2) + 1, 1, v26);
          }

          v29 = *(v26 + 2);
          v30 = *(v26 + 3);
          v31 = v29 + 1;
          if (v29 >= v30 >> 1)
          {
            v60 = v29 + 1;
            v32 = v26;
            v33 = *(v26 + 2);
            v34 = sub_190836C48((v30 > 1), v29 + 1, 1, v32);
            v29 = v33;
            v31 = v60;
            v26 = v34;
          }

          v23 &= v23 - 1;
          *(v26 + 2) = v31;
          *&v26[8 * v29 + 32] = v28;
        }

        while (v23);
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a1 == 5)
  {
    v41 = sub_190D57B50();
    v42 = v41 + 56;
    v43 = 1 << *(v41 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v41 + 56);
    v46 = (v43 + 63) >> 6;
    sub_190D52690();
    v47 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v46)
      {
LABEL_46:

        sub_1902188FC(0, &unk_1EAD450A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_190DD1DA0;
        v57 = sub_190D56F10();
        v59 = v58;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_19081EA10();
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        *(v56 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E2A8);
        *(v56 + 104) = sub_190B6C8B8();
        *(v56 + 72) = v26;
        return sub_190D575E0();
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        v47 = v48;
        do
        {
LABEL_40:
          v49 = sub_190D57B10();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_190836C48(0, *(v26 + 2) + 1, 1, v26);
          }

          v50 = *(v26 + 2);
          v51 = *(v26 + 3);
          v52 = v50 + 1;
          if (v50 >= v51 >> 1)
          {
            v61 = v50 + 1;
            v53 = v26;
            v54 = *(v26 + 2);
            v55 = sub_190836C48((v51 > 1), v50 + 1, 1, v53);
            v50 = v54;
            v52 = v61;
            v26 = v55;
          }

          v45 &= v45 - 1;
          *(v26 + 2) = v52;
          *&v26[8 * v50 + 32] = v49;
        }

        while (v45);
      }
    }

    goto LABEL_48;
  }

LABEL_49:
  sub_190D582B0();
  MEMORY[0x193AF28B0](0x20676E697373694DLL, 0xE800000000000000);
  MEMORY[0x193AF28B0](0x6465725074616863, 0xEF29286574616369);
  MEMORY[0x193AF28B0](0x20726F6620, 0xE500000000000000);
  type metadata accessor for IMConversationListFilterMode(0);
  sub_190D58450();
  result = sub_190D58510();
  __break(1u);
  return result;
}

CKConversationListFilterModeUtilities __swiftcall CKConversationListFilterModeUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_190B6C8B8()
{
  result = qword_1EAD5E2B0;
  if (!qword_1EAD5E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E2B0);
  }

  return result;
}

char *sub_190B6C91C()
{
  if (CKMessageSpamFilteringEnabled())
  {
    v0 = [objc_opt_self() fetchSMSFilterExtensionParams];
    sub_1902188FC(0, &qword_1EAD5E2B8);
    v1 = sub_190D57180();

    if (v1 >> 62)
    {
LABEL_24:
      v2 = sub_190D581C0();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v2 == v3)
      {

        return v16;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AF3B90](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      [v4 action];
      [v5 subAction];
      v7 = sub_190D57C20();
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = sub_190D57BF0();
      v11 = v10;

      ++v3;
      if ((v11 & 1) == 0)
      {
LABEL_14:
        v12 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_190835CF0(0, *(v16 + 2) + 1, 1, v16);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        v16 = v12;
        if (v14 >= v13 >> 1)
        {
          v16 = sub_190835CF0((v13 > 1), v14 + 1, 1, v12);
        }

        *(v16 + 2) = v14 + 1;
        *&v16[8 * v14 + 32] = v9;
        v3 = v6;
      }
    }

    v9 = v7;

    goto LABEL_14;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_190B6CB50(uint64_t (*a1)(uint64_t))
{
  v2 = sub_190B6C91C();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if (a1(v9))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19082DCE0(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_19082DCE0((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

id sub_190B6CC4C(uint64_t a1)
{
  if (a1 != 7 && a1 != 9)
  {
    return 0;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();

    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_190B6CD50(uint64_t a1)
{
  if (a1 != 7 && a1 != 9)
  {
    return 0;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();

    v4 = sub_190D56ED0();

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s19LatencyEventPayloadVMa()
{
  result = qword_1EAD5E2C0;
  if (!qword_1EAD5E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190B6CEAC()
{
  sub_190D518A0();
  if (v0 <= 0x3F)
  {
    sub_190D518E0();
    if (v1 <= 0x3F)
    {
      sub_190A9E840(319, &qword_1EAD5E2D0);
      if (v2 <= 0x3F)
      {
        sub_190A9E840(319, &qword_1EAD5E2D8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_190B6CF9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DE4300;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEA00000000006469;
  sub_190D51850();
  v3 = sub_190D56ED0();

  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000190E76600;
  v4 = _s19LatencyEventPayloadVMa();
  *(inited + 72) = sub_190D574E0();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x8000000190E76620;
  *(inited + 96) = sub_190D574E0();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000190E76640;
  *(inited + 120) = sub_190D574E0();
  strcpy((inited + 128), "model_language");
  *(inited + 143) = -18;
  sub_190D518D0();
  v5 = sub_190D56ED0();

  *(inited + 144) = v5;
  *(inited + 152) = 0x65776569765F7369;
  *(inited + 160) = 0xE900000000000064;
  *(inited + 168) = sub_190D57230();
  *(inited + 176) = 0x65746964655F7369;
  *(inited + 184) = 0xE900000000000064;
  *(inited + 192) = sub_190D57230();
  *(inited + 200) = 0x7265736E695F7369;
  *(inited + 208) = 0xEB00000000646574;
  *(inited + 216) = sub_190D57230();
  v6 = sub_190821BE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B8);
  swift_arrayDestroy();
  v7 = *(v1 + *(v4 + 40) + 8);
  if ((v7 & 1) == 0)
  {
    v8 = sub_190D51C70();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1D0E4(v8, 0xD000000000000014, 0x8000000190E766A0, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v1 + *(v4 + 44) + 8) & 1) == 0)
  {
    v10 = sub_190D51C70();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1D0E4(v10, 0xD000000000000018, 0x8000000190E76680, v11);
    if ((v7 & 1) == 0)
    {
      v12 = sub_190D51C70();
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1D0E4(v12, 0xD000000000000018, 0x8000000190E76660, v13);
    }
  }

  return v6;
}

unint64_t sub_190B6D2EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190B6F954(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_190B6D378()
{
  swift_getKeyPath();
  sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_190B6D430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  *a2 = *(v3 + 72);
  return sub_190D52690();
}

uint64_t sub_190B6D51C(uint64_t a1)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(result + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = result == a1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_10:
      *(v1 + 72) = a1;
    }

    else
    {
      v6 = (result + 32);
      v7 = (a1 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          goto LABEL_11;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190B6D68C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  sub_190D52690();
}

char *sub_190B6D6F4()
{
  v1 = v0;
  v69 = sub_190D52930();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D526C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v14 = *(v0 + 16);
  if (sub_1908553EC())
  {
    v15 = sub_190836538(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_190836538((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v15[v17 + 32] = 2;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if ([v14 supportsHandleSelection])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_190836538((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v15[v19 + 32] = 6;
  }

  v20 = [v14 chat];
  v21 = [v20 conversation];

  v75 = v14;
  if (v21)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_190836538((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v15[v23 + 32] = 1;
  }

  v74 = v1;
  sub_190D52750();
  v76 = *(v4 + 88);
  v24 = v76(v13, v3);
  v25 = *MEMORY[0x1E6995738];
  if (v24 == *MEMORY[0x1E6995738])
  {
    (*(v4 + 96))(v13, v3);
    v26 = v13;
    v27 = v69;
    (*(v72 + 32))(v71, v26, v69);
    v28 = sub_190D528F0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
      }

      v31 = *(v15 + 2);
      v30 = *(v15 + 3);
      if (v31 >= v30 >> 1)
      {
        v15 = sub_190836538((v30 > 1), v31 + 1, 1, v15);
      }

      (*(v72 + 8))(v71, v27);
      *(v15 + 2) = v31 + 1;
      v32 = &v15[v31];
      v33 = 10;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
      }

      v35 = *(v15 + 2);
      v34 = *(v15 + 3);
      if (v35 >= v34 >> 1)
      {
        v15 = sub_190836538((v34 > 1), v35 + 1, 1, v15);
      }

      (*(v72 + 8))(v71, v27);
      *(v15 + 2) = v35 + 1;
      v32 = &v15[v35];
      v33 = 5;
    }

    v32[32] = v33;
  }

  else
  {
    if (v24 != *MEMORY[0x1E6995720])
    {
      result = sub_190D58750();
      __break(1u);
      return result;
    }

    (*(v4 + 8))(v13, v3);
  }

  sub_190D52750();
  v36 = v76(v10, v3);
  if (v36 == v25)
  {
    v37 = *(v4 + 8);
    v37(v10, v3);
  }

  else
  {
    v38 = v36;
    v39 = *MEMORY[0x1E6995720];
    v37 = *(v4 + 8);
    v37(v10, v3);
    if (v38 == v39)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
      }

      v41 = *(v15 + 2);
      v40 = *(v15 + 3);
      if (v41 >= v40 >> 1)
      {
        v15 = sub_190836538((v40 > 1), v41 + 1, 1, v15);
      }

      *(v15 + 2) = v41 + 1;
      v15[v41 + 32] = 4;
    }
  }

  v42 = v73;
  sub_190D52750();
  v43 = v76(v42, v3);
  v37(v42, v3);
  if (v43 == v25)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
    }

    v45 = *(v15 + 2);
    v44 = *(v15 + 3);
    if (v45 >= v44 >> 1)
    {
      v15 = sub_190836538((v44 > 1), v45 + 1, 1, v15);
    }

    *(v15 + 2) = v45 + 1;
    v15[v45 + 32] = 3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_190836538(0, *(v15 + 2) + 1, 1, v15);
  }

  v47 = *(v15 + 2);
  v46 = *(v15 + 3);
  if (v47 >= v46 >> 1)
  {
    v15 = sub_190836538((v46 > 1), v47 + 1, 1, v15);
  }

  *(v15 + 2) = v47 + 1;
  v15[v47 + 32] = 7;
  if ([v75 supportsDeleteAndBlockGroup])
  {
    v49 = *(v15 + 2);
    v48 = *(v15 + 3);
    v50 = v49 + 1;
    v51 = 9;
    if (v49 < v48 >> 1)
    {
      v52 = v75;
      v53 = &selRef_capStyle;
LABEL_54:
      *(v15 + 2) = v50;
      v15[v49 + 32] = v51;
      goto LABEL_60;
    }

    v52 = v75;
    v53 = &selRef_capStyle;
LABEL_83:
    v15 = sub_190836538((v48 > 1), v50, 1, v15);
    goto LABEL_54;
  }

  v54 = v70;
  sub_190D52750();
  v55 = v76(v54, v3);
  v37(v54, v3);
  if (v55 == v25)
  {
    v52 = v75;
    v53 = &selRef_capStyle;
  }

  else
  {
    v52 = v75;
    if (v55 == *MEMORY[0x1E6995720] && ([v75 supportsDeleteAndBlockGroup] & 1) == 0)
    {
      v49 = *(v15 + 2);
      v48 = *(v15 + 3);
      v50 = v49 + 1;
      v51 = 8;
      v53 = &selRef_capStyle;
      if (v49 < v48 >> 1)
      {
        goto LABEL_54;
      }

      goto LABEL_83;
    }

    v53 = &selRef_capStyle;
  }

LABEL_60:
  if (([v52 isGroupConversation] & 1) == 0 && (objc_msgSend(v52, sel_isBusinessConversation) & 1) == 0)
  {
    v57 = *(v15 + 2);
    v56 = *(v15 + 3);
    if (v57 >= v56 >> 1)
    {
      v15 = sub_190836538((v56 > 1), v57 + 1, 1, v15);
    }

    *(v15 + 2) = v57 + 1;
    v15[v57 + 32] = 11;
  }

  if (sub_190C69010())
  {
    v59 = *(v15 + 2);
    v58 = *(v15 + 3);
    if (v59 >= v58 >> 1)
    {
      v15 = sub_190836538((v58 > 1), v59 + 1, 1, v15);
    }

    *(v15 + 2) = v59 + 1;
    v15[v59 + 32] = 13;
  }

  if (sub_190B6E5B4())
  {
    v61 = *(v15 + 2);
    v60 = *(v15 + 3);
    if (v61 >= v60 >> 1)
    {
      v15 = sub_190836538((v60 > 1), v61 + 1, 1, v15);
    }

    *(v15 + 2) = v61 + 1;
    v15[v61 + 32] = 0;
  }

  v62 = [v52 v53[93]];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 countOfAttachmentsNotCachedLocally];

    if (v64)
    {
      v65 = [v64 integerValue];

      if (v65 >= 1)
      {
        v67 = *(v15 + 2);
        v66 = *(v15 + 3);
        if (v67 >= v66 >> 1)
        {
          v15 = sub_190836538((v66 > 1), v67 + 1, 1, v15);
        }

        *(v15 + 2) = v67 + 1;
        v15[v67 + 32] = 12;
      }
    }
  }

  v77 = v15;
  sub_190D52690();
  sub_190B6EDC4(&v77);

  return v77;
}

double sub_190B6E100()
{
  v1 = sub_190D52930();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D526C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D52D20();
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0.0;
  if (!sub_190B6E46C())
  {
    v18 = v2;
    swift_getKeyPath();
    v20 = v0;
    sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
    sub_190D51C20();

    swift_beginAccess();
    if (!sub_190A5E14C(0, *(v0 + 72)))
    {
      sub_190D52D10();
      sub_190D52750();
      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E6995738])
      {
        (*(v6 + 96))(v8, v5);
        v13 = v18;
        (*(v18 + 32))(v4, v8, v1);
        if (sub_190D528F0())
        {
          sub_190D52CD0();
          v12 = v14;
        }

        (*(v13 + 8))(v4, v1);
        (*(v19 + 8))(v11, v9);
      }

      else
      {
        sub_190D52CD0();
        v12 = v15;
        (*(v19 + 8))(v11, v9);
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  return v12;
}

BOOL sub_190B6E46C()
{
  swift_getKeyPath();
  sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  if (!sub_190A5E14C(2u, *(v0 + 72)))
  {
    return 0;
  }

  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_190B6F964(&qword_1EAD548A8, _s9ViewModelCMa_1);
  sub_190D51C20();

  return *(*(v1 + 32) + 16) != 0;
}

BOOL sub_190B6E5B4()
{
  v1 = v0;
  v2 = sub_190D526C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D52750();
  v6 = (*(v3 + 88))(v5, v2);
  v7 = *MEMORY[0x1E6995738];
  (*(v3 + 8))(v5, v2);
  if (v6 != v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [*(v1 + 16) recipientStrings];
  if (!v9)
  {
    sub_190D57180();
    v9 = sub_190D57160();
  }

  v10 = [v8 createSharedProfileStateOracleForHandles_];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 bannerActionTypeForEffectiveState];

  return v11 != 0;
}

uint64_t sub_190B6E778()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B6F964(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v3 = *(v2 + 2);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (!v2[i + 32])
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 72) = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v8 = *(v2 + 2);
          if (v6 == v8)
          {
LABEL_9:
            *(v1 + 72) = v2;
            v5 = *(v2 + 2);
            v3 = i;
            if (v5 >= i)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v10 = v2 + 32;
            v11 = &v2[i + 33];
            while (v6 < v8)
            {
              if (*v11)
              {
                if (v6 != i)
                {
                  if (i >= v8)
                  {
                    goto LABEL_20;
                  }

                  v12 = v10[i];
                  v10[i] = *v11;
                  *v11 = v12;
                  v8 = *(v2 + 2);
                }

                ++i;
              }

              ++v6;
              ++v11;
              if (v6 == v8)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_20:
            __break(1u);
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v2 = sub_190A5BC9C(v2);
        }
      }
    }
  }

  v5 = *(v2 + 2);
LABEL_10:
  sub_190A0F17C(v3, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_190D51C30();
}

id *sub_190B6E984()
{

  v1 = OBJC_IVAR____TtCV7ChatKit18DetailsInfoTabView9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_190B6EA44()
{
  sub_190B6E984();

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F03EB3E1C9ViewModelCMa()
{
  result = qword_1EAD45D20;
  if (!qword_1EAD45D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B6EAF0()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t _s14descr1F03EB3E1C9ComponentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F03EB3E1C9ComponentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_190B6ED08()
{
  result = qword_1EAD5E2E0;
  if (!qword_1EAD5E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E2E0);
  }

  return result;
}

unint64_t sub_190B6ED60()
{
  result = qword_1EAD5E2E8;
  if (!qword_1EAD5E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E2E8);
  }

  return result;
}

uint64_t sub_190B6EDC4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E39E4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_190D58710();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_190D571D0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_190B6EEFC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_190B6EEFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1909E383C(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_190B6F438((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_190835714((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_190B6F438((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1909E383C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1909E37B0(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_190B6F438(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

void *sub_190B6F624(void *a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v5[9] = MEMORY[0x1E69E7CC0];
  sub_190D51C50();
  v5[2] = a1;
  v5[12] = a2;
  _s9ViewModelCMa_2(0);
  swift_allocObject();
  v13 = a1;
  sub_190D50920();
  v5[4] = sub_1908B711C(v13);
  _s9ViewModelCMa_4();
  swift_allocObject();
  v14 = v13;
  v5[5] = sub_190BB7B18(v14);
  v15 = *&a3[OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_locationActionHandler];
  _s9ViewModelCMa_1();
  swift_allocObject();
  v16 = v14;
  v5[6] = sub_19085C90C(v16, v15);
  v17 = *&a3[OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_faceTimeActionHandler];
  _s14descr1F03EB3E1C15FaceTimeSectionO9ViewModelCMa(0);
  v18 = swift_allocObject();
  v19 = v16;
  v20 = v17;
  sub_190D51C50();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  v5[3] = v18;
  _s9ViewModelCMa_5();
  swift_allocObject();
  v21 = v19;
  v22 = a4;
  v23 = sub_190C7B3B8(v21, v22);

  v5[7] = v23;
  _s14descr1F03EBF51O9ViewModelCMa();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 32) = 1;
  v25 = v21;
  sub_190D51C50();
  *(v24 + 16) = v25;
  v26 = sub_190D572E0();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v24;
  v28 = v25;
  sub_190D50920();
  sub_190857E08(0, 0, v12, &unk_190DF5A28, v27);

  v5[8] = v24;
  _s9ViewModelCMa_6();
  swift_allocObject();
  v29 = v28;
  v30 = sub_190B8DC84(v29);

  v5[13] = v30;
  v5[10] = a3;
  v5[11] = v22;
  v31 = v22;
  v32 = a3;
  v33 = sub_190B6D6F4();
  sub_190B6D51C(v33);
  return v5;
}

unint64_t sub_190B6F954(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t sub_190B6F964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190B6F9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_19093AEA4();
}

void sub_190B6FA7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_190D582B0();

    v14 = 0xD000000000000012;
    v15 = 0x8000000190E76810;
    v5 = sub_190D52910();
    v6 = [v5 identifier];

    v7 = sub_190D56F10();
    v9 = v8;

    MEMORY[0x193AF28B0](v7, v9);

    sub_190D515E0();

    v10 = sub_190D515F0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v2, 1, v10) != 1)
    {
      v12 = sub_190D51570();
      (*(v11 + 8))(v2, v10);
      sub_190820FDC(MEMORY[0x1E69E7CC0]);
      v13 = sub_190D56D60();

      [v4 openSensitiveURL:v12 withOptions:v13];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SuggestedActionsChatItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SuggestedActionsChatItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedActionsChatItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190B6FE08(void *a1, SEL *a2, double a3)
{
  v5 = [objc_allocWithZone(v3) *a2];

  return v5;
}

id sub_190B6FE70(void *a1, SEL *a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SuggestedActionsChatItem();
  v7 = objc_msgSendSuper2(&v9, *a2, a1, a3);

  if (v7)
  {
  }

  return v7;
}

id sub_190B6FEF0(void *a1, double a2, uint64_t a3, void *a4, const char **a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for SuggestedActionsChatItem();
  v8 = *a5;
  v9 = a4;
  v10 = objc_msgSendSuper2(&v12, v8, v9, a2);

  if (v10)
  {
  }

  return v10;
}

id SuggestedActionsChatItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedActionsChatItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CKChatController.presentRedesignedDetailsView(for:)(CKConversation *a1)
{
  v2 = [v1 redesignedDetailsViewForConversation_];
  [v1 performPlatformSpecificDetailsPresentation_];
}

void __swiftcall CKChatController.redesignedDetailsView(for:)(UIViewController *__return_ptr retstr, CKConversation *a2)
{
  v4 = sub_190D25330();
  v5 = sub_190D25414();
  v6 = sub_190B5E4EC();
  v7 = type metadata accessor for DetailsActionHandlers();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_faceTimeActionHandler] = v4;
  *&v8[OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_locationActionHandler] = v5;
  *&v8[OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_participantActionHandlers] = v6;
  v28.receiver = v8;
  v28.super_class = v7;
  v9 = [(UIViewController *)&v28 init];
  LOBYTE(v6) = [v2 shouldPresentDetailsInInspector];
  v10 = v9;
  v11 = [v2 macToolbarController];
  v12 = [v2 persistentDetailsTabInfo];
  v24[0] = v6;
  v25 = v9;
  v26 = v2;
  swift_unknownObjectWeakInit();
  v13 = v2;

  v27 = v12;
  sub_1909B8D88(v24, v23);
  v14 = type metadata accessor for CommunicationDetailsViewBuilder();
  v15 = objc_allocWithZone(v14);
  sub_1909B8D88(v23, v15 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration);
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = [(UIViewController *)&v22 init];
  sub_1909B8DE4(v23);
  v17 = sub_1909B8E5C(a2);
  if ([v13 shouldPresentDetailsInInspector])
  {
    v18 = sub_190D56ED0();
    v19 = [objc_opt_self() systemImageNamed_];

    v20 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v19 style:0 target:v13 action:sel_dismissDetailsView];
    v21 = [v17 navigationItem];
    [v21 setLeftBarButtonItem_];

    sub_1909B8DE4(v24);
  }

  else
  {
    sub_1909B8DE4(v24);
  }
}

Swift::Void __swiftcall CKChatController.performPlatformSpecificDetailsPresentation(_:)(UIViewController *a1)
{
  v3 = [v1 macToolbarController];
  if (v3)
  {
    v4 = v3;
    [v3 setIsShowingInspector_];
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v6 = v7;
  }

  v8 = v7;
  v19 = v6;
  [v19 setModalPresentationStyle_];
  v9 = [v19 view];

  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  sub_190B70D08(v19);
  if (![v1 shouldPresentDetailsInInspector])
  {
    v12 = [v1 transcriptBackground];
    if (v12)
    {
      [v12 pauseBackgroundAnimationsIfNeeded];
      swift_unknownObjectRelease();
    }

    [v1 presentViewController:v19 animated:1 completion:0];
    v13 = [v1 entryView];
    v14 = [v13 contentView];

    v18 = [v14 textView];
    if (v18)
    {
      [v18 resignFirstResponder];
      goto LABEL_14;
    }

LABEL_21:
    v15 = v19;
    goto LABEL_22;
  }

  v11 = [v1 preferredViewControllerForModalDetailPresentation];
  if (v11)
  {
    v18 = v11;
    [v11 presentViewController:v19 animated:1 completion:0];
LABEL_14:

    v15 = v18;
LABEL_22:

    return;
  }

  v16 = [v1 delegate];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  if ([v16 respondsToSelector_])
  {
    [v17 chatController:v1 presentViewControllerInInspector:v19];
  }

  swift_unknownObjectRelease();
}

__n128 sub_190B706C8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 zoomedViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v10 = 0u;
  if (v4)
  {
    v5 = [v4 topViewController];
    if (v5)
    {
      v6 = v5;
      sub_190D52830();
      if (swift_dynamicCastClass())
      {
        sub_190D52800();
        v9 = v12;
        v10 = v11;
        v7 = v13;
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
      v6 = v3;
      v9 = 0u;
    }
  }

  else
  {
    v7 = 1;
    v6 = v3;
    v9 = 0uLL;
  }

  result = v9;
  *a2 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = v7;
  return result;
}

id sub_190B707C8(void *a1)
{
  v1 = [a1 sourceViewController];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      if (qword_1EAD51C78 != -1)
      {
        swift_once();
      }

      v37 = sub_190D53040();
      __swift_project_value_buffer(v37, qword_1EAD9DFE8);
      v38 = sub_190D53020();
      v39 = sub_190D576A0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_19020E000, v38, v39, "Transition found unknown source view, expected CKNavigationController or CKMessagesController", v40, 2u);
        MEMORY[0x193AF7A40](v40, -1, -1);
      }

      return 0;
    }

    v15 = v14;
    v4 = v1;
    v16 = [v15 chatController];
    v17 = v4;
    if (v16)
    {
      v11 = v16;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();

      v17 = v11;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    if (qword_1EAD51C78 != -1)
    {
      swift_once();
    }

    v36 = sub_190D53040();
    __swift_project_value_buffer(v36, qword_1EAD9DFE8);
    v32 = sub_190D53020();
    v33 = sub_190D576A0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Transition could not find source view controller from messages controller";
    goto LABEL_21;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 topViewController];
  v6 = v4;
  if (!v5)
  {
LABEL_13:

    if (qword_1EAD51C78 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9DFE8);
    v32 = sub_190D53020();
    v33 = sub_190D576A0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Transition could not find source view controller from source navigation controller";
LABEL_21:
    _os_log_impl(&dword_19020E000, v32, v33, v35, v34, 2u);
    MEMORY[0x193AF7A40](v34, -1, -1);
LABEL_22:

LABEL_35:
    return 0;
  }

  v7 = v5;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    v6 = v7;
    goto LABEL_13;
  }

  v9 = [v8 topViewController];
  v10 = v4;
  if (!v9)
  {
LABEL_30:

    if (qword_1EAD51C78 != -1)
    {
      swift_once();
    }

    v41 = sub_190D53040();
    __swift_project_value_buffer(v41, qword_1EAD9DFE8);
    v42 = sub_190D53020();
    v43 = sub_190D576A0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_19020E000, v42, v43, "Transition could not find source view controller from chat navigation controller", v44, 2u);
      MEMORY[0x193AF7A40](v44, -1, -1);
    }

    goto LABEL_35;
  }

  v11 = v9;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    v10 = v11;
    goto LABEL_30;
  }

  v13 = v12;

LABEL_10:
  v18 = v11;
  v19 = [v13 transcriptNavigationBarController];

  if (v19)
  {
    v20 = *(*&v19[OBJC_IVAR___CKTranscriptNavigationBarController_titleView] + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView);
    v21 = *(v20 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton);
    v22 = *(v20 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
    v23 = type metadata accessor for CKTranscriptNavigationBarViewProxy();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_avatarView] = v21;
    *&v24[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_conversationTitleView] = v22;
    v45.receiver = v24;
    v45.super_class = v23;
    v25 = v19;
    v26 = v21;
    v27 = v22;
    v28 = objc_msgSendSuper2(&v45, sel_init);

    v29 = *&v28[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_avatarView];
    return v29;
  }

  return 0;
}

void sub_190B70D08(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD320]) init];
  [v2 set:0 recedesPresentingView:?];
  v3 = [objc_opt_self() clearColor];
  [v2 setDimmingColor_];

  sub_190D57A20();
  sub_190B70E28();
  v4 = v2;
  v5 = sub_190D57A80();

  [a1 setPreferredTransition_];
}

unint64_t sub_190B70E28()
{
  result = qword_1EAD5E2F0;
  if (!qword_1EAD5E2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5E2F0);
  }

  return result;
}

void CKChatController.detailsCoordinatorDidRequestNewCompose(_:addresses:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  v7[4] = sub_190B71050;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_190840E6C;
  v7[3] = &block_descriptor_92;
  v6 = _Block_copy(v7);
  sub_190D52690();

  [v2 dismissDetailsViewAndShowConversationListWithCompletion_];
  _Block_release(v6);
}

void sub_190B70F74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        v4 = sub_190D57160();
        [v3 chatController:v1 shouldComposeConversationWithRecipientAddresses:v4];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void CKChatController.detailsCoordinatorDidRequestNavigationToConversationList(_:)()
{
  v2[4] = nullsub_10;
  v2[5] = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_190840E6C;
  v2[3] = &block_descriptor_6_9;
  v1 = _Block_copy(v2);
  [v0 dismissDetailsViewAndShowConversationListWithCompletion_];
  _Block_release(v1);
}

Swift::Void __swiftcall CKChatController.dismissDetailsView()()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 hasDetailsNavigationController];
      swift_unknownObjectRelease();
      if (!v3)
      {
        return;
      }

      v4 = [v0 delegate];
      if (!v4)
      {
        return;
      }

      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        [v5 dismissDetailsNavigationController];
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_190B71430(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = sub_190D56F10();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  a5(v8, v10);
}

id CKChatController.detailsCoordinatorDidDismiss(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 persistentDetailsTabInfo];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    swift_beginAccess();
    v12 = *(a1 + v6);
    swift_bridgeObjectRetain_n();
    sub_190B72444(&v12);

    v7 = v12;
    v8 = *(v12 + 2);
    if (v8)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_190D58390();
      v9 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
        v9 += 8;
        --v8;
      }

      while (v8);
    }

    sub_1902188FC(0, &qword_1EAD46510);
    v10 = sub_190D57160();

    [v5 setExistingAsyncTabs_];
  }

  result = [v2 transcriptBackground];
  if (result)
  {
    [result resumeBackgroundAnimationsIfNeeded];
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall CKChatController.detailsCoordinatorRequestedContactsPopover(_:sourceView:activeHandle:contact:)(UIViewController *_, UIView_optional *sourceView, Swift::String activeHandle, CNContact contact)
{
  if (!sourceView)
  {
    v6 = [(UIViewController *)_ view:activeHandle._countAndFlagsBits];
    if (v6)
    {
    }

    else
    {
      __break(1u);
    }
  }
}

void CKChatController.didSelectTranscriptBackground(_:)(void *a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v5 = [v4 UUIDString];

  v38 = v5;
  v6 = v5;
  v7 = v5;
  if (!v5)
  {
    sub_190D56F10();
    v7 = sub_190D56ED0();

    sub_190D56F10();
    v6 = sub_190D56ED0();

    sub_190D56F10();
    v38 = sub_190D56ED0();
  }

  v8 = sub_190D56F10();
  v10 = v9;
  if (a1)
  {
    v11 = v8;
    v12 = v5;
    v13 = a1;

    v14 = [v2 conversation];
    v15 = v13;
    [v14 setPendingTranscriptBackground:v15 transferID:v7];

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v11;
    v17[4] = v10;
    v19 = *&v15[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration];
    v20 = &v15[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData];
    v21 = *&v15[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData + 8];
    if (v21 >> 60 == 15)
    {
      v22 = v19;
      swift_retain_n();
      sub_190D52690();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v19)
      {
        swift_retain_n();
        v27 = v19;
        sub_190D52690();
        v24 = v27;
        goto LABEL_13;
      }

      v32 = *v20;
      gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(v18);
      v33 = objc_opt_self();
      swift_retain_n();
      sub_190D52690();
      sub_19087C5A8(v32, v21);
      v40 = v32;
      v34 = sub_190D51660();
      aBlock[0] = 0;
      v19 = [v33 unarchiveConfigurationFromData:v34 format:-1 error:aBlock];

      v35 = aBlock[0];
      if (v19)
      {
        sub_19029064C(v40, v21);
LABEL_6:
        v21 = v20[1];
        v23 = v19;
        v24 = v23;
        if (v21 >> 60 == 15)
        {

LABEL_18:
          sub_190B71D44(0, v16, v11, v10);
          goto LABEL_19;
        }

LABEL_13:
        v28 = *v20;
        sub_19083B680(*v20, v21);

        v29 = swift_allocObject();
        *(v29 + 16) = sub_190B72F7C;
        *(v29 + 24) = v17;
        v39 = objc_opt_self();
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = v15;
        v30[4] = v24;
        v30[5] = v28;
        v30[6] = v21;
        v30[7] = 3;
        v30[8] = sub_190233AFC;
        v30[9] = v29;
        aBlock[4] = sub_19087FB34;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19087F0F0;
        aBlock[3] = &block_descriptor_19_1;
        v31 = _Block_copy(aBlock);
        v15 = v15;
        sub_19087C5A8(v28, v21);
        sub_190D50920();
        v24 = v24;
        sub_190D50920();

        [v39 createWatchSnapshotFromConfiguration:v24 completion:v31];
        _Block_release(v31);

        sub_19029064C(v28, v21);
LABEL_19:

        return;
      }

      v36 = v35;
      v37 = sub_190D51420();

      swift_willThrow();
      sub_19029064C(v40, v21);
    }

    v24 = 0;
    goto LABEL_18;
  }

  v25 = v5;

  v26 = [v2 conversation];
  [v26 setPendingTranscriptBackground:0 transferID:v6];

  [v2 updateTranscriptBackground:0 transferID:v38];
}

uint64_t sub_190B71D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_190D56770();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_190D567A0();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v14 = sub_190D57870();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_190B72F88;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_36_5;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_190D52690();
  sub_190D50920();

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_190B71FFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_190D56ED0();
    [v4 updateTranscriptBackground:a2 transferID:v5];
  }
}

Swift::OpaquePointer_optional __swiftcall CKChatController.transcriptContextChatItemProvider()()
{
  v1 = [v0 collectionViewController];
  v2 = [v1 chatItems];

  sub_1902188FC(0, &qword_1EAD450F0);
  v3 = sub_190D57180();

  v5 = v3;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall CKChatController.didPresentEditorTranscriptBackground(_:)(Swift::Bool a1)
{
  if ([v1 shouldPresentDetailsInInspector])
  {
    v3 = [v1 transcriptBackground];
    if (v3)
    {
      v4 = &selRef_pauseBackgroundAnimationsIfNeeded;
      if (!a1)
      {
        v4 = &selRef_resumeBackgroundAnimationsIfNeeded;
      }

      [v3 *v4];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t CKChatController.shouldPresentDetailsInInspector.getter()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernSplitViewControllerEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4 || v4 == 6)
  {
    return 0;
  }

  v7 = [v0 splitViewController];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [v7 isCollapsed];

  return v9 ^ 1;
}

uint64_t sub_190B72444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E3A20(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_190D58710();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for AsyncDetailsTab(0);
      v7 = sub_190D571D0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_190B7257C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_190B7257C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1909E383C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_190B72AC8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_190835714((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_190B72AC8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_190B72AC8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_190B72CBC()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isCollapsed];
  }

  else
  {
    v3 = 1;
  }

  v4 = [v0 delegate];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      v6 = [v5 hasPresentedInspectorForChatController_];
      swift_unknownObjectRelease();
      if ((v6 & v3) == 1)
      {
        [v0 dismissDetailsView];
        goto LABEL_10;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  [v0 dismissViewControllerAnimated:1 completion:0];
LABEL_10:
  v7 = sub_190D56ED0();
  v8 = [v0 conversation];
  [v0 scrollToMessageWith:v7 in:v8 withInlineReplyOverlay:0];
}

void sub_190B72E28()
{
  v1 = [v0 persistentDetailsTabInfo];
  if (v1)
  {

    v2 = [v0 persistentDetailsTabInfo];
    if (!v2)
    {
      return;
    }

    v3 = v2;
    v7 = sub_190D56ED0();
    [v3 setSelectedDetailsTabID_];
  }

  else
  {
    v4 = objc_allocWithZone(CKPersistentDetailsTabInfo);
    sub_1902188FC(0, &qword_1EAD46510);
    v5 = sub_190D57160();
    v6 = sub_190D56ED0();
    v7 = [v4 initWithExistingAsyncTabs:v5 selectedDetailsTabID:v6];

    [v0 setPersistentDetailsTabInfo_];
  }
}

uint64_t sub_190B72FD0(int a1, unint64_t a2, unint64_t a3)
{
  v7 = sub_190D50EF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 1;
  }

  LODWORD(v121) = a1;
  v12 = v3;
  v13 = sub_190B73B58(a1);
  v14 = [v13 fontDescriptor];
  LODWORD(v15) = [v14 symbolicTraits];

  sub_190B73C8C();
  v114 = v12;
  if (sub_190D57D90())
  {

    return 0;
  }

  v115 = v10;
  v17 = sub_190D56ED0();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E2F8);
  inited = swift_initStackObject();
  v19 = MEMORY[0x1E69DB648];
  v107 = xmmword_190DD1D90;
  *(inited + 16) = xmmword_190DD1D90;
  v20 = *v19;
  *(inited + 32) = v20;
  *(inited + 40) = v13;
  v106 = v20;
  v21 = v13;
  sub_190823888(inited);
  swift_setDeallocating();
  sub_190B73CD8(inited + 32);
  type metadata accessor for Key(0);
  v23 = v22;
  type metadata accessor for CTFont(0);
  v25 = v24;
  v26 = sub_190B73D40(&qword_1EAD46570, type metadata accessor for Key);
  v105 = v23;
  v112 = v25;
  v104 = v26;
  v27 = sub_190D56D60();

  v28 = CTLineCreateWithString();

  v29 = CTLineGetGlyphRuns(v28);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0;
  }

  v122 = 0;
  type metadata accessor for CTRun(0);
  v101 = v30;
  sub_190D57170();

  v31 = v122;
  if (!v122)
  {

    return 0;
  }

  v100 = v28;
  v122 = a2;
  v123 = a3;
  v32 = v115;
  sub_190D50ED0();
  sub_19081E484();
  v33 = sub_190D580B0();
  v35 = v34;
  v37 = *(v8 + 8);
  v36 = v8 + 8;
  v109 = v37;
  v37(v32, v7);

  v38 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v38 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v99 = v38;
  v102 = v21;
  v103 = v31 >> 62;
  v117 = a2;
  v118 = a3;
  v111 = v7;
  v110 = v36;
  if (v31 >> 62)
  {
LABEL_96:
    v39 = sub_190D581C0();
  }

  else
  {
    v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v31;
  v113 = v31;
  if (!v39)
  {
LABEL_37:
    v60 = sub_190D56ED0();
    v61 = swift_initStackObject();
    *(v61 + 16) = v107;
    v62 = v106;
    *(v61 + 32) = v106;
    v63 = v114;
    *(v61 + 40) = v114;
    v64 = v62;
    v65 = v63;
    sub_190823888(v61);
    swift_setDeallocating();
    sub_190B73CD8(v61 + 32);
    v66 = sub_190D56D60();

    v67 = CTLineCreateWithString();

    v68 = CTLineGetGlyphRuns(v67);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 1;
    }

    v122 = 0;
    sub_190D57170();

    v69 = v122;
    v70 = v102;
    v71 = v113;
    if (!v122)
    {

      return 1;
    }

    v72 = v122 >> 62;
    if (v122 >> 62)
    {
      goto LABEL_100;
    }

    for (i = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
    {
      if (v103)
      {
        v74 = sub_190D581C0();
      }

      else
      {
        v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (i != v74)
      {

        return 1;
      }

      v72 = v72 ? sub_190D581C0() : *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v72)
      {
        break;
      }

      *&v107 = v67;
      v75 = v71 & 0xFFFFFFFFFFFFFF8;
      v76 = v71 & 0xFFFFFFFFFFFFFF8;
      if (v71 < 0)
      {
        v75 = v71;
      }

      v114 = v75;
      v77 = v121 - 1;
      v120 = v69 & 0xFFFFFFFFFFFFFF8;
      v121 = v69 & 0xC000000000000001;
      v119 = v71 & 0xC000000000000001;
      if (v99)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77 >= 2;
      }

      v79 = !v78;
      v116 = v79;
      v67 = 4;
      v108 = v72;
      while (1)
      {
        v80 = v67 - 4;
        if (v121)
        {
          v81 = MEMORY[0x193AF3B90](v67 - 4, v69);
        }

        else
        {
          if (v80 >= *(v120 + 16))
          {
            goto LABEL_98;
          }

          v81 = *(v69 + 8 * v67);
        }

        v82 = v81;
        v83 = v67 - 3;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        if (v103)
        {
          v84 = sub_190D581C0();
        }

        else
        {
          v84 = *(v76 + 16);
        }

        if (v80 == v84)
        {

          v67 = v100;
          goto LABEL_92;
        }

        if (v119)
        {
          v85 = MEMORY[0x193AF3B90](v67 - 4, v113);
        }

        else
        {
          if (v80 >= *(v76 + 16))
          {
            goto LABEL_99;
          }

          v85 = *(v113 + 8 * v67);
        }

        v70 = v85;
        if (v116)
        {
          goto LABEL_84;
        }

        if (CTRunGetStringRange(v85).location == -1)
        {
          sub_190D50E40();
          v72 = v108;
        }

        sub_190D57580();
        if (v86)
        {
          goto LABEL_84;
        }

        v87 = sub_190D57100();
        v71 = v88;
        v122 = v87;
        v123 = v89;
        v124 = v90;
        v125 = v88;
        v91 = v115;
        sub_190D50ED0();
        sub_190A26454();
        v92 = sub_190D580B0();
        v94 = v93;
        v95 = v91;
        v72 = v108;
        v109(v95, v111);

        v96 = HIBYTE(v94) & 0xF;
        if ((v94 & 0x2000000000000000) == 0)
        {
          v96 = v92 & 0xFFFFFFFFFFFFLL;
        }

        if (v96)
        {
LABEL_84:
          v71 = CTRunGetFont();
          v97 = CTRunGetFont();
          sub_190B73D40(&qword_1EAD5E308, type metadata accessor for CTFont);
          v98 = sub_190D51CB0();

          if ((v98 & 1) == 0)
          {

            goto LABEL_47;
          }
        }

        else
        {
        }

        ++v67;
        if (v83 == v72)
        {
          v82 = v100;
          v67 = v107;
          goto LABEL_92;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      ;
    }

    v82 = v100;
LABEL_92:

    return 0;
  }

  v41 = 0;
  v116 = v15 & v121;
  v119 = v31 & 0xFFFFFFFFFFFFFF8;
  v120 = v31 & 0xC000000000000001;
  if (v99)
  {
    v42 = 1;
  }

  else
  {
    v42 = (v121 - 1) >= 2;
  }

  v43 = !v42;
  while (1)
  {
    if (v120)
    {
      v44 = MEMORY[0x193AF3B90](v41, v40);
    }

    else
    {
      if (v41 >= *(v119 + 16))
      {
        goto LABEL_95;
      }

      v44 = *(v40 + 8 * v41 + 32);
    }

    v15 = v44;
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if ((v43 & 1) == 0)
    {
      if (CTRunGetStringRange(v44).location == -1)
      {
        sub_190D50E40();
      }

      sub_190D57580();
      if ((v46 & 1) == 0)
      {
        v47 = sub_190D57100();
        v31 = v48;
        v122 = v47;
        v123 = v49;
        v124 = v50;
        v125 = v48;
        v51 = v115;
        sub_190D50ED0();
        sub_190A26454();
        v52 = sub_190D580B0();
        v54 = v53;
        v55 = v51;
        v40 = v113;
        v109(v55, v111);

        v56 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v56 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (!v56)
        {

          goto LABEL_32;
        }
      }
    }

    v57 = v121;
    v31 = v116 != v121;
    v58 = CTRunGetFont();
    v59 = [v58 fontDescriptor];

    LODWORD(v58) = [v59 symbolicTraits];
    if ((v31 ^ ((v57 & ~v58) == 0)))
    {
      break;
    }

LABEL_32:
    ++v41;
    if (v45 == v39)
    {
      goto LABEL_37;
    }
  }

LABEL_47:

  return 1;
}

unint64_t sub_190B73AF0(void *a1)
{
  v2 = sub_190D56F10();
  v4 = v3;
  v5 = a1;
  LOBYTE(v2) = sub_190B72FD0(1, v2, v4);

  return v2 & 1;
}

id sub_190B73B58(int a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v12 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = v5 & ~a1;
  if (!a1)
  {
    v6 = v5;
  }

  if ((a1 & ~v5) != 0)
  {
    v7 = v5 | a1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    [v12 pointSize];
    v10 = [objc_opt_self() fontWithDescriptor:v8 size:v9];

    return v10;
  }

  else
  {

    return v12;
  }
}

unint64_t sub_190B73C8C()
{
  result = qword_1EAD46540;
  if (!qword_1EAD46540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD46540);
  }

  return result;
}

uint64_t sub_190B73CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B73D40(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190B73D9C()
{
  v1 = *v0;
  sub_1908554B8();
  v3 = v2;
  v4 = [objc_allocWithZone(CKDetailsMapViewProvider) initWithConversation_];
  if (v3)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 mapViewForParticipantsSharingLocationUsingDisplayName_];

  return v6;
}

id sub_190B73E44(uint64_t a1, char a2)
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v5 = result;
    [result detailsViewMapHeight];

    if (a2)
    {
      return 0;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B73EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B73FB8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B73F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B73FB8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B73F90()
{
  sub_190B73FB8();
  sub_190D55130();
  __break(1u);
}

unint64_t sub_190B73FB8()
{
  result = qword_1EAD5E310;
  if (!qword_1EAD5E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E310);
  }

  return result;
}

id sub_190B7400C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(CKQLPreviewController) init];
  v7 = [objc_allocWithZone(CKQLPreviewControllerDataSource) init];
  v8 = *(a1 + 16);
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_190D58390();
    v9 = a1 + 32;
    do
    {
      sub_19083B854(v9, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E398);
  v12 = sub_190D57160();

  [v7 setPreviewItems_];

  v13 = *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_quickLookDataSource);
  *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_quickLookDataSource) = v7;
  v14 = v7;

  v15 = v6;
  [v15 setDelegate_];
  [v15 setDataSource_];
  [v15 reloadData];
  [v15 setCurrentPreviewItemIndex_];

  [v15 refreshCurrentPreviewItem];
  return v15;
}

void sub_190B74210(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (qword_1EAD51C68 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9DFB8);
    sub_190D52690();
    v3 = sub_190D53020();
    v4 = sub_190D576C0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v33 = v6;
      *v5 = 136315138;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E390);
      v8 = MEMORY[0x193AF2A20](a1, v7);
      v10 = sub_19021D9F8(v8, v9, &v33);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_19020E000, v3, v4, "Presenting Quick Look for items %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x193AF7A40](v6, -1, -1);
      MEMORY[0x193AF7A40](v5, -1, -1);
    }

    v11 = sub_190B7400C(a1, 0);
    sub_1902188FC(0, &qword_1EAD464F0);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = v11;
    v31 = v12;
    v14 = sub_190D57DC0();
    v15 = CKFrameworkBundle();
    if (v15)
    {
      v16 = v15;
      sub_1902188FC(0, &qword_1EAD46690);
      v17 = sub_190D56ED0();
      v18 = sub_190D56ED0();
      v19 = [v16 localizedStringForKey:v17 value:0 table:{v18, 0, 0, 0, sub_190B747F0, v31}];

      sub_190D56F10();
      v32 = v14;
      v20 = sub_190D57750();
      v21 = [v13 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_190DD55F0;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_190DD55F0;
      *(v23 + 32) = v20;
      v24 = objc_allocWithZone(MEMORY[0x1E69DC720]);
      v25 = v20;
      v26 = sub_190D57160();

      v27 = [v24 initWithBarButtonItems:v26 representativeItem:0];

      *(v22 + 32) = v27;
      sub_1902188FC(0, &qword_1EAD5E388);
      v28 = sub_190D57160();

      [v21 setLeadingItemGroups_];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        [Strong presentViewController:v13 animated:1 completion:0];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void _s7ChatKit22DetailsViewCoordinatorC27previewControllerDidDismissyySo09QLPreviewG0CF_0()
{
  v1 = v0;
  if (qword_1EAD51C68 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DFB8);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Dismissed Quick Look document", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_quickLookDataSource);
  *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_quickLookDataSource) = 0;
}

void sub_190B74808()
{
  sub_190B74994(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_190B74994(319, &qword_1EAD5E428, _s9ViewModelCMa_10, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_190B74994(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19081C950();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190B74994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_190B74A3C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_190D56630();
}

void sub_190B74C0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _s11ContentViewVMa_5();
  v9 = v8[10];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v10 = (a4 + v8[11]);
  *(a4 + v8[12]) = 9;
  type metadata accessor for DetailsViewConfiguration();
  sub_190B00014(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v11 = a1;
  sub_190D56340();
  _s9ViewModelCMa_10();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) = 0;
  v13 = v11;
  sub_190D51C50();
  sub_190D51C50();
  *(v12 + 16) = v13;
  sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
  sub_190D56340();

  *v10 = a2;
  v10[1] = a3;
}

uint64_t sub_190B74DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert);
  return result;
}

uint64_t sub_190B74E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = *(a1 + 16);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  v6 = sub_190D54200();
  v42 = sub_190D58050();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E430);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = *(a1 + 24);
  v48 = v4;
  v49 = v18;
  v40 = v18;
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E438);
  sub_190233640(&qword_1EAD5E440, &qword_1EAD5E438);
  sub_190D562E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  v41 = v13;
  v19 = *(v13 + 36);
  v20 = v17;
  *&v17[v19] = v54[0];
  v21 = *(v2 + *(a1 + 44));
  if (v21)
  {
    LOBYTE(v54[0]) = *(v2 + *(a1 + 48));
    v22 = v38;
    v21(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
    sub_190D56320();

    v23 = [objc_opt_self() currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (v24 == 5)
    {
      v25 = sub_190D55DA0();
    }

    else
    {
      v25 = 0;
    }

    v27 = v40;
    v54[0] = v25;
    sub_190D55940();

    (*(v39 + 8))(v22, v4);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v27 = v40;
  }

  (*(*(v6 - 8) + 56))(v10, v26, 1, v6);
  v28 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
  v54[3] = v27;
  v54[4] = v28;
  v54[2] = swift_getWitnessTable();
  v29 = v42;
  WitnessTable = swift_getWitnessTable();
  v31 = v45;
  sub_19096BC74(v10, v29, WitnessTable);
  v32 = v44;
  v33 = *(v44 + 8);
  v33(v10, v29);
  v34 = v17;
  v35 = v43;
  sub_19022FD14(v34, v43, &qword_1EAD5E430);
  v54[0] = v35;
  v36 = v46;
  (*(v32 + 16))(v46, v31, v29);
  v54[1] = v36;
  v53[0] = v41;
  v53[1] = v29;
  v51 = sub_190B770F4();
  v52 = WitnessTable;
  sub_190B74A3C(v54, 2uLL, v53);
  v33(v31, v29);
  sub_19022EEA4(v20, &qword_1EAD5E430);
  v33(v36, v29);
  return sub_19022EEA4(v35, &qword_1EAD5E430);
}

uint64_t sub_190B7545C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59348);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E460);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E468);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = _s11ContentViewVMa_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  v19 = sub_190AFF670();

  if (v19)
  {
    sub_190B75864(v18, v11);
    sub_19028127C(v11, v17);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  (*(v9 + 56))(v17, v20, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  v22 = sub_190AFF828();

  v24 = v32;
  v23 = v33;
  if (v22)
  {
    v25 = v30;
    sub_190B75ED4(v18);
    (*(v24 + 32))(v7, v25, v23);
    v21 = 0;
  }

  (*(v24 + 56))(v7, v21, 1, v23);
  sub_19022FD14(v17, v14, &qword_1EAD5E468);
  v26 = v31;
  sub_190B7723C(v7, v31);
  v27 = v34;
  sub_19022FD14(v14, v34, &qword_1EAD5E468);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E470);
  sub_190B7723C(v26, v27 + *(v28 + 48));
  sub_190B772AC(v7);
  sub_19022EEA4(v17, &qword_1EAD5E468);
  sub_190B772AC(v26);
  return sub_19022EEA4(v14, &qword_1EAD5E468);
}

int *sub_190B75864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v37 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E478);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v37 - v16;
  sub_190D53970();
  v17 = sub_190D539A0();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = *(v8 + 16);
  v47 = v3;
  v18(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v21 = *(a1 + 24);
  *(v20 + 16) = *(a1 + 16);
  *(v20 + 24) = v21;
  (*(v8 + 32))(v20 + v19, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v41 = v15;
  sub_190D56020();
  result = CKFrameworkBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_190D56ED0();
    v25 = sub_190D56ED0();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    v27 = sub_190D56F10();
    v29 = v28;

    v49 = v27;
    v50 = v29;
    v37 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
    sub_190D56330();
    swift_getKeyPath();
    v30 = v39;
    sub_190D56350();

    v31 = (*(v38 + 8))(v7, v30);
    v39 = &v37;
    MEMORY[0x1EEE9AC00](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    sub_19081E484();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    v32 = v40;
    v33 = v45;
    v34 = v41;
    sub_190D559B0();

    (*(v43 + 8))(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
    sub_190D56320();
    v35 = v48;
    v36 = v46;
    (*(v42 + 32))(v46, v32, v44);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E460);
    *(v36 + result[9]) = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B75ED4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_190D56030();
}

uint64_t sub_190B76028()
{
  _s11ContentViewVMa_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  if (*(v2 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) == 1)
  {
    *(v2 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
    sub_190D51C10();
  }
}

uint64_t sub_190B76184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v40 = a1;
  v47 = a4;
  v5 = _s11ContentViewVMa_5();
  v6 = *(v5 - 8);
  v49 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v36 - v19;
  sub_190D53970();
  v38 = sub_190D539A0();
  v20 = *(v38 - 8);
  v41 = *(v20 + 56);
  v42 = v20 + 56;
  v41(v11, 0, 1, v38);
  v39 = *(v6 + 16);
  v39(v8, a1, v5);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v51;
  *(v22 + 16) = v50;
  *(v22 + 24) = v23;
  v37 = *(v6 + 32);
  v37(v22 + v21, v8, v5);
  sub_190D56020();
  sub_190D53970();
  v41(v11, 0, 1, v38);
  v39(v8, v40, v5);
  v24 = swift_allocObject();
  v25 = v51;
  *(v24 + 16) = v50;
  *(v24 + 24) = v25;
  v37(v24 + v21, v8, v5);
  v26 = v43;
  sub_190D56020();
  v27 = v46;
  v28 = *(v46 + 16);
  v29 = v44;
  v30 = v48;
  v28(v44, v48, v12);
  v31 = v45;
  v28(v45, v26, v12);
  v32 = v47;
  v28(v47, v29, v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
  v28(&v32[*(v33 + 48)], v31, v12);
  v34 = *(v27 + 8);
  v34(v26, v12);
  v34(v30, v12);
  v34(v31, v12);
  return (v34)(v29, v12);
}

uint64_t sub_190B76660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_190D572A0();
  v6[5] = sub_190D57290();
  v8 = sub_190D57240();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_190B766FC, v8, v7);
}

uint64_t sub_190B766FC()
{
  _s11ContentViewVMa_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  *(v0 + 64) = v3;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_190B767CC;

  return sub_190AFF9DC();
}

uint64_t sub_190B767CC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_190A70BA4, v3, v2);
}

uint64_t sub_190B76910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v8 = _s11ContentViewVMa_5();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_190D572E0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  sub_190D572A0();
  v16 = sub_190D57290();
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_190857E08(0, 0, v14, v22, v18);
}

uint64_t sub_190B76B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_190D572A0();
  v6[6] = sub_190D57290();
  v8 = sub_190D57240();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_190B76BA4, v8, v7);
}

uint64_t sub_190B76BA4()
{
  _s11ContentViewVMa_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  *(v0 + 72) = v3;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_190B76C74;

  return sub_190AFF9DC();
}

uint64_t sub_190B76C74()
{

  return MEMORY[0x1EEE6DFA0](sub_190B76D70, 0, 0);
}

uint64_t sub_190B76D70()
{
  v1 = v0[9];
  swift_getKeyPath();
  v0[2] = v1;
  sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v1 + 16);
  sub_190CEDD98();

  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1909986A0, v3, v4);
}

id sub_190B76E64@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B76F64()
{
  _s11ContentViewVMa_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  sub_190D56320();
  sub_190AFFC20();
}

id sub_190B76FEC@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_190B770F4()
{
  result = qword_1EAD5E448;
  if (!qword_1EAD5E448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E430);
    sub_190B77180();
    sub_190B06BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E448);
  }

  return result;
}

unint64_t sub_190B77180()
{
  result = qword_1EAD5E450;
  if (!qword_1EAD5E450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E458);
    sub_190233640(&qword_1EAD5E440, &qword_1EAD5E438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E450);
  }

  return result;
}

uint64_t sub_190B7723C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B772AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B77358(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(_s11ContentViewVMa_5() - 8);
  return sub_190B76910(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a1, a2);
}

uint64_t sub_190B77408(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(_s11ContentViewVMa_5() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA4;

  return sub_190B76B08(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = _s11ContentViewVMa_5();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53D10();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190B776E4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(_s11ContentViewVMa_5() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_190B76660(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t objectdestroyTm_33()
{
  v1 = _s11ContentViewVMa_5();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53D10();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190B779F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(_s11ContentViewVMa_5() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

id CKPosterRenderingTranscriptBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void CKPosterRenderingTranscriptBackgroundView.init(frame:)()
{
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

id CKPosterRenderingTranscriptBackgroundView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPosterRenderingTranscriptBackgroundView.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterRenderingTranscriptBackgroundView();
  return objc_msgSendSuper2(&v2, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_190B77E54()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190B77EB4(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id CKPosterRenderingTranscriptBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterRenderingTranscriptBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TapbackEmojiKeyboardGlyphView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_190B781EC()
{
  v1 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B78284(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B78434()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190B78494(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void TapbackEmojiKeyboardGlyphView.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_attributionScaleFactor] = 0x3FF0000000000000;
  v1 = &v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets];
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_horizontalOffset] = 0x4010000000000000;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_contentView] = v3;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TapbackEmojiKeyboardGlyphView();
  v4 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_190D56ED0();
  v6 = [objc_opt_self() _systemImageNamed_];

  if (v6)
  {
    v7 = [objc_opt_self() configurationWithWeight_];
    v8 = [v6 imageByApplyingSymbolConfiguration_];

    v9 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_contentView;
    [*&v4[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_contentView] setImage_];
    [*&v4[v9] setContentMode_];
    sub_190B789E8();
    v10 = *&v4[v9];
    v11 = v4;
    [v11 addSubview_];
    [*&v4[v9] setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = [*&v4[v9] leadingAnchor];
    v13 = [v11 leadingAnchor];
    v14 = [v11 effectiveUserInterfaceLayoutDirection];
    v15 = 4.0;
    if (v14 != 1)
    {
      v15 = 0.0;
    }

    v16 = [v12 constraintEqualToAnchor:v13 constant:v15];

    [v16 setActive_];
    v17 = [*&v4[v9] trailingAnchor];
    v18 = [v11 trailingAnchor];

    v19 = [v11 effectiveUserInterfaceLayoutDirection];
    v20 = -4.0;
    if (v19 == 1)
    {
      v20 = 0.0;
    }

    v21 = [v17 constraintEqualToAnchor:v18 constant:v20];

    [v21 setActive_];
    v22 = [*&v4[v9] topAnchor];
    v23 = [v11 topAnchor];

    v24 = [v22 constraintEqualToAnchor_];
    [v24 setActive_];

    v25 = [*&v4[v9] bottomAnchor];
    v26 = [v11 bottomAnchor];

    v27 = [v25 constraintEqualToAnchor_];
    [v27 setActive_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_190DD1D90;
    v29 = sub_190D53270();
    v30 = MEMORY[0x1E69DC0F8];
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    MEMORY[0x193AF3550](v28, sel_interfaceStyleChanged);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_190B789E8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_systemGray2Color;
  if (v2 != 1)
  {
    v4 = &selRef_tertiaryLabelColor;
  }

  v5 = [v3 *v4];
  [*&v0[OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_contentView] setTintColor_];
}

id TapbackEmojiKeyboardGlyphView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_190B78BC8()
{
  sub_19024C978(v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_contentView);
}

id TapbackEmojiKeyboardGlyphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackEmojiKeyboardGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B78E30()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_attributionScaleFactor) = 0x3FF0000000000000;
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_platterEdgeInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_horizontalOffset) = 0x4010000000000000;
  sub_190D58510();
  __break(1u);
}

id sub_190B78EE8()
{
  _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_190B78F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B79778();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B78F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B79778();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B78FE8()
{
  sub_190B79778();
  sub_190D55130();
  __break(1u);
}

id sub_190B79010()
{
  v32.receiver = v0;
  v32.super_class = _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery47ImagePlaygroundGenerationProgressViewController_gpViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  [result setClipsToBounds_];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  [result setClipsToBounds_];

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = result;
  [result setContentMode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD86A0;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = result;
  v11 = [result centerXAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = result;
  v13 = [result centerXAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = result;
  v16 = [result centerYAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = result;
  v18 = [result centerYAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = result;
  v21 = [result widthAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = result;
  v23 = [result widthAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 multiplier:0.6];
  *(v9 + 48) = v24;
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = result;
  v26 = [result heightAnchor];

  result = [v1 view];
  if (result)
  {
    v27 = result;
    v28 = objc_opt_self();
    v29 = [v27 widthAnchor];

    v30 = [v26 constraintEqualToAnchor_];
    *(v9 + 56) = v30;
    sub_19086225C();
    v31 = sub_190D57160();

    [v28 activateConstraints_];

    return [v1 transitionToGeneratingState];
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_190B796A8()
{
  v2.receiver = v0;
  v2.super_class = _s47ImagePlaygroundGenerationProgressViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190B79724()
{
  result = qword_1EAD5E4C0;
  if (!qword_1EAD5E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E4C0);
  }

  return result;
}

unint64_t sub_190B79778()
{
  result = qword_1EAD5E4C8;
  if (!qword_1EAD5E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E4C8);
  }

  return result;
}

uint64_t sub_190B798F0(uint64_t a1)
{
  v3 = OBJC_IVAR___CKPopRendererView_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_190B79948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKPopRendererView_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *PopRendererView.init(frame:device:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___CKPopRendererView_startTimestamp] = 0;
  *&v5[OBJC_IVAR___CKPopRendererView_sourceTexture] = 0;
  v5[OBJC_IVAR___CKPopRendererView_isStarted] = 0;
  v5[OBJC_IVAR___CKPopRendererView_isSoundPlayed] = 0;
  v11 = OBJC_IVAR___CKPopRendererView_displayLink;
  *&v5[OBJC_IVAR___CKPopRendererView_displayLink] = 0;
  *&v5[OBJC_IVAR___CKPopRendererView_renderScale] = 0;
  *&v5[OBJC_IVAR___CKPopRendererView_delegate] = 0;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v13 = MTLCreateSystemDefaultDevice();
    if (!v13)
    {
      goto LABEL_8;
    }

    v12 = v13;
  }

  swift_unknownObjectRetain();
  v14 = [v12 newCommandQueue];
  if (v14)
  {
    *&v5[OBJC_IVAR___CKPopRendererView_device] = v12;
    v24 = OBJC_IVAR___CKPopRendererView_commandQueue;
    *&v5[OBJC_IVAR___CKPopRendererView_commandQueue] = v14;
    v15 = objc_allocWithZone(MEMORY[0x1E69793F0]);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = [v15 init];
    v17 = OBJC_IVAR___CKPopRendererView_metalLayer;
    *&v6[OBJC_IVAR___CKPopRendererView_metalLayer] = v16;
    [v16 setDevice_];
    [*&v6[v17] setPixelFormat_];
    [*&v6[v17] setFramebufferOnly_];
    [*&v6[v17] setOpaque_];
    v18 = *&v6[v17];
    swift_unknownObjectRetain();
    v19 = [v18 pixelFormat];
    v26[0] = xmmword_190DF5EB0;
    v26[1] = xmmword_190DF5EC0;
    v26[2] = xmmword_190DF5ED0;
    v26[3] = xmmword_190DF5EE0;
    strcpy(v27, "33s?");
    v28 = 0x3F3333333F4CCCCDLL;
    v29 = 1086324736;
    v30 = 1;
    v31 = 0x3D4CCCCD3E4CCCCDLL;
    v32 = 0x140800000;
    v33 = 1;
    v34 = 0x3D4CCCCD3E4CCCCDLL;
    type metadata accessor for PopRenderer();
    swift_allocObject();
    *&v6[OBJC_IVAR___CKPopRendererView_renderer] = PopRenderer.init(device:pixelFormat:parameters:)(v12, v19, v26);
    v25.receiver = v6;
    v25.super_class = type metadata accessor for PopRendererView();
    sub_190D50920();
    v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a2, a3, a4, a5);
    v21 = [v20 layer];
    [v21 addSublayer_];

    v22 = [objc_opt_self() defaultCenter];
    [v22 addObserver:v20 selector:sel_didEnterBackgroundFrom_ name:*MEMORY[0x1E69DDAC8] object:0];

    [v22 addObserver:v20 selector:sel_willEnterForegroundFrom_ name:*MEMORY[0x1E69DDBC0] object:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v20;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_8:
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  type metadata accessor for PopRendererView();
  swift_deallocPartialClassInstance();
  return 0;
}

id PopRendererView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_190B79FA0()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PopRendererView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = objc_opt_self();
  v3 = [v2 disableActions];
  [v2 setDisableActions_];
  v4 = *&v1[OBJC_IVAR___CKPopRendererView_metalLayer];
  [v1 bounds];
  [v4 setFrame_];
  v5 = [v1 window];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 screen];

    [v7 nativeScale];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  [v4 setContentsScale_];
  [v4 bounds];
  Width = CGRectGetWidth(v17);
  [v4 contentsScale];
  v12 = Width * v11;
  [v4 bounds];
  Height = CGRectGetHeight(v18);
  [v4 contentsScale];
  [v4 setDrawableSize_];
  return [v2 setDisableActions_];
}

uint64_t sub_190B7A1F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = *(a1 + OBJC_IVAR___CKPopRendererView_displayLink);
  if (v10)
  {
    [v10 setPaused_];
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_190B7A310(void *a1)
{
  v2 = v1;
  pixelBufferOut[20] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD9C20;
  v5 = *MEMORY[0x1E6966028];
  *(inited + 32) = *MEMORY[0x1E6966028];
  v6 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v7 = *MEMORY[0x1E6966100];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1;
  v8 = *MEMORY[0x1E69660D8];
  *(inited + 104) = v6;
  *(inited + 112) = v8;
  v9 = sub_190B7B900();
  v10 = v5;
  v11 = v7;
  v12 = v8;
  v13 = sub_190D57640();
  *(inited + 144) = v9;
  *(inited + 120) = v13;
  sub_190823980(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E540);
  swift_arrayDestroy();
  [a1 bounds];
  Width = CGRectGetWidth(v36);
  v15 = [a1 traitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = Width * v17;
  [a1 bounds];
  Height = CGRectGetHeight(v37);
  v20 = [a1 traitCollection];
  [v20 displayScale];
  v22 = v21;

  pixelBufferOut[0] = 0;
  if (v18 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = Height * v22;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v23 >= 9.22337204e18)
  {
    goto LABEL_25;
  }

  v24 = *MEMORY[0x1E695E480];
  type metadata accessor for CFString(0);
  sub_190B7B94C();
  v25 = sub_190D56D60();
  LODWORD(v24) = CVPixelBufferCreate(v24, v18, v23, 0x42475241u, v25, pixelBufferOut);

  if (v24)
  {
LABEL_8:

LABEL_9:

    return;
  }

  if (!pixelBufferOut[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
  if (!pixelBufferOut[0])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut[0]);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!pixelBufferOut[0])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut[0]);
  v29 = __CGBitmapContextCreate(BaseAddress, v18, v23, BytesPerRow, DeviceRGB);
  if (!v29)
  {

    goto LABEL_8;
  }

  v30 = v29;
  CGContextTranslateCTM(v29, 0.0, v23);
  CGContextScaleCTM(v30, 1.0, -1.0);
  UIGraphicsPushContext(v30);
  if (![a1 drawViewHierarchyInRect:0 afterScreenUpdates:{0.0, 0.0, v18, v23}])
  {

    goto LABEL_8;
  }

  UIGraphicsPopContext();
  if (pixelBufferOut[0])
  {
    v31 = pixelBufferOut[0];

    CVPixelBufferUnlockBaseAddress(v31, 0);

    IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut[0]);
    if (IOSurface)
    {
      v33 = IOSurface;
      v34 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v18 height:v23 mipmapped:0];
      [*(v2 + OBJC_IVAR___CKPopRendererView_device) newTextureWithDescriptor:v34 iosurface:v33 plane:0];
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_190B7A78C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CKPopRendererView_displayLink;
  if (*&v1[OBJC_IVAR___CKPopRendererView_displayLink])
  {
    if (qword_1EAD51D10 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E148);
    v5 = sub_190D53020();
    v6 = sub_190D576A0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "popRendererView failed to play: existing displayLink active";
LABEL_6:
    _os_log_impl(&dword_19020E000, v5, v6, v8, v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
LABEL_7:

    v9 = OBJC_IVAR___CKPopRendererView_delegate;
    swift_beginAccess();
    v10 = *&v2[v9];
    if (v10)
    {
      if ([v10 respondsToSelector_])
      {
        [v10 popRendererViewFailedToPlay_];
      }
    }

    return 0;
  }

  sub_190B7A310(a1);
  if (!v11)
  {
    if (qword_1EAD51D10 != -1)
    {
      swift_once();
    }

    v29 = sub_190D53040();
    __swift_project_value_buffer(v29, qword_1EAD9E148);
    v5 = sub_190D53020();
    v6 = sub_190D576A0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "popRendererView failed to play: missing sourceTexture";
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [v1 window];
  if (!v13 || (v14 = v13, v15 = [v13 screen], v14, !v15))
  {
LABEL_24:
    if (qword_1EAD51D10 != -1)
    {
      swift_once();
    }

    v30 = sub_190D53040();
    __swift_project_value_buffer(v30, qword_1EAD9E148);
    v31 = v2;
    v32 = sub_190D53020();
    v33 = sub_190D576A0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = 0xEF646E756F66206ELL;
      v35 = 0x6565726373206F4ELL;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315138;
      v38 = [v31 window];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 screen];

        if (v40)
        {

          v34 = 0x8000000190E76B50;
          v35 = 0xD000000000000010;
        }
      }

      v41 = sub_19021D9F8(v35, v34, v44);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_19020E000, v32, v33, "popRendererView failed to play: failed to create displayLink. %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    v42 = OBJC_IVAR___CKPopRendererView_delegate;
    swift_beginAccess();
    v43 = *&v31[v42];
    if (v43 && ([v43 respondsToSelector_] & 1) != 0)
    {
      [swift_unknownObjectRetain() popRendererViewFailedToPlay_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = [v15 displayLinkWithTarget:v2 selector:sel_drawFrom_];
  if (!v16)
  {

    goto LABEL_24;
  }

  v17 = v16;
  *&v2[OBJC_IVAR___CKPopRendererView_sourceTexture] = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v18 = [v2 traitCollection];
  [v18 displayScale];
  v20 = v19;

  *&v2[OBJC_IVAR___CKPopRendererView_renderScale] = v20;
  v2[OBJC_IVAR___CKPopRendererView_isStarted] = 0;
  v2[OBJC_IVAR___CKPopRendererView_isSoundPlayed] = 0;
  v21 = *&v2[v3];
  *&v2[v3] = v17;
  v22 = v17;

  v23 = [objc_opt_self() mainRunLoop];
  [v22 addToRunLoop:v23 forMode:*MEMORY[0x1E695DA28]];

  if (qword_1EAD51D10 != -1)
  {
    swift_once();
  }

  v24 = sub_190D53040();
  __swift_project_value_buffer(v24, qword_1EAD9E148);
  v25 = sub_190D53020();
  v26 = sub_190D576C0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19020E000, v25, v26, "popRendererView beginning animation", v27, 2u);
    MEMORY[0x193AF7A40](v27, -1, -1);
  }

  swift_unknownObjectRelease();
  return 1;
}

void sub_190B7ADE4(void *a1)
{
  [a1 targetTimestamp];
  v4 = v1[OBJC_IVAR___CKPopRendererView_isStarted];
  if ((v4 & 1) == 0)
  {
    v1[OBJC_IVAR___CKPopRendererView_isStarted] = 1;
    *&v1[OBJC_IVAR___CKPopRendererView_startTimestamp] = v3;
  }

  v5 = (v3 - *&v1[OBJC_IVAR___CKPopRendererView_startTimestamp]) / 0.8;
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v5 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = *&v1[OBJC_IVAR___CKPopRendererView_metalLayer];
  if ([v8 isDrawableAvailable])
  {
    v9 = v7;
    v10 = OBJC_IVAR___CKPopRendererView_sourceTexture;
    v11 = *&v1[OBJC_IVAR___CKPopRendererView_sourceTexture];
    v12 = &unk_1EAD5E000;
    if (!v11)
    {
      goto LABEL_29;
    }

    swift_unknownObjectRetain();
    v13 = [v8 nextDrawable];
    if (v13)
    {
      v14 = v13;
      v15 = [*&v1[OBJC_IVAR___CKPopRendererView_commandQueue] commandBuffer];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
        v18 = [v17 colorAttachments];
        v19 = [v18 objectAtIndexedSubscript_];

        if (v19)
        {
          [v19 setLoadAction_];

          v20 = [v17 colorAttachments];
          v21 = [v20 objectAtIndexedSubscript_];

          if (v21)
          {
            [v21 setClearColor_];

            v22 = [v17 colorAttachments];
            v23 = [v22 objectAtIndexedSubscript_];

            if (v23)
            {
              [v23 setStoreAction_];

              v24 = [v17 colorAttachments];
              v25 = [v24 objectAtIndexedSubscript_];

              if (v25)
              {
                [v25 setTexture_];

                swift_unknownObjectRelease();
                v12 = &unk_1EAD5E000;
                sub_190B8F32C(v11, v17, v16, v9, *&v1[OBJC_IVAR___CKPopRendererView_renderScale]);
                if ((v4 & 1) == 0)
                {
                  v26 = swift_allocObject();
                  *(v26 + 16) = v1;
                  aBlock[4] = sub_190B7B8F8;
                  aBlock[5] = v26;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_190AEDA9C;
                  aBlock[3] = &block_descriptor_93;
                  v27 = _Block_copy(aBlock);
                  v28 = v1;
                  v12 = &unk_1EAD5E000;

                  [v16 addCompletedHandler_];
                  _Block_release(v27);
                }

                [v16 presentDrawable_];
                [v16 commit];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

LABEL_29:
                v32 = *&v1[v12[164]];
                swift_beginAccess();
                v33 = OBJC_IVAR___CKPopRendererView_isSoundPlayed;
                if (*(v32 + 24) <= v9)
                {
                  if (v1[OBJC_IVAR___CKPopRendererView_isSoundPlayed])
                  {
LABEL_37:
                    if (v9 >= 1.0)
                    {
                      v37 = [objc_opt_self() mainRunLoop];
                      [a1 removeFromRunLoop:v37 forMode:*MEMORY[0x1E695DA28]];

                      [a1 invalidate];
                      v38 = *&v1[OBJC_IVAR___CKPopRendererView_displayLink];
                      *&v1[OBJC_IVAR___CKPopRendererView_displayLink] = 0;

                      *&v1[v10] = 0;
                      swift_unknownObjectRelease();
                      v39 = OBJC_IVAR___CKPopRendererView_delegate;
                      swift_beginAccess();
                      v40 = *&v1[v39];
                      if (v40)
                      {
                        if ([v40 respondsToSelector_])
                        {
                          [v40 popRendererViewDidFinish_];
                        }
                      }
                    }

                    return;
                  }

                  v35 = OBJC_IVAR___CKPopRendererView_delegate;
                  swift_beginAccess();
                  v36 = *&v1[v35];
                  if (v36 && ([v36 respondsToSelector_] & 1) != 0)
                  {
                    [v36 popRendererViewPlaySound_];
                  }

                  v34 = 1;
                }

                else
                {
                  v34 = 0;
                }

                v1[v33] = v34;
                goto LABEL_37;
              }

LABEL_45:
              __break(1u);
              return;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  if (qword_1EAD51CA0 != -1)
  {
    swift_once();
  }

  v29 = sub_190D53040();
  __swift_project_value_buffer(v29, qword_1EAD9E028);
  oslog = sub_190D53020();
  v30 = sub_190D576A0();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_19020E000, oslog, v30, "PopRenderView: skipping render because no drawable available", v31, 2u);
    MEMORY[0x193AF7A40](v31, -1, -1);
  }
}

uint64_t sub_190B7B46C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___CKPopRendererView_delegate;
  result = swift_beginAccess();
  v5 = *(a2 + v3);
  if (v5)
  {
    result = [v5 respondsToSelector_];
    if (result)
    {
      return [v5 popRendererViewDidBegin_];
    }
  }

  return result;
}

id PopRendererView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PopRendererView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopRendererView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s7ChatKit15PopRendererViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CKPopRendererView_startTimestamp) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_sourceTexture) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_isStarted) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_isSoundPlayed) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_displayLink) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_renderScale) = 0;
  *(v0 + OBJC_IVAR___CKPopRendererView_delegate) = 0;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190B7B900()
{
  result = qword_1EAD5E538;
  if (!qword_1EAD5E538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5E538);
  }

  return result;
}

unint64_t sub_190B7B94C()
{
  result = qword_1EAD535F0;
  if (!qword_1EAD535F0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD535F0);
  }

  return result;
}

id CKBalloonMaskLayer.__allocating_init(with:)(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v7[5] = v2;
  v3 = a1[7];
  v7[6] = a1[6];
  v7[7] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return [objc_allocWithZone(v1) initWithDescriptor_];
}

uint64_t sub_190B7BA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  v5 = sub_190D56C50();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_190B7BACC(uint64_t a1)
{
  v2 = sub_190D56C50();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_190B7BC20(v5);
}

uint64_t sub_190B7BB98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  v4 = sub_190D56C50();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_190B7BC20(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_190D56C50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v8, &v2[v11], v4);
  sub_19090EB64();
  LOBYTE(v11) = sub_190D56E30();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_190B7BE04(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_190D56C50();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_190B7BF5C;
}

void sub_190B7BF5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_190B7BC20(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_190B7BC20(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

id CKBalloonMaskLayer.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  v4 = sub_190D56C50();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CKBalloonMaskLayer();
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = sub_190D56ED0();
  [v6 setName_];

  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for CKBalloonMaskLayer()
{
  result = qword_1EAD46A40;
  if (!qword_1EAD46A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_190B7C180(uint64_t a1)
{
  v3 = sub_190D56C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_19021834C(a1, v15);
  v7 = type metadata accessor for CKBalloonMaskLayer();
  swift_dynamicCast();
  v8 = v14;
  v9 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v8[v9], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration, v6, v3);
  v13.receiver = v1;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_initWithLayer_, v8);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_190B7C368()
{
  v1 = v0;
  v2 = sub_190D56C50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D56D20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CKBalloonMaskLayer();
  v17.receiver = v1;
  v17.super_class = v10;
  objc_msgSendSuper2(&v17, sel_layoutSublayers);
  [v1 frame];
  v11 = [objc_opt_self() blackColor];
  v12 = [v11 CGColor];

  [v1 setFillColor_];
  v13 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v13], v2);
  sub_190D56CD0();
  v14 = sub_190D56BD0();
  [v1 setPath_];

  return (*(v7 + 8))(v9, v6);
}

double sub_190B7C780()
{
  v1 = sub_190D56C50();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration;
  swift_beginAccess();
  (*(v2 + 16))(v5, &v0[v10], v1);
  v11 = MEMORY[0x193AF2490](v5, v7, v9);
  (*(v2 + 8))(v5, v1);
  return v11;
}

id sub_190B7C8D8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong shouldAnimatePathChanges];
    swift_unknownObjectRelease();
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_10;
    }
  }

  if ((sub_190D58760() & 1) == 0)
  {
LABEL_10:
    v9 = sub_190D56ED0();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for CKBalloonMaskLayer();
    v8 = objc_msgSendSuper2(&v11, sel_actionForKey_, v9);

    return v8;
  }

LABEL_8:
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = sub_190D56ED0();
  v8 = [objc_opt_self() animationWithKeyPath_];

  return v8;
}

id CKBalloonMaskLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBalloonMaskLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBalloonMaskLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKBalloonMaskLayer.init(with:)()
{
  v0 = sub_190D56C50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  sub_190248D60(&v14 - v5);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  v8 = type metadata accessor for CKBalloonMaskLayer();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  v7(&v9[OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration], v3, v0);
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = sub_190D56ED0();
  [v10 setName_];

  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

Swift::Void __swiftcall CKBalloonMaskLayer.updateDescriptor(_:)(CKBalloonDescriptor_t *a1)
{
  v1 = sub_190D56C50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - v6;
  sub_190248D60(&v8 - v6);
  (*(v2 + 16))(v4, v7, v1);
  sub_190B7BC20(v4);
  (*(v2 + 8))(v7, v1);
}

uint64_t sub_190B7D044()
{
  result = sub_190D56C50();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_190B7D36C(double *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttributedTapbackItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_190B81E4C();
  sub_190D51C20();

  v10 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_190B81ED4(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19022EEA4(v5, &unk_1EAD5E5C0);
    sub_190B7EA48(a1);
  }

  else
  {
    sub_190B81FD0(v5, v9);
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 preferredContentSizeCategory];

    sub_190D579E0();
    sub_190B7FFC8();
    sub_19090B450(v9);
  }
}

uint64_t sub_190B7D5EC()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_190B7D698()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190B7D714(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems;
  v4 = sub_190D52690();
  sub_1909A8BB0(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B81E4C();
    sub_190D51C10();
  }
}

uint64_t sub_190B7D840@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_190B81E4C();
  sub_190D51C20();

  v3 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  return sub_190B81ED4(v5 + v3, a1);
}

uint64_t sub_190B7D8D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  return sub_190B81ED4(v3 + v4, a2);
}

uint64_t sub_190B7D970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_190B81ED4(a1, &v6 - v3);
  return sub_190B7DA04(v4);
}

uint64_t sub_190B7DA04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_190B81ED4(v1 + v6, v5);
  v7 = sub_190B80204(v5, a1);
  sub_19022EEA4(v5, &unk_1EAD5E5C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_190B81E4C();
    sub_190D51C10();
  }

  else
  {
    sub_190B81ED4(a1, v5);
    swift_beginAccess();
    sub_190B81F44(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_19022EEA4(a1, &unk_1EAD5E5C0);
}

uint64_t sub_190B7DBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_190B81ED4(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_190B81F44(v6, a1 + v7);
  return swift_endAccess();
}

double sub_190B7DC88()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
}

void sub_190B7DD04(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  if (*(v2 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize) == a1 && *(v2 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B81E4C();
    sub_190D51C10();
  }
}

uint64_t sub_190B7DE00(uint64_t result, double a2, double a3)
{
  v3 = (result + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  *v3 = a2;
  v3[1] = a3;
  return result;
}

uint64_t sub_190B7DE14()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth);
}

uint64_t sub_190B7DE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  v5 = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_190B7DF54(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth;
  if ((*(v2 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = *&result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190B81E4C();
  sub_190D51C10();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_190B7E068()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect);
}

uint64_t sub_190B7E0E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect);
  return result;
}

uint64_t sub_190B7E188(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B81E4C();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190B7E280()
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState);
}

uint64_t sub_190B7E2F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState);
  return result;
}

uint64_t sub_190B7E3A0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B81E4C();
    sub_190D51C10();
  }

  return result;
}

id TapbackAttributionViewModel.__allocating_init(messagePartChatItem:)(void *a1)
{
  v2 = sub_190B80474(a1);
  v3 = objc_allocWithZone(type metadata accessor for TapbackAttributionViewModel());
  v4 = sub_190B81B2C(a1, v2);

  return v4;
}

uint64_t sub_190B7E4E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v44 = sub_190D518A0();
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_190D51840();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a5;
  v22 = *(v21 + 16);
  v43 = a1;
  if (v22 && (v23 = sub_190876340(a1, a2, a3), (v24 & 1) != 0))
  {
    (*(v17 + 16))(v15, *(v21 + 56) + *(v17 + 72) * v23, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16, v18);
    sub_190D51830();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_19022EEA4(v15, &unk_1EAD5E5D0);
    }
  }

  v25 = v45;
  v26 = *(v45 + 16);
  if (!v26)
  {
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v40 = a2;
  v41 = a3;
  v27 = sub_190A92AF4(v26, 0);
  v28 = sub_190A92D38(&v46, (v27 + 4), v26, v25);
  sub_190D52690();

  if (v28 == v26)
  {
    LOBYTE(a3) = v41;
    a2 = v40;
LABEL_10:
    v30 = type metadata accessor for AttributedTapbackItem();
    (*(v17 + 16))(a6 + v30[6], v20, v16);
    v31 = v43;
    *a6 = v43;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = v27;
    v32 = v30[7];
    type metadata accessor for ScootTrackingValue();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(a6 + v32) = v33;
    v34 = a2;
    v35 = (a6 + v30[8]);
    sub_190824730(v31, v34, a3);
    v36 = v42;
    sub_190D50450();
    v37 = sub_190D51850();
    v39 = v38;
    (*(v11 + 8))(v36, v44);
    result = (*(v17 + 8))(v20, v16);
    *v35 = v37;
    v35[1] = v39;
    return result;
  }

  __break(1u);
  return result;
}

id TapbackAttributionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackAttributionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackAttributionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190B7EA48(double *a1)
{
  swift_getKeyPath();
  sub_190B81E4C();
  sub_190D51C20();

  v3 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems;
  v4 = *(*(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems) + 16);
  v5 = *a1;
  swift_getKeyPath();
  sub_190D51C20();

  v6 = *(*(v1 + v3) + 16);
  swift_getKeyPath();
  sub_190D51C20();

  if (*(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth + 8))
  {
    v7 = a1[1];
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth);
    v9 = v8 - sub_190B7FFC8();
    v10 = round(v9 / v5);
    v7 = (v9 - v5 * (v10 + -0.5)) / v10;
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }
  }

  v11 = v7 * (v6 - 1);
  v12 = sub_190B7FFC8();
  return v5 * v4 + v11 + v12 + v12;
}

void sub_190B7EBCC(void **a1)
{
  v2 = *(type metadata accessor for AttributedTapbackItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1909E3A34(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_190B7EC74(v5);
  *a1 = v3;
}

void sub_190B7EC74(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AttributedTapbackItem();
        v6 = sub_190D571D0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AttributedTapbackItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_190B7EFA0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_190B7EDA0(0, v2, 1, a1);
  }
}

void sub_190B7EDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AttributedTapbackItem();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_190B82098(v23, v17);
      sub_190B82098(v20, v13);
      v24 = sub_190D51790();
      sub_19090B450(v13);
      sub_19090B450(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_190B81FD0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_190B81FD0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_190B7EFA0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for AttributedTapbackItem();
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_1909E383C(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_190B7F800(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1909E383C(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_1909E37B0(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_190B82098(v5, v18);
      sub_190B82098(v24 + v26 * v25, v15);
      LODWORD(v109) = sub_190D51790();
      sub_19090B450(v15);
      sub_19090B450(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_190B82098(v28, v18);
        sub_190B82098(v5, v15);
        v30 = sub_190D51790() & 1;
        sub_19090B450(v15);
        sub_19090B450(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_190B81FD0(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_190B81FD0(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_190835714(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_190835714((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_190B7F800(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1909E383C(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_1909E37B0(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_190B82098(v5, v18);
    sub_190B82098(v90, v15);
    v91 = sub_190D51790();
    sub_19090B450(v15);
    sub_19090B450(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_190B81FD0(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_190B81FD0(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_190B7F800(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for AttributedTapbackItem();
  MEMORY[0x1EEE9AC00](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_190B82098(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_190B82098(v32, v41);
          v35 = sub_190D51790();
          v36 = v34;
          v11 = v33;
          sub_19090B450(v36);
          sub_19090B450(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_190B82098(a2, v11);
        v20 = v41;
        sub_190B82098(a4, v41);
        v21 = sub_190D51790();
        sub_19090B450(v20);
        sub_19090B450(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_1909E3880(&v46, &v45, &v44);
}

uint64_t sub_190B7FC88(uint64_t a1, void (*a2)(id, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v5 = type metadata accessor for AttributedTapbackItem();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v33[1] = v3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_19082E1F8(0, v8, 0);
    v42 = v44;
    v10 = a1 + 64;
    result = sub_190D58180();
    v11 = result;
    v12 = 0;
    v43 = *(a1 + 36);
    v34 = a1 + 72;
    v35 = v8;
    v36 = a1 + 64;
    v37 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v43 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v41 = v12;
      v16 = *(a1 + 56);
      v17 = *(a1 + 48) + 24 * v11;
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v16 + 8 * v11);
      v21 = *(v17 + 16);
      sub_190824730(*v17, v18, *(v17 + 16));
      sub_190D52690();
      v39(v19, v18, v21, v20);
      sub_19083F1AC(v19, v18, v21);

      v22 = v42;
      v44 = v42;
      v24 = *(v42 + 16);
      v23 = *(v42 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_19082E1F8(v23 > 1, v24 + 1, 1);
        v22 = v44;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v42 = v22;
      result = sub_190B81FD0(v7, v22 + v25 + *(v38 + 72) * v24);
      a1 = v37;
      v13 = 1 << *(v37 + 32);
      if (v11 >= v13)
      {
        goto LABEL_25;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v43 != *(v37 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v35;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v14 = v35;
        v30 = (v34 + 8 * v15);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_19086E9E0(v11, v43, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_19086E9E0(v11, v43, 0);
      }

LABEL_4:
      v12 = v41 + 1;
      v11 = v13;
      if (v41 + 1 == v14)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}
uint64_t sub_1A2262268()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v23 = v2;

    if (!v3)
    {
    }

    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A58DB0F0](v5, v23);
      }

      else
      {
        if (v5 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v23 + 32 + 8 * v5);
      }

      v7 = v6;
      v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
      if (v2 > 6)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0891A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A230B9B0;
      *(inited + 32) = sub_1A22635F4(&unk_1F143F0A8);
      *(inited + 40) = 0x3FECCCCCCCCCCCCDLL;
      *(inited + 48) = sub_1A22635F4(&unk_1F143F128);
      *(inited + 56) = 0x3FF2000000000000;
      *(inited + 64) = sub_1A22635F4(&unk_1F143F1C0);
      *(inited + 72) = 0x3FF599999999999ALL;
      *(inited + 80) = sub_1A22635F4(&unk_1F143F240);
      *(inited + 88) = 0x3FF599999999999ALL;
      *(inited + 96) = sub_1A22635F4(&unk_1F143F2D8);
      *(inited + 104) = 0x3FF2000000000000;
      v2 = sub_1A22635F4(&unk_1F143F358);
      *(inited + 112) = v2;
      *(inited + 120) = 0x3FECCCCCCCCCCCCDLL;
      if (v5 == 6)
      {
        goto LABEL_16;
      }

      v24 = v5 + 1;
      v9 = *(inited + v4 + 32);
      v10 = *(inited + v4 + 40);

      [v7 bounds];
      Height = CGRectGetHeight(v31);
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 2) = v9;
      *(v13 + 3) = v7;
      *(v13 + 4) = v0;
      *(v13 + 5) = v5;
      v13[6] = Height;
      v29 = sub_1A22639C8;
      v30 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1A210E3F0;
      v28 = &block_descriptor_8;
      v14 = _Block_copy(&aBlock);
      v15 = v7;
      v16 = v0;

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 2) = v17;
      *(v18 + 3) = v15;
      *(v18 + 4) = v5;
      v29 = sub_1A22639CC;
      v30 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1A2262D4C;
      v28 = &block_descriptor_39;
      v19 = _Block_copy(&aBlock);
      v20 = v15;

      [v12 animateKeyframesWithDuration:40 delay:v14 options:v19 animations:v10 completion:0.0];

      _Block_release(v19);
      _Block_release(v14);

      v4 += 16;
      v5 = v24;
      if (v3 == v24)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v22 = v2;
    v3 = sub_1A22E6DE8();
    v2 = v22;
  }
}

uint64_t sub_1A226268C()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A22E6DE8())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7D40];
    v8 = &selRef__isReadyForAppearanceTransition;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v9 = MEMORY[0x1A58DB0F0](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v2 + 8 * v4 + 32);
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      v19 = v4 + 1;
      v20 = v9;
      if (v4 && __OFSUB__((*((*v7 & *v0) + 0x88))(), 1))
      {
        goto LABEL_20;
      }

      v10 = (*((*v7 & *v0) + 0xD0))();
      [v0 v8[449]];
      if (v10)
      {
        CGRectGetHeight(*&v11);
      }

      else
      {
        v15 = v2;
        v2 = i;
        CGRectGetWidth(*&v11);
        v16 = *((*v7 & *v0) + 0x88);
        v16();
        if (__OFSUB__((v16)(), 1))
        {
          goto LABEL_21;
        }

        (*((*v7 & *v0) + 0xA0))();
        i = v2;
        v2 = v15;
        v6 = v18;
        v8 = &selRef__isReadyForAppearanceTransition;
      }

      sub_1A2262DA0();
      [v20 setFrame_];

      ++v4;
      if (v19 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

void sub_1A226291C(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v11 = objc_opt_self();
    v12 = (a1 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v12 += 4;
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = v13;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      *(v17 + 48) = v16;
      *(v17 + 56) = a3;
      *(v17 + 64) = a4;
      *(v17 + 72) = a5;
      v21[4] = sub_1A2263A70;
      v21[5] = v17;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1A210E3F0;
      v21[3] = &block_descriptor_60;
      v18 = _Block_copy(v21);
      v19 = a2;
      v20 = a3;

      [v11 addKeyframeWithRelativeStartTime:v18 relativeDuration:v13 animations:v14];
      _Block_release(v18);
      --v5;
    }

    while (v5);
  }
}

void sub_1A2262A80(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0xD0))())
    {
      v8 = (*((*v7 & *v6) + 0x88))();
      v9 = sub_1A22636E4(v8);
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v9 + 16) > a3)
      {
        v10 = v9 + 16 * a3;
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        swift_bridgeObjectRetain_n();

        [a2 bounds];
        Height = CGRectGetHeight(v29);
        v14 = objc_opt_self();
        v15 = swift_allocObject();
        *(v15 + 2) = v11;
        *(v15 + 3) = a2;
        *(v15 + 4) = v6;
        *(v15 + 5) = a3;
        v15[6] = Height;
        v27 = sub_1A2263B14;
        v28 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1A210E3F0;
        v26 = &block_descriptor_46;
        v16 = _Block_copy(&aBlock);
        v17 = a2;
        v18 = v6;

        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 2) = v19;
        *(v20 + 3) = v17;
        *(v20 + 4) = a3;
        v27 = sub_1A2263B18;
        v28 = v20;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1A2262D4C;
        v26 = &block_descriptor_54;
        v21 = _Block_copy(&aBlock);
        v22 = v17;

        [v14 animateKeyframesWithDuration:40 delay:v16 options:v21 animations:v12 completion:0.0];

        _Block_release(v21);
        _Block_release(v16);
        goto LABEL_6;
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

uint64_t sub_1A2262D4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A2262DA0()
{
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2();
  result = (v2)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *((*v1 & *v0) + 0xA0);
  v4();
  [v0 bounds];
  CGRectGetWidth(v7);
  v2();
  result = (v2)();
  if (__OFSUB__(result, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4();
  v4();
  [v0 bounds];
  CGRectGetWidth(v8);
  v2();
  result = (v2)();
  if (__OFSUB__(result, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4();
  [v0 bounds];

  return UIRectCenteredYInRect();
}

id sub_1A2262FE0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v2 = v1();
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  v4 = ((v1)([v0 setAlpha_]) & 1) == 0;

  return [v0 setHidden_];
}

void *sub_1A2263088()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22630D4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))();
}

uint64_t (*sub_1A2263180(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22631E4;
}

uint64_t sub_1A22631E4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x190))(result);
  }

  return result;
}

uint64_t sub_1A2263250()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A22E6DE8())
    {

      if (!i)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1A58DB0F0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v0 traitCollection];
        [v2 applyStyle:0 toView:v8 traitCollection:v10];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:
  }

  return result;
}

id sub_1A2263434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EqualizerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A22634BC(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

char *sub_1A22634F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_1A22635F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0.0;
  do
  {
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A22634F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1A22634F4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[32 * v9];
    *(v10 + 4) = v4;
    *(v10 + 5) = v5;
    *(v10 + 6) = v6;
    v10[56] = v7;
    v4 = v4 + v5;
    v2 += 3;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1A22636E4(uint64_t result)
{
  if (result > 6)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0891A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A230B9B0;
    *(v1 + 32) = sub_1A22635F4(&unk_1F143F0A8);
    *(v1 + 40) = 0x3FECCCCCCCCCCCCDLL;
    *(v1 + 48) = sub_1A22635F4(&unk_1F143F128);
    *(v1 + 56) = 0x3FF2000000000000;
    *(v1 + 64) = sub_1A22635F4(&unk_1F143F1C0);
    *(v1 + 72) = 0x3FF599999999999ALL;
    *(v1 + 80) = sub_1A22635F4(&unk_1F143F240);
    *(v1 + 88) = 0x3FF599999999999ALL;
    *(v1 + 96) = sub_1A22635F4(&unk_1F143F2D8);
    *(v1 + 104) = 0x3FF2000000000000;
    *(v1 + 112) = sub_1A22635F4(&unk_1F143F358);
    *(v1 + 120) = 0x3FECCCCCCCCCCCCDLL;
    return v1;
  }

  return result;
}

uint64_t sub_1A22637FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A2263844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A22638A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A22638C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EqualizerView.AnimationProperties.Keyframe.Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EqualizerView.AnimationProperties.Keyframe.Value(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A226396C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2263988(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1A2263A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if ((v2 & 1) == 0)
  {
    [v3 bounds];
    CGRectGetHeight(v6);
  }

  sub_1A2262DA0();

  return [v1 setFrame_];
}

uint64_t sub_1A2263B34()
{
  v1 = sub_1A22E5DD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5D98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2266F90(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    MEMORY[0x1A58DB4F0](1);
    sub_1A2266FF4(&unk_1EB0891B0, MEMORY[0x1E69AE6B8]);
    sub_1A22E6548();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0);
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x1A58DB4F0](0);
    sub_1A2266FF4(&unk_1EB0891C0, MEMORY[0x1E69AE690]);
    sub_1A22E6548();
    sub_1A22E72D8();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A2263E2C()
{
  sub_1A22E72A8();
  sub_1A2263B34();
  return sub_1A22E72F8();
}

uint64_t sub_1A2263E70()
{
  sub_1A22E72A8();
  sub_1A2263B34();
  return sub_1A22E72F8();
}

void (*sub_1A2263EAC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2117CFC(v1 + v9, v8);
  return sub_1A2263FCC;
}

void sub_1A2263FCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2117CFC(*(*a1 + 96), v6);
    sub_1A2117CFC(v7 + v4, v5);
    swift_beginAccess();
    sub_1A211854C(v6, v7 + v4);
    swift_endAccess();
    sub_1A21185BC(v5);
    sub_1A210D9B0(v5, &qword_1EB088828);
  }

  else
  {
    sub_1A2117CFC(v7 + v4, v6);
    swift_beginAccess();
    sub_1A211854C(v3, v7 + v4);
    swift_endAccess();
    sub_1A21185BC(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088828);
  sub_1A210D9B0(v3, &qword_1EB088828);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A2264158(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22641C4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

double sub_1A226426C@<D0>(uint64_t a1@<X8>)
{
  sub_1A224A928(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1A22642B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v3;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 sub_1A22642D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  *(v1 + 72) = *(a1 + 48);
  return result;
}

double sub_1A22642F8()
{
  sub_1A224A928(v1);
  xmmword_1ED9536E0 = xmmword_1A230BA90;
  qword_1ED9536F0 = 0x4040000000000000;
  *algn_1ED9536F8 = v1[0];
  *(&xmmword_1ED953700 + 8) = v1[1];
  result = *&v2;
  unk_1ED953718 = v2;
  byte_1ED953728 = v3;
  return result;
}

__n128 sub_1A2264354@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *(a1 + 48) & 1;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  v6 = *(a1 + 16);
  *(a2 + 24) = *a1;
  *(a2 + 40) = v6;
  result = *(a1 + 32);
  *(a2 + 56) = result;
  *(a2 + 72) = v5;
  return result;
}

__int128 *sub_1A2264380()
{
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9536E0;
}

__n128 sub_1A22643D4@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1ED9524D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ED953710;
  *(a1 + 32) = xmmword_1ED953700;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1ED953719;
  result = *&qword_1ED9536F0;
  *a1 = xmmword_1ED9536E0;
  *(a1 + 16) = result;
  return result;
}

id sub_1A226444C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style];
  swift_beginAccess();
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 57) = *(a1 + 57);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *&v1[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v8 = *(a1 + 24);
  v13 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v12[0] = v8;
  v12[1] = v10;
  v12[2] = v9;
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0xA8))(v12);
  return [v2 setNeedsLayout];
}

void (*sub_1A2264528(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  *(v3 + 80) = v1;
  *(v3 + 88) = v4;
  swift_beginAccess();
  return sub_1A22645B4;
}

void sub_1A22645B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[10];
    v5 = &v4[v3[11]];
    v6 = *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
    v7 = *(v5 + 40);
    v8 = *(v5 + 56);
    v9 = *(v5 + 24);
    *(v3 + 48) = v5[72];
    *(v3 + 1) = v7;
    *(v3 + 2) = v8;
    *v3 = v9;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0xA8))(v3);
    [v4 setNeedsLayout];
  }

  free(v3);
}

id sub_1A22646B8(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1A2264754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper)) + 0x110))(a1);
}

void (*sub_1A2264810(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2264898;
}

void sub_1A2264898(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper)) + 0x110);

    v4(v5);
  }

  free(v3);
}

void sub_1A2264938(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = [objc_opt_self() sharedInstance];
    [v6 setNeedsUpdate];
  }
}

void (*sub_1A22649CC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2264A60;
}

void sub_1A2264A60(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = [objc_opt_self() sharedInstance];
    [v6 setNeedsUpdate];
  }

  free(v1);
}

double sub_1A2264AE0()
{
  v1 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2264B24(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_1A2264B84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2264BE8;
}

id sub_1A2264BE8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *sub_1A2264C3C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v10 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  memmove(&v4[v11], &xmmword_1ED9536E0, 0x49uLL);
  v12 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  type metadata accessor for Slider();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  type metadata accessor for Stepper();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider] = 0;
  v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale] = 0x3FF0000000000000;
  v61.receiver = v4;
  v61.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  v14 = objc_msgSendSuper2(&v61, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 configurationWithPointSize:4 weight:14.0];
  v18 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  v19 = *&v16[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 volumeMin];
  v23 = [v22 imageWithConfiguration_];

  [v21 setMinimumValueImage_];
  v24 = *&v16[v18];
  v25 = [v20 volumeMax];
  v26 = [v25 imageWithConfiguration_];

  [v24 setMaximumValueImage_];
  v27 = *&v16[v18];
  [v27 addTarget:v16 action:sel_sliderValueChangedWithSender_ forControlEvents:4096];

  v28 = *&v16[v18];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 accessibilityVolumeLabel];
  if (!v31)
  {
    sub_1A22E65C8();
    v31 = sub_1A22E6598();
  }

  [v30 setAccessibilityLabel_];

  v32 = *&v16[v18];
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x90);
  v35 = v32;
  v34(v16, &off_1F143F818);

  [v16 addSubview_];
  v36 = *&v16[v18];
  v37 = *((*v33 & *v36) + 0x108);
  v38 = v36;
  v39 = v37();

  [v39 setMinimumPressDuration_];
  v40 = *&v16[v18];
  v41 = *((*v33 & *v40) + 0x108);
  v42 = v40;
  v43 = v41();

  if (v43)
  {
    [v43 setAllowableMovement_];
  }

  v44 = *&v16[v18];
  v45 = *((*v33 & *v44) + 0x108);
  v46 = v44;
  v47 = v45();

  if (v47)
  {
    [v47 addTarget:v16 action:sel_sliderLongPressActionWithSender_];
  }

  v48 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  v49 = *&v16[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper];
  (*((*v33 & *v49) + 0xE0))([v20 volumeRelativeMinus]);

  v50 = *&v16[v48];
  (*((*v33 & *v50) + 0xF8))([v20 volumeRelativePlus]);

  v51 = *&v16[v48];
  (*((*v33 & *v51) + 0xC8))([v15 configurationWithPointSize:5 weight:13.0]);

  v52 = *&v16[v48];
  v53 = v16;
  [v52 addTarget:v53 action:sel_stepperValueChangedWithSender_ forControlEvents:4096];
  [v53 addSubview_];
  v54 = sub_1A2113F38();
  v55 = *&v16[v18];
  v56 = *(**v54 + 144);

  v57 = v55;
  v56();

  v58 = [objc_opt_self() sharedInstance];
  [v58 addVolumeDisplay_];

  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  (*((*v33 & *v53) + 0x140))(v59);

  return v53;
}

id sub_1A2265418()
{
  v1 = v0;
  v2 = sub_1A2113F38();
  v3 = *&v0[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v4 = *(**v2 + 152);

  v5 = v3;
  v4();

  v6 = [objc_opt_self() sharedInstance];
  [v6 removeVolumeDisplay_];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1A22655B4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v6 = CGRectGetWidth(v16);
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v7(v13);
  sub_1A210F570(x, y, width, height, MinX, 0.0, v6, *&v13[1]);
  [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) setFrame_];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = CGRectGetWidth(v19);
  v7(v14);
  return [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper) setFrame_];
}

double sub_1A226578C(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v6);
  (*((*v3 & *v1) + 0x108))(v4);
  return a1;
}

uint64_t sub_1A2265840(void *a1)
{
  v21 = a1;
  v2 = sub_1A22E5738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_1A22E5D98();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v11);
  v15 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    return sub_1A210D9B0(v8, &qword_1EB088828);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A221CE2C(v8);
  }

  v17 = (*(v10 + 32))(v13, v8, v9);
  if ((*((*v14 & *v1) + 0xA8))(v17))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    [v21 value];
    sub_1A22E5D88();
    (*(v19 + 8))(v1, v5, ObjectType, v19);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1A2265BCC()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) value];
    (*(v3 + 16))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2265D70(uint64_t a1)
{
  v34 = a1;
  v33 = sub_1A22E5DA8();
  v37 = *(v33 - 8);
  v2 = MEMORY[0x1EEE9AC00](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - v5;
  v7 = sub_1A22E5738();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1A22E5DD8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v15);
  v19 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  if ((*(*(v19 - 8) + 48))(v12, 1, v19) == 1)
  {
    return sub_1A210D9B0(v12, &qword_1EB088828);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1A221CE2C(v12);
  }

  v21 = (*(v14 + 32))(v17, v12, v13);
  if (!(*((*v18 & *v1) + 0xA8))(v21))
  {
    return (*(v14 + 8))(v17, v13);
  }

  v23 = *((*v18 & *v34) + 0x90);
  v32 = v22;
  v24 = v23();
  v25 = v37;
  v26 = *(v37 + 104);
  v27 = MEMORY[0x1E69AE6A8];
  if ((v24 & 1) == 0)
  {
    v27 = MEMORY[0x1E69AE6B0];
  }

  v28 = *v27;
  v34 = v14;
  v29 = v33;
  v26(v4, v28, v33);
  ObjectType = swift_getObjectType();
  (*(v25 + 32))(v6, v4, v29);
  sub_1A22E5DC8();
  (*(v25 + 8))(v6, v29);
  (*(v32 + 8))(v1, v9, ObjectType);
  swift_unknownObjectRelease();
  (*(v35 + 8))(v9, v36);
  return (*(v34 + 8))(v17, v13);
}

uint64_t sub_1A22661E8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E5DA8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69AE6A8];
  if ((a1 & 1) == 0)
  {
    v6 = MEMORY[0x1E69AE6B0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void sub_1A22662D4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1A22E62F8();
  v21[0] = 0;
  sub_1A2266FF4(&qword_1ED94E9D8, type metadata accessor for UIAccessibilityContrast);
  v3 = sub_1A22E6B68();

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v5 = v4();
  if (v5)
  {
    (*(*v5 + 168))(*(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider), v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider);
  v7 = [v6 isTracking];
  v8 = v4();
  v9 = v8;
  if (v8)
  {
    (*(*v8 + 104))(v19);

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_1A22DF514(v10);

    v9 = [v11 resolvedColorWithTraitCollection_];
  }

  [v6 setTintColor_];

  v12 = [v6 isTracking];
  v13 = v4();
  if (v13)
  {
    (*(*v13 + 104))(v20);

    v14 = sub_1A22DF514(v12 ^ 1u);

    v15 = [v14 resolvedColorWithTraitCollection_];
  }

  else
  {
    v15 = 0;
  }

  v16 = (v4)([v6 setMinimumTrackTintColor_]);
  v17 = v16;
  if (v16)
  {
    (*(*v16 + 104))(v21);

    v18 = sub_1A22DF514(2u);

    v17 = [v18 resolvedColorWithTraitCollection_];
  }

  [v6 setMaximumTrackTintColor_];
}

uint64_t sub_1A22666D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22667D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEE0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A226722C, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22668D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22669DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEE0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

id sub_1A2266B14()
{
  v1 = [v0 window];
  v2 = [v1 windowScene];

  return v2;
}

uint64_t sub_1A2266B6C()
{
  v0 = [objc_opt_self() audioCategory];
  v1 = sub_1A22E65C8();

  return v1;
}

uint64_t sub_1A2266BCC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_1A22E5DD8();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5D98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891D8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = &v29 + *(v16 + 56) - v17;
  sub_1A2266F90(v31, &v29 - v17);
  sub_1A2266F90(v32, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A2266F90(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v30;
      (*(v2 + 32))(v4, v19, v30);
      v21 = sub_1A22E5DB8();
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_11:
      sub_1A221CE2C(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v30);
    goto LABEL_7;
  }

  sub_1A2266F90(v18, v14);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0) + 48);
  v24 = *&v14[v23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_7:
    sub_1A210D9B0(v18, &qword_1EB0891D8);
    goto LABEL_8;
  }

  v25 = *&v19[v23];
  (*(v6 + 32))(v8, v19, v5);
  v26 = sub_1A22E5D78();
  v27 = *(v6 + 8);
  v27(v8, v5);
  v27(v14, v5);
  if (v26)
  {
    v21 = v24 == v25;
    goto LABEL_11;
  }

  sub_1A221CE2C(v18);
LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1A2266F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2266FF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A226705C()
{
  v1 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v2 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  memmove((v0 + v3), &xmmword_1ED9536E0, 0x49uLL);
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  type metadata accessor for Slider();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  type metadata accessor for Stepper();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale) = 0x3FF0000000000000;
  sub_1A22E7028();
  __break(1u);
}

void type metadata accessor for UIAccessibilityContrast()
{
  if (!qword_1ED94E9C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94E9C8);
    }
  }
}

void sub_1A2267280()
{
  sub_1A221CC64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A22673A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A22673F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A22674B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A2267534(void *a1)
{

  return a1;
}

id sub_1A22675B4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891E0);
  inited = swift_initStackObject();
  v7 = *MEMORY[0x1E69DDCF0];
  *(inited + 32) = *MEMORY[0x1E69DDCF0];
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = 6;
  v9 = MEMORY[0x1E69DDCE8];
  *(inited + 16) = xmmword_1A230A140;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  *(inited + 104) = v8;
  *(inited + 80) = 0;
  v11 = a1;

  v12 = v7;
  v13 = v10;
  v14 = sub_1A2127868(inited, &qword_1EB089318, &unk_1A230C6D8, &qword_1EB0891E8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891E8);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1A2268200(0, a4[2] + 1, 1, a4);
  }

  v16 = a4[2];
  v15 = a4[3];
  if (v16 >= v15 >> 1)
  {
    a4 = sub_1A2268200((v15 > 1), v16 + 1, 1, a4);
  }

  a4[2] = v16 + 1;
  a4[v16 + 4] = v14;
  return v11;
}

uint64_t sub_1A2267770(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1A58D9910](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A22677C4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1A58D9920](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1A2267850(uint64_t a1, id *a2)
{
  result = sub_1A22E65A8();
  *a2 = 0;
  return result;
}

uint64_t sub_1A22678C8(uint64_t a1, id *a2)
{
  v3 = sub_1A22E65B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A2267948@<X0>(uint64_t *a1@<X8>)
{
  sub_1A22E65C8();
  v2 = sub_1A22E6598();

  *a1 = v2;
  return result;
}

_DWORD *sub_1A226798C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1A22679EC(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1A2267A1C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A2267A48@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1A2267B20()
{
  sub_1A2127994(&qword_1EB0892C0, type metadata accessor for TraitKey);
  sub_1A2127994(&qword_1EB0892C8, type metadata accessor for TraitKey);

  return sub_1A22E7098();
}

uint64_t sub_1A2267BDC()
{
  sub_1A2127994(&qword_1EB0892D8, type metadata accessor for FeatureKey);
  sub_1A2127994(&qword_1EB0892E0, type metadata accessor for FeatureKey);

  return sub_1A22E7098();
}

double sub_1A2267C98@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1A2267CA4()
{
  sub_1A2127994(&qword_1EB0892E8, type metadata accessor for Weight);
  sub_1A2127994(&qword_1EB0892F0, type metadata accessor for Weight);
  sub_1A2268924();
  return sub_1A22E7098();
}

uint64_t sub_1A2267D80@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1A22688EC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A2267DC0()
{
  sub_1A2127994(&qword_1EB0892B0, type metadata accessor for TextStyle);
  sub_1A2127994(&qword_1EB0892B8, type metadata accessor for TextStyle);

  return sub_1A22E7098();
}

uint64_t sub_1A2267E7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A22E6598();

  *a1 = v2;
  return result;
}

uint64_t sub_1A2267EC4()
{
  sub_1A2127994(&qword_1ED94E9A0, type metadata accessor for AttributeName);
  sub_1A2127994(&qword_1EB0892D0, type metadata accessor for AttributeName);

  return sub_1A22E7098();
}

uint64_t sub_1A2267F88()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A58DB520](*&v1);
}

uint64_t sub_1A2267FC4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1A2267FDC()
{
  v0 = sub_1A22E65C8();
  v1 = MEMORY[0x1A58DA900](v0);

  return v1;
}

uint64_t sub_1A2268018()
{
  sub_1A22E65C8();
  sub_1A22E6658();
}

id sub_1A2268080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089320);
  v2 = *v0;
  v3 = sub_1A22E7048();
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
        sub_1A21033A8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A210E174(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1A2268200(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A22688EC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1A2268924()
{
  result = qword_1EB0892F8;
  if (!qword_1EB0892F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0892F8);
  }

  return result;
}

uint64_t sub_1A22689EC()
{
  type metadata accessor for MediaSuggestionsDataSource();
  v0 = swift_allocObject();
  result = sub_1A2269014();
  qword_1ED9535E8 = v0;
  return result;
}

uint64_t sub_1A2268A2C()
{
  v0 = swift_allocObject();
  sub_1A2269014();
  return v0;
}

uint64_t *sub_1A2268A64()
{
  if (qword_1ED952470 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535E8;
}

uint64_t sub_1A2268AB4()
{
  if (qword_1ED952470 != -1)
  {
    swift_once();
  }
}

id sub_1A2268B14()
{
  v0 = [objc_opt_self() defaultRequestWithArtwork];

  return v0;
}

uint64_t sub_1A2268B54()
{
  v7 = sub_1A22E6B18();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A22E6B08();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A22E6488();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1A210B4FC();
  sub_1A22E6478();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A226AFD0(&qword_1ED94EA50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089330);
  sub_1A226AC04(&qword_1ED94EAC8, &qword_1EB089330);
  sub_1A22E6DA8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1A22E6B48();
}

id sub_1A2268D9C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B0A68]);

  return [v0 init];
}

uint64_t sub_1A2268DD4()
{
  v1 = *(*v0[2] + 120);

  v3 = v1(v2);

  v12 = *(v3 + 16);
  if (v12)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = (*v0)[22];
      v10 = swift_unknownObjectRetain();
      v11 = v9(v10);
      (*(v7 + 8))(v0, v11, ObjectType, v7);
      swift_unknownObjectRelease();

      v6 += 2;
      if (v12 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1A2268F20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_mediaSuggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A2268DD4();
}

uint64_t (*sub_1A2268F7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2268FE0;
}

uint64_t sub_1A2268FE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A2268DD4();
  }

  return result;
}

uint64_t sub_1A2269014()
{
  v1 = v0;
  v2 = sub_1A22E6B18();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6B08();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A22E6488();
  MEMORY[0x1EEE9AC00](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089328);
  *(v0 + 16) = sub_1A22CE154();
  sub_1A22E5568();
  v7 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_request;
  *(v1 + v7) = [objc_opt_self() defaultRequestWithArtwork];
  v15 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_queue;
  v14 = sub_1A210B4FC();
  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A226AFD0(&qword_1ED94EA50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089330);
  sub_1A226AC04(&qword_1ED94EAC8, &qword_1EB089330);
  sub_1A22E6DA8();
  (*(v16 + 104))(v4, *MEMORY[0x1E69E8090], v17);
  *(v1 + v15) = sub_1A22E6B48();
  v8 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_preferences;
  v9 = [objc_allocWithZone(MEMORY[0x1E69B0A68]) init];
  *(v1 + v8) = v9;
  *(v1 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_mediaSuggestions) = 0;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A22693C4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_9;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  [v12 setUserDisplayPreferencesDidChangeCallback_];
  _Block_release(v11);

  return v1;
}

uint64_t sub_1A22693C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 224))(result);
  }

  return result;
}

uint64_t sub_1A2269438(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + 16) + 120);

  v7 = v5(v6);

  v8 = *(v7 + 16) + 1;
  v9 = 32;
  while (--v8)
  {
    v10 = *(v7 + v9);
    v9 += 16;
    if (v10 == a1)
    {
    }
  }

  v12 = *(**(v2 + 16) + 136);

  v13 = v12(v21);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1A226A568(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A226A568((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = a1;
  v20[5] = a2;
  swift_unknownObjectRetain();
  v13(v21, 0);
}

uint64_t sub_1A22695F4(uint64_t a1)
{
  v3 = *(**(v1 + 16) + 136);
  swift_unknownObjectRetain();

  v4 = v3(v10);
  v6 = v5;
  v7 = sub_1A226A744(v5, a1);
  result = swift_unknownObjectRelease();
  v9 = *(*v6 + 16);
  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_1A226A984(v7, v9);
    v4(v10, 0);
  }

  return result;
}

uint64_t sub_1A22696D8()
{
  v1 = v0;
  v23 = *v0;
  v2 = sub_1A22E6468();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E6488();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E55A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  swift_beginAccess();
  (*(v10 + 16))(v12, v1 + v13, v9);
  sub_1A22E5578();
  v15 = v14;
  result = (*(v10 + 8))(v12, v9);
  if (v15 <= -480.0)
  {
    sub_1A22E5588();
    v22 = v6;
    swift_beginAccess();
    (*(v10 + 40))(v1 + v13, v12, v9);
    swift_endAccess();
    v21 = *(v1 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_queue);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v19 = v23;
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    aBlock[4] = sub_1A226AA44;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A226B024;
    aBlock[3] = &block_descriptor_7;
    v20 = _Block_copy(aBlock);

    sub_1A22E6478();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1A226AFD0(&qword_1ED94EB28, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08);
    sub_1A226AC04(&qword_1ED94EAF8, &qword_1EB088C08);
    sub_1A22E6DA8();
    MEMORY[0x1A58DAD70](0, v8, v5, v20);
    _Block_release(v20);
    (*(v3 + 8))(v5, v2);
    (*(v24 + 8))(v8, v22);
  }

  return result;
}

uint64_t sub_1A2269B30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v6 = sub_1A22E6468();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E6488();
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A22E6248();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v52 - v18;
  if (a1)
  {
    v53 = v9;
    v54 = v7;
    v55 = v6;

    v20 = sub_1A2104EA0();
    (*(v13 + 16))(v19, v20, v12);

    v21 = sub_1A22E6238();
    v22 = sub_1A22E6A98();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v52 = v12;
      v25 = v24;
      aBlock[0] = v24;
      *v23 = 136315394;
      v26 = sub_1A22E7388();
      v28 = sub_1A2103450(v26, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      type metadata accessor for MRSuggestionContext();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089338);
      sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext);
      v29 = sub_1A22E64D8();
      v31 = sub_1A2103450(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1A20FC000, v21, v22, "[%s] retrieved media suggestions: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v25, -1, -1);
      MEMORY[0x1A58DCD00](v23, -1, -1);

      (*(v13 + 8))(v19, v52);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    sub_1A210B4FC();
    v47 = sub_1A22E6B28();
    v48 = swift_allocObject();
    *(v48 + 16) = v57;
    *(v48 + 24) = a1;
    aBlock[4] = sub_1A226AE4C;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A210E3F0;
    aBlock[3] = &block_descriptor_27;
    v49 = _Block_copy(aBlock);

    sub_1A22E6478();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A226AFD0(&qword_1ED94EB28, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08);
    sub_1A226AC04(&qword_1ED94EAF8, &qword_1EB088C08);
    v50 = v59;
    v51 = v55;
    sub_1A22E6DA8();
    MEMORY[0x1A58DAD70](0, v11, v50, v49);
    _Block_release(v49);

    (*(v54 + 8))(v50, v51);
    return (*(v58 + 8))(v11, v53);
  }

  else if (a2)
  {
    v32 = a2;
    v33 = sub_1A2104EA0();
    (*(v13 + 16))(v16, v33, v12);
    v34 = a2;
    v35 = sub_1A22E6238();
    v36 = v12;
    v37 = sub_1A22E6A78();

    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v52 = v36;
      v39 = v38;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = 136315394;
      v42 = sub_1A22E7388();
      v44 = sub_1A2103450(v42, v43, aBlock);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      v45 = a2;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v46;
      *v40 = v46;
      _os_log_impl(&dword_1A20FC000, v35, v37, "[%s] error retrieving media suggestions: %@", v39, 0x16u);
      sub_1A226ADE4(v40);
      MEMORY[0x1A58DCD00](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1A58DCD00](v41, -1, -1);
      MEMORY[0x1A58DCD00](v39, -1, -1);

      return (*(v13 + 8))(v16, v52);
    }

    else
    {

      return (*(v13 + 8))(v16, v36);
    }
  }

  return result;
}

uint64_t sub_1A226A234(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for MRSuggestionContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089338);
    sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext);
    v4 = sub_1A22E64C8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1A226A320()
{

  v1 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  v2 = sub_1A22E55A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1A226A3C8()
{

  v1 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  v2 = sub_1A22E55A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1A226A4AC()
{
  sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext);
  sub_1A226AFD0(&qword_1EB089360, type metadata accessor for MRSuggestionContext);

  return sub_1A22E7098();
}

void *sub_1A226A568(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A226A69C(uint64_t a1)
{
  sub_1A22E65C8();
  sub_1A22E72A8();
  sub_1A22E6658();
  v2 = sub_1A22E72F8();

  return sub_1A210E214(a1, v2);
}

uint64_t sub_1A226A744(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A226A730(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A226A8B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089340);
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

unint64_t sub_1A226A984(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A226A568(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A226A8B4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1A226AA44()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_request);

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_preferences);

      v6 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();
      v7 = v5;

      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v1;
      aBlock[4] = sub_1A226AD8C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A226A234;
      aBlock[3] = &block_descriptor_21_0;
      v9 = _Block_copy(aBlock);

      [v3 performWithPreferences:v7 completion:v9];
      _Block_release(v9);

      v3 = v7;
    }
  }
}

uint64_t sub_1A226AC04(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MediaSuggestionsDataSource()
{
  result = qword_1ED952448;
  if (!qword_1ED952448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A226ACAC()
{
  result = sub_1A22E55A8();
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

void type metadata accessor for MRSuggestionContext()
{
  if (!qword_1ED94EA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94EA10);
    }
  }
}

uint64_t sub_1A226ADE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A226AE4C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(v1 + 16) && (sub_1A226A69C(*MEMORY[0x1E69B0978]), (v4 & 1) != 0))
    {
    }

    else
    {
      v5 = 0;
    }

    (*(*v3 + 184))(v5);
  }

  return result;
}

uint64_t sub_1A226AFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A226B034(uint64_t a1)
{
  v2 = sub_1A22E6158();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1A22E60A8();
  swift_allocObject();
  return sub_1A22E6098();
}

uint64_t sub_1A226B17C(char a1)
{
  if (!a1)
  {
    return 0x656C6553746F6E2ELL;
  }

  if (a1 == 1)
  {
    return 0x657463656C65732ELL;
  }

  return 0xD000000000000013;
}

uint64_t sub_1A226B1E4()
{
  v1 = 0x657463656C65732ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6553746F6E2ELL;
  }
}

uint64_t sub_1A226B2A4(char a1, unsigned __int8 a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFF0000FE | (a3 << 16) | (a2 << 8) | a1 & 1;
}

uint64_t sub_1A226B2C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] == a2[1]) & ~(*a1 ^ *a2);
  if (a1[2] != a2[2])
  {
    v2 = 0;
  }

  return v2 & (a2[3] ^ a1[3] ^ 1u);
}

uint64_t sub_1A226B314(unsigned int a1)
{
  v3 = a1 >> 8;
  v4 = HIWORD(a1);
  v5 = (v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  *v5 = a1 & 1;
  v5[1] = v3;
  v5[2] = v4;
  v5[3] = HIBYTE(a1) & 1;
  if (v7 != (a1 & 1) || v8 != v3 || v9 != v4 || ((HIBYTE(a1) & 1 ^ v10) & 1) != 0)
  {
    sub_1A226EA4C();
    return sub_1A226ECC0();
  }

  return result;
}

double sub_1A226B3EC()
{
  v0 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  __swift_allocate_value_buffer(v0, qword_1ED953218);
  v1 = __swift_project_value_buffer(v0, qword_1ED953218);
  v2 = [objc_opt_self() routingItemShowMoreTitle];
  v3 = sub_1A22E65C8();
  v5 = v4;

  v6 = *(v0 + 44);
  v7 = sub_1A22E5D98();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *v1 = 0x726F6D2D776F6873;
  *(v1 + 8) = 0xE900000000000065;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 131584;
  *(v1 + 88) = 1;
  *(v1 + *(v0 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1A226B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v16 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v16;
  *(a9 + 80) = *(a7 + 32);
  *(a9 + 82) = a8;
  *(a9 + 83) = a10;
  *(a9 + 84) = a12;
  *(a9 + 88) = a13 & 1;
  v17 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  result = sub_1A2125248(a14, a9 + *(v17 + 44));
  *(a9 + *(v17 + 48)) = a15;
  return result;
}

uint64_t sub_1A226B594()
{
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for RoutePickerItemView.ViewModel(0);

  return __swift_project_value_buffer(v0, qword_1ED953218);
}

uint64_t sub_1A226B5F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v3 = __swift_project_value_buffer(v2, qword_1ED953218);

  return sub_1A2123C78(v3, a1);
}

BOOL sub_1A226B670(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t sub_1A226B6D0(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
    return MEMORY[0x1A58DB4F0](v2);
  }

  if (a2 == 3)
  {
    v2 = 1;
    return MEMORY[0x1A58DB4F0](v2);
  }

  MEMORY[0x1A58DB4F0](2);
  return sub_1A22E72C8();
}

uint64_t sub_1A226B72C(char a1)
{
  sub_1A22E72A8();
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (a1 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v2 = 1;
  }

  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A226B7A8()
{
  v1 = *v0;
  sub_1A22E72A8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v2 = 1;
  }

  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A226B820()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x1A58DB4F0](v2);
  }

  if (v1 == 3)
  {
    v2 = 1;
    return MEMORY[0x1A58DB4F0](v2);
  }

  MEMORY[0x1A58DB4F0](2);
  return sub_1A22E72C8();
}

uint64_t sub_1A226B87C()
{
  v1 = *v0;
  sub_1A22E72A8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v2 = 1;
  }

  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

BOOL sub_1A226B8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1A226B950(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x1A58DB4F0](2);
    }

    else
    {
      MEMORY[0x1A58DB4F0](3);
      MEMORY[0x1A58DB520](v4);
      if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = a3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else if (a4)
  {
    MEMORY[0x1A58DB4F0](1);
  }

  else
  {
    MEMORY[0x1A58DB4F0](0);
  }

  return MEMORY[0x1A58DB520](v4);
}

uint64_t sub_1A226B9E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1A22E72A8();
  sub_1A226B950(v7, a1, a2, a3);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BA5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A22E72A8();
  sub_1A226B950(v5, v1, v2, v3);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BAC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A22E72A8();
  sub_1A226B950(v5, v1, v2, v3);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BB28(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_1A226BB40(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1A226BB84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  if (v4 == 255)
  {
    sub_1A22E72C8();
  }

  else
  {
    v6 = *v2;
    v5 = *(v2 + 8);
    sub_1A22E72C8();
    sub_1A226B950(a1, v6, v5, v4);
  }

  if (*(v2 + 32) == 1)
  {
    sub_1A22E72C8();
  }

  else
  {
    v7 = *(v2 + 24);
    sub_1A22E72C8();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1A58DB520](v8);
  }

  return sub_1A22E72C8();
}

uint64_t sub_1A226BC2C()
{
  sub_1A22E72A8();
  sub_1A226BB84(v1);
  return sub_1A22E72F8();
}

void sub_1A226BC6C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_1A226BC88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 33) = a6;
  return result;
}

uint64_t sub_1A226BCA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A226F788(v5, v7) & 1;
}

uint64_t sub_1A226BCF4()
{
  sub_1A22E72A8();
  sub_1A226BB84(v1);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BD30()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A226BD60(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_1A226BD98@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 512;
  return result;
}

__n128 sub_1A226BDAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1A226BDC0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t sub_1A226BE54(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1A226BECC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 44);

  return sub_1A21251D8(a1, v3);
}

uint64_t sub_1A226BF58()
{
  type metadata accessor for RoutePickerItemView.ViewModel(0);
}

uint64_t sub_1A226BF8C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A226C014()
{
  v1 = *(v0 + 82);
  v2 = 0x656C63726963;
  v3 = 0x72616D6B63656863;
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A226C094()
{
  v1 = *(v0 + 80);
  if ((v1 & 0xFF00) == 0x200)
  {
    return 0;
  }

  if (v1)
  {
    v3 = (v1 >> 8) & 1;
  }

  else
  {
    v3 = 1;
  }

  if (*(v0 + 64) == 0xFF)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A226C0D4()
{
  v1 = *(v0 + *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 48));
  v4 = v0;

  return sub_1A226C258(sub_1A226F870, &v3, v1);
}

BOOL sub_1A226C140(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A22E5858();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5868();
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69AE548])
  {
    return (*(a2 + 82) & 0xFE) == 2;
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t sub_1A226C258(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1A22E5888();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A226F4F8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A226F4F8(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1A226C528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5888();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1A226F8A0(&qword_1EB089388, MEMORY[0x1E69AE550]);
    v21 = sub_1A22E6568();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A226C73C(uint64_t a1)
{
  v3 = sub_1A22E5888();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A22E5D98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  sub_1A22E6658();
  if (*(v1 + 24))
  {
    sub_1A22E72C8();
    sub_1A22E6658();
  }

  else
  {
    sub_1A22E72C8();
  }

  sub_1A22E6658();
  v13 = *(v1 + 80);
  if ((v13 & 0xFF00) != 0x200)
  {
    v35 = v8;
    v14 = v7;
    v15 = *(v1 + 48);
    v34 = *(v1 + 56);
    v16 = *(v1 + 72);
    v17 = *(v1 + 64);
    sub_1A22E72C8();
    if (v17 == 255)
    {
      sub_1A22E72C8();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1A22E72C8();
      sub_1A226B950(a1, v15, v34, v17);
      if (v13)
      {
LABEL_7:
        sub_1A22E72C8();
LABEL_13:
        v7 = v14;
        v8 = v35;
        goto LABEL_14;
      }
    }

    sub_1A22E72C8();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1A58DB520](v18);
    goto LABEL_13;
  }

LABEL_14:
  sub_1A22E72C8();
  v19 = *(v1 + 82);
  if (v19 == 2)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (v19 == 3)
  {
    v20 = 1;
LABEL_18:
    MEMORY[0x1A58DB4F0](v20);
    goto LABEL_20;
  }

  MEMORY[0x1A58DB4F0](2);
  sub_1A22E72C8();
LABEL_20:
  sub_1A22E72C8();
  if (*(v1 + 88) == 1)
  {
    sub_1A22E72C8();
  }

  else
  {
    sub_1A22E72C8();
    sub_1A22E72D8();
  }

  v21 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  sub_1A2214CF8(v1 + *(v21 + 44), v12, &qword_1EB088BE8);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    v22 = v37;
    sub_1A22E72C8();
  }

  else
  {
    v23 = v36;
    v22 = v37;
    (*(v8 + 32))(v36, v12, v7);
    sub_1A22E72C8();
    sub_1A226F8A0(&unk_1EB0891C0, MEMORY[0x1E69AE690]);
    sub_1A22E6548();
    (*(v8 + 8))(v23, v7);
  }

  v24 = *(v1 + *(v21 + 48));
  result = MEMORY[0x1A58DB4F0](*(v24 + 16));
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = v38 + 16;
    v28 = *(v38 + 16);
    v29 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v30 = *(v38 + 72);
    v31 = (v38 + 8);
    do
    {
      v32 = v27;
      v28(v6, v29, v22);
      sub_1A226F8A0(&qword_1EB089368, MEMORY[0x1E69AE550]);
      sub_1A22E6548();
      result = (*v31)(v6, v22);
      v27 = v32;
      v29 += v30;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_1A226CC10()
{
  sub_1A22E72A8();
  sub_1A226C73C(v1);
  return sub_1A22E72F8();
}

uint64_t sub_1A226CC54()
{
  sub_1A22E72A8();
  sub_1A226C73C(v1);
  return sub_1A22E72F8();
}

void (*sub_1A226CCA8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088838);
  return sub_1A226CDD8;
}

void sub_1A226CDD8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 96), v6, &qword_1EB088838);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088838);
    swift_beginAccess();
    sub_1A2123DA8(v6, v7 + v4);
    swift_endAccess();
    sub_1A2124644(v5);
    sub_1A210D9B0(v5, &qword_1EB088838);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088838);
    swift_beginAccess();
    sub_1A2123DA8(v3, v7 + v4);
    swift_endAccess();
    sub_1A2124644(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088838);
  sub_1A210D9B0(v3, &qword_1EB088838);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A226CF44()
{
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A226CF88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView)) + 0x80))(a1);
}

void (*sub_1A226D01C(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A226D0A4;
}

void sub_1A226D0A4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView)) + 0x80))(*(v3[3] + v3[4]));
  }

  free(v3);
}

id sub_1A226D188(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1A226D1CC()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

id sub_1A226D288()
{
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setNumberStyle_];
    [v4 setUsesSignificantDigits_];
    [v4 setUsesGroupingSeparator_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A226D388()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for RoutePickerItemView(0);
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets];
  [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView] setFrame_];
  [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView] setFrame_];
  return [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView] setFrame_];
}

uint64_t sub_1A226D4D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v3);
}

uint64_t sub_1A226D5B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v152 = &v148 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v148 - v4;
  v5 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v153 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v155 = &v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088848);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v148 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v159 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v158 = &v148 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v151 = &v148 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v164 = &v148 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v157 = &v148 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v163 = &v148 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v156 = &v148 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v148 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v148 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v148 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v148 - v38;
  v167 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView);
  v40 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v41 = (*MEMORY[0x1E69E7D40] & *v0) + 176;
  v162 = v0;
  v165 = v40;
  v166 = v41;
  (v40)(v37);
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v5, qword_1ED953218);
  sub_1A2123C78(v42, v36);
  (*(v6 + 56))(v36, 0, 1, v5);
  v43 = *(v10 + 48);
  sub_1A2214CF8(v39, v12, &qword_1EB088838);
  sub_1A2214CF8(v36, &v12[v43], &qword_1EB088838);
  v46 = *(v6 + 48);
  v44 = v6 + 48;
  v45 = v46;
  v47 = v46(v12, 1, v5);
  v161 = v5;
  v168 = v46;
  if (v47 != 1)
  {
    sub_1A2214CF8(v12, v33, &qword_1EB088838);
    v154 = v44;
    if (v45(&v12[v43], 1, v5) != 1)
    {
      v53 = &v12[v43];
      v54 = v155;
      sub_1A21245E0(v53, v155);
      v50 = sub_1A2125B80(v33, v54);
      sub_1A2123CDC(v54);
      sub_1A210D9B0(v36, &qword_1EB088838);
      sub_1A210D9B0(v39, &qword_1EB088838);
      sub_1A2123CDC(v33);
      sub_1A210D9B0(v12, &qword_1EB088838);
      v51 = v162;
      v49 = v154;
      v52 = MEMORY[0x1E69E7D40];
      goto LABEL_11;
    }

    sub_1A210D9B0(v36, &qword_1EB088838);
    sub_1A210D9B0(v39, &qword_1EB088838);
    sub_1A2123CDC(v33);
    v49 = v154;
    goto LABEL_8;
  }

  sub_1A210D9B0(v36, &qword_1EB088838);
  sub_1A210D9B0(v39, &qword_1EB088838);
  v48 = v45(&v12[v43], 1, v5);
  v49 = v44;
  if (v48 != 1)
  {
LABEL_8:
    sub_1A210D9B0(v12, &qword_1EB088848);
    v50 = 0;
    goto LABEL_9;
  }

  sub_1A210D9B0(v12, &qword_1EB088838);
  v50 = 1;
LABEL_9:
  v51 = v162;
  v52 = MEMORY[0x1E69E7D40];
LABEL_11:
  v55 = v167;
  v56 = (*((*v52 & *v167) + 0xA8))(v169);
  *(v57 + 64) = v50 & 1;
  v56(v169, 0);
  v58 = *(v55 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView);
  v165();
  v59 = v161;
  if (v168(v30, 1, v161) || !*(v30 + 3))
  {
    sub_1A210D9B0(v30, &qword_1EB088838);
    v60 = 0;
  }

  else
  {

    sub_1A210D9B0(v30, &qword_1EB088838);
    v60 = sub_1A22DC57C();
  }

  v61 = v163;
  [v58 setImage_];

  v62 = *(v167 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
  v63 = v156;
  v64 = v165;
  v165();
  if (v168(v63, 1, v59))
  {
    sub_1A210D9B0(v63, &qword_1EB088838);
    v65 = 0;
  }

  else
  {

    sub_1A210D9B0(v63, &qword_1EB088838);
    v65 = sub_1A22E6598();
    v61 = v163;
  }

  [v62 setText_];

  v66 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v67 = *(v167 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
  v64();
  if (v168(v61, 1, v59))
  {
    sub_1A210D9B0(v61, &qword_1EB088838);
    v68 = 0;
    goto LABEL_66;
  }

  v156 = v66;
  v69 = v155;
  sub_1A2123C78(v61, v155);
  sub_1A210D9B0(v61, &qword_1EB088838);
  v163 = sub_1A226D288();
  v70 = [v51 traitCollection];
  v71 = *(v69 + 80);
  if ((v71 & 0xFF00) != 0x200)
  {
    v72 = v59;
    v73 = *(v69 + 48);
    v149 = *(v69 + 56);
    v74 = *(v69 + 72);
    v75 = *(v69 + 64);
    v150 = v67;
    v154 = v49;
    if (v75 >= 3 && v75 != 3)
    {
      v78 = MEMORY[0x1E69E7CC0];
      v51 = v162;
      v59 = v72;
      if ((v71 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

    v76 = sub_1A22E6598();
    v77 = [objc_opt_self() systemImageNamed_];

    if (v77)
    {
      v78 = sub_1A22421C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v80 = *(v78 + 2);
      v79 = *(v78 + 3);
      if (v80 >= v79 >> 1)
      {
        v78 = sub_1A22421C0((v79 > 1), v80 + 1, 1, v78);
      }

      *(v78 + 2) = v80 + 1;
      v81 = &v78[24 * v80];
      *(v81 + 4) = v77;
      *(v81 + 5) = 0;
      v81[48] = 1;
      v64 = v165;
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC0];
    }

    v82 = v73;
    if (v75 <= 1)
    {
      v59 = v72;
      if (v75)
      {
        v83 = [objc_opt_self() accessoryBatteryWithFormatter:v163 right:v82];
      }

      else
      {
        v83 = [objc_opt_self() accessoryBatteryWithFormatter:v163 left:v82];
      }

      v89 = v83;
      v86 = sub_1A22E65C8();
      v88 = v90;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1A22421C0(0, *(v78 + 2) + 1, 1, v78);
      }

      v51 = v162;
      goto LABEL_42;
    }

    v59 = v72;
    if (v75 == 2)
    {
      v84 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v85 = [v163 stringFromNumber_];

      v51 = v162;
      if (!v85)
      {
        goto LABEL_45;
      }

      v86 = sub_1A22E65C8();
      v88 = v87;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v91 = [objc_opt_self() accessoryBatteryWithFormatter:v163 left:v82 right:v149];
      v86 = sub_1A22E65C8();
      v88 = v92;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v162;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_95:
        v78 = sub_1A22421C0(0, *(v78 + 2) + 1, 1, v78);
      }
    }

LABEL_42:
    v95 = *(v78 + 2);
    v94 = *(v78 + 3);
    if (v95 >= v94 >> 1)
    {
      v78 = sub_1A22421C0((v94 > 1), v95 + 1, 1, v78);
    }

    *(v78 + 2) = v95 + 1;
    v96 = &v78[24 * v95];
    *(v96 + 4) = v86;
    *(v96 + 5) = v88;
    v96[48] = 0;
LABEL_45:
    v69 = v155;
    if ((v71 & 1) == 0)
    {
LABEL_46:
      v97 = [objc_opt_self() accessoryBatteryWithFormatter:v163 chargeCase:v74];
      v98 = sub_1A22E65C8();
      v100 = v99;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1A22421C0(0, *(v78 + 2) + 1, 1, v78);
      }

      v102 = *(v78 + 2);
      v101 = *(v78 + 3);
      if (v102 >= v101 >> 1)
      {
        v78 = sub_1A22421C0((v101 > 1), v102 + 1, 1, v78);
      }

      *(v78 + 2) = v102 + 1;
      v103 = &v78[24 * v102];
      *(v103 + 4) = v98;
      *(v103 + 5) = v100;
      v103[48] = 0;
      v69 = v155;
    }

LABEL_51:
    if ((v71 & 0x100) != 0)
    {
      v104 = sub_1A22E6598();
      v105 = [objc_opt_self() _systemImageNamed_];

      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1A22421C0(0, *(v78 + 2) + 1, 1, v78);
        }

        v107 = *(v78 + 2);
        v106 = *(v78 + 3);
        if (v107 >= v106 >> 1)
        {
          v78 = sub_1A22421C0((v106 > 1), v107 + 1, 1, v78);
        }

        *(v78 + 2) = v107 + 1;
        v108 = &v78[24 * v107];
        *(v108 + 4) = v105;
        *(v108 + 5) = 0;
        v108[48] = 1;
      }

      v109 = [objc_opt_self() USBAudio];
      v110 = sub_1A22E65C8();
      v112 = v111;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1A22421C0(0, *(v78 + 2) + 1, 1, v78);
      }

      v52 = MEMORY[0x1E69E7D40];
      v114 = *(v78 + 2);
      v113 = *(v78 + 3);
      if (v114 >= v113 >> 1)
      {
        v78 = sub_1A22421C0((v113 > 1), v114 + 1, 1, v78);
      }

      *(v78 + 2) = v114 + 1;
      v115 = &v78[24 * v114];
      *(v115 + 4) = v110;
      *(v115 + 5) = v112;
      v115[48] = 0;
      v69 = v155;
    }

    else
    {
      v52 = MEMORY[0x1E69E7D40];
    }

    sub_1A22703C0();
    v116 = sub_1A220C2CC();
    v68 = sub_1A220C2D8(v78, v116, v117, v70);

    v67 = v150;
    goto LABEL_65;
  }

  v68 = 0;
  v52 = MEMORY[0x1E69E7D40];
LABEL_65:

  sub_1A2123CDC(v69);
  v66 = v156;
LABEL_66:
  [v67 setAttributedText_];

  v118 = *(v167 + v66);
  v119 = v157;
  v64();
  v120 = v168;
  if (v168(v119, 1, v59))
  {
    sub_1A210D9B0(v119, &qword_1EB088838);
    v121 = 1;
    v122 = v160;
  }

  else
  {
    v123 = v153;
    sub_1A2123C78(v119, v153);
    sub_1A210D9B0(v119, &qword_1EB088838);
    v124 = *(v123 + 64);
    v125 = *(v123 + 80);
    sub_1A2123CDC(v123);
    v122 = v160;
    if ((v125 & 0xFF00) == 0x200)
    {
      v121 = 1;
    }

    else if (v124 == 255)
    {
      v121 = (v125 & 1) != 0 && (v125 & 0x100) == 0;
    }

    else
    {
      v121 = 0;
    }
  }

  [v118 setHidden_];

  v126 = *(v51 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView);
  v64();
  v127 = v164;
  if (v120(v164, 1, v59))
  {
    sub_1A210D9B0(v127, &qword_1EB088838);
LABEL_78:
    v131 = 1;
    goto LABEL_79;
  }

  v128 = *(v127 + 84);
  v129 = *(v127 + 88);
  v130 = sub_1A210D9B0(v127, &qword_1EB088838);
  if (v129)
  {
    goto LABEL_78;
  }

  v143 = v151;
  (v64)(v130);
  if (v120(v143, 1, v59))
  {
    sub_1A210D9B0(v143, &qword_1EB088838);
    v144 = sub_1A22E5D98();
    v145 = v152;
    (*(*(v144 - 8) + 56))(v152, 1, 1, v144);
  }

  else
  {
    v146 = v143 + *(v59 + 44);
    v147 = v143;
    v145 = v152;
    sub_1A2214CF8(v146, v152, &qword_1EB088BE8);
    sub_1A210D9B0(v147, &qword_1EB088838);
  }

  sub_1A224CF58(v145, v122, v128);
  v131 = 0;
LABEL_79:
  v132 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  v133 = 1;
  (*(*(v132 - 8) + 56))(v122, v131, 1, v132);
  v134 = (*((*v52 & *v126) + 0xA8))(v122);
  v135 = v158;
  (v64)(v134);
  if (!v120(v135, 1, v59))
  {
    v133 = *(v135 + 82) - 2 < 3;
  }

  v136 = sub_1A210D9B0(v135, &qword_1EB088838);
  v137 = v159;
  (v64)(v136);
  v138 = 1;
  if (!v120(v137, 1, v59))
  {
    if (*(v137 + 88))
    {
      v138 = 1;
    }

    else
    {
      v138 = 2;
    }
  }

  sub_1A210D9B0(v137, &qword_1EB088838);
  if (v133)
  {
    v139 = 0;
  }

  else
  {
    v139 = v138;
  }

  v140 = (*((*v52 & *v51) + 0xA8))(v169);
  *(v141 + 1) = v139;
  return v140(v169, 0);
}

uint64_t sub_1A226EA4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v4 = v3();
  v5 = *((*v2 & *v1) + 0x70);
  v6 = v5(v28);
  *v7 = v4 & 1;
  v8 = v6(v28, 0);
  v9 = (v3)(v8) >> 8;
  v10 = v5(v28);
  *(v11 + 1) = v9;
  v12 = v10(v28, 0);
  v13 = (v3)(v12);
  v14 = 0;
  if (BYTE2(v13) - 1 <= 1)
  {
    v14 = ((v3)(v13) & 0xFF00) != 0;
  }

  v15 = v5(v28);
  *(v16 + 2) = v14;
  v17 = v15(v28, 0);
  v18 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView);
  v19 = (v3)(v17) >> 8;
  v20 = (*((*v2 & *v18) + 0x98))(v28);
  *v21 = v19;
  v22 = v20(v28, 0);
  v23 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView);
  v24 = (v3)(v22) >> 8;
  v25 = (*((*v2 & *v23) + 0xC0))(v28);
  *v26 = v24;
  return v25(v28, 0);
}

uint64_t sub_1A226ECC0()
{
  v1 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v19 = v18(v14);
  v40 = v2;
  if ((v19 & 0xFF0000) == 0x20000)
  {
    v20 = 0;
    v21 = 2;
    v22 = 1;
    goto LABEL_22;
  }

  v38 = v5;
  v36 = *((*v17 & *v0) + 0xB0);
  v36();
  v23 = *(v2 + 48);
  v37 = v1;
  if (v23(v16, 1, v1))
  {
    v24 = sub_1A210D9B0(v16, &qword_1EB088838);
  }

  else
  {
    v35 = *(v16 + 21);
    v25 = v16[88];
    v24 = sub_1A210D9B0(v16, &qword_1EB088838);
    if ((v25 & 1) == 0)
    {
      v24 = v18(v24);
      if ((v24 & 0x1000000) != 0)
      {
        v20 = 0;
        v21 = 1;
        v1 = v37;
        v5 = v38;
        v17 = MEMORY[0x1E69E7D40];
        v22 = v35;
        goto LABEL_22;
      }
    }
  }

  (v36)(v24);
  v1 = v37;
  if (v23(v13, 1, v37))
  {
    sub_1A210D9B0(v13, &qword_1EB088838);
    v22 = 0;
    v20 = 0;
    v21 = 2;
    v5 = v38;
    v17 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v26 = v39;
    sub_1A2123C78(v13, v39);
    sub_1A210D9B0(v13, &qword_1EB088838);
    v27 = *(v26 + 82);
    v5 = v38;
    v17 = MEMORY[0x1E69E7D40];
    if (v27 == 2)
    {
      sub_1A2123CDC(v26);
      v22 = 0;
      v20 = 0;
      v21 = 2;
    }

    else
    {
      v28 = 0x80000001A2304CD0;
      v29 = 0x72616D6B63656863;
      if (v27)
      {
        v29 = 0xD000000000000015;
      }

      else
      {
        v28 = 0xE90000000000006BLL;
      }

      if (v27 == 3)
      {
        v22 = 0x656C63726963;
      }

      else
      {
        v22 = v29;
      }

      if (v27 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = v28;
      }

      sub_1A2123CDC(v26);
      v21 = 0;
    }
  }

LABEL_22:
  v30 = *((*v17 & *v0) + 0xB0);
  v31 = *(*(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView) + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView);
  v30();
  if ((*(v40 + 48))(v10, 1, v1))
  {
    sub_1A210D9B0(v10, &qword_1EB088838);
    v32 = 1;
  }

  else
  {
    sub_1A2123C78(v10, v5);
    sub_1A210D9B0(v10, &qword_1EB088838);
    v33 = v5[82];
    sub_1A2123CDC(v5);
    v32 = (v33 & 0xFE) != 2;
  }

  (*((*MEMORY[0x1E69E7D40] & *v31) + 0x88))(v22, v20, v21, v32);

  return sub_1A227040C(v22, v20, v21);
}

id sub_1A226F1A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A226F284(float a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v4 = v3;
  v6 = *(*(v3 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView) + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView);
  v7 = LODWORD(a1);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);
  v10 = v6;
  v9(v7, 0, 1, 1);

  result = (*((*v8 & *v4) + 0xE0))();
  if (result)
  {
    v12 = result;
    result(a3);

    return sub_1A210F5C0(v12);
  }

  return result;
}

uint64_t sub_1A226F3B4(uint64_t a1, char a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))(v7);
  *(v5 + 3) = a2;
  return v4(v7, 0);
}

id sub_1A226F43C(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

uint64_t sub_1A226F470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA8))(v9);
  *(v7 + 3) = a4;
  return v6(v9, 0);
}

size_t sub_1A226F4F8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A226F518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A226F518(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089390);
  v10 = *(sub_1A22E5888() - 8);
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
  v15 = *(sub_1A22E5888() - 8);
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

BOOL sub_1A226F6F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    v9 = *&a1 == *&a4;
    if (a6 != 2)
    {
      v9 = 0;
    }

    v10 = *&a2 == *&a5;
    if (*&a1 != *&a4)
    {
      v10 = 0;
    }

    v11 = a6 == 3 && v10;
    if (a3 == 2)
    {
      return v9;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v6 = *&a1 == *&a4;
    if (a6)
    {
      v6 = 0;
    }

    v7 = a6 == 1 && *&a1 == *&a4;
    if (a3)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1A226F788(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      if (v3 != 3)
      {
        return 0;
      }

      if (v5 != v6 || *(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }

      goto LABEL_14;
    }

    LOBYTE(v2) = 0;
    if (v3 != 2)
    {
      return v2 & 1;
    }
  }

  else if (*(a1 + 16))
  {
    LOBYTE(v2) = 0;
    if (v3 != 1)
    {
      return v2 & 1;
    }
  }

  else if (*(a2 + 16))
  {
    return v2 & 1;
  }

  if (v5 != v6)
  {
    return v2 & 1;
  }

LABEL_14:
  LOBYTE(v2) = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return v2 & 1;
    }

    return (*(a1 + 33) ^ *(a2 + 33) ^ 1) & 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    LOBYTE(v2) = 1;
  }

  if ((v2 & 1) == 0)
  {
    return (*(a1 + 33) ^ *(a2 + 33) ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1A226F8A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A226F8E8()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted) = 0;
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView;
  type metadata accessor for RoutePickerItemBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView;
  type metadata accessor for RoutePickerItemVolumeControl(0);
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView;
  type metadata accessor for RoutePickerItemContentView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  *v7 = *MEMORY[0x1E69DDCE0];
  v7[1] = v8;
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A226FA58()
{
  result = qword_1ED94F640;
  if (!qword_1ED94F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94F640);
  }

  return result;
}

unint64_t sub_1A226FAB0()
{
  result = qword_1EB089FA0;
  if (!qword_1EB089FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089FA0);
  }

  return result;
}

unint64_t sub_1A226FB08()
{
  result = qword_1EB089370;
  if (!qword_1EB089370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089370);
  }

  return result;
}

unint64_t sub_1A226FB60()
{
  result = qword_1EB089378;
  if (!qword_1EB089378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089378);
  }

  return result;
}

unint64_t sub_1A226FBB8()
{
  result = qword_1EB089380;
  if (!qword_1EB089380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089380);
  }

  return result;
}

void sub_1A226FC5C()
{
  sub_1A226FFF0(319, &qword_1ED950A00, type metadata accessor for RoutePickerItemView.ViewModel, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for RoutePickerItemView.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RoutePickerItemView.State(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1A226FE34()
{
  sub_1A2270370(319, qword_1ED950878, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A2270370(319, qword_1ED950A50, &type metadata for RoutePickerItemView.ViewModel.Subtitle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A2270370(319, &qword_1ED950868, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A226FFF0(319, &unk_1ED950C20, MEMORY[0x1E69AE690], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A226FFF0(319, &qword_1ED950870, MEMORY[0x1E69AE550], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A226FFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SessionHeaderView.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SessionHeaderView.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A22701C0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A22701DC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A2270218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A227026C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerItemView.ViewModel.Subtitle.Battery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for RoutePickerItemView.ViewModel.Subtitle.Battery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1A2270370(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A22703C0()
{
  result = qword_1ED94EA38;
  if (!qword_1ED94EA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA38);
  }

  return result;
}

uint64_t sub_1A227040C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_1A227042C(char a1)
{
  result = 34.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A2270468()
{
  v0 = sub_1A2254C04();

  return sub_1A22D3E7C(0, v0);
}

double sub_1A2270494()
{
  v0 = sub_1A2254CC0();
  v1 = sub_1A211A6BC() & 1;

  return sub_1A22D3E7C(v1, v0);
}

double sub_1A22704D4(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A22704F8(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A227050C()
{
  v0 = sub_1A2254C04();
  v1 = sub_1A22D3E7C(0, v0);
  return v1 + sub_1A224F8A4();
}

double sub_1A2270540()
{
  v0 = sub_1A2254C04();
  v1 = sub_1A22D3E7C(0, v0);
  v2 = v1 + sub_1A224F8A4();
  v3 = sub_1A2254C04();
  v4 = sub_1A22D3E7C(0, v3);
  result = v4 + sub_1A224F8A4();
  qword_1EB091478 = *&v2;
  unk_1EB091480 = *&result;
  return result;
}

uint64_t *sub_1A2270598()
{
  if (qword_1EB08E080 != -1)
  {
    swift_once();
  }

  return &qword_1EB091478;
}

double sub_1A22705E8()
{
  if (qword_1EB08E080 != -1)
  {
    swift_once();
  }

  return *&qword_1EB091478;
}

id sub_1A227063C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22706D4(void (*a1)(void))
{
  a1(0);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1A2114DFC();

  return v2;
}

uint64_t sub_1A2270798(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x100))(Strong, *(v4 + 8));
  return swift_unknownObjectRelease();
}

void (*sub_1A2270860(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2270900;
}

void sub_1A2270900(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    v5 = v4 + v3[6];
    swift_endAccess();
    swift_unknownObjectRelease();
    v6 = *(v4 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x100))(Strong, *(v5 + 8));
  }

  free(v3);
}

uint64_t sub_1A22709F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  return sub_1A227562C(v1 + v3, a1, type metadata accessor for SessionViewModel);
}

uint64_t sub_1A2270A5C(uint64_t a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  sub_1A227562C(v1 + v9, v8, type metadata accessor for SessionViewModel);
  swift_beginAccess();
  sub_1A2270C28(a1, v1 + v9);
  swift_endAccess();
  sub_1A227562C(v1 + v9, v6, type metadata accessor for SessionViewModel);
  sub_1A2272FEC(&qword_1EB0893C0, type metadata accessor for SessionViewModel);
  v10 = sub_1A22E6568();
  sub_1A22754F4(v6, type metadata accessor for SessionViewModel);
  if ((v10 & 1) == 0)
  {
    sub_1A227207C(1);
  }

  sub_1A22754F4(a1, type metadata accessor for SessionViewModel);
  return sub_1A22754F4(v8, type metadata accessor for SessionViewModel);
}

uint64_t sub_1A2270C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_1A2270C8C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for SessionViewModel(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  sub_1A227562C(v1 + v9, v8, type metadata accessor for SessionViewModel);
  return sub_1A2270D98;
}

void sub_1A2270D98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1A227562C(*(*a1 + 40), v3, type metadata accessor for SessionViewModel);
    sub_1A2270A5C(v3);
    sub_1A22754F4(v4, type metadata accessor for SessionViewModel);
  }

  else
  {
    sub_1A2270A5C(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A2270E40()
{
  v1 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2270E84(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v5 != (a1 & 1))
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))(result);
    return sub_1A2272580(v6 & 0x1010101010101);
  }

  return result;
}

void (*sub_1A2270F30(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2270FC4;
}

void sub_1A2270FC4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1[3]) + 0x1E8))();
    sub_1A2272580(v6 & 0x1010101010101);
  }

  free(v1);
}

char *sub_1A2271094(uint64_t a1)
{
  v2 = v1;
  v60 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = sub_1A2114DFC();

  *&v2[v6] = v8;
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  type metadata accessor for SessionContentView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = sub_1A2114DFC();

  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  type metadata accessor for RoutePickerItemsView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_1A2114DFC();

  *&v2[v12] = v14;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC13MediaControls11SessionView_layout] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints] = 0;
  v15 = &v2[OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState];
  LOBYTE(v13) = sub_1A211A6BC();
  LOBYTE(v14) = sub_1A2113050();
  v16 = sub_1A2113050();
  LOBYTE(v12) = sub_1A211A6BC();
  v17 = sub_1A2113050();
  v18 = sub_1A2113050();
  v19 = sub_1A220CDA4(1, v13 & 1, v14 & 1, v16 & 1, v12 & 1, v17 & 1, v18 & 1);
  *v15 = v19 & 1;
  v20 = vdupq_n_s64(v19);
  *v20.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_1A2308740), vshlq_u64(v20, xmmword_1A2308730))), 0x1000100010001);
  *(v15 + 1) = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
  v15[5] = BYTE5(v19) & 1;
  v15[6] = BYTE6(v19) & 1;
  v21 = &v2[OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler];
  *v21 = 0;
  v21[1] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_presenter] = a1;
  v22 = *(*a1 + 192);

  v22(v23);
  v61 = v5;
  sub_1A2275554(v5, &v2[OBJC_IVAR____TtC13MediaControls11SessionView_viewModel], type metadata accessor for SessionViewModel);
  v24 = type metadata accessor for SessionView();
  v63.receiver = v2;
  v63.super_class = v24;
  v25 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds_];
  (*(*a1 + 144))(v25, &off_1F1440088);
  v62 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v26 = [*&v25[OBJC_IVAR____TtC13MediaControls11SessionView_containerView] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A2308E80;
  v28 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *(v27 + 56) = sub_1A2115288(0, &qword_1ED94E958);
  *(v27 + 32) = v28;
  v29 = sub_1A22E6738();

  [v26 setFilters_];

  v30 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  v31 = *(*&v25[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView);
  v32 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v31) + 0xB0);
  v34 = v25;
  v35 = v31;
  v33(v25, &off_1F1440100);

  v36 = *(*(*&v25[v30] + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  v37 = *((*v32 & *v36) + 0xC8);
  v38 = v34;
  v39 = v36;
  v37(v25, &off_1F1440118);

  v40 = *(*a1 + 168);
  v41 = *(*(*(*&v25[v30] + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView) + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView);
  v42 = v40();
  (*((*v32 & *v41) + 0xB8))(v42);

  v43 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  v44 = *(*a1 + 160);
  v45 = *&v38[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];
  v46 = v44();
  v47 = v32;
  (*((*v32 & *v45) + 0xE8))(v46);

  v48 = v62;
  [v38 addSubview_];
  [*&v25[v48] addSubview_];
  [*&v25[v48] addSubview_];
  v49 = *&v25[v30];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v49;

  v52 = *((*v47 & *v51) + 0x118);

  v52(sub_1A2272F10, v50);

  v53 = sub_1A2271E50();
  v54 = 0;
  v55 = 0;
  if (((*((*v47 & *v38) + 0x1E8))(v53) & 1) == 0)
  {
    v56 = v61;
    (*((*v47 & *v38) + 0xE8))();
    v57 = (v56 + *(v60 + 24));
    v54 = *v57;
    v55 = v57[1];

    sub_1A22754F4(v56, type metadata accessor for SessionViewModel);
  }

  sub_1A2272304(v38, v54, v55);
  sub_1A211BC80(v54);
  sub_1A2272580(2);

  return v38;
}

uint64_t sub_1A2271874()
{
  v1 = sub_1A22E6468();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6488();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionView();
  v16.receiver = v0;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  sub_1A2115288(0, &qword_1ED94EA48);
  v10 = sub_1A22E6B28();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_1A2272FC8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2272FEC(&qword_1ED94EB28, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v8, v4, v12);
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

double sub_1A2271B9C(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView) sizeThatFits_];
  [*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView) sizeThatFits_];
  v6 = v5;
  v7 = sub_1A2254CC0();
  v8 = sub_1A211A6BC();
  if (v6 <= sub_1A22D3E7C(v8 & 1, v7))
  {
    v11 = sub_1A2254CC0();
    v10 = sub_1A211A6BC() & 1;
    v9 = v11;
  }

  else
  {
    v9 = sub_1A2254C04();
    v10 = 0;
  }

  v12 = sub_1A22D3E7C(v10, v9);
  if (*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) < v12)
  {
    *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = v12;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
  return a1;
}

uint64_t sub_1A2271D0C()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0xD0))(0);
  v2 = (*((*v1 & **(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView)) + 0xB8))(v5);
  *(v3 + 8) = MEMORY[0x1E69E7CC8];

  return v2(v5, 0);
}

uint64_t sub_1A2271E50()
{
  v1 = sub_1A211A6BC();
  sub_1A211A6C4(v1 & 1, sub_1A2275694);

  v2 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints) = sub_1A211A6C4(v2 & 1, sub_1A2275754);

  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints) = sub_1A211A6C4(0, sub_1A2275A54);

  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints) = sub_1A211A6C4(0, sub_1A2275A60);

  v3 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints) = sub_1A211A6C4(v3 & 1, sub_1A2275B88);

  v4 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints) = sub_1A211A6C4(v4 & 1, sub_1A2275EF0);
}

uint64_t sub_1A2271FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A227201C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A227207C(char a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = 0;
  v9 = 0;
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))(v4) & 1) == 0)
  {
    (*((*v7 & *v1) + 0xE8))();
    v10 = &v6[*(v3 + 24)];
    v8 = *v10;
    v9 = v10[1];

    sub_1A22754F4(v6, type metadata accessor for SessionViewModel);
  }

  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v8;
  v11[4] = v9;
  if (a1)
  {
    v12 = *((*v7 & *v1) + 0xD0);
    v13 = v1;
    v14 = sub_1A2124CD0(v8);
    if (v12(v14))
    {
      v16 = v15;
      sub_1A211BC80(v8);
      ObjectType = swift_getObjectType();
      v18 = swift_allocObject();
      v18[2] = sub_1A22763C8;
      v18[3] = v11;
      v18[4] = v13;
      v19 = v13;

      sub_1A22CD1DC(sub_1A2247C4C, v18, ObjectType, v16);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v21 = v1;
    sub_1A2124CD0(v8);
  }

  sub_1A2272304(v1, v8, v9);

  return sub_1A211BC80(v8);
}

id sub_1A2272304(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionViewModel(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView);
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v11);
  sub_1A227562C(&v9[*(v7 + 28)], v13, type metadata accessor for SessionContentViewModel);
  sub_1A22754F4(v9, type metadata accessor for SessionViewModel);
  v16 = type metadata accessor for SessionContentViewModel(0);
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  (*((*v15 & *v14) + 0xB8))(v13);
  v17 = *((*v15 & **(a1 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView)) + 0xC8);
  sub_1A2124CD0(a2);
  v18 = v17(a2, a3);
  v19 = (*((*v15 & *a1) + 0x1E8))(v18);
  return sub_1A2272580(v19 & 0x1010101010101);
}

id sub_1A2272580(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v3 = a1;
  v75 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v74 - v8;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8);
  v12 = (v11)(v7);
  v13 = (*(*v9 + 232))((v12 >> 8) & 1);
  v14 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView);
  v15 = (v11)(v13);
  v16 = *((*v10 & *v14) + 0xE8);
  v83 = v14;
  v17 = v16((v15 >> 8) & 1);
  v18 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
  if (((v11)(v17) & 0x100) != 0)
  {
    v20 = v11();
    v19 = sub_1A220C928(v20 & 1, 0);
  }

  else
  {
    v19 = 0;
  }

  v21 = (*((*v10 & *v18) + 0xB8))(v85);
  *v22 = v19;
  v23 = v21(v85, 0);
  v24 = MEMORY[0x1E69E7D40];
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = 0;
  v25 = (v11)(v23);
  (*((*v24 & *v1) + 0x258))(v85, v25 & 0x1010101010101);
  v26 = sub_1A22E6C18();
  v27 = (v11)(v26);
  v82 = v3;
  if (v3 == 2 || ((~v3 & 0x1000100) != 0) != ((~v27 & 0x1000100) != 0))
  {
    v28 = (v11)(v27) & 0x1000100;
    v29 = v28 != 16777472;
    if (v28 == 16777472)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    [v83 setAlpha_];
    [v18 setAlpha_];
    v27 = (*((*v24 & *v2) + 0x220))(v29);
  }

  v31 = *((*v24 & *v2) + 0x100);
  v80 = (*v24 & *v2) + 256;
  v81 = v31;
  v32 = v31(v27);
  if (v11())
  {
    v33 = 24.0;
  }

  else
  {
    v33 = 34.0;
  }

  [v2 _setContinuousCornerRadius_];
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = *((*v24 & *v18) + 0xA0);
  v78 = (*v24 & *v18) + 160;
  v79 = v35;
  v36 = v35(v85);
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  *(v37 + 48) = v33;
  *(v37 + 56) = 0;
  v38 = v36(v85, 0);
  v39 = OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints;
  v40 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints);
  if (v40)
  {
    v41 = *(*v40 + 248);

    v43 = v41(v42);

    if (v43)
    {
      v74 = (v11)(v38);
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))();
      v44 = v76;
      sub_1A227562C(&v5[*(v75 + 20)], v76, type metadata accessor for SessionContentViewModel);
      sub_1A22754F4(v5, type metadata accessor for SessionViewModel);
      v45 = type metadata accessor for SessionContentViewModel(0);
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = sub_1A224F768((v74 & 1) == 0, v44);
      sub_1A210D9B0(v44, &qword_1EB088F80);
      [v43 setConstant_];
    }

    v47 = *(v2 + v39);
    v24 = MEMORY[0x1E69E7D40];
    if (v47)
    {
      v48 = *(*v47 + 384);

      v48((v32 & 1) == 0);
    }
  }

  v49 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints);
  if (v49)
  {
    v50 = *(*v49 + 384);

    v50((v32 & 1) == 0);
  }

  v51 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints);
  if (v51)
  {
    v52 = *(*v51 + 384);

    v52(v32 & 1);
  }

  v53 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints);
  if (v53)
  {

    v55 = (v11)(v54);
    v56 = sub_1A220C928(v55 & 1, 0);
    (*(*v53 + 384))(v56);
  }

  v57 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints);
  if (v57)
  {

    v59 = (v11)(v58);
    v60 = sub_1A220C928(v59 & 1, 1);
    (*(*v57 + 384))(v60);
  }

  v61 = v81;
  v62 = v81(v38);
  v63 = (v11() & 1) == 0;
  if (v62)
  {
    v64 = 2;
  }

  else
  {
    v64 = v63;
  }

  v65 = (*((*v24 & *v83) + 0xA0))(v64);
  LOBYTE(v85[0]) = (v11)(v65) & 1;
  if (v82 == 2 || (v84 = v77 & 1, sub_1A2215518(), v66 = sub_1A22E6568(), (v66 & 1) == 0))
  {
    v67 = v11();
    v66 = sub_1A227207C(BYTE1(v67) & 1);
  }

  v68 = v61(v66);
  if (v68)
  {
    v69 = 24.0;
  }

  else
  {
    v69 = 0.0;
  }

  if (v68)
  {
    v70 = 24.0;
  }

  else
  {
    v70 = 16.0;
  }

  v71 = v79(v85);
  *v72 = v69;
  v72[1] = v70;
  v72[2] = v70;
  v72[3] = v70;
  v71(v85, 0);
  return [v2 setNeedsLayout];
}

uint64_t type metadata accessor for SessionView()
{
  result = qword_1ED952D50;
  if (!qword_1ED952D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2272F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))();
    if (v2)
    {
      v3 = v2;
      v2(v1);
      sub_1A210F5C0(v3);
    }
  }
}

uint64_t sub_1A2272FEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A2273034()
{
  swift_getObjectType();
  v1 = sub_1A22E6248();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(*&v0[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView) bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v9 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v10 = CGRectGetHeight(v30);
  if (v9 > v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v0 traitCollection];
  [v12 displayScale];
  v14 = v13;

  v15 = v11 * v14;
  if (COERCE__INT64(fabs(v11 * v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = *(**(*&v0[OBJC_IVAR____TtC13MediaControls11SessionView_presenter] + 32) + 192);

  v18 = v17(v28);
  *(v19 + *(type metadata accessor for SessionArtworkPresentationModel() + 20)) = v16;
  v18(v28, 0);

  v20 = sub_1A2104EA0();
  (*(v2 + 16))(v4, v20, v1);
  v21 = sub_1A22E6238();
  v22 = sub_1A22E6A68();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315394;
    v25 = sub_1A22E7388();
    v27 = sub_1A2103450(v25, v26, v28);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v16;
    _os_log_impl(&dword_1A20FC000, v21, v22, "[%s] Did update artwork pixel size:%ld", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1A58DCD00](v24, -1, -1);
    MEMORY[0x1A58DCD00](v23, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A22733A4()
{
  v1 = type metadata accessor for SessionViewModel(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(v2);
  v5 = *v4;

  sub_1A22754F4(v4, type metadata accessor for SessionViewModel);
  return v5;
}

uint64_t sub_1A2273478()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState);
  swift_beginAccess();
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v1[1])
  {
    v7 = 0;
  }

  return v7 | *v1 | v6 | v5 | v4 | v3 | v2;
}

uint64_t sub_1A2273538(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *v4 = a1 & 1;
  v4[1] = BYTE1(a1) & 1;
  v4[2] = BYTE2(a1) & 1;
  v4[3] = BYTE3(a1) & 1;
  v4[4] = BYTE4(a1) & 1;
  v4[5] = BYTE5(a1) & 1;
  v4[6] = BYTE6(a1) & 1;
  sub_1A221B544();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    v13 = 256;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v13 | v5;
    v15 = 0x10000;
    if (!v7)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if (!v8)
    {
      v16 = 0;
    }

    v17 = v14 | v15 | v16;
    v18 = 0x100000000;
    if (!v9)
    {
      v18 = 0;
    }

    v19 = 0x10000000000;
    if (!v10)
    {
      v19 = 0;
    }

    v20 = 0x1000000000000;
    if (!v11)
    {
      v20 = 0;
    }

    return sub_1A2272580(v17 | v18 | v19 | v20);
  }

  return result;
}

void (*sub_1A22736BC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  return sub_1A2273784;
}

void sub_1A2273784(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *(*a1 + 43);
  v7 = *(*a1 + 44);
  v8 = *(*a1 + 45);
  v9 = *(*a1 + 46);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2[6];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v2[6] = v9;
  v1[47] = v3;
  v1[48] = v4;
  v1[49] = v5;
  v1[50] = v6;
  v1[51] = v7;
  v1[52] = v8;
  v1[53] = v9;
  v1[54] = v10;
  v1[55] = v11;
  v1[56] = v12;
  v1[57] = v13;
  v1[58] = v14;
  v1[59] = v15;
  v1[60] = v16;
  sub_1A221B544();
  if ((sub_1A22E6568() & 1) == 0)
  {
    v17 = 256;
    if (!v11)
    {
      v17 = 0;
    }

    v18 = v17 | v10;
    v19 = 0x10000;
    if (!v12)
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v13)
    {
      v20 = 0;
    }

    v21 = v18 | v19 | v20;
    v22 = 0x100000000;
    if (!v14)
    {
      v22 = 0;
    }

    v23 = 0x10000000000;
    if (!v15)
    {
      v23 = 0;
    }

    v24 = 0x1000000000000;
    if (!v16)
    {
      v24 = 0;
    }

    sub_1A2272580(v21 | v22 | v23 | v24);
  }

  free(v1);
}

uint64_t sub_1A2273900()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

uint64_t sub_1A227395C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

void sub_1A2273A1C()
{
  v1 = v0;
  if ([objc_opt_self() _isInAnimationBlock])
  {
    v2 = sub_1A22E6598();
    v3 = [objc_opt_self() animationWithKeyPath_];

    sub_1A2115288(0, &qword_1ED94E980);
    v4 = v3;
    [v4 setDuration_];
    v5 = [objc_opt_self() functionWithName_];
    [v4 setTimingFunction_];

    v6 = sub_1A22E56C8();
    [v4 setFromValue_];

    v7 = sub_1A22E56C8();
    [v4 setToValue_];

    v8 = [*(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_containerView) layer];
    [v8 addAnimation:v4 forKey:0];
  }

  v9 = [*(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_containerView) layer];
  v10 = sub_1A22E56C8();
  v11 = sub_1A22E6598();
  [v9 setValue:v10 forKeyPath:v11];
}

uint64_t sub_1A2273C68(uint64_t a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A227562C(a1, v5, type metadata accessor for SessionViewModel);
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v5);
}

uint64_t sub_1A2273D30(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0xD0);
  v4 = a1;
  return v3(a1);
}

uint64_t sub_1A2273E4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0x100))(a1);
}

void (*sub_1A2273F08(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2273F90;
}

void sub_1A2273F90(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0x100);

    v4(v5);
  }

  free(v3);
}

double sub_1A2274030@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((~a1 & 0x10100) != 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v3 = (a1 & 0x1000000000000) == 0;
    v4 = (a1 & 0x100000000) == 0;
    v5 = sub_1A22C0E98();
    sub_1A2299F04(v4 & (v5 ^ 1), v3, v8);
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v9;
  }

  return result;
}

id sub_1A2274120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A22743C4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  return sub_1A221BA4C;
}

void (*sub_1A2274508(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  return sub_1A221ADB4;
}

void (*sub_1A227464C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))();
  v4[7] = v5;
  if (*v5)
  {
    v6 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  v4[4] = *v5;
  v4[5] = v6;
  return sub_1A221AF10;
}

uint64_t sub_1A2274710(uint64_t a1, uint64_t a2)
{
  result = (*(**(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter) + 160))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22747BC(uint64_t a1, uint64_t a2)
{
  result = (*(**(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter) + 160))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2274868()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = sub_1A2114DFC();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  type metadata accessor for SessionContentView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_1A2114DFC();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  type metadata accessor for RoutePickerItemsView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = sub_1A2114DFC();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_layout) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints) = 0;
  v11 = v1 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState;
  LOBYTE(v9) = sub_1A211A6BC();
  LOBYTE(v10) = sub_1A2113050();
  v12 = sub_1A2113050();
  LOBYTE(v8) = sub_1A211A6BC();
  v13 = sub_1A2113050();
  v14 = sub_1A2113050();
  v15 = sub_1A220CDA4(1, v9 & 1, v10 & 1, v12 & 1, v8 & 1, v13 & 1, v14 & 1);
  *v11 = v15 & 1;
  v16 = vdupq_n_s64(v15);
  *v16.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v16, xmmword_1A2308740), vshlq_u64(v16, xmmword_1A2308730))), 0x1000100010001);
  *(v11 + 1) = vuzp1_s8(*v16.i8, *v16.i8).u32[0];
  *(v11 + 5) = BYTE5(v15) & 1;
  *(v11 + 6) = BYTE6(v15) & 1;
  v17 = (v1 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A2274AA0()
{
  v83 = sub_1A22E5738();
  v81 = *(v83 - 8);
  v1 = MEMORY[0x1EEE9AC00](v83);
  v71 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v70 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v70 - v6;
  v8 = sub_1A22E5D98();
  v74 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v70 - v11;
  v70 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v12 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v77 = (&v70 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  v19 = type metadata accessor for SessionViewModel(0);
  v20 = v19 - 8;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v72 = v0;
  v24(v21);
  v25 = *(v20 + 32);
  v73 = v23;
  result = *&v23[v25];
  sub_1A22D46C4();
  v27 = result;
  v28 = *(result + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v80 = v4;
  v84 = v8;
  v82 = v7;
  v75 = v28;
  if (!v28)
  {
LABEL_12:

    sub_1A22754F4(v73, type metadata accessor for SessionViewModel);
    v36 = *(v29 + 16);
    if (v36)
    {
      v37 = *(v70 + 44);
      v38 = v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v75 = *(v12 + 72);
      v76 = v37;
      v39 = (v74 + 48);
      v40 = (v74 + 32);
      v41 = MEMORY[0x1E69E7CC0];
      v42 = v84;
      do
      {
        v43 = v77;
        sub_1A227562C(v38, v77, type metadata accessor for RoutePickerItemView.ViewModel);
        sub_1A22755BC(v43 + v76, v7);
        sub_1A22754F4(v43, type metadata accessor for RoutePickerItemView.ViewModel);
        if ((*v39)(v7, 1, v42) == 1)
        {
          sub_1A210D9B0(v7, &qword_1EB088BE8);
        }

        else
        {
          v44 = *v40;
          (*v40)(v78, v7, v42);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v45 = v41;
          }

          else
          {
            v45 = sub_1A2231D44(0, v41[2] + 1, 1, v41);
          }

          v47 = v45[2];
          v46 = v45[3];
          if (v47 >= v46 >> 1)
          {
            v45 = sub_1A2231D44(v46 > 1, v47 + 1, 1, v45);
          }

          v45[2] = v47 + 1;
          v41 = v45;
          v44(v45 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v47, v78, v84);
          v4 = v80;
          v7 = v82;
        }

        v38 += v75;
        --v36;
      }

      while (v36);
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v48 = v41[2];
    if (v48)
    {
      v85 = MEMORY[0x1E69E7CC0];
      sub_1A2231F1C(0, v48, 0);
      v49 = v85;
      v82 = *(v74 + 16);
      v50 = v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v51 = *(v74 + 72);
      v77 = v41;
      v78 = v51;
      v52 = (v74 + 8);
      v53 = v71;
      do
      {
        v54 = v79;
        v55 = v84;
        (v82)(v79, v50, v84);
        sub_1A22E5D88();
        (*v52)(v54, v55);
        v85 = v49;
        v57 = *(v49 + 16);
        v56 = *(v49 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1A2231F1C(v56 > 1, v57 + 1, 1);
          v49 = v85;
        }

        *(v49 + 16) = v57 + 1;
        (*(v81 + 32))(v49 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v57, v53, v83);
        v50 = &v78[v50];
        --v48;
      }

      while (v48);

      v58 = v83;
      v4 = v80;
      v59 = *(v49 + 16);
      if (!v59)
      {
      }
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
      v58 = v83;
      v59 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v59)
      {
      }
    }

    v60 = **(v72 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
    v84 = *(v72 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
    v82 = *(v60 + 160);
    v80 = (v60 + 160);
    v61 = *(v81 + 16);
    v62 = v49 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v63 = *(v81 + 72);
    v64 = (v81 + 8);
    for (i = v61(v4, v62, v58); ; i = v61(v4, v62, v66))
    {
      if ((v82)(i))
      {
        v68 = v67;
        ObjectType = swift_getObjectType();
        (*(v68 + 16))(v4, ObjectType, v68);
        swift_unknownObjectRelease();
      }

      v66 = v83;
      (*v64)(v4, v83);
      v62 += v63;
      if (!--v59)
      {
        break;
      }
    }
  }

  v30 = 0;
  while (v30 < *(v27 + 16))
  {
    v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = *(v12 + 72);
    sub_1A227562C(v27 + v31 + v32 * v30, v18, type metadata accessor for RoutePickerItemView.ViewModel);
    if (sub_1A226C080())
    {
      sub_1A2275554(v18, v76, type metadata accessor for RoutePickerItemView.ViewModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A2129B8C(0, *(v29 + 16) + 1, 1);
        v29 = v85;
      }

      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1A2129B8C(v34 > 1, v35 + 1, 1);
        v29 = v85;
      }

      *(v29 + 16) = v35 + 1;
      result = sub_1A2275554(v76, v29 + v31 + v35 * v32, type metadata accessor for RoutePickerItemView.ViewModel);
      v4 = v80;
    }

    else
    {
      result = sub_1A22754F4(v18, type metadata accessor for RoutePickerItemView.ViewModel);
    }

    ++v30;
    v7 = v82;
    if (v75 == v30)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2275360()
{
  result = qword_1EB0893C8;
  if (!qword_1EB0893C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0893C8);
  }

  return result;
}

uint64_t sub_1A22753BC()
{
  result = type metadata accessor for SessionViewModel(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A22754F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2275554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A22755BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A227562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1A2275694()
{
  v1 = *(v0 + 16);
  sub_1A211A728(v6);
  v2 = sub_1A211A7DC(v6, v1);
  sub_1A211A9FC(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A2308E80;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840);
  *(v3 + 64) = &off_1F14441C0;
  *(v3 + 32) = v2;
  v4 = sub_1A211AB54(v3);

  return v4;
}

char *sub_1A2275754()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v5 = sub_1A211AAD0(v3, v4);
  v7 = v6;

  sub_1A2115288(0, &qword_1ED94EA08);

  v29 = v5;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = sub_1A211AAD0(v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = [v2 trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = sub_1A211AAD0(v14, v15);
  v18 = v17;

  sub_1A2115288(0, &qword_1ED94EA58);

  v19 = v16;
  v20 = [v2 heightAnchor];
  v21 = sub_1A2257F8C(v20);

  swift_getKeyPath();
  v22 = sub_1A2127238(v21);
  v24 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A230A780;
  *(v25 + 56) = &type metadata for Constraint;
  *(v25 + 64) = &off_1F14441B0;
  *(v25 + 32) = v29;
  *(v25 + 40) = v7;
  *(v25 + 96) = &type metadata for Constraint;
  *(v25 + 104) = &off_1F14441B0;
  *(v25 + 72) = v13;
  *(v25 + 80) = v12;
  *(v25 + 136) = &type metadata for Constraint;
  *(v25 + 144) = &off_1F14441B0;
  *(v25 + 112) = v19;
  *(v25 + 120) = v18;
  *(v25 + 176) = &type metadata for Constraint;
  *(v25 + 184) = &off_1F14441B0;
  *(v25 + 152) = v22;
  *(v25 + 160) = v24;

  v26 = v22;
  v27 = sub_1A211AB54(v25);

  return v27;
}

char *sub_1A2275A6C(void *a1)
{
  v3 = *(v1 + 16);
  sub_1A2115288(0, &qword_1ED94EA00);
  v4 = [*&v3[*a1] bottomAnchor];
  v5 = [v3 bottomAnchor];
  v6 = sub_1A211AAD0(v4, v5);
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A2308E80;
  *(v9 + 56) = &type metadata for Constraint;
  *(v9 + 64) = &off_1F14441B0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  v10 = v6;
  v11 = sub_1A211AB54(v9);

  return v11;
}

char *sub_1A2275B88()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];
  v3 = [v2 topAnchor];
  v4 = [*&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] bottomAnchor];
  v5 = sub_1A211AAD0(v3, v4);
  v36 = v6;

  sub_1A2115288(0, &qword_1ED94EA08);

  v35 = v5;
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = sub_1A211AAD0(v7, v8);
  v34 = v10;

  v33 = v9;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = sub_1A211AAD0(v11, v12);
  v32 = v14;

  sub_1A2115288(0, &qword_1ED94EA58);

  v15 = v13;
  v16 = [v2 heightAnchor];
  v17 = sub_1A2254CC0();
  v18 = sub_1A211A6BC();
  sub_1A22D3E7C(v18 & 1, v17);
  v19 = sub_1A22584B4(v16);
  v31 = v20;

  v21 = v19;
  v22 = [v2 heightAnchor];
  v23 = sub_1A2254C04();
  sub_1A22D3E7C(0, v23);
  v24 = sub_1A2258438(v22);
  v26 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A230A770;
  *(v27 + 56) = &type metadata for Constraint;
  *(v27 + 64) = &off_1F14441B0;
  *(v27 + 32) = v35;
  *(v27 + 40) = v36;
  *(v27 + 96) = &type metadata for Constraint;
  *(v27 + 104) = &off_1F14441B0;
  *(v27 + 72) = v33;
  *(v27 + 80) = v34;
  *(v27 + 136) = &type metadata for Constraint;
  *(v27 + 144) = &off_1F14441B0;
  *(v27 + 112) = v15;
  *(v27 + 120) = v32;
  *(v27 + 176) = &type metadata for Constraint;
  *(v27 + 184) = &off_1F14441B0;
  *(v27 + 152) = v21;
  *(v27 + 160) = v31;
  *(v27 + 216) = &type metadata for Constraint;
  *(v27 + 224) = &off_1F14441B0;
  *(v27 + 192) = v24;
  *(v27 + 200) = v26;

  v28 = v24;
  v29 = sub_1A211AB54(v27);

  return v29;
}

char *sub_1A2275EF0()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA08);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView];
  v3 = [v2 leadingAnchor];
  v4 = [v1 leadingAnchor];
  v5 = sub_1A211AAD0(v3, v4);
  v53 = v6;

  sub_1A2115288(0, &qword_1ED94EA00);

  v52 = v5;
  v7 = [v2 topAnchor];
  v8 = [v1 topAnchor];
  v9 = sub_1A211AAD0(v7, v8);
  v51 = v10;

  v50 = v9;
  v11 = [v2 bottomAnchor];
  v12 = [v1 bottomAnchor];
  v13 = sub_1A211AAD0(v11, v12);
  v49 = v14;

  v48 = v13;
  v15 = [v2 widthAnchor];
  sub_1A2115288(0, &qword_1ED94EA58);
  v16 = [v1 widthAnchor];
  v17 = sub_1A2257D08(v16);
  v19 = v18;
  v21 = v20;

  v22 = sub_1A2257730(v15, v17, v19, v21);
  v45 = v23;

  v24 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];

  v44 = v22;
  v25 = [v24 leadingAnchor];
  v26 = [v2 trailingAnchor];
  v27 = sub_1A211AAD0(v25, v26);
  v43 = v28;

  v40 = v27;
  v29 = [v24 topAnchor];
  v30 = [v1 topAnchor];
  v31 = sub_1A211AAD0(v29, v30);
  v42 = v32;

  v41 = v31;
  v33 = [v24 trailingAnchor];
  v34 = [v1 trailingAnchor];
  v46 = sub_1A211AAD0(v33, v34);
  v36 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A230CE20;
  *(v37 + 56) = &type metadata for Constraint;
  *(v37 + 64) = &off_1F14441B0;
  *(v37 + 32) = v52;
  *(v37 + 40) = v53;
  *(v37 + 96) = &type metadata for Constraint;
  *(v37 + 104) = &off_1F14441B0;
  *(v37 + 72) = v50;
  *(v37 + 80) = v51;
  *(v37 + 136) = &type metadata for Constraint;
  *(v37 + 144) = &off_1F14441B0;
  *(v37 + 112) = v48;
  *(v37 + 120) = v49;
  *(v37 + 176) = &type metadata for Constraint;
  *(v37 + 184) = &off_1F14441B0;
  *(v37 + 152) = v44;
  *(v37 + 160) = v45;
  *(v37 + 216) = &type metadata for Constraint;
  *(v37 + 224) = &off_1F14441B0;
  *(v37 + 192) = v40;
  *(v37 + 200) = v43;
  *(v37 + 256) = &type metadata for Constraint;
  *(v37 + 264) = &off_1F14441B0;
  *(v37 + 232) = v41;
  *(v37 + 240) = v42;
  *(v37 + 296) = &type metadata for Constraint;
  *(v37 + 304) = &off_1F14441B0;
  *(v37 + 272) = v46;
  *(v37 + 280) = v36;

  v38 = v46;
  v47 = sub_1A211AB54(v37);

  return v47;
}

void (*sub_1A22763D8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

uint64_t sub_1A227646C()
{
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1A22764B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A221C278();

  return sub_1A221CB68(v2, a1);
}

double sub_1A22764F0@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v7 = v1[2];
  v8 = v3;
  v9[0] = v1[4];
  *(v9 + 9) = *(v1 + 73);
  sub_1A221CB68(&v7, v6);
  v4 = v8;
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v9[0];
  result = *(v9 + 9);
  *(a1 + 41) = *(v9 + 9);
  return result;
}

uint64_t sub_1A2276574(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v15[0] = v1[2];
  v15[1] = v3;
  v16[0] = v1[4];
  *(v16 + 9) = *(v1 + 73);
  v4 = a1[1];
  v1[2] = *a1;
  v1[3] = v4;
  v1[4] = a1[2];
  *(v1 + 73) = *(a1 + 41);
  v5 = sub_1A2248550(v15);
  result = (*(*v1 + 112))(v5);
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = v1[3];
    v13[0] = v1[2];
    v13[1] = v10;
    v14[0] = v1[4];
    *(v14 + 9) = *(v1 + 73);
    v11 = *(v8 + 16);
    sub_1A221CB68(v13, v12);
    v11(v13, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1A2248550(v13);
  }

  return result;
}

void (*sub_1A2276694(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  return sub_1A2276710;
}

void sub_1A2276710(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0 && (*(**(v3 + 16) + 112))(v4))
  {
    v6 = v5;
    v7 = *(v3 + 16);
    ObjectType = swift_getObjectType();
    v10 = v7[3];
    v9 = v7[4];
    v11 = v7[2];
    *(v3 + 41) = *(v7 + 73);
    *v3 = v11;
    *(v3 + 1) = v10;
    *(v3 + 2) = v9;
    v12 = *(v6 + 16);
    sub_1A221CB68(v3, (v3 + 64));
    v12(v3, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1A2248550(v3);
  }

  free(v3);
}

void *sub_1A22767F8(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A2277274(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_1A2276854(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2277274(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A2276888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for RoutePickerSnapshot(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-v9];
  v11 = v0[13];
  ObjectType = swift_getObjectType();
  (*(v11 + 16))(ObjectType, v11);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A2277380(v3);
    v13 = sub_1A221C278();
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    v16 = *v13;
    *&v22[9] = *(v13 + 41);
    v21[0] = v16;
    v21[1] = v15;
    *v22 = v14;
    v17 = *(*v0 + 152);
    sub_1A221CB68(v21, v20);
    return v17(v21);
  }

  else
  {
    sub_1A223CCFC(v3, v10);
    sub_1A22570C4(v10, v8);
    v19 = sub_1A22C17EC(v8, v21);
    (*(*v0 + 152))(v21, v19);
    return sub_1A2257128(v10);
  }
}

uint64_t sub_1A2276AB4()
{
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_1A2276B10(uint64_t a1)
{
  v3 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  return (*(v3 + 80))(a1, ObjectType, v3);
}

uint64_t sub_1A2276B68()
{
  v1 = v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    v10 = sub_1A22E7388();
    v12 = sub_1A2103450(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_beginAccess();

    v13 = sub_1A22E6938();
    v15 = v14;

    v16 = sub_1A2103450(v13, v15, &v23);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] Updating expandedSessionIdentifiers=%s", v9, 0x16u);
    v17 = v22;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v17, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  return (*(v18 + 32))(ObjectType, v18);
}

uint64_t sub_1A2276E40(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;

  return sub_1A2276B68();
}

uint64_t (*sub_1A2276E8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2276EE0;
}

uint64_t sub_1A2276EE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A2276B68();
  }

  return result;
}

uint64_t sub_1A2276F14()
{
  sub_1A210DA3C(v0 + 16);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  sub_1A221467C(v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A2276F8C()
{
  sub_1A210DA3C(v0 + 16);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  sub_1A221467C(v1, v2);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1A227701C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 112))(v4))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
    return (*(v14 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69AE580];
    v12 = *(v14 + 104);

    return v12(a1, v11, v3);
  }
}

uint64_t sub_1A22771C4()
{
  result = (*(*v0 + 112))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A2277274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_1A221C278();
  v8 = *(v6 + 1);
  v7 = *(v6 + 2);
  v9 = *v6;
  *&v18[9] = *(v6 + 41);
  v17[1] = v8;
  *v18 = v7;
  v17[0] = v9;
  memmove(v3 + 4, v6, 0x39uLL);
  v10 = MEMORY[0x1E69E7CD0];
  v3[13] = a2;
  v3[14] = v10;
  v3[12] = a1;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 56);
  sub_1A221CB68(v17, &v16);
  swift_unknownObjectRetain();

  v12(v13, &off_1F1440298, ObjectType, a2);

  (*(*v3 + 176))(v14);
  return v3;
}

uint64_t sub_1A2277380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22773E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2104EA0();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = a3;
    v33 = v17;
    v30 = v17;
    *v16 = 136315138;
    v18 = sub_1A22E7388();
    v20 = a1;
    v21 = a2;
    v22 = sub_1A2103450(v18, v19, &v33);

    *(v16 + 4) = v22;
    a2 = v21;
    a1 = v20;
    _os_log_impl(&dword_1A20FC000, v13, v14, "[%s] requestsToPresent dialog", v16, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v24 = v23;
    a3 = v32;
    MEMORY[0x1A58DCD00](v24, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);

    v25 = (*(v9 + 8))(v11, v31);
  }

  else
  {

    v25 = (*(v9 + 8))(v11, v8);
  }

  result = (*(*v4 + 112))(v25);
  if (result)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(a1, a2, a3, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2277678()
{
  v1 = *v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 112))(v4))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = sub_1A2104EA0();
  (*(v3 + 16))(v6, v10, v2);
  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A58();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] controllerRequestsToPresentAudioSharingUI", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1A58DCD00](v14, -1, -1);
    MEMORY[0x1A58DCD00](v13, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A22778E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 56);
  v5 = *(a3 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  return v5(&v7);
}

uint64_t sub_1A22779A8()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 sub_1A22779D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 96) = a2;
  *(a4 + 104) = a3;
  return result;
}

double sub_1A22779F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = a1;
  *(a3 + 104) = a2;
  return result;
}

double sub_1A2277A10@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A2277A30(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1A227BFF8(v13, v14) & 1;
}

uint64_t sub_1A2277A98()
{
  if (qword_1ED952040 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED9533E8;
  v2[3] = *&qword_1ED9533F8;
  v2[4] = xmmword_1ED953408;
  v2[5] = *&qword_1ED953418;
  v2[0] = xmmword_1ED9533C8;
  v2[1] = *algn_1ED9533D8;
  xmmword_1ED953068 = xmmword_1ED9533E8;
  unk_1ED953078 = *&qword_1ED9533F8;
  xmmword_1ED953088 = xmmword_1ED953408;
  unk_1ED953098 = *&qword_1ED953418;
  xmmword_1ED953048 = xmmword_1ED9533C8;
  unk_1ED953058 = *algn_1ED9533D8;
  qword_1ED9530A8 = 0x6C69662E79616C70;
  unk_1ED9530B0 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277B40()
{
  if (qword_1ED952040 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9533C8;
}

uint64_t sub_1A2277BB4()
{
  if (qword_1ED952038 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953388;
  v2[3] = *&qword_1ED953398;
  v2[4] = xmmword_1ED9533A8;
  v2[5] = *&qword_1ED9533B8;
  v2[0] = xmmword_1ED953368;
  v2[1] = *algn_1ED953378;
  xmmword_1ED952FF8 = xmmword_1ED953388;
  unk_1ED953008 = *&qword_1ED953398;
  xmmword_1ED953018 = xmmword_1ED9533A8;
  unk_1ED953028 = *&qword_1ED9533B8;
  xmmword_1ED952FD8 = xmmword_1ED953368;
  unk_1ED952FE8 = *algn_1ED953378;
  qword_1ED953038 = 0x69662E6573756170;
  unk_1ED953040 = 0xEA00000000006C6CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277C5C()
{
  if (qword_1ED952038 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953368;
}

__int128 *sub_1A2277CAC()
{
  if (qword_1ED951298 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952FD8;
}

uint64_t sub_1A2277D20()
{
  if (qword_1EB08E1C0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EB0915F8;
  v2[3] = *&qword_1EB091608;
  v2[4] = xmmword_1EB091618;
  v2[5] = *&qword_1EB091628;
  v2[0] = xmmword_1EB0915D8;
  v2[1] = *algn_1EB0915E8;
  xmmword_1EB0914A8 = xmmword_1EB0915F8;
  unk_1EB0914B8 = *&qword_1EB091608;
  xmmword_1EB0914C8 = xmmword_1EB091618;
  unk_1EB0914D8 = *&qword_1EB091628;
  xmmword_1EB091488 = xmmword_1EB0915D8;
  unk_1EB091498 = *algn_1EB0915E8;
  qword_1EB0914E8 = 0x6C69662E706F7473;
  unk_1EB0914F0 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277DC8()
{
  if (qword_1EB08E1C0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0915D8;
}

__int128 *sub_1A2277E18()
{
  if (qword_1EB08E1A0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091488;
}

uint64_t sub_1A2277E8C()
{
  if (qword_1ED952018 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED9532C8;
  v2[3] = unk_1ED9532D8;
  v2[4] = xmmword_1ED9532E8;
  v2[5] = unk_1ED9532F8;
  v2[0] = xmmword_1ED9532A8;
  v2[1] = unk_1ED9532B8;
  xmmword_1ED952F18 = xmmword_1ED9532C8;
  unk_1ED952F28 = unk_1ED9532D8;
  xmmword_1ED952F38 = xmmword_1ED9532E8;
  unk_1ED952F48 = unk_1ED9532F8;
  xmmword_1ED952EF8 = xmmword_1ED9532A8;
  unk_1ED952F08 = unk_1ED9532B8;
  strcpy(&qword_1ED952F58, "backward.fill");
  unk_1ED952F66 = -4864;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277F3C()
{
  if (qword_1ED952018 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9532A8;
}

uint64_t sub_1A2277FB0()
{
  if (qword_1ED952050 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953448;
  v2[3] = unk_1ED953458;
  v2[4] = xmmword_1ED953468;
  v2[5] = unk_1ED953478;
  v2[0] = xmmword_1ED953428;
  v2[1] = unk_1ED953438;
  xmmword_1ED9530D8 = xmmword_1ED953448;
  unk_1ED9530E8 = unk_1ED953458;
  xmmword_1ED9530F8 = xmmword_1ED953468;
  unk_1ED953108 = unk_1ED953478;
  xmmword_1ED9530B8 = xmmword_1ED953428;
  unk_1ED9530C8 = unk_1ED953438;
  strcpy(&qword_1ED953118, "forward.fill");
  unk_1ED953125 = 0;
  unk_1ED953126 = -5120;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A227805C()
{
  if (qword_1ED952050 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953428;
}

uint64_t sub_1A22780D0()
{
  if (qword_1ED952028 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953328;
  v2[3] = unk_1ED953338;
  v2[4] = xmmword_1ED953348;
  v2[5] = unk_1ED953358;
  v2[0] = xmmword_1ED953308;
  v2[1] = unk_1ED953318;
  xmmword_1ED952F88 = xmmword_1ED953328;
  unk_1ED952F98 = unk_1ED953338;
  xmmword_1ED952FA8 = xmmword_1ED953348;
  unk_1ED952FB8 = unk_1ED953358;
  xmmword_1ED952F68 = xmmword_1ED953308;
  unk_1ED952F78 = unk_1ED953318;
  qword_1ED952FC8 = 1918989427;
  unk_1ED952FD0 = 0xE400000000000000;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A227816C()
{
  if (qword_1ED952028 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953308;
}

__int128 *sub_1A22781BC()
{
  if (qword_1ED951288 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952F68;
}

uint64_t sub_1A2278230()
{
  if (qword_1EB08E1D0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EB091658;
  v2[3] = unk_1EB091668;
  v2[4] = xmmword_1EB091678;
  v2[5] = unk_1EB091688;
  v2[0] = xmmword_1EB091638;
  v2[1] = unk_1EB091648;
  xmmword_1EB091518 = xmmword_1EB091658;
  unk_1EB091528 = unk_1EB091668;
  xmmword_1EB091538 = xmmword_1EB091678;
  unk_1EB091548 = unk_1EB091688;
  xmmword_1EB0914F8 = xmmword_1EB091638;
  unk_1EB091508 = unk_1EB091648;
  qword_1EB091558 = 0x6C69662E72617473;
  unk_1EB091560 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A22782D8()
{
  if (qword_1EB08E1D0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091638;
}

__int128 *sub_1A2278328()
{
  if (qword_1EB08E1B0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0914F8;
}

double sub_1A227839C()
{
  result = 0.0;
  xmmword_1EB0915A8 = 0u;
  unk_1EB0915B8 = 0u;
  xmmword_1EB091588 = 0u;
  unk_1EB091598 = 0u;
  xmmword_1EB091568 = 0u;
  unk_1EB091578 = 0u;
  qword_1EB0915C8 = 0xD000000000000012;
  unk_1EB0915D0 = 0x80000001A23050D0;
  return result;
}

__int128 *sub_1A22783D4()
{
  if (qword_1EB08E1B8 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091568;
}

uint64_t sub_1A2278448@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1A213045C(a2, v4);
}

uint64_t sub_1A22784A4(unsigned __int8 a1)
{
  v1 = 0x7375615079616C50;
  v2 = 1885956947;
  v3 = 0x656D756C6F56;
  if (a1 != 3)
  {
    v3 = 0x657469726F766146;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x4264726177726F46;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A227854C()
{
  sub_1A22E72A8();
  sub_1A22E6658();

  return sub_1A22E72F8();
}

uint64_t sub_1A227863C()
{
  sub_1A22E6658();
}

uint64_t sub_1A2278718()
{
  sub_1A22E72A8();
  sub_1A22E6658();

  return sub_1A22E72F8();
}

uint64_t sub_1A2278804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A227CAB0();
  *a1 = result;
  return result;
}

void sub_1A2278834(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000706F745365;
  v4 = 0x7375615079616C50;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xE600000000000000;
  v8 = 0x656D756C6F56;
  if (v2 != 3)
  {
    v8 = 0x657469726F766146;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4264726177726F46;
    v3 = 0xEF647261776B6361;
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

uint64_t sub_1A22788E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 != a5 || a2 != a6) && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  return sub_1A22E7338();
}

uint64_t sub_1A227896C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a2 + 56;
    for (i = a1 + 56; ; i += 32)
    {
      v5 = *(i - 24) == *(v3 - 24) && *(i - 16) == *(v3 - 16);
      if (!v5 && (sub_1A22E71E8() & 1) == 0 || (sub_1A22E7338() & 1) == 0)
      {
        break;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1A2278A28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v6 = v3 == *a2 && *(a1 + 8) == *(a2 + 8);
      if (v6 || (sub_1A22E71E8()) && (sub_1A22E7338())
      {
        return 1;
      }
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;

  return sub_1A227896C(v3, v4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A2278AF0()
{

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v0 = sub_1A22E7328();
  MEMORY[0x1A58DA8D0](v0);
}

uint64_t sub_1A2278B64(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  return sub_1A22E7338();
}

uint64_t sub_1A2278BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A2278C10(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A2278CDC()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1A2278D0C()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1A2278D58()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1A2278D88(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

id sub_1A2278DC0()
{
  v2 = sub_1A22E5678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2115288(0, &qword_1ED94E938);
  result = sub_1A2209334();
  if (!v1)
  {
    if (result)
    {
      v7 = *(v0 + 80);
      v8 = result;
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 currentLocale];
      sub_1A22E5658();

      v7(v10, v5);
      (*(v3 + 8))(v5, v2);
      return v8;
    }
  }

  return result;
}

__n128 sub_1A2278FE4@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  v11 = *(a2 + 16);
  *(a9 + 8) = *a2;
  result = a10;
  v13 = *(a2 + 32) & 1;
  *a9 = a1;
  *(a9 + 24) = v11;
  *(a9 + 40) = v13;
  *(a9 + 41) = a3;
  *(a9 + 42) = a4;
  *(a9 + 43) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  return result;
}

uint64_t sub_1A2279034(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1A227CAFC(v9, v10) & 1;
}

uint64_t sub_1A2279094()
{
  v0 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A22E6588();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-v6 - 7];
  sub_1A22E6578();
  v8 = sub_1A22E7348();
  v10 = v9;
  (*(v2 + 16))(v5, v7, v1);
  v11 = *sub_1A21268A4();
  sub_1A22E5668();
  v12 = sub_1A22E6628();
  v14 = v13;
  result = (*(v2 + 8))(v7, v1);
  LOBYTE(xmmword_1ED9533C8) = 0;
  *(&xmmword_1ED9533C8 + 1) = *v17;
  DWORD1(xmmword_1ED9533C8) = *&v17[3];
  *(&xmmword_1ED9533C8 + 8) = xmmword_1A230D030;
  qword_1ED9533E0 = v8;
  *&xmmword_1ED9533E8 = v10;
  BYTE8(xmmword_1ED9533E8) = 0;
  *(&xmmword_1ED9533E8 + 9) = 256;
  BYTE11(xmmword_1ED9533E8) = 1;
  qword_1ED9533F8 = v12;
  unk_1ED953400 = v14;
  strcpy(&xmmword_1ED953408, "PlayPauseStop");
  HIWORD(xmmword_1ED953408) = -4864;
  qword_1ED953418 = nullsub_1;
  unk_1ED953420 = 0;
  return result;
}

uint64_t sub_1A2279308()
{
  v0 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A22E6588();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-v6 - 7];
  sub_1A22E6578();
  v8 = sub_1A22E7348();
  v10 = v9;
  (*(v2 + 16))(v5, v7, v1);
  v11 = *sub_1A21268A4();
  sub_1A22E5668();
  v12 = sub_1A22E6628();
  v14 = v13;
  result = (*(v2 + 8))(v7, v1);
  LOBYTE(xmmword_1ED953368) = 0;
  *(&xmmword_1ED953368 + 1) = *v17;
  DWORD1(xmmword_1ED953368) = *&v17[3];
  *(&xmmword_1ED953368 + 8) = xmmword_1A230D040;
  qword_1ED953380 = v8;
  *&xmmword_1ED953388 = v10;
  BYTE8(xmmword_1ED953388) = 0;
  *(&xmmword_1ED953388 + 9) = 256;
  BYTE11(xmmword_1ED953388) = 1;
  qword_1ED953398 = v12;
  unk_1ED9533A0 = v14;
  strcpy(&xmmword_1ED9533A8, "PlayPauseStop");
  HIWORD(xmmword_1ED9533A8) = -4864;
  qword_1ED9533B8 = nullsub_1;
  unk_1ED9533C0 = 0;
  return result;
}

uint64_t sub_1A2279580()
{
  v0 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A22E6588();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-v6 - 7];
  sub_1A22E6578();
  v8 = sub_1A22E7348();
  v10 = v9;
  (*(v2 + 16))(v5, v7, v1);
  v11 = *sub_1A21268A4();
  sub_1A22E5668();
  v12 = sub_1A22E6628();
  v14 = v13;
  result = (*(v2 + 8))(v7, v1);
  LOBYTE(xmmword_1EB0915D8) = 0;
  *(&xmmword_1EB0915D8 + 1) = *v17;
  DWORD1(xmmword_1EB0915D8) = *&v17[3];
  *(&xmmword_1EB0915D8 + 8) = xmmword_1A230D050;
  qword_1EB0915F0 = v8;
  *&xmmword_1EB0915F8 = v10;
  BYTE8(xmmword_1EB0915F8) = 0;
  *(&xmmword_1EB0915F8 + 9) = 256;
  BYTE11(xmmword_1EB0915F8) = 1;
  qword_1EB091608 = v12;
  unk_1EB091610 = v14;
  strcpy(&xmmword_1EB091618, "PlayPauseStop");
  HIWORD(xmmword_1EB091618) = -4864;
  qword_1EB091628 = nullsub_1;
  unk_1EB091630 = 0;
  return result;
}

double sub_1A22797F4()
{
  v0 = sub_1A22E6588();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E6578();
  sub_1A227C544(0, v3, v5);
  (*(v1 + 8))(v3, v0);
  xmmword_1ED9532C8 = v5[2];
  unk_1ED9532D8 = v5[3];
  xmmword_1ED9532E8 = v5[4];
  unk_1ED9532F8 = v5[5];
  result = *v5;
  xmmword_1ED9532A8 = v5[0];
  unk_1ED9532B8 = v5[1];
  return result;
}

double sub_1A2279920()
{
  v0 = sub_1A22E6588();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E6578();
  sub_1A227C544(1, v3, v5);
  (*(v1 + 8))(v3, v0);
  xmmword_1ED953448 = v5[2];
  unk_1ED953458 = v5[3];
  xmmword_1ED953468 = v5[4];
  unk_1ED953478 = v5[5];
  result = *v5;
  xmmword_1ED953428 = v5[0];
  unk_1ED953438 = v5[1];
  return result;
}

double sub_1A2279A44()
{
  v0 = sub_1A22E6588();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E6578();
  sub_1A227C7E0(6710863, 0xE300000000000000, v3, v5);
  (*(v1 + 8))(v3, v0);
  xmmword_1ED953328 = v5[2];
  unk_1ED953338 = v5[3];
  xmmword_1ED953348 = v5[4];
  unk_1ED953358 = v5[5];
  result = *v5;
  xmmword_1ED953308 = v5[0];
  unk_1ED953318 = v5[1];
  return result;
}

double sub_1A2279B78()
{
  v0 = sub_1A22E6588();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E6578();
  sub_1A227C7E0(28239, 0xE200000000000000, v3, v5);
  (*(v1 + 8))(v3, v0);
  xmmword_1EB091658 = v5[2];
  unk_1EB091668 = v5[3];
  xmmword_1EB091678 = v5[4];
  unk_1EB091688 = v5[5];
  result = *v5;
  xmmword_1EB091638 = v5[0];
  unk_1EB091648 = v5[1];
  return result;
}

uint64_t sub_1A2279CAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1A2116FC8(a2, v4);
}

double sub_1A2279D04@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3 = round(a2);
  if (v3 == -1.0)
  {
    if (qword_1EB08E1E8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB08E1F0;
    v5 = swift_allocObject();
    v6 = 0;
    *(v5 + 16) = v4;
    v21 = sub_1A227EA68;
    v22 = v5;
    v23 = 0;
LABEL_5:
    v7 = 1;
    goto LABEL_23;
  }

  if (v3 == -5.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 5;
    *(v8 + 16) = 5;
    *(v8 + 24) = 0;
LABEL_22:
    v21 = sub_1A227EA6C;
    v22 = v8;
    v23 = 0;
    goto LABEL_23;
  }

  if (v3 == -10.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 10;
    *(v8 + 16) = 10;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -15.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 15;
    *(v8 + 16) = 15;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -30.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 30;
    *(v8 + 16) = 30;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -45.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 45;
    *(v8 + 16) = 45;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -60.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 60;
    *(v8 + 16) = 60;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -75.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 75;
    *(v8 + 16) = 75;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 == -90.0)
  {
    v8 = swift_allocObject();
    v7 = 0;
    v6 = 90;
    *(v8 + 16) = 90;
    *(v8 + 24) = 0;
    goto LABEL_22;
  }

  if (v3 != 1.0)
  {
    if (v3 == 5.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 5;
      *(v15 + 16) = 5;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 10.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 10;
      *(v15 + 16) = 10;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 15.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 15;
      *(v15 + 16) = 15;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 30.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 30;
      *(v15 + 16) = 30;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 45.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 45;
      *(v15 + 16) = 45;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 60.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 60;
      *(v15 + 16) = 60;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else if (v3 == 75.0)
    {
      v15 = swift_allocObject();
      v7 = 0;
      v6 = 75;
      *(v15 + 16) = 75;
      *(v15 + 24) = 1;
      v16 = sub_1A227EA6C;
    }

    else
    {
      if (v3 != 90.0)
      {
        if (a2 <= 0.0)
        {
          if (qword_1EB08E1E8 != -1)
          {
            swift_once();
          }

          v17 = &qword_1EB08E1F0;
        }

        else
        {
          if (qword_1EB08E1D8 != -1)
          {
            swift_once();
          }

          v17 = &qword_1EB08E1E0;
        }

        v18 = *v17;
        v19 = swift_allocObject();
        v6 = 0;
        *(v19 + 16) = v18;
        v21 = sub_1A222D0AC;
        v22 = v19;
        v23 = a2 > 0.0;
        goto LABEL_5;
      }

      v15 = swift_allocObject();
      v7 = 0;
      v6 = 90;
      *(v15 + 16) = 90;
      *(v15 + 24) = 1;
      v16 = sub_1A227D17C;
    }

    v21 = v16;
    v22 = v15;
    v23 = 1;
    goto LABEL_23;
  }

  if (qword_1EB08E1D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB08E1E0;
  v14 = swift_allocObject();
  v6 = 0;
  *(v14 + 16) = v13;
  v21 = sub_1A227EA68;
  v22 = v14;
  v7 = 1;
  v23 = 1;
LABEL_23:
  v24 = v6;
  v25 = v7;
  sub_1A227CD5C(&v21, v26);

  v9 = v26[3];
  a1[2] = v26[2];
  a1[3] = v9;
  v10 = v26[5];
  a1[4] = v26[4];
  a1[5] = v10;
  result = *v26;
  v12 = v26[1];
  *a1 = v26[0];
  a1[1] = v12;
  return result;
}
char *sub_249EB5838(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    [v1 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() blackColor];
    v14 = [v13 CGColor];

    v15 = objc_allocWithZone(type metadata accessor for DropletEffectView());
    v16 = v1;
    v17 = sub_249EB7B34(0x3FE0000000000000, 0, 0, 0, v14, v6, v8, v10, v12);
    v18 = *&v1[v2];
    *&v16[v2] = v17;
    v4 = v17;

    v3 = 0;
  }

  v19 = v3;
  return v4;
}

id sub_249EB5940()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for BlurredView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_249EB59F4()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView];
  }

  else
  {
    if (qword_281252E80 != -1)
    {
      swift_once();
    }

    v4 = qword_281253438;
    [v0 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for DropletEffectView());
    v14 = v4;
    v15 = v0;
    v16 = sub_249EB7B34(0x3FE0000000000000, 0x3FE0000000000000, 0x3FDF5C28F5C28F5CLL, 1, v14, v6, v8, v10, v12);
    v17 = *&v0[v1];
    *&v15[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

void sub_249EB5B0C()
{
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes];
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = *(v2 + 56) + 88 * (__clz(__rbit64(v5)) | (v9 << 6));
    v11 = *(v10 + 16);
    v46 = *v10;
    v47 = v11;
    v13 = *(v10 + 48);
    v12 = *(v10 + 64);
    v14 = *(v10 + 32);
    v51 = *(v10 + 80);
    v49 = v13;
    v50 = v12;
    v48 = v14;
    if (v51 != 1)
    {
LABEL_16:

      v22 = 1;
      goto LABEL_18;
    }

    v5 &= v5 - 1;
    v15 = v46;
    if (!v46)
    {
      goto LABEL_4;
    }

    v16 = objc_opt_self();
    v17 = v46;
    v18 = [v16 clearColor];
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = v18;
    sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
    v20 = v46;
    v21 = sub_249ED6D80();
    sub_249EB73F4(&v46);

    if (v21)
    {
LABEL_4:
      sub_249EB73F4(&v46);
    }

    else
    {
LABEL_15:
      *&v44 = 0;
      [v15 getRed:0 green:0 blue:0 alpha:&v44];
      sub_249EB73F4(&v46);
      if (*&v44 != 0.0)
      {
        goto LABEL_16;
      }
    }

    v8 = v9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_18:
  v23 = [objc_opt_self() rootSettings];
  v24 = [v23 suppressCompositingFilterMultiply];

  if ((v24 & 1) == 0 && ((v22 & 1) != 0 || *&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth] != 0.0 || *&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth + 8] != 0.0))
  {
    v30 = sub_249EB582C();
    v31 = [v30 isHidden];

    if (v31)
    {
      [*&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] setHidden_];
    }

    v32 = *MEMORY[0x277CDA5A0];
    v33 = sub_249ED6C70();
    v35 = v34;
    v36 = v32;
    v37 = [v1 layer];
    v38 = [v37 compositingFilter];

    if (v38)
    {
      sub_249ED6D90();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v42 == v33 && v43 == v35)
        {

          goto LABEL_42;
        }

        v41 = sub_249ED6ED0();

        if (v41)
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:
        v39 = [v1 layer];
        [v39 setCompositingFilter_];

        goto LABEL_41;
      }
    }

    else
    {
      sub_249EB371C(&v46, &unk_27EF299E0, &qword_249ED8EB0);
    }

    goto LABEL_40;
  }

  v25 = sub_249EB582C();
  v26 = [v25 isHidden];

  if ((v26 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] setHidden_];
  }

  v27 = [v1 layer];
  v28 = [v27 compositingFilter];

  if (v28)
  {
    sub_249ED6D90();
    swift_unknownObjectRelease();
    sub_249EB371C(&v46, &unk_27EF299E0, &qword_249ED8EB0);
    v29 = [v1 layer];
    [v29 setCompositingFilter_];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    sub_249EB371C(&v46, &unk_27EF299E0, &qword_249ED8EB0);
  }

LABEL_42:
  v40 = *MEMORY[0x277D85DE8];
}

void sub_249EB6040()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
          return;
        }

        if (v7 >= v6)
        {
          break;
        }

        v5 = *(v2 + 64 + 8 * v7);
        ++v1;
        if (v5)
        {
          v1 = v7;
          goto LABEL_10;
        }
      }

      v13 = sub_249EB59F4();
      [v13 alpha];
      v15 = v14;

      v12 = 0.0;
      if (v15 != 1.0)
      {
        return;
      }

      goto LABEL_14;
    }

    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (*(*(v2 + 56) + 88 * (v8 | (v7 << 6)) + 80) != 2);
  v9 = sub_249EB59F4();
  [v9 alpha];
  v11 = v10;

  v12 = 1.0;
  if (v11 != 0.0)
  {
    return;
  }

LABEL_14:
  v16 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView);

  [v16 setAlpha_];
}

void sub_249EB6188()
{
  v1 = v0;
  v2 = sub_249EB5820();
  v3 = v2;
  v4 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters;
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  v6 = v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v5;
  if (v5 != v6)
  {
    sub_249EB8B98(*&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v7 = sub_249EB582C();
  v8 = v7;
  v9 = *(v1 + v4);
  v10 = v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v9;
  if (v9 != v10)
  {
    sub_249EB8B98(*&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v11 = sub_249EB59F4();
  v12 = v11;
  v13 = *(v1 + v4);
  v14 = v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v13;
  if (v13 != v14)
  {
    sub_249EB8B98(*&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v15 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView);
  v16 = *(v1 + v4);
  v17 = *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v16;
  if (v16 != v17)
  {
    v18 = *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = 1.0;
    if (v19)
    {
      v20 = 0.0;
    }

    [v18 setValue_];
  }

  v21 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView);
  v22 = *(v1 + v4);
  v23 = *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v22;
  if (v22 != v23)
  {
    v24 = *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v25 = 1;
    }

    else
    {
      v25 = v22;
    }

    v26 = 1.0;
    if (v25)
    {
      v26 = 0.0;
    }

    [v24 setValue_];
  }

  v27 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView);
  v28 = *(v1 + v4);
  v29 = *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v28;
  if (v28 != v29)
  {
    v30 = *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v31 = 1;
    }

    else
    {
      v31 = v28;
    }

    v32 = 1.0;
    if (v31)
    {
      v32 = 0.0;
    }

    [v30 setValue_];
  }
}

uint64_t sub_249EB63C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes);
}

id sub_249EB6434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletGroupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249EB6508(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = *(a1 + 56) + 88 * v12;
    v15 = *(v14 + 16);
    v42 = *v14;
    v43 = v15;
    v16 = *(v14 + 80);
    v18 = *(v14 + 48);
    v17 = *(v14 + 64);
    v44 = *(v14 + 32);
    v45 = v18;
    v46 = v17;
    v47 = v16;
    v33 = v18;
    v34 = v15;
    v31 = v44;
    v32 = v42;
    v19 = v17;
    sub_249EB0270(&v42, &v36);
    if (v16 == 255)
    {
      return 1;
    }

    v42 = v32;
    v43 = v34;
    v44 = v31;
    v45 = v33;
    v46 = v19;
    v47 = v16;
    v20 = sub_249EAE454(v13);
    if ((v21 & 1) == 0)
    {
      goto LABEL_52;
    }

    v22 = *(a2 + 56) + 88 * v20;
    v23 = *(v22 + 16);
    v36 = *v22;
    v37 = v23;
    v24 = *(v22 + 80);
    v26 = *(v22 + 48);
    v25 = *(v22 + 64);
    v38 = *(v22 + 32);
    v39 = v26;
    v40 = v25;
    v41 = v24;
    if (!v24)
    {
      if (v47)
      {
        goto LABEL_52;
      }

      if (*&v42 != COERCE_FLOAT(v36 | (BYTE1(v36) << 8) | (WORD1(v36) << 16)) || *(&v42 + 1) != *(&v36 + 1) || *(&v42 + 2) != *(&v36 + 2) || *(&v42 + 3) != *(&v36 + 3) || *&v37 != *&v43 || *(&v37 + 1) != *(&v43 + 1) || *(&v37 + 2) != *(&v43 + 2) || *(&v37 + 3) != *(&v43 + 3) || *&v38 != *&v44 || *(&v38 + 1) != *(&v44 + 1) || *(&v38 + 2) != *(&v44 + 2) || *&v39 != *&v45 || *(&v39 + 1) != *(&v45 + 1) || *(&v39 + 2) != *(&v45 + 2) || *(&v39 + 3) != *(&v45 + 3) || *(&v40 + 1) != *(&v46 + 1) || *(&v40 + 2) != *(&v46 + 2) || *(&v40 + 3) != *(&v46 + 3))
      {
        return 0;
      }

      goto LABEL_46;
    }

    if (v24 == 1)
    {
      if (v47 != 1)
      {
        goto LABEL_52;
      }

      if (v36 | (BYTE1(v36) << 8) | (WORD1(v36) << 16) | (DWORD1(v36) << 32))
      {
        if (!v42)
        {
          return 0;
        }

        sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
        sub_249EB0270(&v36, v35);
        sub_249EB0270(&v42, v35);
        v27 = sub_249ED6D80();
        sub_249EB73F4(&v42);
        sub_249EB73F4(&v36);
        sub_249EB73F4(&v42);
        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v42)
      {
        goto LABEL_51;
      }

      v28 = v36;
      v7 = v30;
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_52;
      }

      if (((v36 ^ v42) & 1) != 0 || ((BYTE1(v36) ^ BYTE1(v42)) & 1) != 0 || *(&v36 + 1) != *(&v42 + 1))
      {
        return 0;
      }

LABEL_46:
      v7 = v30;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(a1 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_51:
  sub_249EB0270(&v36, v35);
LABEL_52:
  sub_249EB73F4(&v42);
  return 0;
}

double sub_249EB6904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_249EAE454(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_249EAF5B4();
      v11 = v16;
    }

    v12 = *(v11 + 56) + 88 * v8;
    v13 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v13;
    *(a2 + 64) = *(v12 + 64);
    *(a2 + 80) = *(v12 + 80);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    sub_249EB6D24(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 80) = -1;
  }

  return result;
}

uint64_t sub_249EB69C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_249ED6F10();

      sub_249ED6C90();
      v13 = sub_249ED6F30();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_249EB6B74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_249ED6F10();

      sub_249ED6C90();
      v13 = sub_249ED6F30();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_249EB6D24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_249ED6F00();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          result = v17 + 88 * v3;
          v18 = (v17 + 88 * v6);
          if (88 * v3 < (88 * v6) || (result < v18 + 88 ? (v19 = v3 == v6) : (v19 = 0), !v19))
          {
            result = memmove(result, v18, 0x58uLL);
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_249EB6EA4(uint64_t result)
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

  result = sub_249ED5DAC(result, v11, 1, v3);
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

uint64_t sub_249EB6F9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_249ED6E70();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_249ED6E70();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_249EB708C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_249EB712C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_249EB708C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_249ED6E70();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_249ED6DE0();
  *v1 = result;
  return result;
}

uint64_t sub_249EB712C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_249ED6E70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_249ED6E70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_249EB7538();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F8, &unk_249ED8F80);
            v9 = sub_249EB377C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_249EB72C0(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_249EB72E8(void *a1)
{
  v2 = [a1 layer];
  v3 = [a1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  [v2 setRasterizationScale_];
  v6 = sub_249EB582C();
  v10 = [v6 layer];

  v7 = [a1 traitCollection];
  [v7 displayScale];
  v9 = v8;

  [v10 setRasterizationScale_];
}

uint64_t sub_249EB7448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249EB74C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249EB7538()
{
  result = qword_281252D40[0];
  if (!qword_281252D40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF296F8, &unk_249ED8F80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281252D40);
  }

  return result;
}

void sub_249EB759C()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters;
  v2 = [objc_opt_self() rootSettings];
  v3 = [v2 suppressDropletEffectFilters];

  *(v0 + v1) = v3;
  v4 = (v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView) = 0;
  v5 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes;
  *(v0 + v5) = sub_249EB0054(MEMORY[0x277D84F90]);
  sub_249ED6E50();
  __break(1u);
}

void sub_249EB769C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD00000000000001CLL && 0x8000000249ED9710 == a2 || (sub_249ED6ED0() & 1) != 0)
    {

      sub_249EB6188();
    }

    else if (a1 == 0xD000000000000021 && 0x8000000249ED96B0 == a2 || (sub_249ED6ED0() & 1) != 0)
    {

      sub_249EB5B0C();
    }
  }
}

void sub_249EB778C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v3 = *&v0[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];
  type metadata accessor for CGColor(0);
  sub_249EB9700();
  v4 = v3;
  v5 = sub_249ED6BD0();

  if ((v5 & 1) == 0)
  {
    v6 = v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24];
    v7 = [v1 layer];
    v8 = *&v1[v2];
    if (v6)
    {
      v9 = qword_281252E48;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = &qword_2812533E0;
    }

    else
    {
      v12 = qword_281252E70;
      v13 = v8;
      if (v12 != -1)
      {
        swift_once();
      }

      v11 = &qword_281253420;
    }

    v14 = *v11;
    v15 = v11[1];
    v16 = sub_249ED6C60();
    [v7 setValue:v8 forKeyPath:v16];
  }
}

void sub_249EB791C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke;
  v3 = *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke];
  *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke] = a1;
  if (v3 != a1)
  {
    if ((a1 == 0.0) == (v3 != 0.0))
    {
      v4 = a1 == 0.0;
      v5 = [v1 layer];
      [v5 setBorderPathIsBounds_];
    }

    v6 = [v1 layer];
    [v6 setBorderWidth_];
  }
}

void sub_249EB7A0C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke;
  v3 = *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke];
  *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke] = a1;
  if (v3 != a1)
  {
    if ((a1 == 0.0) == (v3 != 0.0))
    {
      v5 = [v1 layer];
      v6 = v5;
      v7 = a1 == 0.0;
      if (a1 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      [v5 setRimPathIsBounds_];

      v9 = [v1 layer];
      *&v10 = v8;
      [v9 setRimOpacity_];
    }

    v11 = [v1 layer];
    [v11 setRimWidth_];
  }
}

char *sub_249EB7B34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = 0;
  v20 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty;
  *&v9[v20] = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  v21 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v22 = [objc_opt_self() blackColor];
  v23 = [v22 CGColor];

  *&v9[v21] = v23;
  *&v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke] = 0;
  *&v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke] = 0;
  v24 = &v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  *v24 = a1;
  *(v24 + 1) = a2;
  *(v24 + 2) = a3;
  v24[24] = a4 & 1;
  *&v9[v21] = a5;
  v25 = a5;

  v47.receiver = v9;
  v47.super_class = type metadata accessor for DropletEffectView();
  v26 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a6, a7, a8, a9);
  v27 = [v26 layer];
  if (qword_281252E80 != -1)
  {
    swift_once();
  }

  v28 = qword_281253438;
  [v27 setRimColor_];

  v29 = [v26 layer];
  [v29 setBorderColor_];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249ED8CA0;
  v33 = *&v26[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
  *(v32 + 32) = v33;
  sub_249EA1BF8(0, &qword_281252CE0, 0x277D75120);
  v34 = v33;
  v35 = sub_249ED6CC0();

  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = ObjectType;
  v45 = sub_249EB9758;
  v46 = v36;
  v41 = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_249EBF654;
  v44 = &block_descriptor_1;
  v37 = _Block_copy(&v41);

  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = ObjectType;
  v45 = sub_249EB9778;
  v46 = v38;
  v41 = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_249EBF654;
  v44 = &block_descriptor_35;
  v39 = _Block_copy(&v41);

  [v31 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v39);
  _Block_release(v37);

  sub_249EB8B98(0, 0, 0, 255);

  return v26;
}

void sub_249EB7F5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layer];
    [*&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty] value];
    v3 = sub_249ED6D00();
    if (qword_281252E60 != -1)
    {
      swift_once();
    }

    v4 = sub_249ED6C60();
    [v2 setValue:v3 forKeyPath:v4];
  }
}

void sub_249EB8060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty) presentationValue];
    v2 = sub_249ED6D00();
    if (qword_281252E60 != -1)
    {
      swift_once();
    }

    v3 = sub_249ED6C60();
    [v1 _setPresentationValue_forKey_];
  }
}

void sub_249EB8170()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor);
}

id sub_249EB81B0()
{
  [*&v0[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249EB82A8(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252E78 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249EB95E8, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for DropletEffectView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}

uint64_t sub_249EB8428()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DropletEffectView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v2 = [v0 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v3 = sub_249ED6CD0();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C205BD0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for DropletBoundaryView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        [v1 bounds];
        v18 = *(v10 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds);
        *(v10 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds) = v17;
        if (!CGRectEqualToRect(v17, v18))
        {
          memmove(__dst, (v10 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry), 0xD8uLL);
          if (!sub_249EB74B8(__dst))
          {
            v15[10] = __dst[10];
            v15[11] = __dst[11];
            v15[12] = __dst[12];
            v16 = v13;
            v15[6] = __dst[6];
            v15[7] = __dst[7];
            v15[8] = __dst[8];
            v15[9] = __dst[9];
            v15[2] = __dst[2];
            v15[3] = __dst[3];
            v15[4] = __dst[4];
            v15[5] = __dst[5];
            v15[0] = __dst[0];
            v15[1] = __dst[1];
            sub_249ED6410(v15);
          }
        }
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_249EB8694()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 CGColor];

  qword_281253438 = v1;
}

uint64_t sub_249EB86F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249ED8F90;
  if (qword_281252E60 != -1)
  {
    swift_once();
  }

  v1 = *algn_281253408;
  *(v0 + 32) = qword_281253400;
  *(v0 + 40) = v1;
  v2 = qword_281252E68;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_281253418;
  *(v0 + 48) = qword_281253410;
  *(v0 + 56) = v3;
  v4 = qword_281252E70;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_281253428;
  *(v0 + 64) = qword_281253420;
  *(v0 + 72) = v5;
  v6 = qword_281252E30;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_2812533C8;
  *(v0 + 80) = qword_2812533C0;
  *(v0 + 88) = v7;
  v8 = qword_281252E38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_2812533D8;
  *(v0 + 96) = qword_2812533D0;
  *(v0 + 104) = v9;
  v10 = qword_281252E50;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_2812533F8;
  *(v0 + 112) = qword_2812533F0;
  *(v0 + 120) = v11;
  v12 = qword_281252E48;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_2812533E8;
  *(v0 + 128) = qword_2812533E0;
  *(v0 + 136) = v13;
  *(v0 + 144) = 0x68746469576D6972;
  *(v0 + 152) = 0xE800000000000000;
  *(v0 + 160) = 0x6957726564726F62;
  *(v0 + 168) = 0xEB00000000687464;
  *(v0 + 176) = 0x6D695274666F73;
  *(v0 + 184) = 0xE700000000000000;
  qword_281253430 = v0;
}

uint64_t sub_249EB8A04()
{
  sub_249ED6DC0();

  v0 = *MEMORY[0x277CDA258];
  v1 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v1);

  result = MEMORY[0x24C205AA0](0x64656C62616E652ELL, 0xE800000000000000);
  qword_281253400 = 0x2E737265746C6966;
  *algn_281253408 = 0xE800000000000000;
  return result;
}

uint64_t sub_249EB8AEC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5)
{
  v8 = *a2;
  v9 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v9);

  MEMORY[0x24C205AA0](46, 0xE100000000000000);
  v10 = *a3;
  v11 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v11);

  *a4 = 0x2E737265746C6966;
  *a5 = 0xE800000000000000;
  return result;
}

id sub_249EB8B98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = v4;
  v9 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v10 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8];
  v11 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16];
  v12 = v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24];
  if (a4 == -1)
  {
    if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
    {
LABEL_41:
      v36 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v44 = sub_249ED6BC0();
      [v36 setValue:v44 forKeyPath:*MEMORY[0x277CDA360]];

      [v36 setValue:*&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] forKeyPath:*MEMORY[0x277CDA430]];
      [v36 setEnabled_];
      v40 = [v8 layer];
      v45 = [v8 layer];
      v42 = [v45 filters];

      if (!v42)
      {
        v43 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }

      goto LABEL_42;
    }

LABEL_37:
    v36 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v37 = sub_249ED6BC0();
    [v36 setValue:v37 forKeyPath:*MEMORY[0x277CDA360]];

    v38 = sub_249ED6BC0();
    [v36 setValue:v38 forKeyPath:*MEMORY[0x277CDA538]];

    v39 = sub_249ED6BC0();
    [v36 setValue:v39 forKeyPath:*MEMORY[0x277CDA460]];

    [v36 setValue:*&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] forKeyPath:*MEMORY[0x277CDA430]];
    [v36 setEnabled_];
    v40 = [v8 layer];
    v41 = [v8 layer];
    v42 = [v41 filters];

    if (!v42)
    {
      v43 = MEMORY[0x277D84F90];
LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249ED8C90;
      *(inited + 56) = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
      *(inited + 32) = v36;
      *&v51 = v43;
      v47 = v36;
      sub_249EB6EA4(inited);
      v48 = sub_249ED6CC0();

      [v40 setFilters_];

      v35 = *&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
      goto LABEL_45;
    }

LABEL_42:
    v43 = sub_249ED6CD0();

    goto LABEL_44;
  }

  if ((a4 & 1) == 0)
  {
    if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
    {
      v5 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
      if (*&a1 == v9)
      {
        goto LABEL_33;
      }

      v21 = [v4 layer];
      v22 = sub_249ED6BC0();
      if (qword_281252E68 != -1)
      {
        swift_once();
      }

      v23 = &qword_281253410;
      goto LABEL_32;
    }

    v14 = [v4 layer];
    v24 = [v14 filters];
    if (!v24)
    {
      [v14 setFilters_];

      v51 = 0u;
      v52 = 0u;
      goto LABEL_36;
    }

    v25 = v24;
    v15 = sub_249ED6CD0();

    if (v15[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v15[2];
        if (!v26)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_22;
      }

LABEL_50:
      v15 = sub_249ED60A0(v15);
      v26 = v15[2];
      if (!v26)
      {
        goto LABEL_51;
      }

LABEL_22:
      v15[2] = v26 - 1;
      sub_249EA90F4(&v15[4 * v26], &v51);
      v27 = sub_249ED6CC0();

      [v14 setFilters_];

LABEL_36:
      sub_249EAFF5C(&v51);
      goto LABEL_37;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
  {
    v14 = [v4 layer];
    v28 = [v14 filters];
    if (!v28)
    {
      [v14 setFilters_];

      v51 = 0u;
      v52 = 0u;
      goto LABEL_40;
    }

    v11 = MEMORY[0x277D84F70];
    v29 = v28;
    v15 = sub_249ED6CD0();

    if (v15[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v15[2];
        if (v30)
        {
LABEL_27:
          v15[2] = v30 - 1;
          sub_249EA90F4(&v15[4 * v30], &v51);
          v31 = sub_249ED6CC0();

          [v14 setFilters_];

LABEL_40:
          sub_249EAFF5C(&v51);
          goto LABEL_41;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
        goto LABEL_6;
      }

LABEL_52:
      v15 = sub_249ED60A0(v15);
      v30 = v15[2];
      if (v30)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v7 = *&a2;
  v13 = *&a1;
  v5 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8];
  if (*&a1 == v9)
  {
    goto LABEL_7;
  }

  v9 = *&a3;
  v14 = [v4 layer];
  v15 = sub_249ED6BC0();
  if (qword_281252E30 != -1)
  {
    goto LABEL_54;
  }

LABEL_6:
  v16 = sub_249ED6C60();
  [v14 setValue:v15 forKeyPath:v16];

  *&a3 = v9;
LABEL_7:
  v17 = *&a3;
  if (v7 != v6)
  {
    v18 = [v8 layer];
    v19 = sub_249ED6BC0();
    if (qword_281252E38 != -1)
    {
      swift_once();
    }

    v20 = sub_249ED6C60();
    [v18 setValue:v19 forKeyPath:v20];
  }

  if (v17 != v11)
  {
    v21 = [v8 layer];
    v22 = sub_249ED6BC0();
    if (qword_281252E50 != -1)
    {
      swift_once();
    }

    v23 = &qword_2812533F0;
LABEL_32:
    v32 = *v23;
    v33 = v23[1];
    v34 = sub_249ED6C60();
    [v21 setValue:v22 forKeyPath:v34];
  }

LABEL_33:
  v35 = *&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
  if (v5 <= 0.0)
  {
    goto LABEL_46;
  }

LABEL_45:
  v49 = 1.0;
  if (v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] == 1)
  {
LABEL_46:
    v49 = 0.0;
  }

  return [v35 setValue_];
}

uint64_t initializeBufferWithCopyOfBuffer for DropletEffectView.Effect(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DropletEffectView.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for DropletEffectView.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_249EB9580(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v9 = *a1;
      v10 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  v7 = v2 == v3;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v7 = 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v7;
}

void sub_249EB9608()
{
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride) = 0;
  v1 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  *(v0 + v2) = v4;
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke) = 0;
  sub_249ED6E50();
  __break(1u);
}

unint64_t sub_249EB9700()
{
  result = qword_281252D38;
  if (!qword_281252D38)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281252D38);
  }

  return result;
}

void sub_249EB9758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_249EB7F5C();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_249EB9778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_249EB8060();
}

uint64_t sub_249EB98B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_249EB98FC(uint64_t a1, int a2)
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

uint64_t sub_249EB991C(uint64_t result, int a2, int a3)
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

double sub_249EB999C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  a2[1] = result;
  return result;
}

double sub_249EB99B4@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  a2[1] = result;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DRPDropletContextSolidColorKeylineStyle.color.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletContextSolidColorKeylineStyle.color.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletContextSolidColorKeylineStyle.init(width:boundaryFadeLength:color:)(void *a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidth:a1 boundaryFadeLength:a2 color:a3];

  return v4;
}

{
  v5 = [v3 initWithInnerWidth:a1 outerWidth:0.0 keylineOutsets:a2 keylineFadeLengths:-(a2 + a3) color:{-(a2 + a3), -(a2 + a3), -(a2 + a3), *&a3, *&a3, *&a3, *&a3}];

  return v5;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:color:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:a1 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 color:{a5, a6, a7, *&a8, *&a9, a17, a18}];

  return v19;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:color:)(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  v20 = [v18 initWithInnerWidth:a1 outerWidth:*&a15 keylineOutsets:*&a16 keylineFadeLengths:a17 normalizedStartLocation:a18 normalizedStopLocation:0 color:0x3FF0000000000000];

  return v20;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:color:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:a1 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 normalizedStartLocation:a5 normalizedStopLocation:a6 color:{a7, *&a8, *&a9, a17, a18, a19}];

  return v20;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:color:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth) = a2;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth) = a3;
  v21 = (v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineOutsets);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v22 = v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineFadeLengths;
  *v22 = a8;
  *(v22 + 8) = a9;
  *(v22 + 16) = a17;
  *(v22 + 24) = a18;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation) = a19;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation) = a20;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color) = a1;
  v24.super_class = DRPDropletContextSolidColorKeylineStyle;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v44);
  if (!v45)
  {
    sub_249EAFF5C(v44);
    goto LABEL_18;
  }

  type metadata accessor for DRPDropletContextSolidColorKeylineStyle(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v41 = 0;
    return v41 & 1;
  }

  [v1 innerWidth];
  v4 = v3;
  [v43 innerWidth];
  if (v4 != v5)
  {
    goto LABEL_17;
  }

  [v1 outerWidth];
  v7 = v6;
  [v43 outerWidth];
  if (v7 != v8)
  {
    goto LABEL_17;
  }

  [v1 keylineOutsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v43 keylineOutsets];
  if (v10 != v20)
  {
    goto LABEL_17;
  }

  if (v12 != v17)
  {
    goto LABEL_17;
  }

  if (v14 != v18)
  {
    goto LABEL_17;
  }

  if (v16 != v19)
  {
    goto LABEL_17;
  }

  [v1 keylineFadeLengths];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v43 keylineFadeLengths];
  if (v22 != v32 || v24 != v29 || v26 != v30 || v28 != v31 || ([v1 normalizedStartLocation], v34 = v33, objc_msgSend(v43, sel_normalizedStartLocation), v34 != v35) || (objc_msgSend(v1, sel_normalizedStopLocation), v37 = v36, objc_msgSend(v43, sel_normalizedStopLocation), v37 != v38))
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_249EA1BF8(0, &qword_27EF29770, 0x277D82BB8);
  v39 = [v1 color];
  v40 = [v43 color];
  v41 = sub_249ED6D80();

  return v41 & 1;
}

uint64_t sub_249EBA754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF299E0, &qword_249ED8EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DRPDropletContextSolidColorKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  [v1 innerWidth];
  v30 = v3;
  [v1 outerWidth];
  v29 = v4;
  [v1 keylineOutsets];
  v27 = v6;
  v28 = v5;
  v8 = v7;
  v10 = v9;
  [v1 keylineFadeLengths];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 normalizedStartLocation];
  v20 = v19;
  [v1 normalizedStopLocation];
  v22 = v21;
  v23 = [v1 color];
  v24 = [objc_allocWithZone(DRPDropletContextSolidColorKeylineStyle) initWithInnerWidth:v23 outerWidth:v30 keylineOutsets:v29 keylineFadeLengths:v28 normalizedStartLocation:v27 normalizedStopLocation:v8 color:{v10, v12, v14, v16, v18, v20, v22}];

  result = type metadata accessor for DRPDropletContextSolidColorKeylineStyle(v25);
  a1[3] = result;
  *a1 = v24;
  return result;
}

uint64_t sub_249EBA98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED9120;
  strcpy(v13, "innerWidth: ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  [v0 innerWidth];
  v2 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v2);

  v3 = v13[1];
  *(v1 + 32) = v13[0];
  *(v1 + 40) = v3;
  strcpy(v13, "outerWidth: ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  [v0 outerWidth];
  v4 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v4);

  v5 = v13[1];
  *(v1 + 48) = v13[0];
  *(v1 + 56) = v5;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  sub_249ED6E40();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v6 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v6);

  *(v1 + 96) = 0xD000000000000019;
  *(v1 + 104) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v7 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v7);

  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x8000000249EDC480;
  v8 = [v0 color];
  v9 = sub_249ED6A2C(v8);
  v11 = v10;

  MEMORY[0x24C205AA0](v9, v11);

  *(v1 + 128) = strcpy(v13, "color: ");
  *(v1 + 136) = 0xE700000000000000;
  return v1;
}

unint64_t sub_249EBACC0()
{
  result = qword_27EF29550;
  if (!qword_27EF29550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF29548, &qword_249ED8EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29550);
  }

  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 DRPDropletContextAdaptiveKeylineStyle.adaptiveColorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 DRPDropletContextAdaptiveKeylineStyle.adaptiveColorMatrix.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

id DRPDropletContextAdaptiveKeylineStyle.init(width:boundaryFadeLength:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3)
{
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidth:v8 boundaryFadeLength:a2 adaptiveColorMatrix:a3];
}

{
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return [v3 initWithInnerWidth:v8 outerWidth:0.0 keylineOutsets:a2 keylineFadeLengths:-(a2 + a3) adaptiveColorMatrix:{-(a2 + a3), -(a2 + a3), -(a2 + a3), *&a3, *&a3, *&a3, *&a3}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a1[3];
  v23[2] = a1[2];
  v23[3] = v20;
  v23[4] = a1[4];
  v21 = a1[1];
  v23[0] = *a1;
  v23[1] = v21;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:v23 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 adaptiveColorMatrix:{a5, a6, a7, *&a8, *&a9, a17, a18}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:adaptiveColorMatrix:)(_OWORD *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  v19 = a1[3];
  v22[2] = a1[2];
  v22[3] = v19;
  v22[4] = a1[4];
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  return [v18 initWithInnerWidth:v22 outerWidth:*&a15 keylineOutsets:*&a16 keylineFadeLengths:a17 normalizedStartLocation:a18 normalizedStopLocation:0 adaptiveColorMatrix:0x3FF0000000000000];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  v21 = a1[3];
  v24[2] = a1[2];
  v24[3] = v21;
  v24[4] = a1[4];
  v22 = a1[1];
  v24[0] = *a1;
  v24[1] = v22;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:v24 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 normalizedStartLocation:a5 normalizedStopLocation:a6 adaptiveColorMatrix:{a7, *&a8, *&a9, a17, a18, a19}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth) = a2;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth) = a3;
  v21 = (v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineOutsets);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v22 = v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineFadeLengths;
  *v22 = a8;
  *(v22 + 8) = a9;
  *(v22 + 16) = a17;
  *(v22 + 24) = a18;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation) = a19;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation) = a20;
  v23 = (v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  v24 = a1[3];
  v23[2] = a1[2];
  v23[3] = v24;
  v23[4] = a1[4];
  v25 = a1[1];
  *v23 = *a1;
  v23[1] = v25;
  v27.super_class = DRPDropletContextAdaptiveKeylineStyle;
  return objc_msgSendSuper2(&v27, sel_init);
}

BOOL DRPDropletContextAdaptiveKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v43);
  if (!v44)
  {
    sub_249EAFF5C(v43);
    return 0;
  }

  type metadata accessor for DRPDropletContextAdaptiveKeylineStyle(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v42[0];
  [v1 innerWidth];
  v5 = v4;
  [v42[0] innerWidth];
  if (v5 != v6)
  {
    goto LABEL_17;
  }

  [v1 outerWidth];
  v8 = v7;
  [v42[0] outerWidth];
  if (v8 != v9)
  {
    goto LABEL_17;
  }

  [v1 keylineOutsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v42[0] keylineOutsets];
  if (v11 != v21)
  {
    goto LABEL_17;
  }

  if (v13 != v18)
  {
    goto LABEL_17;
  }

  if (v15 != v19)
  {
    goto LABEL_17;
  }

  if (v17 != v20)
  {
    goto LABEL_17;
  }

  [v1 keylineFadeLengths];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v42[0] keylineFadeLengths];
  if (v23 != v33 || v25 != v30 || v27 != v31 || v29 != v32 || ([v1 normalizedStartLocation], v35 = v34, objc_msgSend(v42[0], sel_normalizedStartLocation), v35 != v36) || (objc_msgSend(v1, sel_normalizedStopLocation), v38 = v37, objc_msgSend(v42[0], sel_normalizedStopLocation), v38 != v39))
  {
LABEL_17:

    return 0;
  }

  [v1 adaptiveColorMatrix];
  [v3 adaptiveColorMatrix];

  return sub_249EB9788(v42, v43);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  [v1 innerWidth];
  v28 = v3;
  [v1 outerWidth];
  v27 = v4;
  [v1 keylineOutsets];
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v10 = v9;
  [v1 keylineFadeLengths];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 normalizedStartLocation];
  v20 = v19;
  [v1 normalizedStopLocation];
  v22 = v21;
  [v1 adaptiveColorMatrix];
  v23 = [objc_allocWithZone(DRPDropletContextAdaptiveKeylineStyle) initWithInnerWidth:v29 outerWidth:v28 keylineOutsets:v27 keylineFadeLengths:v26 normalizedStartLocation:v25 normalizedStopLocation:v8 adaptiveColorMatrix:{v10, v12, v14, v16, v18, v20, v22}];
  result = type metadata accessor for DRPDropletContextAdaptiveKeylineStyle(v23);
  a1[3] = result;
  *a1 = v23;
  return result;
}

uint64_t sub_249EBBD58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED9120;
  strcpy(v12, "innerWidth: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  [v0 innerWidth];
  v2 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v2);

  v3 = v12[1];
  *(v1 + 32) = v12[0];
  *(v1 + 40) = v3;
  strcpy(v12, "outerWidth: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  [v0 outerWidth];
  v4 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v4);

  v5 = v12[1];
  *(v1 + 48) = v12[0];
  *(v1 + 56) = v5;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  v12[2] = v6;
  v12[3] = v7;
  sub_249ED6E40();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v8 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v8);

  *(v1 + 96) = 0xD000000000000019;
  *(v1 + 104) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v9 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v9);

  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x8000000249EDC480;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_249ED6DC0();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x24C205AA0](0xD000000000000015, 0x8000000249EDC4A0);
  [v0 adaptiveColorMatrix];
  type metadata accessor for CAColorMatrix(0);
  sub_249ED6E40();
  v10 = v14;
  *(v1 + 128) = v13;
  *(v1 + 136) = v10;
  return v1;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.preferAudioReactivity.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.preferAudioReactivity.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.style.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.style.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.softRim.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.softRim.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.screenBlendMode.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.screenBlendMode.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.alpha.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.alpha.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineBlurRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputAmount.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputAmount.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputStart.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputStart.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputEnd.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputEnd.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.edrGain.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.edrGain.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_249EBCFBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  return result;
}

double sub_249EBD010(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  return result;
}

uint64_t sub_249EBD064(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v11 = (a1 + *a7);
  result = swift_beginAccess();
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_249EBD0D8(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = (v5 + *a1);
  result = swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void __swiftcall DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:)(DRPDropletContextIntelligentEdgeLightKeylineStyle *__return_ptr retstr, Swift::Bool preferringAudioReactivity)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithPreferringAudioReactivity_];
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:)(char a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithPreferringAudioReactivity:a1 & 1 style:a2];
}

{
  v5 = [objc_opt_self() rootSettings];
  v6 = v5;
  if (a2 == 1)
  {
    v33 = a1;
    v34 = v2;
    v7 = &selRef_intelligentEdgeLightKeylineStyleSoftSmallWidth;
    v8 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeEnd;
    v9 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeStart;
    v10 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeAmount;
    v11 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
    v12 = &selRef_intelligentEdgeLightKeylineStyleSoftAlpha;
    v13 = &selRef_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
    v14 = &selRef_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  }

  else
  {
    if (a2 != 2)
    {
      v15 = 0;
      v16 = 1;
      v26 = 0.5;
      v30 = 0.0;
      v24 = 0.50001;
      v22 = 0.5;
      v20 = 0.0;
      v28 = 0.0;
      v18 = 0.0;
      goto LABEL_7;
    }

    v33 = a1;
    v34 = v2;
    v7 = &selRef_intelligentEdgeLightKeylineStyleHardSmallWidth;
    v8 = &selRef_intelligentEdgeLightKeylineStyleHardLargeEnd;
    v9 = &selRef_intelligentEdgeLightKeylineStyleHardLargeStart;
    v10 = &selRef_intelligentEdgeLightKeylineStyleHardLargeAmount;
    v11 = &selRef_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
    v12 = &selRef_intelligentEdgeLightKeylineStyleHardAlpha;
    v13 = &selRef_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
    v14 = &selRef_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  }

  v15 = [v5 *v14];
  v16 = [v6 *v13];
  [v6 *v12];
  v18 = v17;
  [v6 *v11];
  v20 = v19;
  [v6 *v10];
  v22 = v21;
  [v6 *v9];
  v24 = v23;
  [v6 *v8];
  v26 = v25;
  [v6 *v7];
  v28 = v27;
  [v6 intelligentEdgeLightEDRGainAmount];
  v30 = v29;
  v2 = v34;
  a1 = v33;
LABEL_7:
  v31 = [v2 initWithPreferringAudioReactivity:a1 & 1 style:a2 softRim:v15 screenBlendMode:v16 alpha:v18 innerWidth:0.0 outerWidth:v28 keylineBlurRadius:v20 keylineInputAmount:v22 keylineInputStart:v24 keylineInputEnd:v26 edrGain:v30 keylineOutsets:*MEMORY[0x277D768C8] keylineFadeLengths:*(MEMORY[0x277D768C8] + 8) normalizedStartLocation:*(MEMORY[0x277D768C8] + 16) normalizedStopLocation:{*(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), 0, 0x3FF0000000000000}];

  return v31;
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:softRim:screenBlendMode:alpha:innerWidth:outerWidth:keylineBlurRadius:keylineInputAmount:keylineInputStart:keylineInputEnd:edrGain:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:)(char a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v16 initWithPreferringAudioReactivity:a1 & 1 style:a2 softRim:a3 & 1 screenBlendMode:a4 & 1 alpha:a5 innerWidth:a6 outerWidth:a7 keylineBlurRadius:a8 keylineInputAmount:a9 keylineInputStart:a10 keylineInputEnd:a11 edrGain:a12 keylineOutsets:? keylineFadeLengths:? normalizedStartLocation:? normalizedStopLocation:?];
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:softRim:screenBlendMode:alpha:innerWidth:outerWidth:keylineBlurRadius:keylineInputAmount:keylineInputStart:keylineInputEnd:edrGain:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:)(char a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity) = a1;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style) = a2;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim) = a3;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode) = a4;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha) = a5;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth) = a6;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth) = a7;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius) = a8;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount) = a9;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart) = a10;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd) = a11;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain) = a12;
  v25 = v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineOutsets;
  *v25 = a17;
  *(v25 + 16) = a18;
  *(v25 + 24) = a19;
  v26 = v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineFadeLengths;
  *v26 = a20;
  *(v26 + 16) = a21;
  *(v26 + 24) = a22;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation) = a23;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation) = a24;
  v28.super_class = DRPDropletContextIntelligentEdgeLightKeylineStyle;
  return objc_msgSendSuper2(&v28, sel_init);
}

BOOL DRPDropletContextIntelligentEdgeLightKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v64);
  if (v65)
  {
    type metadata accessor for DRPDropletContextIntelligentEdgeLightKeylineStyle(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 preferAudioReactivity];
      if (v3 == [v63 preferAudioReactivity])
      {
        v4 = [v1 style];
        if (v4 == [v63 style])
        {
          v5 = [v1 softRim];
          if (v5 == [v63 softRim])
          {
            v6 = [v1 screenBlendMode];
            if (v6 == [v63 screenBlendMode])
            {
              [v1 alpha];
              v8 = v7;
              [v63 alpha];
              if (v8 == v9)
              {
                [v1 innerWidth];
                v11 = v10;
                [v63 innerWidth];
                if (v11 == v12)
                {
                  [v1 outerWidth];
                  v14 = v13;
                  [v63 outerWidth];
                  if (v14 == v15)
                  {
                    [v1 keylineBlurRadius];
                    v17 = v16;
                    [v63 keylineBlurRadius];
                    if (v17 == v18)
                    {
                      [v1 keylineInputAmount];
                      v20 = v19;
                      [v63 keylineInputAmount];
                      if (v20 == v21)
                      {
                        [v1 keylineInputStart];
                        v23 = v22;
                        [v63 keylineInputStart];
                        if (v23 == v24)
                        {
                          [v1 keylineInputEnd];
                          v26 = v25;
                          [v63 keylineInputEnd];
                          if (v26 == v27)
                          {
                            [v1 edrGain];
                            v29 = v28;
                            [v63 edrGain];
                            if (v29 == v30)
                            {
                              [v1 keylineOutsets];
                              v32 = v31;
                              v34 = v33;
                              v36 = v35;
                              v38 = v37;
                              [v63 keylineOutsets];
                              if (v32 == v42 && v34 == v39 && v36 == v40 && v38 == v41)
                              {
                                [v1 keylineFadeLengths];
                                v44 = v43;
                                v46 = v45;
                                v48 = v47;
                                v50 = v49;
                                [v63 keylineFadeLengths];
                                if (v44 == v54 && v46 == v51 && v48 == v52 && v50 == v53)
                                {
                                  [v1 normalizedStartLocation];
                                  v56 = v55;
                                  [v63 normalizedStartLocation];
                                  if (v56 == v57)
                                  {
                                    [v1 normalizedStopLocation];
                                    v59 = v58;
                                    [v63 normalizedStopLocation];
                                    v61 = v60;

                                    return v59 == v61;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_249EAFF5C(v64);
  }

  return 0;
}

uint64_t sub_249EBDCF8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_249ED6D90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_249EAFF5C(v10);
  return v8 & 1;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 preferAudioReactivity];
  v5 = [v2 style];
  v6 = [v2 softRim];
  v7 = [v2 screenBlendMode];
  [v2 alpha];
  v44 = v8;
  [v2 innerWidth];
  v43 = v9;
  [v2 outerWidth];
  v42 = v10;
  [v2 keylineBlurRadius];
  v41 = v11;
  [v2 keylineInputAmount];
  v40 = v12;
  [v2 keylineInputStart];
  v39 = v13;
  [v2 keylineInputEnd];
  v38 = v14;
  [v2 edrGain];
  v37 = v15;
  [v2 keylineOutsets];
  v35 = v17;
  v36 = v16;
  v19 = v18;
  v21 = v20;
  [v2 keylineFadeLengths];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v2 normalizedStartLocation];
  v31 = v30;
  [v2 normalizedStopLocation];
  v33 = [objc_allocWithZone(DRPDropletContextIntelligentEdgeLightKeylineStyle) initWithPreferringAudioReactivity:v4 style:v5 softRim:v6 screenBlendMode:v7 alpha:v44 innerWidth:v43 outerWidth:v42 keylineBlurRadius:v41 keylineInputAmount:v40 keylineInputStart:v39 keylineInputEnd:v38 edrGain:v37 keylineOutsets:v36 keylineFadeLengths:v35 normalizedStartLocation:v19 normalizedStopLocation:{v21, v23, v25, v27, v29, v31, v32}];
  result = type metadata accessor for DRPDropletContextIntelligentEdgeLightKeylineStyle(v33);
  a1[3] = result;
  *a1 = v33;
  return result;
}

uint64_t sub_249EBDFB4(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_249ED6EC0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t sub_249EBE05C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED8E80;
  sub_249ED6DC0();

  v34[0] = 0xD000000000000017;
  v34[1] = 0x8000000249EDC360;
  v2 = [v0 preferAudioReactivity];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v4, v5);

  *(v1 + 32) = v34[0];
  *(v1 + 40) = v34[1];
  strcpy(v34, "style: ");
  v34[1] = 0xE700000000000000;
  v6 = [v0 style];
  if (v6 == 2)
  {
    v11 = 0xE800000000000000;
    v10 = 0x6567644564726168;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 1701736302;
    }

    v9 = v6 == 1;
    if (v6 == 1)
    {
      v10 = 0x6567644574666F73;
    }

    else
    {
      v10 = v7;
    }

    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = v8;
    }
  }

  MEMORY[0x24C205AA0](v10, v11);

  *(v1 + 48) = v34[0];
  *(v1 + 56) = v34[1];
  strcpy(v34, "softRim: ");
  WORD1(v34[1]) = 0;
  HIDWORD(v34[1]) = -385875968;
  v12 = [v0 softRim];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v14, v15);

  *(v1 + 64) = v34[0];
  *(v1 + 72) = v34[1];
  sub_249ED6DC0();

  v34[0] = 0xD000000000000011;
  v34[1] = 0x8000000249EDC380;
  v16 = [v0 screenBlendMode];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v18, v19);

  *(v1 + 80) = v34[0];
  *(v1 + 88) = v34[1];
  [v0 alpha];
  v20 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v20);

  *(v1 + 96) = strcpy(v34, "alpha: ");
  *(v1 + 104) = 0xE700000000000000;
  strcpy(v34, "innerWidth: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  [v0 innerWidth];
  v21 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v21);

  v22 = v34[1];
  *(v1 + 112) = v34[0];
  *(v1 + 120) = v22;
  strcpy(v34, "outerWidth: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  [v0 outerWidth];
  v23 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v23);

  v24 = v34[1];
  *(v1 + 128) = v34[0];
  *(v1 + 136) = v24;
  sub_249ED6DC0();

  [v0 keylineBlurRadius];
  v25 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v25);

  *(v1 + 144) = 0xD000000000000013;
  *(v1 + 152) = 0x8000000249EDC3A0;
  sub_249ED6DC0();

  [v0 keylineInputAmount];
  v26 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v26);

  *(v1 + 160) = 0xD000000000000014;
  *(v1 + 168) = 0x8000000249EDC3C0;
  sub_249ED6DC0();

  [v0 keylineInputStart];
  v27 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v27);

  *(v1 + 176) = 0xD000000000000013;
  *(v1 + 184) = 0x8000000249EDC3E0;
  sub_249ED6DC0();

  [v0 keylineInputEnd];
  v28 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v28);

  *(v1 + 192) = 0xD000000000000011;
  *(v1 + 200) = 0x8000000249EDC400;
  strcpy(v34, "edrGain: ");
  WORD1(v34[1]) = 0;
  HIDWORD(v34[1]) = -385875968;
  [v0 edrGain];
  v29 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v29);

  v30 = v34[1];
  *(v1 + 208) = v34[0];
  *(v1 + 216) = v30;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  sub_249ED6E40();
  *(v1 + 240) = 0;
  *(v1 + 248) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v31 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v31);

  *(v1 + 256) = 0xD000000000000019;
  *(v1 + 264) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v32 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v32);

  *(v1 + 272) = 0xD000000000000018;
  *(v1 + 280) = 0x8000000249EDC480;
  return v1;
}

id sub_249EBE750(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EBACC0();
  sub_249ED6C50();

  v5 = sub_249ED6C60();

  return v5;
}

uint64_t sub_249EBE840(void (*a1)(void))
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EBACC0();
  v1 = sub_249ED6C50();

  return v1;
}

uint64_t DRPDropletIntelligentLightStyle.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6567644564726168;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6567644574666F73;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

id _sSo37DRPDropletContextAdaptiveKeylineStyleC9DropletUIEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id keypath_get_5Tm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

void sub_249EBEB3C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176);
    v20 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160);
    v21 = v3;
    v22 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192);
    v23 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208);
    v4 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112);
    v16 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96);
    v17 = v4;
    v5 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144);
    v18 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128);
    v19 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48);
    v12 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32);
    v13 = v6;
    v7 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80);
    v14 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64);
    v15 = v7;
    v8 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16);
    v10 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry);
    v11 = v8;
    if (!sub_249EB74B8(&v10))
    {
      v24[10] = v20;
      v24[11] = v21;
      v24[12] = v22;
      v25 = v23;
      v24[6] = v16;
      v24[7] = v17;
      v24[8] = v18;
      v24[9] = v19;
      v24[2] = v12;
      v24[3] = v13;
      v24[4] = v14;
      v24[5] = v15;
      v9 = *MEMORY[0x277D85000] & *v1;
      v24[0] = v10;
      v24[1] = v11;
      (*(v9 + 144))(v24);
    }
  }
}

BOOL sub_249EBEC5C(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1;
  v5 = *(a1 + 7);
  v21 = *(a1 + 5);
  v22 = v5;
  v6 = *a2;
  v7 = *(a2 + 5);
  v23 = *(a1 + 9);
  v24 = v7;
  v8 = *(a2 + 9);
  v25 = *(a2 + 7);
  v26 = v8;
  if (v4 == v6 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 1), *(a2 + 1)), vceqq_f64(*(a1 + 3), *(a2 + 3))), xmmword_249ED9140)) & 0xF) == 0)
  {
    v9 = a1;
    if (sub_249ED6D30())
    {
      v11 = *(v9 + 21);
      *&a.m31 = *(v9 + 19);
      *&a.m33 = v11;
      v12 = *(v9 + 25);
      *&a.m41 = *(v9 + 23);
      *&a.m43 = v12;
      v13 = *(v9 + 13);
      *&a.m11 = *(v9 + 11);
      *&a.m13 = v13;
      v14 = *(v9 + 17);
      *&a.m21 = *(v9 + 15);
      *&a.m23 = v14;
      v15 = *(a2 + 21);
      *&b.m31 = *(a2 + 19);
      *&b.m33 = v15;
      v16 = *(a2 + 25);
      *&b.m41 = *(a2 + 23);
      *&b.m43 = v16;
      v17 = *(a2 + 13);
      *&b.m11 = *(a2 + 11);
      *&b.m13 = v17;
      v18 = *(a2 + 17);
      *&b.m21 = *(a2 + 15);
      *&b.m23 = v18;
      return CATransform3DEqualToTransform(&a, &b);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_249EBED94(char *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  sub_249EB72C0(v103);
  v4 = v103[5];
  *(v3 + 4) = v103[4];
  *(v3 + 5) = v4;
  v5 = v103[3];
  *(v3 + 2) = v103[2];
  *(v3 + 3) = v5;
  v6 = v103[9];
  *(v3 + 8) = v103[8];
  *(v3 + 9) = v6;
  v7 = v103[7];
  *(v3 + 6) = v103[6];
  *(v3 + 7) = v7;
  *(v3 + 26) = v104;
  v8 = v103[12];
  v9 = v103[10];
  *(v3 + 11) = v103[11];
  *(v3 + 12) = v8;
  *(v3 + 10) = v9;
  v10 = v103[1];
  *v3 = v103[0];
  *(v3 + 1) = v10;
  *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence] = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
  v88.receiver = v1;
  v88.super_class = type metadata accessor for DropletParticipantTrackingView();
  v11 = objc_msgSendSuper2(&v88, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v13 = *&a1[v12];
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_249ED5EBC(0, v13[2] + 1, 1, v13);
    *&a1[v12] = v13;
  }

  v17 = v13[2];
  v16 = v13[3];
  if (v17 >= v16 >> 1)
  {
    v13 = sub_249ED5EBC((v16 > 1), v17 + 1, 1, v13);
  }

  v13[2] = v17 + 1;
  sub_249EB74C8(&v87, &v13[v17 + 4]);
  *&a1[v12] = v13;
  swift_endAccess();
  v18 = a1;
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  [v18 center];
  v24 = v23;
  v26 = v25;
  [v18 transform];
  v27 = v91;
  v46 = v90;
  v47 = v89;
  [v18 transform3D];

  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57 = v22;
  *(&v57 + 1) = v24;
  *v58 = v26;
  *&v58[24] = v46;
  *&v58[8] = v47;
  *&v58[40] = v27;
  *&v58[120] = v52;
  *&v58[136] = v53;
  *&v58[152] = v54;
  *&v58[168] = v55;
  *&v58[56] = v48;
  *&v58[72] = v49;
  *&v58[88] = v50;
  *&v58[104] = v51;
  nullsub_1(&v56);
  v28 = v14 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
  v29 = v57;
  *v28 = v56;
  *(v28 + 1) = v29;
  v30 = *&v58[48];
  v31 = *&v58[16];
  v32 = *v58;
  *(v28 + 4) = *&v58[32];
  *(v28 + 5) = v30;
  *(v28 + 2) = v32;
  *(v28 + 3) = v31;
  v33 = *&v58[112];
  v34 = *&v58[80];
  v35 = *&v58[64];
  *(v28 + 8) = *&v58[96];
  *(v28 + 9) = v33;
  *(v28 + 6) = v35;
  *(v28 + 7) = v34;
  v36 = *&v58[160];
  v37 = *&v58[144];
  v38 = *&v58[128];
  *(v28 + 26) = *&v58[176];
  *(v28 + 11) = v37;
  *(v28 + 12) = v36;
  *(v28 + 10) = v38;
  v69 = *&v58[128];
  v70 = *&v58[144];
  v71 = *&v58[160];
  v65 = *&v58[64];
  v66 = *&v58[80];
  v67 = *&v58[96];
  v68 = *&v58[112];
  v61 = *v58;
  v62 = *&v58[16];
  v63 = *&v58[32];
  v64 = *&v58[48];
  v59 = v56;
  v60 = v57;
  v83 = *&v58[128];
  v84 = *&v58[144];
  v85 = *&v58[160];
  v79 = *&v58[64];
  v80 = *&v58[80];
  v81 = *&v58[96];
  v82 = *&v58[112];
  v75 = *v58;
  v76 = *&v58[16];
  v72 = *&v58[176];
  v86 = *&v58[176];
  v77 = *&v58[32];
  v78 = *&v58[48];
  v73 = v56;
  v74 = v57;
  if (sub_249EB74B8(&v73))
  {
  }

  else
  {
    v99 = v83;
    v100 = v84;
    v101 = v85;
    v102 = v86;
    v95 = v79;
    v96 = v80;
    v97 = v81;
    v98 = v82;
    v91 = v75;
    v92 = v76;
    v93 = v77;
    v94 = v78;
    v89 = v73;
    v90 = v74;
    (*((*MEMORY[0x277D85000] & *v14) + 0x90))(&v89);

    v39 = v70;
    *(v28 + 10) = v69;
    *(v28 + 11) = v39;
    *(v28 + 12) = v71;
    *(v28 + 26) = v72;
    v40 = v66;
    *(v28 + 6) = v65;
    *(v28 + 7) = v40;
    v41 = v68;
    *(v28 + 8) = v67;
    *(v28 + 9) = v41;
    v42 = v62;
    *(v28 + 2) = v61;
    *(v28 + 3) = v42;
    v43 = v64;
    *(v28 + 4) = v63;
    *(v28 + 5) = v43;
    v44 = v60;
    v18 = v14;
    *v28 = v59;
    *(v28 + 1) = v44;
  }

  return v14;
}

id sub_249EBF4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletParticipantTrackingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_249EBF58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 216))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_249EBF5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
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
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_249EBF654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id DRPDropletAnimationCoordinator.defaultBehaviorSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings;
  if (*(v0 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings))
  {
    v2 = *(v0 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings);
  }

  else
  {
    v2 = sub_249EBF7B8();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t DRPDropletAnimationCoordinator.defaultBehaviorSettings.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings);
  *(v1 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings) = a1;
  return swift_unknownObjectRelease();
}

id sub_249EBF7B8()
{
  v0 = sub_249ED6C10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  [v6 setDefaultValues];
  [v6 setBehaviorType_];
  result = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (result)
  {
    v8 = result;
    (*(v1 + 104))(v5, *MEMORY[0x277D6C040], v0);
    sub_249ED6C00();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    (*(v1 + 8))(v5, v0);
    v19[15] = 1;
    sub_249EA62D4();
    v15 = sub_249ED6C20();
    LODWORD(v16) = v10;
    LODWORD(v17) = v12;
    LODWORD(v18) = v14;
    [v8 setFrameRateRange:v15 highFrameRateReason:{v16, v17, v18}];
    [v6 setPreferredFrameRateRange_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249EC88CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    v2 = result;
    swift_beginAccess();
    v3 = *&v2[v1];

    v22 = v3;
    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v5 = 0;
      v6 = v22 & 0xC000000000000001;
      v7 = v22 & 0xFFFFFFFFFFFFFF8;
      v8 = v22 + 32;
      v9 = MEMORY[0x277D85000];
      v23 = i;
      while (1)
      {
        if (v6)
        {
          v10 = MEMORY[0x24C205BD0](v5, v22);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_21;
          }

          v10 = *(v8 + 8 * v5);
        }

        v11 = v10;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v13 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden;
        v14 = v10[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden];
        v10[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden] = 1;
        if (v14 == 1)
        {

          if (v5 == i)
          {
          }
        }

        else
        {
          v15 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v16 = *&v11[v15];
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = v16 + 32;
            v19 = *&v11[v15];

            do
            {
              sub_249EB0208(v18, v24, &qword_27EF296F0, &unk_249ED8F70);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v21 = Strong;
                (*((*v9 & *Strong) + 0xD0))(v11, v11[v13]);
              }

              sub_249EB371C(v24, &qword_27EF296F0, &unk_249ED8F70);
              v18 += 8;
              --v17;
            }

            while (v17);

            i = v23;
          }

          v7 = v22 & 0xFFFFFFFFFFFFFF8;
          v6 = v22 & 0xC000000000000001;
          v8 = v22 + 32;
          if (v5 == i)
          {
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  return result;
}

id sub_249EC8B1C(int a1, int a2, id a3, void *a4)
{
  [a3 boundaryOutsets];

  return [a4 setBoundaryOutsets_];
}

uint64_t sub_249EC8B68(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr), uint64_t a4, char a5, char a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v20 = *&v12[OBJC_IVAR___DRPDropletAnimationCoordinator_id];
  v54 = v12;
  v21 = [*&v12[OBJC_IVAR___DRPDropletAnimationCoordinator_appliedViewConfigurationMapTable] objectForKey_];
  v64 = a3;
  if (v21)
  {
    v22 = v21;
    v64(__src);

    a3 = v64;
    nullsub_1(__src);
    v104 = __src[6];
    v105 = __src[7];
    v106 = __src[8];
    v100 = __src[2];
    v101 = __src[3];
    v102 = __src[4];
    v103 = __src[5];
    v98 = __src[0];
    v99 = __src[1];
  }

  else
  {
    sub_249ECA56C(&v98);
  }

  (a3)(v87, a7);
  v82 = v87[6];
  v83 = v87[7];
  v84 = v88;
  v78 = v87[2];
  v79 = v87[3];
  v80 = v87[4];
  v81 = v87[5];
  v76 = v87[0];
  v77 = v87[1];
  nullsub_1(&v76);
  __src[6] = v104;
  __src[7] = v105;
  __src[2] = v100;
  __src[3] = v101;
  __src[4] = v102;
  __src[5] = v103;
  __src[0] = v98;
  __src[1] = v99;
  *(&__src[13] + 8) = v81;
  *(&__src[14] + 8) = v82;
  *(&__src[15] + 8) = v83;
  *(&__src[9] + 8) = v77;
  *(&__src[10] + 8) = v78;
  *(&__src[11] + 8) = v79;
  *(&__src[12] + 8) = v80;
  *(&__src[8] + 8) = v76;
  v85[6] = v104;
  v85[7] = v105;
  v85[2] = v100;
  v85[3] = v101;
  v85[4] = v102;
  v85[5] = v103;
  LOBYTE(__src[8]) = v106;
  BYTE8(__src[16]) = v84;
  v86 = v106;
  v85[0] = v98;
  v85[1] = v99;
  if (sub_249ECA598(v85) == 1)
  {
    __dst[6] = *(&__src[14] + 8);
    __dst[7] = *(&__src[15] + 8);
    LOBYTE(__dst[8]) = BYTE8(__src[16]);
    __dst[2] = *(&__src[10] + 8);
    __dst[3] = *(&__src[11] + 8);
    __dst[4] = *(&__src[12] + 8);
    __dst[5] = *(&__src[13] + 8);
    __dst[0] = *(&__src[8] + 8);
    __dst[1] = *(&__src[9] + 8);
    if (sub_249ECA598(__dst) == 1)
    {
      v95 = __src[6];
      v96 = __src[7];
      v97 = __src[8];
      v91 = __src[2];
      v92 = __src[3];
      v93 = __src[4];
      v94 = __src[5];
      v89 = __src[0];
      v90 = __src[1];
      v23 = &v89;
      return sub_249EB371C(v23, &qword_27EF29878, &qword_249ED91D0);
    }

    v57 = a6;
    goto LABEL_11;
  }

  v72[6] = *(&__src[14] + 8);
  v72[7] = *(&__src[15] + 8);
  v73 = BYTE8(__src[16]);
  v72[2] = *(&__src[10] + 8);
  v72[3] = *(&__src[11] + 8);
  v72[4] = *(&__src[12] + 8);
  v72[5] = *(&__src[13] + 8);
  v72[0] = *(&__src[8] + 8);
  v72[1] = *(&__src[9] + 8);
  v57 = a6;
  if (sub_249ECA598(v72) == 1)
  {
LABEL_11:
    memcpy(__dst, __src, 0x109uLL);
    sub_249ECACE8(v87, &v89);
    sub_249EB0208(&v98, &v89, &qword_27EF29878, &qword_249ED91D0);
    sub_249EB371C(__dst, &qword_27EF29880, qword_249ED91D8);
    goto LABEL_12;
  }

  v68[6] = *(&__src[14] + 8);
  v68[7] = *(&__src[15] + 8);
  v69 = BYTE8(__src[16]);
  v68[2] = *(&__src[10] + 8);
  v68[3] = *(&__src[11] + 8);
  v68[4] = *(&__src[12] + 8);
  v68[5] = *(&__src[13] + 8);
  v68[0] = *(&__src[8] + 8);
  v68[1] = *(&__src[9] + 8);
  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  v95 = __src[6];
  v96 = __src[7];
  v97 = __src[8];
  v91 = __src[2];
  v92 = __src[3];
  v93 = __src[4];
  v94 = __src[5];
  v89 = __src[0];
  v90 = __src[1];
  sub_249ECACE8(v87, v67);
  sub_249EB0208(&v98, v67, &qword_27EF29878, &qword_249ED91D0);
  v24 = sub_249ECA624(&v89, __dst);
  sub_249EB371C(v68, &qword_27EF29878, &qword_249ED91D0);
  v70[6] = __src[6];
  v70[7] = __src[7];
  v71 = __src[8];
  v70[2] = __src[2];
  v70[3] = __src[3];
  v70[4] = __src[4];
  v70[5] = __src[5];
  v70[0] = __src[0];
  v70[1] = __src[1];
  sub_249EB371C(v70, &qword_27EF29878, &qword_249ED91D0);
  if (v24)
  {
    sub_249ECAD20(v87);
LABEL_30:
    v23 = &v98;
    return sub_249EB371C(v23, &qword_27EF29878, &qword_249ED91D0);
  }

LABEL_12:
  v25 = sub_249ED6C60();
  v26 = [a7 animationBlockForKeyPath_];

  v56 = a4;
  if (v26)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v26;
    v63 = sub_249ECB0A0;
  }

  else
  {
    v63 = 0;
    v59 = 0;
  }

  v62 = a1;
  v27 = sub_249ED6C60();
  v28 = [a7 animationCompletionBlockForKeyPath_];

  v53 = a8;
  if (v28)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v28;
    v58 = sub_249ECB054;
  }

  else
  {
    v58 = 0;
    v52 = 0;
  }

  *&v72[0] = v20;
  *&__src[0] = sub_249ED6EB0();
  *(&__src[0] + 1) = v29;
  MEMORY[0x24C205AA0](45, 0xE100000000000000);
  v30 = a2;
  MEMORY[0x24C205AA0](a1, a2);
  v31 = sub_249ED6C60();

  v51 = [a9 acquireGeometricChangeAssertionForReason_];

  if ((a5 & 1) == 0)
  {
    v66 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = a10;
    *(v43 + 24) = a11;
    *(v43 + 32) = 0;
    *(v43 + 33) = v57 & 1;
    *(v43 + 40) = a7;
    *(v43 + 48) = a8;
    *(v43 + 56) = a9;
    *(v43 + 64) = v63;
    *(v43 + 72) = v59;
    *&__src[2] = sub_249ECB058;
    *(&__src[2] + 1) = v43;
    *&__src[0] = MEMORY[0x277D85DD0];
    *(&__src[0] + 1) = 1107296256;
    *&__src[1] = sub_249EBF654;
    *(&__src[1] + 1) = &block_descriptor_282;
    v44 = _Block_copy(__src);
    v45 = a7;
    v46 = a8;
    v47 = a9;

    sub_249E9F560(v63);

    [v66 _performWithoutRetargetingAnimations_];
    _Block_release(v44);
    if (v28)
    {

      v58(1, 0);
      sub_249E9F570(v58);
    }

    v48 = [v45 anyAnimationCompletionBlock];
    if (v48)
    {
      v49 = v48;
      v50 = sub_249ED6C60();
      (v49)[2](v49, v50, 1, 0);

      _Block_release(v49);
    }

    if (v51)
    {
      [swift_unknownObjectRetain() invalidate];
      sub_249ECAD20(v87);
      sub_249E9F570(v63);
      sub_249E9F570(v58);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_249ECAD20(v87);
      sub_249E9F570(v63);
      sub_249E9F570(v58);
    }

    goto LABEL_30;
  }

  v32 = sub_249ED6C60();
  v33 = [a7 behaviorSettingsForKeyPath_];

  if (!v33)
  {
    v34 = [v54 defaultBehaviorSettings];
    swift_getObjectType();
    v33 = sub_249EC9F44();
    swift_unknownObjectRelease();
  }

  v61 = *&v54[OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock];
  v55 = *&v54[OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock + 8];
  v35 = swift_allocObject();
  *(v35 + 16) = a10;
  *(v35 + 24) = a11;
  *(v35 + 32) = 1;
  *(v35 + 33) = v57 & 1;
  *(v35 + 40) = a7;
  *(v35 + 48) = a8;
  *(v35 + 56) = a9;
  *(v35 + 64) = v63;
  *(v35 + 72) = v59;
  v36 = swift_allocObject();
  *(v36 + 16) = v58;
  *(v36 + 24) = v52;
  *(v36 + 32) = 1;
  *(v36 + 33) = v57 & 1;
  *(v36 + 40) = a7;
  *(v36 + 48) = v53;
  *(v36 + 56) = a9;
  *(v36 + 64) = v62;
  *(v36 + 72) = a2;
  *(v36 + 80) = v64;
  *(v36 + 88) = v56;
  *(v36 + 96) = v51;
  v37 = a7;
  v38 = v53;
  v39 = a9;
  v65 = v37;
  v40 = v38;
  v41 = v39;

  sub_249E9F560(v63);
  sub_249E9F560(v58);

  swift_unknownObjectRetain();
  v61(v62, v30, v65, v33, v57 & 1, sub_249ECB058, v35, sub_249ECB0A8, v36);
  sub_249ECAD20(v87);
  sub_249E9F570(v63);
  sub_249E9F570(v58);
  swift_unknownObjectRelease();
  sub_249EB371C(&v98, &qword_27EF29878, &qword_249ED91D0);
  swift_unknownObjectRelease();
}

id sub_249EC95F8(int a1, int a2, id a3, void *a4)
{
  v5 = [a3 boundaryEdges];

  return [a4 setBoundaryEdges_];
}

void sub_249EC9648(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  v6 = [a3 dropletColor];
  [a5 setDropletColor_];
}

id sub_249EC96B4(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  [a3 dropletRadius];

  return [a5 setDropletRadius_];
}

id sub_249EC9700(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  v6 = [a3 disableDropletEffectFilters];

  return [a5 setDisableDropletEffectFilters_];
}

uint64_t sub_249EC9750(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  [a5 applyKeylineStyle:objc_msgSend(a3 forContainerView:{sel_keylineStyle), a4}];

  return swift_unknownObjectRelease();
}

id sub_249EC97C4(int a1, int a2, id a3, void *a4)
{
  [a3 containerCornerRadius];

  return [a4 setContinuousCornerRadius_];
}

id sub_249EC9810(int a1, int a2, id a3, void *a4)
{
  [a3 containerWidth];
  [a4 bounds];

  return [a4 setBounds_];
}

id sub_249EC987C(int a1, int a2, id a3, void *a4)
{
  [a3 containerHeight];
  [a4 bounds];

  return [a4 setBounds_];
}

uint64_t sub_249EC9938(char a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 17) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_249ECAE28;
  *(v12 + 24) = v11;
  v18[4] = sub_249ECB05C;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_249EC9ACC;
  v18[3] = &block_descriptor_275;
  v13 = _Block_copy(v18);
  v14 = a3;
  v15 = a4;
  v16 = a5;

  [v10 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249EC9AF4(char a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 17) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_249ECAD50;
  *(v12 + 24) = v11;
  v18[4] = sub_249ECADB8;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_249EC9ACC;
  v18[3] = &block_descriptor_265;
  v13 = _Block_copy(v18);
  v14 = a3;
  v15 = a4;
  v16 = a5;

  [v10 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_249EC9D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = objc_opt_self();
  v21 = a6;
  v22 = a7;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_249EBF654;
  v20 = &block_descriptor_253;
  v15 = _Block_copy(&v17);

  v21 = a8;
  v22 = a9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_249ECB0A4;
  v20 = &block_descriptor_256;
  v16 = _Block_copy(&v17);

  [v14 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v16);
  _Block_release(v15);
}

void *sub_249EC9F44()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    [v2 copy];
    sub_249ED6D90();
    swift_unknownObjectRelease();
    sub_249ED6D40();
    swift_dynamicCast();
    v3 = sub_249ED6C60();
    [v5 setName_];

    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v0;
}

void sub_249ECA034(char a1, char a2, void (*a3)(void, void), int a4, int a5, id a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a3)
  {
    a3(a1 & 1, a2 & 1);
  }

  v16 = [a6 anyAnimationCompletionBlock];
  if (v16)
  {
    v17 = v16;
    v18 = sub_249ED6C60();
    (v17)[2](v17, v18, a1 & 1, a2 & 1);

    _Block_release(v17);
  }

  if (a13)
  {

    [a13 invalidate];
  }
}

__n128 sub_249ECA184@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v7[0]) = [a1 disableDropletEffectFilters];
  sub_249ECA5EC(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA244@<Q0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  [a1 *a2];
  *&v9[0] = v4;
  sub_249ECA5E0(v9);
  v5 = v9[7];
  *(a3 + 96) = v9[6];
  *(a3 + 112) = v5;
  *(a3 + 128) = v10;
  v6 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v6;
  v7 = v9[5];
  *(a3 + 64) = v9[4];
  *(a3 + 80) = v7;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_249ECA2B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 containerTransform];
  sub_249ECA600(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA370@<Q0>(void *a1@<X0>, SEL *a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  *&v10[0] = [a1 *a2];
  a3(v10);
  v6 = v10[7];
  *(a4 + 96) = v10[6];
  *(a4 + 112) = v6;
  *(a4 + 128) = v11;
  v7 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v7;
  v8 = v10[5];
  *(a4 + 64) = v10[4];
  *(a4 + 80) = v8;
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_249ECA3F4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v7[0] = [a1 boundaryEdges];
  sub_249ECA5C8(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA46C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 boundaryOutsets];
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v12.n128_u64[0] = v5;
  v12.n128_u64[1] = v6;
  sub_249ECA58C(&v11);
  v7 = v18;
  *(a2 + 96) = v17;
  *(a2 + 112) = v7;
  *(a2 + 128) = v19;
  v8 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v8;
  v9 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v9;
  result = v12;
  *a2 = v11;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_249ECA4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_249ECA624(v11, v13) & 1;
}

double sub_249ECA56C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_249ECA598(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249ECA624(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v102 = *(a2 + 96);
  v103 = v4;
  v5 = *(a2 + 48);
  v98 = *(a2 + 32);
  v99 = v5;
  v6 = *(a2 + 80);
  v100 = *(a2 + 64);
  v101 = v6;
  v7 = *(a2 + 16);
  v96 = *a2;
  v97 = v7;
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v111 = *(a1 + 96);
  v112 = v9;
  v10 = *(a1 + 16);
  v11 = *(a1 + 48);
  v107 = *(a1 + 32);
  v108 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v109 = *(a1 + 64);
  v110 = v13;
  v14 = *(a1 + 16);
  v105 = *a1;
  v106 = v14;
  v15 = *(a1 + 112);
  v94[6] = v111;
  v94[7] = v15;
  v94[2] = v107;
  v94[3] = v12;
  v94[4] = v109;
  v94[5] = v8;
  v104 = *(a2 + 128);
  v113 = *(a1 + 128);
  v95 = *(a1 + 128);
  v94[0] = v105;
  v94[1] = v10;
  v16 = sub_249ECACE0(v94);
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v23 = *nullsub_1(v94);
        v24 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v24;
        v25 = *(a2 + 16);
        v85 = *a2;
        v86 = v25;
        v93 = *(a2 + 128);
        v26 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v26;
        v27 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v27;
        if (sub_249ECACE0(&v85) == 1)
        {
          v22 = v23 == *nullsub_1(&v85);
          return v22 & 1;
        }
      }

      else
      {
        v83 = *nullsub_1(v94);
        v38 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v38;
        v93 = *(a2 + 128);
        v39 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v39;
        v40 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v40;
        v41 = *(a2 + 16);
        v85 = *a2;
        v86 = v41;
        if (sub_249ECACE0(&v85) == 2)
        {
          v42 = nullsub_1(&v85);
          v43 = v42[5];
          v79 = v42[4];
          v80 = v43;
          v44 = v42[7];
          v81 = v42[6];
          v82 = v44;
          v45 = v42[1];
          v75 = *v42;
          v76 = v45;
          v46 = v42[3];
          v77 = v42[2];
          v78 = v46;
          a = v83;
          *&v73.m31 = v79;
          *&v73.m33 = v80;
          *&v73.m41 = v81;
          *&v73.m43 = v82;
          *&v73.m11 = v75;
          *&v73.m13 = v76;
          *&v73.m21 = v77;
          *&v73.m23 = v46;
          v22 = CATransform3DEqualToTransform(&a, &v73);
          return v22 & 1;
        }
      }
    }

    else
    {
      v33 = *nullsub_1(v94);
      v34 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v34;
      v93 = *(a2 + 128);
      v35 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v35;
      v36 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v36;
      v37 = *(a2 + 16);
      v85 = *a2;
      v86 = v37;
      if (!sub_249ECACE0(&v85))
      {
        v22 = v33 ^ *nullsub_1(&v85) ^ 1;
        return v22 & 1;
      }
    }

    goto LABEL_32;
  }

  if (v16 <= 4)
  {
    if (v16 == 3)
    {
      v17 = *nullsub_1(v94);
      if (v17)
      {
        v18 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v18;
        v93 = *(a2 + 128);
        v19 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v19;
        v20 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v20;
        v21 = *(a2 + 16);
        v85 = *a2;
        v86 = v21;
        if (sub_249ECACE0(&v85) == 3 && *nullsub_1(&v85))
        {
          v22 = [v17 isEqual_];
          return v22 & 1;
        }
      }

      else
      {
        v65 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v65;
        v93 = *(a2 + 128);
        v66 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v66;
        v67 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v67;
        v68 = *(a2 + 16);
        v85 = *a2;
        v86 = v68;
        if (sub_249ECACE0(&v85) == 3)
        {
          v22 = *nullsub_1(&v85) == 0;
          return v22 & 1;
        }
      }
    }

    else
    {
      v47 = *nullsub_1(v94);
      v48 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v48;
      v49 = *(a2 + 16);
      v85 = *a2;
      v86 = v49;
      v93 = *(a2 + 128);
      v50 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v50;
      v51 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v51;
      if (sub_249ECACE0(&v85) == 4)
      {
        v52 = *nullsub_1(&v85);
        if (v47)
        {
          if (v52)
          {
            sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
            sub_249ECACE8(a1, &v83);
            sub_249ECACE8(a2, &v83);
            v53 = sub_249ED6D80();
            sub_249ECAD20(a1);
            sub_249ECAD20(a2);
            v22 = v53;
            return v22 & 1;
          }

          *&v83.m41 = v102;
          *&v83.m43 = v103;
          v84 = v104;
          *&v83.m21 = v98;
          *&v83.m23 = v99;
          *&v83.m31 = v100;
          *&v83.m33 = v101;
          v71 = v96;
          v70 = v97;
        }

        else
        {
          if (!v52)
          {
            sub_249ECACE8(a1, &v83);
            sub_249ECACE8(a2, &v83);
            v22 = 1;
            return v22 & 1;
          }

          *&v83.m41 = v111;
          *&v83.m43 = v112;
          v84 = v113;
          *&v83.m21 = v107;
          *&v83.m23 = v108;
          *&v83.m31 = v109;
          *&v83.m33 = v110;
          v71 = v105;
          v70 = v106;
        }

        *&v83.m11 = v71;
        *&v83.m13 = v70;
        v72 = *nullsub_1(&v83);
        v22 = 0;
        return v22 & 1;
      }
    }

LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

  if (v16 == 5)
  {
    v28 = *nullsub_1(v94);
    v29 = *(a2 + 48);
    v87 = *(a2 + 32);
    v88 = v29;
    v30 = *(a2 + 16);
    v85 = *a2;
    v86 = v30;
    v93 = *(a2 + 128);
    v31 = *(a2 + 112);
    v91 = *(a2 + 96);
    v92 = v31;
    v32 = *(a2 + 80);
    v89 = *(a2 + 64);
    v90 = v32;
    if (sub_249ECACE0(&v85) == 5)
    {
      v22 = v28 == *nullsub_1(&v85);
      return v22 & 1;
    }

    goto LABEL_32;
  }

  v54 = nullsub_1(v94);
  v56 = *v54;
  v55 = v54[1];
  v58 = v54[2];
  v57 = v54[3];
  v59 = *(a2 + 112);
  v91 = *(a2 + 96);
  v92 = v59;
  v93 = *(a2 + 128);
  v60 = *(a2 + 16);
  v85 = *a2;
  v86 = v60;
  v61 = *(a2 + 48);
  v87 = *(a2 + 32);
  v88 = v61;
  v62 = *(a2 + 80);
  v89 = *(a2 + 64);
  v90 = v62;
  if (sub_249ECACE0(&v85) != 6)
  {
    goto LABEL_32;
  }

  v63 = nullsub_1(&v85);
  if (v56 != *v63)
  {
    goto LABEL_32;
  }

  v64 = v55 == v63[1];
  if (v58 != v63[2])
  {
    v64 = 0;
  }

  v22 = v57 == v63[3] && v64;
  return v22 & 1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_249ECAC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 129))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 128);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249ECAC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

id sub_249ECAD50()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) centerY];
  [v1 center];

  return [v1 setCenter_];
}

uint64_t sub_249ECADB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_258Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_249ECAE28()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) centerX];
  v3 = v2;
  [v1 center];

  return [v1 setCenter_];
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  if (*(v0 + 64))
  {
    v2 = *(v0 + 72);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249ECAEF0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  result = (*(v0 + 16))(*(v0 + 32), *(v0 + 33), v2, *(v0 + 48), *(v0 + 56));
  if (v3)
  {
    return v3(v2);
  }

  return result;
}

uint64_t objectdestroy_75Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_249ECAFC0(char a1, char a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_249ECA034(a1, a2, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
}

uint64_t sub_249ECB0AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference;
  v4 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 48);
  v30[2] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 32);
  v30[3] = v4;
  v30[4] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 64);
  v31 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 80);
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 16);
  v30[0] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference);
  v30[1] = v5;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v7;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  sub_249EB0208(a1, v32, &qword_27EF296E8, &unk_249ED8F60);
  sub_249EB371C(v30, &qword_27EF296E8, &unk_249ED8F60);
  v33 = *(v3 + 80);
  v8 = *(v3 + 48);
  v32[2] = *(v3 + 32);
  v32[3] = v8;
  v32[4] = *(v3 + 64);
  v9 = *(v3 + 16);
  v32[0] = *v3;
  v32[1] = v9;
  if (v33 == 255)
  {
    v20 = a1;
  }

  else
  {
    v10 = *(v3 + 48);
    v26 = *(v3 + 32);
    v27 = v10;
    v28 = *(v3 + 64);
    v11 = *(v3 + 16);
    v25[0] = *v3;
    v25[1] = v11;
    v29 = v33;
    v12 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v24 = *(v3 + 80);
    v23[3] = v10;
    v23[4] = v28;
    v23[1] = v11;
    v23[2] = v26;
    v23[0] = v25[0];
    sub_249EB0270(v23, v22);
    v13 = sub_249EB4510();
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x24C205BD0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_249EB0208(v32, v22, &qword_27EF296E8, &unk_249ED8F60);
        sub_249ED3A80(v25);

        ++v16;
        if (v19 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    sub_249EB371C(a1, &qword_27EF296E8, &unk_249ED8F60);

    v20 = v32;
  }

  return sub_249EB371C(v20, &qword_27EF296E8, &unk_249ED8F60);
}

void sub_249ECB2F4(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth);
  v4 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8);
  if (v3 != a1 || v4 != a2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v7 = (v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
    v8 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
    v9 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth + 8);
    *v7 = v3;
    v7[1] = v4;
    if (v3 != v8 || v4 != v9)
    {
      v11 = sub_249EB5820();
      sub_249EB791C(*v7);

      v12 = v7[1];
      v13 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView);
      sub_249EB7A0C(v12);
    }
  }
}

uint64_t sub_249ECB3DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
  v3 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference);
  v4 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference + 8);
  v32 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference + 16);
  v33 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference);
  v5 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference + 32);
  v6 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 48);
  v43 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 32);
  v44 = v6;
  v45 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 64);
  v46 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 80);
  v7 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 16);
  v41 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference);
  v42 = v7;
  sub_249EB0208(&v41, v39, &qword_27EF296E8, &unk_249ED8F60);
  v35 = sub_249EB5820();
  v8 = sub_249EB50D8(v35, v3, v4);
  objc_allocWithZone(type metadata accessor for DropletBackgroundView());
  v9 = v8;
  v10 = sub_249ED0950(v9);
  if ((v5 & 1) == 0)
  {
    v11 = &v9[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
    v12 = *&v9[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
    v13 = *&v9[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
    *v11 = v33;
    v11[1] = v32;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v33, v12), vceqq_f64(v32, v13)))) & 1) == 0)
    {
      v14 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
      swift_beginAccess();
      v15 = *&v9[v14];
      v16 = *(v15 + 16);
      if (v16)
      {
        v31 = v4;
        v34 = v10;
        v17 = v15 + 32;
        v30 = *&v9[v14];

        v18 = MEMORY[0x277D85000];
        do
        {
          sub_249EB0208(v17, v39, &qword_27EF296F0, &unk_249ED8F70);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v20 = Strong;
            (*((*v18 & *Strong) + 0xE0))(v9, v11->f64[0], v11->f64[1], v11[1].f64[0], v11[1].f64[1]);
          }

          sub_249EB371C(v39, &qword_27EF296F0, &unk_249ED8F70);
          v17 += 8;
          --v16;
        }

        while (v16);

        v10 = v34;
        v4 = v31;
      }
    }
  }

  if (v46 != 255)
  {
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v39[0] = v41;
    v39[1] = v42;
    v40 = v46;
    v37[2] = v43;
    v37[3] = v44;
    v37[4] = v45;
    v38 = v46;
    v37[0] = v41;
    v37[1] = v42;
    sub_249EB0270(v37, v36);
    sub_249ED3A80(v39);
  }

  v21 = sub_249EB582C();
  v22 = sub_249EB50D8(v21, v3, v4);

  v23 = sub_249EB59F4();
  v24 = sub_249EB50D8(v23, v3, v4);

  swift_unknownObjectWeakAssign();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = 0.0;
    if (v9[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80] == 2)
    {
      v26 = 1.0;
    }

    v27 = v25;
    [v25 setAlpha_];
  }

  sub_249EB371C(&v41, &qword_27EF296E8, &unk_249ED8F60);
  [*(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView) insertSubview:v10 atIndex:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_249ED9320;
  *(v28 + 32) = v9;
  *(v28 + 40) = v24;
  *(v28 + 48) = v22;

  return v28;
}

char *sub_249ECB780(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  v12[80] = -1;
  v13 = &v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions] = 0;
  BSRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView] = v22;
  v23 = objc_allocWithZone(type metadata accessor for DropletGroupView());
  *&v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] = sub_249EB4A0C(v22, v15, v17, v19, v21, 0.0);
  v33.receiver = v5;
  v33.super_class = type metadata accessor for DropletShapeView();
  v24 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v24;

  v27 = sub_249ED6C60();
  v32[4] = sub_249ECBF20;
  v32[5] = v25;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_249ECBB54;
  v32[3] = &block_descriptor_3;
  v28 = _Block_copy(v32);
  v29 = [objc_opt_self() assertionWithIdentifier:v27 stateDidChangeHandler:v28];

  _Block_release(v28);

  v30 = *&v26[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  *&v26[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions] = v29;

  [v26 addSubview_];
  [v26 addSubview_];

  return v26;
}

void sub_249ECBA5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions))
    {
      v1 = *(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
      v2 = Strong;
      v3 = [*(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions) isActive];
      v4 = [v1 layer];
      [v4 setShouldRasterize_];

      v5 = sub_249EB582C();
      v6 = [v5 layer];

      [v6 setShouldRasterize_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_249ECBB54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_249ECBCA0()
{
  result = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for DropletShapeView();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_249ECBDF0()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DropletShapeView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v3 = sub_249EB582C();
  [v1 bounds];
  [v3 setFrame_];

  v4 = *&v1[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView];
  [v1 bounds];
  [v4 setFrame_];
  [v1 bounds];
  return [v2 setFrame_];
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_249ECBF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 != 255)
  {
    sub_249ECBF60(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_249ECBF60(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
  }
}

void sub_249ECBF74(float *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  if (*&v1[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix] != *a1 || *(v2 + 1) != a1[1] || *(v2 + 2) != a1[2] || *(v2 + 3) != a1[3] || *(v2 + 4) != a1[4] || *(v2 + 5) != a1[5] || *(v2 + 6) != a1[6] || *(v2 + 7) != a1[7] || *(v2 + 8) != a1[8] || *(v2 + 9) != a1[9] || *(v2 + 10) != a1[10] || *(v2 + 12) != a1[12] || *(v2 + 13) != a1[13] || *(v2 + 14) != a1[14] || *(v2 + 15) != a1[15] || *(v2 + 17) != a1[17] || *(v2 + 18) != a1[18] || *(v2 + 19) != a1[19])
  {
    v3 = [v1 layer];
    v4 = *(v2 + 3);
    v10 = *(v2 + 2);
    v11 = v4;
    v12 = *(v2 + 4);
    v5 = *(v2 + 1);
    v8 = *v2;
    v9 = v5;
    v6 = [objc_opt_self() valueWithCAColorMatrix_];
    if (qword_281252CA8 != -1)
    {
      swift_once();
    }

    v7 = sub_249ED6C60();
    [v3 setValue:v6 forKeyPath:{v7, v8, v9, v10, v11, v12}];
  }
}

char *sub_249ECC1C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for AnimatableAdaptiveColorMatrixView();
  v10 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAllowsInPlaceFiltering_];

  v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v13 = *MEMORY[0x277CDA2C0];
  v14 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v15 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 48];
  v30 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 32];
  v31 = v15;
  v32 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 64];
  v16 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 16];
  v28 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  v29 = v16;
  v17 = objc_opt_self();
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[0] = v28;
  v26[1] = v29;
  v18 = [v17 valueWithCAColorMatrix_];
  [v14 setValue:v18 forKey:v13];

  v19 = [v10 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249ED8E50;
  v21 = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
  *(v20 + 32) = v12;
  *(v20 + 88) = v21;
  *(v20 + 56) = v21;
  *(v20 + 64) = v14;
  v22 = v12;
  v23 = v14;
  v24 = sub_249ED6CC0();

  [v19 setFilters_];

  return v10;
}

id sub_249ECC610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatableAdaptiveColorMatrixView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249ECC668()
{
  v0 = *MEMORY[0x277CDA2C0];
  v1 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v1);

  MEMORY[0x24C205AA0](46, 0xE100000000000000);
  v2 = *MEMORY[0x277CDA440];
  v3 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v3);

  qword_281253390 = 0x2E737265746C6966;
  *algn_281253398 = 0xE800000000000000;
  return result;
}

uint64_t sub_249ECC70C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_249ECC7B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C205BD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_249ED6E70();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t DRPDropletContextView.disableDropletEffectFilters.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *(*&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);

  return v1;
}

void DRPDropletContextView.disableDropletEffectFilters.setter(char a1)
{
  v2 = a1 & 1;
  v3 = sub_249ECCA8C();
  v4 = *&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v5 = *(v4 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  *(v4 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters) = a1;
  if (v5 != v2)
  {
    v6 = v3;
    sub_249EB6188();
    v3 = v6;
  }
}

id sub_249ECCA8C()
{
  v1 = OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView;
  v2 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for DropletShapeView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

unint64_t DRPDropletContextView.boundaryEdges.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  v2 = v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference + 8];

  if (v2 != 1)
  {
    return v1;
  }

  result = sub_249ECCEE0();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_249ED6E70();
    result = v7;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C205BD0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 32);
LABEL_7:
    v5 = v4;

    v6 = [v5 boundaryEdges];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t DRPDropletContextView.boundaryEdges.setter(uint64_t a1)
{
  v2 = sub_249ECCA8C();
  v3 = &v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  *v3 = a1;
  v3[8] = 0;
  v4 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v5 = sub_249EB4510();
  v26 = v2;
  v27 = v5;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v7 = 0;
    v8 = v27 & 0xC000000000000001;
    v9 = v27 & 0xFFFFFFFFFFFFFF8;
    v10 = v27 + 32;
    v11 = MEMORY[0x277D85000];
    while (1)
    {
      if (v8)
      {
        v12 = MEMORY[0x24C205BD0](v7, v27);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(v10 + 8 * v7);
      }

      v13 = v12;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v15 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges;
      v16 = *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
      *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges] = a1;
      if (v16 == a1)
      {

        if (v7 == i)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
        swift_beginAccess();
        v18 = *&v13[v17];
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = i;
          v21 = v18 + 32;
          v22 = *&v13[v17];

          do
          {
            sub_249EB7448(v21, v28);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v24 = Strong;
              (*((*v11 & *Strong) + 0xC8))(v13, *&v13[v15]);
            }

            sub_249ECFD64(v28);
            v21 += 8;
            --v19;
          }

          while (v19);

          i = v20;
          v8 = v27 & 0xC000000000000001;
        }

        v10 = v27 + 32;
        v9 = v27 & 0xFFFFFFFFFFFFFF8;
        if (v7 == i)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
}

uint64_t sub_249ECCEE0()
{
  v0 = sub_249ECEE38();
  v1 = [v0 subviews];

  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v2 = sub_249ED6CD0();

  v11 = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_249ED6E70();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x24C205AB0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_249ED6CE0();
    }

    sub_249ED6CF0();
    v5 = v11;
  }

  while (v4 != v3);
LABEL_21:

  return v5;
}

double DRPDropletContextView.dropletRadius.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *(*&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);

  return v1;
}

void DRPDropletContextView.dropletRadius.setter(double a1)
{
  v2 = sub_249ECCA8C();
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v4 = OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence;
  v5 = *(v3 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  *(v3 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence) = a1;
  if (v5 == a1)
  {
  }

  else
  {
    v29 = v2;
    v6 = sub_249EB4510();
    v30 = v6;
    if (v6 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = v30 & 0xFFFFFFFFFFFFFF8;
      v10 = v30 + 32;
      v11 = MEMORY[0x277D85000];
      v31 = i;
      v32 = v3;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x24C205BD0](v8, v30);
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 8 * v8);
        }

        v13 = v12;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v15 = *(v3 + v4);
        v16 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence;
        v17 = *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
        *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence] = v15;
        if (v15 == v17)
        {

          if (v8 == i)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v18 = v4;
          v19 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v20 = *&v13[v19];
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = v20 + 32;
            v23 = *&v13[v19];

            do
            {
              sub_249EB7448(v22, v33);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v25 = Strong;
                (*((*v11 & *Strong) + 0x68))(*&v13[v16]);
              }

              sub_249ECFD64(v33);
              v22 += 8;
              --v21;
            }

            while (v21);

            i = v31;
          }

          v4 = v18;
          v9 = v30 & 0xFFFFFFFFFFFFFF8;
          v3 = v32;
          v10 = v30 + 32;
          if (v8 == i)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v26 = sub_249EB5820();
    sub_249EA0FD0(*(v3 + v4));

    v27 = sub_249EB59F4();
    sub_249EA0FD0(*(v3 + v4));

    v28 = sub_249EB582C();
    sub_249EA0FD0(*(v3 + v4));
  }
}

void *DRPDropletContextView.dropletColor.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DRPDropletContextView.dropletColor.setter(void *a1)
{
  v3 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_249ECD5D0(v4);
}

void sub_249ECD5D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    if (a1)
    {
      sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
      v6 = v5;
      v7 = a1;
      v8 = sub_249ED6D80();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_249ECCA8C();
  v10 = *&v2[v4];
  if (v10)
  {
    v11 = *&v2[v4];
  }

  else
  {
    v11 = [objc_opt_self() blackColor];
    v10 = 0;
  }

  v12 = v10;
  v13 = [v2 traitCollection];
  v14 = [v11 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  v16 = *&v9[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  sub_249EB4360(v15);
}

uint64_t DRPDropletContextView.keylineStyle.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t DRPDropletContextView.keylineStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v1 applyKeylineStyle:a1 forContainerView:0];
  return swift_unknownObjectRelease();
}

void DRPDropletContextView.applyKeylineStyle(_:for:)(void *a1, void *a2)
{
  v7 = v2;
  v9 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    swift_unknownObjectRetain();
    v12 = sub_249ECCA8C();
    [v11 innerWidth];
    v3 = v13;
    v116 = v11;
    [v11 outerWidth];
    v14 = &v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v16 = *&v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v15 = *&v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
    *v14 = v3;
    *(v14 + 1) = v17;
    sub_249ECB2F4(v16, v15);

    v18 = v7;
    v19 = *(*(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v20 = sub_249EB5820();
    v21 = [v20 layer];
    v22 = [v21 softRim];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
LABEL_9:
    v52 = sub_249ECCA8C();
    v53 = &v52[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v54 = *&v52[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v55 = *&v52[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
    *v53 = 0;
    *(v53 + 1) = 0;
    sub_249ECB2F4(v54, v55);

    v18 = v7;
    v19 = *(*(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v20 = sub_249EB5820();
    v56 = [v20 layer];
    v57 = [v56 softRim];

    v116 = 0;
    if ((v57 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v49 = 0;
    goto LABEL_11;
  }

  v24 = v23;
  swift_unknownObjectRetain();
  v25 = sub_249ECCA8C();
  [v24 innerWidth];
  v27 = v26;
  [v24 outerWidth];
  v28 = &v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  v30 = *&v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  v29 = *&v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
  *v28 = v27;
  *(v28 + 1) = v31;
  sub_249ECB2F4(v30, v29);

  v32 = OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView;
  v33 = *(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView);
  [v24 keylineInputEnd];
  v35 = v34;
  [v24 keylineInputStart];
  v4 = v36;
  [v24 keylineInputEnd];
  v5 = v37;
  v38 = *&v33[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v39 = sub_249EB59F4();
  v40 = &v39[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v41 = *&v39[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v42 = *&v39[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8];
  v43 = *&v39[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16];
  v44 = v39[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24];
  *v40 = v35;
  *(v40 + 1) = v4;
  *(v40 + 2) = v5;
  v40[24] = 1;
  sub_249EB8B98(v41, v42, v43, v44);

  v45 = *(v7 + v32);
  [v24 keylineBlurRadius];
  v3 = v46;
  v47 = *&v45[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v48 = sub_249EB5940();
  sub_249EA0FD0(v3);

  v18 = v7;
  v19 = *(*(v7 + v32) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
  v116 = v24;
  v49 = [v24 softRim];
  v20 = sub_249EB5820();
  v50 = [v20 layer];
  v51 = [v50 softRim];

  if (v49 != v51)
  {
LABEL_11:
    v58 = [v20 layer];
    [v58 setSoftRim_];
  }

LABEL_12:

  if (!a2)
  {
    v67 = sub_249ECCA8C();
    if (v9)
    {
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = [v68 color];
        v70 = v69 >> 8;
        v71 = v69 & 0xFFFFFFFFFFFF0000;
LABEL_28:
        v72 = 1;
LABEL_29:
        v124 = v118;
        v125 = v119;
        v126 = v120;
        v127 = v121;
        v122 = v71 | v69 | (v70 << 8);
        v123 = v3;
        v128 = v72;
        sub_249ECB0AC(&v122);

        v73 = *(v18 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView);
        if (v9)
        {
          v74 = v73;
          [v9 keylineFadeLengths];
          v3 = v75;
          v4 = v76;
          v5 = v77;
          v6 = v78;
        }

        else
        {
          v3 = *MEMORY[0x277D768C8];
          v4 = *(MEMORY[0x277D768C8] + 8);
          v5 = *(MEMORY[0x277D768C8] + 16);
          v6 = *(MEMORY[0x277D768C8] + 24);
          v74 = v73;
        }

        v79 = &v74[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference];
        *v79 = v3;
        v79[1] = v4;
        v79[2] = v5;
        v79[3] = v6;
        *(v79 + 32) = 0;
        v80 = *&v74[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
        v81 = sub_249EB4510();
        v115 = v81;
        v114 = v74;
        if (v81 >> 62)
        {
          goto LABEL_67;
        }

        v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v82)
        {
          goto LABEL_34;
        }

        goto LABEL_68;
      }

      objc_opt_self();
      v108 = swift_dynamicCastObjCClass();
      if (v108)
      {
        [v108 adaptiveColorMatrix];
        v72 = 0;
        LOBYTE(v69) = v122;
        v3 = v123;
        v118 = v124;
        v119 = v125;
        v120 = v126;
        v121 = v127;
        v70 = v122 >> 8;
        v71 = v122 & 0xFFFFFFFFFFFF0000;
        goto LABEL_29;
      }

      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v109 = v69;
        swift_unknownObjectRetain();
        v110 = [v109 preferAudioReactivity];
        v111 = [v109 screenBlendMode];
        [v109 alpha];
        v3 = v112;
        swift_unknownObjectRelease();
        v71 = 0;
        LOBYTE(v69) = v110;
        v72 = 2;
        LOBYTE(v70) = v111;
        goto LABEL_29;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
    }

    LOBYTE(v70) = 0;
    v71 = 0;
    goto LABEL_28;
  }

  type metadata accessor for DRPDropletContainerView();
  v59 = a2;
  sub_249ED6E60();

  v60 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v61 = *&v59[v60];

  if (v61 >> 62)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
      break;
    }

    while (1)
    {
      v63 = 0;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x24C205BD0](v63, v61);
        }

        else
        {
          if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v64 = *(v61 + 8 * v63 + 32);
        }

        v65 = v64;
        v66 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          break;
        }

        *&v118 = v64;
        sub_249ECE5F4(&v118, v9);

        ++v63;
        if (v66 == v62)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        v82 = sub_249ED6E70();
        if (!v82)
        {
          break;
        }

LABEL_34:
        v83 = 0;
        v84 = v115 & 0xC000000000000001;
        v85 = v115 & 0xFFFFFFFFFFFFFF8;
        v86 = v115 + 32;
        v87 = MEMORY[0x277D85000];
        while (1)
        {
          if (v84)
          {
            v88 = MEMORY[0x24C205BD0](v83, v115);
          }

          else
          {
            if (v83 >= *(v85 + 16))
            {
              goto LABEL_66;
            }

            v88 = *(v86 + 8 * v83);
          }

          v89 = v88;
          if (__OFADD__(v83++, 1))
          {
            break;
          }

          v91 = &v88[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
          v92 = *&v88[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
          v93 = *&v88[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 8];
          v94 = *&v88[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
          v95 = *&v88[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 24];
          *v91 = v3;
          v91[1] = v4;
          v91[2] = v5;
          v91[3] = v6;
          if (v3 == v92 && v4 == v93 && v5 == v94 && v6 == v95)
          {

            if (v83 == v82)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v99 = v9;
            v100 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
            swift_beginAccess();
            v101 = *&v89[v100];
            v102 = *(v101 + 16);
            if (v102)
            {
              v103 = v82;
              v104 = v101 + 32;
              v105 = *&v89[v100];

              do
              {
                sub_249EB7448(v104, v117);
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v107 = Strong;
                  (*((*v87 & *Strong) + 0xE0))(v89, *v91, v91[1], v91[2], v91[3]);
                }

                sub_249ECFD64(v117);
                v104 += 8;
                --v102;
              }

              while (v102);

              v82 = v103;
              v84 = v115 & 0xC000000000000001;
            }

            v9 = v99;
            v86 = v115 + 32;
            v85 = v115 & 0xFFFFFFFFFFFFFF8;
            if (v83 == v82)
            {
              goto LABEL_68;
            }
          }
        }
      }

LABEL_68:

      v113 = sub_249ECCEE0();
      v61 = sub_249ECE2A0(v113);

      if (!(v61 >> 62))
      {
        break;
      }

LABEL_69:
      v62 = sub_249ED6E70();
      if (!v62)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_70:
}

unint64_t sub_249ECE2A0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v28 = v1;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C205BD0](v2, v27);
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v30 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = OBJC_IVAR___DRPDropletContainerView_participantViews;
      swift_beginAccess();
      v7 = *&v4[v6];

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_249ED6E70();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6E70();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_249ED6E70();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6DE0();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        v17 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6E70();
        v12 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v35)
          {
            goto LABEL_44;
          }

          v33 = v3;
          v18 = v12 + 8 * v14 + 32;
          v29 = v12;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_249ECFEA0();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29960, &unk_249ED9390);
              v20 = sub_249EB3580(v34, i, v7);
              v22 = *v21;
              (v20)(v34, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            type metadata accessor for DropletParticipantView();
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v33;
          if (v35 >= 1)
          {
            v23 = *(v29 + 16);
            v5 = __OFADD__(v23, v35);
            v24 = v23 + v35;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v35 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_249ED6E70();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

void sub_249ECE5F4(uint64_t *a1, id a2)
{
  v4 = *a1;
  if (a2)
  {
    [a2 keylineFadeLengths];
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  v9 = (v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  v10 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  v11 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 8);
  v12 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16);
  v13 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 24);
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  if (v5 != v10 || v6 != v11 || v7 != v12 || v8 != v13)
  {
    v17 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v18 = *(v4 + v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 32;
      v21 = *(v4 + v17);

      v22 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v20, &v97);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v24 = Strong;
          (*((*v22 & *Strong) + 0xE0))(v4, *v9, v9[1], v9[2], v9[3]);
        }

        sub_249ECFD64(&v97);
        v20 += 8;
        --v19;
      }

      while (v19);
    }
  }

  if (a2)
  {
    [a2 keylineOutsets];
  }

  else
  {
    v25 = *MEMORY[0x277D768C8];
    v26 = *(MEMORY[0x277D768C8] + 8);
    v27 = *(MEMORY[0x277D768C8] + 16);
    v28 = *(MEMORY[0x277D768C8] + 24);
  }

  v29 = (v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  v30 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  v31 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 8);
  v32 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 16);
  v33 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 24);
  *v29 = v25;
  v29[1] = v26;
  v29[2] = v27;
  v29[3] = v28;
  if (v25 != v30 || v26 != v31 || v27 != v32 || v28 != v33)
  {
    v37 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v38 = *(v4 + v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = v38 + 32;
      v41 = *(v4 + v37);

      v42 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v40, &v97);
        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          (*((*v42 & *v43) + 0xE8))(v4, *v29, v29[1], v29[2], v29[3]);
        }

        sub_249ECFD64(&v97);
        v40 += 8;
        --v39;
      }

      while (v39);
    }
  }

  if (!a2)
  {
    LOBYTE(v46) = 0;
    goto LABEL_43;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = [v45 color];
    v47 = v46 >> 8;
    v48 = v46 & 0xFFFFFFFFFFFF0000;
LABEL_44:
    v49 = 1;
    goto LABEL_45;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    [v61 adaptiveColorMatrix];
    v49 = 0;
    LOBYTE(v46) = v97;
    v2 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v96 = v102;
    v47 = v97 >> 8;
    v48 = v97 & 0xFFFFFFFFFFFF0000;
    goto LABEL_45;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46)
  {
LABEL_43:
    LOBYTE(v47) = 0;
    v48 = 0;
    goto LABEL_44;
  }

  v86 = v46;
  swift_unknownObjectRetain();
  v87 = [v86 preferAudioReactivity];
  v88 = [v86 screenBlendMode];
  [v86 alpha];
  v2 = v89;
  swift_unknownObjectRelease();
  v48 = 0;
  LOBYTE(v46) = v87;
  v49 = 2;
  LOBYTE(v47) = v88;
LABEL_45:
  v97 = v48 | v46 | (v47 << 8);
  v98 = v2;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v102 = v96;
  v103 = v49;
  sub_249ED3A80(&v97);
  if (a2)
  {
    [a2 normalizedStartLocation];
  }

  else
  {
    v50 = 0.99;
  }

  v51 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation;
  v52 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation);
  *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation) = v50;
  if (v50 != v52)
  {
    v53 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v54 = *(v4 + v53);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v54 + 32;
      v57 = *(v4 + v53);

      v58 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v56, v92);
        v59 = swift_unknownObjectWeakLoadStrong();
        if (v59)
        {
          v60 = v59;
          (*((*v58 & *v59) + 0x100))(v4, *(v4 + v51));
        }

        sub_249ECFD64(v92);
        v56 += 8;
        --v55;
      }

      while (v55);
    }
  }

  if (a2)
  {
    [a2 normalizedStopLocation];
  }

  else
  {
    v62 = 1.0;
  }

  v63 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation;
  v64 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation);
  *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation) = v62;
  if (v62 != v64)
  {
    v65 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v66 = *(v4 + v65);
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = v66 + 32;
      v69 = *(v4 + v65);

      v70 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v68, v91);
        v71 = swift_unknownObjectWeakLoadStrong();
        if (v71)
        {
          v72 = v71;
          (*((*v70 & *v71) + 0x108))(v4, *(v4 + v63));
        }

        sub_249ECFD64(v91);
        v68 += 8;
        --v67;
      }

      while (v67);
    }
  }

  if (a2)
  {
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73)
    {
      v74 = v73;
      swift_unknownObjectRetain();
      [v74 edrGain];
      v75 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain;
      v76 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain);
      *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain) = v77;
      if (v77 != v76)
      {
        v78 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
        swift_beginAccess();
        v79 = *(v4 + v78);
        v80 = *(v79 + 16);
        if (v80)
        {
          v81 = v79 + 32;
          v82 = *(v4 + v78);

          v83 = MEMORY[0x277D85000];
          do
          {
            sub_249EB7448(v81, &v90);
            v84 = swift_unknownObjectWeakLoadStrong();
            if (v84)
            {
              v85 = v84;
              (*((*v83 & *v84) + 0xF8))(v4, *(v4 + v75));
            }

            sub_249ECFD64(&v90);
            v81 += 8;
            --v80;
          }

          while (v80);
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void __swiftcall DRPDropletContextView.addContainer(contentView:)(DRPDropletContainerView *__return_ptr retstr, UIView_optional *contentView)
{
  v3 = v2;
  type metadata accessor for DRPDropletContainerView();
  v5 = contentView;
  v6 = sub_249ECCA8C();
  v7 = sub_249ECB3DC();

  v8 = sub_249EB0FAC(contentView, v7);
  v9 = v3;
  v10 = v8;
  v11 = *(v9 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference;
  if ((*(v11 + 8) & 1) == 0)
  {
    [v8 setBoundaryEdges_];
  }

  v12 = sub_249ECEE38();
  [v12 addSubview_];
}

id sub_249ECEE38()
{
  v1 = OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView;
  v2 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

Swift::Void __swiftcall DRPDropletContextView.removeContainer(_:)(DRPDropletContainerView *a1)
{
  v4 = [(DRPDropletContainerView *)a1 superview];
  v22 = v1;
  v5 = sub_249ECEE38();

  if (v4)
  {

    if (v4 != v5)
    {
      goto LABEL_17;
    }

    v6 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    swift_beginAccess();
    v19 = v6;
    v20 = a1;
    v2 = *(&a1->super.super.super.isa + v6);
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
    {

      if (!i)
      {
        break;
      }

      v8 = 0;
      v21 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          v9 = MEMORY[0x24C205BD0](v8, v2);
        }

        else
        {
          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = sub_249ECCA8C();
        v13 = *&v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
        v14 = sub_249EB4510();
        v23 = v10;
        MEMORY[0x28223BE20](v14, v15);
        v18[2] = &v23;
        sub_249ECC7B8(sub_249ECFDCC, v18, v14);

        [v10 removeFromSuperview];
        ++v8;
        if (v11 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:

    v16 = v20;
    v17 = *(&v20->super.super.super.isa + v19);
    *(&v20->super.super.super.isa + v19) = MEMORY[0x277D84F90];

    [(DRPDropletContainerView *)v16 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

char *DRPDropletContextView.acquireGeometricChangeAssertion(forReason:)()
{
  result = sub_249ECCA8C();
  v1 = *&result[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (v1)
  {
    v2 = result;
    v3 = v1;
    v4 = sub_249ED6C60();
    v5 = [v3 acquireForReason_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DRPDropletContextView.invalidate()()
{
  v0 = sub_249ECCA8C();
  v1 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];

  [v1 invalidate];
}

void __swiftcall DRPDropletContextView.init(frame:)(DRPDropletContextView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id DRPDropletContextView.init(frame:)()
{
  *(v0 + OBJC_IVAR___DRPDropletContextView_dropletColor) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView_keylineStyle) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) = 0;
  v19.super_class = DRPDropletContextView;
  v1 = objc_msgSendSuper2(&v19, sel_initWithFrame_);
  v2 = [v1 layer];
  [v2 setAllowsHitTesting_];

  v3 = sub_249ECCA8C();
  [v1 addSubview_];

  v4 = sub_249ECEE38();
  [v1 addSubview_];

  v5 = [v1 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v6 = sub_249ED6CD0();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C205BD0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setOverrideUserInterfaceStyle_];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v13 = sub_249ED6D00();
  [v12 setValue:v13 forKey:*MEMORY[0x277CDA520]];

  v14 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249ED8C90;
  *(v15 + 56) = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
  *(v15 + 32) = v12;
  v16 = v12;
  v17 = sub_249ED6CC0();

  [v14 setFilters_];

  return v1;
}

void DRPDropletContextView.init(coder:)()
{
  *(v0 + OBJC_IVAR___DRPDropletContextView_dropletColor) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView_keylineStyle) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) = 0;
  sub_249ED6E50();
  __break(1u);
}

void __swiftcall DRPDropletContextView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v12.super_class = DRPDropletContextView;
  v4 = [(UIView_optional *)&v12 hitTest:with.value.super.isa withEvent:_.x, _.y];
  v5 = v4;
  if (v4)
  {
    if (v4 == v3)
    {
      goto LABEL_4;
    }

    v6 = [v3 subviews];
    sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
    v7 = sub_249ED6CD0();

    v11 = v5;
    MEMORY[0x28223BE20](v8, v9);
    v10[2] = &v11;
    LOBYTE(v6) = sub_249ECC7B8(sub_249ECFE24, v10, v7);

    if (v6)
    {
LABEL_4:
    }
  }
}

Swift::Void __swiftcall DRPDropletContextView.layoutSubviews()()
{
  v16.super_class = DRPDropletContextView;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v10 = sub_249ED6CD0();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C205BD0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setFrame_];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_249ECFD64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249ECFDCC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for DropletParticipantView();
  return sub_249ED6D80() & 1;
}

uint64_t sub_249ECFE24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  return sub_249ED6D80() & 1;
}

unint64_t sub_249ECFEA0()
{
  result = qword_27EF29968;
  if (!qword_27EF29968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF29960, &unk_249ED9390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29968);
  }

  return result;
}

uint64_t sub_249ECFF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_249ED1CFC(v7, v9) & 1;
}

id sub_249ECFF70(uint64_t a1)
{
  v3 = *(a1 + 8) * *(a1 + 88);
  v4 = *(a1 + 16) * *(a1 + 128);
  BSRectWithSize();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  UIRectCenteredAboutPoint();
  v7 = -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 16];
  v8 = -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 24];
  UIEdgeInsetsInsetRect(v9, v10, v11, v12, -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets], -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 8]);
  BSRectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  UIRectGetCenter();
  v22 = v21;
  v24 = v23;
  [v1 bounds];
  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v1 setBounds_];
    v25 = sub_249ED1088();
    [v25 setFrame_];

    v26 = sub_249ED0FD4();
    [v26 setFrame_];

    v27 = *&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
    if (v27)
    {
      [v27 setFrame_];
    }

    sub_249ED14A4();
  }

  result = [v1 center];
  if (v30 != v22 || v29 != v24)
  {

    return [v1 setCenter_];
  }

  return result;
}

void sub_249ED0190(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v6 = *(v4 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v7 = *(v4 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 16);
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    sub_249ED14A4();
  }
}

void sub_249ED01D4(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets];
  v7 = *&v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];

    [v4 layoutIfNeeded];
  }
}

uint64_t sub_249ED0258(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType;
  v5 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32);
  v6 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64);
  v13 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48);
  v14 = v6;
  v15 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80);
  v7 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16);
  v12[0] = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  v12[1] = v7;
  v12[2] = v5;
  v16[0] = v12[0];
  v16[1] = v7;
  v16[3] = v13;
  v16[4] = v6;
  v16[2] = v5;
  v17 = v15;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(v4 + 80) = *(a2 + 80);
  v9 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v9;
  *(v4 + 32) = *(a2 + 32);
  sub_249EB0270(v12, v11);
  sub_249EB0270(a2, v11);
  sub_249EB73F4(v16);
  sub_249ED1FA4();
  return sub_249EB73F4(v12);
}

void sub_249ED030C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
  v3 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation);
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = sub_249ED113C();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C205BD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = *(v4 + v2);
        sub_249EB383C();
        v14 = *(v4 + v9);
        sub_249EB39A8();

        ++v8;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_249ED0440(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation;
  v3 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation);
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = sub_249ED113C();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C205BD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = *(v4 + v9);
        sub_249EB383C();
        v14 = *(v4 + v2);
        sub_249EB39A8();

        ++v8;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_249ED0574()
{
  v1 = v0;
  v2 = [v0 isHidden];
  v3 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView;
  v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
  if (v2)
  {
    if (v4)
    {
      v22 = v4;
      [v22 setAlpha_];
      [v22 setHidden_];
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_8;
    }

    [v0 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain];
    v14 = objc_allocWithZone(type metadata accessor for AnimatableIntelligentView());
    v15 = sub_249ED2ECC(1, v6, v8, v10, v12, v13);
    [v15 setAlpha_];
    v16 = sub_249ED0FD4();
    [v1 insertSubview:v15 aboveSubview:v16];

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    aBlock[4] = sub_249ED1F40;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249EBF654;
    aBlock[3] = &block_descriptor_4;
    v19 = _Block_copy(aBlock);
    v20 = v1;

    [v17 _performWithoutRetargetingAnimations_];
    _Block_release(v19);
    v21 = *&v1[v3];
    *&v1[v3] = v15;

    v4 = *&v1[v3];
    if (v4)
    {
LABEL_8:
      [v4 setHidden_];
    }
  }
}

void sub_249ED07C4(double a1)
{
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain;
    *&v2[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain] = a1;
    v4 = v2;
    v5 = sub_249ED34F4();
    sub_249ED23B8(*&v2[v3]);
  }
}

void *sub_249ED0950(_BYTE *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  *v3 = 0;
  v3[80] = 1;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView) = 0;
  v4 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 16];
  v41[0] = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType];
  v41[1] = v4;
  v5 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 32];
  v6 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 48];
  v7 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 64];
  v42 = a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80];
  v41[3] = v6;
  v41[4] = v7;
  v41[2] = v5;
  v8 = *(v3 + 1);
  v43[0] = *v3;
  v43[1] = v8;
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v44 = v3[80];
  v43[3] = v10;
  v43[4] = v11;
  v43[2] = v9;
  memmove(v3, &a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType], 0x51uLL);
  sub_249EB0270(v41, v40);
  sub_249EB73F4(v43);
  v12 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v13 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
  *v12 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
  v12[1] = v13;
  v14 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets);
  v15 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 16];
  *v14 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets];
  v14[1] = v15;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation];
  v16 = 0x27EF29000uLL;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation];
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain];
  v39 = a1;
  v17 = sub_249EBED94(v39);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 rootSettings];
  [v20 addKeyObserver_];

  sub_249ED1618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249ED8F10;
  *(inited + 32) = sub_249ED1088();
  *(inited + 40) = sub_249ED0FD4();
  v22 = sub_249ED113C();
  if (v22 >> 62)
  {
    goto LABEL_30;
  }

  sub_249ED6EE0();
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  for (i = v22; ; i = sub_249ED6E60())
  {

    v40[0] = inited;
    sub_249EB6F9C(i);
    v24 = v40[0];
    if (v40[0] >> 62)
    {
      inited = sub_249ED6E70();
    }

    else
    {
      inited = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v19;
    if (inited)
    {
      v25 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C205BD0](v25, v24);
        }

        else
        {
          if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v26 = *(v24 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v19 addSubview_];

        ++v25;
        if (v28 == inited)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_14:

    sub_249ED1FA4();
    sub_249ED14A4();
    inited = *(v19 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews);
    if (inited >> 62)
    {
      if (inited < 0)
      {
        v38 = *(v19 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews);
      }

      v29 = sub_249ED6E70();
    }

    else
    {
      v29 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
    v16 = *(v16 + 2480);

    if (!v29)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x24C205BD0](v31, inited);
      }

      else
      {
        if (v31 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v32 = *(inited + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = *(v19 + v30);
      sub_249EB383C();
      v36 = *(v19 + v16);
      sub_249EB39A8();

      ++v31;
      if (v34 == v29)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  }

LABEL_25:

  return v19;
}

void sub_249ED0E18()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DropletBackgroundView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = sub_249ED1088();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_249ED0FD4();
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176];
  v21 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160];
  v22 = v5;
  v23 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192];
  v24 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208];
  v6 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112];
  v17 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96];
  v18 = v6;
  v7 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144];
  v19 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128];
  v20 = v7;
  v8 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48];
  v13 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32];
  v14 = v8;
  v9 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80];
  v15 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64];
  v16 = v9;
  v10 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16];
  v11 = *&v0[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  v12 = v10;
  if (!sub_249EB74B8(&v11))
  {
    v26[10] = v21;
    v26[11] = v22;
    v26[12] = v23;
    v27 = v24;
    v26[6] = v17;
    v26[7] = v18;
    v26[8] = v19;
    v26[9] = v20;
    v26[2] = v13;
    v26[3] = v14;
    v26[4] = v15;
    v26[5] = v16;
    v26[0] = v11;
    v26[1] = v12;
    sub_249ECFF70(v26);
  }

  sub_249ED14A4();
}

id sub_249ED0FD4()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for AnimatableAdaptiveColorMatrixView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_249ED1088()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_249ED113C()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews;
  if (*(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249ED8F30;
    *(v2 + 32) = sub_249ED11EC();
    *(v2 + 40) = sub_249ED1284();
    *(v2 + 48) = sub_249ED132C();
    *(v2 + 56) = sub_249ED13E8();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_249ED11EC()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView];
  }

  else
  {
    [v0 bounds];
    Width = CGRectGetWidth(v9);
    v5 = sub_249EB3EF8(1, 0.0, 0.0, Width, *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths], 0.0, 1.0);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_249ED1284()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 8];
    [v0 bounds];
    Height = CGRectGetHeight(v10);
    v6 = sub_249EB3EF8(0, 0.0, 0.0, v4, Height, 0.0, 1.0);
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_249ED132C()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 16];
    [v0 bounds];
    v5 = CGRectGetHeight(v11) - v4;
    [v0 bounds];
    Width = CGRectGetWidth(v12);
    v7 = sub_249EB3EF8(1, 0.0, v5, Width, v4, 1.0, 0.0);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_249ED13E8()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 24];
    [v0 bounds];
    v5 = CGRectGetWidth(v11) - v4;
    [v0 bounds];
    Height = CGRectGetHeight(v12);
    v7 = sub_249EB3EF8(0, v5, 0.0, v4, Height, 1.0, 0.0);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_249ED14A4()
{
  v1 = sub_249ED11EC();
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  v3 = &v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths];
  [v1 setFrame_];

  v4 = sub_249ED132C();
  v5 = v3[2];
  [v0 bounds];
  v6 = CGRectGetHeight(v14) - v5;
  [v0 bounds];
  [v4 setFrame_];

  v7 = sub_249ED1284();
  v8 = v3[1];
  [v0 bounds];
  [v7 setFrame_];

  v11 = sub_249ED13E8();
  v9 = v3[3];
  [v0 bounds];
  v10 = CGRectGetWidth(v17) - v9;
  [v0 bounds];
  [v11 setFrame_];
}

uint64_t sub_249ED1618()
{
  v1 = [objc_opt_self() rootSettings];
  v2 = [v1 suppressCompositingFilterDestOut];

  if (!v2)
  {
    v14 = *MEMORY[0x277CDA310];
    v15 = sub_249ED6C70();
    v17 = v16;
    v18 = sub_249ED113C();
    v5 = v18;
    if (v18 >> 62)
    {
      v19 = sub_249ED6E70();
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_16:
        v20 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C205BD0](v20, v5);
          }

          else
          {
            if (v20 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v23 = *(v5 + 8 * v20 + 32);
          }

          v24 = v23;
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_36;
          }

          v26 = [v23 layer];
          v27 = [v26 compositingFilter];

          if (v27)
          {
            sub_249ED6D90();
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
          }

          v34 = v32;
          v35 = v33;
          if (*(&v33 + 1))
          {
            if (swift_dynamicCast())
            {
              if (v30 == v15 && v31 == v17)
              {

                goto LABEL_19;
              }

              v28 = sub_249ED6ED0();

              if (v28)
              {

                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_249EAFF5C(&v34);
          }

          v21 = [v24 layer];
          v22 = sub_249ED6C60();
          [v21 setCompositingFilter_];

LABEL_19:
          ++v20;
        }

        while (v25 != v19);
      }
    }
  }

  v3 = [v0 traitCollection];
  [v3 displayScale];

  v4 = sub_249ED113C();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C205BD0](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 layer];
      v12 = [v11 compositingFilter];

      if (v12)
      {
        sub_249ED6D90();
        swift_unknownObjectRelease();
        sub_249EA90F4(&v32, &v34);
        sub_249EAFF5C(&v34);
        v13 = [v9 layer];
        [v13 setCompositingFilter_];
      }

      else
      {

        v34 = 0u;
        v35 = 0u;
        sub_249EAFF5C(&v34);
      }

      if (v10 == i)
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

void sub_249ED19FC()
{
  sub_249ECBF60(*(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 8), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 24), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 40), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 56), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 72), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80));

  v1 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews);

  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView);
}

id sub_249ED1AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_249ED1C40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_249ED1C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_249ED1CFC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 80))
  {
    if (*(a1 + 80) != 1)
    {
      if (*(a2 + 80) == 2)
      {
        v7 = (v4 == *(a2 + 8)) & ~(v3 ^ v2 | ((v3 ^ v2) >> 8));
        return v7 & 1;
      }

      goto LABEL_22;
    }

    if (*(a2 + 80) != 1)
    {
      goto LABEL_22;
    }

    if (v3)
    {
      if (v2)
      {
        sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
        sub_249EB0270(a1, v20);
        sub_249EB0270(a2, v20);
        v7 = sub_249ED6D80();
        sub_249EB73F4(a1);
        sub_249EB73F4(a2);
        return v7 & 1;
      }

LABEL_22:
      v7 = 0;
      return v7 & 1;
    }

    if (v2)
    {
      v18 = 0;
      v7 = 0;
    }

    else
    {
      sub_249EB0270(a1, v20);
      sub_249EB0270(a2, v20);
      v7 = 1;
    }
  }

  else
  {
    if (*(a2 + 80))
    {
      goto LABEL_22;
    }

    if (*&v2 != COERCE_FLOAT(v3 & 0xFFFF00FF | (BYTE1(v3) << 8)))
    {
      goto LABEL_22;
    }

    v8 = HIDWORD(*a1);
    if (*(&v2 + 1) != *(&v3 + 1))
    {
      goto LABEL_22;
    }

    v9 = *(a1 + 8);
    if (*(a2 + 8) != *&v4)
    {
      goto LABEL_22;
    }

    v10.i32[0] = HIDWORD(*(a1 + 8));
    v10.i32[1] = *(a1 + 16);
    v10.i64[1] = *(a1 + 20);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*(a2 + 12), v10), vceqq_f32(*(a2 + 28), *(a1 + 28))))) & 1) == 0)
    {
      goto LABEL_22;
    }

    v11 = *(a1 + 56);
    v12 = *(a2 + 56);
    v13.i32[0] = HIDWORD(*(a1 + 44));
    v13.i32[1] = *(a1 + 52);
    v13.i64[1] = *(a1 + 56);
    v14.i32[0] = HIDWORD(*(a2 + 44));
    v14.i32[1] = *(a2 + 52);
    v14.i64[1] = *(a2 + 56);
    if ((vminv_u16(vmovn_s32(vceqq_f32(v13, v14))) & 1) == 0)
    {
      goto LABEL_22;
    }

    v16 = *(a1 + 72) == *(a2 + 72) && COERCE_FLOAT(HIDWORD(*(a1 + 64))) == COERCE_FLOAT(HIDWORD(*(a2 + 64)));
    v7 = v16 && *(a1 + 76) == *(a2 + 76);
  }

  return v7 & 1;
}

id sub_249ED1F40()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_249ED1FA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48);
  v31 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32);
  v32 = v2;
  v33 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64);
  v34 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80);
  v3 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16);
  v30[0] = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  v30[1] = v3;
  v4 = BYTE1(v30[0]);
  v5 = *(v30 + 2) | (WORD3(v30[0]) << 32);
  v6 = *(v30 + 1);
  v37 = v2;
  v38 = v33;
  v35 = v3;
  v36 = v31;
  if (!v34)
  {
    v12 = sub_249ED1088();
    [v12 setAlpha_];

    v13 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
    if (v13)
    {
      [v13 setAlpha_];
    }

    v14 = sub_249ED0FD4();
    v15 = &v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
    v16 = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 48];
    v29[2] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 32];
    v29[3] = v16;
    v29[4] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 64];
    v17 = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 16];
    v29[0] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
    v29[1] = v17;
    *v15 = v30[0];
    v15[1] = v4;
    *(v15 + 3) = WORD2(v5);
    *(v15 + 2) = v5;
    *(v15 + 1) = v6;
    v18 = v38;
    *(v15 + 3) = v37;
    *(v15 + 4) = v18;
    v19 = v36;
    *(v15 + 1) = v35;
    *(v15 + 2) = v19;
    sub_249ECBF74(v29);

    result = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView);
    v20 = 1.0;
    goto LABEL_9;
  }

  if (v34 == 1)
  {
    v7 = *&v30[0];
    v8 = sub_249ED0FD4();
    [v8 setAlpha_];

    v9 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
    if (v9)
    {
      [v9 setAlpha_];
    }

    v10 = sub_249ED1088();
    [v10 setBackgroundColor_];

    [*(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) setAlpha_];
    return sub_249EB73F4(v30);
  }

  v21 = sub_249ED1088();
  [v21 setAlpha_];

  v22 = sub_249ED0FD4();
  [v22 setAlpha_];

  v23 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView;
  result = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
  if (result)
  {
    [result setHidden_];
    result = *(v1 + v23);
    if (result)
    {
      v24 = [result layer];
      v25 = (BYTE1(v30[0]) & 1) != 0 ? *MEMORY[0x277CDA600] : 0;
      [v24 setCompositingFilter_];

      result = swift_unknownObjectRelease();
      v26 = *(v1 + v23);
      if (v26)
      {
        v27 = v26[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity];
        v26[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] = v30[0] & 1;
        v28 = v26;
        sub_249ED2B10(v27);

        result = *(v1 + v23);
        if (result)
        {
          v20 = v6;
LABEL_9:

          return [result setAlpha_];
        }
      }
    }
  }

  return result;
}

void sub_249ED22E4()
{
  v1 = v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType;
  *v1 = 0;
  *(v1 + 80) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView) = 0;
  sub_249ED6E50();
  __break(1u);
}

void sub_249ED23B8(double a1)
{
  v3 = [v1 layer];
  [v3 setWantsExtendedDynamicRangeContent_];

  v4 = [v1 layer];
  [v4 setAllowsLimitedHeadroom_];

  v5 = [v1 layer];
  v7 = v5;
  v6 = 2.0;
  if (a1 < 2.0)
  {
    v6 = a1;
  }

  *&v6 = v6;
  [v5 setGain_];
}

void sub_249ED24A0(float *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
  if (*&v1[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix] != *a1 || *(v2 + 1) != a1[1] || *(v2 + 2) != a1[2] || *(v2 + 3) != a1[3] || *(v2 + 4) != a1[4] || *(v2 + 5) != a1[5] || *(v2 + 6) != a1[6] || *(v2 + 7) != a1[7] || *(v2 + 8) != a1[8] || *(v2 + 9) != a1[9] || *(v2 + 10) != a1[10] || *(v2 + 12) != a1[12] || *(v2 + 13) != a1[13] || *(v2 + 14) != a1[14] || *(v2 + 15) != a1[15] || *(v2 + 17) != a1[17] || *(v2 + 18) != a1[18] || *(v2 + 19) != a1[19])
  {
    v3 = [v1 layer];
    v4 = *(v2 + 3);
    v10 = *(v2 + 2);
    v11 = v4;
    v12 = *(v2 + 4);
    v5 = *(v2 + 1);
    v8 = *v2;
    v9 = v5;
    v6 = [objc_opt_self() valueWithCAColorMatrix_];
    if (qword_281252CA8 != -1)
    {
      swift_once();
    }

    v7 = sub_249ED6C60();
    [v3 setValue:v6 forKeyPath:{v7, v8, v9, v10, v11, v12}];
  }
}

uint64_t sub_249ED2764(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252DF0 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249ED3A64, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for AnimatableLightView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}

id sub_249ED289C()
{
  v1 = OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D76058]) initWithFrame:v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] preferringAudioReactivity:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_249ED2960()
{
  v1 = OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = [objc_opt_self() whiteColor];
    [v8 setBackgroundColor_];

    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_249ED2B10(char a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity;
  if (v1[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] != (a1 & 1))
  {
    v3 = v1;
    v4 = sub_249ED34F4();
    [v4 removeFromSuperview];

    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = v3[v2];
    v14 = [objc_opt_self() rootSettings];
    v15 = [v14 intelligentEdgeLightKeylineStyleColorMatrix];

    [v15 caColorMatrix];
    v16 = *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain];
    v17 = type metadata accessor for AnimatableLightView();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView] = 0;
    *&v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView] = 0;
    v19 = &v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
    v20 = v45;
    v19[2] = v44;
    v19[3] = v20;
    v19[4] = v46;
    v21 = v43;
    *v19 = v42;
    v19[1] = v21;
    v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] = v13;
    v41.receiver = v18;
    v41.super_class = v17;
    v22 = objc_msgSendSuper2(&v41, sel_initWithFrame_preferringAudioReactivity_, v13, v6, v8, v10, v12);
    v23 = *MEMORY[0x277CDA2C0];
    v24 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v25 = v22;
    v26 = [v24 initWithType_];
    v27 = objc_opt_self();
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v40[0] = v42;
    v40[1] = v43;
    v28 = [v27 valueWithCAColorMatrix_];
    [v26 setValue:v28 forKeyPath:*MEMORY[0x277CDA440]];

    v29 = sub_249ED6D00();
    [v26 setValue:v29 forKeyPath:*MEMORY[0x277CDA4E0]];

    v30 = sub_249ED6D00();
    [v26 setValue:v30 forKeyPath:*MEMORY[0x277CDA350]];

    v31 = v25;
    v32 = [v31 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_249ED8C90;
    *(v33 + 56) = sub_249ED394C();
    *(v33 + 32) = v26;
    v34 = v26;
    v35 = sub_249ED6CC0();

    [v32 setFilters_];

    v36 = sub_249ED289C();
    v37 = sub_249ED2960();
    [v36 addSubview_];

    [v31 setMaskView_];
    sub_249ED23B8(v16);

    v38 = *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
    *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView] = v31;
    v39 = v31;

    [v3 addSubview_];
  }
}

id sub_249ED2ECC(char a1, double a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView] = 0;
  v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] = a1;
  *&v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain] = a6;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for AnimatableIntelligentView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  v12 = sub_249ED34F4();
  [v11 addSubview_];

  v13 = [objc_opt_self() rootSettings];
  [v13 addKeyObserver_];

  return v11;
}

uint64_t sub_249ED30B8(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252DD8 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249ED39F0, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for AnimatableIntelligentView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}
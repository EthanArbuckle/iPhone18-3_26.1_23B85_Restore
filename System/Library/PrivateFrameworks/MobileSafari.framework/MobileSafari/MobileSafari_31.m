id sub_18BB9E718()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D91C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_18BC1F698();
  [v1 setAccessibilityTraits_];
  v6 = *&v1[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
  sub_18BBA0624();
  sub_18BC1F3C8();
  v7 = &v1[OBJC_IVAR___SFTabOverviewItemView_metrics];
  sub_18BC20018();
  v8 = sub_18BC20028();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v9 = sub_18BC211E8();
  [v6 setHoverStyle_];

  [v1 addSubview_];
  [v1 addSubview_];
  [v1 addSubview_];
  [v1 addSubview_];
  memset(v26, 0, sizeof(v26));
  sub_18BB9EA44(v26);
  v10 = &v6[OBJC_IVAR___SFTabThumbnailView_metrics];
  v11 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v24[8] = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v24[9] = v11;
  v25 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
  v12 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v24[4] = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v24[5] = v12;
  v13 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v24[6] = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v24[7] = v13;
  v14 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v24[0] = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics];
  v24[1] = v14;
  v15 = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v24[2] = *&v6[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v24[3] = v15;
  memmove(&v6[OBJC_IVAR___SFTabThumbnailView_metrics], v7 + 24, 0xA8uLL);
  v16 = *(v10 + 9);
  v22[8] = *(v10 + 8);
  v22[9] = v16;
  v23 = *(v10 + 20);
  v17 = *(v10 + 5);
  v22[4] = *(v10 + 4);
  v22[5] = v17;
  v18 = *(v10 + 7);
  v22[6] = *(v10 + 6);
  v22[7] = v18;
  v19 = *(v10 + 1);
  v22[0] = *v10;
  v22[1] = v19;
  v20 = *(v10 + 3);
  v22[2] = *(v10 + 2);
  v22[3] = v20;
  if (!sub_18BA1A2E4(v22, v24))
  {
    sub_18BA18DB4();
  }

  [v1 setNeedsLayout];
  return [v1 tintColorDidChange];
}

uint64_t sub_18BB9E9FC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_18BBA0104(v7, v8) & 1;
}

uint64_t sub_18BB9EA44(uint64_t a1)
{
  v2 = v1;
  v35 = *(a1 + 3);
  v36 = *(a1 + 2);
  v3 = sub_18BC20B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC3E410;
  *(inited + 32) = 0x64656E6E69507349;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v6 = &v2[OBJC_IVAR___SFTabOverviewItemView_configuration];
  v7 = 1702195828;
  if (!v2[OBJC_IVAR___SFTabOverviewItemView_configuration + 1])
  {
    v7 = 0x65736C6166;
  }

  v8 = 0xE500000000000000;
  if (v2[OBJC_IVAR___SFTabOverviewItemView_configuration + 1])
  {
    v8 = 0xE400000000000000;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  sub_18BA64DB8(inited);
  swift_setDeallocating();
  sub_18BA13828(v5);
  v9 = sub_18BC20998();

  v10 = WBSMakeAccessibilityIdentifier();

  if (!v10)
  {
    sub_18BC20BD8();
    v10 = sub_18BC20B98();
  }

  [v2 setAccessibilityIdentifier_];

  if (*(v6 + 5))
  {
    sub_18BC1E3F8();
    v11 = sub_18BC20B98();
  }

  else
  {
    v11 = 0;
  }

  [v2 setAccessibilityLabel_];

  v38 = v2;
  v12 = *&v2[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
  [v12 setHidden_];
  v13 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration + 16];
  v53 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration];
  v54 = v13;
  v15 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration + 48];
  v14 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration + 64];
  v16 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration + 32];
  v58 = *&v12[OBJC_IVAR___SFTabThumbnailView_configuration + 80];
  v56 = v15;
  v57 = v14;
  v55 = v16;
  memmove(&__dst, &v12[OBJC_IVAR___SFTabThumbnailView_configuration], 0x58uLL);
  *&__dst = *(v6 + 1);
  if (v6[1] == 1)
  {
    v17 = *(v6 + 4);
    v18 = *(v6 + 5);
    v19 = v6[25];
    sub_18BC1E3F8();
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 1;
  }

  v20 = *(&v53 + 1);
  v21 = v54;
  sub_18BA1A650(&v53, v60);
  sub_18BA1A6B8(v20, v21, *(&v21 + 1));
  *(&__dst + 1) = v19;
  *&v48 = v17;
  *(&v48 + 1) = v18;
  v22 = *(v6 + 2);
  sub_18BC1E3F8();

  *&v49 = v22;
  sub_18BB9EFB4(v38, v59);
  sub_18BBA0590(v59, &v49 + 8);
  v60[2] = v49;
  v60[3] = v50;
  v60[4] = v51;
  v61 = v52;
  v60[0] = __dst;
  v60[1] = v48;
  sub_18BA1A650(v60, v45);
  sub_18BA1A548(v60);
  sub_18BA1A688(v60);
  v45[2] = v49;
  v45[3] = v50;
  v45[4] = v51;
  v46 = v52;
  v45[0] = __dst;
  v45[1] = v48;
  sub_18BA1A688(v45);
  v23 = v6[25];
  v24 = *(v6 + 4);
  v25 = *(v6 + 5);
  sub_18BC1E3F8();
  result = sub_18BB38060(v23, v24, v25);
  v27 = *(a1 + 16);
  if (v27 && v6[27] == (*(a1 + 27) & 1) || (type metadata accessor for AnimationSettings(), v28 = swift_initStaticObject(), v29 = swift_allocObject(), *(v29 + 16) = v38, v30 = objc_opt_self(), v31 = swift_allocObject(), v31[2] = v28, v31[3] = sub_18BBA0688, v31[4] = v29, v43 = sub_18B7D80AC, v44 = v31, aBlock = MEMORY[0x1E69E9820], v40 = 1107296256, v41 = sub_18B7B0DB0, v42 = &block_descriptor_29, v32 = _Block_copy(&aBlock), v33 = v38, sub_18BC1E1A8(), , v43 = CGRectMake, v44 = 0, aBlock = MEMORY[0x1E69E9820], v40 = 1107296256, v41 = sub_18B8043A0, v42 = &block_descriptor_32_1, v34 = _Block_copy(&aBlock), , [v30 _animateUsingSpringBehavior_tracking_animations_completion_], _Block_release(v34), _Block_release(v32), result = , v27))
  {
    if (v6[3] == 1)
    {
      if ((v35 | v36))
      {
        return result;
      }
    }

    else if (((v35 | v36) & 1) == v6[2])
    {
      return result;
    }

    return sub_18BBA038C();
  }

  return result;
}

_BYTE *sub_18BB9EFB4@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = &result[OBJC_IVAR___SFTabOverviewItemView_configuration];
  if (result[OBJC_IVAR___SFTabOverviewItemView_configuration + 24] == 1)
  {
    result = sub_18BA6F1CC((v3[3] | v3[2]) & 1, v19);
    v5 = v19[0];
    v4 = v19[1];
    v6 = v19[2];
    v7 = v22;
    v8 = v23;
    v9 = 256;
    if (!v21)
    {
      v9 = 0;
    }

    v10 = v9 | v20;
  }

  else
  {
    if (v3[1] == 1)
    {
      if (qword_1EA9D23B8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EA9F80D0;
    }

    else
    {
      if (*v3 != 1)
      {
        v4 = 0;
        v6 = 0;
        v10 = 0;
        v7 = 0;
        v8 = 0;
        v5 = 1;
        goto LABEL_17;
      }

      if (qword_1EA9D23B0 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EA9F80A0;
    }

    v5 = *v11;
    v4 = v11[1];
    v6 = v11[2];
    v12 = *(v11 + 24);
    v13 = *(v11 + 25);
    v7 = v11[4];
    v8 = v11[5];
    v14 = 256;
    if (!v13)
    {
      v14 = 0;
    }

    v10 = v14 | v12;
    v15 = v8;
    v16 = v5;
    v17 = v4;
    v18 = v6;
    result = v7;
  }

LABEL_17:
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v10;
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

uint64_t sub_18BB9F21C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = sub_18BC1EC08();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR___SFTabOverviewItemView_titleView);
  v39 = a1;
  if (!a2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v37[1] = v7;
  swift_beginAccess();
  v8 = *(a2 + 64);
  v9 = *(v8 + 16);
  v38 = v3;
  if (!v9)
  {
    goto LABEL_8;
  }

  sub_18BC1E3F8();
  v10 = sub_18B857EE4(a1);
  if ((v11 & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = *(*(v8 + 56) + 8 * v10);
  sub_18BC1E3F8();

  v13 = sub_18BA61718(v12);

  if (!v13)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  swift_beginAccess();
  v14 = *(v13 + 16);
  v15 = v14;

LABEL_9:
  v17 = v40;
  v18 = v41;
  v19 = v42;
  (*(v40 + 16))(v41, a1, v42);
  type metadata accessor for TabIconRegistration(0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = CGRectMake;
  v16[4] = 0;
  swift_weakInit();
  swift_beginAccess();
  v20 = v16[2];
  v16[2] = v14;
  v21 = v14;
  sub_18BC1E1A8();

  (*(v17 + 32))(v16 + OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id, v18, v19);
  swift_weakAssign();

  sub_18BA62EFC(v16);
  if (v14)
  {

    a1 = v39;
  }

  else
  {
    a1 = v39;
    sub_18BA61EC0(v39);
  }

  v3 = v38;
LABEL_13:
  sub_18BB39264(v16);

  if (!a2)
  {
    v29 = 0;
    return sub_18BA14034(v29);
  }

  v38 = *(v3 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
  swift_beginAccess();
  v22 = *(a2 + 64);
  if (*(v22 + 16))
  {
    sub_18BC1E3F8();
    v23 = sub_18B857EE4(a1);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      sub_18BC1E3F8();

      v26 = sub_18BA61718(v25);

      if (v26)
      {
        swift_beginAccess();
        v27 = *(v26 + 16);
        v28 = v27;

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v27 = 0;
LABEL_21:
  v30 = v40;
  v31 = v41;
  v32 = v42;
  (*(v40 + 16))(v41, a1, v42);
  type metadata accessor for TabIconRegistration(0);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = CGRectMake;
  v29[4] = 0;
  swift_weakInit();
  swift_beginAccess();
  v33 = v29[2];
  v29[2] = v27;
  v34 = v27;
  sub_18BC1E1A8();
  v35 = v34;

  (*(v30 + 32))(v29 + OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id, v31, v32);
  swift_weakAssign();

  sub_18BA62EFC(v29);
  if (v27)
  {
  }

  else
  {
    sub_18BA61EC0(v39);
  }

  return sub_18BA14034(v29);
}

id sub_18BB9F750()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
  v21 = 0x3FF0000000000000uLL;
  *&v22 = 0;
  *(&v22 + 1) = 0x3FF0000000000000;
  v23 = 0uLL;
  [v2 setTransform_];
  v3 = v1[OBJC_IVAR___SFTabOverviewItemView_configuration + 1];
  [v1 bounds];
  Width = v6;
  v9 = v7;
  if ((v3 & 1) == 0)
  {
    Width = CGRectGetWidth(*&v4);
    [v1 bounds];
    v9 = CGRectGetMaxY(v32) - *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 192] - *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 208];
    v4 = 0.0;
    v5 = 0.0;
  }

  [v2 setFrame_];
  v10 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 104];
  v11 = &v2[OBJC_IVAR___SFTabThumbnailView_metrics];
  v28 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v29 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v30 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v31 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
  v24 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v25 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v26 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v27 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v21 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics];
  v22 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v23 = *&v2[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  *(v11 + 10) = v10;
  v12 = *(v11 + 9);
  v19[8] = *(v11 + 8);
  v19[9] = v12;
  v20 = *(v11 + 20);
  v13 = *(v11 + 7);
  v19[6] = *(v11 + 6);
  v19[7] = v13;
  v14 = *(v11 + 1);
  v19[0] = *v11;
  v19[1] = v14;
  v15 = *(v11 + 3);
  v19[2] = *(v11 + 2);
  v19[3] = v15;
  v16 = *(v11 + 5);
  v19[4] = *(v11 + 4);
  v19[5] = v16;
  if (!sub_18BA1A2E4(v19, &v21))
  {
    sub_18BA18DB4();
  }

  v17 = &v2[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v17 = Width;
  v17[1] = v9;
  *(v17 + 16) = 0;
  return [v2 setNeedsLayout];
}

id sub_18BB9F92C()
{
  v1 = &v0[OBJC_IVAR___SFTabOverviewItemView_configuration];
  if ((v0[OBJC_IVAR___SFTabOverviewItemView_configuration + 3] & 1) != 0 || (v2 = 0.0, v3 = 0.0, v1[2]))
  {
    v3 = *&v0[OBJC_IVAR___SFTabOverviewItemView_metrics + 200];
    v2 = 1.0;
  }

  v4 = *&v0[OBJC_IVAR___SFTabOverviewItemView_tintedSelectionBorderView];
  [v4 setAlpha_];
  v5 = v1[1];
  [v0 bounds];
  if ((v5 & 1) == 0)
  {
    Width = CGRectGetWidth(*&v6);
    [v0 bounds];
    MaxY = CGRectGetMaxY(v16);
    v8 = Width;
    v9 = MaxY - *&v0[OBJC_IVAR___SFTabOverviewItemView_metrics + 192] - *&v0[OBJC_IVAR___SFTabOverviewItemView_metrics + 208];
    v6 = 0;
    v7 = 0;
  }

  v17 = CGRectInset(*&v6, -v3, -v3);
  [v4 setFrame_];
  v12 = [v4 layer];
  [v12 setBorderWidth_];

  v13 = v3 + *&v0[OBJC_IVAR___SFTabOverviewItemView_metrics + 104];

  return [v4 _setContinuousCornerRadius_];
}

id sub_18BB9FA80()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_opt_self();
  v21 = sub_18BBA0370;
  v22 = v1;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_18B7B0DB0;
  v20 = &block_descriptor_57;
  v3 = _Block_copy(&v17);
  v4 = v0;
  sub_18BC1E1A8();

  v21 = CGRectMake;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_18B8043A0;
  v20 = &block_descriptor_20_1;
  v5 = _Block_copy(&v17);

  [v2 _animateByRetargetingAnimations_completion_];

  _Block_release(v5);
  _Block_release(v3);
  v6 = &v4[OBJC_IVAR___SFTabOverviewItemView_metrics];
  v7 = *&v4[OBJC_IVAR___SFTabOverviewItemView_metrics + 8];
  v8 = *&v4[OBJC_IVAR___SFTabOverviewItemView_titleView];
  LOBYTE(v1) = v4[OBJC_IVAR___SFTabOverviewItemView_configuration + 1];
  [v4 bounds];
  if ((v1 & 1) == 0)
  {
    Width = CGRectGetWidth(*&v9);
    [v4 bounds];
    MaxY = CGRectGetMaxY(v23);
    v11 = Width;
    v12 = MaxY - v6[24] - v6[26];
    v9 = 0;
    v10 = 0;
  }

  v15 = CGRectGetMaxY(*&v9) + v6[24];
  [v4 bounds];
  return [v8 setFrame_];
}

void sub_18BB9FCB0(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR___SFTabOverviewItemView_configuration;
  v3 = 0.0;
  if (*(a1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 1))
  {
    v4 = 1;
    v5 = 0.0;
  }

  else
  {
    v4 = *(v2 + 27);
    v5 = 1.0;
    if (*(v2 + 27))
    {
      v5 = 0.0;
    }
  }

  [*(a1 + OBJC_IVAR___SFTabOverviewItemView_titleView) setAlpha_];
  v6 = sub_18B7DE654();
  if (v4)
  {
    v3 = *(a1 + OBJC_IVAR___SFTabOverviewItemView_metrics);
  }

  v7 = v6;
  [v6 setValue_];
}

BOOL sub_18BB9FD78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_18BBA0230(v15, v17);
}

id sub_18BB9FEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabOverviewItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB9FF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18BB9FFD4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18BBA0074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BBA0094(uint64_t result, int a2, int a3)
{
  if (a2)
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

  *(result + 216) = v3;
  return result;
}

uint64_t sub_18BBA0104(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || ((a1[3] ^ a2[3]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || (sub_18B86E84C(*(a1 + 2), *(a2 + 2)) & 1) == 0 || ((a1[24] ^ a2[24]) & 1) != 0 || ((a1[25] ^ a2[25]) & 1) != 0 || ((a1[26] ^ a2[26]) & 1) != 0 || ((a1[27] ^ a2[27]))
  {
    return 0;
  }

  v5 = *(a1 + 5);
  v6 = *(a2 + 5);
  result = (v5 | v6) == 0;
  if (v5 && v6)
  {
    if (*(a1 + 4) == *(a2 + 4) && v5 == v6)
    {
      return 1;
    }

    else
    {

      return sub_18BC21FD8();
    }
  }

  return result;
}

BOOL sub_18BBA0230(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  v4 = *(a1 + 136);
  v5 = *(a1 + 168);
  v19[8] = *(a1 + 152);
  v19[9] = v5;
  v20 = *(a1 + 184);
  v6 = *(a1 + 72);
  v7 = *(a1 + 104);
  v19[4] = *(a1 + 88);
  v19[5] = v7;
  v19[6] = *(a1 + 120);
  v19[7] = v4;
  v8 = *(a1 + 40);
  v19[0] = *(a1 + 24);
  v19[1] = v8;
  v19[2] = *(a1 + 56);
  v19[3] = v6;
  v10 = *(a2 + 136);
  v11 = *(a2 + 168);
  v17[8] = *(a2 + 152);
  v17[9] = v11;
  v18 = *(a2 + 184);
  v12 = *(a2 + 72);
  v13 = *(a2 + 104);
  v17[4] = *(a2 + 88);
  v17[5] = v13;
  v17[6] = *(a2 + 120);
  v17[7] = v10;
  v14 = *(a2 + 40);
  v17[0] = *(a2 + 24);
  v17[1] = v14;
  v17[2] = *(a2 + 56);
  v17[3] = v12;
  return sub_18BA1A2E4(v19, v17) && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208);
}

uint64_t sub_18BBA038C()
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v4[2] = inited;
  v4[3] = sub_18BBA0600;
  v4[4] = v2;
  v13 = sub_18B7E767C;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_42_0;
  v5 = _Block_copy(&v9);
  swift_retain_n();
  v6 = v0;
  sub_18BC1E1A8();

  v13 = CGRectMake;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B8043A0;
  v12 = &block_descriptor_45_0;
  v7 = _Block_copy(&v9);

  [v3 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t sub_18BBA0590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BBA0624()
{
  result = qword_1EA9D91C8;
  if (!qword_1EA9D91C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D91C8);
  }

  return result;
}

id sub_18BBA06CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v3 init];
}

uint64_t sub_18BBA070C(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa_2();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a2 + 16);
  v11 = sub_18BBA3BF0(&qword_1EA9D9230, _s4ItemVMa_2);
  result = MEMORY[0x18CFFC500](v10, v3, v11);
  v19 = result;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v14 < *(a2 + 16))
    {
      v16 = v15 + *(v4 + 72) * v14++;
      sub_18BBA39C8(v16, v6, _s4ItemVMa_2);
      sub_18B85A4D8(v9, v6);
      result = sub_18BBA3A30(v9, _s4ItemVMa_2);
      if (v13 == v14)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = result;

    return v17;
  }

  return result;
}

uint64_t sub_18BBA08F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_18B8441B4();
  result = MEMORY[0x18CFFC500](v11, v2, v12);
  v14 = 0;
  v23 = a1;
  v24 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_18B988BAC(v7, &unk_1EA9D92F0))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_18B83AA0C(*(v23 + 48) + *(v22 + 72) * (v20 | (v19 << 6)), v10);
    sub_18B7CF39C(v10, v4, &unk_1EA9D92F0);
    sub_18B842590(v7, v4);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v24;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BBA0B04(uint64_t a1)
{
  v2 = _s4ItemVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_18BBA3BF0(&unk_1EA9D9270, _s4ItemVMa);
  result = MEMORY[0x18CFFC500](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_18BBA3A30(v8, _s4ItemVMa))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_18BBA39C8(*(a1 + 48) + *(v3 + 72) * (v21 | (v20 << 6)), v11, _s4ItemVMa);
    sub_18B81FA78(v11, v5, _s4ItemVMa);
    sub_18BB5EE90(v8, v5);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BBA0D50(uint64_t a1)
{
  v2 = _s4ItemVMa_4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_18BBA3BF0(&qword_1EA9D48A0, _s4ItemVMa_4);
  result = MEMORY[0x18CFFC500](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_18BBA3A30(v8, _s4ItemVMa_4))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_18BBA39C8(*(a1 + 48) + *(v3 + 72) * (v21 | (v20 << 6)), v11, _s4ItemVMa_4);
    sub_18B81FA78(v11, v5, _s4ItemVMa_4);
    sub_18BB5E328(v8, v5);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id (*NSUserDefaults.bookmarksCollectionViewMode.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  a1[2] = @"BookmarksCollectionBookmarksViewMode";
  *a1 = [v1 integerForKey_];
  return sub_18BBA1038;
}

id (*NSUserDefaults.readingListCollectionViewMode.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  a1[2] = @"BookmarksCollectionReadingListViewMode";
  *a1 = [v1 integerForKey_];
  return sub_18BBA3C38;
}

id (*NSUserDefaults.bookmarksCollectionViewFolderMode.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  a1[2] = @"BookmarksCollectionViewFolderMode";
  *a1 = [v1 integerForKey_];
  return sub_18BBA3C38;
}

id (*NSUserDefaults.bookmarksCollectionViewSortOption.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  a1[2] = @"SFBookmarksCollectionViewSortOption";
  *a1 = [v1 integerForKey_];
  return sub_18BBA3C38;
}

id (*NSUserDefaults.bookmarksCollectionViewSortOrder.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  a1[2] = @"SFBookmarksCollectionViewSortOrder";
  *a1 = [v1 integerForKey_];
  return sub_18BBA3C38;
}

uint64_t NSUserDefaults.bookmarksSavedStateUpdatedDate.getter()
{
  v1 = sub_18BC20B98();
  [v0 doubleForKey_];
  v3 = v2;

  if (v3 <= 0.0)
  {

    return sub_18BC1EAF8();
  }

  else
  {

    return sub_18BC1EB38();
  }
}

uint64_t sub_18BBA1370(void **a1)
{
  v1 = *a1;
  v2 = sub_18BC20B98();
  [v1 doubleForKey_];
  v4 = v3;

  if (v4 <= 0.0)
  {

    return sub_18BC1EAF8();
  }

  else
  {

    return sub_18BC1EB38();
  }
}

uint64_t sub_18BBA1424(uint64_t a1, void **a2)
{
  v4 = sub_18BC1EB88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  sub_18BC1EB48();
  v11 = v10;
  v12 = sub_18BC20B98();
  [v9 setDouble:v12 forKey:v11];

  return (*(v5 + 8))(v8, v4);
}

uint64_t NSUserDefaults.bookmarksSavedStateUpdatedDate.setter(uint64_t a1)
{
  v2 = v1;
  sub_18BC1EB48();
  v5 = v4;
  v6 = sub_18BC20B98();
  [v2 setDouble:v6 forKey:v5];

  v7 = sub_18BC1EB88();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*NSUserDefaults.bookmarksSavedStateUpdatedDate.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_18BC1EB88();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = sub_18BC20B98();
  [v1 doubleForKey_];
  v12 = v11;

  if (v12 <= 0.0)
  {
    sub_18BC1EAF8();
  }

  else
  {
    sub_18BC1EB38();
  }

  return sub_18BBA177C;
}

void sub_18BBA177C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v6[2]((*a1)[3], v4, v5);
    sub_18BC1EB48();
    v9 = v8;
    v10 = sub_18BC20B98();
    [v7 setDouble:v10 forKey:v9];

    v11 = v6[1];
    (v11)(v3, v5);
    (v11)(v4, v5);
  }

  else
  {
    sub_18BC1EB48();
    v13 = v12;
    v14 = sub_18BC20B98();
    [v7 setDouble:v14 forKey:v13];

    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.historyViewStates()()
{
  v0 = sub_18BC1EC78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_18BC1EC88();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = sub_18BC1EB88();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  sub_18BC1EC68();
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A88], v0);
  sub_18BC1EB68();
  sub_18BC1EC58();
  v49 = v13[1];
  v50 = v13 + 1;
  v49(v17, v12);
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v51);
  v21 = v13[6];
  result = v21(v11, 1, v12);
  if (result != 1)
  {
    v46 = v13;
    v23 = v13[4];
    v51 = v20;
    v23(v20, v11, v12);
    v24 = sub_18BC20B98();
    v25 = v48;
    v26 = [v48 objectForKey_];

    v27 = v12;
    if (v26)
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55[0] = v53;
    v55[1] = v54;
    if (*(&v54 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA9F0);
      if (swift_dynamicCast())
      {
        v28 = v52;
        if (!*(v52 + 16) || (v29 = sub_18B831970(0x6D617473656D6954, 0xE900000000000070), (v30 & 1) == 0))
        {

          v31 = v47;
          (v46[7])(v47, 1, 1, v12);
          goto LABEL_14;
        }

        sub_18B7B193C(*(v28 + 56) + 32 * v29, v55);
        v31 = v47;
        v32 = swift_dynamicCast();
        (v46[7])(v31, v32 ^ 1u, 1, v12);
        if (v21(v31, 1, v12) == 1)
        {

LABEL_14:
          v33 = v51;
          v34 = v49;
          sub_18B988BAC(v31, &unk_1EA9DB1B0);
          goto LABEL_15;
        }

        v37 = v45;
        v23(v45, v31, v12);
        v33 = v51;
        v38 = sub_18BC1EB28();
        v34 = v49;
        if ((v38 & 1) == 0)
        {
          v49(v37, v27);

          goto LABEL_15;
        }

        if (*(v28 + 16) && (v39 = sub_18B831970(0xD000000000000016, 0x800000018BC703A0), (v40 & 1) != 0) && (sub_18B7B193C(*(v28 + 56) + 32 * v39, v55), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0), (swift_dynamicCast() & 1) != 0))
        {
          v41 = v53;
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v36 = sub_18BBA32A8(v41);

        if (*(v28 + 16) && (v42 = sub_18B831970(0xD000000000000015, 0x800000018BC703C0), (v43 & 1) != 0))
        {
          sub_18B7B193C(*(v28 + 56) + 32 * v42, v55);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
          if (swift_dynamicCast())
          {
            v44 = v53;
LABEL_30:
            sub_18BBA32A8(v44);

            v34(v37, v27);
            goto LABEL_16;
          }
        }

        else
        {
        }

        v44 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }
    }

    else
    {
      sub_18B988BAC(v55, &qword_1EA9D5220);
    }

    v33 = v51;
    v34 = v49;
LABEL_15:
    v35 = sub_18BC20B98();
    [v25 setURL:0 forKey:v35];

    v36 = MEMORY[0x1E69E7CD0];
LABEL_16:
    v34(v33, v27);
    return v36;
  }

  __break(1u);
  return result;
}

void NSUserDefaults.saveHistoryViewStates(collapsedSessionIDs:expandedSessionIDs:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC3FC60;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000018BC703A0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_18BBA22D0(v5, 0);
    v7 = sub_18BBA2C84(&v15, v6 + 4, v5, a1);
    sub_18BC1E3F8();
    sub_18B7D2E34();
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
  *(inited + 48) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x800000018BC703C0;
  v9 = *(a2 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *(inited + 96) = v10;
    *(inited + 120) = v8;
    *(inited + 128) = 0x6D617473656D6954;
    *(inited + 136) = 0xE900000000000070;
    *(inited + 168) = sub_18BC1EB88();
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
    sub_18BC1EB68();
    sub_18BA64DB8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5320);
    swift_arrayDestroy();
    v12 = sub_18BC20998();

    v13 = sub_18BC20B98();
    [v14 setObject:v12 forKey:v13];

    return;
  }

  v10 = sub_18BBA22D0(*(a2 + 16), 0);
  v11 = sub_18BBA2C84(&v15, v10 + 4, v9, a2);
  sub_18BC1E3F8();
  sub_18B7D2E34();
  if (v11 == v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

void *sub_18BBA22D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
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

size_t sub_18BBA2354(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C50);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

void sub_18BBA245C(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18BC1ECC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EDD8();
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v29 - v16;
  if (!a2 || !a3)
  {
LABEL_12:
    sub_18B81FA78(v4, a1, type metadata accessor for SingleElementIndexPathSequence);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v17 = *(type metadata accessor for SingleElementIndexPathSequence() + 20);
    v34 = (v9 + 40);
    v35 = (v9 + 8);
    v33 = (v39 + 32);
    v18 = 1;
    v31 = xmmword_18BC3E410;
    v32 = a3;
    while (1)
    {
      sub_18BC1EC98();
      v19 = sub_18BC1ECB8();
      (*v35)(v11, v8);
      if (v19)
      {
        break;
      }

      v20 = sub_18BC1ED48();
      a1 = v17;
      sub_18BC1ECE8();
      v21 = v8;
      (*v34)(v4, v11, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
      v22 = swift_allocObject();
      *(v22 + 16) = v31;
      *(v22 + 32) = v20;
      v23 = v37;
      MEMORY[0x18CFFA250]();
      v24 = *v33;
      v25 = v36;
      v26 = v23;
      v27 = v38;
      (*v33)(v36, v26, v38);
      v24(a2, v25, v27);
      if (v32 == v18)
      {
        break;
      }

      a2 += *(v39 + 72);
      v28 = __OFADD__(v18++, 1);
      v8 = v21;
      v17 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a1 = v30;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_18BBA2770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s4PageVMa();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_18BBA39C8(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, _s4PageVMa);
      v23 = v22;
      v24 = v30;
      sub_18B81FA78(v23, v30, _s4PageVMa);
      sub_18B81FA78(v24, a2, _s4PageVMa);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_18BBA29D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v11;
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v38 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = sub_18BC1EC08();
      (*(*(v28 - 8) + 16))(v9, v27 + *(*(v28 - 8) + 72) * v25, v28);
      v29 = (*(v26 + 56) + 16 * v25);
      v30 = *v29;
      v31 = v29[1];
      a1 = v40;
      v32 = &v9[*(v41 + 48)];
      *v32 = v30;
      *(v32 + 1) = v31;
      sub_18B7CF39C(v9, a1, &qword_1EA9D4C58);
      sub_18B7CF39C(a1, a2, &qword_1EA9D4C58);
      if (v20 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_18BBA2C84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
        sub_18BC1E3F8();
        goto LABEL_24;
      }

      v11 += 2;
      sub_18BC1E3F8();
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

uint64_t sub_18BBA2DDC(uint64_t a1)
{
  v2 = _s4ItemVMa_4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&qword_1EA9D48A0, _s4ItemVMa_4);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18BBA39C8(v12, v6, _s4ItemVMa_4);
      sub_18BB5E328(v8, v6);
      sub_18BBA3A30(v8, _s4ItemVMa_4);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

void sub_18BBA2F6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = _s4ItemVMa_4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = a3 >> 1;
  v14 = __OFSUB__(a3 >> 1, a2);
  v15 = (a3 >> 1) - a2;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = sub_18BBA3BF0(&qword_1EA9D48A0, _s4ItemVMa_4);
  v20[1] = MEMORY[0x18CFFC500](v15, v6, v16);
  v17 = v13 - a2;
  if (v13 == a2)
  {
    return;
  }

  if (v13 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = *(v7 + 72);
  v19 = a1 + v18 * a2;
  do
  {
    sub_18BBA39C8(v19, v9, _s4ItemVMa_4);
    sub_18BB5E328(v12, v9);
    sub_18BBA3A30(v12, _s4ItemVMa_4);
    v19 += v18;
    --v17;
  }

  while (v17);
}

uint64_t sub_18BBA3118(uint64_t a1)
{
  v2 = _s4ItemVMa_1();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&qword_1EA9D8BF8, _s4ItemVMa_1);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18BBA39C8(v12, v5, _s4ItemVMa_1);
      sub_18BB5E620(v8, v5);
      sub_18BBA3A30(v8, _s4ItemVMa_1);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_18BBA32A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x18CFFC500](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_18BC1E3F8();
      sub_18BB5E89C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_18BBA3340(uint64_t a1)
{
  v2 = _s4ItemVMa_0();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = *(a1 + 16);
  v12 = sub_18BBA3BF0(&qword_1EA9DBEA0, _s4ItemVMa_0);
  v13 = MEMORY[0x18CFFC500](v11, v2, v12);
  v40 = v11;
  if (v11)
  {
    v14 = 0;
    v15 = *(v3 + 80);
    v37 = v2;
    v38 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v3 + 72);
    v48 = v10;
    while (1)
    {
      sub_18BBA39C8(v38 + v16 * v14, v10, _s4ItemVMa_0);
      sub_18BC22158();
      v17 = *v10;
      sub_18BC22178();
      v49 = v10[1];
      sub_18BC22178();
      v18 = v2[6];
      sub_18BC1EC08();
      sub_18BBA3BF0(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
      v47 = v18;
      sub_18BC20A78();
      v46 = *&v10[v2[7]];
      v19 = v46;
      sub_18BC22178();
      if (v19)
      {
        v20 = v19;
        sub_18BC215D8();
      }

      v44 = v10[v2[8]];
      sub_18BC22178();
      v43 = v10[v2[9]];
      sub_18BC22178();
      v21 = &v10[v2[10]];
      v23 = *v21;
      v22 = *(v21 + 1);
      v45 = v14;
      v41 = v23;
      v42 = v22;
      sub_18BC22178();
      if (v22)
      {
        sub_18BC20C28();
      }

      v24 = sub_18BC221A8();
      v25 = -1 << *(v13 + 32);
      v26 = v24 & ~v25;
      if ((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        break;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v48;
      v35 = v39;
      sub_18BBA39C8(v48, v39, _s4ItemVMa_0);
      v50 = v13;
      sub_18BB62770(v35, v26, isUniquelyReferenced_nonNull_native);
      v13 = v50;
LABEL_28:
      v14 = v45 + 1;
      sub_18BBA3A30(v10, _s4ItemVMa_0);
      if (v14 == v40)
      {
        return v13;
      }
    }

    v27 = ~v25;
    while (1)
    {
      sub_18BBA39C8(*(v13 + 48) + v26 * v16, v5, _s4ItemVMa_0);
      if (v17 != *v5 || v49 != v5[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_10;
      }

      v28 = *&v5[v2[7]];
      if (v28)
      {
        if (!v46)
        {
          goto LABEL_10;
        }

        sub_18B7E7DC4();
        v29 = v46;
        v30 = v28;
        v31 = sub_18BC215C8();

        v2 = v37;
        if ((v31 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v46)
      {
        goto LABEL_10;
      }

      if (v44 == v5[v2[8]] && v43 == v5[v2[9]])
      {
        v32 = &v5[v2[10]];
        v33 = *(v32 + 1);
        if (v33)
        {
          if (v42 && (*v32 == v41 && v33 == v42 || (sub_18BC21FD8() & 1) != 0))
          {
LABEL_26:
            sub_18BBA3A30(v5, _s4ItemVMa_0);
            v10 = v48;
            goto LABEL_28;
          }
        }

        else if (!v42)
        {
          goto LABEL_26;
        }
      }

LABEL_10:
      sub_18BBA3A30(v5, _s4ItemVMa_0);
      v26 = (v26 + 1) & v27;
      if (((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return v13;
}

uint64_t sub_18BBA3838(uint64_t a1)
{
  v2 = _s4ItemVMa();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&unk_1EA9D9270, _s4ItemVMa);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18BBA39C8(v12, v6, _s4ItemVMa);
      sub_18BB5EE90(v8, v6);
      sub_18BBA3A30(v8, _s4ItemVMa);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_18BBA39C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BBA3A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18BBA3A90(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18BC219A8())
  {
    v4 = type metadata accessor for SFTabSwitcherItem(0);
    v5 = sub_18BBA3BF0(&qword_1EA9D7CD8, type metadata accessor for SFTabSwitcherItem);
    result = MEMORY[0x18CFFC500](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFFD010](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_18BB5F498(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18BC219A8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18BBA3BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BBA3CA8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = *(type metadata accessor for TabEntity() - 8);
  v2[7] = swift_task_alloc();
  sub_18BC20F28();
  v2[8] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBA3D98, v4, v3);
}

uint64_t sub_18BBA3D98()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    v4 = v0[3];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v0[6];
      v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 72);
      do
      {
        v9 = v0[7];
        sub_18BA82420(v7, v9);
        v10 = sub_18BC1EBC8();
        [v3 closeTabWithUUID_];

        sub_18BA5F48C(v9);
        v7 += v8;
        --v5;
      }

      while (v5);
    }

    sub_18BC1DF98();

    v11 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v12 = sub_18BC1DE48();
    v13 = __swift_project_value_buffer(v12, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    swift_willThrow();

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_18BBA3FE8(uint64_t a1)
{
  v2 = sub_18BBA4D54();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBA4034(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return sub_18BBA3CA8(a1, v4);
}

uint64_t sub_18BBA40D4@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = sub_18BC1E488();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77F8);
  v14 = sub_18BC1E8D8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v18[1] = 0;
  v15 = sub_18BC1DF68();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A4F8], v1);
  sub_18BA5F958(&qword_1EA9D6EF0, type metadata accessor for TabEntity);
  result = sub_18BC1E108();
  *v18[0] = result;
  return result;
}

uint64_t sub_18BBA438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v3[23] = *(type metadata accessor for TabEntity() - 8);
  v3[24] = swift_task_alloc();
  v4 = sub_18BC1EC08();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_18BC20F28();
  v3[29] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v3[30] = v6;
  v3[31] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18BBA44E8, v6, v5);
}

uint64_t sub_18BBA44E8()
{
  sub_18BC1E0A8();
  v1 = v0[18];
  if (*(v1 + 16))
  {
    v3 = v0[27];
    v2 = v0[28];
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[24];
    v15 = v0[21];
    v7 = *(v0[23] + 80);
    sub_18BA82420(v1 + ((v7 + 32) & ~v7), v6);

    (*(v4 + 16))(v3, v6, v5);
    sub_18BA5F48C(v6);
    (*(v4 + 32))(v2, v3, v5);
    v8 = sub_18BC1EBC8();
    v0[32] = v8;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_18BBA4800;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18BAB46D0;
    v0[13] = &block_descriptor_58;
    v0[14] = v9;
    [v15 sceneForTabWithUUID:v8 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_18BBA4800()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x1EEE6DFA0](sub_18BBA4908, v2, v1);
}

uint64_t sub_18BBA4908()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];

  (*(v4 + 8))(v2, v3);
  v5 = v0[19];

  if (v5)
  {
    v6 = v0[20];
    *v6 = v5;
    v7 = *MEMORY[0x1E6985C00];
    v8 = sub_18BC1F048();
    (*(*(v8 - 8) + 104))(v6, v7, v8);

    v9 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_18BBA4B28(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BBA438C(a1, a2, v6);
}

id sub_18BBA4BD8(void *a1)
{
  result = [a1 canCloseTab];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BBA4CEC()
{
  result = qword_1EA9DAA10;
  if (!qword_1EA9DAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAA10);
  }

  return result;
}

unint64_t sub_18BBA4D54()
{
  result = qword_1EA9DAA18;
  if (!qword_1EA9DAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAA18);
  }

  return result;
}

unint64_t sub_18BBA4DBC()
{
  result = qword_1EA9DAA20;
  if (!qword_1EA9DAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAA20);
  }

  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.items(in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForElements(in:)(a1, a2, a3, a4, a5);
  type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  swift_getWitnessTable();
  sub_18BC210E8();
  swift_getWitnessTable();
  sub_18BC20CD8();

  sub_18BC20E78();
  swift_getWitnessTable();
  return sub_18BC210F8();
}

uint64_t SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_18B85D588(a1, a2, a3, a4, a5);
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  (*(*(v9 - 8) + 8))(a3, v9);
  v10 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  (*(*(v10 - 8) + 8))(a2, v10);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = a4;
  v4 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v6 = a3[5];
  v8 = a3[6];
  v9 = a3[7];
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v11 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v29 = v4;
  v30 = v5;
  v31 = v7;
  v32 = v6;
  v33 = v8;
  v34 = v9;
  v14 = type metadata accessor for SFFluidCollectionView.Element();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v25 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(TupleTypeMetadata2 + 48);
  (*(*(v7 - 8) + 16))(v20, v27, v7);
  (*(v15 + 16))(v21 + v22, v28, v14);
  *v17 = v19;
  swift_storeEnumTagMultiPayload();
  swift_getWitnessTable();
  sub_18BC20A28();
  v23 = *(v10 - 8);
  result = (*(v23 + 48))(v13, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return (*(v23 + 32))(v26, v13, v10);
  }

  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.removeAttributes(for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v38 = a1;
  v39 = v5;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v27 - v12;
  v31 = v10;
  v35 = v6;
  v36 = v5;
  v39 = v5;
  v40 = v6;
  v33 = v8;
  v34 = v7;
  v41 = v7;
  v42 = v8;
  v32 = v9;
  v43 = v9;
  v44 = v10;
  v13 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v14 = sub_18BC21848();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v28 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  v37 = v3;
  swift_getWitnessTable();
  sub_18BC20A28();
  if ((*(v20 + 48))(v19, 1, v13) == 1)
  {
    return (*(v15 + 8))(v19, v14);
  }

  (*(v20 + 32))(v23, v19, v13);
  v25 = v38;
  (*(v29 + 16))(v30, v38, v11);
  (*(v20 + 56))(v28, 1, 1, v13);
  sub_18BC209F8();
  sub_18BC20A38();
  v39 = v36;
  v40 = v35;
  v41 = v34;
  v42 = v33;
  v43 = v32;
  v44 = v31;
  v26 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  sub_18BBA607C(v25, v26);
  sub_18BBA6458(v23, a2);
  return (*(v20 + 8))(v23, v13);
}

uint64_t sub_18BBA56B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v10;
  v27 = v9;
  v19 = v9;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v18 = *v3;
  v16 = *(v12 + 16);
  v21 = a1;
  v16(&v18 - v14, a1, v11, v13);
  if (swift_getEnumCaseMultiPayload() - 1 > 1)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v10;
    v27 = v19;
    type metadata accessor for SFFluidCollectionView.LayoutAttributes();
    swift_getWitnessTable();
    return sub_18BC20A28();
  }

  return result;
}

uint64_t sub_18BBA5894(double a1, double a2, double a3, double a4)
{
  sub_18BC22158();
  sub_18B84FB4C(a1, a2, a3, a4);
  return sub_18BC221A8();
}

uint64_t SFFluidCollectionView.LayoutSnapshot.MetricKey.description.getter()
{
  v0 = sub_18BBA6D24();
  sub_18BC1E3F8();
  return v0;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.MetricKey.hashValue.getter()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BBA5A00()
{
  v0 = sub_18BBA6D24();
  sub_18BC1E3F8();
  return v0;
}

uint64_t sub_18BBA5A38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  type metadata accessor for SFFluidCollectionView.Element();
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  v6 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  return SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(a1, a1 + v5, v6, v4, a3);
}

uint64_t sub_18BBA5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  type metadata accessor for SFFluidCollectionView.Element();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v8 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  return sub_18B85D588(a1, a3, a3 + v7, v8, v6);
}

void (*SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.modify(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0xC8uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[14] = a5;
  v9[15] = v5;
  v9[13] = a4;
  v11 = *(a5 - 8);
  v9[16] = v11;
  v12 = *(v11 + 64);
  v33 = a5;
  if (MEMORY[0x1E69E7D08])
  {
    v9[17] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[17] = malloc(v12);
    v13 = malloc(v12);
  }

  v30 = v13;
  v10[18] = v13;
  v14 = a4[2];
  v15 = a4[3];
  v17 = a4[4];
  v16 = a4[5];
  v18 = a4[6];
  v19 = a4[7];
  v10[7] = v14;
  v10[8] = v15;
  v10[9] = v17;
  v10[10] = v16;
  v10[11] = v18;
  v10[12] = v19;
  v20 = type metadata accessor for SFFluidCollectionView.Element();
  v10[19] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v10[20] = v21;
  if (MEMORY[0x1E69E7D08])
  {
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    v23 = malloc(*(v21 + 64));
  }

  v29 = v23;
  v10[21] = v23;
  *v10 = v14;
  v10[1] = v15;
  v10[2] = v17;
  v10[3] = v33;
  v10[4] = v16;
  v10[5] = v18;
  v10[6] = v19;
  v24 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  v10[22] = v24;
  v25 = *(v24 - 8);
  v26 = v25;
  v10[23] = v25;
  if (MEMORY[0x1E69E7D08])
  {
    v27 = swift_coroFrameAlloc();
  }

  else
  {
    v27 = malloc(*(v25 + 64));
  }

  v10[24] = v27;
  (*(v26 + 16))();
  (*(v22 + 16))(v29, a3, v20);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(a2, a3, a4, v33, v30);
  return sub_18BBA5ED0;
}

void sub_18BBA5ED0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  v14 = *(*a1 + 168);
  v15 = *(*a1 + 192);
  v4 = *(*a1 + 160);
  v12 = *(*a1 + 152);
  v13 = *(*a1 + 176);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 144);
  v7 = *(*a1 + 128);
  v9 = *(*a1 + 104);
  v8 = *(*a1 + 112);
  if (a2)
  {
    (*(v7 + 16))(v2[17], v2[18], v2[14]);
    sub_18B85D588(v5, v15, v14, v9, v8);
    (*(v4 + 8))(v14, v12);
    (*(v3 + 8))(v15, v13);
    v10 = *(v7 + 8);
    v10(v5, v8);
    v10(v6, v8);
  }

  else
  {
    v11 = v2[17];
    sub_18B85D588(v6, v15, v14, v9, v8);
    v5 = v11;
    (*(v4 + 8))(v14, v12);
    (*(v3 + 8))(v15, v13);
    (*(v7 + 8))(v6, v8);
  }

  free(v15);
  free(v14);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_18BBA607C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[2];
  v9[0] = a2[1];
  v9[1] = v3;
  v9[2] = a2[3];
  v4 = type metadata accessor for SFFluidCollectionView.Element();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - v6, a1, v4, v5);
  *&v9[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9DAA28);
  swift_getWitnessTable();
  sub_18BC209F8();
  return sub_18BC20A38();
}

uint64_t SFFluidCollectionView.LayoutSnapshot.metrics.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_18BBA6264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(a3 - 8);
    (*(v16 + 32))(a8, v15, a3);
    v17 = 0;
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v16 = *(a3 - 8);
    v17 = 1;
  }

  return (*(v16 + 56))(a8, v17, 1, a3);
}

uint64_t sub_18BBA6458(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  *&v39 = a2[2];
  v4 = v39;
  *(&v39 + 1) = v5;
  *&v40 = v7;
  *(&v40 + 1) = v6;
  v41 = v8;
  v42 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v37 = sub_18BC21848();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = v2;
  v36 = v33 - v11;
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  *(&v39 + 1) = v5;
  *&v40 = v7;
  *(&v40 + 1) = v6;
  v41 = v8;
  v42 = v9;
  v14 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v33[1] = a1;
  v15 = SFFluidCollectionView.LayoutAttributes.frame.getter(v14);
  sub_18B82349C(v12, v13, v15, v16, v17, v18);
  v20 = v19;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  *&v40 = v7;
  *(&v40 + 1) = v6;
  v41 = v8;
  v42 = v9;
  _s14LayoutSnapshotV9RectSliceVMa();
  if (!sub_18BC20E28())
  {
  }

  v21 = 0;
  ++v34;
  v33[0] = v10 - 8;
  for (i = (v20 + 48); ; i += 2)
  {
    v24 = sub_18BC20E08();
    result = sub_18BC20DC8();
    if ((v24 & 1) == 0)
    {
      break;
    }

    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_11;
    }

    v27 = *i;
    v39 = *(i - 1);
    v40 = v27;
    swift_getWitnessTable();
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC209F8();
    v28 = sub_18BC20A18();
    if (*v29)
    {
      v30 = v10;
      v31 = v36;
      sub_18BC21088();
      v32 = v31;
      v10 = v30;
      (*v34)(v32, v37);
      v28(v38, 0);
    }

    else
    {
      v28(v38, 0);
      v23 = v36;
      (*(*(v10 - 8) + 56))(v36, 1, 1, v10);
      (*v34)(v23, v37);
    }

    ++v21;
    if (v26 == sub_18BC20E28())
    {
    }
  }

  result = sub_18BC21B08();
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_18BBA67C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v46 - v7;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v51 = v1;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40) + 96);
  v50 = a1;
  sub_18B86B4C4(v8, v9, *(a1 + v10), *(a1 + v10 + 8), *(a1 + v10 + 16), *(a1 + v10 + 24));
  v48 = *(v11 + 16);
  if (v48)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = &unk_1EA9D92F0;
    v16 = &unk_18BC42990;
    v47 = v11;
    while (v14 < *(v11 + 16))
    {
      v18 = v11 + 32 * v14;
      v19 = *(v18 + 32);
      v52 = *(v18 + 48);
      *v53 = v19;
      sub_18B7B171C(v12);
      v20 = v5;
      v21 = v15;
      v22 = v16;
      sub_18B7CA054(v50, v5, v15);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_18BBA6B6C;
      *(v23 + 24) = 0;
      sub_18B7B171C(v13);
      v24 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v24 + 8);
      v26 = v54;
      v27 = v53[1];
      v28 = *(&v52 + 1);
      v30 = sub_18B86F764(v53[0], v53[1], *&v52, *(&v52 + 1));
      v31 = v26[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_18;
      }

      v34 = v29;
      if (v26[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18BB2B320();
          v26 = v54;
        }
      }

      else
      {
        sub_18BB2F8EC(v33, isUniquelyReferenced_nonNull_native);
        v26 = v54;
        v35 = sub_18B86F764(v53[0], v27, *&v52, v28);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_20;
        }

        v30 = v35;
      }

      *(v51 + 8) = v26;
      if ((v34 & 1) == 0)
      {
        v37 = (*(v23 + 16))();
        v26[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v26[6] + 32 * v30);
        v39 = v52;
        *v38 = *v53;
        v38[1] = v39;
        *(v26[7] + 8 * v30) = v37;
        v40 = v26[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_19;
        }

        v26[2] = v42;
      }

      ++v14;
      v17 = v49;
      v5 = v20;
      sub_18B842590(v49, v20);
      v15 = v21;
      v16 = v22;
      sub_18B988BAC(v17, v21);
      v13 = sub_18BBA79BC;
      v12 = sub_18BBA6B6C;
      v11 = v47;
      if (v48 == v14)
      {

        v43 = sub_18BBA79BC;
        v44 = sub_18BBA6B6C;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9FA8);
    result = sub_18BC22078();
    __break(1u);
  }

  else
  {

    v44 = 0;
    v43 = 0;
LABEL_16:
    sub_18B7B171C(v44);
    return sub_18B7B171C(v43);
  }

  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.transform(elements:using:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = v5[1];
  v15[0] = *v5;
  v15[1] = v10;
  v16[0] = v5[2];
  v11 = v16[0];
  *(v16 + 9) = *(v5 + 41);
  v12 = *(v16 + 9);
  *a5 = v15[0];
  a5[1] = v10;
  a5[2] = v11;
  *(a5 + 41) = v12;
  (*(*(a4 - 1) + 16))(&v14, v15, a4);
  return SFFluidCollectionView.LayoutSnapshot.applyTransform(to:_:)(a1, a2, a3, a4);
}

char *sub_18BBA6C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_18BBA6D2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18BBA6D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_18BBA6DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BBA6E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_18BBA6E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BBA6EA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BBA6EF8(uint64_t a1, double *a2, void *a3)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5048);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v88 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v88 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v107 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v102 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    v25 = sub_18BC1E3F8();
    v24 = sub_18BBA08F4(v25);
  }

  v26 = v24 + 56;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  v90 = (v96 + 56);
  v88 = (v96 + 48);
  v97 = (v107 + 56);
  sub_18BC1E3F8();
  v31 = 0;
  v32 = v99;
  v103 = v23;
  v105 = v24;
  v94 = a2;
  if (v29)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v34 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v35 = *(v107 + 72);
        sub_18B7CA054(*(v24 + 48) + v35 * (v34 | (v31 << 6)), v23, &unk_1EA9D92F0);
        v36 = *a2;
        if (*(*a2 + 16))
        {
          v37 = sub_18B83B1C8(v23);
          v23 = v103;
          if (v38)
          {
            break;
          }
        }

        sub_18B988BAC(v23, &unk_1EA9D92F0);
        v24 = v105;
        if (!v29)
        {
          goto LABEL_7;
        }
      }

      v39 = *(v36 + 56);
      v95 = *(v96 + 72);
      v40 = v32;
      v41 = v91;
      sub_18B7CA054(v39 + v95 * v37, v91, &unk_1EA9D4F40);
      sub_18B988BAC(v23, &unk_1EA9D92F0);
      sub_18BBA78DC(v41, v40);
      v42 = v92;
      sub_18BBA78DC(v40, v92);
      (*((*MEMORY[0x1E69E7D40] & *v93) + 0xB0))(v42);
      sub_18B988BAC(v42, &unk_1EA9D4F40);
      if (*(v36 + 16) && (v43 = sub_18B83B1C8(v40), (v44 & 1) != 0))
      {
        sub_18B7CA054(*(v36 + 56) + v43 * v95, v104, &unk_1EA9D4F40);
        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      a2 = v94;
      (*v90)(v104, v45, 1, v100);
      v46 = v102;
      sub_18B7CA054(v40, v102, &unk_1EA9D92F0);
      sub_18B7CA054(v40, v101, &unk_1EA9D4F40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = *a2;
      v48 = v109[0];
      v49 = sub_18B83B1C8(v46);
      v51 = v48[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_47;
      }

      v55 = v50;
      if (v48[3] < v54)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v58 = v49;
      sub_18BB2B6F4();
      v49 = v58;
      v57 = v109[0];
      if (v55)
      {
LABEL_25:
        sub_18BBA794C(v101, v57[7] + v49 * v95);
        sub_18B988BAC(v102, &unk_1EA9D92F0);
        goto LABEL_29;
      }

LABEL_27:
      v57[(v49 >> 6) + 8] |= 1 << v49;
      v59 = v57[6] + v49 * v35;
      v60 = v49;
      v61 = v102;
      sub_18B7CA054(v102, v59, &unk_1EA9D92F0);
      sub_18BBA78DC(v101, v57[7] + v60 * v95);
      sub_18B988BAC(v61, &unk_1EA9D92F0);
      v62 = v57[2];
      v53 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v53)
      {
        goto LABEL_48;
      }

      v57[2] = v63;
LABEL_29:
      *a2 = v57;
      v64 = v89;
      sub_18B7CA054(v104, v89, &unk_1EA9D9300);
      v65 = v100;
      v66 = (*v88)(v64, 1, v100) == 1;
      v24 = v105;
      v67 = v64;
      if (v66)
      {
        sub_18B988BAC(v64, &unk_1EA9D9300);
        v32 = v99;
LABEL_42:
        sub_18BBA67C8(v32);
        sub_18B988BAC(v104, &unk_1EA9D9300);
        v79 = v32;
        goto LABEL_43;
      }

      v68 = v106;
      sub_18BBA78DC(v67, v106);
      v69 = *(v65 + 96);
      v70 = v68;
      v71 = *(v68 + v69);
      v72 = *(v68 + v69 + 8);
      v73 = *(v68 + v69 + 16);
      v74 = *(v68 + v69 + 24);
      v32 = v99;
      v75 = v71;
      v76 = v72;
      v77 = v73;
      v78 = v74;
      if (!CGRectEqualToRect(*&v75, *&v99[v69]))
      {
        sub_18B86B4C4(a2[3], a2[4], v71, v72, v73, v74);
        v81 = *(v80 + 16);
        if (v81)
        {
          v95 = v80;
          v82 = (v80 + 56);
          do
          {
            v84 = sub_18BB59810(v109, *(v82 - 3), *(v82 - 2), *(v82 - 1), *v82);
            if (*v85)
            {
              v83 = v108;
              sub_18B9CE534(v106, v108);
              sub_18B988BAC(v83, &qword_1EA9D5048);
              (v84)(v109, 0);
            }

            else
            {
              (v84)(v109, 0);
              v86 = v108;
              (*v97)(v108, 1, 1, v98);
              sub_18B988BAC(v86, &qword_1EA9D5048);
            }

            v82 += 4;
            --v81;
          }

          while (v81);
          sub_18B988BAC(v106, &unk_1EA9D4F40);

          v32 = v99;
          v24 = v105;
        }

        else
        {
          sub_18B988BAC(v70, &unk_1EA9D4F40);
        }

        goto LABEL_42;
      }

      sub_18B988BAC(v70, &unk_1EA9D4F40);
      sub_18B988BAC(v104, &unk_1EA9D9300);
      v79 = v32;
LABEL_43:
      sub_18B988BAC(v79, &unk_1EA9D4F40);
      v23 = v103;
      if (!v29)
      {
        goto LABEL_7;
      }
    }

    sub_18BB2FBE8(v54, isUniquelyReferenced_nonNull_native);
    v49 = sub_18B83B1C8(v102);
    if ((v55 & 1) != (v56 & 1))
    {
      goto LABEL_49;
    }

LABEL_24:
    v57 = v109[0];
    if (v55)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_7:
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
    }

    v29 = *(v26 + 8 * v33);
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:

  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18BBA78DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBA794C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBA79BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_18BBA79EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 64))();
  *a1 = result;
  return result;
}

uint64_t SFFluidCollectionViewSelectionExtensionDirection.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

unint64_t sub_18BBA7AA8()
{
  result = qword_1EA9DAC38;
  if (!qword_1EA9DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAC38);
  }

  return result;
}

void sub_18BBA7B24()
{
  type metadata accessor for WBSOnboardingIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60F0);
  v0 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v0);

  if (qword_1EA9D24E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F8408;
  sub_18BC21C58();

  qword_1EA9F8410 = 0;
  *algn_1EA9F8418 = 0xE000000000000000;
}

uint64_t sub_18BBA7C14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_allocate_value_buffer(v0, qword_1EA9F8420);
  __swift_project_value_buffer(v0, qword_1EA9F8420);
  sub_18BC21AD8();

  if (qword_1EA9D24F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F8410;
  v2 = *algn_1EA9F8418;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](v1, v2);

  return sub_18BC20278();
}

void SFOnboardingPrivateBrowsingTip.controller.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*SFOnboardingPrivateBrowsingTip.controller.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_18BA1BCE4;
}

uint64_t SFOnboardingPrivateBrowsingTip.state.getter()
{
  v0 = sub_18BC1EB88();
  v28 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = sub_18BC20B98();
  v12 = [v10 BOOLForKey_];

  if (!v12)
  {
    return 2;
  }

  v13 = [v9 standardUserDefaults];
  v14 = [v13 BOOLForKey_];

  if (v14)
  {
    return 4;
  }

  v16 = [v9 standardUserDefaults];
  v17 = sub_18BC20B98();
  v18 = [v16 safari:v17 dateForKey:?];

  if (!v18)
  {
    v24 = [v9 standardUserDefaults];
    sub_18BC1EB68();
    v25 = sub_18BC1EB18();
    (*(v28 + 8))(v2, v0);
    v26 = sub_18BC20B98();
    [v24 safari:v25 setDate:v26 forKey:?];

    return 2;
  }

  sub_18BC1EB58();

  v19 = v28;
  (*(v28 + 32))(v8, v5, v0);
  sub_18BC1EB68();
  sub_18BC1EB08();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v2, v0);
  if (qword_1EA9D2500 != -1)
  {
    swift_once();
  }

  v23 = *&qword_1EA9DAC40;
  v22(v8, v0);
  if (v23 < v21)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t SFOnboardingPrivateBrowsingTip.privacyPreservingDebugDescription.getter()
{
  sub_18BC21AD8();
  type metadata accessor for WBSOnboardingIdentifier(0);
  sub_18BC21C58();
  MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64920);
  if (qword_1EA9D24F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F8420);
  sub_18BC20288();

  v1 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v1);

  return 0;
}

Swift::Void __swiftcall SFOnboardingPrivateBrowsingTip.trigger()()
{
  if (qword_1EA9D24F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F8420);
  sub_18BC20268();
}

uint64_t SFOnboardingPrivateBrowsingTip.id.getter()
{
  if (qword_1EA9D24F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F8410;
  sub_18BC1E3F8();
  return v0;
}

uint64_t SFOnboardingPrivateBrowsingTip.title.getter()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t SFOnboardingPrivateBrowsingTip.message.getter()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t SFOnboardingPrivateBrowsingTip.actions.getter()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC202B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v8 = sub_18BC1EE28();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v18 = v8;
  v19 = v10;
  sub_18BB7F95C(v16[1], v17);
  v11 = swift_allocObject();
  sub_18BB7FAA0(v17, v11 + 16);
  sub_18B7B0B50();
  sub_18BC20298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAC48);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18BC3E410;
  (*(v5 + 32))(v13 + v12, v7, v4);
  v14 = sub_18BBA9D4C(v13);
  swift_setDeallocating();
  (*(v5 + 8))(v13 + v12, v4);
  swift_deallocClassInstance();
  return v14;
}

void sub_18BBA8820(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 performActionForOnboardingWithIdentifier_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t SFOnboardingPrivateBrowsingTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D24F8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F8420);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050);
  sub_18B80B760(&qword_1EA9D6058);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BBA8AF4@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_18BC1E838();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6080);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6088);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6090);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6098);
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v16 = &v26 - v15;
  sub_18B7B0B08(&qword_1EA9D60A0, &qword_1EA9D6088);
  sub_18BC1E858();
  swift_getKeyPath();
  sub_18BC1E818();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_18B7B0B08(&qword_1EA9D60A8, &qword_1EA9D6090);
  sub_18BC1E818();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v28;
  sub_18BC1E848();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E6968C38], v31);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60B0);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_18B80BD84();
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  sub_18B7B0B08(&qword_1EA9D60E0, &qword_1EA9D6098);
  sub_18B7B0B08(&qword_1EA9D60E8, &qword_1EA9D6080);
  v23 = v27;
  v24 = v33;
  sub_18BC1E828();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t SFOnboardingPrivateBrowsingTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_18BBA92DC()
{
  if (qword_1EA9D24F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F8420);
  return sub_18BC20268();
}

uint64_t sub_18BBA9358()
{
  if (qword_1EA9D24F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F8410;
  sub_18BC1E3F8();
  return v0;
}

uint64_t sub_18BBA93C0()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t sub_18BBA94DC()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t sub_18BBA95FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D24F8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F8420);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050);
  sub_18B80B760(&qword_1EA9D6058);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BBA983C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_18BBA9AE0@<X0>(void *a1@<X8>)
{
  if (qword_1EA9D24F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1EA9F8418;
  *a1 = qword_1EA9F8410;
  a1[1] = v1;

  return sub_18BC1E3F8();
}

size_t sub_18BBA9B54(size_t a1, int64_t a2, char a3)
{
  result = sub_18BBA9B74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_18BBA9B74(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAC48);
  v10 = *(sub_18BC202B8() - 8);
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
  v15 = *(sub_18BC202B8() - 8);
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

uint64_t sub_18BBA9D4C(uint64_t a1)
{
  v2 = sub_18BC202B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DAC60);
  MEMORY[0x1EEE9AC00](v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v31 = MEMORY[0x1E69E7CC0];
  sub_18BBA9B54(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_18BBAA0A0(v16, v9);
      sub_18BC202A8();
      sub_18BBAA110(v9);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18BBA9B54(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t sub_18BBA9FBC(uint64_t a1)
{
  result = sub_18BBA9FE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BBA9FE4()
{
  result = qword_1EA9DAC50;
  if (!qword_1EA9DAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAC50);
  }

  return result;
}

unint64_t sub_18BBAA03C()
{
  result = qword_1EA9DAC58;
  if (!qword_1EA9DAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAC58);
  }

  return result;
}

uint64_t sub_18BBAA0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DAC60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBAA110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DAC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFFluidCollectionView.DataSource.ShadowUpdateSource.init()()
{
  result = v0;
  *(v0 + 16) = CGRectMake;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_18BBAA1B4()
{
  v0 = sub_18BBAA458();
  sub_18BC1E1A8();
  return v0;
}

uint64_t sub_18BBAA1EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SFFluidCollectionView.DataSource.ShadowUpdateSource.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = CGRectMake;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_18BBAA30C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v10 = *(a1 + a2 - 32);
  v11 = *(a1 + a2 - 48);
  v9 = *(a1 + a2 - 16);
  v4 = sub_18BBAA458();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
  *a3 = sub_18BBAA5C4;
  a3[1] = v7;

  return sub_18BC1E1A8();
}

uint64_t sub_18BBAA3B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_18BC1E1A8();
  return sub_18BBAA1EC(sub_18BBAA584, v3);
}

uint64_t SFFluidCollectionView.DataSource.ShadowUpdateSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BBAA584(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t sub_18BBAA5F4()
{
  v1 = *v0;
  v2 = sub_18BC21848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + 3);
  v7 = *(v1 + 152);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v7], v2);
  sub_18BC1E1A8();
  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18BBAA740@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_18BBAA7EC(uint64_t a1)
{
  v75 = a1;
  v61 = *v1;
  v2 = v61;
  v68 = *(*(v61 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v58 - v3;
  v71 = v4;
  v5 = sub_18BC21848();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v58 - v12;
  v13 = *(v2 + 80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v58 - v18;
  v19 = sub_18BC21848();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v58 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v58 - v25;
  v27 = *(v2 + 160);
  swift_beginAccess();
  v28 = *(TupleTypeMetadata2 + 48);
  v72 = v1;
  v73 = v20;
  v29 = *(v20 + 16);
  v30 = v1 + v27;
  v31 = v13;
  v29(v26, v30, v19);
  v29(&v26[v28], v75, v19);
  v75 = v14;
  v32 = *(v14 + 48);
  if (v32(v26, 1, v31) == 1)
  {
    if (v32(&v26[v28], 1, v31) == 1)
    {
      return (*(v73 + 8))(v26, v19);
    }
  }

  else
  {
    v29(v74, v26, v19);
    if (v32(&v26[v28], 1, v31) != 1)
    {
      v50 = *(v75 + 32);
      v66 = v27;
      v51 = v60;
      v50(v60, &v26[v28], v31);
      v52 = v31;
      LODWORD(v61) = sub_18BC20AE8();
      v53 = *(v75 + 8);
      v54 = v51;
      v27 = v66;
      v53(v54, v52);
      v53(v74, v52);
      v31 = v52;
      result = (*(v73 + 8))(v26, v19);
      if (v61)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v75 + 8))(v74, v31);
  }

  (*(v66 + 8))(v26, TupleTypeMetadata2);
LABEL_7:
  v34 = v72;
  v35 = v67;
  v29(v67, v72 + v27, v19);
  if (v32(v35, 1, v31) == 1)
  {
    (*(v73 + 8))(v35, v19);
    v36 = v62;
    sub_18BBAA740(v62);
    v37 = v68;
    v38 = v71;
    if ((*(v68 + 48))(v36, 1, v71) == 1)
    {
      return (*(v69 + 8))(v36, v70);
    }

    else
    {
      v55 = v59;
      (*(v37 + 32))(v59, v36, v38);
      v56 = v58;
      (*(v37 + 56))(v58, 1, 1, v38);
      sub_18BBAC7EC(v56);
      (*(v69 + 8))(v56, v70);
      v57 = v34[7];
      sub_18BC1E1A8();
      v57(v55);

      return (*(v37 + 8))(v55, v38);
    }
  }

  else
  {
    v39 = v64;
    v40 = v31;
    (*(v75 + 32))(v64, v35, v31);
    v41 = v34[5];
    sub_18BC1E1A8();
    v42 = v63;
    v41(v39);

    v43 = v68;
    v44 = *(v68 + 48);
    v45 = v71;
    if (v44(v42, 1, v71) == 1)
    {
      v46 = v65;
      sub_18BBAA740(v65);
      v47 = v44(v42, 1, v45);
      v49 = v69;
      v48 = v70;
      if (v47 != 1)
      {
        (*(v69 + 8))(v42, v70);
      }
    }

    else
    {
      v46 = v65;
      (*(v43 + 32))(v65, v42, v45);
      (*(v43 + 56))(v46, 0, 1, v45);
      v49 = v69;
      v48 = v70;
    }

    sub_18BBAC7EC(v46);
    (*(v49 + 8))(v46, v48);
    return (*(v75 + 8))(v39, v40);
  }
}

void sub_18BBAB024(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v54 = *v5;
  v10 = *(v54 + 10);
  v11 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v11);
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = *(v5 + 9);
  v19 = *(v18 + 24);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v51 = a2;
  v52 = a3;
  v53 = a4;
  v55 = v15;
  v56 = v14;
  *(v18 + 24) = v21;
  v57 = a1;
  if (v21 == 1)
  {
    swift_beginAccess();
    v22 = *(v18 + 16);
    v23 = *(v22 + 16);
    if (v23)
    {
      v50 = v12;
      v24 = v11;
      sub_18BC1E3F8();
      v25 = v22 + 40;
      do
      {
        v26 = *(v25 - 8);
        LOBYTE(v58[0]) = *(v18 + 24) > 0;
        sub_18BC1E1A8();
        v26(v58);

        v25 += 16;
        --v23;
      }

      while (v23);

      v11 = v24;
      a1 = v57;
      v12 = v50;
    }
  }

  if (qword_1EA9D22A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v27 = sub_18BC1F2C8();
  __swift_project_value_buffer(v27, qword_1EA9F7E98);
  v28 = *(v12 + 16);
  v28(v17, a1, v10);
  swift_retain_n();
  v29 = sub_18BC1F2A8();
  v30 = v12;
  v31 = sub_18BC21258();
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v50 = v11;
    v33 = v32;
    v49 = swift_slowAlloc();
    v58[0] = v49;
    *v33 = 136446722;
    v34 = *(*(v54 + 12) + 8);
    HIDWORD(v48) = v31;
    v35 = v30;
    v36 = v34(v10);
    v54 = v28;
    v38 = v37;
    (*(v35 + 8))(v17, v10);
    v39 = sub_18B7EA850(v36, v38, v58);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2082;
    v40 = sub_18BC21AF8();
    v42 = sub_18B7EA850(v40, v41, v58);

    *(v33 + 14) = v42;
    v28 = v54;
    *(v33 + 22) = 2048;
    v43 = *(v18 + 24);

    *(v33 + 24) = v43;

    _os_log_impl(&dword_18B7AC000, v29, BYTE4(v48), "Begin borrowing content for %{public}s due to %{public}s, assertion count is now %ld", v33, 0x20u);
    v44 = v49;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v44, -1, -1);
    v45 = v33;
    v11 = v50;
    MEMORY[0x18CFFEEE0](v45, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v17, v10);
    v35 = v30;
  }

  v46 = v55;
  v28(v55, v57, v10);
  (*(v35 + 56))(v46, 0, 1, v10);
  v47 = *(*v5 + 168);
  swift_beginAccess();
  (*(v56 + 40))(&v5[v47], v46, v11);
  swift_endAccess();
  sub_18BBAC380();
}

void sub_18BBAB518(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v44[-v10];
  v11 = sub_18BC21848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44[-v14];
  v16 = *(v4 + 9);
  v17 = *(v16 + 24);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v50 = v13;
  v51 = a1;
  v48 = v8;
  v52 = a2;
  *(v16 + 24) = v19;
  if (!v19)
  {
    swift_beginAccess();
    v20 = *(v16 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      v45 = a3;
      sub_18BC1E3F8();
      v22 = v20 + 40;
      do
      {
        v23 = *(v22 - 8);
        v54[0] = *(v16 + 24) > 0;
        sub_18BC1E1A8();
        v23(v54);

        v22 += 16;
        --v21;
      }

      while (v21);

      a3 = v45;
    }
  }

  if (qword_1EA9D22A0 != -1)
  {
    goto LABEL_18;
  }

LABEL_8:
  v24 = sub_18BC1F2C8();
  __swift_project_value_buffer(v24, qword_1EA9F7E98);
  swift_retain_n();
  v25 = sub_18BC1F2A8();
  v26 = sub_18BC21258();
  if (os_log_type_enabled(v25, v26))
  {
    v47 = v26;
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v27 = 136446722;
    v28 = *(*v4 + 160);
    swift_beginAccess();
    v29 = v50;
    (*(v12 + 16))(v15, &v4[v28], v50);
    v30 = v53;
    if ((*(v53 + 48))(v15, 1, v9))
    {
      (*(v12 + 8))(v15, v29);
      v31 = 0xE500000000000000;
      v32 = 0x3E6C696E3CLL;
    }

    else
    {
      v33 = *(v30 + 16);
      v45 = a3;
      v34 = v49;
      v33(v49, v15, v9);
      (*(v12 + 8))(v15, v29);
      v35 = v30;
      v36 = (*(*(v48 + 96) + 8))(v9);
      v31 = v37;
      (*(v35 + 8))(v34, v9);
      v32 = v36;
    }

    v38 = sub_18B7EA850(v32, v31, &v55);

    *(v27 + 4) = v38;
    *(v27 + 12) = 2082;
    v39 = sub_18BC21AF8();
    v41 = sub_18B7EA850(v39, v40, &v55);

    *(v27 + 14) = v41;
    *(v27 + 22) = 2048;
    v42 = *(v16 + 24);

    *(v27 + 24) = v42;

    _os_log_impl(&dword_18B7AC000, v25, v47, "End borrowing content for %{public}s due to %{public}s, assertion count is now %ld", v27, 0x20u);
    v43 = v46;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v43, -1, -1);
    MEMORY[0x18CFFEEE0](v27, -1, -1);
  }

  else
  {
  }

  if (*(v16 + 24) <= 0)
  {
    sub_18BBAC380();
  }
}

void sub_18BBABA00(NSObject *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v90 = a4;
  v88 = a2;
  v89 = a3;
  v87 = *v4;
  v7 = *(v87 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v83[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v83[-v14];
  v15 = sub_18BC21848();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v83[-v20];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v83[-v23];
  v25 = *(v8 + 16);
  v94 = a1;
  v96 = v25;
  (v25)(&v83[-v23], a1, v7, v22);
  v95 = v8;
  (*(v8 + 56))(v24, 0, 1, v7);
  v26 = *(*v5 + 168);
  swift_beginAccess();
  v92 = v16;
  v27 = &v5[v26];
  v28 = v15;
  (*(v16 + 40))(v27, v24, v15);
  swift_endAccess();
  if (*(*(v5 + 9) + 24) < 1)
  {
    v93 = v18;
    if (qword_1EA9D22A0 != -1)
    {
      swift_once();
    }

    v43 = sub_18BC1F2C8();
    __swift_project_value_buffer(v43, qword_1EA9F7E98);
    v96(v10, v94, v7);
    sub_18BC1E1A8();
    v44 = sub_18BC1F2A8();
    v45 = sub_18BC21258();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v95;
    if (v46)
    {
      LODWORD(v94) = v45;
      v48 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v97 = v91;
      *v48 = 136446722;
      v49 = *(*v5 + 160);
      swift_beginAccess();
      v50 = v92;
      v51 = &v5[v49];
      v52 = v93;
      (*(v92 + 16))(v93, v51, v28);
      if ((*(v47 + 48))(v52, 1, v7))
      {
        v53 = 0x3E6C696E3CLL;
        (*(v50 + 8))(v52, v28);
        v54 = 0xE500000000000000;
        v55 = v87;
      }

      else
      {
        v71 = v28;
        v72 = v86;
        v96(v86, v52, v7);
        (*(v50 + 8))(v52, v71);
        v55 = v87;
        v53 = (*(*(v87 + 96) + 8))(v7);
        v54 = v73;
        (*(v47 + 8))(v72, v7);
      }

      v74 = sub_18B7EA850(v53, v54, &v97);

      *(v48 + 4) = v74;
      *(v48 + 12) = 2082;
      v75 = (*(*(v55 + 96) + 8))(v7);
      v77 = v76;
      (*(v47 + 8))(v10, v7);
      v78 = sub_18B7EA850(v75, v77, &v97);

      *(v48 + 14) = v78;
      *(v48 + 22) = 2080;
      v79 = sub_18BC21AF8();
      v81 = sub_18B7EA850(v79, v80, &v97);

      *(v48 + 24) = v81;
      _os_log_impl(&dword_18B7AC000, v44, v94, "Ignoring borrowing update from %{public}s to %{public}s due to %s because assertion is not held", v48, 0x20u);
      v82 = v91;
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v82, -1, -1);
      MEMORY[0x18CFFEEE0](v48, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v10, v7);
    }
  }

  else
  {
    v85 = *(v5 + 9);
    if (qword_1EA9D22A0 != -1)
    {
      swift_once();
    }

    v29 = sub_18BC1F2C8();
    __swift_project_value_buffer(v29, qword_1EA9F7E98);
    v30 = v93;
    v96(v93, v94, v7);
    swift_retain_n();
    v31 = sub_18BC1F2A8();
    v32 = sub_18BC21258();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v91;
    v34 = v92;
    if (v33)
    {
      v84 = v32;
      v94 = v31;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97 = v37;
      *v36 = 136446978;
      v38 = *(*v5 + 160);
      swift_beginAccess();
      (*(v34 + 16))(v35, &v5[v38], v28);
      v39 = v95;
      if ((*(v95 + 48))(v35, 1, v7))
      {
        v40 = 0x3E6C696E3CLL;
        (*(v34 + 8))(v35, v28);
        v41 = 0xE500000000000000;
        v42 = v87;
      }

      else
      {
        v56 = v34;
        v57 = v28;
        v58 = v86;
        v96(v86, v35, v7);
        (*(v56 + 8))(v35, v57);
        v42 = v87;
        v40 = (*(*(v87 + 96) + 8))(v7);
        v41 = v59;
        (*(v39 + 8))(v58, v7);
      }

      v60 = sub_18B7EA850(v40, v41, &v97);

      *(v36 + 4) = v60;
      *(v36 + 12) = 2082;
      v61 = v93;
      v62 = (*(*(v42 + 96) + 8))(v7);
      v64 = v63;
      (*(v39 + 8))(v61, v7);
      v65 = sub_18B7EA850(v62, v64, &v97);

      *(v36 + 14) = v65;
      *(v36 + 22) = 2080;
      v66 = sub_18BC21AF8();
      v68 = sub_18B7EA850(v66, v67, &v97);

      *(v36 + 24) = v68;
      *(v36 + 32) = 2048;
      v69 = *(v85 + 24);

      *(v36 + 34) = v69;

      v70 = v94;
      _os_log_impl(&dword_18B7AC000, v94, v84, "Updating borrowing from %{public}s to %{public}s due to reason: %s, assertion count is %ld", v36, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v37, -1, -1);
      MEMORY[0x18CFFEEE0](v36, -1, -1);
    }

    else
    {

      (*(v95 + 8))(v30, v7);
    }

    sub_18BBAC380();
  }
}

void sub_18BBAC380()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_18BC21848();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  if (*(v0 + 16) == 1 && *(v0[9] + 24) >= 1)
  {
    v8 = *(v1 + 168);
    swift_beginAccess();
    (*(v4 + 16))(v7, v0 + v8, v3);
  }

  else
  {
    (*(*(v2 - 8) + 56))(v7, 1, 1, v2, v5);
  }

  sub_18BBAC8A4(v7);
  (*(v4 + 8))(v7, v3);
  if (*(v0[9] + 24) >= 1 && (v0[2] & 1) == 0)
  {
    if (qword_1EA9D22A0 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1F2C8();
    __swift_project_value_buffer(v9, qword_1EA9F7E98);
    v10 = sub_18BC1F2A8();
    v11 = sub_18BC21248();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_18B7AC000, v10, v11, "BorrowedContentManager's assertion is unexpectedly taken when borrowing is disabled.", v12, 2u);
      MEMORY[0x18CFFEEE0](v12, -1, -1);
    }
  }
}

uint64_t sub_18BBAC5E8()
{

  v1 = *(*v0 + 152);
  v2 = sub_18BC21848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 160);
  v4 = sub_18BC21848();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + *(*v0 + 168), v4);
  return v0;
}

uint64_t sub_18BBAC728()
{
  sub_18BBAC5E8();

  return swift_deallocClassInstance();
}

uint64_t sub_18BBAC7EC(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  return sub_18BBAA5F4();
}

uint64_t sub_18BBAC8A4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 160);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_18BBAA7EC(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18BBACA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18BBB055C(&qword_1EA9DAE20, type metadata accessor for SFReaderThemePickerControl);
  sub_18BC1EE78();

  *a2 = *(v3 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme);
  return result;
}

uint64_t sub_18BBACB0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v158 = sub_18BC1EE48();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v157 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v151 - v14;
  v16 = sub_18BC1F7B8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v151 - v21;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext] = 0;
  v23 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker;
  type metadata accessor for SFReaderThemePickerControl();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontPicker;
  v25 = objc_allocWithZone(type metadata accessor for SFInlinePopUpButton());
  *&v4[v24] = sub_18BA2DE08(1);
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontFamiliesFailedToDownload] = MEMORY[0x1E69E7CD0];
  v26 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackView;
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v27 setAlignment_];
  [v27 setDistribution_];
  [v27 setSpacing_];
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton;
  *&v5[v28] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v29 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderButton;
  *&v5[v29] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackViewConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction] = 0;
  *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction] = 0;
  v30 = _s21ReaderOptionsCardCellCMa();
  v162.receiver = v5;
  v162.super_class = v30;
  v31 = objc_msgSendSuper2(&v162, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = sub_18BC20B98();
  [v31 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v33 = swift_allocObject();
  v159 = xmmword_18BC3E410;
  *(v33 + 16) = xmmword_18BC3E410;
  v34 = sub_18BC1F7C8();
  v35 = MEMORY[0x1E69DC0F8];
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  v161 = v30;
  v160[0] = v31;
  v36 = v31;
  MEMORY[0x18CFFCA50](v33, v160, sel_updateTheme);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  v37 = swift_allocObject();
  *(v37 + 16) = v159;
  v38 = sub_18BC1FF28();
  v39 = MEMORY[0x1E69DC2B0];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v161 = v30;
  v160[0] = v36;
  v40 = v36;
  MEMORY[0x18CFFCA50](v37, v160, sel_reloadFonts);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  sub_18BC1F7A8();
  v41 = objc_opt_self();
  v42 = [v41 secondarySystemGroupedBackgroundColor];
  sub_18BC1F788();
  (*(v17 + 16))(v22, v19, v16);
  sub_18BC1F768();
  (*(v17 + 8))(v19, v16);
  (*(v17 + 56))(v22, 0, 1, v16);
  MEMORY[0x18CFFC920](v22);
  v43 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontPicker;
  v44 = *&v40[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontPicker];
  sub_18BC21818();
  v45 = sub_18BC21808();
  v46 = *(v45 - 8);
  result = (*(v46 + 48))(v15, 1, v45);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    *&v159 = v41;

    sub_18BC21668();
    v49 = v48;
    v51 = v50;
    (*(v46 + 8))(v15, v45);
    v52 = [v40 contentView];
    v154 = v45;
    v153 = v46;
    if (qword_1EA9D2180 != -1)
    {
      swift_once();
    }

    [v52 setLayoutMargins_];

    v53 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v53 setAccessibilityTraits_];
    [v53 setAdjustsFontForContentSizeCategory_];
    v54 = [objc_opt_self() preferredFontForTextStyle_];
    [v53 setFont_];

    v55 = v155;
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v156 + 8))(v55, v158);
    v56 = sub_18BC20B98();

    [v53 setText_];

    v57 = v53;
    [v57 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v58) = 1144750080;
    [v57 setContentCompressionResistancePriority:0 forAxis:v58];
    v59 = v40;
    v60 = [v59 contentView];
    [v60 addSubview_];

    v61 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker;
    v62 = *&v59[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker];
    v63 = sub_18BC20B98();
    [v62 setAccessibilityIdentifier_];

    [*&v59[v61] setTranslatesAutoresizingMaskIntoConstraints_];
    v64 = *&v59[v61];
    v158 = v61;
    v65 = v64;
    [v65 addTarget:v59 action:sel_userDidChangeTheme_ forControlEvents:4096];

    v66 = [v59 &selRef_flattenedImageWithColor_];
    [v66 addSubview_];

    v67 = *&v40[v43];
    v68 = sub_18BC20B98();
    [v67 setAccessibilityIdentifier_];

    [*&v40[v43] setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v69) = 1132068864;
    [*&v40[v43] setContentCompressionResistancePriority:0 forAxis:v69];
    v70 = [v59 &selRef_flattenedImageWithColor_];
    [v70 addSubview_];

    v71 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackView;
    [*&v59[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackView] setTranslatesAutoresizingMaskIntoConstraints_];
    v72 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton;
    v73 = *&v59[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton];
    v155 = v43;
    v74 = v157;
    sub_18BC21768();
    v75 = [v159 labelColor];
    sub_18BC21708();
    sub_18BBD99B4();
    v76 = sub_18BC20B98();
    v77 = [objc_opt_self() systemImageNamed_];

    sub_18BC21788();
    (*(v153 + 56))(v74, 0, 1, v154);
    sub_18BC21828();

    [*&v59[v72] setHidden_];
    v78 = *&v59[v72];
    v154 = v40;
    [v78 addTarget:v59 action:sel_listenToPage_ forControlEvents:0x2000];

    [*&v59[v71] addArrangedSubview_];
    v79 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderButton;
    v80 = *&v59[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderButton];
    v81 = sub_18BC20B98();
    [v80 setAccessibilityIdentifier_];

    v82 = *&v59[v79];
    sub_18BBADF50(v74);
    sub_18BC21828();

    v83 = *&v59[v79];
    [v83 addTarget:v59 action:sel_hideReader_ forControlEvents:0x2000];

    v153 = v71;
    v84 = *&v59[v71];
    v152 = v79;
    [v84 addArrangedSubview_];
    v85 = [v59 contentView];

    v86 = [v85 layoutMarginsGuide];
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_18BC44480;
    v88 = [v57 leadingAnchor];
    *&v159 = v86;
    v89 = [v86 leadingAnchor];
    v90 = [v88 constraintEqualToAnchor_];

    *(v87 + 32) = v90;
    v91 = [v57 topAnchor];
    v92 = [v86 &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
    v93 = [v91 &selRef:v92 containsButtonType:? + 5];

    *(v87 + 40) = v93;
    v94 = v155;
    v95 = v154;
    v96 = [*&v155[v154] leadingAnchor];
    v97 = [v57 trailingAnchor];
    v98 = [v96 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v97 multiplier:1.0];

    *(v87 + 48) = v98;
    v99 = [*&v94[v95] lastBaselineAnchor];
    v100 = [v57 lastBaselineAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    *(v87 + 56) = v101;
    v102 = [*&v94[v95] &selRef_stringByAppendingPathExtension_ + 4];
    v103 = v159;
    v104 = [v159 &selRef_stringByAppendingPathExtension_ + 4];
    v105 = [v102 constraintEqualToAnchor_];

    *(v87 + 64) = v105;
    v106 = v158;
    v107 = [*&v59[v158] topAnchor];
    v108 = [v57 bottomAnchor];
    v157 = v57;

    v109 = objc_opt_self();
    if ([v109 isSolariumEnabled])
    {
      v110 = 14.0;
    }

    else
    {
      v110 = 18.0;
    }

    v111 = [v107 constraintEqualToAnchor:v108 constant:v51 + v110];

    *(v87 + 72) = v111;
    v112 = [*&v59[v106] leadingAnchor];
    v113 = [v103 leadingAnchor];
    v114 = [v112 constraintEqualToAnchor_];

    *(v87 + 80) = v114;
    v115 = [*&v59[v106] trailingAnchor];
    v116 = [v103 trailingAnchor];
    v117 = [v115 &selRef:v116 containsButtonType:? + 5];

    *(v87 + 88) = v117;
    v160[0] = v87;
    v118 = objc_opt_self();
    sub_18B7B0AC0(0, &qword_1EA9D4700);
    sub_18BC1E3F8();
    v119 = sub_18BC20D88();

    [v118 activateConstraints_];

    if ([v109 isSolariumEnabled])
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18BC3E3E0;
      v121 = (inited + 32);
      v122 = &selRef_bottomAnchor;
      v123 = [*&v59[v158] bottomAnchor];
      v124 = v159;
      v125 = v159;
    }

    else
    {
      v126 = [v59 contentView];
      v127 = v153;
      [v126 addSubview_];

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18BC41E50;
      v128 = [*&v59[v127] topAnchor];
      v129 = [*&v59[v158] bottomAnchor];
      if ([v109 isSolariumEnabled])
      {
        v130 = 14.0;
      }

      else
      {
        v130 = 18.0;
      }

      v131 = [v128 constraintEqualToAnchor:v129 constant:v130];

      *(inited + 32) = v131;
      v132 = [*&v59[v127] leadingAnchor];
      v124 = v159;
      v133 = [v159 leadingAnchor];
      v134 = [v132 &selRef:v133 containsButtonType:? + 5];

      *(inited + 40) = v134;
      v135 = [*&v59[v127] trailingAnchor];
      v136 = [v124 trailingAnchor];
      v137 = [v135 &selRef:v136 containsButtonType:? + 5];

      *(inited + 48) = v137;
      v138 = [*&v59[v127] bottomAnchor];
      v139 = [v124 bottomAnchor];
      v140 = [v138 &selRef:v139 containsButtonType:? + 5];

      *(inited + 56) = v140;
      v121 = (inited + 64);
      v141 = *&v59[v127];
      v122 = &selRef_heightAnchor;
      v123 = [v141 heightAnchor];
      v125 = *&v59[v152];
    }

    v142 = [v125 *v122];
    v143 = [v123 &selRef:v142 containsButtonType:? + 5];

    *v121 = v143;
    sub_18BA01A10(inited);
    v144 = sub_18BC20D88();

    [v118 activateConstraints_];

    v145 = objc_opt_self();
    v146 = [v145 defaultCenter];
    [v146 addObserver:v59 selector:sel_fontDownloadDidFinish_ name:*MEMORY[0x1E69C9558] object:0];

    v147 = [v145 defaultCenter];
    [v147 addObserver:v59 selector:sel_fontDownloadDidFail_ name:*MEMORY[0x1E69C9550] object:0];

    v148 = [v145 defaultCenter];
    v149 = *MEMORY[0x1E69C9568];
    v150 = v59;
    [v148 addObserver:v150 selector:sel_fontDownloadDidUpdate_ name:v149 object:0];

    return v150;
  }

  return result;
}

uint64_t sub_18BBADF50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_18BC217C8();
  sub_18BBD99B4();
  v9 = sub_18BC20B98();
  v10 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  sub_18BC217A8();
  v12 = sub_18BC21808();
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

void sub_18BBAE178()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext);
  if (v1)
  {
    v2 = [swift_unknownObjectRetain() configurationManager];
    v3 = [v2 themeForAppearance_];

    sub_18BB6E098(v3);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BBAE278(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    sub_18BBB055C(&qword_1EA9DAE20, type metadata accessor for SFReaderThemePickerControl);
    swift_unknownObjectRetain();
    sub_18BC1EE78();

    [v2 setReaderTheme:*(v3 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme) forAppearance:{objc_msgSend(v2, sel_currentAppearance)}];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18BBAE3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_18BC20F28();
  v4[19] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18BBAE488, v6, v5);
}

uint64_t sub_18BBAE488()
{
  v1 = [*(v0 + 144) fontManager];
  v2 = [v1 possibleFonts];

  sub_18B7B0AC0(0, &qword_1EA9DADC0);
  v3 = sub_18BC20D98();
  *(v0 + 176) = v3;

  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_18BC219A8();
    v4 = v3;
    *(v0 + 184) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 184) = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 192) = 0;
        v6 = *(v0 + 176);
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x18CFFD010](0);
        }

        else
        {
          v7 = *(v6 + 32);
        }

        v8 = v7;
        *(v0 + 200) = v7;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = sub_18BBAE6D0;
        v9 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE18);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_18BBAE9E4;
        *(v0 + 104) = &block_descriptor_59;
        *(v0 + 112) = v9;
        [v8 isInstalledWithCompletionHandler_];
        v4 = v0 + 16;
      }

      return MEMORY[0x1EEE6DEC8](v4);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_18BBAE6D0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_18BBAE7D8, v2, v1);
}

uint64_t sub_18BBAE7D8()
{
  if (*(v0 + 208))
  {
    v1 = [*(v0 + 200) familyName];
    if (!v1)
    {
      sub_18BC20BD8();
      v1 = sub_18BC20B98();
    }

    [*(v0 + 144) activateFont_];
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 184);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192) + 1;
    *(v0 + 192) = v6;
    v7 = *(v0 + 176);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18CFFD010]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 200) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_18BBAE6D0;
    v9 = v8;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE18);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18BBAE9E4;
    *(v0 + 104) = &block_descriptor_59;
    *(v0 + 112) = v10;
    [v9 isInstalledWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_18BBAE9E4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void sub_18BBAEA40()
{
  v1 = v0;
  v2 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DADC8);
  v4 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v95 - v5;
  v109 = sub_18BC1EE48();
  v6 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v95 - v9;
  v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext];
  if (v10)
  {
    v96 = v8;
    v11 = swift_unknownObjectRetain();
    sub_18BBB0248(v11);
    v12 = [v10 configurationManager];
    v13 = [v10 fontManager];
    v14 = [v13 languageTag];

    if (!v14)
    {
      sub_18BC20BD8();
      v14 = sub_18BC20B98();
    }

    v116 = [v12 fontForLanguageTag_];

    v107 = [objc_opt_self() sharedManager];
    v15 = objc_opt_self();
    v16 = *MEMORY[0x1E69DDCF8];
    v17 = [v1 traitCollection];
    v18 = [v15 preferredFontForTextStyle:v16 compatibleWithTraitCollection:v17];

    [v18 pointSize];
    v20 = v19;

    v21 = [v10 fontManager];
    v22 = [v21 possibleFonts];

    sub_18B7B0AC0(0, &qword_1EA9DADC0);
    v23 = sub_18BC20D98();

    v112 = v23;
    if (v23 >> 62)
    {
      v24 = sub_18BC219A8();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = v6;
    if (v24)
    {
      v118 = MEMORY[0x1E69E7CC0];
      sub_18BC21B98();
      if (v24 < 0)
      {
        __break(1u);
        return;
      }

      v95 = v10;
      v114 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
      v25 = v112;
      v113 = v112 & 0xC000000000000001;
      v101 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontFamiliesFailedToDownload;
      swift_beginAccess();
      v26 = 0;
      v110 = *MEMORY[0x1E69DB648];
      v98 = "hideReaderAction";
      v106 = (v6 + 8);
      v100 = "FontSelectorMenu";
      v99 = (v4 + 8);
      v111 = xmmword_18BC3E410;
      v115 = v24;
      do
      {
        if (v113)
        {
          v27 = MEMORY[0x18CFFD010](v26, v25);
        }

        else
        {
          v27 = *(v25 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = [v27 familyName];
        v30 = sub_18BC20BD8();
        v32 = v31;

        v33 = [v116 familyName];
        v34 = sub_18BC20BD8();
        v36 = v35;

        if (v30 != v34 || v32 != v36)
        {
          sub_18BC21FD8();
        }

        v38 = [v28 displayName];
        sub_18BC20BD8();

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v28;
        v41 = v28;
        v42 = sub_18BC215E8();
        v43 = [v41 fontOfSize_];
        if (v43)
        {
          v44 = v43;
          v45 = v1;
          v46 = v42;
          v47 = [v46 title];
          if (!v47)
          {
            sub_18BC20BD8();
            v47 = sub_18BC20B98();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE00);
          inited = swift_initStackObject();
          *(inited + 16) = v111;
          v49 = v110;
          *(inited + 32) = v110;
          *(inited + 64) = sub_18B7B0AC0(0, &unk_1EA9D55E0);
          *(inited + 40) = v44;
          v50 = v49;
          v51 = v44;
          sub_18BA657FC(inited);
          swift_setDeallocating();
          sub_18B988BAC(inited + 32, &unk_1EA9D55F0);
          v52 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          type metadata accessor for Key(0);
          sub_18BBB055C(&qword_1EA9D3C40, type metadata accessor for Key);
          v53 = sub_18BC20998();

          v54 = [v52 initWithString:v47 attributes:v53];

          [v46 setAttributedTitle_];
          v1 = v45;
          v25 = v112;
        }

        if (([v41 isReadyToUse] & 1) == 0)
        {
          [v42 setAttributes_];
          v55 = v107;
          if ([v107 hasOngoingRequestForFont_])
          {
            [v55 downloadProgressForFont_];
            v57 = v56 / 100.0;
            v58 = v42;
            v59 = v108;
            sub_18BC1EE38();
            v105 = sub_18BC1EE28();
            (*v106)(v59, v109);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510);
            v60 = swift_allocObject();
            *(v60 + 16) = v111;
            v117 = v57;
            sub_18BC1EC28();
            sub_18BABC974();
            v61 = v1;
            v62 = v102;
            sub_18BC1E928();
            sub_18BBB0490();
            v63 = v103;
            sub_18BC20978();
            v64 = v62;
            v1 = v61;
            v65 = v63;
            v25 = v112;
            (*v99)(v64, v65);
            v66 = sub_18BC20B98();

            *(v60 + 56) = sub_18B7B0AC0(0, &qword_1EA9DADF0);
            *(v60 + 64) = sub_18BBB04F4();
            *(v60 + 32) = v66;
            sub_18BC20BA8();
          }

          else
          {
            v67 = *&v1[v101];
            sub_18BC1E3F8();
            v68 = [v41 familyName];
            v69 = sub_18BC20BD8();
            v71 = v70;

            sub_18B9BA608(v69, v71, v67);

            v72 = v42;
            v73 = v108;
            sub_18BC1EE38();
            sub_18BC1EE28();
            (*v106)(v73, v109);
          }

          v74 = sub_18BC20B98();

          [v42 setSubtitle_];
        }

        ++v26;
        sub_18BC21B68();
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
      }

      while (v115 != v26);

      v75 = v118;
    }

    else
    {

      v75 = MEMORY[0x1E69E7CC0];
    }

    v76 = *&v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontPicker];
    v77 = v116;
    v78 = [v116 displayName];
    v79 = sub_18BC20BD8();
    v81 = v80;

    v82 = [v77 fontOfSize_];
    v83 = &v76[OBJC_IVAR___SFInlinePopUpButton_valueText];
    *v83 = v79;
    v83[1] = v81;

    v84 = *&v76[OBJC_IVAR___SFInlinePopUpButton_referenceFont];
    *&v76[OBJC_IVAR___SFInlinePopUpButton_referenceFont] = v82;

    v85 = v82;
    sub_18BA2E374();

    v86 = v108;
    sub_18BC1EE38();
    v87 = v96;
    sub_18BC1EE38();
    sub_18BC1EE18();
    v88 = *(v97 + 8);
    v89 = v87;
    v90 = v109;
    v88(v89, v109);
    v88(v86, v90);
    if (v75 >> 62)
    {
      sub_18B7B0AC0(0, &qword_1EA9D39D0);
      sub_18BC1E3F8();
      sub_18BC21D08();
    }

    else
    {
      sub_18BC1E3F8();
      sub_18BC22008();
      sub_18B7B0AC0(0, &qword_1EA9D39D0);
    }

    sub_18B7B0AC0(0, &unk_1EA9DADD0);
    v91 = sub_18BC214D8();
    [v76 setMenu_];

    v92 = [v76 menu];
    if (v92)
    {
      v93 = v92;
      v94 = sub_18BC20B98();
      [v93 setAccessibilityIdentifier_];
    }

    swift_unknownObjectRelease();
  }
}

void sub_18BBAF890(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_18BBAF934(a3);
  }
}

void sub_18BBAF934(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext);
  if (v2)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 sharedManager];
    if ([a1 isReadyToUse])
    {
      v6 = [v2 setReaderFont_];
    }

    else
    {
      v6 = [v5 hasOngoingRequestForFont_];
      if ((v6 & 1) == 0)
      {
        v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontFamiliesFailedToDownload;
        swift_beginAccess();
        v8 = *(v1 + v7);
        sub_18BC1E3F8();
        v9 = [a1 familyName];
        v10 = sub_18BC20BD8();
        v12 = v11;

        LOBYTE(v9) = sub_18B9BA608(v10, v12, v8);

        if (v9)
        {
          [v2 setReaderFont_];
        }

        v13 = [a1 familyName];
        v14 = sub_18BC20BD8();
        v16 = v15;

        swift_beginAccess();
        sub_18B9CEF94(v14, v16);
        swift_endAccess();

        v6 = [v5 downloadFont_];
      }
    }

    sub_18BBAEA40(v6);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BBAFB20(void *a1)
{
  v2 = sub_18BC1E6A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v6 = a1;
  sub_18BBAEA40();

  return (*(v3 + 8))(v5, v2);
}

void sub_18BBAFC04()
{
  v0 = sub_18BC1E698();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_18BC20BD8();
  sub_18BC21A68();
  if (!*(v1 + 16) || (v2 = sub_18B85DC48(v9), (v3 & 1) == 0))
  {

    sub_18B831014(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_18B7B193C(*(v1 + 56) + 32 * v2, &v10);
  sub_18B831014(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_18B988BAC(&v10, &qword_1EA9D5220);
    return;
  }

  sub_18B7B0AC0(0, &qword_1EA9DADC0);
  if (swift_dynamicCast())
  {
    v4 = v9[0];
    v5 = [v9[0] familyName];
    v6 = sub_18BC20BD8();
    v8 = v7;

    swift_beginAccess();
    sub_18BB5E89C(&v10, v6, v8);
    swift_endAccess();

    sub_18BBAEA40();
  }
}

void sub_18BBAFE90(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction;
  v8 = *(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction);
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_7:
    v14 = *(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton);
    v15 = v8;
    v16 = [v15 accessibilityIdentifier];
    [v14 setAccessibilityIdentifier_];

    v17 = [v15 title];
    sub_18BC20BD8();
    sub_18BC21818();
    v18 = sub_18BC21808();
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      __break(1u);
      return;
    }

    sub_18BC217A8();
    sub_18BC21828();
    [v14 setEnabled_];

    v19 = *(v2 + v7) == 0;
    goto LABEL_11;
  }

  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v9 = v8;
  v10 = a1;
  v11 = sub_18BC215C8();

  if (v11)
  {
    v12 = *(v2 + v7);
    if (!v12)
    {
      [v10 attributes];
      v8 = *(v2 + v7);
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v13 = [v12 attributes];
    if (v13 == [v10 attributes])
    {
      return;
    }
  }

  v8 = *(v2 + v7);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_10:
  v19 = 1;
LABEL_11:
  [*(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton) setHidden_];
}

id sub_18BBB0124()
{
  v2.receiver = v0;
  v2.super_class = _s21ReaderOptionsCardCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BBB0248(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v18[-v4];
  v6 = [a1 fontManager];
  v7 = [v6 languageTag];

  v8 = sub_18BC20BD8();
  v10 = v9;

  if (qword_1EA9D2508 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EA9F8438;
  sub_18BC1E3F8();
  v12 = sub_18B9BA608(v8, v10, v11);

  if (v12)
  {
  }

  swift_beginAccess();
  sub_18BB5E89C(&v19, v8, v10);
  swift_endAccess();

  v14 = sub_18BC20F48();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_18BC20F28();
  swift_unknownObjectRetain();
  v15 = sub_18BC20F18();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  sub_18B97E1A4(0, 0, v5, &unk_18BC52568, v16);
}

unint64_t sub_18BBB0490()
{
  result = qword_1EA9DADE8;
  if (!qword_1EA9DADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DADC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DADE8);
  }

  return result;
}

unint64_t sub_18BBB04F4()
{
  result = qword_1EA9DADF8;
  if (!qword_1EA9DADF8)
  {
    sub_18B7B0AC0(255, &qword_1EA9DADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DADF8);
  }

  return result;
}

uint64_t sub_18BBB055C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BBB05A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B987B10;

  return sub_18BBAE3F0(a1, v4, v5, v6);
}

void sub_18BBB0658()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext) = 0;
  v2 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker;
  type metadata accessor for SFReaderThemePickerControl();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontPicker;
  v4 = objc_allocWithZone(type metadata accessor for SFInlinePopUpButton());
  *(v1 + v3) = sub_18BA2DE08(1);
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_fontFamiliesFailedToDownload) = MEMORY[0x1E69E7CD0];
  v5 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackView;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v6 setAlignment_];
  [v6 setDistribution_];
  [v6 setSpacing_];
  *(v1 + v5) = v6;
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageButton;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderButton;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_buttonsStackViewConstraints) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction) = 0;
  *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction) = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t withoutAnimation<A>(_:)()
{
  sub_18BC20368();
  sub_18BC1E1A8();
  sub_18BC20468();
}

uint64_t sub_18BBB0888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 152))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BBB08DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BBB0A28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x858));
  v5[2] = a1;
  v5[3] = a2;
  sub_18BC1E1A8();
  v3(sub_18BBB15DC, v5);
}

uint64_t sub_18BBB0AAC(void *a1)
{
  v2 = sub_18BC20BD8();
  v4 = v3;
  v5 = a1;
  sub_18BBB0A28(v2, v4);
}

uint64_t sub_18BBB0B14(void *a1)
{
  v1 = a1;
  v2 = sub_18BBB0B48();

  return v2 & 1;
}

uint64_t sub_18BBB0B48()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x850));
  v2 = sub_18BC1E1A8();
  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_18BBB0BB0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x858));
  sub_18BC1E1A8();
  v1(sub_18BBB0C34, 0);
}

uint64_t sub_18BBB0C34()
{
  sub_18BC1E3F8();
  v0 = sub_18BBB1510(1);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x18CFFC110](v0, v2, v4, v6);

  return v7;
}

void sub_18BBB0CC4(void *a1)
{
  v1 = a1;
  sub_18BBB0BB0();
}

id sub_18BBB0D0C()
{
  v0 = sub_18BBB162C();

  return v0;
}

void sub_18BBB1118(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x850));
  *v12 = sub_18B814EE4;
  v12[1] = 0;
  v13 = (v5 + *((*v11 & *v5) + 0x858));
  *v13 = CGRectMake;
  v13[1] = 0;
  v14 = *((*v11 & *v5) + 0x860);
  *(v5 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v5 + *((*v11 & *v5) + 0x868)) = 1;
  *(v5 + *((*v11 & *v5) + 0x870)) = 0;
  *(v5 + *((*v11 & *v5) + 0x878)) = 1;
  *(v5 + *((*v11 & *v5) + 0x880)) = 1;
  *(v5 + *((*v11 & *v5) + 0x888)) = 1;
  *(v5 + *((*v11 & *v5) + 0x890)) = 1;

  SFFluidCollectionView.init(frame:layout:)(a1, a2, a3, a4, a5);
}

id sub_18BBB12F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_18BBB1658(v3);

  return v4;
}

void sub_18BBB1328()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *(v0 + *((*v1 & *v0) + 0x860));
}

id sub_18BBB13CC()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x820);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x830);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x840);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TabOverviewFluidCollectionView();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

void sub_18BBB1450(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *(a1 + *((*v2 & *a1) + 0x860));
}

uint64_t sub_18BBB1510(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_18BC20C38();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_18BC20C48();

  return sub_18BC20CB8();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_18BBB15DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](v1, v2);
}

id sub_18BBB1658(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = (v1 + *(v4 + 0x850));
  *v5 = sub_18B814EE4;
  v5[1] = 0;
  v6 = (v1 + *((*v3 & *v1) + 0x858));
  *v6 = CGRectMake;
  v6[1] = 0;
  v7 = *((*v3 & *v1) + 0x860);
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + *((*v3 & *v1) + 0x868)) = 1;
  *(v1 + *((*v3 & *v1) + 0x870)) = 0;
  *(v1 + *((*v3 & *v1) + 0x878)) = 1;
  *(v1 + *((*v3 & *v1) + 0x880)) = 1;
  *(v1 + *((*v3 & *v1) + 0x888)) = 1;
  *(v1 + *((*v3 & *v1) + 0x890)) = 1;
  v9 = *(v4 + 2080);
  v10 = *(v4 + 2096);
  v11 = *(v4 + 2112);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TabOverviewFluidCollectionView();
  return objc_msgSendSuper2(&v12, sel_initWithCoder_, a1, v9, v10, v11);
}

void sub_18BBB18BC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + qword_1EA9DAF80);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_18BBB1958(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, double (*a8)(uint64_t, double, double, double, double))
{
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = a8(a7, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v16;
}

double sub_18BBB1A24(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t, double, double))
{
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = a6(a5, a2, a3);
  swift_unknownObjectRelease();

  return v12;
}

id sub_18BBB1B34()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SFFluidCollectionViewSizingLayoutContainer();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

uint64_t sub_18BBB1BC4()
{
  sub_18BBB1BEC();

  return swift_unknownObjectRetain();
}

uint64_t FadeOutTruncation.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18BBB1CB0@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0E8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E400;
  if (a1)
  {
    *(v4 + 32) = sub_18BC20718();
    v5 = sub_18BC20728();
  }

  else
  {
    *(v4 + 32) = sub_18BC20728();
    v5 = sub_18BC20718();
  }

  *(v4 + 40) = v5;
  sub_18BC20888();
  sub_18BC20898();
  MEMORY[0x18CFFBD20](v4);
  sub_18BC203C8();
  v6 = *(&v25 + 1);
  v8 = v26;
  v7 = v27;
  sub_18BC20858();
  sub_18BC203B8();
  *&v24[6] = v28;
  *&v24[22] = v29;
  *&v24[38] = v30;
  v15[0] = v25;
  v15[1] = v26;
  *v16 = v27;
  *&v16[8] = 256;
  *&v16[10] = *v24;
  *&v16[56] = *(&v30 + 1);
  v17[0] = v25;
  *&v16[42] = *&v24[32];
  *&v16[26] = *&v24[16];
  v9 = v26;
  *a2 = v25;
  a2[1] = v9;
  v10 = *v16;
  v11 = *&v16[16];
  v12 = *&v16[48];
  a2[4] = *&v16[32];
  a2[5] = v12;
  a2[2] = v10;
  a2[3] = v11;
  v17[1] = v6;
  v18 = v8;
  v19 = v7;
  v20 = 256;
  *&v23[14] = *&v24[46];
  *v23 = *&v24[32];
  v22 = *&v24[16];
  v21 = *v24;
  sub_18B7CA054(v15, &v14, &qword_1EA9DB0F0);
  return sub_18B988BAC(v17, &qword_1EA9DB0F0);
}

double sub_18BBB1E8C@<D0>(_OWORD *a1@<X8>)
{
  if (*v1)
  {
    v3 = sub_18BC204A8();
    sub_18BBB1CB0(1, &v32);
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v11 = v32;
    v12 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v17 = v32;
    v18 = v33;
    sub_18B7CA054(&v11, &v23, &qword_1EA9DB0B8);
    sub_18B988BAC(&v17, &qword_1EA9DB0B8);
    *&v10[39] = v13;
    *&v10[55] = v14;
    *&v10[71] = v15;
    *&v10[87] = v16;
    *&v10[7] = v11;
    *&v10[23] = v12;
    v23 = v3;
    v24 = 0;
    v25 = 0;
    v28 = *&v10[32];
    v27 = *&v10[16];
    v26 = *v10;
    *&v31[15] = *(&v16 + 1);
    *v31 = *&v10[80];
    v30 = *&v10[64];
    v29 = *&v10[48];
    sub_18BBB2820(&v23);
  }

  else
  {
    v4 = sub_18BC204A8();
    sub_18BBB1CB0(0, &v32);
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v11 = v32;
    v12 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v17 = v32;
    v18 = v33;
    sub_18B7CA054(&v11, &v23, &qword_1EA9DB0E0);
    sub_18B988BAC(&v17, &qword_1EA9DB0E0);
    *&v9[39] = v13;
    *&v9[55] = v14;
    *&v9[71] = v15;
    *&v9[87] = v16;
    *&v9[7] = v11;
    *&v9[23] = v12;
    v23 = v4;
    v24 = 0;
    v25 = 0;
    v28 = *&v9[32];
    v27 = *&v9[16];
    v26 = *v9;
    *&v31[15] = *(&v16 + 1);
    *v31 = *&v9[80];
    v30 = *&v9[64];
    v29 = *&v9[48];
    sub_18BBB282C(&v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0C8);
  sub_18B7B0B08(&qword_1EA9DB0D0, &qword_1EA9DB0C0);
  sub_18B7B0B08(&qword_1EA9DB0D8, &qword_1EA9DB0C8);
  sub_18BC20568();
  v5 = v37;
  a1[4] = v36;
  a1[5] = v5;
  a1[6] = v38[0];
  *(a1 + 105) = *(v38 + 9);
  v6 = v33;
  *a1 = v32;
  a1[1] = v6;
  result = *&v34;
  v8 = v35;
  a1[2] = v34;
  a1[3] = v8;
  return result;
}

uint64_t FadeOutTruncation.body(content:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  *a2 = sub_18BC205A8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB070);
  return sub_18BBB223C(a1, v5, &a2[*(v7 + 44)], v6);
}

uint64_t sub_18BBB223C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB090);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v47 - v8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB098);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0A0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v53 = v16;
  v20 = *(v16 + 16);
  v50 = &v47 - v21;
  v22 = a1;
  v23 = v20;
  v20(v19);
  v24 = sub_18BC20728();
  v48 = a2;
  if (a2)
  {
    v25 = sub_18BC20868();
  }

  else
  {
    v25 = sub_18BC20878();
  }

  v27 = v25;
  v28 = v26;
  v29 = v9 + *(v7 + 36);
  v47 = v23;
  (v23)(v29, v22, v15);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0A8) + 36)];
  *v30 = v27;
  v30[1] = v28;
  *v9 = v24;
  v59 = v48 & 1;
  v60 = a4;
  sub_18BBB1E8C(v57);
  v65 = v57[4];
  v66 = v57[5];
  v67[0] = v58[0];
  *(v67 + 9) = *(v58 + 9);
  v61 = v57[0];
  v62 = v57[1];
  v63 = v57[2];
  v64 = v57[3];
  v31 = v49;
  sub_18B7CF39C(v9, v49, &qword_1EA9DB090);
  v32 = (v31 + *(v51 + 36));
  v33 = v66;
  v32[4] = v65;
  v32[5] = v33;
  v32[6] = v67[0];
  *(v32 + 105) = *(v67 + 9);
  v34 = v62;
  *v32 = v61;
  v32[1] = v34;
  v35 = v64;
  v32[2] = v63;
  v32[3] = v35;
  v36 = v54;
  sub_18B7CF39C(v31, v54, &qword_1EA9DB098);
  v37 = v52;
  v38 = v50;
  v39 = v15;
  v40 = v15;
  v41 = v47;
  (v47)(v52, v50, v39);
  v42 = v55;
  sub_18B7CA054(v36, v55, &qword_1EA9DB098);
  v43 = v56;
  (v41)(v56, v37, v40);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB0B0);
  sub_18B7CA054(v42, v43 + *(v44 + 48), &qword_1EA9DB098);
  sub_18B988BAC(v36, &qword_1EA9DB098);
  v45 = *(v53 + 8);
  v45(v38, v40);
  sub_18B988BAC(v42, &qword_1EA9DB098);
  return (v45)(v37, v40);
}

unint64_t sub_18BBB2678()
{
  result = qword_1EA9DB078;
  if (!qword_1EA9DB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB078);
  }

  return result;
}

uint64_t sub_18BBB270C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  *a2 = sub_18BC205A8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB070);
  return sub_18BBB223C(a1, v5, &a2[*(v7 + 44)], v6);
}

uint64_t getEnumTagSinglePayload for FadeOutTruncation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FadeOutTruncation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t SFEditBookmarkCollectionViewController.Item.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x18CFFD660](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x18CFFD660](v2);
    }

LABEL_8:
    MEMORY[0x18CFFD660](2);
    return sub_18BC215D8();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x18CFFD660](v2);
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x18CFFD660](v2);
}

uint64_t SFEditBookmarkCollectionViewController.Item.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v2);
      return sub_18BC221A8();
    }
  }

  MEMORY[0x18CFFD660](2);
  sub_18BC215D8();
  return sub_18BC221A8();
}

uint64_t sub_18BBB2974()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v2);
      return sub_18BC221A8();
    }
  }

  MEMORY[0x18CFFD660](2);
  sub_18BC215D8();
  return sub_18BC221A8();
}

uint64_t sub_18BBB2A20()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x18CFFD660](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x18CFFD660](v2);
    }

LABEL_8:
    MEMORY[0x18CFFD660](2);
    return sub_18BC215D8();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x18CFFD660](v2);
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x18CFFD660](v2);
}

uint64_t sub_18BBB2AB0()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v2);
      return sub_18BC221A8();
    }
  }

  MEMORY[0x18CFFD660](2);
  sub_18BC215D8();
  return sub_18BC221A8();
}

uint64_t _s12MobileSafari38SFEditBookmarkCollectionViewControllerC4ItemO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        v4 = 1;
        v2 = 2;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v2 == 3)
    {
      if (v3 == 3)
      {
        v4 = 1;
        v2 = 3;
        goto LABEL_17;
      }

LABEL_16:
      sub_18B9B83E0(*a2);
      sub_18B9B83E0(v2);
      v4 = 0;
      goto LABEL_17;
    }

LABEL_10:
    if (v3 >= 4)
    {
      sub_18B9A2928();
      sub_18B9B83E0(v3);
      sub_18B9B83E0(v2);
      v4 = sub_18BC215C8();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    goto LABEL_16;
  }

  v2 = 1;
  v4 = 1;
LABEL_17:
  sub_18B9B8318(v2);
  sub_18B9B8318(v3);
  return v4 & 1;
}

unint64_t sub_18BBB2C5C()
{
  result = qword_1EA9DB0F8;
  if (!qword_1EA9DB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB0F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari38SFEditBookmarkCollectionViewControllerC4ItemO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BBB2CC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BBB2D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_18BBB2D78(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_18BBB2F6C()
{
  v1 = v0;
  v110[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  (MEMORY[0x1EEE9AC00])();
  v3 = v88 - v2;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])();
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1EA98();
  v9 = *(v8 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v98 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = v88 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v88 - v14;
  v16 = [objc_opt_self() defaultManager];
  v95 = v1;
  v17 = [v1 directoryURL];
  sub_18BC1EA38();

  v18 = sub_18BC1E9E8();
  v19 = *(v9 + 8);
  v104 = v9 + 8;
  v101 = v19;
  v19(v15, v8);
  v110[0] = 0;
  v20 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:v110];

  v21 = v110[0];
  if (v20)
  {
    v22 = sub_18BC20D98();
    v23 = v21;

    v25 = v22;
    v26 = *(v22 + 16);
    if (v26)
    {
      v103 = 0;
      v106 = *(v9 + 16);
      v27 = *(v9 + 80);
      v94 = OBJC_IVAR___SFTabSnapshotMetadataStore_database;
      v88[1] = v25;
      v28 = v25 + ((v27 + 32) & ~v27);
      v107 = v9 + 16;
      v29 = *(v9 + 72);
      v30 = v28;
      v99 = (v5 + 48);
      v100 = v29;
      v92 = "d, window_uuid)\n)";
      v93 = (v5 + 32);
      v91 = (v5 + 8);
      *&v24 = 136315394;
      v89 = v24;
      v90 = xmmword_18BC3FC90;
      v31 = v102;
      v97 = v7;
      v105 = v8;
      while (1)
      {
        v106(v31, v30, v8);
        if (sub_18BC1E9A8() == 7894123 && v32 == 0xE300000000000000)
        {
          break;
        }

        v33 = sub_18BC21FD8();

        if (v33)
        {
          goto LABEL_8;
        }

        if (sub_18BC1E9A8() == 6778480 && v76 == 0xE300000000000000)
        {
          break;
        }

        v77 = sub_18BC21FD8();

        if (v77)
        {
          goto LABEL_8;
        }

        v101(v31, v8);
LABEL_26:
        v30 += v100;
        if (!--v26)
        {
          goto LABEL_27;
        }
      }

LABEL_8:
      v108 = v30;
      v109 = v26;
      v34 = sub_18BC1E9C8();
      v36 = v35;
      sub_18BC1E3F8();
      sub_18BC20C48();
      v37 = sub_18BC20CB8();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      MEMORY[0x18CFFC110](v37, v39, v41, v43);

      sub_18BC1EB98();

      if ((*v99)(v3, 1, v4) == 1)
      {
        sub_18B988BAC(v3, &unk_1EA9D3AE0);
        sub_18BBB63BC();
        v44 = swift_allocError();
        *v45 = v34;
        v45[1] = v36;
        swift_willThrow();
        v31 = v102;
        v103 = 0;
        v8 = v105;
        v46 = v98;
      }

      else
      {

        (*v93)(v7, v3, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1D0);
        v47 = swift_allocObject();
        *(v47 + 16) = v90;
        v48 = sub_18BC1E9C8();
        v49 = MEMORY[0x1E69E6158];
        *(v47 + 56) = MEMORY[0x1E69E6158];
        v50 = MEMORY[0x1E69C87B8];
        *(v47 + 64) = MEMORY[0x1E69C87B8];
        *(v47 + 32) = v48;
        *(v47 + 40) = v51;
        if (qword_1EA9D2558 != -1)
        {
          swift_once();
        }

        v52 = byte_1EA9F8590;
        *(v47 + 96) = MEMORY[0x1E69E6370];
        *(v47 + 104) = MEMORY[0x1E69C87C0];
        *(v47 + 72) = v52;
        v53 = sub_18BC1EBA8();
        *(v47 + 136) = v49;
        *(v47 + 144) = v50;
        *(v47 + 112) = v53;
        *(v47 + 120) = v54;
        *(v47 + 176) = MEMORY[0x1E69E7DE0];
        *(v47 + 184) = MEMORY[0x1E69C87B0];
        *(v47 + 152) = 0x4069000000000000;
        v55 = v103;
        sub_18BC21398();
        v8 = v105;
        if (!v55)
        {
          v103 = 0;

          (*v91)(v7, v4);
          v31 = v102;
          v101(v102, v8);
LABEL_25:
          v30 = v108;
          v26 = v109;
          goto LABEL_26;
        }

        (*v91)(v7, v4);

        v44 = v55;
        v103 = 0;
        v46 = v98;
        v31 = v102;
      }

      if (qword_1EA9D2298 != -1)
      {
        swift_once();
      }

      v56 = sub_18BC1F2C8();
      __swift_project_value_buffer(v56, qword_1EA9F7E80);
      v106(v46, v31, v8);
      v57 = v44;
      v58 = sub_18BC1F2A8();
      v59 = sub_18BC21238();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v110[0] = v61;
        *v60 = v89;
        v62 = sub_18BC1E9C8();
        v63 = v46;
        v64 = v4;
        v65 = v3;
        v67 = v66;
        v68 = v101;
        v101(v63, v105);
        v69 = sub_18B7EA850(v62, v67, v110);
        v3 = v65;
        v4 = v64;

        *(v60 + 4) = v69;
        *(v60 + 12) = 2112;
        v70 = v44;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v71;
        v72 = v96;
        *v96 = v71;
        _os_log_impl(&dword_18B7AC000, v58, v59, "Failed to migrate snapshot at %s: %@", v60, 0x16u);
        sub_18B988BAC(v72, &qword_1EA9DA790);
        MEMORY[0x18CFFEEE0](v72, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v73 = v61;
        v31 = v102;
        MEMORY[0x18CFFEEE0](v73, -1, -1);
        v74 = v60;
        v8 = v105;
        MEMORY[0x18CFFEEE0](v74, -1, -1);

        v68(v31, v8);
      }

      else
      {

        v75 = v101;
        v101(v46, v8);
        v75(v31, v8);
      }

      v7 = v97;
      goto LABEL_25;
    }

LABEL_27:
  }

  else
  {
    v78 = v110[0];
    v79 = sub_18BC1E898();

    swift_willThrow();
    if (qword_1EA9D2298 != -1)
    {
      swift_once();
    }

    v80 = sub_18BC1F2C8();
    __swift_project_value_buffer(v80, qword_1EA9F7E80);
    v81 = v79;
    v82 = sub_18BC1F2A8();
    v83 = sub_18BC21238();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = v79;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_18B7AC000, v82, v83, "Failed to migrate legacy snapshots: %@", v84, 0xCu);
      sub_18B988BAC(v85, &qword_1EA9DA790);
      MEMORY[0x18CFFEEE0](v85, -1, -1);
      MEMORY[0x18CFFEEE0](v84, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18BBB3A68()
{
  result = sub_18BC21398();
  if (!v0)
  {
    return sub_18BC21398();
  }

  return result;
}

uint64_t sub_18BBB3AE0(uint64_t a1, char *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v30 = sub_18BC208F8();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_18BC20928();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = sub_18BC1EC08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&a2[OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue];
  (*(v11 + 16))(v14, v24, v10, v13);
  (*(v7 + 16))(v9, v25, v6);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v7 + 32))(v17 + v16, v9, v6);
  aBlock[4] = sub_18BBB662C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_81;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v26;
  sub_18BC20908();
  v33 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  v21 = v28;
  v22 = v30;
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v20, v21, v18);
  _Block_release(v18);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v31);
}

uint64_t sub_18BBB3F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3E410;
  v1 = sub_18BC1EBA8();
  v2 = MEMORY[0x1E69C87B8];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_18BC21398();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  return sub_18BC20EF8();
}

uint64_t sub_18BBB4208(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_18BC1EC08();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_18BC1EBE8();
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_18BBB4300, 0, 0);
}

uint64_t sub_18BBB4300()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_18BBB43F8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000014, 0x800000018BC70C40, sub_18BBB6624, v3, v5);
}

uint64_t sub_18BBB43F8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_18BBB45C8;
  }

  else
  {

    v2 = sub_18BBB4514;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18BBB4514()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  (*(v4 + 8))(v1, v3);
  if (v2)
  {
    v5 = *(v0 + 48);
    v5[2](v5, 0);
    _Block_release(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18BBB45C8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 72);
  if (v1)
  {
    v6 = *(v0 + 48);
    v7 = sub_18BC1E888();

    (v6)[2](v6, v7);
    _Block_release(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_18BBB46B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 56);
    v5 = sub_18BC1E888();

    (v3)[2](v3, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_18BBB4774@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v61 - v4;
  v5 = _s8MetadataVMa();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - v14;
  v16 = sub_18BC1EC08();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 stringAtIndex_];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = result;
  sub_18BC20BD8();

  sub_18BC1EB98();

  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v70;
  (*(v17 + 32))(v70, v15, v16);
  v22 = sub_18BC1EB88();
  v23 = *(v22 - 8);
  v65 = *(v23 + 56);
  v66 = v22;
  v64 = v23 + 56;
  v65(v9, 1, 1);
  (*(v17 + 16))(&v9[v5[7]], v21, v16);
  v24 = v5[12];
  v63 = v17;
  (*(v17 + 56))(&v9[v24], 1, 1, v16);
  result = [a1 stringAtIndex_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v25 = result;
  sub_18BC20BD8();

  sub_18BC1EB98();

  sub_18B7FD070(v13, &v9[v24], &unk_1EA9D3AE0);
  v26 = [a1 stringAtIndex_];
  v62 = v16;
  if (v26)
  {
    v27 = v26;
    v28 = sub_18BC20BD8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = &v9[v5[5]];
  *v31 = v28;
  v31[1] = v30;
  v32 = [a1 objectAtIndex_];
  v33 = v63;
  if (v32 && (v34 = v32, objc_opt_self(), v35 = swift_dynamicCastObjCClass(), v34, v35))
  {
    v36 = 1;
    v37 = 0;
  }

  else
  {
    [a1 doubleAtIndex_];
    v36 = 0;
  }

  v38 = v5[9];
  v39 = &v9[v5[8]];
  v40 = v5[10];
  v41 = &v9[v5[11]];
  *v39 = v37;
  v39[8] = v36;
  v9[v38] = [a1 BOOLAtIndex_];
  [a1 doubleAtIndex_];
  *&v9[v40] = v42;
  [a1 doubleAtIndex_];
  v44 = v43;
  [a1 doubleAtIndex_];
  *v41 = v44;
  *(v41 + 1) = v45;
  v46 = [a1 objectAtIndex_];
  if (v46 && (v47 = v46, objc_opt_self(), v48 = swift_dynamicCastObjCClass(), v47, v48))
  {
    v49 = 1;
    v51 = v68;
    v50 = v69;
    v52 = v67;
  }

  else
  {
    [a1 doubleAtIndex_];
    v52 = v67;
    sub_18BC1EAD8();
    v49 = 0;
    v51 = v68;
    v50 = v69;
  }

  (v65)(v52, v49, 1, v66);
  v53 = &v9[v5[6]];
  sub_18B7FD070(v52, v9, &unk_1EA9DB1B0);
  [a1 doubleAtIndex_];
  v55 = v54;
  [a1 doubleAtIndex_];
  *v53 = 0;
  *(v53 + 1) = v55;
  *(v53 + 2) = 0;
  *(v53 + 3) = v56;
  sub_18BBB641C(v9, v51);
  v57 = objc_allocWithZone(SFTabSnapshotMetadata);
  v58 = &v57[OBJC_IVAR___SFTabSnapshotMetadata__wrapped];
  v58[3] = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v58);
  sub_18BBB641C(v51, boxed_opaque_existential_0Tm);
  v71.receiver = v57;
  v71.super_class = SFTabSnapshotMetadata;
  v60 = objc_msgSendSuper2(&v71, sel_init);
  sub_18B7B1998(v51, _s8MetadataVMa);
  (*(v33 + 8))(v70, v62);
  *v50 = v60;
  return sub_18B7B1998(v9, _s8MetadataVMa);
}

uint64_t sub_18BBB4DCC()
{
  v1 = *(v0 + 32);

  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 56);
    v4 = sub_18BC1E888();

    (v2)[2](v2, 0, v4);
    _Block_release(v2);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18BBB4E8C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = _s8MetadataVMa();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BBB4F20, 0, 0);
}

uint64_t sub_18BBB4F20()
{
  v1 = [*(v0 + 72) fileName];
  if (v1)
  {
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = v1;
    v6 = sub_18BC20BD8();
    v8 = v7;

    *(v0 + 104) = v8;
    v9 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
    swift_beginAccess();
    sub_18B7B193C(v4 + v9, v0 + 16);
    swift_dynamicCast();
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    v10[2] = v3;
    v10[3] = v2;
    v10[4] = v6;
    v10[5] = v8;
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_18BBB5118;
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000010, 0x800000018BC70BA0, sub_18BBB6410, v10, v12);
  }

  else
  {
    sub_18BBB63BC();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_18BBB5118()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_18BBB52C0;
  }

  else
  {

    v2 = sub_18BBB523C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18BBB523C()
{
  sub_18B7B1998(*(v0 + 96), _s8MetadataVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBB52C0()
{
  v1 = *(v0 + 96);

  sub_18B7B1998(v1, _s8MetadataVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BBB5354(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v30 = a3;
  v37 = sub_18BC208F8();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_18BC20928();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = _s8MetadataVMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a2[OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue];
  sub_18BBB641C(v30, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_18B7B19F8(v16, v20 + v17, _s8MetadataVMa);
  v21 = (v20 + v18);
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  (*(v10 + 32))(v20 + v19, v12, v9);
  aBlock[4] = sub_18BBB6480;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_60;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  sub_18BC1E3F8();
  v25 = v31;
  sub_18BC20908();
  v40 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  v26 = v35;
  v27 = v37;
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v25, v26, v23);
  _Block_release(v23);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v38);
}

uint64_t sub_18BBB57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v53 = a3;
  v54 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v52 - v10;
  v58 = &unk_1EFF1AE90;
  sub_18B7B661C(&unk_1EFF1AF40);

  v58 = sub_18BC20CA8();
  v59 = v12;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](63, 0xE100000000000000);

  v14 = v58;
  v13 = v59;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_18BC21AD8();

  v58 = 0xD000000000000022;
  v59 = 0x800000018BC70BC0;
  v57 = &unk_1EFF1AE90;
  sub_18B7B661C(&unk_1EFF1AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
  sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
  v15 = sub_18BC20AB8();
  v17 = v16;

  MEMORY[0x18CFFC150](v15, v17);

  MEMORY[0x18CFFC150](0x5345554C41562029, 0xEA00000000002820);
  MEMORY[0x18CFFC150](v14, v13);

  MEMORY[0x18CFFC150](41, 0xE100000000000000);
  v52[2] = v58;
  v52[3] = v59;
  v52[1] = *(a1 + OBJC_IVAR___SFTabSnapshotMetadataStore_database);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18BC52900;
  v19 = _s8MetadataVMa();
  v20 = sub_18BC1EBA8();
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69C87B8];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = v22;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23;
  sub_18B7CA054(a2 + v19[12], v11, &unk_1EA9D3AE0);
  v24 = sub_18BC1EC08();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_18B988BAC(v11, &unk_1EA9D3AE0);
    v26 = (v18 + 72);
    *(v18 + 96) = v21;
    *(v18 + 104) = v22;
  }

  else
  {
    v27 = sub_18BC1EBA8();
    v29 = v28;
    (*(v25 + 8))(v11, v24);
    v26 = (v18 + 72);
    *(v18 + 96) = v21;
    *(v18 + 104) = v22;
    if (v29)
    {
      *v26 = v27;
      v30 = v55;
      goto LABEL_6;
    }
  }

  v30 = v55;
  *v26 = 0;
  v29 = 0xE000000000000000;
LABEL_6:
  *(v18 + 80) = v29;
  *(v18 + 136) = v21;
  *(v18 + 144) = v22;
  v31 = v54;
  *(v18 + 112) = v53;
  *(v18 + 120) = v31;
  v32 = a2 + v19[8];
  v33 = MEMORY[0x1E69E7DE0];
  v34 = MEMORY[0x1E69C87B0];
  if (*(v32 + 8))
  {
    v35 = 0;
    v36 = 0;
    *(v18 + 160) = 0;
    *(v18 + 168) = 0;
    v37 = 0;
  }

  else
  {
    v37 = *v32;
    v36 = MEMORY[0x1E69C87B0];
    v35 = MEMORY[0x1E69E7DE0];
  }

  *(v18 + 152) = v37;
  *(v18 + 176) = v35;
  *(v18 + 184) = v36;
  v38 = *(a2 + v19[9]);
  v39 = MEMORY[0x1E69C87C0];
  *(v18 + 216) = MEMORY[0x1E69E6370];
  *(v18 + 224) = v39;
  *(v18 + 192) = v38;
  v40 = *(a2 + v19[10]);
  *(v18 + 256) = v33;
  *(v18 + 264) = v34;
  *(v18 + 232) = v40;
  v41 = (a2 + v19[11]);
  v42 = v41[1];
  *(v18 + 272) = *v41;
  *(v18 + 296) = v33;
  *(v18 + 304) = v34;
  *(v18 + 336) = v33;
  *(v18 + 344) = v34;
  *(v18 + 312) = v42;
  sub_18B7CA054(a2, v30, &unk_1EA9DB1B0);
  v43 = sub_18BC1EB88();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v30, 1, v43);
  sub_18BC1E3F8();
  if (v45 == 1)
  {
    sub_18B988BAC(v30, &unk_1EA9DB1B0);
    *(v18 + 352) = 0u;
    *(v18 + 368) = 0u;
    *(v18 + 384) = 0;
  }

  else
  {
    sub_18BC1EAE8();
    v46 = MEMORY[0x1E69C87C8];
    *(v18 + 376) = MEMORY[0x1E69E63B0];
    *(v18 + 384) = v46;
    *(v18 + 352) = v47;
    (*(v44 + 8))(v30, v43);
  }

  v48 = a2 + v19[6];
  v49 = *(v48 + 8);
  *(v18 + 416) = v33;
  *(v18 + 424) = v34;
  *(v18 + 392) = v49;
  v50 = *(v48 + 24);
  *(v18 + 456) = v33;
  *(v18 + 464) = v34;
  *(v18 + 432) = v50;
  sub_18BC21398();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  return sub_18BC20EF8();
}

uint64_t sub_18BBB5F80(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18BBB6044;

  return sub_18BBB4E8C(v6);
}

uint64_t sub_18BBB6044()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v3)
    {
      v7 = *(v2 + 32);
      v8 = sub_18BC1E888();

      (v7)[2](v7, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v9 = *(v2 + 32);
    v9[2](v9, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

void __swiftcall SFTabSnapshotMetadataStore.init()(SFTabSnapshotMetadataStore *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_18BBB6308()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18BBB5F80(v2, v3, v4);
}

unint64_t sub_18BBB63BC()
{
  result = qword_1EA9DB198;
  if (!qword_1EA9DB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB198);
  }

  return result;
}

uint64_t sub_18BBB641C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBB6480()
{
  v1 = *(_s8MetadataVMa() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_18BBB57F0(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_18BBB6570()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18BBB4208(v2, v3, v4);
}

uint64_t sub_18BBB662C()
{
  sub_18BC1EC08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);

  return sub_18BBB3F6C();
}

uint64_t sub_18BBB6764()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8440);
  __swift_project_value_buffer(v6, qword_1EA9F8440);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8E8();
}

uint64_t sub_18BBB696C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2510 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E8D8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F8440);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_18BBB6A14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBB72F8();
  *a1 = result;
  return result;
}

uint64_t SFSiriLinkCoordinator.webSearchInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC52A30;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809450();
  return sub_18BC1F028();
}

uint64_t sub_18BBB6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_18BC20F28();
  v3[10] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBB6BA4, v5, v4);
}

uint64_t sub_18BBB6BA4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Search", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 56);

    sub_18BC1E0A8();
    v9 = sub_18BC20B98();

    [v3 performSearchUsingQuery_];

    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v8[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v8);
    sub_18BC1DF98();
    swift_unknownObjectRelease();
    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_18BBB6E38(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BBB6B08(a1, a2, v2);
}

uint64_t sub_18BBB6EE4(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BBB6FE8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BBB6EE4(a1, a2, v6);
}

uint64_t sub_18BBB712C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BBB6EE4(a1, a2, v6);
}

uint64_t sub_18BBB71F4()
{
  sub_18BC1E0A8();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18BBB72F8()
{
  v0 = sub_18BC1E488();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = &v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22 = sub_18BC1E8D8();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB220);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v24;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v22);
  v18 = sub_18BC20AF8();
  v30 = 0;
  v31 = 0;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v19 = sub_18BC1DF68();
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A4F8], v29);
  return sub_18BC1E168();
}

char *sub_18BBB78DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB348);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = (v0 + qword_1EA9DB228);
  *v9 = CGRectMake;
  v9[1] = 0;
  v10 = (v0 + qword_1EA9DB230);
  *v10 = CGRectMake;
  v10[1] = 0;
  *(v0 + qword_1EA9DB238) = 0;
  v11 = qword_1EA9DB240;
  type metadata accessor for ReflectionEditor.Model(0);
  v12 = swift_allocObject();
  sub_18BBB8588();
  *(v1 + v11) = v12;
  *(v1 + qword_1EA9DB248) = 0;
  sub_18BBBA534();
  sub_18BC1E1A8();
  v25 = sub_18BC203D8();
  v26 = v13;
  v14 = sub_18BC20558();
  swift_beginAccess();
  v15 = v14;
  sub_18BC1E1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB338);
  sub_18BC20308();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B7B0B08(&qword_1EA9DB358, &qword_1EA9DB350);
  v16 = sub_18BC20348();

  (*(v6 + 8))(v8, v5);
  *&v15[qword_1EA9DB238] = v16;

  swift_beginAccess();
  sub_18BC1E1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB340);
  v17 = v22;
  sub_18BC20308();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B7B0B08(&qword_1EA9DB360, &qword_1EA9DB348);
  v18 = v23;
  v19 = sub_18BC20348();

  (*(v24 + 8))(v17, v18);
  *&v15[qword_1EA9DB248] = v19;

  v20 = sub_18BC20B98();
  [v15 setTitle_];

  return v15;
}

uint64_t sub_18BBB7D44(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1EA9DB228);
    v4 = result;
    sub_18BC1E1A8();

    v3(v1);
  }

  return result;
}

uint64_t sub_18BBB7DCC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v1;
  v7 = *(a1 + 64);
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_1EA9DB230);
    v5 = result;
    sub_18BC1E1A8();

    v4(v6);
  }

  return result;
}

void sub_18BBB7E68(uint64_t a1)
{
  v2 = (a1 + qword_1EA9DB228);
  *v2 = CGRectMake;
  v2[1] = 0;
  v3 = (a1 + qword_1EA9DB230);
  *v3 = CGRectMake;
  v3[1] = 0;
  *(a1 + qword_1EA9DB238) = 0;
  v4 = qword_1EA9DB240;
  type metadata accessor for ReflectionEditor.Model(0);
  v5 = swift_allocObject();
  sub_18BBB8588();
  *(a1 + v4) = v5;
  *(a1 + qword_1EA9DB248) = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BBB7F50()
{
}

id sub_18BBB7FC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFReflectionEditorViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BBB8000()
{
}

uint64_t sub_18BBB8084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  return v1;
}

uint64_t sub_18BBB8160()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  return v1;
}

__n128 sub_18BBB81D4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_18BBB8274()
{
  v1 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__groupName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB330);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__isGroupingEnabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__reflection;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB340);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_18BBB83DC()
{
  sub_18BBB8510(319, &qword_1EA9DB288);
  if (v0 <= 0x3F)
  {
    sub_18BBB8510(319, &qword_1EA9DB290);
    if (v1 <= 0x3F)
    {
      sub_18BBB8510(319, &qword_1EA9DB298);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_18BBB8510(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18BC20338();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_18BBB8588()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB340);
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB338);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB330);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__groupName;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_18BC202F8();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__isGroupingEnabled;
  LOBYTE(v24) = 1;
  sub_18BC202F8();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtCV12MobileSafari16ReflectionEditor5Model__reflection;
  v15 = 6.0 - _SFOnePixel();
  v16 = _SFOnePixel();
  v24 = 0x4000000000000000;
  v25 = 0x4028000000000000;
  v26 = 0;
  __asm { FMOV            V1.2D, #0.5 }

  v27 = _Q1;
  v28 = 12;
  v29 = 0x4008000000000000;
  v30 = v15;
  v31 = v16 + 2.0;
  sub_18BC202F8();
  (*(v1 + 32))(v0 + v14, v3, v23);
  return v0;
}

uint64_t sub_18BBB885C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReflectionEditor.Model(0);
  result = sub_18BC202E8();
  *a1 = result;
  return result;
}

uint64_t sub_18BBB889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2C0);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2C8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2D0);
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v39 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2D8);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - v14;
  sub_18BC20508();
  v59 = a1;
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2E0);
  v39 = MEMORY[0x1E6981F48];
  sub_18B7B0B08(&qword_1EA9DB2E8, &qword_1EA9DB2E0);
  sub_18BC207D8();
  v57 = a1;
  v58 = a2;
  sub_18BC20508();
  v63 = sub_18BC20658();
  v64 = v15;
  v65 = v16 & 1;
  v66 = v17;
  v18 = v40;
  sub_18BBB9B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2F0);
  sub_18B7B0B08(&qword_1EA9DB2F8, &qword_1EA9DB2F0);
  v61 = MEMORY[0x1E6981148];
  v62 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v19 = v44;
  sub_18BC207E8();
  v55 = a1;
  v56 = a2;
  sub_18BC20508();
  v63 = sub_18BC20658();
  v64 = v20;
  v65 = v21 & 1;
  v66 = v22;
  sub_18BBB9ED8(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB300);
  sub_18B7B0B08(&qword_1EA9DB308, &qword_1EA9DB300);
  v23 = v50;
  sub_18BC207E8();
  v24 = *(v49 + 16);
  v25 = v45;
  v26 = v47;
  v24(v45, v46, v47);
  v41 = *(v52 + 16);
  v27 = v48;
  v41(v48, v19, v51);
  v28 = *(v53 + 16);
  v29 = v42;
  v28(v42, v23, v54);
  v30 = v43;
  v24(v43, v25, v26);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB310);
  v32 = v51;
  v41(&v30[*(v31 + 48)], v27, v51);
  v33 = v54;
  v28(&v30[*(v31 + 64)], v29, v54);
  v34 = *(v53 + 8);
  v34(v50, v33);
  v35 = *(v52 + 8);
  v35(v44, v32);
  v36 = *(v49 + 8);
  v37 = v47;
  v36(v46, v47);
  v34(v29, v33);
  v35(v48, v32);
  return (v36)(v45, v37);
}

uint64_t sub_18BBB9050@<X0>(_OWORD *a1@<X8>)
{
  v2 = _SFOnePixel();
  type metadata accessor for ReflectionEditor.Model(0);
  sub_18BBBA534();
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v42[2] = v58;
  v42[3] = v59;
  v42[4] = v60;
  v43 = v61;
  v42[0] = v56;
  v42[1] = v57;
  swift_getKeyPath();
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v50 = v56;
  v51 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB328);
  sub_18BC207A8();

  sub_18B988BAC(v42, &qword_1EA9DB328);
  v16 = *(&v44 + 1);
  v17 = v44;
  v3 = v45;
  v4 = _SFOnePixel();
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v46 = v58;
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v44 = v56;
  v45 = v57;
  swift_getKeyPath();
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v50 = v44;
  v51 = v45;
  sub_18BC207A8();

  sub_18B988BAC(&v44, &qword_1EA9DB328);
  v14 = *(&v36 + 1);
  v15 = v36;
  v5 = v37;
  v6 = _SFOnePixel();
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v52 = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v50 = v56;
  v51 = v57;
  swift_getKeyPath();
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v36 = v50;
  v37 = v51;
  sub_18BC207A8();

  sub_18B988BAC(&v50, &qword_1EA9DB328);
  v7 = v27;
  v8 = v28;
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v58 = v38;
  v59 = v39;
  v60 = v40;
  v61 = v41;
  v56 = v36;
  v57 = v37;
  swift_getKeyPath();
  v34 = v60;
  v35 = v61;
  sub_18BC207A8();

  sub_18B988BAC(&v56, &qword_1EA9DB328);
  v9 = v82;
  v10 = v83;
  v62 = xmmword_18BC44BC0;
  *&v63 = v2;
  *(&v63 + 1) = 0xD000000000000014;
  *&v64 = 0x800000018BC71290;
  *(&v64 + 1) = v17;
  *&v65 = v16;
  *(&v65 + 1) = v3;
  v66 = xmmword_18BC52B90;
  *&v67 = v4;
  *(&v67 + 1) = 0xD000000000000010;
  *&v68 = 0x800000018BC712B0;
  *(&v68 + 1) = v15;
  *&v69 = v14;
  *(&v69 + 1) = v5;
  v19 = v68;
  v20 = v69;
  v18 = v67;
  v70 = xmmword_18BC44BC0;
  *&v71 = v6;
  *(&v71 + 1) = 0x4720656372756F53;
  *v72 = 0xEA00000000007061;
  *&v72[8] = v27;
  *&v72[24] = v28;
  v22 = *v72;
  v23 = *&v72[16];
  v21 = v71;
  v73 = xmmword_18BC44BC0;
  *&v74 = 0x3FF0000000000000;
  *(&v74 + 1) = 0x6461522072756C42;
  *v75 = 0xEB00000000737569;
  *&v75[8] = v82;
  *&v75[24] = v83;
  v25 = *v75;
  v26 = *&v75[16];
  v24 = v74;
  v11 = v63;
  v12 = v65;
  a1[2] = v64;
  a1[3] = v12;
  *a1 = xmmword_18BC44BC0;
  a1[1] = v11;
  a1[6] = v19;
  a1[7] = v20;
  a1[4] = xmmword_18BC52B90;
  a1[5] = v18;
  a1[10] = v22;
  a1[11] = v23;
  a1[8] = xmmword_18BC44BC0;
  a1[9] = v21;
  a1[14] = v25;
  a1[15] = v26;
  a1[12] = xmmword_18BC44BC0;
  a1[13] = v24;
  v76 = xmmword_18BC44BC0;
  v77 = 0x3FF0000000000000;
  v78 = 0x6461522072756C42;
  v79 = 0xEB00000000737569;
  v80 = v9;
  v81 = v10;
  sub_18BBBA58C(&v62, &v36);
  sub_18BBBA58C(&v66, &v36);
  sub_18BBBA58C(&v70, &v36);
  sub_18BBBA58C(&v73, &v36);
  sub_18BBBA5E8(&v76);
  v82 = xmmword_18BC44BC0;
  v83 = v6;
  v84 = 0x4720656372756F53;
  v85 = 0xEA00000000007061;
  v86 = v7;
  v87 = v8;
  sub_18BBBA5E8(&v82);
  v27 = xmmword_18BC52B90;
  v28 = v4;
  v29 = 0xD000000000000010;
  v30 = 0x800000018BC712B0;
  v31 = v15;
  v32 = v14;
  v33 = v5;
  sub_18BBBA5E8(&v27);
  v36 = xmmword_18BC44BC0;
  *&v37 = v2;
  *(&v37 + 1) = 0xD000000000000014;
  *&v38 = 0x800000018BC71290;
  *(&v38 + 1) = v17;
  *&v39 = v16;
  *(&v39 + 1) = v3;
  return sub_18BBBA5E8(&v36);
}

__n128 sub_18BBB96C4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_18BBB9768()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC1E1A8();
  return sub_18BC20328();
}

uint64_t sub_18BBB97EC@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ReflectionEditor.Model(0);
  sub_18BBBA534();
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26 = v32;
  v25[0] = v27;
  v25[1] = v28;
  swift_getKeyPath();
  *v22 = v29;
  *&v22[16] = v30;
  v23 = v31;
  v24 = v32;
  v20 = v27;
  v21 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB328);
  sub_18BC207A8();

  sub_18B988BAC(v25, &qword_1EA9DB328);
  v2 = v12;
  v3 = v13;
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  v29 = *v22;
  v30 = *&v22[16];
  v31 = v23;
  v32 = v24;
  v27 = v20;
  v28 = v21;
  swift_getKeyPath();
  v18 = v31;
  v19 = v32;
  sub_18BC207A8();

  sub_18B988BAC(&v27, &qword_1EA9DB328);
  v4 = v36;
  v5 = v37;
  v33 = xmmword_18BC3DD80;
  *&v34 = 0x3F847AE147AE147BLL;
  *(&v34 + 1) = 0x737569646152;
  *v35 = 0xE600000000000000;
  *&v35[8] = v12;
  *&v35[24] = v13;
  v36 = xmmword_18BC3DD80;
  *&v37 = 0x3F847AE147AE147BLL;
  *(&v37 + 1) = 0x7465736E49;
  *v38 = 0xE500000000000000;
  *&v38[8] = v4;
  *&v38[24] = v5;
  v10 = *v38;
  v11 = *&v38[16];
  v9 = v37;
  v6 = v34;
  v7 = *&v35[16];
  a1[2] = *v35;
  a1[3] = v7;
  *a1 = xmmword_18BC3DD80;
  a1[1] = v6;
  a1[6] = v10;
  a1[7] = v11;
  a1[4] = xmmword_18BC3DD80;
  a1[5] = v9;
  v12 = xmmword_18BC3DD80;
  v13 = 0x3F847AE147AE147BLL;
  v14 = 0x7465736E49;
  v15 = 0xE500000000000000;
  v16 = v4;
  v17 = v5;
  sub_18BBBA58C(&v33, &v20);
  sub_18BBBA58C(&v36, &v20);
  sub_18BBBA5E8(&v12);
  v20 = xmmword_18BC3DD80;
  *&v21 = 0x3F847AE147AE147BLL;
  *(&v21 + 1) = 0x737569646152;
  *v22 = 0xE600000000000000;
  *&v22[8] = v2;
  *&v22[24] = v3;
  return sub_18BBBA5E8(&v20);
}
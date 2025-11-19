unint64_t sub_1E5AAADAC()
{
  result = qword_1ED027338;
  if (!qword_1ED027338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027330, &qword_1E5AD5060);
    sub_1E5A8CEF0(&qword_1ED027340, &qword_1ED027348, &qword_1E5AD5068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027338);
  }

  return result;
}

uint64_t sub_1E5AAAE64()
{
  v0 = sub_1E5ACF038();
  __swift_allocate_value_buffer(v0, qword_1EE300080);
  __swift_project_value_buffer(v0, qword_1EE300080);
  return sub_1E5ACF028();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t TabBarFeatureEnvironment.init(itemActionHandler:resolveUpNextCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5AAAF44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E5AAAF98(char a1)
{
  v2 = v1;
  v4 = [v2 selectedViewController];
  if (v4)
  {
    v17 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 topViewController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 contentScrollViewForEdge:4];
        if (v8)
        {
          v9 = v8;
          [v8 adjustedContentInset];
          [v9 setContentOffset:a1 & 1 animated:0.0, -v10];
          v11 = v17;
          v17 = v9;
        }

        else
        {
          if (qword_1EE2FCA80 != -1)
          {
            swift_once();
          }

          v12 = sub_1E5ACF038();
          __swift_project_value_buffer(v12, qword_1EE300080);
          v11 = v7;
          v13 = sub_1E5ACF018();
          v14 = sub_1E5ACFF28();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            *v15 = 138412290;
            *(v15 + 4) = v11;
            *v16 = v7;
            v7 = v11;
            _os_log_impl(&dword_1E5A79000, v13, v14, "[TabBarController] Cannot find scroll view in %@", v15, 0xCu);
            sub_1E5AAB514(v16);
            MEMORY[0x1E6935190](v16, -1, -1);
            MEMORY[0x1E6935190](v15, -1, -1);
            v11 = v13;
          }

          else
          {
            v7 = v13;
          }
        }
      }
    }
  }
}

void sub_1E5AAB260()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  if (!v2)
  {
    v2 = v0;
  }

  v3 = [v2 navigationItem];
  v4 = [v1 selectedViewController];
  if (v4 && (v5 = v4, v6 = [v4 navigationItem], v5, v7 = objc_msgSend(v6, sel_title), v6, v7))
  {
    sub_1E5ACFBD8();

    v9 = sub_1E5ACFBA8();

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  [v3 setTitle_];
}

uint64_t sub_1E5AAB514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027350, &qword_1E5AD50F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5AAB57C(void *a1)
{
  v3 = [a1 delegate];
  if (!v3 || (v4 = v3, swift_unknownObjectRelease(), v4 != v1))
  {
    v5 = [a1 delegate];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return [a1 setDelegate_];
}

void *sub_1E5AAB620(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar + 8];
  v4 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  swift_getObjectType();
  sub_1E5ACEFB8();
  if ((v5 & 1) == 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView];
    *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView] = a1;

    v7 = a1;
  }

  [a1 contentSize];
  v9 = v8;
  [a1 bounds];
  if (CGRectGetHeight(v12) >= v9)
  {
    sub_1E5AABFF0();

    return [v1 setNeedsLayout];
  }

  else
  {

    return sub_1E5AAC1A4(a1);
  }
}

uint64_t sub_1E5AAB70C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  [v3 height];
  v8 = v7;
  [v3 heightExtension];
  v10 = v8 + v9;
  v11 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
  swift_beginAccess();
  v12 = *&v4[v11];
  if (*(v12 + 16) && (v13 = sub_1E5AAD57C(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = a3 - v15;
    [v4 height];
    if (v17 <= v10 - v16)
    {
      v17 = v10 - v16;
    }

    if (v10 >= v17)
    {
      v10 = v17;
    }
  }

  else
  {
    swift_endAccess();
  }

  return *&v10;
}

uint64_t sub_1E5AAB7F8()
{
  v1 = sub_1E5ACEF78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar + 8);
  v10 = *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar);
  swift_getObjectType();
  result = sub_1E5ACEFC8();
  v12 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v13 = 0;
    v26 = (v2 + 32);
    v27 = v2 + 16;
    v22 = (v2 + 8);
    v14 = MEMORY[0x1E69E7CC0];
    v24 = v6;
    v25 = v1;
    v23 = result;
    while (v13 < *(v12 + 16))
    {
      v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v16 = *(v2 + 72);
      (*(v2 + 16))(v8, v12 + v15 + v16 * v13, v1);
      if (sub_1E5ACEF68())
      {
        result = (*v22)(v8, v1);
      }

      else
      {
        v17 = *v26;
        (*v26)(v6, v8, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E5AAD974(0, *(v14 + 16) + 1, 1);
          v14 = v29;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E5AAD974(v19 > 1, v20 + 1, 1);
          v14 = v29;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + v15 + v20 * v16;
        v6 = v24;
        v1 = v25;
        result = (v17)(v21, v24, v25);
        v12 = v23;
      }

      if (v28 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v14;
  }

  return result;
}

id sub_1E5AABA94()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v54, sel_layoutSubviews);
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v2 setClipsToBounds_];
  }

  [v1 frame];
  v5 = v4;
  [v1 directionalLayoutMargins];
  v7 = v5 - v6;
  [v1 directionalLayoutMargins];
  Width = v7 - v8;
  v10 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v1 frame];
  [v10 sizeThatFits_];
  [v1 directionalLayoutMargins];
  v14 = v13;
  [v10 frame];
  [v10 setFrame_];
  if (_UISolariumEnabled())
  {
    [v1 bounds];
    v16 = v15;
    if (!_UISolariumEnabled())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v1 directionalLayoutMargins];
  v16 = v17;
  if (_UISolariumEnabled())
  {
LABEL_7:
    [v1 bounds];
    Width = CGRectGetWidth(v55);
  }

LABEL_8:
  v18 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  [v18 frame];
  v20 = v19;
  [v18 frame];
  [v18 setFrame_];
  v21 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing;
  v22 = &off_1E8788000;
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing] == 1 && (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta + 8] & 1) == 0)
  {
    v23 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta];
    [v10 _lastLineBaseline];
    [v1 bounds];
    v24 = &v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
    v25 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 56];
    v27 = v26 + v25 + *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 48] - *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 40];
    [v10 bounds];
    CGRectGetHeight(v57);
    v28 = [v1 traitCollection];
    sub_1E5ACEEF8();

    [v10 center];
    [v10 setCenter_];
    [v10 frame];
    v29 = CGRectGetMaxY(v58) - v24[4];
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    v30 = v29 / v25;
    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    if (v30 > 1.0)
    {
      v30 = 1.0;
    }

    [v10 setAlpha_];
    v31 = *v24;
    v22 = &off_1E8788000;
    [v10 frame];
    CGRectGetMaxY(v59);
    [v18 frame];
    [v18 setFrame_];
    v1[v21] = 0;
  }

  else
  {
    sub_1E5AABFF0();
  }

  [v18 frame];
  Height = CGRectGetHeight(v60);
  v33 = &v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  v34 = Height + *v33 + v33[2];
  [v10 byte_1E87884FB];
  [v1 bounds];
  v36 = v35 + v33[7];
  v38 = *(v33 + 5);
  v37 = *(v33 + 6);
  v39 = [v1 v22[237]];
  sub_1E5ACEEF8();
  v41 = v40;

  [v10 frame];
  v42 = v41 + CGRectGetHeight(v61);
  [v1 height];
  v44 = v43;
  [v1 heightExtension];
  if (v44 + v45 != v34 + v42)
  {
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v46 = sub_1E5ACF038();
    __swift_project_value_buffer(v46, qword_1EE300080);
    v47 = sub_1E5ACF018();
    v48 = sub_1E5ACFF28();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1E5A79000, v47, v48, "[FloatingTitleView] Height changed. Clearing initial offsets", v49, 2u);
      MEMORY[0x1E6935190](v49, -1, -1);
    }

    v50 = sub_1E5A7C3E8(MEMORY[0x1E69E7CC0]);
    v51 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
    swift_beginAccess();
    v52 = *&v1[v51];
    *&v1[v51] = v50;
  }

  [v1 setHeight_];
  return [v1 setHeightExtension_];
}

id sub_1E5AABFF0()
{
  v1 = *&v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v0 bounds];
  [v1 sizeThatFits_];
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  [v0 frame];
  MaxY = CGRectGetMaxY(v16);
  [v6 intrinsicContentSize];
  v9 = &v0[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  v10 = MaxY - v8 - v9[2];
  [v6 frame];
  [v6 setFrame_];
  [v6 frame];
  v11 = CGRectGetMinY(v17) - *v9 - v5;
  [v1 frame];
  [v1 setFrame_];
  [v1 frame];
  v12 = CGRectGetMaxY(v18) - v9[4];
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12 / v9[7];
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  return [v1 setAlpha_];
}

void *sub_1E5AAC1A4(id a1)
{
  v2 = v1;
  v4 = sub_1E5ACEF78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v84 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v84 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v84 - v16;
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen])
  {
    return result;
  }

  v98 = v15;
  v18 = result;
  v19 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  v20 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar + 8];
  ObjectType = swift_getObjectType();
  v21 = sub_1E5ACEFB8();
  if (v22)
  {
    sub_1E5AABFF0();
LABEL_5:

    return [v2 setNeedsLayout];
  }

  v92 = v21;
  v23 = sub_1E5AAB7F8();
  if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating] == 1)
  {

    if (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset + 8])
    {
      return result;
    }

    v24 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset];
    v25 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint + 8];
    [a1 contentOffset];
    v26 = &v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
    v27 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
    v28 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
    [*&v2[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel] frame];
    CGRectGetMaxY(v102);
    [v19 frame];
    [v19 setFrame_];
    [v19 frame];
    CGRectGetMinY(v103);
    [v28 frame];
    CGRectGetHeight(v104);
    [v28 frame];
    [v28 setFrame_];
    [v28 frame];
    v29 = CGRectGetMaxY(v105) - v26[4];
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    v30 = v29 / v26[7];
    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    if (v30 > 1.0)
    {
      v30 = 1.0;
    }

    [v28 setAlpha_];
    goto LABEL_5;
  }

  v87 = v20;
  v88 = v19;
  v86 = v10;
  v93 = v18;
  v31 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView;
  v32 = *&v1[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView];
  v33 = &off_1E8788000;
  if (v32)
  {
    v34 = v23;
    v35 = v32;
    v36 = [a1 window];
    if (v36 && (v36, v35 == a1))
    {
      v37 = *&v2[v31];
      *&v2[v31] = 0;

      [v2 height];
      v39 = v38;
      [v2 heightExtension];
      v41 = v39 + v40;
      [v2 frame];
      v42 = v41 - CGRectGetHeight(v106);
      if (v42 > 0.0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0.0;
      }

      result = [a1 adjustedContentInset];
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v92 >= *(v34 + 16))
      {
LABEL_59:
        __break(1u);
        return result;
      }

      v45 = a1;
      v46 = -(v44 + v43);
      v47 = v93;
      (*(v5 + 16))(v17, v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v92, v93);

      v48 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
      swift_beginAccess();
      v49 = *&v2[v48];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *&v2[v48];
      *&v2[v48] = 0x8000000000000000;
      sub_1E5AADF34(v17, isUniquelyReferenced_nonNull_native, v46);
      (*(v5 + 8))(v17, v47);
      *&v2[v48] = v99;
      swift_endAccess();

      a1 = v45;
    }

    else
    {
    }

    v33 = &off_1E8788000;
  }

  else
  {
  }

  [v2 height];
  v52 = v51;
  [v2 v33[266]];
  v54 = v52 + v53;
  [v2 bounds];
  if (v54 > CGRectGetHeight(v107) || (v55 = [a1 window]) == 0 || (v55, objc_msgSend(a1, sel_adjustedContentInset), v57 = -v56, objc_msgSend(a1, sel_contentOffset), v58 >= v57))
  {
    sub_1E5AABFF0();
    return [v2 setNeedsLayout];
  }

  v85 = a1;
  result = sub_1E5ACEFC8();
  v59 = result;
  v96 = result[2];
  if (v96)
  {
    v60 = 0;
    v94 = (v5 + 32);
    v95 = v5 + 16;
    v89 = (v5 + 8);
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v93;
    v90 = result;
    v91 = v5;
    while (v60 < v59[2])
    {
      v63 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v64 = *(v5 + 72);
      (*(v5 + 16))(v13, v59 + v63 + v64 * v60, v62);
      if (sub_1E5ACEF68())
      {
        result = (*v89)(v13, v62);
      }

      else
      {
        v65 = *v94;
        (*v94)(v98, v13, v62);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v61;
        if ((v66 & 1) == 0)
        {
          sub_1E5AAD974(0, *(v61 + 16) + 1, 1);
          v61 = v100;
        }

        v68 = *(v61 + 16);
        v67 = *(v61 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1E5AAD974(v67 > 1, v68 + 1, 1);
          v61 = v100;
        }

        *(v61 + 16) = v68 + 1;
        v62 = v93;
        result = v65(v61 + v63 + v68 * v64, v98, v93);
        v59 = v90;
        v5 = v91;
      }

      if (v96 == ++v60)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v61 = MEMORY[0x1E69E7CC0];
  v62 = v93;
LABEL_46:

  if ((v92 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v69 = v85;
  if (v92 >= *(v61 + 16))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v70 = v86;
  (*(v5 + 16))(v86, v61 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v92, v62);

  v71 = sub_1E5ACEFC8();
  v72 = sub_1E5A8B168(v70, v71);
  v74 = v73;

  if (v74)
  {
    return (*(v5 + 8))(v70, v62);
  }

  v75 = &v2[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate];
  if (swift_unknownObjectWeakLoadStrong() && (v76 = *(v75 + 1), v77 = swift_getObjectType(), v78 = (*(v76 + 8))(v2, v72, v77, v76), swift_unknownObjectRelease(), (v78 & 1) != 0))
  {
    [v69 contentOffset];
    v80 = v79;
    v82 = v81;
    [v69 adjustedContentInset];
    sub_1E5AACA74(v80, v82, -v83);
  }

  else
  {
    sub_1E5AABFF0();
    [v2 setNeedsLayout];
  }

  return (*(v5 + 8))(v86, v62);
}

id sub_1E5AACA74(double a1, double a2, double a3)
{
  v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing] = 1;
  v4 = &v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta];
  *v4 = a2 - a3;
  *(v4 + 8) = 0;
  v5 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel];
  [v5 _lastLineBaseline];
  [v3 bounds];
  v6 = &v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  v7 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 56];
  v9 = v8 + v7 + *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 48] - *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout + 40];
  [v5 bounds];
  CGRectGetHeight(v17);
  v10 = [v3 traitCollection];
  sub_1E5ACEEF8();

  [v5 center];
  [v5 setCenter_];
  [v5 frame];
  v11 = CGRectGetMaxY(v18) - v6[4];
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = v11 / v7;
  if (v12 <= 0.0)
  {
    v12 = 0.0;
  }

  if (v12 > 1.0)
  {
    v12 = 1.0;
  }

  [v5 setAlpha_];
  v13 = *&v3[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  v14 = *v6;
  [v5 frame];
  CGRectGetMaxY(v19);
  [v13 frame];
  [v13 setFrame_];

  return [v3 setNeedsLayout];
}

uint64_t sub_1E5AACCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5AACD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5AACE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E5AACFE4(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v6 scrollViewDidEndDragging:a1 willDecelerate:a2 & 1];
    }

    swift_unknownObjectRelease();
  }

  if ((a2 & 1) == 0 && *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) == 1 && (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
    v7 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    v9 = a1;
    sub_1E5AAC1A4(v9);
  }
}

void sub_1E5AAD3A0(void *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v6 *a2];
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) == 1 && (*(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
    v7 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v2 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    v9 = a1;
    sub_1E5AAC1A4(v9);
  }
}

uint64_t sub_1E5AAD510(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AAD530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1E5AAD57C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E5ACEF78();
  sub_1E5AAE5D8(&unk_1EE2FDC68, 255, MEMORY[0x1E699DBE8]);
  v5 = sub_1E5ACFB38();

  return sub_1E5AAD6AC(a1, v5);
}

unint64_t sub_1E5AAD61C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E5ACFBD8();
  sub_1E5AD0378();
  sub_1E5ACFBF8();
  v4 = sub_1E5AD03C8();

  return sub_1E5AAD870(a1, v4);
}

unint64_t sub_1E5AAD6AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1E5ACEF78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1E5AAE5D8(&qword_1EE2FDC60, 255, MEMORY[0x1E699DBE8]);
      v16 = sub_1E5ACFB78();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1E5AAD870(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E5ACFBD8();
      v9 = v8;
      if (v7 == sub_1E5ACFBD8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E5AD0348();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

size_t sub_1E5AAD974(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5AAD994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E5AAD994(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027438, &qword_1E5AD51D0);
  v10 = *(sub_1E5ACEF78() - 8);
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
  v15 = *(sub_1E5ACEF78() - 8);
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

uint64_t sub_1E5AADB6C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1E5ACEF78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027430, &qword_1E5AD51C8);
  v43 = a2;
  result = sub_1E5AD0198();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_1E5AAE5D8(&unk_1EE2FDC68, 255, MEMORY[0x1E699DBE8]);
      result = sub_1E5ACFB38();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1E5AADF34(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1E5ACEF78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1E5AAD57C(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_1E5AAE190();
      goto LABEL_7;
    }

    sub_1E5AADB6C(result, a2 & 1);
    v22 = *v4;
    result = sub_1E5AAD57C(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_1E5AAE0D8(v15, v12, v21, a3);
    }
  }

  result = sub_1E5AD0358();
  __break(1u);
  return result;
}

uint64_t sub_1E5AAE0D8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_1E5ACEF78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

void *sub_1E5AAE190()
{
  v1 = v0;
  v30 = sub_1E5ACEF78();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027430, &qword_1E5AD51C8);
  v4 = *v0;
  v5 = sub_1E5AD0188();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1E5AAE404()
{
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout);
  *v1 = xmmword_1E5AD5100;
  v1[1] = xmmword_1E5AD5110;
  v1[2] = xmmword_1E5AD5120;
  v1[3] = xmmword_1E5AD5130;
  v2 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
  *(v0 + v6) = sub_1E5A7C3E8(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView) = 0;
  swift_unknownObjectWeakInit();
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5AAE570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027450, &qword_1E5AD51E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AAE5D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1E5AAE620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SignOutAnimationState.init(horizontalOffset:firstLineVerticalOffset:secondLineVerticalOffset:isSecondLineVisible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_1E5AAE664()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1E5AAE6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AAF128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AAE70C(uint64_t a1)
{
  v2 = sub_1E5AAEDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAE748(uint64_t a1)
{
  v2 = sub_1E5AAEDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutAnimationState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027460, &qword_1E5AD5200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAEDFC();
  sub_1E5AD03E8();
  v16 = v10;
  HIBYTE(v15) = 0;
  sub_1E5AAEE50();
  sub_1E5AD0308();
  if (!v2)
  {
    v16 = v9;
    HIBYTE(v15) = 1;
    sub_1E5AD0308();
    v16 = v11;
    HIBYTE(v15) = 2;
    sub_1E5AD0308();
    LOBYTE(v16) = 3;
    sub_1E5AD02E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SignOutAnimationState.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6934A80](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E6934A80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E6934A80](*&v6);
  return sub_1E5AD0398();
}

uint64_t SignOutAnimationState.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t SignOutAnimationState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027478, &qword_1E5AD5208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAEDFC();
  sub_1E5AD03D8();
  if (!v2)
  {
    HIBYTE(v16) = 0;
    sub_1E5AAEEA4();
    sub_1E5AD0288();
    v11 = v17;
    HIBYTE(v16) = 1;
    sub_1E5AD0288();
    v12 = v17;
    HIBYTE(v16) = 2;
    sub_1E5AD0288();
    v14 = v17;
    LOBYTE(v17) = 3;
    v15 = sub_1E5AD0268();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AAED00()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AAED60()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t _s14FitnessAppRoot21SignOutAnimationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E5AAEDFC()
{
  result = qword_1ED027468;
  if (!qword_1ED027468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027468);
  }

  return result;
}

unint64_t sub_1E5AAEE50()
{
  result = qword_1ED027470;
  if (!qword_1ED027470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027470);
  }

  return result;
}

unint64_t sub_1E5AAEEA4()
{
  result = qword_1ED027480;
  if (!qword_1ED027480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027480);
  }

  return result;
}

unint64_t sub_1E5AAEEFC()
{
  result = qword_1ED027488;
  if (!qword_1ED027488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027488);
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

uint64_t sub_1E5AAEF64(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E5AAEFB8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E5AAF024()
{
  result = qword_1ED027490;
  if (!qword_1ED027490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027490);
  }

  return result;
}

unint64_t sub_1E5AAF07C()
{
  result = qword_1ED027498;
  if (!qword_1ED027498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027498);
  }

  return result;
}

unint64_t sub_1E5AAF0D4()
{
  result = qword_1ED0274A0;
  if (!qword_1ED0274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274A0);
  }

  return result;
}

uint64_t sub_1E5AAF128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5AE0A90 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5AE0AB0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5AE0AD0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5AE0AF0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5AD0348();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5AAF2A4(uint64_t a1)
{
  v2 = sub_1E5AAF990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF2E0(uint64_t a1)
{
  v2 = sub_1E5AAF990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF31C()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1E5AAF384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AAFAB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AAF3AC(uint64_t a1)
{
  v2 = sub_1E5AAF894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF3E8(uint64_t a1)
{
  v2 = sub_1E5AAF894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF424(uint64_t a1)
{
  v2 = sub_1E5AAF93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF460(uint64_t a1)
{
  v2 = sub_1E5AAF93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF49C(uint64_t a1)
{
  v2 = sub_1E5AAF8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF4D8(uint64_t a1)
{
  v2 = sub_1E5AAF8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkConditions.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274A8, &qword_1E5AD5430);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274B0, &qword_1E5AD5438);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274B8, &qword_1E5AD5440);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274C0, &qword_1E5AD5448);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAF894();
  sub_1E5AD03E8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E5AAF93C();
      sub_1E5AD02B8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E5AAF8E8();
      v21 = v27;
      sub_1E5AD02B8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E5AAF990();
    sub_1E5AD02B8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E5AAF894()
{
  result = qword_1EE2FD308[0];
  if (!qword_1EE2FD308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2FD308);
  }

  return result;
}

unint64_t sub_1E5AAF8E8()
{
  result = qword_1ED0274C8;
  if (!qword_1ED0274C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274C8);
  }

  return result;
}

unint64_t sub_1E5AAF93C()
{
  result = qword_1ED0274D0;
  if (!qword_1ED0274D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274D0);
  }

  return result;
}

unint64_t sub_1E5AAF990()
{
  result = qword_1EE2FD2E0;
  if (!qword_1EE2FD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2E0);
  }

  return result;
}

uint64_t sub_1E5AAF9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5AAFBD8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NetworkConditions.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AAFAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5AAFBD8(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274E0, &qword_1E5AD5870);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274E8, &qword_1E5AD5878);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274F0, &qword_1E5AD5880);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0274F8, qword_1E5AD5888);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5AAF894();
  v18 = v39;
  sub_1E5AD03D8();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5AD0298();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5A82BF4();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E5AAF93C();
          sub_1E5AD0228();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E5AAF8E8();
        v29 = v15;
        sub_1E5AD0228();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E5AAF990();
        v29 = v15;
        sub_1E5AD0228();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5AD00F8();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v27 = &type metadata for NetworkConditions;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E5AB01A0()
{
  result = qword_1ED0274D8;
  if (!qword_1ED0274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274D8);
  }

  return result;
}

unint64_t sub_1E5AB01F8()
{
  result = qword_1EE2FD2D0;
  if (!qword_1EE2FD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2D0);
  }

  return result;
}

unint64_t sub_1E5AB0250()
{
  result = qword_1EE2FD2D8;
  if (!qword_1EE2FD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2D8);
  }

  return result;
}

unint64_t sub_1E5AB02A8()
{
  result = qword_1EE2FD2C0;
  if (!qword_1EE2FD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2C0);
  }

  return result;
}

unint64_t sub_1E5AB0300()
{
  result = qword_1EE2FD2C8;
  if (!qword_1EE2FD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2C8);
  }

  return result;
}

unint64_t sub_1E5AB0358()
{
  result = qword_1EE2FD2E8;
  if (!qword_1EE2FD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2E8);
  }

  return result;
}

unint64_t sub_1E5AB03B0()
{
  result = qword_1EE2FD2F0;
  if (!qword_1EE2FD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2F0);
  }

  return result;
}

unint64_t sub_1E5AB0408()
{
  result = qword_1EE2FD2F8;
  if (!qword_1EE2FD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2F8);
  }

  return result;
}

unint64_t sub_1E5AB0460()
{
  result = qword_1EE2FD300;
  if (!qword_1EE2FD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD300);
  }

  return result;
}

id sub_1E5AB04B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  if (!v2[1])
  {
    return 0;
  }

  v3 = *v2;
  v4 = sub_1E5ACFBA8();
  v5 = [objc_opt_self() _systemImageNamed_];

  return v5;
}

uint64_t sub_1E5AB0524@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & **a1) + 0x80);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AB059C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t DynamicContentContainerViewController.currentViewController.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void DynamicContentContainerViewController.currentViewController.setter(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DynamicContentContainerViewController.currentViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1E5AB07A8;
}

void sub_1E5AB07A8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t DynamicContentContainerViewController.headlessFeatures.getter()
{
  sub_1E5AB2914();
}

uint64_t DynamicContentContainerViewController.headlessFeatures.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DynamicContentContainerViewController.headlessFeatures.modify())()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DynamicContentContainerViewController.appearanceHandlers.getter()
{
  sub_1E5AB2974();
}

uint64_t DynamicContentContainerViewController.appearanceHandlers.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DynamicContentContainerViewController.appearanceHandlers.modify())()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void *DynamicContentContainerViewController.__allocating_init(store:tabItem:contentViewController:offlineContentViewController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v4);
  v11 = sub_1E5AB29D4(a1, a2, a3, a4);

  v12 = *(v5 + 10);
  v13 = *(v5 + 11);
  type metadata accessor for DynamicContentContainerViewController.TabItem();
  v14 = sub_1E5ACFFD8();
  (*(*(v14 - 8) + 8))(a2, v14);

  return v11;
}

void *DynamicContentContainerViewController.init(store:tabItem:contentViewController:offlineContentViewController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1E5AB29D4(a1, a2, a3, a4);

  v11 = *((v9 & v8) + 0x50);
  v12 = *((v9 & v8) + 0x58);
  type metadata accessor for DynamicContentContainerViewController.TabItem();
  v13 = sub_1E5ACFFD8();
  (*(*(v13 - 8) + 8))(a2, v13);

  return v10;
}

id sub_1E5AB0BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicContentAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  result = [v1 isViewLoaded];
  if (result)
  {
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v13 = sub_1E5ACF038();
    __swift_project_value_buffer(v13, qword_1EE300080);
    sub_1E5ACF008();
    sub_1E5A95F34(a1, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = MEMORY[0x1E69E7D40];
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5A9B8E8(v11, &unk_1ED027520, &qword_1E5AD24C0);
        v20 = ((*v15 & *v1) + 104);
LABEL_13:
        sub_1E5AB16D0(*(v2 + *v20));
LABEL_14:
        v21 = *(v2 + *((*v15 & *v2) + 0x60));
        sub_1E5ACF9A8();
        sub_1E5A95F34(a1, v7);
        sub_1E5ACFA58();

        return sub_1E5AB3224(v7);
      }

      v16 = *v11;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
      v18 = sub_1E5ACEEA8();
      (*(*(v18 - 8) + 8))(&v11[v17], v18);
    }

    else
    {
      v16 = *v11;
    }

    v19 = *v15 & *v2;
    v20 = (v19 + 112);
    if (v16 != 1)
    {
      v20 = (v19 + 104);
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1E5AB0ED4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1E5ACFB78() & 1;
}

void sub_1E5AB0F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(a2);
  }
}

id sub_1E5AB0FA0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1E5ACEEE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5ACFB98();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v2 & v1) + 0x50);
  v11 = *((v2 & v1) + 0x58);
  v12 = type metadata accessor for DynamicContentContainerViewController.TabItem();
  v13 = sub_1E5ACFFD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  v19 = *(v12 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v30 - v21;
  (*(v14 + 16))(v18, &v0[*((v2 & v1) + 0x78)], v13);
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  (*(v19 + 32))(v22, v18, v12);
  result = [v0 tabBarItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v24 = result;
  (*(v30 + 16))(v9, v22, v31);
  v25 = *&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)];
  v26 = *&v22[*(v12 + 40)];
  sub_1E5ACF9A8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5ACFBE8();
  v27 = sub_1E5ACFBA8();

  [v24 setTitle_];

  result = [v0 tabBarItem];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = sub_1E5AB04B4(v12);
  [v28 setImage_];

  return (*(v19 + 8))(v22, v12);
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  sub_1E5ACF988();
}

void sub_1E5AB146C(void *a1)
{
  v1 = a1;
  DynamicContentContainerViewController.viewDidLoad()();
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1);
  HeadlessFeatureHosting<>.onAppear()(ObjectType, &protocol witness table for DynamicContentContainerViewController<A, B>, &protocol witness table for DynamicContentContainerViewController<A, B>);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v10 = *(v8 - 1);
      v9 = *v8;

      v10(v11);

      v8 += 2;
      if (v6 == v7)
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
}

void sub_1E5AB15C0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  DynamicContentContainerViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  HeadlessFeatureHosting<>.onDisappear()(ObjectType, &protocol witness table for DynamicContentContainerViewController<A, B>, &protocol witness table for DynamicContentContainerViewController<A, B>);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1);
}

void sub_1E5AB167C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  DynamicContentContainerViewController.viewDidDisappear(_:)(a3);
}

void sub_1E5AB16D0(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
      v7 = a1;
      v8 = sub_1E5ACFFB8();

      if (v8)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v9 = sub_1E5ACF038();
    __swift_project_value_buffer(v9, qword_1EE300080);
    sub_1E5ACF008();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 willMoveToParentViewController_];
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 view];

      if (!v14)
      {
        __break(1u);
        goto LABEL_32;
      }

      [v14 removeFromSuperview];
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      [v15 removeFromParentViewController];
    }

    if (!a1)
    {
      goto LABEL_30;
    }

    v17 = a1;
    [v2 addChildViewController_];
    v18 = [v2 view];
    if (v18)
    {
      v19 = v18;
      v20 = [v17 view];
      if (v20)
      {
        v21 = v20;
        [v19 addSubview_];

        v22 = [v17 view];
        if (v22)
        {
          v23 = v22;
          [v22 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1E5AD2EC0;
          v25 = [v17 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 topAnchor];

            v28 = [v2 view];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 topAnchor];

              v31 = [v27 constraintEqualToAnchor_];
              *(v24 + 32) = v31;
              v32 = [v17 view];
              if (v32)
              {
                v33 = v32;
                v34 = [v32 bottomAnchor];

                v35 = [v2 view];
                if (v35)
                {
                  v36 = v35;
                  v37 = [v35 bottomAnchor];

                  v38 = [v34 constraintEqualToAnchor_];
                  *(v24 + 40) = v38;
                  v39 = [v17 view];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [v39 leadingAnchor];

                    v42 = [v2 view];
                    if (v42)
                    {
                      v43 = v42;
                      v44 = [v42 leadingAnchor];

                      v45 = [v41 constraintEqualToAnchor_];
                      *(v24 + 48) = v45;
                      v46 = [v17 view];
                      if (v46)
                      {
                        v47 = v46;
                        v48 = [v46 trailingAnchor];

                        v49 = [v2 view];
                        if (v49)
                        {
                          v50 = v49;
                          v51 = objc_opt_self();
                          v52 = [v50 trailingAnchor];

                          v53 = [v48 constraintEqualToAnchor_];
                          *(v24 + 56) = v53;
                          sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
                          v54 = sub_1E5ACFC68();

                          [v51 activateConstraints_];

                          [v17 didMoveToParentViewController_];
LABEL_30:
                          sub_1E5AB1C98(v2);
                          return;
                        }

LABEL_42:
                        __break(1u);
                        return;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1E5AB1C98(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x80);
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void __swiftcall DynamicContentContainerViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  ObjectType = swift_getObjectType();
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong contentScrollViewForEdge_];
  }

  else
  {
    v9.receiver = v2;
    v9.super_class = ObjectType;
    v8 = [(UIScrollView_optional *)&v9 contentScrollViewForEdge:a2];
  }
}

id sub_1E5AB1DDC(void *a1, uint64_t a2, NSDirectionalRectEdge a3)
{
  v4 = a1;
  DynamicContentContainerViewController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

id sub_1E5AB1E28(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.supportedInterfaceOrientations.getter();

  return v2;
}

id DynamicContentContainerViewController.supportedInterfaceOrientations.getter()
{
  ObjectType = swift_getObjectType();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong supportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_supportedInterfaceOrientations);
  }
}

id sub_1E5AB1F0C(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.keyCommands.getter();

  if (v2)
  {
    sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
    v3 = sub_1E5ACFC68();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t DynamicContentContainerViewController.keyCommands.getter()
{
  ObjectType = swift_getObjectType();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v10.receiver = v0;
    v10.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v10, sel_keyCommands);
    if (v8)
    {
      v4 = v8;
      sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
      v7 = sub_1E5ACFC78();
      goto LABEL_6;
    }

    return 0;
  }

  v4 = Strong;
  v5 = [Strong keyCommands];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
  v7 = sub_1E5ACFC78();

LABEL_6:
  return v7;
}

id sub_1E5AB20B8(void *a1)
{
  v1 = a1;
  DynamicContentContainerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED026D30, &qword_1E5AD43E0);
  v2 = sub_1E5ACFC68();

  return v2;
}

uint64_t DynamicContentContainerViewController.preferredFocusEnvironments.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1E6934320](v3);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E5ACFC98();
    }

    sub_1E5ACFCC8();
    v2 = v6;
  }

  sub_1E5A9B8E8(&Strong, &qword_1ED026CB8, &qword_1E5AD3240);
  return v2;
}

id sub_1E5AB2224(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForStatusBarStyle.getter();

  return v2;
}

id sub_1E5AB2274(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForStatusBarHidden.getter();

  return v2;
}

uint64_t sub_1E5AB22C4(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.prefersHomeIndicatorAutoHidden.getter();

  return v2 & 1;
}

id DynamicContentContainerViewController.prefersHomeIndicatorAutoHidden.getter()
{
  ObjectType = swift_getObjectType();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong prefersHomeIndicatorAutoHidden];

    return v5;
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_prefersHomeIndicatorAutoHidden);
  }
}

id sub_1E5AB23A8(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForHomeIndicatorAutoHidden.getter();

  return v2;
}

id sub_1E5AB23F8(SEL *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v6.receiver = v1;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, *a1);
  }

  return result;
}

id DynamicContentContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void DynamicContentContainerViewController.init(nibName:bundle:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1E5AB2F6C();
}

void sub_1E5AB2544(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = a4;

  sub_1E5AB2F6C();
}

id DynamicContentContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5AB25EC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)];

  v6 = *((*v2 & *a1) + 0x78);
  v7 = *((v4 & v3) + 0x50);
  v8 = *((v4 & v3) + 0x58);
  type metadata accessor for DynamicContentContainerViewController.TabItem();
  v9 = sub_1E5ACFFD8();
  (*(*(v9 - 8) + 8))(&a1[v6], v9);
  MEMORY[0x1E6935220](&a1[*((*v2 & *a1) + 0x80)]);
  v10 = *&a1[*((*v2 & *a1) + 0x88)];

  v11 = *&a1[*((*v2 & *a1) + 0x90)];
}

uint64_t sub_1E5AB2790()
{
  sub_1E5AB2974();
}

uint64_t (*sub_1E5AB27BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DynamicContentContainerViewController.appearanceHandlers.modify();
  return sub_1E5AB3284;
}

uint64_t sub_1E5AB282C()
{
  sub_1E5AB2914();
}

uint64_t (*sub_1E5AB2858(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DynamicContentContainerViewController.headlessFeatures.modify();
  return sub_1E5AB28C8;
}

void sub_1E5AB28CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E5AB2914()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E5AB2974()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1E5AB29D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v38[0] = swift_getObjectType();
  v10 = *v4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v13 = sub_1E5ACEEE8();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v12 & v10) + 0x80);
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x1E69E7CC0];
  *&v4[*((*v11 & *v4) + 0x88)] = MEMORY[0x1E69E7CC0];
  *&v4[*((*v11 & *v4) + 0x90)] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027508, &qword_1E5AD5978);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v38[1] = a1;

  *&v4[*((*v11 & *v4) + 0x60)] = sub_1E5ACF9C8();
  v22 = *((*v11 & *v4) + 0x78);
  v23 = *((v12 & v10) + 0x50);
  v24 = *((v12 & v10) + 0x58);
  type metadata accessor for DynamicContentContainerViewController.TabItem();
  v25 = sub_1E5ACFFD8();
  (*(*(v25 - 8) + 16))(&v5[v22], a2, v25);
  *&v5[*((*v11 & *v5) + 0x68)] = a3;
  *&v5[*((*v11 & *v5) + 0x70)] = a4;
  v43.receiver = v5;
  v43.super_class = v38[0];
  v26 = a3;
  v27 = a4;
  v28 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  v29 = *((*v11 & *v28) + 0x60);
  v30 = *(v28 + v29);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v31;
  sub_1E5AB30FC();
  v33 = v28;

  sub_1E5ACF998();

  v34 = *(v28 + v29);
  v41 = swift_getKeyPath();
  swift_getKeyPath();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v36 = swift_allocObject();
  v36[2] = v23;
  v36[3] = v24;
  v36[4] = v35;
  sub_1E5AB31DC(&qword_1EE2FDC78, MEMORY[0x1E6969770]);
  sub_1E5ACF998();

  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5AB0FA0();

  (*(v39 + 8))(v16, v40);
  return v33;
}

void sub_1E5AB2E94()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v1 & *v0) + 0x88)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v1 & *v0) + 0x90)) = v3;
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5AB2F9C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for DynamicContentContainerViewController.TabItem();
  result = sub_1E5ACFFD8();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5AB30FC()
{
  result = qword_1EE2FCA38;
  if (!qword_1EE2FCA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED027520, &qword_1E5AD24C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA38);
  }

  return result;
}

uint64_t keypath_hashTm(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1E5ACFB58();
}

uint64_t sub_1E5AB31DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5AB3224(uint64_t a1)
{
  v2 = type metadata accessor for DynamicContentAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5AB3288()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000022;
    v8 = 0x722E657275676966;
    if (v1 != 10)
    {
      v8 = 0x792E657275676966;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x656D2E656C707061;
    v10 = 0x702E657275676966;
    if (v1 != 7)
    {
      v10 = 0x722E657275676966;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x632E657275676966;
    v3 = 0x642E657275676966;
    v4 = 0xD000000000000025;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t SidebarModality.init(item:kind:name:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for SidebarModality();
  *(a5 + *(v8 + 36)) = v7;
  v9 = *(v8 + 40);
  v10 = sub_1E5ACEE48();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a3, v10);
}

uint64_t sub_1E5AB359C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5AB36CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AB36B4(*v1);
}

uint64_t sub_1E5AB36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AB359C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5AB3708@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5AB4800();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AB3734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB3788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModality.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v18[0] = a2;
  v18[1] = v3;
  type metadata accessor for SidebarModality.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5AD0318();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AD03E8();
  v22 = 0;
  v11 = *(v4 + 16);
  v12 = v18[2];
  v13 = v18[3];
  sub_1E5AD0308();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v6;
  v16 = v18[0];
  v21 = *(v12 + *(v18[0] + 36));
  v20 = 1;
  sub_1E5AB3A34();
  sub_1E5AD0308();
  v17 = *(v16 + 40);
  v19 = 2;
  sub_1E5ACEE48();
  sub_1E5AB419C(&qword_1ED027548);
  sub_1E5AD0308();
  return (*(v15 + 8))(v9, v5);
}

unint64_t sub_1E5AB3A34()
{
  result = qword_1ED027540;
  if (!qword_1ED027540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027540);
  }

  return result;
}

uint64_t SidebarModality.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = sub_1E5ACEE48();
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarModality.CodingKeys();
  swift_getWitnessTable();
  v42 = sub_1E5AD02A8();
  v37 = *(v42 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v32 - v13;
  v40 = a3;
  v15 = type metadata accessor for SidebarModality();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v14;
  v20 = v43;
  sub_1E5AD03D8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v15;
  v21 = v37;
  v22 = v38;
  v47 = 0;
  v23 = v39;
  v24 = *(v40 + 8);
  v25 = v41;
  sub_1E5AD0288();
  v26 = *(v22 + 32);
  v27 = v18;
  v26(v18, v23, a2);
  v45 = 1;
  sub_1E5AB3F44();
  sub_1E5AD0288();
  v28 = v43;
  v18[*(v43 + 36)] = v46;
  v44 = 2;
  sub_1E5AB419C(&qword_1ED027558);
  v29 = v35;
  sub_1E5AD0288();
  (*(v21 + 8))(v25, v42);
  (*(v33 + 32))(&v27[*(v28 + 40)], v36, v29);
  v30 = v32;
  (*(v32 + 16))(v34, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v30 + 8))(v27, v28);
}

unint64_t sub_1E5AB3F44()
{
  result = qword_1ED027550;
  if (!qword_1ED027550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027550);
  }

  return result;
}

uint64_t static SidebarModality.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5ACFB78() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for SidebarModality();
  if (*(a1 + *(v7 + 36)) != *(a2 + *(v7 + 36)))
  {
    return 0;
  }

  v8 = *(v7 + 40);

  return MEMORY[0x1EEDC2F60](a1 + v8, a2 + v8);
}

uint64_t SidebarModality.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 24);
  sub_1E5ACFB48();
  MEMORY[0x1E6934A50](*(v2 + *(a2 + 36)));
  v6 = *(a2 + 40);
  sub_1E5ACEE48();
  sub_1E5AB419C(qword_1ED027560);
  return sub_1E5ACFB48();
}

uint64_t SidebarModality.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  SidebarModality.hash(into:)(v3, a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AB414C(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  SidebarModality.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AB419C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5ACEE48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AB41FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v25 = *(v5 - 8);
  v6 = *(v25 + 84);
  v7 = sub_1E5ACEE48();
  v8 = *(v7 - 8);
  v9 = *(v25 + 64);
  if (v6 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xF4)
  {
    v12 = 244;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v13 = ((v11 + v9 + 1) & ~v11) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 < 2)
    {
LABEL_31:
      if (v6 == v12)
      {
        v21 = *(v25 + 48);

        return v21(a1, v6, v5);
      }

      else
      {
        v22 = a1 + v9;
        if (v10 > 0xF4)
        {
          v24 = *(v8 + 48);

          return v24(&v22[v11 + 1] & ~v11);
        }

        else
        {
          v23 = *v22;
          if (v23 >= 0xC)
          {
            return v23 - 11;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E5AB4490(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v24 = *(v7 - 8);
  v8 = *(v24 + 84);
  v9 = *(sub_1E5ACEE48() - 8);
  v10 = *(v24 + 64);
  if (v8 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xF4)
  {
    v13 = 244;
  }

  else
  {
    v13 = v11;
  }

  v14 = ((v12 + v10 + 1) & ~v12) + *(v9 + 64);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v13)
  {
    v21 = *(v24 + 56);

    v21(a1, a2, v8, v7);
  }

  else
  {
    v22 = &a1[v10];
    if (v11 > 0xF4)
    {
      v23 = *(v9 + 56);

      v23(&v22[v12 + 1] & ~v12, a2);
    }

    else
    {
      *v22 = a2 + 11;
    }
  }
}

uint64_t sub_1E5AB4824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5AE0D80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5AB48B8(uint64_t a1)
{
  v2 = sub_1E5AB4CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AB48F4(uint64_t a1)
{
  v2 = sub_1E5AB4CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AB4930(uint64_t a1)
{
  v2 = sub_1E5AB4D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AB496C(uint64_t a1)
{
  v2 = sub_1E5AB4D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnotherNavigationSplitViewAction.encode(to:)(void *a1)
{
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for AnotherNavigationSplitViewAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0275F0, &qword_1E5AD5CD8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AB4CA4();
  v16 = v2;
  sub_1E5AD03E8();
  sub_1E5AB4CF8(v19, v9);
  sub_1E5AB4D5C();
  sub_1E5AD02B8();
  v17 = sub_1E5ACF418();
  sub_1E5AB519C(&qword_1ED027608);
  sub_1E5AD0308();
  (*(*(v17 - 8) + 8))(v9, v17);
  (*(v20 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for AnotherNavigationSplitViewAction()
{
  result = qword_1ED027628;
  if (!qword_1ED027628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5AB4CA4()
{
  result = qword_1ED0275F8;
  if (!qword_1ED0275F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0275F8);
  }

  return result;
}

uint64_t sub_1E5AB4CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnotherNavigationSplitViewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5AB4D5C()
{
  result = qword_1ED027600;
  if (!qword_1ED027600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027600);
  }

  return result;
}

uint64_t AnotherNavigationSplitViewAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for AnotherNavigationSplitViewAction();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027610, &qword_1E5AD5CE0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027618, &unk_1E5AD5CE8);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AB4CA4();
  v15 = v35;
  sub_1E5AD03D8();
  if (v15)
  {
    goto LABEL_10;
  }

  v35 = a1;
  v17 = v28;
  v16 = v29;
  v18 = sub_1E5AD0298();
  v19 = (2 * *(v18 + 16)) | 1;
  v31 = v18;
  v32 = v18 + 32;
  v33 = 0;
  v34 = v19;
  v20 = v13;
  if ((sub_1E5A82BF8() & 1) != 0 || v33 != v34 >> 1)
  {
    v22 = sub_1E5AD00F8();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v24 = v27;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v30 + 8))(v20, v10);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_10:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_1E5AB4D5C();
  sub_1E5AD0228();
  sub_1E5ACF418();
  sub_1E5AB519C(&qword_1ED027620);
  v27 = v13;
  sub_1E5AD0288();
  (*(v17 + 8))(v9, v6);
  (*(v30 + 8))(v27, v10);
  swift_unknownObjectRelease();
  sub_1E5AB51E0(v5, v16);
  v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1E5AB519C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5ACF418();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AB51E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnotherNavigationSplitViewAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AB5274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACF418();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5AB52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACF418();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1E5AB535C(uint64_t a1)
{
  result = sub_1E5ACF418();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1E5AB5424()
{
  result = qword_1ED027638;
  if (!qword_1ED027638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027638);
  }

  return result;
}

unint64_t sub_1E5AB547C()
{
  result = qword_1ED027640;
  if (!qword_1ED027640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027640);
  }

  return result;
}

unint64_t sub_1E5AB54D4()
{
  result = qword_1ED027648;
  if (!qword_1ED027648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027648);
  }

  return result;
}

unint64_t sub_1E5AB552C()
{
  result = qword_1ED027650;
  if (!qword_1ED027650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027650);
  }

  return result;
}

unint64_t sub_1E5AB5584()
{
  result = qword_1ED027658;
  if (!qword_1ED027658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027658);
  }

  return result;
}

unint64_t sub_1E5AB55DC()
{
  result = qword_1ED027660[0];
  if (!qword_1ED027660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED027660);
  }

  return result;
}

uint64_t sub_1E5AB5644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C65536D657469 && a2 == 0xEC00000064657463)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5AD0348();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5AB56E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AB5644(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5AB5714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB5768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AB57BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB5810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarAction.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v26 = a2;
  v23 = v4;
  v24 = v3;
  v29 = type metadata accessor for SidebarAction.ItemSelectedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1E5AD0318();
  v32 = *(v27 - 8);
  v6 = *(v32 + 64);
  v7 = MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - v8;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarAction.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_1E5AD0318();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v25;
  v19 = v27;
  v20 = v23;
  sub_1E5AD03E8();
  (*(v9 + 16))(v12, v31, v26);
  sub_1E5AD02B8();
  v21 = *(v24 + 16);
  sub_1E5AD0308();
  (*(*(v20 - 8) + 8))(v12, v20);
  (*(v32 + 8))(v18, v19);
  return (*(v28 + 8))(v16, v13);
}

uint64_t SidebarAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  v45 = type metadata accessor for SidebarAction();
  v36 = *(v45 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v34 - v6;
  type metadata accessor for SidebarAction.ItemSelectedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E5AD02A8();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - v9;
  type metadata accessor for SidebarAction.CodingKeys();
  swift_getWitnessTable();
  v10 = sub_1E5AD02A8();
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v50;
  sub_1E5AD03D8();
  if (v16)
  {
    goto LABEL_9;
  }

  v35 = 0;
  v50 = a1;
  v17 = v43;
  *&v46 = sub_1E5AD0298();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  *&v48 = sub_1E5ACFFF8();
  *(&v48 + 1) = v18;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  sub_1E5ACFFE8();
  swift_getWitnessTable();
  sub_1E5ACFEA8();
  if ((v46 & 1) != 0 || (v34 = v48, v46 = v48, v47 = v49, (sub_1E5ACFEC8() & 1) == 0))
  {
    v24 = sub_1E5AD00F8();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v26 = v45;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v44 + 8))(v14, v17);
    goto LABEL_8;
  }

  v21 = v42;
  v22 = v35;
  sub_1E5AD0228();
  v23 = v45;
  if (v22)
  {
    (*(v44 + 8))(v14, v17);
LABEL_8:
    swift_unknownObjectRelease();
    a1 = v50;
LABEL_9:
    v33 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v28 = *(a2 + 8);
  v29 = v40;
  v30 = v39;
  sub_1E5AD0288();
  v31 = v44;
  (*(v38 + 8))(v21, v30);
  (*(v31 + 8))(v14, v17);
  swift_unknownObjectRelease();
  (*(v36 + 32))(v37, v29, v23);
  v33 = v50;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_1E5AB6170(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t AnotherNavigationSplitViewFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E5ACF418();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for AnotherNavigationSplitViewAction();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5AB4CF8(a4, v17);
  (*(v7 + 32))(v13, v17, v6);
  sub_1E5ACF3F8();
  sub_1E5AB6584(&qword_1ED0277E8, MEMORY[0x1E697CB78]);
  LOBYTE(a4) = sub_1E5ACFB78();
  v18 = *(v7 + 8);
  v18(v11, v6);
  result = (v18)(v13, v6);
  *a2 = (a4 & 1) == 0;
  return result;
}

uint64_t sub_1E5AB6584(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5AB65D0()
{
  result = qword_1ED027800;
  if (!qword_1ED027800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027800);
  }

  return result;
}

uint64_t sub_1E5AB6624(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E5ACF418();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for AnotherNavigationSplitViewAction();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5AB4CF8(a4, v17);
  (*(v7 + 32))(v13, v17, v6);
  sub_1E5ACF3F8();
  sub_1E5AB6584(&qword_1ED0277E8, MEMORY[0x1E697CB78]);
  LOBYTE(a4) = sub_1E5ACFB78();
  v18 = *(v7 + 8);
  v18(v11, v6);
  result = (v18)(v13, v6);
  *a2 = (a4 & 1) == 0;
  return result;
}

uint64_t sub_1E5AB680C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  type metadata accessor for SidebarFeature();
  swift_getWitnessTable();
  v7 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v2, v3, v4, v7, WitnessTable);
}

uint64_t sub_1E5AB68BC(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 16);
  sub_1E5ACFFD8();
  v5 = *(*(a1 + 48) + 24);
  swift_getWitnessTable();
  sub_1E5ACF0D8();
  return sub_1E5ACF098();
}

uint64_t sub_1E5AB6954(uint64_t a1)
{
  v2 = (v1 + *(a1 + 100));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF088();
  return v4;
}

uint64_t sub_1E5AB69BC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 100));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF098();
  return v4;
}

uint64_t sub_1E5AB6A28(uint64_t a1)
{
  v2 = (v1 + *(a1 + 104));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  return v4;
}

uint64_t sub_1E5AB6A88(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 104));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  return sub_1E5ACF7A8();
}

uint64_t SidebarView.init(store:signOutViewBuilder:currentTimeViewBuilder:modalitiesViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = type metadata accessor for SidebarView();
  v16 = *(a11 + 24);
  v17 = a6 + v15[24];
  sub_1E5ACF0C8();
  v18 = a6 + v15[25];
  *v18 = sub_1E5ACF0B8() & 1;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20 & 1;
  v21 = a6 + v15[26];
  sub_1E5ACF788();
  *v21 = a7;
  *(v21 + 8) = a8;
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a9;
  v22[5] = a10;
  v22[6] = a11;
  v22[7] = a12;
  v22[8] = a13;
  v22[9] = a14;
  v22[10] = a1;
  v22[11] = a2;
  type metadata accessor for SidebarFeature();

  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  *a6 = sub_1E5ACF0E8();
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  v25 = a6 + v15[21];
  v26 = a3();
  v27 = a6 + v15[22];
  v28 = a4(v26);
  v29 = a6 + v15[23];
  a5(v28);
}

uint64_t sub_1E5AB6D14()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t SidebarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v147 = *(a1 - 8);
  v148 = *(v147 + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v146 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v154 = v2 + 72;
  v4 = *(v2 + 16);
  v5 = v2;
  v150 = v2;
  v6 = sub_1E5ACFFD8();
  v7 = sub_1E5ACF838();
  v144 = *(v7 - 8);
  v145 = v7;
  v8 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v103 - v9;
  v10 = sub_1E5ACF4C8();
  v141 = *(v10 - 8);
  v142 = v10;
  v11 = *(v141 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v138 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v6 - 8);
  v14 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v103 - v15;
  v16 = *(v5 + 48);
  *&v153 = *(v16 + 24);
  v17 = v16;
  v133 = v16;
  v182 = v153;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1E5ACF0A8();
  v136 = *(v19 - 8);
  v137 = v19;
  v20 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v103 - v21;
  *&v156 = v4;
  v22 = sub_1E5ACFD08();
  v23 = *(v17 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027808, ",=");
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027810, "J=");
  v27 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=");
  v177 = v26;
  v178 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v177 = v25;
  v178 = v6;
  v179 = OpaqueTypeConformance2;
  v180 = WitnessTable;
  v152 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = v25;
  v178 = v6;
  v179 = OpaqueTypeConformance2;
  v180 = WitnessTable;
  v30 = swift_getOpaqueTypeConformance2();
  v177 = OpaqueTypeMetadata2;
  v178 = v156;
  v31 = v153;
  v179 = v30;
  v180 = v153;
  swift_getOpaqueTypeMetadata2();
  v32 = sub_1E5ACF1E8();
  v33 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v177 = v22;
  v178 = AssociatedTypeWitness;
  v179 = v32;
  v180 = v33;
  v181 = AssociatedConformanceWitness;
  sub_1E5ACF868();
  v35 = v150;
  *&v155 = *(v150 + 40);
  swift_getTupleTypeMetadata2();
  v129 = sub_1E5ACF8E8();
  v128 = swift_getWitnessTable();
  v36 = sub_1E5ACF818();
  v131 = *(v36 - 8);
  v37 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v122 = MEMORY[0x1E6981870];
  v123 = &v103 - v38;
  v39 = swift_getWitnessTable();
  v177 = v36;
  v178 = v6;
  v125 = v36;
  v126 = v39;
  v104 = v6;
  v40 = v39;
  v41 = v152;
  v179 = v39;
  v180 = v152;
  v42 = swift_getOpaqueTypeMetadata2();
  v132 = *(v42 - 8);
  v43 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v124 = &v103 - v44;
  v177 = v36;
  v178 = v6;
  v179 = v40;
  v180 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v176 = v31;
  v46 = swift_getWitnessTable();
  v177 = v42;
  v178 = v6;
  v113 = v42;
  v114 = v46;
  v179 = v45;
  v180 = v46;
  v115 = v45;
  v151 = swift_getOpaqueTypeMetadata2();
  v130 = *(v151 - 8);
  v47 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v127 = &v103 - v48;
  v49 = v35;
  v50 = *(v35 + 24);
  v51 = *(v35 + 56);
  v177 = v50;
  v178 = v51;
  *&v153 = v50;
  v52 = v51;
  v107 = v51;
  swift_getOpaqueTypeMetadata2();
  v177 = v50;
  v178 = v52;
  swift_getOpaqueTypeConformance2();
  sub_1E5ACF138();
  v106 = *(v49 + 32);
  sub_1E5ACFFD8();
  v105 = *(v49 + 64);
  v175 = v105;
  swift_getWitnessTable();
  sub_1E5ACF818();
  swift_getWitnessTable();
  sub_1E5ACF138();
  swift_getTupleTypeMetadata2();
  v53 = sub_1E5ACF2D8();
  v54 = v104;
  v177 = v42;
  v178 = v104;
  v179 = v45;
  v180 = v46;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable();
  v57 = v151;
  v177 = v151;
  v178 = v53;
  v58 = v53;
  v108 = v53;
  v179 = v55;
  v180 = v56;
  v59 = v55;
  v110 = v56;
  v111 = v55;
  v60 = v56;
  v61 = swift_getOpaqueTypeMetadata2();
  v118 = v61;
  v122 = *(v61 - 8);
  v62 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v109 = &v103 - v63;
  v177 = v57;
  v178 = v58;
  v179 = v59;
  v180 = v60;
  v117 = swift_getOpaqueTypeConformance2();
  v177 = v61;
  v178 = MEMORY[0x1E69E6370];
  v179 = v117;
  v180 = MEMORY[0x1E69E6388];
  v119 = MEMORY[0x1E6981440];
  v64 = swift_getOpaqueTypeMetadata2();
  v65 = *(v64 - 8);
  v120 = v64;
  v121 = v65;
  v66 = *(v65 + 64);
  v67 = MEMORY[0x1EEE9AC00](v64);
  v112 = &v103 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v116 = &v103 - v69;
  sub_1E5ACF288();
  *&v70 = v156;
  *(&v70 + 1) = v153;
  *&v71 = v106;
  *(&v71 + 1) = v155;
  v155 = v71;
  v156 = v70;
  v170 = v70;
  v171 = v71;
  *&v70 = v105;
  *(&v70 + 1) = *v154;
  *&v71 = v133;
  *(&v71 + 1) = v107;
  v153 = v70;
  v154 = v71;
  v172 = v71;
  v173 = v70;
  v72 = v140;
  v174 = v140;
  v73 = v123;
  sub_1E5ACF808();
  v74 = v134;
  sub_1E5AB68BC(v49);
  v75 = v72;
  sub_1E5AB680C(v49);
  v166 = v156;
  v167 = v155;
  v168 = v154;
  v169 = v153;
  swift_getKeyPath();
  v76 = v135;
  sub_1E5ACFA48();

  v77 = v138;
  sub_1E5ACF4B8();
  v79 = v124;
  v78 = v125;
  MEMORY[0x1E6933CA0](v74, v76, v77, v125, v54, v126, v152);
  (*(v141 + 8))(v77, v142);
  (*(v139 + 8))(v76, v54);
  (*(v136 + 8))(v74, v137);
  (*(v131 + 8))(v73, v78);
  v80 = v150;
  sub_1E5AB680C(v150);
  v162 = v156;
  v163 = v155;
  v164 = v154;
  v165 = v153;
  swift_getKeyPath();
  v81 = v143;
  sub_1E5ACFA68();

  v82 = v127;
  v83 = v113;
  sub_1E5ACF608();
  (*(v144 + 8))(v81, v145);
  (*(v132 + 8))(v79, v83);
  v157 = v156;
  v158 = v155;
  v159 = v154;
  v160 = v153;
  v161 = v75;
  swift_checkMetadataState();
  v84 = v109;
  v85 = v151;
  sub_1E5ACF648();
  (*(v130 + 8))(v82, v85);
  LOBYTE(v177) = sub_1E5AB6954(v80) & 1;
  v87 = v146;
  v86 = v147;
  (*(v147 + 16))(v146, v75, v80);
  v88 = v86;
  v89 = (*(v86 + 80) + 80) & ~*(v86 + 80);
  v90 = swift_allocObject();
  v91 = v155;
  *(v90 + 1) = v156;
  *(v90 + 2) = v91;
  v92 = v153;
  *(v90 + 3) = v154;
  *(v90 + 4) = v92;
  (*(v88 + 32))(&v90[v89], v87, v80);
  v93 = v112;
  v95 = v117;
  v94 = v118;
  v96 = MEMORY[0x1E69E6370];
  v97 = MEMORY[0x1E69E6388];
  sub_1E5ACF678();

  (*(v122 + 8))(v84, v94);
  v177 = v94;
  v178 = v96;
  v179 = v95;
  v180 = v97;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v116;
  v100 = v120;
  sub_1E5A9AA54(v93, v120, v98);
  v101 = *(v121 + 8);
  v101(v93, v100);
  sub_1E5A9AA54(v99, v100, v98);
  return (v101)(v99, v100);
}

uint64_t sub_1E5AB7BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v102 = a8;
  v90 = a7;
  v89 = a4;
  v104 = a3;
  v103 = a1;
  v99 = a9;
  v91 = a5;
  v98 = *(a5 - 8);
  v12 = *(v98 + 64);
  v92 = a10;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v97 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v75 - v15;
  v117 = v16;
  v118 = v17;
  v119 = v18;
  v120 = v19;
  v121 = v20;
  v122 = v21;
  v123 = v22;
  v124 = v23;
  v88 = type metadata accessor for SidebarView();
  v94 = *(v88 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v93 = &v75 - v24;
  v100 = sub_1E5ACFD08();
  v25 = *(a6 + 32);
  v101 = a6;
  v80 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027808, ",=");
  v28 = sub_1E5ACFFD8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027810, "J=");
  v30 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=");
  v117 = v29;
  v118 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = *(a6 + 24);
  v32 = v116;
  v84 = v116;
  WitnessTable = swift_getWitnessTable();
  v117 = v27;
  v118 = v28;
  v119 = OpaqueTypeConformance2;
  v120 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = OpaqueTypeMetadata2;
  v117 = v27;
  v118 = v28;
  v119 = OpaqueTypeConformance2;
  v120 = WitnessTable;
  v83 = swift_getOpaqueTypeConformance2();
  v117 = OpaqueTypeMetadata2;
  v118 = a2;
  v119 = v83;
  v120 = v32;
  v79 = MEMORY[0x1E697CDA0];
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1E5ACF1E8();
  v77 = v35;
  v36 = v100;
  v37 = swift_getWitnessTable();
  v81 = v37;
  v82 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v117 = v36;
  v118 = AssociatedTypeWitness;
  v119 = v35;
  v120 = v37;
  v121 = AssociatedConformanceWitness;
  v86 = sub_1E5ACF868();
  v87 = *(v86 - 8);
  v39 = *(v87 + 64);
  v40 = MEMORY[0x1EEE9AC00](v86);
  v76 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v78 = &v75 - v42;
  v43 = v88;
  v44 = v103;
  sub_1E5AB680C(v88);
  v105 = a2;
  v45 = a2;
  v106 = v104;
  v46 = v89;
  v107 = v89;
  v47 = v91;
  v108 = v91;
  v48 = v90;
  v109 = v101;
  v110 = v90;
  v49 = v92;
  v111 = v102;
  v112 = v92;
  swift_getKeyPath();
  sub_1E5ACFA48();

  v113 = v115[0];
  v50 = v94;
  v51 = v93;
  (*(v94 + 16))(v93, v44, v43);
  v52 = (*(v50 + 80) + 80) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v54 = v104;
  v53[2] = v45;
  v53[3] = v54;
  v53[4] = v46;
  v53[5] = v47;
  v53[6] = v101;
  v53[7] = v48;
  v53[8] = v102;
  v53[9] = v49;
  v55 = v49;
  v56 = v53 + v52;
  v57 = v43;
  (*(v50 + 32))(v56, v51, v43);
  v117 = v85;
  v118 = v45;
  v119 = v83;
  v120 = v84;
  v115[3] = swift_getOpaqueTypeConformance2();
  v115[4] = MEMORY[0x1E697E5D8];
  v58 = swift_getWitnessTable();
  v59 = v76;
  sub_1E5ACF858();
  v115[2] = v58;
  v60 = v86;
  v61 = swift_getWitnessTable();
  v62 = v78;
  sub_1E5A9AA54(v59, v60, v61);
  v63 = v87;
  v104 = *(v87 + 8);
  v104(v59, v60);
  v64 = v103 + *(v57 + 92);
  v65 = v96;
  v66 = v55;
  sub_1E5A9AA54(v64, v47, v55);
  v67 = *(v63 + 16);
  v68 = v62;
  v67(v59, v62, v60);
  v117 = v59;
  v69 = v98;
  v70 = v97;
  (*(v98 + 16))(v97, v65, v47);
  v118 = v70;
  v115[0] = v60;
  v115[1] = v47;
  v113 = v61;
  v114 = v66;
  sub_1E5AB95C4(&v117, 2uLL, v115);
  v71 = *(v69 + 8);
  v71(v65, v47);
  v72 = v68;
  v73 = v104;
  v104(v72, v60);
  v71(v70, v47);
  return v73(v59, v60);
}

uint64_t sub_1E5AB8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v103 = a8;
  v102 = a6;
  v101 = a5;
  v98 = a4;
  v135 = a2;
  v136 = a1;
  v129 = a9;
  v99 = a11;
  v97 = a10;
  v132 = sub_1E5ACFFD8();
  v128 = *(v132 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v125 = &v88 - v18;
  v19 = *(a7 + 24);
  v100 = a7;
  v158 = v19;
  v20 = v19;
  v115 = v19;
  WitnessTable = swift_getWitnessTable();
  v127 = sub_1E5ACF0A8();
  v126 = *(v127 - 8);
  v21 = *(v126 + 64);
  v22 = MEMORY[0x1EEE9AC00](v127);
  v124 = &v88 - v23;
  v130 = a3;
  v137 = *(a3 - 8);
  v104 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = a3;
  v151 = a4;
  v152 = a5;
  v153 = a6;
  v154 = a7;
  v155 = a8;
  v156 = a10;
  v157 = a11;
  v131 = type metadata accessor for SidebarView();
  v25 = *(v131 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v28 = &v88 - v27;
  v92 = &v88 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027810, "J=");
  v109 = v29;
  v122 = *(v29 - 8);
  v30 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v88 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027808, ",=");
  v123 = *(v32 - 8);
  v33 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v116 = &v88 - v34;
  v110 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=");
  v150 = v29;
  v151 = v110;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v32;
  v36 = v132;
  v150 = v32;
  v151 = v132;
  v37 = OpaqueTypeConformance2;
  v107 = OpaqueTypeConformance2;
  v38 = WitnessTable;
  v152 = OpaqueTypeConformance2;
  v153 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = OpaqueTypeMetadata2;
  v121 = *(OpaqueTypeMetadata2 - 8);
  v40 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v105 = &v88 - v41;
  v150 = v32;
  v151 = v36;
  v152 = v37;
  v153 = v38;
  v113 = swift_getOpaqueTypeConformance2();
  v150 = OpaqueTypeMetadata2;
  v42 = v130;
  v151 = v130;
  v152 = v113;
  v153 = v20;
  v117 = MEMORY[0x1E697CDA0];
  v111 = swift_getOpaqueTypeMetadata2();
  v119 = *(v111 - 8);
  v43 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v95 = &v88 - v44;
  v118 = sub_1E5ACF1E8();
  v120 = *(v118 - 8);
  v45 = *(v120 + 64);
  v46 = MEMORY[0x1EEE9AC00](v118);
  v96 = &v88 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v112 = &v88 - v48;
  v49 = v25;
  v91 = v25;
  v50 = *(v25 + 16);
  v51 = v131;
  v50(v28, v135, v131);
  v52 = v137;
  v53 = *(v137 + 16);
  v93 = v137 + 16;
  v94 = v53;
  v53(v134, v136, v42);
  v89 = (*(v49 + 80) + 80) & ~*(v49 + 80);
  v90 = (v26 + *(v52 + 80) + v89) & ~*(v52 + 80);
  v54 = swift_allocObject();
  v55 = v98;
  *(v54 + 2) = v42;
  *(v54 + 3) = v55;
  v56 = v101;
  v57 = v102;
  *(v54 + 4) = v101;
  *(v54 + 5) = v57;
  v58 = v100;
  v59 = v103;
  *(v54 + 6) = v100;
  *(v54 + 7) = v59;
  v60 = v97;
  v61 = v99;
  *(v54 + 8) = v97;
  *(v54 + 9) = v61;
  (*(v91 + 32))(&v54[v89], v92, v51);
  (*(v137 + 32))(&v54[v90], v134, v42);
  v138 = v42;
  v139 = v55;
  v140 = v56;
  v141 = v57;
  v142 = v58;
  v143 = v59;
  v144 = v60;
  v145 = v61;
  v62 = v136;
  v146 = v136;
  v147 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027828, &qword_1E5AD6428);
  sub_1E5A8CEF0(&qword_1ED027830, &qword_1ED027828, &qword_1E5AD6428);
  v63 = v108;
  sub_1E5ACF7C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027838, &qword_1E5AD6430);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1E5AD3200;
  v65 = v62;
  v66 = v130;
  *(v64 + 32) = (*(v58 + 56))(v130, v58);
  *(v64 + 40) = v67;
  v68 = v116;
  v69 = v109;
  sub_1E5ACF568();

  (*(v122 + 8))(v63, v69);
  v70 = v124;
  sub_1E5AB68BC(v131);
  v71 = v125;
  v94(v125, v65, v66);
  v72 = v66;
  (*(v137 + 56))(v71, 0, 1, v66);
  v73 = v105;
  v74 = v106;
  v75 = v132;
  sub_1E5ACF618();
  (*(v128 + 8))(v71, v75);
  (*(v126 + 8))(v70, v127);
  (*(v123 + 8))(v68, v74);
  v76 = v95;
  v77 = v114;
  v78 = v113;
  v79 = v115;
  sub_1E5ACF5A8();
  (*(v121 + 8))(v73, v77);
  sub_1E5ACF4F8();
  v150 = v77;
  v151 = v72;
  v152 = v78;
  v153 = v79;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v96;
  v82 = v111;
  sub_1E5ACF638();
  (*(v119 + 8))(v76, v82);
  v148 = v80;
  v149 = MEMORY[0x1E697E5D8];
  v83 = v118;
  v84 = swift_getWitnessTable();
  v85 = v112;
  sub_1E5A9AA54(v81, v83, v84);
  v86 = *(v120 + 8);
  v86(v81, v83);
  sub_1E5A9AA54(v85, v83, v84);
  return (v86)(v85, v83);
}

uint64_t sub_1E5AB90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v24 = a1;
  v25 = a2;
  v15 = type metadata accessor for SidebarAction();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = v23;
  v32 = a9;
  v33 = a10;
  v20 = type metadata accessor for SidebarView();
  sub_1E5AB680C(v20);
  (*(*(a3 - 8) + 16))(v19, v25, a3);
  sub_1E5ACFA58();

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1E5AB9210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027840, &qword_1E5AD6438);
  sub_1E5ABB670();
  return sub_1E5ACF768();
}

uint64_t sub_1E5AB92D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a2;
  v42 = a1;
  v43 = a9;
  v37 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v17 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v34 - v18;
  v19 = sub_1E5ACEEE8();
  v40 = *(v19 - 8);
  v41 = v19;
  v20 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  v57 = a8;
  v58 = a10;
  v59 = a11;
  v23 = type metadata accessor for SidebarView();
  sub_1E5AB680C(v23);
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v51 = a11;
  swift_getKeyPath();
  sub_1E5ACFA48();

  v24 = (*(a7 + 88))(v22, a3, a7);
  v26 = v25;
  (*(v40 + 8))(v22, v41);
  if (!v26)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    MEMORY[0x1E69342D0](40, 0xE100000000000000);
    v27 = v35;
    sub_1E5AD00B8();
    v28 = AssociatedTypeWitness;
    sub_1E5AD0338();
    (*(v36 + 8))(v27, v28);
    MEMORY[0x1E69342D0](41, 0xE100000000000000);
    v24 = v52;
    v26 = v53;
  }

  v52 = v24;
  v53 = v26;
  sub_1E5ABB6EC();
  result = sub_1E5ACF558();
  v30 = v43;
  *v43 = result;
  v30[1] = v31;
  *(v30 + 16) = v32 & 1;
  v30[3] = v33;
  return result;
}

uint64_t sub_1E5AB95C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E5ACF8F8();
}

uint64_t sub_1E5AB9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a8;
  v48 = a6;
  v41 = a5;
  v55 = a2;
  v47 = a1;
  v54 = a9;
  v56 = a10;
  v39 = a4;
  sub_1E5ACFFD8();
  v77 = a8;
  swift_getWitnessTable();
  v51 = sub_1E5ACF818();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_1E5ACF138();
  v52 = *(v53 - 8);
  v15 = *(v52 + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v39 - v18;
  v19 = sub_1E5ACF348();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = a3;
  v76 = a7;
  swift_getOpaqueTypeMetadata2();
  v75 = a3;
  v76 = a7;
  v40 = a7;
  swift_getOpaqueTypeConformance2();
  v21 = sub_1E5ACF138();
  v43 = *(v21 - 8);
  v22 = *(v43 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - v26;
  v42 = &v39 - v26;
  sub_1E5ACF328();
  v66 = v55;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v28 = v48;
  v70 = v48;
  v71 = a7;
  v29 = v45;
  v72 = v45;
  v73 = v56;
  v30 = v47;
  v74 = v47;
  sub_1E5ACF128();
  v44 = swift_getWitnessTable();
  v31 = v43;
  (*(v43 + 16))(v27, v25, v21);
  v43 = *(v31 + 8);
  (v43)(v25, v21);
  sub_1E5ACF338();
  v57 = v55;
  v58 = a3;
  v59 = v39;
  v60 = v41;
  v61 = v28;
  v62 = v40;
  v63 = v29;
  v64 = v56;
  v65 = v30;
  v32 = v46;
  sub_1E5ACF128();
  v33 = v53;
  swift_getWitnessTable();
  v34 = v52;
  v35 = v49;
  (*(v52 + 16))(v49, v32, v33);
  v36 = *(v34 + 8);
  v36(v32, v33);
  v37 = v42;
  sub_1E5ABA3E4(v42, v35, v21, v33);
  v36(v35, v33);
  return (v43)(v37, v21);
}

uint64_t sub_1E5AB9D00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v28 = a5;
  v29 = a7;
  v27 = a4;
  v31 = a8;
  v32 = a2;
  v33 = a6;
  v30 = MEMORY[0x1E697D570];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = v27;
  v36 = v28;
  v37 = a6;
  v38 = v29;
  v39 = a9;
  v21 = type metadata accessor for SidebarView();
  v22 = *(v21 + 84);
  sub_1E5AB69BC(v21);
  sub_1E5ACF628();

  v32 = a2;
  v33 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E5A9AA54(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v14 + 8);
  v24(v18, OpaqueTypeMetadata2);
  sub_1E5A9AA54(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v24)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1E5AB9EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v26 = a5;
  v27 = a1;
  v30 = a9;
  v25 = a10;
  sub_1E5ACFFD8();
  v40 = a8;
  swift_getWitnessTable();
  v14 = sub_1E5ACF818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = v26;
  v35 = v28;
  v36 = v29;
  v37 = a8;
  v38 = v25;
  v39 = v27;
  sub_1E5ACF278();
  sub_1E5ACF808();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A9AA54(v19, v14, WitnessTable);
  v23 = *(v15 + 8);
  v23(v19, v14);
  sub_1E5A9AA54(v21, v14, WitnessTable);
  return (v23)(v21, v14);
}

uint64_t sub_1E5ABA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a5;
  v39 = a6;
  v36 = a2;
  v37 = a3;
  v41 = a9;
  v40 = *(a4 - 8);
  v14 = *(v40 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = sub_1E5ACFFD8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v35 - v25;
  v43 = v36;
  v44 = v37;
  v45 = a4;
  v46 = v38;
  v47 = v39;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v27 = type metadata accessor for SidebarView();
  if (sub_1E5AB6A28(v27))
  {
    sub_1E5A9AA54(a1 + *(v27 + 88), a4, a8);
    v28 = v35;
    sub_1E5A9AA54(v18, a4, a8);
    v29 = v40;
    (*(v40 + 8))(v18, a4);
    (*(v29 + 32))(v24, v28, a4);
    v30 = 0;
    v31 = v29;
  }

  else
  {
    v30 = 1;
    v31 = v40;
  }

  (*(v31 + 56))(v24, v30, 1, a4);
  (*(v20 + 16))(v26, v24, v19);
  v32 = *(v20 + 8);
  v32(v24, v19);
  v42 = a8;
  WitnessTable = swift_getWitnessTable();
  sub_1E5A9AA54(v26, v19, WitnessTable);
  return (v32)(v26, v19);
}

uint64_t sub_1E5ABA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v15 - v11;
  v13 = *(v10 + 48);
  (*(*(a3 - 8) + 16))(&v15 - v11, a1, a3);
  (*(*(a4 - 8) + 16))(&v12[v13], a2, a4);
  return sub_1E5ACF2E8();
}

uint64_t sub_1E5ABA504(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1E5ACF8D8();
  sub_1E5ACF198();
}

uint64_t sub_1E5ABA590(uint64_t a1, char *a2)
{
  v4 = v2[7];
  v6 = v2[8];
  v5 = v2[9];
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  v7 = *(*(type metadata accessor for SidebarView() - 8) + 80);
  return sub_1E5ABA504(a1, a2);
}

uint64_t sub_1E5ABA664(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5ABA6B4(int *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[3] - 8);
  v5 = *(v4 + 84);
  v6 = a3[5];
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v5 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = a3[2];
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v4 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v7 + 80);
  v20 = *(v10 + 80);
  v21 = *(v14 + 80);
  if (v16)
  {
    v22 = v16 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  if (v16)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = *(*(a3[4] - 8) + 64) + v20;
  v26 = v21 | 7;
  v27 = (v21 | 7) + *(*(v6 - 8) + 64);
  v28 = v24 + 7;
  if (v23 >= a2)
  {
    goto LABEL_41;
  }

  v29 = ((v24 + ((v21 + (v28 & 0xFFFFFFFFFFFFFFF8) + 8) & ~v21) + ((v27 + ((v25 + ((v18 + v19 + ((v17 + 17) & ~v17)) & ~v19)) & ~v20)) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = a2 - v23;
  v31 = v29 & 0xFFFFFFF8;
  if ((v29 & 0xFFFFFFF8) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = v30 + 1;
  }

  if (v32 >= 0x10000)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2;
  }

  if (v32 < 0x100)
  {
    v33 = 1;
  }

  if (v32 >= 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_41;
    }

    v35 = *(a1 + v29);
    if (!v35)
    {
      goto LABEL_41;
    }

LABEL_38:
    v37 = v35 - 1;
    if (v31)
    {
      v37 = 0;
      v38 = *a1;
    }

    else
    {
      v38 = 0;
    }

    return v23 + (v38 | v37) + 1;
  }

  if (v34 == 2)
  {
    v35 = *(a1 + v29);
    if (v35)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = *(a1 + v29);
    if (v35)
    {
      goto LABEL_38;
    }
  }

LABEL_41:
  v39 = (a1 + v17 + 17) & ~v17;
  if (v5 == v23)
  {
    v40 = *(v4 + 48);

    return v40(v39);
  }

  v41 = (v39 + v18 + v19) & ~v19;
  if (v8 == v23)
  {
    v42 = *(v7 + 48);
    v43 = *(v7 + 84);
    v44 = a3[4];

    return v42(v41, v43, v44);
  }

  v41 = (v25 + v41) & ~v20;
  if (v11 == v23)
  {
    v42 = *(v10 + 48);
    v43 = *(v10 + 84);
    v44 = a3[5];

    return v42(v41, v43, v44);
  }

  v45 = (v27 + v41) & ~v26;
  if (v22 < 0x7FFFFFFE)
  {
    v47 = *((v28 + v45) & 0xFFFFFFFFFFFFFFF8);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    if ((v47 + 1) >= 2)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v46 = (*(v15 + 48))(v45, v16, v13);
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E5ABAABC(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[3] - 8);
  v53 = a4[4];
  v7 = *(v6 + 84);
  v8 = *(v53 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v52 = a4[5];
  v11 = *(v52 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v10;
  }

  v51 = a4[2];
  v14 = *(v51 - 8);
  v15 = *(v14 + 84);
  v16 = *(v6 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v8 + 80);
  v19 = *(*(v53 - 8) + 64);
  v20 = *(v11 + 80);
  v21 = *(v14 + 80);
  v22 = v15 - 1;
  if (!v15)
  {
    v22 = 0;
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = v22;
  }

  if (v13 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v13;
  }

  v25 = v19 + v20;
  v26 = v21 | 7;
  v27 = (v21 | 7) + *(*(v52 - 8) + 64);
  v28 = (v27 + ((v19 + v20 + ((v17 + v18 + ((v16 + 17) & ~v16)) & ~v18)) & ~v20)) & ~(v21 | 7);
  if (v15)
  {
    v29 = *(*(v51 - 8) + 64);
  }

  else
  {
    v29 = *(*(v51 - 8) + 64) + 1;
  }

  v30 = v29 + 7;
  v31 = v21 + 8;
  v32 = ((v29 + ((v21 + 8 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + v28 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 < a3)
  {
    v33 = a3 - v24;
    if (v32)
    {
      v34 = 2;
    }

    else
    {
      v34 = v33 + 1;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v5 = v35;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v24)
  {
    if (v32)
    {
      v36 = 1;
    }

    else
    {
      v36 = a2 - v24;
    }

    if (v32)
    {
      v37 = ~v24 + a2;
      v38 = a1;
      bzero(a1, v32);
      a1 = v38;
      *v38 = v37;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }
    }

    else if (v5)
    {
      *(a1 + v32) = v36;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v5 == 2)
  {
    *(a1 + v32) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  *(a1 + v32) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  v39 = (a1 + v16 + 17) & ~v16;
  if (v7 == v24)
  {
    v40 = *(v6 + 56);

LABEL_62:
    v40(v39);
    return;
  }

  v39 = (v39 + v17 + v18) & ~v18;
  if (v9 == v24)
  {
    v40 = *(v8 + 56);

    goto LABEL_62;
  }

  v39 = (v25 + v39) & ~v20;
  if (v12 == v24)
  {
    v40 = *(v11 + 56);

    goto LABEL_62;
  }

  v41 = ((v27 + v39) & ~v26);
  if (v23 >= a2)
  {
    if (v22 < 0x7FFFFFFE)
    {
      v47 = (&v41[v30] & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v47 = 0;
        *v47 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v47 = a2;
      }

      return;
    }

    if (v22 >= a2)
    {
      v48 = *(v14 + 56);
      v49 = a2 + 1;
      v50 = (v27 + v39) & ~v26;

      v48(v50, v49);
    }

    else
    {
      if (v29 <= 3)
      {
        v46 = ~(-1 << (8 * v29));
      }

      else
      {
        v46 = -1;
      }

      if (v29)
      {
        v44 = v46 & (~v22 + a2);
        if (v29 <= 3)
        {
          v45 = v29;
        }

        else
        {
          v45 = 4;
        }

        bzero(v41, v29);
        if (v45 <= 2)
        {
          if (v45 == 1)
          {
            goto LABEL_73;
          }

          goto LABEL_85;
        }

LABEL_88:
        if (v45 == 3)
        {
          *v41 = v44;
          v41[2] = BYTE2(v44);
        }

        else
        {
          *v41 = v44;
        }
      }
    }
  }

  else
  {
    v42 = ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29;
    if (v42 <= 3)
    {
      v43 = ~(-1 << (8 * (((v31 + (v30 & 0xF8)) & ~v21) + v29)));
    }

    else
    {
      v43 = -1;
    }

    if (v42)
    {
      v44 = v43 & (~v23 + a2);
      if (v42 <= 3)
      {
        v45 = ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29;
      }

      else
      {
        v45 = 4;
      }

      bzero(v41, ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29);
      if (v45 <= 2)
      {
        if (v45 == 1)
        {
LABEL_73:
          *v41 = v44;
          return;
        }

LABEL_85:
        *v41 = v44;
        return;
      }

      goto LABEL_88;
    }
  }
}

uint64_t sub_1E5ABB01C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v3 = type metadata accessor for SidebarView();
  return sub_1E5AB6A88((v2 & 1) == 0, v3);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v19 = *(v0 + 48);
  v22 = *(v0 + 64);
  v5 = type metadata accessor for SidebarView();
  v20 = *(*(v5 - 1) + 64);
  v6 = (v0 + ((*(*(v5 - 1) + 80) + 80) & ~*(*(v5 - 1) + 80)));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  sub_1E5A9A6F8();
  (*(*(v2 - 8) + 8))(v6 + v5[21], v2);
  (*(*(v4 - 8) + 8))(v6 + v5[22], v4);
  (*(*(v3 - 8) + 8))(v6 + v5[23], v3);
  v10 = v6 + v5[24];
  v11 = *(v1 - 8);
  v12 = *(v11 + 48);
  if (!v12(v10, 1, v1))
  {
    (*(v11 + 8))(v10, v1);
  }

  sub_1E5ACFFD8();
  v21 = *(v19 + 24);
  swift_getWitnessTable();
  v13 = sub_1E5ACF0D8();
  v14 = *(v10 + *(v13 + 36));

  v15 = *(v13 + 40);
  if (!v12(v10 + v15, 1, v1))
  {
    (*(v11 + 8))(v10 + v15, v1);
  }

  v16 = *(v6 + v5[25] + 8);

  v17 = *(v6 + v5[26] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5ABB3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for SidebarView() - 8);
  return sub_1E5AB8424(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_1E5ABB494()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(type metadata accessor for SidebarView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  return sub_1E5AB90A8(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5ABB5AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  return sub_1E5AB9210();
}

uint64_t sub_1E5ABB61C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[6];
  v5 = v1[10];
  (*(v4 + 80))(v3);
  if (v6)
  {
    result = sub_1E5ACF748();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

unint64_t sub_1E5ABB670()
{
  result = qword_1ED027848;
  if (!qword_1ED027848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027840, &qword_1E5AD6438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027848);
  }

  return result;
}

unint64_t sub_1E5ABB6EC()
{
  result = qword_1ED027850;
  if (!qword_1ED027850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027850);
  }

  return result;
}

double SignOutLocalState.signOutAnimationState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

double SignOutLocalState.signOutAnimationState.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 16) = result;
  *(v1 + 24) = v3;
  return result;
}

double SignOutLocalState.init(signOutAnimationState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1E5ABB7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5AE0DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5ABB864(uint64_t a1)
{
  v2 = sub_1E5ABBA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABB8A0(uint64_t a1)
{
  v2 = sub_1E5ABBA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027858, &qword_1E5AD6460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v12[0] = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABBA4C();
  sub_1E5AD03E8();
  v12[1] = v12[0];
  v13 = v8;
  v14 = v9;
  sub_1E5A877C4();
  sub_1E5AD0308();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5ABBA4C()
{
  result = qword_1ED027860;
  if (!qword_1ED027860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027860);
  }

  return result;
}

uint64_t SignOutLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027868, &qword_1E5AD6468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABBA4C();
  sub_1E5AD03D8();
  if (!v2)
  {
    sub_1E5A88420();
    sub_1E5AD0288();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SignOutLocalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v2 = 0;
  }

  return v2 & (*(a1 + 24) ^ *(a2 + 24) ^ 1u);
}

uint64_t sub_1E5ABBC90(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v2 = 0;
  }

  return v2 & (*(a1 + 24) ^ *(a2 + 24) ^ 1u);
}

unint64_t sub_1E5ABBCF4()
{
  result = qword_1ED027870;
  if (!qword_1ED027870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027870);
  }

  return result;
}

unint64_t sub_1E5ABBD4C()
{
  result = qword_1ED027878;
  if (!qword_1ED027878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027878);
  }

  return result;
}

unint64_t sub_1E5ABBDA4()
{
  result = qword_1ED027880;
  if (!qword_1ED027880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027880);
  }

  return result;
}

uint64_t type metadata accessor for SignOutState()
{
  result = qword_1ED0278A8;
  if (!qword_1ED0278A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SignOutState.isSidebarVisible.setter(char a1)
{
  result = type metadata accessor for SignOutState();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SignOutState.init(accountState:isSidebarVisible:locale:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5A81F20(a1, a4);
  v7 = type metadata accessor for SignOutState();
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  v9 = sub_1E5ACEEE8();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t static SignOutState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for SignOutState();
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v6 = *(v4 + 24);

      JUMPOUT(0x1E69335A0);
    }
  }

  return 0;
}

uint64_t sub_1E5ABC044()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746E756F636361;
  }
}

uint64_t sub_1E5ABC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5ABCF0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5ABC0D0(uint64_t a1)
{
  v2 = sub_1E5ABCB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABC10C(uint64_t a1)
{
  v2 = sub_1E5ABCB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027888, &qword_1E5AD6638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABCB94();
  sub_1E5AD03E8();
  v15[15] = 0;
  type metadata accessor for AccountState();
  sub_1E5ABCCF8(&qword_1ED0269B8, type metadata accessor for AccountState);
  sub_1E5AD0308();
  if (!v2)
  {
    v11 = type metadata accessor for SignOutState();
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1E5AD02E8();
    v13 = *(v11 + 24);
    v15[13] = 2;
    sub_1E5ACEEE8();
    sub_1E5ABCCF8(&qword_1ED026768, MEMORY[0x1E6969770]);
    sub_1E5AD0308();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SignOutState.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E5ACEE98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5ABCBE8(v1, v10, type metadata accessor for AccountState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = v10[1];
      MEMORY[0x1E6934A50](1);
      sub_1E5ACFBF8();
    }

    else
    {
      MEMORY[0x1E6934A50](2);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1E6934A50](0);
    sub_1E5ABCCF8(&qword_1ED0266F8, MEMORY[0x1E6968A70]);
    sub_1E5ACFB48();
    (*(v3 + 8))(v6, v2);
  }

  v14 = type metadata accessor for SignOutState();
  v15 = *(v1 + *(v14 + 20));
  sub_1E5AD0398();
  v16 = *(v14 + 24);
  sub_1E5ACEEE8();
  sub_1E5ABCCF8(&qword_1ED027898, MEMORY[0x1E6969770]);
  return sub_1E5ACFB48();
}

uint64_t SignOutState.hashValue.getter()
{
  sub_1E5AD0378();
  SignOutState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t SignOutState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_1E5ACEEE8();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccountState();
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278A0, &qword_1E5AD6640);
  v31 = *(v34 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SignOutState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABCB94();
  sub_1E5AD03D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v31;
  v18 = v15;
  v19 = a1;
  v37 = 0;
  sub_1E5ABCCF8(&qword_1ED026A08, type metadata accessor for AccountState);
  v20 = v33;
  sub_1E5AD0288();
  sub_1E5A81F20(v20, v18);
  v36 = 1;
  v21 = sub_1E5AD0268();
  v33 = v12;
  *(v18 + *(v12 + 20)) = v21 & 1;
  v35 = 2;
  sub_1E5ABCCF8(qword_1ED026770, MEMORY[0x1E6969770]);
  v22 = v6;
  v23 = v18;
  v24 = v30;
  v25 = v34;
  sub_1E5AD0288();
  (*(v17 + 8))(v11, v25);
  (*(v28 + 32))(v23 + *(v33 + 6), v22, v24);
  sub_1E5ABCBE8(v23, v29, type metadata accessor for SignOutState);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E5ABCC50(v23, type metadata accessor for SignOutState);
}

uint64_t sub_1E5ABCA98()
{
  sub_1E5AD0378();
  SignOutState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABCADC()
{
  sub_1E5AD0378();
  SignOutState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABCB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v7 = *(a3 + 24);

    JUMPOUT(0x1E69335A0);
  }

  return 0;
}

unint64_t sub_1E5ABCB94()
{
  result = qword_1ED027890;
  if (!qword_1ED027890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027890);
  }

  return result;
}

uint64_t sub_1E5ABCBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5ABCC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5ABCCF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5ABCD68()
{
  result = type metadata accessor for AccountState();
  if (v1 <= 0x3F)
  {
    result = sub_1E5ACEEE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5ABCE08()
{
  result = qword_1ED0278B8;
  if (!qword_1ED0278B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278B8);
  }

  return result;
}

unint64_t sub_1E5ABCE60()
{
  result = qword_1ED0278C0;
  if (!qword_1ED0278C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278C0);
  }

  return result;
}

unint64_t sub_1E5ABCEB8()
{
  result = qword_1ED0278C8;
  if (!qword_1ED0278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278C8);
  }

  return result;
}

uint64_t sub_1E5ABCF0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5ABD048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001E5AE0DC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5ABD0DC(uint64_t a1)
{
  v2 = sub_1E5ABD4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABD118(uint64_t a1)
{
  v2 = sub_1E5ABD4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ABD154(uint64_t a1)
{
  v2 = sub_1E5ABD564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABD190(uint64_t a1)
{
  v2 = sub_1E5ABD564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicContentAction.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278D0, &qword_1E5AD6840);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for DynamicContentAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278D8, &unk_1E5AD6848);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABD4AC();
  sub_1E5AD03E8();
  sub_1E5ABD500(v18, v9);
  sub_1E5ABD564();
  sub_1E5AD02B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  sub_1E5A86630(&qword_1EE2FCA40);
  v16 = v19;
  sub_1E5AD0308();
  sub_1E5A9661C(v9);
  (*(v2 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for DynamicContentAction()
{
  result = qword_1EE2FD1A0;
  if (!qword_1EE2FD1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5ABD4AC()
{
  result = qword_1EE2FD208[0];
  if (!qword_1EE2FD208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2FD208);
  }

  return result;
}

uint64_t sub_1E5ABD500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5ABD564()
{
  result = qword_1EE2FD1F0;
  if (!qword_1EE2FD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1F0);
  }

  return result;
}

uint64_t DynamicContentAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for DynamicContentAction();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278E0, &qword_1E5AD6858);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278E8, &unk_1E5AD6860);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABD4AC();
  v15 = v35;
  sub_1E5AD03D8();
  if (v15)
  {
    goto LABEL_10;
  }

  v35 = a1;
  v17 = v28;
  v16 = v29;
  v18 = sub_1E5AD0298();
  v19 = (2 * *(v18 + 16)) | 1;
  v31 = v18;
  v32 = v18 + 32;
  v33 = 0;
  v34 = v19;
  v20 = v13;
  if ((sub_1E5A82BF8() & 1) != 0 || v33 != v34 >> 1)
  {
    v22 = sub_1E5AD00F8();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v24 = v27;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v30 + 8))(v20, v10);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_10:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_1E5ABD564();
  sub_1E5AD0228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  sub_1E5A86630(&qword_1ED026940);
  v27 = v13;
  sub_1E5AD0288();
  (*(v17 + 8))(v9, v6);
  (*(v30 + 8))(v27, v10);
  swift_unknownObjectRelease();
  sub_1E5ABD9B0(v5, v16);
  v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1E5ABD9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5ABDA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5ABDABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

void sub_1E5ABDB44(uint64_t a1)
{
  sub_1E5A86914();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

unint64_t sub_1E5ABDC0C()
{
  result = qword_1ED0278F0;
  if (!qword_1ED0278F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278F0);
  }

  return result;
}

unint64_t sub_1E5ABDC64()
{
  result = qword_1ED0278F8;
  if (!qword_1ED0278F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278F8);
  }

  return result;
}

unint64_t sub_1E5ABDCBC()
{
  result = qword_1EE2FD1E0;
  if (!qword_1EE2FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1E0);
  }

  return result;
}

unint64_t sub_1E5ABDD14()
{
  result = qword_1EE2FD1E8;
  if (!qword_1EE2FD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1E8);
  }

  return result;
}

unint64_t sub_1E5ABDD6C()
{
  result = qword_1EE2FD1F8;
  if (!qword_1EE2FD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1F8);
  }

  return result;
}

unint64_t sub_1E5ABDDC4()
{
  result = qword_1EE2FD200;
  if (!qword_1EE2FD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD200);
  }

  return result;
}

uint64_t sub_1E5ABDE44@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_1E5ACF3B8();
  v1 = *(v43 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - v5;
  v6 = sub_1E5ACF698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  sub_1E5ACF3A8();
  sub_1E5ACF8A8();
  sub_1E5ACF188();
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027910, &qword_1E5AD6BE0) + 36)];
  v19 = v49;
  *v18 = v48;
  *(v18 + 1) = v19;
  *(v18 + 2) = v50;
  v20 = sub_1E5ACF4E8();
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027918, &qword_1E5AD6BE8) + 36)] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027920, &qword_1E5AD6BF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E5AD6B30;
  v22 = *MEMORY[0x1E69814D8];
  v23 = *(v7 + 104);
  v23(v10, v22, v6);
  *(v21 + 32) = sub_1E5ACF6F8();
  v23(v10, v22, v6);
  *(v21 + 40) = sub_1E5ACF6F8();
  sub_1E5ACF918();
  sub_1E5ACF908();
  MEMORY[0x1E6933F60](v21);
  sub_1E5ACF1A8();
  v24 = v51;
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027928, &qword_1E5AD6BF8) + 36)];
  *v25 = v24;
  v26 = v52;
  *(v25 + 24) = v53;
  *(v25 + 8) = v26;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027930, &qword_1E5AD6C00) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v45 = 0;
  sub_1E5ACF788();
  v28 = v46;
  v29 = v47;
  v30 = &v17[*(v12 + 44)];
  *v30 = KeyPath;
  v30[8] = 0;
  v30[16] = v28;
  *(v30 + 3) = v29;
  v31 = v41;
  sub_1E5ACF3C8();
  v32 = v40;
  sub_1E5ABE364(v17, v40);
  v33 = v1[2];
  v35 = v42;
  v34 = v43;
  v33(v42, v31, v43);
  v36 = v44;
  sub_1E5ABE364(v32, v44);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027938, &qword_1E5AD6C38);
  v33((v36 + *(v37 + 48)), v35, v34);
  v38 = v1[1];
  v38(v31, v34);
  sub_1E5ABE3D4(v17);
  v38(v35, v34);
  return sub_1E5ABE3D4(v32);
}

uint64_t sub_1E5ABE30C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5ACF268();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027900, &qword_1E5AD6BD0);
  return sub_1E5ABDE44(a1 + *(v2 + 44));
}

uint64_t sub_1E5ABE364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5ABE3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5ABE43C()
{
  result = qword_1ED027940;
  if (!qword_1ED027940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027948, &qword_1E5AD6C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027940);
  }

  return result;
}

uint64_t sub_1E5ABE4A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6999B48];
  v3 = sub_1E5ACFA18();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

BOOL sub_1E5ABE518(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_1E5ABE540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1E6934A50](0);
  }

  return MEMORY[0x1E6934A50](v3);
}

uint64_t sub_1E5ABE580(uint64_t a1, char a2)
{
  sub_1E5AD0378();
  if (a2)
  {
    a1 = 1;
  }

  else
  {
    MEMORY[0x1E6934A50](0);
  }

  MEMORY[0x1E6934A50](a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABE5E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5ABE580(*v1, *(v1 + 8));
}

uint64_t sub_1E5ABE5F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5ABE540(a1, *v2, *(v2 + 8));
}

uint64_t sub_1E5ABE60C(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E5ABE540(v7, *v2, *(v2 + 8));
  return sub_1E5AD03C8();
}

BOOL sub_1E5ABE658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_1E5ABE518(*a1, *(a1 + 8), *a2, *(a2 + 8));
}

__n128 TabBarFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t TabBarFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = a4;
  v115 = a2;
  v108 = a3;
  v100 = a1;
  v101 = a5;
  v110 = *(a5 + 16);
  v6 = v110;
  v7 = type metadata accessor for TabBarAction();
  v106 = sub_1E5ACF968();
  v104 = *(v106 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v94 - v9;
  v111 = *(&v110 + 1);
  v109 = type metadata accessor for TabBarItemDescriptor();
  v10 = *(*(v109 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v109);
  v103 = &v94 - v12;
  v116 = v6;
  v113 = *(v6 - 8);
  v13 = *(v113 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v94 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v94 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v94 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v94 - v25;
  v27 = *(v7 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v24);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v94 - v32);
  v112 = *v5;
  v34 = *(v5 + 2);
  v35 = *(v5 + 3);
  v107 = v34;
  (*(v27 + 16))(&v94 - v32, v114, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v94 = v31;
    v95 = v27;
    v97 = v20;
    v98 = v17;
    v99 = v23;
    v114 = v35;
    v39 = v113;
    if (EnumCaseMultiPayload)
    {
      v87 = v113;
      v88 = v102;
      v89 = v116;
      v90 = (*(v113 + 32))(v102, v33, v116);
      v91 = v115;
      *&v121 = *v115;
      MEMORY[0x1EEE9AC00](v90);
      *(&v94 - 2) = v110;
      *(&v94 - 2) = v88;
      sub_1E5ACFD08();

      swift_getWitnessTable();
      sub_1E5ACFEB8();

      if ((BYTE8(v117) & 1) == 0)
      {
        v92 = v117;
        v117 = v112;
        v118 = v107;
        v119 = v114;
        v93 = v94;
        *v94 = v92;
        swift_storeEnumTagMultiPayload();
        TabBarFeature.reduce(localState:sharedState:sideEffects:action:)(v100, v91, v108, v93, v101);
        (*(v95 + 8))(v93, v7);
      }

      return (*(v87 + 8))(v88, v89);
    }

    else
    {
      v40 = *v33;
      v41 = v115;
      v42 = *v115;
      v43 = v103;
      v44 = v109;
      sub_1E5ACFD38();
      v45 = *(v39 + 32);
      v46 = &v43[*(v44 + 36)];
      v96 = v26;
      v47 = v116;
      v45(v26, v46, v116);
      v102 = v45;
      v48 = *(v41 + *(type metadata accessor for TabBarState() + 40));
      sub_1E5ACFD38();
      v49 = &v43[*(v44 + 36)];
      v50 = v99;
      v45(v99, v49, v47);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
      v109 = v51[12];
      v52 = v51[16];
      v115 = v51[20];
      v53 = v105;
      v103 = &v105[v51[24]];
      *&v117 = v40;
      BYTE8(v117) = 0;
      type metadata accessor for TabBarFeature.TaskIdentifier();
      swift_getWitnessTable();
      sub_1E5AD0218();
      v54 = *MEMORY[0x1E6999B50];
      v55 = sub_1E5ACFA28();
      (*(*(v55 - 8) + 104))(&v53[v52], v54, v55);
      v56 = v113;
      v57 = *(v113 + 16);
      v58 = v97;
      v57(v97, v96, v47);
      v59 = v98;
      v57(v98, v50, v47);
      v60 = *(v56 + 80);
      v61 = (v60 + 64) & ~v60;
      v62 = (v13 + v60 + v61) & ~v60;
      v63 = swift_allocObject();
      v64 = v112;
      *(v63 + 16) = v110;
      *(v63 + 32) = v64;
      v65 = v114;
      *(v63 + 48) = v107;
      *(v63 + 56) = v65;
      v66 = v102;
      (v102)(v63 + v61, v58, v47);
      (v66)(v63 + v62, v59, v47);
      v67 = v103;
      *v103 = &unk_1E5AD6C60;
      *(v67 + 1) = v63;

      sub_1E5ACFD88();
      v68 = *MEMORY[0x1E6999B48];
      v69 = sub_1E5ACFA18();
      (*(*(v69 - 8) + 104))(v115 + v53, v68, v69);
      (*(v104 + 104))(v53, *MEMORY[0x1E6999AD8], v106);
      sub_1E5ACFD08();
      sub_1E5ACFCE8();
      v70 = *(v113 + 8);
      v70(v99, v47);
      return (v70)(v96, v47);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v71 = *v33;
    v72 = v115;
    v122 = *v115;
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFE58();
    v121 = v117;
    v120 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
    result = sub_1E5ACFEF8();
    if (result)
    {
      result = type metadata accessor for TabBarState();
      v73 = *(result + 40);
      if (*(v72 + v73) == v71)
      {
        *(v72 + *(result + 44)) = 1;
      }

      else
      {
        *(v72 + v73) = v71;
      }
    }
  }

  else
  {
    v37 = v115;
    if (EnumCaseMultiPayload == 3)
    {
      result = type metadata accessor for TabBarState();
      *(v37 + *(result + 44)) = 0;
    }

    else
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
      v75 = v74[12];
      v76 = v74[16];
      v77 = v35;
      v78 = v74[20];
      v79 = v105;
      v80 = &v105[v74[24]];
      *&v117 = 0;
      BYTE8(v117) = 1;
      type metadata accessor for TabBarFeature.TaskIdentifier();
      swift_getWitnessTable();
      sub_1E5AD0218();
      v81 = *MEMORY[0x1E6999B50];
      v82 = sub_1E5ACFA28();
      (*(*(v82 - 8) + 104))(&v79[v76], v81, v82);
      v83 = swift_allocObject();
      v84 = v112;
      *(v83 + 16) = v110;
      *(v83 + 32) = v84;
      *(v83 + 48) = v107;
      *(v83 + 56) = v77;
      *v80 = &unk_1E5AD6C50;
      *(v80 + 1) = v83;

      sub_1E5ACFD88();
      v85 = *MEMORY[0x1E6999B48];
      v86 = sub_1E5ACFA18();
      (*(*(v86 - 8) + 104))(&v79[v78], v85, v86);
      (*(v104 + 104))(v79, *MEMORY[0x1E6999AD8], v106);
      sub_1E5ACFD08();
      return sub_1E5ACFCE8();
    }
  }

  return result;
}

uint64_t sub_1E5ABF1A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1E5ACFD78();
  v7[3] = sub_1E5ACFD68();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1E5A99744;

  return v14(a6, a7);
}

uint64_t sub_1E5ABF2D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E5ACFD78();
  v4[3] = sub_1E5ACFD68();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5ABF3E0;

  return v9();
}

uint64_t sub_1E5ABF3E0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5ACFD48();

  return MEMORY[0x1EEE6DFA0](sub_1E5ABF900, v5, v4);
}

uint64_t sub_1E5ABF51C(uint64_t a1)
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
  v10[1] = sub_1E5A9A14C;

  return sub_1E5ABF2D0(a1, v6, v7, v9);
}

uint64_t sub_1E5ABF5EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for TabBarItemDescriptor() + 36);
  v5 = *(*(v2 + 24) + 8);
  return sub_1E5ACFB78() & 1;
}

uint64_t sub_1E5ABF660(uint64_t a1)
{
  v3 = v1[3];
  v4 = *(*(v1[2] - 8) + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (*(*(v1[2] - 8) + 64) + v4 + v5) & ~v4;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5A96520;

  return sub_1E5ABF1A4(a1, v7, v8, v9, v10, v1 + v5, v1 + v6);
}

uint64_t sub_1E5ABF7F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5ABF858(uint64_t a1, int a2)
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

uint64_t sub_1E5ABF878(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5ABF8A8(uint64_t a1)
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

uint64_t sub_1E5ABF8C4(uint64_t result, int a2)
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

uint64_t sub_1E5ABF904()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027950, qword_1E5AD6E50);
  v5 = sub_1E5A8CEF0(&qword_1EE2FCA10, &qword_1ED027950, qword_1E5AD6E50);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t DynamicContentContainerView.init(store:contentViewBuilder:offlineContentViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = sub_1E5ABFAA4;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for DynamicContentContainerView();
  v11 = *(v10 + 52);

  v13 = a3(v12);
  v14 = a5 + *(v10 + 56);
  a4(v13);
}

uint64_t sub_1E5ABFAA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t DynamicContentContainerView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = *(a1 - 1);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v47 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - v6;
  *&v48 = a1[2];
  sub_1E5ACF318();
  *&v49 = a1[3];
  sub_1E5ACF318();
  sub_1E5ACF318();
  v7 = sub_1E5ACF718();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v9;
  v10 = a1[4];
  v71 = MEMORY[0x1E6981580];
  v72 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = a1[5];
  v69 = v10;
  v70 = v12;
  v13 = swift_getWitnessTable();
  v67 = WitnessTable;
  v68 = v13;
  v66 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v46 = v14;
  v45 = sub_1E5A8CEF0(&qword_1EE2FCA38, &unk_1ED027520, &qword_1E5AD24C0);
  v62 = v7;
  v63 = v4;
  v15 = v7;
  v64 = v14;
  v65 = v45;
  v50 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v51 + 64);
  v18 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v42 - v21;
  *&v22 = v48;
  *(&v22 + 1) = v49;
  v49 = v22;
  *&v23 = v10;
  *(&v23 + 1) = v12;
  v48 = v23;
  v59 = v22;
  v60 = v23;
  v24 = v53;
  v61 = v53;
  v25 = v44;
  sub_1E5ACF708();
  v26 = v24;
  sub_1E5ABF904();
  swift_getKeyPath();
  v27 = v52;
  sub_1E5ACFA48();

  v28 = v56;
  v29 = v55;
  (*(v56 + 16))(v55, v26, a1);
  v30 = v28;
  v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v48;
  *(v32 + 16) = v49;
  *(v32 + 32) = v33;
  (*(v30 + 32))(v32 + v31, v29, a1);
  v34 = v27;
  v35 = v47;
  v36 = v46;
  v37 = v45;
  sub_1E5ACF678();

  sub_1E5A9661C(v34);
  (*(v54 + 8))(v25, v15);
  v62 = v15;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v43;
  sub_1E5A9AA54(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v40 = *(v51 + 8);
  v40(v20, OpaqueTypeMetadata2);
  sub_1E5A9AA54(v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v40)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_1E5AC00C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a1;
  v88 = a6;
  v75 = *(a3 - 8);
  v10 = *(v75 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v71 - v13;
  v14 = sub_1E5ACF318();
  v77 = *(v14 - 8);
  v15 = *(v77 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v80 = &v71 - v19;
  v78 = *(a2 - 8);
  v20 = *(v78 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v71 - v23;
  v24 = sub_1E5ACF318();
  v81 = *(v24 - 8);
  v25 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v71 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v71 - v29;
  v85 = v14;
  v87 = sub_1E5ACF318();
  v86 = *(v87 - 8);
  v31 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v33 = &v71 - v32;
  v108[0] = a2;
  v108[1] = a3;
  v79 = a3;
  v34 = a4;
  v108[2] = a4;
  v108[3] = a5;
  v35 = a5;
  v36 = type metadata accessor for DynamicContentContainerView();
  sub_1E5ABF904();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = MEMORY[0x1E6981580];
  if (EnumCaseMultiPayload > 2)
  {
    v89 = sub_1E5ACF6B8();
    v108[0] = v89;
    v49 = v84;
    sub_1E5AA82CC(v108, MEMORY[0x1E69815C0]);
    v92 = v38;
    v93 = a4;
    swift_getWitnessTable();
    v90 = a4;
    v46 = v35;
    v91 = v35;
    swift_getWitnessTable();
    sub_1E5AA82CC(v49, v24);

    (*(v81 + 8))(v49, v24);
LABEL_11:
    v56 = v87;
    v62 = v86;
    goto LABEL_12;
  }

  v39 = v84;
  v74 = v33;
  v40 = v35;
  if (!EnumCaseMultiPayload)
  {
    if (*v30 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v50 = v89 + *(v36 + 56);
    v51 = v72;
    v52 = v79;
    v46 = v40;
    sub_1E5A9AA54(v50, v79, v40);
    v53 = v73;
    sub_1E5A9AA54(v51, v52, v40);
    v47 = v80;
    sub_1E5AAA2E8(v53, a2, v52);
    v54 = *(v75 + 8);
    v54(v53, v52);
    v54(v51, v52);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5A9661C(v30);
    v63 = v83;
    sub_1E5A9AA54(v89 + *(v36 + 52), a2, v34);
    v64 = v82;
    sub_1E5A9AA54(v63, a2, v34);
    v65 = v64;
    v38 = MEMORY[0x1E6981580];
    sub_1E5AAA2E8(v65, MEMORY[0x1E69815C0], a2);
    v96 = v38;
    v97 = v34;
    swift_getWitnessTable();
    v94 = v34;
    v95 = v35;
    v46 = v35;
    swift_getWitnessTable();
    v33 = v74;
    sub_1E5AA82CC(v39, v24);
    (*(v81 + 8))(v39, v24);
    v66 = *(v78 + 8);
    v66(v82, a2);
    v66(v83, a2);
    goto LABEL_11;
  }

  v41 = *v30;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
  v43 = sub_1E5ACEEA8();
  (*(*(v43 - 8) + 8))(&v30[v42], v43);
  if (v41 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v44 = v83;
  sub_1E5A9AA54(v89 + *(v36 + 52), a2, v34);
  v45 = v82;
  sub_1E5A9AA54(v44, a2, v34);
  v46 = v35;
  v47 = v80;
  sub_1E5AA82CC(v45, a2);
  v48 = *(v78 + 8);
  v48(v45, a2);
  v48(v44, a2);
LABEL_9:
  v55 = v85;
  v56 = v87;
  v106 = v34;
  v107 = v46;
  WitnessTable = swift_getWitnessTable();
  v58 = v76;
  sub_1E5A9AA54(v47, v55, WitnessTable);
  v104 = MEMORY[0x1E6981580];
  v105 = v34;
  swift_getWitnessTable();
  v59 = v47;
  v33 = v74;
  sub_1E5AAA2E8(v58, v24, v55);
  v60 = v59;
  v61 = *(v77 + 8);
  v61(v58, v55);
  v61(v60, v55);
  v38 = MEMORY[0x1E6981580];
  v62 = v86;
LABEL_12:
  v102 = v38;
  v103 = v34;
  v67 = swift_getWitnessTable();
  v100 = v34;
  v101 = v46;
  v68 = swift_getWitnessTable();
  v98 = v67;
  v99 = v68;
  v69 = swift_getWitnessTable();
  sub_1E5A9AA54(v33, v56, v69);
  return (*(v62 + 8))(v33, v56);
}

uint64_t sub_1E5AC0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for DynamicContentAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  type metadata accessor for DynamicContentContainerView();
  sub_1E5ABF904();
  sub_1E5A95F34(a2, v15);
  sub_1E5ACFA58();

  return sub_1E5AB3224(v15);
}

uint64_t sub_1E5AC0B60(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for DynamicContentContainerView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5AC0A84(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1E5AC0C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AC0C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AC0E88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t sub_1E5AC11B4()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x676E6974616F6C66;
  }
}

uint64_t sub_1E5AC11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E6974616F6C66 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5AD0348() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5AD0348();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5AC12C4(uint64_t a1)
{
  v2 = sub_1E5AC16DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC1300(uint64_t a1)
{
  v2 = sub_1E5AC16DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AC133C(uint64_t a1)
{
  v2 = sub_1E5AC1784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC1378(uint64_t a1)
{
  v2 = sub_1E5AC1784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AC13B4(uint64_t a1)
{
  v2 = sub_1E5AC1730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC13F0(uint64_t a1)
{
  v2 = sub_1E5AC1730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabBarStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027958, &qword_1E5AD6E70);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027960, &qword_1E5AD6E78);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027968, &qword_1E5AD6E80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC16DC();
  sub_1E5AD03E8();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E5AC1730();
    v18 = v22;
    sub_1E5AD02B8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E5AC1784();
    sub_1E5AD02B8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E5AC16DC()
{
  result = qword_1ED027970;
  if (!qword_1ED027970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027970);
  }

  return result;
}

unint64_t sub_1E5AC1730()
{
  result = qword_1ED027978;
  if (!qword_1ED027978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027978);
  }

  return result;
}

unint64_t sub_1E5AC1784()
{
  result = qword_1ED027980;
  if (!qword_1ED027980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027980);
  }

  return result;
}

uint64_t TabBarStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027988, &qword_1E5AD6E88);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027990, &qword_1E5AD6E90);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027998, &unk_1E5AD6E98);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC16DC();
  v16 = v36;
  sub_1E5AD03D8();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E5AD0298();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E5A82018();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E5AD00F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
      *v26 = &type metadata for TabBarStyle;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E5AC1730();
        sub_1E5AD0228();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E5AC1784();
        sub_1E5AD0228();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t TabBarStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

unint64_t sub_1E5AC1D3C()
{
  result = qword_1ED0279A0;
  if (!qword_1ED0279A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279A0);
  }

  return result;
}

unint64_t sub_1E5AC1DD4()
{
  result = qword_1ED0279A8;
  if (!qword_1ED0279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279A8);
  }

  return result;
}

unint64_t sub_1E5AC1E2C()
{
  result = qword_1ED0279B0;
  if (!qword_1ED0279B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279B0);
  }

  return result;
}

unint64_t sub_1E5AC1E84()
{
  result = qword_1ED0279B8;
  if (!qword_1ED0279B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279B8);
  }

  return result;
}

unint64_t sub_1E5AC1EDC()
{
  result = qword_1ED0279C0;
  if (!qword_1ED0279C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279C0);
  }

  return result;
}

unint64_t sub_1E5AC1F34()
{
  result = qword_1ED0279C8;
  if (!qword_1ED0279C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279C8);
  }

  return result;
}

unint64_t sub_1E5AC1F8C()
{
  result = qword_1ED0279D0;
  if (!qword_1ED0279D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279D0);
  }

  return result;
}

unint64_t sub_1E5AC1FE4()
{
  result = qword_1ED0279D8[0];
  if (!qword_1ED0279D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0279D8);
  }

  return result;
}

uint64_t SignOutEnvironment.init(fetchAccountState:makeAccountChangedStream:makeRemoteBrowsingIdentityUpdatedStream:signOut:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1E5AC2068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1E5AD0348();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1E5AC209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1E6934A50](0);
  }

  MEMORY[0x1E6934A50](1);

  return sub_1E5ACFBF8();
}

uint64_t sub_1E5AC210C(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  sub_1E5AC209C(v5, a1, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AC2174(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AC210C(*v1, v1[1]);
}

uint64_t sub_1E5AC2184(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5AC209C(a1, *v2, v2[1]);
}

uint64_t sub_1E5AC2194(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E5AC209C(v7, *v2, v2[1]);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AC21DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_1E5AC2068(*a1, a1[1], *a2, a2[1]);
}

__n128 SidebarModalitiesFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SidebarModalitiesFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a3;
  v53 = a2;
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v50 - v11;
  v13 = *(v12 + 24);
  v14 = type metadata accessor for SidebarModalitiesAction();
  v15 = sub_1E5ACF968();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v50 - v18;
  v20 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v50 - v21;
  v60 = *v5;
  v23 = *(v5 + 3);
  v55 = *(v5 + 2);
  v56 = v23;
  (*(v24 + 16))(v22, a4, v14);
  if ((*(v8 + 48))(v22, 1, v7) == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v26 = v25[12];
    v27 = v25[16];
    v28 = v25[20];
    v29 = &v19[v25[24]];
    type metadata accessor for SidebarModalitiesFeature.TaskIdentifier();
    v61 = 0;
    v62 = 0;
    swift_getWitnessTable();
    sub_1E5AD0218();
    v30 = *MEMORY[0x1E6999B50];
    v31 = sub_1E5ACFA28();
    (*(*(v31 - 8) + 104))(&v19[v27], v30, v31);
    v32 = swift_allocObject();
    *&v33 = v7;
    *(&v33 + 1) = v13;
    v34 = v60;
    *(v32 + 16) = v33;
    *(v32 + 32) = v34;
    v35 = v56;
    *(v32 + 48) = v55;
    *(v32 + 56) = v35;
    *v29 = &unk_1E5AD72D0;
    *(v29 + 1) = v32;

    sub_1E5ABE4A0();
    sub_1E5ABE4A4(&v19[v28]);
    (*(v57 + 104))(v19, *MEMORY[0x1E6999AD8], v58);
    sub_1E5ACFD08();
    return sub_1E5ACFCE8();
  }

  else
  {
    v37 = *(v8 + 32);
    v50[2] = v8 + 32;
    v51 = v37;
    v38 = v52;
    v37(v52, v22, v7);
    *(v53 + *(type metadata accessor for SidebarModalitiesState() + 44)) = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v40 = v39[12];
    v41 = v39[16];
    v53 = v39[20];
    v50[0] = &v19[v39[24]];
    v50[1] = v40;
    v61 = (*(v13 + 56))(v7, v13);
    v62 = v42;
    type metadata accessor for SidebarModalitiesFeature.TaskIdentifier();
    swift_getWitnessTable();
    sub_1E5AD0218();

    v43 = *MEMORY[0x1E6999B50];
    v44 = sub_1E5ACFA28();
    (*(*(v44 - 8) + 104))(&v19[v41], v43, v44);
    v45 = v54;
    (*(v8 + 16))(v54, v38, v7);
    v46 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v7;
    *(v47 + 24) = v13;
    *(v47 + 32) = v60;
    v48 = v56;
    *(v47 + 48) = v55;
    *(v47 + 56) = v48;
    v51(v47 + v46, v45, v7);
    v49 = v50[0];
    *v50[0] = &unk_1E5AD72C0;
    *(v49 + 8) = v47;

    sub_1E5ABE4A0();
    sub_1E5ABE4A4(&v19[v53]);
    (*(v57 + 104))(v19, *MEMORY[0x1E6999AD8], v58);
    sub_1E5ACFD08();
    sub_1E5ACFCE8();
    return (*(v8 + 8))(v38, v7);
  }
}

uint64_t sub_1E5AC2804(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5ACFD78();
  v2[3] = sub_1E5ACFD68();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E5ABF3E0;

  return v7();
}

uint64_t sub_1E5AC2914(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5ACFD78();
  v6[3] = sub_1E5ACFD68();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_1E5A99744;

  return v12(a6);
}

uint64_t sub_1E5AC2A30(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5A96520;

  return sub_1E5AC2914(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1E5AC2B3C(uint64_t a1)
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
  v10[1] = sub_1E5A9A14C;

  return sub_1E5AC2804(a1, v6);
}

uint64_t sub_1E5AC2C70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AC2CAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E5AC2CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5AC2D50(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5AC2D68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5AC2DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*TabBarState.selectedIndex.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*TabBarState.shouldScrollToOrigin.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1E5AC2EA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F437478654E7075 && a2 == 0xEB00000000746E75 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED00007865646E49 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5AE0DE0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E5AC3068(unsigned __int8 a1)
{
  v1 = 0x7470697263736564;
  v2 = 0x64657463656C6573;
  v3 = 0xD000000000000014;
  if (a1 != 3)
  {
    v3 = 0x656C61636F6CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F437478654E7075;
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

uint64_t sub_1E5AC3120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AC3068(*v1);
}

uint64_t sub_1E5AC312C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AC2EA4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5AC315C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AC31B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarState.encode(to:)(void *a1, uint64_t a2)
{
  v20[0] = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for TabBarState.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5AD0318();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5;
  v11 = v20[1];
  sub_1E5AD03E8();
  v25 = *v11;
  v24 = 0;
  type metadata accessor for TabBarItemDescriptor();
  sub_1E5ACFD08();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = v22;
  sub_1E5AD0308();
  if (v12)
  {
    return (*(v21 + 8))(v8, v10);
  }

  v14 = v21;
  v15 = v20[0];
  v16 = *(v20[0] + 36);
  LOBYTE(v25) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  sub_1E5AC3AA8(&qword_1ED027A68);
  sub_1E5AD0308();
  v17 = *(v11 + v15[10]);
  LOBYTE(v25) = 2;
  sub_1E5AD02F8();
  v18 = *(v11 + v15[11]);
  LOBYTE(v25) = 3;
  sub_1E5AD02E8();
  v19 = v15[12];
  LOBYTE(v25) = 4;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768);
  sub_1E5AD0308();
  return (*(v14 + 8))(v8, v10);
}
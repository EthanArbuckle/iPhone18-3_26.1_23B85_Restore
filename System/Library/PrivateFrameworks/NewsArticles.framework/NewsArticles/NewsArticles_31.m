uint64_t sub_1D7CABDD4(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56) + ((v7 << 11) | (32 * v8));
    if (v6 <= *(v9 + 8))
    {
      v6 = *(v9 + 8);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CABE74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7C18E30(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7CABF08(void *a1, char *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a1[1];
    v6 = *a2;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C778(0, v3, 0);
    v4 = v14;
    v7 = (v2 + 40);
    do
    {
      v8 = *v7;
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      v11 = *(v7 - 1);

      if (v10 >= v9 >> 1)
      {
        sub_1D7A5C778((v9 > 1), v10 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v10 + 1;
      v12 = v14 + 32 * v10;
      *(v12 + 32) = v11;
      *(v12 + 40) = v8;
      *(v12 + 48) = v6;
      *(v12 + 56) = v5;
      --v3;
    }

    while (v3);
  }

  return sub_1D79E315C(v4);
}

id sub_1D7CAC018(void *a1)
{
  v2 = v1;
  v3 = 0;
  v122 = MEMORY[0x1E69E7CC0];
  v123 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
  v5 = 3;
  do
  {
    v6 = byte_1F529AFD8[v3 + 32];
    swift_beginAccess();
    v7 = *(v2 + v4);
    if (!*(v7 + 16))
    {
      goto LABEL_15;
    }

    v8 = sub_1D7A5B954(v6);
    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }

    v10 = *(*(v7 + 56) + 32 * v8);

    swift_unknownObjectRetain();
    if (!v10)
    {
      v2 = v119;
LABEL_15:
      sub_1D7CADB34(0);
      swift_endAccess();
      goto LABEL_3;
    }

    swift_endAccess();
    sub_1D7CADB34(v10);
    v11 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      MEMORY[0x1DA70E080]();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
    }

    v12 = *(v10 + 16);
    if (v12)
    {
      v121[0] = v11;

      sub_1D7D3156C();
      v13 = 32;
      do
      {
        v14 = *(v10 + v13);
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        v13 += 16;
        --v12;
      }

      while (v12);

      v15 = v121[0];
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = v11;
    }

    sub_1D79E2C7C(v15);
    v16 = 0;
    v121[0] = v11;
    v17 = *(v10 + 16);
    v18 = v11;
LABEL_19:
    v19 = 16 * v16 + 40;
    while (v17 != v16)
    {
      if (v16 >= *(v10 + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        result = sub_1D7D3167C();
        v107 = result;
        if (!result)
        {
LABEL_84:
        }

LABEL_81:
        if (v107 >= 1)
        {
          v108 = 32;
          do
          {

            sub_1D7D2A65C();

            v108 += 8;
            --v107;
          }

          while (v107);
          goto LABEL_84;
        }

        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v20 = *(v10 + v19);
      v19 += 16;
      ++v16;
      if (v20)
      {

        MEMORY[0x1DA70E080](v21);
        if (*((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        v18 = v121[0];
        goto LABEL_19;
      }
    }

    sub_1D79E3250(v18);
    v5 = v6;
    v2 = v119;
LABEL_3:
    ++v3;
  }

  while (v3 != 3);
  if (v5 <= 1u)
  {
    [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    MEMORY[0x1DA70E080]();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();
  }

  v22 = [a1 navigationController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 toolbar];

    if (v24)
    {
      sub_1D7D2B12C();
      if (swift_dynamicCastClass())
      {

        v26 = sub_1D7CAD438(v25);

        if (v26)
        {
          v27 = [objc_opt_self() currentDevice];
          [v27 userInterfaceIdiom];

          v2 = v119;
        }

        sub_1D7D2B11C();
      }
    }
  }

  sub_1D7992EFC(0, &qword_1EE0BF050);
  v28 = sub_1D7D3062C();
  [a1 setToolbarItems_];

  v29 = [a1 navigationController];
  if (v29)
  {
    v30 = v29;
    result = [v29 toolbar];
    if (!result)
    {
      goto LABEL_93;
    }

    v32 = result;
    [result layoutIfNeeded];

    v111 = v30;
    result = [v30 toolbar];
    if (result)
    {
      v33 = result;
      [result frame];
      v109 = v35;
      v110 = v34;

      v36 = 0;
      v37 = *MEMORY[0x1E695F050];
      v38 = *(MEMORY[0x1E695F050] + 8);
      v39 = MEMORY[0x1E69E7CC8];
      v40 = *(MEMORY[0x1E695F050] + 16);
      v41 = *(MEMORY[0x1E695F050] + 24);
      while (1)
      {
        v42 = byte_1F529B000[v36 + 32];
        swift_beginAccess();
        v43 = *(v2 + v4);
        if (!*(v43 + 16))
        {
          goto LABEL_41;
        }

        v44 = sub_1D7A5B954(v42);
        if ((v45 & 1) == 0)
        {
          goto LABEL_41;
        }

        v46 = *(*(v43 + 56) + 32 * v44);

        swift_unknownObjectRetain();
        if (!v46)
        {
          break;
        }

        v113 = v42;
        v117 = v39;

        swift_endAccess();
        sub_1D7CADB34(v46);
        v47 = *(v46 + 16);
        if (v47)
        {
          v48 = 0;
          v49 = v46 + 40;
          v50 = MEMORY[0x1E69E7CC0];
LABEL_48:
          v114 = v50;
          v51 = v49 + 16 * v48;
          v52 = v48;
          while (v52 < *(v46 + 16))
          {
            v48 = v52 + 1;
            v53 = *(v51 - 8);

            v54 = v53;
            v55 = [v54 ts_barButtonItemView];
            if (v55)
            {
              v56 = v55;
              [v55 bounds];
              v58 = v57;
              v60 = v59;
              v62 = v61;
              v64 = v63;
              v65 = [v111 toolbar];
              [v56 convertRect:v65 toView:{v58, v60, v62, v64}];
              v67 = v66;
              v69 = v68;
              v71 = v70;
              v73 = v72;

              v74 = v114;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v74 = sub_1D79E5998(0, *(v114 + 2) + 1, 1, v114);
              }

              v75 = v74;
              v76 = *(v74 + 2);
              v77 = v75;
              v78 = *(v75 + 3);
              if (v76 >= v78 >> 1)
              {
                v77 = sub_1D79E5998((v78 > 1), v76 + 1, 1, v77);
              }

              *(v77 + 2) = v76 + 1;
              v79 = &v77[32 * v76];
              v50 = v77;
              *(v79 + 4) = v67;
              *(v79 + 5) = v69;
              *(v79 + 6) = v71;
              *(v79 + 7) = v73;
              v49 = v46 + 40;
              if (v47 - 1 != v52)
              {
                goto LABEL_48;
              }

              goto LABEL_61;
            }

            v51 += 16;
            ++v52;
            if (v47 == v48)
            {
              v50 = v114;
              goto LABEL_61;
            }
          }

          goto LABEL_88;
        }

        v50 = MEMORY[0x1E69E7CC0];
LABEL_61:

        v80 = *(v50 + 2);
        v81 = v37;
        v82 = v38;
        v83 = v40;
        v84 = v41;
        if (v80)
        {
          v85 = v50 + 56;
          v81 = v37;
          v82 = v38;
          v83 = v40;
          v84 = v41;
          do
          {
            *&v81 = CGRectUnion(*&v81, *(v85 - 24));
            v85 += 32;
            --v80;
          }

          while (v80);
        }

        v86 = v81;
        v87 = v82;
        v88 = v84;
        v89 = v83;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v117;
        sub_1D7B962A4(v113, isUniquelyReferenced_nonNull_native, v86, v87, v89, v88);
        v39 = v117;
        v2 = v119;
LABEL_42:
        if (++v36 == 3)
        {
          v91 = *(v2 + v4);
          v92 = v91 + 64;
          v93 = 1 << *(v91 + 32);
          v94 = -1;
          if (v93 < 64)
          {
            v94 = ~(-1 << v93);
          }

          v95 = v94 & *(v91 + 64);
          v96 = (v93 + 63) >> 6;

          v97 = 0;
          v118 = v39;
          v112 = v91;
          while (v95)
          {
LABEL_75:
            v101 = (*(v91 + 56) + ((v97 << 11) | (32 * __clz(__rbit64(v95)))));
            v102 = *v101;
            v115 = v101[3];
            v121[0] = v110;
            v121[1] = v109;
            v121[2] = v39;
            v103 = *(v102 + 16);
            if (v103)
            {
              v120 = MEMORY[0x1E69E7CC0];

              swift_unknownObjectRetain_n();

              sub_1D7D3156C();
              v104 = (v102 + 32);
              do
              {
                v105 = *v104;
                v104 += 2;
                v106 = v105;
                sub_1D7D3153C();
                sub_1D7D3157C();
                sub_1D7D3158C();
                sub_1D7D3154C();
                --v103;
              }

              while (v103);
              v98 = v120;
              v39 = v118;
              v91 = v112;
            }

            else
            {

              swift_unknownObjectRetain_n();

              v98 = MEMORY[0x1E69E7CC0];
            }

            v95 &= v95 - 1;
            ObjectType = swift_getObjectType();
            (*(v115 + 48))(v121, v98, ObjectType);

            swift_unknownObjectRelease_n();
          }

          while (1)
          {
            v100 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              goto LABEL_89;
            }

            if (v100 >= v96)
            {

              if (v122 >> 62)
              {
                goto LABEL_90;
              }

              v107 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v107)
              {
                goto LABEL_84;
              }

              goto LABEL_81;
            }

            v95 = *(v92 + 8 * v100);
            ++v97;
            if (v95)
            {
              v97 = v100;
              goto LABEL_75;
            }
          }
        }
      }

      v2 = v119;
LABEL_41:
      sub_1D7CADB34(0);
      swift_endAccess();
      goto LABEL_42;
    }

LABEL_94:
    __break(1u);
  }

  else
  {
  }

  return result;
}

id sub_1D7CACB4C(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_1D7CAC018(a3);
  if (*(a4 + 16))
  {
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setAnimationDuration_];
    v9 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v10) = 1036831949;
    LODWORD(v11) = 0.25;
    LODWORD(v12) = 0.75;
    LODWORD(v13) = 1.0;
    v14 = [v9 initWithControlPoints__:v11 :{v10, v12, v13}];
    [v8 setAnimationTimingFunction_];

    [v8 setCompletionBlock_];
    sub_1D7CACC68(a4, a3, a1);

    return [v8 commit];
  }

  return result;
}

void sub_1D7CACC68(uint64_t a1, void *a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v27 = *MEMORY[0x1E69797E8];
  for (i = (a1 + 56); ; i += 4)
  {
    v7 = *(i - 8);
    v8 = *i;
    v9 = *(i - 3);

    v10 = v9;
    v11 = [v10 ts_barButtonItemView];
    if (v11)
    {
      break;
    }

LABEL_4:
    if (!--v3)
    {
      return;
    }
  }

  v12 = v11;
  if ((v7 & 1) == 0)
  {
    v17 = sub_1D7D3031C();
    v18 = [objc_opt_self() animationWithKeyPath_];

    [v18 setFillMode_];
    v19 = sub_1D7D28A4C();
    [v18 setFromValue_];

    v20 = sub_1D7D28A4C();
    [v18 setToValue_];

    v21 = [v12 layer];
    v22 = sub_1D7D3031C();
    [v21 addAnimation:v18 forKey:v22];

    goto LABEL_4;
  }

  v13 = [a2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 toolbar];

    if (!v15)
    {
      goto LABEL_24;
    }

    [v15 transform];
    ty = v28.ty;

    if (ty == 0.0)
    {
      sub_1D7A7AE48(1);
LABEL_18:

      goto LABEL_4;
    }
  }

  v23 = [v12 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v24 = sub_1D7D3063C();

  if (v24 >> 62)
  {
    if (!sub_1D7D3167C())
    {
LABEL_20:

      goto LABEL_4;
    }
  }

  else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1DA70EF00](0, v24);
    goto LABEL_17;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_17:
    v26 = v25;

    CGAffineTransformMakeTranslation(&v28, 0.0, v8 + a3);
    [v26 setTransform_];

    goto LABEL_18;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1D7CACFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = *MEMORY[0x1E69797E8];
    v2 = a1 + 56;
    do
    {
      v3 = *(v2 - 24);
      v4 = *(v2 - 8);

      v5 = v3;
      v6 = [v5 ts_barButtonItemView];
      if (v6)
      {
        v7 = v6;
        if (v4)
        {
          v8 = [v6 layer];
          v9 = sub_1D7D3031C();
          v10 = [v8 animationForKey_];

          if (v10)
          {
          }

          else
          {
            v18 = sub_1D7D3031C();
            v19 = [objc_opt_self() animationWithKeyPath_];

            [v19 setDamping_];
            [v19 setStiffness_];
            [v19 setMass_];
            [v19 setInitialVelocity_];
            v20 = [v7 layer];
            [v20 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

            v10 = v19;
            v21 = sub_1D7D309DC();
            [v10 setFromValue_];

            v22 = sub_1D7D28A4C();
            [v10 setToValue_];

            v23 = [v7 layer];
            v24 = sub_1D7D3031C();
            [v23 addAnimation:v10 forKey:v24];

            v25 = [v7 layer];
            [v25 position];
            [v25 setPosition_];
          }

          v5 = v10;
        }

        else
        {
          v11 = sub_1D7D3031C();
          v12 = [objc_opt_self() animationWithKeyPath_];

          v13 = v12;
          [v13 setFillMode_];
          v14 = sub_1D7D28A4C();
          [v13 setFromValue_];

          v15 = sub_1D7D28A4C();
          [v13 setToValue_];

          [v13 setRemovedOnCompletion_];
          v16 = [v7 layer];
          v17 = sub_1D7D3031C();
          [v16 addAnimation:v13 forKey:v17];

          v5 = v17;
        }
      }

      else
      {
      }

      v2 += 32;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1D7CAD438(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = a1 + 64;
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(a1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    while (v4)
    {
      v8 = v7;
LABEL_11:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(a1 + 56) + ((v8 << 11) | (32 * v9)) + 24);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);

      swift_unknownObjectRetain();
      LOBYTE(v10) = v12(ObjectType, v10);
      swift_unknownObjectRelease();

      if ((v10 & 1) == 0)
      {
        v13 = 0;
LABEL_14:

        return v13;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v13 = 1;
        goto LABEL_14;
      }

      v4 = *(v1 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D7CAD59C()
{
  sub_1D7CADAAC(v0 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_currentPage, sub_1D7AEC644);

  sub_1D79C92AC(v0 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CAD654(uint64_t a1, char *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a3;
  v24 = *a3;
  *a3 = 0x8000000000000000;
  v12 = sub_1D7A5B954(v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    v10 = sub_1D79E569C(0, v10[2] + 1, 1, v10);
    a3[v12] = v10;
    goto LABEL_10;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7B97FE8();
      v10 = v24;
    }
  }

  else
  {
    sub_1D7B93400(v15, isUniquelyReferenced_nonNull_native);
    v10 = v24;
    v17 = sub_1D7A5B954(v8);
    if ((v16 & 1) != (v18 & 1))
    {
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }

    v12 = v17;
  }

  *a3 = v10;
  if ((v16 & 1) == 0)
  {
    sub_1D7B9695C(v12, v8, MEMORY[0x1E69E7CC0], v10);
  }

  a3 = v10[7];
  v10 = a3[v12];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  a3[v12] = v10;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = v10[2];
  v20 = v10[3];
  if (v21 >= v20 >> 1)
  {
    v10 = sub_1D79E569C((v20 > 1), v21 + 1, 1, v10);
    a3[v12] = v10;
  }

  v10[2] = v21 + 1;
  v22 = &v10[2 * v21];
  v22[4] = a1;
  v22[5] = a5;

  return swift_unknownObjectRetain();
}

unint64_t sub_1D7CAD800()
{
  result = qword_1EE0BDCE0;
  if (!qword_1EE0BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDCE0);
  }

  return result;
}

unint64_t sub_1D7CAD858()
{
  result = qword_1EC9E8168;
  if (!qword_1EC9E8168)
  {
    sub_1D7CAD8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8168);
  }

  return result;
}

void sub_1D7CAD8B0()
{
  if (!qword_1EC9E8170)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8170);
    }
  }
}

uint64_t type metadata accessor for ArticleViewerToolbarFeatureManager()
{
  result = qword_1EE0C2648;
  if (!qword_1EE0C2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CAD974()
{
  sub_1D7AEC644(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7CADA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CADAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7CADB34(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7CADB74()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t type metadata accessor for RecommendedEndOfArticleFeedGroup()
{
  result = qword_1EE0C30C8;
  if (!qword_1EE0C30C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RecommendedEndOfArticleFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t RecommendedEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecommendedEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecommendedEndOfArticleFeedGroup() + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecommendedEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecommendedEndOfArticleFeedGroup() + 24);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D7CADE64(uint64_t a1)
{
  v2 = sub_1D7CADFCC(&qword_1EC9E8188);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7CADFCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecommendedEndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EndOfArticleModel.headline.getter()
{
  v1 = sub_1D7D2D5CC();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8();
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2ED3C();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v19 = &v23[*(v24 + 48)];
    v25 = v31;
    (*(v31 + 32))(v9, v23, v6);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2D5BC();
    (*(v32 + 8))(v4, v33);
    (*(v25 + 8))(v9, v6);
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2ED1C();
    (*(v29 + 8))(v13, v30);
  }

  (*(v16 + 8))(v19, v15);
  return v26;
}

uint64_t type metadata accessor for EndOfArticleModel()
{
  result = qword_1EE0C97C8;
  if (!qword_1EE0C97C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CAE3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EndOfArticleModel.hashValue.getter()
{
  sub_1D7D31A8C();
  type metadata accessor for EndOfArticleModel();
  sub_1D7CB2B90(&qword_1EE0C97E8, type metadata accessor for EndOfArticleModel);
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t EndOfArticleModel.identifier.getter()
{
  v1 = v0;
  sub_1D7A57AE8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v13 = &v17[*(v18 + 48)];
    (*(v4 + 32))(v7, v17, v3);
    v19 = sub_1D7D2EBAC();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v19 = sub_1D7D2EBAC();
  }

  (*(v10 + 8))(v13, v9);
  return v19;
}

uint64_t sub_1D7CAE718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7CB2B90(&unk_1EE0C9808, type metadata accessor for EndOfArticleModel);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

NewsArticles::EndOfArticleModel::Features __swiftcall EndOfArticleModel.Features.init(allowFollowing:userHasAccess:)(Swift::Bool allowFollowing, Swift::Bool userHasAccess)
{
  *v2 = allowFollowing;
  v2[1] = userHasAccess;
  result.allowFollowing = allowFollowing;
  return result;
}

uint64_t EndOfArticleModel.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D7D2C5EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t EndOfArticleModel.keyCommands.getter()
{
  sub_1D7A57AE8();
  v83 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v80 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2F73C();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v81 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v78 = v69 - v11;
  v12 = sub_1D7D2ED3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v79 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v69 - v24;
  v26 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v26, v27);
  v77 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v69 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v69 - v35;
  v82 = v0;
  v37 = v0;
  v39 = v38;
  sub_1D7CAE3D8(v37, v69 - v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    (*(v19 + 8))(&v36[*(v40 + 48)], v18);
    (*(v2 + 8))(v36, v83);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v75 = v2;
    v42 = *(v19 + 32);
    v69[1] = v19 + 32;
    v70 = v42;
    v42(v25, v36, v18);
    sub_1D7D2EBCC();
    sub_1D7D2ED1C();
    (*(v13 + 8))(v16, v12);
    sub_1D7CB29C4(0, &qword_1EC9E8190, MEMORY[0x1E69D77E0], MEMORY[0x1E69E6F90]);
    v43 = *(sub_1D7D2A11C() - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v71 = *(v43 + 72);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7D3C680;
    v72 = v45;
    v76 = v45 + v44;
    sub_1D7CAE3D8(v82, v32);
    v73 = v39;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v19;
    v74 = v25;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7A57A74();
      v49 = &v32[*(v48 + 48)];
      v50 = v75;
      v51 = v80;
      v52 = v83;
      (*(v75 + 32))(v80, v32, v83);
      sub_1D7D2EBAC();
      v53 = v51;
      v47 = v19;
      (*(v50 + 8))(v53, v52);
      v54 = v84;
      v55 = v18;
      v56 = v79;
    }

    else
    {
      v56 = v79;
      v70(v79, v32, v18);
      sub_1D7D2EBAC();
      v49 = v56;
      v54 = v84;
      v55 = v18;
    }

    v57 = *(v47 + 8);
    v79 = (v47 + 8);
    v57(v49, v55);
    swift_unknownObjectRetain();
    v58 = v78;
    sub_1D7D2F72C();
    sub_1D7D2A0CC();
    v59 = *(v85 + 8);
    v85 += 8;
    v59(v58, v54);
    v60 = v77;
    sub_1D7CAE3D8(v82, v77);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7A57A74();
      v62 = v60 + *(v61 + 48);
      v63 = v55;
      v64 = v75;
      v65 = v80;
      v66 = v83;
      (*(v75 + 32))(v80, v60, v83);
      sub_1D7D2EBAC();
      (*(v64 + 8))(v65, v66);
      v55 = v63;
      v56 = v62;
    }

    else
    {
      v70(v56, v60, v55);
      sub_1D7D2EBAC();
    }

    v67 = v74;
    v57(v56, v55);
    swift_unknownObjectRetain();
    v68 = v81;
    sub_1D7D2F72C();
    sub_1D7D2A0FC();
    v59(v68, v84);
    sub_1D7D2A0EC();
    swift_unknownObjectRelease();
    v57(v67, v55);
    return v72;
  }
}

uint64_t sub_1D7CAF01C@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v6, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v13 = *(v12 + 48);
    sub_1D7A57998();
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
    sub_1D7A57AE8();
    (*(*(v15 - 8) + 8))(v11, v15);
  }

  else
  {
    sub_1D7CB2948(v11);
  }

  v16 = *a1;
  v17 = a2(0);
  return (*(*(v17 - 8) + 104))(a3, v16, v17);
}

uint64_t sub_1D7CAF1B4@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](v4, a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v10, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v12 = *(v11 + 48);
    sub_1D7A57998();
    (*(*(v13 - 8) + 8))(&v9[v12], v13);
    sub_1D7A57AE8();
    (*(*(v14 - 8) + 8))(v9, v14);
  }

  else
  {
    sub_1D7CB2948(v9);
  }

  v15 = *a2;
  v16 = a3(0);
  return (*(*(v16 - 8) + 104))(a4, v15, v16);
}

uint64_t EndOfArticleModel.feedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_1D7D2ECFC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v66 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D7D2EB4C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v4);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D7CB29C4(0, &unk_1EE0BF9F8, MEMORY[0x1E69B58F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = v59 - v9;
  sub_1D7CB29C4(0, &unk_1EE0BF9D0, MEMORY[0x1E69B59B8], v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v61 = v59 - v12;
  sub_1D7CB29C4(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v70 = v59 - v15;
  v60 = sub_1D7D2D5CC();
  v16 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v17);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v59 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v59 - v26;
  sub_1D7A57AE8();
  v29 = v28;
  v67 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v69 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v68, v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v68 = *(v42 + 48);
    (*(v67 + 32))(v32, v41, v29);
    v43 = sub_1D7D2EBCC();
    v44 = MEMORY[0x1DA70B000](v43);
    v59[2] = v45;
    v59[3] = v44;
    v46 = *(v16 + 8);
    v47 = v27;
    v48 = v60;
    v46(v47, v60);
    sub_1D7D2EBCC();
    v59[1] = sub_1D7D2D5BC();
    v46(v23, v48);
    sub_1D7D2EBCC();
    sub_1D7D2D5AC();
    v46(v19, v48);
    v49 = sub_1D7D2E11C();
    (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
    v50 = sub_1D7D2DEAC();
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    (*(v63 + 104))(v64, *MEMORY[0x1E69B5E08], v65);
    sub_1D7D2ECEC();
    v51 = v71;
    sub_1D7D2ECAC();
    (*(v67 + 8))(v32, v29);
    v52 = *MEMORY[0x1E69B5E70];
    v53 = sub_1D7D2EB6C();
    (*(*(v53 - 8) + 104))(v51, v52, v53);
    return (*(v34 + 8))(&v41[v68], v69);
  }

  else
  {
    v55 = v69;
    (*(v34 + 32))(v37, v41, v69);
    v56 = v71;
    sub_1D7D2EBCC();
    (*(v34 + 8))(v37, v55);
    v57 = *MEMORY[0x1E69B5E70];
    v58 = sub_1D7D2EB6C();
    return (*(*(v58 - 8) + 104))(v56, v57, v58);
  }
}

uint64_t EndOfArticleModel.feedContextIdentifier.getter()
{
  v1 = sub_1D7D2EB6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v11 = *(v10 + 48);
    sub_1D7A57998();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
    sub_1D7A57AE8();
    (*(*(v13 - 8) + 8))(v9, v13);
  }

  else
  {
    sub_1D7CB2948(v9);
  }

  EndOfArticleModel.feedItem.getter(v5);
  v14 = sub_1D7D2EB5C();
  (*(v2 + 8))(v5, v1);
  return v14;
}

uint64_t sub_1D7CAFC20()
{
  v1 = sub_1D7D2EB6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v11 = *(v10 + 48);
    sub_1D7A57998();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
    sub_1D7A57AE8();
    (*(*(v13 - 8) + 8))(v9, v13);
  }

  else
  {
    sub_1D7CB2948(v9);
  }

  EndOfArticleModel.feedItem.getter(v5);
  v14 = sub_1D7D2EB5C();
  (*(v2 + 8))(v5, v1);
  return v14;
}

uint64_t EndOfArticleModel.contextMenu.getter()
{
  v0 = sub_1D7D29C6C();
  v80 = *(v0 - 8);
  v81 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = (&v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D7D29C7C();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v67 - v9;
  v10 = sub_1D7D2D5CC();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8();
  v15 = v14;
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2ED3C();
  v67 = *(v19 - 8);
  v68 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v24 = v23;
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v67 - v34;
  sub_1D7CAE3D8(v82, &v67 - v34);
  v77 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v69 = v15;
  v78 = v18;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7A57A74();
    v68 = *(v37 + 48);
    v38 = v79;
    (*(v79 + 32))(v18, v35, v15);
    sub_1D7D2EBCC();
    v39 = v15;
    v40 = sub_1D7D2D5BC();
    v75[1](v13, v76);
    (*(v38 + 8))(v18, v39);
    v41 = v74;
    v42 = *(v74 + 8);
    swift_unknownObjectRetain();
    v43 = &v35[v68];
    v68 = v24;
    v75 = v42;
    (v42)(v43, v24);
    v85 = MEMORY[0x1E69E7CD0];
    LODWORD(v76) = 1;
LABEL_5:
    v45 = v71;
    v44 = v72;
    v46 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x1E69B5780], v73);
    v47 = v70;
    sub_1D7B3DEA4(v70, v45);
    (*(v44 + 8))(v47, v46);
    v48 = 1;
    v24 = v68;
    goto LABEL_7;
  }

  v41 = v74;
  (*(v74 + 32))(v27, v35, v24);
  sub_1D7D2EBCC();
  v40 = sub_1D7D2ED1C();
  (*(v67 + 8))(v22, v68);
  swift_unknownObjectRetain();
  sub_1D7D2EBEC();
  v75 = *(v41 + 8);
  (v75)(v27, v24);
  LODWORD(v76) = v83;
  v85 = MEMORY[0x1E69E7CD0];
  if (v84 == 1)
  {
    v68 = v24;
    goto LABEL_5;
  }

  v48 = 0;
LABEL_7:
  sub_1D7CAE3D8(v82, v31);
  v49 = swift_getEnumCaseMultiPayload();
  v50 = v78;
  if (v49 == 1)
  {
    sub_1D7A57A74();
    v27 = &v31[*(v51 + 48)];
    v52 = v79;
    v53 = v31;
    v54 = v69;
    (*(v79 + 32))(v50, v53, v69);
    v55 = sub_1D7D2EBAC();
    v56 = v52;
    v57 = v55;
    v59 = v58;
    (*(v56 + 8))(v50, v54);
  }

  else
  {
    (*(v41 + 32))(v27, v31, v24);
    v57 = sub_1D7D2EBAC();
    v59 = v60;
  }

  (v75)(v27, v24);
  sub_1D7D29C8C();
  *v3 = v40;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v57;
  v3[4] = v59;
  v62 = v80;
  v61 = v81;
  (*(v80 + 104))(v3, *MEMORY[0x1E69B5728], v81);
  v63 = v85;
  swift_unknownObjectRetain();
  MEMORY[0x1DA7076C0](v3, v63);

  (*(v62 + 8))(v3, v61);
  v64 = swift_allocObject();
  *(v64 + 16) = v40;
  *(v64 + 24) = v76;
  *(v64 + 25) = v48;
  swift_allocObject();
  v65 = sub_1D7D29C3C();
  swift_unknownObjectRelease();
  return v65;
}

uint64_t sub_1D7CB056C()
{
  sub_1D7D2FF3C();
  swift_unknownObjectRetain();
  return sub_1D7D2FF2C();
}

uint64_t EndOfArticleModel.debugContextMenuWithContext<A, B, C, D>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v77 = a8;
  v74 = a5;
  v73 = a4;
  v72 = a1;
  v86 = a2;
  v87 = a3;
  v75 = a6;
  v76 = a7;
  v88 = a6;
  v89 = a7;
  v11 = sub_1D7D2C80C();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v69 - v13;
  v71 = sub_1D7D2CADC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v14);
  v69 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2CDAC();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2D5CC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v69 - v26;
  sub_1D7A57AE8();
  v29 = v28;
  v85 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v84, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v38 = *(v37 + 48);
    (*(v85 + 32))(v32, v36, v29);
    sub_1D7D2EBCC();
    if ((*(v20 + 88))(v27, v19) == *MEMORY[0x1E69B43F8])
    {
      (*(v20 + 96))(v27, v19);
      v84 = v38;
      (*(v79 + 32))(v78, v27, v80);
      v83 = sub_1D7D29C8C();
      sub_1D7CB29C4(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      v77 = xmmword_1D7D3B4D0;
      *(v82 + 16) = xmmword_1D7D3B4D0;
      v81 = sub_1D7D2A53C();
      v39 = v36;
      v40 = swift_allocObject();
      *(v40 + 16) = v77;
      *&v77 = sub_1D7D2A36C();
      sub_1D7D2CD9C();
      v41 = sub_1D7D2EBCC();
      MEMORY[0x1DA70B000](v41);
      (*(v20 + 8))(v23, v19);
      v42 = v69;
      sub_1D7D2D49C();

      v43 = v77;
      v44 = sub_1D7D2A24C();
      (*(v70 + 8))(v42, v71);
      v45 = MEMORY[0x1E69D7890];
      *(v40 + 56) = v43;
      *(v40 + 64) = v45;
      *(v40 + 32) = v44;
      sub_1D7D2A52C();

      v46 = sub_1D7D29C4C();
      (*(v79 + 8))(v78, v80);
      (*(v85 + 8))(v32, v29);
      sub_1D7A57998();
      (*(*(v47 - 8) + 8))(&v39[v84], v47);
    }

    else
    {
      (*(v85 + 8))(v32, v29);
      (*(v20 + 8))(v27, v19);
      sub_1D7A57998();
      (*(*(v58 - 8) + 8))(&v36[v38], v58);
      return 0;
    }
  }

  else
  {
    v80 = v36;
    sub_1D7CB29C4(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D7D3B4D0;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D7D3C680;
    v49 = sub_1D7D2A36C();
    v84 = a2;
    v85 = a3;
    v50 = v73;
    v51 = v74;
    v53 = v75;
    v52 = v76;
    v54 = v77;
    v55 = sub_1D7D2A2AC();
    if (v55)
    {
      v56 = MEMORY[0x1E69D7890];
      v57 = v49;
    }

    else
    {
      v57 = 0;
      v56 = 0;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
    }

    *(v48 + 32) = v55;
    *(v48 + 56) = v57;
    *(v48 + 64) = v56;
    v59 = sub_1D7D2A29C();
    if (v59)
    {
      v60 = MEMORY[0x1E69D7890];
      v61 = v49;
    }

    else
    {
      v61 = 0;
      v60 = 0;
      *(v48 + 80) = 0;
      *(v48 + 88) = 0;
    }

    *(v48 + 72) = v59;
    *(v48 + 96) = v61;
    *(v48 + 104) = v60;
    v86 = v84;
    v87 = v85;
    v88 = v50;
    v89 = v51;
    v90 = v53;
    v91 = v52;
    v92 = v54;
    v93 = a9;
    sub_1D7D29B5C();
    v62 = v81;
    sub_1D7D29B4C();
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7CB2B90(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v63 = v83;
    v64 = sub_1D7D2C7CC();
    (*(v82 + 8))(v62, v63);
    sub_1D7D29B2C();
    v65 = sub_1D7D2A28C();

    sub_1D7AAF6F4(v64);
    if (v65)
    {
      v66 = MEMORY[0x1E69D7890];
    }

    else
    {
      v49 = 0;
      v66 = 0;
      *(v48 + 120) = 0;
      *(v48 + 128) = 0;
    }

    v67 = v80;
    *(v48 + 112) = v65;
    *(v48 + 136) = v49;
    *(v48 + 144) = v66;
    sub_1D7D29C8C();
    sub_1D7D2A53C();
    sub_1D7D2A51C();

    v46 = sub_1D7D29C4C();
    sub_1D7CB2948(v67);
  }

  return v46;
}

uint64_t EndOfArticleModel.nativeAdSwapIdentifier.getter()
{
  v1 = sub_1D7D2D5CC();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2ED3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v39 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v0, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v18 = &v22[*(v23 + 48)];
    v25 = v37;
    v24 = v38;
    (*(v37 + 32))(v8, v22, v38);
    sub_1D7D2EBCC();
    v26 = sub_1D7D2D5BC();
    (*(v35 + 8))(v4, v36);
    v27 = [v26 identifier];
    swift_unknownObjectRelease();
    v28 = sub_1D7D3034C();

    (*(v25 + 8))(v8, v24);
    v29 = v39;
  }

  else
  {
    v30 = v39;
    (*(v15 + 32))(v18, v22, v39);
    sub_1D7D2EBCC();
    v31 = sub_1D7D2ED1C();
    (*(v10 + 8))(v13, v9);
    v32 = [v31 identifier];
    swift_unknownObjectRelease();
    v28 = sub_1D7D3034C();

    v29 = v30;
  }

  (*(v15 + 8))(v18, v29);
  return v28;
}

uint64_t static EndOfArticleModel.createNativeAdItem(for:feedContext:replacing:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a1;
  v126 = a3;
  v121 = a2;
  v127 = a4;
  v108 = sub_1D7D2CB1C();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v4);
  v106 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D7D2ED3C();
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v6);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = &v101 - v10;
  v11 = sub_1D7D2CB2C();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v114 = &v101 - v16;
  v17 = sub_1D7D2CAFC();
  v115 = *(v17 - 8);
  v116 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v113 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2EC6C();
  v119 = *(v20 - 8);
  v120 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v122 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v23, v24);
  v102 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v101 - v32;
  sub_1D7A57998();
  v123 = *(v34 - 8);
  v124 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v105 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v112 = &v101 - v39;
  v40 = sub_1D7D2D5CC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v101 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v101 - v47;
  v49 = sub_1D7D2D5DC();
  v50 = *(v49 - 8);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v54 = &v101 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v54, v125, v49, v52);
  v55 = (*(v50 + 88))(v54, v49);
  if (v55 == *MEMORY[0x1E69B4410])
  {
    (*(v50 + 96))(v54, v49);
    (*(v41 + 32))(v48, v54, v40);
    v56 = v126;
    sub_1D7CAE3D8(v126, v33);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v41 + 8))(v48, v40);
      sub_1D7CB2948(v33);
      return sub_1D7CAE3D8(v56, v127);
    }

    v68 = v124;
    v125 = *(v123 + 32);
    v126 = v23;
    v69 = v112;
    v125(v112, v33, v124);
    sub_1D7A57A74();
    v123 = *(v70 + 48);
    (*(v41 + 16))(v44, v48, v40);
    (*(v119 + 16))(v122, v121, v120);
    v128 = 257;
    v71 = MEMORY[0x1E69B4400];
    sub_1D7CB2B90(&qword_1EE0BFA68, MEMORY[0x1E69B4400]);
    sub_1D7CB2B90(&unk_1EE0BFA70, v71);
    sub_1D7A57C0C();
    v72 = v127;
    sub_1D7D2EBFC();
    (*(v41 + 8))(v48, v40);
    v125((v72 + v123), v69, v68);
  }

  else
  {
    v58 = v126;
    if (v55 == *MEMORY[0x1E69B4418])
    {
      (*(v50 + 96))(v54, v49);
      v59 = v115;
      v60 = v113;
      v61 = v54;
      v62 = v116;
      (*(v115 + 32))(v113, v61, v116);
      v63 = v114;
      sub_1D7D2CAEC();
      v64 = v58;
      sub_1D7CAE3D8(v58, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v117 + 8))(v63, v118);
        (*(v59 + 8))(v60, v62);
        sub_1D7A57A74();
        v66 = *(v65 + 48);
        sub_1D7CAE3D8(v64, v127);
        (*(v123 + 8))(&v29[v66], v124);
        sub_1D7A57AE8();
        return (*(*(v67 - 8) + 8))(v29, v67);
      }

      v84 = v123;
      v83 = v124;
      v85 = v105;
      (*(v123 + 32))(v105, v29, v124);
      v86 = v109;
      sub_1D7D2EBCC();
      v87 = v110;
      sub_1D7D2ECDC();
      v88 = v104;
      v125 = *(v104 + 8);
      v89 = v111;
      (v125)(v86, v111);
      (*(v88 + 16))(v86, v87, v89);
      v90 = *(v119 + 16);
      v126 = v23;
      v90(v122, v121, v120);
      sub_1D7D2EBEC();
      v129 = v131;
      v130 = v132;
      v91 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
      sub_1D7CB2B90(&qword_1EE0BF780, v91);
      sub_1D7A57C0C();
      sub_1D7D2EBFC();
      (v125)(v87, v89);
      (*(v84 + 8))(v85, v83);
      (*(v117 + 8))(v114, v118);
      (*(v115 + 8))(v113, v116);
    }

    else
    {
      if (v55 != *MEMORY[0x1E69B4420])
      {
        sub_1D7CAE3D8(v126, v127);
        return (*(v50 + 8))(v54, v49);
      }

      (*(v50 + 96))(v54, v49);
      v73 = v107;
      v74 = v106;
      v75 = v54;
      v76 = v108;
      (*(v107 + 32))(v106, v75, v108);
      v77 = v103;
      sub_1D7D2CB0C();
      v78 = v58;
      v79 = v102;
      sub_1D7CAE3D8(v58, v102);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v117 + 8))(v77, v118);
        (*(v73 + 8))(v74, v76);
        sub_1D7A57A74();
        v81 = *(v80 + 48);
        sub_1D7CAE3D8(v78, v127);
        (*(v123 + 8))(v79 + v81, v124);
        sub_1D7A57AE8();
        return (*(*(v82 - 8) + 8))(v79, v82);
      }

      v93 = v123;
      v92 = v124;
      v94 = v105;
      (*(v123 + 32))(v105, v79, v124);
      v95 = v109;
      sub_1D7D2EBCC();
      v96 = v110;
      sub_1D7D2ECDC();
      v97 = v104;
      v125 = *(v104 + 8);
      v98 = v111;
      (v125)(v95, v111);
      (*(v97 + 16))(v95, v96, v98);
      v99 = *(v119 + 16);
      v126 = v23;
      v99(v122, v121, v120);
      sub_1D7D2EBEC();
      v133 = v135;
      v134 = v136;
      v100 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
      sub_1D7CB2B90(&qword_1EE0BF780, v100);
      sub_1D7A57C0C();
      sub_1D7D2EBFC();
      (v125)(v96, v98);
      (*(v93 + 8))(v94, v92);
      (*(v117 + 8))(v103, v118);
      (*(v107 + 8))(v106, v108);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EndOfArticleModel.removeNativeAd(from:feedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v9 = *(v8 + 48);
    sub_1D7A57998();
    (*(*(v10 - 8) + 32))(a2, &v7[v9], v10);
    swift_storeEnumTagMultiPayload();
    sub_1D7A57AE8();
    return (*(*(v11 - 8) + 8))(v7, v11);
  }

  else
  {
    sub_1D7CAE3D8(a1, a2);
    return sub_1D7CB2948(v7);
  }
}

uint64_t sub_1D7CB2250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CAE3D8(v7, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v9 = *(v8 + 48);
    sub_1D7A57998();
    (*(*(v10 - 8) + 32))(a3, &v6[v9], v10);
    swift_storeEnumTagMultiPayload();
    sub_1D7A57AE8();
    return (*(*(v11 - 8) + 8))(v6, v11);
  }

  else
  {
    sub_1D7CAE3D8(a1, a3);
    return sub_1D7CB2948(v6);
  }
}

uint64_t _s12NewsArticles17EndOfArticleModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7A57AE8();
  v5 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v51 = &v49 - v10;
  sub_1D7A57998();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v49 - v26;
  sub_1D7CB2DBC();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v31[*(v32 + 56)];
  sub_1D7CAE3D8(a1, v31);
  sub_1D7CAE3D8(a2, v33);
  type metadata accessor for EndOfArticleModel();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = *(v13 + 32);
      v43(v27, v31, v12);
      v43(v23, v33, v12);
      sub_1D7D2ED3C();
      v44 = MEMORY[0x1E69B5FD0];
      sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
      sub_1D7CB2B90(&qword_1EE0BF780, v44);
      v42 = sub_1D7D2EBBC();
      v45 = *(v13 + 8);
      v45(v23, v12);
      v45(v27, v12);
      return v42 & 1;
    }

    v5 = v12;
    goto LABEL_8;
  }

  sub_1D7A57A74();
  v35 = *(v34 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v13 + 8))(&v31[v35], v12);
    v13 = v52;
LABEL_8:
    (*(v13 + 8))(v31, v5);
    sub_1D7CB2948(v33);
    v42 = 0;
    return v42 & 1;
  }

  v36 = *(v52 + 32);
  v36(v51, v31, v5);
  v36(v50, v33, v5);
  v37 = *(v13 + 32);
  v37(v19, &v31[v35], v12);
  v38 = (v33 + v35);
  v39 = v49;
  v37(v49, v38, v12);
  sub_1D7D2D5CC();
  v40 = MEMORY[0x1E69B4400];
  sub_1D7CB2B90(&qword_1EE0BFA68, MEMORY[0x1E69B4400]);
  sub_1D7CB2B90(&unk_1EE0BFA70, v40);
  if (sub_1D7D2EBBC())
  {
    sub_1D7D2ED3C();
    v41 = MEMORY[0x1E69B5FD0];
    sub_1D7CB2B90(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
    sub_1D7CB2B90(&qword_1EE0BF780, v41);
    v42 = sub_1D7D2EBBC();
  }

  else
  {
    v42 = 0;
  }

  v46 = *(v13 + 8);
  v46(v39, v12);
  v46(v19, v12);
  v47 = *(v52 + 8);
  v47(v50, v5);
  v47(v51, v5);
  return v42 & 1;
}

uint64_t sub_1D7CB2948(uint64_t a1)
{
  v2 = type metadata accessor for EndOfArticleModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7CB29C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CB2B90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7CB2BD8()
{
  sub_1D7A57998();
  if (v0 <= 0x3F)
  {
    sub_1D7A57A74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for EndOfArticleModel.Features(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PDFReplicaViewerOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D7CB2DBC()
{
  if (!qword_1EE0C9700[0])
  {
    type metadata accessor for EndOfArticleModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0C9700);
    }
  }
}

uint64_t sub_1D7CB2E20(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = sub_1D7D3034C();
  v14 = v13;

  if (v12 == 0x6C7070612E6D6F63 && v14 == 0xEE007377656E2E65)
  {

LABEL_9:
    sub_1D79F93E8(a1, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
        v17 = 1;
        return v17 & 1;
      }

      sub_1D799A6BC();
      sub_1D79DA510(*&v5[*(v19 + 48)], *&v5[*(v19 + 48) + 8], *&v5[*(v19 + 48) + 16]);
LABEL_16:
      sub_1D7A74E98(v5, v9);
      v17 = sub_1D7CB3084(v9[2], v9);
      sub_1D79F94F0(v9, type metadata accessor for ArticleViewerArticlePage);
      return v17 & 1;
    }

    sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
    v17 = 0;
    return v17 & 1;
  }

  v16 = sub_1D7D3197C();

  if (v16)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D7CB3084(void *a1, uint64_t a2)
{
  v30 = sub_1D7D29A8C();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D295CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(type metadata accessor for ArticleViewerArticlePage(0) + 32));
  if (v14 >= 2)
  {
    v28 = v10;
    v29 = v9;
    v17 = v14;
  }

  else
  {
    v15 = *(a2 + 16);
    if (([v15 respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    result = [v15 parentIssue];
    if (!result)
    {
      return result;
    }

    v17 = result;
    v28 = v10;
    v29 = v9;
    if (!v14 && [result isDraft] && (objc_msgSend(a1, sel_isDraft) & 1) == 0)
    {

      return 0;
    }
  }

  v18 = [a1 identifier];
  sub_1D7D3034C();

  sub_1D7D2964C();

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory), *(v2 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory + 24));
  sub_1D7D2970C();
  if (sub_1D7D29A4C())
  {

    (*(v5 + 8))(v8, v30);
    (*(v28 + 8))(v13, v29);
    return 0;
  }

  v19 = [v17 coverArticleID];
  v20 = sub_1D7D3034C();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v28;
  v24 = v29;
  if (!v23)
  {

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return 0;
  }

  if ([a1 respondsToSelector_])
  {
    v26 = [a1 role];

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return v26 != 2;
  }

  else
  {

    (*(v5 + 8))(v8, v30);
    (*(v25 + 8))(v13, v24);
    return 1;
  }
}

uint64_t sub_1D7CB344C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_articleAccessMap;
  v2 = sub_1D7D2966C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider()
{
  result = qword_1EE0C0778;
  if (!qword_1EE0C0778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CB354C()
{
  result = sub_1D7D2966C();
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

BOOL static PDFReplicaPageLink.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  if (a1[6])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (*&v4 == *&v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    if (*&v4 == *&v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  if (sub_1D7D3197C())
  {
LABEL_10:
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    return CGRectEqualToRect(v18, v19);
  }

  return 0;
}

BOOL sub_1D7CB36AC(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  if (a1[6])
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (*&v4 == *&v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    if (*&v4 == *&v10 && v5 == v11)
    {
      goto LABEL_10;
    }
  }

  if (sub_1D7D3197C())
  {
LABEL_10:
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    return CGRectEqualToRect(v18, v19);
  }

  return 0;
}

uint64_t PDFReplicaPageLink.encode(to:)(void *a1)
{
  sub_1D7CB4F70(0, &qword_1EC9E8198, sub_1D7CB3A08, &type metadata for PDFReplicaPageLink.LinkKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - v6;
  v8 = *v1;
  *v21 = v1[1];
  *&v21[1] = v8;
  v9 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v11 = v1[5];
  v13 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB3A08();
  sub_1D7D31B1C();
  if (v13)
  {
    LOBYTE(v25) = 1;
    v29 = 0;
    sub_1D7CB3A5C();
    v15 = v22;
    v14 = v23;
    sub_1D7D318BC();
    if (v15)
    {
      return (*(v24 + 8))(v7, v14);
    }

    v16 = 2;
  }

  else
  {
    LOBYTE(v25) = 0;
    v29 = 0;
    sub_1D7CB3A5C();
    v17 = v22;
    v14 = v23;
    sub_1D7D318BC();
    if (v17)
    {
      return (*(v24 + 8))(v7, v14);
    }

    v16 = 1;
  }

  LOBYTE(v25) = v16;
  sub_1D7D3188C();
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v11;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v9;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v11;
  v19 = CGRectGetWidth(v31);
  v25 = v9;
  v26 = v10;
  v27 = v19;
  v28 = Width;
  v29 = 3;
  sub_1D7CB3AB0();
  sub_1D7D318BC();
  return (*(v24 + 8))(v7, v14);
}

unint64_t sub_1D7CB3A08()
{
  result = qword_1EC9E81A0;
  if (!qword_1EC9E81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81A0);
  }

  return result;
}

unint64_t sub_1D7CB3A5C()
{
  result = qword_1EC9E81A8;
  if (!qword_1EC9E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81A8);
  }

  return result;
}

unint64_t sub_1D7CB3AB0()
{
  result = qword_1EC9E81B0;
  if (!qword_1EC9E81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81B0);
  }

  return result;
}

uint64_t PDFReplicaPageLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D7CB4F70(0, &qword_1EC9E81B8, sub_1D7CB3A08, &type metadata for PDFReplicaPageLink.LinkKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19.i8[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB3A08();
  sub_1D7D31AFC();
  if (!v2)
  {
    v10 = v6;
    v11 = v21;
    v24 = 0;
    sub_1D7CB3D74();
    sub_1D7D317DC();
    v12 = v22;
    v24 = 3;
    sub_1D7CB3DC8();
    sub_1D7D317DC();
    v19 = v23;
    v20 = v22;
    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    LOBYTE(v22) = v13;
    v15 = sub_1D7D317AC();
    v17 = v16;
    (*(v10 + 8))(v9, v5);
    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = vextq_s8(v19, v19, 8uLL);
    *(v11 + 16) = v20;
    *(v11 + 32) = v18;
    *(v11 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D7CB3D74()
{
  result = qword_1EC9E81C0;
  if (!qword_1EC9E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81C0);
  }

  return result;
}

unint64_t sub_1D7CB3DC8()
{
  result = qword_1EC9E81C8;
  if (!qword_1EC9E81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81C8);
  }

  return result;
}

uint64_t sub_1D7CB3E1C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1D7CB4F70(0, &qword_1EC9E81F8, sub_1D7CB4AE4, &type metadata for PDFReplicaPageLink.TapRectangle.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB4AE4();
  sub_1D7D31B1C();
  v19 = a2;
  HIBYTE(v18) = 0;
  sub_1D7CB4B38();
  sub_1D7D318BC();
  if (!v5)
  {
    v19 = a3;
    HIBYTE(v18) = 1;
    sub_1D7D318BC();
    v19 = a4;
    HIBYTE(v18) = 2;
    sub_1D7D318BC();
    v19 = a5;
    HIBYTE(v18) = 3;
    sub_1D7D318BC();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D7CB40B8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB4170()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CB4214()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB42C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7CB4A44();
  *a1 = result;
  return result;
}

void sub_1D7CB42F8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xE300000000000000;
  v5 = 5001813;
  if (*v1 != 2)
  {
    v5 = 1952671090;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65644965676170;
    v2 = 0xEE00726569666974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D7CB436C()
{
  v1 = 1701869940;
  v2 = 5001813;
  if (*v0 != 2)
  {
    v2 = 1952671090;
  }

  if (*v0)
  {
    v1 = 0x6E65644965676170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7CB43DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7CB4A44();
  *a1 = result;
  return result;
}

uint64_t sub_1D7CB4404(uint64_t a1)
{
  v2 = sub_1D7CB3A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CB4440(uint64_t a1)
{
  v2 = sub_1D7CB3A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7CB4480()
{
  result = qword_1EC9E81D0;
  if (!qword_1EC9E81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81D0);
  }

  return result;
}

uint64_t sub_1D7CB44D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 5001813;
  }

  else
  {
    v3 = 1701273968;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 5001813;
  }

  else
  {
    v5 = 1701273968;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7CB456C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB45E0()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CB4640()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB46B0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D7CB4710(uint64_t *a1@<X8>)
{
  v2 = 1701273968;
  if (*v1)
  {
    v2 = 5001813;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D7CB4744()
{
  result = qword_1EC9E81D8;
  if (!qword_1EC9E81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81D8);
  }

  return result;
}

uint64_t sub_1D7CB4848()
{
  v1 = 120;
  v2 = 0x746867696568;
  if (*v0 != 2)
  {
    v2 = 0x6874646977;
  }

  if (*v0)
  {
    v1 = 121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7CB48A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7CB4B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7CB48CC(uint64_t a1)
{
  v2 = sub_1D7CB4AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CB4908(uint64_t a1)
{
  v2 = sub_1D7CB4AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7CB4944(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7CB4CD4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

unint64_t sub_1D7CB4998()
{
  result = qword_1EC9E81E0;
  if (!qword_1EC9E81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81E0);
  }

  return result;
}

unint64_t sub_1D7CB49F0()
{
  result = qword_1EC9E81E8;
  if (!qword_1EC9E81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81E8);
  }

  return result;
}

uint64_t sub_1D7CB4A44()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D7CB4A90()
{
  result = qword_1EC9E81F0;
  if (!qword_1EC9E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E81F0);
  }

  return result;
}

unint64_t sub_1D7CB4AE4()
{
  result = qword_1EC9E8200;
  if (!qword_1EC9E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8200);
  }

  return result;
}

unint64_t sub_1D7CB4B38()
{
  result = qword_1EC9E8208;
  if (!qword_1EC9E8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8208);
  }

  return result;
}

uint64_t sub_1D7CB4B8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D7D3197C();

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

double sub_1D7CB4CD4(void *a1)
{
  sub_1D7CB4F70(0, &qword_1EC9E8210, sub_1D7CB4AE4, &type metadata for PDFReplicaPageLink.TapRectangle.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CB4AE4();
  sub_1D7D31AFC();
  if (!v1)
  {
    v12 = 0;
    sub_1D7CB4FD8();
    sub_1D7D317DC();
    v2 = v13;
    v12 = 1;
    sub_1D7D317DC();
    v12 = 2;
    sub_1D7D317DC();
    v12 = 3;
    sub_1D7D317DC();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void sub_1D7CB4F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7CB4FD8()
{
  result = qword_1EC9E8218;
  if (!qword_1EC9E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8218);
  }

  return result;
}

unint64_t sub_1D7CB5040()
{
  result = qword_1EC9E8220;
  if (!qword_1EC9E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8220);
  }

  return result;
}

unint64_t sub_1D7CB5098()
{
  result = qword_1EC9E8228;
  if (!qword_1EC9E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8228);
  }

  return result;
}

unint64_t sub_1D7CB50F0()
{
  result = qword_1EC9E8230;
  if (!qword_1EC9E8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8230);
  }

  return result;
}

uint64_t sub_1D7CB514C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0xD000000000000023 && 0x80000001D7D715C0 == v3;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6088];
LABEL_7:

    goto LABEL_8;
  }

  if (v4 == 0xD000000000000015 && 0x80000001D7D715F0 == v3 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6070];
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000001D7D71590 == v3 || (sub_1D7D3197C() & 1) != 0)
  {
    v6 = MEMORY[0x1E69B6068];
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E69B6080];
  if (v4 == 0xD000000000000010 && 0x80000001D7D71570 == v3)
  {
    goto LABEL_7;
  }

  v11 = sub_1D7D3197C();

  if ((v11 & 1) == 0)
  {
    v6 = MEMORY[0x1E69B6078];
  }

LABEL_8:
  v7 = *v6;
  v8 = sub_1D7D2EEFC();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t ConcernModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConcernModel.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConcernModel.hashValue.getter()
{
  sub_1D7D31A8C();
  sub_1D7CB5698();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB543C()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CB54B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7CB56F0();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7CB5504()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t _s12NewsArticles12ConcernModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D7D3197C() & 1) == 0 || (sub_1D7A5AA10(v3, v10) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_1D7D3197C();
}

unint64_t sub_1D7CB5698()
{
  result = qword_1EC9E8238;
  if (!qword_1EC9E8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8238);
  }

  return result;
}

unint64_t sub_1D7CB56F0()
{
  result = qword_1EC9E8240;
  if (!qword_1EC9E8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8240);
  }

  return result;
}

unint64_t sub_1D7CB5748()
{
  result = qword_1EC9E8248;
  if (!qword_1EC9E8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8248);
  }

  return result;
}

unint64_t sub_1D7CB57A4()
{
  result = qword_1EC9E8250;
  if (!qword_1EC9E8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8250);
  }

  return result;
}

unint64_t sub_1D7CB57FC()
{
  result = qword_1EC9E8258;
  if (!qword_1EC9E8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8258);
  }

  return result;
}

uint64_t PDFReplicaViewerFeatureAction.hashValue.getter()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7CB58D8()
{
  result = qword_1EC9E8260;
  if (!qword_1EC9E8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8260);
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeRouteModel()
{
  result = qword_1EC9E8268;
  if (!qword_1EC9E8268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CB599C()
{
  sub_1D7B5A7C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecipeBlueprintRouteModel();
    if (v1 <= 0x3F)
    {
      sub_1D7CB5A24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7CB5A24()
{
  if (!qword_1EC9E8278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E8278);
    }
  }
}

uint64_t sub_1D7CB5D6C(uint64_t a1)
{
  sub_1D7D294BC();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  v4 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v5 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  v7 = sub_1D7D2943C();

  return v7;
}

uint64_t sub_1D7CB5F1C()
{
  v1 = v0;
  v2 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7D2E5FC();
  v6 = *v5;
  swift_unknownObjectRetain();
  sub_1D7CB8FDC(v5, type metadata accessor for EndOfArticleFeedServiceConfig);
  if (([v6 respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(v6, sel_parentIssue)) != 0)
  {
    v8 = v7;
    v9 = (v1 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager);
    v10 = *(v1 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager + 24);
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = v8;
    v13 = [v12 identifier];
    v14 = sub_1D7D3034C();
    v16 = v15;

    v17 = (*(v11 + 16))(v14, v16, v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69B5AD8], v17);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v17;
}

size_t sub_1D7CB6154(__int128 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v139 = a4;
  v152 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D7CB8A64(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v148 = &v129 - v9;
  sub_1D7CB8A64(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v142 = &v129 - v12;
  sub_1D7CB8A64(0, &qword_1EE0BF988, sub_1D7990AB0, v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v138 = &v129 - v15;
  v16 = sub_1D7D2F6AC();
  v146 = *(v16 - 8);
  v147 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &unk_1EE0BF530, sub_1D7A78030, v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v137 = &v129 - v21;
  v22 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v136 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D7D2F06C();
  v165 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v25);
  v143 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v6);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v149 = &v129 - v29;
  v141 = sub_1D7D2F31C();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v30);
  v150 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1D7D2FC7C();
  v154 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v32);
  v34 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D7D2FD3C();
  v155 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D7D2EC6C();
  v151 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = (&v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v129 - v49);
  v51 = *(a1 + 16);
  v163 = *a1;
  v164 = v51;
  v52 = v162;
  v53 = sub_1D7CB754C(&v163);
  if (!v52)
  {
    v161 = v50;
    v132 = v42;
    v134 = v39;
    v133 = v46;
    v130 = v34;
    v131 = 0;
    v162 = v38;
    v153 = v35;
    *&v163 = MEMORY[0x1E69E7CC0];
    v159 = v53;
    if (v53 >> 62)
    {
      goto LABEL_77;
    }

    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v55 = v165;
      v56 = v162;
      v57 = v151;
      v58 = v134;
      v160 = a3;
      if (v54)
      {
        v59 = 0;
        v157 = (v53 & 0xFFFFFFFFFFFFFF8);
        v158 = v53 & 0xC000000000000001;
        v60 = v161;
        v156 = v54;
        while (1)
        {
          if (v158)
          {
            v61 = MEMORY[0x1DA70EF00](v59, v53);
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
LABEL_18:
              __break(1u);
LABEL_19:
              v73 = v163;
              v57 = v151;
              v58 = v134;
              goto LABEL_21;
            }
          }

          else
          {
            if (v59 >= v157[2])
            {
              __break(1u);
              goto LABEL_76;
            }

            v61 = *(v53 + 8 * v59 + 32);
            swift_unknownObjectRetain();
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_18;
            }
          }

          v63 = [v61 identifier];
          v64 = sub_1D7D3034C();
          v66 = v65;

          sub_1D7D2E5FC();
          v67 = *v60;
          swift_unknownObjectRetain();
          sub_1D7CB8FDC(v60, type metadata accessor for EndOfArticleFeedServiceConfig);
          v68 = [v67 &off_1E84EC678];
          swift_unknownObjectRelease();
          v69 = sub_1D7D3034C();
          v71 = v70;

          if (v64 == v69 && v66 == v71)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v72 = sub_1D7D3197C();

            if (v72)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              sub_1D7D3153C();
              sub_1D7D3157C();
              sub_1D7D3158C();
              sub_1D7D3154C();
            }
          }

          a3 = v160;
          v60 = v161;
          v56 = v162;
          ++v59;
          v55 = v165;
          v53 = v159;
          if (v62 == v156)
          {
            goto LABEL_19;
          }
        }
      }

      v73 = MEMORY[0x1E69E7CC0];
LABEL_21:

      type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();

      v74 = v132;
      sub_1D7D2E61C();
      sub_1D7D2E70C();
      (*(v57 + 8))(v74, v58);
      v75 = v163;
      v76 = v73 < 0 || (v73 & 0x4000000000000000) != 0;
      if (v76)
      {
        v42 = sub_1D7D3167C();
      }

      else
      {
        v42 = *(v73 + 16);
      }

      v77 = v133;
      if (v42 < v75 || (sub_1D7D2E5FC(), v78 = *v77, swift_unknownObjectRetain(), sub_1D7CB8FDC(v77, type metadata accessor for EndOfArticleFeedServiceConfig), v79 = [v78 sourceChannel], swift_unknownObjectRelease(), (v157 = v79) == 0))
      {

        v84 = sub_1D7D2E4EC();
        sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
        swift_allocError();
        *v85 = v75;
        v85[1] = v42;
        (*(*(v84 - 8) + 104))(v85, *MEMORY[0x1E69B5AE0], v84);
        swift_willThrow();
        return v42;
      }

      if (v75 < 0)
      {
        break;
      }

      if (v76)
      {
        v80 = sub_1D7D3167C();
        result = sub_1D7D3167C();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if (v80 >= v75)
        {
          v82 = v75;
        }

        else
        {
          v82 = v80;
        }

        if (v80 < 0)
        {
          v82 = v75;
        }

        if (v75)
        {
          v42 = v82;
        }

        else
        {
          v42 = 0;
        }

        v83 = sub_1D7D3167C();
      }

      else
      {
        v83 = *(v73 + 16);
        if (v83 >= v75)
        {
          v86 = v75;
        }

        else
        {
          v86 = *(v73 + 16);
        }

        if (v75)
        {
          v42 = v86;
        }

        else
        {
          v42 = 0;
        }
      }

      if (v83 < v42)
      {
        goto LABEL_80;
      }

      if ((v73 & 0xC000000000000001) != 0 && v42)
      {
        sub_1D799621C();

        v87 = 0;
        do
        {
          v88 = v87 + 1;
          sub_1D7D3147C();
          v87 = v88;
        }

        while (v42 != v88);
      }

      else
      {
      }

      v156 = v73;
      if (v76)
      {
        v89 = sub_1D7D3168C();
        v75 = v90;
        v92 = v91;
        v94 = v93;

        v42 = (v94 >> 1);
      }

      else
      {
        v92 = 0;
        v75 = v73 + 32;
        v89 = v73;
      }

      v95 = v154;
      v73 = &v42[-v92];
      if (__OFSUB__(v42, v92))
      {
        goto LABEL_81;
      }

      if (!v73)
      {
        swift_unknownObjectRelease();
        v103 = v153;
        v104 = v155;
LABEL_70:
        v105 = MEMORY[0x1E69E7CC0];
        sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
        sub_1D7A19144(v105);
        sub_1D7A1915C(v105);
        sub_1D7D2FD2C();
        sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        v161 = v106;
        *(v106 + 16) = xmmword_1D7D3C670;
        *(v106 + 32) = v157;
        sub_1D7CB8A64(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
        v107 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1D7D3B4D0;
        (*(v104 + 16))(v108 + v107, v56, v103);
        v158 = sub_1D7D2CE6C();
        v109 = *(v158 - 8);
        v154 = *(v109 + 56);
        v165 = v109 + 56;
        (v154)(v149, 1, 1, v158);
        swift_unknownObjectRetain();
        v159 = sub_1D7A191A4(v105);
        sub_1D7A191A4(v105);
        sub_1D7A191BC(v105);
        sub_1D7A191D4(v105);
        sub_1D7A192E8(v105);
        sub_1D7A19300(v105);
        sub_1D7A19414(v105);
        sub_1D7D2F30C();
        v42 = *(v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService + 24);
        v161 = *(v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService + 32);
        v159 = __swift_project_boxed_opaque_existential_1((v152 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService), v42);
        sub_1D798F8C0();
        v110 = v136;
        sub_1D7D2DF2C();
        v111 = [v157 identifier];
        sub_1D7D3034C();

        v112 = v149;
        (v154)(v149, 1, 1, v158);
        sub_1D7A78030(0);
        v114 = v137;
        (*(*(v113 - 8) + 56))(v137, 1, 1, v113);
        v75 = v143;
        sub_1D7D2F01C();

        sub_1D7CB8EBC(v114, &unk_1EE0BF530, sub_1D7A78030);
        sub_1D7CB8EBC(v112, &unk_1EE0BFB00, MEMORY[0x1E69B40B8]);
        v73 = *(v55 + 8);
        a3 = v144;
        v165 = v55 + 8;
        (v73)(v110, v144);
        v115 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs;
        sub_1D7990AB0(0);
        v117 = v116;
        v118 = *(v116 - 8);
        v119 = v138;
        (*(v118 + 16))(v138, v139 + v115, v116);
        (*(v118 + 56))(v119, 0, 1, v117);
        v120 = sub_1D7D2FAFC();
        (*(*(v120 - 8) + 56))(v142, 1, 1, v120);
        LOBYTE(v163) = 4;
        sub_1D798FB8C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
        swift_allocObject();

        sub_1D7D2FB8C();
        v121 = sub_1D7D2F59C();
        (*(*(v121 - 8) + 56))(v148, 1, 1, v121);
        v122 = qword_1EE0CA130;
        *MEMORY[0x1E69B5080];
        if (v122 == -1)
        {
LABEL_71:
          qword_1EE0CA138;
          v123 = v145;
          sub_1D7D2F69C();
          v124 = v150;
          v125 = v131;
          v126 = sub_1D7D2F36C();
          v127 = v146;
          v128 = v141;
          if (!v125)
          {
            v42 = v126;
          }

          swift_unknownObjectRelease();
          (*(v127 + 8))(v123, v147);
          (v73)(v75, a3);
          (*(v140 + 8))(v124, v128);
          (*(v155 + 8))(v162, v153);
          return v42;
        }

LABEL_82:
        swift_once();
        goto LABEL_71;
      }

      v151 = v89;
      *&v163 = MEMORY[0x1E69E7CC0];
      result = sub_1D7A5BFDC(0, v73 & ~(v73 >> 63), 0);
      if (v73 < 0)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        return result;
      }

      v96 = v163;
      LODWORD(v161) = *MEMORY[0x1E69B6698];
      v158 = v95 + 32;
      v159 = (v95 + 104);
      if (v42 <= v92)
      {
        v97 = v92;
      }

      else
      {
        v97 = v42;
      }

      v98 = &v97[-v92];
      v99 = (v75 + 8 * v92);
      v100 = v135;
      a3 = v130;
      while (v98)
      {
        *a3 = *v99;
        (*v159)(a3, v161, v100);
        *&v163 = v96;
        v102 = *(v96 + 16);
        v101 = *(v96 + 24);
        swift_unknownObjectRetain();
        if (v102 >= v101 >> 1)
        {
          sub_1D7A5BFDC(v101 > 1, v102 + 1, 1);
          v96 = v163;
        }

        *(v96 + 16) = v102 + 1;
        (*(v154 + 32))(v96 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v102, a3, v100);
        --v98;
        ++v99;
        --v73;
        v103 = v153;
        v104 = v155;
        if (!v73)
        {
          swift_unknownObjectRelease();
          v55 = v165;
          v56 = v162;
          goto LABEL_70;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      v54 = sub_1D7D3167C();
      v53 = v159;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  return v42;
}

uint64_t sub_1D7CB754C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    *v3 = 0xD000000000000028;
    v3[1] = 0x80000001D7D7E3D0;
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69B5AC8], v2);
    return swift_willThrow();
  }

  else
  {
    v5 = *a1;
    v12 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];

    sub_1D79ECEAC(v5);

    sub_1D7CB8AC8(v6, v1, &v12, &v11, &v10);

    v9 = v11;

    sub_1D79E3420(v7);

    sub_1D79E3420(v8);
    sub_1D79ECEE4(v5);

    return v9;
  }
}

uint64_t sub_1D7CB7714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D7CB8F2C(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7CB7994(a1, a3, v12);
  sub_1D7CB8F74(v12, v8, type metadata accessor for EndOfArticleFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_1D7CB8A64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7CB8FDC(v12, type metadata accessor for EndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7CB7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v69 = a2;
  v4 = sub_1D7D2EC6C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2EA6C();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v61 = (v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2836C();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v58 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CB8A64(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v54 - v18;
  v20 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = sub_1D7D2F05C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D7D2DE2C();
  v29 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v30);
  v56 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v55 = v54 - v35;
  (*(v25 + 16))(v28, a1, v24, v34);
  sub_1D798F8C0();
  v54[1] = sub_1D7D2DF0C();
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  v36 = sub_1D7D2E1CC();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  v37 = v55;
  sub_1D7D2DDDC();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1D7D3145C();

  v70 = 0x6D6F724665726F4DLL;
  v71 = 0xEF3A3A6575737349;
  v38 = v58;
  sub_1D7D2835C();
  v39 = sub_1D7D2834C();
  v41 = v40;
  (*(v59 + 8))(v38, v60);
  MEMORY[0x1DA70DE90](v39, v41);

  v42 = v71;
  v60 = v70;
  v44 = v56;
  v43 = v57;
  v45 = v37;
  (*(v29 + 16))(v56, v37, v57);
  v46 = v61;
  sub_1D7D2E5FC();
  v47 = *v46;
  swift_unknownObjectRetain();
  sub_1D7CB8FDC(v46, type metadata accessor for EndOfArticleFeedServiceConfig);
  v48 = [v47 sourceChannel];
  swift_unknownObjectRelease();
  type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  v49 = v63;
  sub_1D7D2E61C();
  v50 = v62;
  sub_1D7D2E70C();
  (*(v64 + 8))(v49, v65);
  (*(v29 + 8))(v45, v43);
  v51 = v68;
  *v68 = v60;
  *(v51 + 1) = v42;
  v52 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  (*(v29 + 32))(&v51[v52[5]], v44, v43);
  *&v51[v52[6]] = v48;
  (*(v66 + 32))(&v51[v52[7]], v50, v67);
  type metadata accessor for EndOfArticleFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7CB80BC(uint64_t a1)
{
  sub_1D7A18F80(0);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_1D7D29AAC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD00000000000002CLL, 0x80000001D7D6D310);
  v14 = a1;
  sub_1D7D315DC();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1D7CB8A64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7CB8310()
{
  v1 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_config;
  sub_1D798F8C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7CB8FDC(v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_historyService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter()
{
  result = qword_1EE0BB7E0;
  if (!qword_1EE0BB7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CB8454()
{
  sub_1D798F8C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7CB8550@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_config;
  sub_1D798F8C0();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7CB85E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  a1[4] = sub_1D7CB8F2C(&qword_1EE0C12D0, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  a1[5] = sub_1D7CB8F2C(&qword_1EC9E60E8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7CB8F74(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7CB86B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7CB8A64(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798F8C0();
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7CB8FDC(inited + 32, sub_1D7A19AB4);
  sub_1D7CB8A64(0, &unk_1EE0C03C0, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7A89EA0();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter();
  return sub_1D7D28FEC();
}

uint64_t sub_1D7CB8840(uint64_t a1)
{
  v2 = sub_1D7CB8F2C(&qword_1EE0BB800, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7CB8A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CB8AC8(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5)
{
  v29 = a4;
  v5 = *(result + 16);
  if (v5)
  {
    v43 = (a2 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_historyService);
    v6 = (result + 32);
    v7 = &selRef_addTarget_action_;
    v8 = &off_1E84EC000;
    do
    {
      v9 = v6[7];
      v10 = v6[5];
      v38 = v6[6];
      v39 = v9;
      v11 = v6[7];
      v40[0] = v6[8];
      *(v40 + 9) = *(v6 + 137);
      v12 = v6[3];
      v13 = v6[1];
      v34 = v6[2];
      v35 = v12;
      v14 = v6[3];
      v15 = v6[5];
      v36 = v6[4];
      v37 = v15;
      v16 = v6[1];
      v33[0] = *v6;
      v33[1] = v16;
      v41[6] = v38;
      v41[7] = v11;
      v42[0] = v6[8];
      *(v42 + 9) = *(v6 + 137);
      v41[2] = v34;
      v41[3] = v14;
      v41[4] = v36;
      v41[5] = v10;
      v41[0] = v33[0];
      v41[1] = v13;
      if (sub_1D7A601B0(v41) == 1)
      {
        result = nullsub_1(v41);
      }

      else
      {
        v17 = *(nullsub_1(v41) + 16);
        result = [v17 v8[329]];
        if (result)
        {
          swift_unknownObjectRetain_n();
          sub_1D7A601B8(v33, v32);
          if (![v17 v7[487]])
          {
            v18 = *(*__swift_project_boxed_opaque_existential_1(v43, v43[3]) + 16);
            v19 = [v17 identifier];
            if (!v19)
            {
              sub_1D7D3034C();
              v19 = sub_1D7D3031C();
            }

            v20 = [v18 hasArticleBeenRead_];

            v21 = [v17 identifier];
            if (!v21)
            {
              sub_1D7D3034C();
              v21 = sub_1D7D3031C();
            }

            [v18 hasArticleBeenSeen_];

            v22 = [v17 identifier];
            if (!v22)
            {
              sub_1D7D3034C();
              v22 = sub_1D7D3031C();
            }

            v23 = [v18 hasArticleBeenVisited_];

            v24 = [v17 &off_1E84EC678];
            if (!v24)
            {
              sub_1D7D3034C();
              v24 = sub_1D7D3031C();
            }

            v25 = [v18 hasArticleBeenConsumed_];

            if ((v25 | v23 | v20))
            {
              v26 = swift_unknownObjectRelease();
              MEMORY[0x1DA70E080](v26);
              v8 = &off_1E84EC000;
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v8 = &off_1E84EC000;
            if ([v17 respondsToSelector_])
            {
              v27 = [v17 isFeatured];
              v28 = swift_unknownObjectRelease();
              if (v27)
              {
                MEMORY[0x1DA70E080](v28);
                if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_26:
                  sub_1D7D306DC();
                }

LABEL_27:
                sub_1D7D3072C();
                result = sub_1D7A6026C(v33);
                v7 = &selRef_addTarget_action_;
                goto LABEL_4;
              }
            }

            else
            {
              v28 = swift_unknownObjectRelease();
            }

            MEMORY[0x1DA70E080](v28);
            if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          swift_unknownObjectRelease_n();
          result = sub_1D7A6026C(v33);
        }
      }

LABEL_4:
      v6 += 10;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D7CB8EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7CB8A64(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7CB8F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7CB8F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CB8FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7CB903C@<X0>(uint64_t a1@<X8>)
{
  v38[1] = a1;
  sub_1D7CB9858();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v44 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D3121C();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2813C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v43 = sub_1D7D280EC();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B29F5C();
  sub_1D7D2812C();
  sub_1D7D280FC();
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v13 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB958]];
  v14 = [v12 scaledFontForFont_];

  aBlock = v14;
  sub_1D7CB98B0();
  sub_1D7D2810C();
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v49 = sub_1D7B227F4;
  v50 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7B5C448;
  v48 = &block_descriptor_40;
  v16 = _Block_copy(&aBlock);
  v17 = [v15 initWithDynamicProvider_];
  _Block_release(v16);

  aBlock = v17;
  sub_1D7CB991C();
  sub_1D7D2810C();
  v18 = objc_opt_self();
  v19 = [v18 configurationWithPointSize:6 weight:32.0];
  sub_1D79EB1FC();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7D41F60;
  v21 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v49 = sub_1D7B227F4;
  v50 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7B5C448;
  v48 = &block_descriptor_6_2;
  v22 = _Block_copy(&aBlock);
  v23 = [v21 initWithDynamicProvider_];
  _Block_release(v22);

  *(v20 + 32) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v49 = sub_1D7B22708;
  v50 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7B5C448;
  v48 = &block_descriptor_9_1;
  v25 = _Block_copy(&aBlock);
  v26 = [v24 initWithDynamicProvider_];
  _Block_release(v25);

  *(v20 + 40) = v26;
  sub_1D79F85FC();
  v27 = sub_1D7D3062C();

  v28 = [v18 configurationWithPaletteColors_];

  v29 = [v19 configurationByApplyingConfiguration_];
  sub_1D7D3129C();
  sub_1D7D3123C();
  (*(v41 + 104))(v40, *MEMORY[0x1E69DC508], v42);
  sub_1D7D3122C();
  v30 = [objc_opt_self() clearColor];
  v31 = sub_1D7D311FC();
  sub_1D7D2C9BC();
  v31(&aBlock, 0);
  v32 = v39;
  v34 = v43;
  v33 = v44;
  (*(v39 + 16))(v44, v11, v43);
  (*(v32 + 56))(v33, 0, 1, v34);
  sub_1D7D3125C();
  sub_1D7D301EC();
  v35 = sub_1D7D3017C();
  v36 = [v35 imageWithConfiguration_];

  sub_1D7D3128C();
  sub_1D7D3124C();

  return (*(v32 + 8))(v11, v34);
}

void sub_1D7CB970C(void *a1)
{
  v2 = [a1 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v2 setShadowColor_];
  v5 = [a1 layer];
  [v5 setShadowOffset_];

  v6 = [a1 layer];
  [v6 setShadowRadius_];

  v8 = [a1 layer];
  LODWORD(v7) = 1034147594;
  [v8 setShadowOpacity_];
}

void sub_1D7CB9858()
{
  if (!qword_1EC9E8298)
  {
    sub_1D7D280EC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8298);
    }
  }
}

unint64_t sub_1D7CB98B0()
{
  result = qword_1EC9E82A0;
  if (!qword_1EC9E82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82A0);
  }

  return result;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7CB991C()
{
  result = qword_1EC9E82A8;
  if (!qword_1EC9E82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82A8);
  }

  return result;
}

uint64_t EndOfArticleHeadlineModel.identifier.getter()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_1D7D3034C();

  return v2;
}

uint64_t sub_1D7CB99FC(uint64_t a1, char a2)
{
  type metadata accessor for EndOfArticleHeadlineModel();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  swift_unknownObjectRetain();
  return v5;
}

unint64_t EndOfArticleHeadlineModel.debugDescription.getter()
{
  v1 = 0xE000000000000000;
  sub_1D7D3145C();

  v2 = *(v0 + 16);
  v3 = [v2 identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  MEMORY[0x1DA70DE90](v4, v6);

  MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7D3034C();
    v1 = v10;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA70DE90](v9, v1);

  return 0xD00000000000001DLL;
}

uint64_t EndOfArticleHeadlineModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static EndOfArticleHeadlineModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(a2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

uint64_t sub_1D7CB9CC8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(v2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

BOOL sub_1D7CB9D94(uint64_t a1)
{
  v44 = a1;
  sub_1D7A86838();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = sub_1D7D2833C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v43 = &v41 - v26;
  v27 = *(v1 + 16);
  v28 = [v27 publishDate];
  if (v28)
  {
    v29 = v28;
    sub_1D7D2830C();

    v30 = *(v15 + 32);
    v30(v9, v22, v14);
    v31 = *(v15 + 56);
    v31(v9, 0, 1, v14);
    v30(v13, v9, v14);
    v31(v13, 0, 1, v14);
    v32 = (*(v15 + 48))(v13, 1, v14);
  }

  else
  {
    v33 = 1;
    v42 = *(v15 + 56);
    v42(v9, 1, 1, v14);
    v34 = [v27 lastModifiedDate];
    if (v34)
    {
      v35 = v34;
      sub_1D7D2830C();

      v33 = 0;
    }

    v42(v5, v33, 1, v14);
    sub_1D7B07B18(v5, v13);
    v36 = *(v15 + 48);
    if (v36(v9, 1, v14) != 1)
    {
      sub_1D7AE148C(v9);
    }

    v32 = v36(v13, 1, v14);
  }

  if (v32 == 1)
  {
    sub_1D7AE148C(v13);
    return 1;
  }

  else
  {
    v38 = v43;
    (*(v15 + 32))(v43, v13, v14);
    sub_1D7D2832C();
    sub_1D7D282EC();
    v39 = *(v15 + 8);
    v39(v18, v14);
    v40 = sub_1D7D2831C();
    v39(v22, v14);
    v39(v38, v14);
    return v40 != -1;
  }
}

uint64_t sub_1D7CBA184()
{
  v1 = [*(*v0 + 16) identifier];
  v2 = sub_1D7D3034C();

  return v2;
}

uint64_t sub_1D7CBA1E0()
{
  v1 = [*(*v0 + 16) clusterID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D7D3034C();

  return v3;
}

uint64_t EndOfArticleHeadlineModel.description.getter()
{
  v1 = v0;
  sub_1D7D3145C();

  v2 = *(v0 + 16);
  v3 = [v2 identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  MEMORY[0x1DA70DE90](v4, v6);

  MEMORY[0x1DA70DE90](0x203A656C74697420, 0xE800000000000000);
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7D3034C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1D7992238();
  v12 = sub_1D7D303AC();
  MEMORY[0x1DA70DE90](v12);

  MEMORY[0x1DA70DE90](0x3A64696150736920, 0xE900000000000020);
  v13 = [v2 isPaid];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1DA70DE90](v15, v16);

  MEMORY[0x1DA70DE90](0x7365636341736920, 0xEF203A656C626973);
  if (*(v1 + 32))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1DA70DE90](v17, v18);

  return 540697705;
}

unint64_t sub_1D7CBA4B0()
{
  result = qword_1EC9E82B8;
  if (!qword_1EC9E82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E82B8);
  }

  return result;
}

uint64_t sub_1D7CBA554()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CBA650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7CBA698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v123 = a2;
  v131 = a1;
  v130 = a4;
  v126 = sub_1D7D2BE9C();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v4);
  v129 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D7D288EC();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v6);
  v121 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D7D2889C();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v8);
  v132 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v151, v10);
  v113 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v148 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v133 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v146 = (&v112 - v20);
  sub_1D7CBC2E0(0, &qword_1EC9E82C0, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v112 - v23;
  v25 = type metadata accessor for TableOfContentsHeaderViewModel();
  v134 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v145 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79ECB58();
  v150 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v147 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v144 = &v112 - v34;
  sub_1D79ECCB8(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CBC160();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v112 - v49;
  v51 = *(v37 + 16);
  v118 = v37 + 16;
  v115 = v51;
  (v51)(v40, v131, v36, v48);
  v52 = sub_1D7CBA650(&qword_1EC9E82D0, sub_1D79ECCB8);
  v117 = v40;
  v114 = v52;
  sub_1D7D304FC();
  v116 = v42;
  v53 = *(v42 + 36);
  sub_1D7CBA650(&qword_1EC9E7F18, sub_1D79ECCB8);
  sub_1D7D30A5C();
  if (*&v50[v53] == v152)
  {
    v149 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v56 = v53;
    v138 = (v29 + 16);
    v137 = (v29 + 8);
    v136 = (v134 + 56);
    v135 = (v134 + 48);
    v149 = MEMORY[0x1E69E7CC0];
    v57 = v133;
    v143 = v45;
    v142 = v29;
    v141 = v25;
    v140 = v36;
    v139 = v56;
    do
    {
      v58 = v24;
      v59 = sub_1D7D30AAC();
      v60 = v144;
      v61 = v150;
      (*v138)(v144);
      v59(&v152, 0);
      sub_1D7D30A6C();
      v62 = v146;
      sub_1D7D29EEC();
      (*v137)(v60, v61);
      sub_1D7CBC460(v62, v57, type metadata accessor for TableOfContentsModel);
      v24 = v58;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v58;
        v64 = v141;
        (*v136)(v63, 1, 1, v141);
        sub_1D7CBC280(v57, type metadata accessor for TableOfContentsModel);
      }

      else
      {
        sub_1D7CBC460(v57, v58, type metadata accessor for TableOfContentsHeaderViewModel);
        v65 = v58;
        v64 = v141;
        (*v136)(v65, 0, 1, v141);
      }

      v66 = (*v135)(v24, 1, v64);
      v29 = v142;
      if (v66 == 1)
      {
        sub_1D7CBC1F4(v24);
        v36 = v140;
        v45 = v143;
      }

      else
      {
        sub_1D7CBC460(v24, v145, type metadata accessor for TableOfContentsHeaderViewModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v140;
        if (isUniquelyReferenced_nonNull_native)
        {
          v68 = v149;
        }

        else
        {
          v68 = sub_1D79E5F80(0, v149[2] + 1, 1, v149);
        }

        v45 = v143;
        v70 = v68[2];
        v69 = v68[3];
        v71 = v134;
        if (v70 >= v69 >> 1)
        {
          v73 = sub_1D79E5F80(v69 > 1, v70 + 1, 1, v68);
          v71 = v134;
          v68 = v73;
        }

        v68[2] = v70 + 1;
        v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v149 = v68;
        sub_1D7CBC460(v145, v68 + v72 + *(v71 + 72) * v70, type metadata accessor for TableOfContentsHeaderViewModel);
        v57 = v133;
      }

      sub_1D7D30A5C();
    }

    while (*&v50[v139] != v152);
  }

  sub_1D7CBC280(v50, sub_1D7CBC160);
  v115(v117, v131, v36);
  sub_1D7D304FC();
  v54 = *(v116 + 36);
  sub_1D7D30A5C();
  if (*&v45[v54] == v152)
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v146 = (v29 + 16);
    v145 = (v29 + 8);
    v55 = MEMORY[0x1E69E7CC0];
    do
    {
      v144 = v55;
      v74 = v113;
      while (1)
      {
        v75 = sub_1D7D30AAC();
        v76 = v147;
        v77 = v150;
        (*v146)(v147);
        v75(&v152, 0);
        sub_1D7D30A6C();
        v78 = v148;
        sub_1D7D29EEC();
        (*v145)(v76, v77);
        sub_1D7CBC460(v78, v74, type metadata accessor for TableOfContentsModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1D7CBC280(v74, type metadata accessor for TableOfContentsModel);
        sub_1D7D30A5C();
        if (*&v45[v54] == v152)
        {
          v55 = v144;
          goto LABEL_28;
        }
      }

      v79 = v74[5];
      v156 = v74[4];
      v157 = v79;
      v158 = v74[6];
      v80 = v74[1];
      v152 = *v74;
      v81 = v74[2];
      v155 = v74[3];
      v153 = v80;
      v154 = v81;
      v55 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1D79E5E40(0, *(v55 + 2) + 1, 1, v55);
      }

      v83 = *(v55 + 2);
      v82 = *(v55 + 3);
      if (v83 >= v82 >> 1)
      {
        v55 = sub_1D79E5E40((v82 > 1), v83 + 1, 1, v55);
      }

      *(v55 + 2) = v83 + 1;
      v84 = &v55[112 * v83];
      v85 = v152;
      v86 = v154;
      *(v84 + 3) = v153;
      *(v84 + 4) = v86;
      *(v84 + 2) = v85;
      v87 = v155;
      v88 = v156;
      v89 = v158;
      *(v84 + 7) = v157;
      *(v84 + 8) = v89;
      *(v84 + 5) = v87;
      *(v84 + 6) = v88;
      sub_1D7D30A5C();
    }

    while (*&v45[v54] != v152);
  }

LABEL_28:
  v144 = v55;
  sub_1D7CBC280(v45, sub_1D7CBC160);
  sub_1D7D2AF9C();
  sub_1D7D30FFC();
  v151 = v90;
  v150 = v91;
  sub_1D7D2AF9C();
  v148 = v92;
  v147 = v93;
  sub_1D7D2AFDC();
  v146 = v94;
  v145 = v95;
  sub_1D7D2AF7C();
  v143 = v96;
  v142 = v97;
  sub_1D7D2AFEC();
  v141 = v98;
  v140 = v99;
  sub_1D7D2AFCC();
  sub_1D7D2AF8C();
  sub_1D7D2AFBC();
  sub_1D7D2AFFC();
  sub_1D7D2AFAC();
  (*(v119 + 104))(v121, *MEMORY[0x1E69D7278], v120);
  v100 = v132;
  sub_1D7D2886C();
  v101 = v149;
  v102 = sub_1D7CBB904(v149, v122, v55, v100);
  v104 = v103;
  v105 = sub_1D7D2AFCC();
  v106 = sub_1D7BDBDA0(v105, v102, v104);

  v151 = v106;
  v107 = v124;
  sub_1D7D289AC();
  v150 = v107;
  if (v107)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v147 = *(&v154 + 1);
    *&v152 = v101;
    v159 = v154;
    v108 = MEMORY[0x1E69E62F8];
    sub_1D7CBC2E0(0, &qword_1EC9E82D8, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E62F8]);
    sub_1D7CBC2E0(0, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes, v108);
    sub_1D79E6DFC(0);
    v146 = v109;
    sub_1D7CBC344(&qword_1EC9E82E0, &qword_1EC9E82D8, type metadata accessor for TableOfContentsHeaderViewModel);
    sub_1D7CBC344(&qword_1EC9E82E8, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);

    v148 = sub_1D7D294FC();

    *&v152 = v144;
    v159 = v147;
    sub_1D79AADEC(0, &qword_1EC9E82F0);
    sub_1D79AADEC(0, &qword_1EC9E6648);
    sub_1D7CBC3A8(&qword_1EC9E82F8, &qword_1EC9E82F0);
    sub_1D7CBC3A8(&qword_1EC9E8300, &qword_1EC9E6648);

    v110 = sub_1D7D294FC();

    swift_bridgeObjectRelease_n();

    (*(v125 + 104))(v129, *MEMORY[0x1E69D8670], v126);
    *&v152 = v148;
    sub_1D79E354C(v110);
    type metadata accessor for TableOfContentsLayoutModel();
    sub_1D7AEAFC8();
    sub_1D7CBA650(&qword_1EC9E8760, type metadata accessor for TableOfContentsLayoutModel);
    sub_1D7D2B06C();

    return (*(v127 + 8))(v132, v128);
  }

  return result;
}

uint64_t sub_1D7CBB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v23 = a4;
    v24 = a3;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C938(0, v15, 0);
    v16 = v27;
    v26 = a2;
    v17 = *(a2 + 96);
    v18 = *(type metadata accessor for TableOfContentsHeaderViewModel() - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v25 = *(v18 + 72);
    do
    {
      sub_1D7CBC3F8(v19, v14, type metadata accessor for TableOfContentsHeaderViewModel);
      sub_1D799CC84(v26 + 16, &v14[*(v8 + 20)]);
      *&v14[*(v8 + 24)] = v17;
      v27 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_1D7A5C938(v20 > 1, v21 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v21 + 1;
      v11 = sub_1D7CBC460(v14, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for TableOfContentsHeaderViewLayout.Context);
      v19 += v25;
      --v15;
    }

    while (v15);
    a4 = v23;
    a3 = v24;
    a2 = v26;
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  *(&v23 - 2) = a2;
  *(&v23 - 1) = a4;
  sub_1D7A29208(sub_1D7CBC4C8, (&v23 - 4), a3);
  return v16;
}

uint64_t sub_1D7CBBB84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v22 = a1[6];
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v8 = a1[3];
  v18 = a1[2];
  v19 = v8;
  sub_1D799CC84(a2 + 56, (a4 + 112));
  v9 = *(type metadata accessor for TableOfContentsPDFCellViewLayout.Context() + 24);
  v10 = sub_1D7D2889C();
  (*(*(v10 - 8) + 16))(&a4[v9], a3, v10);
  v11 = v21;
  *(a4 + 4) = v20;
  *(a4 + 5) = v11;
  *(a4 + 6) = v22;
  v12 = v17;
  *a4 = v16;
  *(a4 + 1) = v12;
  v13 = v19;
  *(a4 + 2) = v18;
  *(a4 + 3) = v13;
  return sub_1D7A2B848(&v16, &v15);
}

uint64_t sub_1D7CBBC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TableOfContentsLayoutModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FC3CC();
  v10 = *(v9 + 48);
  sub_1D7CBC3F8(a2, v8, type metadata accessor for TableOfContentsHeaderViewModel);
  sub_1D7CBC3F8(a3, &v8[v10], type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
  swift_storeEnumTagMultiPayload();
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel);
  return sub_1D7D2ABAC();
}

uint64_t sub_1D7CBBD94(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v5 = type metadata accessor for TableOfContentsLayoutModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v10 = a2[5];
  v32 = a2[4];
  v33 = v10;
  v11 = a2[5];
  v34 = a2[6];
  v12 = a2[1];
  v29[0] = *a2;
  v29[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v30 = a2[2];
  v31 = v13;
  v16 = a3[5];
  v46 = a3[4];
  v47 = v16;
  v17 = a3[3];
  v44 = a3[2];
  v45 = v17;
  v18 = a3[1];
  v42 = *a3;
  v43 = v18;
  v35 = v15;
  v36 = v14;
  v19 = a2[6];
  v40 = v11;
  v41 = v19;
  v38 = v9;
  v39 = v32;
  v37 = v30;
  v8[2] = v30;
  v8[3] = v9;
  *v8 = v15;
  v8[1] = v14;
  v20 = v39;
  v21 = v40;
  v22 = v42;
  v8[6] = v41;
  v8[7] = v22;
  v8[4] = v20;
  v8[5] = v21;
  v23 = v43;
  v24 = v44;
  v25 = v47;
  v8[11] = v46;
  v8[12] = v25;
  v26 = v45;
  v8[9] = v24;
  v8[10] = v26;
  v8[8] = v23;
  swift_storeEnumTagMultiPayload();
  sub_1D7A2B848(v29, v28);
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel);
  return sub_1D7D2ABAC();
}

uint64_t sub_1D7CBBF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D7D2B02C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D7CBBFE8, 0, 0);
}

uint64_t sub_1D7CBBFE8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  sub_1D7A28E70(sub_1D7CBC140, v6);

  (*(v4 + 16))(v1, v5, v3);
  type metadata accessor for TableOfContentsLayoutModel();
  sub_1D7A2B73C();
  sub_1D7CBA650(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel);
  sub_1D7D2A21C();

  v7 = v0[1];

  return v7();
}

void sub_1D7CBC160()
{
  if (!qword_1EC9E82C8)
  {
    sub_1D79ECCB8(255);
    sub_1D7CBA650(&qword_1EC9E7F18, sub_1D79ECCB8);
    v0 = sub_1D7D315EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E82C8);
    }
  }
}

uint64_t sub_1D7CBC1F4(uint64_t a1)
{
  sub_1D7CBC2E0(0, &qword_1EC9E82C0, type metadata accessor for TableOfContentsHeaderViewModel, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CBC280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CBC2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CBC344(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7CBC2E0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7CBC3A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7CBC3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CBC460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for EndOfRecipeFeedConfigFetchResult()
{
  result = qword_1EC9E8308;
  if (!qword_1EC9E8308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CBC55C()
{
  result = type metadata accessor for EndOfRecipeFeedContentConfig();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AlertBlockedStoryBehavior.init(selectionReason:feedKind:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1D7D2EB7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v23[-v14];
  v16 = *a1;
  v24 = 1;
  if ((*(v7 + 48))(a2, 1, v6, v13) == 1)
  {
    result = sub_1D7CBD6F8(a2, &qword_1EE0BB1B8, MEMORY[0x1E69B5F78]);
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v18 = *(v7 + 32);
  v18(v15, a2, v6);
  v18(v10, v15, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x1E69B5F38] || result == *MEMORY[0x1E69B5F00])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E69B5F30] || result == *MEMORY[0x1E69B5EE0])
  {
    v20 = 0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E69B5EB0])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E69B5E98] || result == *MEMORY[0x1E69B5F40])
  {
    goto LABEL_8;
  }

  v20 = 1;
  if (result != *MEMORY[0x1E69B5F48] && result != *MEMORY[0x1E69B5F08] && result != *MEMORY[0x1E69B5EB8] && result != *MEMORY[0x1E69B5F58] && result != *MEMORY[0x1E69B5F60] && result != *MEMORY[0x1E69B5F68] && result != *MEMORY[0x1E69B5E88] && result != *MEMORY[0x1E69B5EE8])
  {
    v20 = 1;
    if (result != *MEMORY[0x1E69B5F70] && result != *MEMORY[0x1E69B5ED0])
    {
      v20 = 1;
      if (result != *MEMORY[0x1E69B5F10] && result != *MEMORY[0x1E69B5F28] && result != *MEMORY[0x1E69B5E90] && result != *MEMORY[0x1E69B5EF0] && result != *MEMORY[0x1E69B5EF8] && result != *MEMORY[0x1E69B5EC0] && result != *MEMORY[0x1E69B5ED8] && result != *MEMORY[0x1E69B5F18] && result != *MEMORY[0x1E69B5F20] && result != *MEMORY[0x1E69B5F50] && result != *MEMORY[0x1E69B5EA8] && result != *MEMORY[0x1E69B5EC8] && result != *MEMORY[0x1E69B5EA0])
      {
        v24 = 1;
        result = (*(v7 + 8))(v10, v6);
        v20 = v24;
      }
    }
  }

LABEL_9:
  *a3 = v16;
  a3[1] = v20;
  return result;
}

uint64_t AlertOpenBlockedStory.learnMoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlertOpenBlockedStory() + 24);

  return sub_1D79A8A20(v3, a1);
}

uint64_t type metadata accessor for AlertOpenBlockedStory()
{
  result = qword_1EE0BD578;
  if (!qword_1EE0BD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlertOpenBlockedStory.SelectionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CBCB08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (v2 != 1)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x79726F7473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6575737369;
  if (*a2 != 1)
  {
    v8 = 0x657069636572;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79726F7473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7CBCBF4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CBCC8C()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CBCD10()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CBCDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7CBDDDC();
  *a1 = result;
  return result;
}

void sub_1D7CBCDD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (v2 != 1)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79726F7473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AlertOpenBlockedStory.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t AlertOpenBlockedStory.message.getter()
{
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    type metadata accessor for AlertOpenBlockedStory();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for Localized();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  v6 = *v0;
  v5 = v0[1];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D79D6AE0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_1D7D3037C();

  return v7;
}

void sub_1D7CBD1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AlertOpenBlockedStory.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4D0;
  type metadata accessor for AlertOpenBlockedStory();
  sub_1D79EF194();
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1D7D3133C();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1D79D6AE0();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;

  v7 = sub_1D7D3037C();

  return v7;
}

uint64_t AlertOpenBlockedStory.neutralButton.getter()
{
  v1 = MEMORY[0x1E6968FB0];
  sub_1D7CBD1AC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for AlertOpenBlockedStory();
  sub_1D79A8A20(v0 + *(v6 + 24), v5);
  v7 = sub_1D7D2824C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_1D7CBD6F8(v5, &qword_1EE0CB770, v1);
  if (v8 == 1)
  {
    if (qword_1EC9DFD60 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7D29AAC();
    return 0;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 16) = xmmword_1D7D3B4D0;
    if (*(v0 + *(v6 + 28)))
    {
      if (*(v0 + *(v6 + 28)) == 1)
      {
        v14 = 0xE500000000000000;
        v15 = 0x6575737369;
      }

      else
      {
        v14 = 0xE600000000000000;
        v15 = 0x657069636572;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      v15 = 0x79726F7473;
    }

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D79D6AE0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    v16 = sub_1D7D3037C();

    return v16;
  }
}

uint64_t sub_1D7CBD6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7CBD1AC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AlertOpenBlockedStory.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = 0xE500000000000000;
  sub_1D7D2811C();

  sub_1D7CBD1AC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  v5 = type metadata accessor for AlertOpenBlockedStory();
  if (*(v0 + *(v5 + 28)))
  {
    if (*(v0 + *(v5 + 28)) == 1)
    {
      v6 = 0x6575737369;
    }

    else
    {
      v3 = 0xE600000000000000;
      v6 = 0x657069636572;
    }
  }

  else
  {
    v6 = 0x79726F7473;
  }

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D79D6AE0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v3;
  v7 = sub_1D7D3037C();

  return v7;
}

void *sub_1D7CBD928(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a3;
  v8 = a2;
  return a1;
}

uint64_t sub_1D7CBD970()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

unint64_t sub_1D7CBDAC8()
{
  result = qword_1EC9E8318;
  if (!qword_1EC9E8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8318);
  }

  return result;
}

void sub_1D7CBDB44()
{
  sub_1D7CBD1AC(319, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for AlertBlockedStoryBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertBlockedStoryBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7CBDD88()
{
  result = qword_1EC9E8320;
  if (!qword_1EC9E8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8320);
  }

  return result;
}

uint64_t sub_1D7CBDDDC()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

double sub_1D7CBDE2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v115 = type metadata accessor for LikeDislikeArticleFeatureContext();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v5);
  v112 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v111 = &v110 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D7CC15A4(0, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v110 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v110 - v25;
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v10);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v113 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v110 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v110 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v110 - v44;
  v46 = sub_1D7D2DB0C();
  v117 = a3;
  v119 = a1;
  if (v46)
  {
    sub_1D7CC1668(a1, v26, &qword_1EE0CA948, sub_1D7BD6E0C);
    sub_1D7BD6E0C(0);
    if ((*(*(v47 - 8) + 48))(v26, 1, v47) == 1)
    {
      sub_1D7CC1608(v26, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v48 = 1;
    }

    else
    {
      sub_1D7CC174C(v26, v45);
      sub_1D7CC17B0(v26, sub_1D7BD6E0C);
      v48 = 0;
    }

    v53 = v118;
    (*(v114 + 56))(v45, v48, 1, v115);
    v54 = v116;
    sub_1D79DA880(v116, v121);
    v55 = sub_1D7CBED2C(v45);
    v57 = v56;
    LODWORD(v118) = v58;
    v59 = MEMORY[0x1E69E6720];
    sub_1D7CC1608(v121, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7CC1994);
    sub_1D7CC1608(v45, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    sub_1D7CC15A4(0, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
    v61 = *(v60 + 28);
    sub_1D79DA880(v54, v121);
    v62 = sub_1D7CBED2C(v119 + v61);
    v64 = v63;
    LODWORD(v115) = v65;
    sub_1D7CC1608(v121, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, v59, sub_1D7CC1994);
    v67 = qword_1EE0C7FF0;
    v66 = off_1EE0C7FF8;
    sub_1D79DA880(v54, v121);
    v119 = *(v53 + 80);
    v68 = v117;
    *(v117 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
    *(v68 + 32) = &off_1F52A4FC8;
    v69 = swift_allocObject();
    *v68 = v69;
    *(v69 + 16) = v67;
    *(v69 + 24) = v66;
    *(v69 + 32) = v55;
    *(v69 + 40) = v57;
    *(v69 + 48) = v118;
    *(v69 + 56) = v62;
    *(v69 + 64) = v64;
    *(v69 + 72) = v115;
    v70 = v122;

    sub_1D7A1EE44(v55);
    sub_1D7A1EE44(v62);
    *(v69 + 96) = sub_1D7C550C4(v70);
    *(v69 + 104) = v119;
    v71 = v123;

    BarButtonOrder.init(for:)(&v120, v71);
    sub_1D7A1EE84(v62);
    sub_1D7A1EE84(v55);
    sub_1D79DA8DC(v121);
    goto LABEL_28;
  }

  sub_1D7CC1668(a1, v22, &qword_1EE0CA948, sub_1D7BD6E0C);
  sub_1D7BD6E0C(0);
  v50 = v49;
  v51 = *(*(v49 - 8) + 48);
  if (v51(v22, 1, v49) == 1)
  {
    sub_1D7CC1608(v22, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v52 = v115;
LABEL_12:
    sub_1D7CC1668(v119, v14, &qword_1EE0CA948, sub_1D7BD6E0C);
    v81 = v51(v14, 1, v50);
    v76 = v118;
    if (v81 == 1)
    {
      sub_1D7CC1608(v14, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v82 = 1;
    }

    else
    {
      sub_1D7CC174C(v14, v33);
      sub_1D7CC17B0(v14, sub_1D7BD6E0C);
      v82 = 0;
    }

    v78 = v116;
    v79 = v114;
    (*(v114 + 56))(v33, v82, 1, v52);
    v83 = sub_1D7CBEF94(v33);
    v85 = v84;
    v87 = v86;
    sub_1D7CC1608(v33, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    goto LABEL_21;
  }

  sub_1D79DA880(&v22[*(v50 + 28)], v121);
  sub_1D7CC17B0(v22, sub_1D7BD6E0C);
  v72 = v122;
  sub_1D79DA8DC(v121);
  v73 = [v72 horizontalSizeClass];

  v74 = v73 == 1;
  v52 = v115;
  if (!v74)
  {
    goto LABEL_12;
  }

  sub_1D7CC1668(v119, v18, &qword_1EE0CA948, sub_1D7BD6E0C);
  v75 = v51(v18, 1, v50);
  v76 = v118;
  if (v75 == 1)
  {
    sub_1D7CC1608(v18, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v77 = 1;
    v78 = v116;
    v79 = v114;
    v80 = v41;
  }

  else
  {
    v80 = v41;
    sub_1D7CC174C(v18, v41);
    sub_1D7CC17B0(v18, sub_1D7BD6E0C);
    v77 = 0;
    v78 = v116;
    v79 = v114;
  }

  (*(v79 + 56))(v80, v77, 1, v52);
  sub_1D7CC1668(v80, v37, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v79 + 48))(v37, 1, v52) == 1)
  {
    v88 = MEMORY[0x1E69E6720];
    sub_1D7CC1608(v80, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    v89 = v88;
    v76 = v118;
    sub_1D7CC1608(v37, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v89, sub_1D7CC15A4);
    v83 = 0;
    v85 = 0;
  }

  else
  {
    v90 = v111;
    sub_1D7CC16E8(v37, v111);
    v83 = *(v90 + 16);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1D7D3B4D0;
    swift_unknownObjectRetain();
    sub_1D7CC0128(v90, (v85 + 32));
    sub_1D7CC17B0(v90, type metadata accessor for LikeDislikeArticleFeatureContext);
    sub_1D7CC1608(v80, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
  }

  v87 = 0;
LABEL_21:
  v91 = *(v78 + 48);
  v92 = v85;
  sub_1D7A1EE44(v83);
  v93 = [v91 horizontalSizeClass];
  sub_1D7CC15A4(0, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v95 = *(v94 + 28);
  LODWORD(v118) = v87;
  v96 = v83;
  if (v93 == 1)
  {
    v97 = v113;
    sub_1D7CC1668(v119 + v95, v113, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
    if ((*(v79 + 48))(v97, 1, v52) == 1)
    {
      sub_1D7CC1608(v97, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
      v119 = 0;
      v98 = 0;
    }

    else
    {
      v102 = v112;
      sub_1D7CC16E8(v97, v112);
      v103 = *(v102 + 16);
      sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1D7D3B4D0;
      v119 = v103;
      swift_unknownObjectRetain();
      sub_1D7CC0128(v102, (v98 + 32));
      sub_1D7CC17B0(v102, type metadata accessor for LikeDislikeArticleFeatureContext);
    }

    v101 = 0;
  }

  else
  {
    v119 = sub_1D7CBEF94(v119 + v95);
    v98 = v99;
    v101 = v100;
  }

  v105 = qword_1EE0C7FF0;
  v104 = off_1EE0C7FF8;
  sub_1D79DA880(v78, v121);
  v116 = *(v76 + 80);
  v68 = v117;
  *(v117 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v68 + 32) = &off_1F52A4FC8;
  v69 = swift_allocObject();
  *v68 = v69;
  *(v69 + 16) = v105;
  *(v69 + 24) = v104;
  *(v69 + 32) = v96;
  *(v69 + 40) = v92;
  *(v69 + 48) = v118;
  v106 = v119;
  *(v69 + 56) = v119;
  *(v69 + 64) = v98;
  *(v69 + 72) = v101;
  v107 = v122;
  sub_1D7A1EE44(v106);
  sub_1D7A1EE44(v96);
  sub_1D7A1EE44(v106);

  *(v69 + 96) = sub_1D7C550C4(v107);
  *(v69 + 104) = v116;
  v108 = v123;

  BarButtonOrder.init(for:)(&v120, v108);
  sub_1D7A1EE84(v106);
  sub_1D7A1EE84(v96);
  sub_1D79DA8DC(v121);
  sub_1D7A1EE84(v106);
  sub_1D7A1EE84(v96);
LABEL_28:
  result = *&v120;
  *(v69 + 80) = v120;
  *(v68 + 40) = 0;
  return result;
}

uint64_t sub_1D7CBED2C(uint64_t a1)
{
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for LikeDislikeArticleFeatureContext();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1668(a1, v5, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D7CC1608(v5, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    return 0;
  }

  else
  {
    sub_1D7CC16E8(v5, v10);
    v11 = *(v10 + 2);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7D3C680;
    swift_unknownObjectRetain();
    sub_1D7CBF1F0(v10, (v12 + 32));
    sub_1D7CBF984(v10, (v12 + 48));
    sub_1D7CC0128(v10, (v12 + 64));
    sub_1D7CC17B0(v10, type metadata accessor for LikeDislikeArticleFeatureContext);
  }

  return v11;
}

uint64_t sub_1D7CBEF94(uint64_t a1)
{
  sub_1D7CC15A4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for LikeDislikeArticleFeatureContext();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1668(a1, v5, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D7CC1608(v5, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7CC15A4);
    return 0;
  }

  else
  {
    sub_1D7CC16E8(v5, v10);
    v11 = *(v10 + 2);
    sub_1D7CC1994(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7D3B4E0;
    swift_unknownObjectRetain();
    sub_1D7CBF1F0(v10, (v12 + 32));
    sub_1D7CBF984(v10, (v12 + 48));
    sub_1D7CC17B0(v10, type metadata accessor for LikeDislikeArticleFeatureContext);
  }

  return v11;
}

void sub_1D7CBF1F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  sub_1D7CC1810();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC18A0(0, &qword_1EE0BFF78, &qword_1EE0BECD8, 0x1E69DCAB8, sub_1D7992EFC);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v44 = v41 - v9;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v41 - v12;
  v14 = sub_1D7D2B49C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB4C0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EE0BB4C8;
  }

  else
  {
    if (qword_1EC9DFFE8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EC9E9270;
  }

  v20 = *v19;
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB560 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EE0BB568;
  }

  else
  {
    if (qword_1EC9E0010 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EC9E9290;
  }

  v22 = *v21;
  sub_1D7CC190C(0, &qword_1EE0BB260, MEMORY[0x1E69D8190]);
  v41[1] = *(v2 + 64);
  v41[2] = v23;
  (*(v15 + 104))(v18, *MEMORY[0x1E69D7FA8], v14);
  v24 = *(a1 + *(type metadata accessor for LikeDislikeArticleFeatureContext() + 20));
  v50 = sub_1D7D28A3C();
  v51 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v48 = v24;
  v52 = 0u;
  v53 = 0u;
  v54 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  v25 = v22;
  swift_unknownObjectRetain();

  sub_1D7D2B0EC();
  sub_1D7D2C45C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v26 = sub_1D7D2F73C();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  v47 = v25;
  v48 = v20;
  sub_1D7992EFC(0, &qword_1EE0BECD8);
  v43 = v20;
  v42 = v25;
  sub_1D7D2A8CC();
  sub_1D7CC09F8();
  sub_1D7CC18A0(0, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  v28 = sub_1D7D2B61C();
  v48 = qword_1EE0C7FF0;
  v49 = off_1EE0C7FF8;
  v29 = v28;

  MEMORY[0x1DA70DE90](0x656B696C3A3ALL, 0xE600000000000000);
  v30 = sub_1D7D3031C();

  [v29 setIdentifier_];

  sub_1D7D2B60C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = objc_opt_self();
  v33 = v29;
  v34 = [v32 bundleForClass_];
  sub_1D7D2811C();

  v35 = sub_1D7D3031C();

  [v33 setAccessibilityLabel_];

  if (sub_1D7D2DB0C())
  {
    v36 = v33;
    v37 = [v32 bundleForClass_];
    sub_1D7D2811C();

    v38 = sub_1D7D3031C();

    [v36 setTitle_];

    v39 = v42;
  }

  else
  {
    v36 = v42;
    v39 = v43;
  }

  v40 = v46;
  *v46 = v33;
  v40[1] = 0;
}

void sub_1D7CBF984(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  sub_1D7CC1810();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC18A0(0, &qword_1EE0BFF78, &qword_1EE0BECD8, 0x1E69DCAB8, sub_1D7992EFC);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v44 = v41 - v9;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v41 - v12;
  v14 = sub_1D7D2B49C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB498 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EE0BB4A0;
  }

  else
  {
    if (qword_1EC9DFFF0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EC9E9278;
  }

  v20 = *v19;
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0BB528 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EE0BB530;
  }

  else
  {
    if (qword_1EC9E0018 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EC9E9298;
  }

  v22 = *v21;
  sub_1D7CC190C(0, &qword_1EE0BB260, MEMORY[0x1E69D8190]);
  v41[1] = *(v2 + 64);
  v41[2] = v23;
  (*(v15 + 104))(v18, *MEMORY[0x1E69D7FA8], v14);
  v24 = *(a1 + *(type metadata accessor for LikeDislikeArticleFeatureContext() + 20));
  v50 = sub_1D7D28A3C();
  v51 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v48 = v24;
  v52 = 0u;
  v53 = 0u;
  v54 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  v25 = v22;
  swift_unknownObjectRetain();

  sub_1D7D2B0EC();
  sub_1D7D2C46C();
  swift_unknownObjectRetain();
  sub_1D7D2F72C();
  v26 = sub_1D7D2F73C();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  v47 = v25;
  v48 = v20;
  sub_1D7992EFC(0, &qword_1EE0BECD8);
  v43 = v20;
  v42 = v25;
  sub_1D7D2A8CC();
  sub_1D7CC09F8();
  sub_1D7CC18A0(0, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  v28 = sub_1D7D2B61C();
  v48 = qword_1EE0C7FF0;
  v49 = off_1EE0C7FF8;
  v29 = v28;

  MEMORY[0x1DA70DE90](0x6B696C7369643A3ALL, 0xE900000000000065);
  v30 = sub_1D7D3031C();

  [v29 setIdentifier_];

  sub_1D7D2B60C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = objc_opt_self();
  v33 = v29;
  v34 = [v32 bundleForClass_];
  sub_1D7D2811C();

  v35 = sub_1D7D3031C();

  [v33 setAccessibilityLabel_];

  if (sub_1D7D2DB0C())
  {
    v36 = v33;
    v37 = [v32 bundleForClass_];
    sub_1D7D2811C();

    v38 = sub_1D7D3031C();

    [v36 setTitle_];

    v39 = v42;
  }

  else
  {
    v36 = v42;
    v39 = v43;
  }

  v40 = v46;
  *v46 = v33;
  v40[1] = 0;
}

uint64_t sub_1D7CC0128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a1;
  v65 = a2;
  sub_1D7CC19E4(0, &qword_1EE0BFFB8, &qword_1EE0BFFC0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v64 = v48 - v5;
  sub_1D7CC19E4(0, &qword_1EE0BFFC8, &unk_1EE0BFFD0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v63 = v48 - v8;
  sub_1D7CC15A4(0, &unk_1EE0BF620, MEMORY[0x1E69B63C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = v48 - v11;
  v52 = sub_1D7D2B49C();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v12);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1A3C(0, &unk_1EE0BFFD0);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = v48 - v16;
  v17 = sub_1D7D2FC2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC1AD8();
  v68 = *(v22 - 8);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v57 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v67 = v48 - v28;
  v30 = *(v18 + 104);
  v55 = *MEMORY[0x1E69B6618];
  v29 = v55;
  v30(v21, v55, v17, v27);
  v56 = v18 + 104;
  v54 = v30;
  sub_1D7992EFC(0, &qword_1EE0BECD8);
  v31 = sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638]);

  v53 = v31;
  sub_1D7D2A8BC();
  (v30)(v21, v29, v17);

  sub_1D7D2A8BC();
  v59 = qword_1EE0C7FF0;
  v48[1] = off_1EE0C7FF8;
  v48[0] = *(v2 + 56);
  v58 = *(v2 + 64);
  (*(v51 + 104))(v50, *MEMORY[0x1E69D7FA8], v52);
  v32 = *(v60 + *(type metadata accessor for LikeDislikeArticleFeatureContext() + 20));
  v72 = sub_1D7D28A3C();
  v73 = sub_1D7CC1C94(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v70 = v32;
  v74 = 0u;
  v75 = 0u;
  v76 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  swift_unknownObjectRetain();

  v52 = sub_1D7D2B0EC();
  v51 = sub_1D7D2C44C();
  swift_unknownObjectRetain();
  v33 = v66;
  sub_1D7D2F72C();
  v34 = sub_1D7D2F73C();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v50 = _s5TeaUI11ContextMenuC12NewsArticlesE17likeDislikeGroups8headlineSayAA0cD9Groupable_pSgGSo19FCHeadlineProviding_p_tFZ_0();
  (*(v68 + 16))(v57, v67, v69);
  sub_1D7CC09F8();
  v35 = v61;
  v36 = v62;
  v37 = v63;
  v38 = v49;
  (*(v61 + 16))(v63, v49, v62);
  (*(v35 + 56))(v37, 0, 1, v36);
  v54(v21, v55, v17);

  v39 = v64;
  sub_1D7D2A8BC();
  sub_1D7CC1A3C(0, &qword_1EE0BFFC0);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_1D7CC1BAC();
  v42 = objc_allocWithZone(v41);
  v43 = sub_1D7D2A82C();
  v70 = qword_1EE0C7FF0;
  v71 = off_1EE0C7FF8;
  v44 = v43;

  MEMORY[0x1DA70DE90](0x6F626D6F633A3ALL, 0xE700000000000000);
  v45 = sub_1D7D3031C();

  [v44 setIdentifier_];

  (*(v35 + 8))(v38, v36);
  result = (*(v68 + 8))(v67, v69);
  v47 = v65;
  *v65 = v44;
  v47[1] = 0;
  return result;
}

id sub_1D7CC09F8()
{
  v1 = sub_1D7D2AC3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    sub_1D7D2AC8C();
    v10 = sub_1D7D2AC2C();
    v11 = *(v2 + 8);
    v11(v9, v1);
    if (v10)
    {
      sub_1D7D2AC8C();
      v12 = sub_1D7D2ABFC();
      v11(v5, v1);
      if (v12)
      {
        v13 = *(v0 + 88);
        sub_1D7CC1994(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D7D41F60;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        sub_1D7992EFC(0, &qword_1EE0BECE8);
        v15 = v10;
        v16 = v12;
        v17 = sub_1D7D3062C();

        v18 = [objc_opt_self() configurationWithPaletteColors_];

        v19 = [v13 configurationByApplyingConfiguration_];
        return v19;
      }
    }
  }

  v21 = *(v0 + 88);

  return v21;
}

id sub_1D7CC0C70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D7D2FC2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v13 = sub_1D7D2DB0C();
  v14 = (v5 + 88);
  v15 = *(v5 + 16);
  if ((v13 & 1) == 0)
  {
    v15(v8, a1, v4);
    v18 = (*v14)(v8, v4);
    if (v18 == *MEMORY[0x1E69B6628])
    {
      if (qword_1EC9DFFD0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC9E9258;
      goto LABEL_26;
    }

    if (v18 == *MEMORY[0x1E69B6630])
    {
      if (qword_1EC9DFFD8 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC9E9260;
      goto LABEL_26;
    }

    if (v18 == *MEMORY[0x1E69B6618])
    {
      if (qword_1EC9DFFE0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC9E9268;
      goto LABEL_26;
    }

    if (qword_1EC9DFFE0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC9E9268;
    *a2 = qword_1EC9E9268;
    v21 = *(v5 + 8);
    v25 = v24;
    v23 = v8;
    return v21(v23, v4);
  }

  v15(v12, a1, v4);
  v16 = (*v14)(v12, v4);
  if (v16 != *MEMORY[0x1E69B6628])
  {
    if (v16 == *MEMORY[0x1E69B6630])
    {
      if (qword_1EC9E0000 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC9E9288;
      goto LABEL_26;
    }

    if (v16 == *MEMORY[0x1E69B6618])
    {
      if (qword_1EE0BB518 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE0BB520;
      goto LABEL_26;
    }

    if (qword_1EE0BB518 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE0BB520;
    *a2 = qword_1EE0BB520;
    v21 = *(v5 + 8);
    v22 = v20;
    v23 = v12;
    return v21(v23, v4);
  }

  if (qword_1EC9DFFF8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC9E9280;
LABEL_26:
  *a2 = v17;

  return v17;
}

void sub_1D7CC105C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D7D2FC2C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69B6628] || v10 == *MEMORY[0x1E69B6630])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_1D7D2811C();
    v15 = v14;

    *a2 = v13;
    a2[1] = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E69B6618];
    v17 = v10;
    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_1D7D2811C();
    v22 = v21;

    *a2 = v20;
    a2[1] = v22;
    if (v17 != v16)
    {
      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_1D7CC1358@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D7D2FC2C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69B6628] || result == *MEMORY[0x1E69B6630])
  {
    *a2 = 1;
  }

  else
  {
    v12 = *MEMORY[0x1E69B6618];
    *a2 = 0;
    if (result != v12)
    {
      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

uint64_t sub_1D7CC14A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC1508(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 153))
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v5);
  return (*(v6 + 8))(a1, v5, v6) & 1;
}

void sub_1D7CC15A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7CC1608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7CC1668(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7CC15A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7CC16E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LikeDislikeArticleFeatureContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CC174C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LikeDislikeArticleFeatureContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CC17B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CC1810()
{
  if (!qword_1EE0BFF80)
  {
    sub_1D7CC18A0(255, &qword_1EE0BFF88, &unk_1EE0BFDC8, MEMORY[0x1E69D8188], sub_1D7CC190C);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFF80);
    }
  }
}

void sub_1D7CC18A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D7D2A8EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CC190C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2F73C();
    v8[1] = MEMORY[0x1E69E6370];
    v8[2] = MEMORY[0x1E69E6388];
    v8[3] = MEMORY[0x1E69D8888];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CC1994(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7CC19E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7CC1A3C(255, a3);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7CC1A3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D7D2FC2C();
    sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638]);
    v3 = sub_1D7D2A8EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7CC1AD8()
{
  if (!qword_1EE0BFFB0)
  {
    sub_1D7D2FC2C();
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    sub_1D7CC1C94(&qword_1EE0BF568, MEMORY[0x1E69B6638]);
    v0 = sub_1D7D2A8EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFFB0);
    }
  }
}

void sub_1D7CC1BAC()
{
  if (!qword_1EE0BB2F8)
  {
    sub_1D7D2F73C();
    sub_1D7D2FC2C();
    v0 = MEMORY[0x1E69B6638];
    sub_1D7CC1C94(&qword_1EE0BB168, MEMORY[0x1E69B6638]);
    sub_1D7CC1C94(&qword_1EE0BF568, v0);
    v1 = sub_1D7D2A83C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BB2F8);
    }
  }
}

uint64_t sub_1D7CC1C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7CC1CDC()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79F93E8(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = v9[9];
      v12 = v9[10];
      v13 = v9[11];
      sub_1D7A1EF2C(v11, v12, v13);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1D7A1ECE4(v11, v12, v13);
      return v11;
    }

LABEL_7:
    sub_1D7A74E98(v9, v5);
    v15 = &v5[*(v2 + 40)];
    v11 = *v15;
    sub_1D7A1EF2C(*v15, v15[1], v15[2]);
    sub_1D79F94F0(v5, type metadata accessor for ArticleViewerArticlePage);
    return v11;
  }

  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*(v9 + *(v14 + 48)), *(v9 + *(v14 + 48) + 8), *(v9 + *(v14 + 48) + 16));
    goto LABEL_7;
  }

  sub_1D79F94F0(v9, type metadata accessor for ArticleViewerPage);
  return 0;
}

void sub_1D7CC2124()
{
  v1 = OBJC_IVAR____TtC12NewsArticles8BrandBar_iconView;
  type metadata accessor for BrandBarNewsIcon();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton;
  sub_1D7D29BBC();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D7D3160C();
  __break(1u);
}

uint64_t static ArticleViewerFeatures.bottomPalette.getter()
{
  sub_1D7CC2280();

  return swift_initStaticObject();
}

void sub_1D7CC2280()
{
  if (!qword_1EE0C88F0)
  {
    type metadata accessor for BottomPaletteFeatureContext();
    v0 = type metadata accessor for ArticleViewerFeature();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C88F0);
    }
  }
}

uint64_t sub_1D7CC22FC()
{
  type metadata accessor for BrandBarNavigationAnimation();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_1D7CC2358()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for BrandBarToolbarCompressionAnimation();
    result = swift_allocObject();
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 1;
    *(result + 40) = v1;
  }

  return result;
}

id sub_1D7CC23AC(uint64_t a1)
{
  sub_1D799CC84(a1, v6);
  v1 = type metadata accessor for TextSizeControlModule();
  v2 = objc_allocWithZone(v1);
  sub_1D799CC84(v6, v2 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_1D7CC2424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  v3 = type metadata accessor for TextSizeControlModule();
  v4 = objc_allocWithZone(v3);
  sub_1D799CC84(v8, v4 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  a2[3] = v3;
  a2[4] = &off_1F52A3930;
  *a2 = v5;
  return result;
}

uint64_t sub_1D7CC24B4()
{
  type metadata accessor for TextSizeControlViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EC9E8360);
  sub_1D7D291EC();
}

uint64_t sub_1D7CC255C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E8360);
  result = sub_1D7D28D2C();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for TextSizeControlStyler();
    v21 = &off_1F529F3B8;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for TextSizeControlViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7CC2854(v3, v4, v5, *v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CC280C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TextSizeControlStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F529F3B8;
  *a1 = result;
  return result;
}

char *sub_1D7CC2854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v33[3] = type metadata accessor for TextSizeControlStyler();
  v33[4] = &off_1F529F3B8;
  v33[0] = a4;
  v10 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_divider;
  *&a5[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v11 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_stackView;
  *&a5[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) initWithFrame_];
  v12 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton;
  v13 = objc_opt_self();
  *&a5[v12] = [v13 buttonWithType_];
  v14 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseAction;
  sub_1D7AF946C();
  v16 = v15;
  *&a5[v14] = [objc_allocWithZone(v15) init];
  v17 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton;
  *&a5[v17] = [v13 buttonWithType_];
  v18 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseAction;
  *&a5[v18] = [objc_allocWithZone(v16) init];
  v19 = &a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_commandCenter];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_tracker] = a3;
  sub_1D799CC84(v33, &a5[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_styler]);
  v32.receiver = a5;
  v32.super_class = ObjectType;
  swift_unknownObjectRetain();

  v20 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v21 = *&v20[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseAction];
  v22 = *&v20[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton];
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_1D7D2C1FC();

  v26 = *&v23[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton];
  v27 = *&v23[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseAction];
  v28 = v26;
  sub_1D7D2C1FC();

  [v23 setModalPresentationStyle_];
  v29 = [v23 popoverPresentationController];

  if (v29)
  {
    [v29 setDelegate_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_1D7CC2B2C()
{
  v1 = v0[2];
  v11 = v0[1];
  *v12 = v1;
  v2 = v0[4];
  v13 = v0[3];
  v14 = v2;
  if (!*(&v11 + 1))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v5 = sub_1D7D303CC();

    return v5;
  }

  if (([v12[0] respondsToSelector_] & 1) == 0)
  {
    type metadata accessor for Localized();
    v6 = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = [v7 bundleForClass_];
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([v12[0] role] <= 8)
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
LABEL_7:
    sub_1D7D2811C();

    v5 = sub_1D7D303CC();

    sub_1D7AACF1C(&v11);
    return v5;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7CC2F30()
{
  sub_1D7C753A4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC2F98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2B7FC();
  v3 = sub_1D7D2B7DC();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  a1[5] = sub_1D7CC2B2C();
  a1[6] = v5;
  v6 = *MEMORY[0x1E69D8820];
  v7 = sub_1D7D2C83C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

uint64_t sub_1D7CC306C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  sub_1D7CC3CD4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CC3D48(0, &unk_1EC9E8378, MEMORY[0x1E69B3F80]);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v34 = &v33 - v12;
  v13 = type metadata accessor for RecipeBannerAd();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_1D7D2D16C();
  v17 = off_1F52B1E98;
  type metadata accessor for RecipeBannerAdFactory();
  v36 = v16;
  v17();
  v18 = v38;

  v19 = [v18 articles];
  sub_1D799621C();
  v20 = sub_1D7D3063C();

  if (v20 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1D7CC408C();
    v30 = swift_allocError();
    sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    v32 = v35;
    (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
    sub_1D7D2D16C();
    sub_1D7D2D4DC();

    sub_1D7CC3EA8(v32);

    return sub_1D7CC3F7C(v36, v37);
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1DA70EF00](0, v20);
    v22 = v34;
  }

  else
  {
    v22 = v34;
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = *(v20 + 32);
    swift_unknownObjectRetain();
  }

  v24 = sub_1D7D2CA5C();
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v33 - 2) = v23;
  *(&v33 - 1) = v18;
  sub_1D7D2CD4C();

  sub_1D7CC3E28(v22, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D7CC3F04(v22);
    swift_unknownObjectRelease();
    sub_1D7CC3FE0();

    sub_1D7CC3F7C(v36, v37);
    sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    return (*(*(v29 - 8) + 8))(v9, v29);
  }

  v26 = *v9;

  sub_1D7CC3D48(0, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
  v28 = v35;
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  sub_1D7D2D16C();
  sub_1D7D2D4BC();

  swift_unknownObjectRelease();

  sub_1D7CC3EA8(v28);
  sub_1D7CC3F04(v22);
  return sub_1D7CC3F7C(v36, v37);
}

uint64_t sub_1D7CC3594(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2CA5C();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D7D2D04C();
  sub_1D7D2D0EC();
  sub_1D7D2D17C();
  sub_1D798C808(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
  swift_unknownObjectRetain();
  v6 = a3;
  sub_1D7D2CF8C();
}

uint64_t sub_1D7CC36F0(void *a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v38 = a2;
  v4 = sub_1D7D2CB4C();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D7D2CBCC();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2CB7C();
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2CABC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2CCAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v15 + 104))(v18, *MEMORY[0x1E69B3E30], v14);
  sub_1D7D2CC9C();
  sub_1D798C808(&qword_1EE0BFB80, MEMORY[0x1E69B3F60]);
  sub_1D7D2CFDC();
  (*(v20 + 8))(v23, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  v24 = v35;
  sub_1D7D2CB6C();
  sub_1D798C808(&qword_1EE0BFBF8, MEMORY[0x1E69B3E90]);
  v25 = v36;
  sub_1D7D2CFDC();
  (*(v37 + 8))(v24, v25);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v41;
  v27 = [v41 sourceChannel];
  v28 = v39;
  sub_1D7D2CBBC();
  sub_1D798C808(qword_1EE0BFBD0, MEMORY[0x1E69B3EF8]);
  v29 = v40;
  sub_1D7D2CFDC();
  (*(v42 + 8))(v28, v29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v26;
  v31 = v43;
  sub_1D7D2CB3C();
  sub_1D798C808(&qword_1EC9E83A8, MEMORY[0x1E69B3E70]);
  v32 = v44;
  sub_1D7D2CFDC();
  return (*(v45 + 8))(v31, v32);
}

uint64_t RecipeBannerAdRequester.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t RecipeBannerAdRequester.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D7CC3CD4()
{
  if (!qword_1EC9E8370)
  {
    sub_1D7CC3D48(255, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8370);
    }
  }
}

void sub_1D7CC3D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D04C();
    v8[1] = sub_1D7D2D17C();
    v8[2] = sub_1D798C808(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v8[3] = MEMORY[0x1E69B4290];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7CC3E28(uint64_t a1, uint64_t a2)
{
  sub_1D7CC3D48(0, &unk_1EC9E8378, MEMORY[0x1E69B3F80]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7CC3EA8(uint64_t a1)
{
  sub_1D7CC3CD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CC3F04(uint64_t a1)
{
  sub_1D7CC3D48(0, &unk_1EC9E8378, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CC3F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBannerAd();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7CC3FE0()
{
  if (!qword_1EC9E8388)
  {
    sub_1D7CC3D48(255, &qword_1EC9E5F68, MEMORY[0x1E69B4438]);
    sub_1D7CC3D48(255, &unk_1EE0CBD40, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E8388);
    }
  }
}

unint64_t sub_1D7CC408C()
{
  result = qword_1EC9E8398;
  if (!qword_1EC9E8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8398);
  }

  return result;
}

unint64_t sub_1D7CC40FC()
{
  result = qword_1EC9E83B0;
  if (!qword_1EC9E83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E83B0);
  }

  return result;
}

uint64_t RecipeBannerAdFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CC41A8()
{
  v0 = sub_1D7D2CADC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1D7D2CBAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7D2D4AC() & 1) == 0)
  {
    sub_1D7D2D4CC();
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B3EC8], v2);

  sub_1D7D2D49C();
  return sub_1D7D2D54C();
}

uint64_t sub_1D7CC436C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NewsArticles16AdComponentSizer____lazy_storage___isVisualDebuggingEnabled;
  v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles16AdComponentSizer____lazy_storage___isVisualDebuggingEnabled);
  if (v3 == 2)
  {
    sub_1D7D284BC();
    LOBYTE(v3) = sub_1D7D2860C();

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

uint64_t sub_1D7CC44DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [v4 component];
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = [v9 adType];
  if (v10 > 2)
  {
    if ((v10 - 3) < 4)
    {
      goto LABEL_4;
    }

LABEL_22:
    swift_unknownObjectRelease();
    return a1;
  }

  if (!v10)
  {
    goto LABEL_22;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v13 = 1;
      for (i = [v4 componentLayout]; ; i = objc_msgSend(v4, sel_componentLayout, v23, v24))
      {
        v15 = [i ignoreDocumentMargin];
        swift_unknownObjectRelease();
        v16 = [objc_msgSend(v4 componentLayout)];
        swift_unknownObjectRelease();
        v17 = [objc_msgSend(v4 componentLayout)];
        swift_unknownObjectRelease();
        result = [a3 widthForColumnRange:a1 ignoreMargin:v13 ignoreGutter:v15 ignoreViewportPadding:{v16, v17}];
        v19 = v18;
        if (v18 < 300.0)
        {
          v20 = __OFADD__(v13++, 1);
          if (v20)
          {
            break;
          }
        }

        v21 = a1 + v13;
        if (__OFADD__(a1, v13))
        {
          __break(1u);
          break;
        }

        v22 = [a3 numberOfColumns];
        if (v21 >= 1 && a1 >= 1 && v22 < v21)
        {
          result = [a3 numberOfColumns];
          if (result < 0)
          {
            goto LABEL_27;
          }

          v20 = __OFSUB__(a1, v21 - result);
          a1 = result - v13;
          if (v20)
          {
            __break(1u);
            goto LABEL_22;
          }
        }

        if (v19 >= 300.0)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_4:
  v11 = [a3 numberOfColumns];
  result = swift_unknownObjectRelease();
  if ((v11 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D7CC480C(void *a1, SEL *a2)
{
  v5 = [v2 component];
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = [v6 adType];
    if (v7 <= 7 && (((1 << v7) & 0x7A) != 0 || ((1 << v7) & 0x81) == 0 && (v9 = [objc_msgSend(v2 componentLayout)], v11 = v10, swift_unknownObjectRelease(), v12 = objc_msgSend(a1, sel_convertColumnRange_minimumColumnLength_, v9, v11, objc_msgSend(v2, sel_minimumColumnLength)), sub_1D7CC44DC(v12, v13, a1), v15 = v14, v16 = objc_msgSend(a1, sel_numberOfColumns), v15 >= 1) && v16 < v15))
    {
      v8 = 3;
    }

    else
    {
      v8 = [objc_msgSend(v2 componentLayout)];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = [objc_msgSend(v2 componentLayout)];
  }

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1D7CC4A54(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_1D7D2CBAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  if (sub_1D7CC436C())
  {
    return 1;
  }

  type metadata accessor for AdComponentState();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v33 = a2;
  v18 = v5[2];
  v30 = OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState;
  v31 = result;
  v18(v16, result + OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState, v4);
  v32 = v5[11];
  if (v32(v16, v4) != *MEMORY[0x1E69B3ED8])
  {
    v27 = *MEMORY[0x1E69B3ED8];
    v28 = v18;
    v19 = v5[1];
    v29 = a1;
    swift_unknownObjectRetain();
    v26 = v19;
    v19(v16, v4);
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v21 = v28;
    v28(v12, v20 + OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState, v4);
    v22 = v32;
    v23 = v32(v12, v4);
    if (v23 == v27)
    {
      v33 = v5[12];
      v33(v12, v4);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v21(v8, v31 + v30, v4);
      swift_unknownObjectRelease();
      if (v22(v8, v4) == *MEMORY[0x1E69B3E98])
      {
        v33(v8, v4);
        v24 = sub_1D7D2CB9C();
        (*(*(v24 - 8) + 8))(v8, v24);
        return 1;
      }

      v25 = v8;
    }

    else
    {
      swift_unknownObjectRelease();
      v25 = v12;
    }

    v26(v25, v4);
    return 0;
  }

  (v5[12])(v16, v4);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return 1;
}

id sub_1D7CC4E0C()
{
  v1 = v0;
  v2 = sub_1D7D2D3BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v32 - v8;
  v37 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v37, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2D22C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 component];
  v42 = &unk_1F532C638;
  v20 = swift_dynamicCastObjCProtocolConditional();
  if (!v20)
  {
    return swift_unknownObjectRelease();
  }

  v21 = v20;
  v32[1] = v19;
  v33 = v14;
  v34 = v13;
  v35 = v3;
  v36 = v2;
  v22 = [v1 layoutOptions];
  v23 = [v22 traitCollection];
  [v23 displayScale];

  sub_1D7D2D21C();
  sub_1D799CC84(v1 + OBJC_IVAR____TtC12NewsArticles16AdComponentSizer_bannerAdFactory, v39);
  __swift_project_boxed_opaque_existential_1(v39, v40);
  result = [v21 placementIdentifier];
  if (result)
  {
    v25 = result;
    sub_1D7D3034C();

    v26 = [v1 componentState];
    sub_1D7CFAC50();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v39);
    v40 = v37;
    v41 = sub_1D7CC5270();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    sub_1D79FC02C(v12, boxed_opaque_existential_1);
    sub_1D7D2D42C();
    __swift_destroy_boxed_opaque_existential_1(v39);
    v29 = v35;
    v28 = v36;
    (*(v35 + 16))(v38, v9, v36);
    v30 = sub_1D7D31A0C();
    v31 = sub_1D7D3031C();
    [v1 saveInfo:v30 forRenderingPhaseWithIdentifier:v31];
    swift_unknownObjectRelease();

    sub_1D7D2D3AC();
    CGRectGetHeight(v43);
    swift_unknownObjectRelease();
    (*(v29 + 8))(v9, v28);
    sub_1D79FBDB4(v12);
    return (*(v33 + 8))(v18, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7CC5270()
{
  result = qword_1EE0CF430;
  if (!qword_1EE0CF430)
  {
    type metadata accessor for ArticleBannerAd();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CF430);
  }

  return result;
}

uint64_t sub_1D7CC5328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D7CC5370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7CC53CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v154 = a3;
  v155 = a2;
  sub_1D7CC729C(0, &unk_1EE0BFE40, MEMORY[0x1E69D7ED8]);
  v153 = v4;
  v152 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v151 = v149 - v6;
  v7 = sub_1D7D2EC6C();
  v8 = *(v7 - 8);
  v184 = v7;
  *&v185 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v183 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B04C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v181 = v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EndOfArticleFeedGroup();
  v17 = *(v16 - 8);
  v189 = v16;
  v190 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v174 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v178 = v149 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v149 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v173 = v149 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v177 = v149 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v149 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v157 = v149 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v159 = v149 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v163 = v149 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v156 = v149 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v158 = v149 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v162 = v149 - v54;
  sub_1D7CC7188();
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  sub_1D7CC729C(0, &unk_1EE0BFC40, MEMORY[0x1E69D87F8]);
  v188 = v57;
  v150 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = v149 - v59;
  v61 = sub_1D7CC7254(&qword_1EE0C0068, sub_1D7A2B04C);
  v62 = sub_1D7CC7254(&unk_1EE0C0070, sub_1D7A2B04C);
  v182 = v12;
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], v12, v61, v62);
  v63 = type metadata accessor for EndOfArticleModel();
  v64 = sub_1D7A2B104();
  v65 = sub_1D7CC7254(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
  v187 = v60;
  v149[2] = v63;
  v149[1] = v64;
  v149[0] = v65;
  sub_1D7D2C7FC();
  v186 = v3;
  v66 = *v3;
  v168 = *(*v3 + 16);
  if (!v168)
  {
LABEL_149:
    v146 = v151;
    v147 = v187;
    sub_1D7D2B2AC();
    v155(v146);
    (*(v152 + 8))(v146, v153);
    return (*(v150 + 8))(v147, v188);
  }

  v67 = 0;
  v167 = v66 + 32;
  v179 = (v13 + 8);
  v180 = (v185 + 8);
  v185 = xmmword_1D7D3B4D0;
  v161 = v66;
  while (1)
  {
    if (v67 >= *(v66 + 16))
    {
      goto LABEL_152;
    }

    v68 = v167 + 24 * v67;
    v69 = *(v68 + 16);
    v176 = *(v68 + 8);
    v70 = v69 >> 61;
    if ((v69 >> 61) <= 1)
    {
      v170 = v67;
      if (!v70)
      {
        sub_1D7CC73B8();
        v89 = v88;
        v90 = swift_projectBox();
        v91 = *(v90 + *(v89 + 48));
        v92 = v162;
        sub_1D7AB4F08(v90, v162);
        v93 = v186[1];
        v94 = v158;
        sub_1D7AB4F08(v92, v158);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v175 = v91;

        swift_retain_n();

        sub_1D7CC735C(v94);
        if (EnumCaseMultiPayload <= 1)
        {
          v96 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection;
          if (EnumCaseMultiPayload)
          {
            v96 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v135 = *(v93 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection);
          if (v135 != -1)
          {
            if (v135)
            {
              if (v135 != 1)
              {
                goto LABEL_153;
              }

LABEL_121:
              if (qword_1EE0CA130 != -1)
              {
                swift_once();
              }

              sub_1D79A04C4(0, &qword_1EE0BE810, sub_1D79D6A7C);
              v136 = swift_allocObject();
              *(v136 + 16) = v185;
              v137 = v156;
              sub_1D7AB4F08(v162, v156);
              v138 = swift_getEnumCaseMultiPayload();
              sub_1D7CC735C(v137);
              if (v138 <= 1)
              {
                if (v138)
                {
                  v140 = 0xE700000000000000;
                  v139 = 0x646574616C6552;
                }

                else
                {
                  v139 = 0x6F72462065726F4DLL;
                  v140 = 0xE90000000000006DLL;
                }
              }

              else if (v138 == 2)
              {
                v139 = 0x6E656D6D6F636552;
                v140 = 0xEB00000000646564;
              }

              else if (v138 == 3)
              {
                v139 = 0x206F742065726F4DLL;
                v140 = 0xEC00000064616552;
              }

              else
              {
                v139 = 0x6F72462065726F4DLL;
                v140 = 0xEF6575737349206DLL;
              }

              *(v136 + 56) = MEMORY[0x1E69E6158];
              *(v136 + 64) = sub_1D79D6AE0();
              *(v136 + 32) = v139;
              *(v136 + 40) = v140;
              sub_1D7D30C6C();
              sub_1D7D29AAC();

              v145 = &v191 + 8;
LABEL_144:
              sub_1D7CC735C(*(v145 - 32));

              v67 = v170;
              goto LABEL_6;
            }

            goto LABEL_127;
          }

          v96 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection;
          if (*(v93 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection))
          {
            goto LABEL_121;
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v96 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection;
        }

        else
        {
          v96 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection;
        }

        if (*(v93 + *v96))
        {
          goto LABEL_121;
        }

LABEL_127:
        __swift_project_boxed_opaque_existential_1(v186 + 2, v186[5]);
        type metadata accessor for EndOfArticleFeedServiceConfig();
        sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
        v141 = v183;
        sub_1D7D2E26C();
        v142 = v181;
        sub_1D7A54A60(v162, v141, v181);
        (*v180)(v141, v184);
        sub_1D7D2C77C();
        (*v179)(v142, v182);
        sub_1D7D2E5EC();
        sub_1D7D2E5DC();
        v143 = sub_1D7D2E5BC();

        if (v143)
        {
          *(&v192 + 1) = sub_1D7D2DEEC();
          *&v191 = v143;
        }

        else
        {
          v191 = 0u;
          v192 = 0u;
        }

        v67 = v170;
        sub_1D7D2C7EC();

        v144 = &v191 + 8;
        goto LABEL_135;
      }

      v107 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v175 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v108 = *(v107 + 16);
      v160 = v69 & 0x1FFFFFFFFFFFFFFFLL;
      if (!v108)
      {
        swift_retain_n();

LABEL_95:
        sub_1D7D2E5EC();

        sub_1D7D2E5DC();
        type metadata accessor for EndOfArticleFeedServiceConfig();
        sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
        v125 = sub_1D7D2E5BC();

        v67 = v170;
        if (v125)
        {
          *(&v192 + 1) = sub_1D7D2DEEC();
          *&v191 = v125;
        }

        else
        {
          v191 = 0u;
          v192 = 0u;
        }

        v66 = v161;
        goto LABEL_5;
      }

      v109 = v186[1];
      v165 = v109 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection;
      v171 = (v109 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection);
      v164 = OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection;
      v172 = (v109 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection);
      v166 = v109;
      v169 = (v109 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection);
      v110 = v107 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
      swift_retain_n();

      v111 = 0;
      while (1)
      {
        if (v111 >= *(v107 + 16))
        {
          goto LABEL_151;
        }

        sub_1D7AB4F08(v110 + *(v190 + 72) * v111, v36);
        v114 = v177;
        sub_1D7AB4F08(v36, v177);
        v115 = swift_getEnumCaseMultiPayload();
        sub_1D7CC735C(v114);
        if (v115 <= 1)
        {
          break;
        }

        if (v115 != 2)
        {
          v116 = v171;
          if (v115 != 3)
          {
            v117 = &v193;
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        v123 = *(v166 + v164);
        if (v123 == -1)
        {
          v116 = v169;
          if (*v172)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (v123)
        {
          if (v123 != 1)
          {
            goto LABEL_153;
          }

LABEL_66:
          if (qword_1EE0CA130 != -1)
          {
            swift_once();
          }

          sub_1D79A04C4(0, &qword_1EE0BE810, sub_1D79D6A7C);
          v118 = swift_allocObject();
          *(v118 + 16) = v185;
          v119 = v173;
          sub_1D7AB4F08(v36, v173);
          v120 = swift_getEnumCaseMultiPayload();
          sub_1D7CC735C(v119);
          if (v120 <= 1)
          {
            if (v120)
            {
              v122 = 0xE700000000000000;
              v121 = 0x646574616C6552;
            }

            else
            {
              v121 = 0x6F72462065726F4DLL;
              v122 = 0xE90000000000006DLL;
            }
          }

          else if (v120 == 2)
          {
            v121 = 0x6E656D6D6F636552;
            v122 = 0xEB00000000646564;
          }

          else if (v120 == 3)
          {
            v121 = 0x206F742065726F4DLL;
            v122 = 0xEC00000064616552;
          }

          else
          {
            v121 = 0x6F72462065726F4DLL;
            v122 = 0xEF6575737349206DLL;
          }

          *(v118 + 56) = MEMORY[0x1E69E6158];
          *(v118 + 64) = sub_1D79D6AE0();
          *(v118 + 32) = v121;
          *(v118 + 40) = v122;
          sub_1D7D30C6C();
          sub_1D7D29AAC();

          goto LABEL_56;
        }

LABEL_55:
        __swift_project_boxed_opaque_existential_1(v186 + 2, v186[5]);
        type metadata accessor for EndOfArticleFeedServiceConfig();
        sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
        v112 = v183;
        sub_1D7D2E26C();
        v113 = v181;
        sub_1D7A54A60(v36, v112, v181);
        (*v180)(v112, v184);
        sub_1D7D2C77C();
        (*v179)(v113, v182);
LABEL_56:
        ++v111;
        sub_1D7CC735C(v36);
        if (v108 == v111)
        {
          goto LABEL_95;
        }
      }

      v116 = v172;
      if (v115)
      {
        v117 = &v194;
LABEL_64:
        v116 = *(v117 - 32);
      }

LABEL_65:
      if (*v116)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }

    if (v70 == 2)
    {
      v170 = v67;
      sub_1D7CC73B8();
      v98 = v97;
      v99 = swift_projectBox();
      v100 = *(v99 + *(v98 + 48));
      v101 = v163;
      sub_1D7AB4F08(v99, v163);
      v102 = v186[1];
      v103 = v159;
      sub_1D7AB4F08(v101, v159);
      v104 = swift_getEnumCaseMultiPayload();
      v175 = v100;

      swift_retain_n();

      sub_1D7CC735C(v103);
      if (v104 <= 1)
      {
        v105 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection;
        if (v104)
        {
          v105 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection;
        }
      }

      else if (v104 == 2)
      {
        v126 = *(v102 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection);
        if (v126 != -1)
        {
          if (v126)
          {
            if (v126 != 1)
            {
              goto LABEL_153;
            }

LABEL_105:
            if (qword_1EE0CA130 != -1)
            {
              swift_once();
            }

            sub_1D79A04C4(0, &qword_1EE0BE810, sub_1D79D6A7C);
            v127 = swift_allocObject();
            *(v127 + 16) = v185;
            v128 = v157;
            sub_1D7AB4F08(v163, v157);
            v129 = swift_getEnumCaseMultiPayload();
            sub_1D7CC735C(v128);
            if (v129 <= 1)
            {
              if (v129)
              {
                v131 = 0xE700000000000000;
                v130 = 0x646574616C6552;
              }

              else
              {
                v130 = 0x6F72462065726F4DLL;
                v131 = 0xE90000000000006DLL;
              }
            }

            else if (v129 == 2)
            {
              v130 = 0x6E656D6D6F636552;
              v131 = 0xEB00000000646564;
            }

            else if (v129 == 3)
            {
              v130 = 0x206F742065726F4DLL;
              v131 = 0xEC00000064616552;
            }

            else
            {
              v130 = 0x6F72462065726F4DLL;
              v131 = 0xEF6575737349206DLL;
            }

            *(v127 + 56) = MEMORY[0x1E69E6158];
            *(v127 + 64) = sub_1D79D6AE0();
            *(v127 + 32) = v130;
            *(v127 + 40) = v131;
            sub_1D7D30C6C();
            sub_1D7D29AAC();

            v145 = &v192;
            goto LABEL_144;
          }

          goto LABEL_111;
        }

        v105 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection;
        if (*(v102 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection))
        {
          goto LABEL_105;
        }
      }

      else if (v104 == 3)
      {
        v105 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection;
      }

      else
      {
        v105 = &OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection;
      }

      if (*(v102 + *v105))
      {
        goto LABEL_105;
      }

LABEL_111:
      __swift_project_boxed_opaque_existential_1(v186 + 2, v186[5]);
      type metadata accessor for EndOfArticleFeedServiceConfig();
      sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
      v132 = v183;
      sub_1D7D2E26C();
      v133 = v181;
      sub_1D7A54A60(v163, v132, v181);
      (*v180)(v132, v184);
      sub_1D7D2C77C();
      (*v179)(v133, v182);
      sub_1D7D2E5EC();
      sub_1D7D2E5DC();
      v134 = sub_1D7D2E5BC();

      if (v134)
      {
        *(&v192 + 1) = sub_1D7D2DEEC();
        *&v191 = v134;
      }

      else
      {
        v191 = 0u;
        v192 = 0u;
      }

      v67 = v170;
      sub_1D7D2C7EC();

      v144 = &v192;
LABEL_135:
      sub_1D7CC735C(*(v144 - 32));

      goto LABEL_6;
    }

    if (v70 == 3)
    {
      break;
    }

    sub_1D7D2E5EC();

    swift_retain_n();

    sub_1D7D2E5DC();
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v106 = sub_1D7D2E5BC();

    if (v106)
    {
      *(&v192 + 1) = sub_1D7D2DEEC();
      *&v191 = v106;
    }

    else
    {
      v191 = 0u;
      v192 = 0u;
    }

LABEL_5:
    sub_1D7D2C7EC();

LABEL_6:
    if (++v67 == v168)
    {
      goto LABEL_149;
    }
  }

  v170 = v67;
  v71 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v175 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v72 = *(v71 + 16);
  v160 = v69 & 0x1FFFFFFFFFFFFFFFLL;
  if (!v72)
  {
    swift_retain_n();

LABEL_91:
    sub_1D7D2E5EC();

    sub_1D7D2E5DC();
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v124 = sub_1D7D2E5BC();

    if (v124)
    {
      *(&v192 + 1) = sub_1D7D2DEEC();
      *&v191 = v124;
    }

    else
    {
      v191 = 0u;
      v192 = 0u;
    }

    v66 = v161;
    v67 = v170;
    goto LABEL_5;
  }

  v73 = v186[1];
  v165 = v73 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection;
  v171 = (v73 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection);
  v164 = OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection;
  v172 = (v73 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection);
  v166 = v73;
  v169 = (v73 + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection);
  v74 = v71 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
  swift_retain_n();

  v75 = 0;
  while (v75 < *(v71 + 16))
  {
    sub_1D7AB4F08(v74 + *(v190 + 72) * v75, v26);
    v78 = v178;
    sub_1D7AB4F08(v26, v178);
    v79 = swift_getEnumCaseMultiPayload();
    sub_1D7CC735C(v78);
    if (v79 <= 1)
    {
      v80 = v172;
      if (v79)
      {
        v81 = &v194;
LABEL_22:
        v80 = *(v81 - 32);
      }

LABEL_23:
      if (*v80)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (v79 != 2)
    {
      v80 = v171;
      if (v79 != 3)
      {
        v81 = &v193;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v87 = *(v166 + v164);
    if (v87 == -1)
    {
      v80 = v169;
      if (*v172)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v87)
    {
      if (v87 != 1)
      {
        goto LABEL_153;
      }

LABEL_24:
      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      sub_1D79A04C4(0, &qword_1EE0BE810, sub_1D79D6A7C);
      v82 = swift_allocObject();
      *(v82 + 16) = v185;
      v83 = v174;
      sub_1D7AB4F08(v26, v174);
      v84 = swift_getEnumCaseMultiPayload();
      sub_1D7CC735C(v83);
      if (v84 <= 1)
      {
        if (v84)
        {
          v86 = 0xE700000000000000;
          v85 = 0x646574616C6552;
        }

        else
        {
          v85 = 0x6F72462065726F4DLL;
          v86 = 0xE90000000000006DLL;
        }
      }

      else if (v84 == 2)
      {
        v85 = 0x6E656D6D6F636552;
        v86 = 0xEB00000000646564;
      }

      else if (v84 == 3)
      {
        v85 = 0x206F742065726F4DLL;
        v86 = 0xEC00000064616552;
      }

      else
      {
        v85 = 0x6F72462065726F4DLL;
        v86 = 0xEF6575737349206DLL;
      }

      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = sub_1D79D6AE0();
      *(v82 + 32) = v85;
      *(v82 + 40) = v86;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      goto LABEL_14;
    }

LABEL_13:
    __swift_project_boxed_opaque_existential_1(v186 + 2, v186[5]);
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7CC7254(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v76 = v183;
    sub_1D7D2E26C();
    v77 = v181;
    sub_1D7A54A60(v26, v76, v181);
    (*v180)(v76, v184);
    sub_1D7D2C77C();
    (*v179)(v77, v182);
LABEL_14:
    ++v75;
    sub_1D7CC735C(v26);
    if (v72 == v75)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7CC6F58()
{
  sub_1D79A04C4(0, &qword_1EE0BE938, MEMORY[0x1E69D7E00]);
  v0 = sub_1D7D2B08C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4E0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D7DE8], v0);
  v6(v5 + v2, *MEMORY[0x1E69D7DF0], v0);
  v7 = sub_1D7B22FA4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_1D7CC70AC(uint64_t a1)
{
  v2 = sub_1D7BEC6D8();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D7CC70EC()
{
  result = qword_1EE0C1948;
  if (!qword_1EE0C1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C1948);
  }

  return result;
}

void sub_1D7CC7188()
{
  if (!qword_1EE0C0398)
  {
    sub_1D7A2B04C();
    sub_1D7CC7254(&qword_1EE0C0068, sub_1D7A2B04C);
    sub_1D7CC7254(&unk_1EE0C0070, sub_1D7A2B04C);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0398);
    }
  }
}

uint64_t sub_1D7CC7254(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7CC729C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel();
    v8[2] = sub_1D7A2B104();
    v8[3] = sub_1D7CC7254(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}
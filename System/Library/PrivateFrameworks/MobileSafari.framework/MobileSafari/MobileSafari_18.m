uint64_t sub_18BA50B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v32 = _s4PageVMa_0();
  v37 = *(v32 - 8);
  v4 = MEMORY[0x1EEE9AC00](v32);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v32 - v7;
  v8 = sub_18B7EA91C();
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v35 = "quickTabSwitcherItem";
  sub_18BC1E3F8();
  v15 = 0;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          v30 = 1;
          v29 = v33;
          goto LABEL_18;
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_20:

LABEL_21:
      result = sub_18BC21CF8();
      __break(1u);
      return result;
    }

LABEL_11:
    v17 = v36;
    sub_18B82D0A4(*(v9 + 48) + *(v37 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v36, _s4PageVMa_0);
    sub_18B82FD54(v17, v6, _s4PageVMa_0);
    v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x98);
    swift_beginAccess();
    v19 = *(v3 + v18);
    if (!*(v19 + 16))
    {
      goto LABEL_21;
    }

    sub_18BC1E3F8();
    v20 = sub_18B7C4104(0xD000000000000017, v35 | 0x8000000000000000);
    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    sub_18BC1E1A8();

    swift_beginAccess();
    v23 = *(v22 + 32);
    sub_18BC1E3F8();

    v24 = sub_18B7E711C(v23);

    if (!*(v24 + 16) || (v25 = sub_18B8629FC(v6), (v26 & 1) == 0))
    {

      goto LABEL_5;
    }

    v27 = *(*(v24 + 56) + 16 * v25);

    if (v27 == v34)
    {
      break;
    }

LABEL_5:
    v13 &= v13 - 1;
    sub_18B82D1D4(v6, _s4PageVMa_0);
  }

  v28 = v33;
  sub_18B82FD54(v6, v33, _s4PageVMa_0);
  v29 = v28;
  v30 = 0;
LABEL_18:
  (*(v37 + 56))(v29, v30, 1, v32);
}

uint64_t sub_18BA50F18()
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v81);
  v1 = &v68 - v0;
  v87 = _s4ItemVMa_2();
  v82 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v68 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - v10;
  result = sub_18B7EA91C();
  v13 = 0;
  v15 = result + 64;
  v14 = *(result + 64);
  v71 = result;
  v16 = 1 << *(result + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v79 = v1;
  v78 = v3;
  v70 = result + 64;
  v69 = v19;
  if (!v18)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v20 = v13;
LABEL_11:
      v74 = v18;
      v21 = *(v71 + 56);
      v73 = v20;
      v86 = *(v21 + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
      v22 = sub_18B82FEA0();
      v23 = MEMORY[0x1E69E7D40];
      v24 = *(v22 + *((*MEMORY[0x1E69E7D40] & *v22) + 0x90)) + qword_1EA9D95C8;
      swift_beginAccess();
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v26 + 16);
      v28 = *v23 & *v22;
      v85 = v22;
      v83 = *(v28 + 128);
      v72 = v25;
      sub_18BC1E1A8();
      result = sub_18BC1E1A8();
      v84 = v27;
      if (v27)
      {
        v29 = 0;
        v76 = MEMORY[0x1E69E7CC0];
        v77 = v26;
        while (1)
        {
          if (v29 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v30 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v31 = *(v82 + 72);
          sub_18B82D0A4(v26 + v30 + v31 * v29, v11, _s4ItemVMa_2);
          v32 = *(v85 + v83);
          if (*(v32 + 16))
          {
            v80 = v30;
            sub_18BC22158();
            sub_18BC1EC08();
            sub_18B7CC1E8(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
            sub_18BC1E3F8();
            sub_18BC20A78();
            v33 = sub_18BC221A8();
            v34 = -1 << *(v32 + 32);
            v35 = v33 & ~v34;
            if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
            {
              v36 = ~v34;
              while (1)
              {
                sub_18B82D0A4(*(v32 + 48) + v35 * v31, v8, _s4ItemVMa_2);
                updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                sub_18B82D1D4(v8, _s4ItemVMa_2);
                if (updated)
                {
                  break;
                }

                v35 = (v35 + 1) & v36;
                if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              sub_18B82FD54(v11, v75, _s4ItemVMa_2);
              v38 = v76;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_18B85A1AC(0, *(v38 + 16) + 1, 1);
                v38 = v89;
              }

              v1 = v79;
              v3 = v78;
              v26 = v77;
              v41 = *(v38 + 16);
              v40 = *(v38 + 24);
              if (v41 >= v40 >> 1)
              {
                sub_18B85A1AC(v40 > 1, v41 + 1, 1);
                v38 = v89;
              }

              *(v38 + 16) = v41 + 1;
              v76 = v38;
              result = sub_18B82FD54(v75, v38 + v80 + v41 * v31, _s4ItemVMa_2);
              goto LABEL_15;
            }

LABEL_13:

            v1 = v79;
            v3 = v78;
            v26 = v77;
          }

          result = sub_18B82D1D4(v11, _s4ItemVMa_2);
LABEL_15:
          if (++v29 == v84)
          {
            goto LABEL_29;
          }
        }
      }

      v76 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v18 = (v74 - 1) & v74;

      v42 = *(v76 + 16);
      if (!v42)
      {

        v13 = v73;
        v15 = v70;
        v19 = v69;
        if (!v18)
        {
          goto LABEL_8;
        }

        continue;
      }

      break;
    }

    v74 = v18;
    v43 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    v83 = OBJC_IVAR___SFTabOverview_gridLayout;
    v44 = v76 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v85 = *(v82 + 72);
    v84 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    do
    {
      sub_18B82D0A4(v44, v3, _s4ItemVMa_2);
      v45 = *&v86[v43];
      sub_18B82D0A4(v3, v1, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v46 = *((*MEMORY[0x1E69E7D40] & *v45) + 0x150);
      swift_beginAccess();
      v47 = *(v45 + v46);
      if (!*(v47 + 16))
      {
        goto LABEL_32;
      }

      v48 = v45;
      sub_18BC1E3F8();
      v49 = sub_18B83B1C8(v1);
      if ((v50 & 1) == 0)
      {

LABEL_32:
        sub_18B988BAC(v1, &unk_1EA9D92F0);
LABEL_33:
        sub_18B82D1D4(v3, _s4ItemVMa_2);
        goto LABEL_34;
      }

      v51 = *(*(v47 + 56) + 8 * v49);
      sub_18BC1E1A8();

      sub_18B988BAC(v1, &unk_1EA9D92F0);

      v52 = *(v51 + 24);
      v53 = v52;

      if (!v52)
      {
        goto LABEL_33;
      }

      type metadata accessor for TabOverview.ItemView();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {

        goto LABEL_33;
      }

      v55 = *(v54 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v56 = swift_dynamicCastClassUnconditional();
      v57 = *(*(v56 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView) + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
      if (v57)
      {
        v58 = v56;
        v59 = *(**&v86[v83] + 1176);
        sub_18BC1E1A8();
        v59(v88, v58);
        v60 = *v88;
        v61 = v88[1];
        v62 = v57 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
        swift_beginAccess();
        v63 = *v62;
        v64 = *(v62 + 8);
        *v62 = v60;
        *(v62 + 8) = v61;
        if (v60 == v63 && v61 == v64)
        {
        }

        else
        {
          v66 = *(v57 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
          v67 = sub_18BC1E1A8();
          v66(v67);
        }

        v1 = v79;
        v3 = v78;
      }

      else
      {
      }

      sub_18B82D1D4(v3, _s4ItemVMa_2);
      v43 = v84;
LABEL_34:
      v44 += v85;
      --v42;
    }

    while (v42);

    v13 = v73;
    v15 = v70;
    v19 = v69;
    v18 = v74;
    if (v74)
    {
      continue;
    }

    break;
  }

LABEL_8:
  while (2)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      if (v20 < v19)
      {
        v18 = *(v15 + 8 * v20);
        ++v13;
        if (!v18)
        {
          continue;
        }

        goto LABEL_11;
      }
    }

    return result;
  }
}

void sub_18BA5191C(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a3;
  v9 = a1;
  if ([v8 state] - 1 >= 2)
  {
    v12 = _s4PageVMa_0();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  else
  {
    [v8 locationInView_];
    sub_18BA523FC(v7, v10, v11);
  }

  sub_18BA51A48(v7);
}

uint64_t sub_18BA51A54(uint64_t a1, uint64_t *a2)
{
  v36 = a1;
  v3 = _s4PageVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = sub_18B7CC308();
  v35 = a2;
  v18 = *a2;
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = v36;
  sub_18B7CA054(v19, v16, &unk_1EA9DBE90);

  v21 = *(v7 + 56);
  sub_18B7CA054(v16, v9, &unk_1EA9DBE90);
  sub_18B7CA054(v20, &v9[v21], &unk_1EA9DBE90);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    v23 = v33;
    sub_18B7CA054(v9, v33, &unk_1EA9DBE90);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v28 = &v9[v21];
      v29 = v32;
      sub_18B82FD54(v28, v32, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v29, _s4PageVMa_0);
      sub_18B82D1D4(v23, _s4PageVMa_0);
      sub_18B988BAC(v9, &unk_1EA9DBE90);
      if (updated)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_18B82D1D4(v23, _s4PageVMa_0);
LABEL_6:
    sub_18B988BAC(v9, &qword_1EA9D5340);
LABEL_7:
    v24 = sub_18B7CC308();
    v25 = v34;
    sub_18B7CA054(v20, v34, &unk_1EA9DBE90);
    v26 = *v35;
    swift_beginAccess();
    sub_18B7FD070(v25, v24 + v26, &unk_1EA9DBE90);
    swift_endAccess();

    sub_18BA51E7C(v16, v20);
    goto LABEL_8;
  }

  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_18B988BAC(v9, &unk_1EA9DBE90);
LABEL_8:
  sub_18B988BAC(v20, &unk_1EA9DBE90);
  return sub_18B988BAC(v16, &unk_1EA9DBE90);
}

uint64_t sub_18BA51E7C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  sub_18B7CA054(a1, v11, &unk_1EA9DBE90);
  sub_18B7CA054(a2, v8, &unk_1EA9DBE90);
  v13 = *(v6 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + v15 + 8) & ~v13;
  v17 = swift_allocObject();
  sub_18B7CF39C(v11, v17 + v14, &unk_1EA9DBE90);
  *(v17 + v15) = v2;
  sub_18B7CF39C(v8, v17 + v16, &unk_1EA9DBE90);
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  v19[2] = inited;
  v19[3] = sub_18BA5A33C;
  v19[4] = v17;
  v28 = sub_18B7D80AC;
  v29 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_18B7B0DB0;
  v27 = &block_descriptor_293;
  v20 = _Block_copy(&aBlock);
  v21 = v2;
  sub_18BC1E1A8();

  v28 = CGRectMake;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_18B8043A0;
  v27 = &block_descriptor_296;
  v22 = _Block_copy(&aBlock);

  [v18 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v22);
  _Block_release(v20);
}

uint64_t sub_18BA52168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = _s4PageVMa_0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_18B7CA054(a1, v9, &unk_1EA9DBE90);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9DBE90);
  }

  else
  {
    sub_18B82FD54(v9, v16, _s4PageVMa_0);
    sub_18BA4FB54();
    sub_18B82D1D4(v16, _s4PageVMa_0);
  }

  sub_18B7CA054(v20, v6, &unk_1EA9DBE90);
  if (v17(v6, 1, v10) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9DBE90);
  }

  sub_18B82FD54(v6, v13, _s4PageVMa_0);
  sub_18BA4FB54();
  return sub_18B82D1D4(v13, _s4PageVMa_0);
}

uint64_t sub_18BA523FC@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v56 = a1;
  v55 = _s4PageVMa_0();
  v62 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D38);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  result = sub_18B7EA91C();
  v17 = 0;
  v19 = result + 64;
  v18 = *(result + 64);
  v60 = v7;
  v61 = result;
  v20 = 1 << *(result + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v63 = result + 64;
  v64 = v3 + qword_1EA9F7FF8;
  v23 = &qword_1EA9D6D40;
  v24 = (v20 + 63) >> 6;
  v57 = v15;
  v58 = v12;
  while (v22)
  {
    v25 = v17;
LABEL_16:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v61;
    v31 = v59;
    sub_18B82D0A4(*(v61 + 48) + *(v62 + 72) * v29, v59, _s4PageVMa_0);
    v32 = *(v30 + 56);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v34 = v23;
    v35 = *(v33 + 48);
    v65 = *(v32 + 16 * v29);
    v36 = v31;
    v12 = v58;
    sub_18B82FD54(v36, v58, _s4PageVMa_0);
    *&v12[v35] = v65;
    v23 = v34;
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
    v37 = v65;
    v7 = v60;
    v15 = v57;
LABEL_17:
    sub_18B7CF39C(v12, v15, &qword_1EA9D6D38);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    if ((*(*(v38 - 8) + 48))(v15, 1, v38) == 1)
    {

      v54 = 1;
      v53 = v56;
      return (*(v62 + 56))(v53, v54, 1, v55);
    }

    v39 = *&v15[*(v38 + 48)];
    sub_18B82FD54(v15, v7, _s4PageVMa_0);
    [v39 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    UIEdgeInsetsMakeWithEdges();
    v67.origin.x = UIEdgeInsetsInsetRect(v41, v43, v45, v47, v48, v49);
    v66.x = a2;
    v66.y = a3;
    if (CGRectContainsPoint(v67, v66))
    {
      v50 = v39[OBJC_IVAR___SFTabOverview_peekingInfo];

      if (v50 != 2)
      {

        v52 = v56;
        sub_18B82FD54(v7, v56, _s4PageVMa_0);
        v53 = v52;
        v54 = 0;
        return (*(v62 + 56))(v53, v54, 1, v55);
      }
    }

    else
    {
    }

    result = sub_18B82D1D4(v7, _s4PageVMa_0);
    v19 = v63;
  }

  if (v24 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
      v22 = 0;
      v17 = v27;
      goto LABEL_17;
    }

    v22 = *(v19 + 8 * v25);
    ++v17;
    if (v22)
    {
      v17 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA528F8(void *a1)
{
  v2 = v1;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  v13 = _s4PageVMa_0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(&v2[v19], v12, &unk_1EA9DBE90);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    v21 = v12;
    return sub_18B988BAC(v21, &unk_1EA9DBE90);
  }

  v64 = v18;
  sub_18B82FD54(v12, v18, _s4PageVMa_0);
  v22 = &v2[qword_1EA9D6BA0];
  swift_beginAccess();
  v63 = v22;
  LODWORD(v22) = v22[161];
  [v2 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (v22 == 1)
  {
    [v2 safeAreaInsets];
    v33 = UIEdgeInsetsInsetRect(v24, v26, v28, v30, v31, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    UIEdgeInsetsMakeWithEdges();
    v24 = UIEdgeInsetsInsetRect(v33, v35, v37, v39, v40, v41);
    v26 = v42;
    v28 = v43;
    v30 = v44;
  }

  v45 = v67;
  v46 = v68;
  [v66 locationInView_];
  v48 = v47;
  (*(v14 + 56))(v46, 1, 1, v13);
  v70.origin.x = v24;
  v70.origin.y = v26;
  v70.size.width = v28;
  v70.size.height = v30;
  if (v48 >= CGRectGetMinX(v70))
  {
    v71.origin.x = v24;
    v71.origin.y = v26;
    v71.size.width = v28;
    v71.size.height = v30;
    MaxX = CGRectGetMaxX(v71);
    v50 = v64;
    if (MaxX >= v48)
    {
      goto LABEL_10;
    }

    v52 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    sub_18BBE7E84(v52, v45);
  }

  else
  {
    v49 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    v50 = v64;
    sub_18BBE7CF0(v49, v45);
  }

  v46 = v68;
  sub_18B988BAC(v68, &unk_1EA9DBE90);
  sub_18B7CF39C(v45, v46, &unk_1EA9DBE90);
LABEL_10:
  sub_18B7CA054(v46, v5, &unk_1EA9DBE90);
  if (v20(v5, 1, v13) == 1)
  {
    sub_18B988BAC(v46, &unk_1EA9DBE90);
    sub_18B82D1D4(v50, _s4PageVMa_0);
    v21 = v5;
    return sub_18B988BAC(v21, &unk_1EA9DBE90);
  }

  v54 = v65;
  sub_18B82FD54(v5, v65, _s4PageVMa_0);
  v55 = *(v54 + *(v13 + 24));
  if (v55 == 1)
  {
    v56 = *(*v63 + 40);
    *(*v63 + 40) = 3;
    sub_18BC1E1A8();
    sub_18B7CC404(v56);
  }

  if (qword_1EA9D21E8 != -1)
  {
    swift_once();
  }

  v57 = qword_1EA9F7A78;
  v58 = type metadata accessor for RetargetableTransitionCoordinator();
  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  *(v59 + 24) = MEMORY[0x1E69E7CC0];
  *(v59 + 32) = v60;
  *(v59 + 40) = 1;
  *(v59 + 16) = v57;
  v69[3] = v58;
  v69[4] = &off_1EFF27FD8;
  v69[0] = v59;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BA5484C(v54, v69, 1);
  sub_18B988BAC(v69, &unk_1EA9D5060);
  v61 = *(v59 + 16);
  swift_retain_n();
  sub_18B7D8090(v61);
  sub_18B7EAA64(sub_18B9EB460, v59, sub_18B9EB538, v59, v61);

  sub_18B7EBAE8(v61);
  *(v59 + 40) = 0;

  if (v55)
  {
    v62 = *&v2[qword_1EA9D6BA8 + 32];
    sub_18BC1E1A8();
    v62(v54);
  }

  sub_18B82D1D4(v54, _s4PageVMa_0);
  sub_18B988BAC(v46, &unk_1EA9DBE90);
  return sub_18B82D1D4(v50, _s4PageVMa_0);
}

void sub_18BA52FFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA528F8(v4);
}

id sub_18BA53064(void *a1)
{
  v1 = a1;
  v2 = sub_18B7CEA3C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 becomeFirstResponder];

    return v4;
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = type metadata accessor for TabOverviewSwitcher();
    v6 = objc_msgSendSuper2(&v7, sel_becomeFirstResponder);

    return v6;
  }
}

void sub_18BA530F0(uint64_t a1)
{
  v1 = sub_18B862854(a1, 0xD000000000000017, 0x800000018BC60750);
  if (v1)
  {
    v5 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v2 = sub_18B852D5C();
      if (v2)
      {
        v3 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
        v4 = v2;
        [*(v2 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) becomeFirstResponder];
        [*&v4[v3] selectAll_];
      }
    }
  }
}

uint64_t sub_18BA531C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a1 + *(_s4PageVMa_0() + 24)) == 1)
  {
    v8 = &v3[qword_1EA9D6C00];
    *v8 = a2;
    *(v8 + 1) = a3;
    sub_18BC1E3F8();

    v9 = qword_1EA9D6BA0;
    swift_beginAccess();
    v10 = *&v4[v9];
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
    sub_18BC1E1A8();
    sub_18B7CC404(v11);

    v13 = sub_18B7C2E68(v12);
    v14 = [v13 isTracking];

    if ((v14 & 1) == 0)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v4;
      v16 = v4;
      sub_18BA54DE0(sub_18BA5A320, v15);
    }
  }

  v17 = *&v4[qword_1EA9D6BA8 + 16];
  sub_18BC1E1A8();
  v17(a1, a2, a3);
}

void *sub_18BA53320(uint64_t a1)
{
  v2 = v1;
  v4 = _s4PageVMa_0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  sub_18B7CC308();
  sub_18B82D0A4(a1, v9, _s4PageVMa_0);
  (*(v5 + 56))(v9, 0, 1, v4);
  v10 = sub_18B831460(v9);
  v21 = v11;
  v22 = v10;
  LOBYTE(v4) = v12;

  sub_18B988BAC(v9, &unk_1EA9DBE90);
  result = 0;
  if ((v4 & 1) == 0)
  {
    v14 = sub_18B7E189C(sub_18B7C2E68);
    sub_18B82D0A4(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s4PageVMa_0);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    sub_18B82FD54(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s4PageVMa_0);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    type metadata accessor for ScrollAnimator.Animator();
    v18 = swift_allocObject();
    v18[2] = sub_18BA5A308;
    v18[3] = v16;
    v18[4] = sub_18BA5AAC0;
    v18[5] = v17;
    v18[6] = v14[5];
    v18[7] = v14;
    v19 = v21;
    v18[8] = v22;
    v18[9] = v19;
    v20 = v2;
    sub_18BC1E1A8();
    return v18;
  }

  return result;
}

void sub_18BA535C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = *(a1 + qword_1EA9D6C58);
  v8 = *(v7 + 24);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 24) = v10;
    if (v10 == 1)
    {
      swift_beginAccess();
      v11 = *(v7 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);
          HIBYTE(v16) = *(v7 + 24) > 0;
          sub_18BC1E1A8();
          v14(&v16 + 7);

          v13 += 16;
          --v12;
        }

        while (v12);
      }
    }

    sub_18B82D0A4(a2, v6, _s4PageVMa_0);
    v15 = _s4PageVMa_0();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    sub_18B8343DC(v6, "running scroll animator", 23, 2);
    sub_18B988BAC(v6, &unk_1EA9DBE90);
  }
}

uint64_t sub_18BA5379C(uint64_t a1)
{
  v26 = a1;
  v29 = sub_18BC208F8();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18BC20928();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4PageVMa_0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_18BC20948();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_18B7B0AC0(0, &unk_1EA9D3A90);
  v25 = sub_18BC21348();
  sub_18BC20938();
  sub_18BC20958();
  v27 = *(v10 + 8);
  v27(v12, v9);
  sub_18B82D0A4(v26, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s4PageVMa_0);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_18B82FD54(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, _s4PageVMa_0);
  v19 = v28;
  *(v18 + v17) = v28;
  aBlock[4] = sub_18BA5A27C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_273;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  sub_18BC20908();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18B7CC1E8(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18BA00814();
  v22 = v29;
  sub_18BC21908();
  v23 = v25;
  MEMORY[0x18CFFC820](v15, v5, v2, v20);
  _Block_release(v20);

  (*(v32 + 8))(v2, v22);
  (*(v30 + 8))(v5, v31);
  return (v27)(v15, v9);
}

void sub_18BA53C1C(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa_0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v42 = a1;
  sub_18B82D0A4(a1, &v40 - v17, _s4PageVMa_0);
  v19 = *(v5 + 56);
  v19(v18, 0, 1, v4);
  v20 = *(a2 + qword_1EA9F7FF0);
  v43 = a2;
  if (v20 == 1)
  {
    v19(v15, 1, 1, v4);
  }

  else
  {
    v21 = sub_18B7CC308();
    v22 = sub_18B7C2E68(v21);
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v44.origin.x = v24;
    v44.origin.y = v26;
    v44.size.width = v28;
    v44.size.height = v30;
    MidX = CGRectGetMidX(v44);
    v45.origin.x = v24;
    v45.origin.y = v26;
    v45.size.width = v28;
    v45.size.height = v30;
    MidY = CGRectGetMidY(v45);
    sub_18B7CECB4(v15, MidX, MidY);
  }

  v33 = *(v7 + 48);
  sub_18B7CA054(v18, v9, &unk_1EA9DBE90);
  sub_18B7CA054(v15, &v9[v33], &unk_1EA9DBE90);
  v34 = *(v5 + 48);
  if (v34(v9, 1, v4) != 1)
  {
    sub_18B7CA054(v9, v12, &unk_1EA9DBE90);
    if (v34(&v9[v33], 1, v4) != 1)
    {
      v35 = v41;
      sub_18B82FD54(&v9[v33], v41, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v35, _s4PageVMa_0);
      sub_18B988BAC(v15, &unk_1EA9DBE90);
      sub_18B988BAC(v18, &unk_1EA9DBE90);
      sub_18B82D1D4(v12, _s4PageVMa_0);
      sub_18B988BAC(v9, &unk_1EA9DBE90);
      if ((updated & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_18B988BAC(v15, &unk_1EA9DBE90);
    sub_18B988BAC(v18, &unk_1EA9DBE90);
    sub_18B82D1D4(v12, _s4PageVMa_0);
LABEL_9:
    sub_18B988BAC(v9, &qword_1EA9D5340);
    return;
  }

  sub_18B988BAC(v15, &unk_1EA9DBE90);
  sub_18B988BAC(v18, &unk_1EA9DBE90);
  if (v34(&v9[v33], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_18B988BAC(v9, &unk_1EA9DBE90);
LABEL_11:
  v37 = sub_18B862854(v42, 0xD000000000000017, 0x800000018BC60750);
  if (v37)
  {
    v38 = v37;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v39 = sub_18B82FEA0();

      [v39 flashScrollIndicators];
    }

    else
    {
    }
  }
}

uint64_t sub_18BA54150@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v80 = _s4PageVMa_0();
  v12 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v75 - v18;
  v19 = *(*&a1 + 184);
  v77 = a1;
  v78 = a2;
  v20 = *(*&a1 + 192);
  v21 = *(a2 + 184);
  v22 = *(a2 + 192);
  v23 = qword_1EA9D6BA0;
  swift_beginAccess();
  if (*(*(v3 + v23) + 40) == 3 && (sub_18B833DF0(v19, v20, v21, v22) & 1) == 0)
  {
    return sub_18BBE8030(v22, v79);
  }

  v76 = v22;
  v24 = sub_18B7CC308();
  v25 = sub_18B7C2E68(v24);
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v82.origin.x = v27;
  v82.origin.y = v29;
  v82.size.width = v31;
  v82.size.height = v33;
  MidX = CGRectGetMidX(v82);
  v83.origin.x = v27;
  v83.origin.y = v29;
  v83.size.width = v31;
  v83.size.height = v33;
  MidY = CGRectGetMidY(v83);
  sub_18B7CECB4(v11, MidX, MidY);

  v36 = v80;
  if ((*(v12 + 48))(v11, 1, v80) == 1)
  {
    sub_18B988BAC(v11, &unk_1EA9DBE90);
    goto LABEL_16;
  }

  v37 = v81;
  sub_18B82FD54(v11, v81, _s4PageVMa_0);
  result = sub_18B9B9F20(v37, v76);
  if ((result & 1) == 0)
  {
    v49 = *(v20 + 16);
    if (v49)
    {
      v50 = 0;
      while (1)
      {
        if (v50 >= *(v20 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        v51 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v52 = *(v12 + 72);
        v53 = v52 * v50;
        sub_18B82D0A4(v20 + v51 + v52 * v50, v16, _s4PageVMa_0);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        result = sub_18B82D1D4(v16, _s4PageVMa_0);
        if (updated)
        {
          break;
        }

        ++v50;
        v37 = v81;
        if (v49 == v50)
        {
          goto LABEL_15;
        }
      }

      v62 = *(v76 + 16);
      v63 = v50 >= v62;
      v64 = v76;
      if (!v63)
      {
        v65 = v75;
        sub_18B82D0A4(v76 + v51 + v53, v75, _s4PageVMa_0);
        if ((*(v65 + *(v36 + 24)) & 1) == 0)
        {
          sub_18B82D1D4(v81, _s4PageVMa_0);
          v73 = v65;
          v74 = v79;
          sub_18B82FD54(v73, v79, _s4PageVMa_0);
          v55 = *(v12 + 56);
          v56 = v74;
          v57 = 0;
          goto LABEL_17;
        }

        sub_18B82D1D4(v65, _s4PageVMa_0);
        v62 = *(v64 + 16);
      }

      v66 = v62 + 1;
      result = v64 + v51 + (v62 - 1) * v52;
      v67 = v64 + v51 + v62 * v52;
      while (--v66)
      {
        v68 = v80;
        if (v66 > *(v64 + 16))
        {
          goto LABEL_37;
        }

        v69 = result - v52;
        v67 -= v52;
        sub_18B82D0A4(result, v16, _s4PageVMa_0);
        v70 = v16[*(v68 + 24)];
        sub_18B82D1D4(v16, _s4PageVMa_0);
        result = v69;
        if ((v70 & 1) == 0)
        {
          v71 = v67;
          v72 = v79;
          sub_18B82D0A4(v71, v79, _s4PageVMa_0);
          sub_18B82D1D4(v81, _s4PageVMa_0);
          v55 = *(v12 + 56);
          v56 = v72;
          v57 = 0;
          goto LABEL_34;
        }
      }

      sub_18B82D1D4(v81, _s4PageVMa_0);
      v55 = *(v12 + 56);
      v56 = v79;
      v57 = 1;
LABEL_34:
      v58 = v80;
      return v55(v56, v57, 1, v58);
    }

LABEL_15:
    sub_18B82D1D4(v37, _s4PageVMa_0);
LABEL_16:
    v55 = *(v12 + 56);
    v56 = v79;
    v57 = 1;
LABEL_17:
    v58 = v36;
    return v55(v56, v57, 1, v58);
  }

  sub_18B82D0A4(v37, v8, _s4PageVMa_0);
  v39 = *(v12 + 56);
  v39(v8, 0, 1, v36);
  *&v40 = COERCE_DOUBLE(sub_18B831460(v8));
  v76 = v41;
  v77 = *&v40;
  v43 = v42;
  sub_18B988BAC(v8, &unk_1EA9DBE90);
  sub_18B82D0A4(v37, v8, _s4PageVMa_0);
  v39(v8, 0, 1, v36);
  v44 = COERCE_DOUBLE(sub_18B831460(v8));
  v46 = v45;
  v48 = v47;
  sub_18B988BAC(v8, &unk_1EA9DBE90);
  if (v43)
  {
    if ((v48 & 1) == 0)
    {
LABEL_23:
      v61 = v79;
      sub_18B82FD54(v81, v79, _s4PageVMa_0);
      v59 = v61;
      v60 = 0;
      return v39(v59, v60, 1, v36);
    }
  }

  else if ((v48 & 1) != 0 || v77 != v44 || *&v76 != v46)
  {
    goto LABEL_23;
  }

  sub_18B82D1D4(v81, _s4PageVMa_0);
  v59 = v79;
  v60 = 1;
  return v39(v59, v60, 1, v36);
}

void sub_18BA5484C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = _s4PageVMa_0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_18B7CC308() + 192);
  sub_18BC1E3F8();

  v47 = a1;
  sub_18B830354(sub_18B9EB46C, v17, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_18B988BAC(v12, &unk_1EA9DBE90);
    return;
  }

  v45 = a2;
  sub_18B82FD54(v12, v16, _s4PageVMa_0);
  sub_18B7CC308();
  sub_18B82D0A4(v16, v9, _s4PageVMa_0);
  v18 = *(v14 + 56);
  v18(v9, 0, 1, v13);
  *&v19 = COERCE_DOUBLE(sub_18B831460(v9));
  v21 = v20;
  v23 = v22;

  sub_18B988BAC(v9, &unk_1EA9DBE90);
  if (v23)
  {
    goto LABEL_15;
  }

  v24 = *&v19;
  v25 = v21;
  sub_18B82D0A4(v16, v9, _s4PageVMa_0);
  v18(v9, 0, 1, v13);
  sub_18B8343DC(v9, "scrolling programmatically", 26, 2);
  v26 = sub_18B988BAC(v9, &unk_1EA9DBE90);
  v27 = sub_18B7C2E68(v26);
  [v27 contentOffset];
  v29 = v28;
  v31 = v30;

  if (v29 == v24 && v31 == v21)
  {
    if (*&v4[qword_1EA9D6BD0])
    {
      v32 = sub_18BC1E1A8();
      v33 = sub_18B7C2E68(v32);
      sub_18B840D74(v33);
    }

LABEL_15:
    sub_18B82D1D4(v16, _s4PageVMa_0);
    return;
  }

  v34 = *&v4[qword_1EA9D6C58];
  v35 = *(v34 + 24);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 24) = v37;
    v38 = v45;
    if (v37 == 1)
    {
      swift_beginAccess();
      v39 = *(v34 + 16);
      v40 = *(v39 + 16);
      if (v40)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v41 = v39 + 40;
        do
        {
          v42 = *(v41 - 8);
          v48 = *(v34 + 24) > 0;
          sub_18BC1E1A8();
          v42(&v48);

          v41 += 16;
          --v40;
        }

        while (v40);

        v38 = v45;
      }
    }

    sub_18B7E189C(sub_18B7C2E68);
    v43 = swift_allocObject();
    *(v43 + 16) = v4;
    v44 = v4;
    sub_18B83D7A4(v38, v46 & 1, sub_18BA5A260, v43, v24, v25);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_18BA54D08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EA9D6C58);
  v3 = *(v2 + 24);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v5;
    if (!v5)
    {
      result = swift_beginAccess();
      v7 = *(v2 + 16);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v9 = v7 + 40;
        do
        {
          v10 = *(v9 - 8);
          v11 = *(v2 + 24) > 0;
          sub_18BC1E1A8();
          v10(&v11);

          v9 += 16;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t sub_18BA54DE0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = _s4PageVMa_0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *(sub_18B7CC308() + 192);
  sub_18BC1E3F8();

  v13 = *(v12 + 16);
  do
  {
    if (!v13)
    {
    }

    if (v13 > *(v12 + 16))
    {
      __break(1u);
LABEL_15:
      swift_once();
      goto LABEL_7;
    }

    --v13;
    v14 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13;
    sub_18B82D0A4(v14, v5, _s4PageVMa_0);
    v15 = v5[*(v2 + 24)];
    sub_18B82D1D4(v5, _s4PageVMa_0);
  }

  while ((v15 & 1) != 0);
  sub_18B82D0A4(v14, v8, _s4PageVMa_0);

  sub_18B82FD54(v8, v11, _s4PageVMa_0);
  if (![objc_opt_self() areAnimationsEnabled])
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_18BA5484C(v11, &v31, 1);
    sub_18B988BAC(&v31, &unk_1EA9D5060);
    return sub_18B82D1D4(v11, _s4PageVMa_0);
  }

  if (qword_1EA9D21E8 != -1)
  {
    goto LABEL_15;
  }

LABEL_7:
  v16 = qword_1EA9F7A78;
  v17 = type metadata accessor for RetargetableTransitionCoordinator();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 32) = MEMORY[0x1E69E7CC0];
  *(v18 + 40) = 1;
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(&v32 + 1) = v17;
  v33 = &off_1EFF27FD8;
  *&v31 = v18;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BA5484C(v11, &v31, 1);
  sub_18B988BAC(&v31, &unk_1EA9D5060);
  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 16) = v29;
  *(v20 + 24) = v21;
  swift_beginAccess();
  v22 = *(v18 + 32);
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + 32) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_18B9B5814(0, v22[2] + 1, 1, v22);
    *(v18 + 32) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_18B9B5814((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = &v22[2 * v25];
  v26[4] = sub_18B9D53B0;
  v26[5] = v20;
  *(v18 + 32) = v22;
  swift_endAccess();
  v27 = *(v18 + 16);
  swift_retain_n();
  sub_18B7D8090(v27);
  sub_18B7EAA64(sub_18B9EB460, v18, sub_18B9EB538, v18, v27);

  sub_18B7EBAE8(v27);
  sub_18B82D1D4(v11, _s4PageVMa_0);
  *(v18 + 40) = 0;
}

uint64_t sub_18BA5524C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = _s4PageVMa_0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = v0 + qword_1EA9D6BA0;
  result = swift_beginAccess();
  if (*(v22 + 8) == 1)
  {
    result = sub_18B7CE8B0();
    if ((result & 1) == 0)
    {
      v43 = v21;
      v24 = qword_1EA9F7FE8;
      swift_beginAccess();
      sub_18B7CA054(v0 + v24, v15, &unk_1EA9DBE90);
      v25 = *(v17 + 48);
      if (v25(v15, 1, v16) == 1)
      {
        v26 = v15;
      }

      else
      {
        v41 = v17 + 48;
        sub_18B82FD54(v15, v43, _s4PageVMa_0);
        v27 = sub_18B7CC308();
        v42 = v25;
        v44 = v12;
        v28 = *(v27 + 192);
        sub_18BC1E3F8();

        sub_18BBE7E84(v28, v44);

        sub_18B7CA054(v44, v9, &unk_1EA9DBE90);
        v29 = v42(v9, 1, v16);
        v26 = v44;
        sub_18B988BAC(v9, &unk_1EA9DBE90);
        v30 = v29 == 1;
        v31 = v42;
        if (v30)
        {
          goto LABEL_8;
        }

        result = (v42)(v26, 1, v16);
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        if (*(v26 + *(v16 + 24)) == 1)
        {
LABEL_8:
          v32 = *(sub_18B7CC308() + 192);
          sub_18BC1E3F8();

          if (*(v32 + 16))
          {
            sub_18B82D0A4(v32 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v6, _s4PageVMa_0);
            v33 = 0;
          }

          else
          {
            v33 = 1;
          }

          v26 = v44;

          (*(v17 + 56))(v6, v33, 1, v16);
          sub_18B7FD070(v6, v26, &unk_1EA9DBE90);
        }

        sub_18B7CA054(v26, v3, &unk_1EA9DBE90);
        if (v31(v3, 1, v16) == 1)
        {
          sub_18B82D1D4(v43, _s4PageVMa_0);
          sub_18B988BAC(v3, &unk_1EA9DBE90);
        }

        else
        {
          v34 = v45;
          sub_18B82FD54(v3, v45, _s4PageVMa_0);
          v35 = v43;
          if (qword_1EA9D21E8 != -1)
          {
            swift_once();
          }

          v36 = qword_1EA9F7A78;
          v37 = type metadata accessor for RetargetableTransitionCoordinator();
          v38 = swift_allocObject();
          v39 = MEMORY[0x1E69E7CC0];
          *(v38 + 24) = MEMORY[0x1E69E7CC0];
          *(v38 + 32) = v39;
          *(v38 + 40) = 1;
          *(v38 + 16) = v36;
          v46[3] = v37;
          v46[4] = &off_1EFF27FD8;
          v46[0] = v38;
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          sub_18BA5484C(v34, v46, 1);
          sub_18B988BAC(v46, &unk_1EA9D5060);
          v40 = *(v38 + 16);
          swift_retain_n();
          sub_18B7D8090(v40);
          sub_18B7EAA64(sub_18B9EB460, v38, sub_18B9EB538, v38, v40);

          sub_18B7EBAE8(v40);
          sub_18B82D1D4(v34, _s4PageVMa_0);
          sub_18B82D1D4(v35, _s4PageVMa_0);
          *(v38 + 40) = 0;

          v26 = v44;
        }
      }

      return sub_18B988BAC(v26, &unk_1EA9DBE90);
    }
  }

  return result;
}

uint64_t sub_18BA55850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = _s4PageVMa_0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v52 = &v46 - v23;
  v24 = v0 + qword_1EA9D6BA0;
  result = swift_beginAccess();
  if (*(v24 + 8) == 1)
  {
    result = sub_18B7CE8B0();
    if ((result & 1) == 0)
    {
      v50 = v11;
      v26 = qword_1EA9F7FE8;
      swift_beginAccess();
      sub_18B7CA054(v0 + v26, v14, &unk_1EA9DBE90);
      v27 = *(v16 + 48);
      if (v27(v14, 1, v15) == 1)
      {
        return sub_18B988BAC(v14, &unk_1EA9DBE90);
      }

      v47 = v5;
      v48 = v18;
      sub_18B82FD54(v14, v52, _s4PageVMa_0);
      v28 = sub_18B7CC308();
      v49 = v27;
      v29 = *(v28 + 192);
      sub_18BC1E3F8();

      v30 = v50;
      sub_18BBE7CF0(v29, v50);

      sub_18B7CA054(v30, v8, &unk_1EA9DBE90);
      v31 = v49;
      v32 = v49(v8, 1, v15);
      sub_18B988BAC(v8, &unk_1EA9DBE90);
      if (v32 == 1)
      {
        v46 = v16 + 48;
        v33 = *(sub_18B7CC308() + 192);
        sub_18BC1E3F8();

        v34 = *(v33 + 16);
        while (1)
        {
          if (!v34)
          {
            v38 = 1;
            v37 = v47;
            goto LABEL_12;
          }

          if (v34 > *(v33 + 16))
          {
            break;
          }

          --v34;
          v35 = v33 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v34;
          sub_18B82D0A4(v35, v21, _s4PageVMa_0);
          v36 = v21[*(v15 + 24)];
          sub_18B82D1D4(v21, _s4PageVMa_0);
          if ((v36 & 1) == 0)
          {
            v37 = v47;
            sub_18B82D0A4(v35, v47, _s4PageVMa_0);
            v38 = 0;
LABEL_12:

            v30 = v50;
            sub_18B988BAC(v50, &unk_1EA9DBE90);
            (*(v16 + 56))(v37, v38, 1, v15);
            sub_18B7CF39C(v37, v30, &unk_1EA9DBE90);
            v31 = v49;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:
        v39 = v51;
        sub_18B7CA054(v30, v51, &unk_1EA9DBE90);
        if (v31(v39, 1, v15) == 1)
        {
          sub_18B988BAC(v30, &unk_1EA9DBE90);
          sub_18B82D1D4(v52, _s4PageVMa_0);
          return sub_18B988BAC(v39, &unk_1EA9DBE90);
        }

        v40 = v39;
        v16 = v48;
        sub_18B82FD54(v40, v48, _s4PageVMa_0);
        if (qword_1EA9D21E8 == -1)
        {
          goto LABEL_16;
        }
      }

      swift_once();
LABEL_16:
      v41 = qword_1EA9F7A78;
      v42 = type metadata accessor for RetargetableTransitionCoordinator();
      v43 = swift_allocObject();
      v44 = MEMORY[0x1E69E7CC0];
      *(v43 + 24) = MEMORY[0x1E69E7CC0];
      *(v43 + 32) = v44;
      *(v43 + 40) = 1;
      *(v43 + 16) = v41;
      v53[3] = v42;
      v53[4] = &off_1EFF27FD8;
      v53[0] = v43;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18BA5484C(v16, v53, 1);
      sub_18B988BAC(v53, &unk_1EA9D5060);
      v45 = *(v43 + 16);
      swift_retain_n();
      sub_18B7D8090(v45);
      sub_18B7EAA64(sub_18B9D4FF4, v43, sub_18B9D4FFC, v43, v45);

      sub_18B7EBAE8(v45);
      sub_18B82D1D4(v16, _s4PageVMa_0);
      sub_18B988BAC(v50, &unk_1EA9DBE90);
      sub_18B82D1D4(v52, _s4PageVMa_0);
      *(v43 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_18BA55EF8()
{
  v1 = v0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v67 = _s4PageVMa_0();
  v13 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v57 - v18;
  v20 = _s4PageVMa();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_18B9E64FC(v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_18B988BAC(v19, &qword_1EA9D52E0);
    }

    else
    {
      sub_18B82FD54(v19, v23, _s4PageVMa);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v25 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_didScrollToPageObserver];
      sub_18BC1E1A8();

      v25(v23);

      sub_18B82D1D4(v23, _s4PageVMa);
    }

    if (qword_1EA9D2200 != -1)
    {
      swift_once();
    }

    sub_18B862CB8(qword_1EA9F7A90);
    swift_unknownObjectRelease();
  }

  if (v1[qword_1EA9F7FF0] == 1)
  {
    (*(v13 + 56))(v12, 1, 1, v67);
    return sub_18B988BAC(v12, &unk_1EA9DBE90);
  }

  v60 = v9;
  v26 = sub_18B7CC308();
  v27 = sub_18B7C2E68(v26);
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v68.origin.x = v29;
  v68.origin.y = v31;
  v68.size.width = v33;
  v68.size.height = v35;
  MidX = CGRectGetMidX(v68);
  v69.origin.x = v29;
  v69.origin.y = v31;
  v69.size.width = v33;
  v69.size.height = v35;
  MidY = CGRectGetMidY(v69);
  sub_18B7CECB4(v12, MidX, MidY);

  v38 = *(v13 + 48);
  v39 = v67;
  if (v38(v12, 1, v67) == 1)
  {
    return sub_18B988BAC(v12, &unk_1EA9DBE90);
  }

  v41 = v12;
  v42 = v66;
  sub_18B82FD54(v41, v66, _s4PageVMa_0);
  v43 = v60;
  sub_18B82D0A4(v42, v60, _s4PageVMa_0);
  v44 = *(v13 + 56);
  v59 = v13 + 56;
  v58 = v44;
  v44(v43, 0, 1, v39);
  v45 = qword_1EA9D6C30;
  swift_beginAccess();
  v46 = v64;
  v47 = *(v63 + 48);
  sub_18B7CA054(v43, v64, &unk_1EA9DBE90);
  sub_18B7CA054(&v1[v45], v46 + v47, &unk_1EA9DBE90);
  if (v38(v46, 1, v39) != 1)
  {
    v50 = v62;
    sub_18B7CA054(v46, v62, &unk_1EA9DBE90);
    if (v38((v46 + v47), 1, v39) != 1)
    {
      v54 = v61;
      sub_18B82FD54(v46 + v47, v61, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v54, _s4PageVMa_0);
      sub_18B988BAC(v60, &unk_1EA9DBE90);
      sub_18B82D1D4(v50, _s4PageVMa_0);
      sub_18B988BAC(v46, &unk_1EA9DBE90);
      v49 = v66;
      if (updated)
      {
        goto LABEL_30;
      }

LABEL_18:
      sub_18BA5379C(v49);
      v51 = [v1 firstResponder];
      if ([v1 _isAncestorOfFirstResponder])
      {
        if (!v51)
        {
          goto LABEL_30;
        }

        type metadata accessor for TabOverviewSwitcher();
        if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5110), swift_dynamicCastClass()) || (type metadata accessor for SearchBar(), swift_dynamicCastClass()))
        {
          v52 = sub_18B862854(v49, 0xD000000000000017, 0x800000018BC60750);
          if (v52)
          {
            v53 = v52;
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              goto LABEL_30;
            }

            [v53 becomeFirstResponder];
          }
        }
      }

      goto LABEL_30;
    }

    sub_18B988BAC(v60, &unk_1EA9DBE90);
    sub_18B82D1D4(v50, _s4PageVMa_0);
    v49 = v66;
LABEL_17:
    sub_18B988BAC(v46, &qword_1EA9D5340);
    goto LABEL_18;
  }

  sub_18B988BAC(v43, &unk_1EA9DBE90);
  v48 = v38((v46 + v47), 1, v39);
  v49 = v66;
  if (v48 != 1)
  {
    goto LABEL_17;
  }

  sub_18B988BAC(v46, &unk_1EA9DBE90);
LABEL_30:
  v56 = v65;
  sub_18B82FD54(v49, v65, _s4PageVMa_0);
  v58(v56, 0, 1, v39);
  swift_beginAccess();
  sub_18B7FD070(v56, &v1[v45], &unk_1EA9DBE90);
  return swift_endAccess();
}

id sub_18BA56804(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8 + 16;
  v10 = _s4PageVMa_0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *(v1 + qword_1EA9D6BB8 + 1) = 1;
  sub_18B7CC308();
  sub_18B82F1AC(a1, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9DBE90);
    if (qword_1EA9D22A8 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1F2C8();
    __swift_project_value_buffer(v14, qword_1EA9F7EB0);
    v15 = sub_18BC1F2A8();
    v16 = sub_18BC21238();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_18B7AC000, v15, v16, "Failed to update targetPage when getting scroll position for next layout pass", v17, 2u);
      MEMORY[0x18CFFEEE0](v17, -1, -1);
    }
  }

  else
  {
    sub_18B82FD54(v9, v13, _s4PageVMa_0);
    sub_18B82D0A4(v13, v6, _s4PageVMa_0);
    (*(v11 + 56))(v6, 0, 1, v10);
    sub_18B8343DC(v6, "resetting scroll position", 25, 2);
    sub_18B988BAC(v6, &unk_1EA9DBE90);
    sub_18B82D1D4(v13, _s4PageVMa_0);
  }

  sub_18B9D50A0(a1, v21);
  v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  sub_18B7FD070(v21, v2 + v18, &unk_1EA9D53A0);
  swift_endAccess();
  return [v2 setNeedsLayout];
}

uint64_t sub_18BA56B80@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = _s4PageVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_18BA54150(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_18B988BAC(v8, &unk_1EA9DBE90);
    v17 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
  }

  else
  {
    sub_18B82FD54(v8, v15, _s4PageVMa_0);
    sub_18B82D0A4(v15, v12, _s4PageVMa_0);
    sub_18B7CC1E8(&qword_1EA9D6D00, _s4PageVMa_0);
    sub_18BC21A68();
    *(a3 + 48) = 0xD000000000000017;
    *(a3 + 56) = 0x800000018BC60750;
    v17 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    result = sub_18B82D1D4(v15, _s4PageVMa_0);
  }

  *a3 = v17;
  return result;
}

void sub_18BA56DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  if (*(*(v0 + qword_1EA9D6C58) + 24) > 0)
  {
    goto LABEL_5;
  }

  v5 = v0;
  v6 = sub_18B7C2E68(v2);
  if ([v6 isDragging])
  {

    v0 = v5;
    goto LABEL_5;
  }

  v7 = [v6 isDecelerating];

  v0 = v5;
  if (v7)
  {
LABEL_5:
    v8 = *(v0 + qword_1EA9F7FF0);
    *(v0 + qword_1EA9F7FF0) = 1;
    if (v8)
    {
      return;
    }

    goto LABEL_6;
  }

  if (*(v5 + qword_1EA9D6BD0))
  {
    sub_18BC1E1A8();
    sub_18BAE71D4();
    v0 = v5;
    v11 = v10;

    v12 = *(v5 + qword_1EA9F7FF0);
    *(v5 + qword_1EA9F7FF0) = v11 & 1;
    if ((v11 & 1) != v12)
    {
      if (v11)
      {
LABEL_6:
        v9 = qword_1EA9D6C30;
        swift_beginAccess();
        sub_18B7CA054(v0 + v9, v4, &unk_1EA9DBE90);
LABEL_7:
        sub_18BA55EF8();
        sub_18B988BAC(v4, &unk_1EA9DBE90);
        return;
      }

LABEL_14:
      v14 = _s4PageVMa_0();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *(v5 + qword_1EA9F7FF0);
    *(v5 + qword_1EA9F7FF0) = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_18BA56FE4()
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v71);
  v1 = &v59 - v0;
  v77 = _s4ItemVMa_2();
  v72 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v59 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  result = sub_18B7EA91C();
  v13 = 0;
  v15 = result + 64;
  v14 = *(result + 64);
  v61 = result;
  v16 = 1 << *(result + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v60 = result + 64;
  v59 = v19;
  v68 = v1;
  v67 = v3;
  if (!v18)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v20 = v13;
LABEL_11:
      v64 = v18;
      v21 = *(v61 + 56);
      v63 = v20;
      v76 = *(v21 + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
      v22 = sub_18B82FEA0();
      v23 = MEMORY[0x1E69E7D40];
      v24 = *&v22[*((*MEMORY[0x1E69E7D40] & *v22) + 0x90)] + qword_1EA9D95C8;
      swift_beginAccess();
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v26 + 16);
      v28 = *v23 & *v22;
      v75 = v22;
      v73 = *(v28 + 128);
      v62 = v25;
      sub_18BC1E1A8();
      result = sub_18BC1E1A8();
      v74 = v27;
      if (v27)
      {
        v29 = 0;
        v66 = MEMORY[0x1E69E7CC0];
        v69 = v26;
        while (1)
        {
          if (v29 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v30 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v31 = *(v72 + 72);
          sub_18B82D0A4(v26 + v30 + v31 * v29, v11, _s4ItemVMa_2);
          v32 = *&v75[v73];
          if (*(v32 + 16))
          {
            v70 = v30;
            sub_18BC22158();
            sub_18BC1EC08();
            sub_18B7CC1E8(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
            sub_18BC1E3F8();
            sub_18BC20A78();
            v33 = sub_18BC221A8();
            v34 = -1 << *(v32 + 32);
            v35 = v33 & ~v34;
            if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
            {
              v36 = ~v34;
              while (1)
              {
                sub_18B82D0A4(*(v32 + 48) + v35 * v31, v8, _s4ItemVMa_2);
                updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                sub_18B82D1D4(v8, _s4ItemVMa_2);
                if (updated)
                {
                  break;
                }

                v35 = (v35 + 1) & v36;
                if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              sub_18B82FD54(v11, v65, _s4ItemVMa_2);
              v38 = v66;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v78 = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_18B85A1AC(0, *(v38 + 16) + 1, 1);
                v38 = v78;
              }

              v1 = v68;
              v3 = v67;
              v26 = v69;
              v41 = *(v38 + 16);
              v40 = *(v38 + 24);
              if (v41 >= v40 >> 1)
              {
                sub_18B85A1AC(v40 > 1, v41 + 1, 1);
                v38 = v78;
              }

              *(v38 + 16) = v41 + 1;
              v66 = v38;
              result = sub_18B82FD54(v65, v38 + v70 + v41 * v31, _s4ItemVMa_2);
              goto LABEL_15;
            }

LABEL_13:

            v1 = v68;
            v3 = v67;
            v26 = v69;
          }

          result = sub_18B82D1D4(v11, _s4ItemVMa_2);
LABEL_15:
          if (++v29 == v74)
          {
            goto LABEL_29;
          }
        }
      }

      v66 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v18 = (v64 - 1) & v64;

      v42 = *(v66 + 16);
      if (!v42)
      {

        v13 = v63;
        v15 = v60;
        v19 = v59;
        if (!v18)
        {
          goto LABEL_8;
        }

        continue;
      }

      break;
    }

    v64 = v18;
    v75 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    v43 = v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v44 = *(v72 + 72);
    do
    {
      sub_18B82D0A4(v43, v3, _s4ItemVMa_2);
      v45 = *&v75[v76];
      sub_18B82D0A4(v3, v1, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v46 = *((*MEMORY[0x1E69E7D40] & *v45) + 0x150);
      swift_beginAccess();
      v47 = *(v45 + v46);
      if (!*(v47 + 16))
      {
        goto LABEL_32;
      }

      v48 = v45;
      sub_18BC1E3F8();
      v49 = sub_18B83B1C8(v1);
      if ((v50 & 1) == 0)
      {

LABEL_32:
        sub_18B988BAC(v1, &unk_1EA9D92F0);
        goto LABEL_33;
      }

      v51 = *(*(v47 + 56) + 8 * v49);
      sub_18BC1E1A8();

      sub_18B988BAC(v1, &unk_1EA9D92F0);

      v52 = *(v51 + 24);
      v53 = v52;

      if (v52)
      {
        type metadata accessor for TabOverview.ItemView();
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = *(v54 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

          type metadata accessor for TabOverviewItemView();
          v56 = swift_dynamicCastClassUnconditional();
          v57 = [v56 layer];
          [v57 clearHasBeenCommitted];

          v58 = [*&v56[OBJC_IVAR___SFTabOverviewItemView_thumbnailView] layer];
          [v58 clearHasBeenCommitted];
        }

        else
        {
        }
      }

LABEL_33:
      sub_18B82D1D4(v3, _s4ItemVMa_2);
      v43 += v44;
      --v42;
    }

    while (v42);

    v13 = v63;
    v15 = v60;
    v19 = v59;
    v18 = v64;
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_8:
  while (2)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_44:
      __break(1u);
    }

    else
    {
      if (v20 < v19)
      {
        v18 = *(v15 + 8 * v20);
        ++v13;
        if (!v18)
        {
          continue;
        }

        goto LABEL_11;
      }
    }

    return result;
  }
}

uint64_t sub_18BA578AC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(sub_18B7CC308() + 192);
  sub_18BC1E3F8();

  v18 = a1;
  sub_18B830354(sub_18BA5AA70, v11, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9DBE90);
    return 0;
  }

  else
  {
    sub_18B82FD54(v6, v10, _s4PageVMa_0);
    v13 = sub_18B862854(v10, 0xD000000000000017, 0x800000018BC60750);
    if (v13)
    {
      v14 = v13;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_18B9C34B0(a1, a2 & 1);
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    sub_18B82D1D4(v10, _s4PageVMa_0);
  }

  return v12;
}

void sub_18BA57AFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = a1;
  if ([v4 state] == 1)
  {
    v5 = sub_18B7CEA3C();
    if (v5)
    {
      v6 = v5;
      v7 = sub_18B82FEA0();
      sub_18BA59658();
    }
  }
}

BOOL sub_18BA57B94(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_18B7B0AC0(0, &qword_1EA9D5BE0);
  v5 = sub_18B7CC278();
  v6 = sub_18BC215C8();

  if (v6)
  {
    return 1;
  }

  v8 = &v3[qword_1EA9D6BA0];
  swift_beginAccess();
  if (v8[161] != 1 || *(*&v3[qword_1EA9D6C40] + 24) > 0)
  {
    return 0;
  }

  [v3 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v3 safeAreaInsets];
  v19 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v17, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  UIEdgeInsetsMakeWithEdges();
  v28 = UIEdgeInsetsInsetRect(v19, v21, v23, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [a2 locationInView_];
  v36 = v35;
  v37.origin.x = v28;
  v37.origin.y = v30;
  v37.size.width = v32;
  v37.size.height = v34;
  if (v36 < CGRectGetMinX(v37))
  {
    return 1;
  }

  v38.origin.x = v28;
  v38.origin.y = v30;
  v38.size.width = v32;
  v38.size.height = v34;
  return CGRectGetMaxX(v38) < v36;
}

BOOL sub_18BA57D84(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_18BA57B94(v6, v7);

  return v9;
}

void sub_18BA57E00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA5A458(v4);
}

void sub_18BA57E80(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (*&a1[qword_1EA9D6BD0])
  {
    v6 = a3;
    v7 = a1;
    sub_18BC1E1A8();
    a4(v6);
  }

  else
  {
    v8 = a3;
    v9 = a1;
  }

  sub_18BA56DEC();
}

void sub_18BA57F24(void *a1)
{
  v2 = v1;
  v4 = sub_18B7E189C(sub_18B7C2E68);
  type metadata accessor for Assertion();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = 0;
  v4[5] = v5;

  [v4[6] contentOffset];
  v7 = v6;
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v7;
  v10[4] = v9;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18B840544;
  *(v12 + 24) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_18B7D1EC4;
  *(v13 + 24) = v12;
  v22[4] = sub_18B7D1E94;
  v22[5] = v13;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_18B7E3BF4;
  v22[3] = &block_descriptor_198_0;
  v14 = _Block_copy(v22);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v2 + qword_1EA9D6BD0);
    if (v15)
    {
      v16 = *(v15 + 16);
      *(v15 + 16) = a1;
      sub_18BC1E1A8();
      v17 = a1;

      sub_18B7CE56C();
      sub_18BAE7924(v17);
    }

    v18 = sub_18B7CEA3C();
    if (v18)
    {
      v19 = v18;
      v20 = sub_18B852D5C();
      if (v20)
      {
        v21 = v20;
        [*(v20 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) resignFirstResponder];
      }
    }

    if (([a1 isDecelerating] & 1) == 0)
    {
      sub_18BA56DEC();
    }

    *(v2 + qword_1EA9D6C08) = 1;
  }
}

void sub_18BA58200(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA57F24(v4);
}

void sub_18BA58268(void *a1, uint64_t a2, void *a3, double *a4)
{
  v6 = a3;
  v7 = a1;
  sub_18BA5A59C(v6, a4);
}

uint64_t sub_18BA58308()
{
  sub_18B7D4D24(v0 + qword_1EA9D6BA0);
  memcpy(v2, (v0 + qword_1EA9D6BA8), sizeof(v2));
  sub_18B7CD4C4(v2);

  sub_18B7B55F4(v0 + qword_1EA9D6BC0);

  sub_18B7B55F4(v0 + qword_1EA9D6BD8);

  sub_18B988BAC(v0 + qword_1EA9D6C30, &unk_1EA9DBE90);

  sub_18B988BAC(v0 + qword_1EA9F7FE8, &unk_1EA9DBE90);
}

id sub_18BA584E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabOverviewSwitcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA5851C(uint64_t a1)
{
  sub_18B7D4D24(a1 + qword_1EA9D6BA0);
  memcpy(v3, (a1 + qword_1EA9D6BA8), sizeof(v3));
  sub_18B7CD4C4(v3);

  sub_18B7B55F4(a1 + qword_1EA9D6BC0);

  sub_18B7B55F4(a1 + qword_1EA9D6BD8);

  sub_18B988BAC(a1 + qword_1EA9D6C30, &unk_1EA9DBE90);

  sub_18B988BAC(a1 + qword_1EA9F7FE8, &unk_1EA9DBE90);
}

void sub_18BA586FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  if (*a3 && !*(a4 + 24) && *(v4 + qword_1EA9F7FF0) != 1)
  {
    v10 = qword_1EA9D6C30;
    swift_beginAccess();
    sub_18B7CA054(v4 + v10, v9, &unk_1EA9DBE90);
    sub_18BA55EF8();
    sub_18B988BAC(v9, &unk_1EA9DBE90);
  }
}

uint64_t getEnumTagSinglePayload for TabOverviewSwitcher.PageViewFlags(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for TabOverviewSwitcher.PageViewFlags(_WORD *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_18BA589B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 152))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BA58A08(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BA58A90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_18BA58AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_18BA58B54(double a1)
{
  v2 = sub_18B7CC308();
  v3 = sub_18B7D2BB0() * a1;
  v4 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);

  return v3 - v4;
}

uint64_t sub_18BA58BBC(CGFloat a1, CGFloat a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v8 = sub_18B7C2E68(v7);
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  sub_18B7CC308();
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = v10;
  v17.size.height = v12;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = v10;
  v18.size.height = v12;
  MidY = CGRectGetMidY(v18);
  sub_18B7CECB4(v6, MidX, MidY);

  sub_18B8343DC(v6, "linked view ended dragging", 26, 2);
  return sub_18B988BAC(v6, &unk_1EA9DBE90);
}

uint64_t sub_18BA58D00()
{
  v39 = _s4ItemVMa_2();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90)) + qword_1EA9D95C8;
  swift_beginAccess();
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v11 + 16);
  v13 = *v8 & *v0;
  v38 = v0;
  v35 = *(v13 + 128);
  v30 = v10;
  sub_18BC1E1A8();
  result = sub_18BC1E1A8();
  v36 = v12;
  if (v12)
  {
    v15 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v11;
    while (1)
    {
      if (v15 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v16 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v17 = *(v37 + 72);
      sub_18B82D0A4(v11 + v16 + v17 * v15, v7, _s4ItemVMa_2);
      v18 = *(v38 + v35);
      if (*(v18 + 16))
      {
        v34 = v16;
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B7CC1E8(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
        sub_18BC1E3F8();
        sub_18BC20A78();
        v19 = sub_18BC221A8();
        v20 = -1 << *(v18 + 32);
        v21 = v19 & ~v20;
        if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            sub_18B82D0A4(*(v18 + 48) + v21 * v17, v4, _s4ItemVMa_2);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B82D1D4(v4, _s4ItemVMa_2);
            if (updated)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          sub_18B82FD54(v7, v31, _s4ItemVMa_2);
          v24 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v24;
          v40 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18B85A1AC(0, *(v24 + 16) + 1, 1);
            v26 = v40;
          }

          v11 = v33;
          v27 = v26;
          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_18B85A1AC(v28 > 1, v29 + 1, 1);
            v27 = v40;
          }

          *(v27 + 16) = v29 + 1;
          v32 = v27;
          result = sub_18B82FD54(v31, v27 + v34 + v29 * v17, _s4ItemVMa_2);
          goto LABEL_5;
        }

LABEL_3:

        v11 = v33;
      }

      result = sub_18B82D1D4(v7, _s4ItemVMa_2);
LABEL_5:
      if (++v15 == v36)
      {
        goto LABEL_19;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v32;
}

void sub_18BA59158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5];
  v7 = _s4ItemVMa_2();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v13 = *(v0 + v12);
  if (v13)
  {
    *(v0 + v12) = 0;

    v14 = *((*v11 & *v0) + 0x118);
    swift_beginAccess();
    sub_18B7CA054(v0 + v14, v6, &unk_1EA9D4F30);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_18B988BAC(v6, &unk_1EA9D4F30);
    }

    else
    {
      sub_18B82FD54(v6, v10, _s4ItemVMa_2);
      sub_18BA593DC(v10);
      sub_18B82D1D4(v10, _s4ItemVMa_2);
      (*(v8 + 56))(v3, 1, 1, v7);
      swift_beginAccess();
      sub_18B7FD070(v3, v0 + v14, &unk_1EA9D4F30);
      swift_endAccess();
    }
  }
}

void sub_18BA593DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  sub_18B82D0A4(a1, &v19[-v4], _s4ItemVMa_2);
  swift_storeEnumTagMultiPayload();
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = v1;
  sub_18BC1E3F8();
  v10 = sub_18B83B1C8(v5);
  if ((v11 & 1) == 0)
  {

LABEL_8:
    sub_18B988BAC(v5, &unk_1EA9D92F0);
    return;
  }

  v12 = *(*(v8 + 56) + 8 * v10);
  sub_18BC1E1A8();
  sub_18B988BAC(v5, &unk_1EA9D92F0);

  v13 = *(v12 + 24);
  v14 = v13;

  if (v13)
  {
    if (((*((*v6 & *v14) + 0xC0))(v15) & 1) != 0 && ((*((*v6 & *v14) + 0xC8))(0), v16 = v9 + *((*v6 & *v9) + 0x88), swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v17 = *(v16 + 1);
      ObjectType = swift_getObjectType();
      (*(v17 + 32))(v9, a1, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18BA59658()
{
  v1 = sub_18BC208F8();
  v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC20928();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC20948();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_18BA59158();
  v13 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x148));
  v14 = *(v13 + 24);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v31 = v3;
    v32 = v4;
    *(v13 + 24) = v16;
    if (v16 == 1)
    {
      swift_beginAccess();
      v17 = *(v13 + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v29 = v12;
        v30 = v1;
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v19 = v17 + 40;
        do
        {
          v20 = *(v19 - 8);
          LOBYTE(aBlock[0]) = *(v13 + 24) > 0;
          sub_18BC1E1A8();
          v20(aBlock);

          v19 += 16;
          --v18;
        }

        while (v18);

        v12 = v29;
        v1 = v30;
      }
    }

    sub_18B7B0AC0(0, &unk_1EA9D3A90);
    v21 = sub_18BC21348();
    sub_18BC20938();
    sub_18BC20958();
    v30 = *(v7 + 8);
    v22 = v12;
    v23 = v6;
    v30(v9, v6);
    v24 = swift_allocObject();
    *(v24 + 16) = v0;
    aBlock[4] = sub_18BA5A998;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_342;
    v25 = _Block_copy(aBlock);
    v26 = v0;

    v27 = v33;
    sub_18BC20908();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_18B7CC1E8(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
    sub_18BA00814();
    v28 = v31;
    sub_18BC21908();
    MEMORY[0x18CFFC820](v22, v27, v28, v25);
    _Block_release(v25);

    (*(v35 + 8))(v28, v1);
    (*(v34 + 8))(v27, v32);
    v30(v22, v23);
  }
}

void *sub_18BA59AF8(void *result)
{
  v1 = *(result + *((*MEMORY[0x1E69E7D40] & *result) + 0x148));
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (!v4)
    {
      result = swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

void sub_18BA59C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v13 = xmmword_18BC46770;
  swift_beginAccess();
  sub_18B7CE028(&v13, v5);
  v6 = swift_endAccess();
  v7 = (a3)(v6);
  v8 = v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    sub_18B7B0AC0(0, &qword_1EA9D6CF0);
    v10 = v9;
    v11 = sub_18BC215C8();

    if (v11)
    {
      v12 = *(a2 + 16);
      *(a2 + 16) = 0;

      sub_18B7CE56C();
    }
  }

  else
  {
  }
}

uint64_t sub_18BA59D00(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (sub_18B868A60(a1 + 16, a2 + 16) && *(a1 + 160) == *(a2 + 160))
  {
    v5 = *(a1 + 161) ^ *(a2 + 161) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_18BA59D8C()
{
  v1 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_18BA5AAB4;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_18B7B0DB0;
    v6[3] = &block_descriptor_18;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 _performBlockAfterCATransactionCommits_];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BA59EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s4PageVMa_0() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_18BA59F58()
{
  v1 = *(_s4PageVMa_0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_18BA5031C(v2, v3);
}

uint64_t objectdestroy_209Tm()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_18BC1EC08();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + *(v1 + 20);
  if (*(v4 + 32))
  {
  }

  v5 = *(v4 + 88);
  if (v5 != 1)
  {
  }

  v6 = v0 + v2 + *(v1 + 32);
  if (*(v6 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_18BA5A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s4PageVMa_0();

  sub_18BA50814(a1, a2, a3, a4);
}

double sub_18BA5A23C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 2;
  return result;
}

void sub_18BA5A27C()
{
  v1 = *(_s4PageVMa_0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_18BA53C1C(v0 + v2, v3);
}

uint64_t sub_18BA5A320()
{
  v1 = (*(v0 + 16) + qword_1EA9D6C00);
  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_18BA5A33C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);

  return sub_18BA52168(v0 + v3, v5, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t objectdestroy_244Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void sub_18BA5A458(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[qword_1EA9D6BD0];
  if (v3)
  {
    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    sub_18BC1E1A8();

    sub_18B7CE56C();
    sub_18BAE7534(a1);
  }

  [v2 setNeedsLayout];
  v6 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v11[4] = sub_18BA5A974;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_18B7B0DB0;
    v11[3] = &block_descriptor_336;
    v8 = _Block_copy(v11);
    v9 = v6;
    v10 = v2;

    [v9 _performBlockAfterCATransactionCommits_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BA5A59C(uint64_t a1, double *a2)
{
  v3 = v2;
  v6 = _s4PageVMa_0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37[-v14];
  sub_18B7CC308();

  if (*(v2 + qword_1EA9D6BD0))
  {
    v18 = *a2;
    v17 = a2[1];
    sub_18BC1E1A8();
    sub_18BAE7B1C(a1, v18, v17);
  }

  v19 = *a2;
  v20 = a2[1];
  v21 = sub_18B7C2E68(v16);
  [v21 bounds];
  v23 = v22;
  v25 = v24;

  sub_18B7CC308();
  v38.origin.x = v19;
  v38.origin.y = v20;
  v38.size.width = v23;
  v38.size.height = v25;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v19;
  v39.origin.y = v20;
  v39.size.width = v23;
  v39.size.height = v25;
  MidY = CGRectGetMidY(v39);
  sub_18B7CECB4(v15, MidX, MidY);

  sub_18B8343DC(v15, "ended dragging", 14, 2);
  sub_18B988BAC(v15, &unk_1EA9DBE90);
  *(v3 + qword_1EA9D6C08) = 0;
  v28 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v3 + v28, v12, &unk_1EA9DBE90);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_18B988BAC(v12, &unk_1EA9DBE90);
  }

  else
  {
    sub_18B82FD54(v12, v9, _s4PageVMa_0);
    if (v9[*(v6 + 24)] == 1)
    {
      v29 = qword_1EA9D6BA0;
      swift_beginAccess();
      v30 = *(v3 + v29);
      v31 = *(v30 + 40);
      *(v30 + 40) = 3;
      sub_18BC1E1A8();
      sub_18B7CC404(v31);

      v32 = *(v3 + qword_1EA9D6BA8 + 32);
      sub_18BC1E1A8();
      v32(v9);

      return sub_18B82D1D4(v9, _s4PageVMa_0);
    }

    sub_18B82D1D4(v9, _s4PageVMa_0);
  }

  v34 = qword_1EA9D6BA0;
  swift_beginAccess();
  v35 = *(v3 + v34);
  v36 = *(v35 + 40);
  *(v35 + 40) = 0;
  sub_18BC1E1A8();
  sub_18B7CC404(v36);
}

unint64_t sub_18BA5AADC()
{
  result = qword_1EA9D6D70;
  if (!qword_1EA9D6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6D70);
  }

  return result;
}

id SFCapsulePageLayoutBottom.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_18BA5B74C();
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutBottom.init(container:)()
{
  v0 = sub_18BA5B74C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_18BA5AC90()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18BA5ACF0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

void sub_18BA5AE44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    swift_unknownObjectRelease();
    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

uint64_t sub_18BA5AEE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3FC60;
  *(v0 + 32) = sub_18BC20BD8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_18BC20BD8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_18BC20BD8();
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_18BA5AF70(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18BA5B4AC(a1);
      v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
      v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
      v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
      v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

      v25.origin.x = v6;
      v25.origin.y = v7;
      v25.size.width = v8;
      v25.size.height = v9;
      CGRectGetMinY(v25);
    }

    else
    {
      v10 = sub_18B7BA664(a1);
      v11 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
      v12 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
      v13 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
      v14 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

      v26.origin.x = v11;
      v26.origin.y = v12;
      v26.size.width = v13;
      v26.size.height = v14;
      CGRectGetMinY(v26);
    }

    v15 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v27);
    [v3 bounds];
    CGRectGetHeight(v28);
    v16 = _SFRoundRectToPixels(0.0);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = &v15[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v23 = v16;
    *(v23 + 1) = v18;
    *(v23 + 2) = v20;
    *(v23 + 3) = v22;
    return v15;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA5B150(void *a1)
{
  v2 = sub_18B7BA664(a1);
  v33 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
  v34 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  v31 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];
  v32 = *&v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v36) state:44.0];
    v5 = v4;
    swift_unknownObjectRelease();
    v6 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v30 = fmax(v5, 48.0);
    CACornerRadiiMake(v35, v30 * 0.5, v30 * 0.5, v30 * 0.5, v30 * 0.5);
    v8 = v35[0];
    v7 = v35[1];
    v10 = v35[2];
    v9 = v35[3];
    v12 = v35[4];
    v11 = v35[5];
    v13 = v35[6];
    v14 = v35[7];
    v15 = &v6[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v15 = v8;
    v15[1] = v7;
    v15[2] = v10;
    v15[3] = v9;
    v15[4] = v12;
    v15[5] = v11;
    v15[6] = v13;
    v15[7] = v14;
    v16 = 0;
    if (v13 == v14 && v13 == v8 && v14 == v7)
    {
      v17 = v13 == v12;
      if (v14 != v11)
      {
        v17 = 0;
      }

      if (v13 != v10)
      {
        v17 = 0;
      }

      v16 = v14 == v9 && v17;
    }

    v18 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v6[v18] = v16;
    v37.origin.x = v34;
    v37.origin.y = v33;
    v37.size.width = v32;
    v37.size.height = v31;
    v19 = CGRectGetMinX(v37) + 16.0;
    v38.origin.x = v34;
    v38.origin.y = v33;
    v38.size.width = v32;
    v38.size.height = v31;
    CGRectGetMinY(v38);
    v39.origin.x = v34;
    v39.origin.y = v33;
    v39.size.width = v32;
    v39.size.height = v31;
    CGRectGetWidth(v39);
    v20 = _SFRoundRectToPixels(v19);
    v21 = &v6[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    v25 = sub_18BC20BD8();
    v27 = v26;
    v28 = &v6[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
    swift_beginAccess();
    *v28 = v25;
    v28[1] = v27;

    return v6;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BA5B43C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_18BA5B4AC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7BA664(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [a1 lockdownStatusBar];
    v10 = v9;
    if (v9)
    {
      [v9 preferredSize];
    }

    v11 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v21.origin.x = v5;
    v21.origin.y = v6;
    v21.size.width = v7;
    v21.size.height = v8;
    CGRectGetMinY(v21);
    [v3 bounds];
    CGRectGetWidth(v22);
    v12 = _SFRoundRectToPixels(0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v19 = v12;
    *(v19 + 1) = v14;
    *(v19 + 2) = v16;
    *(v19 + 3) = v18;
    return v11;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutBottom.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutBottom.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutBottom();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BA5B74C()
{
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_capsuleEdgePadding] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_capsuleToolbarPadding] = 0x4010000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_minimumCapsuleHeight] = 0x4048000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_platterInset] = 0x402C000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_platterInsetReduced] = 0x4020000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_toolbarEdgePadding] = 0x4028000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFCapsulePageLayoutBottom_toolbarHeight] = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutBottom();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_18BA5B834()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v1 bounds];
    CGRectGetWidth(v12);
    [v1 safeAreaInsets];
    v3 = _SFRoundRectToPixels(0.0);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    swift_unknownObjectRelease();
    v10 = &v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v10 = v3;
    *(v10 + 1) = v5;
    *(v10 + 2) = v7;
    *(v10 + 3) = v9;
    return v2;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA5BB58(uint64_t a1)
{
  v2 = sub_18BA5E6D8();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA5BBA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA5DB6C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_18BA5BBD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_18BC1E8B8();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9F8000);
  __swift_project_value_buffer(v10, qword_1EA9F8000);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_18BC1E8F8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t sub_18BA5BEC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v51 = v38 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = v38 - v3;
  v58 = sub_18BC1E8B8();
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1E8D8();
  v52 = v12;
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E60);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E68);
  v16 = *(v15 - 8);
  v47 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18BC3FC90;
  v19 = (v18 + v17);
  v40 = *(v15 + 48);
  v41 = v18;
  *v19 = 0;
  sub_18BC20B18();
  v53 = "Last Hour (App Entity)";
  v42 = v8;
  sub_18BC1EC38();
  v55 = *MEMORY[0x1E6968DF0];
  v46 = *(v4 + 104);
  v56 = v4 + 104;
  v20 = v54;
  v46(v54);
  sub_18BC1E8F8();
  v21 = *(v57 + 56);
  v57 += 56;
  v44 = v21;
  v22 = v50;
  v21(v50, 1, 1, v12);
  v48 = sub_18BC1E398();
  v23 = *(v48 - 8);
  v43 = *(v23 + 56);
  v49 = v23 + 56;
  v43(v51, 1, 1, v48);
  v45 = v19;
  sub_18BC1E3A8();
  v24 = v47;
  v25 = *(v15 + 48);
  v39 = v15;
  v40 = v25;
  v19[v47] = 1;
  v38[2] = v11;
  sub_18BC20B18();
  sub_18BC1EC38();
  v26 = v46;
  (v46)(v20, v55, v58);
  v38[1] = v14;
  sub_18BC1E8F8();
  v27 = v44;
  v44(v22, 1, 1, v52);
  v28 = v51;
  v29 = v43;
  v43(v51, 1, 1, v48);
  v30 = v28;
  sub_18BC1E3A8();
  v31 = 2 * v24;
  v40 = 2 * v24;
  v32 = v45;
  v38[3] = *(v15 + 48);
  v45[v31] = 2;
  sub_18BC20B18();
  sub_18BC1EC38();
  (v26)(v54, v55, v58);
  sub_18BC1E8F8();
  v33 = v50;
  v27(v50, 1, 1, v52);
  v34 = v48;
  v29(v30, 1, 1, v48);
  sub_18BC1E3A8();
  v35 = &v32[v40 + v47];
  v47 = *(v39 + 48);
  *v35 = 3;
  sub_18BC20B18();
  sub_18BC1EC38();
  (v46)(v54, v55, v58);
  sub_18BC1E8F8();
  v44(v33, 1, 1, v52);
  v43(v30, 1, 1, v34);
  sub_18BC1E3A8();
  v36 = sub_18BA65A4C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EA9F8018 = v36;
  return result;
}

uint64_t sub_18BA5C69C()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18BA5C764()
{
  sub_18BC20C28();
}

uint64_t sub_18BA5C818()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t sub_18BA5C8DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BA5E68C();
  *a1 = result;
  return result;
}

void sub_18BA5C90C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x72756F487473616CLL;
  v4 = 0x800000018BC60840;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6F747369486C6C61;
    v4 = 0xEA00000000007972;
  }

  if (*v1)
  {
    v3 = 0x7961646F74;
    v2 = 0xE500000000000000;
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

uint64_t sub_18BA5C990@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2378 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E4F8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F8000);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_18BA5CA38(uint64_t a1)
{
  v2 = sub_18BA5D7A0();

  return MEMORY[0x1EEDB2C18](a1, v2);
}

uint64_t sub_18BA5CA84()
{
  if (qword_1EA9D2380 != -1)
  {
    swift_once();
  }

  return sub_18BC1E3F8();
}

uint64_t sub_18BA5CAE0(uint64_t a1)
{
  v2 = sub_18BA5D6D8();

  return MEMORY[0x1EEDB3D70](a1, v2);
}

void sub_18BA5CB3C(unsigned __int8 a1)
{
  v2 = [objc_opt_self() clearHistoryTimeFrameStringFromItemType_];
  if (!v2)
  {
    sub_18BC20BD8();
    v2 = sub_18BC20B98();
  }

  v1 = [objc_opt_self() safari_browserDefaults];
  [v1 setObject:v2 forKey:@"ClearHistoryLastSelectedTimeFrame"];
}

uint64_t SFSiriLinkCoordinator.openClearHistoryInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC46B88;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809930();
  return sub_18BC1F028();
}

uint64_t sub_18BA5CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  sub_18BC20F28();
  v6[14] = sub_18BC20F18();
  v8 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA5CD50, v8, v7);
}

uint64_t sub_18BA5CD50()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong actionPerformer];

    if (v3)
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
        _os_log_impl(&dword_18B7AC000, v5, v6, "Clear History", v7, 2u);
        MEMORY[0x18CFFEEE0](v7, -1, -1);
      }

      sub_18BC1E0A8();
      sub_18BA5CB3C(*(v0 + 40));
      sub_18BC1E0A8();
      v8 = *(v0 + 40);
      if (v8 != 2)
      {
        v9 = [objc_opt_self() safari_browserDefaults];
        [v9 setBool:v8 & 1 forKey:@"ClearHistoryLastEnabledCloseAllTabs"];
      }

      sub_18BC1E0A8();
      if (*(v0 + 48))
      {
        v10 = [objc_opt_self() safari_browserDefaults];
        [v10 setBool:0 forKey:@"ClearHistoryLastSelectedAllProfiles"];

        sub_18BC1E0A8();
        v11 = *(v0 + 40);
        if (v11 == 2)
        {
          v12 = sub_18BC20B98();

LABEL_18:
          v18 = *(v0 + 64);
          [v3 openClearHistoryViewControllerFor_];

          v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
          v18[4] = sub_18B7B0B08(&qword_1EA9D45B8, &qword_1EA9D45C0);
          __swift_allocate_boxed_opaque_existential_0Tm(v18);
          sub_18BC1DF98();
          swift_unknownObjectRelease();
          v16 = *(v0 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        sub_18BC1E0A8();
        v11 = *(v0 + 40);
        if (v11 == 2)
        {
LABEL_17:
          v12 = 0;
          goto LABEL_18;
        }
      }

      v17 = [objc_opt_self() safari_browserDefaults];
      [v17 setBool:v11 & 1 forKey:@"ClearHistoryLastSelectedAllProfiles"];

      goto LABEL_17;
    }
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v13 = sub_18BC1DE48();
  v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  swift_willThrow();
  v16 = *(v0 + 8);
LABEL_19:

  return v16();
}

uint64_t sub_18BA5D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_18B7B6968;

  return sub_18BA5CCB0(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_18BA5D244(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18B987B10;

  return v11(a1, v5, v6, v7, v8);
}

uint64_t sub_18BA5D364(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BA5D244(a1, a2, v6);
}

unint64_t sub_18BA5D478()
{
  result = qword_1EA9D6DE0;
  if (!qword_1EA9D6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DE0);
  }

  return result;
}

unint64_t sub_18BA5D4D0()
{
  result = qword_1EA9D6DE8;
  if (!qword_1EA9D6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DE8);
  }

  return result;
}

unint64_t sub_18BA5D528()
{
  result = qword_1EA9D6DF0;
  if (!qword_1EA9D6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DF0);
  }

  return result;
}

unint64_t sub_18BA5D580()
{
  result = qword_1EA9D6DF8;
  if (!qword_1EA9D6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DF8);
  }

  return result;
}

unint64_t sub_18BA5D5D8()
{
  result = qword_1EA9D6E00;
  if (!qword_1EA9D6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E00);
  }

  return result;
}

unint64_t sub_18BA5D62C()
{
  result = qword_1EA9D6E08;
  if (!qword_1EA9D6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E08);
  }

  return result;
}

unint64_t sub_18BA5D680()
{
  result = qword_1EA9D6E10;
  if (!qword_1EA9D6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E10);
  }

  return result;
}

unint64_t sub_18BA5D6D8()
{
  result = qword_1EA9D6E18;
  if (!qword_1EA9D6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E18);
  }

  return result;
}

unint64_t sub_18BA5D7A0()
{
  result = qword_1EA9D6E20;
  if (!qword_1EA9D6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E20);
  }

  return result;
}

unint64_t sub_18BA5D7F8()
{
  result = qword_1EA9D6E28;
  if (!qword_1EA9D6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E28);
  }

  return result;
}

unint64_t sub_18BA5D850()
{
  result = qword_1EA9D6E30;
  if (!qword_1EA9D6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E30);
  }

  return result;
}

unint64_t sub_18BA5D8A8()
{
  result = qword_1EA9D6E38;
  if (!qword_1EA9D6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E38);
  }

  return result;
}

unint64_t sub_18BA5D944()
{
  result = qword_1EA9D6E50;
  if (!qword_1EA9D6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E50);
  }

  return result;
}

unint64_t sub_18BA5D9A0()
{
  result = qword_1EA9D6E58;
  if (!qword_1EA9D6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E58);
  }

  return result;
}

uint64_t sub_18BA5DA0C(uint64_t *a1, int a2)
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

uint64_t sub_18BA5DA54(uint64_t result, int a2, int a3)
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

uint64_t sub_18BA5DAA4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BA5D244(a1, a2, v6);
}

uint64_t sub_18BA5DB6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v59 = &v42[-v1];
  v2 = sub_18BC1E8B8();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_18BC1E8D8();
  v62 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_18BC1E488();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42[-v21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E78);
  v23 = *(v9 + 56);
  v63 = v9 + 56;
  v64 = v23;
  v44 = v22;
  v23(v22, 1, 1, v8);
  LOBYTE(v73) = 4;
  v24 = sub_18BC1DF68();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v67 = v25 + 56;
  v60 = v19;
  v26(v19, 1, 1, v24);
  v52 = v16;
  v26(v16, 1, 1, v24);
  v68 = *MEMORY[0x1E695A4F8];
  v27 = *(v11 + 104);
  v69 = v11 + 104;
  v71 = v27;
  v61 = v13;
  v27(v13);
  sub_18BA5D7A0();
  v53 = sub_18BC1E0D8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E80);
  sub_18BC20B18();
  sub_18BC1EC38();
  v29 = v65 + 104;
  v30 = *(v65 + 104);
  v31 = v51;
  v43 = *MEMORY[0x1E6968DF0];
  v28 = v43;
  v32 = v66;
  v30(v51, v43, v66);
  v54 = v30;
  v55 = "Last Hour (App Entity)";
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v30(v31, v28, v32);
  v33 = v44;
  v34 = v31;
  sub_18BC1E8F8();
  v64(v33, 0, 1, v62);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v57 = v26;
  v58 = v24;
  v26(v60, 1, 1, v24);
  v26(v52, 1, 1, v24);
  v71(v61, v68, v70);
  sub_18B9EC484();
  v52 = sub_18BC1E118();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E88);
  sub_18BC20B18();
  sub_18BC1EC38();
  v35 = v43;
  v36 = v66;
  v37 = v54;
  v65 = v29;
  v54(v31, v43, v66);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v37(v31, v35, v36);
  sub_18BC1E8F8();
  v64(v33, 0, 1, v62);
  LOBYTE(v73) = 2;
  v46 = sub_18BC20EB8();
  v38 = *(v46 - 8);
  v45 = *(v38 + 56);
  v47 = v38 + 56;
  v45(v59, 1, 1, v46);
  v57(v60, 1, 1, v58);
  v71(v61, v68, v70);
  v48 = sub_18BC1E188();
  sub_18BC20B18();
  sub_18BC1EC38();
  v39 = v66;
  v40 = v54;
  v54(v34, v35, v66);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v40(v34, v35, v39);
  sub_18BC1E8F8();
  v64(v33, 0, 1, v62);
  LOBYTE(v73) = 2;
  v45(v59, 1, 1, v46);
  v57(v60, 1, 1, v58);
  v71(v61, v68, v70);
  sub_18BC1E188();
  return v53;
}

uint64_t sub_18BA5E68C()
{
  v0 = sub_18BC21E28();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18BA5E6D8()
{
  result = qword_1EA9D6E90;
  if (!qword_1EA9D6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E90);
  }

  return result;
}

unint64_t sub_18BA5E738()
{
  result = qword_1EA9D6E98;
  if (!qword_1EA9D6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6E98);
  }

  return result;
}

unint64_t sub_18BA5E78C()
{
  result = qword_1EA9D6EA0;
  if (!qword_1EA9D6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EA0);
  }

  return result;
}

__n128 sub_18BA5E7E0@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18BA5E828()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E0B8();
}

void (*sub_18BA5E8C0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C650;
}

uint64_t sub_18BA5E9A0(uint64_t a1)
{
  v2 = sub_18BA5F9A0();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA5E9EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_18BC20F28();
  *(v1 + 24) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA5EA84, v3, v2);
}

uint64_t sub_18BA5EA84()
{

  sub_18BC1DF98();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BA5EAF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA5F4E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BA5EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a2;
  v4[21] = a4;
  v4[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for TabEntity();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_18BC20F28();
  v4[26] = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BA5EC48, v7, v6);
}

uint64_t sub_18BA5EC48()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_18BC1E0A8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 176);

    sub_18BA5F3C0(v4);
    v5 = [*(v0 + 160) currentScene];
    if (v5)
    {
      v6 = *(v0 + 152);
      *v6 = v5;
      v7 = *MEMORY[0x1E6985C00];
      v8 = sub_18BC1F048();
      (*(*(v8 - 8) + 104))(v6, v7, v8);

      v9 = *(v0 + 8);
    }

    else
    {
      if (qword_1EA9D2550 != -1)
      {
        swift_once();
      }

      v13 = sub_18BC1DE48();
      v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
      sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
      swift_allocError();
      (*(*(v13 - 8) + 16))(v15, v14, v13);
      swift_willThrow();

      v9 = *(v0 + 8);
    }

    return v9();
  }

  else
  {
    v10 = *(v0 + 160);
    sub_18BA5F428(*(v0 + 176), *(v0 + 200));
    v11 = sub_18BC1EBC8();
    *(v0 + 232) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_18BA5EF8C;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18BAB46D0;
    *(v0 + 104) = &block_descriptor_19;
    *(v0 + 112) = v12;
    [v10 sceneForTabWithUUID:v11 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_18BA5EF8C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18BA5F094, v2, v1);
}

uint64_t sub_18BA5F094()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);

  sub_18BA5F48C(v2);
  v3 = *(v0 + 144);

  if (v3 || (v3 = [*(v0 + 160) currentScene]) != 0)
  {
    v4 = *(v0 + 152);
    *v4 = v3;
    v5 = *MEMORY[0x1E6985C00];
    v6 = sub_18BC1F048();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_18BA5F2A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_18B987B10;

  return sub_18BA5EB18(a1, a2, v7, v6);
}

unint64_t sub_18BA5F35C()
{
  result = qword_1EA9D6EC0;
  if (!qword_1EA9D6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EC0);
  }

  return result;
}

uint64_t sub_18BA5F3C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA5F428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA5F48C(uint64_t a1)
{
  v2 = type metadata accessor for TabEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA5F4E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = v20 - v1;
  v26 = sub_18BC1E488();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED8);
  v13 = sub_18BC1E8D8();
  v14 = *(v13 - 8);
  v22 = *(v14 + 56);
  v23 = v14 + 56;
  v22(v12, 1, 1, v13);
  v15 = sub_18BC1DF68();
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v6, 1, 1, v15);
  v21 = *MEMORY[0x1E695A4F8];
  v17 = *(v2 + 104);
  v20[2] = v2 + 104;
  v17(v27);
  sub_18BA5F904();
  v24 = sub_18BC1E108();
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EE8);
  v22(v12, 1, 1, v13);
  v18 = type metadata accessor for TabEntity();
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v16(v9, 1, 1, v15);
  v16(v6, 1, 1, v15);
  (v17)(v27, v21, v26);
  sub_18BA5F958(&qword_1EA9D6EF0, type metadata accessor for TabEntity);
  sub_18BC1E108();
  return v24;
}

unint64_t sub_18BA5F904()
{
  result = qword_1EA9D6EE0;
  if (!qword_1EA9D6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EE0);
  }

  return result;
}

uint64_t sub_18BA5F958(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18BA5F9A0()
{
  result = qword_1EA9D6EF8;
  if (!qword_1EA9D6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EF8);
  }

  return result;
}

uint64_t sub_18BA5FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_18BC1EC08();
  v3[6] = swift_task_alloc();
  v4 = sub_18BC1EA98();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for TabEntity();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  sub_18BC20F28();
  v3[16] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA5FC78, v7, v6);
}

uint64_t sub_18BA5FC78()
{

  v1 = [objc_opt_self() sharedApplication];
  *(v0 + 16) = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v37 = v1;
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    sub_18BC1E0A8();
    v7 = *(v6 + 48);
    v8 = v7(v4, 1, v5);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    if (v8)
    {
      v11 = *(v0 + 88);
      sub_18B988BAC(*(v0 + 80), &qword_1EA9D4500);
      (*(v10 + 56))(v11, 1, 1, v9);
      v12 = 0;
    }

    else
    {
      v13 = *(v0 + 80);
      (*(v10 + 16))(*(v0 + 72), v13, *(v0 + 56));
      sub_18B988BAC(v13, &qword_1EA9D4500);
      v14 = sub_18BC1E9E8();
      v15 = [v14 safari_originalDataAsString];

      if (!v15)
      {
        sub_18BC20BD8();
        v15 = sub_18BC20B98();
      }

      v16 = [v15 safari_bestURLForUserTypedString];

      if (v16)
      {
        sub_18BC1EA38();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v18 = *(v0 + 88);
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);
      v21 = *(v0 + 56);
      (*(v20 + 56))(v18, v17, 1, v21);
      v22 = *(v20 + 8);
      v22(v19, v21);
      if (v7(v18, 1, v21) == 1)
      {
        v12 = 0;
      }

      else
      {
        v23 = *(v0 + 88);
        v24 = *(v0 + 56);
        v12 = sub_18BC1E9E8();
        v22(v23, v24);
      }
    }

    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 96);
    v28 = *(v0 + 48);
    sub_18BC1E0A8();
    v29 = [v3 createNewTabWithURL:v12 isPrivate:*(v0 + 136)];

    sub_18BC1EBE8();
    sub_18BA7A354(v28, v27);
    if ((*(v25 + 48))(v27, 1, v26) != 1)
    {
      v35 = *(v0 + 120);
      sub_18BA5F428(*(v0 + 96), v35);
      sub_18BA5F958(&qword_1EA9D69C0, type metadata accessor for TabEntity);
      sub_18BC1DF88();

      sub_18BA5F48C(v35);

      v34 = *(v0 + 8);
      goto LABEL_19;
    }

    v30 = *(v0 + 96);

    sub_18B988BAC(v30, &qword_1EA9D6EC8);
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v31 = sub_18BC1DE48();
  v32 = __swift_project_value_buffer(v31, qword_1EA9F8578);
  sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
  swift_allocError();
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  swift_willThrow();

  v34 = *(v0 + 8);
LABEL_19:

  return v34();
}

uint64_t sub_18BA60188(uint64_t a1)
{
  v2 = sub_18BA608F4();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA601D4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B987B10;

  return sub_18BA5FA7C(a1, v5, v4);
}

uint64_t sub_18BA60280@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA60394();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18BA602C8()
{
  result = qword_1EA9D6F18;
  if (!qword_1EA9D6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6F18);
  }

  return result;
}

unint64_t sub_18BA60330()
{
  result = qword_1EA9D6F20;
  if (!qword_1EA9D6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6F20);
  }

  return result;
}

uint64_t sub_18BA60394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v24 - v1;
  v29 = sub_18BC1E488();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F30);
  v14 = sub_18BC1E8D8();
  v15 = *(v14 - 8);
  v30 = *(v15 + 56);
  v28 = v15 + 56;
  v30(v13, 1, 1, v14);
  v16 = sub_18BC1EA98();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_18BC1DF68();
  v18 = *(v17 - 8);
  v26 = *(v18 + 56);
  v27 = v18 + 56;
  v26(v7, 1, 1, v17);
  v19 = *MEMORY[0x1E695A4F8];
  v20 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v20;
  v21 = v29;
  v20(v4, v19, v29);
  v31 = sub_18BC1E148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F38);
  v30(v13, 1, 1, v14);
  v33 = 2;
  v22 = sub_18BC20EB8();
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v26(v7, 1, 1, v17);
  v25(v4, v19, v21);
  sub_18BC1E178();
  return v31;
}

uint64_t sub_18BA607A0(void *a1)
{
  sub_18BC1E0A8();
  if (v7 == 1 && ([a1 canCreateNewPrivateTab] & 1) == 0 || (result = sub_18BC1E0A8(), (v6 & 1) == 0) && (result = objc_msgSend(a1, sel_canCreateNewTab), (result & 1) == 0))
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v3 = sub_18BC1DE48();
    v4 = __swift_project_value_buffer(v3, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BA608F4()
{
  result = qword_1EA9D6FA0;
  if (!qword_1EA9D6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6FA0);
  }

  return result;
}

uint64_t static UICellAccessory.sf_imageMaskPreview(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_18BC1F568();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1F4E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFImageMaskView();
  v14 = a1;
  sub_18BA60C80(0, a1, 32.0, 32.0);
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
  v16 = *MEMORY[0x1E69DBF28];
  v17 = sub_18BC1F418();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  *v15 = sub_18B8390A8;
  v15[1] = 0;
  (*(v7 + 104))(v9, *MEMORY[0x1E69DBF60], v6);
  v18 = *MEMORY[0x1E69DBF30];
  v19 = sub_18BC1F448();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v5, v18, v19);
  (*(v20 + 56))(v5, 0, 1, v19);
  sub_18BC1F4D8();
  sub_18BC1F3D8();
  return (*(v11 + 8))(v13, v10);
}

char *sub_18BA60C80(void *a1, void *a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(v4) initWithFrame_];
  v10 = *&v9[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_color];
  *&v9[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_color] = a1;
  v11 = v9;
  v12 = a1;

  v13 = *&v11[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_image];
  *&v11[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_image] = a2;
  v14 = a2;

  v15 = &v11[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_preferredSize];
  *v15 = a3;
  v15[1] = a4;
  v16 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageView;
  [*&v11[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageView] setImage_];
  v17 = *&v11[v16];

  [v17 setBackgroundColor_];
  return v11;
}

char *sub_18BA60D88(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_image] = 0;
  v9 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageBackgroundView;
  if (qword_1EA9D23D8 != -1)
  {
    swift_once();
  }

  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v10 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_color] = 0;
  v11 = &v4[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_preferredSize];
  v12 = type metadata accessor for SFImageMaskView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v26.receiver = v4;
  v26.super_class = v12;
  v13 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageBackgroundView;
  v15 = *&v13[OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageBackgroundView];
  v16 = v13;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageView;
  [v16 addSubview_];
  v18 = *&v13[v14];
  [v16 bounds];
  [v18 setFrame_];

  v19 = *&v16[v17];
  [v16 bounds];
  [v19 setFrame_];

  [*&v13[v14] setAutoresizingMask_];
  [*&v16[v17] setAutoresizingMask_];
  v20 = [v16 layer];
  v21 = [objc_opt_self() darkGrayColor];
  v22 = [v21 CGColor];

  [v20 setBorderColor_];
  v23 = [v16 layer];

  [v23 setBorderWidth_];
  v24 = [v16 layer];

  [v24 setCornerRadius_];
  [v16 setClipsToBounds_];

  return v16;
}

id sub_18BA610D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFImageMaskView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static UICellAccessory.colorPreview(_:title:editHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a3;
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v31 = sub_18BC1F568();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18BC1F4E8();
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC8A8]) init];
  [v17 setSelectedColor_];
  if (a2)
  {
    v18 = sub_18BC20B98();
  }

  else
  {
    v18 = 0;
  }

  [v17 setTitle_];

  sub_18BA32BB0();
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = swift_allocObject();
  v20[2] = v30;
  v20[3] = a4;
  v20[4] = v19;
  sub_18BC1E1A8();
  v21 = sub_18BC215E8();
  [v17 addAction:v21 forControlEvents:4096];

  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
  v23 = *MEMORY[0x1E69DBF28];
  v24 = sub_18BC1F418();
  (*(*(v24 - 8) + 104))(v13, v23, v24);
  *v22 = sub_18B8390A8;
  v22[1] = 0;
  (*(v11 + 104))(v13, *MEMORY[0x1E69DBF60], v31);
  v25 = *MEMORY[0x1E69DBF30];
  v26 = sub_18BC1F448();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v10, v25, v26);
  (*(v27 + 56))(v10, 0, 1, v26);
  v28 = v17;
  sub_18BC1F4D8();
  sub_18BC1F3D8();

  return (*(v14 + 8))(v16, v32);
}

void sub_18BA61598(uint64_t a1, void (*a2)(id))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong selectedColor];

  a2(v4);
}

void sub_18BA61620()
{
  *(v0 + OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_image) = 0;
  v1 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageBackgroundView;
  if (qword_1EA9D23D8 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v2 = OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v0 + OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_color) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_preferredSize);
  *v3 = 0;
  v3[1] = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BA61748(uint64_t a1, void (*a2)(void))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_18BC21948();
    v7 = v6;
    v8 = sub_18BC219F8();
    v10 = v9;
    v11 = MEMORY[0x18CFFCE70](v5, v7, v8, v9);
    sub_18B7B4FF8(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_18B7B4FF8(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_18BC21918();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = sub_18BA63EB8(v5, v7, v4 != 0, a1, a2);
  sub_18B7B4FF8(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_18BA6189C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_18BC21948();
    v5 = v4;
    v6 = sub_18BC219F8();
    v8 = v7;
    v9 = MEMORY[0x18CFFCE70](v3, v5, v6, v7);
    sub_18B7B4FF8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_18B7B4FF8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_18BC21918();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_18BA64088(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_18B7B4FF8(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_18BA619E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_18BC21918();
  v11 = 1;
  if (v10 != 1 << *(a1 + 32))
  {
    sub_18BA64288(v10, *(a1 + 36), a1, a2, a3, a5);
    v11 = 0;
  }

  v12 = a4(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a5, v11, 1, v12);
}

uint64_t sub_18BA61AEC(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_18BC21948();
    v7 = v6;
    v8 = sub_18BC219F8();
    v10 = v9;
    v11 = MEMORY[0x18CFFCE70](v5, v7, v8, v9);
    sub_18B7B4FF8(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_18B7B4FF8(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_18BC21918();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_18BA64330(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_18B7B4FF8(v5, v7, v4 != 0);
  return v14;
}

void *TabIconPool.__allocating_init(siteMetadataManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = sub_18B8390A8;
  v2[3] = 0;
  v2[4] = sub_18B8390A8;
  v2[5] = 0;
  v2[6] = sub_18BA61D84;
  v2[7] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v2[8] = sub_18B7B3A1C(MEMORY[0x1E69E7CC0], &qword_1EA9D72C8, &unk_18BC47918, &qword_1EA9D72D0);
  v2[9] = sub_18B7B1194(v3);
  v2[10] = a1;
  return v2;
}

void *TabIconPool.init(siteMetadataManager:)(uint64_t a1)
{
  v1[2] = sub_18B8390A8;
  v1[3] = 0;
  v1[4] = sub_18B8390A8;
  v1[5] = 0;
  v1[6] = sub_18BA61D84;
  v1[7] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v1[8] = sub_18B7B3A1C(MEMORY[0x1E69E7CC0], &qword_1EA9D72C8, &unk_18BC47918, &qword_1EA9D72D0);
  v1[9] = sub_18B7B1194(v3);
  v1[10] = a1;
  return v1;
}

uint64_t sub_18BA61D84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC1EA98();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_18BA61DF0(uint64_t a1)
{
  sub_18B80F8C4(a1);
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (*(v3 + 16))
  {
    sub_18BC1E3F8();
    v4 = sub_18B857EE4(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      sub_18BC1E3F8();

      v7 = sub_18BA61748(v6, type metadata accessor for TabIconRegistration);

      if (v7)
      {

        sub_18BA61EC0(a1);
      }
    }

    else
    {
    }
  }
}

void sub_18BA61EC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_18BC1EA98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  sub_18BC1E1A8();
  v12 = v11(a1);

  if (v12)
  {
    v22 = v12;
    sub_18BA62A04(v12, a1);

    v13 = v22;
  }

  else
  {
    v14 = *(v2 + 48);
    sub_18BC1E1A8();
    v14(a1);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_18B988BAC(v6, &qword_1EA9D4500);
      sub_18B80F8C4(a1);
      v15 = sub_18BC20B98();
      v16 = [objc_opt_self() systemImageNamed_];

      sub_18BA62A04(v16, a1);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v17 = sub_18BC1E9E8();
      v18 = [v17 safari_isSafariWebExtensionURL];

      if (v18)
      {
        v19 = *(v2 + 32);
        sub_18BC1E1A8();
        v20 = v19(v10, a1);

        sub_18BA62A04(v20, a1);
      }

      else
      {
        sub_18BA621D0(v10, a1);
      }

      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_18BA621D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_18BC1EC08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TabIconPool.Request(0);
  v50 = *(v48 - 8);
  v12 = MEMORY[0x1EEE9AC00](v48);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v46 - v15);
  swift_beginAccess();
  v17 = *(v2 + 72);
  v18 = *(v17 + 16);
  v49 = v3;
  if (v18)
  {
    sub_18BC1E3F8();
    v19 = a2;
    v20 = sub_18B857EE4(a2);
    if (v21)
    {
      v22 = v50;
      sub_18BA6669C(*(v17 + 56) + *(v50 + 72) * v20, v14, type metadata accessor for TabIconPool.Request);

      sub_18B80D3BC(v14, v16, type metadata accessor for TabIconPool.Request);
      v23 = v48;
      if (sub_18BC1EA18())
      {
        return sub_18BA66640(v16);
      }

      v25 = v22;
      a2 = v19;
      (*(v9 + 16))(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v8);
      (*(v25 + 56))(v7, 1, 1, v23);
      v3 = v49;
      swift_beginAccess();
      sub_18BAD238C(v7, &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      swift_endAccess();
      v26 = *(v3 + 80);
      __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
      [v26 cancelRequestWithToken_];
      swift_unknownObjectRelease();
      sub_18BA66640(v16);
    }

    else
    {

      v3 = v49;
    }
  }

  v46 = v7;
  v27 = objc_allocWithZone(MEMORY[0x1E69C97B0]);
  v28 = sub_18BC1E9E8();
  v29 = [v27 initWithURL:v28 iconSize:0 fallbackType:{16.0, 16.0}];

  v30 = *(v3 + 80);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = *(v9 + 16);
  v47 = a2;
  v33 = a2;
  v34 = v29;
  v32(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v8);
  v35 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  (*(v9 + 32))(v36 + v35, v11, v8);
  v56 = sub_18BA665CC;
  v57 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_18B8370D4;
  *(&v55 + 1) = &block_descriptor_51;
  v37 = _Block_copy(&aBlock);

  v38 = [v30 registerRequest:v34 priority:2 responseHandler:v37];
  _Block_release(v37);
  if (v38)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v55 = 0u;
  }

  v39 = v50;
  v58[0] = aBlock;
  v58[1] = v55;
  sub_18B7CA054(v58, &v52, &qword_1EA9D5220);
  v40 = v47;
  if (v53)
  {
    sub_18B7B1AD4(&v52, &aBlock);
    v32(v11, v40, v8);
    v41 = v46;
    sub_18B7B193C(&aBlock, v46);
    v42 = v48;
    v43 = *(v48 + 20);
    v44 = sub_18BC1EA98();
    (*(*(v44 - 8) + 16))(v41 + v43, v51, v44);
    (*(v39 + 56))(v41, 0, 1, v42);
    swift_beginAccess();
    sub_18BAD238C(v41, v11);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v45 = v58;
  }

  else
  {
    sub_18B988BAC(v58, &qword_1EA9D5220);

    v45 = &v52;
  }

  return sub_18B988BAC(v45, &qword_1EA9D5220);
}

uint64_t sub_18BA62804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_18BC1EC08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    objc_opt_self();
    v12 = [swift_dynamicCastObjCClass() favicon];
    sub_18BA62A04(v12, a3);

    (*(v8 + 16))(v10, a3, v7);
    v13 = type metadata accessor for TabIconPool.Request(0);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    swift_beginAccess();
    sub_18BAD238C(v6, v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18BA62A04(void *a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16))
  {
    sub_18BC1E3F8();
    v7 = sub_18B857EE4(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      sub_18BC1E3F8();

      if ((v9 & 0xC000000000000001) != 0)
      {
        sub_18BC21958();
        type metadata accessor for TabIconRegistration(0);
        sub_18B7B3E44(&qword_1EA9D7168);
        result = sub_18BC210A8();
        v9 = v27;
        v10 = v28;
        v11 = v29;
        v12 = v30;
        v13 = v31;
      }

      else
      {
        v12 = 0;
        v14 = -1 << *(v9 + 32);
        v10 = v9 + 56;
        v11 = ~v14;
        v15 = -v14;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        else
        {
          v16 = -1;
        }

        v13 = v16 & *(v9 + 56);
      }

      v17 = (v11 + 64) >> 6;
      if (v9 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v18 = v12;
        v19 = v13;
        v20 = v12;
        if (!v13)
        {
          break;
        }

LABEL_15:
        v21 = (v19 - 1) & v19;
        v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
        sub_18BC1E1A8();
        if (!v22)
        {
          return sub_18B7D2E34();
        }

        while (1)
        {
          swift_beginAccess();
          v23 = *(v22 + 16);
          *(v22 + 16) = a1;
          v24 = a1;

          swift_beginAccess();
          v25 = *(v22 + 24);
          sub_18BC1E1A8();
          v25(a1);

          v12 = v20;
          v13 = v21;
          if ((v9 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (sub_18BC219D8())
          {
            type metadata accessor for TabIconRegistration(0);
            swift_dynamicCast();
            v22 = v26;
            v20 = v12;
            v21 = v13;
            if (v26)
            {
              continue;
            }
          }

          return sub_18B7D2E34();
        }
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {
          return sub_18B7D2E34();
        }

        v19 = *(v10 + 8 * v20);
        ++v18;
        if (v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void *sub_18BA62C88(uint64_t a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16))
  {
    sub_18BC1E3F8();
    v8 = sub_18B857EE4(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      sub_18BC1E3F8();

      v11 = sub_18BA61748(v10, type metadata accessor for TabIconRegistration);

      if (v11)
      {
        swift_beginAccess();
        v12 = *(v11 + 16);
        v13 = v12;

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for TabIconRegistration(0);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = CGRectMake;
  v14[4] = 0;
  swift_weakInit();
  swift_beginAccess();
  v18 = a1;
  v15 = v14[2];
  v14[2] = v12;
  v16 = v12;
  sub_18BC1E1A8();

  (*(v4 + 32))(v14 + OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id, v6, v3);
  swift_weakAssign();

  sub_18BA62EFC(v14);
  if (v12)
  {
  }

  else
  {
    sub_18BA61EC0(v18);
  }

  return v14;
}

uint64_t sub_18BA62EFC(uint64_t a1)
{
  v3 = v1;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  v26 = *(v6 + 16);
  v26(v10, a1 + v11, v5);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + 64);
  v13 = v28;
  *(v3 + 64) = 0x8000000000000000;
  v15 = sub_18B857EE4(v10);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v14;
  if (*(v13 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v3 + 64) = v13;
      if (v14)
      {
LABEL_11:
        sub_18BC1E1A8();
        sub_18BB5E0B8(&v28, a1);
        (*(v6 + 8))(v10, v5);
        swift_endAccess();
      }

LABEL_8:
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        v24 = sub_18BC219A8();
        v22 = v27;
        if (v24)
        {
          v21 = sub_18BA29234(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E7CD0];
        v22 = v27;
      }

      v26(v22, v10, v5);
      sub_18BB33454(v15, v22, v21, v13);
      goto LABEL_11;
    }

LABEL_13:
    sub_18BB294E0();
    v13 = v28;
    *(v3 + 64) = v28;
    if (v2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_18BB2D5B4(v18, isUniquelyReferenced_nonNull_native);
  v13 = v28;
  v19 = sub_18B857EE4(v10);
  if ((v2 & 1) == (v20 & 1))
  {
    v15 = v19;
    *(v3 + 64) = v13;
    if (v2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18BA631B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  swift_beginAccess();
  v13 = *(v2 + 64);
  if (!*(v13 + 16))
  {
    return (*(v5 + 8))(v10, v4);
  }

  sub_18BC1E3F8();
  v14 = sub_18B857EE4(v10);
  if ((v15 & 1) == 0)
  {

    return (*(v5 + 8))(v10, v4);
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  sub_18BC1E3F8();

  v22 = v16;
  sub_18B9CEDDC(a1);

  v12(v7, v10, v4);
  v17 = v22;
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*(v22 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  if (!sub_18BC219A8())
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_18BC1E3F8();
  v18 = v17;
LABEL_9:
  swift_beginAccess();
  sub_18BAD3198(v18, v7);
  swift_endAccess();
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_18BC219A8();
  }

  else
  {
    v19 = *(v17 + 16);
  }

  if (!v19)
  {
    sub_18B80F8C4(v10);
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t TabIconPool.deinit()
{

  return v0;
}

uint64_t TabIconPool.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BA634BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  swift_beginAccess();
  v6 = *(v3 + 24);
  sub_18BC1E1A8();
  v6(v2);
}

void *sub_18BA63548()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_18BA6358C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_18B9B8844;
  a2[1] = v6;
  return sub_18BC1E1A8();
}

uint64_t sub_18BA6360C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = sub_18B9B880C;
  *(v6 + 32) = v5;
  sub_18BC1E1A8();
}

uint64_t sub_18BA6369C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_18BC1E1A8();
  return v1;
}

uint64_t sub_18BA636E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_18BA6378C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  v5 = sub_18BC1EC08();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_18BA63818(uint64_t a1, uint64_t *a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_18BA63930@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  v4 = sub_18BC1EC08();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_18BA639B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t TabIconRegistration.deinit()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v2 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v0;
    v9[4] = sub_18BA64668;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18B7B0DB0;
    v9[3] = &block_descriptor_20;
    v5 = _Block_copy(v9);
    v6 = v2;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v6 _performBlockAfterCATransactionCommits_];
    _Block_release(v5);

LABEL_4:

    v7 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
    v8 = sub_18BC1EC08();
    (*(*(v8 - 8) + 8))(v0 + v7, v8);
    swift_weakDestroy();
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t TabIconRegistration.__deallocating_deinit()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v2 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v0;
    v9[4] = sub_18BA66708;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18B7B0DB0;
    v9[3] = &block_descriptor_7;
    v5 = _Block_copy(v9);
    v6 = v2;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v6 _performBlockAfterCATransactionCommits_];
    _Block_release(v5);

LABEL_4:

    v7 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
    v8 = sub_18BC1EC08();
    (*(*(v8 - 8) + 8))(v0 + v7, v8);
    swift_weakDestroy();
    return swift_deallocClassInstance();
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA63E18()
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](v0);
  return sub_18BC221A8();
}

uint64_t sub_18BA63E60()
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](*v0);
  return sub_18BC221A8();
}

uint64_t sub_18BA63EB8(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_18BC21988();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_18BC21998();
      a5(0);
      swift_dynamicCast();
      sub_18BC22158();
      MEMORY[0x18CFFD660]();
      v8 = sub_18BC221A8();
      v9 = -1 << *(a4 + 32);
      v10 = v8 & ~v9;
      if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = ~v9;
        while (*(*(a4 + 48) + 8 * v10) != v12)
        {
          v10 = (v10 + 1) & v11;
          if (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
          return sub_18BC1E1A8();
        }

        __break(1u);
LABEL_19:

        return sub_18BC1E1A8();
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x18CFFCEC0](result, a2, v7);
  a5(0);
  swift_dynamicCast();
  return v12;
}

void sub_18BA64088(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18CFFCEC0](a1, a2, v7);
      type metadata accessor for SFFluidCollectionReusableView();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for SFFluidCollectionReusableView();
    if (sub_18BC21988() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_18BC21998();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_18BC215B8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_18BC215C8();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_18BA64288@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 48);
    v10 = a4(0);
    return sub_18BA6669C(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_18BA64330(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18CFFCEC0](a1, a2, v9);
      sub_18B7B0AC0(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_18B7B0AC0(0, a5);
    if (sub_18BC21988() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_18BC21998();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_18BC215B8();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_18BC215C8();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

unint64_t sub_18BA64548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7048);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_18BC1E3F8();
      sub_18B9929A4(v7, v8);
      result = sub_18B831970(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

unint64_t sub_18BA648E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70B0);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);
      sub_18BC1E3F8();
      result = sub_18BB8B1C4(v8, v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v8;
      v11[1] = v5;
      v11[2] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_18BA64A04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70A8);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D70A0);
      result = sub_18B857EE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_18BC1EC08();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA64BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7160);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_18BB8CA5C();
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_18BA64CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7298);
    v3 = sub_18BC21D88();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_18BB8B348(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_18BA64DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7260);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v13, &qword_1EA9D5320);
      v5 = v13;
      v6 = v14;
      result = sub_18B831970(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18B7B1AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_18BA64EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4618);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7258);
    v7 = sub_18BC21D88();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v8, v5, &qword_1EA9D4618);
      result = sub_18BB8C9F8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_18BC1E3B8();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA650B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70E0);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, v13, &qword_1EA9D70E8);
      result = sub_18B85DC48(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_18BA651DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7108);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7100);
      result = sub_18BB8B29C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa();
      sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa);
      v16 = v7[7];
      v17 = _s4PageVMa();
      result = sub_18B80D3BC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s4PageVMa);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA653F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70F8);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D70F0);
      result = sub_18BB8B29C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa();
      sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa);
      v16 = v7[7];
      v17 = _s7SectionVMa_0();
      result = sub_18B80D3BC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s7SectionVMa_0);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA6560C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7118);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7110);
      result = sub_18BB8B29C(v5);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = *(*(_s4ItemVMa() - 8) + 72) * result;
      sub_18B80D3BC(v5, v13 + v14, _s4ItemVMa);
      result = sub_18B80D3BC(&v5[v8], v7[7] + v14, _s4ItemVMa);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA657FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70B8);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v11, &unk_1EA9D55F0);
      v5 = v11;
      result = sub_18BB8CA5C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18B7B1AD4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_18BA65924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70C0);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v11, &qword_1EA9D70C8);
      v5 = v11;
      result = sub_18BB8CA5C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18B7B1AD4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_18BA65A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7250);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D6E68);
      v11 = *v5;
      result = sub_18BB8B744(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_18BC1E3B8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA65C34(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7280);
  v3 = sub_18BC21D88();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_18BB8B348(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_18BB8B348(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18BA65D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7278);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_18BC1E3F8();
      v8 = v7;
      result = sub_18B831970(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_18BA65E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7268);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7270);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7268);
      result = sub_18BB8B834(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_18BC1E3B8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA6601C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7090);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7098);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7090);
      result = sub_18BB8B5B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_1();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_1);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA66200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7080);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7088);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7080);
      result = sub_18BB8B5B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_1();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_1);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18BA663E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7240);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7248);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7240);
      v11 = *v5;
      result = sub_18BB8B8DC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_18BC1E3B8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_18BA665CC(uint64_t a1)
{
  v3 = *(sub_18BC1EC08() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_18BA62804(a1, v4, v5);
}

uint64_t sub_18BA66640(uint64_t a1)
{
  v2 = type metadata accessor for TabIconPool.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA6669C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_18BA667C8(void *a1)
{
  *&v1[OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount] = 0;
  v3 = OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_label;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8.receiver = v1;
  v8.super_class = _s27SelectionCountIndicatorViewCMa();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_18BA6688C();
  }

  return v5;
}

void sub_18BA6688C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_label];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() safari:*MEMORY[0x1E69DDD80] monospacedDigitFontForTextStyle:*MEMORY[0x1E69DB980] weight:?];
  [v2 setFont_];

  [v2 setPreferredVibrancy_];
  [v2 setTextAlignment_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v5 = objc_opt_self();
  sub_18B7DE2FC(15, v1, 5.0, 10.0, 5.0, 10.0);
  sub_18BA497D0();
  v6 = sub_18BC20D88();

  [v5 activateConstraints_];

  sub_18BA66A2C();
}

void sub_18BA66A2C()
{
  v32 = sub_18BC1EE48();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v30 - v15;
  v37 = *(v0 + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_label);
  sub_18BC1EE38();
  sub_18BC1EE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8);
  v33 = sub_18BC1EE58();
  v16 = *(v33 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE38();
  v19 = v31;
  sub_18BC1EE38();
  sub_18BC1EE08();
  v20 = *(v1 + 8);
  v21 = v32;
  v20(v19, v32);
  v20(v5, v21);
  v20(v8, v21);
  v20(v11, v21);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v33);
  swift_deallocClassInstance();
  v22 = v35;
  sub_18BC1EE28();
  v20(v34, v21);
  v20(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510);
  v23 = swift_allocObject();
  v24 = *(v36 + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount);
  v25 = MEMORY[0x1E69E6530];
  *(v23 + 16) = xmmword_18BC3E410;
  v26 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = v25;
  *(v23 + 64) = v26;
  *(v23 + 32) = v24;
  sub_18BC20BA8();

  v27 = sub_18BC20B98();

  v28 = v37;
  [v37 setText_];

  v29 = sub_18BC20B98();
  [v28 setAccessibilityIdentifier_];
}

id sub_18BA66EB0()
{
  v2.receiver = v0;
  v2.super_class = _s27SelectionCountIndicatorViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BA66F28()
{
  result = qword_1EA9D72F0;
  if (!qword_1EA9D72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D72F0);
  }

  return result;
}

unint64_t sub_18BA66F80()
{
  result = qword_1EA9D72F8;
  if (!qword_1EA9D72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D72F8);
  }

  return result;
}

unint64_t sub_18BA66FD8()
{
  result = qword_1EA9D7300;
  if (!qword_1EA9D7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7300);
  }

  return result;
}

unint64_t sub_18BA6702C()
{
  result = qword_1EA9D7308;
  if (!qword_1EA9D7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7308);
  }

  return result;
}

uint64_t sub_18BA67120()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F8028);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F8028);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8E8();
  sub_18BC20B58();
  sub_18BC20B48();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v16, v15);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

unint64_t sub_18BA675FC()
{
  result = qword_1EA9D7310;
  if (!qword_1EA9D7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7310);
  }

  return result;
}

unint64_t sub_18BA67650()
{
  result = qword_1EA9D7318;
  if (!qword_1EA9D7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7318);
  }

  return result;
}

uint64_t sub_18BA676E8(uint64_t a1)
{
  v2 = sub_18BA67C48();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

unint64_t sub_18BA67738()
{
  result = qword_1EA9D7330;
  if (!qword_1EA9D7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7330);
  }

  return result;
}

unint64_t sub_18BA67790()
{
  result = qword_1EA9D7338;
  if (!qword_1EA9D7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7338);
  }

  return result;
}

uint64_t sub_18BA677E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_18BC1E8D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_18BC1E398();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_18BC1E3A8();
}

uint64_t sub_18BA67A94(uint64_t a1)
{
  v2 = sub_18BA67738();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BA67AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18B9EC2C0;

  return (sub_18BA6BD80)(a2, a3);
}

unint64_t sub_18BA67B9C()
{
  result = qword_1EA9D7340;
  if (!qword_1EA9D7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7340);
  }

  return result;
}

unint64_t sub_18BA67BF4()
{
  result = qword_1EA9D7348;
  if (!qword_1EA9D7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7348);
  }

  return result;
}

unint64_t sub_18BA67C48()
{
  result = qword_1EA9D7350;
  if (!qword_1EA9D7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7350);
  }

  return result;
}

uint64_t sub_18BA67C9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BA6B7C0(a1);
}

uint64_t sub_18BA67D44(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_18BC20F28();
  v1[4] = sub_18BC20F18();

  return MEMORY[0x1EEE6DFA0](sub_18BA67DC0, 0, 0);
}

uint64_t sub_18BA67DC0()
{
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18BA67E84;

  return sub_18BB98D88();
}

uint64_t sub_18BA67E84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_18BC20ED8();
    v7 = v6;
    v8 = sub_18BA6C344;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_18BC20ED8();
    v7 = v9;
    v8 = sub_18BA6C318;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

unint64_t sub_18BA68008()
{
  result = qword_1EA9D7358;
  if (!qword_1EA9D7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7358);
  }

  return result;
}

unint64_t sub_18BA68060()
{
  result = qword_1EA9D7360;
  if (!qword_1EA9D7360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D69F0);
    sub_18BA3F7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7360);
  }

  return result;
}

uint64_t sub_18BA680E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BA6702C();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_18BA68198(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_18BC20F28();
  v1[4] = sub_18BC20F18();

  return MEMORY[0x1EEE6DFA0](sub_18BA68214, 0, 0);
}

uint64_t sub_18BA68214()
{
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18BA682D8;

  return sub_18BB98D88();
}

uint64_t sub_18BA682D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_18BC20ED8();
    v7 = v6;
    v8 = sub_18BA684C8;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_18BC20ED8();
    v7 = v9;
    v8 = sub_18BA68458;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_18BA68458()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_18BA684C8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_18BA68534()
{
  result = qword_1EA9D7368;
  if (!qword_1EA9D7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7368);
  }

  return result;
}

uint64_t sub_18BA685D8()
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
  __swift_allocate_value_buffer(v6, qword_1EA9F8040);
  __swift_project_value_buffer(v6, qword_1EA9F8040);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA687C8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_18BC20F28();
  v2[10] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BA68860, v4, v3);
}

uint64_t sub_18BA68860()
{
  v1 = [objc_opt_self() sharedApplication];
  v0[7] = &unk_1F0032BB8;
  v0[13] = v1;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    if (v0[6])
    {
      v4 = sub_18BC20B98();
    }

    else
    {
      v4 = 0;
    }

    v10 = [v3 createNewTabGroupWithTitle_];

    v11 = sub_18BC20BD8();
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
    v14 = swift_allocObject();
    v0[14] = v14;
    *(v14 + 16) = xmmword_18BC3E410;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_18BA68AF0;

    return sub_18BA6B7C0(v14);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v5 = sub_18BC1DE48();
    v6 = __swift_project_value_buffer(v5, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_18BA68AF0(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_18BA68DC4;
  }

  else
  {

    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_18BA68C0C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_18BA68C0C()
{
  v1 = v0[16];

  if (*(v1 + 16) == 1)
  {
    v2 = v0[16];
    v3 = v0[13];
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[6];
    sub_18BC1E3F8();
    sub_18BC1E1A8();

    v0[2] = v5;
    v0[3] = v4;
    v0[4] = v6;
    sub_18BA3F7A8();
    sub_18BC1DF88();

    v7 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v8 = v0[13];
    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_18BA68DC4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BA68E70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BA687C8(a1, v4);
}

uint64_t sub_18BA68F10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA6A59C();
  *a1 = result;
  return result;
}

id sub_18BA68F38(void *a1)
{
  result = [a1 areCustomTabGroupsEnabled];
  if (!result)
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

unint64_t sub_18BA6901C()
{
  result = qword_1EA9D7380;
  if (!qword_1EA9D7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7380);
  }

  return result;
}

uint64_t sub_18BA69070()
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
  __swift_allocate_value_buffer(v6, qword_1EA9F8058);
  __swift_project_value_buffer(v6, qword_1EA9F8058);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA69268(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_18BC20F28();
  v2[8] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA69300, v4, v3);
}

uint64_t sub_18BA69300()
{

  v1 = [objc_opt_self() sharedApplication];
  *(v0 + 40) = &unk_1F0032BB8;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();

    v4 = sub_18BC20B98();

    [v3 openSyncedTabGroupWithUUID_];

    sub_18BC1DF98();
    v5 = *(v0 + 8);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v6 = sub_18BC1DE48();
    v7 = __swift_project_value_buffer(v6, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    swift_willThrow();
    v5 = *(v0 + 8);
  }

  return v5();
}

__n128 sub_18BA694C4@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18BA69508()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E0B8();
}

void (*sub_18BA69570(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C650;
}

uint64_t sub_18BA69654(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return sub_18BA69268(a1, v4);
}

uint64_t sub_18BA696F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA6AAF4();
  *a1 = result;
  return result;
}

uint64_t sub_18BA6971C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA697B4, v4, v3);
}

uint64_t sub_18BA697B4()
{
  v1 = v0[3];

  v2 = [v1 currentScene];
  v3 = v0[2];
  if (v2)
  {
    *v3 = v2;
    v4 = *MEMORY[0x1E6985C00];
  }

  else
  {
    v4 = *MEMORY[0x1E6985BF8];
  }

  v5 = sub_18BC1F048();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = v0[1];

  return v6();
}

unint64_t sub_18BA69898()
{
  result = qword_1EA9D7398;
  if (!qword_1EA9D7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7398);
  }

  return result;
}

uint64_t sub_18BA698EC()
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
  __swift_allocate_value_buffer(v6, qword_1EA9F8070);
  __swift_project_value_buffer(v6, qword_1EA9F8070);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA69AE0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_18BC20F28();
  v2[7] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BA69B78, v4, v3);
}

uint64_t sub_18BA69B78()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 safari_isSafariFamilyApplicationBundle];

  if (v2)
  {

    v3 = [objc_opt_self() sharedApplication];
    v0[3] = &unk_1F0032BB8;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      sub_18BC1E0A8();
      v6 = v0[4];
      v7 = *(v6 + 16);
      if (v7)
      {
        v33 = v3;
        v34 = v0;
        v36 = MEMORY[0x1E69E7CC0];
        sub_18B7B7A54(0, v7, 0);
        v8 = 0;
        v9 = *(v36 + 16);
        v10 = 16 * v9;
        do
        {
          v11 = *(v6 + v8 + 32);
          v12 = *(v6 + v8 + 40);
          v13 = *(v36 + 24);
          sub_18BC1E3F8();
          if (v9 >= v13 >> 1)
          {
            sub_18B7B7A54((v13 > 1), v9 + 1, 1);
          }

          *(v36 + 16) = v9 + 1;
          v14 = v36 + v10;
          *(v14 + 32) = v11;
          *(v14 + 40) = v12;
          v10 += 16;
          v8 += 24;
          ++v9;
          --v7;
        }

        while (v7);

        v3 = v33;
        v0 = v34;
      }

      else
      {
      }

      v32 = sub_18BC20D88();

      [v5 deleteTabGroupsWithUUIDs_];

      sub_18BC1DF98();
      v29 = v0[1];
    }

    else
    {

      if (qword_1EA9D2550 != -1)
      {
        swift_once();
      }

      v26 = sub_18BC1DE48();
      v27 = __swift_project_value_buffer(v26, qword_1EA9F8578);
      sub_18B9A33F8();
      swift_allocError();
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      swift_willThrow();
      v29 = v0[1];
    }

    return v29();
  }

  else
  {
    if (qword_1EA9D24D8 != -1)
    {
      swift_once();
    }

    sub_18BC1E0A8();
    v15 = v0[2];
    v16 = *(v15 + 16);
    if (v16)
    {
      v35 = v0;
      v37 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v16, 0);
      v17 = 0;
      v18 = v37;
      v19 = *(v37 + 16);
      v20 = 16 * v19;
      do
      {
        v21 = v15;
        v23 = *(v15 + v17 + 32);
        v22 = *(v15 + v17 + 40);
        v24 = *(v37 + 24);
        sub_18BC1E3F8();
        if (v19 >= v24 >> 1)
        {
          sub_18B7B7A54((v24 > 1), v19 + 1, 1);
        }

        *(v37 + 16) = v19 + 1;
        v25 = v37 + v20;
        *(v25 + 32) = v23;
        *(v25 + 40) = v22;
        v20 += 16;
        v17 += 24;
        ++v19;
        --v16;
        v15 = v21;
      }

      while (v16);

      v0 = v35;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v0[10] = v18;
    v30 = swift_task_alloc();
    v0[11] = v30;
    *v30 = v0;
    v30[1] = sub_18BA69FEC;

    return SiriLinkDataSource.deleteTabGroups(uuids:)(v18);
  }
}

uint64_t sub_18BA69FEC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_18BA6A130, v3, v2);
}

uint64_t sub_18BA6A130()
{

  sub_18BC1DF98();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_18BA6A1DC()
{
  result = qword_1EA9D73A0;
  if (!qword_1EA9D73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D73A0);
  }

  return result;
}

unint64_t sub_18BA6A234()
{
  result = qword_1EA9D73A8;
  if (!qword_1EA9D73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D73A8);
  }

  return result;
}

uint64_t sub_18BA6A348@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_18BA6A3F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BA69AE0(a1, v4);
}

uint64_t sub_18BA6A490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA6B018();
  *a1 = result;
  return result;
}

uint64_t sub_18BA6A4B8(uint64_t a1)
{
  v2 = sub_18BA3F600();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18BA6A544(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8() & 1;
  }
}

uint64_t sub_18BA6A59C()
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438);
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

uint64_t sub_18BA6AAF4()
{
  v0 = sub_18BC1E488();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v25 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v21[0] = sub_18BC1E8D8();
  v14 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7428);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v22;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v21[0]);
  v18 = sub_18BC1DF68();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v23, 1, 1, v18);
  v19(v24, 1, 1, v18);
  (*(v26 + 104))(v25, *MEMORY[0x1E695A4F8], v27);
  sub_18BA67C48();
  return sub_18BC1E118();
}

uint64_t sub_18BA6B018()
{
  v0 = sub_18BC1E488();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v25 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v21[0] = sub_18BC1E8D8();
  v14 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D73C0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v22;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v21[0]);
  v28 = 0;
  v18 = sub_18BC1DF68();
  v19 = *(*(v18 - 8) + 56);
  v19(v23, 1, 1, v18);
  v19(v24, 1, 1, v18);
  (*(v26 + 104))(v25, *MEMORY[0x1E695A4F8], v27);
  sub_18BA67C48();
  return sub_18BC1E118();
}
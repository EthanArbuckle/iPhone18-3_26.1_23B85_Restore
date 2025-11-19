uint64_t sub_18B7E6550()
{
  result = _s7ContentVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_18B7E6600(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18B7D6884(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18BC21B58();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_18B7E670C()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v62);

  sub_18B7DFD58(v62);
  if ((v62[18] & 1) == 0)
  {
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v63);

    sub_18B7DFD58(v63);
    if ((v63[20] & 1) == 0)
    {
      v4 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem);
      if (v4)
      {
        [v4 setTitleView_];
      }
    }
  }

  v5 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v64);

  sub_18B7DFD58(v64);
  if ((v64[20] & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
    *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView) = 0;
  }

  v7 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v65);

  sub_18B7DFD58(v65);
  if ((v65[18] & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView) = 0;
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v66);

  sub_18B7DFD58(v66);
  if (v66[19] & 1) == 0 || (v66[25])
  {
    v10 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem);
    if (v10)
    {
      [v10 setSearchController_];
    }

    v11 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController);
    *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController) = 0;
  }

  if (*(*(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion) + 24) <= 0)
  {
    v12 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v67);

    sub_18B7DFD58(v67);
    if ((v67[16] & 1) == 0 || (v67[0] & 1) == 0 || (v67[23] & 1) == 0)
    {
      v13 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator;
      [*(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator) removeFromSuperview];
      v14 = *(v1 + v13);
      *(v1 + v13) = 0;
    }

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v68);

    sub_18B7DFD58(v68);
    if ((v68[17] & 1) == 0)
    {
      v16 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar;
      v17 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
      if (v17)
      {
        [v17 removeFromSuperview];
        v18 = *(v1 + v16);
      }

      else
      {
        v18 = 0;
      }

      *(v1 + v16) = 0;
    }

    v19 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v69);

    sub_18B7DFD58(v69);
    if ((v69[16] & 1) == 0)
    {
      v20 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView;
      v21 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
      if (v21)
      {
        v22 = *&v21[qword_1ED651610];
        *&v21[qword_1ED651610] = 0;
        v23 = v21;
        sub_18B7E475C(v22);

        v24 = *(v1 + v20);
        if (v24)
        {
          [v24 removeFromSuperview];
          v21 = *(v1 + v20);
        }

        else
        {
          v21 = 0;
        }
      }

      *(v1 + v20) = 0;
    }

    v25 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v70);

    sub_18B7DFD58(v70);
    if ((v70[19] & 1) == 0)
    {
      v26 = sub_18B7DEE8C();
      v27 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem;
      v28 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem);
      v29 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v30 = sub_18B7E6D20(&v26[v29], v28);
      v31 = *(*&v26[v29] + 16);
      if (v31 < v30)
      {
        __break(1u);
        goto LABEL_61;
      }

      sub_18B7E6F18(v30, v31);
      swift_endAccess();

      v32 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar;
      v33 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar);
      if (v33)
      {
        [v33 removeFromSuperview];
        v34 = *(v1 + v32);
      }

      else
      {
        v34 = 0;
      }

      *(v1 + v32) = 0;

      v35 = *(v1 + v27);
      *(v1 + v27) = 0;

      v36 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarToHUDConstraint;
      v37 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarToHUDConstraint);
      if (v37)
      {
        [v37 setActive_];
        v38 = *(v1 + v36);
      }

      else
      {
        v38 = 0;
      }

      *(v1 + v36) = 0;
    }

    v39 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v71);

    sub_18B7DFD58(v71);
    if ((v71[21] & 1) == 0)
    {
      v40 = OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView;
      v41 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView);
      if (v41)
      {
        [v41 removeFromSuperview];
        v42 = *(v1 + v40);
      }

      else
      {
        v42 = 0;
      }

      *(v1 + v40) = 0;

      v43 = OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton;
      v44 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton);
      if (v44)
      {
        [v44 removeFromSuperview];
        v45 = *(v1 + v43);
      }

      else
      {
        v45 = 0;
      }

      *(v1 + v43) = 0;
    }

    v46 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v72);

    sub_18B7DFD58(v72);
    if (v72[23])
    {
      goto LABEL_53;
    }

    v47 = sub_18B7DEE8C();
    v48 = OBJC_IVAR___SFTabOverviewDisplayItem_toolbar;
    v49 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar);
    v50 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v51 = sub_18B7E6D20(&v47[v50], v49);
    v52 = *(*&v47[v50] + 16);
    if (v52 >= v51)
    {
      sub_18B7E6F18(v51, v52);
      swift_endAccess();

      v53 = *(v1 + v48);
      if (v53)
      {
        [v53 removeFromSuperview];
        v54 = *(v1 + v48);
      }

      else
      {
        v54 = 0;
      }

      *(v1 + v48) = 0;

LABEL_53:
      v55 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v73);

      sub_18B7DFD58(v73);
      if ((v73[23] & 1) == 0)
      {
        v56 = swift_unknownObjectUnownedLoadStrong();
        sub_18B7C9B24(v74);

        sub_18B7DFD58(v74);
        if ((v74[16] & 1) == 0)
        {
          v57 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
          if (v57)
          {
            [v57 setHidden_];
          }
        }
      }

      v58 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v75);

      sub_18B7DFD58(v75);
      if ((v75[59] & 1) == 0)
      {
        v59 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem);
        *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem) = 0;

        v60 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar);
        *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar) = 0;

        v61 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem);
        *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem) = 0;
      }

      return;
    }

LABEL_61:
    __break(1u);
  }
}

uint64_t sub_18B7E6D20(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_18B7E94F8(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 16 * result;
    while (v8 < v9)
    {
      v23 = v7;
      v21 = v11;
      v22 = v4;
      v13 = v4 + v11;
      v14 = *(v13 + 56);
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 16);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v14);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (a2 && v17 == a2)
      {
        v7 = v23;
        v12 = v21;
        v4 = v22;
      }

      else
      {
        if (v8 == v23)
        {
          v12 = v21;
          v4 = v22;
        }

        else
        {
          v4 = v22;
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v23 >= *v10)
          {
            goto LABEL_25;
          }

          if (v8 >= *v10)
          {
            goto LABEL_26;
          }

          v20 = *(v13 + 48);
          v18 = *&v22[2 * v23 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_18BAE37C4(v22);
          }

          v12 = v21;
          *(v4 + 16 * v23 + 32) = v20;
          result = swift_unknownObjectRelease();
          if (v8 >= *(v4 + 16))
          {
            goto LABEL_27;
          }

          *(v4 + v21 + 48) = v18;
          result = swift_unknownObjectRelease();
          *a1 = v4;
        }

        v7 = v23 + 1;
      }

      ++v8;
      v10 = (v4 + 16);
      v9 = *(v4 + 16);
      v11 = v12 + 16;
      if (v8 == v9)
      {
        return v7;
      }
    }

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

  __break(1u);
  return result;
}

uint64_t sub_18B7E6F48(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_18B7E7020(uint64_t a1)
{
  sub_18B7D6B4C();
  v2 = a1 + OBJC_IVAR___SFTabOverviewDisplayItem_state;
  v3 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 16);
  [*(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView) setAlpha_];
  sub_18B7C9974();
  v5 = v4;
  v6 = *&v4[qword_1EA9F7FF8 + 112];
  v12[6] = *&v4[qword_1EA9F7FF8 + 96];
  v12[7] = v6;
  v12[8] = *&v4[qword_1EA9F7FF8 + 128];
  v13 = *&v4[qword_1EA9F7FF8 + 144];
  v7 = *&v4[qword_1EA9F7FF8 + 48];
  v12[2] = *&v4[qword_1EA9F7FF8 + 32];
  v12[3] = v7;
  v8 = *&v4[qword_1EA9F7FF8 + 80];
  v12[4] = *&v4[qword_1EA9F7FF8 + 64];
  v12[5] = v8;
  v9 = *&v4[qword_1EA9F7FF8 + 16];
  v12[0] = *&v4[qword_1EA9F7FF8];
  v12[1] = v9;
  *&v4[qword_1EA9F7FF8 + 72] = v3;
  sub_18B7CBBC4(v12);

  sub_18B7D6C5C();
  v10 = *(v2 + 16) > 0.0;
  v11 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets);
  *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets) = v10;
  if (v10 != v11)
  {
    sub_18B9E0F90();
  }
}

uint64_t sub_18B7E711C(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v43 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v43 - v4;
  v5 = _s4PageVMa_0();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D50);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - v10;
  v53 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D58);
    v11 = sub_18BC21D88();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v12 = v53 + 64;
  v13 = 1 << *(v53 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v53 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v11 + 64;
  sub_18BC1E1A8();
  result = sub_18BC1E3F8();
  v19 = 0;
  v48 = v7;
  v44 = v11;
  v20 = v51;
  while (v15)
  {
LABEL_15:
    v23 = __clz(__rbit64(v15)) | (v19 << 6);
    v24 = v53;
    v25 = *(v53 + 48);
    v54 = *(v49 + 72);
    v26 = v45;
    sub_18B82D0A4(v25 + v54 * v23, v45, _s4PageVMa_0);
    v27 = *(v24 + 56);
    v29 = v46;
    v28 = v47;
    v30 = *(v47 + 48);
    v55 = *(v27 + 16 * v23);
    *(v26 + v30) = v55;
    sub_18B7CF39C(v26, v29, &qword_1EA9D6D50);
    v31 = *(v28 + 48);
    v32 = *(v52 + 48);
    sub_18B82FD54(v29, v20, _s4PageVMa_0);
    v56 = *(v29 + v31);
    v33 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D68);
    swift_dynamicCast();
    v34 = v50;
    sub_18B82FD54(v20, v50, _s4PageVMa_0);
    v55 = *(v20 + v32);
    v35 = v48;
    sub_18B82FD54(v34, v48, _s4PageVMa_0);
    v11 = v44;
    sub_18BC22158();
    sub_18BC1EC08();
    sub_18B7CC1E8(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
    sub_18BC20A78();
    result = sub_18BC221A8();
    v36 = -1 << *(v11 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v36) >> 6;
      while (++v38 != v40 || (v39 & 1) == 0)
      {
        v41 = v38 == v40;
        if (v38 == v40)
        {
          v38 = 0;
        }

        v39 |= v41;
        v42 = *(v17 + 8 * v38);
        if (v42 != -1)
        {
          v21 = __clz(__rbit64(~v42)) + (v38 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v21 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v15 &= v15 - 1;
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    result = sub_18B82FD54(v35, *(v11 + 48) + v21 * v54, _s4PageVMa_0);
    *(*(v11 + 56) + 16 * v21) = v55;
    ++*(v11 + 16);
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v22);
    ++v19;
    if (v15)
    {
      v19 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18B7E768C()
{
  result = sub_18BC1EC08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s7ContentVMa_1()
{
  result = qword_1EA9D8848;
  if (!qword_1EA9D8848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7E7754()
{
  sub_18B7E7838(319, &qword_1EA9D8858, _s4ItemVMa_1, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_18B7E7838(319, qword_1ED651F98, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B7E7838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18B7E789C()
{
  v1 = &v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content];
  swift_beginAccess();
  v2 = *(v1 + 3);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
    sub_18BA83DD4(v0, *v3);
  }

  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = sub_18B7EB080;
  v7[4] = v5;
  v16 = sub_18B7D80AC;
  v17 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B7B0DB0;
  v15 = &block_descriptor_24;
  v8 = _Block_copy(&aBlock);
  v9 = v0;
  sub_18BC1E1A8();

  v16 = CGRectMake;
  v17 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B8043A0;
  v15 = &block_descriptor_17;
  v10 = _Block_copy(&aBlock);

  [v6 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v10);
  _Block_release(v8);
}

uint64_t sub_18B7E7A9C()
{

  return swift_deallocObject();
}

uint64_t sub_18B7E7AD4()
{

  return swift_deallocObject();
}

void sub_18B7E7C78()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B7E97CC();
    if (v1 <= 0x3F)
    {
      sub_18B7BFE80(319, &qword_1ED652608);
      if (v2 <= 0x3F)
      {
        sub_18B7BFE80(319, qword_1ED652610);
        if (v3 <= 0x3F)
        {
          sub_18B7BFE80(319, &qword_1ED6522C0);
          if (v4 <= 0x3F)
          {
            sub_18B7BFECC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18B7E7DC4()
{
  result = qword_1ED6514F0;
  if (!qword_1ED6514F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6514F0);
  }

  return result;
}

uint64_t sub_18B7E7E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7E7E58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B7E7EA0()
{
  if (!qword_1EA9D93E8)
  {
    _s4ItemVMa();
    sub_18B7E7E58(&unk_1EA9D9270, _s4ItemVMa);
    v0 = sub_18BC210E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D93E8);
    }
  }
}

void sub_18B7E7F34()
{
  if (!qword_1ED6522C0)
  {
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6522C0);
    }
  }
}

uint64_t sub_18B7E7F98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = _s14ScrollPositionOMa();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_18B7E8134()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F36 = v2 ^ 1;
}

uint64_t sub_18B7E81EC()
{
  sub_18B7E0A10(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_18B7E822C()
{
  v1 = _s6LayoutVMa();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v45[-v5];
  v7 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
  if (!v7)
  {
    return;
  }

  v8 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  swift_beginAccess();
  sub_18B7DF568(v0 + v8, v6, _s6LayoutVMa);
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  v12 = v6[3];
  v13 = v7;
  v46.origin.x = v9;
  v46.origin.y = v10;
  v46.size.width = v11;
  v46.size.height = v12;
  MaxY = CGRectGetMaxY(v46);
  v15 = *(v6 + 72);
  if ((v15 & v6[7]) != 0)
  {
    v16 = 54.0;
  }

  else
  {
    v16 = 44.0;
  }

  v17 = v16;
  if (*(v6 + 79) == 1)
  {
    v17 = v6[24] + v6[16] + v16;
  }

  v18 = v6[29];
  v19 = MaxY - (v18 + v17);
  if (*(v6 + 272) == 1)
  {
    if ((*(v6 + 57) & 1) != 0 || v15 != 1)
    {
      goto LABEL_12;
    }
  }

  else if ((v15 & 1) == 0)
  {
LABEL_12:
    v20 = v16;
    if (*(v6 + 79))
    {
      v20 = v16 + v6[16] + v6[24];
    }

    v19 = v19 + v18 + v20;
  }

  v47.origin.x = v9;
  v47.origin.y = v10;
  v47.size.width = v11;
  v47.size.height = v12;
  Width = CGRectGetWidth(v47);
  sub_18B7DFF04(v6, _s6LayoutVMa);
  v22 = sub_18B7E8610();
  [v22 presentationValue];
  v24 = v23;

  v48.origin.x = 0.0;
  v48.origin.y = v19;
  v48.size.width = Width;
  v48.size.height = v16;
  v49 = CGRectOffset(v48, 0.0, v24);
  [v13 setFrame_];
  sub_18B7DF568(v0 + v8, v4, _s6LayoutVMa);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v26 = [Strong view];

  if (v26)
  {
    v27 = [v26 effectiveUserInterfaceLayoutDirection];

    v28 = v27 == 1;
    if (v4[9] & v4[7])
    {
      v29 = 0.3;
    }

    else
    {
      v29 = 0.4;
    }

    v30 = v4[25];
    v31 = CGRectGetWidth(*v4) - (v4[28] + v4[30]);
    UIEdgeInsetsMakeWithEdges();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v29 * v31;
    if (v30 > v29 * v31)
    {
      v40 = v30;
    }

    v41 = round((v31 - v40 + -16.0) * 0.5);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    v42 = &v13[qword_1ED651600];
    swift_beginAccess();
    v43 = MEMORY[0x1E69DDCE0];
    *v42 = 0x4046000000000000;
    v44 = *v43;
    *(v42 + 24) = v43[1];
    *(v42 + 8) = v44;
    *(v42 + 5) = 0x3FD999999999999ALL;
    v42[48] = v28;
    *(v42 + 7) = 0x4020000000000000;
    *(v42 + 8) = v33;
    *(v42 + 9) = v35;
    *(v42 + 10) = v37;
    *(v42 + 11) = v39;
    *(v42 + 12) = 0x4046000000000000;
    *(v42 + 13) = v41;
    [v13 setNeedsLayout];
    [v13 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

void sub_18B7E8638(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    while (v8 < *(a2 + 16))
    {
      sub_18B80DF38(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v6);
      v9 = v6[*(v3 + 32)];
      sub_18B813CBC(v6);
      if (v9)
      {
        v10 = *(a2 + 16);
        if (v10 >= 2 && v10 - 1 == v8)
        {
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_18B7E8788(__int16 a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 1);
  v14 = a1 & 1;
  *v10 = a1 & 1;
  v10[1] = HIBYTE(a1) & 1;
  *(v10 + 1) = a2;
  if (v11 == (a1 & 1))
  {
    v15 = a1 & 0x100;
    v16 = (v15 != 0) ^ v12;
    sub_18BC1E3F8();
    if ((v16 & 1) == 0 && (sub_18B7E8B40(a2, v13) & 1) != 0 && !*a3)
    {
      LOBYTE(v71[0]) = v14;
      BYTE1(v71[0]) = BYTE1(v15);
      *(&v71[0] + 1) = a2;
      v21 = *((*v9 & *v4) + 0x1C0);
      sub_18BC1E3F8();
      v22 = v4;
      v21(v70, v71);

      v23 = v70[0];
      v24 = *((*v9 & *v22) + 0x68);
      swift_beginAccess();
      v25 = *(v22 + v24);
      *(v22 + v24) = v23;

      v27 = sub_18B7C2E68(v26);
      [v27 adjustedContentInset];
      v68 = v29;
      v69 = v28;
      v66 = v31;
      v67 = v30;
      [v27 bounds];
      v64 = v33;
      v65 = v32;
      v62 = v35;
      v63 = v34;
      sub_18B7E0E4C();
      v60 = v37;
      v61 = v36;
      v39 = v38;
      v41 = v40;
      [v27 contentSize];
      v43 = v42;
      v45 = v44;
      [v27 frame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      LOBYTE(v21) = [v27 isTracking];

      v54 = sub_18B7D292C();
      v55 = &v54[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState];
      *v55 = v69;
      *(v55 + 1) = v68;
      *(v55 + 2) = v67;
      *(v55 + 3) = v66;
      *(v55 + 4) = v65;
      *(v55 + 5) = v64;
      *(v55 + 6) = v63;
      *(v55 + 7) = v62;
      *(v55 + 8) = v61;
      *(v55 + 9) = v60;
      *(v55 + 10) = v39;
      *(v55 + 11) = v41;
      *(v55 + 12) = v43;
      *(v55 + 13) = v45;
      *(v55 + 14) = v47;
      *(v55 + 15) = v49;
      *(v55 + 16) = v51;
      *(v55 + 17) = v53;
      v55[144] = v21;
      v72 = v21;
      v71[1] = *(v55 + 1);
      v71[5] = *(v55 + 5);
      v71[4] = *(v55 + 4);
      v71[3] = *(v55 + 3);
      v71[2] = *(v55 + 2);
      v71[8] = *(v55 + 8);
      v71[7] = *(v55 + 7);
      v71[6] = *(v55 + 6);
      v71[0] = *v55;
      v56 = &v54[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
      swift_beginAccess();
      v57 = *(v56 + 24);
      v58 = *(v56 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      (*(v58 + 72))(v71, v57, v58);
      swift_endAccess();
      v59 = *(v22 + v24);
      *(v22 + v24) = v54;

      [v22 setNeedsLayout];
    }
  }

  else
  {
    sub_18BC1E3F8();
  }

  v17 = *v10;
  v18 = *(v10 + 1);
  if (v10[1])
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  sub_18BC1E3F8();
  sub_18B81A588(v19 | v17, v18, a3, a4, 0);
}

uint64_t sub_18B7E8B40(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_18B85B5A0(v13, v10, _s4ItemVMa_0);
      sub_18B85B5A0(v14, v6, _s4ItemVMa_0);
      if (*v10 != *v6 || v10[1] != v6[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = v4[7];
      v17 = *&v10[v16];
      v18 = *&v6[v16];
      if (v17)
      {
        if (!v18)
        {
          break;
        }

        sub_18B7B0AC0(0, &qword_1ED6514F0);
        v19 = v18;
        v20 = v17;
        v21 = sub_18BC215C8();

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      if (v10[v4[8]] != v6[v4[8]] || v10[v4[9]] != v6[v4[9]])
      {
        break;
      }

      v22 = v4[10];
      v23 = &v10[v22];
      v24 = *&v10[v22 + 8];
      v25 = &v6[v22];
      v26 = *(v25 + 1);
      if (v24)
      {
        if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_18BC21FD8() & 1) == 0)
        {
          break;
        }

        sub_18B85B700(v6, _s4ItemVMa_0);
        sub_18B85B700(v10, _s4ItemVMa_0);
      }

      else
      {
        sub_18B85B700(v6, _s4ItemVMa_0);
        sub_18B85B700(v10, _s4ItemVMa_0);
        if (v26)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    sub_18B85B700(v6, _s4ItemVMa_0);
    sub_18B85B700(v10, _s4ItemVMa_0);
  }

  return 0;
}

char *sub_18B7E8E4C@<X0>(unsigned __int8 *a1@<X0>, char **a2@<X8>)
{
  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  result = sub_18B7E3DCC(v3 | *a1, *(a1 + 1));
  *a2 = result;
  return result;
}

id sub_18B7E8E90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectUnownedLoadStrong();
  v9 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  [a2 contentOffset];
  v11 = (*(v9 + 32))(ObjectType, v9);
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = swift_getObjectType();
  (*(a5 + 24))(v14, a5, v11, v13);

  return [a3 setContentOffset_];
}

void sub_18B7E8FD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_18B7E47F0();
  v6 = OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar;
  v7 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar);
  *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar) = v5;
  v8 = v5;

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  v10 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem);
  *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem) = v9;

  sub_18B7B0AC0(0, &unk_1EA9D35A0);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_18B9EB464;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9D63E4;
  aBlock[3] = &block_descriptor_476;
  v13 = _Block_copy(aBlock);

  v14 = [v11 safari:v13 menuWithUncachedChildrenProvider:?];
  _Block_release(v13);
  v15 = sub_18BC21278();
  v16 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem);
  *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem) = v15;

  sub_18B7CFD08(v4);
  v17 = _s4PageVMa();
  if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
  {
    sub_18B988BAC(v4, &qword_1EA9D52E0);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = &v4[*(v17 + 64)];
    v18 = *v22;
    v19 = *(v22 + 1);
    v20 = *(v22 + 2);
    v21 = *(v22 + 3);
    sub_18B82B844(*v22, v19, v20, v21);
    sub_18B7DFF04(v4, _s4PageVMa);
  }

  v23 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton);
  v24 = v23;
  sub_18B9E9BD4(v23, v18, v19, v20, v21);

  v25 = *(v1 + v6);
  v26 = v25;
  sub_18B9E9BD4(v25, v18, v19, v20, v21);

  sub_18B9E0460(v18, v19, v20, v21);
  sub_18B7E9C58(v18, v19, v20, v21);
}

BOOL sub_18B7E9340(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v3);
  v4 = sub_18BC221A8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_18B7E940C(uint64_t result)
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

  result = sub_18BBA6C30(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

uint64_t sub_18B7E94F8(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v5 = *i;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (a2)
    {
      if (v8 == a2)
      {
        break;
      }
    }

    if (v10 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t _s4ItemVMa_1()
{
  result = qword_1EA9DA110;
  if (!qword_1EA9DA110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7E96A0()
{
  if (!qword_1ED6511A0)
  {
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6511A0);
    }
  }
}

uint64_t sub_18B7E96F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18B7E9778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B7E97CC()
{
  if (!qword_1ED651E38[0])
  {
    sub_18B7E7DC4();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, qword_1ED651E38);
    }
  }
}

void sub_18B7E9824()
{
  if (!qword_1EA9D6320)
  {
    _s4PageVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6328);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA9D6320);
    }
  }
}

uint64_t sub_18B7E98A4()
{
  result = sub_18BC21848();
  if (v1 <= 0x3F)
  {
    result = sub_18BC21848();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18B7E99B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_18B7E9A74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_18BC21D88();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v14, v10, a2);
      result = sub_18BB8B29C(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = _s4ItemVMa();
      result = sub_18B80D3BC(v10, v19 + *(*(v20 - 8) + 72) * v18, _s4ItemVMa);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

void sub_18B7E9C58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

unint64_t sub_18B7E9CAC(uint64_t a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 24) + 16) || (result = sub_18B7C9044(3u), (v4 & 1) == 0))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) init];
    swift_beginAccess();
    sub_18B7E49B4(v5, 3);
    result = swift_endAccess();
  }

  v6 = *(v1 + 24);
  if (*(v6 + 16))
  {
    result = sub_18B7C9044(3u);
    if (v7)
    {
      v8 = *(*(v6 + 56) + 8 * result);
      if (*(a1 + 32))
      {
        v9 = *(a1 + 8);
      }

      else
      {
        v9 = 0;
      }

      return [v8 setCustomView_];
    }
  }

  return result;
}

uint64_t sub_18B7E9D94()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4 + 16;
  v6 = _s4PageVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v17);

  sub_18B7DFD58(v17);
  if (v17[19] & 1) == 0 || (v17[20])
  {
    goto LABEL_3;
  }

  if (sub_18B7D43BC())
  {
    return 2;
  }

  sub_18B7CFD08(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_18B988BAC(v5, &qword_1EA9D52E0);
  }

  else
  {
    sub_18B81F940(v5, v9, _s4PageVMa);
    if (v9[*(v6 + 40)] == 1)
    {
      sub_18B7DFF04(v9, _s4PageVMa);
      return 2;
    }

    v15 = v9[*(v6 + 48)];
    sub_18B7DFF04(v9, _s4PageVMa);
    if (v15)
    {
      return 2;
    }
  }

LABEL_3:
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v11 + v12, v2, _s7ContentVMa);

  v13 = v2[2];
  sub_18B7DFF04(v2, _s7ContentVMa);
  return v13;
}

uint64_t sub_18B7EA06C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB6044C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18B9CC774();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18BB63ECC();
  }

  v8 = *v3;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v4);
  result = sub_18BC221A8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B7EA1E4(uint64_t a1)
{
  v3 = qword_1EA9D6BA0;
  swift_beginAccess();
  sub_18B7E0DF0(v1 + v3, &v9);
  if (v9 == *a1 && BYTE8(v9) == *(a1 + 8) && sub_18B868A60(&v10, a1 + 16) && v12 == *(a1 + 160) && v13 == *(a1 + 161))
  {
    return sub_18B7D4D24(&v9);
  }

  result = sub_18B7D4D24(&v9);
  *(v1 + qword_1EA9D6BB8) = 257;
  if (*(*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0)) + 24) <= 0)
  {
    v5 = sub_18B7CC308();
    v6 = *(v5 + 184);
    v7 = *(v5 + 192);
    sub_18BC1E3F8();

    v8 = sub_18B7E0A7C(v6, v7);

    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_18B7D4D78(v8, &v9);

    return sub_18B988BAC(&v9, &unk_1EA9D5060);
  }

  return result;
}

void sub_18B7EA358()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v39);

    sub_18B7DFD58(v39);
    if (v39[19] & 1) != 0 && (v39[0])
    {
      v6 = &OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v7 = *(v1 + *v6);
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v8 = v7;
    v9 = sub_18BC215C8();

    if (v9)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_8:
    v10 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v40);

    sub_18B7DFD58(v40);
    if (v40[19] & 1) != 0 && (v40[0])
    {
      v11 = &OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
    }

    else
    {
      v11 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    }

    [*(v1 + *v11) addSubview_];
    goto LABEL_13;
  }

LABEL_14:
  v12 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v14 = [v13 superview];
  v15 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v41);

  sub_18B7DFD58(v41);
  if ((v41[0] & 1) != 0 && (v41[1] & 1) == 0)
  {
    v16 = &OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    if (!v14)
    {
LABEL_21:
      v20 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v42);

      sub_18B7DFD58(v42);
      if ((v42[0] & 1) != 0 && (v42[1] & 1) == 0)
      {
        v21 = &OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
      }

      else
      {
        v21 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
      }

      [*(v1 + *v21) addSubview_];
      goto LABEL_26;
    }
  }

  v17 = *(v1 + *v16);
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v18 = v17;
  v19 = sub_18BC215C8();

  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:

LABEL_27:
  v38 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
  v22 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v43);

  sub_18B7DFD58(v43);
  v23 = &OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
  if (v43[1])
  {
    v23 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
  }

  v24 = *(v1 + *v23);
  v25 = sub_18B7D5524();
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_18BC219A8();
    if (!v27)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_42;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x18CFFD010](i, v26);
    }

    else
    {
      v29 = *(v26 + 8 * i + 32);
    }

    v30 = v29;
    v31 = [v29 superview];
    if (!v31 || (v32 = v31, sub_18B7B0AC0(0, &qword_1EA9D46F0), v33 = v24, v34 = sub_18BC215C8(), v32, v33, (v34 & 1) == 0))
    {
      [v24 addSubview_];
    }
  }

LABEL_42:

  if (v12)
  {
    v35 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v44);

    sub_18B7DFD58(v44);
    if ((v44[0] & 1) != 0 && (v44[1] & 1) == 0)
    {
      v36 = &OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
    }

    else
    {
      v36 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    }

    v37 = *(v1 + *v36);
    [v37 sendSubviewToBack_];
  }
}

void sub_18B7EA7D4(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_18B7EA850(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_18BC1E3F8();
  v6 = sub_18B7E6600(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18B7B193C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_18B7EA91C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16))
  {
    sub_18BC1E3F8();
    v3 = sub_18B7C4104(0xD000000000000017, 0x800000018BC60750);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      sub_18BC1E1A8();

      swift_beginAccess();
      v6 = *(v5 + 32);
      sub_18BC1E3F8();

      v7 = sub_18B7E711C(v6);

      return v7;
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

void sub_18B7EAA64(void (*a1)(void), void *a2, uint64_t (*a3)(), void *a4, unint64_t a5)
{
  if (!(a5 >> 62))
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a1;
    v16[4] = a2;
    v29 = sub_18B7E767C;
    v30 = v16;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B7B0DB0;
    v28 = &block_descriptor_73_0;
    v13 = _Block_copy(&v25);
    sub_18B7D8090(a5);
    sub_18BC1E1A8();

    v29 = a3;
    v30 = a4;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B8043A0;
    v28 = &block_descriptor_76_1;
    v14 = _Block_copy(&v25);
    sub_18BC1E1A8();

    [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
    goto LABEL_5;
  }

  if (a5 >> 62 == 1)
  {
    v10 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = a1;
    v12[4] = a2;
    v29 = sub_18B7E767C;
    v30 = v12;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B7B0DB0;
    v28 = &block_descriptor_63;
    v13 = _Block_copy(&v25);
    sub_18B7D8090(a5);
    sub_18BC1E1A8();

    v29 = a3;
    v30 = a4;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B8043A0;
    v28 = &block_descriptor_66_0;
    v14 = _Block_copy(&v25);
    sub_18BC1E1A8();

    [v11 _animateUsingSpringBehavior_tracking_animations_completion_];
LABEL_5:
    _Block_release(v14);
    _Block_release(v13);
    return;
  }

  if (a5 == 0x8000000000000000)
  {
    v17 = objc_opt_self();
    v29 = a1;
    v30 = a2;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B7B0DB0;
    v28 = &block_descriptor_53_3;
    v18 = _Block_copy(&v25);
    sub_18BC1E1A8();

    v29 = a3;
    v30 = a4;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_18B8043A0;
    v28 = &block_descriptor_56_1;
    v19 = _Block_copy(&v25);
    sub_18BC1E1A8();

    [v17 _animateByRetargetingAnimations_completion_];
    _Block_release(v19);
    _Block_release(v18);
    return;
  }

  if (a5 == 0x8000000000000008)
  {
    a1();
LABEL_11:
    (a3)(1, 0);
    return;
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_18B9D53AC;
  *(v22 + 24) = v21;
  v29 = sub_18B9D53B0;
  v30 = v22;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_18B7E3BF4;
  v28 = &block_descriptor_50;
  v23 = _Block_copy(&v25);
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v20 performWithoutAnimation_];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

id sub_18B7EAFF0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content;
  swift_beginAccess();
  sub_18B7E96F8(a1 + v2, v5);
  LODWORD(v2) = v6 != 0;
  result = sub_18B988BAC(v5, &qword_1EA9D5338);
  v4 = *(a1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible) = v2;
  if (v2 != v4)
  {
    return sub_18BA842C4();
  }

  return result;
}

uint64_t sub_18B7EB088(uint64_t a1)
{
  v3 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  swift_beginAccess();
  sub_18B7DF568(v1 + v12, v11, _s6LayoutVMa);
  sub_18B7E1B60(v8);
  if (!sub_18B7EB3A0(v11, v8))
  {
    sub_18B7DF568(v8, v5, _s6LayoutVMa);
    swift_beginAccess();
    sub_18B7D0024(v5, v1 + v12);
    swift_endAccess();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = sub_18B83BD5C;
    v15[4] = v13;
    v25 = sub_18B7E767C;
    v26 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18B7B0DB0;
    v24 = &block_descriptor_529;
    v16 = _Block_copy(&aBlock);
    v17 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    v25 = CGRectMake;
    v26 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18B8043A0;
    v24 = &block_descriptor_532;
    v18 = _Block_copy(&aBlock);

    [v14 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v18);
    _Block_release(v16);
  }

  sub_18B7DFF04(v8, _s6LayoutVMa);
  return sub_18B7DFF04(v11, _s6LayoutVMa);
}

BOOL sub_18B7EB3A0(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6330);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    result = 0;
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      v15 = *(a1 + 72);
      v33[0] = *(a1 + 56);
      v33[1] = v15;
      v34[0] = *(a1 + 88);
      *(v34 + 14) = *(a1 + 102);
      v16 = *(a2 + 72);
      v35[0] = *(a2 + 56);
      v35[1] = v16;
      v36[0] = *(a2 + 88);
      *(v36 + 14) = *(a2 + 102);
      if ((sub_18B7EB864(v33, v35) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 118) != *(a2 + 118))
      {
        return 0;
      }

      v17 = *(a1 + 136);
      v18 = *(a1 + 168);
      v31[2] = *(a1 + 152);
      v31[3] = v18;
      v19 = *(a1 + 184);
      v31[0] = *(a1 + 120);
      v31[1] = v17;
      v20 = *(a2 + 136);
      v21 = *(a2 + 168);
      v32[2] = *(a2 + 152);
      v32[3] = v21;
      v32[4] = *(a2 + 184);
      v22 = *(a2 + 120);
      v32[1] = v20;
      v31[4] = v19;
      v32[0] = v22;
      if (!sub_18B7EBA3C(v31, v32) || *(a1 + 200) != *(a2 + 200) || *(a1 + 208) != *(a2 + 208) || *(a1 + 209) != *(a2 + 209))
      {
        return 0;
      }

      result = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 216), *(a2 + 216)), vceqq_f64(*(a1 + 232), *(a2 + 232))))) & 1) != 0 && *(a1 + 248) == *(a2 + 248) && ((*(a1 + 256) ^ *(a2 + 256)) & 1) == 0 && ((*(a1 + 257) ^ *(a2 + 257)) & 1) == 0 && *(a1 + 264) == *(a2 + 264) && ((*(a1 + 272) ^ *(a2 + 272)) & 1) == 0 && *(a1 + 280) == *(a2 + 280))
      {
        v30 = _s6LayoutVMa();
        v23 = v30[15];
        v24 = *(v11 + 48);
        sub_18B7CA054(a1 + v23, v13, &qword_1EA9D52E0);
        v25 = a2 + v23;
        v26 = v24;
        sub_18B7CA054(v25, &v13[v24], &qword_1EA9D52E0);
        v27 = *(v5 + 48);
        if (v27(v13, 1, v4) == 1)
        {
          if (v27(&v13[v26], 1, v4) == 1)
          {
            sub_18B988BAC(v13, &qword_1EA9D52E0);
LABEL_27:
            if (*(a1 + v30[16]) == *(a2 + v30[16]) && *(a1 + v30[17]) == *(a2 + v30[17]))
            {
              return *(a1 + v30[18]) == *(a2 + v30[18]);
            }

            return 0;
          }
        }

        else
        {
          sub_18B7CA054(v13, v10, &qword_1EA9D52E0);
          if (v27(&v13[v26], 1, v4) != 1)
          {
            sub_18BA033C4(&v13[v26], v7);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18BA03428(v7);
            sub_18BA03428(v10);
            sub_18B988BAC(v13, &qword_1EA9D52E0);
            if (updated)
            {
              goto LABEL_27;
            }

            return 0;
          }

          sub_18BA03428(v10);
        }

        sub_18B988BAC(v13, &qword_1EA9D6330);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18B7EB864(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  if ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_13:
    if ((a1[16] ^ a2[16]) & 1) != 0 || ((a1[17] ^ a2[17]) & 1) != 0 || ((a1[18] ^ a2[18]) & 1) != 0 || ((a1[19] ^ a2[19]) & 1) != 0 || ((a1[20] ^ a2[20]) & 1) != 0 || ((a1[21] ^ a2[21]) & 1) != 0 || ((a1[22] ^ a2[22]) & 1) != 0 || ((a1[23] ^ a2[23]) & 1) != 0 || ((a1[24] ^ a2[24]) & 1) != 0 || ((a1[25] ^ a2[25]) & 1) != 0 || ((a1[26] ^ a2[26]))
    {
      return 0;
    }
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  v9 = 0;
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6))
  {
    return v9 & 1;
  }

  if ((a1[56] ^ a2[56]) & 1) != 0 || ((a1[57] ^ a2[57]) & 1) != 0 || ((a1[58] ^ a2[58]) & 1) != 0 || ((a1[59] ^ a2[59]) & 1) != 0 || ((a1[60] ^ a2[60]))
  {
    return 0;
  }

  v9 = a1[61] ^ a2[61] ^ 1;
  return v9 & 1;
}

unint64_t sub_18B7EBAE8(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

void sub_18B7EBB04()
{
  v1 = v0;
  v2 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  if (sub_18B7EBCA4())
  {

    sub_18B7ED1D8();
  }

  else
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF500(Strong + v7, v4, _s7ContentVMa);

    LOBYTE(Strong) = v4[2];
    sub_18B7DFEA4(v4, _s7ContentVMa);
    *(v5 + qword_1EA9F8518) = (Strong & 1) == 0;
    if (Strong)
    {
      v8 = sub_18B7C37F4();
      if ([v8 isEnabled])
      {
        [v8 setEnabled_];
        [v8 setEnabled_];
      }
    }

    *(v1 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate) = 1;
  }
}

BOOL sub_18B7EBCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_18B7EBEFC();
  v8 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  sub_18B7CA054(v7 + v8, v6, &qword_1EA9D9260);
  v9 = _s15PanGestureStateVMa(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_18B988BAC(v6, &qword_1EA9D9260);
    v10 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
    swift_beginAccess();
    sub_18B7CA054(v7 + v10, v3, &qword_1EA9D4520);

    v11 = _s17PinchGestureStateVMa(0);
    v12 = (*(*(v11 - 8) + 48))(v3, 1, v11);
    sub_18B988BAC(v3, &qword_1EA9D4520);
    if (v12 == 1)
    {
      return *(*(v0 + qword_1EA9DBD98) + 24) < 1;
    }
  }

  else
  {

    sub_18B988BAC(v6, &qword_1EA9D9260);
  }

  return 0;
}

uint64_t sub_18B7EBEFC()
{
  v1 = _s7ContentVMa_4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5);
  }

  else
  {
    sub_18B7C2414(v3);
    (*((*v4 & *v0) + 0x1C0))(&v9, v3);
    sub_18B7ED178(v3, _s7ContentVMa_4);
    v6 = v9;
    *(v0 + v5) = v9;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v6;
}

uint64_t sub_18B7EC03C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18B7EC064(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18B7EC064(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  v45 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v44 = &v43 - v7;
  v9 = _s7ContentVMa_4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7EC6E4(a1, v11, _s7ContentVMa_4);
  v12 = *(v1 + qword_1EA9F8568 + 16);
  v51 = *(v1 + qword_1EA9F8568);
  v52 = v12;
  v13 = *(v1 + qword_1EA9F8568 + 48);
  v53 = *(v1 + qword_1EA9F8568 + 32);
  v54 = v13;
  v14 = *(v1 + qword_1EA9F8568 + 64);
  v15 = *(v1 + qword_1EA9F8568 + 72);
  v50 = *(v1 + qword_1EA9F8568 + 128);
  v16 = *(v1 + qword_1EA9F8568 + 112);
  v48 = *(v1 + qword_1EA9F8568 + 96);
  v49 = v16;
  v47 = *(v1 + qword_1EA9F8568 + 80);
  v17 = *(v1 + qword_1EA9F8568 + 136);
  v18 = *(v1 + qword_1EA9F8568 + 144);
  v19 = _s15PanGestureStateVMa(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  v21 = _s17PinchGestureStateVMa(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v5, 1, 1, v21);
  _s6LayoutCMa_3();
  v23 = swift_allocObject();
  v20((v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState), 1, 1, v19);
  v22((v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState), 1, 1, v21);
  v24 = v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v24 + 40) = 2;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem) = 0;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_heightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem) = 0x3FF0000000000000;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture) = 0;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = 0;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes) = &unk_1EFF1A090;
  v25 = v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v26 = *MEMORY[0x1E69DDCE0];
  v27 = *(MEMORY[0x1E69DDCE0] + 8);
  v28 = *(MEMORY[0x1E69DDCE0] + 16);
  v29 = *(MEMORY[0x1E69DDCE0] + 24);
  *v25 = *MEMORY[0x1E69DDCE0];
  *(v25 + 8) = v27;
  *(v25 + 16) = v28;
  *(v25 + 24) = v29;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = v26;
  *(v25 + 72) = v27;
  *(v25 + 80) = v28;
  *(v25 + 88) = v29;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 144) = 0;
  sub_18B7EC6E4(v11, v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
  v30 = v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v31 = v52;
  *v30 = v51;
  *(v30 + 16) = v31;
  v32 = v54;
  *(v30 + 32) = v53;
  *(v30 + 48) = v32;
  *(v30 + 64) = v14;
  *(v30 + 72) = v15;
  v33 = v48;
  *(v30 + 80) = v47;
  *(v30 + 96) = v33;
  *(v30 + 112) = v49;
  *(v30 + 128) = v50;
  *(v30 + 136) = v17;
  *(v30 + 144) = v18;
  v34 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v35 = v44;
  sub_18B7EC8D0(v44, v23 + v34, &qword_1EA9D9260);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  v37 = v45;
  sub_18B7EC8D0(v45, v23 + v36, &qword_1EA9D4520);
  swift_endAccess();
  v38 = *(*v11 + 16);
  type metadata accessor for Deck();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 17) = v46[0];
  *(v39 + 20) = *(v46 + 3);
  *(v39 + 24) = v38;
  *(v39 + 32) = v14;
  *(v39 + 40) = v15;
  v40 = MEMORY[0x1E69DC5C0];
  *(v39 + 48) = 0xD000000000000014;
  *(v39 + 56) = 0x800000018BC60730;
  v41 = v40[1];
  *(v39 + 64) = *v40;
  *(v39 + 80) = v41;
  *(v39 + 96) = v17;
  *(v39 + 104) = 0x3FE999999999999ALL;
  *(v23 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck) = v39;
  sub_18B7ECADC();
  sub_18B988BAC(v37, &qword_1EA9D4520);
  sub_18B988BAC(v35, &qword_1EA9D9260);
  sub_18B7ED118(v11, _s7ContentVMa_4);
  return v23;
}

uint64_t sub_18B7EC5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7EC614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7EC67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7EC6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7EC760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s4ItemVMa_4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

_BYTE *sub_18B7EC830(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = _s4ItemVMa_4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 52)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B7EC8D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7EC94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4ItemVMa_4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18B7ECA30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = _s4ItemVMa_4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 52)];

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18B7ECADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v55 - v2;
  v4 = _s17PinchGestureStateVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7CA054(v0 + v8, v3, &qword_1EA9D4520);
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    return sub_18B988BAC(v3, &qword_1EA9D4520);
  }

  sub_18B9F309C(v3, v7, _s17PinchGestureStateVMa);
  v11 = (v7 + *(v4 + 56));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v59.origin.x = *v11;
  v59.origin.y = v13;
  v59.size.width = v14;
  v59.size.height = v15;
  Width = CGRectGetWidth(v59);
  v17 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck;
  v18 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck);
  v19 = *(v18 + 32);
  v20 = Width / v19;
  v21 = (COERCE_UNSIGNED_INT64(Width / v19) >> 52) & 0x7FF;
  if (v21 && v21 != 2047)
  {
    if (*v7 == 1)
    {
      *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = v19 / *(v18 + 40) / (v14 / v15);
      v34 = v11[4] / v20;
      if (*(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 80) < v34)
      {
        v34 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 80);
      }
    }

    else
    {
      *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetHeightPercentageForPinchingItem) = 0x3FF0000000000000;
      v34 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 80);
    }

    *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetCornerRadiusForPinchingItem) = v34;
    if (*(v7 + 64) == 1)
    {
      v35 = v7[7];
      v36 = _SFUninterpolate(v35, v20, 1.0);
      if (v36 <= 0.0)
      {
        v36 = 0.0;
      }

      if (v36 <= 1.0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1.0;
      }

      v38 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 48);
      v39 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 56);
      v40 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 64);
      v41 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 72);
      v60.origin.x = v38;
      v60.origin.y = v39;
      v60.size.width = v40;
      v60.size.height = v41;
      MidX = CGRectGetMidX(v60);
      v61.origin.x = v38;
      v61.origin.y = v39;
      v61.size.width = v40;
      v61.size.height = v41;
      v43 = CGRectGetMidY(v61) - v7[6] + v35 * v7[10];
      v45 = v7[1];
      v44 = v7[2];
      v46 = _SFInterpolate(0.0, MidX - v7[5] + v35 * v7[9], v37);
      v47 = _SFInterpolate(0.0, v43, v37);
      v48 = sub_18B9F0328();
      v50 = v49;
      if (!v9(v49, 1, v4))
      {
        v51 = vabdd_f64(v35, v7[4]) * 5.0;
        if (v51 <= 0.0)
        {
          v51 = 0.0;
        }

        if (v51 <= 1.0)
        {
          v52 = v51;
        }

        else
        {
          v52 = 1.0;
        }

        v53 = _SFInterpolate(v45, v46, v52);
        v54 = _SFInterpolate(v44, v47, v52);
        v50[1] = v53;
        v50[2] = v54;
      }

      (v48)(&v55, 0);
    }
  }

  else
  {
    if (qword_1EA9D22A0 != -1)
    {
      swift_once();
    }

    v22 = sub_18BC1F2C8();
    __swift_project_value_buffer(v22, qword_1EA9F7E98);
    sub_18BC1E1A8();
    v23 = v0;
    v24 = sub_18BC1F2A8();
    v25 = sub_18BC21238();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v58 = v27;
      *v26 = 136315394;
      *&v55 = v12;
      *(&v55 + 1) = v13;
      v56 = v14;
      v57 = v15;
      type metadata accessor for CGRect(0);
      v28 = sub_18BC20BF8();
      v30 = sub_18B7EA850(v28, v29, &v58);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v55 = *(*(v23 + v17) + 32);
      type metadata accessor for CGSize(0);
      v31 = sub_18BC20BF8();
      v33 = sub_18B7EA850(v31, v32, &v58);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_18B7AC000, v24, v25, "QuickTabSwitcher is attempting pinch gesture with invalid target frame or item size: %s, %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v27, -1, -1);
      MEMORY[0x18CFFEEE0](v26, -1, -1);
    }
  }

  return sub_18B7ED0B8(v7, _s17PinchGestureStateVMa);
}

uint64_t sub_18B7ED058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7ED0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7ED118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7ED178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7ED1D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v5;
  v49 = _s4PageVMa();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7ContentVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = _s4ItemVMa();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
  v51 = v1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF500(Strong + v27, v13, _s7ContentVMa);

  sub_18B7CA054(&v13[*(v8 + 48)], v18, &qword_1EA9D7CD0);
  sub_18B7DFEA4(v13, _s7ContentVMa);
  v50 = v23;
  v28 = *(v23 + 48);
  v29 = v28(v18, 1, v22);
  v45 = v25;
  if (v29 == 1)
  {
    v30 = swift_unknownObjectUnownedLoadStrong();
    v31 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF500(v30 + v31, v10, _s7ContentVMa);

    sub_18B7ED914(v21);
    sub_18B7DFEA4(v10, _s7ContentVMa);
    if (v28(v18, 1, v22) != 1)
    {
      sub_18B988BAC(v18, &qword_1EA9D7CD0);
    }
  }

  else
  {
    sub_18B99B254(v18, v21, _s4ItemVMa);
    (*(v50 + 56))(v21, 0, 1, v22);
  }

  if (v28(v21, 1, v22) == 1)
  {
    return sub_18B988BAC(v21, &qword_1EA9D7CD0);
  }

  v33 = v46;
  sub_18B99B254(v21, v46, _s4ItemVMa);
  v34 = swift_unknownObjectUnownedLoadStrong();
  v35 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF500(v34 + v35, v10, _s7ContentVMa);

  v36 = v48;
  sub_18BB15074(v33, v48);
  sub_18B7DFEA4(v10, _s7ContentVMa);
  v37 = v47;
  v38 = v49;
  if ((*(v47 + 48))(v36, 1, v49) == 1)
  {
    sub_18B7DFEA4(v33, _s4ItemVMa);
    return sub_18B988BAC(v36, &qword_1EA9D52E0);
  }

  else
  {
    v39 = v43;
    sub_18B99B254(v36, v43, _s4PageVMa);
    v40 = v44;
    sub_18B7DF500(v39, v44, _s4PageVMa);
    (*(v37 + 56))(v40, 0, 1, v38);
    v41 = v42;
    sub_18B7DF500(v33, v42, _s4ItemVMa);
    (*(v50 + 56))(v41, 0, 1, v22);
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    sub_18B999AB0(v40, v41, v52);
    sub_18B988BAC(v52, &unk_1EA9D5060);
    sub_18B988BAC(v41, &qword_1EA9D7CD0);
    sub_18B988BAC(v40, &qword_1EA9D52E0);
    sub_18B7DFEA4(v39, _s4PageVMa);
    return sub_18B7DFEA4(v33, _s4ItemVMa);
  }
}

uint64_t sub_18B7ED914@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v3 + 16) && (v4 = _s4PageVMa(), v5 = *(v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(v4 + 68)), *(v5 + 16)))
  {
    v6 = _s7SectionVMa_0();
    v7 = *(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(v6 + 28));
    v8 = *(v7 + 16);
    v9 = _s4ItemVMa();
    v10 = *(v9 - 8);
    if (v8)
    {
      v17 = *(v9 - 8);
      sub_18BB17BA0(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1, _s4ItemVMa);
      v11 = *(v17 + 56);
      v12 = a1;
      v13 = 0;
    }

    else
    {
      v11 = *(v10 + 56);
      v12 = a1;
      v13 = 1;
    }

    v15 = v9;
  }

  else
  {
    v14 = _s4ItemVMa();
    v11 = *(*(v14 - 8) + 56);
    v15 = v14;
    v12 = a1;
    v13 = 1;
  }

  return v11(v12, v13, 1, v15);
}

uint64_t sub_18B7EDAC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E3E0;
  *(v1 + 32) = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion);
  sub_18BC1E1A8();
  v2 = sub_18B7D6E1C();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_12:
    sub_18B7EDE10(v10);
    return v1;
  }

  v4 = sub_18BC219A8();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_18BC21B98();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18CFFD010](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      (*((*v7 & *v8) + 0x130))();

      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
    }

    while (v4 != v6);

    v10 = v11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B7EDC84()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem____lazy_storage___defaultVisibilityAssertion;
  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem____lazy_storage___defaultVisibilityAssertion))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem____lazy_storage___defaultVisibilityAssertion);
  }

  else
  {
    type metadata accessor for Assertion();
    v2 = swift_allocObject();
    *(v2 + 16) = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = 0;
    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t sub_18B7EDD18(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_18BC219A8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_18BC219A8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_18B7EDE28(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18B7EDE28(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_18BC219A8();
LABEL_9:
  result = sub_18BC21B28();
  *v1 = result;
  return result;
}

uint64_t sub_18B7EDEC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18BC219A8();
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
      result = sub_18BC219A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_18BA03484(&qword_1EA9D5860, &qword_1EA9D5858);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5858);
            v9 = sub_18BA03200(v13, i, a3);
            v11 = *v10;
            sub_18BC1E1A8();
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
        type metadata accessor for Assertion();
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

unint64_t sub_18B7EE058()
{
  result = sub_18B7EDAC4();
  v1 = result;
  if (result >> 62)
  {
    result = sub_18BC219A8();
    v2 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x18CFFD010](v3, v1);
    }

    else
    {
      v4 = *(v1 + 8 * v3 + 32);
      sub_18BC1E1A8();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18BB10568;
    *(v6 + 24) = v5;
    swift_beginAccess();
    v7 = *(v4 + 16);
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_18B7C358C(0, v7[2] + 1, 1, v7);
      *(v4 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_18B7C358C((v9 > 1), v10 + 1, 1, v7);
    }

    ++v3;
    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_18B7FCC4C;
    v11[5] = v6;
    *(v4 + 16) = v7;
    swift_endAccess();
  }

  while (v2 != v3);
LABEL_15:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC41E60;
  v13 = v29;
  v14 = sub_18B7C07CC();
  v15 = *&v14[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v16 = *(v15 + qword_1EA9F8558);
  sub_18BC1E1A8();

  *(inited + 32) = v16;
  *(inited + 40) = *(v29 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion);
  if ((inited & 0xC000000000000001) != 0)
  {
    sub_18BC1E1A8();
    v16 = MEMORY[0x18CFFD010](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_18BC1E1A8();
    sub_18BC1E1A8();
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_18BB10570;
  *(v18 + 24) = v17;
  swift_beginAccess();
  v19 = *(v16 + 16);
  swift_retain_n();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v19;
  if ((v20 & 1) == 0)
  {
    v19 = sub_18B7C358C(0, v19[2] + 1, 1, v19);
    *(v16 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_18B7C358C((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = sub_18BB116C4;
  v23[5] = v18;
  *(v16 + 16) = v19;
  swift_endAccess();

  if ((inited & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x18CFFD010](1, inited);
    goto LABEL_26;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v16 = *(inited + 40);
  sub_18BC1E1A8();
LABEL_26:

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_18BB11754;
  *(v13 + 24) = v24;
  swift_beginAccess();
  v15 = *(v16 + 16);
  swift_retain_n();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v15;
  if ((v25 & 1) == 0)
  {
LABEL_32:
    v15 = sub_18B7C358C(0, v15[2] + 1, 1, v15);
    *(v16 + 16) = v15;
  }

  v27 = v15[2];
  v26 = v15[3];
  if (v27 >= v26 >> 1)
  {
    v15 = sub_18B7C358C((v26 > 1), v27 + 1, 1, v15);
  }

  v15[2] = v27 + 1;
  v28 = &v15[2 * v27];
  v28[4] = sub_18BB116C4;
  v28[5] = v13;
  *(v16 + 16) = v15;
  swift_endAccess();
}

void sub_18B7EE56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E3F0;
  v2 = [*(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView) centerXAnchor];
  v3 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_hud);
  v4 = [v3 centerXAnchor];
  v5 = [v2 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v3 topAnchor];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = [Strong view];

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = [v8 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 40) = v11;
  v12 = [v3 topAnchor];
  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = [v13 view];

  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = objc_opt_self();
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 topAnchor];
  v18 = [v12 constraintEqualToAnchor:v17 constant:2.0];

  LODWORD(v19) = 1132068864;
  [v18 setPriority_];
  *(v1 + 48) = v18;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v20 = sub_18BC20D88();

  [v15 activateConstraints_];
}

id SFTabSwitcherConfiguration.init()()
{
  v1 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedCapsuleViewProvider);
  *v1 = sub_18B8390A8;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedContentViewProvider);
  *v2 = sub_18B8390A8;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_canAddItemPredicate);
  *v3 = sub_18B7E9C50;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_canHandleDropSession);
  *v4 = sub_18B7E9C50;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_canShowTips);
  *v5 = sub_18B814EE4;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_didScrollToPageObserver);
  *v6 = CGRectMake;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_dismissHandler);
  *v7 = CGRectMake;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_dragItemProvider);
  *v8 = sub_18B9A926C;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_dropDestinationProvider);
  *v9 = j__objc_retain_x1;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_dropHandler);
  *v10 = CGRectMake;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_dropOperationProvider);
  *v11 = sub_18B8390A8;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemAddHandler);
  *v12 = CGRectMake;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemCloseHandler);
  *v13 = CGRectMake;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemCopyHandler);
  *v14 = CGRectMake;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemDuplicateHandler);
  *v15 = CGRectMake;
  v15[1] = 0;
  v16 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemMoveHandler);
  *v16 = CGRectMake;
  v16[1] = 0;
  v17 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemPinHandler);
  *v17 = CGRectMake;
  v17[1] = 0;
  v18 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_itemSelectionHandler);
  *v18 = CGRectMake;
  v18[1] = 0;
  v19 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_pageInsertionHandler);
  *v19 = CGRectMake;
  v19[1] = 0;
  v20 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_pageRetitleHandler);
  *v20 = CGRectMake;
  v20[1] = 0;
  v21 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_pageTitleMenuProvider);
  *v21 = sub_18B9A926C;
  v21[1] = 0;
  v22 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_profileMenuProvider);
  *v22 = sub_18B8390A8;
  v22[1] = 0;
  v23 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_recentlyClosedMenuProvider);
  *v23 = sub_18B8390A8;
  v23[1] = 0;
  v24 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_reducedMotionTransitionObserver);
  *v24 = CGRectMake;
  v24[1] = 0;
  v25 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedCapsuleView);
  *v25 = CGRectMake;
  v25[1] = 0;
  v26 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedContentView);
  *v26 = CGRectMake;
  v26[1] = 0;
  v27 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_showPagePickerSheet);
  *v27 = CGRectMake;
  v27[1] = 0;
  v28 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_steadyStateObserver);
  *v28 = CGRectMake;
  v28[1] = 0;
  v29 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_tabOverviewVisibilityObserver);
  *v29 = CGRectMake;
  v29[1] = 0;
  v30 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_toggleSidebarHandler);
  *v30 = CGRectMake;
  v30[1] = 0;
  v31 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_validateDismissal);
  *v31 = sub_18B7E9C50;
  v31[1] = 0;
  v32 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_visibilityObserver);
  *v32 = CGRectMake;
  v32[1] = 0;
  v33 = (v0 + OBJC_IVAR___SFTabSwitcherConfiguration_willScrollToPageObserver);
  *v33 = CGRectMake;
  v33[1] = 0;
  v35.super_class = SFTabSwitcherConfiguration;
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t sub_18B7EECEC(uint64_t a1, int a2, void *aBlock, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (a1 + *a5);
  *v11 = a6;
  v11[1] = v10;
}

uint64_t sub_18B7EED94()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B7EF2B0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabSwitcher_wrapped);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
  *v5 = sub_18BA93838;
  v5[1] = v4;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewProvider);
  *v8 = sub_18BA93840;
  v8[1] = v7;
  v9 = v6;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canAddItemPredicate);
  *v11 = sub_18B839274;
  v11[1] = v10;
  v12 = v9;

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canHandleDropSession);
  *v14 = sub_18BA93848;
  v14[1] = v13;
  v15 = v12;

  v16 = [v15 canShowTips];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canShowTips);
  *v18 = sub_18BA93D64;
  v18[1] = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_didScrollToPageObserver);
  *v20 = sub_18BA938A4;
  v20[1] = v19;
  v21 = v15;

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler);
  *v23 = sub_18BA938C8;
  v23[1] = v22;
  v24 = v21;

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dragItemProvider);
  *v26 = sub_18BA938EC;
  v26[1] = v25;
  v27 = v24;

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropDestinationProvider);
  *v29 = sub_18BA938F4;
  v29[1] = v28;
  v30 = v27;

  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropHandler);
  *v32 = sub_18BA938FC;
  v32[1] = v31;
  v33 = v30;

  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v35 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropOperationProvider);
  *v35 = sub_18BA93904;
  v35[1] = v34;
  v36 = v33;

  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v38 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemAddHandler);
  *v38 = sub_18BA9390C;
  v38[1] = v37;
  v39 = v36;

  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler);
  *v41 = sub_18BA93930;
  v41[1] = v40;
  v42 = v39;

  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v44 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCopyHandler);
  *v44 = sub_18BA93938;
  v44[1] = v43;
  v45 = v42;

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemDuplicateHandler);
  *v47 = sub_18BA9395C;
  v47[1] = v46;
  v48 = v45;

  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  v50 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemMoveHandler);
  *v50 = sub_18BA93980;
  v50[1] = v49;
  v51 = v48;

  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v53 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler);
  *v53 = sub_18BA93988;
  v53[1] = v52;
  v54 = v51;

  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  v56 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler);
  *v56 = sub_18BA93990;
  v56[1] = v55;
  v57 = v54;

  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  v59 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler);
  *v59 = sub_18BA93998;
  v59[1] = v58;
  v60 = v57;

  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  v62 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageRetitleHandler);
  *v62 = sub_18BA939BC;
  v62[1] = v61;
  v63 = v60;

  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  v65 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider);
  *v65 = sub_18BA939C4;
  v65[1] = v64;
  v66 = v63;

  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  v68 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_profileMenuProvider);
  *v68 = sub_18BA939CC;
  v68[1] = v67;
  v69 = v66;

  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  v71 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_recentlyClosedMenuProvider);
  *v71 = sub_18BA939D4;
  v71[1] = v70;
  v72 = v69;

  v73 = [v72 reducedMotionTransitionObserver];
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  v75 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionObserver);
  *v75 = sub_18BA939DC;
  v75[1] = v74;

  v76 = [v72 relinquishBorrowedCapsuleView];
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  v78 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedCapsuleView);
  *v78 = sub_18B83729C;
  v78[1] = v77;

  v79 = swift_allocObject();
  *(v79 + 16) = v72;
  v80 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedContentViewRegistration);
  *v80 = sub_18BA939E4;
  v80[1] = v79;
  v81 = v72;

  v82 = [v81 showPagePickerSheet];
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  v84 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_showPagePickerSheet);
  *v84 = sub_18BA939EC;
  v84[1] = v83;

  v85 = [v81 steadyStateObserver];
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  v87 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_steadyStateObserver);
  *v87 = sub_18BA93E00;
  v87[1] = v86;

  v88 = [v81 tabOverviewVisibilityObserver];
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  v90 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabOverviewVisibilityObserver);
  v91 = *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabOverviewVisibilityObserver);
  *v90 = sub_18BA93E00;
  v90[1] = v89;
  sub_18B7B171C(v91);
  v92 = [v81 toggleSidebarHandler];
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  v94 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_toggleSidebarHandler);
  *v94 = sub_18BA2A69C;
  v94[1] = v93;

  v95 = swift_allocObject();
  *(v95 + 16) = v81;
  v96 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_validateDismissal);
  *v96 = sub_18BA939F4;
  v96[1] = v95;
  v97 = v81;

  v98 = [v97 visibilityObserver];
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  v100 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityObserver);
  *v100 = sub_18BA93E00;
  v100[1] = v99;

  v101 = swift_allocObject();
  *(v101 + 16) = v97;
  v102 = (v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_willScrollToPageObserver);
  *v102 = sub_18BA93A1C;
  v102[1] = v101;
  v103 = v97;
}

uint64_t sub_18B7EFDDC()
{

  return swift_deallocObject();
}

void sub_18B7F0170()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CapsuleTabGroupView();
  objc_msgSendSuper2(&v5, sel_updateConstraints);
  if (v0[OBJC_IVAR___SFCapsuleTabGroupView_configuration + 8] == 1 && !*&v0[OBJC_IVAR___SFCapsuleTabGroupView_configuration])
  {
    sub_18B7F03B4();
    v1 = 1;
  }

  else
  {
    sub_18B7F0294();
    v1 = 0;
  }

  v2 = objc_opt_self();
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v3 = sub_18BC20D88();

  [v2 deactivateConstraints_];

  if (v1)
  {
    sub_18B7F0294();
  }

  else
  {
    sub_18B7F03B4();
  }

  v4 = sub_18BC20D88();

  [v2 activateConstraints_];
}

uint64_t sub_18B7F0294()
{
  v1 = OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___constraintsForDisclosureIndicatorWithoutImage;
  if (*&v0[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___constraintsForDisclosureIndicatorWithoutImage])
  {
    v2 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___constraintsForDisclosureIndicatorWithoutImage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC3E3E0;
    v3 = [*&v0[OBJC_IVAR___SFCapsuleTabGroupView_titleLabel] centerXAnchor];
    v4 = [v0 centerXAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:-2.0];

    LODWORD(v6) = 1144750080;
    [v5 setPriority_];
    *(v2 + 32) = v5;
    *&v0[v1] = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18B7F03B4()
{
  v1 = OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___defaultConstraints;
  if (*&v0[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___defaultConstraints])
  {
    v2 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___defaultConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC3E3E0;
    v3 = [*&v0[OBJC_IVAR___SFCapsuleTabGroupView_stackView] centerXAnchor];
    v4 = [v0 centerXAnchor];
    v5 = [v3 constraintEqualToAnchor_];

    LODWORD(v6) = 1144750080;
    [v5 setPriority_];
    *(v2 + 32) = v5;
    *&v0[v1] = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

unint64_t sub_18B7F0518()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TabSwitcher(0);
  objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  result = sub_18B7D6E1C();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsInitialLayout] = 0;
    return result;
  }

  result = sub_18BC219A8();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18CFFD010](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      (*((*v6 & *v7) + 0xE8))();
    }

    while (v4 != v5);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_18B7F063C()
{
  v1 = v0;
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
  if (v5)
  {
    v6 = v5;
    v7 = sub_18B7F0CB4();
  }

  else
  {
    v7 = 0.0;
  }

  v8 = v1 + OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  swift_beginAccess();
  *(v8 + 200) = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong view];

  if (!v10)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *v8 = v12;
  *(v8 + 8) = v14;
  *(v8 + 16) = v16;
  *(v8 + 24) = v18;
  *(v8 + 40) = sub_18B7E2098();
  *(v8 + 48) = v19;
  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = [v20 view];

  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v21 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  *(v8 + 216) = v23;
  *(v8 + 224) = v25;
  *(v8 + 232) = v27;
  *(v8 + 240) = v29;
  v30 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v109);

  sub_18B7DFD58(v109);
  if (v109[25])
  {
    sub_18B7C9974();
    v32 = v31;
    v33 = sub_18B7CEA3C();
    if (v33)
    {
      v34 = *&v33[OBJC_IVAR___SFTabOverview_searchState + 8];

      if (v34)
      {
        v35 = 1;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v35 = sub_18B7CFAA0();
LABEL_12:
  *(v8 + *(v2 + 68)) = v35 & 1;
  v36 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar;
  v37 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = v37;
  _SFDeviceHasHomeButton();
  UIEdgeInsetsMakeWithEdges();
  v108 = v39;
  v107 = v40;
  v42 = v41;
  v44 = v43;
  v45 = swift_unknownObjectUnownedLoadStrong();
  v46 = [v45 view];

  if (v46)
  {
    sub_18B7DF568(v8, v4, _s6LayoutVMa);
    v47 = v4[15];
    v48 = *v4;
    v49 = v4[1];
    v51 = v4[2];
    v50 = v4[3];
    v111.origin.x = *v4;
    v111.origin.y = v49;
    v111.size.width = v51;
    v111.size.height = v50;
    v52 = CGRectGetHeight(v111) - v47;
    v112.origin.x = v48;
    v112.origin.y = v49;
    v112.size.width = v51;
    v112.size.height = v50;
    Width = CGRectGetWidth(v112);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    [v46 _concentricEdgeInsetsForEdge_bounds_minimumEdgeInsets_];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    [v38 setLayoutMargins_];
    *(v8 + 32) = v59;
LABEL_15:
    sub_18B7F1314();
    sub_18B7F161C();
    v62 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView);
    v63 = swift_unknownObjectUnownedLoadStrong();
    v64 = [v63 view];

    if (v64)
    {
      [v64 bounds];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      [v62 ss:v66 setUntransformedFrame:{v68, v70, v72}];
      sub_18B7F163C();
      sub_18B7E822C();
      v73 = *(v1 + v36);
      if (v73)
      {
        sub_18B7DF568(v8, v4, _s6LayoutVMa);
        v74 = v4[3];
        v75 = v4[15] + v4[4];
        v76 = *v4;
        v77 = v4[1];
        v78 = v4[2];
        v79 = v73;
        v113.origin.x = v76;
        v113.origin.y = v77;
        v113.size.width = v78;
        v113.size.height = v74;
        v80 = CGRectGetHeight(v113) - v75;
        v114.origin.x = v76;
        v114.origin.y = v77;
        v114.size.width = v78;
        v114.size.height = v74;
        v81 = CGRectGetWidth(v114);
        sub_18B7DFF04(v4, _s6LayoutVMa);
        [v79 setFrame_];
      }

      sub_18B7F1840();
      sub_18B7E58A8();
      sub_18B7F1944();
      sub_18B7C9974();
      v83 = v82;
      v84 = swift_unknownObjectUnownedLoadStrong();
      v85 = [v84 view];

      if (v85)
      {
        [v85 bounds];
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v93 = v92;

        [v83 setFrame_];
        v94 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar);
        if (v94)
        {
          sub_18B7DF568(v8, v4, _s6LayoutVMa);
          v95 = v94;
          sub_18BB22ADC(v110);
          sub_18B7DFF04(v4, _s6LayoutVMa);
          sub_18B7F40F4(v95);

          sub_18B7F4620(v110);
        }

        sub_18B7F1B84();
        v96 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView);
        v97 = swift_unknownObjectUnownedLoadStrong();
        v98 = [v97 view];

        if (v98)
        {
          [v98 bounds];
          v100 = v99;
          v102 = v101;
          v104 = v103;
          v106 = v105;

          [v96 setFrame_];
          return;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

double sub_18B7F0CB4()
{
  v1 = _s4ItemVMa_0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  sub_18B7F1104();
  v6 = *(v5 + 16);
  if (!v6)
  {

    return 0.0;
  }

  v7 = *MEMORY[0x1E69DE090];
  v8 = (v46 + qword_1ED6515F0);
  v9 = *(v46 + qword_1ED651658);
  v10 = v9 + OBJC_IVAR___SFCapsuleTabGroupView_configuration;
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v38 = v5;
  v12 = v5 + v11;
  v43 = qword_1ED651600;
  swift_beginAccess();
  v41 = *(v2 + 72);
  v42 = v9;
  v13 = 0.0;
  v39 = v1;
  v44 = v8;
  v45 = v4;
  do
  {
    v48 = v6;
    sub_18B80DF38(v12, v4);
    if (*v8 == 1)
    {
      v14 = *&v4[*(v1 + 28)];
      v15 = v14;
    }

    else
    {
      v14 = 0;
    }

    v16 = v8[3];
    v17 = v1;
    v18 = &v4[*(v1 + 40)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = *v10;
    v22 = *(v10 + 8);
    v23 = *(v10 + 16);
    v24 = *(v10 + 24);
    *v10 = v14;
    *(v10 + 8) = v16;
    *(v10 + 16) = v20;
    *(v10 + 24) = v19;
    v49 = v21;
    if (!v14)
    {
      v47 = v22;
      swift_bridgeObjectRetain_n();
      if (!v21)
      {
        v40 = v23;
        sub_18BC1E3F8();
        goto LABEL_15;
      }

      v25 = 0;
LABEL_13:
      v8 = v44;
      v1 = v17;
      goto LABEL_18;
    }

    if (!v21)
    {
      v25 = v14;
      swift_bridgeObjectRetain_n();
      goto LABEL_13;
    }

    v47 = v22;
    v40 = v23;
    sub_18B7B0AC0(0, &qword_1ED6514F0);
    swift_bridgeObjectRetain_n();
    v25 = v14;
    v26 = v21;
    v27 = sub_18BC215C8();

    if ((v27 & 1) == 0)
    {

      v8 = v44;
      v1 = v39;
LABEL_18:
      v29 = v42;
      sub_18B7E3454();

      v32 = v48;
      goto LABEL_19;
    }

LABEL_15:
    v28 = v24;
    if (v16 != v47)
    {

      v25 = v14;
      v1 = v39;
LABEL_17:
      v8 = v44;
      goto LABEL_18;
    }

    if (v19)
    {
      v1 = v39;
      v35 = v49;
      if (!v28)
      {

        v25 = v14;
        goto LABEL_17;
      }

      if (v20 == v40 && v19 == v28)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v36 = sub_18BC21FD8();

        if ((v36 & 1) == 0)
        {
          v25 = v14;
          goto LABEL_17;
        }
      }
    }

    else
    {

      v1 = v39;
      if (v28)
      {
        v25 = v14;
        goto LABEL_17;
      }
    }

    v32 = v48;
    v8 = v44;
    v29 = v42;
LABEL_19:
    LODWORD(v30) = 1112014848;
    LODWORD(v31) = 1148846080;
    [v29 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:*(v46 + v43) verticalFittingPriority:{v30, v31}];
    v34 = v33;
    v4 = v45;
    sub_18B7ED178(v45, _s4ItemVMa_0);
    if (v13 <= v34)
    {
      v13 = v34;
    }

    v12 += v41;
    v6 = v32 - 1;
  }

  while (v6);

  return v13;
}

void sub_18B7F1104()
{
  v0 = _s4ItemVMa_0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = sub_18B7D292C();
  v8 = *&v7[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  sub_18BC1E3F8();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v18 = v3;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      sub_18B80DF38(v8 + v12 + v13 * v10, v6);
      if (*v6)
      {
        sub_18B7ED178(v6, _s4ItemVMa_0);
      }

      else
      {
        sub_18B80DF9C(v6, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18B83BE28(0, *(v11 + 16) + 1, 1);
          v11 = v19;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_18B83BE28(v15 > 1, v16 + 1, 1);
          v11 = v19;
        }

        *(v11 + 16) = v16 + 1;
        v17 = v11 + v12 + v16 * v13;
        v3 = v18;
        sub_18B80DF9C(v18, v17);
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_18B7F1314()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame_];
  v12 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView);
  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = [v13 view];

  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame_];
}

void sub_18B7F1464(void *a1, void (*a2)(double *__return_ptr))
{
  v5 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + *a1);
  if (v8)
  {
    v9 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v2 + v9, v7, _s6LayoutVMa);
    v10 = v8;
    a2(v21);
    sub_18B7DFF04(v7, _s6LayoutVMa);
    sub_18B9F952C(v21[0], v21[1], v21[2], v21[3]);
    [v10 setAlpha_];
    sub_18BB11A9C(v22);
    if ((v23 & 1) == 0)
    {
      v11 = *&v22[2];
      v12 = *&v22[3];
      v13 = *v22;
      v14 = *&v22[1];
      v15 = [v10 effectiveUserInterfaceLayoutDirection];
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      [v10 _setTouchInsets_];
    }

    sub_18B7F4620(v21);
    v18 = *&v10[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView];
    if (v18)
    {
      v19 = v18;
      [v19 layoutIfNeeded];
    }
  }
}

void sub_18B7F163C()
{
  v1 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator);
  if (v4)
  {
    v5 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v0 + v5, v3, _s6LayoutVMa);
    v6 = *v3;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    v10 = v4;
    v23.origin.x = v6;
    v23.origin.y = v7;
    v23.size.width = v8;
    v23.size.height = v9;
    MaxY = CGRectGetMaxY(v23);
    v12 = v3[29];
    v13 = MaxY - v12;
    v14 = v3[24];
    v15 = v13 - v14;
    v16 = v3[16];
    v17 = v15 - v16;
    if (*(v3 + 272) == 1 && *(v3 + 57) == 1)
    {
      if ((*(v3 + 79) & 1) == 0)
      {
LABEL_5:
        v18 = 44.0;
        if (v3[9] & v3[7])
        {
          v18 = 54.0;
        }

LABEL_17:
        v17 = v17 + v12 + v18;
LABEL_18:
        v24.origin.x = v6;
        v24.origin.y = v7;
        v24.size.width = v8;
        v24.size.height = v9;
        Width = CGRectGetWidth(v24);
        sub_18B7DFF04(v3, _s6LayoutVMa);
        [v10 setFrame_];

        return;
      }
    }

    else
    {
      v19 = *(v3 + 72) != 1 || *(v3 + 56) == 0;
      if (!v19 && (*(v3 + 79) & 1) != 0)
      {
        goto LABEL_18;
      }

      if (!*(v3 + 79))
      {
        goto LABEL_5;
      }
    }

    v20 = 44.0;
    if (v3[9] & v3[7])
    {
      v20 = 54.0;
    }

    v18 = v14 + v16 + v20;
    goto LABEL_17;
  }
}

void sub_18B7F1840()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
  if (v1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = v1;
    v3 = [Strong view];

    if (v3)
    {
      [v3 safeAreaInsets];
      v5 = v4;

      v6 = *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 48];
      v9[2] = *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 32];
      v9[3] = v6;
      v10 = *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 64];
      v7 = *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 16];
      v9[0] = *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
      v9[1] = v7;
      *&v8[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 64] = v5;
      sub_18BA1AF64(v9);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18B7F1944()
{
  v1 = v0;
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  v8 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView);
  if (v8)
  {
    v9 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v1 + v9, v7, _s6LayoutVMa);
    v10 = v8;
    sub_18BB224D0(v22);
    sub_18B7DFF04(v7, _s6LayoutVMa);
    sub_18B9F952C(v22[0], v22[1], v22[2], v22[3]);
    [v10 setAlpha_];
    sub_18BB11A9C(v23);
    if ((v24 & 1) == 0)
    {
      v11 = *&v23[2];
      v12 = *&v23[3];
      v13 = *v23;
      v14 = *&v23[1];
      v15 = [v10 effectiveUserInterfaceLayoutDirection];
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      [v10 _setTouchInsets_];
    }

    sub_18B7F4620(v22);
  }

  v18 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton);
  if (v18)
  {
    v19 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v1 + v19, v4, _s6LayoutVMa);
    v20 = v18;
    sub_18BB229C0(v25);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F40F4(v20);

    sub_18B7F4620(v25);
  }
}

void sub_18B7F1BA4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong view];

  if (v2)
  {
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [*(v0 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher) setFrame_];
    v11 = *(v0 + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView);

    [v11 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18B7F1D54()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TabSwitcher(0);
  objc_msgSendSuper2(&v7, sel_viewDidLayoutSubviews);
  v1 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_18B802344;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_18B7B0DB0;
    v6[3] = &block_descriptor_557;
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

uint64_t sub_18B7F1E64()
{

  return swift_deallocObject();
}

void sub_18B7F1EA0(void *a1)
{
  v1 = a1;
  sub_18B7F1EE8();
}

void sub_18B7F1EE8()
{
  v1 = v0;
  v2 = sub_18B7D292C();
  v3 = *&v2[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics + 104];

  v4 = sub_18B7D292C();
  v5 = sub_18B7C34FC();
  [v5 contentOffset];
  v7 = v6;
  v9 = v8;

  v10 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v4 + v10, &v47);
  v11 = *(&v48 + 1);
  v12 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
  v13 = (*(v12 + 176))(v11, v12, v7, v9);
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  sub_18B7D1FBC();
  v16 = sub_18B7D292C();
  v17 = *(*&v1[qword_1ED651648] + 24);
  v18 = sub_18BA422AC();
  v19 = v18;
  v20 = &selRef_value;
  if (v17 <= 0)
  {
    v20 = &selRef_presentationValue;
  }

  [v18 *v20];
  v22 = v21;

  *&v16[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_contentOffsetForCollapsing] = v22;
  v23 = &v16[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
  swift_beginAccess();
  v24 = *(v23 + 24);
  v25 = *(v23 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  (*(v25 + 24))(v24, v25, v22);
  swift_endAccess();

  v26 = sub_18B7D292C();
  v27 = qword_1ED651600;
  swift_beginAccess();
  v28 = &v26[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics];
  memmove(&v26[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics], &v1[v27], 0x70uLL);
  v50 = *(v28 + 3);
  v51 = *(v28 + 4);
  v52 = *(v28 + 5);
  v53 = *(v28 + 6);
  v47 = *v28;
  v48 = *(v28 + 1);
  v49 = *(v28 + 2);
  v29 = &v26[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  (*(v31 + 48))(&v47, v30, v31);
  swift_endAccess();

  v46.receiver = v1;
  v46.super_class = type metadata accessor for ScrollingCapsuleCollectionView();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  sub_18BA45480();
  sub_18B7F623C();
  sub_18BA456CC();
  v32 = *&v1[qword_1ED651610];
  if (!v32 || !*(v32 + 16))
  {
    v33 = sub_18B7D292C();
    v34 = *&v33[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics + 104];

    if (v3 != v34)
    {
      v35 = sub_18B7C34FC();
      v36 = sub_18B7D292C();
      v37 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
      swift_beginAccess();
      sub_18B80DBC4(v36 + v37, v43);
      v38 = v44;
      v39 = v45;
      __swift_project_boxed_opaque_existential_1Tm(v43, v44);
      v40 = (*(v39 + 168))(v38, v39, v13, v15);
      v42 = v41;

      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      [v35 setContentOffset_];
    }
  }
}

void sub_18B7F2284(void *a1)
{
  v1 = a1;
  sub_18B7F22CC();
}

void sub_18B7F22CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_18B7F2348();
  sub_18B7F4674(v1);
  sub_18B7F5FAC();
}

uint64_t sub_18B7F2348()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v81 - v5;
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v95 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v19 = sub_18B7F2CC4(&v104);
  if (v104 == 1)
  {
    type metadata accessor for CollectionView.SizeTransitionInfo();
    v20 = sub_18BC21848();
    v21 = (*(*(v20 - 8) + 8))(&v104, v20);
    return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x290))(v21);
  }

  else
  {
    v96 = v2;
    v103[0] = v104;
    v103[1] = v105;
    v103[2] = v106;
    v103[3] = v107;
    sub_18BB3D060(v19);
    v93 = v18;
    v23 = sub_18B7F4870(v18);
    sub_18BB3C8F8(v23);
    v24 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))(v6);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
    v25 = v98;
    v26 = *(v98 + 16);
    v26(v11, v14, v3);
    v27 = sub_18B7F7DF0(v11);
    (*((*v24 & *v0) + 0x290))(v27);
    sub_18B7F60F0(&v99);
    if (v99)
    {
      v104 = v99;
      v105 = v100;
      v106 = v101;
      v107 = v102;
    }

    else
    {
      sub_18B7F6164(v103, &v104);
    }

    v92 = v14;
    if (v104)
    {
      AssociatedTypeWitness = v26;
      v99 = v104;
      v100 = v105;
      v101 = v106;
      v102 = v107;
      sub_18B7F4870(v11);
      v28 = v96;
      *&v29 = COERCE_DOUBLE((*(v96 + 136))(&v99, v3, v96));
      v31 = v30;
      v32 = v25;
      v34 = v33;
      (*(v32 + 8))(v11, v3);
      if ((v34 & 1) == 0)
      {
        v35 = *&v29;
        v36 = sub_18B7C34FC();
        [v36 setContentOffset_];

        v37 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
        [v37 adjustedContentInset];
        v90 = v39;
        v91 = v38;
        v88 = v41;
        v89 = v40;
        [v37 bounds];
        v86 = v43;
        v87 = v42;
        v84 = v45;
        v85 = v44;
        sub_18B7E0E4C();
        v82 = v47;
        v83 = v46;
        v49 = v48;
        v51 = v50;
        [v37 contentSize];
        v53 = v52;
        v55 = v54;
        [v37 frame];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v64 = [v37 isTracking];

        *&v104 = v91;
        *(&v104 + 1) = v90;
        *&v105 = v89;
        *(&v105 + 1) = v88;
        *&v106 = v87;
        *(&v106 + 1) = v86;
        *&v107 = v85;
        *(&v107 + 1) = v84;
        v108 = v83;
        v109 = v82;
        v110 = v49;
        v111 = v51;
        v112 = v53;
        v113 = v55;
        v114 = v57;
        v115 = v59;
        v116 = v61;
        v117 = v63;
        v118 = v64;
        sub_18B7F4870(v11);
        (*(v28 + 80))(&v104, v3, v28);
        sub_18B7F7DF0(v11);
      }

      v65 = sub_18B8303BC(&v99);
      v25 = v98;
      v14 = v92;
      v26 = AssociatedTypeWitness;
    }

    else
    {
      v65 = sub_18B7F61D4(&v104);
    }

    sub_18BB3D060(v65);
    v26(v11, v14, v3);
    v26(v97, v93, v3);
    v66 = *(v25 + 80);
    v67 = (v66 + 32) & ~v66;
    v68 = (v95 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = v3;
    v70 = (v66 + v68 + 8) & ~v66;
    v71 = swift_allocObject();
    v72 = v96;
    *(v71 + 16) = v3;
    *(v71 + 24) = v72;
    v73 = *(v25 + 32);
    v73(v71 + v67, v11, v3);
    *(v71 + v68) = v1;
    v73(v71 + v70, v97, v3);
    v74 = objc_opt_self();
    v75 = swift_allocObject();
    *(v75 + 16) = sub_18BB3F450;
    *(v75 + 24) = v71;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_18B9D53AC;
    *(v76 + 24) = v75;
    *&v101 = sub_18B9D53B0;
    *(&v101 + 1) = v76;
    *&v99 = MEMORY[0x1E69E9820];
    *(&v99 + 1) = 1107296256;
    *&v100 = sub_18B7E3BF4;
    *(&v100 + 1) = &block_descriptor_40;
    v77 = _Block_copy(&v99);
    v78 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v74 performWithoutAnimation_];
    _Block_release(v77);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if (v67)
    {
      __break(1u);
    }

    else
    {
      v79 = *(v98 + 8);
      v79(v92, v69);
      v79(v93, v69);
      v80 = type metadata accessor for CollectionView.SizeTransitionInfo();
      return (*(*(v80 - 8) + 8))(v103, v80);
    }
  }

  return result;
}

uint64_t sub_18B7F2BAC()
{

  return swift_deallocObject();
}

uint64_t sub_18B7F2BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v2 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + ((v4 + v6 + 8) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_18B7F2CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  type metadata accessor for CollectionView.SizeTransitionInfo();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18B7F2DBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18B7F2E04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void sub_18B7F2E60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18B7C2E68(a1);
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 bounds];
  v138.origin.x = v12;
  v138.origin.y = v13;
  v138.size.width = v14;
  v138.size.height = v15;
  v137.origin.x = v5;
  v137.origin.y = v7;
  v137.size.width = v9;
  v137.size.height = v11;
  v16 = CGRectEqualToRect(v137, v138);
  v17 = MEMORY[0x1E69E7D40];
  if (!v16)
  {
    v18 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
    [v2 bounds];
    [v18 setFrame_];
  }

  v19 = *((*v17 & *v2) + 0x80);
  v20 = *(v2 + v19);
  [v20 adjustedContentInset];
  v120 = v22;
  v122 = v21;
  v116 = v24;
  v118 = v23;
  [v20 bounds];
  v112 = v26;
  v114 = v25;
  v108 = v28;
  v110 = v27;
  sub_18B7E0E4C();
  v104 = v30;
  v106 = v29;
  v32 = v31;
  v34 = v33;
  [v20 contentSize];
  v36 = v35;
  v38 = v37;
  [v20 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [v20 isTracking];

  v48 = sub_18B7D292C();
  v49 = &v48[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState];
  *v49 = v122;
  *(v49 + 1) = v120;
  *(v49 + 2) = v118;
  *(v49 + 3) = v116;
  *(v49 + 4) = v114;
  *(v49 + 5) = v112;
  *(v49 + 6) = v110;
  *(v49 + 7) = v108;
  *(v49 + 8) = v106;
  *(v49 + 9) = v104;
  *(v49 + 10) = v32;
  *(v49 + 11) = v34;
  *(v49 + 12) = v36;
  *(v49 + 13) = v38;
  *(v49 + 14) = v40;
  *(v49 + 15) = v42;
  *(v49 + 16) = v44;
  *(v49 + 17) = v46;
  v49[144] = v47;
  v136 = v47;
  v50 = *(v49 + 5);
  v135[4] = *(v49 + 4);
  v135[5] = v50;
  v51 = *(v49 + 3);
  v135[2] = *(v49 + 2);
  v135[3] = v51;
  v52 = *(v49 + 8);
  v135[7] = *(v49 + 7);
  v135[8] = v52;
  v135[6] = *(v49 + 6);
  v53 = *(v49 + 1);
  v54 = &v48[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
  v135[0] = *v49;
  v135[1] = v53;
  swift_beginAccess();
  v55 = *(v54 + 24);
  v56 = *(v54 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  (*(v56 + 72))(v135, v55, v56);
  swift_endAccess();
  v57 = *((*v17 & *v2) + 0x68);
  swift_beginAccess();
  v58 = *(v2 + v57);
  *(v2 + v57) = v48;

  v59 = sub_18B7D292C();
  v60 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v59 + v60, &v125);
  v61 = *(&v126 + 1);
  v62 = v127;
  __swift_project_boxed_opaque_existential_1Tm(&v125, *(&v126 + 1));
  v63 = (*(v62 + 112))(v61, v62);
  v65 = v64;

  __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  [*(v2 + v19) contentSize];
  if (v67 != v63 || v66 != v65)
  {
    [*(v2 + v19) setContentSize_];
  }

  v68 = *(v2 + v19);
  [v68 adjustedContentInset];
  v121 = v70;
  v123 = v69;
  v117 = v72;
  v119 = v71;
  [v68 bounds];
  v113 = v74;
  v115 = v73;
  v109 = v76;
  v111 = v75;
  sub_18B7E0E4C();
  v105 = v78;
  v107 = v77;
  v80 = v79;
  v82 = v81;
  [v68 contentSize];
  v84 = v83;
  v86 = v85;
  [v68 frame];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = [v68 isTracking];

  v96 = sub_18B7D292C();
  v97 = &v96[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState];
  *v97 = v123;
  *(v97 + 1) = v121;
  *(v97 + 2) = v119;
  *(v97 + 3) = v117;
  *(v97 + 4) = v115;
  *(v97 + 5) = v113;
  *(v97 + 6) = v111;
  *(v97 + 7) = v109;
  *(v97 + 8) = v107;
  *(v97 + 9) = v105;
  *(v97 + 10) = v80;
  *(v97 + 11) = v82;
  *(v97 + 12) = v84;
  *(v97 + 13) = v86;
  *(v97 + 14) = v88;
  *(v97 + 15) = v90;
  *(v97 + 16) = v92;
  *(v97 + 17) = v94;
  v97[144] = v95;
  v134 = v95;
  v126 = *(v97 + 1);
  v130 = *(v97 + 5);
  v129 = *(v97 + 4);
  v128 = *(v97 + 3);
  v127 = *(v97 + 2);
  v133 = *(v97 + 8);
  v132 = *(v97 + 7);
  v131 = *(v97 + 6);
  v125 = *v97;
  v98 = &v96[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
  swift_beginAccess();
  v99 = *(v98 + 24);
  v100 = *(v98 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
  (*(v100 + 72))(&v125, v99, v100);
  swift_endAccess();
  v101 = *(v2 + v57);
  *(v2 + v57) = v96;

  v102 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  sub_18B7CA054(v2 + v102, v124, &unk_1EA9D53A0);
  v103 = v124[0];
  sub_18B988BAC(v124, &unk_1EA9D53A0);
  if (v103)
  {
  }
}

uint64_t sub_18B7F3408(uint64_t a1)
{
  sub_18B7F2E60(a1);
  v2 = sub_18B7D292C();
  v3 = v2[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1];

  v4 = sub_18B7C34FC();
  v5 = 1.0;
  if ((v3 & 1) == 0)
  {
    v6 = v1 + qword_1ED651600;
    swift_beginAccess();
    v5 = *(v6 + 40);
  }

  [v4 setAlpha_];

  v7 = sub_18B7C34FC();
  [v7 setUserInteractionEnabled_];

  if ((*(v1 + qword_1ED6515F0 + 1) & 1) == 0)
  {
    v8 = sub_18B7C34FC();
    v9 = sub_18B7D292C();
    v10 = *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics + 104] * -2.0 - *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics + 56];
    v11 = *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 8];
    v12 = *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 24];

    [v8 _setInterpageSpacing_];
    v13 = sub_18B7C34FC();
    v14 = sub_18B7C34FC();
    [v14 adjustedContentInset];
    v16 = v15;

    [v13 _setPagingOrigin_];
  }

  return sub_18B7F358C();
}

uint64_t sub_18B7F358C()
{
  v1 = v0;
  v2 = sub_18B7D292C();
  sub_18B7F37CC(&v21);

  v3 = *(v1 + qword_1ED651668);
  v4 = v22;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  sub_18BBE424C(sub_18BA48288, v5, *&v4, *(&v4 + 1));

  if (qword_1EA9D2370 != -1)
  {
    swift_once();
  }

  v7 = qword_1EA9F7FE0;
  v8 = swift_allocObject();
  v9 = v23;
  *(v8 + 72) = v24;
  v10 = v26;
  *(v8 + 88) = v25;
  *(v8 + 104) = v10;
  *(v8 + 120) = v27;
  v11 = v22;
  *(v8 + 24) = v21;
  *(v8 + 40) = v11;
  *(v8 + 16) = v6;
  *(v8 + 56) = v9;
  v12 = v6;
  sub_18B81407C(&v21, &v20);
  sub_18B7EAA64(sub_18BA48290, v8, CGRectMake, 0, v7);

  v13 = *(v1 + qword_1ED651670);
  sub_18BBE424C(CGRectMake, 0, *&v4, *(&v4 + 1));
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 72) = v24;
  v16 = v26;
  *(v14 + 88) = v25;
  *(v14 + 104) = v16;
  *(v14 + 120) = v27;
  v17 = v22;
  *(v14 + 24) = v21;
  *(v14 + 40) = v17;
  *(v14 + 16) = v13;
  *(v14 + 56) = v15;
  v18 = v13;
  sub_18B7EAA64(sub_18BA482DC, v14, CGRectMake, 0, v7);
}

__n128 sub_18B7F37CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v2 + v4, v30);
  v5 = v31;
  v6 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v7 = (*(v6 + 144))(v5, v6);
  v8 = v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics;
  v9 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  v10 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32);
  v11 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 40);
  v12 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 48);
  v13 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 56);
  v33.origin.x = v10;
  v33.origin.y = v11;
  v33.size.width = v12;
  v33.size.height = v13;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v10;
  v34.origin.y = v11;
  v34.size.width = v12;
  v34.size.height = v13;
  v35.origin.y = CGRectGetMidY(v34) - v9 * 0.5;
  v35.origin.x = MidX - v7 * 0.5;
  v35.size.width = v7;
  v35.size.height = v9;
  v36 = CGRectOffset(v35, *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_contentOffsetForCollapsing), 0.0);
  v15 = UIEdgeInsetsInsetRect(v36.origin.x, v36.origin.y, v36.size.width, v36.size.height, *(v8 + 64), *(v8 + 72));
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18B7F3BB8(v30, 0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native);
  sub_18B7F4038();
  sub_18BC21A68();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_18B7F3BB8(v30, 0x4F746E65746E6F63, 0xED00007465736666, v24);
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v22;
  return result;
}

unint64_t sub_18B7F3A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7038);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v16, &qword_1EA9D7040);
      v5 = v16;
      v6 = v17;
      result = sub_18B7C4104(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_18B7F3B64()
{
  result = qword_1EA9D40B0;
  if (!qword_1EA9D40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D40B0);
  }

  return result;
}

uint64_t sub_18B7F3BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18B848D98();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B7F3D00(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_18B8149D0(a1, v22);
  }

  else
  {
    sub_18BB32744(v11, a2, a3, a1, v21);

    return sub_18BC1E3F8();
  }
}

uint64_t sub_18B7F3D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7038);
  v38 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_18B7F44EC(v27, &v39);
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_18B7F3FE4()
{
  result = qword_1EA9D9398;
  if (!qword_1EA9D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9398);
  }

  return result;
}

unint64_t sub_18B7F4038()
{
  result = qword_1EA9D8930;
  if (!qword_1EA9D8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8930);
  }

  return result;
}

unint64_t sub_18B7F4090()
{
  result = qword_1EA9D93B8;
  if (!qword_1EA9D93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D93B8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18B7F40F4(void *a1)
{
  [a1 setAlpha_];
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  [a1 setBounds_];
  v22.origin.x = v3;
  v22.origin.y = v4;
  v22.size.width = v5;
  v22.size.height = v6;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v3;
  v23.origin.y = v4;
  v23.size.width = v5;
  v23.size.height = v6;
  [a1 setCenter_];
  [a1 setHidden_];
  v8 = *(v1 + 64);
  v17 = *(v1 + 48);
  v18 = v8;
  v19 = *(v1 + 80);
  [a1 setTransform_];
  v9 = [a1 layer];
  [v9 setZPosition_];

  *&v20[0] = a1;
  sub_18B7F4394();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9380);
  if (swift_dynamicCast())
  {
    sub_18B7C3FA4(&v17, v21);
    if ([objc_opt_self() _isInRetargetableAnimationBlock])
    {
      v11 = 0x8000000000000008;
    }

    else
    {
      v11 = 0x8000000000000000;
    }

    sub_18B80DBC4(v21, v20);
    v12 = swift_allocObject();
    sub_18B7C3FA4(v20, v12 + 16);
    v13 = *(v1 + 32);
    *(v12 + 104) = *(v1 + 48);
    v14 = *(v1 + 80);
    *(v12 + 120) = *(v1 + 64);
    *(v12 + 136) = v14;
    *(v12 + 152) = *(v1 + 96);
    v15 = *(v1 + 16);
    *(v12 + 56) = *v1;
    *(v12 + 72) = v15;
    *(v12 + 88) = v13;
    sub_18B81407C(v1, &v17);
    sub_18B80ECB4(sub_18B867610, v12, v11);

    sub_18B7EBAE8(v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    *&v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_18B7F43E0(&v17);
  }
}

uint64_t sub_18B7F4354()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_18B7F4394()
{
  result = qword_1EA9D46F0;
  if (!qword_1EA9D46F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D46F0);
  }

  return result;
}

uint64_t sub_18B7F43E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18B7F4448(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  v4 = 0.0;
  if (*(v3 + 16))
  {
    v5 = sub_18B7C4104(a1, a2);
    if (v6)
    {
      sub_18B7F44EC(*(v3 + 56) + 40 * v5, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  return v4;
}

double sub_18B7F4548()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0x4F746E65746E6F63, 0xED00007465736666);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

uint64_t storeEnumTagSinglePayload for TabSnapshotRegistration.Visibility(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18B7F4674(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - v6;
  sub_18B7F4870(&v16 - v6);
  v8 = *(*((v3 & v2) + 0x58) + 56);
  v20 = *((v3 & v2) + 0x58);
  v9 = v8(v4);
  v10 = *(v5 + 8);
  v10(v7, v4);
  v17 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v18 = *(v20 + 120);
    v19 = v20 + 120;
    v12 = (v17 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      sub_18BC1E3F8();
      sub_18B7F4870(v7);
      v18(v21, v13, v14, v4, v20);
      v10(v7, v4);
      sub_18B7F4870(v7);
      sub_18B7F5044(v13, v14, v21, v7, 0);

      v10(v7, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_18B7F4870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v21 - v7;
  v9 = sub_18BC21848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *((v4 & v3) + 0x68);
  swift_beginAccess();
  (*(v10 + 16))(v14, &v1[v15], v9);
  v16 = *(v5 - 8);
  if ((*(v16 + 48))(v14, 1, v5) != 1)
  {
    return (*(v16 + 32))(v24, v14, v5);
  }

  (*(v10 + 8))(v14, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v24;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0))(v8);
  (*(v22 + 8))(v8, AssociatedTypeWitness);
  v19 = v23;
  (*(v16 + 16))(v23, v18, v5);
  (*(v16 + 56))(v19, 0, 1, v5);
  swift_beginAccess();
  (*(v10 + 40))(&v2[v15], v19, v9);
  return swift_endAccess();
}

void *sub_18B7F4C2C()
{
  if (*(*v0 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 7))
  {
    return &unk_1EFF1A988;
  }

  else
  {
    return &unk_1EFF1A9C8;
  }
}

uint64_t sub_18B7F4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_18BC1ED38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  (*(a4 + 96))(a1, a2, a3, a4, v15);
  swift_getAssociatedTypeWitness();
  v18 = sub_18BC20E28();

  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_18B7F4F2C(&qword_1EA9DB6E8, MEMORY[0x1E6969B50]);
    sub_18BC218F8();
    if (v18)
    {
      v20 = 0;
      do
      {
        v21 = v20 + 1;
        v25 = v20;
        sub_18BC218D8();
        v20 = v21;
      }

      while (v18 != v21);
    }

    v22 = *(v11 + 32);
    v22(v17, v13, v10);
    v23 = type metadata accessor for SingleElementIndexPathSequence();
    a5[3] = v23;
    a5[4] = sub_18B7F4F2C(&qword_1EA9DB6F0, type metadata accessor for SingleElementIndexPathSequence);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a5);
    sub_18BC1ECA8();
    return (v22)(boxed_opaque_existential_0Tm + *(v23 + 20), v17, v10);
  }

  return result;
}

uint64_t sub_18B7F4EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7F4F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SingleElementIndexPathSequence()
{
  result = qword_1EA9D7558;
  if (!qword_1EA9D7558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B7F4FC0()
{
  result = sub_18BC1ECC8();
  if (v1 <= 0x3F)
  {
    result = sub_18BC1ED38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B7F5044(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v90 = a5;
  v103 = a4;
  v84 = *(*((*MEMORY[0x1E69E7D40] & *v6) + 0x50) - 8);
  v79 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v98 = &v72 - v10;
  v105 = *((v12 & v11) + 0x58);
  v104 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v97 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v72 - v16;
  v17 = sub_18BC1EDD8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v72 - v21;
  v99 = a1;
  v100 = sub_18B7F5A78();
  v23 = a3[3];
  v24 = a3;
  v25 = v17;
  v26 = __swift_project_boxed_opaque_existential_1Tm(v24, v23);
  v27 = MEMORY[0x1EEE9AC00](v26);
  (*(v29 + 16))(&v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v108 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v107);
  v30 = v22;
  sub_18BC20CC8();
  v91 = (v18 + 48);
  v87 = v105 + 104;
  v88 = (v18 + 32);
  v85 = (v18 + 8);
  v86 = (v83 + 8);
  v31 = v82;
  v75 = v83 + 16;
  v76 = v105 + 48;
  v73 = v83 + 32;
  v74 = v84 + 16;
  v72 = v84 + 32;
  v80 = a2;
  v81 = v6;
  v77 = v17;
  for (i = v22; ; v30 = i)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
    sub_18BC21868();
    if ((*v91)(v30, 1, v25) == 1)
    {
      break;
    }

    v32 = v101;
    (*v88)(v101, v30, v25);
    v33 = v104;
    v34 = v105;
    v35 = v99;
    (*(v105 + 104))(v99, a2, v32, v104, v105);
    (*(*(v34 + 8) + 16))(v110, v35, a2, v32, v90, v33);
    v36 = sub_18B82267C();
    v116 = v110[0];
    v117 = v110[1];
    v118[0] = (v111 | v36) & 1;
    *&v118[1] = v112;
    *&v118[64] = *&v115[15];
    *&v118[49] = *v115;
    *&v118[33] = v114;
    *&v118[17] = v113;
    if (v112 & 1) != 0 || (sub_18B825614(v31))
    {
      v37 = v104;
      v38 = v105;
      v39 = *(v105 + 48);
      v106[3] = swift_getAssociatedTypeWitness();
      v106[4] = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v106);
      v39(v37, v38);
      v40 = sub_18B823100(v31, v106);
      v96 = v41;
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v44 = v31;
      v45 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x210))(v31, v99, a2);
      v46 = [v40 superview];
      if (!v46 || (v47 = v46, sub_18B7F4394(), v48 = v45, v49 = sub_18BC215C8(), v47, v48, (v49 & 1) == 0))
      {
        [v45 addSubview_];
      }

      v50 = 0x8000000000000010;
      v93 = v43 & 1;
      if ((v43 & 1) == 0)
      {
        v50 = 0x8000000000000008;
      }

      v95 = v50;
      v51 = v83;
      (*(v83 + 16))(v97, v44, AssociatedTypeWitness);
      v52 = v84;
      v53 = v104;
      (*(v84 + 16))(v98, v103, v104);
      v54 = (*(v51 + 80) + 168) & ~*(v51 + 80);
      v55 = *(v52 + 80);
      v56 = v40;
      v92 = v40;
      v57 = (v78 + v55 + v54) & ~v55;
      v58 = v57 + v79;
      v94 = v45;
      v59 = (v57 + v79) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v61 = v105;
      *(v60 + 16) = v53;
      *(v60 + 24) = v61;
      v62 = v96;
      *(v60 + 32) = v56;
      *(v60 + 40) = v62;
      v63 = *&v118[48];
      *(v60 + 112) = *&v118[32];
      *(v60 + 128) = v63;
      *(v60 + 144) = *&v118[64];
      v64 = v117;
      *(v60 + 48) = v116;
      *(v60 + 64) = v64;
      v65 = *&v118[16];
      *(v60 + 80) = *v118;
      *(v60 + 96) = v65;
      *(v60 + 160) = v100;
      v66 = *(v51 + 32);
      v31 = v82;
      v66(v60 + v54, v97, AssociatedTypeWitness);
      (*(v52 + 32))(v60 + v57, v98, v53);
      *(v60 + v58) = v93;
      v67 = v60 + v59;
      v6 = v81;
      *(v67 + 8) = v81;
      v68 = v92;
      sub_18BC1E1A8();
      v69 = v6;
      v70 = v95;
      sub_18B80ECB4(sub_18B82394C, v60, v95);

      sub_18B7EBAE8(v70);

      a2 = v80;
      v25 = v77;
    }

    else
    {
      sub_18B7F4620(&v116);
      sub_18B825744(v31);
    }

    (*v86)(v31, AssociatedTypeWitness);
    (*v85)(v101, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

uint64_t sub_18B7F58F8()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + 168) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);
  (*(v5 + 8))(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_18B7F5A78()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionItemViewManager();
  sub_18B7C2900();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC20A28();

  result = v1;
  if (!v1)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B7F5C10()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B7F5C58(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18B7F5CD0()
{
  result = qword_1EA9D7568[0];
  if (!qword_1EA9D7568[0])
  {
    type metadata accessor for SingleElementIndexPathSequence();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D7568);
  }

  return result;
}

uint64_t sub_18B7F5D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleElementIndexPathSequence();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_18B7F5DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18BC1ECC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SingleElementIndexPathSequence();
  sub_18BC1EC98();
  v8 = sub_18BC1ECB8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = sub_18BC1ED48();
    sub_18BC1ECE8();
    (*(v5 + 40))(v2, v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18BC3E410;
    *(v11 + 32) = v10;
    MEMORY[0x18CFFA250]();
    v9 = 0;
  }

  v12 = sub_18BC1EDD8();
  return (*(*(v12 - 8) + 56))(a1, v9, 1, v12);
}

void sub_18B7F5FAC()
{
  sub_18B7F60F0(v7);
  v1 = v7[0];
  sub_18B7F61D4(v7);
  if (v1)
  {
    v2 = *MEMORY[0x1E69DDA98];
    if (*MEMORY[0x1E69DDA98])
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      v7[4] = sub_18BB3F4C8;
      v7[5] = v3;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_18B7B0DB0;
      v7[3] = &block_descriptor_46_2;
      v4 = _Block_copy(v7);
      v5 = v2;
      v6 = v0;

      [v5 _performBlockAfterCATransactionCommits_];
      _Block_release(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B7F60B8()
{

  return swift_deallocObject();
}

uint64_t sub_18B7F60F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  return sub_18B7F6164(v1 + v3, a1);
}

uint64_t sub_18B7F6164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B7F61D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B7F623C()
{
  v1 = *&v0[qword_1ED651660];
  v2 = sub_18B7C34FC();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setBounds_];
  v11 = sub_18B7C34FC();
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  [v1 setCenter_];
  sub_18BA4511C();
  v22 = v21;
  v23 = *&v0[qword_1ED651678];
  [v0 bounds];
  v24 = (CGRectGetWidth(v32) - v22) * 0.5;
  [v0 bounds];
  [v23 setBounds_];
  if (qword_1EA9D2370 != -1)
  {
    swift_once();
  }

  v25 = qword_1EA9F7FE0;
  v26 = swift_allocObject();
  v26[2] = v0;
  v27 = v0;
  sub_18B7EAA64(sub_18BA482E8, v26, CGRectMake, 0, v25);
}

uint64_t sub_18B7F643C()
{

  return swift_deallocObject();
}

id sub_18B7F6478()
{
  v9.receiver = v0;
  v9.super_class = _s3HUDCMa();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_captureView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_shadowView];
  [v0 bounds];
  v11 = CGRectInset(v10, 3.0, 3.0);
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_systemSnapshotBackgroundView];
  [v0 bounds];
  [v3 setFrame_];
  [v0 bounds];
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 * 0.5;
  [v0 _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_materialView] _setContinuousCornerRadius_];
  [v2 _setContinuousCornerRadius_];
  return [v3 _setContinuousCornerRadius_];
}

void sub_18B7F6600(void *a1)
{
  v1 = a1;
  sub_18B7F6648();
}

id sub_18B7F6648()
{
  sub_18B7F67EC();
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v3 = &v0[qword_1EA9F7FF8];
    v4 = *&v0[qword_1EA9F7FF8 + 112];
    v35[6] = *&v0[qword_1EA9F7FF8 + 96];
    v35[7] = v4;
    v35[8] = *&v0[qword_1EA9F7FF8 + 128];
    v36 = *&v0[qword_1EA9F7FF8 + 144];
    v5 = *&v0[qword_1EA9F7FF8 + 48];
    v35[2] = *&v0[qword_1EA9F7FF8 + 32];
    v35[3] = v5;
    v6 = *&v0[qword_1EA9F7FF8 + 80];
    v35[4] = *&v0[qword_1EA9F7FF8 + 64];
    v35[5] = v6;
    v7 = *&v0[qword_1EA9F7FF8 + 16];
    v35[0] = *&v0[qword_1EA9F7FF8];
    v35[1] = v7;
    *(v3 + 15) = v8;
    *(v3 + 16) = v9;
    *(v3 + 17) = v10;
    *(v3 + 18) = v11;
    sub_18B7CBBC4(v35);
  }

  v34.receiver = v0;
  v34.super_class = type metadata accessor for TabOverviewSwitcher();
  v12 = objc_msgSendSuper2(&v34, sel_layoutSubviews);
  v13 = *&v0[qword_1EA9D6BB0];
  v14 = sub_18B7C2E68(v12);
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = sub_18B7C2E68([v13 setBounds_]);
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v37.origin.x = v25;
  v37.origin.y = v27;
  v37.size.width = v29;
  v37.size.height = v31;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = v25;
  v38.origin.y = v27;
  v38.size.width = v29;
  v38.size.height = v31;
  result = [v13 setCenter_];
  *&v0[qword_1EA9D6BB8] = 0;
  return result;
}

uint64_t sub_18B7F67EC()
{
  v1 = v0;
  if (v0[qword_1EA9D6C08] == 1)
  {
    v2 = qword_1EA9D6BA0;
    swift_beginAccess();
    v3 = *&v1[v2];
    sub_18BC1E1A8();
    v4 = sub_18B7CC308();
    sub_18B8489A0();
    v6 = v5;
    if (*(*(v4 + 16) + 48) <= v5)
    {
      v8 = *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 144);

      if (v8)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {

      v7 = v6 > 0.0;
    }

    v9 = *(v3 + 40);
    *(v3 + 40) = v7;
    sub_18B7CC404(v9);
  }

  v10 = qword_1EA9D6C10;
  v11 = v1[qword_1EA9D6C10];
  v12 = qword_1EA9D6BA0;
  swift_beginAccess();
  LODWORD(v12) = *(*&v1[v12] + 40);
  v1[v10] = v12;
  sub_18B7CC308();
  sub_18B7CC61C();

  result = sub_18B7F6B08();
  if (v11 != v12)
  {
    if (qword_1EA9D21E0 != -1)
    {
      swift_once();
    }

    v14 = qword_1EA9F7A70;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = sub_18BA5A3E4;
    v17[4] = v15;
    v25 = sub_18B7E767C;
    v26 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18B7B0DB0;
    v24 = &block_descriptor_323;
    v18 = _Block_copy(&aBlock);
    v19 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    v25 = CGRectMake;
    v26 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_18B8043A0;
    v24 = &block_descriptor_326;
    v20 = _Block_copy(&aBlock);

    [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v20);
    _Block_release(v18);
  }

  return result;
}

uint64_t sub_18B7F6B08()
{
  v0 = sub_18B7CC308();
  v1 = sub_18B7E1258();
  [v1 presentationValue];
  v3 = v2;

  *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo) = v3;

  v4 = sub_18B7CC308();
  v5 = sub_18B7E1448();
  [v5 presentationValue];
  v7 = v6;

  *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 32) = v7;

  v8 = sub_18B7CC308();
  v9 = sub_18B7CC880();
  [v9 presentationValue];
  v11 = v10;

  *(v8 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 16) = v11;

  v12 = sub_18B7CC308();
  v13 = sub_18B7CC88C();
  [v13 presentationValue];
  v15 = v14;

  *(v12 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 48) = v15;
}

uint64_t sub_18B7F6C20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v161 - v3;
  v6 = sub_18B7C2E68(v5);
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v1 bounds];
  v174.origin.x = v15;
  v174.origin.y = v16;
  v174.size.width = v17;
  v174.size.height = v18;
  v173.origin.x = v8;
  v173.origin.y = v10;
  v173.size.width = v12;
  v173.size.height = v14;
  v19 = CGRectEqualToRect(v173, v174);
  v20 = MEMORY[0x1E69E7D40];
  if (!v19)
  {
    v21 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
    [v1 bounds];
    [v21 setFrame_];
  }

  v22 = *((*v20 & *v1) + 0x80);
  v23 = *(v1 + v22);
  [v23 adjustedContentInset];
  v170 = v24;
  v169 = v25;
  v27 = v26;
  v29 = v28;
  [v23 bounds];
  v168 = v30;
  v167 = v31;
  v166 = v32;
  v165 = v33;
  sub_18B7E0E4C();
  v164 = v34;
  v163 = v35;
  v162 = v36;
  v161 = v37;
  [v23 contentSize];
  v39 = v38;
  v41 = v40;
  [v23 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [v23 isTracking];

  v51 = sub_18B7CC308();
  v52 = v51 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v53 = *(v51 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v55 = *(v51 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  v54 = *(v51 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v56 = *(v51 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  *&v57.f64[0] = v170;
  v58 = *&v169;
  *v52 = v170;
  *(v52 + 8) = v58;
  *(v52 + 16) = v27;
  *(v52 + 24) = v29;
  v59 = v167;
  *(v52 + 32) = v168;
  *(v52 + 40) = v59;
  *&v60.f64[0] = v166;
  v61 = *&v165;
  *(v52 + 48) = v166;
  *(v52 + 56) = v61;
  v62 = v163;
  *(v52 + 64) = v164;
  *(v52 + 72) = v62;
  v63 = v161;
  *(v52 + 80) = v162;
  *(v52 + 88) = v63;
  *(v52 + 96) = v39;
  *(v52 + 104) = v41;
  *(v52 + 112) = v43;
  *(v52 + 120) = v45;
  *(v52 + 128) = v47;
  *(v52 + 136) = v49;
  *(v52 + 144) = v50;
  v60.f64[1] = v61;
  v57.f64[1] = v58;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v56, v60), vceqq_f64(v53, v57)))) & 1) == 0 || (v55 == v27 ? (v64 = v54 == v29) : (v64 = 0), !v64))
  {
    sub_18B7E0FE8();
  }

  v65 = *((*v20 & *v1) + 0x68);
  swift_beginAccess();
  *(v1 + v65) = v51;

  sub_18B7CC308();
  v66 = sub_18B7D2C68();
  v68 = v67;

  [*(v1 + v22) contentSize];
  if (v70 != v66 || v69 != v68)
  {
    [*(v1 + v22) setContentSize_];
  }

  v71 = *(v1 + v22);
  [v71 adjustedContentInset];
  v170 = v72;
  v169 = v73;
  v75 = v74;
  v77 = v76;
  [v71 bounds];
  v168 = v78;
  v167 = v79;
  v166 = v80;
  v165 = v81;
  sub_18B7E0E4C();
  v164 = v82;
  v163 = v83;
  v162 = v84;
  v161 = v85;
  [v71 contentSize];
  v87 = v86;
  v89 = v88;
  [v71 frame];
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v98 = [v71 isTracking];

  v99 = sub_18B7CC308();
  v100 = v99 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v101 = *(v99 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v103 = *(v99 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  v102 = *(v99 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v104 = *(v99 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  *&v105.f64[0] = v170;
  v106 = *&v169;
  *v100 = v170;
  *(v100 + 8) = v106;
  *(v100 + 16) = v75;
  *(v100 + 24) = v77;
  v107 = v167;
  *(v100 + 32) = v168;
  *(v100 + 40) = v107;
  *&v108.f64[0] = v166;
  v109 = *&v165;
  *(v100 + 48) = v166;
  *(v100 + 56) = v109;
  v110 = v163;
  *(v100 + 64) = v164;
  *(v100 + 72) = v110;
  v111 = v161;
  *(v100 + 80) = v162;
  *(v100 + 88) = v111;
  *(v100 + 96) = v87;
  *(v100 + 104) = v89;
  *(v100 + 112) = v91;
  *(v100 + 120) = v93;
  *(v100 + 128) = v95;
  *(v100 + 136) = v97;
  *(v100 + 144) = v98;
  v108.f64[1] = v109;
  v105.f64[1] = v106;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v104, v108), vceqq_f64(v101, v105)))) & 1) == 0 || v103 != v75 || v102 != v77)
  {
    sub_18B7E0FE8();
  }

  *(v1 + v65) = v99;

  v112 = *((*v20 & *v1) + 0x88);
  swift_beginAccess();
  sub_18B7CA054(v1 + v112, v171, &unk_1EA9D53A0);
  if (!*&v171[0])
  {
    return sub_18B988BAC(v171, &unk_1EA9D53A0);
  }

  v172[0] = v171[0];
  v172[1] = v171[1];
  v172[2] = v171[2];
  v172[3] = v171[3];
  sub_18B7CC308();
  sub_18B82F1AC(v172, v4);
  v113 = sub_18B831460(v4);
  v115 = v114;
  v117 = v116;

  v118 = sub_18B988BAC(v4, &unk_1EA9DBE90);
  if (v117)
  {
    return sub_18B8303BC(v172);
  }

  sub_18BBC7EB4(v118);
  [*(v1 + v22) setContentOffset_];
  v120 = *(v1 + v22);
  [v120 adjustedContentInset];
  v170 = v121;
  v169 = v122;
  v124 = v123;
  v126 = v125;
  [v120 bounds];
  v168 = v127;
  v167 = v128;
  v166 = v129;
  v165 = v130;
  sub_18B7E0E4C();
  v164 = v131;
  v163 = v132;
  v162 = v133;
  v161 = v134;
  [v120 contentSize];
  v136 = v135;
  v138 = v137;
  [v120 frame];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = [v120 isTracking];

  v148 = sub_18B7CC308();
  v149 = v148 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v150 = *(v148 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v152 = *(v148 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  v151 = *(v148 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v153 = *(v148 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  *&v154.f64[0] = v170;
  v155 = *&v169;
  *v149 = v170;
  *(v149 + 8) = v155;
  *(v149 + 16) = v124;
  *(v149 + 24) = v126;
  v156 = v167;
  *(v149 + 32) = v168;
  *(v149 + 40) = v156;
  *&v157.f64[0] = v166;
  v158 = *&v165;
  *(v149 + 48) = v166;
  *(v149 + 56) = v158;
  v159 = v163;
  *(v149 + 64) = v164;
  *(v149 + 72) = v159;
  v160 = v161;
  *(v149 + 80) = v162;
  *(v149 + 88) = v160;
  *(v149 + 96) = v136;
  *(v149 + 104) = v138;
  *(v149 + 112) = v140;
  *(v149 + 120) = v142;
  *(v149 + 128) = v144;
  *(v149 + 136) = v146;
  *(v149 + 144) = v147;
  v157.f64[1] = v158;
  v154.f64[1] = v155;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v153, v157), vceqq_f64(v150, v154)))) & 1) == 0 || v152 != v124 || v151 != v126)
  {
    sub_18B7E0FE8();
  }

  sub_18B8303BC(v172);
  *(v1 + v65) = v148;
}

void sub_18B7F7468()
{
  v1 = sub_18B7F6C20();
  if (*(v0 + qword_1EA9D6BD0))
  {
    sub_18BC1E1A8();
    sub_18B7CE56C();
  }

  else
  {
    v3 = sub_18B7C2E68(v1);
    v4 = v0 + qword_1EA9D6BA0;
    swift_beginAccess();
    if (*(v4 + 8) == 1)
    {
      v5 = sub_18B7CE8B0() ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    [v3 setScrollEnabled_];
  }

  v6 = sub_18B7C2E68(v2);
  sub_18B7CC308();
  v7 = sub_18B7F75B4();

  [v6 _setInterpageSpacing_];

  v9 = sub_18B7C2E68(v8);
  v10 = sub_18B7C2E68(v9);
  [v10 adjustedContentInset];
  v12 = v11;

  [v9 _setPagingOrigin_];
}

double sub_18B7F75B4()
{
  if (*(v0 + 177))
  {
    v1 = 24;
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56))
    {
      v1 = 8;
    }

    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 88) * -2.0 - *(MEMORY[0x1E69DDCE0] + v1) - *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 96);
    v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
    v4 = (v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  }

  else
  {
    v5 = 24;
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56))
    {
      v5 = 8;
    }

    v2 = -*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + v5);
    v4 = (MEMORY[0x1E69DDCE0] + 24);
    v3 = (MEMORY[0x1E69DDCE0] + 8);
  }

  return v2 - (*v4 + *v3);
}

void sub_18B7F768C(void *a1)
{
  v1 = a1;
  sub_18B7F76D4();
}

id sub_18B7F76D4()
{
  v1 = sub_18B7EBEFC();
  v2 = *&v0[qword_1EA9F8568 + 64];
  v3 = *&v0[qword_1EA9F8568 + 72];
  v4 = *&v0[qword_1EA9F8568 + 96];
  v15 = *&v0[qword_1EA9F8568 + 80];
  v16 = v4;
  v5 = *&v0[qword_1EA9F8568 + 112];
  v18 = *&v0[qword_1EA9F8568 + 128];
  v17 = v5;
  v6 = v1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v7 = *&v0[qword_1EA9F8568 + 136];
  v8 = *&v0[qword_1EA9F8568];
  v9 = *&v0[qword_1EA9F8568 + 16];
  v10 = *&v0[qword_1EA9F8568 + 48];
  *(v6 + 32) = *&v0[qword_1EA9F8568 + 32];
  *(v6 + 48) = v10;
  *v6 = v8;
  *(v6 + 16) = v9;
  *(v6 + 64) = v2;
  *(v6 + 72) = v3;
  *(v6 + 128) = v18;
  v11 = v17;
  *(v6 + 96) = v16;
  *(v6 + 112) = v11;
  *(v6 + 80) = v15;
  *(v6 + 136) = v7;
  v12 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck);
  v12[4] = v2;
  v12[5] = v3;
  v12[12] = v7;

  v14.receiver = v0;
  v14.super_class = type metadata accessor for QuickTabSwitcher(0);
  return objc_msgSendSuper2(&v14, sel_layoutSubviews);
}

uint64_t sub_18B7F7794(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v121 - v7;
  v9 = sub_18B7C34FC();
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v2 bounds];
  v156.origin.x = v18;
  v156.origin.y = v19;
  v156.size.width = v20;
  v156.size.height = v21;
  v155.origin.x = v11;
  v155.origin.y = v13;
  v155.size.width = v15;
  v155.size.height = v17;
  if (!CGRectEqualToRect(v155, v156))
  {
    v22 = *(v2 + *((*v3 & *v2) + 0x80));
    [v2 bounds];
    [v22 setFrame_];
  }

  v23 = *((*v3 & *v2) + 0x80);
  v24 = *(v2 + v23);
  [v24 adjustedContentInset];
  v133 = v26;
  v134 = v25;
  v131 = v28;
  v132 = v27;
  [v24 bounds];
  v129 = v30;
  v130 = v29;
  v127 = v32;
  v128 = v31;
  sub_18B7E0E4C();
  v125 = v34;
  v126 = v33;
  v36 = v35;
  v38 = v37;
  [v24 contentSize];
  v40 = v39;
  v42 = v41;
  [v24 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = [v24 isTracking];

  v153[0] = v134;
  v153[1] = v133;
  v153[2] = v132;
  v153[3] = v131;
  v153[4] = v130;
  v153[5] = v129;
  v153[6] = v128;
  v153[7] = v127;
  v153[8] = v126;
  v153[9] = v125;
  v153[10] = v36;
  v153[11] = v38;
  v153[12] = v40;
  v153[13] = v42;
  v153[14] = v44;
  v153[15] = v46;
  v153[16] = v48;
  v153[17] = v50;
  v154 = v51;
  sub_18B7F4870(v8);
  v52 = *(v4 + 88);
  v134 = *(v52 + 80);
  v134(v153, v5, v52);
  sub_18B7F7DF0(v8);
  sub_18B7F4870(v8);
  v53 = (*(v52 + 64))(v5, v52);
  v55 = v54;
  v122 = *(v6 + 8);
  v123 = v6 + 8;
  v122(v8, v5);
  [*(v2 + v23) contentSize];
  if (v57 != v53 || v56 != v55)
  {
    [*(v2 + v23) setContentSize_];
  }

  v59 = *(v2 + v23);
  [v59 adjustedContentInset];
  v132 = v61;
  v133 = v60;
  v130 = v63;
  v131 = v62;
  [v59 bounds];
  v128 = v65;
  v129 = v64;
  v126 = v67;
  v127 = v66;
  sub_18B7E0E4C();
  v124 = v69;
  v125 = v68;
  v71 = v70;
  v73 = v72;
  [v59 contentSize];
  v75 = v74;
  v77 = v76;
  [v59 frame];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = [v59 isTracking];

  v151[0] = v133;
  v151[1] = v132;
  v151[2] = v131;
  v151[3] = v130;
  v151[4] = v129;
  v151[5] = v128;
  v151[6] = v127;
  v151[7] = v126;
  v151[8] = v125;
  v151[9] = v124;
  v151[10] = v71;
  v151[11] = v73;
  v151[12] = v75;
  v151[13] = v77;
  v151[14] = v79;
  v151[15] = v81;
  v151[16] = v83;
  v151[17] = v85;
  v152 = v86;
  sub_18B7F4870(v8);
  v134(v151, v5, v52);
  sub_18B7F7DF0(v8);
  sub_18B7F60F0(&v136);
  if (!v136)
  {
    return sub_18B7F61D4(&v136);
  }

  v135[0] = v136;
  v135[1] = v137;
  v135[2] = v138;
  v135[3] = v139;
  sub_18B7F4870(v8);
  v87 = COERCE_DOUBLE((*(v52 + 136))(v135, v5, v52));
  v89 = v88;
  v91 = v90;
  v122(v8, v5);
  if ((v91 & 1) == 0)
  {
    sub_18BB3CE3C();
    [*(v2 + v23) setContentOffset_];
    v92 = *(v2 + v23);
    [v92 adjustedContentInset];
    v132 = v94;
    v133 = v93;
    v130 = v96;
    v131 = v95;
    [v92 bounds];
    v128 = v98;
    v129 = v97;
    v126 = v100;
    v127 = v99;
    sub_18B7E0E4C();
    v124 = v102;
    v125 = v101;
    v104 = v103;
    v106 = v105;
    [v92 contentSize];
    v108 = v107;
    v110 = v109;
    [v92 frame];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v119 = [v92 isTracking];

    *&v136 = v133;
    *(&v136 + 1) = v132;
    *&v137 = v131;
    *(&v137 + 1) = v130;
    *&v138 = v129;
    *(&v138 + 1) = v128;
    *&v139 = v127;
    *(&v139 + 1) = v126;
    v140 = v125;
    v141 = v124;
    v142 = v104;
    v143 = v106;
    v144 = v108;
    v145 = v110;
    v146 = v112;
    v147 = v114;
    v148 = v116;
    v149 = v118;
    v150 = v119;
    sub_18B7F4870(v8);
    v134(&v136, v5, v52);
    sub_18B7F7DF0(v8);
  }

  return sub_18B8303BC(v135);
}

uint64_t sub_18B7F7DF0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_18BC21848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 32))(&v13 - v8, a1, v4, v7);
  (*(v10 + 56))(v9, 0, 1, v4);
  v11 = *((*v3 & *v1) + 0x68);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v11], v9, v5);
  return swift_endAccess();
}

__n128 sub_18B7F7F8C(uint64_t a1)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v3 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v3;
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = *(a1 + 144);
  v4 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  return result;
}

void sub_18B7F8070(char a1)
{
  v2 = a1 & 1;
  v3 = sub_18B7C5C10();
  v4 = v3[OBJC_IVAR___SFTabOverviewDisplayItem_showsSidebarToggle];
  v3[OBJC_IVAR___SFTabOverviewDisplayItem_showsSidebarToggle] = a1;
  if (v4 != v2)
  {
    v7 = v3;
    v5 = sub_18B7DEE8C();
    v6 = [objc_opt_self() areAnimationsEnabled];
    sub_18B7DF2DC(v6);

    v3 = v7;
  }
}

unint64_t sub_18B7F8244()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = *(v0 + 4);
  result = sub_18B7F8314();
  v3 = *(v8 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 5);
    v6 = *(v8 + 16 * result + 32);
    swift_unknownObjectRetain();
    (*(&v8 + 1))(&v7, &v6);
    swift_unknownObjectRelease();
    v5 = v7;
    v4(&v6, &v7);

    return v6;
  }

  return result;
}

uint64_t sub_18B7F8314()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v0[1];
    v4 = *v0 + 32;
    v5 = v0[3];
    while (1)
    {
      v9 = *(v4 + 16 * v2);
      swift_unknownObjectRetain();
      v3(&v10, &v9);
      swift_unknownObjectRelease();
      v6 = v10;
      *&v9 = v10;
      v7 = v5(&v9);

      if (v7)
      {
        break;
      }

      if (v1 == ++v2)
      {
        return v1;
      }
    }

    return v2;
  }

  return v1;
}

uint64_t sub_18B7F84B0(void *a1, double a2, double a3, double a4, double a5)
{
  sub_18B7C9974();
  v11 = v10;
  v12 = sub_18B7CEA3C();

  if (v12)
  {
    v13 = sub_18B85C534();
    sub_18BA39770(a2, a3, a4, a5);
    v14 = OBJC_IVAR____TtCC12MobileSafari11TabOverview14GridSizingInfo_section;
    v15 = *(**(v13 + 24) + 1184);
    sub_18BC1E1A8();
    v16 = v15(v13 + v14, a2, a3, a4, a5);
    v18 = v17;
    LOBYTE(v15) = v19;

    if ((v15 & 1) == 0)
    {
      sub_18B7C9C68(a1, v28);
      result = sub_18B7DFD58(v28);
      v25 = 2;
      if ((v28[58] & 1) == 0)
      {
        v25 = 0;
      }

      v26 = __OFADD__(v16, v25);
      v27 = v16 + v25;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        result = v27 * v18;
        if ((v27 * v18) >> 64 == (v27 * v18) >> 63)
        {
          return result;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v20 = sub_18BC1F2C8();
  __swift_project_value_buffer(v20, qword_1EA9F7E98);
  v21 = sub_18BC1F2A8();
  v22 = sub_18BC21218();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_18B7AC000, v21, v22, "Failed to get grid size for snapshot limit estimation", v23, 2u);
    MEMORY[0x18CFFEEE0](v23, -1, -1);
  }

  return 16;
}

uint64_t sub_18B7F8700(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_18BC1F2B8();
}

uint64_t sub_18B7F8778(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  sub_18B7F8808();
  swift_unknownObjectRetain();
  v2 = a1;
  sub_18BC214F8();
  swift_unknownObjectRelease();

  return sub_18B7F88DC(&v4);
}

unint64_t sub_18B7F8808()
{
  result = qword_1EA9D78F0;
  if (!qword_1EA9D78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D78F0);
  }

  return result;
}

uint64_t sub_18B7F885C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_18B7F8898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_18B7F8970()
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

uint64_t sub_18B7F8AAC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7BB7E0(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v19.origin.x = v5;
    v19.origin.y = v6;
    v19.size.width = v7;
    v19.size.height = v8;
    CGRectGetMinY(v19);
    [v3 bounds];
    CGRectGetWidth(v20);
    [v3 bounds];
    CGRectGetHeight(v21);
    v22.origin.x = v5;
    v22.origin.y = v6;
    v22.size.width = v7;
    v22.size.height = v8;
    CGRectGetMinY(v22);
    v10 = _SFRoundRectToPixels(0.0);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = &v9[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v17 = v10;
    *(v17 + 1) = v12;
    *(v17 + 2) = v14;
    *(v17 + 3) = v16;
    return v9;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

void SFConvertInsetsFromCoordinateSpaceToSpace(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a1;
  [v14 bounds];
  [v14 convertRect:v13 toCoordinateSpace:{a5 + v15, a4 + v16, v17 - (a5 + a7), v18 - (a4 + a6)}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v35 = v23;
  v26 = v25;

  [v13 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  CGRectGetMinY(v36);
  v37.origin.x = v28;
  v37.origin.y = v30;
  v37.size.width = v32;
  v37.size.height = v34;
  CGRectGetMinY(v37);
  v38.origin.x = v20;
  v38.origin.y = v22;
  v38.size.width = v35;
  v38.size.height = v26;
  CGRectGetMinX(v38);
  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetMinX(v39);
  v40.origin.x = v28;
  v40.origin.y = v30;
  v40.size.width = v32;
  v40.size.height = v34;
  CGRectGetMaxY(v40);
  v41.origin.x = v20;
  v41.origin.y = v22;
  v41.size.width = v35;
  v41.size.height = v26;
  CGRectGetMaxY(v41);
  v42.origin.x = v28;
  v42.origin.y = v30;
  v42.size.width = v32;
  v42.size.height = v34;
  CGRectGetMaxX(v42);
  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v35;
  v43.size.height = v26;
  CGRectGetMaxX(v43);
  if ((a3 & 1) == 0)
  {
    UIEdgeInsetsMax();
  }
}

id sub_18B7F8F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_18B7F8F9C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18B9EF920(a1);
    }

    else
    {
      v5 = sub_18B7F913C(a1);
    }

    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMinY(v20);
    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v21);
    [v3 bounds];
    CGRectGetHeight(v22);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B7F913C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong bounds];
    v31 = v4;
    sub_18B7F936C(a1);
    v30 = v5;
    v7 = v6;
    v8 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    CACornerRadiiMake(v32, v7 * 0.5, v7 * 0.5, v7 * 0.5, v7 * 0.5);
    v9 = v32[0];
    v10 = v32[1];
    v12 = v32[2];
    v11 = v32[3];
    v13 = v32[4];
    v14 = v32[5];
    v15 = v32[6];
    v16 = v32[7];
    v17 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v17 = v9;
    v17[1] = v10;
    v17[2] = v12;
    v17[3] = v11;
    v17[4] = v13;
    v17[5] = v14;
    v17[6] = v15;
    v17[7] = v16;
    v18 = v15 == v13;
    if (v16 != v14)
    {
      v18 = 0;
    }

    if (v15 != v12)
    {
      v18 = 0;
    }

    if (v16 != v11)
    {
      v18 = 0;
    }

    if (v16 != v10)
    {
      v18 = 0;
    }

    if (v15 != v9)
    {
      v18 = 0;
    }

    v19 = v15 == v16 && v18;
    v20 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v8[v20] = v19;
    [v3 keyboardHeight];
    v21 = _SFRoundRectToPixels((v31 - v30) * 0.5);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v28 = v21;
    *(v28 + 1) = v23;
    *(v28 + 2) = v25;
    *(v28 + 3) = v27;
    return v8;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

void sub_18B7F936C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v5 = [v4 capsuleInfoForPage_];
  [a1 preferredCapsuleSizeForState_];
  v7 = v6;
  v9 = fmax(v8, 32.0);
  CGRectGetWidth(*&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
  [v3 minimizedContentScale];
  if (v7 <= 0.0)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    [v3 bounds];
    v10 = CGRectGetHeight(v19) - v9;
    [v3 bounds];
    [v3 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v10, CGRectGetWidth(v20), v9, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v12 = v11;
    v14 = v13;
    [v3 bounds];
    v21.origin.x = UIEdgeInsetsInsetRect(v15, v16, v17, v18, v12, v14);
    CGRectGetWidth(v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_18B7F9A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B7FA7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B7FA900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id dynamicAlteranteColor(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DC888];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __dynamicAlteranteColor_block_invoke;
  v6[3] = &unk_1E721D228;
  v7 = v1;
  v3 = v1;
  v4 = [v2 colorWithDynamicProvider:v6];

  return v4;
}

void sub_18B7FB250(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18B7FC210(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_18BC1E6A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v10 = a1;
  if (sub_18B7FC33C())
  {
    [*&v10[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_systemSnapshotBackgroundView] setHidden_];
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_18B7FC33C()
{
  sub_18BC1E688();
  if (v8)
  {
    sub_18B7B0AC0(0, &qword_1EA9D5390);
    if (swift_dynamicCast())
    {
      v1 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    sub_18B988BAC(v7, &qword_1EA9D5220);
  }

  v1 = 0;
LABEL_6:
  v2 = [v0 window];
  v3 = [v2 windowScene];

  if (v1)
  {
    if (v3)
    {
      sub_18B7B0AC0(0, &qword_1EA9D5390);
      v4 = sub_18BC215C8();
    }

    else
    {
      v4 = 0;
    }

    v3 = v1;
  }

  else
  {
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    v4 = 0;
  }

  return v4 & 1;
}

void sub_18B7FC478(void *a1)
{
  v2 = sub_18BC1E6A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v6 = a1;
  if (sub_18B7FC33C())
  {
    [*&v6[qword_1ED651698] setHidden_];
    (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_18B7FC98C()
{
  result = sub_18B7D6E1C();
  v1 = result;
  if (result >> 62)
  {
    result = sub_18BC219A8();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFFD010](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    ++v3;
    (*((*v4 & *v5) + 0xF0))();
  }

  while (v2 != v3);
LABEL_10:
}

void sub_18B7FCA8C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion);
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v4;
  if (v4 == 1)
  {
    swift_beginAccess();
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
        v19[0] = *(v1 + 24) > 0;
        sub_18BC1E1A8();
        v8(v19);

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  sub_18B7C9974();
  v10 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xA0));
  v11 = *(v10 + 24);
  v3 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v3)
  {
    goto LABEL_15;
  }

  v13 = v9;
  *(v10 + 24) = v12;
  if (v12 == 1)
  {
    swift_beginAccess();
    v14 = *(v10 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);
        v18 = *(v10 + 24) > 0;
        sub_18BC1E1A8();
        v17(&v18);

        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_18B7FCC88(char a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = Strong;
  if (a1)
  {
    v3 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1F0))(v6);
    v4 = *((*v3 & *v5) + 0xA8);
    swift_beginAccess();
    sub_18B7FD070(v6, v5 + v4, &qword_1EA9DBE88);
    swift_endAccess();
  }

  else
  {
    sub_18B7FD538();
  }
}

uint64_t sub_18B7FCD94@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = _s4PageVMa_0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_18B7CC308();
  v13 = sub_18B7C2E68(v12);
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v27.origin.x = v15;
  v27.origin.y = v17;
  v27.size.width = v19;
  v27.size.height = v21;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v15;
  v28.origin.y = v17;
  v28.size.width = v19;
  v28.size.height = v21;
  MidY = CGRectGetMidY(v28);
  sub_18B7CECB4(v4, MidX, MidY);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_18B988BAC(v4, &unk_1EA9DBE90);
    v25 = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
  }

  else
  {
    sub_18B82FD54(v4, v11, _s4PageVMa_0);
    sub_18B82D0A4(v11, v8, _s4PageVMa_0);
    sub_18B7CC1E8(&qword_1EA9D6D00, _s4PageVMa_0);
    sub_18BC21A68();
    *(a1 + 48) = 0xD000000000000017;
    *(a1 + 56) = 0x800000018BC60750;
    v25 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    result = sub_18B82D1D4(v11, _s4PageVMa_0);
  }

  *a1 = v25;
  return result;
}

uint64_t sub_18B7FD070(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B7FD0EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18B7FD150()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion);
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (v4 == 1)
    {
      result = swift_beginAccess();
      v6 = *(v1 + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v8 = v6 + 40;
        do
        {
          v9 = *(v8 - 8);
          v10 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v9(&v10);

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

unint64_t sub_18B7FD274()
{
  result = sub_18B7D6E1C();
  v1 = result;
  if (result >> 62)
  {
    result = sub_18BC219A8();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFFD010](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    ++v3;
    (*((*v4 & *v5) + 0x100))();
  }

  while (v2 != v3);
LABEL_10:
}

void sub_18B7FD37C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion);
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v4;
  if (!v4)
  {
    swift_beginAccess();
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
        v19[0] = *(v1 + 24) > 0;
        sub_18BC1E1A8();
        v8(v19);

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  sub_18B7C9974();
  v10 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xA0));
  v11 = *(v10 + 24);
  v3 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v3)
  {
    goto LABEL_15;
  }

  v13 = v9;
  *(v10 + 24) = v12;
  if (!v12)
  {
    swift_beginAccess();
    v14 = *(v10 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);
        v18 = *(v10 + 24) > 0;
        sub_18BC1E1A8();
        v17(&v18);

        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  sub_18B7E670C();
}

uint64_t sub_18B7FD538()
{
  v1 = v0;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  sub_18B7FD070(&v18, v1 + v3, &qword_1EA9DBE88);
  swift_endAccess();
  v4 = *(sub_18B7CC308() + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_itemTypes);
  sub_18BC1E3F8();

  v5 = *(v4 + 16);
  if (!v5)
  {
  }

  v6 = *((*v2 & *v1) + 0x98);
  swift_beginAccess();
  v7 = (v4 + 40);
  v8 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v9 = *v7;
    v10 = *(v1 + v6);
    if (!*(v10 + 16))
    {
      sub_18BC1E3F8();
      goto LABEL_9;
    }

    v11 = *(v7 - 1);
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v12 = sub_18B7C4104(v11, v9);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = v12;

    v15 = *(*(v10 + 56) + 8 * v14);
    sub_18BC1E1A8();

    v16 = *(v15 + 88);
    *(v15 + 88) = v8;
    sub_18B7FD7C0(v16, sub_18BC03B1C, sub_18B7FD944, sub_18B7FDB4C, sub_18B7FDF90);

    v7 += 2;
    if (!--v5)
    {
    }
  }

LABEL_9:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari28CollectionViewScrollPositionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18B7FD7C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v10 = v5;
  v11 = a1;
  v12 = *(v5 + 88);
  if (*(a1 + 16) <= *(v12 + 16) >> 3)
  {
    sub_18BC1E3F8();
    a3(v11);
    v13 = v12;
  }

  else
  {
    sub_18BC1E3F8();
    v13 = a2(v11, v12);
  }

  swift_beginAccess();
  a4(v13);
  swift_endAccess();

  v14 = *(v10 + 88);
  if (*(v14 + 16) <= *(v11 + 16) >> 3)
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    a3(v14);
  }

  else
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v11 = a2(v14, v11);
  }

  swift_beginAccess();
  a5(v11);
  swift_endAccess();
}

void sub_18B7FD944(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4PageVMa_0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_18BC1E3F8();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_18B7EC6E4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s4PageVMa_0);
      sub_18B9CE784(v5);
      sub_18B7ED118(v9, _s4PageVMa_0);
      sub_18B988BAC(v5, &unk_1EA9DBE90);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18B7FDB4C(uint64_t a1)
{
  v2 = v1;
  v54 = _s4PageVMa_0();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v57 = a1;
  sub_18BC1E3F8();
  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v56 + 72);
    sub_18B7EC6E4(*(v57 + 48) + v14 * (v13 | (v11 << 6)), v5, _s4PageVMa_0);
    v15 = *(v2 + 16);
    if (*(v15 + 16) && (v16 = sub_18B8629FC(v5), (v17 & 1) != 0))
    {
      v55 = v14;
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v2 + 16);
      v21 = v58;
      v22 = sub_18B8629FC(v5);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_39;
      }

      v28 = v23;
      if (v21[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v22;
          sub_18BB2C14C();
          v22 = v51;
        }
      }

      else
      {
        sub_18BB30BB8(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_18B8629FC(v5);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_41;
        }
      }

      v44 = v19;
      v45 = v58;
      v46 = v55;
      if (v28)
      {
        *(v58[7] + 8 * v22) = v19;
        sub_18B7ED118(v5, _s4PageVMa_0);
        *(v2 + 16) = v45;
      }

      else
      {
        v58[(v22 >> 6) + 8] |= 1 << v22;
        v47 = v22;
        sub_18B7EC6E4(v5, v45[6] + v22 * v46, _s4PageVMa_0);
        *(v45[7] + 8 * v47) = v44;
        sub_18B7ED118(v5, _s4PageVMa_0);
        v48 = v45[2];
        v26 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v26)
        {
          goto LABEL_40;
        }

        v45[2] = v49;
        *(v2 + 16) = v45;
      }
    }

    else
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v2 + 16);
      v31 = v58;
      v32 = sub_18B8629FC(v5);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v26 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v26)
      {
        goto LABEL_36;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_18BB30BB8(v36, v30);
        v32 = sub_18B8629FC(v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_41;
        }

LABEL_23:
        v39 = v58;
        if (v37)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        goto LABEL_23;
      }

      v50 = v32;
      sub_18BB2C14C();
      v32 = v50;
      v39 = v58;
      if (v37)
      {
LABEL_4:
        *(v39[7] + 8 * v32) = 1;
        goto LABEL_5;
      }

LABEL_24:
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = v39[6] + v32 * v14;
      v41 = v32;
      sub_18B7EC6E4(v5, v40, _s4PageVMa_0);
      *(v39[7] + 8 * v41) = 1;
      v42 = v39[2];
      v26 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v39[2] = v43;
LABEL_5:
      *(v2 + 16) = v39;
      (*v2)(v5, 1);
      sub_18B7ED118(v5, _s4PageVMa_0);
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
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
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
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18B7FDF90(uint64_t a1)
{
  v2 = v1;
  v47 = _s4PageVMa_0();
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v8;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  sub_18BC1E3F8();
  v14 = 0;
  v49 = v1;
  v50 = v4;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v4 + 72);
    v18 = v51;
    sub_18B7EC6E4(*(a1 + 48) + v17 * (v16 | (v14 << 6)), v51, _s4PageVMa_0);
    sub_18B80D554(v18, v6, _s4PageVMa_0);
    v19 = *(v2 + 16);
    if (*(v19 + 16) && (v20 = sub_18B8629FC(v6), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      if (v22 < 2)
      {
        v33 = v2;
        v34 = sub_18B8629FC(v6);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v33 + 16);
          v52 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2C14C();
            v38 = v52;
          }

          sub_18B7ED118(*(v38 + 48) + v36 * v17, _s4PageVMa_0);
          sub_18BB5DAB0(v36, v38);
          *(v49 + 16) = v38;
        }

        v2 = v33;
        (*v33)(v6, 0);
        sub_18B7ED118(v6, _s4PageVMa_0);
        v4 = v50;
      }

      else
      {
        v48 = a1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v2 + 16);
        v24 = v52;
        v25 = sub_18B8629FC(v6);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if ((v23 & 1) == 0)
          {
            v45 = v25;
            sub_18BB2C14C();
            v25 = v45;
          }
        }

        else
        {
          sub_18BB30BB8(v30, v23);
          v25 = sub_18B8629FC(v6);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v48;
        v39 = v22 - 1;
        v40 = v52;
        if (v31)
        {
          *(v52[7] + 8 * v25) = v39;
          sub_18B7ED118(v6, _s4PageVMa_0);
        }

        else
        {
          v52[(v25 >> 6) + 8] |= 1 << v25;
          v41 = v40[6] + v25 * v17;
          v42 = v25;
          sub_18B7EC6E4(v6, v41, _s4PageVMa_0);
          *(v40[7] + 8 * v42) = v39;
          sub_18B7ED118(v6, _s4PageVMa_0);
          v43 = v40[2];
          v29 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v29)
          {
            goto LABEL_32;
          }

          v40[2] = v44;
        }

        v2 = v49;
        v4 = v50;
        *(v49 + 16) = v40;
      }
    }

    else
    {
      sub_18B7ED118(v6, _s4PageVMa_0);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18B7FE394()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion);
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
      v6 = *(v1 + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v8 = v6 + 40;
        do
        {
          v9 = *(v8 - 8);
          v10 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v9(&v10);

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

void sub_18B7FE620()
{
  v1 = sub_18B7C07CC();
  v2 = *&v1[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v3 = (v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  v4 = &v2[qword_1EA9F8560];
  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets + 16);
  *v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  *(v4 + 1) = v5;
  [v2 setNeedsLayout];

  v6 = sub_18B7C5C10();
  sub_18B7C9974();
  v15 = v7;

  v8 = &v15[qword_1EA9F7FF8];
  v9 = *v3;
  v10 = v3[1];
  v11 = *&v15[qword_1EA9F7FF8 + 112];
  v16[6] = *&v15[qword_1EA9F7FF8 + 96];
  v16[7] = v11;
  v16[8] = *&v15[qword_1EA9F7FF8 + 128];
  v17 = *&v15[qword_1EA9F7FF8 + 144];
  v12 = *&v15[qword_1EA9F7FF8 + 48];
  v16[2] = *&v15[qword_1EA9F7FF8 + 32];
  v16[3] = v12;
  v13 = *&v15[qword_1EA9F7FF8 + 80];
  v16[4] = *&v15[qword_1EA9F7FF8 + 64];
  v16[5] = v13;
  v14 = *&v15[qword_1EA9F7FF8 + 16];
  v16[0] = *&v15[qword_1EA9F7FF8];
  v16[1] = v14;
  *v8 = v9;
  *(v8 + 1) = v10;
  sub_18B7CBBC4(v16);
}